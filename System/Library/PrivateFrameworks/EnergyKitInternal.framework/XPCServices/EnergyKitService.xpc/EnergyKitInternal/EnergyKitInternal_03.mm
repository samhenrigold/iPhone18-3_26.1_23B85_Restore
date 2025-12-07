uint64_t sub_100059998(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_10000275C(&qword_1000C8C78, &qword_1000AC628);
  v2[10] = swift_task_alloc();
  v3 = sub_1000A25D8();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = sub_1000A2AD8();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v2[19] = swift_task_alloc();
  v5 = sub_1000A2508();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100059B98, 0, 0);
}

uint64_t sub_100059B98()
{
  sub_1000A3AA8();
  v0[23] = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v0[24] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  v0[25] = qword_1000C95F0;

  return _swift_task_switch(sub_100059D54, v8, 0);
}

uint64_t sub_100059D54()
{
  *(v0 + 208) = *(*(v0 + 200) + 120);

  return _swift_task_switch(sub_100059DCC, 0, 0);
}

uint64_t sub_100059DCC()
{
  if (v0[26])
  {

    v1 = qword_1000C95F0;
    v0[27] = qword_1000C95F0;

    return _swift_task_switch(sub_100059F68, v1, 0);
  }

  else
  {
    v2 = sub_1000A3518();
    v3 = sub_1000A3CC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[SiteOperations] Invalid application-identifier", v4, 2u);
    }

    swift_unknownObjectRelease();

    v5 = v0[1];

    return v5(0, 0);
  }
}

uint64_t sub_100059F68()
{
  *(v0 + 520) = *(*(v0 + 216) + 144);

  return _swift_task_switch(sub_100059FD8, 0, 0);
}

uint64_t sub_100059FD8(uint64_t a1)
{
  if (*(v1 + 520))
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    *(v1 + 224) = qword_1000C96F8;

    v2 = swift_task_alloc();
    *(v1 + 232) = v2;
    *v2 = v1;
    v2[1] = sub_10005A1D8;
    v3 = *(v1 + 152);
    v4 = *(v1 + 64);

    return sub_10006CFD4(v3, v4);
  }

  else
  {
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[SiteOperations] missing entitlement", v8, 2u);
    }

    swift_unknownObjectRelease();

    v9 = *(v1 + 8);

    return v9(0, 0);
  }
}

uint64_t sub_10005A1D8()
{

  return _swift_task_switch(sub_10005A2F0, 0, 0);
}

uint64_t sub_10005A2F0()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    swift_unknownObjectRelease();
    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);

    v4 = v0[1];

    return v4(0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[22], v3, v1);
    v6 = sub_1000A24C8();
    v8 = v7;
    v0[30] = v7;
    v9 = swift_task_alloc();
    v0[31] = v9;
    *v9 = v0;
    v9[1] = sub_10005A4C4;

    return sub_100066308(v6, v8, 0);
  }
}

uint64_t sub_10005A4C4(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10005A5E4, 0, 0);
}

uint64_t sub_10005A5E4(void *a1)
{
  v2 = *(v1 + 256);
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  v4 = sub_1000A2DC8();

  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = sub_1000A2DC8();
  if (!v5 || (v6 = v5, [v5 coordinate], v8 = v7, v6, v8 == -180.0))
  {
    v9 = sub_1000A2DC8();
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v9;
    [v9 coordinate];
    v12 = v11;

    if (v12 == -180.0)
    {
      goto LABEL_20;
    }
  }

  v13 = sub_1000A2D58();
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v13;
  v16 = v14;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = sub_1000A3518();
  v19 = sub_1000A3CD8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "[SiteOperations] Site onboarded. Use site location for gridID", v20, 2u);
  }

  v21 = v3;
  v22 = sub_1000A2DC8();

  if (v22)
  {
    *(v1 + 336) = v22;
    *(v1 + 521) = 0;
    v23 = v22;
    v24 = sub_1000A3518();
    v25 = sub_1000A3CB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v22;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "[SiteOperations] Location: %@", v26, 0xCu);
      sub_100022154(v27, &unk_1000C7740, &qword_1000AB610);
    }

    v29 = *(v1 + 72);

    if (v29)
    {
      v30 = sub_1000A39B8();
      *(v1 + 344) = v30;
      sub_1000A35D8();
      v31 = swift_task_alloc();
      *(v1 + 352) = v31;
      *(v31 + 16) = v23;
      v32 = swift_task_alloc();
      *(v1 + 360) = v32;
      *v32 = v1;
      v32[1] = sub_10005BC20;

      return static SandboxExtension.withResources<A>(resources:_:)(v1 + 40, v30, &unk_1000AC638, v31, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v39 = *(v1 + 136);
      v38 = *(v1 + 144);
      v40 = *(v1 + 120);
      v41 = *(v1 + 128);
      v42 = sub_100001E38(v40, qword_1000C95F8);
      swift_beginAccess();
      (*(v41 + 16))(v38, v42, v40);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v42) = sub_1000A3DF8();
      v43 = *(v41 + 8);
      v43(v39, v40);
      v43(v38, v40);
      if (v42 & 1) != 0 && (sub_1000A2D18())
      {
        v44 = swift_task_alloc();
        *(v1 + 424) = v44;
        *v44 = v1;
        v44[1] = sub_10005C400;

        return sub_1000683FC();
      }

      else
      {
        [v23 coordinate];
        v46 = v45;
        v48 = v47;
        v49 = [objc_opt_self() sharedSession];
        *(v1 + 456) = v49;
        v50 = swift_task_alloc();
        *(v1 + 464) = v50;
        *v50 = v1;
        v50[1] = sub_10005D0E4;
        v51.n128_u64[0] = v46;
        v52.n128_u64[0] = v48;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v49, v51, v52);
      }
    }
  }

  else
  {
LABEL_20:
    v33 = sub_1000A3518();
    v34 = sub_1000A3CD8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "[SiteOperations] Site not onboarded. Use home location for gridID", v35, 2u);
    }

    *(v1 + 264) = qword_1000C96F8;

    v36 = swift_task_alloc();
    *(v1 + 272) = v36;
    *v36 = v1;
    v36[1] = sub_10005AC80;
    v37 = *(v1 + 176);

    return sub_1000716DC(v37);
  }
}

uint64_t sub_10005AC80(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_10005ADA0, 0, 0);
}

uint64_t sub_10005ADA0()
{
  v1 = *(v0 + 280);
  v2 = [v1 location];

  if (v2)
  {

    *(v0 + 336) = v2;
    *(v0 + 521) = 0;
    v3 = v2;
    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v2;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Location: %@", v6, 0xCu);
      sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
    }

    v9 = *(v0 + 72);

    if (v9)
    {
      v10 = sub_1000A39B8();
      *(v0 + 344) = v10;
      sub_1000A35D8();
      v11 = swift_task_alloc();
      *(v0 + 352) = v11;
      *(v11 + 16) = v3;
      v12 = swift_task_alloc();
      *(v0 + 360) = v12;
      *v12 = v0;
      v12[1] = sub_10005BC20;

      return static SandboxExtension.withResources<A>(resources:_:)(v0 + 40, v10, &unk_1000AC638, v11, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 136);
      v15 = *(v0 + 144);
      v17 = *(v0 + 120);
      v18 = *(v0 + 128);
      v19 = sub_100001E38(v17, qword_1000C95F8);
      swift_beginAccess();
      (*(v18 + 16))(v15, v19, v17);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v19) = sub_1000A3DF8();
      v20 = *(v18 + 8);
      v20(v16, v17);
      v20(v15, v17);
      if (v19 & 1) != 0 && (sub_1000A2D18())
      {
        v21 = swift_task_alloc();
        *(v0 + 424) = v21;
        *v21 = v0;
        v21[1] = sub_10005C400;

        return sub_1000683FC();
      }

      else
      {
        [v3 coordinate];
        v23 = v22;
        v25 = v24;
        v26 = [objc_opt_self() sharedSession];
        *(v0 + 456) = v26;
        v27 = swift_task_alloc();
        *(v0 + 464) = v27;
        *v27 = v0;
        v27[1] = sub_10005D0E4;
        v28.n128_u64[0] = v23;
        v29.n128_u64[0] = v25;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v26, v28, v29);
      }
    }
  }

  else
  {
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = sub_10005B2C0;
    v14 = *(v0 + 176);

    return sub_100050A90(v14);
  }
}

uint64_t sub_10005B2C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = a2;

  return _swift_task_switch(sub_10005B3C0, 0, 0);
}

uint64_t sub_10005B3C0()
{
  v24 = v0;
  v1 = v0[38];
  if (v1)
  {

    v2 = sub_1000A3518();
    v3 = sub_1000A3CD8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[37];
      v5 = v0[35];
      v21 = v0[22];
      v6 = v0[21];
      v19 = v0[32];
      v20 = v0[20];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000954AC(v4, v1, &v23);
      _os_log_impl(&_mh_execute_header, v2, v3, "[SiteOperations] Found confident gridID based on decay scores: %s", v7, 0xCu);
      sub_10000F7B8(v8);

      swift_unknownObjectRelease();

      (*(v6 + 8))(v21, v20);
    }

    else
    {
      v11 = v0[35];
      v12 = v0[32];
      v13 = v0[22];
      v14 = v0[20];
      v15 = v0[21];
      swift_unknownObjectRelease();

      (*(v15 + 8))(v13, v14);
    }

    v16 = v0[37];
    v17 = v0[38];

    v18 = v0[1];

    return v18(v16, v17);
  }

  else
  {
    sub_1000A2A38();
    v0[39] = sub_1000A2A28();
    v22 = (&async function pointer to dispatch thunk of HomeEnergyManager.getCurrentLocation() + async function pointer to dispatch thunk of HomeEnergyManager.getCurrentLocation());
    v9 = swift_task_alloc();
    v0[40] = v9;
    *v9 = v0;
    v9[1] = sub_10005B680;

    return v22();
  }
}

uint64_t sub_10005B680(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10005D75C;
  }

  else
  {

    *(v4 + 328) = a1;
    v5 = sub_10005B7D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005B7D4()
{
  v1 = *(v0 + 328);

  *(v0 + 336) = v1;
  *(v0 + 521) = 1;
  v2 = v1;
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v1;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Location: %@", v5, 0xCu);
    sub_100022154(v6, &unk_1000C7740, &qword_1000AB610);
  }

  v8 = *(v0 + 72);

  if (v8)
  {
    v9 = sub_1000A39B8();
    *(v0 + 344) = v9;
    sub_1000A35D8();
    v10 = swift_task_alloc();
    *(v0 + 352) = v10;
    *(v10 + 16) = v2;
    v11 = swift_task_alloc();
    *(v0 + 360) = v11;
    *v11 = v0;
    v11[1] = sub_10005BC20;

    return static SandboxExtension.withResources<A>(resources:_:)(v0 + 40, v9, &unk_1000AC638, v10, &type metadata for String);
  }

  else
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    v16 = sub_100001E38(v14, qword_1000C95F8);
    swift_beginAccess();
    (*(v15 + 16))(v12, v16, v14);
    sub_1000A2A58();
    sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
    LOBYTE(v16) = sub_1000A3DF8();
    v17 = *(v15 + 8);
    v17(v13, v14);
    v17(v12, v14);
    if (v16 & 1) != 0 && (sub_1000A2D18())
    {
      v18 = swift_task_alloc();
      *(v0 + 424) = v18;
      *v18 = v0;
      v18[1] = sub_10005C400;

      return sub_1000683FC();
    }

    else
    {
      [v2 coordinate];
      v20 = v19;
      v22 = v21;
      v23 = [objc_opt_self() sharedSession];
      *(v0 + 456) = v23;
      v24 = swift_task_alloc();
      *(v0 + 464) = v24;
      *v24 = v0;
      v24[1] = sub_10005D0E4;
      v25.n128_u64[0] = v20;
      v26.n128_u64[0] = v22;

      return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v23, v25, v26);
    }
  }
}

uint64_t sub_10005BC20()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_10005D850;
  }

  else
  {
    v2 = sub_10005BD70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005BD70()
{
  if (*(v0 + 521) == 1)
  {
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    *(v0 + 376) = qword_1000C96F0;
    *(v0 + 384) = v2;
    v3 = swift_task_alloc();
    *(v0 + 392) = v3;
    *v3 = v0;
    v3[1] = sub_10005BF34;
    v4 = *(v0 + 176);

    return sub_10004FC40(v1, v2, v4);
  }

  else
  {
    v6 = *(v0 + 336);
    v7 = *(v0 + 256);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    swift_unknownObjectRelease();

    v9 = *(v0 + 40);
    v8 = *(v0 + 48);

    v10 = *(v0 + 8);

    return v10(v9, v8);
  }
}

uint64_t sub_10005BF34()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 400) = v3;
  *v3 = v2;
  v3[1] = sub_10005C08C;
  v4 = *(v1 + 176);

  return sub_100050A90(v4);
}

uint64_t sub_10005C08C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = a2;

  return _swift_task_switch(sub_10005C18C, 0, 0);
}

uint64_t sub_10005C18C()
{
  v24 = v0;
  v1 = v0[52];
  if (v1)
  {
    v2 = v0 + 51;

    v3 = sub_1000A3518();
    v4 = sub_1000A3CD8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[51];
      v6 = v0[42];
      v20 = v0[32];
      v7 = v0[21];
      v21 = v0[20];
      v22 = v0[22];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v5, v1, &v23);
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Using confident gridID from decay scores: %s", v8, 0xCu);
      sub_10000F7B8(v9);

      swift_unknownObjectRelease();

      (*(v7 + 8))(v22, v21);
    }

    else
    {
      v12 = v0[42];
      v13 = v0[32];
      v14 = v0[22];
      v15 = v0[20];
      v16 = v0[21];
      swift_unknownObjectRelease();

      (*(v16 + 8))(v14, v15);
    }
  }

  else
  {
    v2 = v0 + 5;
    v10 = v0[42];
    v11 = v0[32];
    (*(v0[21] + 8))(v0[22], v0[20]);
    swift_unknownObjectRelease();

    v1 = v0[6];
  }

  v17 = *v2;

  v18 = v0[1];

  return v18(v17, v1);
}

uint64_t sub_10005C400(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[56] = v2;
    v7 = sub_10005C6F4;
  }

  else
  {
    v6[54] = a2;
    v6[55] = a1;
    v7 = sub_10005C534;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005C534()
{
  if (*(v0 + 521) == 1)
  {
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    *(v0 + 480) = qword_1000C96F0;
    v1 = swift_task_alloc();
    *(v0 + 488) = v1;
    *v1 = v0;
    v1[1] = sub_10005D290;
    v2 = *(v0 + 432);
    v3 = *(v0 + 440);
    v4 = *(v0 + 176);

    return sub_10004FC40(v3, v2, v4);
  }

  else
  {
    v6 = *(v0 + 336);
    v7 = *(v0 + 256);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    swift_unknownObjectRelease();

    v8 = *(v0 + 432);
    v9 = *(v0 + 440);

    v10 = *(v0 + 8);

    return v10(v9, v8);
  }
}

uint64_t sub_10005C6F4()
{
  v1 = v0[56];
  swift_errorRetain();
  v2 = sub_1000A3518();
  v3 = sub_1000A3CC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[SiteOperations] Grid Fetch Failed: %@", v4, 0xCu);
    sub_100022154(v5, &unk_1000C7740, &qword_1000AB610);
  }

  v7 = v0 + 11;

  v0[7] = v1;
  swift_errorRetain();
  sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
  if (swift_dynamicCast())
  {
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0 + 13;
    v11 = v0[11];
    v12 = v0[12];
    v13 = v0[10];
    (*(v12 + 56))(v13, 0, 1, v11);
    (*(v12 + 32))(v9, v13, v11);
    (*(v12 + 16))(v8, v9, v11);
    v14 = (*(v12 + 88))(v8, v11);
    if (v14 == enum case for NetworkError.urlNetworkError(_:))
    {
      v15 = v0[42];
      v16 = v0[21];
      v69 = v0[20];
      v72 = v0[22];
      v66 = v0[14];
      v17 = v0[12];
      v60 = v0[32];
      v63 = v0[11];
      v18 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, enum case for EnergyKitError.guidanceUnavailable(_:), v18);
      swift_willThrow();
      swift_unknownObjectRelease();

      v20 = *(v17 + 8);
      v20(v66, v63);
      (*(v16 + 8))(v72, v69);
      v20(*v10, *v7);
LABEL_18:

      v45 = v0[1];

      return v45();
    }

    if (v14 == enum case for NetworkError.internalFailure(_:))
    {
      v28 = v0[42];
      v29 = v0[21];
      v70 = v0[20];
      v73 = v0[22];
      v67 = v0[14];
      v30 = v0[12];
      v61 = v0[32];
      v64 = v0[11];
      v31 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, enum case for EnergyKitError.guidanceUnavailable(_:), v31);
      swift_willThrow();
      swift_unknownObjectRelease();

      v33 = *(v30 + 8);
      v33(v67, v64);
      (*(v29 + 8))(v73, v70);
      v33(*v10, *v7);
      goto LABEL_18;
    }

    if (v14 == enum case for NetworkError.serverFailure(_:) || v14 == enum case for NetworkError.notConnectedToInternet(_:) || v14 == enum case for NetworkError.cannotFindHost(_:))
    {
      v34 = v0[42];
      v35 = v0[32];
      v36 = v0[21];
      v74 = v0[14];
      v38 = v0[11];
      v37 = v0[12];
      v39 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      v41 = v40;
      v42 = &enum case for EnergyKitError.guidanceUnavailable(_:);
    }

    else
    {
      if (v14 != enum case for NetworkError.dataUnavailable(_:))
      {
        v47 = v0[42];
        v75 = v0[32];
        if (v14 != enum case for NetworkError.responseDecodingError(_:))
        {
          v54 = v0[21];
          v68 = v0[20];
          v71 = v0[22];
          v55 = v0[12];
          v58 = v0[11];
          v59 = v0[14];
          v65 = enum case for NetworkError.unknown(_:);
          v62 = v14;
          v56 = sub_1000A3598();
          sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
          swift_allocError();
          (*(*(v56 - 8) + 104))(v57, enum case for EnergyKitError.guidanceUnavailable(_:), v56);
          swift_willThrow();
          swift_unknownObjectRelease();

          v44 = *(v55 + 8);
          v44(v59, v58);
          (*(v54 + 8))(v71, v68);
          if (v62 == v65)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v48 = v0[21];
        v49 = v0[14];
        v50 = v0[11];
        v51 = v0[12];
        v52 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
        swift_allocError();
        (*(*(v52 - 8) + 104))(v53, enum case for EnergyKitError.guidanceUnavailable(_:), v52);
        swift_willThrow();
        v43 = v48;
        swift_unknownObjectRelease();

        (*(v51 + 8))(v49, v50);
LABEL_16:
        v44 = *(v43 + 8);
        v10 = v0 + 22;
        v7 = v0 + 20;
LABEL_17:
        v44(*v10, *v7);
        goto LABEL_18;
      }

      v34 = v0[42];
      v35 = v0[32];
      v36 = v0[21];
      v74 = v0[14];
      v38 = v0[11];
      v37 = v0[12];
      v39 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      v41 = v46;
      v42 = &enum case for EnergyKitError.unsupportedRegion(_:);
    }

    (*(*(v39 - 8) + 104))(v41, *v42, v39);
    swift_willThrow();
    v43 = v36;
    swift_unknownObjectRelease();

    (*(v37 + 8))(v74, v38);
    goto LABEL_16;
  }

  v21 = v0[42];
  v22 = v0[32];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[10];
  (*(v0[21] + 8))(v0[22], v0[20]);
  swift_unknownObjectRelease();

  (*(v24 + 56))(v25, 1, 1, v23);
  sub_100022154(v25, &qword_1000C8C78, &qword_1000AC628);

  v26 = v0[1];

  return v26(0, 0);
}

uint64_t sub_10005D0E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 472) = v2;

  if (v2)
  {
    v7 = sub_10005D220;
  }

  else
  {

    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    v7 = sub_10005C534;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005D220()
{
  *(v0 + 448) = *(v0 + 472);

  return _swift_task_switch(sub_10005C6F4, 0, 0);
}

uint64_t sub_10005D290()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 496) = v3;
  *v3 = v2;
  v3[1] = sub_10005D3E8;
  v4 = *(v1 + 176);

  return sub_100050A90(v4);
}

uint64_t sub_10005D3E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 504) = a1;
  *(v3 + 512) = a2;

  return _swift_task_switch(sub_10005D4E8, 0, 0);
}

uint64_t sub_10005D4E8()
{
  v24 = v0;
  v1 = v0[64];
  if (v1)
  {
    v2 = v0 + 63;

    v3 = sub_1000A3518();
    v4 = sub_1000A3CD8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[63];
      v6 = v0[42];
      v20 = v0[32];
      v7 = v0[21];
      v21 = v0[20];
      v22 = v0[22];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000954AC(v5, v1, &v23);
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Using confident gridID from decay scores: %s", v8, 0xCu);
      sub_10000F7B8(v9);

      swift_unknownObjectRelease();

      (*(v7 + 8))(v22, v21);
    }

    else
    {
      v12 = v0[42];
      v13 = v0[32];
      v14 = v0[22];
      v15 = v0[20];
      v16 = v0[21];
      swift_unknownObjectRelease();

      (*(v16 + 8))(v14, v15);
    }
  }

  else
  {
    v10 = v0[42];
    v11 = v0[32];
    (*(v0[21] + 8))(v0[22], v0[20]);
    swift_unknownObjectRelease();

    v2 = v0 + 55;
    v1 = v0[54];
  }

  v17 = *v2;

  v18 = v0[1];

  return v18(v17, v1);
}

