void sub_100423F90(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100424014(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100424014(uint64_t a1)
{
  if (!qword_10169FC68)
  {
    type metadata accessor for UUID();
    sub_100424078();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_10169FC68);
    }
  }
}

unint64_t sub_100424078()
{
  result = qword_1016967B0;
  if (!qword_1016967B0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016967B0);
  }

  return result;
}

uint64_t sub_1004240DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 960) = a8;
  *(v8 + 952) = a7;
  *(v8 + 944) = a6;
  *(v8 + 1008) = a5;
  *(v8 + 936) = a4;
  *(v8 + 928) = a3;
  *(v8 + 920) = a2;
  *(v8 + 912) = a1;
  return _swift_task_switch(sub_100424118, 0, 0);
}

uint64_t sub_100424118()
{
  v1 = *(v0 + 928);
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B810);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Missing primary root key!", v6, 2u);
    }

    sub_100429B28();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
LABEL_8:
    v19 = *(v0 + 8);

    return v19();
  }

  v8 = *v1;
  v9 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v11 = v1[5];
  v13 = *(v0 + 952);
  v14 = *(v0 + 944);
  v15 = *(v0 + 920);
  sub_100429B7C(v1, v0 + 808);
  v16 = sub_1009C475C(v15, v14, v13);
  *(v0 + 968) = v16;
  *(v0 + 976) = v17;
  *(v0 + 984) = v18;
  v21 = v16;
  v22 = v18;
  v53 = v10;
  v23 = v17;
  v52 = v11;
  v55 = v12;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v57 = v8;
  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177B810);
  v25 = v22;
  sub_100429BEC(v21, v23, v22);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v58 = v23;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v28;
    *v28 = 134217984;
    if (v25 >> 60 == 15)
    {
      v30 = 0;
    }

    else
    {
      v30 = v21;
    }

    *(v28 + 4) = v30;
    sub_100429C08(v21, v23, v25);
    _os_log_impl(&_mh_execute_header, v26, v27, "Found keyGenerationHint %llu", v29, 0xCu);
  }

  else
  {
    sub_100429C08(v21, v23, v25);
  }

  v31 = *(v0 + 1008);

  if (v31)
  {
    v32 = *(v0 + 936);
    v33 = v32[1];
    if (v33 >> 60 == 15)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Missing secondary root key!", v36, 2u);
      }

      v37 = *(v0 + 928);

      sub_100429B28();
      swift_allocError();
      *v38 = 4;
      swift_willThrow();
      sub_100429C08(v21, v58, v25);
      sub_10000B3A8(v37, &qword_10169FCA8, &qword_1013A2B88);
      goto LABEL_8;
    }

    v56 = *(v0 + 944);
    v40 = v32[4];
    v54 = v32[5];
    v41 = v32[2];
    v42 = v32[3];
    v43 = *v32;
    sub_100429BEC(v21, v58, v25);
    sub_100429B7C(v32, v0 + 856);
    sub_100017D5C(v41, v42);
    sub_100017D5C(v43, v33);
    sub_100017D5C(v40, v54);
    sub_10099B5CC(v41, v42, v43, v33, v40, v54, v21, v58, v0 + 16, v25, v56);
    sub_10000B3A8(*(v0 + 936), &qword_10169FCA8, &qword_1013A2B88);
    v39 = v0 + 16;
  }

  else
  {
    v39 = v0 + 88;
    v51 = *(v0 + 944);
    sub_100429BEC(v21, v23, v25);
    sub_100017D5C(v9, v53);
    sub_100017D5C(v57, v2);
    sub_100017D5C(v55, v52);
    sub_10099B5CC(v9, v53, v57, v2, v55, v52, v21, v23, v0 + 88, v25, v51);
  }

  v44 = *(v39 + 64);
  v45 = *(v39 + 16);
  v46 = *(v39 + 32);
  v47 = *(v39 + 48);
  *(v0 + 160) = *v39;
  *(v0 + 176) = v45;
  *(v0 + 192) = v46;
  *(v0 + 208) = v47;
  *(v0 + 224) = v44;
  *(v0 + 296) = v44;
  v48 = *(v0 + 192);
  *(v0 + 248) = *(v0 + 176);
  v49 = *(v0 + 208);
  *(v0 + 264) = v48;
  *(v0 + 280) = v49;
  *(v0 + 232) = *(v0 + 160);
  sub_100429C24(v0 + 160, v0 + 376);
  v50 = swift_task_alloc();
  *(v0 + 992) = v50;
  *v50 = v0;
  v50[1] = sub_1004247B0;

  return sub_100864B9C(v0 + 304, 0, 0);
}

uint64_t sub_1004247B0()
{
  *(*v1 + 1000) = v0;

  if (!v0)
  {

    return _swift_task_switch(sub_1004248C4, 0, 0);
  }

  return result;
}

void sub_1004248C4()
{
  v1 = v0 + 160;
  v2 = (v0 + 232);
  v3 = *(v0 + 320);
  *(v0 + 448) = *(v0 + 304);
  *(v0 + 464) = v3;
  v4 = *(v0 + 352);
  *(v0 + 480) = *(v0 + 336);
  *(v0 + 496) = v4;
  v5 = *(v0 + 368);
  *(v0 + 512) = v5;
  v6 = *(v0 + 464);
  if (v6 >> 60 == 15)
  {
    v7 = *(v0 + 984);
    v8 = *(v0 + 976);
    v9 = *(v0 + 968);
    v10 = *(v0 + 928);
    v11 = *(v0 + 280);
    *(v0 + 552) = *(v0 + 264);
    *(v0 + 568) = v11;
    *(v0 + 584) = *(v0 + 296);
    v12 = *(v0 + 248);
    *(v0 + 520) = *v2;
    *(v0 + 536) = v12;
    sub_100429C80(v0 + 520);
    sub_100429C08(v9, v8, v7);
    sub_10000B3A8(v10, &qword_10169FCA8, &qword_1013A2B88);
    sub_100429C80(v0 + 160);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v5 = 0;
    v17 = 0xF000000000000000;
LABEL_14:
    v38 = *(v0 + 912);
    *v38 = v13;
    v38[1] = v14;
    v38[2] = v15;
    v38[3] = v17;
    v38[4] = v16;
    v38[5] = v5;
    v30 = *(v0 + 8);
    goto LABEL_15;
  }

  v18 = *(v0 + 448);
  v19 = *(v0 + 984);
  v20 = *(v0 + 968);
  if (v19 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v0 + 968);
  }

  v22 = v18 >= v21;
  v23 = v18 - v21;
  if (!v22)
  {
    __break(1u);
    return;
  }

  v45 = *(v0 + 480);
  v46 = *(v0 + 472);
  v17 = *(v0 + 496);
  v43 = *(v0 + 504);
  v44 = *(v0 + 488);
  if (v23 <= *(v0 + 960))
  {
    v31 = *(v0 + 976);
    v32 = *(v0 + 928);
    v33 = *(v0 + 280);
    *(v0 + 624) = *(v0 + 264);
    *(v0 + 640) = v33;
    *(v0 + 656) = *(v0 + 296);
    v34 = *(v0 + 248);
    *(v0 + 592) = *v2;
    *(v0 + 608) = v34;
    sub_100429C80(v0 + 592);
    sub_10000B3A8(v32, &qword_10169FCA8, &qword_1013A2B88);
    sub_100429C08(v20, v31, v19);
LABEL_13:
    sub_100429C80(v1);
    v14 = v45;
    v13 = v46;
    sub_10002E98C(v46, v45);
    v15 = v44;
    sub_100017D5C(v44, v17);
    v16 = v43;
    sub_10002E98C(v43, v5);
    sub_10000B3A8(v0 + 448, &qword_10169FCB0, &qword_1013A2B90);
    goto LABEL_14;
  }

  v24 = *(v0 + 456);
  v41 = *(v0 + 952);
  v42 = *(v0 + 1000);
  v40 = *(v0 + 1008);
  v39 = *(v0 + 920);
  sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_101385D80;
  *(v25 + 32) = v18;
  v26 = v25 + 32;
  *(v25 + 40) = v24;
  *(v25 + 48) = v6;
  sub_100017D5C(v24, v6);
  sub_1009BF638(v39, v40 & 1, v25, v41);
  if (!v42)
  {
    v35 = *(v0 + 928);
    sub_100429C08(*(v0 + 968), *(v0 + 976), *(v0 + 984));
    sub_100429C80(v0 + 160);
    swift_setDeallocating();
    sub_100429CD4(v26);
    swift_deallocClassInstance();
    sub_10000B3A8(v35, &qword_10169FCA8, &qword_1013A2B88);
    v36 = *(v0 + 280);
    *(v0 + 768) = *(v0 + 264);
    *(v0 + 784) = v36;
    *(v0 + 800) = *(v0 + 296);
    v37 = *(v0 + 248);
    *(v0 + 736) = *v2;
    *(v0 + 752) = v37;
    v1 = v0 + 736;
    goto LABEL_13;
  }

  v27 = *(v0 + 928);
  sub_100429C08(*(v0 + 968), *(v0 + 976), *(v0 + 984));
  sub_100429C80(v0 + 160);
  swift_setDeallocating();
  sub_100429CD4(v26);
  swift_deallocClassInstance();
  sub_10000B3A8(v0 + 448, &qword_10169FCB0, &qword_1013A2B90);
  sub_10000B3A8(v27, &qword_10169FCA8, &qword_1013A2B88);
  v28 = *(v0 + 280);
  *(v0 + 696) = *(v0 + 264);
  *(v0 + 712) = v28;
  *(v0 + 728) = *(v0 + 296);
  v29 = *(v0 + 248);
  *(v0 + 664) = *v2;
  *(v0 + 680) = v29;
  sub_100429C80(v0 + 664);
  v30 = *(v0 + 8);
LABEL_15:

  v30();
}

uint64_t sub_100424C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a2;
  *(v8 + 128) = a6;
  *(v8 + 168) = a5;
  *(v8 + 112) = a1;
  *(v8 + 136) = type metadata accessor for BeaconIdentifier(0);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v8 + 160) = v16;
  *v16 = v8;
  v16[1] = sub_100424DA8;

  return sub_1004240DC(v8 + 64, a2, a3, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_100424DA8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100424EFC, 0, 0);
  }
}

uint64_t sub_100424EFC()
{
  v67 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 72);
  if (v3 >> 60 == 15)
  {
    sub_10000B3A8(v0 + 64, &qword_10169FCA0, &unk_1013B32F0);
LABEL_4:
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 144);
    v5 = *(v0 + 120);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B810);
    sub_100429A68(v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    if (v9)
    {
      v11 = *(v0 + 168);
      v12 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v12 = 136446723;
      if (v11)
      {
        v13 = 0x61646E6F6365732ELL;
      }

      else
      {
        v13 = 0x7972616D6972702ELL;
      }

      if (v11)
      {
        v14 = 0xEA00000000007972;
      }

      else
      {
        v14 = 0xE800000000000000;
      }

      v15 = sub_1000136BC(v13, v14, &v64);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      type metadata accessor for UUID();
      sub_100429D28(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v16;
      v17._countAndFlagsBits = 47;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19 = v65;
      v20 = v66;
      sub_100429ACC(v10);
      v21 = sub_1000136BC(v19, v20, &v64);

      *(v12 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to generate %{public}s key for %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100429ACC(v10);
    }

    sub_100429B28();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();

    v23 = *(v0 + 8);
    goto LABEL_22;
  }

  v24 = *(v0 + 80);
  v25 = *(v0 + 128);
  v26 = *(v0 + 168) & 1;
  sub_100017D5C(*(v0 + 64), *(v0 + 72));
  v27 = PublicKey.advertisement.getter(v24, v2);
  sub_10002EA98(6, v27, v28, &v65);
  v29 = v65;
  v30 = v66;
  v63 = v1;
  v31 = sub_100497AF4(v1, v3);
  v33 = v32;
  *(v0 + 16) = v26;
  *(v0 + 24) = v25;
  *(v0 + 32) = v29;
  v34 = v29;
  *(v0 + 40) = v30;
  *(v0 + 48) = v31;
  *(v0 + 56) = v32;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 152);
  v36 = *(v0 + 120);
  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177B810);
  sub_100429A68(v36, v35);
  sub_100017D5C(v34, v30);
  sub_100017D5C(v31, v33);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  sub_100016590(v34, v30);
  sub_100016590(v31, v33);
  v40 = os_log_type_enabled(v38, v39);
  v62 = *(v0 + 152);
  if (v40)
  {
    log = v38;
    v59 = v39;
    v41 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v41 = 136315394;
    sub_100017D5C(v34, v30);
    sub_100017D5C(v31, v33);
    v42 = sub_101108448();
    v43 = v34;
    v60 = v34;
    v45 = v44;
    sub_100016590(v43, v30);
    sub_100016590(v31, v33);
    v46 = sub_1000136BC(v42, v45, &v64);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100429D28(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v47;
    v48._countAndFlagsBits = 47;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    v50 = v65;
    v51 = v66;
    sub_100429ACC(v62);
    v52 = sub_1000136BC(v50, v51, &v64);

    *(v41 + 14) = v52;
    _os_log_impl(&_mh_execute_header, log, v59, "managedKey %s for beacon %s", v41, 0x16u);
    swift_arrayDestroy();

    v53 = v3;
    v54 = v60;
    sub_100006654(v63, v53);

    sub_10000B3A8(v0 + 64, &qword_10169FCA0, &unk_1013B32F0);
  }

  else
  {
    sub_10000B3A8(v0 + 64, &qword_10169FCA0, &unk_1013B32F0);
    sub_100006654(v63, v3);

    sub_100429ACC(v62);
    v54 = v34;
  }

  v55 = *(v0 + 128);
  v56 = *(v0 + 112);
  v57 = *(v0 + 168) & 1;

  *v56 = v57;
  *(v56 + 8) = v55;
  *(v56 + 16) = v54;
  *(v56 + 24) = v30;
  *(v56 + 32) = v31;
  *(v56 + 40) = v33;
  v23 = *(v0 + 8);
LABEL_22:

  return v23();
}

uint64_t sub_100425600(uint64_t a1, _OWORD *a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 840) = a7;
  *(v7 + 832) = a6;
  *(v7 + 1254) = a5;
  *(v7 + 824) = a4;
  *(v7 + 1253) = a3;
  *(v7 + 816) = a2;
  *(v7 + 808) = a1;
  v8 = a2[1];
  *(v7 + 848) = *a2;
  *(v7 + 864) = v8;
  *(v7 + 880) = a2[2];
  *(v7 + 896) = type metadata accessor for BeaconIdentifier(0);
  *(v7 + 904) = swift_task_alloc();
  *(v7 + 912) = swift_task_alloc();
  v9 = type metadata accessor for Connection.TransactionMode();
  *(v7 + 920) = v9;
  *(v7 + 928) = *(v9 - 8);
  *(v7 + 936) = swift_task_alloc();

  return _swift_task_switch(sub_100425724, 0, 0);
}

uint64_t sub_100425724()
{
  v1 = *(v0 + 856);
  if (v1 >> 60 == 15)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177B810);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Missing primary root key!", v5, 2u);
    }

    sub_100429B28();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
LABEL_22:

    v34 = *(v0 + 8);

    return v34();
  }

  v7 = *(v0 + 824);
  if (*(v0 + 1253))
  {
    if (!v7)
    {
      v24 = *(v0 + 888);
      v25 = *(v0 + 880);
      v26 = *(v0 + 872);
      v27 = *(v0 + 864);
      sub_100017D5C(*(v0 + 848), v1);
      sub_100017D5C(v27, v26);
      sub_100017D5C(v25, v24);
      if (qword_101694B98 == -1)
      {
LABEL_19:
        v28 = type metadata accessor for Logger();
        sub_1000076D4(v28, qword_10177B810);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Secondary index should never be 0!", v31, 2u);
        }

        v32 = *(v0 + 816);

        sub_100429B28();
        swift_allocError();
        *v33 = 2;
        swift_willThrow();
        sub_10000B3A8(v32, &qword_10169FCA8, &qword_1013A2B88);
        goto LABEL_22;
      }

LABEL_33:
      swift_once();
      goto LABEL_19;
    }

    if (is_mul_ok(v7, 0x60uLL))
    {
      v8 = 96 * v7 - 96;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      if (96 * v7 - 1 >= v8)
      {
        v9 = v7 + 1;
        if (is_mul_ok(v7 + 1, 0x60uLL))
        {
          v10 = 96 * v9;
          v11 = 96 * v9 - 1;
          if (v11 >= v10 - 96)
          {
            v7 = v8;
            goto LABEL_17;
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v11 = v7 + 96;
  if (v7 >= 0xFFFFFFFFFFFFFFA0)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_17:
  *(v0 + 944) = v11;
  v12 = *(v0 + 832);
  v13 = *(v0 + 808);
  sub_100429B7C(*(v0 + 816), v0 + 576);
  v14 = sub_1009C475C(v13, v7, v12);
  *(v0 + 952) = v14;
  *(v0 + 960) = v15;
  *(v0 + 968) = v16;
  v17 = v14;
  v18 = v15;
  v19 = v16;
  v20 = *(v0 + 888);
  v21 = *(v0 + 880);
  v38 = *(v0 + 864);
  v39 = *(v0 + 872);
  v22 = *(v0 + 856);
  v23 = *(v0 + 848);
  sub_100017D5C(v38, v39);
  sub_100017D5C(v23, v22);
  sub_100017D5C(v21, v20);
  sub_100429BEC(v17, v18, v19);
  sub_10099B5CC(v38, v39, v23, v22, v21, v20, v17, v18, v0 + 16, v19, v7);
  *(v0 + 976) = 0;
  v36 = *(v0 + 32);
  *(v0 + 984) = *(v0 + 16);
  *(v0 + 1000) = v36;
  v37 = *(v0 + 64);
  *(v0 + 624) = *(v0 + 48);
  *(v0 + 1016) = v37;
  *(v0 + 1032) = *(v0 + 80);
  sub_100429C24(v0 + 16, v0 + 88);

  return _swift_task_switch(sub_100425BE4, 0, 0);
}

uint64_t sub_100425BE4()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1016);
    *(v0 + 1200) = *(v0 + 1024);
    *(v0 + 1192) = v1;
    *(v0 + 1184) = _swiftEmptyArrayStorage;
    v2 = sub_100427B68;
  }

  else
  {
    if (*(v0 + 968) >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(v0 + 952);
    }

    *(v0 + 1248) = enum case for Connection.TransactionMode.deferred(_:);
    v4 = *(v0 + 1032);
    v5 = *(v0 + 1024);
    v6 = *(v0 + 1016);
    v7 = *(v0 + 976);
    *(v0 + 1040) = _swiftEmptyArrayStorage;
    *(v0 + 1072) = v6;
    *(v0 + 1064) = v5;
    *(v0 + 1056) = v4;
    *(v0 + 1048) = v3;
    v8 = *(v0 + 1000);
    *(v0 + 160) = *(v0 + 984);
    *(v0 + 176) = v8;
    *(v0 + 192) = *(v0 + 624);
    *(v0 + 208) = v6;
    *(v0 + 216) = v5;
    *(v0 + 224) = v4;
    sub_100429C24(v0 + 160, v0 + 232);
    sub_100017D5C(v5, v4);
    sub_100017D5C(v5, v4);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 640) = 0x7365547265646E75;
    *(v0 + 648) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v9 = sub_100A7563C(v5, v4, 1);
    *(v0 + 1080) = v9;
    *(v0 + 1088) = v10;
    if (v7)
    {
      sub_100016590(v5, v4);
      sub_100016590(v5, v4);
      sub_100429C80(v0 + 160);
      *(v0 + 1176) = v4;
      *(v0 + 1168) = v5;
      *(v0 + 1160) = v6;
      v24 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v25 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_101385D80;
      v27 = _convertErrorToNSError(_:)();
      *(v26 + 56) = sub_1003289A8();
      *(v26 + 64) = sub_100429D28(&qword_1016BC310, sub_1003289A8, &protocol conformance descriptor for NSObject);
      *(v26 + 32) = v27;
      os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Error in TokenAsyncSequence: %@", 31, 2, v26);

      v2 = sub_1004274B8;
    }

    else
    {
      v11 = v9;
      v12 = v10;
      v13 = String.utf8Data.getter();
      v15 = v14;
      v16 = sub_100A79CBC(v11, v12, v13, v14, 72);
      sub_100495DF4(v16, v17, (v0 + 656));
      v62 = *(v0 + 992);
      sub_100016590(v13, v15);
      v67 = *(v0 + 664);
      v66 = *(v0 + 656);
      if (v62 >> 60 == 15)
      {
        v18 = *(v0 + 1008);
        v19 = *(v0 + 1000);
        sub_100017D5C(*(v0 + 656), v67);
        v20 = sub_100A7A194(v19, v18, 0, 0);
        v64 = sub_100A7A73C(v20, 0, v66, v67);
        CCECCryptorRelease();
        sub_100016590(v66, v67);
        v30 = sub_100A7829C(v64, 0, 0);
        v32 = v31;
        sub_100017D5C(v30, v31);
        v33 = sub_10049C0AC(v30, v32);
        v56 = v36;
        v57 = v33;
        CCECCryptorRelease();
        v37 = sub_100016590(v30, v32);
        v40 = *(v0 + 992);
        v41 = *(v0 + 984);
      }

      else
      {
        v63 = *(v0 + 992);
        v21 = *(v0 + 984);
        v22 = *(v0 + 656);
        sub_10002E98C(v21, v63);
        sub_100017D5C(v22, v67);
        v23 = sub_100A7A194(v21, v63, 0, 1);
        v28 = sub_100A7A73C(v23, 1uLL, v66, v67);
        CCECCryptorRelease();
        sub_100016590(v66, v67);
        v29 = sub_100A7829C(v28, 1, 0);
        v35 = v34;
        v65 = v29;
        v54 = sub_100A7829C(v28, 0, 0);
        v55 = v47;
        sub_100017D5C(v65, v35);
        v59 = sub_10049BD68(v65, v35);
        v61 = v48;
        sub_100017D5C(v54, v55);
        v49 = sub_10049C0AC(v54, v55);
        v56 = v50;
        v57 = v49;
        v52 = *(v0 + 984);
        v53 = *(v0 + 992);
        CCECCryptorRelease();
        sub_100016590(v54, v55);
        sub_100016590(v65, v35);
        v37 = sub_100006654(v52, v53);
        v41 = v59;
        v40 = v61;
      }

      v58 = v41;
      v60 = v40;
      *(v0 + 1104) = v40;
      *(v0 + 1096) = v41;
      *(v0 + 1112) = v56;
      *(v0 + 1120) = v57;
      *(v0 + 1128) = v6 + 1;
      if (v6 == -1)
      {
        __break(1u);
        return _swift_task_switch(v37, v38, v39);
      }

      sub_100017D5C(v11, v12);
      sub_100016590(v5, v4);
      v42 = String.utf8Data.getter();
      v44 = v43;
      v45 = sub_100A79CBC(v11, v12, v42, v43, 32);
      sub_1004A4714(v45, v46, (v0 + 672));
      *(v0 + 1136) = 0;
      sub_100016590(v42, v44);
      *(v0 + 1144) = *(v0 + 672);
      sub_100017D5C(v57, v56);
      sub_10002E98C(v58, v60);
      sub_100006654(v58, v60);
      sub_100016590(v57, v56);
      sub_100016590(v11, v12);
      sub_100016590(v66, v67);
      sub_100429C80(v0 + 160);
      sub_100016590(v5, v4);
      v2 = sub_100426428;
    }
  }

  v37 = v2;
  v38 = 0;
  v39 = 0;

  return _swift_task_switch(v37, v38, v39);
}

