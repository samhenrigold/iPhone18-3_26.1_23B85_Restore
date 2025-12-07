uint64_t sub_100001540()
{
  v0 = sub_100005A84();
  sub_1000055CC(v0, qword_10000C460);
  sub_100004884(v0, qword_10000C460);
  return sub_100005A74();
}

uint64_t sub_1000015C0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74754F64656D6974;
    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0x7463657078656E75;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6B72616D6B6F6F62;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100001718(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000726F727245;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x80000001000061C0;
    v12 = 0xD000000000000017;
    if (a1 != 2)
    {
      v12 = 0xD000000000000012;
      v11 = 0x80000001000061E0;
    }

    v13 = 0x7463657078656E75;
    v14 = 0xEF726F7272456465;
    if (!a1)
    {
      v13 = 0x74754F64656D6974;
      v14 = 0xED0000726F727245;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 1)
    {
      v10 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0x8000000100006240;
    v5 = 0x6B72616D6B6F6F62;
    v6 = 0xEF65766968637241;
    if (a1 != 7)
    {
      v5 = 0xD000000000000011;
      v6 = 0x8000000100006270;
    }

    if (a1 == 6)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = v6;
    }

    v7 = 0x8000000100006200;
    v8 = 0xD000000000000014;
    if (a1 != 4)
    {
      v8 = 0xD000000000000010;
      v7 = 0x8000000100006220;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001000061C0;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v2 = 0x80000001000061E0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v2 = 0xEF726F7272456465;
      if (v9 != 0x7463657078656E75)
      {
        goto LABEL_52;
      }
    }

    else if (v9 != 0x74754F64656D6974)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = "emptyBookmarkName";
    }

    else
    {
      if (a2 == 7)
      {
        v2 = 0xEF65766968637241;
        if (v9 != 0x6B72616D6B6F6F62)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = "bookmarkUnarchive";
    }

    v2 = (v15 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v2 = 0x8000000100006200;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v2 = 0x8000000100006220;
    if (v9 != 0xD000000000000010)
    {
LABEL_52:
      v16 = sub_100005BE4();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v2)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

Swift::Int sub_1000019F8()
{
  v1 = *v0;
  sub_100005C34();
  sub_100001A48(v3, v1);
  return sub_100005C44();
}

uint64_t sub_100001A48(uint64_t a1, unsigned __int8 a2)
{
  sub_100005B24();
}

Swift::Int sub_100001BC8(uint64_t a1)
{
  v2 = *v1;
  sub_100005C34();
  sub_100001A48(v4, v2);
  return sub_100005C44();
}

unint64_t sub_100001C0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005278(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100001C3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000015C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100001C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a3;
  v4[38] = a4;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_100005924();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  v6 = sub_100005B44();
  v4[42] = v6;
  v4[43] = *(v6 - 8);
  v4[44] = swift_task_alloc();
  v7 = sub_100005994();
  v4[45] = v7;
  v4[46] = *(v7 - 8);
  v4[47] = swift_task_alloc();
  v8 = sub_100005A54();
  v4[48] = v8;
  v4[49] = *(v8 - 8);
  v4[50] = swift_task_alloc();
  v9 = sub_100005934();
  v4[51] = v9;
  v4[52] = *(v9 - 8);
  v4[53] = swift_task_alloc();
  sub_10000483C(&qword_10000C010, &qword_100006020);
  v4[54] = swift_task_alloc();
  sub_10000483C(&qword_10000C018, &qword_100006028);
  v4[55] = swift_task_alloc();
  v10 = sub_100005984();
  v4[56] = v10;
  v4[57] = *(v10 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v11 = sub_100005914();
  v4[62] = v11;
  v4[63] = *(v11 - 8);
  v4[64] = swift_task_alloc();
  sub_10000483C(&qword_10000C020, &qword_100006030);
  v4[65] = swift_task_alloc();
  v4[66] = sub_10000483C(&qword_10000C028, &qword_100006038);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v12 = sub_100005A94();
  v4[69] = v12;
  v4[70] = *(v12 - 8);
  v4[71] = swift_task_alloc();
  v13 = sub_100005AC4();
  v4[72] = v13;
  v4[73] = *(v13 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = sub_100005AA4();
  v4[77] = swift_task_alloc();

  return _swift_task_switch(sub_10000216C, 0, 0);
}

uint64_t sub_10000216C()
{
  v40 = v0;
  if (qword_10000C0D0 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = sub_100005A84();
  v0[78] = sub_100004884(v2, qword_10000C460);
  v3 = v1;
  v4 = sub_100005A64();
  v5 = sub_100005B54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_100005A34();
    v9 = sub_100004BA0(v7, v8, &v39);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = sub_100005A44();
    v12 = sub_100004BA0(v10, v11, &v39);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "TaskId: %s, TaskName: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v20 = v0[38];
  v21 = v20 + 1000;
  if (v20 >= 0xFFFFFFFFFFFFFC18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v0[16] = sub_1000048CC;
  v0[17] = v22;
  v0[12] = _NSConcreteStackBlock;
  v0[13] = 1107296256;
  v0[14] = sub_100004164;
  v0[15] = &unk_1000087C8;
  _Block_copy(v0 + 12);
  v0[27] = &_swiftEmptyArrayStorage;
  sub_100004B58(&qword_10000C030, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000483C(&qword_10000C038, &qword_100006040);
  sub_1000049C4();
  sub_100005B94();
  sub_100005AF4();
  swift_allocObject();
  v0[79] = sub_100005AD4();

  sub_100004A70();
  v23 = sub_100005B84();
  v13 = sub_100005AB4();
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    return MLHostExtension.loadConfig<A>(context:)(v13, v14, v15, v16, v17, v18, v19);
  }

  v24 = v0[75];
  v25 = v0[74];
  v26 = v0[73];
  v27 = v0[72];
  v28 = v0[71];
  v29 = v0[70];
  v30 = v21;
  v31 = v0[69];
  v38 = v0[38];
  v37 = *(v0 + 18);
  *v28 = v30;
  (*(v29 + 104))(v28, enum case for DispatchTimeInterval.milliseconds(_:), v31);
  sub_100005B04();
  (*(v29 + 8))(v28, v31);
  v32 = *(v26 + 8);
  v32(v25, v27);
  sub_100005B74();

  v32(v24, v27);
  *(v0 + 9) = v37;
  v0[20] = v38;
  v33 = swift_task_alloc();
  v0[80] = v33;
  v34 = sub_1000047E8();
  v35 = sub_100004ABC(&qword_10000C050, &qword_10000C058, &protocol conformance descriptor for LighthouseRuntimeParams, &protocol conformance descriptor for <A> A?);
  v19 = sub_100004ABC(&qword_10000C060, &qword_10000C068, &protocol conformance descriptor for LighthouseRuntimeParams, &protocol conformance descriptor for <A> A?);
  *v33 = v0;
  v33[1] = sub_10000265C;
  v16 = v0[66];
  v13 = v0[65];
  v14 = v0[35];
  v15 = &type metadata for SiriTurnRestatementExtension;
  v17 = v34;
  v18 = v35;

  return MLHostExtension.loadConfig<A>(context:)(v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10000265C()
{

  return _swift_task_switch(sub_100002758, 0, 0);
}

uint64_t sub_100002758()
{
  v60 = v0;
  v1 = *(v0 + 520);
  v2 = sub_10000483C(&qword_10000C070, &qword_100006048);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 544);
  if (v4 == 1)
  {
    sub_100005494(v1, &qword_10000C020, &qword_100006030);
    v6 = sub_100005954();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    sub_100005A24();
    (*(v3 + 8))(v1, v2);
  }

  v7 = *(v0 + 536);
  sub_100005554(*(v0 + 544), v7, &qword_10000C028, &qword_100006038);
  v8 = sub_100005954();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = *(v0 + 536);
  if (v10 == 1)
  {
    sub_100005494(*(v0 + 536), &qword_10000C028, &qword_100006038);
    v12 = *(v0 + 304);
  }

  else
  {
    v12 = *(v0 + 304);
    v13 = sub_100005944();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    if ((v15 & 1) == 0)
    {
      v12 = v13;
    }
  }

  v16 = *(v0 + 488);
  v17 = *(v0 + 456);
  v18 = *(v0 + 280);
  sub_10000483C(&qword_10000C078, &qword_100006050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100005F30;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 72) = &type metadata for UInt64;
  *(inited + 40) = 0x8000000100006290;
  *(inited + 48) = v12;
  v20 = v18;
  sub_1000052C4(inited);
  swift_setDeallocating();
  sub_100005494(inited + 32, &qword_10000C080, &qword_100006058);
  sub_100005904();
  *v16 = 0;
  *(v0 + 688) = enum case for LighthouseRuntimeProcessorResult.error(_:);
  v21 = *(v17 + 104);
  *(v0 + 648) = v21;
  *(v0 + 656) = (v17 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v21(v16);
  sub_1000059C4();
  swift_allocObject();
  *(v0 + 272) = sub_1000059B4();
  sub_10000483C(&qword_10000C098, &qword_100006068);
  swift_allocObject();
  v22 = sub_100005974();
  *(v0 + 664) = v22;
  if (v22)
  {
    v23 = *(v0 + 504);
    v24 = *(v0 + 496);
    v25 = *(v0 + 432);
    (*(v23 + 16))(v25, *(v0 + 512), v24);
    (*(v23 + 56))(v25, 0, 1, v24);
    v26 = swift_task_alloc();
    *(v0 + 672) = v26;
    *v26 = v0;
    v26[1] = sub_1000033AC;
    v28 = *(v0 + 432);
    v27 = *(v0 + 440);

    return LighthouseRuntimeProcessor.processAsync(withContext:)(v27, v28);
  }

  else
  {
    v29 = *(v0 + 480);
    v30 = *(v0 + 448);
    (*(*(v0 + 456) + 56))(*(v0 + 440), 1, 1, v30);
    (v21)(v29, enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:), v30);
    (*(*(v0 + 456) + 40))(*(v0 + 488), *(v0 + 480), *(v0 + 448));
    v31 = sub_100005A64();
    v32 = sub_100005B64();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 488);
      v34 = *(v0 + 472);
      v35 = *(v0 + 448);
      v36 = *(v0 + 456);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v59[0] = v38;
      *v37 = 136315138;
      swift_beginAccess();
      (*(v36 + 16))(v34, v33, v35);
      v39 = sub_100005B14();
      v41 = sub_100004BA0(v39, v40, v59);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "Lighthouse runtime process result: %s", v37, 0xCu);
      sub_100005448(v38);
    }

    v42 = *(v0 + 688);
    v43 = *(v0 + 488);
    v45 = *(v0 + 456);
    v44 = *(v0 + 464);
    v46 = *(v0 + 448);
    swift_beginAccess();
    (*(v45 + 16))(v44, v43, v46);
    v47 = (*(v45 + 88))(v44, v46);
    if (v47 == v42 || v47 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v47 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v47 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
    {
      (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
    }

    sub_100005AE4();
    v48 = *(v0 + 544);
    v49 = *(v0 + 504);
    v50 = *(v0 + 512);
    v51 = *(v0 + 496);
    v58 = *(v0 + 488);
    v52 = *(v0 + 448);
    v53 = *(v0 + 456);
    v54 = objc_allocWithZone(sub_1000059F4());
    v57 = sub_1000059E4();

    (*(v49 + 8))(v50, v51);
    sub_100005494(v48, &qword_10000C028, &qword_100006038);
    (*(v53 + 8))(v58, v52);

    v55 = *(v0 + 8);

    return v55(v57);
  }
}

uint64_t sub_1000033AC()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  sub_100005494(*(v2 + 432), &qword_10000C010, &qword_100006020);

  if (v0)
  {
    v3 = sub_100003940;
  }

  else
  {
    v3 = sub_10000350C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000350C()
{
  v34 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 440);
  (*(v3 + 56))(v4, 0, 1, v2);
  (*(v3 + 32))(v1, v4, v2);
  (*(*(v0 + 456) + 40))(*(v0 + 488), *(v0 + 480), *(v0 + 448));
  v5 = sub_100005A64();
  v6 = sub_100005B64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 488);
    v8 = *(v0 + 472);
    v9 = *(v0 + 448);
    v10 = *(v0 + 456);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    (*(v10 + 16))(v8, v7, v9);
    v13 = sub_100005B14();
    v15 = sub_100004BA0(v13, v14, &v33);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Lighthouse runtime process result: %s", v11, 0xCu);
    sub_100005448(v12);
  }

  v16 = *(v0 + 688);
  v17 = *(v0 + 488);
  v19 = *(v0 + 456);
  v18 = *(v0 + 464);
  v20 = *(v0 + 448);
  swift_beginAccess();
  (*(v19 + 16))(v18, v17, v20);
  v21 = (*(v19 + 88))(v18, v20);
  if (v21 == v16 || v21 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v21 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v21 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
  {
    (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
  }

  sub_100005AE4();
  v22 = *(v0 + 544);
  v24 = *(v0 + 504);
  v23 = *(v0 + 512);
  v25 = *(v0 + 496);
  v31 = *(v0 + 488);
  v27 = *(v0 + 448);
  v26 = *(v0 + 456);
  v28 = objc_allocWithZone(sub_1000059F4());
  v32 = sub_1000059E4();

  (*(v24 + 8))(v23, v25);
  sub_100005494(v22, &qword_10000C028, &qword_100006038);
  (*(v26 + 8))(v31, v27);

  v29 = *(v0 + 8);

  return v29(v32);
}

uint64_t sub_100003940()
{
  v51 = v0;
  v1 = *(v0 + 680);
  *(v0 + 224) = v1;
  swift_errorRetain();
  sub_10000483C(&qword_10000C088, &qword_100006060);
  if (swift_dynamicCast())
  {
    v2 = (*(*(v0 + 416) + 88))(*(v0 + 424), *(v0 + 408));
    if (v2 == enum case for LighthouseRuntimeError.missingDataRecords(_:))
    {

      v48 = 0;
      v3 = 3;
LABEL_20:
      v46 = v3;
      goto LABEL_21;
    }

    if (v2 == enum case for LighthouseRuntimeError.missingWorkerResult(_:))
    {

      v48 = 0;
      v3 = 4;
      goto LABEL_20;
    }

    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
  }

  *(v0 + 232) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v4 = (*(*(v0 + 392) + 88))(*(v0 + 400), *(v0 + 384));
    if (v4 == enum case for StreamBookmarkStoreError.emptyBookmarkName(_:))
    {

      v48 = 0;
      v3 = 6;
      goto LABEL_20;
    }

    if (v4 == enum case for StreamBookmarkStoreError.bookmarkArchive(_:))
    {

      v48 = 0;
      v3 = 7;
      goto LABEL_20;
    }

    if (v4 == enum case for StreamBookmarkStoreError.bookmarkUnarchive(_:))
    {

      v48 = 0;
      v3 = 8;
      goto LABEL_20;
    }

    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
  }

  *(v0 + 240) = v1;
  swift_errorRetain();
  if (swift_dynamicCast() && *(v0 + 692) == 5)
  {

    v48 = 0;
    v3 = 5;
    goto LABEL_20;
  }

  *(v0 + 248) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 368);
    v6 = *(v0 + 376);
    v7 = *(v0 + 360);

    (*(v5 + 8))(v6, v7);

    v48 = 0;
    v3 = 2;
    goto LABEL_20;
  }

  *(v0 + 256) = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v36 = *(v0 + 648);
    v37 = *(v0 + 488);
    v38 = *(v0 + 448);
    v39 = *(v0 + 456);
    v40 = *(v0 + 344);
    v41 = *(v0 + 352);
    v42 = *(v0 + 336);

    (*(v39 + 8))(v37, v38);
    v36(v37, enum case for LighthouseRuntimeProcessorResult.cancelled(_:), v38);
    (*(v40 + 8))(v41, v42);

    v46 = 9;
    v48 = 1;
  }

  else
  {

    *(v0 + 264) = v1;
    swift_errorRetain();
    if (!swift_dynamicCast())
    {

      v48 = 0;
      v3 = 1;
      goto LABEL_20;
    }

    v43 = *(v0 + 320);
    v44 = *(v0 + 328);
    v45 = *(v0 + 312);

    (*(v43 + 8))(v44, v45);

    v48 = 0;
    v46 = 0;
  }

LABEL_21:
  v8 = sub_100005A64();
  v9 = sub_100005B64();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 488);
    v11 = *(v0 + 472);
    v13 = *(v0 + 448);
    v12 = *(v0 + 456);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v50[0] = v15;
    *v14 = 136315138;
    swift_beginAccess();
    (*(v12 + 16))(v11, v10, v13);
    v16 = sub_100005B14();
    v18 = sub_100004BA0(v16, v17, v50);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Lighthouse runtime process result: %s", v14, 0xCu);
    sub_100005448(v15);
  }

  v19 = *(v0 + 688);
  v20 = *(v0 + 488);
  v22 = *(v0 + 456);
  v21 = *(v0 + 464);
  v23 = *(v0 + 448);
  swift_beginAccess();
  (*(v22 + 16))(v21, v20, v23);
  v24 = (*(v22 + 88))(v21, v23);
  if (v24 == v19 || v24 != enum case for LighthouseRuntimeProcessorResult.success(_:) && v24 != enum case for LighthouseRuntimeProcessorResult.cancelled(_:) && v24 != enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:))
  {
    (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
  }

  sub_100005AE4();
  v25 = *(v0 + 544);
  v26 = *(v0 + 504);
  v27 = *(v0 + 512);
  v28 = *(v0 + 496);
  v47 = *(v0 + 488);
  v29 = *(v0 + 448);
  v30 = *(v0 + 456);
  if (v48)
  {
    v31 = objc_allocWithZone(sub_1000059F4());
    v32 = sub_1000059E4();
  }

  else
  {
    v50[3] = &type metadata for SiriTurnRestatementError;
    v50[4] = sub_1000053F4();
    LOBYTE(v50[0]) = v46;
    v33 = objc_allocWithZone(sub_1000059F4());
    v32 = sub_1000059D4();
  }

  v49 = v32;

  (*(v26 + 8))(v27, v28);
  sub_100005494(v25, &qword_10000C028, &qword_100006038);
  (*(v30 + 8))(v47, v29);

  v34 = *(v0 + 8);

  return v34(v49);
}