uint64_t sub_10005D75C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  (*(v4 + 8))(v2, v3);
  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5(0, 0);
}

uint64_t sub_10005D850()
{
  v1 = v0[46];
  swift_errorRetain();
  v2 = sub_1000A3518();
  v3 = sub_1000A3CC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[SiteOperations] Grid Fetch Failed: %@", v4, 0xCu);
    sub_100022154(v5, &unk_1000C7740, &qword_1000AB610);
  }

  v7 = v0 + 11;

  v0[7] = v1;
  swift_errorRetain();
  sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
  if (swift_dynamicCast())
  {
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0 + 13;
    v11 = v0[11];
    v12 = v0[12];
    v13 = v0[10];
    (*(v12 + 56))(v13, 0, 1, v11);
    (*(v12 + 32))(v9, v13, v11);
    (*(v12 + 16))(v8, v9, v11);
    v14 = (*(v12 + 88))(v8, v11);
    if (v14 == enum case for NetworkError.urlNetworkError(_:))
    {
      v15 = v0[42];
      v16 = v0[21];
      v69 = v0[20];
      v72 = v0[22];
      v66 = v0[14];
      v17 = v0[12];
      v60 = v0[32];
      v63 = v0[11];
      v18 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, enum case for EnergyKitError.guidanceUnavailable(_:), v18);
      swift_willThrow();
      swift_unknownObjectRelease();

      v20 = *(v17 + 8);
      v20(v66, v63);
      (*(v16 + 8))(v72, v69);
      v20(*v10, *v7);
LABEL_18:

      v45 = v0[1];

      return v45();
    }

    if (v14 == enum case for NetworkError.internalFailure(_:))
    {
      v28 = v0[42];
      v29 = v0[21];
      v70 = v0[20];
      v73 = v0[22];
      v67 = v0[14];
      v30 = v0[12];
      v61 = v0[32];
      v64 = v0[11];
      v31 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, enum case for EnergyKitError.guidanceUnavailable(_:), v31);
      swift_willThrow();
      swift_unknownObjectRelease();

      v33 = *(v30 + 8);
      v33(v67, v64);
      (*(v29 + 8))(v73, v70);
      v33(*v10, *v7);
      goto LABEL_18;
    }

    if (v14 == enum case for NetworkError.serverFailure(_:) || v14 == enum case for NetworkError.notConnectedToInternet(_:) || v14 == enum case for NetworkError.cannotFindHost(_:))
    {
      v34 = v0[42];
      v35 = v0[32];
      v36 = v0[21];
      v74 = v0[14];
      v38 = v0[11];
      v37 = v0[12];
      v39 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      v41 = v40;
      v42 = &enum case for EnergyKitError.guidanceUnavailable(_:);
    }

    else
    {
      if (v14 != enum case for NetworkError.dataUnavailable(_:))
      {
        v47 = v0[42];
        v75 = v0[32];
        if (v14 != enum case for NetworkError.responseDecodingError(_:))
        {
          v54 = v0[21];
          v68 = v0[20];
          v71 = v0[22];
          v55 = v0[12];
          v58 = v0[11];
          v59 = v0[14];
          v65 = enum case for NetworkError.unknown(_:);
          v62 = v14;
          v56 = sub_1000A3598();
          sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
          swift_allocError();
          (*(*(v56 - 8) + 104))(v57, enum case for EnergyKitError.guidanceUnavailable(_:), v56);
          swift_willThrow();
          swift_unknownObjectRelease();

          v44 = *(v55 + 8);
          v44(v59, v58);
          (*(v54 + 8))(v71, v68);
          if (v62 == v65)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v48 = v0[21];
        v49 = v0[14];
        v50 = v0[11];
        v51 = v0[12];
        v52 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
        swift_allocError();
        (*(*(v52 - 8) + 104))(v53, enum case for EnergyKitError.guidanceUnavailable(_:), v52);
        swift_willThrow();
        v43 = v48;
        swift_unknownObjectRelease();

        (*(v51 + 8))(v49, v50);
LABEL_16:
        v44 = *(v43 + 8);
        v10 = v0 + 22;
        v7 = v0 + 20;
LABEL_17:
        v44(*v10, *v7);
        goto LABEL_18;
      }

      v34 = v0[42];
      v35 = v0[32];
      v36 = v0[21];
      v74 = v0[14];
      v38 = v0[11];
      v37 = v0[12];
      v39 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      v41 = v46;
      v42 = &enum case for EnergyKitError.unsupportedRegion(_:);
    }

    (*(*(v39 - 8) + 104))(v41, *v42, v39);
    swift_willThrow();
    v43 = v36;
    swift_unknownObjectRelease();

    (*(v37 + 8))(v74, v38);
    goto LABEL_16;
  }

  v21 = v0[42];
  v22 = v0[32];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[10];
  (*(v0[21] + 8))(v0[22], v0[20]);
  swift_unknownObjectRelease();

  (*(v24 + 56))(v25, 1, 1, v23);
  sub_100022154(v25, &qword_1000C8C78, &qword_1000AC628);

  v26 = v0[1];

  return v26(0, 0);
}

uint64_t sub_10005E240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_1000A2AD8();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005E348, 0, 0);
}

uint64_t sub_10005E348()
{
  sub_1000A3AA8();
  v0[15] = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v0[16] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  v0[17] = qword_1000C95F0;

  return _swift_task_switch(sub_10005E504, v8, 0);
}

uint64_t sub_10005E504()
{
  *(v0 + 312) = *(*(v0 + 136) + 144);

  return _swift_task_switch(sub_10005E574, 0, 0);
}

uint64_t sub_10005E574()
{
  v1 = qword_1000C95F0;
  *(v0 + 144) = qword_1000C95F0;

  return _swift_task_switch(sub_10005E5EC, v1, 0);
}

uint64_t sub_10005E5EC()
{
  *(v0 + 152) = *(*(v0 + 144) + 120);

  return _swift_task_switch(sub_10005E664, 0, 0);
}

uint64_t sub_10005E664()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 312);

    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 160) = v2;
      *v2 = v0;
      v2[1] = sub_10005E818;
      v4 = *(v0 + 56);
      v3 = *(v0 + 64);

      return sub_100066308(v4, v3, 0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = sub_1000A3518();
    v7 = sub_1000A3CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[SiteOperations] Invalid application-identifier", v8, 2u);
    }

    swift_unknownObjectRelease();
  }

  v9 = *(v0 + 8);

  return v9(0, 0);
}

uint64_t sub_10005E818(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_10005E918, 0, 0);
}

uint64_t sub_10005E918(uint64_t a1)
{
  v2 = v1[21];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000A2DC8();

    if (v4)
    {

      v5 = v3;
      sub_1000A2D58();
      v7 = v6;

      if (v7)
      {

        v8 = sub_1000A3518();
        v9 = sub_1000A3CD8();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "[SiteOperations] Site onboarded. Use site location for gridID", v10, 2u);
        }

        v11 = v5;
        v12 = sub_1000A2DC8();

        if (v12)
        {
          v1[27] = v12;
          v13 = v12;
          v14 = sub_1000A3518();
          v15 = sub_1000A3CB8();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            *v16 = 138412290;
            *(v16 + 4) = v13;
            *v17 = v12;
            v18 = v13;
            _os_log_impl(&_mh_execute_header, v14, v15, "[SiteOperations] Location: %@", v16, 0xCu);
            sub_100022154(v17, &unk_1000C7740, &qword_1000AB610);
          }

          v19 = v1[9];

          if (v19)
          {
            v20 = sub_1000A2BF8();
            v1[28] = v20;
            sub_1000A2BC8();
            v21 = swift_task_alloc();
            v1[29] = v21;
            *(v21 + 16) = v13;
            v22 = swift_task_alloc();
            v1[30] = v22;
            *v22 = v1;
            v22[1] = sub_10005F618;

            return static EKSandboxExtension.withResources<A>(resources:_:)(v1 + 5, v20, &unk_1000AC608, v21, &type metadata for String);
          }

          if (qword_1000C7560 != -1)
          {
            swift_once();
          }

          v35 = v1[12];
          v34 = v1[13];
          v36 = v1[10];
          v37 = v1[11];
          v38 = sub_100001E38(v36, qword_1000C95F8);
          swift_beginAccess();
          (*(v37 + 16))(v34, v38, v36);
          sub_1000A2A58();
          sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
          LOBYTE(v38) = sub_1000A3DF8();
          v39 = *(v37 + 8);
          v39(v35, v36);
          v39(v34, v36);
          if (v38 & 1) != 0 && (sub_1000A2D18())
          {
            v40 = swift_task_alloc();
            v1[32] = v40;
            *v40 = v1;
            v40[1] = sub_10005F80C;

            return sub_1000683FC();
          }

          [v13 coordinate];
          v42 = v41;
          v44 = v43;
          v45 = [objc_opt_self() sharedSession];
          v1[36] = v45;
          v46 = swift_task_alloc();
          v1[37] = v46;
          *v46 = v1;
          v46[1] = sub_10005FB9C;
          v30.n128_u64[0] = v42;
          v31.n128_u64[0] = v44;
          v29 = v45;

          return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v29, v30, v31);
        }
      }
    }
  }

  v23 = sub_1000A3518();
  v24 = sub_1000A3CD8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "[SiteOperations] Site note onboarded. Use home location for gridID", v25, 2u);
  }

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v26 = v1[14];
  v1[22] = qword_1000C96F8;

  sub_1000A24B8();
  v27 = sub_1000A2508();
  v1[23] = v27;
  v28 = *(v27 - 8);
  v1[24] = v28;
  v29 = (*(v28 + 48))(v26, 1, v27);
  if (v29 == 1)
  {
    __break(1u);
    return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v29, v30, v31);
  }

  v32 = swift_task_alloc();
  v1[25] = v32;
  *v32 = v1;
  v32[1] = sub_10005EFC4;
  v33 = v1[14];

  return sub_1000716DC(v33);
}

uint64_t sub_10005EFC4(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 112);
  *(*v1 + 208) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10005F140, 0, 0);
}

uint64_t sub_10005F140()
{
  v1 = *(v0 + 208);
  v2 = [v1 location];

  if (v2)
  {
    *(v0 + 216) = v2;
    v3 = v2;
    v4 = sub_1000A3518();
    v5 = sub_1000A3CB8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v3;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Location: %@", v6, 0xCu);
      sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
    }

    v9 = *(v0 + 72);

    if (v9)
    {
      v10 = sub_1000A2BF8();
      *(v0 + 224) = v10;
      sub_1000A2BC8();
      v11 = swift_task_alloc();
      *(v0 + 232) = v11;
      *(v11 + 16) = v3;
      v12 = swift_task_alloc();
      *(v0 + 240) = v12;
      *v12 = v0;
      v12[1] = sub_10005F618;

      return static EKSandboxExtension.withResources<A>(resources:_:)(v0 + 40, v10, &unk_1000AC608, v11, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 96);
      v15 = *(v0 + 104);
      v17 = *(v0 + 80);
      v18 = *(v0 + 88);
      v19 = sub_100001E38(v17, qword_1000C95F8);
      swift_beginAccess();
      (*(v18 + 16))(v15, v19, v17);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v19) = sub_1000A3DF8();
      v20 = *(v18 + 8);
      v20(v16, v17);
      v20(v15, v17);
      if (v19 & 1) != 0 && (sub_1000A2D18())
      {
        v21 = swift_task_alloc();
        *(v0 + 256) = v21;
        *v21 = v0;
        v21[1] = sub_10005F80C;

        return sub_1000683FC();
      }

      else
      {
        [v3 coordinate];
        v23 = v22;
        v25 = v24;
        v26 = [objc_opt_self() sharedSession];
        *(v0 + 288) = v26;
        v27 = swift_task_alloc();
        *(v0 + 296) = v27;
        *v27 = v0;
        v27[1] = sub_10005FB9C;
        v28.n128_u64[0] = v23;
        v29.n128_u64[0] = v25;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v26, v28, v29);
      }
    }
  }

  else
  {
    v13 = *(v0 + 168);
    swift_unknownObjectRelease();

    v14 = *(v0 + 8);

    return v14(0, 0);
  }
}

uint64_t sub_10005F618()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10005FD48;
  }

  else
  {
    v2 = sub_10005F768;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005F768()
{
  v1 = *(v0 + 168);

  swift_unknownObjectRelease();
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_10005F80C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[35] = v2;
    v7 = sub_10005F9E8;
  }

  else
  {
    v6[33] = a2;
    v6[34] = a1;
    v7 = sub_10005F940;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005F940()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 168);

  swift_unknownObjectRelease();
  v3 = *(v0 + 272);

  v4 = *(v0 + 8);

  return v4(v3, v1);
}

uint64_t sub_10005F9E8()
{
  swift_errorRetain();
  v1 = sub_1000A3518();
  v2 = sub_1000A3CC8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  v5 = v0[21];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Grid Fetch Failed: %@", v6, 0xCu);
    sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_10005FB9C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v7 = sub_10005FCD8;
  }

  else
  {

    *(v6 + 264) = a2;
    *(v6 + 272) = a1;
    v7 = sub_10005F940;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10005FCD8()
{
  *(v0 + 280) = *(v0 + 304);

  return _swift_task_switch(sub_10005F9E8, 0, 0);
}

uint64_t sub_10005FD48()
{
  swift_errorRetain();
  v1 = sub_1000A3518();
  v2 = sub_1000A3CC8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  v5 = v0[21];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Grid Fetch Failed: %@", v6, 0xCu);
    sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_10005FEFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000153A8;

  return sub_100054AA8(a1, v4);
}

uint64_t sub_10005FF9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005FFD4()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1000600D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000A2508() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000153A8;

  return sub_1000557F0(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_100060224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006026C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014898;

  return sub_100055DA0(a1, v4);
}

uint64_t sub_10006030C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100060364(uint64_t a1)
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
  v11[1] = sub_1000153A8;

  return sub_1000554B8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100060440(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000153A8;

  return sub_100054AA8(a1, v4);
}

uint64_t sub_1000604E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000153A8;

  return sub_100055234(v2, v3, v5, v4);
}

uint64_t sub_1000605A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000153A8;

  return sub_100054AA8(a1, v4);
}

uint64_t sub_100060664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 705) = a8;
  *(v8 + 704) = a7;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  v9 = sub_1000A34C8();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_1000A3498();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v11 = sub_1000A34B8();
  *(v8 + 200) = v11;
  *(v8 + 208) = *(v11 - 8);
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1000A22A8();
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1000A3938();
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  v14 = sub_1000A38F8();
  *(v8 + 328) = v14;
  *(v8 + 336) = *(v14 - 8);
  *(v8 + 344) = swift_task_alloc();
  v15 = sub_1000A3318();
  *(v8 + 352) = v15;
  *(v8 + 360) = *(v15 - 8);
  *(v8 + 368) = swift_task_alloc();
  v16 = sub_1000A3988();
  *(v8 + 376) = v16;
  *(v8 + 384) = *(v16 - 8);
  *(v8 + 392) = swift_task_alloc();
  v17 = sub_1000A2518();
  *(v8 + 400) = v17;
  *(v8 + 408) = *(v17 - 8);
  *(v8 + 416) = swift_task_alloc();
  v18 = sub_1000A2578();
  *(v8 + 424) = v18;
  *(v8 + 432) = *(v18 - 8);
  *(v8 + 440) = swift_task_alloc();
  v19 = sub_1000A2AD8();
  *(v8 + 448) = v19;
  *(v8 + 456) = *(v19 - 8);
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  sub_10000275C(&qword_1000C7AF0, qword_1000AB9C0);
  *(v8 + 480) = swift_task_alloc();
  v20 = sub_1000A25A8();
  *(v8 + 488) = v20;
  *(v8 + 496) = *(v20 - 8);
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();

  return _swift_task_switch(sub_100060BEC, 0, 0);
}

uint64_t sub_100060BEC()
{
  v1 = sub_1000A2DE8();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    goto LABEL_8;
  }

  v4 = *(v0 + 488);
  v5 = *(v0 + 496);
  v6 = *(v0 + 480);
  sub_1000A2588();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_100022154(*(v0 + 480), &qword_1000C7AF0, qword_1000AB9C0);
LABEL_8:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v7 = sub_1000A3538();
    sub_100001E38(v7, qword_1000C96B8);
    v8 = sub_1000A3518();
    v9 = sub_1000A3CC8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[WholeHomeInsights] Bad Timezone", v10, 2u);
    }

    v11 = *(v0 + 120);

    v12 = sub_100062EA0;
LABEL_13:
    v13 = v12;
    v14 = v11;
LABEL_14:

    return _swift_task_switch(v13, v14, 0);
  }

  (*(*(v0 + 496) + 32))(*(v0 + 520), *(v0 + 480), *(v0 + 488));
  v15 = sub_1000A2D58();
  *(v0 + 528) = v15;
  *(v0 + 536) = v16;
  if (!v16)
  {
LABEL_37:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v38 = sub_1000A3538();
    sub_100001E38(v38, qword_1000C96B8);
    v39 = sub_1000A3518();
    v40 = sub_1000A3CC8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "[WholeHomeInsights] Invalid Site", v41, 2u);
    }

    v11 = *(v0 + 120);

    v12 = sub_100062C78;
    goto LABEL_13;
  }

  v17 = v15;
  v18 = v16;
  v19 = sub_1000A2DF8();
  *(v0 + 544) = v19;
  *(v0 + 552) = v20;
  if (!v20)
  {
LABEL_36:

    goto LABEL_37;
  }

  v21 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_35;
  }

  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_35:

    goto LABEL_36;
  }

  v23 = sub_1000A2DC8();
  *(v0 + 560) = v23;
  if (!v23)
  {
    v36 = 0;
    v37 = 0;
LABEL_46:
    *(v0 + 616) = v37;
    *(v0 + 608) = v36;
    v62 = *(v0 + 512);
    v63 = *(v0 + 504);
    v61 = *(v0 + 488);
    v50 = *(v0 + 432);
    v51 = *(v0 + 440);
    v52 = *(v0 + 416);
    v54 = *(v0 + 400);
    v53 = *(v0 + 408);
    v68 = *(v0 + 704);
    v64 = *(v0 + 128);
    v65 = *(v0 + 424);
    v66 = *(v0 + 120);
    v55 = *(*(v0 + 496) + 16);
    v55();
    *(v0 + 624) = sub_1000A2D68();
    type metadata accessor for AMIQueryEngine(0);
    v56 = swift_allocObject();
    *(v0 + 632) = v56;
    swift_defaultActor_initialize();
    *(v56 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX) = 0;
    *(v56 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX) = 0;
    *(v56 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX) = 0;
    (*(v53 + 104))(v52, enum case for Calendar.Identifier.gregorian(_:), v54);
    sub_1000A2528();
    (*(v53 + 8))(v52, v54);
    (v55)(v63, v62, v61);
    sub_1000A2558();
    (*(v50 + 16))(v56 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar, v51, v65);
    *(v56 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_query) = v64;
    *(v56 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_stream) = v66;
    v57 = qword_1000C7568;
    v58 = v64;

    if (v68 == 1)
    {
      if (v57 != -1)
      {
        swift_once();
      }

      v14 = qword_1000C9648;
      *(v0 + 640) = qword_1000C9648;
      v59 = sub_100061844;
    }

    else
    {
      if (v57 != -1)
      {
        swift_once();
      }

      v14 = qword_1000C9648;
      *(v0 + 656) = qword_1000C9648;
      v59 = sub_100061C10;
    }

    v13 = v59;
    goto LABEL_14;
  }

  v24 = v23;
  if (sub_1000A2D18())
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 464);
    v25 = *(v0 + 472);
    v27 = *(v0 + 448);
    v28 = *(v0 + 456);
    v29 = sub_100001E38(v27, qword_1000C95F8);
    swift_beginAccess();
    v67 = *(v28 + 16);
    v67(v25, v29, v27);
    sub_1000A2A58();
    sub_100063668(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
    v30 = sub_1000A3DF8();
    v31 = *(v28 + 8);
    v31(v26, v27);
    v31(v25, v27);
    if (v30)
    {
      v33 = *(v0 + 464);
      v32 = *(v0 + 472);
      v34 = *(v0 + 448);
      v67(v32, v29, v34);
      sub_1000A2A78();
      v35 = sub_1000A3DF8();
      v31(v33, v34);
      v31(v32, v34);

      v36 = 0x4F4D5F4F53494143;
      if (v35)
      {
        v36 = 0;
      }

      v37 = 0xEA00000000004B43;
      if (v35)
      {
        v37 = 0;
      }

      goto LABEL_46;
    }
  }

  [v24 coordinate];
  v43 = v42;
  v45 = v44;
  v46 = [objc_opt_self() sharedSession];
  *(v0 + 568) = v46;
  v47 = swift_task_alloc();
  *(v0 + 576) = v47;
  *v47 = v0;
  v47[1] = sub_1000613A0;
  v48.n128_u64[0] = v43;
  v49.n128_u64[0] = v45;

  return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v46, v48, v49);
}