uint64_t sub_100426428()
{
  v170 = v0;
  v2 = (v0 + 984);
  v3 = *(v0 + 1072);
  if (v3 >= *(v0 + 944))
  {
    v23 = *(v0 + 1152);
    v24 = *(v0 + 1144);
    v25 = *(v0 + 1128);
    v26 = *(v0 + 1120);
    v27 = *(v0 + 1112);
    v28 = *(v0 + 1104);
    v29 = *(v0 + 1096);
    v30 = *(v0 + 1064);
    v31 = *(v0 + 1056);
    v32 = *(v0 + 1008);
    *(v0 + 376) = *(v0 + 984);
    *(v0 + 384) = *(v0 + 992);
    *(v0 + 400) = v32;
    *(v0 + 408) = *(v0 + 624);
    *(v0 + 424) = v25;
    *(v0 + 432) = *(v0 + 1080);
    sub_100429C80(v0 + 376);
    sub_100016590(v30, v31);
    sub_100006654(v24, v23);
    sub_100016590(v26, v27);
    sub_100006654(v29, v28);
    v1 = *(v0 + 1040);
    p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
    if (!*(v1 + 16))
    {
      v34 = *(v0 + 1254);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_101385D80;
      *(v35 + 56) = &type metadata for UInt8;
      *(v35 + 64) = &protocol witness table for UInt8;
      *(v35 + 32) = v34;
      v36 = String.init(format:_:)();
      v38 = v37;
      if (qword_101694B98 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 912);
      v40 = *(v0 + 808);
      v41 = type metadata accessor for Logger();
      sub_1000076D4(v41, qword_10177B810);
      sub_100429A68(v40, v39);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 912);
      if (v44)
      {
        v46 = v36;
        v47 = *(v0 + 824);
        v48 = *(v0 + 1253);
        v163 = v1;
        v49 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        *v49 = 136316163;
        if (v48)
        {
          v50 = 0x61646E6F6365732ELL;
        }

        else
        {
          v50 = 0x7972616D6972702ELL;
        }

        if (v48)
        {
          v51 = 0xEA00000000007972;
        }

        else
        {
          v51 = 0xE800000000000000;
        }

        v52 = sub_1000136BC(v50, v51, &v167);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2048;
        *(v49 + 14) = v47;
        *(v49 + 22) = 2080;
        v53 = sub_1000136BC(v46, v38, &v167);

        *(v49 + 24) = v53;
        *(v49 + 32) = 2160;
        *(v49 + 34) = 1752392040;
        *(v49 + 42) = 2081;
        type metadata accessor for UUID();
        sub_100429D28(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v168 = dispatch thunk of CustomStringConvertible.description.getter();
        v169 = v54;
        v55._countAndFlagsBits = 47;
        v55._object = 0xE100000000000000;
        String.append(_:)(v55);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v56);

        v58 = v168;
        v57 = v169;
        sub_100429ACC(v45);
        v59 = sub_1000136BC(v58, v57, &v167);

        *(v49 + 44) = v59;
        _os_log_impl(&_mh_execute_header, v42, v43, "No match for sequence %s index %llu hint %s %{private,mask.hash}s", v49, 0x34u);
        swift_arrayDestroy();
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        v1 = v163;
      }

      else
      {

        sub_100429ACC(v45);
      }
    }

    if (p_weak_ivar_lyt[371] == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

  v4 = *(v0 + 1048);
  if (v3 < v4)
  {
    __break(1u);
LABEL_48:
    swift_once();
LABEL_25:
    v71 = *(v0 + 904);
    v72 = *(v0 + 808);
    v73 = type metadata accessor for Logger();
    sub_1000076D4(v73, qword_10177B810);
    sub_100429A68(v72, v71);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    v76 = os_log_type_enabled(v74, v75);
    v77 = *(v0 + 968);
    v78 = *(v0 + 960);
    v79 = *(v0 + 952);
    v80 = *(v0 + 904);
    if (v76)
    {
      v164 = *(v0 + 816);
      v81 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *v81 = 136315394;

      v152 = v79;
      v157 = v77;
      v82 = Array.description.getter();
      v84 = v83;

      v85 = sub_1000136BC(v82, v84, &v167);

      *(v81 + 4) = v85;
      *(v81 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100429D28(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v168 = dispatch thunk of CustomStringConvertible.description.getter();
      v169 = v86;
      v87._countAndFlagsBits = 47;
      v87._object = 0xE100000000000000;
      String.append(_:)(v87);
      v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v88);

      v89 = v168;
      v90 = v169;
      sub_100429ACC(v80);
      v91 = sub_1000136BC(v89, v90, &v167);

      *(v81 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v74, v75, "primaryKeys: %s for beacon %s", v81, 0x16u);
      swift_arrayDestroy();

      sub_100429C08(v152, v78, v157);
      sub_100429C80(v0 + 16);

      sub_10000B3A8(v164, &qword_10169FCA8, &qword_1013A2B88);
    }

    else
    {
      sub_10000B3A8(*(v0 + 816), &qword_10169FCA8, &qword_1013A2B88);
      sub_100429C08(v79, v78, v77);
      sub_100429C80(v0 + 16);

      sub_100429ACC(v80);
    }

    v92 = *(v0 + 8);

    return v92(v1);
  }

  if (v3 - v4 <= *(v0 + 840))
  {
    v17 = *(v0 + 1136);
  }

  else
  {
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1056);
    sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    *(inited + 48) = v6;
    sub_100017D5C(v5, v6);
    v8 = sub_100027FA4();
    if (!v8)
    {
      v93 = *(v0 + 1152);
      v94 = *(v0 + 1144);
      v141 = *(v0 + 1112);
      v144 = *(v0 + 1120);
      v95 = *(v0 + 1064);
      v96 = *(v0 + 1056);
      v161 = *(v0 + 960);
      v165 = *(v0 + 968);
      v153 = *(v0 + 1104);
      v158 = *(v0 + 952);
      v147 = *(v0 + 1096);
      v150 = *(v0 + 816);
      swift_setDeallocating();
      sub_100429CD4(inited + 32);
      sub_10020223C();
      swift_allocError();
      *v97 = 2;
      *(v97 + 4) = 1;
      swift_willThrow();
      sub_100016590(v95, v96);
      sub_100006654(v94, v93);
      sub_100016590(v144, v141);
      sub_100006654(v147, v153);
      sub_10000B3A8(v150, &qword_10169FCA8, &qword_1013A2B88);
      sub_100429C80(v0 + 16);
      sub_100429C08(v158, v161, v165);
      goto LABEL_32;
    }

    v159 = *(v0 + 1136);
    v155 = *(v0 + 1248);
    v9 = *(v0 + 936);
    v10 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = v8;
    v13 = *(v0 + 832);
    v14 = *(v0 + 808);
    v15 = *(v0 + 1253) & 1;
    v16 = swift_task_alloc();
    *(v16 + 16) = inited;
    *(v16 + 24) = v13;
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;
    *(v16 + 48) = v12;
    (*(v10 + 104))(v9, v155, v11);
    v17 = v159;
    Connection.transaction(_:block:)();
    if (v159)
    {
      v18 = *(v0 + 1152);
      v19 = *(v0 + 1144);
      v140 = *(v0 + 1112);
      v143 = *(v0 + 1120);
      v146 = *(v0 + 1096);
      v149 = *(v0 + 1104);
      v20 = *(v0 + 1064);
      v21 = *(v0 + 1056);
      v22 = *(v0 + 968);
      v156 = *(v0 + 952);
      v160 = *(v0 + 960);
      v139 = *(v0 + 816);
      (*(*(v0 + 928) + 8))(*(v0 + 936), *(v0 + 920));
      sub_100016590(v20, v21);
      sub_100006654(v19, v18);
      sub_100016590(v143, v140);
      sub_100006654(v146, v149);
      sub_10000B3A8(v139, &qword_10169FCA8, &qword_1013A2B88);
      sub_100429C80(v0 + 16);
      sub_100429C08(v156, v160, v22);
      swift_setDeallocating();
      swift_arrayDestroy();

      v2 = (v0 + 984);
LABEL_32:
      v98 = *(v0 + 1128);
      v99 = *(v0 + 1088);
      v100 = *(v0 + 1080);
      v101 = v2[1];
      *(v0 + 448) = *v2;
      *(v0 + 464) = v101;
      *(v0 + 480) = *(v0 + 624);
      *(v0 + 496) = v98;
      *(v0 + 504) = v100;
      *(v0 + 512) = v99;
      sub_100429C80(v0 + 448);

      v102 = *(v0 + 8);

      return v102();
    }

    (*(*(v0 + 928) + 8))(*(v0 + 936), *(v0 + 920));
    swift_setDeallocating();
    swift_arrayDestroy();

    v4 = *(v0 + 1072);
  }

  *(v0 + 1216) = v4;
  v60 = sub_100A7A194(*(v0 + 1120), *(v0 + 1112), 0, 0);
  if (v17)
  {
    v61 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v62 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_101385D80;
    *(v0 + 784) = v17;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v64 = String.init<A>(describing:)();
    v66 = v65;
    *(v63 + 56) = &type metadata for String;
    *(v63 + 64) = sub_100008C00();
    *(v63 + 32) = v64;
    *(v63 + 40) = v66;
    os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v62, "Error deriving advertisementKey: %@", 35, 2, v63);

    sub_1001BAF88();
    v67 = swift_allocError();
    *v68 = 0;
    swift_willThrow();

    _StringGuts.grow(_:)(35);
    *(v0 + 704) = 0;
    *(v0 + 712) = 0xE000000000000000;
    v69._object = 0x800000010134CB30;
    v69._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v69);
    *(v0 + 792) = v67;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v103 = sub_100A7829C(v60, 0, 2);
    v105 = v104;
    CCECCryptorRelease();
    sub_100018000(v103, v105, (v0 + 688));
    *(v0 + 1224) = 0;
    v106 = *(v0 + 1254);
    v107 = *(v0 + 688);
    v108 = *(v0 + 696);
    sub_100017D5C(v107, v108);
    v109 = static MACAddress.length.getter();
    sub_10002EA98(v109, v107, v108, (v0 + 720));
    v110 = *(v0 + 720);
    v111 = *(v0 + 728);
    v112 = Data._Representation.subscript.getter();
    sub_100016590(v110, v111);
    sub_100016590(v107, v108);
    v113 = *(v0 + 1152);
    v114 = *(v0 + 1144);
    v115 = *(v0 + 1120);
    v116 = *(v0 + 1112);
    if (v106 == v112)
    {
      sub_100017D5C(*(v0 + 1144), *(v0 + 1152));
      v117 = PublicKey.advertisement.getter(v115, v116);
      sub_10002EA98(6, v117, v118, (v0 + 736));
      v119 = *(v0 + 736);
      v120 = *(v0 + 744);
      v121 = String.utf8Data.getter();
      v123 = v122;
      v124 = sub_100A79CBC(v114, v113, v121, v122, 32);
      sub_1004A4714(v124, v125, (v0 + 752));
      *(v0 + 1232) = 0;
      sub_100016590(v121, v123);
      v162 = *(v0 + 760);
      v166 = *(v0 + 752);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130 = *(v0 + 1040);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v130 = sub_100A5CBA0(0, *(v130 + 2) + 1, 1, *(v0 + 1040));
      }

      v132 = *(v130 + 2);
      v131 = *(v130 + 3);
      if (v132 >= v131 >> 1)
      {
        v130 = sub_100A5CBA0((v131 > 1), v132 + 1, 1, v130);
      }

      *(v0 + 1240) = v130;
      v133 = *(v0 + 1152);
      v134 = *(v0 + 1144);
      v135 = *(v0 + 1112);
      v148 = *(v0 + 1104);
      v142 = *(v0 + 1120);
      v145 = *(v0 + 1096);
      v154 = *(v0 + 1072);
      v136 = *(v0 + 1064);
      v151 = *(v0 + 1253) & 1;
      v137 = *(v0 + 1056);
      sub_100016590(v134, v133);
      sub_100016590(v136, v137);
      sub_100006654(v134, v133);
      sub_100016590(v142, v135);
      sub_100006654(v145, v148);
      *(v130 + 2) = v132 + 1;
      v138 = &v130[48 * v132];
      v138[32] = v151;
      *(v138 + 5) = v154;
      *(v138 + 6) = v119;
      *(v138 + 7) = v120;
      *(v138 + 8) = v166;
      *(v138 + 9) = v162;
      v128 = sub_100428218;
    }

    else
    {
      v126 = *(v0 + 1104);
      v127 = *(v0 + 1096);
      sub_100016590(*(v0 + 1064), *(v0 + 1056));
      sub_100006654(v114, v113);
      sub_100016590(v115, v116);
      sub_100006654(v127, v126);
      v128 = sub_100428A3C;
    }

    return _swift_task_switch(v128, 0, 0);
  }
}

uint64_t sub_1004274B8()
{
  v62 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1000);
  *(v0 + 304) = *(v0 + 984);
  *(v0 + 320) = v3;
  v4 = *(v0 + 1160);
  *(v0 + 336) = *(v0 + 624);
  *(v0 + 352) = v4;
  *(v0 + 368) = v1;
  sub_100429C80(v0 + 304);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (!*(v2 + 16))
  {
    v6 = *(v0 + 1254);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    *(v7 + 56) = &type metadata for UInt8;
    *(v7 + 64) = &protocol witness table for UInt8;
    *(v7 + 32) = v6;
    v8 = String.init(format:_:)();
    v10 = v9;
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 912);
    v12 = *(v0 + 808);
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177B810);
    sub_100429A68(v12, v11);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 912);
    if (v16)
    {
      v18 = v8;
      v19 = *(v0 + 824);
      v20 = *(v0 + 1253);
      v57 = v2;
      v21 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v21 = 136316163;
      if (v20)
      {
        v22 = 0x61646E6F6365732ELL;
      }

      else
      {
        v22 = 0x7972616D6972702ELL;
      }

      if (v20)
      {
        v23 = 0xEA00000000007972;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      v24 = sub_1000136BC(v22, v23, &v59);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v19;
      *(v21 + 22) = 2080;
      v25 = sub_1000136BC(v18, v10, &v59);

      *(v21 + 24) = v25;
      *(v21 + 32) = 2160;
      *(v21 + 34) = 1752392040;
      *(v21 + 42) = 2081;
      type metadata accessor for UUID();
      sub_100429D28(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v26;
      v27._countAndFlagsBits = 47;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      v30 = v60;
      v29 = v61;
      sub_100429ACC(v17);
      v31 = sub_1000136BC(v30, v29, &v59);

      *(v21 + 44) = v31;
      _os_log_impl(&_mh_execute_header, v14, v15, "No match for sequence %s index %llu hint %s %{private,mask.hash}s", v21, 0x34u);
      swift_arrayDestroy();
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);

      v2 = v57;
    }

    else
    {

      sub_100429ACC(v17);
    }
  }

  if (p_weak_ivar_lyt[371] != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 904);
  v33 = *(v0 + 808);
  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177B810);
  sub_100429A68(v33, v32);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 968);
  v39 = *(v0 + 960);
  v40 = *(v0 + 952);
  v41 = *(v0 + 904);
  if (v37)
  {
    v58 = *(v0 + 816);
    v42 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v42 = 136315394;

    v55 = v40;
    v56 = v38;
    v43 = Array.description.getter();
    v45 = v44;

    v46 = sub_1000136BC(v43, v45, &v59);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100429D28(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v47;
    v48._countAndFlagsBits = 47;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    v50 = v60;
    v51 = v61;
    sub_100429ACC(v41);
    v52 = sub_1000136BC(v50, v51, &v59);

    *(v42 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v35, v36, "primaryKeys: %s for beacon %s", v42, 0x16u);
    swift_arrayDestroy();

    sub_100429C08(v55, v39, v56);
    sub_100429C80(v0 + 16);

    sub_10000B3A8(v58, &qword_10169FCA8, &qword_1013A2B88);
  }

  else
  {
    sub_10000B3A8(*(v0 + 816), &qword_10169FCA8, &qword_1013A2B88);
    sub_100429C08(v40, v39, v38);
    sub_100429C80(v0 + 16);

    sub_100429ACC(v41);
  }

  v53 = *(v0 + 8);

  return v53(v2);
}

uint64_t sub_100427B68()
{
  v62 = v0;
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1000);
  *(v0 + 304) = *(v0 + 984);
  *(v0 + 320) = v3;
  v4 = *(v0 + 1192);
  *(v0 + 336) = *(v0 + 624);
  *(v0 + 352) = v4;
  *(v0 + 368) = v1;
  sub_100429C80(v0 + 304);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (!*(v2 + 16))
  {
    v6 = *(v0 + 1254);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    *(v7 + 56) = &type metadata for UInt8;
    *(v7 + 64) = &protocol witness table for UInt8;
    *(v7 + 32) = v6;
    v8 = String.init(format:_:)();
    v10 = v9;
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 912);
    v12 = *(v0 + 808);
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177B810);
    sub_100429A68(v12, v11);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 912);
    if (v16)
    {
      v18 = v8;
      v19 = *(v0 + 824);
      v20 = *(v0 + 1253);
      v57 = v2;
      v21 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v21 = 136316163;
      if (v20)
      {
        v22 = 0x61646E6F6365732ELL;
      }

      else
      {
        v22 = 0x7972616D6972702ELL;
      }

      if (v20)
      {
        v23 = 0xEA00000000007972;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      v24 = sub_1000136BC(v22, v23, &v59);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v19;
      *(v21 + 22) = 2080;
      v25 = sub_1000136BC(v18, v10, &v59);

      *(v21 + 24) = v25;
      *(v21 + 32) = 2160;
      *(v21 + 34) = 1752392040;
      *(v21 + 42) = 2081;
      type metadata accessor for UUID();
      sub_100429D28(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v26;
      v27._countAndFlagsBits = 47;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      v30 = v60;
      v29 = v61;
      sub_100429ACC(v17);
      v31 = sub_1000136BC(v30, v29, &v59);

      *(v21 + 44) = v31;
      _os_log_impl(&_mh_execute_header, v14, v15, "No match for sequence %s index %llu hint %s %{private,mask.hash}s", v21, 0x34u);
      swift_arrayDestroy();
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);

      v2 = v57;
    }

    else
    {

      sub_100429ACC(v17);
    }
  }

  if (p_weak_ivar_lyt[371] != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 904);
  v33 = *(v0 + 808);
  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177B810);
  sub_100429A68(v33, v32);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 968);
  v39 = *(v0 + 960);
  v40 = *(v0 + 952);
  v41 = *(v0 + 904);
  if (v37)
  {
    v58 = *(v0 + 816);
    v42 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v42 = 136315394;

    v55 = v40;
    v56 = v38;
    v43 = Array.description.getter();
    v45 = v44;

    v46 = sub_1000136BC(v43, v45, &v59);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100429D28(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v47;
    v48._countAndFlagsBits = 47;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    v50 = v60;
    v51 = v61;
    sub_100429ACC(v41);
    v52 = sub_1000136BC(v50, v51, &v59);

    *(v42 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v35, v36, "primaryKeys: %s for beacon %s", v42, 0x16u);
    swift_arrayDestroy();

    sub_100429C08(v55, v39, v56);
    sub_100429C80(v0 + 16);

    sub_10000B3A8(v58, &qword_10169FCA8, &qword_1013A2B88);
  }

  else
  {
    sub_10000B3A8(*(v0 + 816), &qword_10169FCA8, &qword_1013A2B88);
    sub_100429C08(v40, v39, v38);
    sub_100429C80(v0 + 16);

    sub_100429ACC(v41);
  }

  v53 = *(v0 + 8);

  return v53(v2);
}