uint64_t sub_100004164(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000041C4()
{
  objc_allocWithZone(sub_1000059F4());
  v1 = sub_1000059E4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100004238(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000042E8;

  return sub_100001C78(a1, v4, v5, v6);
}

uint64_t sub_1000042E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000043E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000044C8;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000044C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000045BC(uint64_t a1)
{
  v2 = sub_1000047E8();

  return MLHostExtension.configuration.getter(a1, v2);
}

void sub_100004608(void *a1@<X8>)
{
  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x8000000100005F40;
  a1[2] = 120000;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100004690();
  sub_1000059A4();
  return 0;
}

unint64_t sub_100004690()
{
  result = qword_10000C000;
  if (!qword_10000C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C000);
  }

  return result;
}

__n128 sub_1000046E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000046F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100004740(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000047E8()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

uint64_t sub_10000483C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004884(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1000048CC()
{
  v1 = *(v0 + 16);
  if (qword_10000C0D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005A84();
  sub_100004884(v2, qword_10000C460);
  v3 = sub_100005A64();
  v4 = sub_100005B54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Timeout after %llums, force exiting", v5, 0xCu);
  }

  exit(0);
}

uint64_t sub_1000049AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000049C4()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    sub_100004A28(&qword_10000C038, &qword_100006040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t sub_100004A28(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004A70()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100004ABC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004A28(&qword_10000C028, &qword_100006038);
    sub_100004B58(a2, &type metadata accessor for LighthouseRuntimeParams, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100004BA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004C6C(v11, 0, 0, 1, a1, a2);
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
    sub_1000054F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005448(v11);
  return v7;
}

unint64_t sub_100004C6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004D78(a5, a6);
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
    result = sub_100005BB4();
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

char *sub_100004D78(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004DC4(a1, a2);
  sub_100004EF4(&off_1000086F8);
  return v3;
}

char *sub_100004DC4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004FE0(v5, 0);
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

  result = sub_100005BB4();
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
        v10 = sub_100005B34();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004FE0(v10, 0);
        result = sub_100005BA4();
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

uint64_t sub_100004EF4(uint64_t result)
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

  result = sub_100005054(result, v11, 1, v3);
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

void *sub_100004FE0(uint64_t a1, uint64_t a2)
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

  sub_10000483C(&qword_10000C0A0, &qword_100006070);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005054(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000483C(&qword_10000C0A0, &qword_100006070);
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

unint64_t sub_100005148(uint64_t a1, uint64_t a2)
{
  sub_100005C34();
  sub_100005B24();
  v4 = sub_100005C44();

  return sub_1000051C0(a1, a2, v4);
}

unint64_t sub_1000051C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100005BE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005278(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008600;
  v6._object = a2;
  v4 = sub_100005BD4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000052C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000483C(&qword_10000C0A8, &qword_100006078);
    v3 = sub_100005BC4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005554(v4, &v13, &qword_10000C080, &qword_100006058);
      v5 = v13;
      v6 = v14;
      result = sub_100005148(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000055BC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000053F4()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_100005448(void *a1)
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

uint64_t sub_100005494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000483C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000054F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005554(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000483C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1000055BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1000055CC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for SiriTurnRestatementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriTurnRestatementError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000057A8()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100005800()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100005858()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_1000058B0()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}