uint64_t sub_1000613A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 584) = a1;
  *(v4 + 592) = a2;
  *(v4 + 600) = v2;

  if (v2)
  {
    v5 = sub_100063050;
  }

  else
  {

    v5 = sub_1000614C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000614C4()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {

    v3 = *(v0 + 584);
  }

  else
  {

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v4 = sub_1000A3538();
    sub_100001E38(v4, qword_1000C96B8);
    v5 = sub_1000A3518();
    v6 = sub_1000A3CC8();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 560);
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[WholeHomeInsights] Empty Grid ID", v9, 2u);
    }

    else
    {
    }

    v3 = 0;
    v1 = 0;
  }

  *(v0 + 616) = v1;
  *(v0 + 608) = v3;
  v23 = *(v0 + 512);
  v24 = *(v0 + 504);
  v22 = *(v0 + 488);
  v10 = *(v0 + 432);
  v11 = *(v0 + 440);
  v12 = *(v0 + 416);
  v14 = *(v0 + 400);
  v13 = *(v0 + 408);
  v28 = *(v0 + 704);
  v25 = *(v0 + 128);
  v26 = *(v0 + 424);
  v27 = *(v0 + 120);
  v15 = *(*(v0 + 496) + 16);
  v15();
  *(v0 + 624) = sub_1000A2D68();
  type metadata accessor for AMIQueryEngine(0);
  v16 = swift_allocObject();
  *(v0 + 632) = v16;
  swift_defaultActor_initialize();
  *(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX) = 0;
  *(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX) = 0;
  *(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX) = 0;
  (*(v13 + 104))(v12, enum case for Calendar.Identifier.gregorian(_:), v14);
  sub_1000A2528();
  (*(v13 + 8))(v12, v14);
  (v15)(v24, v23, v22);
  sub_1000A2558();
  (*(v10 + 16))(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar, v11, v26);
  *(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_query) = v25;
  *(v16 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_stream) = v27;
  v17 = qword_1000C7568;
  v18 = v25;

  if (v28 == 1)
  {
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_1000C9648;
    *(v0 + 640) = qword_1000C9648;
    v20 = sub_100061844;
  }

  else
  {
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_1000C9648;
    *(v0 + 656) = qword_1000C9648;
    v20 = sub_100061C10;
  }

  return _swift_task_switch(v20, v19, 0);
}

uint64_t sub_100061844()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 648) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100061980, 0, 0);
}

uint64_t sub_100061980()
{
  v1 = v0[79];
  v22 = v0[78];
  v27 = v0[76];
  v28 = v0[77];
  v17 = v0[67];
  v18 = v0[68];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[44];
  v7 = v0[45];
  v19 = v0[43];
  v20 = v0[69];
  v21 = v0[42];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[33];
  v26 = v0[32];
  v16 = v0[66];
  *(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_context) = v0[81];
  v8 = sub_1000A3848();
  (*(v3 + 104))(v2, enum case for ElectricityFlowDirection.exported(_:), v4);
  v9 = sub_1000A3978();
  (*(v3 + 8))(v2, v4);
  v10 = &enum case for IntervalBlockPayload.FlowDirection.reverse(_:);
  if (v9 != v8)
  {
    v10 = &enum case for IntervalBlockPayload.FlowDirection.delivered(_:);
  }

  (*(v7 + 104))(v5, *v10, v6);
  v11 = sub_1000A3308();
  (*(v7 + 8))(v5, v6);
  *(v1 + 112) = v11;
  v12 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_subID);
  *v12 = v16;
  v12[1] = v17;
  v13 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_utilityID);
  *v13 = v18;
  v13[1] = v20;
  *(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_metersToExclude) = v22;
  sub_1000A3838();
  sub_1000A38E8();
  (*(v21 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity, v19, v23);
  sub_1000A3888();
  sub_1000A3928();
  (*(v25 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options, v24, v26);
  v14 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_gridID);
  *v14 = v27;
  v14[1] = v28;

  return _swift_task_switch(sub_100061FDC, v1, 0);
}

uint64_t sub_100061C10()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 664) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100061D4C, 0, 0);
}

uint64_t sub_100061D4C()
{
  v1 = v0[79];
  v22 = v0[78];
  v27 = v0[76];
  v28 = v0[77];
  v17 = v0[67];
  v18 = v0[68];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[44];
  v7 = v0[45];
  v19 = v0[43];
  v20 = v0[69];
  v21 = v0[42];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[33];
  v26 = v0[32];
  v16 = v0[66];
  *(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_context) = v0[83];
  v8 = sub_1000A3848();
  (*(v3 + 104))(v2, enum case for ElectricityFlowDirection.exported(_:), v4);
  v9 = sub_1000A3978();
  (*(v3 + 8))(v2, v4);
  v10 = &enum case for IntervalBlockPayload.FlowDirection.reverse(_:);
  if (v9 != v8)
  {
    v10 = &enum case for IntervalBlockPayload.FlowDirection.delivered(_:);
  }

  (*(v7 + 104))(v5, *v10, v6);
  v11 = sub_1000A3308();
  (*(v7 + 8))(v5, v6);
  *(v1 + 112) = v11;
  v12 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_subID);
  *v12 = v16;
  v12[1] = v17;
  v13 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_utilityID);
  *v13 = v18;
  v13[1] = v20;
  *(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_metersToExclude) = v22;
  sub_1000A3838();
  sub_1000A38E8();
  (*(v21 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity, v19, v23);
  sub_1000A3888();
  sub_1000A3928();
  (*(v25 + 32))(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options, v24, v26);
  v14 = (v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_gridID);
  *v14 = v27;
  v14[1] = v28;

  return _swift_task_switch(sub_100061FDC, v1, 0);
}

uint64_t sub_100061FDC()
{
  v1 = v0[79];
  v2 = v0[77];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  type metadata accessor for InsightBucketBoundaries();
  sub_1000A3868();
  sub_10004B42C(v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity, v1 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar, 0, v3);
  v49 = *(v6 + 8);
  v49(v4, v5);
  if (v2 && (v7 = v0[79], v8 = v0[39], v9 = v0[40], v10 = v0[32], v11 = v0[33], , v12 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options, swift_beginAccess(), (*(v11 + 16))(v9, v7 + v12, v10), sub_1000A3908(), sub_100063668(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options), LOBYTE(v7) = sub_1000A3DF8(), v13 = *(v11 + 8), v13(v8, v10), v13(v9, v10), (v7 & 1) != 0))
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v14 = sub_1000A3538();
    sub_100001E38(v14, qword_1000C96B8);
    v15 = sub_1000A3518();
    v16 = sub_1000A3CA8();
    v17 = os_log_type_enabled(v15, v16);
    v50 = v0[64];
    v18 = v0[62];
    v47 = v0[61];
    v19 = v0[54];
    v20 = v0[55];
    v21 = v0[53];
    v22 = v0[31];
    v23 = v0[28];
    if (v17)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Valid cleanliness options", v24, 2u);
    }

    v49(v22, v23);
    (*(v19 + 8))(v20, v21);
    v33 = *(v18 + 8);
    v33(v50, v47);
  }

  else
  {
    v46 = v0[61];
    v48 = v0[64];
    v44 = v0[55];
    v45 = v0[62];
    v42 = v0[54];
    v43 = v0[53];
    v25 = v0[39];
    v37 = v0[40];
    v51 = v0[38];
    v26 = v0[35];
    v27 = v0[36];
    v35 = v0[37];
    v28 = v0[33];
    v36 = v0[34];
    v29 = v0[32];
    v38 = v0[28];
    v39 = v0[31];
    v30 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
    v40 = v0[79];
    v41 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
    swift_beginAccess();
    v31 = *(v28 + 16);
    v31(v25, v40 + v30, v29);
    sub_1000A3908();
    v31(v35, v25, v29);
    v31(v26, v25, v29);
    v31(v36, v51, v29);
    sub_100063668(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
    sub_1000A3E18();
    sub_1000A3E08();
    v32 = *(v28 + 8);
    v32(v27, v29);
    v32(v51, v29);
    v32(v25, v29);
    v49(v39, v38);
    (*(v42 + 8))(v44, v43);
    v33 = *(v45 + 8);
    v33(v48, v46);
    swift_beginAccess();
    (*(v28 + 40))(v40 + v41, v37, v29);
    swift_endAccess();
  }

  v0[84] = v33;

  return _swift_task_switch(sub_100062514, 0, 0);
}

uint64_t sub_100062514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = v3;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v3 + 704);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    if (v7)
    {
      v10 = 0x65746176697270;
    }

    else
    {
      v10 = 0x646572616873;
    }

    if (v7)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    v12 = sub_1000954AC(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "[WholeHomeInsights] Processing %s store", v8, 0xCu);
    sub_10000F7B8(v9);
  }

  sub_1000A2B58();
  sub_1000A34A8();
  sub_1000A3478();
  v13 = sub_1000A34A8();
  v14 = sub_1000A3D48();
  if (sub_1000A3DB8())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1000A3488();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v16, "StreamProcess", "", v15, 2u);
  }

  v18 = *(v3 + 184);
  v17 = *(v3 + 192);
  v19 = *(v3 + 160);
  v20 = *(v3 + 168);

  (*(v20 + 16))(v18, v17, v19);
  sub_1000A34F8();
  swift_allocObject();
  *(v3 + 680) = sub_1000A34E8();
  v21 = swift_task_alloc();
  *(v3 + 688) = v21;
  *v21 = v3;
  v21[1] = sub_1000627E0;
  v22 = *(v3 + 705);

  return sub_100041FF0(v22);
}

uint64_t sub_1000627E0()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_10006341C;
  }

  else
  {
    v2 = sub_1000628F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000628F4()
{
  v1 = *(v0 + 128);
  v2 = sub_1000A34A8();
  sub_1000A34D8();
  v3 = sub_1000A3D38();
  if (sub_1000A3DB8())
  {
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 136);

    sub_1000A3508();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = 0;
      v8 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
      v8 = "granularity: %lu";
      v7 = 1;
    }

    v9 = *(v0 + 128);
    v10 = swift_slowAlloc();
    *v10 = 0;
    *(v10 + 1) = v7;
    *(v10 + 2) = 2048;
    *(v10 + 4) = sub_1000A3838();

    v11 = sub_1000A3488();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v11, "StreamProcess", v8, v10, 0xCu);
  }

  else
  {
  }

  v23 = *(v0 + 520);
  v24 = *(v0 + 672);
  v22 = *(v0 + 488);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 168);
  v17 = *(v0 + 176);
  v18 = *(v0 + 160);

  v19 = *(v16 + 8);
  v19(v17, v18);
  v19(v15, v18);
  (*(v12 + 8))(v13, v14);
  v24(v23, v22);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100062C78()
{
  sub_10001833C();

  return _swift_task_switch(sub_100062CE0, 0, 0);
}

uint64_t sub_100062CE0()
{
  (*(v0[62] + 8))(v0[65], v0[61]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100062EA0()
{
  sub_10001833C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100063050()
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v1 = sub_1000A3538();
  sub_100001E38(v1, qword_1000C96B8);
  swift_errorRetain();
  v2 = sub_1000A3518();
  v3 = sub_1000A3CC8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 560);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[WholeHomeInsights] Failed to get Grid ID %@", v6, 0xCu);
    sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  *(v0 + 608) = 0u;
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v21 = *(v0 + 488);
  v9 = *(v0 + 432);
  v10 = *(v0 + 440);
  v11 = *(v0 + 416);
  v13 = *(v0 + 400);
  v12 = *(v0 + 408);
  v27 = *(v0 + 704);
  v24 = *(v0 + 128);
  v25 = *(v0 + 424);
  v26 = *(v0 + 120);
  v14 = *(*(v0 + 496) + 16);
  v14();
  *(v0 + 624) = sub_1000A2D68();
  type metadata accessor for AMIQueryEngine(0);
  v15 = swift_allocObject();
  *(v0 + 632) = v15;
  swift_defaultActor_initialize();
  *(v15 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX) = 0;
  *(v15 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX) = 0;
  *(v15 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX) = 0;
  (*(v12 + 104))(v11, enum case for Calendar.Identifier.gregorian(_:), v13);
  sub_1000A2528();
  (*(v12 + 8))(v11, v13);
  (v14)(v23, v22, v21);
  sub_1000A2558();
  (*(v9 + 16))(v15 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar, v10, v25);
  *(v15 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_query) = v24;
  *(v15 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_stream) = v26;
  v16 = qword_1000C7568;
  v17 = v24;

  if (v27 == 1)
  {
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = qword_1000C9648;
    *(v0 + 640) = qword_1000C9648;
    v19 = sub_100061844;
  }

  else
  {
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = qword_1000C9648;
    *(v0 + 656) = qword_1000C9648;
    v19 = sub_100061C10;
  }

  return _swift_task_switch(v19, v18, 0);
}

uint64_t sub_10006341C()
{
  v1 = v0[65];
  v11 = v0[84];
  v10 = v0[61];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v7 = v0[20];
  v6 = v0[21];

  (*(v6 + 8))(v4, v7);
  (*(v3 + 8))(v2, v5);
  v11(v1, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100063668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100063700(void **a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v5 = sub_1000A3538();
  sub_100001E38(v5, qword_1000C96B8);
  v6 = sub_1000A3518();
  v7 = sub_1000A3CC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[EnergySiteQuery] Processing Private Store", v8, 2u);
  }

  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100068338;
  *(v11 + 24) = v10;
  v15[4] = sub_1000683BC;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000636D8;
  v15[3] = &unk_1000BFD00;
  v12 = _Block_copy(v15);
  v13 = v9;

  [v13 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

id sub_100063920(void **a1, uint64_t *a2)
{
  v4 = a1;
  v5 = *a1;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 currentQueryGenerationToken];
  v45 = 0;
  v9 = [v7 setQueryGenerationFromToken:v8 error:&v45];

  v10 = v45;
  if (v9)
  {
    sub_1000A2CB8();
    v11 = v10;
    v12 = sub_1000A2CA8();
    [v12 setReturnsDistinctResults:1];
    sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000AC0E0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = 0x444965746973;
    *(v13 + 40) = 0xE600000000000000;
    isa = sub_1000A3B48().super.isa;

    [v12 setPropertiesToFetch:isa];

    [v12 setFetchBatchSize:10];
    v15 = *v4;
    v23 = sub_1000A3D68();

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v24 = sub_1000A3538();
    sub_100001E38(v24, qword_1000C96B8);

    v25 = sub_1000A3518();
    LOBYTE(v26) = sub_1000A3CA8();
    v27 = v23 >> 62;
    if (!os_log_type_enabled(v25, v26))
    {

      goto LABEL_15;
    }

    v2 = swift_slowAlloc();
    *v2 = 134217984;
    if (v27)
    {
      goto LABEL_31;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000A3EC8())
    {
      *(v2 + 4) = i;

      _os_log_impl(&_mh_execute_header, v25, v26, "[EnergySiteQuery] EnergySite count %ld", v2, 0xCu);

LABEL_15:
      if (v27)
      {
        v26 = sub_1000A3EC8();
        if (!v26)
        {
LABEL_27:

          v30 = &_swiftEmptyArrayStorage;
          goto LABEL_28;
        }
      }

      else
      {
        v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_27;
        }
      }

      v42 = v12;
      v43 = a2;
      v44 = v4;
      v45 = &_swiftEmptyArrayStorage;
      v25 = &v45;
      sub_10004A2B8(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_31:
      ;
    }

    v29 = 0;
    v30 = v45;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v31 = sub_1000A3EA8();
      }

      else
      {
        v31 = *(v23 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = [v31 siteID];
      v34 = sub_1000A3A88();
      v36 = v35;

      v45 = v30;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        sub_10004A2B8((v37 > 1), v38 + 1, 1);
        v30 = v45;
      }

      ++v29;
      v30[2] = v38 + 1;
      v39 = &v30[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
    }

    while (v26 != v29);

    a2 = v43;
    v4 = v44;
    v12 = v42;
LABEL_28:
    v40 = sub_1000682A0(v30);

    *a2 = v40;
  }

  else
  {
    v16 = v45;
    sub_1000A2358();

    swift_willThrow();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v17 = sub_1000A3538();
    sub_100001E38(v17, qword_1000C96B8);
    swift_errorRetain();
    v18 = sub_1000A3518();
    v19 = sub_1000A3CA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "[EnergySiteQuery] EnergySite not found in Private Store due to %@", v20, 0xCu);
      sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }
  }

  return [*v4 refreshAllObjects];
}

uint64_t sub_100063EB0(void **a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v5 = sub_1000A3538();
  sub_100001E38(v5, qword_1000C96B8);
  v6 = sub_1000A3518();
  v7 = sub_1000A3CC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[EnergySiteQuery] Processing Shared Store", v8, 2u);
  }

  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100067320;
  *(v11 + 24) = v10;
  v15[4] = sub_1000683BC;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000636D8;
  v15[3] = &unk_1000BFC88;
  v12 = _Block_copy(v15);
  v13 = v9;

  [v13 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

id sub_1000640D0(void **a1, uint64_t a2)
{
  v4 = a1;
  v5 = *a1;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 currentQueryGenerationToken];
  v45 = 0;
  v9 = [v7 setQueryGenerationFromToken:v8 error:&v45];

  v10 = v45;
  if (v9)
  {
    sub_1000A2CB8();
    v11 = v10;
    v12 = sub_1000A2CA8();
    [v12 setReturnsDistinctResults:1];
    sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000AC0E0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = 0x444965746973;
    *(v13 + 40) = 0xE600000000000000;
    isa = sub_1000A3B48().super.isa;

    [v12 setPropertiesToFetch:isa];

    [v12 setFetchBatchSize:10];
    v15 = *v4;
    v23 = sub_1000A3D68();

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v24 = sub_1000A3538();
    sub_100001E38(v24, qword_1000C96B8);

    v25 = sub_1000A3518();
    LOBYTE(v26) = sub_1000A3CA8();
    v27 = v23 >> 62;
    if (!os_log_type_enabled(v25, v26))
    {

      goto LABEL_15;
    }

    v2 = swift_slowAlloc();
    *v2 = 134217984;
    if (v27)
    {
      goto LABEL_31;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000A3EC8())
    {
      *(v2 + 4) = i;

      _os_log_impl(&_mh_execute_header, v25, v26, "[EnergySiteQuery]EnergySite count %ld", v2, 0xCu);

LABEL_15:
      if (v27)
      {
        v26 = sub_1000A3EC8();
        if (!v26)
        {
LABEL_27:

          v30 = &_swiftEmptyArrayStorage;
          goto LABEL_28;
        }
      }

      else
      {
        v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_27;
        }
      }

      v42 = v12;
      v43 = a2;
      v44 = v4;
      v45 = &_swiftEmptyArrayStorage;
      v25 = &v45;
      sub_10004A2B8(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_31:
      ;
    }

    v29 = 0;
    v30 = v45;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v31 = sub_1000A3EA8();
      }

      else
      {
        v31 = *(v23 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = [v31 siteID];
      v34 = sub_1000A3A88();
      v36 = v35;

      v45 = v30;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        sub_10004A2B8((v37 > 1), v38 + 1, 1);
        v30 = v45;
      }

      ++v29;
      v30[2] = v38 + 1;
      v39 = &v30[2 * v38];
      v39[4] = v34;
      v39[5] = v36;
    }

    while (v26 != v29);

    v4 = v44;
    v12 = v42;
LABEL_28:
    v40 = sub_1000682A0(v30);

    sub_100064660(v40);
  }

  else
  {
    v16 = v45;
    sub_1000A2358();

    swift_willThrow();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v17 = sub_1000A3538();
    sub_100001E38(v17, qword_1000C96B8);
    swift_errorRetain();
    v18 = sub_1000A3518();
    v19 = sub_1000A3CA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "[EnergySiteQuery] EnergySite not found in Shared Store due to %@", v20, 0xCu);
      sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }
  }

  return [*v4 refreshAllObjects];
}

uint64_t sub_100064660(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100095D34(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

id sub_100064764(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = [objc_opt_self() currentQueryGenerationToken];
  v55 = 0;
  v9 = [a1 setQueryGenerationFromToken:v8 error:&v55];

  v10 = v55;
  if (v9)
  {
    sub_1000A2CB8();
    v11 = v10;
    v12 = sub_1000A2CA8();
    [v12 setResultType:0];
    sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
    sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000AC0E0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000321D0();
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;

    v14 = sub_1000A3C98();
    [v12 setPredicate:v14];
    v15 = objc_allocWithZone(NSSortDescriptor);
    v16 = sub_1000A3A78();
    v17 = [v15 initWithKey:v16 ascending:1];

    sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000ABC60;
    *(v18 + 32) = v17;
    sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
    v19 = v17;
    isa = sub_1000A3B48().super.isa;

    [v12 setSortDescriptors:isa];

    [v12 setFetchBatchSize:100];
    v29 = sub_1000A3D68();
    v54 = a4;
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v30 = sub_1000A3538();
    sub_100001E38(v30, qword_1000C96B8);

    v31 = sub_1000A3518();
    v32 = sub_1000A3CA8();
    v33 = v29 >> 62;
    if (!os_log_type_enabled(v31, v32))
    {

      goto LABEL_16;
    }

    v52 = v14;
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    v14 = v19;
    if (v33)
    {
      goto LABEL_32;
    }

    v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      *(v34 + 4) = v35;
      v36 = v34;

      _os_log_impl(&_mh_execute_header, v31, v32, "[EnergySiteQuery] EnergySite count %ld", v36, 0xCu);

      v19 = v14;
      v14 = v52;
LABEL_16:
      if (v33)
      {
        v34 = sub_1000A3EC8();
        if (!v34)
        {
LABEL_29:
        }
      }

      else
      {
        v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v34)
        {
          goto LABEL_29;
        }
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(v29 + 32);
        goto LABEL_21;
      }

      __break(1u);
LABEL_32:
      v49 = v34;
      v35 = sub_1000A3EC8();
      v34 = v49;
    }

    v37 = sub_1000A3EA8();
LABEL_21:
    v38 = v37;
    if (v33)
    {
      v39 = sub_1000A3EC8();
    }

    else
    {
      v39 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v38;
    if (v39 == 1)
    {
      v51 = v19;
      sub_1000A2C68();
      v40 = [v38 siteID];
      sub_1000A3A88();

      v41 = [v38 metadata];
      v42 = sub_1000A23B8();
      v50 = v43;

      v44 = [v38 zoneName];
      sub_1000A3A88();

      v45 = sub_1000A2C58();

      sub_10003228C(v42, v50);

      v46 = v54;
      v47 = *v54;
      *v54 = v45;

      v19 = v51;
    }

    else
    {
      v46 = v54;
    }

    v48 = objc_autoreleasePoolPush();
    sub_100064EF8(v53, v29, v46, &v55);

    objc_autoreleasePoolPop(v48);
  }

  else
  {
    v21 = v55;
    sub_1000A2358();

    swift_willThrow();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v22 = sub_1000A3538();
    sub_100001E38(v22, qword_1000C96B8);
    swift_errorRetain();
    v23 = sub_1000A3518();
    v24 = sub_1000A3CA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "[EnergySiteQuery]  EnergySite not found in Store due to %@", v25, 0xCu);
      sub_100022154(v26, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }
  }

  return [a1 refreshAllObjects];
}