uint64_t sub_100428218()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1240);
    v2 = *(v0 + 1128);
    *(v0 + 1200) = *(v0 + 1080);
    *(v0 + 1192) = v2;
    *(v0 + 1184) = v1;
    v3 = sub_100427B68;
  }

  else
  {
    v4 = *(v0 + 1232);
    v5 = *(v0 + 1216);
    v6 = *(v0 + 1128);
    v7 = *(v0 + 1088);
    v8 = *(v0 + 1080);
    *(v0 + 1040) = *(v0 + 1240);
    *(v0 + 1072) = v6;
    *(v0 + 1064) = v8;
    *(v0 + 1056) = v7;
    *(v0 + 1048) = v5;
    v9 = *(v0 + 1000);
    *(v0 + 160) = *(v0 + 984);
    *(v0 + 176) = v9;
    *(v0 + 192) = *(v0 + 624);
    *(v0 + 208) = v6;
    *(v0 + 216) = v8;
    *(v0 + 224) = v7;
    sub_100429C24(v0 + 160, v0 + 232);
    sub_100017D5C(v8, v7);
    sub_100017D5C(v8, v7);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 640) = 0x7365547265646E75;
    *(v0 + 648) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v10 = sub_100A7563C(v8, v7, 1);
    *(v0 + 1080) = v10;
    *(v0 + 1088) = v11;
    if (v4)
    {
      sub_100016590(v8, v7);
      sub_100016590(v8, v7);
      sub_100429C80(v0 + 160);
      *(v0 + 1176) = v7;
      *(v0 + 1168) = v8;
      *(v0 + 1160) = v6;
      v25 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v26 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_101385D80;
      v28 = _convertErrorToNSError(_:)();
      *(v27 + 56) = sub_1003289A8();
      *(v27 + 64) = sub_100429D28(&qword_1016BC310, sub_1003289A8, &protocol conformance descriptor for NSObject);
      *(v27 + 32) = v28;
      os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Error in TokenAsyncSequence: %@", 31, 2, v27);

      v3 = sub_1004274B8;
    }

    else
    {
      v12 = v10;
      v13 = v11;
      v14 = String.utf8Data.getter();
      v16 = v15;
      v17 = sub_100A79CBC(v12, v13, v14, v15, 72);
      sub_100495DF4(v17, v18, (v0 + 656));
      v63 = *(v0 + 992);
      sub_100016590(v14, v16);
      v68 = *(v0 + 664);
      v67 = *(v0 + 656);
      if (v63 >> 60 == 15)
      {
        v19 = *(v0 + 1008);
        v20 = *(v0 + 1000);
        sub_100017D5C(*(v0 + 656), v68);
        v21 = sub_100A7A194(v20, v19, 0, 0);
        v65 = sub_100A7A73C(v21, 0, v67, v68);
        CCECCryptorRelease();
        sub_100016590(v67, v68);
        v31 = sub_100A7829C(v65, 0, 0);
        v33 = v32;
        sub_100017D5C(v31, v32);
        v34 = sub_10049C0AC(v31, v33);
        v57 = v37;
        v58 = v34;
        CCECCryptorRelease();
        v38 = sub_100016590(v31, v33);
        v41 = *(v0 + 992);
        v42 = *(v0 + 984);
      }

      else
      {
        v64 = *(v0 + 992);
        v22 = *(v0 + 984);
        v23 = *(v0 + 656);
        sub_10002E98C(v22, v64);
        sub_100017D5C(v23, v68);
        v24 = sub_100A7A194(v22, v64, 0, 1);
        v29 = sub_100A7A73C(v24, 1uLL, v67, v68);
        CCECCryptorRelease();
        sub_100016590(v67, v68);
        v30 = sub_100A7829C(v29, 1, 0);
        v36 = v35;
        v66 = v30;
        v55 = sub_100A7829C(v29, 0, 0);
        v56 = v48;
        sub_100017D5C(v66, v36);
        v60 = sub_10049BD68(v66, v36);
        v62 = v49;
        sub_100017D5C(v55, v56);
        v50 = sub_10049C0AC(v55, v56);
        v57 = v51;
        v58 = v50;
        v53 = *(v0 + 984);
        v54 = *(v0 + 992);
        CCECCryptorRelease();
        sub_100016590(v55, v56);
        sub_100016590(v66, v36);
        v38 = sub_100006654(v53, v54);
        v42 = v60;
        v41 = v62;
      }

      v59 = v42;
      v61 = v41;
      *(v0 + 1104) = v41;
      *(v0 + 1096) = v42;
      *(v0 + 1112) = v57;
      *(v0 + 1120) = v58;
      *(v0 + 1128) = v6 + 1;
      if (v6 == -1)
      {
        __break(1u);
        return _swift_task_switch(v38, v39, v40);
      }

      sub_100017D5C(v12, v13);
      sub_100016590(v8, v7);
      v43 = String.utf8Data.getter();
      v45 = v44;
      v46 = sub_100A79CBC(v12, v13, v43, v44, 32);
      sub_1004A4714(v46, v47, (v0 + 672));
      *(v0 + 1136) = 0;
      sub_100016590(v43, v45);
      *(v0 + 1144) = *(v0 + 672);
      sub_100017D5C(v58, v57);
      sub_10002E98C(v59, v61);
      sub_100006654(v59, v61);
      sub_100016590(v58, v57);
      sub_100016590(v12, v13);
      sub_100016590(v67, v68);
      sub_100429C80(v0 + 160);
      sub_100016590(v8, v7);
      v3 = sub_100426428;
    }
  }

  v38 = v3;
  v39 = 0;
  v40 = 0;

  return _swift_task_switch(v38, v39, v40);
}

uint64_t sub_100428A3C()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1128);
    v2 = *(v0 + 1040);
    *(v0 + 1200) = *(v0 + 1080);
    *(v0 + 1192) = v1;
    *(v0 + 1184) = v2;
    v3 = sub_100427B68;
  }

  else
  {
    v4 = *(v0 + 1224);
    v5 = *(v0 + 1216);
    v6 = *(v0 + 1128);
    v7 = *(v0 + 1088);
    v8 = *(v0 + 1080);
    *(v0 + 1072) = v6;
    *(v0 + 1064) = v8;
    *(v0 + 1056) = v7;
    *(v0 + 1048) = v5;
    v9 = *(v0 + 1000);
    *(v0 + 160) = *(v0 + 984);
    *(v0 + 176) = v9;
    *(v0 + 192) = *(v0 + 624);
    *(v0 + 208) = v6;
    *(v0 + 216) = v8;
    *(v0 + 224) = v7;
    sub_100429C24(v0 + 160, v0 + 232);
    sub_100017D5C(v8, v7);
    sub_100017D5C(v8, v7);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    *(v0 + 640) = 0x7365547265646E75;
    *(v0 + 648) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v10 = sub_100A7563C(v8, v7, 1);
    *(v0 + 1080) = v10;
    *(v0 + 1088) = v11;
    if (v4)
    {
      sub_100016590(v8, v7);
      sub_100016590(v8, v7);
      sub_100429C80(v0 + 160);
      *(v0 + 1176) = v7;
      *(v0 + 1168) = v8;
      *(v0 + 1160) = v6;
      v25 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v26 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_101385D80;
      v28 = _convertErrorToNSError(_:)();
      *(v27 + 56) = sub_1003289A8();
      *(v27 + 64) = sub_100429D28(&qword_1016BC310, sub_1003289A8, &protocol conformance descriptor for NSObject);
      *(v27 + 32) = v28;
      os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Error in TokenAsyncSequence: %@", 31, 2, v27);

      v3 = sub_1004274B8;
    }

    else
    {
      v12 = v10;
      v13 = v11;
      v14 = String.utf8Data.getter();
      v16 = v15;
      v17 = sub_100A79CBC(v12, v13, v14, v15, 72);
      sub_100495DF4(v17, v18, (v0 + 656));
      v63 = *(v0 + 992);
      sub_100016590(v14, v16);
      v68 = *(v0 + 664);
      v67 = *(v0 + 656);
      if (v63 >> 60 == 15)
      {
        v19 = *(v0 + 1008);
        v20 = *(v0 + 1000);
        sub_100017D5C(*(v0 + 656), v68);
        v21 = sub_100A7A194(v20, v19, 0, 0);
        v65 = sub_100A7A73C(v21, 0, v67, v68);
        CCECCryptorRelease();
        sub_100016590(v67, v68);
        v31 = sub_100A7829C(v65, 0, 0);
        v33 = v32;
        sub_100017D5C(v31, v32);
        v34 = sub_10049C0AC(v31, v33);
        v57 = v37;
        v58 = v34;
        CCECCryptorRelease();
        v38 = sub_100016590(v31, v33);
        v41 = *(v0 + 992);
        v42 = *(v0 + 984);
      }

      else
      {
        v64 = *(v0 + 992);
        v22 = *(v0 + 984);
        v23 = *(v0 + 656);
        sub_10002E98C(v22, v64);
        sub_100017D5C(v23, v68);
        v24 = sub_100A7A194(v22, v64, 0, 1);
        v29 = sub_100A7A73C(v24, 1uLL, v67, v68);
        CCECCryptorRelease();
        sub_100016590(v67, v68);
        v30 = sub_100A7829C(v29, 1, 0);
        v36 = v35;
        v66 = v30;
        v55 = sub_100A7829C(v29, 0, 0);
        v56 = v48;
        sub_100017D5C(v66, v36);
        v60 = sub_10049BD68(v66, v36);
        v62 = v49;
        sub_100017D5C(v55, v56);
        v50 = sub_10049C0AC(v55, v56);
        v57 = v51;
        v58 = v50;
        v53 = *(v0 + 984);
        v54 = *(v0 + 992);
        CCECCryptorRelease();
        sub_100016590(v55, v56);
        sub_100016590(v66, v36);
        v38 = sub_100006654(v53, v54);
        v42 = v60;
        v41 = v62;
      }

      v59 = v42;
      v61 = v41;
      *(v0 + 1104) = v41;
      *(v0 + 1096) = v42;
      *(v0 + 1112) = v57;
      *(v0 + 1120) = v58;
      *(v0 + 1128) = v6 + 1;
      if (v6 == -1)
      {
        __break(1u);
        return _swift_task_switch(v38, v39, v40);
      }

      sub_100017D5C(v12, v13);
      sub_100016590(v8, v7);
      v43 = String.utf8Data.getter();
      v45 = v44;
      v46 = sub_100A79CBC(v12, v13, v43, v44, 32);
      sub_1004A4714(v46, v47, (v0 + 672));
      *(v0 + 1136) = 0;
      sub_100016590(v43, v45);
      *(v0 + 1144) = *(v0 + 672);
      sub_100017D5C(v58, v57);
      sub_10002E98C(v59, v61);
      sub_100006654(v59, v61);
      sub_100016590(v58, v57);
      sub_100016590(v12, v13);
      sub_100016590(v67, v68);
      sub_100429C80(v0 + 160);
      sub_100016590(v8, v7);
      v3 = sub_100426428;
    }
  }

  v38 = v3;
  v39 = 0;
  v40 = 0;

  return _swift_task_switch(v38, v39, v40);
}

uint64_t sub_100429258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v7[16] = a1;
  v7[23] = type metadata accessor for BeaconIdentifier(0);
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004292F8, 0, 0);
}

uint64_t sub_1004292F8()
{
  v1 = v0[20];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = sub_10002BD40(v2, v3);
  sub_1000035D0(v1, v1[3]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = v0[13];
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1004293F4;
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[18];
  v10 = v0[19];
  v11 = v0[17];

  return sub_1004240DC((v0 + 2), v11, v9, v10, v4 & 1, v5, v7, v8);
}

uint64_t sub_1004293F4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100429A04;
  }

  else
  {
    v2 = sub_100429508;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100429508()
{
  v49 = v0;
  v1 = v0[2];
  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    v3 = v0[3];
    if (v3 >> 60 != 15)
    {
      v27 = v0[4];
      v28 = v0[20];
      v45 = v0[16];
      v29 = v28[3];
      v30 = v28[4];
      sub_1000035D0(v28, v29);
      sub_100017D5C(v1, v3);
      LOBYTE(v30) = sub_10002BD40(v29, v30);
      sub_1000035D0(v28, v28[3]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v30)
      {
        v44 = v0[14];
        v43 = PublicKey.advertisement.getter(v27, v2);
        v32 = v31;
        v33 = sub_100497AF4(v1, v3);
        v35 = v34;
        v36 = &type metadata for SecondaryKey;
        v37 = sub_100429D98();
      }

      else
      {
        v44 = v0[15];
        v43 = PublicKey.advertisement.getter(v27, v2);
        v32 = v38;
        v33 = sub_100497AF4(v1, v3);
        v35 = v39;
        v36 = &type metadata for PrimaryKey;
        v37 = sub_100429DEC();
      }

      *(v45 + 24) = v36;
      v40 = v0[16];
      v40[4] = v37;
      v41 = swift_allocObject();
      sub_100006654(v1, v3);
      sub_10000B3A8((v0 + 2), &qword_10169FCA0, &unk_1013B32F0);
      v41[2] = v44;
      v41[3] = v43;
      v41[4] = v32;
      v41[5] = v33;
      v41[6] = v35;
      *v40 = v41;

      v26 = v0[1];
      goto LABEL_20;
    }

    sub_10000B3A8((v0 + 2), &qword_10169FCA0, &unk_1013B32F0);
  }

  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[17];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B810);
  sub_10001F280(v5, (v0 + 8));
  sub_100429A68(v6, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[24];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v12 = 136446723;
    v13 = v0[11];
    v14 = v0[12];
    sub_1000035D0(v0 + 8, v13);
    v15 = sub_10002BD40(v13, v14);
    if (v15)
    {
      v16 = 0x61646E6F6365732ELL;
    }

    else
    {
      v16 = 0x7972616D6972702ELL;
    }

    if (v15)
    {
      v17 = 0xEA00000000007972;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    sub_100007BAC(v0 + 8);
    v18 = sub_1000136BC(v16, v17, &v46);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100429D28(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v19;
    v20._countAndFlagsBits = 47;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v23 = v47;
    v22 = v48;
    sub_100429ACC(v11);
    v24 = sub_1000136BC(v23, v22, &v46);

    *(v12 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to generate %{public}s key for %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100429ACC(v11);
    sub_100007BAC(v0 + 8);
  }

  sub_100429B28();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();

  v26 = v0[1];
LABEL_20:

  return v26();
}

uint64_t sub_100429A04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100429A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100429ACC(uint64_t a1)
{
  v2 = type metadata accessor for BeaconIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100429B28()
{
  result = qword_10169FC98;
  if (!qword_10169FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FC98);
  }

  return result;
}

uint64_t sub_100429B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169FCA8, &qword_1013A2B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100429BEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_100017D5C(a2, a3);
  }

  return result;
}

uint64_t sub_100429C08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_100016590(a2, a3);
  }

  return result;
}

uint64_t sub_100429D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100429D98()
{
  result = qword_10169FCC0;
  if (!qword_10169FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FCC0);
  }

  return result;
}

unint64_t sub_100429DEC()
{
  result = qword_10169FCC8;
  if (!qword_10169FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FCC8);
  }

  return result;
}

unint64_t sub_100429E54()
{
  result = qword_10169FCD0[0];
  if (!qword_10169FCD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10169FCD0);
  }

  return result;
}

uint64_t sub_100429EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttachedAccessoryEvents.EventAtTimeWithType(255, *(a1 + 16), *(a1 + 24), a4);
  result = type metadata accessor for Array();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100429F78(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10042A7A4();
      if (v3 <= 0x3F)
      {
        sub_100395648(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10042A030(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v39 = type metadata accessor for Date();
  v8 = *(v39 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UUID() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v10 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  if (v13)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v6 + 64) + v17;
  v22 = *(v8 + 64) + 7;
  v23 = v18 + 40;
  if (a2 <= v16)
  {
    goto LABEL_39;
  }

  v24 = v20 + ((v23 + ((v22 + (v21 & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v18);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v16 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_39;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_39;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      else
      {
        v31 = 0;
      }

      return v16 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_39:
  if (v7 == v16)
  {
    v32 = *(v6 + 48);
    v33 = a1;
    v34 = v7;
    v35 = v5;

    return v32(v33, v34, v35);
  }

  v33 = ((a1 + v21) & ~v17);
  if (v9 == v16)
  {
    v32 = *(v8 + 48);
    v34 = v9;
    v35 = v39;

    return v32(v33, v34, v35);
  }

  v36 = (v33 + v22) & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0x80000000) != 0)
  {
    v38 = (*(v12 + 48))((v23 + v36) & ~v18);
    if (v38 >= 2)
    {
      return v38 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v37 = *(v36 + 24);
    if (v37 >= 0xFFFFFFFF)
    {
      LODWORD(v37) = -1;
    }

    return (v37 + 1);
  }
}

void sub_10042A3A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v43 = *(a4 + 16);
  v6 = *(v43 - 8);
  v42 = v6;
  v7 = *(v6 + 84);
  v41 = type metadata accessor for Date();
  v8 = *(v41 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(type metadata accessor for UUID() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v6 + 64);
  if (v14)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  if (v10 <= v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v10;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = v15 + v17;
  v24 = (v15 + v17) & ~v17;
  v25 = v18 + 7;
  v26 = (v19 + 40 + ((v18 + 7 + v24) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
  if (v14)
  {
    v27 = v20;
  }

  else
  {
    v27 = v20 + 1;
  }

  v28 = v26 + v27;
  if (a3 <= v22)
  {
    goto LABEL_27;
  }

  if (v28 <= 3)
  {
    v29 = ((a3 - v22 + ~(-1 << (8 * v28))) >> (8 * v28)) + 1;
    if (HIWORD(v29))
    {
      v11 = 4;
      if (v22 >= a2)
      {
        goto LABEL_37;
      }

LABEL_28:
      v31 = ~v22 + a2;
      if (v28 >= 4)
      {
        bzero(a1, v28);
        *a1 = v31;
        v32 = 1;
        if (v11 > 1)
        {
          goto LABEL_61;
        }

        goto LABEL_58;
      }

      v32 = (v31 >> (8 * v28)) + 1;
      if (v28)
      {
        v33 = v31 & ~(-1 << (8 * v28));
        bzero(a1, v28);
        if (v28 != 3)
        {
          if (v28 == 2)
          {
            *a1 = v33;
            if (v11 > 1)
            {
LABEL_61:
              if (v11 == 2)
              {
                *&a1[v28] = v32;
              }

              else
              {
                *&a1[v28] = v32;
              }

              return;
            }
          }

          else
          {
            *a1 = v31;
            if (v11 > 1)
            {
              goto LABEL_61;
            }
          }

LABEL_58:
          if (v11)
          {
            a1[v28] = v32;
          }

          return;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v11 > 1)
      {
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    if (v29 >= 2)
    {
      v11 = v30;
    }

    else
    {
      v11 = 0;
    }

LABEL_27:
    if (v22 >= a2)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v11 = 1;
  if (v22 < a2)
  {
    goto LABEL_28;
  }

LABEL_37:
  v34 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&a1[v28] = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v11)
  {
    goto LABEL_43;
  }

  a1[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v7 == v22)
  {
    v35 = v43;
    v36 = *(v42 + 56);
    v37 = a2;
    v38 = v7;
LABEL_48:

    v36(v34, v37, v38, v35);
    return;
  }

  v34 = (&a1[v23] & ~v17);
  if (v9 == v22)
  {
    v36 = *(v8 + 56);
    v37 = a2;
    v38 = v9;
    v35 = v41;
    goto LABEL_48;
  }

  v39 = &v34[v25] & 0xFFFFFFFFFFFFFFF8;
  if ((v21 & 0x80000000) != 0)
  {
    v40 = *(v13 + 56);

    v40((v19 + 40 + v39) & ~v19, (a2 + 1));
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    *v39 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v39 + 24) = (a2 - 1);
  }
}

unint64_t sub_10042A7A4()
{
  result = qword_10169FDD8[0];
  if (!qword_10169FDD8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_10169FDD8);
  }

  return result;
}

Swift::Int sub_10042A808()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10042A880(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

void *sub_10042A8C4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10042A8FC(uint64_t a1)
{
  if (a1 == 4)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10042A914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042A988(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042AA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042AAD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10042A8FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10042AB08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005B458(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10042AB4C(uint64_t a1)
{
  if (a1 == 4)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10042AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042ABD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042AC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042ACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042AD24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10042AB4C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10042AD58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005B484(*v1);
  *a1 = result;
  return result;
}

BOOL sub_10042ADBC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073C8C(v11[1]);

  Date.addingTimeInterval(_:)();
  static Date.trustedNow.getter(v4);
  Date.timeIntervalSince(_:)();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);
  return v8 <= 0.0;
}

uint64_t sub_10042AF74(uint64_t a1)
{
  if (a1 == 4)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10042AF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042B000(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042B06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042B0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_10042B14C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10042AF74(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10042B180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005B498(*v1);
  *a1 = result;
  return result;
}

BOOL sub_10042B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AttachedAccessoryEvents.EventAtTimeWithType(0, a3, a4, a4);
  v7 = (a1 + *(v6 + 40));
  v8 = v7[3];
  v9 = v7[4];
  sub_1000035D0(v7, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = (a2 + *(v6 + 40));
  v12 = v11[3];
  v13 = v11[4];
  sub_1000035D0(v11, v12);
  if (v10 != (*(v13 + 8))(v12, v13) || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = v7[3];
  v15 = v7[4];
  sub_1000035D0(v7, v14);
  LODWORD(v15) = (*(v15 + 16))(v14, v15);
  v16 = v11[3];
  v17 = v11[4];
  sub_1000035D0(v11, v16);
  return v15 == (*(v17 + 16))(v16, v17);
}

uint64_t sub_10042B330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AttachedAccessoryEvents.EventAtTimeWithType(0, a3, a4, a4);
  v7 = (a1 + *(v6 + 40));
  v8 = v7[3];
  v9 = v7[4];
  sub_1000035D0(v7, v8);
  v10 = (*(v9 + 16))(v8, v9);
  v11 = (a2 + *(v6 + 40));
  v12 = v11[3];
  v13 = v11[4];
  sub_1000035D0(v11, v12);
  if (v10 == (*(v13 + 16))(v12, v13) || (v14 = v7[3], v15 = v7[4], sub_1000035D0(v7, v14), v16 = (*(v15 + 8))(v14, v15), v17 = v11[3], v18 = v11[4], sub_1000035D0(v11, v17), v16 == (*(v18 + 8))(v17, v18)))
  {

    return static Date.> infix(_:_:)();
  }

  else
  {
    v20 = v7[3];
    v21 = v7[4];
    sub_1000035D0(v7, v20);
    v22 = (*(v21 + 8))(v20, v21);
    v23 = v11[3];
    v24 = v11[4];
    sub_1000035D0(v11, v23);
    return v22 < (*(v24 + 8))(v23, v24);
  }
}

unint64_t sub_10042B5E4()
{
  result = qword_10169FFE0;
  if (!qword_10169FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169FFE0);
  }

  return result;
}

uint64_t sub_10042B690(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CompanionPublishActivity();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_10042B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CompanionPublishActivity();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10042B7FC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CompanionPublishActivity();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10042B8A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for CompanionPublishActivity();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_10042B94C()
{
  type metadata accessor for CompanionPublishActivity();
  sub_10042BA08(&qword_1016A00B0, a9);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10042BA08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CompanionPublishActivity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10042BA48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v5 = __chkstk_darwin(v4);
  v63 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v62 = (&v51 - v8);
  __chkstk_darwin(v7);
  v58 = (&v51 - v9);
  v10 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return result;
  }

  v70 = _swiftEmptyArrayStorage;
  sub_1011244D8(0, v10, 0);
  v64 = v70;
  v12 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v13 = result;
  v14 = 0;
  v65 = *(a1 + 36);
  v52 = a1 + 72;
  v56 = a1 + 64;
  v57 = a1;
  v54 = v10;
  v55 = v4;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_42;
    }

    if (v65 != *(a1 + 36))
    {
      goto LABEL_43;
    }

    v59 = v14;
    v60 = 1 << v13;
    v17 = *(v4 + 48);
    v18 = *(a1 + 56);
    v19 = v58;
    v61 = *(*(a1 + 48) + 16 * v13);
    *v58 = v61;
    v20 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    sub_10046A814(v18 + *(*(v20 - 8) + 72) * v13, v19 + v17, type metadata accessor for OwnedBeaconGroup.PairingState);
    v21 = v62;
    *v62 = *v19;
    sub_10046B7F0(v19 + v17, v21 + *(v4 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v22 = v63;
    result = sub_1000D2A70(v21, v63, &qword_1016A4190, &unk_1013A3550);
    v24 = *v22;
    v23 = v22[1];
    v68 = *v22;
    v69 = v23;
    v25 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      v26 = 0;
      if (v25 != 2)
      {
        goto LABEL_19;
      }

      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      v26 = v27 - v28;
      if (__OFSUB__(v27, v28))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (!v25)
      {
        v26 = BYTE6(v23);
        goto LABEL_19;
      }

      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_50;
      }

      v26 = HIDWORD(v24) - v24;
    }

    result = sub_100017D5C(v24, v23);
LABEL_19:
    v29 = 20 - v26;
    if (__OFSUB__(20, v26))
    {
      goto LABEL_44;
    }

    if (v29)
    {
      if (v29 <= 14)
      {
        if (v29 < 0)
        {
          goto LABEL_48;
        }

        v33 = v53 & 0xF00000000000000 | ((20 - v26) << 48);
        sub_100017D5C(v61, *(&v61 + 1));
        v31 = 0;
        v53 = v33;
        v32 = v33;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        sub_100017D5C(v61, *(&v61 + 1));
        v30 = __DataStorage.init(length:)();
        if (v29 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v31 = swift_allocObject();
          *(v31 + 16) = 0;
          *(v31 + 24) = v29;
          v32 = v30 | 0x8000000000000000;
        }

        else
        {
          v31 = v29 << 32;
          v32 = v30 | 0x4000000000000000;
        }
      }
    }

    else
    {
      sub_100017D5C(v61, *(&v61 + 1));
      v31 = 0;
      v32 = 0xC000000000000000;
    }

    v34 = *(v4 + 48);
    v66 = v31;
    v67 = v32;
    v35 = v2;
    sub_100776394(&v66, 0);
    v36 = v66;
    v37 = v67;
    Data.append(_:)();
    sub_100016590(v36, v37);
    sub_100016590(v24, v23);
    v38 = v68;
    v39 = v69;
    sub_10046B858(v63 + v34, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = sub_10000B3A8(v62, &qword_1016A4190, &unk_1013A3550);
    v40 = v64;
    v70 = v64;
    v42 = v64[2];
    v41 = v64[3];
    if (v42 >= v41 >> 1)
    {
      result = sub_1011244D8((v41 > 1), v42 + 1, 1);
      v40 = v70;
    }

    v40[2] = v42 + 1;
    v43 = &v40[2 * v42];
    v43[4] = v38;
    v43[5] = v39;
    a1 = v57;
    v15 = 1 << *(v57 + 32);
    if (v13 >= v15)
    {
      goto LABEL_45;
    }

    v12 = v56;
    v44 = *(v56 + 8 * v16);
    if ((v44 & v60) == 0)
    {
      goto LABEL_46;
    }

    v64 = v40;
    if (v65 != *(v57 + 36))
    {
      goto LABEL_47;
    }

    v45 = v44 & (-2 << (v13 & 0x3F));
    if (v45)
    {
      v15 = __clz(__rbit64(v45)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v2 = v35;
    }

    else
    {
      v46 = v16 << 6;
      v47 = v16 + 1;
      v48 = (v52 + 8 * v16);
      v2 = v35;
      while (v47 < (v15 + 63) >> 6)
      {
        v50 = *v48++;
        v49 = v50;
        v46 += 64;
        ++v47;
        if (v50)
        {
          result = sub_10040BA00(v13, v65, 0);
          v15 = __clz(__rbit64(v49)) + v46;
          goto LABEL_4;
        }
      }

      result = sub_10040BA00(v13, v65, 0);
    }

LABEL_4:
    v14 = v59 + 1;
    v13 = v15;
    v4 = v55;
    if (v59 + 1 == v54)
    {
      return v64;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
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
  return result;
}

uint64_t sub_10042BF98()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AD08);
  sub_1000076D4(v0, qword_10177AD08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10042C01C()
{
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000076D4(v0, qword_10177AD08);
}

uint64_t sub_10042C0A4(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v4, a3);
  sub_1000076D4(v4, a3);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

unint64_t sub_10042C0FC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 48);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v8 = *(v2 + 8);
  v7 = v2 + 8;
  v8(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C418);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v27[0] = v16;
      *v15 = 136446210;
      *&v25 = v4;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000136BC(v17, v18, v27);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to retrieve lastPairingEvents due to %{public}s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v21 = sub_100909188(_swiftEmptyArrayStorage);

    goto LABEL_13;
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    sub_10000B3A8(v27, &unk_1016A0B10, &qword_10139BF40);
    return sub_100909188(_swiftEmptyArrayStorage);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100909188(_swiftEmptyArrayStorage);
  }

  v1 = v23;
  v7 = v24;
  sub_100017D5C(v23, v24);
  type metadata accessor for MACAddress();
  sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_10046BA30();
  sub_10046BA84();
  v21 = Dictionary<>.init(dataRepresentation:)();
LABEL_13:
  sub_100016590(v1, v7);
  return v21;
}

void sub_10042C564(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 48);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for MACAddress();
    sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_10046BA30();
    sub_10046BA84();
    v9 = Dictionary<>.dataRepresentation.getter();
    v11 = v10;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v9, v11);
    v13 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKey:v13];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10042C7D8(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for CBDiscovery.DiscoveryFlags();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10042C898, 0, 0);
}

uint64_t sub_10042C898()
{
  type metadata accessor for CBDiscovery();
  static CBDiscovery.DiscoveryFlags.pairing.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10042C94C;
  v2 = *(v0 + 40);

  return static CBDiscovery.devices(with:)(v2);
}

uint64_t sub_10042C94C(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_100274F20;
  }

  else
  {
    v4[8] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_10042CAD4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10042CAD4()
{
  **(v0 + 16) = *(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10042CB44()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 48);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v8 = *(v2 + 8);
  v7 = v2 + 8;
  v8(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C418);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v27[0] = v16;
      *v15 = 136446210;
      *&v25 = v4;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000136BC(v17, v18, v27);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to retrieve lastRetryAttempt due to %{public}s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v21 = sub_100909370(_swiftEmptyArrayStorage);

    goto LABEL_13;
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    sub_10000B3A8(v27, &unk_1016A0B10, &qword_10139BF40);
    return sub_100909370(_swiftEmptyArrayStorage);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100909370(_swiftEmptyArrayStorage);
  }

  v1 = v23;
  v7 = v24;
  sub_100017D5C(v23, v24);
  type metadata accessor for MACAddress();
  type metadata accessor for Date();
  sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_100019D54(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100019D54(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v21 = Dictionary<>.init(dataRepresentation:)();
LABEL_13:
  sub_100016590(v1, v7);
  return v21;
}

void sub_10042D008(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 48);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for MACAddress();
    type metadata accessor for Date();
    sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_100019D54(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100019D54(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v9 = Dictionary<>.dataRepresentation.getter();
    v11 = v10;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v9, v11);
    v13 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKey:v13];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10042D2E0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 48);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v8 = *(v2 + 8);
  v7 = v2 + 8;
  v8(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C418);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v27[0] = v16;
      *v15 = 136446210;
      *&v25 = v4;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000136BC(v17, v18, v27);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to retrieve lastRetryAttempt due to %{public}s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v21 = sub_100909590(_swiftEmptyArrayStorage);

    goto LABEL_13;
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    sub_10000B3A8(v27, &unk_1016A0B10, &qword_10139BF40);
    return sub_100909590(_swiftEmptyArrayStorage);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100909590(_swiftEmptyArrayStorage);
  }

  v1 = v23;
  v7 = v24;
  sub_100017D5C(v23, v24);
  type metadata accessor for MACAddress();
  sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v21 = Dictionary<>.init(dataRepresentation:)();
LABEL_13:
  sub_100016590(v1, v7);
  return v21;
}

void sub_10042D744(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 48);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for MACAddress();
    sub_100019D54(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_100019D54(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_100019D54(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v9 = Dictionary<>.dataRepresentation.getter();
    v11 = v10;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v9, v11);
    v13 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKey:v13];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10042D9A8()
{
  v1 = v0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v2 = sub_1010748A8(v17);

  if (v2)
  {
    return 1;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AD08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pairing retry on all devices is NOT allowed from server. Checking for Me device or only connectable device.", v7, 2u);
  }

  if (qword_101695510 != -1)
  {
    swift_once();
  }

  AnyCurrentValuePublisher.value.getter();

  v8 = *(v1 + 160);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240704;
    *(v11 + 4) = v17 == 1;
    *(v11 + 8) = 2048;
    *(v11 + 10) = v8;
    *(v11 + 18) = 1026;
    result = [objc_opt_self() defaultStore];
    if (!result)
    {
      __break(1u);
      goto LABEL_24;
    }

    v12 = result;
    v13 = [result aa_primaryAppleAccount];

    if (v13)
    {

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    *(v11 + 20) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "isPairingRetryAllowed: isMeDevice %{BOOL,public}d, connectableDevicesCount %ld, isiCloudSignedIn %{BOOL,public}d.", v11, 0x18u);
  }

  result = 1;
  if (v17 == 1 || v8 == 1)
  {
    return result;
  }

  result = [objc_opt_self() defaultStore];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result aa_primaryAppleAccount];

  if (!v16)
  {
    return 1;
  }

  return 0;
}

Swift::Int sub_10042DCF0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10042DDC0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10042DE7C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10042DF48@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100467074(*a1);
  *a2 = result;
  return result;
}

void sub_10042DF78(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEE00646572696170;
  v5 = 0x6E55794D646E6966;
  if (*v1 != 2)
  {
    v5 = 0x646572696170;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000101347C10;
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

uint64_t sub_10042E0B4()
{
  if (*v0)
  {
    return 0x74756F656D69742ELL;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t sub_10042E0E8()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v68 = v47 - v3;
  v4 = sub_1000BC4D4(&qword_10169BD08, &unk_101395B50);
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  __chkstk_darwin(v4);
  v60 = v47 - v6;
  v7 = sub_1000BC4D4(&qword_1016A0680, &qword_1013A3778);
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  __chkstk_darwin(v7);
  v59 = v47 - v9;
  v10 = sub_1000BC4D4(&qword_1016A0688, &qword_1013A3780);
  v11 = *(v10 - 8);
  v66 = v10;
  v67 = v11;
  __chkstk_darwin(v10);
  v61 = v47 - v12;
  v13 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v13 - 8);
  v69 = v47 - v14;
  v49 = sub_1000BC4D4(&qword_1016A0690, &qword_1013A3788);
  v15 = *(v49 - 8);
  __chkstk_darwin(v49);
  v17 = v47 - v16;
  v18 = sub_1000BC4D4(&qword_1016A0698, &qword_1013A3790);
  v19 = *(v18 - 8);
  v51 = v18;
  v52 = v19;
  __chkstk_darwin(v18);
  v21 = v47 - v20;
  v56 = sub_1000BC4D4(&qword_1016A06A0, &qword_1013A3798);
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v23 = v47 - v22;
  v57 = *(v0 + 16);
  v70 = sub_100A96C40();
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  v55 = type metadata accessor for OwnedBeaconGroup(0);
  v54 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.compactMap<A>(_:)();

  v53 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_1000041A4(&qword_1016A06A8, &qword_1016A0690, &qword_1013A3788, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v50 = sub_100019D54(&qword_1016A06B0, type metadata accessor for OwnedBeaconGroup, &unk_1013AFCF8);
  v24 = v49;
  Publisher<>.removeDuplicates()();
  (*(v15 + 8))(v17, v24);
  v70 = *(v0 + 48);
  v25 = v70;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = *(v26 - 8);
  v48 = *(v27 + 56);
  v49 = v27 + 56;
  v28 = v69;
  v48(v69, 1, 1, v26);
  v47[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A06B8, &qword_1016A0698, &qword_1013A3790, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_1004682F0();
  v47[0] = v25;
  v29 = v51;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v28, &unk_1016B0FE0, &unk_101391980);
  (*(v52 + 8))(v21, v29);
  sub_1000041A4(&qword_1016A06C0, &qword_1016A06A0, &qword_1013A3798, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v30 = v56;
  v31 = Publisher<>.sink(receiveValue:)();

  (*(v58 + 8))(v23, v30);
  *(v1 + 88) = v31;

  v70 = *(v57 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);

  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30, v54);
  v32 = v60;
  Publisher.compactMap<A>(_:)();

  sub_1000041A4(&qword_10169BD18, &qword_10169BD08, &unk_101395B50, v53);
  v33 = v59;
  v34 = v62;
  Publisher<>.removeDuplicates()();
  (*(v63 + 8))(v32, v34);
  v35 = v47[0];
  v70 = v47[0];
  v36 = v69;
  v48(v69, 1, 1, v26);
  sub_1000041A4(&qword_1016A06C8, &qword_1016A0680, &qword_1013A3778, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v37 = v61;
  v38 = v64;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v36, &unk_1016B0FE0, &unk_101391980);

  (*(v65 + 8))(v33, v38);
  sub_1000041A4(&qword_1016A06D0, &qword_1016A0688, &qword_1013A3780, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v39 = v66;
  v40 = Publisher<>.sink(receiveValue:)();

  (*(v67 + 8))(v37, v39);
  *(v1 + 96) = v40;

  sub_10043DFA0();
  sub_100437944();
  v41 = type metadata accessor for TaskPriority();
  v42 = *(*(v41 - 8) + 56);
  v43 = v68;
  v42(v68, 1, 1, v41);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v1;

  sub_1008CE048(0, 0, v43, &unk_1013A37A8, v44);

  sub_10000B3A8(v43, &qword_101698C00, &qword_10138B570);
  v42(v43, 1, 1, v41);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v1;

  sub_1008CE048(0, 0, v43, &unk_1013A37B8, v45);

  return sub_10000B3A8(v43, &qword_101698C00, &qword_10138B570);
}

uint64_t sub_10042EBA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10001F280(a1, v10);
  sub_1000BC4D4(a2, a3);
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  v8 = swift_dynamicCast();
  return (*(*(v7 - 8) + 56))(a4, v8 ^ 1u, 1, v7);
}

uint64_t sub_10042EC4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10042ECDC();
}

uint64_t sub_10042ECDC()
{
  v1[6] = v0;
  v2 = sub_1000BC4D4(&qword_10169B780, &unk_101395260);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_10169B788, &qword_1013A3770);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[13] = v4;
  *v4 = v1;
  v4[1] = sub_10042EE40;

  return daemon.getter();
}

uint64_t sub_10042EE40(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[14] = a1;

  v3 = swift_task_alloc();
  v2[15] = v3;
  v4 = type metadata accessor for Daemon();
  v2[16] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100019D54(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019D54(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_10042F020;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10042F020(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  if (v1)
  {

    v5 = sub_10042F51C;
    v6 = 0;
  }

  else
  {
    v5 = sub_10042F15C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10042F15C()
{
  v1 = *(v0 + 144);
  sub_10001B108();
  *(v0 + 152) = v2;
  if (v1)
  {

    sub_100019D54(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_10042F4A8;
  }

  else
  {
    sub_100019D54(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_10042F284;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10042F284()
{

  return _swift_task_switch(sub_10042F2F8, 0, 0);
}

uint64_t sub_10042F2F8(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v1[4] = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&qword_10169B790, &unk_101395270);
  sub_1000041A4(&qword_10169B798, &qword_10169B790, &unk_101395270, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.values.getter();

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v6 = swift_task_alloc();
  v1[20] = v6;
  *v6 = v1;
  v6[1] = sub_10042F5F4;
  v7 = v1[10];

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 2, v7, v5);
}

uint64_t sub_10042F4A8()
{

  return _swift_task_switch(sub_10042F51C, 0, 0);
}

uint64_t sub_10042F51C(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_1016950B8 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C400, "Missing BeaconManagerService.", 29, 2, _swiftEmptyArrayStorage);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10042F5F4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10042F88C;
  }

  else
  {
    v2 = sub_10042F708;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10042F708()
{
  *(v0 + 176) = *(v0 + 16);
  *(v0 + 25) = *(v0 + 24);
  return _swift_task_switch(sub_10042F734, 0, 0);
}

uint64_t sub_10042F734()
{
  if (*(v0 + 25))
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    atomic_exchange((*(v0 + 48) + 160), *(v0 + 176));
    v3 = sub_1000041A4(&qword_10169B7A8, &qword_10169B788, &qword_1013A3770, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_10042F5F4;
    v5 = *(v0 + 80);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v5, v3);
  }
}

uint64_t sub_10042F88C()
{
  *(v0 + 40) = *(v0 + 168);
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10042F918(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MACAddress();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v16[1] = *(v1 + 48);
  (*(v10 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  (*(v10 + 32))(v13 + v12, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_10046B60C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161E030;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v5, v3);
  (*(v17 + 8))(v8, v18);
}

void sub_10042FCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177AD08);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a2;
    v12 = v11;
    v20 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1000136BC(0xD000000000000010, 0x80000001013552D0, &v20);
    *(v12 + 12) = 2082;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1000136BC(v13, v15, &v20);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v17 = sub_10042C0FC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v17;
  sub_100FFCE84(2, a1, isUniquelyReferenced_nonNull_native);
  sub_10042C564(v20);
}

uint64_t sub_10042FFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100443154(a2, a3);
  }

  return result;
}

uint64_t sub_100430014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [*(a2 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  if (!*(*(a1 + 192) + 16))
  {
    goto LABEL_5;
  }

  sub_1000210EC(v9);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    result = (*(v7 + 8))(v9, v6);
    v14 = 0;
    goto LABEL_6;
  }

  v12 = *(v7 + 8);

  v12(v9, v6);

  QueueSynchronizer.conditionalSync<A>(_:)();

  v14 = v15[47];
LABEL_6:
  *a3 = v14;
  return result;
}

void sub_1004301E0(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v4 = __chkstk_darwin(v3);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v45 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 48);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = v48;
  (*(v8 + 16))(v11, v48 + *(v3 + 24), v7);
  swift_beginAccess();
  v21 = sub_100DE8BCC(v13, v11);
  (*(v8 + 8))(v13, v7);
  swift_endAccess();
  v8 = v20;
  if (v21)
  {
    if (qword_1016946F0 == -1)
    {
LABEL_4:
      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177AD08);
      v23 = v46;
      sub_10046A814(v8, v46, type metadata accessor for OwnedBeaconGroup);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v49[0] = v27;
        *v26 = 141558275;
        *(v26 + 4) = 1752392040;
        *(v26 + 12) = 2081;
        sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        sub_10046B858(v23, type metadata accessor for OwnedBeaconGroup);
        v31 = sub_1000136BC(v28, v30, v49);

        *(v26 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "Posting SPAccessoryDidPair Darwin notification for %{private,mask.hash}s", v26, 0x16u);
        sub_100007BAC(v27);
      }

      else
      {

        sub_10046B858(v23, type metadata accessor for OwnedBeaconGroup);
      }

      ThrottledDarwinPoster.post(bypassRateLimit:)(1);
      if (v42)
      {
      }

      My = type metadata accessor for Feature.FindMy();
      v49[3] = My;
      v49[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v44 = sub_1000280DC(v49);
      (*(*(My - 8) + 104))(v44, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC(v49);
      if (My)
      {
        static DarwinNotification.post(name:)();
      }

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000076D4(v32, qword_10177AD08);
  v33 = v47;
  sub_10046A814(v20, v47, type metadata accessor for OwnedBeaconGroup);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v49[0] = v37;
    *v36 = 141558275;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    sub_10046B858(v33, type metadata accessor for OwnedBeaconGroup);
    v41 = sub_1000136BC(v38, v40, v49);

    *(v36 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "Already posted SPAccessoryDidPair for %{private,mask.hash}s", v36, 0x16u);
    sub_100007BAC(v37);
  }

  else
  {

    sub_10046B858(v33, type metadata accessor for OwnedBeaconGroup);
  }
}

void sub_100430904(char *a1)
{
  v165 = a1;
  v2 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v2 - 8);
  v149 = &v142 - v3;
  v152 = type metadata accessor for Device();
  v150 = *(v152 - 8);
  v4 = *(v150 + 64);
  v5 = __chkstk_darwin(v152);
  v6 = __chkstk_darwin(v5);
  v148 = &v142 - v7;
  v8 = __chkstk_darwin(v6);
  v147 = &v142 - v9;
  __chkstk_darwin(v8);
  v151 = &v142 - v10;
  v160 = type metadata accessor for UUID();
  v157 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v163);
  v162 = &v142 - v12;
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v14 = __chkstk_darwin(v13);
  v159 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v146 = &v142 - v17;
  v18 = __chkstk_darwin(v16);
  v156 = &v142 - v19;
  v20 = __chkstk_darwin(v18);
  v155 = &v142 - v21;
  v22 = __chkstk_darwin(v20);
  v153 = &v142 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v142 - v25;
  __chkstk_darwin(v24);
  v28 = &v142 - v27;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = (&v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = v1;
  v33 = *(v1 + 48);
  *v32 = v33;
  (*(v30 + 104))(v32, enum case for DispatchPredicate.onQueue(_:), v29);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v32, v29);
  if (v33)
  {
    v145 = v4;
    v144 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1016946F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v154 = type metadata accessor for Logger();
  v35 = sub_1000076D4(v154, qword_10177AD08);
  v36 = v165;
  sub_10046A814(v165, v28, type metadata accessor for OwnedBeaconGroup);
  sub_10046A814(v36, v26, type metadata accessor for OwnedBeaconGroup);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v161 = v35;
    v40 = v39;
    v166[0] = swift_slowAlloc();
    *v40 = 141558787;
    *(v40 + 4) = 1752392040;
    *(v40 + 12) = 2081;
    sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_10046B858(v28, type metadata accessor for OwnedBeaconGroup);
    v44 = sub_1000136BC(v41, v43, v166);

    *(v40 + 14) = v44;
    *(v40 + 22) = 2160;
    *(v40 + 24) = 1752392040;
    *(v40 + 32) = 2081;
    type metadata accessor for MACAddress();
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v36 = v165;
    sub_10046B858(v26, type metadata accessor for OwnedBeaconGroup);
    v48 = sub_1000136BC(v45, v47, v166);

    *(v40 + 34) = v48;
    _os_log_impl(&_mh_execute_header, v37, v38, "BA unpaired groupIdentifier: %{private,mask.hash}s,\nmac: %{private,mask.hash}s. Need to BT unpair.", v40, 0x2Au);
    swift_arrayDestroy();

    v35 = v161;
  }

  else
  {

    sub_10046B858(v26, type metadata accessor for OwnedBeaconGroup);
    sub_10046B858(v28, type metadata accessor for OwnedBeaconGroup);
  }

  v49 = v164;
  v50 = sub_100437674();
  v51 = &v36[*(v13 + 28)];
  *(&v142 - 2) = __chkstk_darwin(v50);
  *(&v142 - 1) = v51;
  v52 = v162;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10000B3A8(v52, &qword_1016A40D0, &unk_10138BE70);
  v53 = sub_100AC607C(v51)[2];

  if (v53)
  {
    v55 = v159;
    sub_10046A814(v36, v159, type metadata accessor for OwnedBeaconGroup);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v166[0] = v59;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      type metadata accessor for MACAddress();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      sub_10046B858(v55, type metadata accessor for OwnedBeaconGroup);
      v63 = sub_1000136BC(v60, v62, v166);

      *(v58 + 14) = v63;
      v64 = "We have at least one beacon group for the same MAC: %{private,mask.hash}s, do NOT BT unpair.";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v56, v57, v64, v58, 0x16u);
      sub_100007BAC(v59);

      goto LABEL_27;
    }

    goto LABEL_43;
  }

  v161 = v35;
  __chkstk_darwin(v54);
  *(&v142 - 2) = v51;
  *(&v142 - 1) = v65;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v66 = v49;
  v67 = v166[0];
  if (v166[0])
  {
    v68 = [*(v166[0] + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    v69 = v158;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    if (*(*(v66 + 192) + 16))
    {

      sub_1000210EC(v69);
      if (v70)
      {
        v143 = v50;
        v71 = *(v157 + 8);

        v71(v69, v160);

        QueueSynchronizer.conditionalSync<A>(_:)();
        if (LOBYTE(v166[0]) == 1)
        {
          v55 = v153;
          sub_10046A814(v165, v153, type metadata accessor for OwnedBeaconGroup);
          v56 = Logger.logObject.getter();
          v72 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v56, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v166[0] = v74;
            *v73 = 141558275;
            *(v73 + 4) = 1752392040;
            *(v73 + 12) = 2081;
            type metadata accessor for MACAddress();
            sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
            v75 = dispatch thunk of CustomStringConvertible.description.getter();
            v77 = v76;
            sub_10046B858(v55, type metadata accessor for OwnedBeaconGroup);
            v78 = sub_1000136BC(v75, v77, v166);

            *(v73 + 14) = v78;
            _os_log_impl(&_mh_execute_header, v56, v72, "Pairing is in progress for %{private,mask.hash}s, do NOT BT unpair.", v73, 0x16u);
            sub_100007BAC(v74);

LABEL_27:

            return;
          }

          goto LABEL_44;
        }

        v36 = v165;
        v50 = v143;
        goto LABEL_18;
      }
    }

    (*(v157 + 8))(v69, v160);
  }

LABEL_18:
  v79 = sub_10042C0FC();
  if (!*(v79 + 16) || (v80 = sub_1007723C0(v51), (v81 & 1) == 0))
  {

    v55 = v156;
    sub_10046A814(v36, v156, type metadata accessor for OwnedBeaconGroup);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v166[0] = v59;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      type metadata accessor for MACAddress();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      sub_10046B858(v55, type metadata accessor for OwnedBeaconGroup);
      v91 = sub_1000136BC(v88, v90, v166);

      *(v58 + 14) = v91;
      v64 = "No previous BT pairing event when unpairing %{private,mask.hash}s, do NOT BT unpair.";
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  v82 = *(*(v79 + 56) + v80);

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = 0xD000000000000011;
    v86 = swift_slowAlloc();
    v166[0] = swift_slowAlloc();
    *v86 = 136315394;
    *(v86 + 4) = sub_1000136BC(0xD000000000000016, 0x80000001013552B0, v166);
    *(v86 + 12) = 2082;
    v142 = v13;
    if (v82 > 1)
    {
      if (v82 == 2)
      {
        v87 = 0xEE00646572696170;
        v85 = 0x6E55794D646E6966;
      }

      else
      {
        v87 = 0xE600000000000000;
        v85 = 0x646572696170;
      }
    }

    else if (v82)
    {
      v87 = 0x8000000101347C10;
    }

    else
    {
      v87 = 0xE700000000000000;
      v85 = 0x6E776F6E6B6E75;
    }

    v92 = sub_1000136BC(v85, v87, v166);

    *(v86 + 14) = v92;
    _os_log_impl(&_mh_execute_header, v83, v84, "%s lastPairingEvent %{public}s", v86, 0x16u);
    swift_arrayDestroy();

    v36 = v165;
  }

  else
  {
  }

  if ((v82 - 1) >= 2)
  {
    v55 = v155;
    sub_10046A814(v36, v155, type metadata accessor for OwnedBeaconGroup);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v166[0] = v59;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      type metadata accessor for MACAddress();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      sub_10046B858(v55, type metadata accessor for OwnedBeaconGroup);
      v97 = sub_1000136BC(v94, v96, v166);

      *(v58 + 14) = v97;
      v64 = "We've already re-paired since last unpair %{private,mask.hash}s, do NOT BT unpair.";
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  sub_1000BC4D4(&qword_1016A04C8, &unk_1013DD710);
  v93 = unsafeFromAsyncTask<A>(_:)();
  v98 = v166[0];
  __chkstk_darwin(v93);
  *(&v142 - 2) = v36;
  v99 = v149;
  sub_1012BC1FC(sub_10046B3AC, v98, v149);

  v100 = v150;
  v101 = v152;
  v102 = (*(v150 + 48))(v99, 1, v152);
  if (v102 == 1)
  {
    sub_10000B3A8(v99, &qword_101699860, &qword_1013A34D0);
    v55 = v146;
    sub_10046A814(v36, v146, type metadata accessor for OwnedBeaconGroup);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v166[0] = v59;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      type metadata accessor for MACAddress();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      sub_10046B858(v55, type metadata accessor for OwnedBeaconGroup);
      v106 = sub_1000136BC(v103, v105, v166);

      *(v58 + 14) = v106;
      v64 = "No BT device for %{private,mask.hash}s!";
      goto LABEL_26;
    }

LABEL_43:

LABEL_44:
    sub_10046B858(v55, type metadata accessor for OwnedBeaconGroup);
    return;
  }

  v164 = 0;
  v143 = v50;
  v107 = v151;
  v163 = v100[4];
  v163(v151, v99, v101);
  v108 = v147;
  v165 = v100[2];
  (v165)(v147, v107, v101);
  v109 = v101;
  v110 = v100;
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = v100;
    v115 = swift_slowAlloc();
    v166[0] = v115;
    *v113 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v108;
    v119 = v118;
    v120 = v114[1];
    (v120)(v117, v109);
    v121 = sub_1000136BC(v116, v119, v166);

    *(v113 + 4) = v121;
    _os_log_impl(&_mh_execute_header, v111, v112, "BT unpairing %{public}s...", v113, 0xCu);
    sub_100007BAC(v115);

    v110 = v150;
  }

  else
  {

    v120 = v100[1];
    (v120)(v108, v109);
  }

  v122 = v148;
  v123 = v165;
  (v165)(v148, v151, v109);
  v124 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v125 = swift_allocObject();
  v126 = v152;
  v163((v125 + v124), v122, v152);
  v127 = v164;
  unsafeFromAsyncTask<A>(_:)();
  if (v127)
  {

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v154, qword_10177C418);
    v128 = v144;
    v126 = v152;
    (v123)(v144, v151, v152);
    swift_errorRetain();
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v165 = v120;
      v134 = v133;
      v166[0] = v133;
      *v131 = 136315394;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v135 = dispatch thunk of CustomStringConvertible.description.getter();
      v137 = v136;
      (v165)(v128, v126);
      v138 = sub_1000136BC(v135, v137, v166);

      *(v131 + 4) = v138;
      *(v131 + 12) = 2114;
      swift_errorRetain();
      v139 = _swift_stdlib_bridgeErrorToNSError();
      *(v131 + 14) = v139;
      *v132 = v139;
      _os_log_impl(&_mh_execute_header, v129, v130, "Failed to unpair %s due to %{public}@", v131, 0x16u);
      sub_10000B3A8(v132, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v134);
      v120 = v165;
    }

    else
    {

      (v120)(v128, v126);
    }
  }

  else
  {
  }

  My = type metadata accessor for Feature.FindMy();
  v166[3] = My;
  v166[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v141 = sub_1000280DC(v166);
  (*(*(My - 8) + 104))(v141, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v166);
  if (My)
  {
    static DarwinNotification.post(name:)();

    (v120)(v151, v126);
  }

  else
  {
    (v120)(v151, v126);
  }
}

uint64_t sub_100432384(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Device.btAddress.getter();
  type metadata accessor for OwnedBeaconGroup(0);
  v6 = static MACAddress.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_10043247C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Device();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100432544, 0, 0);
}

uint64_t sub_100432544()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v1, v0[3], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_10043268C;
  v7 = v0[2];

  return withTimeout<A>(_:block:)(v7, 0x40AAD21B3B700000, 3, &unk_1013A3760, v5, &type metadata for () + 1);
}

uint64_t sub_10043268C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004327D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004327D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100432840(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for Device();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100432900, 0, 0);
}

uint64_t sub_100432900()
{
  type metadata accessor for Controller();
  v0[6] = Controller.__allocating_init()();
  v4 = (&async function pointer to dispatch thunk of Controller.unpair(device:) + async function pointer to dispatch thunk of Controller.unpair(device:));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1004329C0;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1004329C0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100432D24;
  }

  else
  {
    v2 = sub_100432AD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100432AD4()
{
  v21 = v0;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AD08);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[5];
  v11 = v0[3];
  v10 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully unpaired %{public}s!", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100432D24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100432D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for Device();
  v4[17] = v7;
  v8 = *(v7 - 8);
  v4[18] = v8;
  v4[19] = *(v8 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v9 = type metadata accessor for DeviceChange();
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A06D8, &unk_1013A37C0);
  v4[26] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
  v4[27] = v10;
  v4[28] = *(v10 - 8);
  v4[29] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_1016B7C80, &unk_1013A37D0);
  v4[30] = v11;
  v4[31] = *(v11 - 8);
  v4[32] = swift_task_alloc();
  v12 = type metadata accessor for RSSIValue();
  v4[33] = v12;
  v4[34] = *(v12 - 8);
  v4[35] = swift_task_alloc();
  v13 = type metadata accessor for ScanRate();
  v4[36] = v13;
  v4[37] = *(v13 - 8);
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_100433144, 0, 0);
}

uint64_t sub_100433144()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  type metadata accessor for CBDiscovery();
  (*(v2 + 104))(v1, enum case for ScanRate.default(_:), v3);
  (*(v6 + 104))(v4, enum case for RSSIValue.unknown(_:), v5);
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_10043325C;
  v8 = v0[38];
  v9 = v0[35];

  return CBDiscovery.__allocating_init(scanRate:rssiThreshold:)(v8, v9);
}

uint64_t sub_10043325C(uint64_t a1)
{
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_10043335C, 0, 0);
}

uint64_t sub_10043335C()
{
  *(v0[10] + 136) = v0[40];

  v4 = (&async function pointer to dispatch thunk of CBDiscovery.subscribeToAttributesChanges() + async function pointer to dispatch thunk of CBDiscovery.subscribeToAttributesChanges());
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_100433424;
  v2 = v0[29];

  return v4(v2);
}

uint64_t sub_100433424()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100433D88;
  }

  else
  {
    v2 = sub_100433538;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100433538()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_100433618;
  v5 = v0[30];
  v6 = v0[26];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v6, 0, 0, v5, v0 + 8);
}