void sub_100064EF8(void *a1, unint64_t a2, void **a3, void *a4)
{
  v76 = a4;
  v73 = a3;
  v78 = sub_1000A33D8();
  v88 = *(v78 - 8);
  __chkstk_darwin(v88[8]);
  v87 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v72 - v7;
  v8 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(*(*(v8 - 8) + 64));
  v85 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v95 = &v72 - v10;
  v11 = sub_1000A3438();
  __chkstk_darwin(*(*(v11 - 8) + 64));
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = sub_1000A2C98();
  v75 = *(v14 - 8);
  __chkstk_darwin(*(v75 + 64));
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v72 - v17;
  v74 = a1;
  v19 = [a1 metadata];
  v20 = sub_1000A23B8();
  v22 = v21;

  v93 = v20;
  v94 = v22;
  v23 = v14;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  sub_1000A3428();
  v24 = sub_1000672C0();
  v25 = v23;
  v26 = v89;
  sub_1000A3468();
  v27 = v76;
  v28 = v26;
  if (v26)
  {
LABEL_34:
    *v27 = v28;
    return;
  }

  v81 = v16;
  v82 = v13;
  v84 = v18;
  v29 = a2 >> 62;
  if (a2 >> 62)
  {
    v36 = sub_1000A3EC8();
    if (v36 < 1)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v25 = v36;
    if (sub_1000A3EC8() < 1)
    {
LABEL_16:
      __break(1u);
LABEL_17:
      v30 = &off_1000C6000;
      if ((a2 & 0xC000000000000001) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_5;
    }

    if (sub_1000A3EC8() >= v25)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = &off_1000C6000;
  if (!v25)
  {
    goto LABEL_14;
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v25 != 1)
  {
    sub_1000A2CB8();

    v31 = 1;
    do
    {
      v32 = v31 + 1;
      sub_1000A3E98(v31);
      v31 = v32;
    }

    while (v25 != v32);
    if (!v29)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (!v29)
  {
LABEL_9:
    v33 = a2 & 0xFFFFFFFFFFFFFF8;
    v34 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v35 = 1;
    goto LABEL_20;
  }

LABEL_19:

  v33 = sub_1000A3ED8();
  v34 = v37;
  v35 = v38;
  v25 = v39 >> 1;
LABEL_20:
  v40 = v75;
  v41 = v88;
  v89 = 0;
  v83 = v24;
  v72 = v33;
  swift_unknownObjectRetain();
  if (v25 == v35)
  {
    v42 = v84;
LABEL_22:
    swift_unknownObjectRelease_n();
    v43 = v89;
    v44 = sub_1000A3458();
    if (!v43)
    {
      v65 = v44;
      v66 = v45;
      v80 = v23;
      sub_1000A2C68();
      v67 = v74;
      v68 = [v74 siteID];
      sub_1000A3A88();

      v69 = [v67 zoneName];
      sub_1000A3A88();

      v70 = sub_1000A2C58();
      (*(v75 + 8))(v84, v80);
      sub_10003228C(v65, v66);

      v71 = *v73;
      *v73 = v70;

      return;
    }

    (*(v75 + 8))(v42, v23);
    v27 = v76;
    v28 = v43;
    goto LABEL_34;
  }

  v77 = (v41 + 1);
  v79 = (v40 + 8);
  v80 = v23;
  v46 = v25 - v35;
  if (v25 <= v35)
  {
    v47 = v35;
  }

  else
  {
    v47 = v25;
  }

  v48 = v47 - v35;
  v49 = (v34 + 8 * v35);
  while (v48)
  {
    v53 = *v49;
    v54 = [v53 v30[344]];
    v55 = sub_1000A23B8();
    v56 = v23;
    v58 = v57;

    v93 = v55;
    v94 = v58;
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    sub_1000A3428();
    v59 = v81;
    v60 = v89;
    sub_1000A3468();
    v28 = v60;
    if (v60)
    {

      swift_unknownObjectRelease_n();
      (*v79)(v84, v56);
      v27 = v76;
      goto LABEL_34;
    }

    v88 = objc_autoreleasePoolPush();
    sub_1000A2C88();
    v61 = v86;
    sub_1000A33B8();
    v62 = v84;
    sub_1000A33C8();
    (*v77)(v61, v78);
    sub_1000A2C88();
    v63 = v87;
    sub_1000A33B8();
    v89 = 0;
    v64 = v85;
    sub_1000A33C8();
    (*v77)(v63, v78);
    sub_1000A2C68();
    v42 = v62;
    v50 = v59;
    v51 = v95;
    sub_1000A2C48();
    sub_100022154(v64, &qword_1000C7F58, &qword_1000AC770);
    sub_100022154(v51, &qword_1000C7F58, &qword_1000AC770);
    objc_autoreleasePoolPop(v88);

    v52 = v50;
    v23 = v80;
    (*v79)(v52, v80);
    --v48;
    ++v49;
    --v46;
    v30 = &off_1000C6000;
    if (!v46)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void *sub_1000657CC(uint64_t a1, uint64_t a2)
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

  sub_10000275C(&qword_1000C88F8, &unk_1000AC790);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_100065850(uint64_t a1, uint64_t a2)
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

  sub_10000275C(&qword_1000C8DE0, &qword_1000AC7A0);
  v4 = *(sub_1000A2A18() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
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

void *sub_10006594C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10006596C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_10006599C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100065AF4(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v39 = sub_1000A2A18();
  v41 = *(v39 - 8);
  __chkstk_darwin(*(v41 + 64));
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v38 = &v32 - v10;
  v11 = a4 + 56;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v30 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v11;
    *(a1 + 16) = ~v12;
    *(a1 + 24) = v30;
    *(a1 + 32) = v14;
    return a3;
  }

  if (!a3)
  {
    v30 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = -1 << *(a4 + 32);
    v33 = a1;
    result = 0;
    v15 = 0;
    v16 = (63 - v12) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    a1 = 1;
    v36 = a4 + 56;
    v37 = a3;
    v17 = v38;
    while (v14)
    {
      v43 = a2;
LABEL_15:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v42 = v15;
      v21 = a4;
      v22 = *(a4 + 48);
      v23 = v40;
      v24 = v41;
      v25 = *(v41 + 72);
      v26 = v39;
      (*(v41 + 16))(v40, v22 + v25 * (v20 | (v15 << 6)), v39);
      v27 = *(v24 + 32);
      v27(v17, v23, v26);
      v28 = v43;
      v27(v43, v17, v26);
      a3 = v37;
      if (a1 == v37)
      {
        v12 = v32;
        a1 = v33;
        a4 = v21;
        v30 = v42;
        v11 = v36;
        goto LABEL_25;
      }

      a2 = &v28[v25];
      result = a1;
      v29 = __OFADD__(a1++, 1);
      a4 = v21;
      v15 = v42;
      v11 = v36;
      if (v29)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v18 = v15;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v43 = a2;
        v15 = v19;
        goto LABEL_15;
      }
    }

    v14 = 0;
    if (v16 <= v15 + 1)
    {
      v31 = v15 + 1;
    }

    else
    {
      v31 = v16;
    }

    v30 = v31 - 1;
    a3 = result;
    v12 = v32;
    a1 = v33;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100065DB4()
{
  *(v0 + 16) = &_swiftEmptySetSingleton;
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 32) = qword_1000C9648;

  return _swift_task_switch(sub_100065E58, v1, 0);
}

uint64_t sub_100065E58()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 40) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100065F94, 0, 0);
}

uint64_t sub_100065F94()
{
  *(v0 + 24) = *(v0 + 40);
  v1 = objc_autoreleasePoolPush();
  sub_100063700((v0 + 24), v0 + 16, v2);
  *(v0 + 48) = 0;
  v3 = *(v0 + 32);
  objc_autoreleasePoolPop(v1);

  return _swift_task_switch(sub_100066060, v3, 0);
}

uint64_t sub_100066060()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 56) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10006619C, 0, 0);
}

void sub_10006619C()
{
  v12 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  *(v0 + 24) = v1;
  v3 = objc_autoreleasePoolPush();
  sub_100063EB0((v0 + 24), v0 + 16, v4);
  objc_autoreleasePoolPop(v3);
  if (!v2)
  {
    v5 = *(v0 + 16);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = sub_1000657CC(*(v5 + 16), 0);
      v8 = sub_10006599C(&v11, v7 + 4, v6, v5);
      v9 = v11;

      sub_100067318(v9);
      if (v8 != v6)
      {
        __break(1u);
        return;
      }
    }

    else
    {

      v7 = &_swiftEmptyArrayStorage;
    }

    v10 = *(v0 + 8);

    v10(v7);
  }
}

uint64_t sub_100066308(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 256) = a3;
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  sub_10000275C(&qword_1000C8DC8, &qword_1000AC768);
  *(v3 + 144) = swift_task_alloc();
  sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  sub_10000275C(&qword_1000C8DD0, &unk_1000AC778);
  *(v3 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100066478, 0, 0);
}

uint64_t sub_100066478()
{
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 232) = qword_1000C9648;

  return _swift_task_switch(sub_100066510, v1, 0);
}

uint64_t sub_100066510()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 240) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10006664C, 0, 0);
}

uint64_t sub_10006664C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 240);
  v4 = objc_autoreleasePoolPush();
  *(v0 + 112) = 0;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v0 + 112;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100067264;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_100067270;
  *(v0 + 56) = v6;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1000636D8;
  *(v0 + 40) = &unk_1000BFB98;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  [v8 performBlockAndWait:v7];
  _Block_release(v7);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v12 = *(v0 + 240);
  v13 = *(v0 + 112);

  objc_autoreleasePoolPop(v4);
  if (!v13)
  {
    v10 = *(v0 + 232);
    v9 = sub_100066BD4;
    v11 = 0;

    return _swift_task_switch(v9, v10, v11);
  }

  v34 = v13;
  if (*(v0 + 256) == 1)
  {
    v14 = *(v0 + 216);
    v15 = *(v0 + 224);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v28 = *(v0 + 176);
    v29 = *(v0 + 168);
    v30 = *(v0 + 160);
    v31 = *(v0 + 152);
    v32 = *(v0 + 144);
    v33 = *(v0 + 240);
    sub_1000A2DB8();
    sub_1000A2DD8();
    sub_1000A2D48();
    sub_1000A2D98();
    v20 = sub_1000A2C78();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    v21 = sub_1000A2498();
    v22 = *(*(v21 - 8) + 56);
    v22(v14, 1, 1, v21);
    v22(v16, 1, 1, v21);
    v22(v17, 1, 1, v21);
    v22(v18, 1, 1, v21);
    v22(v19, 1, 1, v21);
    v22(v28, 1, 1, v21);
    v22(v29, 1, 1, v21);
    v22(v30, 1, 1, v21);
    v22(v31, 1, 1, v21);
    v23 = sub_1000A3418();
    (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
    v24 = objc_allocWithZone(sub_1000A2E08());
    v25 = sub_1000A2DA8();

    v34 = v25;
  }

  else
  {
  }

  v26 = *(v0 + 8);

  return v26(v34);
}

uint64_t sub_100066BD4()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 248) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100066D10, 0, 0);
}

uint64_t sub_100066D10()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  v4 = v1;
  v5 = objc_autoreleasePoolPush();
  *(v0 + 120) = 0;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v0 + 120;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000683D4;
  *(v7 + 24) = v6;
  *(v0 + 96) = sub_1000683BC;
  *(v0 + 104) = v7;
  *(v0 + 64) = _NSConcreteStackBlock;
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1000636D8;
  *(v0 + 88) = &unk_1000BFC10;
  v8 = _Block_copy((v0 + 64));

  v9 = v4;

  [v9 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 120);

    objc_autoreleasePoolPop(v5);
    if (v12)
    {
      v32 = v12;
      if (*(v0 + 256) == 1)
      {
        v13 = *(v0 + 216);
        v14 = *(v0 + 224);
        v16 = *(v0 + 200);
        v15 = *(v0 + 208);
        v18 = *(v0 + 184);
        v17 = *(v0 + 192);
        v26 = *(v0 + 176);
        v27 = *(v0 + 168);
        v28 = *(v0 + 160);
        v29 = *(v0 + 152);
        v30 = *(v0 + 144);
        v31 = *(v0 + 248);
        sub_1000A2DB8();
        sub_1000A2DD8();
        sub_1000A2D48();
        sub_1000A2D98();
        v19 = sub_1000A2C78();
        (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
        v20 = sub_1000A2498();
        v21 = *(*(v20 - 8) + 56);
        v21(v13, 1, 1, v20);
        v21(v15, 1, 1, v20);
        v21(v16, 1, 1, v20);
        v21(v17, 1, 1, v20);
        v21(v18, 1, 1, v20);
        v21(v26, 1, 1, v20);
        v21(v27, 1, 1, v20);
        v21(v28, 1, 1, v20);
        v21(v29, 1, 1, v20);
        v22 = sub_1000A3418();
        (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
        v23 = objc_allocWithZone(sub_1000A2E08());
        v24 = sub_1000A2DA8();

        v32 = v24;
      }

      else
      {
      }
    }

    else
    {

      v32 = 0;
    }

    v25 = *(v0 + 8);

    return v25(v32);
  }

  return result;
}

uint64_t sub_100067298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000672C0()
{
  result = qword_1000C8DD8;
  if (!qword_1000C8DD8)
  {
    sub_1000A2C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C8DD8);
  }

  return result;
}

uint64_t sub_100067328(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 264) = a3;
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  sub_10000275C(&qword_1000C8DC8, &qword_1000AC768);
  *(v3 + 144) = swift_task_alloc();
  sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  sub_10000275C(&qword_1000C8DD0, &unk_1000AC778);
  *(v3 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100067498, 0, 0);
}

uint64_t sub_100067498()
{
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 232) = qword_1000C9648;

  return _swift_task_switch(sub_100067530, v1, 0);
}

uint64_t sub_100067530()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 240) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10006766C, 0, 0);
}

uint64_t sub_10006766C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 240);
  v4 = objc_autoreleasePoolPush();
  *(v0 + 112) = 0;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v0 + 112;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000683D4;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1000683BC;
  *(v0 + 56) = v6;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1000636D8;
  *(v0 + 40) = &unk_1000BFD78;
  v7 = _Block_copy((v0 + 16));
  v8 = v3;

  [v8 performBlockAndWait:v7];
  _Block_release(v7);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v12 = *(v0 + 240);
  v13 = *(v0 + 112);
  *(v0 + 248) = v13;

  objc_autoreleasePoolPop(v4);
  if (!v13)
  {
    v10 = *(v0 + 232);
    v9 = sub_100067C04;
    v11 = 0;

    return _swift_task_switch(v9, v10, v11);
  }

  v35 = v13;
  if (*(v0 + 264) == 1)
  {
    v14 = *(v0 + 216);
    v15 = *(v0 + 224);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v29 = *(v0 + 176);
    v30 = *(v0 + 168);
    v31 = *(v0 + 160);
    v32 = *(v0 + 152);
    v33 = *(v0 + 144);
    v34 = *(v0 + 240);
    sub_1000A2DB8();
    sub_1000A2DD8();
    sub_1000A2D48();
    sub_1000A2D98();
    v20 = sub_1000A2C78();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
    v21 = sub_1000A2498();
    v22 = *(*(v21 - 8) + 56);
    v22(v14, 1, 1, v21);
    v22(v16, 1, 1, v21);
    v22(v17, 1, 1, v21);
    v22(v18, 1, 1, v21);
    v22(v19, 1, 1, v21);
    v22(v29, 1, 1, v21);
    v22(v30, 1, 1, v21);
    v22(v31, 1, 1, v21);
    v22(v32, 1, 1, v21);
    v23 = sub_1000A3418();
    (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
    v24 = objc_allocWithZone(sub_1000A2E08());
    v25 = sub_1000A2DA8();

    v35 = v25;
  }

  else
  {
  }

  v26 = *(v0 + 8);
  v27 = *(v0 + 248) != 0;

  return v26(v35, v27);
}

uint64_t sub_100067C04()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 256) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100067D40, 0, 0);
}

uint64_t sub_100067D40()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  v4 = v1;
  v5 = objc_autoreleasePoolPush();
  *(v0 + 120) = 0;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v0 + 120;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000683D4;
  *(v7 + 24) = v6;
  *(v0 + 96) = sub_1000683BC;
  *(v0 + 104) = v7;
  *(v0 + 64) = _NSConcreteStackBlock;
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1000636D8;
  *(v0 + 88) = &unk_1000BFDF0;
  v8 = _Block_copy((v0 + 64));

  v9 = v4;

  [v9 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 256);
    v12 = *(v0 + 120);

    objc_autoreleasePoolPop(v5);
    if (v12)
    {
      v33 = v12;
      if (*(v0 + 264) == 1)
      {
        v13 = *(v0 + 216);
        v14 = *(v0 + 224);
        v16 = *(v0 + 200);
        v15 = *(v0 + 208);
        v18 = *(v0 + 184);
        v17 = *(v0 + 192);
        v27 = *(v0 + 176);
        v28 = *(v0 + 168);
        v29 = *(v0 + 160);
        v30 = *(v0 + 152);
        v31 = *(v0 + 144);
        v32 = *(v0 + 256);
        sub_1000A2DB8();
        sub_1000A2DD8();
        sub_1000A2D48();
        sub_1000A2D98();
        v19 = sub_1000A2C78();
        (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
        v20 = sub_1000A2498();
        v21 = *(*(v20 - 8) + 56);
        v21(v13, 1, 1, v20);
        v21(v15, 1, 1, v20);
        v21(v16, 1, 1, v20);
        v21(v17, 1, 1, v20);
        v21(v18, 1, 1, v20);
        v21(v27, 1, 1, v20);
        v21(v28, 1, 1, v20);
        v21(v29, 1, 1, v20);
        v21(v30, 1, 1, v20);
        v22 = sub_1000A3418();
        (*(*(v22 - 8) + 56))(v31, 1, 1, v22);
        v23 = objc_allocWithZone(sub_1000A2E08());
        v24 = sub_1000A2DA8();

        v33 = v24;
      }

      else
      {
      }
    }

    else
    {

      v33 = 0;
    }

    v25 = *(v0 + 8);
    v26 = *(v0 + 248) != 0;

    return v25(v33, v26);
  }

  return result;
}

uint64_t sub_1000682A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000A3C68();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100095D34(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100068340()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000683FC()
{
  v1 = sub_1000A2AD8();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000684C4, 0, 0);
}

uint64_t sub_1000684C4()
{
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  v25 = *(v4 + 16);
  v25(v1, v5, v3);
  sub_1000A2A98();
  sub_100069398(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  v6 = sub_1000A3DF8();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  if (v6)
  {
    v8 = sub_1000A25D8();
    sub_100069398(&qword_1000C8EA0, &type metadata accessor for NetworkError, &protocol conformance descriptor for NetworkError);
    v9 = &enum case for NetworkError.dataUnavailable(_:);
LABEL_7:
    swift_allocError();
    (*(*(v8 - 8) + 104))(v14, *v9, v8);
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[5];
  v25(v10, v5, v12);
  sub_1000A2A78();
  v13 = sub_1000A3DF8();
  v7(v11, v12);
  v7(v10, v12);
  if (v13)
  {
    v8 = sub_1000A2608();
    sub_100069398(&qword_1000C8E98, &type metadata accessor for GridLookupError, &protocol conformance descriptor for GridLookupError);
    v9 = &enum case for GridLookupError.geohashTileMissing(_:);
    goto LABEL_7;
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[5];
  v25(v17, v5, v19);
  sub_1000A2A68();
  v20 = sub_1000A3DF8();
  v7(v18, v19);
  v7(v17, v19);
  v21 = (v20 & 1) == 0;
  if (v20)
  {
    v22 = 0xD000000000000012;
  }

  else
  {
    v22 = 0x4F4D5F4F53494143;
  }

  if (v21)
  {
    v23 = 0xEA00000000004B43;
  }

  else
  {
    v23 = 0x80000001000A7200;
  }

  v24 = v0[1];

  return v24(v22, v23);
}

uint64_t sub_1000688B0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1000A25F8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_1000A2688();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_1000A22A8();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = sub_1000A2578();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v6 = sub_1000A2498();
  v1[20] = v6;
  v1[21] = *(v6 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v7 = sub_1000A2AD8();
  v1[25] = v7;
  v1[26] = *(v7 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100068B78, 0, 0);
}

uint64_t sub_100068B78()
{
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v1, v5, v3);
  sub_1000A2A88();
  sub_100069398(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = sub_1000A2B18();
    sub_100069398(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for EnergyKitError.guidanceUnavailable(_:), v7);
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  else
  {
    v9 = v0[23];
    v10 = v0[24];
    v11 = v0[21];
    v12 = v0[19];
    v40 = v0[20];
    v13 = v0[17];
    v14 = v0[18];
    v38 = v0[16];
    v39 = v0[15];
    v15 = v0[13];
    v16 = v0[8];
    v17 = v0[7];
    v35 = v0[12];
    v36 = v0[6];
    v34 = v0[5];
    sub_1000A2478();
    sub_1000A2538();
    sub_1000A2E68();
    (*(v14 + 8))(v12, v13);
    v37 = *(v11 + 8);
    v37(v9, v40);
    v18 = *(v11 + 16);
    v18(v9, v10, v40);
    sub_1000A2278();
    (*(v17 + 16))(v16, v34, v36);
    sub_10000275C(&qword_1000C8E80, &qword_1000AC7D8);
    sub_1000A2718();
    *(swift_allocObject() + 16) = xmmword_1000AC0E0;
    v19 = *(v15 + 16);
    v19(v39, v38, v35);
    sub_1000A26F8();
    v19(v39, v38, v35);
    sub_10000275C(&qword_1000C8E88, &qword_1000AC7E0);
    sub_1000A2648();
    *(swift_allocObject() + 16) = xmmword_1000AC010;
    v18(v9, v10, v40);
    sub_1000A2278();
    sub_1000A2638();
    sub_1000A2408();
    sub_1000A2248();
    sub_1000A2268();
    sub_1000A2638();
    v18(v9, v10, v40);
    sub_1000A2278();
    sub_1000A2658();
    sub_1000A2238();
    swift_allocObject();
    sub_1000A2228();
    sub_100069398(&qword_1000C8E90, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
    v20 = sub_1000A2218();
    v23 = v0[24];
    v24 = v0[20];
    v25 = v0[16];
    v26 = v0[13];
    v28 = v0[11];
    v27 = v0[12];
    v29 = v0[9];
    v30 = v0[10];
    v41 = v20;
    v32 = v31;

    (*(v30 + 8))(v28, v29);
    (*(v26 + 8))(v25, v27);
    v37(v23, v24);

    v33 = v0[1];

    return v33(v41, v32);
  }
}

uint64_t sub_100069398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100069404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v25 - v10;
  sub_100047188(a3, v25 - v10, &qword_1000C8240, &qword_1000AB688);
  v12 = sub_1000A3BE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100022154(v11, &qword_1000C8240, &qword_1000AB688);
  }

  else
  {
    sub_1000A3BD8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000A3BA8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000A3AA8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000696C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v14 - v6;
  v8 = sub_1000A2508();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100022154(a1, &qword_1000C92C0, &qword_1000ACB30);
    sub_100079F64(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_100022154(v7, &qword_1000C92C0, &qword_1000ACB30);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_10007B814(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v15;
  }

  return result;
}

void sub_1000698B4()
{
  type metadata accessor for EKSHomeManagerActor();
  swift_allocObject();
  sub_1000698F0();
  qword_1000C96F8 = v0;
}

void sub_1000698F0()
{
  v1 = v0;
  v2 = sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  __chkstk_darwin(((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &v20 - v3;
  v5 = sub_1000A2508();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 128) = &_swiftEmptyDictionarySingleton;
  *(v0 + 112) = 0;
  *(v0 + 120) = &_swiftEmptyDictionarySingleton;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v9 = sub_1000A3538();
  sub_100001E38(v9, qword_1000C96B8);
  v10 = sub_1000A3518();
  v11 = sub_1000A3CA8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[EKSHomeManagerActor] Setting up EKSHomeManagerActor", v12, 2u);
  }

  v13 = sub_1000A3518();
  v14 = sub_1000A3CA8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[EKSHomeManagerActor] Setting up location services", v15, 2u);
  }

  sub_10007CE10();
  sub_1000A2D28();
  sub_1000A2D28();
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_beginAccess();
  sub_1000696C4(v4, v8);
  swift_endAccess();
  v16 = objc_allocWithZone(NSBundle);
  v17 = sub_1000A3A78();
  v18 = [v16 initWithPath:v17];

  if (v18)
  {
    v19 = objc_allocWithZone(type metadata accessor for EKSHomeManager());
    *(v1 + 152) = sub_1000754AC(8, 0, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100069C1C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_1000A2AD8();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_1000A2508();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100069D48, v2, 0);
}

uint64_t sub_100069D48(uint64_t a1)
{
  v3 = v1[18];
  v2 = v1[19];
  v4 = v1[17];
  sub_1000A2D28();
  v5 = sub_1000A24E8();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    (*(v1[18] + 16))(v1[10], v1[11], v1[17]);

    v6 = v1[1];

    return v6();
  }

  else
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v8 = qword_1000C95F0;
    v1[20] = qword_1000C95F0;

    return _swift_task_switch(sub_100069EA0, v8, 0);
  }
}

uint64_t sub_100069EA0(uint64_t a1)
{
  if ((sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = sub_100001E38(v4, qword_1000C95F8);
  swift_beginAccess();
  (*(v5 + 16))(v2, v6, v4);
  sub_1000A2AA8();
  sub_10007E7E8(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v6) = sub_1000A3DF8();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = *(*(v1 + 160) + 145);
  }

  *(v1 + 200) = v8;
  v9 = *(v1 + 96);

  return _swift_task_switch(sub_10006A034, v9, 0);
}

uint64_t sub_10006A034()
{
  v1 = qword_1000C95F0;
  *(v0 + 168) = qword_1000C95F0;

  return _swift_task_switch(sub_10006A0AC, v1, 0);
}

uint64_t sub_10006A0AC(uint64_t a1)
{
  if ((sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = sub_100001E38(v4, qword_1000C95F8);
  swift_beginAccess();
  (*(v5 + 16))(v2, v6, v4);
  sub_1000A2AA8();
  sub_10007E7E8(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v6) = sub_1000A3DF8();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = *(*(v1 + 168) + 146);
  }

  *(v1 + 201) = v8;
  v9 = *(v1 + 96);

  return _swift_task_switch(sub_10006A240, v9, 0);
}

uint64_t sub_10006A240()
{
  if (!*(*(v0 + 96) + 144))
  {
    v1 = MobileGestalt_get_current_device();
    if (v1)
    {
      v4 = v1;
      v5 = MobileGestalt_copy_serialNumber_obj();

      if (v5)
      {
        sub_1000A3A88();

        *(v0 + 64) = sub_1000A3A98();
        *(v0 + 72) = v6;

        v7 = qword_1000C95F0;
        *(v0 + 176) = qword_1000C95F0;

        v1 = sub_10006A3CC;
        v2 = v7;
        v3 = 0;

        return _swift_task_switch(v1, v2, v3);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return _swift_task_switch(v1, v2, v3);
  }

  if ((*(v0 + 200) & 1) != 0 || *(v0 + 201))
  {
    (*(*(v0 + 144) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 136));
  }

  else
  {

    sub_1000A24C8();
    sub_1000A24A8();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10006A3CC()
{
  v1 = v0[22];
  v2 = v0[12];
  v0[23] = *(v1 + 112);
  v0[24] = *(v1 + 120);

  return _swift_task_switch(sub_10006A44C, v2, 0);
}

void sub_10006A44C()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 201);
    v6 = *(v0 + 200);
    v7 = *(v0 + 96);

    v14._countAndFlagsBits = 45;
    v14._object = 0xE100000000000000;
    sub_1000A3AE8(v14);
    v15._countAndFlagsBits = v2;
    v15._object = v1;
    sub_1000A3AE8(v15);

    *(v7 + 136) = v3;
    *(v7 + 144) = v4;

    if ((v6 & 1) != 0 || v5)
    {
      v8 = *(v0 + 136);
      v9 = *(v0 + 144);
      v11 = *(v0 + 80);
      v10 = *(v0 + 88);

      (*(v9 + 16))(v11, v10, v8);
    }

    else
    {
      sub_1000A24C8();
      sub_1000A24A8();
    }

    v12 = *(v0 + 8);

    v12();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006A594(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v2[17] = swift_task_alloc();
  v3 = sub_1000A2508();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_10006A6E0, v1, 0);
}

uint64_t sub_10006A6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v3[28] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CA8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[EKSHomeManagerActor] Updating homes", v7, 2u);
  }

  v8 = v3[15];
  v9 = v3[16];

  swift_beginAccess();
  *(v9 + 120) = &_swiftEmptyDictionarySingleton;

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3[29] = result;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_19:
    v33 = v3[27];
    v34 = v3[18];
    v35 = v3[19];
    v36 = v3[17];
    sub_1000A2D28();
    sub_1000A2D28();
    (*(v35 + 56))(v36, 0, 1, v34);
    swift_beginAccess();
    sub_1000696C4(v36, v33);
    swift_endAccess();

    v37 = v3[1];

    return v37();
  }

  result = sub_1000A3EC8();
  v3[29] = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v3[30] = v12;
      v13 = v3[15];
      v14 = (v13 & 0xC000000000000001) != 0 ? sub_1000A3EA8() : *(v13 + 8 * v12 + 32);
      v15 = v14;
      v3[31] = v14;
      v16 = [v14 restrictedGuests];
      v3[32] = sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v17 = sub_1000A3B68();

      v18 = [v15 currentUser];
      v3[14] = v18;
      v19 = swift_task_alloc();
      *(v19 + 16) = v3 + 14;
      v20 = sub_1000861C4(sub_10007E888, v19, v17);
      v3[33] = v11;

      if ((v20 & 1) == 0)
      {
        break;
      }

      v12 = v3[30] + 1;
      if (v12 == v3[29])
      {
        goto LABEL_19;
      }

      v11 = v3[33];
    }

    v22 = v3[26];
    v21 = v3[27];
    v23 = v3[19];
    v38 = v3[18];
    v24 = v3[16];
    v25 = [v15 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2E08();
    sub_1000A2D78();
    sub_1000A24A8();
    v26 = *(v23 + 8);
    v3[34] = v26;
    v3[35] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v22, v38);
    swift_beginAccess();
    v27 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v24 + 120);
    *(v24 + 120) = 0x8000000000000000;
    sub_10007B9F8(v27, v21, isUniquelyReferenced_nonNull_native);
    v26(v21, v38);
    *(v24 + 120) = v39;
    swift_endAccess();
    v29 = [v27 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2D78();
    sub_1000A24A8();
    v26(v21, v38);
    v30 = swift_task_alloc();
    v3[36] = v30;
    *v30 = v3;
    v30[1] = sub_10006AC68;
    v31 = v3[24];
    v32 = v3[25];

    return sub_100069C1C(v31, v32);
  }

  return result;
}

uint64_t sub_10006AC68()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_10006AD78, v1, 0);
}

uint64_t sub_10006AD78()
{
  v1 = *(v0 + 248);
  v2 = [v1 owner];
  v3 = [v1 currentUser];
  v4 = v3;
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!v3)
  {
    v4 = v2;
    goto LABEL_10;
  }

  v5 = sub_1000A3DA8();

  if (v5)
  {
LABEL_6:
    v6 = sub_1000A24C8();
    v8 = v7;
    *(v0 + 296) = v7;
    v9 = swift_task_alloc();
    *(v0 + 304) = v9;
    *v9 = v0;
    v9[1] = sub_10006B3D8;

    return sub_100066308(v6, v8, 0);
  }

LABEL_11:
  v46 = *(v0 + 272);
  v11 = *(v0 + 216);
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);
  [*(v0 + 248) setDelegate:{*(*(v0 + 128) + 152), *(v0 + 248)}];
  v17 = *(v15 + 16);
  v17(v11, v13, v14);
  v17(v16, v12, v14);
  (*(v15 + 56))(v16, 0, 1, v14);
  swift_beginAccess();
  sub_1000696C4(v16, v11);
  swift_endAccess();

  v46(v13, v14);
  v46(v12, v14);
  v18 = *(v0 + 240) + 1;
  if (v18 == *(v0 + 232))
  {
LABEL_17:
    v28 = *(v0 + 216);
    v29 = *(v0 + 144);
    v30 = *(v0 + 152);
    v31 = *(v0 + 136);
    sub_1000A2D28();
    sub_1000A2D28();
    (*(v30 + 56))(v31, 0, 1, v29);
    swift_beginAccess();
    sub_1000696C4(v31, v28);
    swift_endAccess();

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    while (1)
    {
      v19 = *(v0 + 264);
      *(v0 + 240) = v18;
      v20 = *(v0 + 120);
      v21 = (v20 & 0xC000000000000001) != 0 ? sub_1000A3EA8() : *(v20 + 8 * v18 + 32);
      v22 = v21;
      *(v0 + 248) = v21;
      v23 = [v21 restrictedGuests];
      *(v0 + 256) = sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v24 = sub_1000A3B68();

      v25 = [v22 currentUser];
      *(v0 + 112) = v25;
      v26 = swift_task_alloc();
      *(v26 + 16) = v0 + 112;
      v27 = sub_1000861C4(sub_10007E888, v26, v24);
      *(v0 + 264) = v19;

      if ((v27 & 1) == 0)
      {
        break;
      }

      v18 = *(v0 + 240) + 1;
      if (v18 == *(v0 + 232))
      {
        goto LABEL_17;
      }
    }

    v34 = *(v0 + 208);
    v33 = *(v0 + 216);
    v35 = *(v0 + 152);
    v47 = *(v0 + 144);
    v36 = *(v0 + 128);
    v37 = [v22 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2E08();
    sub_1000A2D78();
    sub_1000A24A8();
    v38 = *(v35 + 8);
    *(v0 + 272) = v38;
    *(v0 + 280) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38(v34, v47);
    swift_beginAccess();
    v39 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v36 + 120);
    *(v36 + 120) = 0x8000000000000000;
    sub_10007B9F8(v39, v33, isUniquelyReferenced_nonNull_native);
    v38(v33, v47);
    *(v36 + 120) = v48;
    swift_endAccess();
    v41 = [v39 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2D78();
    sub_1000A24A8();
    v38(v33, v47);
    v42 = swift_task_alloc();
    *(v0 + 288) = v42;
    *v42 = v0;
    v42[1] = sub_10006AC68;
    v43 = *(v0 + 192);
    v44 = *(v0 + 200);

    return sub_100069C1C(v43, v44);
  }
}

uint64_t sub_10006B3D8(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_10006B50C, v2, 0);
}

uint64_t sub_10006B50C()
{
  v84 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v3 + 16);
  *(v0 + 320) = v4;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = *(v0 + 200);
  if (v1)
  {
    v4(*(v0 + 184), v5, v2);
    v6 = sub_1000A3518();
    v7 = sub_1000A3CB8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 312);
    v10 = *(v0 + 272);
    v11 = *(v0 + 184);
    v12 = *(v0 + 144);
    if (v8)
    {
      v82 = *(v0 + 312);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v83[0] = v14;
      *v13 = 136315138;
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_1000A3F28();
      v17 = v16;
      v10(v11, v12);
      v18 = sub_1000954AC(v15, v17, v83);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "[EKSHomeManagerActor] Site %s exists", v13, 0xCu);
      sub_10000F7B8(v14);
    }

    else
    {

      v10(v11, v12);
    }

    v80 = *(v0 + 272);
    v31 = *(v0 + 216);
    v33 = *(v0 + 192);
    v32 = *(v0 + 200);
    v34 = *(v0 + 144);
    v35 = *(v0 + 152);
    v36 = *(v0 + 136);
    [*(v0 + 248) setDelegate:{*(*(v0 + 128) + 152), *(v0 + 248)}];
    v37 = *(v35 + 16);
    v37(v31, v33, v34);
    v37(v36, v32, v34);
    (*(v35 + 56))(v36, 0, 1, v34);
    swift_beginAccess();
    sub_1000696C4(v36, v31);
    swift_endAccess();

    v80(v33, v34);
    v80(v32, v34);
    v38 = *(v0 + 240) + 1;
    if (v38 == *(v0 + 232))
    {
LABEL_13:
      v48 = *(v0 + 216);
      v49 = *(v0 + 144);
      v50 = *(v0 + 152);
      v51 = *(v0 + 136);
      sub_1000A2D28();
      sub_1000A2D28();
      (*(v50 + 56))(v51, 0, 1, v49);
      swift_beginAccess();
      sub_1000696C4(v51, v48);
      swift_endAccess();

      v52 = *(v0 + 8);

      return v52();
    }

    else
    {
      while (1)
      {
        v39 = *(v0 + 264);
        *(v0 + 240) = v38;
        v40 = *(v0 + 120);
        v41 = (v40 & 0xC000000000000001) != 0 ? sub_1000A3EA8() : *(v40 + 8 * v38 + 32);
        v42 = v41;
        *(v0 + 248) = v41;
        v43 = [v41 restrictedGuests];
        *(v0 + 256) = sub_100032224(0, &qword_1000C9378, HMUser_ptr);
        v44 = sub_1000A3B68();

        v45 = [v42 currentUser];
        *(v0 + 112) = v45;
        v46 = swift_task_alloc();
        *(v46 + 16) = v0 + 112;
        v47 = sub_1000861C4(sub_10007E888, v46, v44);
        *(v0 + 264) = v39;

        if ((v47 & 1) == 0)
        {
          break;
        }

        v38 = *(v0 + 240) + 1;
        if (v38 == *(v0 + 232))
        {
          goto LABEL_13;
        }
      }

      v68 = *(v0 + 208);
      v67 = *(v0 + 216);
      v69 = *(v0 + 152);
      v81 = *(v0 + 144);
      v70 = *(v0 + 128);
      v71 = [v42 uniqueIdentifier];
      sub_1000A24F8();

      sub_1000A24C8();
      sub_1000A3A98();

      sub_1000A2E08();
      sub_1000A2D78();
      sub_1000A24A8();
      v72 = *(v69 + 8);
      *(v0 + 272) = v72;
      *(v0 + 280) = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v72(v68, v81);
      swift_beginAccess();
      v73 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = *(v70 + 120);
      *(v70 + 120) = 0x8000000000000000;
      sub_10007B9F8(v73, v67, isUniquelyReferenced_nonNull_native);
      v72(v67, v81);
      *(v70 + 120) = v83[0];
      swift_endAccess();
      v75 = [v73 uniqueIdentifier];
      sub_1000A24F8();

      sub_1000A24C8();
      sub_1000A3A98();

      sub_1000A2D78();
      sub_1000A24A8();
      v72(v67, v81);
      v76 = swift_task_alloc();
      *(v0 + 288) = v76;
      *v76 = v0;
      v76[1] = sub_10006AC68;
      v77 = *(v0 + 192);
      v78 = *(v0 + 200);

      return sub_100069C1C(v77, v78);
    }
  }

  else
  {
    v4(*(v0 + 176), v5, v2);
    v19 = sub_1000A3518();
    v20 = sub_1000A3CD8();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 272);
    v23 = *(v0 + 176);
    v24 = *(v0 + 144);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v83[0] = v26;
      *v25 = 136315138;
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = sub_1000A3F28();
      v29 = v28;
      v22(v23, v24);
      v30 = sub_1000954AC(v27, v29, v83);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "[EKSHomeManagerActor] Site %s does not exist. Create", v25, 0xCu);
      sub_10000F7B8(v26);
    }

    else
    {

      v22(v23, v24);
    }

    v54 = *(v0 + 272);
    v55 = *(v0 + 248);
    v56 = *(v0 + 216);
    v57 = *(v0 + 144);
    sub_1000A2B08();
    v58 = [v55 name];
    v59 = sub_1000A3A88();
    v61 = v60;

    *(v0 + 336) = v61;
    v62 = [v55 uniqueIdentifier];
    sub_1000A24F8();

    v63 = sub_1000A24C8();
    v65 = v64;
    *(v0 + 344) = v64;
    v54(v56, v57);
    v66 = swift_task_alloc();
    *(v0 + 352) = v66;
    *v66 = v0;
    v66[1] = sub_10006BE38;

    return static EnergySite.createSite(name:clientProvidedID:)(v59, v61, v63, v65);
  }
}

uint64_t sub_10006BE38(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 360) = a1;

  return _swift_task_switch(sub_10006BF90, v2, 0);
}