uint64_t sub_100433618()
{

  if (v0)
  {
    v1 = sub_100433FC8;
  }

  else
  {
    v1 = sub_100433728;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100433728()
{
  v44 = v0;
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_10046B7F0(v1, v0[25], &type metadata accessor for DeviceChange);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = (v0[18] + 32);
      v41 = *v42;
      (*v42)(v0[22], v0[25], v0[17]);
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v5 = v0[21];
      v4 = v0[22];
      v7 = v0[17];
      v6 = v0[18];
      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177AD08);
      v39 = *(v6 + 16);
      v39(v5, v4, v7);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[21];
      v14 = v0[17];
      v13 = v0[18];
      if (v11)
      {
        v15 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v43 = v37;
        *v15 = 136446210;
        sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        v40 = *(v13 + 8);
        v40(v12, v14);
        v19 = sub_1000136BC(v16, v18, &v43);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v9, v10, "Attributes changed: %{public}s", v15, 0xCu);
        sub_100007BAC(v37);
      }

      else
      {

        v40 = *(v13 + 8);
        v40(v12, v14);
      }

      v21 = v0[19];
      v20 = v0[20];
      v22 = v0[17];
      v23 = v0[18];
      v35 = v0[22];
      v36 = v0[15];
      v38 = v0[14];
      v32 = v0[16];
      v33 = v0[13];
      v24 = v0[11];
      v25 = v0[10];
      v34 = v0[12];
      (v39)(v20);
      v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v27 = swift_allocObject();
      v41(v27 + v26, v20, v22);
      *(v27 + ((v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
      v0[6] = sub_10046B95C;
      v0[7] = v27;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100006684;
      v0[5] = &unk_10161E0D0;
      v28 = _Block_copy(v0 + 2);

      static DispatchQoS.unspecified.getter();
      v0[9] = _swiftEmptyArrayStorage;
      sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);
      (*(v34 + 8))(v33, v24);
      (*(v36 + 8))(v32, v38);
      v40(v35, v22);
    }

    else
    {
      sub_10046B858(v0[25], &type metadata accessor for DeviceChange);
    }

    v29 = swift_task_alloc();
    v0[43] = v29;
    *v29 = v0;
    v29[1] = sub_100433618;
    v30 = v0[30];
    v31 = v0[26];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v31, 0, 0, v30, v0 + 8);
  }
}

uint64_t sub_100433D88()
{
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AD08);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error subscribing to device changes: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100433FC8()
{
  (*(v0[31] + 8))(v0[32], v0[30]);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AD08);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error subscribing to device changes: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

void sub_100434220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_1000076D4(v14, qword_10177AD08);
  v16 = *(v9 + 16);
  v53 = a1;
  v47 = v16;
  v48 = v9 + 16;
  v16(v13, a1, v8);
  v49 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v52 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v46 = a2;
    v21 = v20;
    v45 = swift_slowAlloc();
    v54 = v45;
    *v21 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v9;
    v24 = v5;
    v25 = v4;
    v27 = v26;
    v50 = *(v23 + 8);
    v50(v13, v8);
    v28 = sub_1000136BC(v22, v27, &v54);
    v4 = v25;
    v5 = v24;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "pairedDeviceNameChanged: %{public}s", v21, 0xCu);
    sub_100007BAC(v45);
  }

  else
  {

    v50 = *(v9 + 8);
    v50(v13, v8);
  }

  v29 = v53;
  v30 = Device.btAddress.getter();
  __chkstk_darwin(v30);
  *(&v44 - 2) = v7;
  *(&v44 - 1) = v31;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v32 = v54;
  v33 = *(v5 + 8);
  v33(v7, v4);
  if (v32)
  {
    sub_1004347D0(v32, v29);
  }

  else
  {
    v34 = v51;
    v47(v51, v29, v8);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      LODWORD(v53) = v36;
      v38 = v37;
      v49 = swift_slowAlloc();
      v54 = v49;
      *v38 = 136446210;
      Device.btAddress.getter();
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v34;
      v42 = v41;
      v33(v7, v4);
      v50(v40, v8);
      v43 = sub_1000136BC(v39, v42, &v54);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v53, "Unable to retrieve peripheral for %{public}s", v38, 0xCu);
      sub_100007BAC(v49);
    }

    else
    {

      v50(v34, v8);
    }
  }
}

void sub_1004347D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v222 = a2;
  v5 = type metadata accessor for Device();
  v219 = *(v5 - 8);
  v220 = v5;
  v6 = __chkstk_darwin(v5);
  v217 = &v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v210 = &v195 - v9;
  __chkstk_darwin(v8);
  v208 = &v195 - v10;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v11 - 8);
  v218 = &v195 - v12;
  v207 = type metadata accessor for DispatchTime();
  v206 = *(v207 - 8);
  v13 = __chkstk_darwin(v207);
  v203 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v204 = &v195 - v15;
  v216 = type metadata accessor for MACAddress();
  v213 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v195 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v17 - 8);
  v19 = &v195 - v18;
  v214 = type metadata accessor for OwnedBeaconGroup(0);
  v212 = *(v214 - 1);
  v20 = __chkstk_darwin(v214);
  v209 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v205 = &v195 - v23;
  v24 = __chkstk_darwin(v22);
  v201 = &v195 - v25;
  v26 = __chkstk_darwin(v24);
  v202 = &v195 - v27;
  __chkstk_darwin(v26);
  v211 = (&v195 - v28);
  v224 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v29 = *(v224 - 8);
  __chkstk_darwin(v224);
  v223 = &v195 - v30;
  v221 = type metadata accessor for UUID();
  v31 = *(v221 - 8);
  v32 = __chkstk_darwin(v221);
  v34 = &v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v225 = &v195 - v35;
  v36 = type metadata accessor for DispatchPredicate();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = (&v195 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v3 + 56);
  *v39 = v40;
  (*(v37 + 104))(v39, enum case for DispatchPredicate.onQueue(_:), v36);
  v41 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  v42 = (*(v37 + 8))(v39, v36);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  __chkstk_darwin(v42);
  *(&v195 - 2) = v3;
  *(&v195 - 1) = a1;
  QueueSynchronizer.conditionalSync<A>(_:)();
  if (v226[0])
  {
    if (qword_1016946F0 == -1)
    {
LABEL_4:
      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177AD08);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v44, v45))
      {
LABEL_18:

        return;
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Pairing in progress. Ignore name change.", v46, 2u);
LABEL_17:

      goto LABEL_18;
    }