uint64_t sub_10006BF90()
{
  v67 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  if (*(v0 + 360))
  {
    v1(*(v0 + 168), v2, v3);
    v4 = sub_1000A3518();
    v5 = sub_1000A3CD8();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 272);
    v8 = *(v0 + 168);
    v9 = *(v0 + 144);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v66[0] = v11;
      *v10 = 136315138;
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = sub_1000A3F28();
      v14 = v13;
      v7(v8, v9);
      v15 = sub_1000954AC(v12, v14, v66);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "[EKSHomeManagerActor] Site %s created", v10, 0xCu);
      sub_10000F7B8(v11);
    }

    else
    {

      v7(v8, v9);
    }
  }

  else
  {
    v1(*(v0 + 160), v2, v3);
    v16 = sub_1000A3518();
    v17 = sub_1000A3CD8();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 272);
    v20 = *(v0 + 160);
    v21 = *(v0 + 144);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v66[0] = v23;
      *v22 = 136315138;
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = sub_1000A3F28();
      v26 = v25;
      v19(v20, v21);
      v27 = sub_1000954AC(v24, v26, v66);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "[EKSHomeManagerActor] Failed to create site %s", v22, 0xCu);
      sub_10000F7B8(v23);
    }

    else
    {

      v19(v20, v21);
    }
  }

  v64 = *(v0 + 272);
  v28 = *(v0 + 216);
  v30 = *(v0 + 192);
  v29 = *(v0 + 200);
  v31 = *(v0 + 144);
  v32 = *(v0 + 152);
  v33 = *(v0 + 136);
  [*(v0 + 248) setDelegate:{*(*(v0 + 128) + 152), *(v0 + 248)}];
  v34 = *(v32 + 16);
  v34(v28, v30, v31);
  v34(v33, v29, v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  swift_beginAccess();
  sub_1000696C4(v33, v28);
  swift_endAccess();

  v64(v30, v31);
  v64(v29, v31);
  v35 = *(v0 + 240) + 1;
  if (v35 == *(v0 + 232))
  {
LABEL_14:
    v45 = *(v0 + 216);
    v46 = *(v0 + 144);
    v47 = *(v0 + 152);
    v48 = *(v0 + 136);
    sub_1000A2D28();
    sub_1000A2D28();
    (*(v47 + 56))(v48, 0, 1, v46);
    swift_beginAccess();
    sub_1000696C4(v48, v45);
    swift_endAccess();

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    while (1)
    {
      v36 = *(v0 + 264);
      *(v0 + 240) = v35;
      v37 = *(v0 + 120);
      v38 = (v37 & 0xC000000000000001) != 0 ? sub_1000A3EA8() : *(v37 + 8 * v35 + 32);
      v39 = v38;
      *(v0 + 248) = v38;
      v40 = [v38 restrictedGuests];
      *(v0 + 256) = sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v41 = sub_1000A3B68();

      v42 = [v39 currentUser];
      *(v0 + 112) = v42;
      v43 = swift_task_alloc();
      *(v43 + 16) = v0 + 112;
      v44 = sub_1000861C4(sub_10007E888, v43, v41);
      *(v0 + 264) = v36;

      if ((v44 & 1) == 0)
      {
        break;
      }

      v35 = *(v0 + 240) + 1;
      if (v35 == *(v0 + 232))
      {
        goto LABEL_14;
      }
    }

    v52 = *(v0 + 208);
    v51 = *(v0 + 216);
    v53 = *(v0 + 152);
    v65 = *(v0 + 144);
    v54 = *(v0 + 128);
    v55 = [v39 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2E08();
    sub_1000A2D78();
    sub_1000A24A8();
    v56 = *(v53 + 8);
    *(v0 + 272) = v56;
    *(v0 + 280) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v52, v65);
    swift_beginAccess();
    v57 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66[0] = *(v54 + 120);
    *(v54 + 120) = 0x8000000000000000;
    sub_10007B9F8(v57, v51, isUniquelyReferenced_nonNull_native);
    v56(v51, v65);
    *(v54 + 120) = v66[0];
    swift_endAccess();
    v59 = [v57 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    sub_1000A3A98();

    sub_1000A2D78();
    sub_1000A24A8();
    v56(v51, v65);
    v60 = swift_task_alloc();
    *(v0 + 288) = v60;
    *v60 = v0;
    v60[1] = sub_10006AC68;
    v61 = *(v0 + 192);
    v62 = *(v0 + 200);

    return sub_100069C1C(v61, v62);
  }
}

uint64_t sub_10006C7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CA8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[EKSHomeManagerActor] Updating all homes", v7, 2u);
  }

  v8 = v3[2];

  v9 = *(v8 + 152);
  v3[3] = v9;
  v9;
  v10 = swift_task_alloc();
  v3[4] = v10;
  *v10 = v3;
  v10[1] = sub_10006C910;

  return sub_10006CBB4();
}

uint64_t sub_10006C910(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 40) = a1;

  if (a1)
  {
    v6 = swift_task_alloc();
    *(v3 + 48) = v6;
    *v6 = v5;
    v6[1] = sub_10006CAA4;

    return sub_10006A594(a1);
  }

  else
  {
    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_10006CAA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10006CBD4()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10006CCC4;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10006CCC4()
{

  return _swift_task_switch(sub_10006CDDC, 0, 0);
}

uint64_t sub_10006CDDC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
  if ([v1 dataSyncState] == 1)
  {
    v2 = sub_1000A3A78();
    v3 = [v1 _beginActiveAssertionWithReason:v2];

    v4 = [v1 homes];
    sub_100032224(0, &qword_1000C9320, HMHome_ptr);
    v5 = sub_1000A3B68();

    [v1 _endActiveAssertion:v3];
    swift_unknownObjectRelease();
    v6 = v5;
  }

  else
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v7 = sub_1000A3538();
    sub_100001E38(v7, qword_1000C96B8);
    v8 = sub_1000A3518();
    v9 = sub_1000A3CB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[EKSHomeManager] DataSyncState bad", v10, 2u);
    }

    v6 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v6);
}

uint64_t sub_10006CFD4(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v3[12] = swift_task_alloc();
  v4 = sub_1000A2508();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10006D100, v2, 0);
}

uint64_t sub_10006D100()
{
  v1 = *(*(v0 + 88) + 152);
  *(v0 + 160) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10006D174, 0, 0);
}

uint64_t sub_10006D174()
{
  v1 = v0[20];
  v2 = swift_task_alloc();
  v0[21] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_10006D264;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10006D264()
{

  return _swift_task_switch(sub_10006D37C, 0, 0);
}

uint64_t sub_10006D37C()
{
  v1 = *(v0 + 88);

  return _swift_task_switch(sub_10006D3E8, v1, 0);
}

uint64_t sub_10006D3E8()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v3 = v0[10];

    v4 = sub_100079C54(v3);
    if (v5)
    {
      v6 = v0[19];
      v7 = v0[13];
      v8 = v0[14];
      v9 = v0[9];
      (*(v8 + 16))(v6, *(v2 + 56) + *(v8 + 72) * v4, v7);

      (*(v8 + 32))(v9, v6, v7);
      (*(v8 + 56))(v9, 0, 1, v7);

      v10 = v0[1];

      return v10();
    }
  }

  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v12 = sub_1000A3538();
  v0[23] = sub_100001E38(v12, qword_1000C96B8);
  v13 = sub_1000A3518();
  v14 = sub_1000A3CC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to find site for venue. Carry out search manually", v15, 2u);
  }

  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_10006D684;

  return sub_100065D98();
}

uint64_t sub_10006D684(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_10006D79C, v2, 0);
}

void sub_10006D79C()
{
  v28 = v0;
  v1 = *(v0[25] + 16);
  v0[26] = v1;
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v0[27] = v2;
      v6 = v0[25];
      if (v2 >= *(v6 + 16))
      {
        __break(1u);
        return;
      }

      v7 = v0[13];
      v8 = v0[14];
      v9 = v0[12];
      v10 = v6 + 16 * v2;
      v12 = *(v10 + 32);
      v11 = *(v10 + 40);

      sub_1000A24B8();
      if ((*(v8 + 48))(v9, 1, v7) != 1)
      {
        break;
      }

      sub_100022154(v0[12], &qword_1000C92C0, &qword_1000ACB30);

      v13 = sub_1000A3518();
      v14 = sub_1000A3CC8();

      if (os_log_type_enabled(v13, v14))
      {
        v3 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v27 = v4;
        *v3 = 136315138;
        v5 = sub_1000954AC(v12, v11, &v27);

        *(v3 + 4) = v5;
        _os_log_impl(&_mh_execute_header, v13, v14, "Invalid UUID string for site: %s", v3, 0xCu);
        sub_10000F7B8(v4);
      }

      else
      {
      }

      v2 = v0[27] + 1;
      if (v2 == v0[26])
      {
        goto LABEL_12;
      }
    }

    v15 = v0[18];
    v16 = v0[13];
    v17 = v0[14];
    v18 = v0[12];

    v19 = *(v17 + 32);
    v0[28] = v19;
    v0[29] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v19(v15, v18, v16);
    v20 = swift_task_alloc();
    v0[30] = v20;
    *v20 = v0;
    v20[1] = sub_10006DAD8;
    v21 = v0[17];
    v22 = v0[18];

    sub_100069C1C(v21, v22);
  }

  else
  {
LABEL_12:
    v23 = v0[13];
    v24 = v0[14];
    v25 = v0[9];

    (*(v24 + 56))(v25, 1, 1, v23);

    v26 = v0[1];

    v26();
  }
}

uint64_t sub_10006DAD8()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10006DBE8, v1, 0);
}

void sub_10006DBE8()
{
  v66 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[11];
  v6 = *(v0[14] + 16);
  v6(v3, v0[17], v4);
  swift_beginAccess();
  v6(v2, v1, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + 128);
  v0[8] = v8;
  v9 = v0 + 8;
  *(v5 + 128) = 0x8000000000000000;
  v10 = sub_100079C54(v3);
  v12 = *(v8 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v3) = v11;
  if (*(v8 + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v23 = v10;
    sub_10007C1FC();
    v10 = v23;
    v18 = *v9;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v16 = v0[16];
  sub_10007A0FC(v15, isUniquelyReferenced_nonNull_native);
  v10 = sub_100079C54(v16);
  if ((v3 & 1) != (v17 & 1))
  {

    sub_1000A3F78();
    return;
  }

LABEL_8:
  v18 = *v9;
  if (v3)
  {
LABEL_9:
    v19 = v0[16];
    v20 = v0[13];
    v21 = v0[14];
    (*(v21 + 40))(v18[7] + *(v21 + 72) * v10, v0[15], v20);
    v22 = *(v21 + 8);
    v22(v19, v20);
    goto LABEL_14;
  }

LABEL_12:
  v24 = v0[28];
  v25 = v0[15];
  v26 = v0[16];
  v27 = v0[13];
  v28 = v0[14];
  v18[(v10 >> 6) + 8] |= 1 << v10;
  v29 = *(v28 + 72) * v10;
  v6(v18[6] + v29, v26, v27);
  v24(v18[7] + v29, v25, v27);
  v22 = *(v28 + 8);
  v22(v26, v27);
  v30 = v18[2];
  v14 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v14)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v18[2] = v31;
LABEL_14:
  v32 = v0[17];
  v33 = v0[13];
  *(v0[11] + 128) = v18;

  swift_endAccess();
  v34 = sub_1000A24E8();
  v22(v32, v33);
  if (v34)
  {
    v35 = v0[28];
    v36 = v0[18];
    v37 = v0[13];
    v38 = v0[14];
    v39 = v0[9];

    v35(v39, v36, v37);
    (*(v38 + 56))(v39, 0, 1, v37);
LABEL_18:

    v44 = v0[1];

    v44();
    return;
  }

  v22(v0[18], v0[13]);
  v40 = v0[27] + 1;
  if (v40 == v0[26])
  {
LABEL_17:
    v41 = v0[13];
    v42 = v0[14];
    v43 = v0[9];

    (*(v42 + 56))(v43, 1, 1, v41);
    goto LABEL_18;
  }

  while (1)
  {
    v0[27] = v40;
    v48 = v0[25];
    if (v40 >= *(v48 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v49 = v0[13];
    v50 = v0[14];
    v51 = v0[12];
    v52 = v48 + 16 * v40;
    v54 = *(v52 + 32);
    v53 = *(v52 + 40);

    sub_1000A24B8();
    if ((*(v50 + 48))(v51, 1, v49) != 1)
    {
      break;
    }

    sub_100022154(v0[12], &qword_1000C92C0, &qword_1000ACB30);

    v55 = sub_1000A3518();
    v56 = sub_1000A3CC8();

    if (os_log_type_enabled(v55, v56))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65 = v46;
      *v45 = 136315138;
      v47 = sub_1000954AC(v54, v53, &v65);

      *(v45 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v55, v56, "Invalid UUID string for site: %s", v45, 0xCu);
      sub_10000F7B8(v46);
    }

    else
    {
    }

    v40 = v0[27] + 1;
    if (v40 == v0[26])
    {
      goto LABEL_17;
    }
  }

  v57 = v0[18];
  v58 = v0[13];
  v59 = v0[14];
  v60 = v0[12];

  v61 = *(v59 + 32);
  v0[28] = v61;
  v0[29] = (v59 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v61(v57, v60, v58);
  v62 = swift_task_alloc();
  v0[30] = v62;
  *v62 = v0;
  v62[1] = sub_10006DAD8;
  v63 = v0[17];
  v64 = v0[18];

  sub_100069C1C(v63, v64);
}

uint64_t sub_10006E1D4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v3[22] = swift_task_alloc();
  v4 = sub_1000A2508();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10006E2F4, v2, 0);
}

uint64_t sub_10006E2F4()
{
  v1 = *(*(v0 + 168) + 152);
  *(v0 + 232) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10006E368, 0, 0);
}

uint64_t sub_10006E368()
{
  v1 = v0[29];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_10006E458;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10006E458()
{

  return _swift_task_switch(sub_10006E570, 0, 0);
}

uint64_t sub_10006E570()
{
  v1 = *(v0 + 168);

  return _swift_task_switch(sub_10006E5DC, v1, 0);
}

uint64_t sub_10006E5DC()
{
  v1 = *(v0[21] + 152);
  v0[32] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_10006E684;

  return sub_10006CBB4();
}

uint64_t sub_10006E684(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 168);
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_10006E7B4, v3, 0);
}

uint64_t sub_10006E7B4()
{
  if (v0[34])
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v1 = qword_1000C95F0;
    v0[35] = qword_1000C95F0;

    return _swift_task_switch(sub_10006E98C, v1, 0);
  }

  else
  {
    v2 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for EnergyKitError.siteUnavailable(_:), v2);
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10006E98C()
{
  v1 = v0[35];
  v2 = v0[21];
  v0[36] = *(v1 + 128);
  v0[37] = *(v1 + 136);

  return _swift_task_switch(sub_10006EA10, v2, 0);
}

uint64_t sub_10006EA10()
{
  v1 = v0[34];
  if (!v0[37])
  {
    v12 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
    goto LABEL_14;
  }

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[38] = v2;
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

LABEL_22:
  v20 = sub_1000A3EC8();
  v0[38] = v20;
  if (!v20)
  {
LABEL_12:

    v12 = &enum case for EnergyKitError.siteUnavailable(_:);
LABEL_14:

    v13 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *v12, v13);
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

LABEL_4:
  v3 = 0;
  while (1)
  {
    v4 = v0[34];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_1000A3EA8();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    v0[39] = v5;
    v0[40] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = [v5 restrictedGuests];
    sub_100032224(0, &qword_1000C9378, HMUser_ptr);
    v8 = sub_1000A3B68();

    v9 = [v6 currentUser];
    v0[18] = v9;
    v10 = swift_task_alloc();
    *(v10 + 16) = v0 + 18;
    v11 = sub_1000861C4(sub_10007E888, v10, v8);
    v0[41] = 0;

    if ((v11 & 1) == 0)
    {
      break;
    }

    v3 = v0[40];
    if (v3 == v0[38])
    {
      goto LABEL_12;
    }
  }

  v17 = v0[27];
  v18 = sub_1000A3A78();
  v0[42] = v18;
  v0[2] = v0;
  v0[7] = v17;
  v0[3] = sub_10006EDE8;
  v19 = swift_continuation_init();
  v0[17] = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006FA78;
  v0[13] = &unk_1000C0250;
  v0[14] = v19;
  [v6 uniqueIdentifierForBundleIdentifier:v18 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006EDE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_10006F474;
  }

  else
  {
    v4 = sub_10006EF08;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10006EF08()
{
  v1 = v0[42];
  v2 = *(v0[24] + 32);
  v2(v0[28], v0[27], v0[23]);

  v3 = sub_1000A24E8();
  v4 = v0[39];
  if ((v3 & 1) == 0)
  {
    (*(v0[24] + 8))(v0[28], v0[23]);

    v16 = v0[40];
    if (v16 == v0[38])
    {
LABEL_13:

      v25 = sub_1000A2B18();
      sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      (*(*(v25 - 8) + 104))(v26, enum case for EnergyKitError.siteUnavailable(_:), v25);
      swift_willThrow();

      v15 = v0[1];
      goto LABEL_14;
    }

    v17 = v0[41];
    while (1)
    {
      v18 = v0[34];
      if ((v18 & 0xC000000000000001) != 0)
      {
        v10 = sub_1000A3EA8();
      }

      else
      {
        if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v10 = *(v18 + 8 * v16 + 32);
      }

      v19 = v10;
      v0[39] = v10;
      v0[40] = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v20 = [v10 restrictedGuests];
      sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v21 = sub_1000A3B68();

      v22 = [v19 currentUser];
      v0[18] = v22;
      v23 = swift_task_alloc();
      *(v23 + 16) = v0 + 18;
      v24 = sub_1000861C4(sub_10007E888, v23, v21);
      v0[41] = v17;

      if ((v24 & 1) == 0)
      {
        break;
      }

      v16 = v0[40];
      if (v16 == v0[38])
      {
        goto LABEL_13;
      }
    }

    v28 = v0[27];
    v29 = sub_1000A3A78();
    v0[42] = v29;
    v0[2] = v0;
    v0[7] = v28;
    v0[3] = sub_10006EDE8;
    v30 = swift_continuation_init();
    v0[17] = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10006FA78;
    v0[13] = &unk_1000C0250;
    v0[14] = v30;
    [v19 uniqueIdentifierForBundleIdentifier:v29 completionHandler:v0 + 10];
    v10 = v0 + 2;

    return _swift_continuation_await(v10);
  }

  v32 = v2;
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  sub_1000A2B08();
  v9 = [v4 uniqueIdentifier];
  sub_1000A24F8();

  sub_1000A24C8();
  v31 = *(v7 + 8);
  v31(v5, v6);
  sub_1000A2AF8();

  sub_1000A24B8();

  v10 = (*(v7 + 48))(v8, 1, v6);
  if (v10 == 1)
  {
LABEL_22:
    __break(1u);
    return _swift_continuation_await(v10);
  }

  v11 = v0[39];
  v12 = v0[22];
  v13 = v0[23];
  v14 = v0[19];
  v31(v0[28], v13);

  v32(v14, v12, v13);

  v15 = v0[1];
LABEL_14:

  return v15();
}

uint64_t sub_10006F474(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 336);
  swift_willThrow();

  if (qword_1000C7570 != -1)
  {
LABEL_21:
    swift_once();
  }

  v4 = *(v1 + 192);
  v3 = *(v1 + 200);
  v5 = *(v1 + 184);
  v6 = *(v1 + 160);
  v7 = sub_1000A3538();
  sub_100001E38(v7, qword_1000C96B8);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = sub_1000A3518();
  v9 = sub_1000A3CC8();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 192);
  v11 = *(v1 + 200);
  v13 = *(v1 + 184);
  if (v10)
  {
    v38 = *(v1 + 312);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v14 = 136315394;
    sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = sub_1000A3F28();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1000954AC(v16, v18, &v39);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch uniqueIdentifier for home %s: %@", v14, 0x16u);
    sub_100022154(v15, &unk_1000C7740, &qword_1000AB610);

    sub_10000F7B8(v37);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = *(v1 + 320);
  if (v21 == *(v1 + 304))
  {
LABEL_13:

    v30 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for EnergyKitError.siteUnavailable(_:), v30);
    swift_willThrow();

    v32 = *(v1 + 8);

    return v32();
  }

  else
  {
    while (1)
    {
      v22 = *(v1 + 272);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = sub_1000A3EA8();
      }

      else
      {
        if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v23 = *(v22 + 8 * v21 + 32);
      }

      v24 = v23;
      *(v1 + 312) = v23;
      *(v1 + 320) = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v25 = [v23 restrictedGuests];
      sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v26 = sub_1000A3B68();

      v27 = [v24 currentUser];
      *(v1 + 144) = v27;
      v28 = swift_task_alloc();
      *(v28 + 16) = v1 + 144;
      v29 = sub_1000861C4(sub_10007E888, v28, v26);
      *(v1 + 328) = 0;

      if ((v29 & 1) == 0)
      {
        break;
      }

      v21 = *(v1 + 320);
      if (v21 == *(v1 + 304))
      {
        goto LABEL_13;
      }
    }

    v34 = *(v1 + 216);
    v35 = sub_1000A3A78();
    *(v1 + 336) = v35;
    *(v1 + 16) = v1;
    *(v1 + 56) = v34;
    *(v1 + 24) = sub_10006EDE8;
    v36 = swift_continuation_init();
    *(v1 + 136) = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
    *(v1 + 80) = _NSConcreteStackBlock;
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_10006FA78;
    *(v1 + 104) = &unk_1000C0250;
    *(v1 + 112) = v36;
    [v24 uniqueIdentifierForBundleIdentifier:v35 completionHandler:v1 + 80];

    return _swift_continuation_await(v1 + 16);
  }
}

uint64_t sub_10006FA78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000A2508();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_100013C5C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_1000A24F8();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10006FBE8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v3[22] = swift_task_alloc();
  v4 = sub_1000A2508();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_10006FD14, v2, 0);
}

uint64_t sub_10006FD14()
{
  v1 = *(*(v0 + 168) + 152);
  *(v0 + 240) = v1;
  v2 = v1;

  return _swift_task_switch(sub_10006FD88, 0, 0);
}

uint64_t sub_10006FD88()
{
  v1 = v0[30];
  v2 = swift_task_alloc();
  v0[31] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_10006FE78;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10006FE78()
{

  return _swift_task_switch(sub_10006FF90, 0, 0);
}

uint64_t sub_10006FF90()
{
  v1 = *(v0 + 168);

  return _swift_task_switch(sub_10006FFFC, v1, 0);
}

uint64_t sub_10006FFFC()
{
  v1 = *(v0[21] + 152);
  v0[33] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000700A4;

  return sub_10006CBB4();
}

uint64_t sub_1000700A4(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 168);
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_1000701D4, v3, 0);
}

uint64_t sub_1000701D4()
{
  if (v0[35])
  {
    if (qword_1000C7550 != -1)
    {
      swift_once();
    }

    v1 = qword_1000C95F0;
    v0[36] = qword_1000C95F0;

    return _swift_task_switch(sub_1000703C4, v1, 0);
  }

  else
  {
    v2 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for EnergyKitError.siteUnavailable(_:), v2);
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000703C4()
{
  v1 = v0[36];
  v2 = v0[21];
  v0[37] = *(v1 + 128);
  v0[38] = *(v1 + 136);

  return _swift_task_switch(sub_100070448, v2, 0);
}

uint64_t sub_100070448()
{
  v1 = v0[35];
  if (!v0[38])
  {
    v12 = &enum case for EnergyKitError.invalidApplicationIdentifier(_:);
    goto LABEL_14;
  }

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[39] = v2;
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

LABEL_22:
  v20 = sub_1000A3EC8();
  v0[39] = v20;
  if (!v20)
  {
LABEL_12:

    v12 = &enum case for EnergyKitError.siteUnavailable(_:);
LABEL_14:

    v13 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *v12, v13);
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

LABEL_4:
  v3 = 0;
  while (1)
  {
    v4 = v0[35];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_1000A3EA8();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    v0[40] = v5;
    v0[41] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = [v5 restrictedGuests];
    sub_100032224(0, &qword_1000C9378, HMUser_ptr);
    v8 = sub_1000A3B68();

    v9 = [v6 currentUser];
    v0[18] = v9;
    v10 = swift_task_alloc();
    *(v10 + 16) = v0 + 18;
    v11 = sub_1000861C4(sub_10007E7B0, v10, v8);
    v0[42] = 0;

    if ((v11 & 1) == 0)
    {
      break;
    }

    v3 = v0[41];
    if (v3 == v0[39])
    {
      goto LABEL_12;
    }
  }

  v17 = v0[28];
  v18 = sub_1000A3A78();
  v0[43] = v18;
  v0[2] = v0;
  v0[7] = v17;
  v0[3] = sub_10007082C;
  v19 = swift_continuation_init();
  v0[17] = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006FA78;
  v0[13] = &unk_1000C0228;
  v0[14] = v19;
  [v6 uniqueIdentifierForBundleIdentifier:v18 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10007082C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_1000710CC;
  }

  else
  {
    v4 = sub_10007094C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007094C()
{
  v1 = v0[43];
  v2 = *(v0[24] + 32);
  v2(v0[29], v0[28], v0[23]);

  v3 = sub_1000A24E8();
  v4 = v0[40];
  if (v3)
  {
    v5 = v0[26];
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[22];
    sub_1000A2B08();
    v9 = [v4 uniqueIdentifier];
    sub_1000A24F8();

    sub_1000A24C8();
    v10 = *(v7 + 8);
    v0[45] = v10;
    v0[46] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v6);
    sub_1000A2AF8();

    sub_1000A24B8();

    v11 = (*(v7 + 48))(v8, 1, v6);
    if (v11 != 1)
    {
      v12 = v0[27];
      v14 = v0[22];
      v13 = v0[23];

      v2(v12, v14, v13);
      v15 = swift_task_alloc();
      v0[47] = v15;
      *v15 = v0;
      v15[1] = sub_100070EDC;
      v16 = v0[27];
      v17 = v0[19];

      return sub_100069C1C(v17, v16);
    }

LABEL_23:
    __break(1u);
    return _swift_continuation_await(v11);
  }

  (*(v0[24] + 8))(v0[29], v0[23]);

  v19 = v0[41];
  if (v19 != v0[39])
  {
    v20 = v0[42];
    while (1)
    {
      v21 = v0[35];
      if ((v21 & 0xC000000000000001) != 0)
      {
        v11 = sub_1000A3EA8();
      }

      else
      {
        if (v19 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v11 = *(v21 + 8 * v19 + 32);
      }

      v22 = v11;
      v0[40] = v11;
      v0[41] = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v23 = [v11 restrictedGuests];
      sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v24 = sub_1000A3B68();

      v25 = [v22 currentUser];
      v0[18] = v25;
      v26 = swift_task_alloc();
      *(v26 + 16) = v0 + 18;
      v27 = sub_1000861C4(sub_10007E7B0, v26, v24);
      v0[42] = v20;

      if ((v27 & 1) == 0)
      {
        break;
      }

      v19 = v0[41];
      if (v19 == v0[39])
      {
        goto LABEL_15;
      }
    }

    v31 = v0[28];
    v32 = sub_1000A3A78();
    v0[43] = v32;
    v0[2] = v0;
    v0[7] = v31;
    v0[3] = sub_10007082C;
    v33 = swift_continuation_init();
    v0[17] = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10006FA78;
    v0[13] = &unk_1000C0228;
    v0[14] = v33;
    [v22 uniqueIdentifierForBundleIdentifier:v32 completionHandler:v0 + 10];
    v11 = v0 + 2;

    return _swift_continuation_await(v11);
  }

LABEL_15:

  v28 = sub_1000A2B18();
  sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v28 - 8) + 104))(v29, enum case for EnergyKitError.siteUnavailable(_:), v28);
  swift_willThrow();

  v30 = v0[1];

  return v30();
}

uint64_t sub_100070EDC()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_100070FEC, v1, 0);
}

uint64_t sub_100070FEC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 184);

  v1(v3, v4);
  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000710CC(uint64_t a1)
{
  v40 = v1;
  v2 = *(v1 + 344);
  swift_willThrow();

  if (qword_1000C7570 != -1)
  {
LABEL_21:
    swift_once();
  }

  v4 = *(v1 + 192);
  v3 = *(v1 + 200);
  v5 = *(v1 + 184);
  v6 = *(v1 + 160);
  v7 = sub_1000A3538();
  sub_100001E38(v7, qword_1000C96B8);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = sub_1000A3518();
  v9 = sub_1000A3CC8();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 192);
  v11 = *(v1 + 200);
  v13 = *(v1 + 184);
  if (v10)
  {
    v38 = *(v1 + 320);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v14 = 136315394;
    sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = sub_1000A3F28();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1000954AC(v16, v18, &v39);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch uniqueIdentifier for home %s: %@", v14, 0x16u);
    sub_100022154(v15, &unk_1000C7740, &qword_1000AB610);

    sub_10000F7B8(v37);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = *(v1 + 328);
  if (v21 == *(v1 + 312))
  {
LABEL_13:

    v30 = sub_1000A2B18();
    sub_10007E7E8(&qword_1000C9370, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for EnergyKitError.siteUnavailable(_:), v30);
    swift_willThrow();

    v32 = *(v1 + 8);

    return v32();
  }

  else
  {
    while (1)
    {
      v22 = *(v1 + 280);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = sub_1000A3EA8();
      }

      else
      {
        if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v23 = *(v22 + 8 * v21 + 32);
      }

      v24 = v23;
      *(v1 + 320) = v23;
      *(v1 + 328) = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v25 = [v23 restrictedGuests];
      sub_100032224(0, &qword_1000C9378, HMUser_ptr);
      v26 = sub_1000A3B68();

      v27 = [v24 currentUser];
      *(v1 + 144) = v27;
      v28 = swift_task_alloc();
      *(v28 + 16) = v1 + 144;
      v29 = sub_1000861C4(sub_10007E7B0, v28, v26);
      *(v1 + 336) = 0;

      if ((v29 & 1) == 0)
      {
        break;
      }

      v21 = *(v1 + 328);
      if (v21 == *(v1 + 312))
      {
        goto LABEL_13;
      }
    }

    v34 = *(v1 + 224);
    v35 = sub_1000A3A78();
    *(v1 + 344) = v35;
    *(v1 + 16) = v1;
    *(v1 + 56) = v34;
    *(v1 + 24) = sub_10007082C;
    v36 = swift_continuation_init();
    *(v1 + 136) = sub_10000275C(&unk_1000C9380, &unk_1000ACA20);
    *(v1 + 80) = _NSConcreteStackBlock;
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_10006FA78;
    *(v1 + 104) = &unk_1000C0228;
    *(v1 + 112) = v36;
    [v24 uniqueIdentifierForBundleIdentifier:v35 completionHandler:v1 + 80];

    return _swift_continuation_await(v1 + 16);
  }
}

uint64_t sub_1000716DC(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_1000716FC, v1, 0);
}

uint64_t sub_1000716FC()
{
  v1 = *(*(v0 + 48) + 152);
  *(v0 + 56) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100071770, 0, 0);
}

uint64_t sub_100071770()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100071860;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100071860()
{

  return _swift_task_switch(sub_100071978, 0, 0);
}

uint64_t sub_100071978()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_1000719E0, v1, 0);
}

uint64_t sub_1000719E0()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = v0[5];

    v4 = sub_100079C54(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      v7 = v6;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_100071A9C()
{
  v1[3] = v0;
  v2 = sub_1000A2CF8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100071B5C, v0, 0);
}

uint64_t sub_100071B5C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 104))(v1, enum case for EnergyKitFeatures.termsAndConditions2025(_:), v3);
  v4 = sub_1000A2CE8();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(v0[3] + 152);
    v0[7] = v5;
    v6 = v5;

    return _swift_task_switch(sub_100071D18, 0, 0);
  }

  else
  {
    v7 = sub_1000A3598();
    sub_10007E7E8(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for EnergyKitError.venueUnavailable(_:), v7);
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100071D18()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  v2[2] = v1;
  v2[3] = 0x656D6F4820794DLL;
  v2[4] = 0xE700000000000000;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_100032224(0, &qword_1000C9320, HMHome_ptr);
  *v3 = v0;
  v3[1] = sub_100071E3C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000011, 0x80000001000A73E0, sub_10007E528, v2, v4);
}

uint64_t sub_100071E3C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100072204;
  }

  else
  {

    v2 = sub_100071F58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100071F58()
{
  v1 = *(v0 + 24);

  *(v0 + 88) = *(v0 + 16);

  return _swift_task_switch(sub_100071FCC, v1, 0);
}

uint64_t sub_100071FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = v3;
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = v3[11];
  v5 = sub_1000A3538();
  v3[12] = sub_100001E38(v5, qword_1000C96B8);
  v6 = v4;
  v7 = sub_1000A3518();
  v8 = sub_1000A3CA8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v3[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = [v9 name];
    v13 = sub_1000A3A88();
    v15 = v14;

    v16 = sub_1000954AC(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[EKSHomeManagerActor] Successfully created first home: %s", v10, 0xCu);
    sub_10000F7B8(v11);
  }

  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v3[13] = qword_1000C96F8;

  v17 = swift_task_alloc();
  v3[14] = v17;
  *v17 = v3;
  v17[1] = sub_100072278;

  return sub_10006C78C();
}

uint64_t sub_100072204()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100072278()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1000723A4, v1, 0);
}

uint64_t sub_1000723A4()
{
  v16 = v0;
  v1 = *(v0 + 88);
  v2 = sub_1000A3518();
  v3 = sub_1000A3CA8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = [v4 name];
    v8 = sub_1000A3A88();
    v10 = v9;

    v11 = sub_1000954AC(v8, v10, &v15);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[EKSHomeManagerActor] Successfully refreshed: %s", v5, 0xCu);
    sub_10000F7B8(v6);
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 88);

  return v12(v13);
}

uint64_t sub_100072524(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000A2508();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000725F0, v1, 0);
}

uint64_t sub_1000725F0()
{
  v1 = *(*(v0 + 72) + 152);
  *(v0 + 112) = v1;
  v2 = v1;

  return _swift_task_switch(sub_100072664, 0, 0);
}

uint64_t sub_100072664()
{
  v1 = v0[14];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100072754;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100072754()
{

  return _swift_task_switch(sub_10007286C, 0, 0);
}

uint64_t sub_10007286C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_1000728D8, v1, 0);
}

uint64_t sub_1000728D8()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v3 = v0[8];

    v4 = sub_100079C54(v3);
    if (v5)
    {
      v7 = v0[12];
      v6 = v0[13];
      v8 = v0[10];
      v9 = v0[11];
      v10 = v0[9];
      (*(v9 + 16))(v7, *(v2 + 56) + *(v9 + 72) * v4, v8);

      (*(v9 + 32))(v6, v7, v8);
      swift_beginAccess();
      v11 = *(v10 + 120);
      v12 = v0[13];
      if (*(v11 + 16))
      {

        v13 = sub_100079C54(v12);
        v14 = v0[13];
        v15 = v0[10];
        v16 = v0[11];
        if (v17)
        {
          v18 = *(v16 + 8);
          v19 = *(*(v11 + 56) + 8 * v13);
          v18(v14, v15);

          goto LABEL_10;
        }

        (*(v16 + 8))(v14, v15);
      }

      else
      {
        (*(v0[11] + 8))(v0[13], v0[10]);
      }
    }

    else
    {
    }
  }

  v19 = 0;
LABEL_10:

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_100072AA8(uint64_t a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 64) = a2;
  *(v3 + 56) = a1;
  v4 = sub_1000A2508();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = sub_10000275C(&qword_1000C9328, &qword_1000AC9D0);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100072C3C, v2, 0);
}

uint64_t sub_100072C3C()
{
  v1 = v0[9];
  v2 = *(*(v1 + 152) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
  v3 = sub_1000A3A78();
  v0[27] = [v2 _beginActiveAssertionWithReason:v3];

  v4 = *(v1 + 152);
  v0[28] = v4;
  v5 = v4;

  return _swift_task_switch(sub_100072D20, 0, 0);
}

uint64_t sub_100072D20()
{
  v1 = v0[28];
  v2 = swift_task_alloc();
  v0[29] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_100072E10;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100072E10()
{

  return _swift_task_switch(sub_100072F28, 0, 0);
}

uint64_t sub_100072F28()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100072F94, v1, 0);
}

uint64_t sub_100072F94()
{
  v1 = *(v0 + 72);
  [*(*(v1 + 152) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager) _endActiveAssertion:*(v0 + 216)];
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 248) = v2;
  v3 = *(v2 + 32);
  *(v0 + 344) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 256) = &_swiftEmptyDictionarySingleton;
  *(v0 + 264) = &_swiftEmptyDictionarySingleton;

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 272) = v6;
    *(v0 + 280) = v7;
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 192);
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v15 = __clz(__rbit64(v6)) | (v7 << 6);
    (*(v14 + 16))(v9, *(v2 + 48) + *(v14 + 72) * v15, v13);
    v16 = *(*(v2 + 56) + 8 * v15);
    v17 = *(v12 + 48);
    v18 = *(v14 + 32);
    *(v0 + 288) = v18;
    *(v0 + 296) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v18(v10, v9, v13);
    *(v10 + v17) = v16;
    sub_100047188(v10, v11, &qword_1000C9328, &qword_1000AC9D0);
    v19 = *(v11 + *(v12 + 48));
    v20 = v16;

    v21 = sub_1000A24C8();
    v23 = v22;
    *(v0 + 304) = v22;
    v24 = *(v14 + 8);
    *(v0 + 312) = v24;
    *(v0 + 320) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v11, v13);
    v25 = swift_task_alloc();
    *(v0 + 328) = v25;
    *v25 = v0;
    v25[1] = sub_1000732F0;

    return sub_100066308(v21, v23, 0);
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    swift_unknownObjectRelease();

    v27 = *(v0 + 8);

    return v27(&_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_1000732F0(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_100073424, v2, 0);
}

uint64_t sub_100073424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v211 = v3;
  if (qword_1000C7570 != -1)
  {
LABEL_51:
    swift_once();
  }

  v4 = *(v3 + 200);
  v6 = *(v3 + 176);
  v5 = *(v3 + 184);
  v7 = sub_1000A3538();
  sub_100001E38(v7, qword_1000C96B8);
  sub_100047188(v4, v5, &qword_1000C9328, &qword_1000AC9D0);
  sub_100047188(v4, v6, &qword_1000C9328, &qword_1000AC9D0);
  v8 = sub_1000A3518();
  v9 = sub_1000A3CB8();
  v10 = &off_1000C6000;
  if (os_log_type_enabled(v8, v9))
  {
    v192 = *(v3 + 312);
    v12 = *(v3 + 184);
    v11 = *(v3 + 192);
    v196 = *(v3 + 168);
    v198 = *(v3 + 176);
    v13 = *(v3 + 104);
    log = *(v3 + 80);
    v14 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    *(v3 + 48) = v203;
    *v14 = 136315394;
    sub_100047188(v12, v11, &qword_1000C9328, &qword_1000AC9D0);
    v15 = *(v11 + *(v13 + 48));
    v16 = [v15 name];

    v17 = sub_1000A3A88();
    v19 = v18;

    sub_100022154(v12, &qword_1000C9328, &qword_1000AC9D0);
    v20 = v11;
    v10 = &off_1000C6000;
    (v192)(v20, log);
    v21 = sub_1000954AC(v17, v19, (v3 + 48));

    *(v14 + 4) = v21;
    *(v14 + 12) = 1024;
    sub_100047188(v198, v196, &qword_1000C9328, &qword_1000AC9D0);
    v22 = *&v196[*(v13 + 48)];
    v23 = [v22 location];

    if (v23)
    {

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    v26 = *(v3 + 176);
    (*(v3 + 312))(*(v3 + 168), *(v3 + 80));
    sub_100022154(v26, &qword_1000C9328, &qword_1000AC9D0);
    *(v14 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v8, v9, "[EKSHomeManagerActor] %s with location: %{BOOL}d", v14, 0x12u);
    sub_10000F7B8(v203);
  }

  else
  {
    v25 = *(v3 + 184);
    sub_100022154(*(v3 + 176), &qword_1000C9328, &qword_1000AC9D0);

    sub_100022154(v25, &qword_1000C9328, &qword_1000AC9D0);
  }

  v27 = *(v3 + 336);
  v28 = *(v3 + 312);
  v29 = *(v3 + 192);
  v30 = *(v3 + 104);
  v31 = *(v3 + 80);
  sub_100047188(*(v3 + 200), v29, &qword_1000C9328, &qword_1000AC9D0);
  v32 = *(v29 + *(v30 + 48));
  v28(v29, v31);
  v33 = [v32 v10[337]];
  v199 = v27;
  if (v27 && (v34 = *(v3 + 336), v35 = sub_1000A2DC8(), v34, v35))
  {
    v36 = v34;
    v37 = sub_1000A2D58();
    v39 = v38;

    if (!v39)
    {
      goto LABEL_16;
    }

    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v40 && (([v35 coordinate], v41 != -180.0) || (objc_msgSend(v35, "coordinate"), v42 != -180.0)))
    {
      v149 = v36;
      v43 = sub_1000A2DC8();

      if (!v43)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_16:
      v43 = v33;

      if (!v33)
      {
LABEL_17:
        v44 = *(v3 + 336);
        sub_100022154(*(v3 + 200), &qword_1000C9328, &qword_1000AC9D0);

LABEL_37:
        v148 = *(v3 + 256);
        goto LABEL_38;
      }
    }
  }

  else
  {
    v43 = v33;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  v45 = *(v3 + 200);
  v46 = *(v3 + 152);
  sub_100047188(v45, *(v3 + 160), &qword_1000C9328, &qword_1000AC9D0);
  sub_100047188(v45, v46, &qword_1000C9328, &qword_1000AC9D0);
  v47 = sub_1000A3518();
  v48 = sub_1000A3CB8();
  v197 = v32;
  v204 = v43;
  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v3 + 312);
    v50 = *(v3 + 192);
    v193 = v48;
    v51 = *(v3 + 160);
    v185 = *(v3 + 152);
    v52 = *(v3 + 104);
    v177 = v52;
    v53 = *(v3 + 80);
    v182 = v53;
    v54 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    *v54 = 136315394;
    sub_100047188(v51, v50, &qword_1000C9328, &qword_1000AC9D0);
    v55 = *(v50 + *(v52 + 48));
    v56 = [v55 name];

    v57 = sub_1000A3A88();
    loga = v47;
    v59 = v58;

    sub_100022154(v51, &qword_1000C9328, &qword_1000AC9D0);
    v49(v50, v53);
    v60 = sub_1000954AC(v57, v59, &v210);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    sub_100047188(v185, v50, &qword_1000C9328, &qword_1000AC9D0);
    v43 = v204;
    v61 = *(v50 + *(v177 + 48));
    v62 = [v61 location];

    *(v3 + 40) = v62;
    sub_10000275C(&qword_1000C9348, &qword_1000AC9F8);
    v63 = sub_1000A3DC8();
    v65 = v64;
    sub_100022154(v185, &qword_1000C9328, &qword_1000AC9D0);

    v49(v50, v182);
    v66 = sub_1000954AC(v63, v65, &v210);

    *(v54 + 14) = v66;
    _os_log_impl(&_mh_execute_header, loga, v193, "[EKSHomeManagerActor] Loc for %s: %s", v54, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v67 = *(v3 + 152);
    v68 = *(v3 + 160);

    sub_100022154(v67, &qword_1000C9328, &qword_1000AC9D0);
    sub_100022154(v68, &qword_1000C9328, &qword_1000AC9D0);
  }

  v69 = *(v3 + 64);
  [v43 distanceFromLocation:*(v3 + 56)];
  v70 = *(v3 + 200);
  if (v71 > v69)
  {
    sub_100047188(v70, *(v3 + 112), &qword_1000C9328, &qword_1000AC9D0);
    v72 = sub_1000A3518();
    v73 = sub_1000A3CB8();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v3 + 336);
    if (v74)
    {
      v194 = *(v3 + 312);
      v76 = *(v3 + 192);
      v205 = *(v3 + 200);
      v200 = *(v3 + 336);
      v78 = *(v3 + 104);
      v77 = *(v3 + 112);
      logb = *(v3 + 80);
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v210 = v80;
      *v79 = 136315138;
      sub_100047188(v77, v76, &qword_1000C9328, &qword_1000AC9D0);
      v81 = *(v76 + *(v78 + 48));
      v82 = [v81 name];

      v83 = sub_1000A3A88();
      v85 = v84;

      sub_100022154(v77, &qword_1000C9328, &qword_1000AC9D0);
      (v194)(v76, logb);
      v86 = sub_1000954AC(v83, v85, &v210);

      *(v79 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v72, v73, "[EKSHomeManagerActor] Loc for %s outside geofence", v79, 0xCu);
      sub_10000F7B8(v80);

      v87 = v205;
    }

    else
    {
      v108 = *(v3 + 200);
      v109 = *(v3 + 112);

      sub_100022154(v109, &qword_1000C9328, &qword_1000AC9D0);
      v87 = v108;
    }