LABEL_60:
    swift_once();
    goto LABEL_4;
  }

  v47 = v3;
  v48 = v222;
  v49 = v223;
  Device.id.getter();
  v50 = v224;
  Identifier.id.getter();
  v51 = *(v29 + 8);
  v200 = v29 + 8;
  v51(v49, v50);
  swift_beginAccess();
  v52 = v225;
  v53 = sub_100DE8BCC(v225, v34);
  v56 = *(v31 + 8);
  v54 = (v31 + 8);
  v55 = v56;
  v57 = v52;
  v58 = v221;
  v56(v57, v221);
  swift_endAccess();
  if (v53)
  {
    v217 = v54;
    v59 = Device.name.getter();
    if (!v60)
    {
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v94 = v51;
      v95 = type metadata accessor for Logger();
      sub_1000076D4(v95, qword_10177AD08);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();
      v98 = os_log_type_enabled(v96, v97);
      v99 = v218;
      if (v98)
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "Device name is not available!", v100, 2u);
      }

      v101 = v223;
      Device.id.getter();
      v103 = v224;
      v102 = v225;
      Identifier.id.getter();
      v94(v101, v103);
      swift_beginAccess();
      sub_1010F6584(v102, v99);
      v55(v102, v58);
      v104 = v99;
      goto LABEL_35;
    }

    v197 = v59;
    v198 = v51;
    v61 = v60;
    v199 = v47;
    v62 = v215;
    Device.btAddress.getter();
    sub_100AC5D4C(v62, v19);
    v63 = v213[1];
    v63(v62, v216);
    v64 = v214;
    if ((*(v212 + 48))(v19, 1, v214) == 1)
    {
      v214 = v55;

      sub_10000B3A8(v19, &unk_1016AF8B0, &unk_1013A0700);
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_1000076D4(v65, qword_10177AD08);
      v66 = v219;
      v67 = v220;
      v68 = v210;
      (v219)[2](v210, v48, v220);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      v71 = os_log_type_enabled(v69, v70);
      v72 = v198;
      if (v71)
      {
        v73 = swift_slowAlloc();
        v211 = v73;
        v213 = swift_slowAlloc();
        v226[0] = v213;
        *v73 = 136446210;
        v74 = v215;
        LODWORD(v212) = v70;
        Device.btAddress.getter();
        sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v75 = v216;
        v209 = dispatch thunk of CustomStringConvertible.description.getter();
        v76 = v72;
        v77 = v68;
        v79 = v78;
        v63(v74, v75);
        v80 = v77;
        v72 = v76;
        (v66[1])(v80, v67);
        v81 = sub_1000136BC(v209, v79, v226);

        v82 = v211;
        *(v211 + 1) = v81;
        _os_log_impl(&_mh_execute_header, v69, v212, "No beacon group for paired device: %{public}s", v82, 0xCu);
        sub_100007BAC(v213);
      }

      else
      {

        (v66[1])(v68, v67);
      }

      v124 = v218;
      v125 = v223;
      Device.id.getter();
      v127 = v224;
      v126 = v225;
      Identifier.id.getter();
      v72(v125, v127);
      swift_beginAccess();
      sub_1010F6584(v126, v124);
      (v214)(v126, v221);
      v104 = v124;
LABEL_35:
      sub_10000B3A8(v104, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();
      return;
    }

    v105 = v19;
    v106 = v211;
    sub_10046B7F0(v105, v211, type metadata accessor for OwnedBeaconGroup);
    v107 = v61;
    if (sub_100518118())
    {
      v108 = (v106 + *(v64 + 9));
      v109 = v199;
      v110 = v198;
      if (v197 == *v108 && v107 == v108[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v214 = v55;

        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        sub_1000076D4(v111, qword_10177AD08);
        v112 = v219;
        v113 = v220;
        v114 = v208;
        (v219)[2](v208, v48, v220);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v226[0] = v118;
          *v117 = 136446210;
          sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
          v119 = dispatch thunk of CustomStringConvertible.description.getter();
          v120 = v114;
          v122 = v121;
          (v112[1])(v120, v113);
          v123 = sub_1000136BC(v119, v122, v226);

          *(v117 + 4) = v123;
          _os_log_impl(&_mh_execute_header, v115, v116, "Name has not changed for %{public}s!", v117, 0xCu);
          sub_100007BAC(v118);
        }

        else
        {

          (v112[1])(v114, v113);
        }

        v146 = v223;
        Device.id.getter();
        v147 = v224;
        v148 = v225;
        Identifier.id.getter();
        v110(v146, v147);
        swift_beginAccess();
        v149 = v218;
        sub_1010F6584(v148, v218);
        (v214)(v148, v221);
        sub_10000B3A8(v149, &qword_1016980D0, &unk_10138F3B0);
        swift_endAccess();
        v145 = v106;
        goto LABEL_45;
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v150 = type metadata accessor for Logger();
      v151 = sub_1000076D4(v150, qword_10177AD08);
      v152 = v202;
      sub_10046A814(v106, v202, type metadata accessor for OwnedBeaconGroup);

      v220 = v151;
      v153 = v107;
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.default.getter();

      v156 = os_log_type_enabled(v154, v155);
      v196 = v153;
      if (v156)
      {
        v157 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v226[0] = v219;
        *v157 = 141558787;
        *(v157 + 4) = 1752392040;
        *(v157 + 12) = 2081;
        v158 = v153;
        sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v159 = dispatch thunk of CustomStringConvertible.description.getter();
        v161 = v160;
        sub_10046B858(v152, type metadata accessor for OwnedBeaconGroup);
        v162 = sub_1000136BC(v159, v161, v226);

        *(v157 + 14) = v162;
        *(v157 + 22) = 2160;
        *(v157 + 24) = 1752392040;
        *(v157 + 32) = 2081;
        v109 = v199;
        v163 = v197;
        *(v157 + 34) = sub_1000136BC(v197, v158, v226);
        _os_log_impl(&_mh_execute_header, v154, v155, "Updating %{private,mask.hash}s with new name %{private,mask.hash}s", v157, 0x2Au);
        swift_arrayDestroy();
        v106 = v211;

        v164 = v207;
        v165 = v206;
      }

      else
      {

        sub_10046B858(v152, type metadata accessor for OwnedBeaconGroup);
        v164 = v207;
        v165 = v206;
        v163 = v197;
      }

      v166 = dispatch_group_create();
      dispatch_group_enter(v166);
      v167 = type metadata accessor for Transaction();
      __chkstk_darwin(v167);
      *(&v195 - 6) = v109;
      *(&v195 - 5) = v106;
      *(&v195 - 4) = v163;
      v168 = v196;
      *(&v195 - 3) = v196;
      *(&v195 - 2) = v166;
      static Transaction.named<A>(_:with:)();
      v169 = v203;
      static DispatchTime.now()();
      v170 = v204;
      + infix(_:_:)();
      v171 = *(v165 + 8);
      v171(v169, v164);
      v219 = v166;
      OS_dispatch_group.wait(timeout:)();
      v171(v170, v164);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v172 = v201;
        sub_10046A814(v106, v201, type metadata accessor for OwnedBeaconGroup);

        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v226[0] = swift_slowAlloc();
          *v175 = 141558787;
          *(v175 + 4) = 1752392040;
          *(v175 + 12) = 2081;
          sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v176 = dispatch thunk of CustomStringConvertible.description.getter();
          v178 = v177;
          sub_10046B858(v172, type metadata accessor for OwnedBeaconGroup);
          v179 = sub_1000136BC(v176, v178, v226);
          v106 = v211;

          *(v175 + 14) = v179;
          *(v175 + 22) = 2160;
          *(v175 + 24) = 1752392040;
          *(v175 + 32) = 2081;
          *(v175 + 34) = sub_1000136BC(v197, v168, v226);
          _os_log_impl(&_mh_execute_header, v173, v174, "Timed out updating %{private,mask.hash}s with new name %{private,mask.hash}s", v175, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          sub_10046B858(v172, type metadata accessor for OwnedBeaconGroup);
        }
      }

      v180 = v205;
      sub_10046A814(v106, v205, type metadata accessor for OwnedBeaconGroup);

      v181 = Logger.logObject.getter();
      v182 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v226[0] = swift_slowAlloc();
        *v183 = 141558787;
        *(v183 + 4) = 1752392040;
        *(v183 + 12) = 2081;
        sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v184 = v180;
        v185 = v221;
        v186 = dispatch thunk of CustomStringConvertible.description.getter();
        v188 = v187;
        sub_10046B858(v184, type metadata accessor for OwnedBeaconGroup);
        v189 = sub_1000136BC(v186, v188, v226);

        *(v183 + 14) = v189;
        *(v183 + 22) = 2160;
        *(v183 + 24) = 1752392040;
        *(v183 + 32) = 2081;
        v190 = sub_1000136BC(v197, v168, v226);

        *(v183 + 34) = v190;
        _os_log_impl(&_mh_execute_header, v181, v182, "Finished updating %{private,mask.hash}s with new name %{private,mask.hash}s", v183, 0x2Au);
        swift_arrayDestroy();

        v191 = v218;
      }

      else
      {

        sub_10046B858(v180, type metadata accessor for OwnedBeaconGroup);
        v191 = v218;
        v185 = v221;
      }

      v192 = v223;
      Device.id.getter();
      v194 = v224;
      v193 = v225;
      Identifier.id.getter();
      v198(v192, v194);
      swift_beginAccess();
      sub_1010F6584(v193, v191);
      v55(v193, v185);
      sub_10000B3A8(v191, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();
    }

    else
    {

      v128 = v198;
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v129 = type metadata accessor for Logger();
      sub_1000076D4(v129, qword_10177AD08);
      v130 = v209;
      sub_10046A814(v106, v209, type metadata accessor for OwnedBeaconGroup);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v226[0] = v134;
        *v133 = 141558275;
        *(v133 + 4) = 1752392040;
        *(v133 + 12) = 2081;
        sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v135 = v221;
        v136 = dispatch thunk of CustomStringConvertible.description.getter();
        v137 = v130;
        v139 = v138;
        sub_10046B858(v137, type metadata accessor for OwnedBeaconGroup);
        v140 = sub_1000136BC(v136, v139, v226);

        *(v133 + 14) = v140;
        _os_log_impl(&_mh_execute_header, v131, v132, "Ignore name change while beacon group pending pairing: %{private,mask.hash}s.", v133, 0x16u);
        sub_100007BAC(v134);
      }

      else
      {

        sub_10046B858(v130, type metadata accessor for OwnedBeaconGroup);
        v135 = v221;
      }

      v141 = v223;
      Device.id.getter();
      v143 = v224;
      v142 = v225;
      Identifier.id.getter();
      v128(v141, v143);
      swift_beginAccess();
      v144 = v218;
      sub_1010F6584(v142, v218);
      v55(v142, v135);
      sub_10000B3A8(v144, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();
    }

    v145 = v211;
LABEL_45:
    sub_10046B858(v145, type metadata accessor for OwnedBeaconGroup);
    return;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for Logger();
  sub_1000076D4(v83, qword_10177AD08);
  v85 = v219;
  v84 = v220;
  v86 = v217;
  (v219)[2](v217, v48, v220);
  v44 = Logger.logObject.getter();
  v87 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v226[0] = v89;
    *v88 = 136446210;
    sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = v91;
    (v85[1])(v86, v84);
    v93 = sub_1000136BC(v90, v92, v226);

    *(v88 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v44, v87, "Already handling name change event for this %{public}s.", v88, 0xCu);
    sub_100007BAC(v89);

    goto LABEL_17;
  }

  (v85[1])(v86, v84);
}

void sub_1004363C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v36 = a6;
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a2 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v42 = v15;
  v37 = a3;
  sub_10046A814(a3, v14, type metadata accessor for OwnedBeaconGroup);
  v16 = *(v12 + 80);
  v17 = (v16 + 48) & ~v16;
  v38 = v13;
  v39 = v13 + 7;
  v18 = swift_allocObject();
  *(v18 + 2) = a1;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  *(v18 + 5) = a2;
  sub_10046B7F0(v14, v18 + v17, type metadata accessor for OwnedBeaconGroup);
  v19 = v36;
  *(v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;
  swift_bridgeObjectRetain_n();

  v20 = v19;
  v21 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = 0x65736C6166;
  *(v23 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Modify record. Disk First? (%@)", 31, 2, v23);

  v24 = objc_autoreleasePoolPush();
  v25 = v37;
  v26 = v40;
  sub_1011218E0(v37);
  v40 = v27;
  if (v26)
  {
    objc_autoreleasePoolPop(v24);
    __break(1u);
  }

  else
  {
    v35 = ~v16;
    objc_autoreleasePoolPop(v24);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v36 = 0;
    sub_10046A814(v25, v14, type metadata accessor for OwnedBeaconGroup);
    v28 = swift_allocObject();
    v29 = v42;
    *(v28 + 16) = sub_10046B300;
    *(v28 + 24) = v29;
    v38 = type metadata accessor for OwnedBeaconGroup;
    sub_10046B7F0(v14, v28 + ((v16 + 32) & ~v16), type metadata accessor for OwnedBeaconGroup);

    sub_100FDCA40(v40, sub_1001DA038, v28);

    v30 = swift_allocObject();
    *(v30 + 16) = sub_10046B308;
    *(v30 + 24) = v18;

    Future.addFailure(block:)();

    sub_10046A814(v25, v14, type metadata accessor for OwnedBeaconGroup);
    v31 = (v16 + 16) & v35;
    v32 = &v39[v31] & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    sub_10046B7F0(v14, v33 + v31, v38);
    *(v33 + v32) = v41;
    v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v34 = sub_10046B308;
    v34[1] = v18;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1004368C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for OwnedBeaconGroup(0) + 36));

  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_10043691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v44 = a5;
  v45 = a7;
  v41 = a3;
  v42 = a4;
  v43 = type metadata accessor for OwnedBeaconGroup(0);
  v9 = __chkstk_darwin(v43);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v41 - v13;
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  Transaction.capture()();
  sub_1000D2A70(a1, v19, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10046B7F0(v19, v16, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177AD08);
    sub_10046A814(v16, v14, type metadata accessor for OwnedBeaconGroup);
    v32 = v42;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v35 = 141558787;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_10046B858(v14, type metadata accessor for OwnedBeaconGroup);
      v39 = sub_1000136BC(v36, v38, &v46);

      *(v35 + 14) = v39;
      *(v35 + 22) = 2160;
      *(v35 + 24) = 1752392040;
      *(v35 + 32) = 2081;
      *(v35 + 34) = sub_1000136BC(v41, v32, &v46);
      _os_log_impl(&_mh_execute_header, v33, v34, "Successfully updated %{private,mask.hash}s\nwith new name %{private,mask.hash}s", v35, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_10046B858(v14, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100A8306C(0xDu);
    v40 = v16;
    goto LABEL_13;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177AD08);
  sub_10046A814(a6, v11, type metadata accessor for OwnedBeaconGroup);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v21, v22))
  {

    v40 = v11;
LABEL_13:
    sub_10046B858(v40, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_14;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v46 = v25;
  *v23 = 141558531;
  *(v23 + 4) = 1752392040;
  *(v23 + 12) = 2081;
  type metadata accessor for UUID();
  sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v27;
  sub_10046B858(v11, type metadata accessor for OwnedBeaconGroup);
  v29 = sub_1000136BC(v26, v28, &v46);

  *(v23 + 14) = v29;
  *(v23 + 22) = 2114;
  swift_errorRetain();
  v30 = _swift_stdlib_bridgeErrorToNSError();
  *(v23 + 24) = v30;
  *v24 = v30;
  _os_log_impl(&_mh_execute_header, v21, v22, "Failed to save new name for %{private,mask.hash}s. Error %{public}@)", v23, 0x20u);
  sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

  sub_100007BAC(v25);

LABEL_14:
  dispatch_group_leave(v45);
}

uint64_t sub_100436F60(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v2[6];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v19 = *(v12 + 8);
  v18 = (v12 + 8);
  v19(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_11;
  }

  v14 = *&a1[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  v20 = [v14 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v21 = v2[24];
  if (*(v21 + 16))
  {

    v22 = sub_1000210EC(v10);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      v25 = *(v5 + 8);

      v25(v10, v4);

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000076D4(v26, qword_10177AD08);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v58[0] = v30;
        *v29 = 136315138;

        v31 = sub_100E22F58();
        v33 = v32;

        v34 = sub_1000136BC(v31, v33, v58);

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "Found existing pairing manager %s", v29, 0xCu);
        sub_100007BAC(v30);
      }

      return v24;
    }
  }

  v56 = v4;
  v57 = v8;
  (*(v5 + 8))(v10, v4);
  v17 = v2[2];
  v35 = swift_allocObject();
  v35[2] = v2;
  v35[3] = a1;
  v35[4] = v17;

  v18 = a1;

  unsafeFromAsyncTask<A>(_:)();

  LODWORD(a1) = LOBYTE(v58[0]);
  v5 = "Core BT peripheral:";
  if (qword_1016946F0 != -1)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = type metadata accessor for Logger();
  sub_1000076D4(v36, qword_10177AD08);
  sub_100A245E8(0xD000000000000032, v5 | 0x8000000000000000);
  v37 = v2[3];
  v38 = v2[5];
  type metadata accessor for AirPodsPairingManager();
  swift_allocObject();
  v39 = v18;

  v40 = sub_100E23114(v17, v37, v39, v38, a1);
  if (v40)
  {
    v24 = v40;
    v41 = [v14 identifier];
    v42 = v57;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v43 = swift_retain_n();
    sub_1001DE870(v43, v42);
    swift_endAccess();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v58[0] = v47;
      *v46 = 136315138;
      sub_100019D54(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      v48 = Dictionary.description.getter();
      v50 = v49;

      v51 = sub_1000136BC(v48, v50, v58);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "pairingManagers: %s", v46, 0xCu);
      sub_100007BAC(v47);
    }
  }

  else
  {
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Unable to create a new AirPodsPairingManager!", v54, 2u);
    }

    return 0;
  }

  return v24;
}

void *sub_100437674()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 48);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v1 + 104);
  if (v5)
  {
    v8 = qword_1016946F0;

    if (v8 == -1)
    {
LABEL_4:
      v9 = type metadata accessor for Logger();
      sub_1000076D4(v9, qword_10177AD08);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Found existing PrivacyAlertSupport.", v12, 2u);
      }

      return v5;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177AD08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Creating new PrivacyAlertSupport.", v16, 2u);
  }

  type metadata accessor for PrivacyAlertSupport();
  swift_allocObject();

  v5 = sub_100ED4D08(v17);
  *(v1 + 104) = v5;

  return v5;
}

uint64_t sub_100437944()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AD08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "classicPairingInitialSetup", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_10025EDD4(0, 0, v4, &unk_1013A3738, v10);
}

uint64_t sub_100437B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100437B9C();
}

uint64_t sub_100437B9C()
{
  v1[2] = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_100437C68;

  return daemon.getter();
}

uint64_t sub_100437C68(uint64_t a1)
{
  *(*v1 + 40) = a1;

  type metadata accessor for Daemon();
  sub_100019D54(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100437DC0, v3, v2);
}

uint64_t sub_100437DC0()
{
  *(v0 + 48) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100437E34, 0, 0);
}

uint64_t sub_100437E34()
{
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  swift_weakInit();
  v4 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100437F48;

  return v4(0xD000000000000025, 0x80000001013551A0, &unk_1013A3710, v1);
}

uint64_t sub_100437F48(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_10043806C, 0, 0);
}

uint64_t sub_10043806C()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013A3720, v4);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10043819C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_1004381BC, 0, 0);
}

uint64_t sub_1004381BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = DarwinNotification.value.getter();
    type metadata accessor for Transaction();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    static Transaction.named<A>(_:with:)();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004382C4(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_1000BC4D4(&qword_1016A0640, &qword_1013A36E0);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_1000BC4D4(&qword_1016A0648, &qword_1013A36E8);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v39 = &v34 - v11;
  v12 = sub_1000BC4D4(&qword_1016A0650, &qword_1013A36F0);
  v43 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = &v34 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 48);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v35 = v12;
  v36 = a1;
  sub_1000BC4D4(&qword_1016A05E8, &qword_1013A36C0);
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  *(v2 + 144) = v21;

  v44 = v21;
  sub_1000041A4(&qword_1016A05F0, &qword_1016A05E8, &qword_1013A36C0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v44 = Publisher.eraseToAnyPublisher()();
  v34 = v2;
  if (qword_1016946F8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v22 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v22, qword_1016A00B8);
  v45 = v19;
  v23 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_1000BC4D4(&qword_1016A05F8, &qword_1013A36C8);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A0600, &qword_1016A05F8, &qword_1013A36C8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1004682F0();
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v6, &unk_1016B0FE0, &unk_101391980);

  sub_1000BC4D4(&qword_1016A0610, &qword_1013A36D0);
  sub_1000041A4(&qword_1016A0658, &qword_1016A0640, &qword_1013A36E0, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v24 = v38;
  v25 = v39;
  Publisher.map<A>(_:)();
  (*(v37 + 8))(v9, v24);
  sub_1000BC4D4(&qword_1016A0620, &qword_1013A36D8);
  sub_1000041A4(&qword_1016A0660, &qword_1016A0648, &qword_1013A36E8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A0630, &qword_1016A0620, &qword_1013A36D8, &protocol conformance descriptor for Just<A>);
  v26 = v41;
  v27 = v42;
  Publisher.catch<A>(_:)();
  (*(v40 + 8))(v25, v26);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v30 = v36;
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  sub_1000041A4(&qword_1016A0668, &qword_1016A0650, &qword_1013A36F0, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v31 = v30;
  v32 = v35;
  Publisher<>.sink(receiveValue:)();

  (*(v43 + 8))(v27, v32);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_100438A24(uint64_t *a1, uint64_t a2, char *a3)
{
  v5 = sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v57 - v6);
  v8 = type metadata accessor for Device();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v19)
    {
      if (v18)
      {
        type metadata accessor for Transaction();
        v21 = swift_allocObject();
        swift_weakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = a3;
        v23 = a3;

        static Transaction.asyncTask(name:block:)();

LABEL_18:

        return;
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_1000076D4(v47, qword_10177AD08);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        sub_100468184();
        swift_allocError();
        *v52 = 0;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&_mh_execute_header, v48, v49, "subscribeToPairingEvents failure: %@", v50, 0xCu);
        sub_10000B3A8(v51, &qword_10169BB30, &unk_10138B3C0);
      }
    }

    else
    {
      v61 = Strong;
      v24 = [*(v18 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = *&a3[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
      v25 = [v58 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = static UUID.== infix(_:_:)();
      v27 = *(v12 + 8);
      v27(v15, v11);
      v59 = v27;
      v60 = v12 + 8;
      v27(v17, v11);
      v64 = 0;
      v65 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);

      v64 = 0xD000000000000019;
      v65 = 0x80000001013550E0;
      if (v26)
      {
        v28 = 1702195828;
      }

      else
      {
        v28 = 0x65736C6166;
      }

      if (v26)
      {
        v29 = 0xE400000000000000;
      }

      else
      {
        v29 = 0xE500000000000000;
      }

      v30 = v29;
      String.append(_:)(*&v28);

      v31._object = 0x8000000101355170;
      v31._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v31);
      v32 = v64;
      v33 = v65;
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000076D4(v34, qword_10177AD08);
      sub_100A245E8(v32, v33);

      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      sub_100447E44(a3, v7);
      v35 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
      if ((*(*(v35 - 8) + 48))(v7, 1, v35) == 1)
      {
        sub_10000B3A8(v7, &qword_1016A04D0, &qword_1013A34A8);
        v36 = a3;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v63 = v36;
          v40 = v39;
          v41 = swift_slowAlloc();
          v64 = v41;
          *v40 = 136446210;
          v42 = [v58 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v44;
          v59(v17, v11);
          v46 = sub_1000136BC(v43, v45, &v64);

          *(v40 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v37, v38, "Unable to sanitize MAC address for peripheral %{public}s", v40, 0xCu);
          sub_100007BAC(v41);
        }

        sub_100A245E8(0, 0xE000000000000000);
        goto LABEL_18;
      }

      v54 = *v7;
      v56 = v62;
      v55 = v63;
      (*(v62 + 32))(v10, v7 + *(v35 + 48), v63);
      sub_1004490E8(v54, v10, 0, 0, _swiftEmptyArrayStorage);

      (*(v56 + 8))(v10, v55);
    }
  }
}

uint64_t sub_1004391DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_1004391FC, 0, 0);
}

uint64_t sub_1004391FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1004392EC;
    v3 = v0[6];

    return sub_10044DEFC(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1004392EC(char a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1004393EC, 0, 0);
}

uint64_t sub_1004393EC()
{
  if (*(v0 + 72))
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    type metadata accessor for Transaction();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177AD08);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Got connection event but timed out waiting for pairing event.", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10043958C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 48);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  aBlock[4] = sub_10046B028;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161DE00;
  v13 = _Block_copy(aBlock);

  v14 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_100439880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 48);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a3;
  v12[4] = a2;
  aBlock[4] = sub_10046B1C4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161DE78;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