LABEL_36:
    sub_100022154(v87, &qword_1000C9328, &qword_1000AC9D0);
    goto LABEL_37;
  }

  if (!v199)
  {
    v110 = *(v3 + 120);
    v111 = *(v3 + 200);
    sub_100047188(v70, *(v3 + 128), &qword_1000C9328, &qword_1000AC9D0);
    sub_100047188(v111, v110, &qword_1000C9328, &qword_1000AC9D0);
    v112 = sub_1000A3518();
    v113 = sub_1000A3CC8();
    if (os_log_type_enabled(v112, v113))
    {
      v181 = *(v3 + 312);
      logc = *(v3 + 288);
      v114 = *(v3 + 192);
      v206 = *(v3 + 200);
      v115 = *(v3 + 128);
      v187 = *(v3 + 120);
      v116 = *(v3 + 104);
      v179 = v116;
      v202 = v113;
      v117 = *(v3 + 96);
      v118 = *(v3 + 80);
      v119 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      *v119 = 136315394;
      sub_100047188(v115, v114, &qword_1000C9328, &qword_1000AC9D0);
      v120 = *(v114 + *(v116 + 48));
      v121 = [v120 name];

      v122 = sub_1000A3A88();
      v124 = v123;

      sub_100022154(v115, &qword_1000C9328, &qword_1000AC9D0);
      v181(v114, v118);
      v125 = sub_1000954AC(v122, v124, &v210);

      *(v119 + 4) = v125;
      *(v119 + 12) = 2080;
      sub_100047188(v187, v114, &qword_1000C9328, &qword_1000AC9D0);

      (logc)(v117, v114, v118);
      sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v126 = sub_1000A3F28();
      v128 = v127;
      v181(v117, v118);
      sub_100022154(v187, &qword_1000C9328, &qword_1000AC9D0);
      v129 = sub_1000954AC(v126, v128, &v210);

      *(v119 + 14) = v129;
      _os_log_impl(&_mh_execute_header, v112, v202, "[EKSHomeManagerActor] %s:%s missing backing site", v119, 0x16u);
      swift_arrayDestroy();

      v87 = v206;
    }

    else
    {
      v150 = *(v3 + 200);
      v152 = *(v3 + 120);
      v151 = *(v3 + 128);

      sub_100022154(v152, &qword_1000C9328, &qword_1000AC9D0);
      sub_100022154(v151, &qword_1000C9328, &qword_1000AC9D0);
      v87 = v150;
    }

    goto LABEL_36;
  }

  v88 = *(v3 + 136);
  v89 = *(v3 + 200);
  sub_100047188(v70, *(v3 + 144), &qword_1000C9328, &qword_1000AC9D0);
  sub_100047188(v89, v88, &qword_1000C9328, &qword_1000AC9D0);
  v90 = sub_1000A3518();
  v91 = sub_1000A3CC8();
  if (os_log_type_enabled(v90, v91))
  {
    v186 = *(v3 + 288);
    v92 = *(v3 + 192);
    v93 = *(v3 + 144);
    v180 = *(v3 + 312);
    v183 = *(v3 + 136);
    v94 = *(v3 + 104);
    v178 = v94;
    v201 = v91;
    v184 = *(v3 + 96);
    v195 = v90;
    v95 = *(v3 + 80);
    v96 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    *v96 = 136315394;
    sub_100047188(v93, v92, &qword_1000C9328, &qword_1000AC9D0);
    v97 = *(v92 + *(v94 + 48));
    v98 = [v97 name];

    v99 = sub_1000A3A88();
    v101 = v100;

    sub_100022154(v93, &qword_1000C9328, &qword_1000AC9D0);
    v180(v92, v95);
    v102 = sub_1000954AC(v99, v101, &v210);

    *(v96 + 4) = v102;
    *(v96 + 12) = 2080;
    sub_100047188(v183, v92, &qword_1000C9328, &qword_1000AC9D0);

    v186(v184, v92, v95);
    sub_10007E7E8(&qword_1000C9340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v103 = sub_1000A3F28();
    v105 = v104;
    v106 = &off_1000C6000;
    v180(v184, v95);
    sub_100022154(v183, &qword_1000C9328, &qword_1000AC9D0);
    v107 = sub_1000954AC(v103, v105, &v210);

    *(v96 + 14) = v107;
    _os_log_impl(&_mh_execute_header, v195, v201, "[EKSHomeManagerActor] Found %s:%s", v96, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v130 = *(v3 + 136);
    v131 = *(v3 + 144);

    sub_100022154(v130, &qword_1000C9328, &qword_1000AC9D0);
    sub_100022154(v131, &qword_1000C9328, &qword_1000AC9D0);
    v106 = &off_1000C6000;
  }

  v207 = *(v3 + 336);
  v132 = *(v3 + 312);
  v133 = *(v3 + 256);
  v135 = *(v3 + 192);
  v134 = *(v3 + 200);
  v136 = *(v3 + 104);
  v137 = *(v3 + 80);
  sub_100047188(v134, v135, &qword_1000C9328, &qword_1000AC9D0);

  v138 = sub_1000A24C8();
  v140 = v139;
  v132(v135, v137);
  v141 = [v197 v106[281]];
  v142 = sub_1000A3A88();
  v144 = v143;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v210 = v133;
  sub_10007BE98(v142, v144, v138, v140, isUniquelyReferenced_nonNull_native);

  v146 = &v210;
  v147 = vld1q_dup_f64(v146);
  v208 = v147;
  sub_100022154(v134, &qword_1000C9328, &qword_1000AC9D0);
  v148 = v208;
LABEL_38:
  v154 = *(v3 + 272);
  v153 = *(v3 + 280);
  *(v3 + 256) = v148;
  v155 = (v154 - 1) & v154;
  if (v155)
  {
    v156 = *(v3 + 248);
LABEL_44:
    *(v3 + 272) = v155;
    *(v3 + 280) = v153;
    v159 = *(v3 + 200);
    v158 = *(v3 + 208);
    v160 = *(v3 + 192);
    v161 = *(v3 + 104);
    v162 = *(v3 + 80);
    v163 = *(v3 + 88);
    v164 = __clz(__rbit64(v155)) | (v153 << 6);
    (*(v163 + 16))(v158, *(v156 + 48) + *(v163 + 72) * v164, v162);
    v165 = *(*(v156 + 56) + 8 * v164);
    v166 = *(v161 + 48);
    v167 = *(v163 + 32);
    *(v3 + 288) = v167;
    *(v3 + 296) = (v163 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v167(v159, v158, v162);
    *(v159 + v166) = v165;
    sub_100047188(v159, v160, &qword_1000C9328, &qword_1000AC9D0);
    v168 = *(v160 + *(v161 + 48));
    v169 = v165;

    v170 = sub_1000A24C8();
    v172 = v171;
    *(v3 + 304) = v171;
    v173 = *(v163 + 8);
    *(v3 + 312) = v173;
    *(v3 + 320) = (v163 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v173(v160, v162);
    v174 = swift_task_alloc();
    *(v3 + 328) = v174;
    *v174 = v3;
    v174[1] = sub_1000732F0;

    return sub_100066308(v170, v172, 0);
  }

  else
  {
    while (1)
    {
      v157 = v153 + 1;
      if (__OFADD__(v153, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      v156 = *(v3 + 248);
      if (v157 >= (((1 << *(v3 + 344)) + 63) >> 6))
      {
        break;
      }

      v155 = *(v156 + 8 * v157 + 64);
      ++v153;
      if (v155)
      {
        v153 = v157;
        goto LABEL_44;
      }
    }

    v209 = v148.f64[1];
    swift_unknownObjectRelease();

    v176 = *(v3 + 8);

    return v176(*&v209);
  }
}

uint64_t sub_100074754()
{
  v1[6] = v0;
  v2 = sub_1000A2508();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = sub_10000275C(&qword_1000C9328, &qword_1000AC9D0);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100074874, v0, 0);
}

uint64_t sub_100074874()
{
  v1 = v0[6];
  v2 = *(*(v1 + 152) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
  v3 = sub_1000A3A78();
  v0[15] = [v2 _beginActiveAssertionWithReason:v3];

  v4 = *(v1 + 152);
  v0[16] = v4;
  v5 = v4;

  return _swift_task_switch(sub_100074958, 0, 0);
}

uint64_t sub_100074958()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_100074A48;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100074A48()
{

  return _swift_task_switch(sub_100074B60, 0, 0);
}

uint64_t sub_100074B60()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_100074BCC, v1, 0);
}

uint64_t sub_100074BCC()
{
  v1 = *(v0 + 48);
  [*(*(v1 + 152) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager) _endActiveAssertion:*(v0 + 120)];
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 152) = v2;
  v3 = *(v2 + 32);
  *(v0 + 240) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 160) = &_swiftEmptyDictionarySingleton;

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 168) = v6;
    *(v0 + 176) = v7;
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    v15 = __clz(__rbit64(v6)) | (v7 << 6);
    v16 = *(v2 + 48);
    v17 = *(v14 + 72);
    *(v0 + 184) = v17;
    v18 = v16 + v17 * v15;
    v19 = *(v14 + 16);
    *(v0 + 192) = v19;
    *(v0 + 200) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v9, v18, v13);
    v20 = *(*(v2 + 56) + 8 * v15);
    v21 = *(v12 + 48);
    (*(v14 + 32))(v10, v9, v13);
    *(v10 + v21) = v20;
    sub_100047188(v10, v11, &qword_1000C9328, &qword_1000AC9D0);
    *(v0 + 208) = *(v11 + *(v12 + 48));
    v22 = *(v14 + 8);
    *(v0 + 216) = v22;
    *(v0 + 224) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23 = v20;
    v22(v11, v13);
    v24 = swift_task_alloc();
    *(v0 + 232) = v24;
    *v24 = v0;
    v24[1] = sub_100074E90;
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);

    return sub_100069C1C(v26, v25);
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    swift_unknownObjectRelease();

    v28 = *(v0 + 8);

    return v28(&_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_100074E90()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_100074FA0, v1, 0);
}

unint64_t sub_100074FA0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 72);
  (*(v0 + 192))(v3, *(v0 + 80), *(v0 + 56));
  v4 = [v1 name];
  v5 = sub_1000A3A88();
  v7 = v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 40) = v2;
  result = sub_100079C54(v3);
  v11 = *(v2 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = v10;
  if (*(*(v0 + 160) + 24) >= v14)
  {
    v61 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = result;
      sub_10007C4C4();
      result = v18;
    }
  }

  else
  {
    v16 = *(v0 + 72);
    sub_10007A548(v14, isUniquelyReferenced_nonNull_native);
    result = sub_100079C54(v16);
    if ((v15 & 1) != (v17 & 1))
    {

      return sub_1000A3F78();
    }

    v61 = v7;
  }

  v19 = *(v0 + 40);
  v20 = *(v0 + 216);
  v21 = *(v0 + 208);
  if (v15)
  {
    v22 = *(v0 + 104);
    v24 = *(v0 + 72);
    v23 = *(v0 + 80);
    v25 = *(v0 + 56);
    v26 = (v19[7] + 16 * result);
    *v26 = v5;
    v26[1] = v61;

    v20(v24, v25);
    v20(v23, v25);
    result = sub_100022154(v22, &qword_1000C9328, &qword_1000AC9D0);
    goto LABEL_14;
  }

  v27 = *(v0 + 192);
  v28 = *(v0 + 184);
  v60 = *(v0 + 104);
  v30 = *(v0 + 72);
  v29 = *(v0 + 80);
  v31 = *(v0 + 56);
  v19[(result >> 6) + 8] |= 1 << result;
  v32 = result;
  v27(v19[6] + v28 * result, v30, v31);
  v33 = (v19[7] + 16 * v32);
  *v33 = v5;
  v33[1] = v61;

  v20(v30, v31);
  v20(v29, v31);
  result = sub_100022154(v60, &qword_1000C9328, &qword_1000AC9D0);
  v34 = v19[2];
  v13 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v13)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v19[2] = v35;
LABEL_14:
  v37 = *(v0 + 168);
  v36 = *(v0 + 176);
  *(v0 + 160) = v19;
  v38 = (v37 - 1) & v37;
  if (v38)
  {
    v39 = *(v0 + 152);
LABEL_20:
    *(v0 + 168) = v38;
    *(v0 + 176) = v36;
    v42 = *(v0 + 104);
    v41 = *(v0 + 112);
    v44 = *(v0 + 88);
    v43 = *(v0 + 96);
    v45 = *(v0 + 56);
    v46 = *(v0 + 64);
    v47 = __clz(__rbit64(v38)) | (v36 << 6);
    v48 = *(v39 + 48);
    v49 = *(v46 + 72);
    *(v0 + 184) = v49;
    v50 = v48 + v49 * v47;
    v51 = *(v46 + 16);
    *(v0 + 192) = v51;
    *(v0 + 200) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v51(v41, v50, v45);
    v52 = *(*(v39 + 56) + 8 * v47);
    v53 = *(v44 + 48);
    (*(v46 + 32))(v42, v41, v45);
    *(v42 + v53) = v52;
    sub_100047188(v42, v43, &qword_1000C9328, &qword_1000AC9D0);
    *(v0 + 208) = *(v43 + *(v44 + 48));
    v54 = *(v46 + 8);
    *(v0 + 216) = v54;
    *(v0 + 224) = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55 = v52;
    v54(v43, v45);
    v56 = swift_task_alloc();
    *(v0 + 232) = v56;
    *v56 = v0;
    v56[1] = sub_100074E90;
    v57 = *(v0 + 104);
    v58 = *(v0 + 80);

    return sub_100069C1C(v58, v57);
  }

  else
  {
    while (1)
    {
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v39 = *(v0 + 152);
      if (v40 >= (((1 << *(v0 + 240)) + 63) >> 6))
      {
        break;
      }

      v38 = *(v39 + 8 * v40 + 64);
      ++v36;
      if (v38)
      {
        v36 = v40;
        goto LABEL_20;
      }
    }

    swift_unknownObjectRelease();

    v59 = *(v0 + 8);

    return v59(v19);
  }
}

uint64_t sub_100075438()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

char *sub_1000754AC(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  ObjectType = swift_getObjectType();
  v3 = sub_1000A3CF8();
  __chkstk_darwin(*(*(v3 - 8) + 64));
  v4 = sub_1000A3568();
  __chkstk_darwin(*(*(v4 - 8) + 64));
  v5 = sub_1000A3D08();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_serialQueue;
  sub_100032224(0, &qword_1000C92C8, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  sub_1000A3558();
  v30 = &_swiftEmptyArrayStorage;
  sub_10007E7E8(&qword_1000C92D0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000275C(&qword_1000C92D8, &qword_1000AC930);
  sub_10007DA74(&qword_1000C92E0, &qword_1000C92D8, &qword_1000AC930);
  sub_1000A3E38();
  v9 = sub_1000A3D28();
  v10 = v24;
  *&v24[v23] = v9;
  v11 = objc_allocWithZone(HMMutableHomeManagerConfiguration);
  v12 = [v11 initWithOptions:v25 cachePolicy:v26];
  [v12 setDiscretionary:0];
  v13 = [objc_allocWithZone(NSOperationQueue) init];
  [v12 setDelegateQueue:v13];

  [v12 setAdaptive:1];
  [v12 setInactiveUpdatingLevel:1];
  v14 = objc_allocWithZone(HMFLocationAuthorization);
  v15 = v27;
  v16 = [v14 initWithBundle:v27];
  [v12 setLocationAuthorization:v16];

  v17 = [objc_allocWithZone(HMHomeManager) initWithConfiguration:v12];
  *&v10[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager] = v17;
  v29.receiver = v10;
  v29.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v29, "init");
  v19 = *&v18[OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager];
  v20 = v18;
  [v19 setDelegate:v20];

  return v20;
}

uint64_t sub_100075864(uint64_t a1, void *a2)
{
  v4 = sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v17 - v7;
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v17 - v10;
  v12 = sub_1000A3BE8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v5 + 32))(v14 + v13, v8, v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v15 = a2;
  sub_100069404(0, 0, v11, &unk_1000AC9F0, v14);

  return sub_100022154(v11, &qword_1000C8240, &qword_1000AB688);
}

uint64_t sub_100075A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100075A98, 0, 0);
}

uint64_t sub_100075A98()
{
  if (qword_1000C7590 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C96F8;
  *(v0 + 32) = qword_1000C96F8;

  return _swift_task_switch(sub_100075B40, v1, 0);
}

uint64_t sub_100075B40()
{
  *(v0 + 136) = *(*(v0 + 32) + 112);

  return _swift_task_switch(sub_100075BB0, 0, 0);
}

uint64_t sub_100075BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 136) == 1)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v4 = sub_1000A3538();
    sub_100001E38(v4, qword_1000C96B8);
    v5 = sub_1000A3518();
    v6 = sub_1000A3CB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[EKSHomeManager] Homes already loaded", v7, 2u);
    }

    sub_10000275C(&qword_1000C9338, &qword_1000AC9E0);
    sub_1000A3BC8();
    v8 = *(v3 + 8);

    return v8();
  }

  else
  {
    v10 = *(*(v3 + 24) + OBJC_IVAR____TtC16EnergyKitService14EKSHomeManager_manager);
    *(v3 + 40) = v10;
    v11 = [v10 dataSyncState];
    if (v11)
    {
      if (v11 == 1)
      {
        if (qword_1000C7570 != -1)
        {
          swift_once();
        }

        v12 = sub_1000A3538();
        sub_100001E38(v12, qword_1000C96B8);
        v13 = sub_1000A3518();
        v14 = sub_1000A3CB8();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "[EKSHomeManager] Sync state good", v15, 2u);
        }

        *(v3 + 48) = qword_1000C96F8;

        v16 = swift_task_alloc();
        *(v3 + 56) = v16;
        *v16 = v3;
        v17 = sub_100076058;
      }

      else
      {
        if (qword_1000C7570 != -1)
        {
          swift_once();
        }

        v23 = sub_1000A3538();
        sub_100001E38(v23, qword_1000C96B8);
        v24 = sub_1000A3518();
        v25 = sub_1000A3CB8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "[EKSHomeManager] Sync state updated to good", v26, 2u);
        }

        *(v3 + 112) = qword_1000C96F8;

        v16 = swift_task_alloc();
        *(v3 + 120) = v16;
        *v16 = v3;
        v17 = sub_100076AAC;
      }

      v16[1] = v17;

      return sub_10006C78C();
    }

    else
    {
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v18 = sub_1000A3538();
      *(v3 + 72) = sub_100001E38(v18, qword_1000C96B8);
      v19 = sub_1000A3518();
      v20 = sub_1000A3CC8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "[EKSHomeManager] Sync state unknown", v21, 2u);
      }

      v22 = qword_1000C96F8;
      *(v3 + 80) = qword_1000C96F8;

      return _swift_task_switch(sub_100076258, v22, 0);
    }
  }
}

uint64_t sub_100076058()
{

  return _swift_task_switch(sub_100076170, 0, 0);
}

uint64_t sub_100076170()
{
  v1 = qword_1000C96F8;
  *(v0 + 64) = qword_1000C96F8;

  return _swift_task_switch(sub_1000761E8, v1, 0);
}

uint64_t sub_1000761E8()
{
  *(*(v0 + 64) + 112) = 1;

  return _swift_task_switch(sub_10007E8A4, 0, 0);
}

uint64_t sub_100076258()
{
  *(v0 + 137) = *(*(v0 + 80) + 112);

  return _swift_task_switch(sub_1000762C8, 0, 0);
}