void sub_100439B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v190 = a3;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v4 - 8);
  v180 = &v171 - v5;
  v179 = type metadata accessor for OwnedBeaconGroup(0);
  v178 = *(v179 - 8);
  v6 = __chkstk_darwin(v179);
  v175 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v171 - v8;
  v10 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v10 - 8);
  v183 = &v171 - v11;
  v12 = type metadata accessor for BluetoothPairingState.Reason();
  v185 = *(v12 - 8);
  v186 = v12;
  __chkstk_darwin(v12);
  v188 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MACAddress();
  v194 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v182 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v189 = &v171 - v18;
  __chkstk_darwin(v17);
  v187 = (&v171 - v19);
  v20 = sub_1000BC4D4(&qword_1016A0670, &qword_1013A3728);
  __chkstk_darwin(v20 - 8);
  v191 = (&v171 - v21);
  v22 = type metadata accessor for BluetoothPairingState();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v177 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v174 = &v171 - v27;
  v28 = __chkstk_darwin(v26);
  v181 = &v171 - v29;
  v30 = __chkstk_darwin(v28);
  v192 = &v171 - v31;
  __chkstk_darwin(v30);
  v33 = &v171 - v32;
  Transaction.capture()();
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_1000076D4(v34, qword_10177AD08);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  v38 = os_log_type_enabled(v36, v37);
  v193 = v14;
  v176 = v9;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v184 = v33;
    v173 = v22;
    v172 = v40;
    v196[0] = v40;
    *v39 = 134218242;
    *(v39 + 4) = a2;
    *(v39 + 12) = 2080;
    v195 = a2;
    sub_100235658();
    v41 = FixedWidthInteger.data.getter();
    v42 = v35;
    v44 = v43;
    v45 = v23;
    v46 = Data.hexString.getter();
    v48 = v47;
    v49 = v44;
    v35 = v42;
    sub_100016590(v41, v49);
    v50 = v46;
    v23 = v45;
    v51 = sub_1000136BC(v50, v48, v196);

    *(v39 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v36, v37, "handlePairingNotification. State %llu. Raw %s", v39, 0x16u);
    sub_100007BAC(v172);
    v22 = v173;
    v33 = v184;
  }

  v52 = v191;
  BluetoothPairingState.init(rawValue:)();
  v53 = (*(v23 + 6))(v52, 1, v22);
  v54 = v192;
  if (v53 != 1)
  {
    (*(v23 + 4))(v33, v52, v22);
    v191 = *(v23 + 2);
    (v191)(v54, v33, v22);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    v60 = os_log_type_enabled(v58, v59);
    v171 = v35;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = v22;
      v63 = swift_slowAlloc();
      v196[0] = v63;
      *v61 = 136446210;
      sub_100019D54(&qword_1016A0678, &type metadata accessor for BluetoothPairingState, &protocol conformance descriptor for BluetoothPairingState);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v54;
      v67 = v66;
      v192 = *(v23 + 1);
      (v192)(v65, v62);
      v68 = sub_1000136BC(v64, v67, v196);

      *(v61 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v58, v59, "BluetoothPairingState %{public}s", v61, 0xCu);
      sub_100007BAC(v63);
      v22 = v62;
    }

    else
    {

      v192 = *(v23 + 1);
      (v192)(v54, v22);
    }

    v69 = v194;
    v70 = v187;
    BluetoothPairingState.macAddress.getter();
    v71 = v188;
    BluetoothPairingState.reason.getter();
    v73 = v185;
    v72 = v186;
    v74 = (*(v185 + 88))(v71, v186);
    if (v74 == enum case for BluetoothPairingState.Reason.unknown(_:))
    {
      goto LABEL_13;
    }

    if (v74 == enum case for BluetoothPairingState.Reason.paired(_:))
    {
      v75 = 3;
      goto LABEL_18;
    }

    if (v74 == enum case for BluetoothPairingState.Reason.unpaired(_:))
    {
      v75 = 1;
      goto LABEL_18;
    }

    if (v74 != enum case for BluetoothPairingState.Reason.unpairedUserSwitch(_:))
    {
      v75 = 1;
      if (v74 == enum case for BluetoothPairingState.Reason.unpairedCloud(_:) || v74 == enum case for BluetoothPairingState.Reason.unpairMagnet(_:))
      {
LABEL_18:
        v76 = sub_10042C0FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196[0] = v76;
        sub_100FFCE84(v75, v70, isUniquelyReferenced_nonNull_native);
        v80 = *(v69 + 1);
        v78 = v69 + 8;
        v79 = v80;
        v81 = v193;
        (v80)(v70, v193);
        sub_10042C564(v196[0]);
        if (BluetoothPairingState.isUnpaired.getter())
        {
          v188 = v23;
          v82 = v79;
          v83 = v189;
          v84 = BluetoothPairingState.macAddress.getter();
          __chkstk_darwin(v84);
          *(&v171 - 2) = v83;
          *(&v171 - 1) = v85;
          sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
          v194 = v78;
          Lock.callAsFunction<A>(_:)();
          v86 = v193;
          v87 = v196[0];
          (v82)(v83, v193);
          if (v87)
          {
            sub_100A245E8(0xD000000000000013, 0x8000000101355220);
            BluetoothPairingState.macAddress.getter();
            sub_10043B150(v87, v83);

            (v82)(v83, v86);
LABEL_26:
            v104 = v33;
LABEL_27:
            (v192)(v104, v22);
            return;
          }

          v187 = v82;
          v105 = v181;
          v184 = v33;
          (v191)(v181, v33, v22);
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            v196[0] = v191;
            *v108 = 136315138;
            v109 = v189;
            BluetoothPairingState.macAddress.getter();
            sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
            v110 = dispatch thunk of CustomStringConvertible.description.getter();
            v111 = v22;
            v113 = v112;
            v114 = v187;
            (v187)(v109, v193);
            v115 = v105;
            v116 = v192;
            (v192)(v115, v111);
            v117 = sub_1000136BC(v110, v113, v196);
            v22 = v111;

            *(v108 + 4) = v117;
            _os_log_impl(&_mh_execute_header, v106, v107, "Unable to retrieve peripheral from %s", v108, 0xCu);
            sub_100007BAC(v191);
            v86 = v193;
          }

          else
          {

            v132 = v105;
            v116 = v192;
            (v192)(v132, v22);
            v109 = v189;
            v114 = v187;
          }

          v133 = v184;
          BluetoothPairingState.macAddress.getter();
          swift_beginAccess();
          v134 = v183;
          sub_1010F701C(v109, v183);
          (v114)(v109, v86);
          v135 = v134;
        }

        else
        {
          if ((BluetoothPairingState.isPaired.getter() & 1) == 0)
          {
            goto LABEL_26;
          }

          v194 = v23 + 16;
          v88 = v81;
          v89 = v182;
          BluetoothPairingState.macAddress.getter();
          swift_beginAccess();
          v90 = v189;
          v91 = sub_100DED164(v189, v89);
          v92 = v79;
          LOBYTE(v89) = v91;
          v93 = v88;
          v94 = v88;
          v95 = v92;
          (v92)(v90, v94);
          swift_endAccess();
          if ((v89 & 1) == 0)
          {
            v187 = v95;
            v118 = v177;
            (v191)(v177, v33, v22);
            v119 = Logger.logObject.getter();
            v120 = v33;
            v121 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v119, v121))
            {
              v122 = swift_slowAlloc();
              v194 = v78;
              v123 = v122;
              v124 = swift_slowAlloc();
              v125 = v193;
              v184 = v120;
              v191 = v124;
              v196[0] = v124;
              *v123 = 136315138;
              v126 = v189;
              BluetoothPairingState.macAddress.getter();
              sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
              v127 = dispatch thunk of CustomStringConvertible.description.getter();
              v129 = v128;
              (v187)(v126, v125);
              v130 = v192;
              (v192)(v118, v22);
              v131 = sub_1000136BC(v127, v129, v196);

              *(v123 + 4) = v131;
              _os_log_impl(&_mh_execute_header, v119, v121, "Already handling pairing event for this MAC %s.", v123, 0xCu);
              sub_100007BAC(v191);

              v130(v184, v22);
            }

            else
            {

              v148 = v192;
              (v192)(v118, v22);
              v148(v120, v22);
            }

            return;
          }

          v188 = v23;
          BluetoothPairingState.macAddress.getter();
          v96 = v180;
          sub_100AC5D4C(v90, v180);
          v97 = v96;
          (v95)(v90, v93);
          v98 = (*(v178 + 48))(v96, 1, v179);
          v99 = v78;
          if (v98 != 1)
          {
            v187 = v95;
            v194 = v78;
            v184 = v33;
            v136 = v176;
            sub_10046B7F0(v97, v176, type metadata accessor for OwnedBeaconGroup);
            v137 = v175;
            sub_10046A814(v136, v175, type metadata accessor for OwnedBeaconGroup);
            v138 = Logger.logObject.getter();
            v139 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = v137;
              v141 = swift_slowAlloc();
              v142 = v22;
              v143 = swift_slowAlloc();
              v196[0] = v143;
              *v141 = 136315138;
              v144 = sub_10051F7B0();
              v146 = v145;
              sub_10046B858(v140, type metadata accessor for OwnedBeaconGroup);
              v147 = sub_1000136BC(v144, v146, v196);

              *(v141 + 4) = v147;
              _os_log_impl(&_mh_execute_header, v138, v139, "Received pairing event for existing %s", v141, 0xCu);
              sub_100007BAC(v143);
              v22 = v142;
            }

            else
            {

              sub_10046B858(v137, type metadata accessor for OwnedBeaconGroup);
            }

            ThrottledDarwinPoster.post(bypassRateLimit:)(1);
            v149 = v184;
            if (v150)
            {
            }

            v151 = v189;
            BluetoothPairingState.macAddress.getter();
            swift_beginAccess();
            v152 = v183;
            sub_1010F701C(v151, v183);
            (v187)(v151, v193);
            sub_10000B3A8(v152, &qword_1016A40D0, &unk_10138BE70);
            swift_endAccess();
            sub_10046B858(v136, type metadata accessor for OwnedBeaconGroup);
            v104 = v149;
            goto LABEL_27;
          }

          sub_10000B3A8(v97, &unk_1016AF8B0, &unk_1013A0700);
          v100 = BluetoothPairingState.macAddress.getter();
          v187 = &v171;
          __chkstk_darwin(v100);
          *(&v171 - 2) = v90;
          *(&v171 - 1) = v101;
          sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
          Lock.callAsFunction<A>(_:)();
          v102 = v193;
          v103 = v196[0];
          (v95)(v90, v193);
          if (v103)
          {
            sub_100A245E8(0xD000000000000013, 0x8000000101355220);
            v196[0] = v103;

            PassthroughSubject.send(_:)();

            LOBYTE(v196[0]) = 2;

            PassthroughSubject.send(completion:)();

            sub_10043CD48(v103);

            goto LABEL_26;
          }

          v153 = v99;
          v187 = v95;
          v154 = v174;
          v184 = v33;
          (v191)(v174, v33, v22);
          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v155, v156))
          {
            v157 = swift_slowAlloc();
            v194 = v153;
            v158 = v157;
            v159 = swift_slowAlloc();
            v196[0] = v159;
            *v158 = 136315138;
            v160 = v189;
            LODWORD(v191) = v156;
            BluetoothPairingState.macAddress.getter();
            sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
            v161 = dispatch thunk of CustomStringConvertible.description.getter();
            v162 = v22;
            v164 = v163;
            v165 = v187;
            (v187)(v160, v193);
            v166 = v154;
            v116 = v192;
            (v192)(v166, v162);
            v167 = sub_1000136BC(v161, v164, v196);
            v22 = v162;

            *(v158 + 4) = v167;
            _os_log_impl(&_mh_execute_header, v155, v191, "Unable to retrieve peripheral from %s", v158, 0xCu);
            sub_100007BAC(v159);
            v168 = v193;
          }

          else
          {

            v169 = v154;
            v116 = v192;
            (v192)(v169, v22);
            v160 = v189;
            v165 = v187;
            v168 = v102;
          }

          v133 = v184;
          BluetoothPairingState.macAddress.getter();
          swift_beginAccess();
          v170 = v183;
          sub_1010F701C(v160, v183);
          (v165)(v160, v168);
          v135 = v170;
        }

        sub_10000B3A8(v135, &qword_1016A40D0, &unk_10138BE70);
        swift_endAccess();
        v116(v133, v22);
        return;
      }

      (*(v73 + 8))(v188, v72);
    }

LABEL_13:
    v75 = 0;
    goto LABEL_18;
  }

  sub_10000B3A8(v52, &qword_1016A0670, &qword_1013A3728);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Invalid bluetooth pairing state.", v57, 2u);
  }
}

void sub_10043B150(char *a1, void *a2)
{
  v3 = v2;
  v105 = a2;
  v102 = a1;
  v98 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v98);
  v101 = &v85 - v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v94 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for DispatchQoS();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v100 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v99 = &v85 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v85 - v15;
  v91 = v17;
  __chkstk_darwin(v14);
  v19 = &v85 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v3 + 48);
  *v23 = v24;
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_4:
    v100 = v19;
    v28 = type metadata accessor for Logger();
    v29 = sub_1000076D4(v28, qword_10177AD08);
    v30 = v99;
    v104(v99, v25, v8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v88 = v8;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v87 = v29;
      v35 = v34;
      v86 = swift_slowAlloc();
      aBlock[0] = v86;
      *v35 = 136446210;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (v9)(v30, v8);
      v39 = sub_1000136BC(v36, v38, aBlock);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "Received unpair event for address %{public}s.", v35, 0xCu);
      sub_100007BAC(v86);
    }

    else
    {

      (v9)(v30, v8);
    }

    v51 = sub_100436F60(v102);
    v52 = v103;
    if (v51)
    {
      v53 = v51;
      QueueSynchronizer.conditionalSync<A>(_:)();
      if (aBlock[0])
      {
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Pairing is in progress. Deferring unpair!", v56, 2u);
        }

        swift_beginAccess();
        v57 = v101;
        sub_1010F701C(v105, v101);
        sub_10000B3A8(v57, &qword_1016A40D0, &unk_10138BE70);
        swift_endAccess();
      }

      else
      {
        v62 = dispatch_group_create();
        dispatch_group_enter(v62);
        v63 = v105;
        v87 = 0;
        v104(v100, v105, v88);
        v64 = *(v52 + 80);
        v65 = v52;
        v99 = v53;
        v66 = ((v64 + 16) & ~v64);
        v86 = v66;
        v67 = &v66[v91 + 7] & 0xFFFFFFFFFFFFFFF8;
        v68 = swift_allocObject();
        v69 = *(v65 + 32);
        v103 = v65 + 32;
        v70 = &v66[v68];
        v71 = v100;
        v72 = v88;
        v69(v70, v100, v88);
        *(v68 + v67) = v62;
        v91 = v62;
        sub_100E25204(v63, sub_10046AE8C, v68);

        v104(v71, v63, v72);
        v73 = swift_allocObject();
        v69(&v86[v73], v71, v72);
        *(v73 + v67) = v90;
        v74 = v102;
        *(v73 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v102;
        aBlock[4] = sub_10046AEB8;
        aBlock[5] = v73;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_10161DD60;
        v75 = _Block_copy(aBlock);

        v76 = v74;
        v77 = v92;
        static DispatchQoS.unspecified.getter();
        v106 = _swiftEmptyArrayStorage;
        sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v78 = v94;
        v79 = v97;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v80 = v91;
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v75);
        (*(v96 + 8))(v78, v79);
        (*(v93 + 8))(v77, v95);

        v81 = sub_100437674();
        v82 = __chkstk_darwin(v81);
        v83 = v105;
        *(&v85 - 2) = v82;
        *(&v85 - 1) = v83;
        v84 = v101;
        OS_dispatch_queue.sync<A>(execute:)();

        sub_10000B3A8(v84, &qword_1016A40D0, &unk_10138BE70);
      }
    }

    else
    {
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Unable to create a new pairing manager to handle unpair!", v60, 2u);
      }

      swift_beginAccess();
      v61 = v101;
      sub_1010F701C(v105, v101);
      sub_10000B3A8(v61, &qword_1016A40D0, &unk_10138BE70);
      swift_endAccess();
    }

    return;
  }

  v89 = v25;
  v25 = v105;
  v104 = *(v9 + 16);
  v104(v16, v105, v8);
  swift_beginAccess();
  v27 = sub_100DED164(v19, v16);
  v103 = v9;
  v9 = *(v9 + 8);
  (v9)(v19, v8);
  swift_endAccess();
  if (v27)
  {
    v90 = v3;
    if (qword_1016946F0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_1000076D4(v40, qword_10177AD08);
  v41 = v100;
  v104(v100, v25, v8);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = v9;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v44 = 136446210;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v45(v41, v8);
    v50 = sub_1000136BC(v47, v49, aBlock);

    *(v44 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v42, v43, "Already handling unpairing event for this MAC %{public}s.", v44, 0xCu);
    sub_100007BAC(v46);
  }

  else
  {

    (v9)(v41, v8);
  }
}

void sub_10043BE28(uint64_t a1, NSObject *a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177AD08);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136446210;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1000136BC(v13, v15, v20);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unpair completed for address %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  My = type metadata accessor for Feature.FindMy();
  v20[3] = My;
  v20[4] = sub_100019D54(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v18 = sub_1000280DC(v20);
  (*(*(My - 8) + 104))(v18, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v20);
  if (My)
  {
    static DarwinNotification.post(name:)();
  }

  dispatch_group_leave(a2);
}

void sub_10043C154(void *a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v90 = a2;
  v4 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v78 - v5;
  v83 = type metadata accessor for Device();
  v81 = *(v83 - 8);
  v7 = __chkstk_darwin(v83);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v78 - v10;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v13 - 8);
  v15 = &v78 - v14;
  v16 = type metadata accessor for MACAddress();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v78 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v87 = &v78 - v21;
  v22 = __chkstk_darwin(v20);
  v85 = &v78 - v23;
  __chkstk_darwin(v22);
  v25 = &v78 - v24;
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_1000076D4(v26, qword_10177AD08);
  v28 = *(v17 + 16);
  v93 = v17 + 16;
  v94 = v28;
  v28(v25, a1, v16);
  v88 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v79 = v9;
  v89 = v6;
  v92 = v17;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v80 = a1;
    v34 = v33;
    v95[0] = v33;
    *v32 = 136446210;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v91 = *(v17 + 8);
    v91(v25, v16);
    v38 = sub_1000136BC(v35, v37, v95);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Removing %{public}s from unpairing addresses.", v32, 0xCu);
    sub_100007BAC(v34);
    a1 = v80;
  }

  else
  {

    v91 = *(v17 + 8);
    v91(v25, v16);
  }

  v39 = v90;
  swift_beginAccess();
  sub_1010F701C(a1, v15);
  sub_10000B3A8(v15, &qword_1016A40D0, &unk_10138BE70);
  swift_endAccess();
  v40 = [*(v86 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  v41 = v84;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1001DE870(0, v41);
  swift_endAccess();
  v42 = v85;
  v43 = v94;
  v94(v85, a1, v16);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = a1;
    v48 = swift_slowAlloc();
    v95[0] = v48;
    *v46 = 136446210;
    sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v42;
    v52 = v51;
    v91(v50, v16);
    v53 = sub_1000136BC(v49, v52, v95);

    *(v46 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "Resetting attempted retries for %{public}s.", v46, 0xCu);
    sub_100007BAC(v48);
    a1 = v47;

    v43 = v94;
  }

  else
  {

    v91(v42, v16);
  }

  v54 = v89;
  v55 = v87;
  v43(v87, a1, v16);
  v95[0] = sub_10042D2E0();
  sub_1001DEA30(0, 1, v55);
  sub_10042D744(v95[0]);
  sub_10044DA44(v54);
  v56 = v81;
  v57 = v83;
  if ((*(v81 + 48))(v54, 1, v83) == 1)
  {
    sub_10000B3A8(v54, &qword_101699860, &qword_1013A34D0);
    v58 = v78;
    v94(v78, a1, v16);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v95[0] = v62;
      *v61 = 136446210;
      sub_100019D54(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v91(v58, v16);
      v66 = sub_1000136BC(v63, v65, v95);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "No BT device matching %{public}s after unpair as expected.", v61, 0xCu);
      sub_100007BAC(v62);
    }

    else
    {

      v91(v58, v16);
    }
  }

  else
  {
    v67 = v82;
    (*(v56 + 32))(v82, v54, v57);
    v68 = v79;
    (*(v56 + 16))(v79, v67, v57);
    v69 = v57;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95[0] = v94;
      *v72 = 136315138;
      sub_100019D54(&unk_1016B7C90, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      LODWORD(v93) = v71;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = a1;
      v75 = v74;
      v76 = *(v56 + 8);
      v76(v68, v69);
      v77 = sub_1000136BC(v73, v75, v95);
      a1 = v80;

      *(v72 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v70, v93, "Found paired BT device %s after unpair. Need to pair.", v72, 0xCu);
      sub_100007BAC(v94);
    }

    else
    {

      v76 = *(v56 + 8);
      v76(v68, v69);
    }

    sub_101320F88(a1, *(*(v39 + 32) + 24));
    v76(v82, v69);
  }
}

uint64_t sub_10043CD48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v4 - 8);
  v44 = v39 - v5;
  v47 = sub_1000BC4D4(&qword_1016A05C8, &qword_1013A36A0);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v53 = v39 - v6;
  v7 = sub_1000BC4D4(&qword_1016A05D0, &qword_1013A36A8);
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v46 = v39 - v8;
  v9 = sub_1000BC4D4(&qword_1016A05D8, &qword_1013A36B0);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v50 = v39 - v10;
  v11 = sub_1000BC4D4(&qword_1016A05E0, &qword_1013A36B8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v39 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + 48);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = *(v16 + 8);
  v21 = v16 + 8;
  v22(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v40 = v14;
  v41 = v12;
  v42 = v11;
  v43 = a1;
  sub_1000BC4D4(&qword_1016A05E8, &qword_1013A36C0);
  swift_allocObject();
  v23 = PassthroughSubject.init()();
  *(v2 + 152) = v23;

  v39[2] = v23;
  v54 = v23;
  sub_1000041A4(&qword_1016A05F0, &qword_1016A05E8, &qword_1013A36C0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v54 = Publisher.eraseToAnyPublisher()();
  v55[0] = v20;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v24 = *(v21 - 8);
  v39[1] = v2;
  v14 = v44;
  v39[0] = *(v24 + 56);
  (v39[0])(v44, 1, 1, v21);
  sub_1000BC4D4(&qword_1016A05F8, &qword_1013A36C8);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A0600, &qword_1016A05F8, &qword_1013A36C8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1004682F0();
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v14, &unk_1016B0FE0, &unk_101391980);

  if (qword_1016946F8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v25 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v25, qword_1016A00B8);
  v54 = v20;
  (v39[0])(v14, 1, 1, v21);
  sub_1000041A4(&qword_1016A0608, &qword_1016A05C8, &qword_1013A36A0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v26 = v46;
  v27 = v47;
  v28 = v53;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v14, &unk_1016B0FE0, &unk_101391980);

  (*(v45 + 8))(v28, v27);
  sub_1000BC4D4(&qword_1016A0610, &qword_1013A36D0);
  sub_1000041A4(&qword_1016A0618, &qword_1016A05D0, &qword_1013A36A8, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v29 = v49;
  v30 = v50;
  Publisher.map<A>(_:)();
  (*(v48 + 8))(v26, v29);
  sub_1000BC4D4(&qword_1016A0620, &qword_1013A36D8);
  sub_1000041A4(&qword_1016A0628, &qword_1016A05D8, &qword_1013A36B0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A0630, &qword_1016A0620, &qword_1013A36D8, &protocol conformance descriptor for Just<A>);
  v31 = v40;
  v32 = v52;
  Publisher.catch<A>(_:)();
  (*(v51 + 8))(v30, v32);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v43;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  sub_1000041A4(&qword_1016A0638, &qword_1016A05E0, &qword_1013A36B8, &protocol conformance descriptor for Publishers.Catch<A, B>);
  v36 = v35;
  v37 = v42;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v31, v37);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_10043D664(char **a1, uint64_t a2, char *a3)
{
  v74 = a3;
  v4 = type metadata accessor for MACAddress();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v7 - 8);
  v71 = &v64 - v8;
  v9 = sub_1000BC4D4(&qword_1016A04D0, &qword_1013A34A8);
  __chkstk_darwin(v9 - 8);
  v11 = (&v64 - v10);
  v12 = type metadata accessor for Device();
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin(v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v64 - v20;
  v75 = *a1;
  v22 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v22)
    {
      if (v75)
      {
        if (qword_1016946F0 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_1000076D4(v24, qword_10177AD08);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Got pairing event but timed out waiting for connection event.", v27, 2u);
        }

        goto LABEL_30;
      }

      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177AD08);
      v49 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v49, v54))
      {
LABEL_28:

        return;
      }

      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      sub_100468184();
      swift_allocError();
      *v57 = 0;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v56 = v58;
      _os_log_impl(&_mh_execute_header, v49, v54, "subscribeToConnectionEvents failure: %@", v55, 0xCu);
      sub_10000B3A8(v56, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
      v65 = v14;
      v67 = v6;
      v68 = Strong;
      v28 = v74;
      v29 = [*&v74[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = v75;
      v31 = [*&v75[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = static UUID.== infix(_:_:)();
      v33 = *(v16 + 8);
      v33(v19, v15);
      v33(v21, v15);
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      v76 = 0xD000000000000019;
      v77 = 0x80000001013550E0;
      v66 = v32;
      if (v32)
      {
        v34 = 1702195828;
      }

      else
      {
        v34 = 0x65736C6166;
      }

      if (v32)
      {
        v35 = 0xE400000000000000;
      }

      else
      {
        v35 = 0xE500000000000000;
      }

      v36 = v35;
      String.append(_:)(*&v34);

      v37._object = 0x8000000101355100;
      v37._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v37);
      v38 = v76;
      v39 = v77;
      if (qword_1016946F0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177AD08);
      sub_100A245E8(v38, v39);

      v41 = v28;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        *(v44 + 4) = v41;
        *v45 = v41;
        v46 = v41;
        _os_log_impl(&_mh_execute_header, v42, v43, "Paired peripheral: %@", v44, 0xCu);
        sub_10000B3A8(v45, &qword_10169BB30, &unk_10138B3C0);
        v30 = v75;
      }

      v6 = v67;
      if ((v66 & 1) == 0)
      {
        goto LABEL_31;
      }

      sub_100447E44(v30, v11);
      v47 = sub_1000BC4D4(&qword_1016A04D8, &qword_1013A34B0);
      if ((*(*(v47 - 8) + 48))(v11, 1, v47) != 1)
      {
        v59 = *v11;
        v61 = v69;
        v60 = v70;
        v62 = v65;
        (*(v69 + 32))(v65, v11 + *(v47 + 48), v70);
        sub_1004490E8(v59, v62, 0, 0, _swiftEmptyArrayStorage);

        (*(v61 + 8))(v62, v60);
LABEL_30:
        sub_100A22DF0(v6);
        swift_beginAccess();
        v63 = v71;
        sub_1010F701C(v6, v71);
        (*(v72 + 8))(v6, v73);
        sub_10000B3A8(v63, &qword_1016A40D0, &unk_10138BE70);
        swift_endAccess();
LABEL_31:

        return;
      }

      sub_10000B3A8(v11, &qword_1016A04D0, &qword_1013A34A8);
      v48 = v30;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v49, v50))
      {

        sub_10046AE80(v30, 0);
        return;
      }

      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v30;
      _os_log_impl(&_mh_execute_header, v49, v50, "Unable to sanitize MAC address for peripheral %@", v51, 0xCu);
      sub_10000B3A8(v52, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_28;
  }
}

void *sub_10043DFA0()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1000BC4D4(&qword_1016A0558, &qword_1013A35A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = sub_1000BC4D4(&qword_1016A0560, &qword_1013A35A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v31 = 0x7365547265646E75;
  v32 = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v33 & 1) == 0)
  {
    v28 = v5;
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v27 = v6;
    v29 = v10;
    v30 = v9;
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177AD08);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "connectionEventInitialSetup", v17, 2u);
    }

    sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    *(v18 + 56) = &type metadata for BAServiceIdentifier;
    *(v18 + 64) = &off_10162CAF0;
    *(v18 + 32) = 1;
    v19 = sub_1013229A8(v18);

    v31 = v19;
    v33 = *(v1 + 48);
    v20 = v33;
    v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    v22 = v20;
    sub_1000BC4D4(&qword_1016A0568, &qword_1013A35B0);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016A0570, &qword_1016A0568, &qword_1013A35B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1004682F0();
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v4, &unk_1016B0FE0, &unk_101391980);

    sub_1000BC4D4(&qword_1016A0578, &qword_1013A35B8);
    sub_1000041A4(&qword_1016A0580, &qword_1016A0558, &qword_1013A35A0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v23 = v28;
    Publisher.compactMap<A>(_:)();

    (*(v27 + 8))(v8, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100468DF8;
    *(v25 + 24) = v24;
    sub_1000041A4(&qword_1016A0588, &qword_1016A0560, &qword_1013A35A8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v26 = v30;
    Publisher<>.sink(receiveValue:)();

    (*(v29 + 8))(v12, v26);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

void sub_10043E590(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v6 - 8);
  v193 = &v156[-v7];
  v174 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v156[-v8];
  v178 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v175 = &v156[-v9];
  v180 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v176 = &v156[-v10];
  v184 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v182 = *(v184 - 8);
  __chkstk_darwin(v184);
  v181 = &v156[-v11];
  v186 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v183 = &v156[-v12];
  v189 = sub_1000BC4D4(&qword_1016A0590, &qword_1013A35C0);
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v156[-v13];
  v192 = sub_1000BC4D4(&qword_1016A0598, &unk_1013A35C8);
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v156[-v14];
  v167 = type metadata accessor for DispatchWorkItemFlags();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v164 = &v156[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v165 = type metadata accessor for DispatchQoS();
  v163 = *(v165 - 8);
  __chkstk_darwin(v165);
  v162 = &v156[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v156[-v18];
  v20 = type metadata accessor for Device();
  v171 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v161 = &v156[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v160 = v22;
  __chkstk_darwin(v21);
  v168 = &v156[-v23];
  v24 = type metadata accessor for BeaconObservation(0);
  v25 = *(v24 - 8);
  v202 = v24;
  v203 = v25;
  __chkstk_darwin(v24);
  v204 = &v156[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v28 = __chkstk_darwin(v27 - 8);
  v30 = &v156[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v197 = &v156[-v31];
  v32 = type metadata accessor for OwnedBeaconGroup(0);
  v205 = *(v32 - 8);
  v206 = v32;
  v33 = __chkstk_darwin(v32);
  v195 = &v156[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v33);
  v196 = &v156[-v36];
  v37 = __chkstk_darwin(v35);
  v169 = &v156[-v38];
  __chkstk_darwin(v37);
  v40 = &v156[-v39];
  v41 = *a1;
  LODWORD(v42) = *(a1 + 8);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v201 = type metadata accessor for Logger();
  v43 = sub_1000076D4(v201, qword_10177AD08);
  LocationDecryptionKey.rawValue.getter(v41);
  v198 = v43;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  v46 = os_log_type_enabled(v44, v45);
  v194 = v20;
  v170 = v19;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v199 = v40;
    v48 = v47;
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    LocationDecryptionKey.rawValue.getter(v41);
    v50 = sub_101318004(v41, v42);
    v200 = a2;
    v51 = a3;
    v52 = v50;
    v54 = v53;

    v55 = sub_1000136BC(v52, v54, aBlock);

    *(v48 + 4) = v55;
    a3 = v51;
    a2 = v200;
    _os_log_impl(&_mh_execute_header, v44, v45, "connectionEvent: %s", v48, 0xCu);
    sub_100007BAC(v49);

    v40 = v199;
  }

  v56 = OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject;
  v57 = *&v41[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  if ((v42 & 0x80000000) == 0)
  {
    if ([*&v41[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] connectedTransport] == 1)
    {
      sub_100440548(v41, v30);
      if ((*(v205 + 48))(v30, 1, v206) == 1)
      {
        sub_10000B3A8(v30, &unk_1016AF8B0, &unk_1013A0700);
      }

      else
      {
        v79 = v196;
        sub_10046B7F0(v30, v196, type metadata accessor for OwnedBeaconGroup);
        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v201, qword_10177B780);
        v80 = v195;
        sub_10046A814(v79, v195, type metadata accessor for OwnedBeaconGroup);
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          aBlock[0] = v84;
          *v83 = 136315138;
          type metadata accessor for UUID();
          sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v85 = dispatch thunk of CustomStringConvertible.description.getter();
          v87 = v86;
          sub_10046B858(v80, type metadata accessor for OwnedBeaconGroup);
          v88 = sub_1000136BC(v85, v87, aBlock);

          *(v83 + 4) = v88;
          _os_log_impl(&_mh_execute_header, v81, v82, "Saving classic bluetooth disconnect event for: %s", v83, 0xCu);
          sub_100007BAC(v84);
        }

        else
        {

          sub_10046B858(v80, type metadata accessor for OwnedBeaconGroup);
        }

        if (qword_101694920 != -1)
        {
          swift_once();
        }

        v100 = qword_10177B2E8;
        v101 = *(v206 + 24);
        v102 = type metadata accessor for UUID();
        v103 = v204;
        (*(*(v102 - 8) + 16))(v204, &v79[v101], v102);
        v104 = v202;
        static Date.trustedNow.getter(v103 + v202[5]);
        *(v103 + v104[6]) = 38;
        sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
        v105 = (*(v203 + 80) + 32) & ~*(v203 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_101385D80;
        sub_10046A814(v103, v106 + v105, type metadata accessor for BeaconObservation);
        v107 = type metadata accessor for Transaction();
        __chkstk_darwin(v107);
        *&v156[-32] = v100;
        *&v156[-24] = v106;
        *&v156[-16] = 0;
        *&v156[-8] = 0;
        static Transaction.named<A>(_:with:)();

        sub_10046B858(v103, type metadata accessor for BeaconObservation);
        sub_100A8306C(0x15u);
        sub_100A83364(0);
        sub_10046B858(v79, type metadata accessor for OwnedBeaconGroup);
      }
    }

    goto LABEL_46;
  }

  v58 = v41;
  if ([v57 connectedTransport] != 1)
  {
    v70 = v58;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = v41;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v74 = 136315138;
      v76 = [*&v73[v56] connectedTransport];
      if (v76 == 2)
      {
        v77 = 0xEA00000000007967;
        v78 = 0x72656E45776F6C2ELL;
      }

      else
      {
        v77 = 0xE800000000000000;
        if (v76 == 1)
        {
          v78 = 0x63697373616C632ELL;
        }

        else
        {
          v78 = 0x6E776F6E6B6E752ELL;
        }
      }

      v143 = sub_1000136BC(v78, v77, aBlock);

      *(v74 + 4) = v143;
      _os_log_impl(&_mh_execute_header, v71, v72, "Ignoring non-classic connection: %s", v74, 0xCu);
      sub_100007BAC(v75);

      v99 = v73;
    }

    else
    {

      v99 = v41;
    }

LABEL_46:
    v41 = 0;
    v142 = 0;
    goto LABEL_47;
  }

  v59 = v58;
  v60 = a2[2];
  v61 = swift_allocObject();
  v61[2] = a2;
  v61[3] = v58;
  v61[4] = v60;
  LocationDecryptionKey.rawValue.getter(v41);

  unsafeFromAsyncTask<A>(_:)();

  v62 = aBlock[0];
  v63 = v197;
  v196 = v59;
  sub_100440548(v59, v197);
  if ((*(v205 + 48))(v63, 1, v206) == 1)
  {
    sub_10000B3A8(v63, &unk_1016AF8B0, &unk_1013A0700);
    v64 = v196;
    if (v62)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v65 = sub_1010748C0(aBlock[0]);

      if (v65)
      {
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&_mh_execute_header, v66, v67, "Checking if force pair is needed when no iCloud", v68, 2u);
        }

        type metadata accessor for Transaction();
        v69 = swift_allocObject();
        *(v69 + 16) = a2;
        *(v69 + 24) = v64;
        LocationDecryptionKey.rawValue.getter(v41);

        static Transaction.asyncTask(name:block:)();
      }
    }
  }

  else
  {
    sub_10046B7F0(v63, v40, type metadata accessor for OwnedBeaconGroup);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v201, qword_10177B780);
    v89 = v169;
    sub_10046A814(v40, v169, type metadata accessor for OwnedBeaconGroup);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    v92 = os_log_type_enabled(v90, v91);
    v200 = a2;
    v159 = v41;
    v199 = v40;
    if (v92)
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock[0] = v94;
      *v93 = 136315138;
      type metadata accessor for UUID();
      sub_100019D54(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      sub_10046B858(v89, type metadata accessor for OwnedBeaconGroup);
      v98 = sub_1000136BC(v95, v97, aBlock);
      v40 = v199;

      *(v93 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v90, v91, "Saving classic bluetooth connect event for: %s", v93, 0xCu);
      sub_100007BAC(v94);
      a2 = v200;
    }

    else
    {

      sub_10046B858(v89, type metadata accessor for OwnedBeaconGroup);
    }

    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v108 = qword_10177B2E8;
    v109 = *(v206 + 24);
    v110 = type metadata accessor for UUID();
    v111 = v204;
    (*(*(v110 - 8) + 16))(v204, &v40[v109], v110);
    v112 = v202;
    static Date.trustedNow.getter(v111 + v202[5]);
    *(v111 + v112[6]) = 37;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v113 = (*(v203 + 80) + 32) & ~*(v203 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_101385D80;
    sub_10046A814(v111, v114 + v113, type metadata accessor for BeaconObservation);
    v115 = type metadata accessor for Transaction();
    __chkstk_darwin(v115);
    *&v156[-32] = v108;
    *&v156[-24] = v114;
    *&v156[-16] = 0;
    *&v156[-8] = 0;
    static Transaction.named<A>(_:with:)();

    sub_10046B858(v111, type metadata accessor for BeaconObservation);
    sub_100A8306C(0x15u);
    sub_100A83364(0);
    v116 = v170;
    v117 = v196;
    sub_100452870(v196, v170);
    v158 = a3;
    v157 = v42;
    v118 = v171;
    v119 = v194;
    if ((*(v171 + 48))(v116, 1, v194) == 1)
    {
      sub_10000B3A8(v116, &qword_101699860, &qword_1013A34D0);
    }

    else
    {
      v144 = *(v118 + 32);
      v145 = v168;
      v144(v168, v116, v119);
      v206 = a2[7];
      v146 = v161;
      v147 = v145;
      v148 = v119;
      (*(v118 + 16))(v161, v147, v119);
      v149 = v118;
      v150 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v151 = swift_allocObject();
      *(v151 + 16) = a2;
      *(v151 + 24) = v117;
      v144((v151 + v150), v146, v148);
      aBlock[4] = sub_100468F6C;
      aBlock[5] = v151;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_10161D748;
      v152 = _Block_copy(aBlock);
      LocationDecryptionKey.rawValue.getter(v159);

      v153 = v162;
      static DispatchQoS.unspecified.getter();
      v208 = _swiftEmptyArrayStorage;
      sub_100019D54(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v154 = v164;
      v155 = v167;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v152);
      (*(v166 + 8))(v154, v155);
      (*(v163 + 8))(v153, v165);
      (*(v149 + 8))(v168, v194);
    }

    aBlock[0] = sub_100448730(v117);
    v208 = a2[6];
    v120 = v208;
    v121 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v122 = *(v121 - 8);
    v203 = *(v122 + 56);
    v204 = (v122 + 56);
    v123 = v193;
    v201 = v121;
    (v203)(v193, 1, 1, v121);
    v202 = v120;
    v124 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    v206 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
    v205 = sub_1004682F0();
    v125 = v172;
    v198 = v124;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v123, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    v197 = type metadata accessor for Peripheral(0);
    sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v126 = v175;
    v127 = v174;
    Publisher.flatMap<A, B>(maxPublishers:_:)();
    (*(v173 + 8))(v125, v127);
    v42 = v202;
    aBlock[0] = v202;
    v128 = v121;
    v129 = v203;
    (v203)(v123, 1, 1, v128);
    v195 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
    sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v130 = v176;
    v131 = v178;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v123, &unk_1016B0FE0, &unk_101391980);

    (*(v177 + 8))(v126, v131);
    static Subscribers.Demand.unlimited.getter();
    sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v132 = v181;
    v133 = v180;
    Publisher.flatMap<A, B>(maxPublishers:_:)();
    v134 = v130;
    v64 = v196;
    (*(v179 + 8))(v134, v133);
    aBlock[0] = v42;
    v129(v123, 1, 1, v201);
    sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510, v195);
    v135 = v183;
    v136 = v184;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v123, &unk_1016B0FE0, &unk_101391980);

    (*(v182 + 8))(v132, v136);
    sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
    sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v137 = v187;
    v138 = v186;
    Publisher.map<A>(_:)();
    (*(v185 + 8))(v135, v138);
    sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
    sub_1000041A4(&qword_1016A05A0, &qword_1016A0590, &qword_1013A35C0, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
    v139 = v190;
    v140 = v189;
    Publisher.catch<A>(_:)();
    (*(v188 + 8))(v137, v140);
    swift_allocObject();
    swift_weakInit();
    sub_1000041A4(&qword_1016A05A8, &qword_1016A0598, &unk_1013A35C8, &protocol conformance descriptor for Publishers.Catch<A, B>);
    v141 = v192;
    Publisher<>.sink(receiveValue:)();

    (*(v191 + 8))(v139, v141);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10046B858(v199, type metadata accessor for OwnedBeaconGroup);
    a3 = v158;
    v41 = v159;
    LOBYTE(v42) = v157;
  }

  sub_100450A8C(v64);
  aBlock[0] = v64;

  PassthroughSubject.send(_:)();

  LOBYTE(aBlock[0]) = 2;

  PassthroughSubject.send(completion:)();

  v142 = v42 & 1;
LABEL_47:
  *a3 = v41;
  *(a3 + 8) = v142;
}

uint64_t sub_100440548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  sub_100A22DF0(v8);
  v9 = MACAddress.data.getter();
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  v26[0] = v9;
  v26[1] = v11;
  sub_1000E0A3C();
  v13 = DataProtocol.isNull.getter();
  sub_100016590(v9, v11);
  if (v13)
  {
    v14 = sub_100008CA0();
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C418);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136315138;
      type metadata accessor for OwnedBeaconGroup(0);
      v20 = Array.description.getter();
      v22 = sub_1000136BC(v20, v21, v26);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "All groups: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    __chkstk_darwin(v23);
    *(&v25 - 2) = &v27;
    *(&v25 - 1) = a1;
    sub_1012BC0C4(sub_100468238, v14, a2);
  }

  else
  {
    sub_100A22DF0(v8);
    sub_100AC5D4C(v8, a2);
    return (v12)(v8, v5);
  }
}

uint64_t sub_10044083C@<X0>(char **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *a1;
  v29[3] = &type metadata for BAServiceIdentifier;
  v29[4] = &off_10162CAF0;
  LOBYTE(v29[0]) = 1;
  v13 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v14 = *&v12[v13];
  v28 = v29;

  v15 = sub_1012BBDB4(sub_1001DB3F8, v27, v14);

  sub_100007BAC(v29);
  if (v15)
  {
    v16 = sub_10039C428(&off_101608E80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v29[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v18 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177AD08);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v26 = v9;
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No FindMy service", v23, 2u);
      v9 = v26;
    }

    v29[0] = v12;
    type metadata accessor for Peripheral(0);
    v24 = v12;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v7, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v18 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v18;
  return result;
}

uint64_t sub_100440C74(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v38[-v4];
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_1000D2A70(a1, &v42, &unk_1016A6150, &unk_10139DB30);
  if (v44)
  {
    v40 = v42;
    *v41 = *v43;
    *&v41[9] = *&v43[9];
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177AD08);
    sub_100101AA8(&v40, v39);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      sub_100101B58();
      swift_allocError();
      sub_100101AA8(v39, v16);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      sub_100101B04(v39);
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "registerForConnectionEvents error: %{public}@", v14, 0xCu);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {

      sub_100101B04(v39);
    }

    return sub_100101B04(&v40);
  }

  v18 = v42;
  *&v41[8] = &type metadata for BAServiceIdentifier;
  *&v41[16] = &off_10162CAF0;
  LOBYTE(v40) = 1;
  v19 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v20 = swift_beginAccess();
  v21 = *&v18[v19];
  __chkstk_darwin(v20);
  *&v38[-16] = &v40;

  v22 = sub_1012BBDB4(sub_1001DB3F8, &v38[-32], v21);

  sub_100007BAC(&v40);
  if (!v22)
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177AD08);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Owner characteristic not available. ", v26, 2u);
    }
  }

  sub_100452870(v18, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v5, &qword_101699860, &qword_1013A34D0);
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177AD08);
    v28 = v18;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "Missing BT device for %@", v31, 0xCu);
      sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  (*(v7 + 32))(v9, v5, v6);
  if (qword_1016946F0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177AD08);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Owner characteristic available. Check verifyFindMyNetworkId for unpaired parts.", v37, 2u);
  }

  sub_10044137C(v22, v18, v9);

  return (*(v7 + 8))(v9, v6);
}