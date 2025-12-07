uint64_t sub_100066E4C()
{

  return _swift_task_switch(sub_100066F48, 0, 0);
}

uint64_t sub_100066F48()
{
  sub_100089B1C(v0[87], type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
  v1 = swift_task_alloc();
  v0[102] = v1;
  *v1 = v0;
  v1[1] = sub_100065114;
  v2 = v0[93];

  return sub_10007CF08(v2);
}

uint64_t sub_100067010()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  sub_100089B7C(v1, *(v0 + 448), type metadata accessor for RateLimitConfiguration);
  sub_100089B7C(v1, v2, type metadata accessor for RateLimitConfiguration);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 440);
  v7 = *(v0 + 448);
  if (v5)
  {
    v8 = *(v0 + 424);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    v10 = *(v7 + *(v8 + 20));
    sub_100089B1C(v7, type metadata accessor for RateLimitConfiguration);
    *(v9 + 4) = v10;
    *(v9 + 12) = 2048;
    v11 = *(v6 + *(v8 + 20) + 8);
    sub_100089B1C(v6, type metadata accessor for RateLimitConfiguration);
    *(v9 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "rate limit discovered for rate with count=%lu, duration=%f", v9, 0x16u);
  }

  else
  {
    sub_100089B1C(*(v0 + 448), type metadata accessor for RateLimitConfiguration);

    sub_100089B1C(v6, type metadata accessor for RateLimitConfiguration);
  }

  v12 = *(v0 + 456);
  v13 = *(v0 + 424);
  v14 = *(v0 + 408);
  swift_beginAccess();
  v15 = *v12;
  v16 = v12[1];
  v17 = v12[2];
  *(v0 + 64) = *(v12 + 6);
  *(v0 + 32) = v16;
  *(v0 + 48) = v17;
  *(v0 + 16) = v15;
  sub_100089B7C(v12 + *(v13 + 20), v14, type metadata accessor for RateLimitTimingDetails);
  v18 = type metadata accessor for RateLimitTimingDetails(0);
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  sub_10001B9AC(v0 + 16, v0 + 72);
  sub_100017758(v14, (v0 + 16));
  sub_1000E3E7C(v12);
  swift_endAccess();

  return _swift_task_switch(sub_1000672B0, 0, 0);
}

uint64_t sub_1000672B0()
{
  v37 = v0;
  v1 = *(v0 + 496);
  sub_100089B1C(*(v0 + 456), type metadata accessor for RateLimitConfiguration);
  sub_100089B1C(v1, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
  v2 = *(v0 + 872) + 1;
  if (v2 == *(v0 + 848))
  {
LABEL_2:
    v3 = swift_task_alloc();
    *(v0 + 864) = v3;
    *v3 = v0;
    v3[1] = sub_100066E4C;

    return sub_1000ED278();
  }

  else
  {
    while (1)
    {
      *(v0 + 872) = v2;
      v7 = *(v0 + 792);
      v8 = *(v0 + 528);
      v10 = *(v0 + 488);
      v9 = *(v0 + 496);
      v12 = *(v0 + 424);
      v11 = *(v0 + 432);
      v13 = *(v0 + 416);
      v14 = *(v0 + 304);
      sub_100089B7C(*(v0 + 840) + ((*(v0 + 896) + 32) & ~*(v0 + 896)) + *(v0 + 856) * v2, v9, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      sub_100089B7C(v9, v10, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      sub_100044698(v14 + v7, v0 + 128);
      sub_1000E5BA4(v8, v10, (v0 + 128), v13);
      v15 = (*(v11 + 48))(v13, 1, v12);
      v16 = *(v0 + 416);
      if (v15 != 1)
      {
        break;
      }

      v17 = *(v0 + 496);
      v18 = *(v0 + 480);
      sub_100011F00(v16, &qword_100229348, &unk_1001D64C0);
      sub_100089B7C(v17, v18, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

      v19 = sub_1001D0E50();
      v20 = sub_1001D1DE0();

      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 496);
      if (v21)
      {
        v24 = *(v0 + 480);
        v23 = *(v0 + 488);
        v35 = *(v0 + 496);
        v26 = *(v0 + 312);
        v25 = *(v0 + 320);
        v27 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v27 = 136315394;
        *(v27 + 4) = sub_1000954E0(v26, v25, &v36);
        *(v27 + 12) = 2080;
        sub_100089B7C(v24, v23, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v28 = sub_1001D1820();
        v30 = v29;
        sub_100089B1C(v24, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v31 = sub_1000954E0(v28, v30, &v36);

        *(v27 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v19, v20, "%s unable to process rate limit configuration %s", v27, 0x16u);
        swift_arrayDestroy();

        v6 = v35;
      }

      else
      {
        v5 = *(v0 + 480);

        sub_100089B1C(v5, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
        v6 = v22;
      }

      sub_100089B1C(v6, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v2 = *(v0 + 872) + 1;
      if (v2 == *(v0 + 848))
      {
        goto LABEL_2;
      }
    }

    v32 = *(v0 + 800);
    v33 = *(v0 + 304);
    sub_100089478(v16, *(v0 + 456), type metadata accessor for RateLimitConfiguration);
    v34 = *(v33 + v32);
    *(v0 + 880) = v34;

    return _swift_task_switch(sub_100067010, v34, 0);
  }
}

uint64_t sub_1000676F4()
{

  return _swift_task_switch(sub_1000677F0, 0, 0);
}

uint64_t sub_1000677F0()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[78];
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v6 = *(v1 + 32);
    v6(v0[83], v3, v2);
    if (sub_1001D0810())
    {
      v7 = v0[42];
      os_unfair_lock_lock(v7);
      v12 = *(v7 + 8);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        __break(1u);
        return TaskGroup.next(isolation:)(v8, v9, v10, v11);
      }

      v15 = v0[42];
      *(v15 + 8) = v14;
      os_unfair_lock_unlock(v15);
    }

    v16 = sub_1001D0830();
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      v20 = v0[43];
      v21 = *v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = v0[43];
        v21 = sub_100008F3C(0, *(v21 + 2) + 1, 1, v21);
        *v43 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v44 = v0[43];
        v21 = sub_100008F3C((v23 > 1), v24 + 1, 1, v21);
        *v44 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = v18;
      *(v25 + 5) = v19;
    }

    v26 = v0[83];
    v27 = v0[82];
    v28 = v0[81];
    v29 = v0[80];
    v30 = v0[44];
    os_unfair_lock_lock(v30);
    (*(v28 + 16))(v27, v26, v29);
    v31 = *(v30 + 8);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 8) = v31;
    if ((v32 & 1) == 0)
    {
      v41 = v0[44];
      v31 = sub_100009494(0, *(v31 + 2) + 1, 1, v31);
      *(v41 + 8) = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v42 = v0[44];
      v31 = sub_100009494((v33 > 1), v34 + 1, 1, v31);
      *(v42 + 8) = v31;
    }

    v35 = v0[83];
    v36 = v0[82];
    v37 = v0[81];
    v38 = v0[80];
    v39 = v0[44];
    *(v31 + 2) = v34 + 1;
    v6(&v31[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34], v36, v38);
    os_unfair_lock_unlock(v39);
    (*(v37 + 8))(v35, v38);
    v40 = swift_task_alloc();
    v0[111] = v40;
    v11 = sub_100011AC0(&qword_100229370, &qword_1001D64E8);
    *v40 = v0;
    v40[1] = sub_1000676F4;
    v8 = v0[78];
    v9 = 0;
    v10 = 0;

    return TaskGroup.next(isolation:)(v8, v9, v10, v11);
  }

  sub_100011F00(v3, &qword_100229358, &qword_1001D64D0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100067CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_100067CE8, 0, 0);
}

uint64_t sub_100067CE8()
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

  return sub_100067DA8(v9, v7, v8, v1, v5, v6, v3, v4);
}

uint64_t sub_100067DA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1376) = v8;
  *(v9 + 1368) = a8;
  *(v9 + 1360) = a7;
  *(v9 + 1352) = a6;
  *(v9 + 1344) = a5;
  *(v9 + 1820) = a4;
  *(v9 + 1336) = a3;
  *(v9 + 1328) = a2;
  *(v9 + 1320) = a1;
  *(v9 + 1384) = type metadata accessor for ThimbledEvent(0);
  *(v9 + 1392) = swift_task_alloc();
  v10 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  *(v9 + 1400) = v10;
  *(v9 + 1408) = *(v10 - 8);
  *(v9 + 1416) = swift_task_alloc();
  sub_1001CFDD0();
  *(v9 + 1424) = swift_task_alloc();
  v11 = sub_1001D02E0();
  *(v9 + 1432) = v11;
  *(v9 + 1440) = *(v11 - 8);
  *(v9 + 1448) = swift_task_alloc();
  v12 = sub_1001CFDA0();
  *(v9 + 1456) = v12;
  *(v9 + 1464) = *(v12 - 8);
  *(v9 + 1472) = swift_task_alloc();
  *(v9 + 1480) = type metadata accessor for ValidatedAttestation(0);
  *(v9 + 1488) = swift_task_alloc();
  *(v9 + 1496) = swift_task_alloc();
  v13 = sub_1001D0820();
  *(v9 + 1504) = v13;
  *(v9 + 1512) = *(v13 - 8);
  *(v9 + 1520) = swift_task_alloc();
  v14 = sub_1001CFD60();
  *(v9 + 1528) = v14;
  *(v9 + 1536) = *(v14 - 8);
  *(v9 + 1544) = swift_task_alloc();
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  v15 = sub_1001D08A0();
  *(v9 + 1568) = v15;
  *(v9 + 1576) = *(v15 - 8);
  *(v9 + 1584) = swift_task_alloc();
  *(v9 + 1592) = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  *(v9 + 1600) = swift_task_alloc();
  *(v9 + 1608) = swift_task_alloc();
  *(v9 + 1616) = swift_task_alloc();
  v16 = sub_1001D1470();
  *(v9 + 1624) = v16;
  *(v9 + 1632) = *(v16 - 8);
  *(v9 + 1640) = swift_task_alloc();
  v17 = sub_1001D1460();
  *(v9 + 1648) = v17;
  *(v9 + 1656) = *(v17 - 8);
  *(v9 + 1664) = swift_task_alloc();

  return _swift_task_switch(sub_100068210, 0, 0);
}

uint64_t sub_100068210()
{
  v17 = v0[208];
  v18 = v0[207];
  v1 = v0[206];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[203];
  v21 = v0[202];
  v22 = v0[197];
  v24 = v0[198];
  v25 = v0[196];
  v20 = v0[172];
  v23 = v0[167];
  v5 = v0[166];
  sub_10008A830(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v26 = sub_1001D23A0();
  v27 = v6;
  v29._countAndFlagsBits = 58;
  v29._object = 0xE100000000000000;
  sub_1001D18B0(v29);
  v0[209] = v26;
  v0[210] = v27;
  v7 = v5;
  v19 = v5;
  v8 = *v5;
  v9 = v7[1];
  sub_10008A830(&qword_100229378, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1001D1440();
  sub_100012038(v8, v9);
  sub_100158DE0(v8, v9, v2);
  sub_100011E48(v8, v9);
  sub_1001D1430();
  (*(v3 + 8))(v2, v4);
  v0[144] = v1;
  v0[145] = sub_10008A830(&qword_100229380, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v10 = sub_10003B47C(v0 + 141);
  (*(v18 + 16))(v10, v17, v1);
  sub_100024DC8(v0 + 141, v0[144]);
  sub_1001CF8E0();
  v11 = v0[160];
  v12 = v0[161];
  sub_100011CF0(v0 + 141);
  v0[211] = sub_1001CFBF0(0);
  v0[212] = v13;
  sub_100011E48(v11, v12);
  (*(v18 + 8))(v17, v1);
  v0[213] = *(*v20 + 232);
  sub_100089B7C(v19, v21, type metadata accessor for Proto_Ropes_Common_Attestation);
  v14 = *(v22 + 16);
  v0[214] = v14;
  v0[215] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v24, v23, v25);
  sub_10008AC80(v21, v24, v0 + 124);
  v15 = swift_task_alloc();
  v0[216] = v15;
  *v15 = v0;
  v15[1] = sub_1000685B4;

  return sub_100079B54((v0 + 124));
}

uint64_t sub_1000685B4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[217] = a1;
  v4[218] = a2;
  v4[219] = v2;

  sub_10005AF88((v4 + 124));
  if (v2)
  {
    v5 = sub_100068EA0;
  }

  else
  {
    v5 = sub_1000686D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000686D8()
{
  v14 = v0;
  if (v0[218])
  {
    v0[220] = *(v0[172] + *(*v0[172] + 216));
    type metadata accessor for AttestationStore();
    sub_10008A830(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);
    v2 = sub_1001D1A70();
    v0[221] = v2;
    v0[222] = v1;

    return _swift_task_switch(sub_100068AE8, v2, v1);
  }

  else
  {

    v3 = sub_1001D0E50();
    v4 = sub_1001D1DE0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[212];
      v6 = v0[211];
      v7 = v0[210];
      v8 = v0[209];
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = sub_1000954E0(v8, v7, &v13);

      *(v9 + 4) = v10;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1000954E0(v6, v5, &v13);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s unique identifier for attestation %s missing", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v0[189] + 104))(v0[190], enum case for Prefetch.Response.Node.ValidationResult.noUniqueIdentifier(_:), v0[188]);

    sub_1001D07F0();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100068AE8()
{
  *(v0 + 1821) = sub_100031CB4(*(v0 + 1736), *(v0 + 1744));

  return _swift_task_switch(sub_100068B60, 0, 0);
}

uint64_t sub_100068B60()
{
  v25 = v0;
  if (*(v0 + 1821) == 1)
  {

    v1 = sub_1001D0E50();
    v2 = sub_1001D1E00();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 1744);
      v4 = *(v0 + 1736);
      v23 = *(v0 + 1696);
      v5 = *(v0 + 1688);
      v6 = *(v0 + 1680);
      v7 = *(v0 + 1672);
      v8 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v8 = 136315650;
      v9 = sub_1000954E0(v7, v6, &v24);

      *(v8 + 4) = v9;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1000954E0(v4, v3, &v24);
      *(v8 + 22) = 2080;
      *(v8 + 24) = sub_1000954E0(v5, v23, &v24);
      _os_log_impl(&_mh_execute_header, v1, v2, "%s node exists in store for attestation %s %s", v8, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v21 = *(v0 + 1776);
    v22 = *(v0 + 1768);

    return _swift_task_switch(sub_1000693BC, v22, v21);
  }

  else
  {
    v10 = *(v0 + 1712);
    v11 = *(v0 + 1616);
    v12 = *(v0 + 1584);
    v13 = *(v0 + 1568);
    v14 = *(v0 + 1376);
    v15 = *(v0 + 1336);
    v16 = *(v0 + 1328);

    sub_1001CFD50();
    v17 = *(v14 + *(*v14 + 328));
    *(v0 + 1822) = v17;
    sub_100089B7C(v16, v11, type metadata accessor for Proto_Ropes_Common_Attestation);
    v10(v12, v15, v13);
    sub_10008AC80(v11, v12, (v0 + 896));
    v18 = swift_task_alloc();
    *(v0 + 1784) = v18;
    *v18 = v0;
    v18[1] = sub_1000692A0;
    v19 = *(v0 + 1496);

    return sub_100076C40(v19, v0 + 896, v17);
  }
}

uint64_t sub_100068EA0()
{
  v19 = v0;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[212];
    v4 = v0[211];
    v5 = v0[210];
    v6 = v0[209];
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

  v9 = v0[190];
  v10 = v0[189];
  v17 = v0[188];
  swift_getErrorValue();
  v11 = *(v0[152] - 8);
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

uint64_t sub_1000692A0()
{
  v2 = *v1;
  *(v2 + 1792) = v0;

  sub_10005AF88(v2 + 896);
  if (v0)
  {
    v3 = sub_100069F6C;
  }

  else
  {
    v3 = sub_100069668;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000693BC()
{
  *(v0 + 1823) = sub_100032BFC(*(v0 + 1336), *(v0 + 1736), *(v0 + 1744), (*(v0 + 1820) & 1) == 0, *(v0 + 1360), *(v0 + 1368)) & 1;

  return _swift_task_switch(sub_10006944C, 0, 0);
}

uint64_t sub_10006944C()
{
  v1 = &enum case for Prefetch.Response.Node.ValidationResult.nodeAlreadyExistsInBatch(_:);
  if (!*(v0 + 1823))
  {
    v1 = &enum case for Prefetch.Response.Node.ValidationResult.validationNotNeeded(_:);
  }

  (*(*(v0 + 1512) + 104))(*(v0 + 1520), *v1, *(v0 + 1504));

  sub_1001D07F0();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100069668()
{
  v68 = v0;
  v1 = *(v0 + 1328);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = v2 == *(v0 + 1688) && v3 == *(v0 + 1696);
    if (!v5 && (sub_1001D2470() & 1) == 0)
    {
      v6 = *(v0 + 1600);
      v7 = *(v0 + 1328);
      sub_100089B7C(v7, *(v0 + 1608), type metadata accessor for Proto_Ropes_Common_Attestation);
      sub_100089B7C(v7, v6, type metadata accessor for Proto_Ropes_Common_Attestation);

      v8 = sub_1001D0E50();
      v9 = sub_1001D1DE0();

      if (!os_log_type_enabled(v8, v9))
      {
        v27 = *(v0 + 1608);
        sub_100089B1C(*(v0 + 1600), type metadata accessor for Proto_Ropes_Common_Attestation);

        sub_100089B1C(v27, type metadata accessor for Proto_Ropes_Common_Attestation);
        goto LABEL_22;
      }

      v10 = *(v0 + 1696);
      v11 = *(v0 + 1688);
      v12 = *(v0 + 1680);
      v13 = *(v0 + 1672);
      v14 = *(v0 + 1608);
      v15 = *(v0 + 1600);
      v16 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v16 = 136315906;
      *(v16 + 4) = sub_1000954E0(v13, v12, &v67);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1000954E0(v11, v10, &v67);
      *(v16 + 22) = 2080;
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);

      sub_100089B1C(v14, type metadata accessor for Proto_Ropes_Common_Attestation);
      v19 = sub_1000954E0(v17, v18, &v67);

      *(v16 + 24) = v19;
      *(v16 + 32) = 2048;
      v23 = *v15;
      v24 = v15[1];
      v25 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        if (v25 != 2)
        {
          v26 = 0;
          goto LABEL_21;
        }

        v29 = v23 + 16;
        v23 = *(v23 + 16);
        v28 = *(v29 + 8);
        v26 = v28 - v23;
        if (!__OFSUB__(v28, v23))
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      else if (!v25)
      {
        v26 = BYTE6(v24);
LABEL_21:
        sub_100089B1C(*(v0 + 1600), type metadata accessor for Proto_Ropes_Common_Attestation);
        *(v16 + 34) = v26;
        _os_log_impl(&_mh_execute_header, v8, v9, "%s node id does not match attestation bundle calculated=%s fromServer=%s bundleSize=%ld bytes", v16, 0x2Au);
        swift_arrayDestroy();

        goto LABEL_22;
      }

      v30 = __OFSUB__(HIDWORD(v23), v23);
      v31 = HIDWORD(v23) - v23;
      if (v30)
      {
        __break(1u);
        return _swift_task_switch(v20, v21, v22);
      }

      v26 = v31;
      goto LABEL_21;
    }
  }

LABEL_22:
  v32 = *(v0 + 1480);
  v33 = (*(v0 + 1496) + *(v32 + 32));
  *(v0 + 1800) = *v33;
  v34 = v33[1];
  *(v0 + 1808) = v34;
  if (!v34)
  {

    v50 = sub_1001D0E50();
    v51 = sub_1001D1DE0();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 1696);
      v53 = *(v0 + 1688);
      v54 = *(v0 + 1680);
      v55 = *(v0 + 1672);
      v56 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v56 = 136315394;
      v57 = sub_1000954E0(v55, v54, &v67);

      *(v56 + 4) = v57;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_1000954E0(v53, v52, &v67);
      _os_log_impl(&_mh_execute_header, v50, v51, "%s attestation validation did not return a unique device id for attestation: %s", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v58 = &enum case for Prefetch.Response.Node.ValidationResult.noUniqueIdentifier(_:);
    goto LABEL_35;
  }

  *(v0 + 1816) = *(v32 + 28);

  sub_1001CFD00();
  if (v35 <= 172800.0)
  {
    v22 = *(v0 + 1776);
    v21 = *(v0 + 1768);
    v20 = sub_10006A8B0;

    return _swift_task_switch(v20, v21, v22);
  }

  v36 = *(v0 + 1496);
  v37 = *(v0 + 1488);

  sub_100089B7C(v36, v37, type metadata accessor for ValidatedAttestation);

  v38 = sub_1001D0E50();
  v39 = sub_1001D1DE0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 1688);
    v41 = *(v0 + 1680);
    v42 = *(v0 + 1672);
    v64 = *(v0 + 1696);
    v43 = *(v0 + 1488);
    v44 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v44 = 136315650;
    v45 = sub_1000954E0(v42, v41, &v67);

    *(v44 + 4) = v45;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_1000954E0(v40, v64, &v67);
    *(v44 + 22) = 2080;
    sub_10008A830(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v46 = sub_1001D23A0();
    v48 = v47;
    sub_100089B1C(v43, type metadata accessor for ValidatedAttestation);
    v49 = sub_1000954E0(v46, v48, &v67);

    *(v44 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s attestation validation returned too long expiration for attestation: %s; expiry: %s", v44, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v59 = *(v0 + 1488);

    sub_100089B1C(v59, type metadata accessor for ValidatedAttestation);
  }

  v58 = &enum case for Prefetch.Response.Node.ValidationResult.validatedExpiryTooLarge(_:);
LABEL_35:
  v60 = *(v0 + 1536);
  v65 = *(v0 + 1528);
  v66 = *(v0 + 1560);
  v63 = *(v0 + 1496);
  (*(*(v0 + 1512) + 104))(*(v0 + 1520), *v58, *(v0 + 1504));

  sub_1001D07F0();
  sub_100089B1C(v63, type metadata accessor for ValidatedAttestation);
  (*(v60 + 8))(v66, v65);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_100069F6C()
{
  v99 = v0;

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v96 = *(v0 + 1696);
    v3 = *(v0 + 1688);
    v4 = *(v0 + 1680);
    v5 = *(v0 + 1672);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v98[0] = swift_slowAlloc();
    *v6 = 136315650;
    v8 = sub_1000954E0(v5, v4, v98);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000954E0(v3, v96, v98);
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

  v85 = *(v0 + 1822);
  v92 = *(v0 + 1696);
  v93 = *(v0 + 1688);
  v95 = *(v0 + 1560);
  v84 = *(v0 + 1552);
  v81 = *(v0 + 1544);
  v97 = *(v0 + 1536);
  v94 = *(v0 + 1528);
  v89 = *(v0 + 1520);
  v90 = *(v0 + 1512);
  v91 = *(v0 + 1504);
  v10 = *(v0 + 1472);
  v11 = *(v0 + 1464);
  v12 = *(v0 + 1456);
  v13 = *(v0 + 1448);
  v14 = *(v0 + 1440);
  v73 = *(v0 + 1432);
  v78 = *(v0 + 1424);
  v86 = *(v0 + 1416);
  v87 = *(v0 + 1408);
  v88 = *(v0 + 1400);
  v15 = *(v0 + 1392);
  v16 = *(v0 + 1376);
  v17 = *(v0 + 1352);
  swift_getErrorValue();
  v79 = *(v0 + 1232);
  v77 = *(v0 + 1240);
  v82 = *(v0 + 1248);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  (*(v11 + 16))(v10, v17, v12);
  v18 = (v16 + *(*v16 + 296));
  v83 = *v18;
  v76 = v18[1];
  v19 = (v16 + *(*v16 + 240));
  v20 = v19[3];
  v21 = v19[4];
  sub_100024DC8(v19, v20);
  v22 = (v16 + *(*v16 + 256));
  *(v0 + 1192) = &type metadata for SystemInfo;
  *(v0 + 1200) = &protocol witness table for SystemInfo;
  v23 = swift_allocObject();
  *(v0 + 1168) = v23;
  v25 = v22[1];
  v24 = v22[2];
  *(v0 + 192) = *v22;
  *(v0 + 208) = v25;
  *(v0 + 224) = v24;
  v26 = v22[6];
  v28 = v22[3];
  v27 = v22[4];
  *(v0 + 272) = v22[5];
  *(v0 + 288) = v26;
  *(v0 + 240) = v28;
  *(v0 + 256) = v27;
  v29 = v22[10];
  v31 = v22[7];
  v30 = v22[8];
  *(v0 + 336) = v22[9];
  *(v0 + 352) = v29;
  *(v0 + 304) = v31;
  *(v0 + 320) = v30;
  v32 = *v22;
  v33 = v22[2];
  v23[2] = v22[1];
  v23[3] = v33;
  v23[1] = v32;
  v34 = v22[3];
  v35 = v22[4];
  v36 = v22[6];
  v23[6] = v22[5];
  v23[7] = v36;
  v23[4] = v34;
  v23[5] = v35;
  v37 = v22[7];
  v38 = v22[8];
  v39 = v22[10];
  v23[10] = v22[9];
  v23[11] = v39;
  v23[8] = v37;
  v23[9] = v38;

  sub_1000884D8(v0 + 192, v0 + 368);
  Configuration.environment(systemInfo:)((v0 + 1168), v20, v21, v13);
  sub_100011CF0((v0 + 1168));
  v40 = sub_1001D02B0();
  v74 = v41;
  v75 = v40;
  (*(v14 + 8))(v13, v73);
  v42 = *v22;
  v43 = v22[2];
  *(v0 + 32) = v22[1];
  *(v0 + 48) = v43;
  *(v0 + 16) = v42;
  v44 = v22[3];
  v45 = v22[4];
  v46 = v22[6];
  *(v0 + 96) = v22[5];
  *(v0 + 112) = v46;
  *(v0 + 64) = v44;
  *(v0 + 80) = v45;
  v47 = v22[7];
  v48 = v22[8];
  v49 = v22[10];
  *(v0 + 160) = v22[9];
  *(v0 + 176) = v49;
  *(v0 + 128) = v47;
  *(v0 + 144) = v48;
  v50 = *v22;
  v51 = v22[2];
  *(v0 + 560) = v22[1];
  *(v0 + 576) = v51;
  *(v0 + 544) = v50;
  v52 = v22[3];
  v53 = v22[4];
  v54 = v22[6];
  *(v0 + 624) = v22[5];
  *(v0 + 640) = v54;
  *(v0 + 592) = v52;
  *(v0 + 608) = v53;
  v55 = v22[7];
  v56 = v22[8];
  v57 = v22[10];
  *(v0 + 688) = v22[9];
  *(v0 + 704) = v57;
  *(v0 + 656) = v55;
  *(v0 + 672) = v56;
  sub_1000884D8(v0 + 16, v0 + 720);
  sub_1001CFDC0();
  v58 = *(v77 - 8);
  v59 = swift_task_alloc();
  (*(v58 + 16))(v59, v79, v77);

  sub_1001CFD50();
  sub_1001CFC90();
  v80 = *(v97 + 8);
  v80(v81, v94);
  v60 = sub_1001D2630();
  v62 = v61;
  v63 = *(v16 + *(*v16 + 304));

  sub_10001C2C8(v84, v10, v83, v76, v75, v74, v0 + 544, v78, (v0 + 1088), 1u, v93, v92, v59, v60, v62, v63, v64, v85, &type metadata for SystemInfo, v77, &protocol witness table for SystemInfo, v82);

  v15[3] = &type metadata for AttestationVerificationErrorMetric;
  v15[4] = sub_10005AFDC();
  v65 = swift_allocObject();
  *v15 = v65;
  *(v65 + 48) = *(v0 + 1120);
  v66 = *(v0 + 1104);
  *(v65 + 16) = *(v0 + 1088);
  *(v65 + 32) = v66;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v87 + 8))(v86, v88);
  swift_getErrorValue();
  v67 = *(*(v0 + 1264) - 8);
  swift_task_alloc();
  (*(v67 + 16))();

  v68 = sub_1001D1820();
  v70 = v69;

  *v89 = v68;
  v89[1] = v70;
  (*(v90 + 104))(v89, enum case for Prefetch.Response.Node.ValidationResult.invalid(_:), v91);
  sub_1001D07F0();

  v80(v95, v94);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_10006A8B0()
{
  *(v0 + 1824) = sub_1000278B4(*(v0 + 1496), *(v0 + 1336), (*(v0 + 1820) & 1) == 0, *(v0 + 1360), *(v0 + 1368)) & 1;

  return _swift_task_switch(sub_10006A93C, 0, 0);
}

uint64_t sub_10006A93C()
{
  v31 = v0;
  v1 = *(v0 + 1824);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  v4 = os_log_type_enabled(v2, v3);
  if (v1 == 1)
  {
    if (v4)
    {
      v5 = *(v0 + 1696);
      v6 = *(v0 + 1688);
      v7 = *(v0 + 1680);
      v8 = *(v0 + 1672);
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
    v12 = *(v0 + 1696);
    v13 = *(v0 + 1688);
    v14 = *(v0 + 1680);
    v15 = *(v0 + 1672);
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
  v28 = *(v0 + 1816);
  v29 = *(v0 + 1560);
  v17 = *(v0 + 1536);
  v18 = *(v0 + 1528);
  v19 = *(v0 + 1520);
  v20 = *(v0 + 1512);
  v27 = *(v0 + 1504);
  v21 = *(v0 + 1496);
  v22 = *(sub_100011AC0(&qword_100229390, &qword_1001D6518) + 48);
  v24 = *(v21 + 104);
  v23 = *(v21 + 112);
  *v19 = v24;
  v19[1] = v23;
  (*(v17 + 16))(v19 + v22, v21 + v28, v18);
  (*(v20 + 104))(v19, enum case for Prefetch.Response.Node.ValidationResult.valid(_:), v27);

  sub_100012038(v24, v23);
  sub_1001D07F0();
  sub_100089B1C(v21, type metadata accessor for ValidatedAttestation);
  (*(v17 + 8))(v29, v18);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10006ADEC()
{
  v1[156] = v0;
  v2 = sub_1001D0F00();
  v1[157] = v2;
  v1[158] = *(v2 - 8);
  v1[159] = swift_task_alloc();
  v3 = sub_1001D0F40();
  v1[160] = v3;
  v1[161] = *(v3 - 8);
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v4 = sub_100011AC0(&qword_1002292F8, &unk_1001E1C80);
  v1[164] = v4;
  v1[165] = *(v4 - 8);
  v1[166] = swift_task_alloc();
  v5 = sub_1001D0860();
  v1[167] = v5;
  v1[168] = *(v5 - 8);
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v6 = sub_1001CFDA0();
  v1[171] = v6;
  v1[172] = *(v6 - 8);
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  v1[176] = swift_task_alloc();
  v1[177] = swift_task_alloc();
  v7 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v1[178] = v7;
  v1[179] = *(v7 - 8);
  v1[180] = swift_task_alloc();
  v1[181] = swift_task_alloc();
  v1[182] = swift_task_alloc();
  v1[183] = swift_task_alloc();
  v8 = sub_1001D1380();
  v1[184] = v8;
  v1[185] = *(v8 - 8);
  v1[186] = swift_task_alloc();
  v1[187] = swift_task_alloc();
  v9 = sub_1001D0ED0();
  v1[188] = v9;
  v1[189] = *(v9 - 8);
  v1[190] = swift_task_alloc();
  v1[191] = type metadata accessor for ThimbledEvent(0);
  v1[192] = swift_task_alloc();
  v10 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v1[193] = v10;
  v1[194] = *(v10 - 8);
  v1[195] = swift_task_alloc();
  v11 = sub_1001D02E0();
  v1[196] = v11;
  v1[197] = *(v11 - 8);
  v1[198] = swift_task_alloc();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v12 = sub_1001CFD60();
  v1[201] = v12;
  v1[202] = *(v12 - 8);
  v1[203] = swift_task_alloc();
  v1[204] = swift_task_alloc();
  v1[205] = swift_task_alloc();
  v1[206] = swift_task_alloc();
  v13 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v1[207] = v13;
  v1[208] = *(v13 - 8);
  v1[209] = swift_task_alloc();
  v14 = sub_100011AC0(&qword_1002292A8, &qword_1001D6418);
  v1[210] = v14;
  v1[211] = *(v14 - 8);
  v1[212] = swift_task_alloc();
  sub_1001D1810();
  v1[213] = swift_task_alloc();
  sub_100011AC0(&qword_1002292B0, &unk_1001D6420);
  v1[214] = swift_task_alloc();
  v15 = sub_1001D08A0();
  v1[215] = v15;
  v1[216] = *(v15 - 8);
  v1[217] = swift_task_alloc();

  return _swift_task_switch(sub_10006B4DC, 0, 0);
}

uint64_t sub_10006B4DC()
{
  v359 = v0;
  *(v0 + 1744) = *(**(v0 + 1248) + 320);
  *(v0 + 1752) = sub_10008A830(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v357 = sub_1001D23A0();
  v358 = v1;
  v361._countAndFlagsBits = 58;
  v361._object = 0xE100000000000000;
  sub_1001D18B0(v361);
  v3 = v357;
  v2 = v358;
  *(v0 + 1760) = v357;
  *(v0 + 1768) = v2;
  *(v0 + 1776) = qword_100229210;

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1248);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v357 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000954E0(v3, v2, &v357);
    *(v8 + 12) = 1024;
    *(v8 + 14) = *(v7 + *(*v7 + 288));

    _os_log_impl(&_mh_execute_header, v4, v5, "%s executing batch of prefetch requests, prewarm=%{BOOL}d", v8, 0x12u);
    sub_100011CF0(v9);
  }

  else
  {
  }

  v10 = *(v0 + 1728);
  v11 = *(v0 + 1720);
  v12 = *(v0 + 1712);
  sub_100096A60(v12);
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    sub_100011F00(*(v0 + 1712), &qword_1002292B0, &unk_1001D6420);

    v13 = sub_1001D0E50();
    v14 = sub_1001D1DE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v357 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000954E0(v3, v2, &v357);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s invalid set of parameters for prefetching", v15, 0xCu);
      sub_100011CF0(v16);
    }

    v17 = sub_1001D0E50();
    v18 = sub_1001D1E00();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v357 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000954E0(v3, v2, &v357);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s finished batch of prefetch requests", v19, 0xCu);
      sub_100011CF0(v20);
    }

    v21 = *(v0 + 8);

    return v21(_swiftEmptyArrayStorage);
  }

  v352 = v3;
  v23 = *(v0 + 1248);
  (*(*(v0 + 1728) + 32))(*(v0 + 1736), *(v0 + 1712), *(v0 + 1720));
  v24 = *(*v23 + 248);
  v25 = *v23;
  v26 = *(*v23 + 240);
  *(v0 + 1784) = v26;
  v27 = (v23 + v26);
  v28 = *(v25 + 256);
  *(v0 + 1792) = v28;
  v29 = (v23 + v28);
  v30 = v29[2];
  v31 = *v29;
  *(v0 + 736) = v29[1];
  *(v0 + 752) = v30;
  *(v0 + 720) = v31;
  v32 = v29[6];
  v34 = v29[3];
  v33 = v29[4];
  *(v0 + 800) = v29[5];
  *(v0 + 816) = v32;
  *(v0 + 768) = v34;
  *(v0 + 784) = v33;
  v36 = v29[9];
  v35 = v29[10];
  v37 = v29[8];
  *(v0 + 832) = v29[7];
  *(v0 + 848) = v37;
  *(v0 + 864) = v36;
  *(v0 + 880) = v35;
  v38 = *(v23 + v24);
  v39 = *(v23 + v26 + 24);
  v40 = *(v23 + v26 + 32);
  v41 = sub_100024DC8((v23 + v26), v39);
  LOBYTE(v40) = sub_100106E64(v41, v0 + 720, v38, v39, v40);
  *(v0 + 1216) = sub_1001D0870();
  sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
  sub_1000594F0();
  *(v0 + 1800) = sub_1001CF800();
  *(v0 + 1808) = v42;
  v349 = v38;
  v44 = *(v0 + 1688);
  v45 = v40;

  sub_1001D1800();
  v46 = sub_1001D17F0();
  *(v0 + 1816) = v47;
  *(v0 + 1824) = v46;
  v344 = v27;
  sub_100024DC8(v27, v27[3]);
  v48 = (v44 + 8);
  v49 = *(v0 + 1696);
  v50 = *(v0 + 1680);
  if (v45)
  {
    sub_1001D0540();
    sub_1001D0210();
    v51 = *v48;
    v51(v49, v50);
    v52 = *(v0 + 1232);
    v53 = sub_100105F8C();
    if (v54)
    {
      v55 = v52;
    }

    else
    {
      v55 = v53;
    }

    if (v52 < v55)
    {
      v55 = v52;
    }

    if (v55 <= 1)
    {
      v56 = 1;
    }

    else
    {
      v56 = v55;
    }

    v57 = sub_100105CDC();
    if (v58)
    {
      v59 = *(v0 + 1696);
      v340 = *(v0 + 1680);
      sub_100024DC8(v27, v27[3]);
      sub_1001D04B0();
      sub_1001D0210();
      v51(v59, v340);
      v57 = *(v0 + 1240);
    }
  }

  else
  {
    sub_1001D0410();
    sub_1001D0210();
    v60 = *v48;
    v60(v49, v50);
    v61 = *(v0 + 1208);
    v62 = sub_100105200();
    if (v63)
    {
      v64 = v61;
    }

    else
    {
      v64 = v62;
    }

    if (v61 < v64)
    {
      v64 = v61;
    }

    if (v64 <= 1)
    {
      v56 = 1;
    }

    else
    {
      v56 = v64;
    }

    v57 = sub_100105608();
    if (v65)
    {
      v66 = *(v0 + 1696);
      v341 = *(v0 + 1680);
      sub_100024DC8(v27, v27[3]);
      sub_1001D0390();
      sub_1001D0210();
      v60(v66, v341);
      v57 = *(v0 + 1200);
    }
  }

  if (v57 <= 1)
  {
    v67 = 1;
  }

  else
  {
    v67 = v57;
  }

  *(v0 + 1840) = v56;
  *(v0 + 1832) = v67;
  v68 = (*(v0 + 1248) + *(**(v0 + 1248) + 312));
  v69 = *v68;
  *(v0 + 1848) = *v68;
  v70 = *(v68 + 8);
  *(v0 + 2093) = v70;
  if (v70)
  {
    v71 = 0;
  }

  else
  {
    v71 = v69;
  }

  v356 = v71;
  if (v70)
  {
    v72 = v67 - 1;
  }

  else
  {
    v72 = v69;
  }

  v342 = v72;
  *(v0 + 1856) = 3 * v56;
  if ((v56 * 3) >> 64 != (3 * v56) >> 63)
  {
    __break(1u);
    goto LABEL_149;
  }

  v73 = sub_1001D0E50();
  v74 = sub_1001D1E00();

  if (!os_log_type_enabled(v73, v74))
  {
    goto LABEL_60;
  }

  v336 = v74;
  v75 = swift_slowAlloc();
  v333 = swift_slowAlloc();
  v357 = v333;
  *v75 = 136316418;
  *(v75 + 4) = sub_1000954E0(v352, v2, &v357);
  *(v75 + 12) = 2048;
  *(v75 + 14) = v56;
  *(v75 + 22) = 2048;
  v76 = &v356[-v342];
  if (v356 <= v342)
  {
    if (v70)
    {
      v79 = v67;
    }

    else
    {
      v79 = 1;
    }

    if ((v56 * v79) >> 64 == (v56 * v79) >> 63)
    {
      *(v75 + 24) = v56 * v79;
      *(v75 + 32) = 2048;
      if (v70)
      {
        v78 = v67 - 1;
      }

      else
      {
        v78 = 0;
      }

      goto LABEL_59;
    }

LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
    goto LABEL_64;
  }

  if (&v356[-v342] < 0)
  {
    goto LABEL_153;
  }

  v77 = v56 * (1 - v76);
  if ((v56 * (1 - v76)) >> 64 != v77 >> 63)
  {
    goto LABEL_149;
  }

  *(v75 + 24) = v77;
  *(v75 + 32) = 2048;
  v78 = v342 - v356;
LABEL_59:
  *(v75 + 34) = v78 + 1;
  *(v75 + 42) = 2048;
  *(v75 + 44) = v67;
  *(v75 + 52) = 2048;
  *(v75 + 54) = 3 * v56;
  _os_log_impl(&_mh_execute_header, v73, v336, "%s configuration: maxPrefetchedAttestations: %ld, clientCacheSize: %ld, maxPrefetchRequests: %ld, maxPrefetchBatches: %ld, prewarmAttestationsAvailability: %ld", v75, 0x3Eu);
  sub_100011CF0(v333);

LABEL_60:

  if (v70)
  {
    sub_1001054B0();
    if (v80)
    {
      v81 = *(v0 + 1672);
      v82 = *(v0 + 1664);
      v83 = *(v0 + 1656);
      sub_100024DC8(v344, v344[3]);
      sub_1001D0520();
      sub_1001D0210();
      (*(v82 + 8))(v81, v83);
    }

    v134 = *(v0 + 1640);
    v135 = *(v0 + 1616);
    v136 = *(v0 + 1608);
    v137 = *(v0 + 1248);
    sub_1001CFD50();
    sub_1001CFCF0();
    v138 = *(v135 + 8);
    *(v0 + 1864) = v138;
    *(v0 + 1872) = (v135 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v138(v134, v136);
    *(v0 + 1880) = *(v137 + *(*v137 + 216));
    type metadata accessor for AttestationStore();
    sub_10008A830(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);
    v140 = sub_1001D1A70();

    return _swift_task_switch(sub_10006E4FC, v140, v139);
  }

  v337 = *(v0 + 1744);
  v84 = *(v0 + 1600);
  v85 = *(v0 + 1552);
  v345 = *(v0 + 1560);
  v350 = *(v0 + 1544);
  v86 = *(v0 + 1536);
  v87 = *(v0 + 1376);
  v88 = *(v0 + 1248);
  v89 = (v88 + *(v0 + 1784));
  v90 = (v88 + *(v0 + 1792));
  v91 = v89[3];
  v331 = v89[4];
  v334 = *(v0 + 1368);
  sub_100024DC8(v89, v91);
  *(v0 + 968) = &type metadata for SystemInfo;
  *(v0 + 976) = &protocol witness table for SystemInfo;
  v92 = swift_allocObject();
  *(v0 + 944) = v92;
  v94 = v90[1];
  v93 = v90[2];
  *(v0 + 368) = *v90;
  *(v0 + 384) = v94;
  *(v0 + 400) = v93;
  v95 = v90[6];
  v97 = v90[3];
  v96 = v90[4];
  *(v0 + 448) = v90[5];
  *(v0 + 464) = v95;
  *(v0 + 416) = v97;
  *(v0 + 432) = v96;
  v98 = v90[10];
  v100 = v90[7];
  v99 = v90[8];
  *(v0 + 512) = v90[9];
  *(v0 + 528) = v98;
  *(v0 + 480) = v100;
  *(v0 + 496) = v99;
  v102 = v90[1];
  v101 = v90[2];
  v92[1] = *v90;
  v92[2] = v102;
  v92[3] = v101;
  v103 = v90[6];
  v105 = v90[3];
  v104 = v90[4];
  v92[6] = v90[5];
  v92[7] = v103;
  v92[4] = v105;
  v92[5] = v104;
  v106 = v90[10];
  v108 = v90[7];
  v107 = v90[8];
  v92[10] = v90[9];
  v92[11] = v106;
  v92[8] = v108;
  v92[9] = v107;
  sub_1000884D8(v0 + 368, v0 + 544);

  Configuration.environment(systemInfo:)((v0 + 944), v91, v331, v84);
  sub_100011CF0((v0 + 944));
  v109 = (v86 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
  v110 = *(v87 + 16);
  *(v0 + 1888) = v110;
  *(v0 + 1896) = (v87 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v110(v86, v88 + v337, v334);
  *v109 = sub_1001D02B0();
  v109[1] = v111;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v85 + 8))(v345, v350);
  sub_100011AC0(&qword_1002292D0, &qword_1001D6440);
  sub_1001D13D0();
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1001D62F0;
  v349 = v112;
  if (qword_1002276B0 != -1)
  {
    goto LABEL_150;
  }

LABEL_64:
  v113 = *(v0 + 1496);
  v114 = *(v0 + 1480);
  v115 = *(v0 + 1472);
  v116 = sub_10003A37C(v115, qword_100242D90);
  v117 = *(v114 + 16);
  *(v0 + 1904) = v117;
  *(v0 + 1912) = (v114 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v117(v113, v116, v115);
  sub_1001D13A0();
  if (qword_1002276B8 != -1)
  {
    swift_once();
  }

  v118 = *(v0 + 1496);
  v119 = *(v0 + 1472);
  v120 = sub_10003A37C(v119, qword_100242DA8);
  v117(v118, v120, v119);
  sub_1001D0890();
  sub_1001D13A0();
  if (qword_1002276C0 != -1)
  {
    swift_once();
  }

  v121 = *(v0 + 1496);
  v122 = *(v0 + 1472);
  v353 = *(v0 + 1248);
  v123 = sub_10003A37C(v122, qword_100242DC0);
  v356 = v117;
  v117(v121, v123, v122);

  sub_1001D13A0();
  sub_1001D1330();
  sub_1001D13A0();
  sub_1001D1370();
  sub_1001D13A0();
  *(v0 + 1192) = v349;
  sub_10008A830(&qword_1002292D8, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  sub_1001D1D80();
  sub_100011AC0(&qword_1002292E0, &unk_1001D6448);
  sub_100024B78(&qword_1002292E8, &qword_1002292E0, &unk_1001D6448, &protocol conformance descriptor for [A]);
  sub_1001D1D50();
  v124 = *v353;
  if (*(v353 + *(*v353 + 288)) != 1)
  {
    if (qword_1002276D8 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_154;
  }

  v125 = *(v0 + 1248);
  if (!*(v125 + *(v124 + 296) + 8))
  {

    v146 = sub_1001D0E50();
    v147 = sub_1001D1DE0();

    if (os_log_type_enabled(v146, v147))
    {
      v148 = *(v0 + 1768);
      v149 = *(v0 + 1760);
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v357 = v151;
      *v150 = 136315138;
      *(v150 + 4) = sub_1000954E0(v149, v148, &v357);
      _os_log_impl(&_mh_execute_header, v146, v147, "%s not prefetching, missing bundleIdentifier", v150, 0xCu);
      sub_100011CF0(v151);
    }

    goto LABEL_145;
  }

  if (!*(v125 + *(v124 + 304) + 8))
  {

    v146 = sub_1001D0E50();
    v303 = sub_1001D1DE0();

    if (os_log_type_enabled(v146, v303))
    {
      v304 = *(v0 + 1768);
      v305 = *(v0 + 1760);
      v306 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      v357 = v307;
      *v306 = 136315138;
      *(v306 + 4) = sub_1000954E0(v305, v304, &v357);
      _os_log_impl(&_mh_execute_header, v146, v303, "%s not prefetching, missing featureIdentifier", v306, 0xCu);
      sub_100011CF0(v307);
    }

LABEL_145:

    v332 = *(v0 + 1808);
    v308 = *(v0 + 1800);
    v355 = *(v0 + 1736);
    v309 = *(v0 + 1728);
    v348 = *(v0 + 1720);
    v310 = *(v0 + 1600);
    v311 = *(v0 + 1576);
    v312 = *(v0 + 1568);
    v313 = *(v0 + 1512);
    v335 = *(v0 + 1504);
    v339 = *(v0 + 1520);
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v308, v332);
    (*(v311 + 8))(v310, v312);
    (*(v313 + 8))(v339, v335);
    (*(v309 + 8))(v355, v348);

    v314 = sub_1001D0E50();
    v315 = sub_1001D1E00();

    v316 = os_log_type_enabled(v314, v315);
    v317 = *(v0 + 1768);
    if (v316)
    {
      v318 = *(v0 + 1760);
      v319 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v357 = v320;
      *v319 = 136315138;
      *(v319 + 4) = sub_1000954E0(v318, v317, &v357);
      _os_log_impl(&_mh_execute_header, v314, v315, "%s finished batch of prefetch requests", v319, 0xCu);
      sub_100011CF0(v320);
    }

    v43 = *(v0 + 8);

    return v43();
  }

  v126 = qword_1002276D8;

  if (v126 != -1)
  {
    swift_once();
  }

  v127 = *(v0 + 1496);
  v128 = *(v0 + 1472);
  v129 = sub_10003A37C(v128, qword_100242E08);
  v130 = v356;
  (v356)(v127, v129, v128);
  sub_1001D0EF0();
  if (qword_1002276D0 != -1)
  {
    swift_once();
  }

  v131 = *(v0 + 1496);
  v132 = *(v0 + 1472);
  v133 = sub_10003A37C(v132, qword_100242DF0);
  (v356)(v131, v133, v132);
  while (1)
  {
    sub_1001D0EF0();
    v155 = [objc_opt_self() automatedDeviceGroup];
    if (v155)
    {
      v156 = v155;
      sub_1001D17D0();

      if (qword_1002276E8 != -1)
      {
        swift_once();
      }

      v157 = *(v0 + 1496);
      v158 = *(v0 + 1472);
      v159 = sub_10003A37C(v158, qword_100242E38);
      v130(v157, v159, v158);
      sub_1001D0EF0();
    }

    v160 = *(v0 + 1464);
    v161 = *(v0 + 1432);
    v162 = *(v0 + 1424);
    v163 = (*(v0 + 1248) + *(v0 + 1784));
    sub_100024DC8(v163, v163[3]);
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0320();
    sub_10005956C();
    sub_1001D0210();
    v164 = *(v161 + 8);
    v164(v160, v162);
    if (*(v0 + 1128))
    {
      if (qword_1002276F8 != -1)
      {
        swift_once();
      }

      v165 = *(v0 + 1496);
      v166 = *(v0 + 1472);
      v167 = sub_10003A37C(v166, qword_100242E68);
      (v356)(v165, v167, v166);
      sub_1001D0EF0();
    }

    v168 = *(v0 + 1456);
    v169 = *(v0 + 1424);
    v170 = (*(v0 + 1248) + *(v0 + 1784));
    sub_100024DC8(v170, v170[3]);
    sub_1001D0380();
    sub_1001D0210();
    v164(v168, v169);
    if (*(v0 + 1112))
    {
      if (qword_100227718 != -1)
      {
        swift_once();
      }

      v171 = *(v0 + 1496);
      v172 = *(v0 + 1472);
      v173 = sub_10003A37C(v172, qword_100242EC8);
      (v356)(v171, v173, v172);
      sub_1001D0EF0();
    }

    v174 = *(v0 + 1448);
    v175 = *(v0 + 1424);
    v176 = (*(v0 + 1248) + *(v0 + 1784));
    sub_100024DC8(v176, v176[3]);
    sub_1001D0470();
    sub_1001D0210();
    v164(v174, v175);
    if (*(v0 + 1080))
    {
      if (qword_100227730 != -1)
      {
        swift_once();
      }

      v177 = *(v0 + 1496);
      v178 = *(v0 + 1472);
      v179 = sub_10003A37C(v178, qword_100242F10);
      (v356)(v177, v179, v178);
      sub_1001D0EF0();
    }

    v180 = *(v0 + 1248);
    if (*(v180 + *(*v180 + 328)) == 1)
    {
      if (qword_100227720 != -1)
      {
        swift_once();
      }

      v181 = *(v0 + 1496);
      v182 = *(v0 + 1472);
      v183 = sub_10003A37C(v182, qword_100242EE0);
      (v356)(v181, v183, v182);
      sub_1001D0EF0();
      v180 = *(v0 + 1248);
    }

    v184 = *(v0 + 1440);
    v185 = *(v0 + 1424);
    sub_100024DC8((v180 + *(v0 + 1784)), *(v180 + *(v0 + 1784) + 24));
    sub_1001D0340();
    sub_1001D0210();
    v164(v184, v185);
    if (*(v0 + 1096))
    {
      if (qword_100227700 != -1)
      {
        swift_once();
      }

      v186 = *(v0 + 1496);
      v187 = *(v0 + 1472);
      v188 = sub_10003A37C(v187, qword_100242E80);
      (v356)(v186, v188, v187);
      sub_1001D0EF0();
      if (qword_100227708 != -1)
      {
        swift_once();
      }

      v189 = *(v0 + 1496);
      v190 = *(v0 + 1472);
      v191 = sub_10003A37C(v190, qword_100242E98);
      (v356)(v189, v191, v190);
      sub_1001D0EF0();
    }

    v192 = *(v0 + 1632);
    v193 = *(v0 + 1624);
    v194 = *(v0 + 1616);
    v195 = *(v0 + 1608);
    sub_1001CFD50();
    (*(v194 + 16))(v193, v192, v195);

    v196 = sub_1001D0E50();
    v197 = sub_1001D1E00();

    if (os_log_type_enabled(v196, v197))
    {
      v198 = *(v0 + 1768);
      v199 = *(v0 + 1760);
      v200 = *(v0 + 1624);
      v201 = *(v0 + 1616);
      v202 = *(v0 + 1608);
      v203 = swift_slowAlloc();
      v357 = swift_slowAlloc();
      *v203 = 136315394;
      *(v203 + 4) = sub_1000954E0(v199, v198, &v357);
      *(v203 + 12) = 2080;
      sub_10008A830(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v204 = sub_1001D23A0();
      v206 = v205;
      (*(v201 + 8))(v200, v202);
      v207 = sub_1000954E0(v204, v206, &v357);

      *(v203 + 14) = v207;
      _os_log_impl(&_mh_execute_header, v196, v197, "%s fetchTime: %s", v203, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v208 = *(v0 + 1624);
      v209 = *(v0 + 1616);
      v210 = *(v0 + 1608);

      (*(v209 + 8))(v208, v210);
    }

    v211 = *(v0 + 1576);
    v212 = *(v0 + 1248);
    v213 = (v212 + *(v0 + 1792));
    *(v0 + 1920) = sub_1001D1210();
    *(v0 + 1928) = sub_1001D1270();
    *(v0 + 1936) = sub_1001D12D0();
    *(v0 + 1944) = sub_1001D0F30();
    *(v0 + 1952) = sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v215 = v213[1];
    v214 = v213[2];
    *(v0 + 16) = *v213;
    *(v0 + 32) = v215;
    *(v0 + 48) = v214;
    v216 = v213[6];
    v218 = v213[3];
    v217 = v213[4];
    *(v0 + 96) = v213[5];
    *(v0 + 112) = v216;
    *(v0 + 64) = v218;
    *(v0 + 80) = v217;
    v219 = v213[10];
    v221 = v213[7];
    v220 = v213[8];
    *(v0 + 160) = v213[9];
    *(v0 + 176) = v219;
    *(v0 + 128) = v221;
    *(v0 + 144) = v220;
    v222 = (v212 + *(*v212 + 296));
    *(v0 + 1960) = *v222;
    *(v0 + 1968) = v222[1];
    v223 = enum case for TC2Environment.production(_:);
    *(v0 + 2080) = enum case for TC2Environment.production(_:);
    *(v0 + 2084) = enum case for NWEndpoint.url(_:);
    *(v0 + 2088) = enum case for NWActivity.CompletionReason.success(_:);
    if (*(v0 + 2093))
    {
      v224 = 0;
    }

    else
    {
      v224 = *(v0 + 1848);
    }

    *(v0 + 1984) = _swiftEmptyArrayStorage;
    *(v0 + 1976) = v224;
    v225 = *(v0 + 1600);
    v226 = *(v0 + 1592);
    v227 = *(v0 + 1568);
    *(v0 + 1056) = sub_1001D23A0();
    *(v0 + 1064) = v228;
    v362._countAndFlagsBits = 35;
    v362._object = 0xE100000000000000;
    sub_1001D18B0(v362);
    v351 = v224;
    *(v0 + 1184) = v224;
    v363._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v363);

    v364._countAndFlagsBits = 58;
    v364._object = 0xE100000000000000;
    sub_1001D18B0(v364);
    v229 = *(v0 + 1056);
    *(v0 + 1992) = v229;
    v230 = *(v0 + 1064);
    *(v0 + 2000) = v230;
    sub_1001CFD90();
    (*(v211 + 16))(v226, v225, v227);
    v231 = (*(v211 + 88))(v226, v227);
    v232 = *(v0 + 1888);
    if (v231 == v223)
    {
      v354 = v229;
      v233 = *(v0 + 1416);
      v234 = *(v0 + 1408);
      v235 = *(v0 + 1400);
      v236 = *(v0 + 1392);
      v237 = *(v0 + 1368);
      sub_1001CFD90();
      v232(v235, v233, v237);
      v232(v236, v234, v237);

      v238 = sub_1001D0E50();
      v239 = sub_1001D1E00();

      if (os_log_type_enabled(v238, v239))
      {
        v346 = v239;
        v240 = *(v0 + 1400);
        v343 = *(v0 + 1392);
        v241 = *(v0 + 1376);
        v242 = *(v0 + 1368);
        v243 = swift_slowAlloc();
        v357 = swift_slowAlloc();
        *v243 = 136315650;
        *(v243 + 4) = sub_1000954E0(v354, v230, &v357);
        *(v243 + 12) = 2080;
        v244 = sub_1001D23A0();
        v246 = v245;
        v247 = *(v241 + 8);
        v247(v240, v242);
        v248 = sub_1000954E0(v244, v246, &v357);

        *(v243 + 14) = v248;
        *(v243 + 22) = 2080;
        v249 = sub_1001D23A0();
        v251 = v250;
        v247(v343, v242);
        v252 = sub_1000954E0(v249, v251, &v357);

        *(v243 + 24) = v252;
        _os_log_impl(&_mh_execute_header, v238, v346, "%s Request: %s RequestIDForReporting: %s", v243, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v256 = *(v0 + 1400);
        v257 = *(v0 + 1392);
        v258 = *(v0 + 1376);
        v259 = *(v0 + 1368);

        v260 = *(v258 + 8);
        v260(v257, v259);
        v260(v256, v259);
      }
    }

    else
    {
      v253 = *(v0 + 1592);
      v254 = *(v0 + 1576);
      v255 = *(v0 + 1568);
      v232(*(v0 + 1408), *(v0 + 1416), *(v0 + 1368));
      (*(v254 + 8))(v253, v255);
    }

    if (qword_1002276A8 != -1)
    {
      swift_once();
    }

    v261 = *(v0 + 1904);
    v262 = *(v0 + 1496);
    v263 = *(v0 + 1472);
    v264 = sub_10003A37C(v263, qword_100242D78);
    v261(v262, v264, v263);
    sub_1001CFD70();
    sub_1001D0EF0();
    *(v0 + 1136) = 0;
    *(v0 + 1144) = 0;
    *(v0 + 1152) = 0;
    *(v0 + 1160) = _swiftEmptyArrayStorage;
    *(v0 + 1168) = sub_1001D23A0();
    *(v0 + 1176) = v265;
    v365._countAndFlagsBits = 58;
    v365._object = 0xE100000000000000;
    sub_1001D18B0(v365);
    v266 = *(v0 + 1168);
    *(v0 + 2008) = v266;
    v267 = *(v0 + 1176);
    *(v0 + 2016) = v267;

    v268 = sub_1001D0E50();
    v269 = sub_1001D1E00();
    v356 = v267;

    v347 = v266;
    if (os_log_type_enabled(v268, v269))
    {
      v270 = swift_slowAlloc();
      v271 = swift_slowAlloc();
      v357 = v271;
      *v270 = 136315138;
      *(v270 + 4) = sub_1000954E0(v266, v356, &v357);
      _os_log_impl(&_mh_execute_header, v268, v269, "%s executing prefetch request", v270, 0xCu);
      sub_100011CF0(v271);
    }

    v272 = *(v0 + 1584);
    v273 = *(v0 + 1328);
    v274 = *(v0 + 1320);
    v275 = *(v0 + 1312);
    v276 = (*(v0 + 1248) + *(v0 + 1784));
    v277 = v276[3];
    v278 = v276[4];
    sub_100024DC8(v276, v277);
    *(v0 + 1008) = &type metadata for SystemInfo;
    *(v0 + 1016) = &protocol witness table for SystemInfo;
    v279 = swift_allocObject();
    *(v0 + 984) = v279;
    v280 = *(v0 + 160);
    v279[9] = *(v0 + 144);
    v279[10] = v280;
    v279[11] = *(v0 + 176);
    v281 = *(v0 + 96);
    v279[5] = *(v0 + 80);
    v279[6] = v281;
    v282 = *(v0 + 128);
    v279[7] = *(v0 + 112);
    v279[8] = v282;
    v283 = *(v0 + 32);
    v279[1] = *(v0 + 16);
    v279[2] = v283;
    v284 = *(v0 + 64);
    v279[3] = *(v0 + 48);
    v279[4] = v284;
    sub_1000884D8(v0 + 16, v0 + 192);
    Configuration.environment(systemInfo:)((v0 + 984), v277, v278, v272);
    sub_100011CF0((v0 + 984));
    sub_100024DC8(v276, v276[3]);
    sub_1001D0400();
    sub_1001D0210();
    (*(v274 + 8))(v273, v275);
    v285 = *(v0 + 2092);
    LOBYTE(v276) = sub_1001D0280();
    *(v0 + 2024) = sub_1001D1200();
    sub_1001D1240();
    swift_allocObject();
    v286 = sub_1001D1230();
    v287 = sub_1001D1260();
    if (v276)
    {
      sub_1001D11F0();
      nw_parameters_set_privacy_proxy_fail_closed();
      swift_unknownObjectRelease();
    }

    if (*(v0 + 1968))
    {

      sub_1001D11E0();
    }

    if (v285)
    {
      v288 = sub_1001D1220();
      *(v0 + 928) = sub_100096568;
      *(v0 + 936) = 0;
      *(v0 + 896) = _NSConcreteStackBlock;
      *(v0 + 904) = 1107296256;
      *(v0 + 912) = sub_100059234;
      *(v0 + 920) = &unk_10021E990;
      v289 = _Block_copy((v0 + 896));
      v290 = sub_1001D1E40();
      sec_protocol_options_set_verify_block(v288, v289, v290);

      _Block_release(v289);
      swift_unknownObjectRelease();
    }

    sub_1001D11D0();
    sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
    v291 = swift_allocObject();
    *(v291 + 16) = xmmword_1001D54B0;
    *(v291 + 32) = v287;
    *(v291 + 40) = v286;

    sub_1001D11C0();

    v292 = sub_1001D12C0();
    sub_1001D11D0();

    v338 = sub_1001D11B0();
    if (!(*v293 >> 62) || (sub_1001D2190() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    swift_once();
LABEL_80:
    v141 = *(v0 + 1488);
    v142 = *(v0 + 1472);
    v143 = sub_10003A37C(v142, qword_100242E08);
    v130 = v356;
    (v356)(v141, v143, v142);
    v144 = [objc_opt_self() mainBundle];
    v145 = [v144 bundleIdentifier];

    if (v145)
    {
      sub_1001D17D0();
    }

    sub_1001D0EF0();
    if (qword_1002276D0 != -1)
    {
      swift_once();
    }

    v152 = *(v0 + 1496);
    v153 = *(v0 + 1472);
    v154 = sub_10003A37C(v153, qword_100242DF0);
    (v356)(v152, v154, v153);
  }

  v321 = *(v0 + 2084);
  v294 = *(v0 + 1824);
  v295 = *(v0 + 1816);
  v327 = *(v0 + 1736);
  v328 = *(v0 + 1840);
  v296 = *(v0 + 1584);
  v326 = *(v0 + 1520);
  v297 = *(v0 + 1304);
  v329 = *(v0 + 1296);
  v330 = *(v0 + 1632);
  v298 = *(v0 + 1288);
  v299 = *(v0 + 1280);
  v300 = v295 == 0;
  if (!v295)
  {
    v295 = 0xE000000000000000;
  }

  v323 = *(v0 + 1248);
  v324 = v295;
  if (v300)
  {
    v294 = 0;
  }

  v322 = v294;
  v325 = *(v0 + 1408);
  sub_10005A0B8(0, 0, v292);

  v338(v0 + 1024, 0);

  sub_1001D02C0();
  (*(v298 + 104))(v297, v321, v299);
  *(v0 + 2032) = sub_1001D0F10();
  *(v0 + 2040) = sub_1001D1E40();
  v301 = swift_task_alloc();
  *(v0 + 2048) = v301;
  v301[1].i64[0] = v323;
  v301[1].i64[1] = v347;
  v301[2].i64[0] = v356;
  v301[2].i64[1] = v322;
  v301[3].i64[0] = v324;
  v301[3].i64[1] = v328;
  v301[4].i64[0] = v296;
  v301[4].i64[1] = v326;
  v301[5].i64[0] = v327;
  v301[5].i64[1] = v351;
  v301[6].i64[0] = v0 + 1136;
  v301[6].i64[1] = v0 + 1152;
  v301[7] = vextq_s8(v325, v325, 8uLL);
  v301[8].i64[0] = v330;
  (*(v298 + 16))(v329, v297, v299);
  sub_1001D11A0();
  swift_allocObject();

  *(v0 + 2056) = sub_1001D1140();

  sub_1001D1030();
  v302 = swift_task_alloc();
  *(v0 + 2064) = v302;
  *v302 = v0;
  v302[1] = sub_100070A34;

  return (sub_100135C64)();
}

uint64_t sub_10006E4FC()
{
  *(v0 + 2094) = sub_1000343D0(*(v0 + 1736), *(v0 + 1856), *(v0 + 1648));

  return _swift_task_switch(sub_10006E578, 0, 0);
}

uint64_t sub_10006E578()
{
  v276 = v0;
  if (*(v0 + 2094) == 1)
  {

    v1 = sub_1001D0E50();
    v2 = sub_1001D1DE0();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 1768);
      v4 = *(v0 + 1760);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v275[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000954E0(v4, v3, v275);
      _os_log_impl(&_mh_execute_header, v1, v2, "%s not prefetching, attestations exist for workload", v5, 0xCu);
      sub_100011CF0(v6);
    }

    v7 = *(v0 + 1808);
    v8 = *(v0 + 1800);
    v258 = *(v0 + 1736);
    v262 = *(v0 + 1864);
    v9 = *(v0 + 1728);
    v10 = *(v0 + 1720);
    v11 = *(v0 + 1648);
    v12 = *(v0 + 1608);
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v8, v7);
    v262(v11, v12);
    (*(v9 + 8))(v258, v10);

    v13 = sub_1001D0E50();
    v14 = sub_1001D1E00();
    goto LABEL_86;
  }

  (*(v0 + 1864))(*(v0 + 1648), *(v0 + 1608));
  v15 = *(v0 + 1600);
  v264 = *(v0 + 1560);
  v16 = *(v0 + 1552);
  v269 = *(v0 + 1544);
  v17 = *(v0 + 1536);
  v259 = *(v0 + 1744);
  v18 = *(v0 + 1376);
  v19 = *(v0 + 1248);
  v20 = (v19 + *(v0 + 1784));
  v21 = (v19 + *(v0 + 1792));
  v22 = v20[3];
  v254 = v20[4];
  v256 = *(v0 + 1368);
  sub_100024DC8(v20, v22);
  *(v0 + 968) = &type metadata for SystemInfo;
  *(v0 + 976) = &protocol witness table for SystemInfo;
  v23 = swift_allocObject();
  *(v0 + 944) = v23;
  v25 = v21[1];
  v24 = v21[2];
  *(v0 + 368) = *v21;
  *(v0 + 384) = v25;
  *(v0 + 400) = v24;
  v26 = v21[6];
  v28 = v21[3];
  v27 = v21[4];
  *(v0 + 448) = v21[5];
  *(v0 + 464) = v26;
  *(v0 + 416) = v28;
  *(v0 + 432) = v27;
  v29 = v21[10];
  v31 = v21[7];
  v30 = v21[8];
  *(v0 + 512) = v21[9];
  *(v0 + 528) = v29;
  *(v0 + 480) = v31;
  *(v0 + 496) = v30;
  v33 = v21[1];
  v32 = v21[2];
  v23[1] = *v21;
  v23[2] = v33;
  v23[3] = v32;
  v34 = v21[6];
  v36 = v21[3];
  v35 = v21[4];
  v23[6] = v21[5];
  v23[7] = v34;
  v23[4] = v36;
  v23[5] = v35;
  v37 = v21[10];
  v39 = v21[7];
  v38 = v21[8];
  v23[10] = v21[9];
  v23[11] = v37;
  v23[8] = v39;
  v23[9] = v38;
  sub_1000884D8(v0 + 368, v0 + 544);

  Configuration.environment(systemInfo:)((v0 + 944), v22, v254, v15);
  sub_100011CF0((v0 + 944));
  v40 = (v17 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
  v41 = *(v18 + 16);
  *(v0 + 1888) = v41;
  *(v0 + 1896) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v17, v19 + v259, v256);
  *v40 = sub_1001D02B0();
  v40[1] = v42;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v16 + 8))(v264, v269);
  sub_100011AC0(&qword_1002292D0, &qword_1001D6440);
  sub_1001D13D0();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1001D62F0;
  v270 = v43;
  if (qword_1002276B0 != -1)
  {
    swift_once();
  }

  v44 = *(v0 + 1496);
  v45 = *(v0 + 1480);
  v46 = *(v0 + 1472);
  v47 = sub_10003A37C(v46, qword_100242D90);
  v48 = *(v45 + 16);
  *(v0 + 1904) = v48;
  *(v0 + 1912) = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v48(v44, v47, v46);
  sub_1001D13A0();
  if (qword_1002276B8 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 1496);
  v50 = *(v0 + 1472);
  v51 = sub_10003A37C(v50, qword_100242DA8);
  v48(v49, v51, v50);
  sub_1001D0890();
  sub_1001D13A0();
  if (qword_1002276C0 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 1496);
  v53 = *(v0 + 1472);
  v265 = *(v0 + 1248);
  v54 = sub_10003A37C(v53, qword_100242DC0);
  v274 = v48;
  v48(v52, v54, v53);

  sub_1001D13A0();
  sub_1001D1330();
  sub_1001D13A0();
  sub_1001D1370();
  sub_1001D13A0();
  *(v0 + 1192) = v270;
  sub_10008A830(&qword_1002292D8, &type metadata accessor for HTTPFields, &protocol conformance descriptor for HTTPFields);
  sub_1001D1D80();
  sub_100011AC0(&qword_1002292E0, &unk_1001D6448);
  sub_100024B78(&qword_1002292E8, &qword_1002292E0, &unk_1001D6448, &protocol conformance descriptor for [A]);
  sub_1001D1D50();
  v55 = *v265;
  if (*(v265 + *(*v265 + 288)) != 1)
  {
    if (qword_1002276D8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_93;
  }

  v56 = *(v0 + 1248);
  if (!*(v56 + *(v55 + 296) + 8))
  {

    v70 = sub_1001D0E50();
    v71 = sub_1001D1DE0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = *(v0 + 1768);
      v73 = *(v0 + 1760);
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v275[0] = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_1000954E0(v73, v72, v275);
      _os_log_impl(&_mh_execute_header, v70, v71, "%s not prefetching, missing bundleIdentifier", v74, 0xCu);
      sub_100011CF0(v75);
    }

    goto LABEL_85;
  }

  if (!*(v56 + *(v55 + 304) + 8))
  {

    v70 = sub_1001D0E50();
    v228 = sub_1001D1DE0();

    if (os_log_type_enabled(v70, v228))
    {
      v229 = *(v0 + 1768);
      v230 = *(v0 + 1760);
      v231 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v275[0] = v232;
      *v231 = 136315138;
      *(v231 + 4) = sub_1000954E0(v230, v229, v275);
      _os_log_impl(&_mh_execute_header, v70, v228, "%s not prefetching, missing featureIdentifier", v231, 0xCu);
      sub_100011CF0(v232);
    }

LABEL_85:

    v255 = *(v0 + 1808);
    v233 = *(v0 + 1800);
    v273 = *(v0 + 1736);
    v234 = *(v0 + 1728);
    v268 = *(v0 + 1720);
    v235 = *(v0 + 1600);
    v236 = *(v0 + 1576);
    v237 = *(v0 + 1568);
    v261 = *(v0 + 1520);
    v238 = *(v0 + 1512);
    v257 = *(v0 + 1504);
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    sub_100011E48(v233, v255);
    (*(v236 + 8))(v235, v237);
    (*(v238 + 8))(v261, v257);
    (*(v234 + 8))(v273, v268);

    v13 = sub_1001D0E50();
    v14 = sub_1001D1E00();
LABEL_86:

    if (os_log_type_enabled(v13, v14))
    {
      v239 = *(v0 + 1768);
      v240 = *(v0 + 1760);
      v241 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v275[0] = v242;
      *v241 = 136315138;
      *(v241 + 4) = sub_1000954E0(v240, v239, v275);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s finished batch of prefetch requests", v241, 0xCu);
      sub_100011CF0(v242);
    }

    v243 = *(v0 + 8);

    return v243();
  }

  v57 = qword_1002276D8;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 1496);
  v59 = *(v0 + 1472);
  v60 = sub_10003A37C(v59, qword_100242E08);
  v61 = v48;
  v48(v58, v60, v59);
  sub_1001D0EF0();
  if (qword_1002276D0 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 1496);
  v63 = *(v0 + 1472);
  v64 = sub_10003A37C(v63, qword_100242DF0);
  v48(v62, v64, v63);
  while (1)
  {
    sub_1001D0EF0();
    v79 = [objc_opt_self() automatedDeviceGroup];
    if (v79)
    {
      v80 = v79;
      sub_1001D17D0();

      if (qword_1002276E8 != -1)
      {
        swift_once();
      }

      v81 = *(v0 + 1496);
      v82 = *(v0 + 1472);
      v83 = sub_10003A37C(v82, qword_100242E38);
      v61(v81, v83, v82);
      sub_1001D0EF0();
    }

    v84 = *(v0 + 1464);
    v85 = *(v0 + 1432);
    v86 = *(v0 + 1424);
    v87 = (*(v0 + 1248) + *(v0 + 1784));
    sub_100024DC8(v87, v87[3]);
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0320();
    sub_10005956C();
    sub_1001D0210();
    v88 = *(v85 + 8);
    v88(v84, v86);
    if (*(v0 + 1128))
    {
      if (qword_1002276F8 != -1)
      {
        swift_once();
      }

      v89 = *(v0 + 1496);
      v90 = *(v0 + 1472);
      v91 = sub_10003A37C(v90, qword_100242E68);
      v274(v89, v91, v90);
      sub_1001D0EF0();
    }

    v92 = *(v0 + 1456);
    v93 = *(v0 + 1424);
    v94 = (*(v0 + 1248) + *(v0 + 1784));
    sub_100024DC8(v94, v94[3]);
    sub_1001D0380();
    sub_1001D0210();
    v88(v92, v93);
    if (*(v0 + 1112))
    {
      if (qword_100227718 != -1)
      {
        swift_once();
      }

      v95 = *(v0 + 1496);
      v96 = *(v0 + 1472);
      v97 = sub_10003A37C(v96, qword_100242EC8);
      v274(v95, v97, v96);
      sub_1001D0EF0();
    }

    v98 = *(v0 + 1448);
    v99 = *(v0 + 1424);
    v100 = (*(v0 + 1248) + *(v0 + 1784));
    sub_100024DC8(v100, v100[3]);
    sub_1001D0470();
    sub_1001D0210();
    v88(v98, v99);
    if (*(v0 + 1080))
    {
      if (qword_100227730 != -1)
      {
        swift_once();
      }

      v101 = *(v0 + 1496);
      v102 = *(v0 + 1472);
      v103 = sub_10003A37C(v102, qword_100242F10);
      v274(v101, v103, v102);
      sub_1001D0EF0();
    }

    v104 = *(v0 + 1248);
    if (*(v104 + *(*v104 + 328)) == 1)
    {
      if (qword_100227720 != -1)
      {
        swift_once();
      }

      v105 = *(v0 + 1496);
      v106 = *(v0 + 1472);
      v107 = sub_10003A37C(v106, qword_100242EE0);
      v274(v105, v107, v106);
      sub_1001D0EF0();
      v104 = *(v0 + 1248);
    }

    v108 = *(v0 + 1440);
    v109 = *(v0 + 1424);
    sub_100024DC8((v104 + *(v0 + 1784)), *(v104 + *(v0 + 1784) + 24));
    sub_1001D0340();
    sub_1001D0210();
    v88(v108, v109);
    if (*(v0 + 1096))
    {
      if (qword_100227700 != -1)
      {
        swift_once();
      }

      v110 = *(v0 + 1496);
      v111 = *(v0 + 1472);
      v112 = sub_10003A37C(v111, qword_100242E80);
      v274(v110, v112, v111);
      sub_1001D0EF0();
      if (qword_100227708 != -1)
      {
        swift_once();
      }

      v113 = *(v0 + 1496);
      v114 = *(v0 + 1472);
      v115 = sub_10003A37C(v114, qword_100242E98);
      v274(v113, v115, v114);
      sub_1001D0EF0();
    }

    v116 = *(v0 + 1632);
    v117 = *(v0 + 1624);
    v118 = *(v0 + 1616);
    v119 = *(v0 + 1608);
    sub_1001CFD50();
    (*(v118 + 16))(v117, v116, v119);

    v120 = sub_1001D0E50();
    v121 = sub_1001D1E00();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = *(v0 + 1768);
      v123 = *(v0 + 1760);
      v124 = *(v0 + 1624);
      v125 = *(v0 + 1616);
      v126 = *(v0 + 1608);
      v127 = swift_slowAlloc();
      v275[0] = swift_slowAlloc();
      *v127 = 136315394;
      *(v127 + 4) = sub_1000954E0(v123, v122, v275);
      *(v127 + 12) = 2080;
      sub_10008A830(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v128 = sub_1001D23A0();
      v130 = v129;
      (*(v125 + 8))(v124, v126);
      v131 = sub_1000954E0(v128, v130, v275);

      *(v127 + 14) = v131;
      _os_log_impl(&_mh_execute_header, v120, v121, "%s fetchTime: %s", v127, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v132 = *(v0 + 1624);
      v133 = *(v0 + 1616);
      v134 = *(v0 + 1608);

      (*(v133 + 8))(v132, v134);
    }

    v135 = *(v0 + 1576);
    v136 = *(v0 + 1248);
    v137 = (v136 + *(v0 + 1792));
    *(v0 + 1920) = sub_1001D1210();
    *(v0 + 1928) = sub_1001D1270();
    *(v0 + 1936) = sub_1001D12D0();
    *(v0 + 1944) = sub_1001D0F30();
    *(v0 + 1952) = sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v139 = v137[1];
    v138 = v137[2];
    *(v0 + 16) = *v137;
    *(v0 + 32) = v139;
    *(v0 + 48) = v138;
    v140 = v137[6];
    v142 = v137[3];
    v141 = v137[4];
    *(v0 + 96) = v137[5];
    *(v0 + 112) = v140;
    *(v0 + 64) = v142;
    *(v0 + 80) = v141;
    v143 = v137[10];
    v145 = v137[7];
    v144 = v137[8];
    *(v0 + 160) = v137[9];
    *(v0 + 176) = v143;
    *(v0 + 128) = v145;
    *(v0 + 144) = v144;
    v146 = (v136 + *(*v136 + 296));
    *(v0 + 1960) = *v146;
    *(v0 + 1968) = v146[1];
    v147 = enum case for TC2Environment.production(_:);
    *(v0 + 2080) = enum case for TC2Environment.production(_:);
    *(v0 + 2084) = enum case for NWEndpoint.url(_:);
    *(v0 + 2088) = enum case for NWActivity.CompletionReason.success(_:);
    if (*(v0 + 2093))
    {
      v148 = 0;
    }

    else
    {
      v148 = *(v0 + 1848);
    }

    *(v0 + 1984) = _swiftEmptyArrayStorage;
    *(v0 + 1976) = v148;
    v149 = *(v0 + 1600);
    v150 = *(v0 + 1592);
    v151 = *(v0 + 1568);
    *(v0 + 1056) = sub_1001D23A0();
    *(v0 + 1064) = v152;
    v278._countAndFlagsBits = 35;
    v278._object = 0xE100000000000000;
    sub_1001D18B0(v278);
    v274 = v148;
    *(v0 + 1184) = v148;
    v279._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v279);

    v280._countAndFlagsBits = 58;
    v280._object = 0xE100000000000000;
    sub_1001D18B0(v280);
    v153 = *(v0 + 1056);
    *(v0 + 1992) = v153;
    v154 = *(v0 + 1064);
    *(v0 + 2000) = v154;
    sub_1001CFD90();
    (*(v135 + 16))(v150, v149, v151);
    v155 = (*(v135 + 88))(v150, v151);
    v156 = *(v0 + 1888);
    if (v155 == v147)
    {
      v271 = v153;
      v157 = *(v0 + 1416);
      v158 = *(v0 + 1408);
      v159 = *(v0 + 1400);
      v160 = *(v0 + 1392);
      v161 = *(v0 + 1368);
      sub_1001CFD90();
      v156(v159, v157, v161);
      v156(v160, v158, v161);

      v162 = sub_1001D0E50();
      v163 = sub_1001D1E00();

      if (os_log_type_enabled(v162, v163))
      {
        v266 = v163;
        v164 = *(v0 + 1400);
        v263 = *(v0 + 1392);
        v165 = *(v0 + 1376);
        v166 = *(v0 + 1368);
        v167 = swift_slowAlloc();
        v275[0] = swift_slowAlloc();
        *v167 = 136315650;
        *(v167 + 4) = sub_1000954E0(v271, v154, v275);
        *(v167 + 12) = 2080;
        v168 = sub_1001D23A0();
        v170 = v169;
        v171 = *(v165 + 8);
        v171(v164, v166);
        v172 = sub_1000954E0(v168, v170, v275);

        *(v167 + 14) = v172;
        *(v167 + 22) = 2080;
        v173 = sub_1001D23A0();
        v175 = v174;
        v171(v263, v166);
        v176 = sub_1000954E0(v173, v175, v275);

        *(v167 + 24) = v176;
        _os_log_impl(&_mh_execute_header, v162, v266, "%s Request: %s RequestIDForReporting: %s", v167, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v180 = *(v0 + 1400);
        v181 = *(v0 + 1392);
        v182 = *(v0 + 1376);
        v183 = *(v0 + 1368);

        v184 = *(v182 + 8);
        v184(v181, v183);
        v184(v180, v183);
      }
    }

    else
    {
      v177 = *(v0 + 1592);
      v178 = *(v0 + 1576);
      v179 = *(v0 + 1568);
      v156(*(v0 + 1408), *(v0 + 1416), *(v0 + 1368));
      (*(v178 + 8))(v177, v179);
    }

    if (qword_1002276A8 != -1)
    {
      swift_once();
    }

    v185 = *(v0 + 1904);
    v186 = *(v0 + 1496);
    v187 = *(v0 + 1472);
    v188 = sub_10003A37C(v187, qword_100242D78);
    v185(v186, v188, v187);
    sub_1001CFD70();
    sub_1001D0EF0();
    *(v0 + 1136) = 0;
    *(v0 + 1144) = 0;
    *(v0 + 1152) = 0;
    *(v0 + 1160) = _swiftEmptyArrayStorage;
    *(v0 + 1168) = sub_1001D23A0();
    *(v0 + 1176) = v189;
    v281._countAndFlagsBits = 58;
    v281._object = 0xE100000000000000;
    sub_1001D18B0(v281);
    v190 = *(v0 + 1168);
    *(v0 + 2008) = v190;
    v191 = *(v0 + 1176);
    *(v0 + 2016) = v191;

    v192 = sub_1001D0E50();
    v193 = sub_1001D1E00();

    v267 = v191;
    v272 = v190;
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v275[0] = v195;
      *v194 = 136315138;
      *(v194 + 4) = sub_1000954E0(v190, v191, v275);
      _os_log_impl(&_mh_execute_header, v192, v193, "%s executing prefetch request", v194, 0xCu);
      sub_100011CF0(v195);
    }

    v196 = *(v0 + 1584);
    v197 = *(v0 + 1328);
    v198 = *(v0 + 1320);
    v199 = *(v0 + 1312);
    v200 = (*(v0 + 1248) + *(v0 + 1784));
    v201 = v200[3];
    v202 = v200[4];
    sub_100024DC8(v200, v201);
    *(v0 + 1008) = &type metadata for SystemInfo;
    *(v0 + 1016) = &protocol witness table for SystemInfo;
    v203 = swift_allocObject();
    *(v0 + 984) = v203;
    v204 = *(v0 + 160);
    v203[9] = *(v0 + 144);
    v203[10] = v204;
    v203[11] = *(v0 + 176);
    v205 = *(v0 + 96);
    v203[5] = *(v0 + 80);
    v203[6] = v205;
    v206 = *(v0 + 128);
    v203[7] = *(v0 + 112);
    v203[8] = v206;
    v207 = *(v0 + 32);
    v203[1] = *(v0 + 16);
    v203[2] = v207;
    v208 = *(v0 + 64);
    v203[3] = *(v0 + 48);
    v203[4] = v208;
    sub_1000884D8(v0 + 16, v0 + 192);
    Configuration.environment(systemInfo:)((v0 + 984), v201, v202, v196);
    sub_100011CF0((v0 + 984));
    sub_100024DC8(v200, v200[3]);
    sub_1001D0400();
    sub_1001D0210();
    (*(v198 + 8))(v197, v199);
    v209 = *(v0 + 2092);
    LOBYTE(v200) = sub_1001D0280();
    *(v0 + 2024) = sub_1001D1200();
    sub_1001D1240();
    swift_allocObject();
    v210 = sub_1001D1230();
    v211 = sub_1001D1260();
    if (v200)
    {
      sub_1001D11F0();
      nw_parameters_set_privacy_proxy_fail_closed();
      swift_unknownObjectRelease();
    }

    if (*(v0 + 1968))
    {

      sub_1001D11E0();
    }

    if (v209)
    {
      v212 = sub_1001D1220();
      *(v0 + 928) = sub_100096568;
      *(v0 + 936) = 0;
      *(v0 + 896) = _NSConcreteStackBlock;
      *(v0 + 904) = 1107296256;
      *(v0 + 912) = sub_100059234;
      *(v0 + 920) = &unk_10021E990;
      v213 = _Block_copy((v0 + 896));
      v214 = sub_1001D1E40();
      sec_protocol_options_set_verify_block(v212, v213, v214);

      _Block_release(v213);
      swift_unknownObjectRelease();
    }

    sub_1001D11D0();
    sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
    v215 = swift_allocObject();
    *(v215 + 16) = xmmword_1001D54B0;
    *(v215 + 32) = v211;
    *(v215 + 40) = v210;

    sub_1001D11C0();

    v216 = sub_1001D12C0();
    sub_1001D11D0();

    v260 = sub_1001D11B0();
    if (!(*v217 >> 62) || (sub_1001D2190() & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_93:
    swift_once();
LABEL_20:
    v65 = *(v0 + 1488);
    v66 = *(v0 + 1472);
    v67 = sub_10003A37C(v66, qword_100242E08);
    v61 = v274;
    v274(v65, v67, v66);
    v68 = [objc_opt_self() mainBundle];
    v69 = [v68 bundleIdentifier];

    if (v69)
    {
      sub_1001D17D0();
    }

    sub_1001D0EF0();
    if (qword_1002276D0 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 1496);
    v77 = *(v0 + 1472);
    v78 = sub_10003A37C(v77, qword_100242DF0);
    v274(v76, v78, v77);
  }

  v244 = *(v0 + 2084);
  v218 = *(v0 + 1824);
  v219 = *(v0 + 1816);
  v250 = *(v0 + 1736);
  v251 = *(v0 + 1840);
  v220 = *(v0 + 1584);
  v249 = *(v0 + 1520);
  v221 = *(v0 + 1304);
  v252 = *(v0 + 1296);
  v253 = *(v0 + 1632);
  v222 = *(v0 + 1288);
  v223 = *(v0 + 1280);
  v224 = v219 == 0;
  if (!v219)
  {
    v219 = 0xE000000000000000;
  }

  v246 = *(v0 + 1248);
  v247 = v219;
  if (v224)
  {
    v218 = 0;
  }

  v245 = v218;
  v248 = *(v0 + 1408);
  sub_10005A0B8(0, 0, v216);

  v260(v0 + 1024, 0);

  sub_1001D02C0();
  (*(v222 + 104))(v221, v244, v223);
  *(v0 + 2032) = sub_1001D0F10();
  *(v0 + 2040) = sub_1001D1E40();
  v225 = swift_task_alloc();
  *(v0 + 2048) = v225;
  v225[1].i64[0] = v246;
  v225[1].i64[1] = v272;
  v225[2].i64[0] = v267;
  v225[2].i64[1] = v245;
  v225[3].i64[0] = v247;
  v225[3].i64[1] = v251;
  v225[4].i64[0] = v220;
  v225[4].i64[1] = v249;
  v225[5].i64[0] = v250;
  v225[5].i64[1] = v274;
  v225[6].i64[0] = v0 + 1136;
  v225[6].i64[1] = v0 + 1152;
  v225[7] = vextq_s8(v248, v248, 8uLL);
  v225[8].i64[0] = v253;
  (*(v222 + 16))(v252, v221, v223);
  sub_1001D11A0();
  swift_allocObject();

  *(v0 + 2056) = sub_1001D1140();

  sub_1001D1030();
  v226 = swift_task_alloc();
  *(v0 + 2064) = v226;
  *v226 = v0;
  v226[1] = sub_100070A34;

  return (sub_100135C64)();
}

uint64_t sub_100070A34()
{
  *(*v1 + 2072) = v0;

  if (v0)
  {
    v2 = sub_100071F74;
  }

  else
  {
    v2 = sub_100070B48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100070B48()
{
  v184 = v0;
  v156 = *(v0 + 2040);
  v181 = *(v0 + 2016);
  v168 = *(v0 + 1888);
  v1 = *(v0 + 1576);
  v174 = *(v0 + 1568);
  v178 = *(v0 + 1584);
  v2 = *(v0 + 1384);
  v159 = *(v0 + 1368);
  v162 = *(v0 + 1416);
  v3 = *(v0 + 1288);
  v152 = *(v0 + 1280);
  v154 = *(v0 + 1304);
  v4 = *(v0 + 1272);
  v5 = *(v0 + 1264);
  v6 = *(v0 + 1256);
  (*(v5 + 104))(v4, *(v0 + 2088), v6);
  sub_1001D0F20();
  (*(v5 + 8))(v4, v6);

  (*(v3 + 8))(v154, v152);
  v168(v2, v162, v159);
  os_unfair_lock_lock((v0 + 1152));

  os_unfair_lock_unlock((v0 + 1152));
  sub_1001D07E0();
  os_unfair_lock_lock((v0 + 1136));
  v7 = *(v0 + 1144);
  os_unfair_lock_unlock((v0 + 1136));
  v8 = *(v1 + 8);
  v8(v178, v174);

  v9 = sub_1001D0E50();
  v10 = sub_1001D1E00();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 2016);
  if (v11)
  {
    v13 = *(v0 + 2008);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v183[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000954E0(v13, v12, v183);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s finished prefetch request", v14, 0xCu);
    sub_100011CF0(v15);
  }

  v16 = *(v0 + 1360);
  v17 = *(v0 + 1352);
  v18 = *(v0 + 1344);
  v19 = *(v0 + 1336);
  sub_100011F00(v0 + 1160, &qword_100229308, &qword_1001D6478);
  (*(v18 + 16))(v17, v16, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v0 + 1984);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1000095C8(0, v21[2] + 1, 1, *(v0 + 1984));
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1000095C8((v22 > 1), v23 + 1, 1, v21);
  }

  v24 = *(v0 + 1352);
  v25 = *(v0 + 1344);
  v26 = *(v0 + 1336);
  v21[2] = v23 + 1;
  (*(v25 + 32))(v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v24, v26);
  v27 = *(sub_1001D0850() + 16);

  v28 = v27 - v7;
  if (__OFSUB__(v27, v7))
  {
    __break(1u);
  }

  else
  {
    v175 = v7;
    v181 = v8;
    v182 = v21;

    v29 = sub_1001D0E50();
    v30 = sub_1001D1E00();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 2000);
    if (v31)
    {
      v33 = *(v0 + 1992);
      v172 = *(v0 + 1416);
      v34 = *(v0 + 1376);
      v165 = *(v0 + 1368);
      v169 = *(v0 + 1408);
      v35 = *(v0 + 1344);
      v160 = *(v0 + 1336);
      v163 = *(v0 + 1360);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v183[0] = v37;
      *v36 = 136315650;
      v38 = sub_1000954E0(v33, v32, v183);

      *(v36 + 4) = v38;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v175;
      *(v36 + 22) = 2048;
      *(v36 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s attestations saved: %ld duplicates: %ld", v36, 0x20u);
      sub_100011CF0(v37);

      (*(v35 + 8))(v163, v160);
      v39 = *(v34 + 8);
      v39(v169, v165);
      v40 = v172;
      v41 = v165;
    }

    else
    {
      v42 = *(v0 + 1416);
      v43 = *(v0 + 1408);
      v44 = *(v0 + 1376);
      v45 = *(v0 + 1368);
      v46 = *(v0 + 1360);
      v47 = *(v0 + 1344);
      v48 = *(v0 + 1336);

      (*(v47 + 8))(v46, v48);
      v39 = *(v44 + 8);
      v39(v43, v45);
      v40 = v42;
      v41 = v45;
    }

    v39(v40, v41);
    v49 = *(v0 + 1976);
    if (*(v0 + 2093))
    {
      v50 = *(v0 + 1832) - 1;
    }

    else
    {
      v50 = *(v0 + 1848);
    }

    if (v49 == v50)
    {
      v51 = *(v0 + 1808);
      v52 = *(v0 + 1800);
      v171 = *(v0 + 1736);
      v53 = *(v0 + 1728);
      v54 = *(v0 + 1632);
      v55 = *(v0 + 1616);
      v56 = *(v0 + 1608);
      v166 = *(v0 + 1520);
      v57 = *(v0 + 1512);
      v58 = *(v0 + 1504);
      v170 = *(v0 + 1720);
      v181(*(v0 + 1600), *(v0 + 1568));
      sub_100011E48(v52, v51);

      (*(v55 + 8))(v54, v56);
      (*(v57 + 8))(v166, v58);
      (*(v53 + 8))(v171, v170);

      v59 = sub_1001D0E50();
      v60 = sub_1001D1E00();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = *(v0 + 1768);
        v62 = *(v0 + 1760);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v183[0] = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_1000954E0(v62, v61, v183);
        _os_log_impl(&_mh_execute_header, v59, v60, "%s finished batch of prefetch requests", v63, 0xCu);
        sub_100011CF0(v64);
      }

      v96 = *(v0 + 8);

      return v96(v182);
    }

    v65 = (v49 + 1);
    if (v49 != -1)
    {
      *(v0 + 1984) = v182;
      *(v0 + 1976) = v65;
      v66 = *(v0 + 2080);
      v67 = *(v0 + 1600);
      v68 = *(v0 + 1592);
      v69 = *(v0 + 1576);
      v70 = *(v0 + 1568);
      *(v0 + 1056) = sub_1001D23A0();
      *(v0 + 1064) = v71;
      v186._countAndFlagsBits = 35;
      v186._object = 0xE100000000000000;
      sub_1001D18B0(v186);
      v181 = v65;
      *(v0 + 1184) = v65;
      v187._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v187);

      v188._countAndFlagsBits = 58;
      v188._object = 0xE100000000000000;
      sub_1001D18B0(v188);
      v72 = *(v0 + 1056);
      *(v0 + 1992) = v72;
      v73 = *(v0 + 1064);
      *(v0 + 2000) = v73;
      sub_1001CFD90();
      (*(v69 + 16))(v68, v67, v70);
      v74 = (*(v69 + 88))(v68, v70);
      v75 = *(v0 + 1888);
      if (v74 == v66)
      {
        v179 = v72;
        v76 = *(v0 + 1416);
        v77 = *(v0 + 1408);
        v78 = *(v0 + 1400);
        v79 = *(v0 + 1392);
        v80 = *(v0 + 1368);
        sub_1001CFD90();
        v75(v78, v76, v80);
        v75(v79, v77, v80);

        v81 = sub_1001D0E50();
        v82 = sub_1001D1E00();

        if (os_log_type_enabled(v81, v82))
        {
          v176 = v82;
          v83 = *(v0 + 1400);
          v173 = *(v0 + 1392);
          v84 = *(v0 + 1376);
          v85 = *(v0 + 1368);
          v86 = swift_slowAlloc();
          v183[0] = swift_slowAlloc();
          *v86 = 136315650;
          *(v86 + 4) = sub_1000954E0(v179, v73, v183);
          *(v86 + 12) = 2080;
          v87 = sub_1001D23A0();
          v89 = v88;
          v90 = *(v84 + 8);
          v90(v83, v85);
          v91 = sub_1000954E0(v87, v89, v183);

          *(v86 + 14) = v91;
          *(v86 + 22) = 2080;
          v92 = sub_1001D23A0();
          v94 = v93;
          v90(v173, v85);
          v95 = sub_1000954E0(v92, v94, v183);

          *(v86 + 24) = v95;
          _os_log_impl(&_mh_execute_header, v81, v176, "%s Request: %s RequestIDForReporting: %s", v86, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v101 = *(v0 + 1400);
          v102 = *(v0 + 1392);
          v103 = *(v0 + 1376);
          v104 = *(v0 + 1368);

          v105 = *(v103 + 8);
          v105(v102, v104);
          v105(v101, v104);
        }
      }

      else
      {
        v98 = *(v0 + 1592);
        v99 = *(v0 + 1576);
        v100 = *(v0 + 1568);
        v75(*(v0 + 1408), *(v0 + 1416), *(v0 + 1368));
        (*(v99 + 8))(v98, v100);
      }

      if (qword_1002276A8 == -1)
      {
        goto LABEL_27;
      }

      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_27:
  v106 = *(v0 + 1904);
  v107 = *(v0 + 1496);
  v108 = *(v0 + 1472);
  v109 = sub_10003A37C(v108, qword_100242D78);
  v106(v107, v109, v108);
  sub_1001CFD70();
  sub_1001D0EF0();
  *(v0 + 1136) = 0;
  *(v0 + 1144) = 0;
  *(v0 + 1152) = 0;
  *(v0 + 1160) = _swiftEmptyArrayStorage;
  *(v0 + 1168) = sub_1001D23A0();
  *(v0 + 1176) = v110;
  v189._countAndFlagsBits = 58;
  v189._object = 0xE100000000000000;
  sub_1001D18B0(v189);
  v111 = *(v0 + 1168);
  *(v0 + 2008) = v111;
  v112 = *(v0 + 1176);
  *(v0 + 2016) = v112;

  v113 = sub_1001D0E50();
  v114 = sub_1001D1E00();

  v177 = v112;
  v180 = v111;
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v183[0] = v116;
    *v115 = 136315138;
    *(v115 + 4) = sub_1000954E0(v111, v112, v183);
    _os_log_impl(&_mh_execute_header, v113, v114, "%s executing prefetch request", v115, 0xCu);
    sub_100011CF0(v116);
  }

  v117 = *(v0 + 1584);
  v118 = *(v0 + 1328);
  v119 = *(v0 + 1320);
  v120 = *(v0 + 1312);
  v121 = (*(v0 + 1248) + *(v0 + 1784));
  v122 = v121[3];
  v123 = v121[4];
  sub_100024DC8(v121, v122);
  *(v0 + 1008) = &type metadata for SystemInfo;
  *(v0 + 1016) = &protocol witness table for SystemInfo;
  v124 = swift_allocObject();
  *(v0 + 984) = v124;
  v125 = *(v0 + 160);
  v124[9] = *(v0 + 144);
  v124[10] = v125;
  v124[11] = *(v0 + 176);
  v126 = *(v0 + 96);
  v124[5] = *(v0 + 80);
  v124[6] = v126;
  v127 = *(v0 + 128);
  v124[7] = *(v0 + 112);
  v124[8] = v127;
  v128 = *(v0 + 32);
  v124[1] = *(v0 + 16);
  v124[2] = v128;
  v129 = *(v0 + 64);
  v124[3] = *(v0 + 48);
  v124[4] = v129;
  sub_1000884D8(v0 + 16, v0 + 192);
  Configuration.environment(systemInfo:)((v0 + 984), v122, v123, v117);
  sub_100011CF0((v0 + 984));
  sub_100024DC8(v121, v121[3]);
  sub_1001D0400();
  sub_1001D0210();
  (*(v119 + 8))(v118, v120);
  v130 = *(v0 + 2092);
  LOBYTE(v121) = sub_1001D0280();
  *(v0 + 2024) = sub_1001D1200();
  sub_1001D1240();
  swift_allocObject();
  v131 = sub_1001D1230();
  v132 = sub_1001D1260();
  if (v121)
  {
    sub_1001D11F0();
    nw_parameters_set_privacy_proxy_fail_closed();
    swift_unknownObjectRelease();
  }

  if (*(v0 + 1968))
  {

    sub_1001D11E0();
  }

  if (v130)
  {
    v133 = sub_1001D1220();
    *(v0 + 928) = sub_100096568;
    *(v0 + 936) = 0;
    *(v0 + 896) = _NSConcreteStackBlock;
    *(v0 + 904) = 1107296256;
    *(v0 + 912) = sub_100059234;
    *(v0 + 920) = &unk_10021E990;
    v134 = _Block_copy((v0 + 896));
    v135 = sub_1001D1E40();
    sec_protocol_options_set_verify_block(v133, v134, v135);

    _Block_release(v134);
    swift_unknownObjectRelease();
  }

  sub_1001D11D0();
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1001D54B0;
  *(v136 + 32) = v132;
  *(v136 + 40) = v131;

  sub_1001D11C0();

  v137 = sub_1001D12C0();
  sub_1001D11D0();

  v138 = sub_1001D11B0();
  if (*v139 >> 62 && (result = sub_1001D2190(), result < 0))
  {
    __break(1u);
  }

  else
  {
    v149 = *(v0 + 2084);
    v140 = *(v0 + 1824);
    v141 = *(v0 + 1816);
    v158 = *(v0 + 1736);
    v161 = *(v0 + 1840);
    v142 = *(v0 + 1584);
    v157 = *(v0 + 1520);
    v143 = *(v0 + 1304);
    v164 = *(v0 + 1296);
    v167 = *(v0 + 1632);
    v144 = *(v0 + 1288);
    v145 = *(v0 + 1280);
    v146 = v141 == 0;
    if (!v141)
    {
      v141 = 0xE000000000000000;
    }

    v151 = *(v0 + 1248);
    v153 = v141;
    if (v146)
    {
      v140 = 0;
    }

    v150 = v140;
    v155 = *(v0 + 1408);
    sub_10005A0B8(0, 0, v137);

    v138(v0 + 1024, 0);

    sub_1001D02C0();
    (*(v144 + 104))(v143, v149, v145);
    *(v0 + 2032) = sub_1001D0F10();
    *(v0 + 2040) = sub_1001D1E40();
    v147 = swift_task_alloc();
    *(v0 + 2048) = v147;
    v147[1].i64[0] = v151;
    v147[1].i64[1] = v180;
    v147[2].i64[0] = v177;
    v147[2].i64[1] = v150;
    v147[3].i64[0] = v153;
    v147[3].i64[1] = v161;
    v147[4].i64[0] = v142;
    v147[4].i64[1] = v157;
    v147[5].i64[0] = v158;
    v147[5].i64[1] = v181;
    v147[6].i64[0] = v0 + 1136;
    v147[6].i64[1] = v0 + 1152;
    v147[7] = vextq_s8(v155, v155, 8uLL);
    v147[8].i64[0] = v167;
    (*(v144 + 16))(v164, v143, v145);
    sub_1001D11A0();
    swift_allocObject();

    *(v0 + 2056) = sub_1001D1140();

    sub_1001D1030();
    v148 = swift_task_alloc();
    *(v0 + 2064) = v148;
    *v148 = v0;
    v148[1] = sub_100070A34;

    return (sub_100135C64)();
  }

  return result;
}

uint64_t sub_100071F74()
{
  v55 = v0;
  v43 = v0[255];
  v1 = v0[197];
  v51 = v0[196];
  v53 = v0[198];
  v2 = v0[161];
  v46 = v0[160];
  v48 = v0[163];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[157];
  (*(v4 + 104))(v3, enum case for NWActivity.CompletionReason.failure(_:), v5);
  sub_1001D0F20();
  (*(v4 + 8))(v3, v5);
  swift_willThrow();

  (*(v2 + 8))(v48, v46);
  v6 = v51;
  v52 = *(v1 + 8);
  v52(v53, v6);

  v7 = sub_1001D0E50();
  v8 = sub_1001D1E00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[252];
    v10 = v0[251];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v54[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1000954E0(v10, v9, v54);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s finished prefetch request", v11, 0xCu);
    sub_100011CF0(v12);
  }

  sub_100011F00((v0 + 145), &qword_100229308, &qword_1001D6478);

  swift_errorRetain();
  v13 = sub_1001D0E50();
  v14 = sub_1001D1DE0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[250];
    v16 = v0[249];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v54[0] = v19;
    *v17 = 136315394;
    v20 = sub_1000954E0(v16, v15, v54);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v21;
    *v18 = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s failed to fetch batch error: %@", v17, 0x16u);
    sub_100011F00(v18, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v19);
  }

  else
  {
  }

  v39 = v0[225];
  v40 = v0[226];
  v50 = v0[217];
  v22 = v0[216];
  v23 = v0[202];
  v42 = v0[201];
  v44 = v0[204];
  v24 = v0[200];
  v25 = v0[196];
  v26 = v0[189];
  v45 = v0[188];
  v47 = v0[190];
  v41 = v0[177];
  v27 = v0[176];
  v28 = v0[172];
  v29 = v0[171];
  v49 = v0[215];
  swift_willThrow();
  sub_100011E48(v39, v40);
  v52(v24, v25);
  v30 = *(v28 + 8);
  v30(v27, v29);
  v30(v41, v29);
  (*(v23 + 8))(v44, v42);
  (*(v26 + 8))(v47, v45);
  (*(v22 + 8))(v50, v49);

  v31 = sub_1001D0E50();
  v32 = sub_1001D1E00();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[221];
    v34 = v0[220];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v54[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000954E0(v34, v33, v54);
    _os_log_impl(&_mh_execute_header, v31, v32, "%s finished batch of prefetch requests", v35, 0xCu);
    sub_100011CF0(v36);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_100072724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_100072860, 0, 0);
}

uint64_t sub_100072860()
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
    v8 = v0[14];
    v9 = v0[3];
    sub_100011F00(v0[8], &qword_1002292B0, &unk_1001D6420);
    v10 = *(v6 + 16);
    v10(v8, v9, v5);
    v11 = sub_1001D0E50();
    v12 = sub_1001D1DE0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[14];
    if (v13)
    {
      v15 = v0[13];
      v17 = v0[9];
      v16 = v0[10];
      v18 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_1000954E0(0xD000000000000025, 0x80000001001E3C00, v61);
      *(v18 + 12) = 2080;
      v10(v15, v14, v17);
      v19 = sub_1001D1820();
      v21 = v20;
      (*(v16 + 8))(v14, v17);
      v22 = sub_1000954E0(v19, v21, v61);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s parameters=%s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v42 = v0[9];
      v43 = v0[10];

      (*(v43 + 8))(v14, v42);
    }

    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
LABEL_14:

    v58 = v0[1];

    return v58();
  }

  v23 = v0[15];
  (*(v6 + 32))(v23, v0[8], v0[9]);
  os_unfair_lock_lock((v7 + 16));
  if (sub_10005FBF4(v23, *(v7 + 24)))
  {
    v24 = v0[15];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];
    os_unfair_lock_unlock((v7 + 16));
    v28 = *(v26 + 16);
    v28(v25, v24, v27);
    v29 = sub_1001D0E50();
    v30 = sub_1001D1E00();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[13];
      v33 = v0[10];
      v32 = v0[11];
      v34 = v0[9];
      v59 = v30;
      v35 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_1000954E0(0xD00000000000003CLL, 0x80000001001E3C60, v61);
      *(v35 + 12) = 2080;
      v28(v31, v32, v34);
      v36 = sub_1001D1820();
      v38 = v37;
      v39 = *(v33 + 8);
      v39(v32, v34);
      v40 = sub_1000954E0(v36, v38, v61);

      *(v35 + 14) = v40;
      v41 = v39;
      _os_log_impl(&_mh_execute_header, v29, v59, "%s parameters=%s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v54 = v0[10];
      v53 = v0[11];
      v55 = v0[9];

      v41 = *(v54 + 8);
      v41(v53, v55);
    }

    v56 = v0[15];
    v57 = v0[9];
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    v41(v56, v57);
    goto LABEL_14;
  }

  v45 = v0[12];
  v44 = v0[13];
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
  v50[1] = sub_100072FB0;
  v51 = v0[2];

  return v60(v51);
}

uint64_t sub_100072FB0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1000731E8;
  }

  else
  {
    v2 = sub_1000730C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000730C4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[6];
  os_unfair_lock_lock(v5 + 4);
  sub_100061804(v1, v4);
  sub_100011F00(v4, &qword_1002292B0, &unk_1001D6420);
  os_unfair_lock_unlock(v5 + 4);
  v2(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000731E8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  os_unfair_lock_lock(v5 + 4);
  sub_100061804(v1, v4);
  sub_100011F00(v4, &qword_1002292B0, &unk_1001D6420);
  os_unfair_lock_unlock(v5 + 4);
  v2(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000732FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_100073438, 0, 0);
}

uint64_t sub_100073438()
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
    v8 = v0[14];
    v9 = v0[3];
    sub_100011F00(v0[8], &qword_1002292B0, &unk_1001D6420);
    v10 = *(v6 + 16);
    v10(v8, v9, v5);
    v11 = sub_1001D0E50();
    v12 = sub_1001D1DE0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[14];
    if (v13)
    {
      v15 = v0[13];
      v17 = v0[9];
      v16 = v0[10];
      v18 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_1000954E0(0xD000000000000025, 0x80000001001E3C00, v61);
      *(v18 + 12) = 2080;
      v10(v15, v14, v17);
      v19 = sub_1001D1820();
      v21 = v20;
      (*(v16 + 8))(v14, v17);
      v22 = sub_1000954E0(v19, v21, v61);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s parameters=%s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v42 = v0[9];
      v43 = v0[10];

      (*(v43 + 8))(v14, v42);
    }

    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
LABEL_14:

    v58 = v0[1];

    return v58();
  }

  v23 = v0[15];
  (*(v6 + 32))(v23, v0[8], v0[9]);
  os_unfair_lock_lock((v7 + 16));
  if (sub_10005FBF4(v23, *(v7 + 24)))
  {
    v24 = v0[15];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];
    os_unfair_lock_unlock((v7 + 16));
    v28 = *(v26 + 16);
    v28(v25, v24, v27);
    v29 = sub_1001D0E50();
    v30 = sub_1001D1E00();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[13];
      v33 = v0[10];
      v32 = v0[11];
      v34 = v0[9];
      v59 = v30;
      v35 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_1000954E0(0xD00000000000003CLL, 0x80000001001E3C60, v61);
      *(v35 + 12) = 2080;
      v28(v31, v32, v34);
      v36 = sub_1001D1820();
      v38 = v37;
      v39 = *(v33 + 8);
      v39(v32, v34);
      v40 = sub_1000954E0(v36, v38, v61);

      *(v35 + 14) = v40;
      v41 = v39;
      _os_log_impl(&_mh_execute_header, v29, v59, "%s parameters=%s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v54 = v0[10];
      v53 = v0[11];
      v55 = v0[9];

      v41 = *(v54 + 8);
      v41(v53, v55);
    }

    v56 = v0[15];
    v57 = v0[9];
    sub_1001D0200();
    sub_10008A830(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01F0();
    swift_willThrow();
    v41(v56, v57);
    goto LABEL_14;
  }

  v45 = v0[12];
  v44 = v0[13];
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
  v50[1] = sub_100073B88;
  v51 = v0[2];

  return v60(v51);
}

uint64_t sub_100073B88()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10008A890;
  }

  else
  {
    v2 = sub_10008A878;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100073C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[101] = v7;
  v8[100] = a7;
  v8[99] = a6;
  v8[98] = a5;
  v8[97] = a4;
  v8[96] = a3;
  v8[95] = a2;
  v8[89] = a1;
  v9 = sub_1001D08A0();
  v8[102] = v9;
  v8[103] = *(v9 - 8);
  v8[104] = swift_task_alloc();
  sub_1001CF7E0();
  v8[105] = swift_task_alloc();

  return _swift_task_switch(sub_100073DA4, 0, 0);
}

uint64_t sub_100073DA4()
{
  v28 = v0;
  *(v0 + 848) = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 760);
    v4 = *(v0 + 712);
    v5 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v27);
    *(v5 + 12) = 2080;
    v6 = sub_1001D1710();
    v8 = sub_1000954E0(v6, v7, &v27);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "prewarm workloadType=%s workloadParameters=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v0 + 808);
  v10 = swift_allocObject();
  *(v0 + 856) = v10;
  *(v10 + 16) = v9;
  v11 = swift_task_alloc();
  *(v0 + 864) = v11;
  *(v11 + 16) = &unk_1001D6820;
  *(v11 + 24) = v10;
  v12 = v9;
  swift_asyncLet_begin();
  sub_1001CF820();
  swift_allocObject();
  v13 = sub_1001CF810();
  *(v0 + 872) = v13;
  sub_1001CF7C0();
  sub_1001CF7F0();
  v14 = *&v12[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore];
  *(v0 + 880) = v14;
  if (v14)
  {
    v15 = *(v0 + 832);
    v16 = *(v0 + 808);
    v17 = *(v0 + 800);
    v18 = *(v0 + 792);
    v26 = *(v0 + 776);

    sub_1001D0880();
    v19 = swift_task_alloc();
    *(v0 + 888) = v19;
    *(v19 + 16) = v14;
    *(v19 + 24) = v16;
    *(v19 + 32) = v15;
    *(v19 + 40) = 1;
    *(v19 + 48) = 0;
    *(v19 + 56) = 1;
    *(v19 + 64) = v26;
    *(v19 + 80) = v18;
    *(v19 + 88) = v17;
    *(v19 + 96) = v13;
    v20 = swift_task_alloc();
    *(v0 + 896) = v20;
    *v20 = v0;
    v20[1] = sub_100074218;
    v21 = *(v0 + 832);

    return sub_100072724(v0 + 696, v21, &unk_1001D6840, v19);
  }

  else
  {
    v23 = sub_1001D0E50();
    v24 = sub_1001D1E00();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "store unavailable", v25, 2u);
    }

    *(v0 + 912) = xmmword_1001D6800;

    return _swift_asyncLet_get_throwing(v0 + 16);
  }
}

uint64_t sub_100074218()
{
  *(*v1 + 904) = v0;

  if (v0)
  {
    v2 = sub_1000743EC;
  }

  else
  {

    v2 = sub_100074334;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100074334()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];

  v4 = v0[87];
  v5 = v0[88];
  (*(v2 + 8))(v1, v3);
  v0[115] = v5;
  v0[114] = v4;

  return _swift_asyncLet_get_throwing(v0 + 2);
}

uint64_t sub_1000743EC()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed prefetch attestations: %@", v6, 0xCu);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  *(v0 + 912) = xmmword_1001D6800;

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_1000745C4(uint64_t a1, uint64_t a2)
{
  *(v3 + 928) = v2;
  if (v2)
  {
    return _swift_task_switch(sub_1000746B4, 0, 0);
  }

  else
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100074604, v3 + 720);
  }
}

uint64_t sub_100074620()
{

  v1 = v0[1];
  v2 = v0[115];
  v3 = v0[114];

  return v1(v3, v2);
}

uint64_t sub_1000746B4()
{
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
    _os_log_impl(&_mh_execute_header, v1, v2, "token fetch prewarm failed, error=%@", v3, 0xCu);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  return _swift_asyncLet_finish(v0 + 16, v6, sub_100074604, v0 + 720);
}

uint64_t sub_100074824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005B61C;

  return sub_100074984(a1);
}

uint64_t sub_1000748B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000748F0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005B61C;

  return sub_100074824(v2);
}

uint64_t sub_100074984(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1001D02F0();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_1001D05B0();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_1001D0180();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100074AFC, 0, 0);
}

uint64_t sub_100074AFC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for PrivateCloudComputeFeatureFlags.fetchAuthTokenOnPrewarm(_:), v3);
  v0[5] = v3;
  v0[6] = sub_10008A830(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags, &protocol conformance descriptor for PrivateCloudComputeFeatureFlags);
  v4 = sub_10003B47C(v0 + 2);
  (*(v2 + 16))(v4, v1, v3);
  v5 = sub_1001CFEC0();
  (*(v2 + 8))(v1, v3);
  sub_100011CF0(v0 + 2);
  if (v5)
  {
    v6 = sub_1001D0E50();
    v7 = sub_1001D1DD0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "running token fetch during prewarm", v8, 2u);
    }

    v10 = v0[12];
    v9 = v0[13];
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[7];

    (*(v10 + 16))(v9, v15 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config, v11);
    sub_100011AC0(&qword_100230160, &qword_1001E1F30);
    v16 = swift_allocObject();
    v0[17] = v16;
    (*(v14 + 104))(v12, enum case for TC2LogCategory.tokenProvider(_:), v13);
    sub_1001D08B0();
    (*(v14 + 8))(v12, v13);
    (*(v10 + 32))(v16 + *(*v16 + 120), v9, v11);
    v17 = sub_10007A850();
    v0[18] = v17;
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_100074E3C;

    return sub_10007BAF0(v17);
  }

  else
  {

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100074E3C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100074FDC;
  }

  else
  {
    v2 = sub_100074F50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100074F50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100074FDC()
{
  v1 = *(v0 + 160);

  sub_100089D84(v1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000750A4(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10005B61C;

  return v5();
}

uint64_t sub_10007518C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_1000750A4(a1, v4);
}

uint64_t sub_100075244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1001D08A0();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_1001CF7E0();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100075334, 0, 0);
}

uint64_t sub_100075334()
{
  v23 = v0;
  v0[12] = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v22);
    *(v5 + 12) = 2080;
    v6 = sub_1001D1710();
    v8 = sub_1000954E0(v6, v7, &v22);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "prefetch workloadType=%s workloadParameters=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[7];
  sub_1001CF820();
  swift_allocObject();
  v10 = sub_1001CF810();
  v0[13] = v10;
  sub_1001CF7C0();
  sub_1001CF7F0();
  v11 = *(v9 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[14] = v11;
  if (v11)
  {
    v12 = v0[10];
    v13 = v0[7];

    sub_1001D0880();
    v14 = swift_task_alloc();
    v0[15] = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = v12;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0u;
    *(v14 + 96) = v10;
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_100075704;
    v16 = v0[10];

    return sub_100072724((v0 + 2), v16, &unk_1001D69A8, v14);
  }

  else
  {
    v18 = sub_1001D0E50();
    v19 = sub_1001D1E00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "store unavailable", v20, 2u);
    }

    v21 = v0[1];

    return v21(0, 0xF000000000000000);
  }
}

uint64_t sub_100075704()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1000758D4;
  }

  else
  {

    v2 = sub_100075820;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100075820()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[2];
  v5 = v0[3];
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_1000758D4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed prefetch attestations: %@", v6, 0xCu);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v9 = v0[1];

  return v9(0, 0xF000000000000000);
}

uint64_t sub_100075AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 664) = v19;
  *(v8 + 656) = v18;
  *(v8 + 640) = v17;
  *(v8 + 632) = a8;
  *(v8 + 881) = a7;
  *(v8 + 624) = a6;
  *(v8 + 880) = a5;
  *(v8 + 616) = a4;
  *(v8 + 608) = a3;
  *(v8 + 600) = a2;
  *(v8 + 592) = a1;
  v9 = sub_1001CFDA0();
  *(v8 + 672) = v9;
  *(v8 + 680) = *(v9 - 8);
  *(v8 + 688) = swift_task_alloc();
  v10 = sub_1001D0840();
  *(v8 + 696) = v10;
  *(v8 + 704) = *(v10 - 8);
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  v11 = sub_1001D0860();
  *(v8 + 728) = v11;
  *(v8 + 736) = *(v11 - 8);
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  v12 = sub_1001D02F0();
  *(v8 + 760) = v12;
  *(v8 + 768) = *(v12 - 8);
  *(v8 + 776) = swift_task_alloc();
  sub_1001CF7E0();
  *(v8 + 784) = swift_task_alloc();
  v13 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  *(v8 + 792) = v13;
  *(v8 + 800) = *(v13 - 8);
  *(v8 + 808) = swift_task_alloc();
  v14 = sub_1001D08A0();
  *(v8 + 816) = v14;
  *(v8 + 824) = *(v14 - 8);
  *(v8 + 832) = swift_task_alloc();
  sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  *(v8 + 840) = swift_task_alloc();

  return _swift_task_switch(sub_100075DEC, 0, 0);
}

uint64_t sub_100075DEC()
{
  v50 = *(v0 + 840);
  v1 = *(v0 + 832);
  v38 = v1;
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v49 = *(v0 + 808);
  v4 = *(v0 + 800);
  v48 = *(v0 + 792);
  v5 = *(v0 + 768);
  v35 = *(v0 + 760);
  v36 = *(v0 + 776);
  v43 = *(v0 + 648);
  v44 = *(v0 + 656);
  v41 = *(v0 + 632);
  v42 = *(v0 + 640);
  v46 = *(v0 + 881);
  v45 = *(v0 + 624);
  v39 = *(v0 + 880);
  v33 = *(v0 + 616);
  v6 = *(v0 + 608);
  v47 = *(v0 + 600);
  v7 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
  sub_10001208C(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier, v50, &qword_100229520, &unk_1001DEF70);
  v8 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
  v9 = sub_1001D05B0();
  *(v0 + 568) = v9;
  *(v0 + 576) = &protocol witness table for DefaultConfiguration;
  v40 = sub_10003B47C((v0 + 544));
  (*(*(v9 - 8) + 16))(v40, v6 + v8, v9);
  v10 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
  v11 = (v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  v13 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
  v12 = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
  *(v0 + 16) = *(v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  *(v0 + 32) = v13;
  *(v0 + 48) = v12;
  v14 = v11[6];
  v16 = v11[3];
  v15 = v11[4];
  *(v0 + 96) = v11[5];
  *(v0 + 112) = v14;
  *(v0 + 64) = v16;
  *(v0 + 80) = v15;
  v17 = v11[10];
  v19 = v11[7];
  v18 = v11[8];
  *(v0 + 160) = v11[9];
  *(v0 + 176) = v17;
  *(v0 + 128) = v19;
  *(v0 + 144) = v18;
  v37 = *(v2 + 16);
  v37(v1, v33, v3);
  v34 = *(v4 + 16);
  v34(v49, v6 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventContinuation, v48);
  sub_100011AC0(&qword_100229528, &qword_1001E2100);
  v20 = swift_allocObject();
  *(v0 + 848) = v20;
  sub_1001CF820();
  swift_allocObject();

  sub_1000884D8(v0 + 16, v0 + 192);
  v21 = sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  *(v20 + 2) = v21;
  (*(v5 + 104))(v36, enum case for TC2LogCategory.prefetchRequest(_:), v35);
  sub_1001D08B0();
  (*(v5 + 8))(v36, v35);
  sub_1001CFD90();
  *&v20[*(*v20 + 216)] = v47;
  *&v20[*(*v20 + 224)] = v7;
  sub_10001208C(v50, &v20[*(*v20 + 232)], &qword_100229520, &unk_1001DEF70);
  sub_100044698(v0 + 544, &v20[*(*v20 + 240)]);
  *&v20[*(*v20 + 248)] = v10;
  v22 = &v20[*(*v20 + 256)];
  v23 = *(v0 + 32);
  *v22 = *(v0 + 16);
  *(v22 + 1) = v23;
  v24 = *(v0 + 96);
  *(v22 + 4) = *(v0 + 80);
  *(v22 + 5) = v24;
  v25 = *(v0 + 64);
  *(v22 + 2) = *(v0 + 48);
  *(v22 + 3) = v25;
  v26 = *(v0 + 176);
  *(v22 + 9) = *(v0 + 160);
  *(v22 + 10) = v26;
  v27 = *(v0 + 144);
  *(v22 + 7) = *(v0 + 128);
  *(v22 + 8) = v27;
  *(v22 + 6) = *(v0 + 112);
  v37(&v20[*(*v20 + 272)], v38, v3);
  v34(&v20[*(*v20 + 280)], v49, v48);
  v20[*(*v20 + 288)] = v39;
  v28 = &v20[*(*v20 + 296)];
  *v28 = v41;
  *(v28 + 1) = v42;
  v29 = &v20[*(*v20 + 304)];
  *v29 = v43;
  *(v29 + 1) = v44;
  v30 = &v20[*(*v20 + 312)];
  *v30 = v45;
  v30[8] = v46 & 1;
  sub_1000884D8(v0 + 16, v0 + 368);

  LOBYTE(v21) = sub_100088818(v40, v0 + 16, v10);
  sub_100088D84(v0 + 16);
  (*(v4 + 8))(v49, v48);
  (*(v2 + 8))(v38, v3);
  sub_100011F00(v50, &qword_100229520, &unk_1001DEF70);
  sub_100011CF0((v0 + 544));
  v20[*(*v20 + 328)] = v21 & 1;
  v31 = swift_task_alloc();
  *(v0 + 856) = v31;
  *v31 = v0;
  v31[1] = sub_1000763F0;

  return sub_10006ADEC();
}

uint64_t sub_1000763F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v4 = sub_100076B40;
  }

  else
  {
    v4 = sub_100076508;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100076508()
{
  v58 = v0;
  v1 = v0[108];
  v43 = *(v1 + 16);
  if (v43)
  {
    v2 = 0;
    v3 = v0[92];
    v4 = v0[88];
    v41 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v51 = (v4 + 16);
    v39 = v4;
    v50 = (v4 + 8);
    v42 = v3;
    v5 = (v3 + 8);
    v45 = (v0[85] + 8);
    v40 = v0[108];
    v53 = (v3 + 8);
    while (v2 < *(v1 + 16))
    {
      v54 = *(v42 + 16);
      v54(v0[94], v41 + *(v42 + 72) * v2, v0[91]);
      v6 = sub_1001D0850();
      v7 = *(v6 + 16);
      if (v7)
      {
        v44 = v2;
        v8 = v6 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v52 = *(v39 + 72);
        do
        {
          v11 = v0[90];
          v12 = v0[89];
          v13 = v0[87];
          v54(v0[93], v0[94], v0[91]);
          v14 = *v51;
          (*v51)(v11, v8, v13);
          v14(v12, v8, v13);
          v15 = sub_1001D0E50();
          v16 = sub_1001D1E00();
          v17 = os_log_type_enabled(v15, v16);
          v18 = v0[93];
          v55 = v0[91];
          v56 = v0[90];
          v19 = v0[87];
          if (v17)
          {
            v20 = v0[86];
            v21 = v0[84];
            v48 = v0[89];
            v22 = swift_slowAlloc();
            v57[0] = swift_slowAlloc();
            *v22 = 136315650;
            v49 = v16;
            sub_1001D07D0();
            sub_10008A830(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v23 = sub_1001D23A0();
            v46 = v19;
            v25 = v24;
            (*v45)(v20, v21);
            v47 = *v53;
            (*v53)(v18, v55);
            v26 = sub_1000954E0(v23, v25, v57);

            *(v22 + 4) = v26;
            *(v22 + 12) = 2080;
            v27 = sub_1001D0800();
            v29 = v28;
            v30 = *v50;
            (*v50)(v56, v46);
            v31 = sub_1000954E0(v27, v29, v57);

            *(v22 + 14) = v31;
            *(v22 + 22) = 1024;
            LODWORD(v31) = sub_1001D0810() & 1;
            v30(v48, v46);
            *(v22 + 24) = v31;
            _os_log_impl(&_mh_execute_header, v15, v49, "%s %s saved: %{BOOL}d", v22, 0x1Cu);
            swift_arrayDestroy();
            v10 = v47;
          }

          else
          {
            v9 = *v50;
            (*v50)(v0[89], v0[87]);

            v9(v56, v19);
            v10 = *v53;
            (*v53)(v18, v55);
          }

          v8 += v52;
          --v7;
        }

        while (v7);

        v1 = v40;
        v2 = v44;
        v5 = v53;
      }

      else
      {

        v10 = *v5;
      }

      ++v2;
      v10(v0[94], v0[91]);
      if (v2 == v43)
      {
        v1 = v0[108];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v32 = v0[109];
    v0[73] = v1;
    sub_100011AC0(&qword_100229530, &qword_1001D6858);
    sub_100088DD8();
    v33 = sub_1001CF800();
    if (v32)
    {
    }

    else
    {
      v36 = v0[74];
      v37 = v33;
      v38 = v34;

      *v36 = v37;
      v36[1] = v38;
    }

    v35 = v0[1];

    v35();
  }
}

uint64_t sub_100076B40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100076C40(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 1000) = v3;
  *(v4 + 1376) = a3;
  *(v4 + 992) = a2;
  *(v4 + 984) = a1;
  *(v4 + 1008) = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  *(v4 + 1016) = swift_task_alloc();
  *(v4 + 1024) = swift_task_alloc();
  v5 = sub_1001D0180();
  *(v4 + 1032) = v5;
  *(v4 + 1040) = *(v5 - 8);
  *(v4 + 1048) = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  *(v4 + 1056) = swift_task_alloc();
  v6 = sub_1001D20D0();
  *(v4 + 1064) = v6;
  v7 = *(v6 - 8);
  *(v4 + 1072) = v7;
  *(v4 + 1080) = *(v7 + 64);
  *(v4 + 1088) = swift_task_alloc();
  *(v4 + 1096) = swift_task_alloc();
  v8 = sub_1001D20F0();
  *(v4 + 1104) = v8;
  v9 = *(v8 - 8);
  *(v4 + 1112) = v9;
  *(v4 + 1120) = *(v9 + 64);
  *(v4 + 1128) = swift_task_alloc();
  *(v4 + 1136) = swift_task_alloc();
  *(v4 + 1144) = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  *(v4 + 1152) = swift_task_alloc();
  v10 = sub_1001D00F0();
  *(v4 + 1160) = v10;
  *(v4 + 1168) = *(v10 - 8);
  *(v4 + 1176) = swift_task_alloc();
  *(v4 + 1184) = swift_task_alloc();
  v11 = sub_1001CFD60();
  *(v4 + 1192) = v11;
  *(v4 + 1200) = *(v11 - 8);
  *(v4 + 1208) = swift_task_alloc();
  *(v4 + 1216) = swift_task_alloc();
  *(v4 + 1224) = swift_task_alloc();
  v12 = sub_1001D0040();
  *(v4 + 1232) = v12;
  *(v4 + 1240) = *(v12 - 8);
  *(v4 + 1248) = swift_task_alloc();
  *(v4 + 1256) = swift_task_alloc();
  *(v4 + 1264) = swift_task_alloc();
  v13 = sub_1001CFFB0();
  *(v4 + 1272) = v13;
  *(v4 + 1280) = *(v13 - 8);
  *(v4 + 1288) = swift_task_alloc();
  *(v4 + 1296) = swift_task_alloc();

  return _swift_task_switch(sub_100077060, 0, 0);
}

uint64_t sub_100077060()
{
  v1 = v0[124];
  v2 = *(v1 + 16);
  v0[163] = v2;
  v3 = *(v1 + 24);
  v0[164] = v3;
  if (v3 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v4 = 5913;
    *(v4 + 8) = _swiftEmptyArrayStorage;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_100089C38(v2, v3);
    sub_100012038(v2, v3);
    sub_1001CFFA0();
    v7 = v0[125];
    (*(v0[160] + 32))(v0[162], v0[161], v0[159]);
    v8 = swift_task_alloc();
    v0[165] = v8;
    *(v8 + 16) = v7;
    sub_1001D20E0();

    return _swift_task_switch(sub_100077340, 0, 0);
  }
}

uint64_t sub_100077340()
{
  v1 = v0[142];
  v22 = v0[141];
  v23 = v0[140];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];
  v24 = v0[165];
  v6 = v0[134];
  v7 = v0[133];
  v8 = v0[132];
  sub_10008A830(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  v0[121] = 0x158E460913D00000;
  v0[122] = 1;
  sub_10008A830(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2100();
  v9 = *(v6 + 8);
  v0[166] = v9;
  v0[167] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v22, v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v23 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v2 + 32))(v13 + v11, v22, v3);
  (*(v6 + 32))(v13 + v12, v5, v7);
  v14 = sub_10008F210(0, 0, v8, &unk_1001D6BC0, v13);
  v0[168] = v14;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_100089C4C;
  v15[4] = v24;
  v16 = swift_allocObject();
  v0[169] = v16;
  *(v16 + 16) = &unk_1001DEF90;
  *(v16 + 24) = v15;

  swift_asyncLet_begin();
  v17 = swift_task_alloc();
  v0[170] = v17;
  *v17 = v0;
  v17[1] = sub_1000776DC;
  v18 = v0[162];
  v19 = v0[144];
  v20 = v0[125];

  return sub_100078A9C(v19, v20, v18);
}

uint64_t sub_1000776DC()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v2 = sub_1000785AC;
  }

  else
  {
    v2 = sub_1000777F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000777F0()
{
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16, v1, sub_100077888, v0 + 928);
}

uint64_t sub_1000778A4()
{
  v1 = v0[166];
  v2 = v0[142];
  v3 = v0[139];
  v4 = v0[138];
  v5 = v0[137];
  v6 = v0[133];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100077984, 0, 0);
}

uint64_t sub_100077984()
{
  v150 = v0;
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1168);
  v136 = *(v0 + 1160);
  v141 = *(v0 + 1184);
  v5 = *(v0 + 1152);
  v6 = *(v0 + 1144);
  v146 = *(v0 + 1048);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  v9 = *(v6 + 48);
  v10 = *(v6 + 64);
  (*(*(v0 + 1240) + 32))(*(v0 + 1264), v5, *(v0 + 1232));
  (*(v2 + 32))(v1, v5 + v9, v3);
  (*(v4 + 32))(v141, v5 + v10, v136);
  (*(v7 + 104))(v146, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v8);
  *(v0 + 912) = v8;
  *(v0 + 920) = sub_10008A830(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags, &protocol conformance descriptor for PrivateCloudComputeFeatureFlags);
  v11 = sub_10003B47C((v0 + 888));
  (*(v7 + 16))(v11, v146, v8);
  LOBYTE(v1) = sub_1001CFEC0();
  (*(v7 + 8))(v146, v8);
  sub_100011CF0((v0 + 888));
  if ((v1 & 1) == 0 || (v12 = *(v0 + 1368), sub_10007974C(*(v0 + 1184), *(v0 + 1376) & 1), !v12))
  {
    v23 = sub_1001D00C0();
    if (v24)
    {
      v25 = *(v0 + 992);
      v26 = *(v25 + 72);
      if (!v26 || v23 == *(v25 + 64) && v24 == v26)
      {
      }

      else
      {
        v94 = sub_1001D2470();

        if ((v94 & 1) == 0)
        {
          v95 = *(v0 + 992);
          sub_100089C90(v95, v0 + 792);
          v96 = sub_1001D0E50();
          v97 = sub_1001D1DE0();
          sub_10005AF88(v95);
          if (os_log_type_enabled(v96, v97))
          {
            v98 = *(v0 + 992);
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v149[0] = v100;
            *v99 = 136315138;
            *(v99 + 4) = sub_1000954E0(*v98, *(v98 + 8), v149);
            _os_log_impl(&_mh_execute_header, v96, v97, "RoutingHint mismatch detected for attestation=%s", v99, 0xCu);
            sub_100011CF0(v100);
          }

          v101 = *(v0 + 1312);
          v102 = *(v0 + 1304);
          v13 = *(v0 + 1280);
          v137 = *(v0 + 1272);
          v142 = *(v0 + 1296);
          v103 = *(v0 + 1240);
          v132 = *(v0 + 1232);
          v135 = *(v0 + 1264);
          v104 = *(v0 + 1200);
          v127 = *(v0 + 1192);
          v130 = *(v0 + 1224);
          v105 = *(v0 + 1184);
          v106 = *(v0 + 1168);
          v107 = *(v0 + 1160);
          sub_100089BE4();
          swift_allocError();
          *v108 = 5915;
          *(v108 + 8) = _swiftEmptyArrayStorage;
          swift_willThrow();
          sub_10002683C(v102, v101);
          (*(v106 + 8))(v105, v107);
          (*(v104 + 8))(v130, v127);
          (*(v103 + 8))(v135, v132);
          goto LABEL_4;
        }
      }
    }

    v27 = *(v0 + 1256);
    v28 = *(v0 + 1240);
    v29 = *(v0 + 1232);
    v143 = *(v0 + 1216);
    v147 = *(v0 + 1224);
    v30 = *(v0 + 1200);
    v134 = *(v0 + 1264);
    v138 = *(v0 + 1192);
    v31 = *(v0 + 1184);
    v32 = *(v0 + 1176);
    v33 = *(v0 + 1168);
    v34 = *(v0 + 1160);
    sub_10001208C(*(v0 + 1000), *(v0 + 1016), &qword_100229520, &unk_1001DEF70);
    v128 = *(v28 + 16);
    v128(v27, v134, v29);
    (*(v33 + 16))(v32, v31, v34);
    v35 = v143;
    v144 = *(v30 + 16);
    v144(v35, v147, v138);
    v36 = sub_1001D0E50();
    v37 = sub_1001D1E00();
    v131 = v36;
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 1256);
    if (v38)
    {
      v40 = *(v0 + 1248);
      v41 = *(v0 + 1240);
      v42 = *(v0 + 1232);
      v123 = *(v0 + 1216);
      v43 = *(v0 + 1200);
      v120 = *(v0 + 1208);
      v121 = *(v0 + 1192);
      v119 = *(v0 + 1176);
      v124 = *(v0 + 1168);
      v125 = *(v0 + 1160);
      v44 = *(v0 + 1016);
      v45 = swift_slowAlloc();
      v149[0] = swift_slowAlloc();
      *v45 = 136446978;
      v46 = sub_1001D02B0();
      v122 = v37;
      v48 = v47;
      sub_100011F00(v44, &qword_100229520, &unk_1001DEF70);
      v49 = sub_1000954E0(v46, v48, v149);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v128(v40, v39, v42);
      v50 = sub_1001D1820();
      v52 = v51;
      v139 = *(v41 + 8);
      v139(v39, v42);
      v53 = sub_1000954E0(v50, v52, v149);

      *(v45 + 14) = v53;
      *(v45 + 22) = 2080;
      sub_1001D00D0();
      sub_10008A830(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v54 = sub_1001D23A0();
      v56 = v55;
      v57 = *(v43 + 8);
      v57(v120, v121);
      v58 = v125;
      v126 = *(v124 + 8);
      v126(v119, v58);
      v59 = sub_1000954E0(v54, v56, v149);

      *(v45 + 24) = v59;
      *(v45 + 32) = 2080;
      v60 = sub_1001D23A0();
      v62 = v61;
      v129 = v57;
      v57(v123, v121);
      v63 = sub_1000954E0(v60, v62, v149);

      *(v45 + 34) = v63;
      _os_log_impl(&_mh_execute_header, v131, v122, "verified attestation bundle environment=%{public}s publicKey=%s keyExpiration=%s attestationExpiry=%s", v45, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v64 = *(v0 + 1240);
      v140 = *(v0 + 1232);
      v65 = *(v0 + 1216);
      v66 = *(v0 + 1200);
      v67 = *(v0 + 1192);
      v68 = *(v0 + 1176);
      v69 = *(v0 + 1168);
      v70 = *(v0 + 1160);
      v71 = *(v0 + 1016);

      v129 = *(v66 + 8);
      v129(v65, v67);
      v126 = *(v69 + 8);
      v126(v68, v70);
      v72 = v140;
      v139 = *(v64 + 8);
      v139(v39, v72);
      sub_100011F00(v71, &qword_100229520, &unk_1001DEF70);
    }

    v112 = *(v0 + 1304);
    v113 = *(v0 + 1312);
    v118 = *(v0 + 1296);
    v116 = *(v0 + 1280);
    v117 = *(v0 + 1272);
    v73 = *(v0 + 1264);
    v115 = *(v0 + 1232);
    v74 = *(v0 + 1224);
    v75 = *(v0 + 1192);
    v76 = *(v0 + 1184);
    v109 = *(v0 + 1160);
    v114 = *(v0 + 1376);
    v77 = *(v0 + 992);
    v78 = *(v0 + 984);
    v79 = sub_100079920();
    v110 = v80;
    v111 = v79;
    v81 = type metadata accessor for ValidatedAttestation(0);
    v144(v78 + v81[7], v74, v75);
    v82 = sub_1001D00E0();
    v145 = v83;
    v148 = v82;
    v84 = sub_1001D00C0();
    v86 = v85;
    sub_10002683C(v112, v113);
    v126(v76, v109);
    v129(v74, v75);
    v139(v73, v115);
    v87 = v77[1];
    *v78 = *v77;
    *(v78 + 16) = v87;
    v88 = v77[2];
    v89 = v77[3];
    v90 = v77[5];
    *(v78 + 64) = v77[4];
    *(v78 + 80) = v90;
    *(v78 + 32) = v88;
    *(v78 + 48) = v89;
    *(v78 + 96) = v114 & 1;
    *(v78 + 104) = v111;
    *(v78 + 112) = v110;
    v91 = (v78 + v81[8]);
    *v91 = v148;
    v91[1] = v145;
    v92 = (v78 + v81[9]);
    *v92 = v84;
    v92[1] = v86;
    sub_100089C90(v77, v0 + 696);
    (*(v116 + 8))(v118, v117);

    v22 = *(v0 + 8);
    goto LABEL_14;
  }

  v142 = *(v0 + 1296);
  v13 = *(v0 + 1280);
  v133 = *(v0 + 1264);
  v137 = *(v0 + 1272);
  v14 = *(v0 + 1240);
  v15 = *(v0 + 1232);
  v16 = *(v0 + 1224);
  v17 = *(v0 + 1200);
  v18 = *(v0 + 1192);
  v19 = *(v0 + 1184);
  v20 = *(v0 + 1168);
  v21 = *(v0 + 1160);
  sub_10002683C(*(v0 + 1304), *(v0 + 1312));
  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v133, v15);
LABEL_4:
  (*(v13 + 8))(v142, v137);

  v22 = *(v0 + 8);
LABEL_14:

  return v22();
}

uint64_t sub_1000785AC()
{
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16, v1, sub_100078644, v0 + 656);
}

uint64_t sub_100078660()
{
  v1 = v0[166];
  v2 = v0[142];
  v3 = v0[139];
  v4 = v0[138];
  v5 = v0[137];
  v6 = v0[133];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10007872C, 0, 0);
}

uint64_t sub_10007872C()
{
  v23 = v0;
  v1 = v0[128];
  v2 = v0[125];

  sub_10001208C(v2, v1, &qword_100229520, &unk_1001DEF70);
  swift_errorRetain();
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[128];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136446466;
    v9 = sub_1001D02B0();
    v11 = v10;
    sub_100011F00(v5, &qword_100229520, &unk_1001DEF70);
    v12 = sub_1000954E0(v9, v11, &v22);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "unable to verify attestation, environment=%{public}s error=%@", v6, 0x16u);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v8);
  }

  else
  {
    v14 = v0[128];

    sub_100011F00(v14, &qword_100229520, &unk_1001DEF70);
  }

  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[160];
  v19 = v0[159];
  swift_willThrow();
  sub_10002683C(v16, v15);
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100078A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_1001D00F0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_1001CFD60();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_1001D0040();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_1001D0180();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100078C98, 0, 0);
}

uint64_t sub_100078C98()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v2 + 104))(v1, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v3);
  v0[5] = v3;
  v0[6] = sub_10008A830(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags, &protocol conformance descriptor for PrivateCloudComputeFeatureFlags);
  v4 = sub_10003B47C(v0 + 2);
  (*(v2 + 16))(v4, v1, v3);
  v5 = sub_1001CFEC0();
  (*(v2 + 8))(v1, v3);
  sub_100011CF0(v0 + 2);
  v6 = sub_1001D0E50();
  v7 = sub_1001D1DD0();
  v8 = os_log_type_enabled(v6, v7);
  if (v5)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "validating attestation using mux validator", v9, 2u);
    }

    sub_100011AC0(&qword_100229520, &unk_1001DEF70);
    v10 = swift_task_alloc();
    v0[25] = v10;
    v11 = sub_1001D0000();
    v12 = sub_10008A830(&qword_1002295B0, &type metadata accessor for MuxValidator, &protocol conformance descriptor for MuxValidator);
    *v10 = v0;
    v10[1] = sub_100078FEC;
    v13 = v0[21];
    v14 = v0[17];
    v15 = v0[13];
  }

  else
  {
    if (v8)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "validating attestation using direct node validator", v16, 2u);
    }

    sub_100011AC0(&qword_100229520, &unk_1001DEF70);
    v17 = swift_task_alloc();
    v0[27] = v17;
    v11 = sub_1001D0020();
    v12 = sub_10008A830(&qword_1002295A8, &type metadata accessor for NodeValidator, &protocol conformance descriptor for NodeValidator);
    *v17 = v0;
    v17[1] = sub_100079310;
    v13 = v0[20];
    v14 = v0[16];
    v15 = v0[12];
  }

  v18 = v0[9];

  return Validator.validate(bundle:)(v13, v14, v15, v18, v11, v12);
}

uint64_t sub_100078FEC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100079258;
  }

  else
  {
    v2 = sub_100079100;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100079100()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v15 = v0[13];
  v6 = v0[11];
  v13 = v0[17];
  v14 = v0[10];
  v7 = v0[7];
  v8 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  (*(v2 + 32))(v7, v1, v3);
  (*(v4 + 32))(v7 + v9, v13, v5);
  (*(v6 + 32))(v7 + v10, v15, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100079258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100079310()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_10007957C;
  }

  else
  {
    v2 = sub_100079424;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100079424()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v15 = v0[12];
  v6 = v0[11];
  v13 = v0[16];
  v14 = v0[10];
  v7 = v0[7];
  v8 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  (*(v2 + 32))(v7, v1, v3);
  (*(v4 + 32))(v7 + v9, v13, v5);
  (*(v6 + 32))(v7 + v10, v15, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10007957C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100079634(uint64_t a1)
{
  oslog = sub_1001D0E50();
  v1 = sub_1001D1DE0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = sub_1001D2610();
    v6 = sub_1000954E0(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "latency issue: validate is taking longer than expected, delay=%s", v2, 0xCu);
    sub_100011CF0(v3);
  }
}

uint64_t sub_10007974C(uint64_t a1, int a2)
{
  result = sub_100079DE8(a1);
  if (!v2 && ((result ^ a2) & 1) != 0)
  {
    v5 = result;
    v6 = sub_1001D0E50();
    v7 = sub_1001D1DE0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v8 = 136446466;
      if (a2)
      {
        v9 = 0x79786F7270;
      }

      else
      {
        v9 = 0x746365726964;
      }

      if (a2)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      v11 = sub_1000954E0(v9, v10, &v16);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      if (v5)
      {
        v12 = 0x79786F7270;
      }

      else
      {
        v12 = 0x746365726964;
      }

      if (v5)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      v14 = sub_1000954E0(v12, v13, &v16);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "node kind mismatch expectedNodeKind=%{public}s, validatedNodeKind=%{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    sub_100089BE4();
    swift_allocError();
    *v15 = 5920;
    *(v15 + 8) = _swiftEmptyArrayStorage;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100079920()
{
  v0 = sub_1001D0030();
  v2 = v0;
  v3 = v1;
  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v1);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(v0) - v0;
  if (__OFSUB__(HIDWORD(v0), v0))
  {
    goto LABEL_13;
  }

  v5 = v5;
LABEL_10:
  if (__OFADD__(v5, 9))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  v17[0] = sub_10008FB20(v5 + 9);
  v17[1] = v9;
  v15 = sub_100011AC0(&qword_100229598, &qword_1001D6900);
  v16 = sub_100024B78(&qword_1002295A0, &qword_100229598, &qword_1001D6900, &protocol conformance descriptor for <A> CollectionOfOne<A>);
  LOBYTE(v14[0]) = 0;
  sub_100024DC8(v14, v15);
  sub_1001CFB90();
  sub_100011CF0(v14);
  sub_1001CFBB0();
  v15 = &type metadata for Data;
  v16 = &protocol witness table for Data;
  v14[0] = v2;
  v14[1] = v3;
  v10 = sub_100024DC8(v14, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  sub_100012038(v2, v3);
  sub_10008F954(v11, v12, v17);
  sub_100011CF0(v14);
  sub_1001CFBB0();
  sub_1001CFBB0();
  sub_1001CFBB0();
  sub_100011E48(v2, v3);
  return v17[0];
}

uint64_t sub_100079B54(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1001CFFB0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100079C14, 0, 0);
}

uint64_t sub_100079C14()
{
  v1 = v0[4];
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v3 = 5913;
    *(v3 + 8) = _swiftEmptyArrayStorage;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v4 = *(v1 + 16);
    sub_100089C38(v4, *(v1 + 24));
    sub_100012038(v4, v2);
    sub_1001CFFA0();
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001CFF80();
    sub_10002683C(v4, v2);
    (*(v8 + 8))(v7, v9);
    v10 = v0[2];
    v11 = v0[3];

    v12 = v0[1];

    return v12(v10, v11);
  }
}

uint64_t sub_100079DE8(uint64_t a1)
{
  v2 = sub_1001D00F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100011AC0(&qword_100229590, &unk_1001D6BE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_1001D00A0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v44 = &v41 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v41 - v16;
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  (*(v3 + 16))(v5, a1, v2);
  sub_1001D0090();
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v19, v8, v9);
    v24 = *(v10 + 16);
    v24(v17, v19, v9);
    v25 = (*(v10 + 88))(v17, v9);
    v26 = v25;
    v27 = enum case for PCC.AttestationType.computeNode(_:);
    if (v25 == enum case for PCC.AttestationType.computeNode(_:))
    {
      (*(v10 + 8))(v19, v9);
      (*(v10 + 96))(v17, v9);
      v28 = sub_1001D0080();
    }

    else
    {
      if (v25 != enum case for PCC.AttestationType.proxyNode(_:))
      {
        v30 = v44;
        v24(v44, v19, v9);
        v31 = sub_1001D0E50();
        v20 = sub_1001D1DE0();
        if (os_log_type_enabled(v31, v20))
        {
          v32 = swift_slowAlloc();
          v41 = v32;
          v45 = swift_slowAlloc();
          v47 = v45;
          *v32 = 136315138;
          v42 = v20;
          v33 = v44;
          v24(v43, v44, v9);
          v34 = sub_1001D1820();
          v46 = v19;
          v35 = v17;
          v37 = v36;
          v38 = *(v10 + 8);
          v38(v33, v9);
          v39 = sub_1000954E0(v34, v37, &v47);
          v17 = v35;
          v19 = v46;

          v20 = v41;
          *(v41 + 1) = v39;
          _os_log_impl(&_mh_execute_header, v31, v42, "attestation kind can't be determined from attestationType=%s", v20, 0xCu);
          sub_100011CF0(v45);
        }

        else
        {

          v38 = *(v10 + 8);
          v38(v30, v9);
        }

        sub_100089BE4();
        swift_allocError();
        *v40 = 5919;
        *(v40 + 8) = _swiftEmptyArrayStorage;
        swift_willThrow();
        v38(v19, v9);
        v38(v17, v9);
        return v20;
      }

      (*(v10 + 8))(v19, v9);
      (*(v10 + 96))(v17, v9);
      v28 = sub_1001D0070();
    }

    v20 = v26 != v27;
    (*(*(v28 - 8) + 8))(v17, v28);
    return v20;
  }

  sub_100011F00(v8, &qword_100229590, &unk_1001D6BE0);
  v20 = sub_1001D0E50();
  v21 = sub_1001D1DE0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "attestation kind can't be determined from attestationType=nil", v22, 2u);
  }

  sub_100089BE4();
  swift_allocError();
  *v23 = 5919;
  *(v23 + 8) = _swiftEmptyArrayStorage;
  swift_willThrow();
  return v20;
}

void *sub_10007A40C(void *a1, uint64_t a2)
{
  sub_1001D0170();
  sub_1001D1840();

  v4 = os_variant_allows_internal_security_policies();

  if (!v4)
  {
LABEL_10:

    return a1;
  }

  sub_1001D0C80();
  if ((sub_1001D0C70() & 1) == 0)
  {
    if (qword_100227740 != -1)
    {
      swift_once();
    }

    v6 = sub_1001D0E60();
    sub_10003A37C(v6, qword_1002298F8);
    v7 = sub_1001D0E50();
    v8 = sub_1001D1E00();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "not appending csf bypass because no eligibility bypass", v9, 2u);
    }

    goto LABEL_10;
  }

  sub_100011EAC();
  v18 = a1;
  v19 = a2;
  if (sub_1001D1F40())
  {

    v5._countAndFlagsBits = 44;
  }

  else
  {

    v5._countAndFlagsBits = 59;
  }

  v5._object = 0xE100000000000000;
  sub_1001D18B0(v5);

  v20._object = 0x80000001001E3DD0;
  v20._countAndFlagsBits = 0xD000000000000016;
  sub_1001D18B0(v20);

  a1 = v18;
  v10 = v19;
  v11 = qword_100227740;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1001D0E60();
  sub_10003A37C(v12, qword_1002298F8);
  v13 = sub_1001D0E50();
  v14 = sub_1001D1E00();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000954E0(a1, v10, &v18);
    _os_log_impl(&_mh_execute_header, v13, v14, "appended bypass: %s", v15, 0xCu);
    sub_100011CF0(v16);
  }

  return a1;
}

uint64_t sub_10007A708@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_100088598(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_100088534(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1001CFBC0();
    v15 = v14;
    result = sub_100011E48(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

id sub_10007A850()
{
  v0 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - v2;
  sub_1001D0580();
  sub_1001D05B0();
  sub_1001D0210();
  v4 = *(v1 + 8);
  v4(v3, v0);
  v17 = sub_10007A40C(v18, v19);
  v6 = v5;

  sub_1001D0590();
  sub_1001D0210();
  v4(v3, v0);
  v7 = v6;
  v8 = sub_10007A40C(v18, v19);
  v10 = v9;

  v11 = sub_1001D0E50();
  v12 = sub_1001D1E00();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = v17;
    *(v13 + 4) = sub_1000954E0(v17, v7, &v18);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000954E0(v8, v10, &v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "fetching with lttIssuer=%s, ottIssuer=%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v14 = v17;
  }

  sub_100015A10(0, &qword_1002295F8, NSPPrivateAccessTokenFetcher_ptr);
  return sub_100096398(v14, v7, v8, v10);
}

uint64_t sub_10007AB70(uint64_t a1, uint64_t a2)
{
  v3[102] = v2;
  v3[101] = a2;
  v3[95] = a1;
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v3[103] = swift_task_alloc();
  v4 = sub_1001D20D0();
  v3[104] = v4;
  v5 = *(v4 - 8);
  v3[105] = v5;
  v3[106] = *(v5 + 64);
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v6 = sub_1001D20F0();
  v3[109] = v6;
  v7 = *(v6 - 8);
  v3[110] = v7;
  v3[111] = *(v7 + 64);
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();

  return _swift_task_switch(sub_10007ACF4, 0, 0);
}

uint64_t sub_10007ACF4()
{
  sub_1001D20E0();

  return _swift_task_switch(sub_10007AD5C, 0, 0);
}

uint64_t sub_10007AD5C()
{
  v1 = v0[113];
  v18 = v0[112];
  v19 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[105];
  v7 = v0[104];
  v8 = v0[103];
  v20 = v0[102];
  sub_10008A830(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  v0[93] = 0x158E460913D00000;
  v0[94] = 1;
  sub_10008A830(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2100();
  v9 = *(v6 + 8);
  v0[114] = v9;
  v0[115] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v18, v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v19 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v2 + 32))(v13 + v11, v18, v3);
  (*(v6 + 32))(v13 + v12, v5, v7);
  v14 = sub_10008F210(0, 0, v8, &unk_1001D6930, v13);
  v0[116] = v14;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_100089FF8;
  v15[4] = v20;
  v16 = swift_allocObject();
  v0[117] = v16;
  *(v16 + 16) = &unk_1001D6938;
  *(v16 + 24) = v15;

  swift_asyncLet_begin();

  return _swift_task_switch(sub_10007B0BC, 0, 0);
}

uint64_t sub_10007B0BC()
{
  v1 = v0[101];
  v2 = swift_allocObject();
  v0[118] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[119] = v4;
  *v4 = v0;
  v4[1] = sub_10007B1B0;

  return sub_10007C44C((v0 + 87), &unk_1001D6950, v2);
}

uint64_t sub_10007B1B0()
{
  *(*v1 + 960) = v0;

  if (v0)
  {
    v2 = sub_10007B760;
  }

  else
  {

    v2 = sub_10007B2CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007B2CC()
{
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10007B364, v0 + 768);
}

uint64_t sub_10007B380()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[104];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10007B44C, 0, 0);
}

uint64_t sub_10007B44C()
{
  v34 = v0;
  v1 = v0[87];
  v2 = v0[88];
  v3 = v0[89];
  v4 = v0[90];
  v5 = v0[91];
  v6 = v0[92];
  sub_100012038(v1, v2);
  sub_100012038(v3, v4);
  sub_100012038(v5, v6);
  v7 = v6;
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();
  sub_100011E48(v1, v2);
  sub_100011E48(v3, v4);
  sub_100011E48(v5, v7);
  v32 = v5;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v10 = 136315650;
    sub_100012038(v1, v2);
    v30 = v9;
    v11 = sub_1001CFB50();
    log = v8;
    v13 = v12;
    sub_100011E48(v1, v2);
    v14 = sub_1000954E0(v11, v13, &v33);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    sub_100012038(v3, v4);
    v15 = sub_1001CFB50();
    v17 = v16;
    sub_100011E48(v3, v4);
    v18 = sub_1000954E0(v15, v17, &v33);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    sub_100012038(v5, v7);
    v19 = sub_1001CFB50();
    v21 = v20;
    sub_100011E48(v5, v7);
    v22 = sub_1000954E0(v19, v21, &v33);

    *(v10 + 24) = v22;
    _os_log_impl(&_mh_execute_header, log, v30, "fetched ltt=%s, ott=%s; salt=%s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v23 = v4;
  v24 = v3;
  v25 = v2;
  v26 = v1;
  v27 = v0[95];

  *v27 = v26;
  v27[1] = v25;
  v27[2] = v24;
  v27[3] = v23;
  v27[4] = v32;
  v27[5] = v7;
  v28 = v0[1];

  return v28();
}

uint64_t sub_10007B760()
{

  return _swift_task_switch(sub_10007B7C8, 0, 0);
}

uint64_t sub_10007B7C8()
{
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10007B860, v0 + 656);
}

uint64_t sub_10007B87C()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[104];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10007B948, 0, 0);
}

uint64_t sub_10007B948()
{
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
    _os_log_impl(&_mh_execute_header, v1, v2, "fetch failed with error=%@", v3, 0xCu);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);
  }

  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10007BAF0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = sub_10007BB90;

  return sub_10007AB70((v2 + 2), a1);
}

uint64_t sub_10007BB90()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(*v1 + 24);
  *(*v1 + 88) = *(*v1 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);

  if (v0)
  {
    v8 = *(v3 + 8);

    return v8();
  }

  else
  {
    sub_100011E48(v6, v7);
    sub_100011E48(v4, v5);

    return _swift_task_switch(sub_10007BD4C, 0, 0);
  }
}

uint64_t sub_10007BD4C()
{
  v19 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  isa = sub_1001CFBE0().super.isa;
  [v3 saveTokenToCache:isa];

  sub_100012038(v2, v1);
  v5 = sub_1001D0E50();
  v6 = sub_1001D1E00();
  sub_100011E48(v2, v1);
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[11];
  v8 = v0[12];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    sub_100012038(v9, v8);
    v12 = sub_1001CFB50();
    v14 = v13;
    sub_100011E48(v9, v8);
    v15 = sub_1000954E0(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "saved ott=%s", v10, 0xCu);
    sub_100011CF0(v11);

    sub_100011E48(v9, v8);
  }

  else
  {

    sub_100011E48(v9, v8);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10007BF30(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10007BFFC, 0, 0);
}

uint64_t sub_10007BFFC()
{
  sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
  *(v0 + 232) = sub_1001D1E40();

  return _swift_task_switch(sub_10007C080, 0, 0);
}

uint64_t sub_10007C080()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[28];
  v6 = v0[29];
  v10 = v0 + 26;
  v9 = v0[26];
  v8 = v10[1];
  v13 = v1[25];
  v14 = v6;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_10007C24C;
  swift_continuation_init();
  v1[17] = v9;
  v11 = sub_10003B47C(v1 + 14);
  sub_100011AC0(&qword_1002295D0, &qword_1001E0650);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1A80();
  (*(v8 + 32))(v11, v7, v9);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10007CDF0;
  v1[13] = &unk_10021EBC0;
  [v13 fetchLinkedTokenPairWithQueue:v14 completionHandler:v4];
  (*(v8 + 8))(v11, v9);

  return _swift_continuation_await(v3);
}

uint64_t sub_10007C24C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 232);
  if (*(*v1 + 48))
  {
    swift_willThrow();

    v5 = *(v3 + 1);

    return v5();
  }

  else
  {
    v7 = v2[10];
    v2[15] = v2[9];
    v2[16] = v7;
    v2[17] = v2[11];

    return _swift_task_switch(sub_10007C3D4, 0, 0);
  }
}

uint64_t sub_10007C3D4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 256);
  v3 = *(v0 + 272);
  *v1 = *(v0 + 240);
  v1[1] = v2;
  v1[2] = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10007C44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v3[5] = swift_task_alloc();
  v4 = sub_1001CFDA0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1001D02F0();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1001D0E60();
  v3[12] = v6;
  v7 = *(v6 - 8);
  v3[13] = v7;
  v3[14] = *(v7 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_10007C614, 0, 0);
}

uint64_t sub_10007C614()
{
  sub_1001D1C50();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v28 = *(v0 + 120);
  v29 = *(v0 + 112);
  v3 = *(v0 + 88);
  v27 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v31 = *(v0 + 32);
  v32 = *(v0 + 40);
  v30 = *(v0 + 24);
  (*(v5 + 104))(v3, enum case for TC2LogCategory.daemon(_:), v4);
  sub_1001D08B0();
  (*(v5 + 8))(v3, v4);
  sub_1001CFD90();
  v9 = sub_1001CFD70();
  v25 = v10;
  v26 = v9;
  *(v0 + 136) = v10;
  (*(v6 + 8))(v7, v8);
  sub_100011AC0(&qword_1002295C8, &qword_1001D6960);
  v11 = swift_allocObject();
  *(v0 + 144) = v11;
  *(v0 + 184) = 0;
  *(v11 + 16) = 0;
  *(v11 + 58) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 24) = _swiftEmptyArrayStorage;
  *(v11 + 73) = 0;
  v12 = sub_1001D1BA0();
  (*(*(v12 - 8) + 56))(v32, 1, 1, v12);
  (*(v2 + 16))(v28, v1, v27);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = (v29 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v2 + 32))(v16 + v13, v28, v27);
  v17 = (v16 + v14);
  *v17 = v26;
  v17[1] = v25;
  v18 = (v16 + v15);
  *v18 = v30;
  v18[1] = v31;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v11;

  v19 = sub_10015C9F4(0, 0, v32, &unk_1001D6970, v16);
  *(v0 + 152) = v19;
  v20 = swift_task_alloc();
  *(v0 + 160) = v20;
  v20[2] = v1;
  v20[3] = v26;
  v20[4] = v25;
  v20[5] = v19;
  v20[6] = v11;
  v21 = swift_task_alloc();
  *(v0 + 168) = v21;
  v22 = sub_100011AC0(&qword_1002295D0, &qword_1001E0650);
  *v21 = v0;
  v21[1] = sub_10007C9E8;
  v23 = *(v0 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v23, &unk_1001D6980, v11, sub_10008A7F4, v20, 0, 0, v22);
}

uint64_t sub_10007C9E8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10007CBE8;
  }

  else
  {

    v2 = sub_10007CB10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007CB10()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007CBE8()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_10007CCCC(uint64_t a1)
{
  oslog = sub_1001D0E50();
  v1 = sub_1001D1DE0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = sub_1001D2610();
    v6 = sub_1000954E0(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "latency issue: fetchLinkedTokenPair is taking longer than expected, delay=%s", v2, 0xCu);
    sub_100011CF0(v3);
  }
}

void sub_10007CDF0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  sub_100024DC8((a1 + 32), *(a1 + 56));
  if (a5)
  {
    v9 = a5;
    sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
    sub_1001D1A90();
  }

  else
  {
    v10 = a2;
    v11 = a3;
    v12 = a4;
    sub_1001CFC00();

    sub_1001CFC00();
    sub_1001CFC00();

    sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
    sub_1001D1AA0();
  }
}

uint64_t sub_10007CF08(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1001D0980();
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10007CF98, 0, 0);
}

uint64_t sub_10007CF98()
{
  v78 = v0;
  v1 = *(v0 + 40);
  v2 = sub_100011AC0(&qword_100229558, &qword_1001D68B8);
  *(v0 + 56) = v2;
  v3 = *(v2 + 80);
  *(v0 + 128) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  while (v6 == 2)
  {
    v9 = *(v0 + 40);
    v10 = *(*(v0 + 56) + 76);
    *(v0 + 132) = v10;
    v11 = v9 + v10;
    v12 = *(v9 + v10);
    v13 = *(v9 + v10 + 8);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_104;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_138;
      }

      if (v18 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v14)
    {
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v12) - v12 < 4)
      {
LABEL_104:
        v63 = swift_task_alloc();
        *(v0 + 64) = v63;
        *v63 = v0;
        v64 = sub_10007D7A0;
        goto LABEL_113;
      }
    }

    else if (BYTE6(v13) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v14 == 2)
    {
      v19 = *(v12 + 16);
      v20 = *(v12 + 24);
    }

    else
    {
      if (v14 != 1)
      {
        v19 = 0;
        v21 = 0;
        v20 = BYTE6(v13);
        v22 = BYTE6(v13);
        goto LABEL_24;
      }

      v19 = v12;
      v20 = v12 >> 32;
    }

    if (v20 < v19)
    {
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return result;
    }

    if (v14 == 2)
    {
      v21 = *(v12 + 16);
      v22 = *(v12 + 24);
    }

    else
    {
      v21 = v12;
      v22 = v12 >> 32;
    }

LABEL_24:
    if (v22 < v20 || v20 < v21)
    {
      goto LABEL_126;
    }

    v17 = __OFSUB__(v20, v19);
    v24 = v20 - v19;
    if (v17)
    {
      goto LABEL_127;
    }

    if (v24 < 4)
    {
      if (v14 != 2)
      {
        if (v14 != 1)
        {
          goto LABEL_52;
        }

        v25 = v12 >> 32;
LABEL_47:
        if (v25 < v12)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v25 = *(v12 + 24);
      goto LABEL_49;
    }

    v25 = v19 + 4;
    if (__OFADD__(v19, 4))
    {
      goto LABEL_134;
    }

    if (v14 == 2)
    {
      v26 = *(v12 + 16);
      v27 = *(v12 + 24);
    }

    else if (v14 == 1)
    {
      v26 = v12;
      v27 = v12 >> 32;
    }

    else
    {
      v26 = 0;
      v27 = BYTE6(v13);
    }

    if (v27 < v25 || v25 < v26)
    {
      goto LABEL_135;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v25 < *(v12 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v25 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v29 = sub_1001CFBC0();
    v31 = v30;
    v32 = *v11;
    v33 = *(v11 + 8);
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v37 = 0;
        v35 = 0;
        v38 = 0;
        v36 = 0;
        goto LABEL_63;
      }

      v35 = *(v32 + 16);
      v37 = *(v32 + 24);
    }

    else
    {
      if (!v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = BYTE6(v33);
        v38 = BYTE6(v33);
        goto LABEL_63;
      }

      v35 = v32;
      v37 = v32 >> 32;
    }

    if (v37 < v35)
    {
      goto LABEL_128;
    }

    if (v34 == 2)
    {
      v36 = *(v32 + 16);
      v38 = *(v32 + 24);
    }

    else
    {
      v36 = v32;
      v38 = v32 >> 32;
    }

LABEL_63:
    if (v38 < v37 || v37 < v36)
    {
      goto LABEL_129;
    }

    v17 = __OFSUB__(v37, v35);
    v39 = v37 - v35;
    if (v17)
    {
      goto LABEL_130;
    }

    if (v39 < 4)
    {
      goto LABEL_136;
    }

    v40 = v35 + 4;
    if (__OFADD__(v35, 4))
    {
      goto LABEL_131;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v41 = *(v32 + 16);
        v42 = *(v32 + 24);
      }

      else
      {
        v42 = 0;
        v41 = 0;
      }
    }

    else if (v34)
    {
      v41 = v32;
      v42 = v32 >> 32;
    }

    else
    {
      v41 = 0;
      v42 = BYTE6(v33);
    }

    if (v42 < v40 || v40 < v41)
    {
      goto LABEL_132;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v43 = *(v32 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v34)
    {
      v43 = v32 >> 32;
    }

    else
    {
      v43 = BYTE6(v33);
    }

    sub_100012038(*v11, *(v11 + 8));
    sub_100011E48(v32, v33);
    if (v43 < v40)
    {
      goto LABEL_133;
    }

    v44 = sub_1001CFBC0();
    v46 = v45;
    sub_100011E48(v32, v33);
    *v11 = v44;
    *(v11 + 8) = v46;
    v47 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v47 != 2)
      {
        sub_100011E48(v29, v31);
        v7 = 0;
        goto LABEL_3;
      }

      v48 = *(v29 + 16);
      v49 = sub_1001CF870();
      if (!v49)
      {
        goto LABEL_144;
      }

      v50 = v49;
      v51 = sub_1001CF8A0();
      if (__OFSUB__(v48, v51))
      {
        goto LABEL_140;
      }

      v52 = (v48 - v51 + v50);
      sub_1001CF890();
      if (!v52)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v47)
      {
        sub_100011E48(v29, v31);
        v7 = bswap32(v29);
        goto LABEL_3;
      }

      if (v29 > v29 >> 32)
      {
        goto LABEL_139;
      }

      v53 = sub_1001CF870();
      if (!v53)
      {
        goto LABEL_146;
      }

      v54 = v53;
      v55 = sub_1001CF8A0();
      if (__OFSUB__(v29, v55))
      {
        goto LABEL_141;
      }

      v52 = (v29 - v55 + v54);
      result = sub_1001CF890();
      if (!v52)
      {
        goto LABEL_147;
      }
    }

    v57 = *v52;
    sub_100011E48(v29, v31);
    v7 = bswap32(v57);
LABEL_3:
    v6 = 0;
    v8 = *(v0 + 40) + *(v0 + 128);
    v5 = v7;
    *v8 = v7;
    *(v8 + 8) = 0;
  }

  if (v6)
  {
    if (v5)
    {
      swift_willThrow();
      swift_errorRetain();

      v74 = *(v0 + 8);
LABEL_121:

      return v74();
    }

    v67 = *(v0 + 32);
    v68 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
LABEL_120:

    v74 = *(v0 + 8);
    goto LABEL_121;
  }

  v58 = *(v0 + 40);
  if (!v5)
  {
    v65 = 0;
    v66 = 0xC000000000000000;
LABEL_119:
    v72 = v58 + *(v0 + 128);
    *v72 = 0;
    *(v72 + 8) = 2;
    v73 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v0 + 16) = v65;
    *(v0 + 24) = v66;
    v77 = 0;
    memset(v76, 0, sizeof(v76));
    sub_100012038(v65, v66);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    v75 = *(v0 + 32);
    sub_100011E48(v65, v66);
    (*(*(v73 - 8) + 56))(v75, 0, 1, v73);
    goto LABEL_120;
  }

  v59 = *(*(v0 + 56) + 76);
  *(v0 + 136) = v59;
  v60 = *(v58 + v59);
  v61 = *(v58 + v59 + 8);
  v62 = v61 >> 62;
  if ((v61 >> 62) > 1)
  {
    if (v62 != 2)
    {
      goto LABEL_112;
    }

    v70 = *(v60 + 16);
    v69 = *(v60 + 24);
    v17 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v17)
    {
      goto LABEL_142;
    }

    if (v71 < v5)
    {
      goto LABEL_112;
    }

LABEL_118:
    sub_100012038(v60, v61);
    sub_10007A708(v5, v60, v61, v76);
    v66 = *(&v76[0] + 1);
    v65 = *&v76[0];
    sub_10008570C(v5);
    v58 = *(v0 + 40);
    goto LABEL_119;
  }

  if (v62)
  {
    if (__OFSUB__(HIDWORD(v60), v60))
    {
      goto LABEL_143;
    }

    if (HIDWORD(v60) - v60 < v5)
    {
      goto LABEL_112;
    }

    goto LABEL_118;
  }

  if (BYTE6(v61) >= v5)
  {
    goto LABEL_118;
  }

LABEL_112:
  v63 = swift_task_alloc();
  *(v0 + 96) = v63;
  *v63 = v0;
  v64 = sub_10007E98C;
LABEL_113:
  v63[1] = v64;

  return sub_100085848();
}

uint64_t sub_10007D7A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v5 = sub_10007E184;
  }

  else
  {
    v5 = sub_10007D8B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007D8B8(uint64_t a1)
{
  v86 = v1;
  v2 = *(v1 + 80);
  if (v2 >> 60 == 15)
  {
    v3 = *(v1 + 40);
    v4 = (v3 + *(v1 + 132));
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v7)
    {
      if (v5 == v5 >> 32)
      {
LABEL_11:
        v10 = v3 + *(v1 + 128);
        *v10 = 0;
        *(v10 + 8) = 1;
        goto LABEL_12;
      }
    }

    else if ((v6 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v9 = v3 + *(v1 + 128);
    sub_100089CEC();
    *v9 = swift_allocError();
    *(v9 + 8) = 1;
  }

  else
  {
    v8 = *(v1 + 72);
    sub_1001CFC30();
    sub_10002683C(v8, v2);
  }

LABEL_12:
  v11 = *(v1 + 88);
  v12 = (*(v1 + 40) + *(v1 + 128));
  v13 = *v12;
  v14 = *(v12 + 8);
  while (v14 == 2)
  {
    v17 = *(v1 + 40);
    v18 = *(*(v1 + 56) + 76);
    *(v1 + 132) = v18;
    v19 = v17 + v18;
    v20 = *(v17 + v18);
    v21 = *(v17 + v18 + 8);
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_115;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v25)
      {
        goto LABEL_150;
      }

      if (v26 < 4)
      {
        goto LABEL_115;
      }
    }

    else if (v22)
    {
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_149;
      }

      if (HIDWORD(v20) - v20 < 4)
      {
LABEL_115:
        v71 = swift_task_alloc();
        *(v1 + 64) = v71;
        *v71 = v1;
        v72 = sub_10007D7A0;
        goto LABEL_124;
      }
    }

    else if (BYTE6(v21) < 4uLL)
    {
      goto LABEL_115;
    }

    if (v22 == 2)
    {
      v27 = *(v20 + 16);
      v28 = *(v20 + 24);
    }

    else
    {
      if (v22 != 1)
      {
        v27 = 0;
        v29 = 0;
        v28 = BYTE6(v21);
        v30 = BYTE6(v21);
        goto LABEL_35;
      }

      v27 = v20;
      v28 = v20 >> 32;
    }

    if (v28 < v27)
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      sub_1001CF890();
LABEL_157:
      __break(1u);
LABEL_158:
      result = sub_1001CF890();
      __break(1u);
LABEL_159:
      __break(1u);
      return result;
    }

    if (v22 == 2)
    {
      v29 = *(v20 + 16);
      v30 = *(v20 + 24);
    }

    else
    {
      v29 = v20;
      v30 = v20 >> 32;
    }

LABEL_35:
    if (v30 < v28 || v28 < v29)
    {
      goto LABEL_138;
    }

    v25 = __OFSUB__(v28, v27);
    v32 = v28 - v27;
    if (v25)
    {
      goto LABEL_139;
    }

    if (v32 < 4)
    {
      if (v22 != 2)
      {
        if (v22 != 1)
        {
          goto LABEL_63;
        }

        v33 = v20 >> 32;
LABEL_58:
        if (v33 < v20)
        {
          goto LABEL_137;
        }

        goto LABEL_63;
      }

      v33 = *(v20 + 24);
      goto LABEL_60;
    }

    v33 = v27 + 4;
    if (__OFADD__(v27, 4))
    {
      goto LABEL_146;
    }

    if (v22 == 2)
    {
      v34 = *(v20 + 16);
      v35 = *(v20 + 24);
    }

    else if (v22 == 1)
    {
      v34 = v20;
      v35 = v20 >> 32;
    }

    else
    {
      v34 = 0;
      v35 = BYTE6(v21);
    }

    if (v35 < v33 || v33 < v34)
    {
      goto LABEL_147;
    }

    if (v22)
    {
      if (v22 == 1)
      {
        goto LABEL_58;
      }

LABEL_60:
      if (v33 < *(v20 + 16))
      {
        goto LABEL_137;
      }

      goto LABEL_63;
    }

    if (v33 < 0)
    {
      goto LABEL_137;
    }

LABEL_63:
    v37 = sub_1001CFBC0();
    v39 = v38;
    v40 = *v19;
    v41 = *(v19 + 8);
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v42 != 2)
      {
        v45 = 0;
        v43 = 0;
        v46 = 0;
        v44 = 0;
        goto LABEL_74;
      }

      v43 = *(v40 + 16);
      v45 = *(v40 + 24);
    }

    else
    {
      if (!v42)
      {
        v43 = 0;
        v44 = 0;
        v45 = BYTE6(v41);
        v46 = BYTE6(v41);
        goto LABEL_74;
      }

      v43 = v40;
      v45 = v40 >> 32;
    }

    if (v45 < v43)
    {
      goto LABEL_140;
    }

    if (v42 == 2)
    {
      v44 = *(v40 + 16);
      v46 = *(v40 + 24);
    }

    else
    {
      v44 = v40;
      v46 = v40 >> 32;
    }

LABEL_74:
    if (v46 < v45 || v45 < v44)
    {
      goto LABEL_141;
    }

    v25 = __OFSUB__(v45, v43);
    v47 = v45 - v43;
    if (v25)
    {
      goto LABEL_142;
    }

    if (v47 < 4)
    {
      goto LABEL_148;
    }

    v48 = v43 + 4;
    if (__OFADD__(v43, 4))
    {
      goto LABEL_143;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v49 = *(v40 + 16);
        v50 = *(v40 + 24);
      }

      else
      {
        v50 = 0;
        v49 = 0;
      }
    }

    else if (v42)
    {
      v49 = v40;
      v50 = v40 >> 32;
    }

    else
    {
      v49 = 0;
      v50 = BYTE6(v41);
    }

    if (v50 < v48 || v48 < v49)
    {
      goto LABEL_144;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v51 = *(v40 + 24);
      }

      else
      {
        v51 = 0;
      }
    }

    else if (v42)
    {
      v51 = v40 >> 32;
    }

    else
    {
      v51 = BYTE6(v41);
    }

    sub_100012038(*v19, *(v19 + 8));
    sub_100011E48(v40, v41);
    if (v51 < v48)
    {
      goto LABEL_145;
    }

    v52 = sub_1001CFBC0();
    v54 = v53;
    sub_100011E48(v40, v41);
    *v19 = v52;
    *(v19 + 8) = v54;
    v55 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v55 != 2)
      {
        sub_100011E48(v37, v39);
        v15 = 0;
        goto LABEL_14;
      }

      v56 = *(v37 + 16);
      v57 = sub_1001CF870();
      if (!v57)
      {
        goto LABEL_156;
      }

      v58 = v57;
      v59 = sub_1001CF8A0();
      if (__OFSUB__(v56, v59))
      {
        goto LABEL_152;
      }

      v60 = (v56 - v59 + v58);
      sub_1001CF890();
      if (!v60)
      {
        goto LABEL_157;
      }
    }

    else
    {
      if (!v55)
      {
        sub_100011E48(v37, v39);
        v15 = bswap32(v37);
        goto LABEL_14;
      }

      if (v37 > v37 >> 32)
      {
        goto LABEL_151;
      }

      v61 = sub_1001CF870();
      if (!v61)
      {
        goto LABEL_158;
      }

      v62 = v61;
      v63 = sub_1001CF8A0();
      if (__OFSUB__(v37, v63))
      {
        goto LABEL_153;
      }

      v60 = (v37 - v63 + v62);
      result = sub_1001CF890();
      if (!v60)
      {
        goto LABEL_159;
      }
    }

    v65 = *v60;
    sub_100011E48(v37, v39);
    v15 = bswap32(v65);
LABEL_14:
    v14 = 0;
    v16 = *(v1 + 40) + *(v1 + 128);
    v13 = v15;
    *v16 = v15;
    *(v16 + 8) = 0;
  }

  if (v14)
  {
    if (v13)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v75 = *(v1 + 32);
      v76 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
      (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
    }

    goto LABEL_133;
  }

  v66 = *(v1 + 40);
  if (!v13)
  {
    v73 = 0;
    v74 = 0xC000000000000000;
    goto LABEL_130;
  }

  v67 = *(*(v1 + 56) + 76);
  *(v1 + 136) = v67;
  v68 = *(v66 + v67);
  v69 = *(v66 + v67 + 8);
  v70 = v69 >> 62;
  if ((v69 >> 62) > 1)
  {
    if (v70 != 2)
    {
      goto LABEL_123;
    }

    v78 = *(v68 + 16);
    v77 = *(v68 + 24);
    v25 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (v25)
    {
      goto LABEL_154;
    }

    if (v79 < v13)
    {
      goto LABEL_123;
    }

LABEL_129:
    sub_100012038(v68, v69);
    sub_10007A708(v13, v68, v69, v84);
    v74 = *(&v84[0] + 1);
    v73 = *&v84[0];
    sub_10008570C(v13);
    v66 = *(v1 + 40);
LABEL_130:
    v80 = v66 + *(v1 + 128);
    *v80 = 0;
    *(v80 + 8) = 2;
    v81 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v1 + 16) = v73;
    *(v1 + 24) = v74;
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    sub_100012038(v73, v74);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    if (v11)
    {
      sub_100011E48(v73, v74);
    }

    else
    {
      v82 = *(v1 + 32);
      sub_100011E48(v73, v74);
      (*(*(v81 - 8) + 56))(v82, 0, 1, v81);
    }

LABEL_133:

    v83 = *(v1 + 8);

    return v83();
  }

  if (v70)
  {
    if (__OFSUB__(HIDWORD(v68), v68))
    {
      goto LABEL_155;
    }

    if (HIDWORD(v68) - v68 < v13)
    {
      goto LABEL_123;
    }

    goto LABEL_129;
  }

  if (BYTE6(v69) >= v13)
  {
    goto LABEL_129;
  }

LABEL_123:
  v71 = swift_task_alloc();
  *(v1 + 96) = v71;
  *v71 = v1;
  v72 = sub_10007E98C;
LABEL_124:
  v71[1] = v72;

  return sub_100085848();
}

uint64_t sub_10007E184(uint64_t a1)
{
  v77 = v1;
  v2 = *(v1 + 40) + *(v1 + 128);
  *v2 = *(v1 + 88);
  *(v2 + 8) = 1;
  v3 = (*(v1 + 40) + *(v1 + 128));
  v4 = *v3;
  v5 = *(v3 + 8);
  while (v5 == 2)
  {
    v8 = *(v1 + 40);
    v9 = *(*(v1 + 56) + 76);
    *(v1 + 132) = v9;
    v10 = v8 + v9;
    v11 = *(v8 + v9);
    v12 = *(v8 + v9 + 8);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_104;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_138;
      }

      if (v17 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v13)
    {
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v11) - v11 < 4)
      {
LABEL_104:
        v62 = swift_task_alloc();
        *(v1 + 64) = v62;
        *v62 = v1;
        v63 = sub_10007D7A0;
        goto LABEL_113;
      }
    }

    else if (BYTE6(v12) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v13 == 2)
    {
      v18 = *(v11 + 16);
      v19 = *(v11 + 24);
    }

    else
    {
      if (v13 != 1)
      {
        v18 = 0;
        v20 = 0;
        v19 = BYTE6(v12);
        v21 = BYTE6(v12);
        goto LABEL_24;
      }

      v18 = v11;
      v19 = v11 >> 32;
    }

    if (v19 < v18)
    {
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return result;
    }

    if (v13 == 2)
    {
      v20 = *(v11 + 16);
      v21 = *(v11 + 24);
    }

    else
    {
      v20 = v11;
      v21 = v11 >> 32;
    }

LABEL_24:
    if (v21 < v19 || v19 < v20)
    {
      goto LABEL_126;
    }

    v16 = __OFSUB__(v19, v18);
    v23 = v19 - v18;
    if (v16)
    {
      goto LABEL_127;
    }

    if (v23 < 4)
    {
      if (v13 != 2)
      {
        if (v13 != 1)
        {
          goto LABEL_52;
        }

        v24 = v11 >> 32;
LABEL_47:
        if (v24 < v11)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v24 = *(v11 + 24);
      goto LABEL_49;
    }

    v24 = v18 + 4;
    if (__OFADD__(v18, 4))
    {
      goto LABEL_134;
    }

    if (v13 == 2)
    {
      v25 = *(v11 + 16);
      v26 = *(v11 + 24);
    }

    else if (v13 == 1)
    {
      v25 = v11;
      v26 = v11 >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v12);
    }

    if (v26 < v24 || v24 < v25)
    {
      goto LABEL_135;
    }

    if (v13)
    {
      if (v13 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v24 < *(v11 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v24 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v28 = sub_1001CFBC0();
    v30 = v29;
    v31 = *v10;
    v32 = *(v10 + 8);
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 != 2)
      {
        v36 = 0;
        v34 = 0;
        v37 = 0;
        v35 = 0;
        goto LABEL_63;
      }

      v34 = *(v31 + 16);
      v36 = *(v31 + 24);
    }

    else
    {
      if (!v33)
      {
        v34 = 0;
        v35 = 0;
        v36 = BYTE6(v32);
        v37 = BYTE6(v32);
        goto LABEL_63;
      }

      v34 = v31;
      v36 = v31 >> 32;
    }

    if (v36 < v34)
    {
      goto LABEL_128;
    }

    if (v33 == 2)
    {
      v35 = *(v31 + 16);
      v37 = *(v31 + 24);
    }

    else
    {
      v35 = v31;
      v37 = v31 >> 32;
    }

LABEL_63:
    if (v37 < v36 || v36 < v35)
    {
      goto LABEL_129;
    }

    v16 = __OFSUB__(v36, v34);
    v38 = v36 - v34;
    if (v16)
    {
      goto LABEL_130;
    }

    if (v38 < 4)
    {
      goto LABEL_136;
    }

    v39 = v34 + 4;
    if (__OFADD__(v34, 4))
    {
      goto LABEL_131;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v40 = *(v31 + 16);
        v41 = *(v31 + 24);
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }
    }

    else if (v33)
    {
      v40 = v31;
      v41 = v31 >> 32;
    }

    else
    {
      v40 = 0;
      v41 = BYTE6(v32);
    }

    if (v41 < v39 || v39 < v40)
    {
      goto LABEL_132;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v42 = *(v31 + 24);
      }

      else
      {
        v42 = 0;
      }
    }

    else if (v33)
    {
      v42 = v31 >> 32;
    }

    else
    {
      v42 = BYTE6(v32);
    }

    sub_100012038(*v10, *(v10 + 8));
    sub_100011E48(v31, v32);
    if (v42 < v39)
    {
      goto LABEL_133;
    }

    v43 = sub_1001CFBC0();
    v45 = v44;
    sub_100011E48(v31, v32);
    *v10 = v43;
    *(v10 + 8) = v45;
    v46 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v46 != 2)
      {
        sub_100011E48(v28, v30);
        v6 = 0;
        goto LABEL_3;
      }

      v47 = *(v28 + 16);
      v48 = sub_1001CF870();
      if (!v48)
      {
        goto LABEL_144;
      }

      v49 = v48;
      v50 = sub_1001CF8A0();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_140;
      }

      v51 = (v47 - v50 + v49);
      sub_1001CF890();
      if (!v51)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v46)
      {
        sub_100011E48(v28, v30);
        v6 = bswap32(v28);
        goto LABEL_3;
      }

      if (v28 > v28 >> 32)
      {
        goto LABEL_139;
      }

      v52 = sub_1001CF870();
      if (!v52)
      {
        goto LABEL_146;
      }

      v53 = v52;
      v54 = sub_1001CF8A0();
      if (__OFSUB__(v28, v54))
      {
        goto LABEL_141;
      }

      v51 = (v28 - v54 + v53);
      result = sub_1001CF890();
      if (!v51)
      {
        goto LABEL_147;
      }
    }

    v56 = *v51;
    sub_100011E48(v28, v30);
    v6 = bswap32(v56);
LABEL_3:
    v5 = 0;
    v7 = *(v1 + 40) + *(v1 + 128);
    v4 = v6;
    *v7 = v6;
    *(v7 + 8) = 0;
  }

  if (v5)
  {
    if (v4)
    {
      swift_willThrow();
      swift_errorRetain();

      v73 = *(v1 + 8);
LABEL_121:

      return v73();
    }

    v66 = *(v1 + 32);
    v67 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
LABEL_120:

    v73 = *(v1 + 8);
    goto LABEL_121;
  }

  v57 = *(v1 + 40);
  if (!v4)
  {
    v64 = 0;
    v65 = 0xC000000000000000;
LABEL_119:
    v71 = v57 + *(v1 + 128);
    *v71 = 0;
    *(v71 + 8) = 2;
    v72 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v1 + 16) = v64;
    *(v1 + 24) = v65;
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    sub_100012038(v64, v65);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    v74 = *(v1 + 32);
    sub_100011E48(v64, v65);
    (*(*(v72 - 8) + 56))(v74, 0, 1, v72);
    goto LABEL_120;
  }

  v58 = *(*(v1 + 56) + 76);
  *(v1 + 136) = v58;
  v59 = *(v57 + v58);
  v60 = *(v57 + v58 + 8);
  v61 = v60 >> 62;
  if ((v60 >> 62) > 1)
  {
    if (v61 != 2)
    {
      goto LABEL_112;
    }

    v69 = *(v59 + 16);
    v68 = *(v59 + 24);
    v16 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v16)
    {
      goto LABEL_142;
    }

    if (v70 < v4)
    {
      goto LABEL_112;
    }

LABEL_118:
    sub_100012038(v59, v60);
    sub_10007A708(v4, v59, v60, v75);
    v65 = *(&v75[0] + 1);
    v64 = *&v75[0];
    sub_10008570C(v4);
    v57 = *(v1 + 40);
    goto LABEL_119;
  }

  if (v61)
  {
    if (__OFSUB__(HIDWORD(v59), v59))
    {
      goto LABEL_143;
    }

    if (HIDWORD(v59) - v59 < v4)
    {
      goto LABEL_112;
    }

    goto LABEL_118;
  }

  if (BYTE6(v60) >= v4)
  {
    goto LABEL_118;
  }

LABEL_112:
  v62 = swift_task_alloc();
  *(v1 + 96) = v62;
  *v62 = v1;
  v63 = sub_10007E98C;
LABEL_113:
  v62[1] = v63;

  return sub_100085848();
}

uint64_t sub_10007E98C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {
    v5 = sub_10007F30C;
  }

  else
  {
    v5 = sub_10007EAA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007EAA4()
{
  v79 = v0;
  v1 = *(v0 + 112);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 40) + *(v0 + 128);
    sub_100089CEC();
    *v2 = swift_allocError();
    *(v2 + 8) = 1;
  }

  else
  {
    v3 = *(v0 + 104);
    sub_1001CFC30();
    sub_10002683C(v3, v1);
  }

  v4 = *(v0 + 120);
  v5 = (*(v0 + 40) + *(v0 + 128));
  v6 = *v5;
  v7 = *(v5 + 8);
  while (v7 == 2)
  {
    v10 = *(v0 + 40);
    v11 = *(*(v0 + 56) + 76);
    *(v0 + 132) = v11;
    v12 = v10 + v11;
    v13 = *(v10 + v11);
    v14 = *(v10 + v11 + 8);
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_107;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
        goto LABEL_142;
      }

      if (v19 < 4)
      {
        goto LABEL_107;
      }
    }

    else if (v15)
    {
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_141;
      }

      if (HIDWORD(v13) - v13 < 4)
      {
LABEL_107:
        v64 = swift_task_alloc();
        *(v0 + 64) = v64;
        *v64 = v0;
        v65 = sub_10007D7A0;
        goto LABEL_116;
      }
    }

    else if (BYTE6(v14) < 4uLL)
    {
      goto LABEL_107;
    }

    if (v15 == 2)
    {
      v20 = *(v13 + 16);
      v21 = *(v13 + 24);
    }

    else
    {
      if (v15 != 1)
      {
        v20 = 0;
        v22 = 0;
        v21 = BYTE6(v14);
        v23 = BYTE6(v14);
        goto LABEL_27;
      }

      v20 = v13;
      v21 = v13 >> 32;
    }

    if (v21 < v20)
    {
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      sub_1001CF890();
LABEL_149:
      __break(1u);
LABEL_150:
      result = sub_1001CF890();
      __break(1u);
LABEL_151:
      __break(1u);
      return result;
    }

    if (v15 == 2)
    {
      v22 = *(v13 + 16);
      v23 = *(v13 + 24);
    }

    else
    {
      v22 = v13;
      v23 = v13 >> 32;
    }

LABEL_27:
    if (v23 < v21 || v21 < v22)
    {
      goto LABEL_130;
    }

    v18 = __OFSUB__(v21, v20);
    v25 = v21 - v20;
    if (v18)
    {
      goto LABEL_131;
    }

    if (v25 < 4)
    {
      if (v15 != 2)
      {
        if (v15 != 1)
        {
          goto LABEL_55;
        }

        v26 = v13 >> 32;
LABEL_50:
        if (v26 < v13)
        {
          goto LABEL_129;
        }

        goto LABEL_55;
      }

      v26 = *(v13 + 24);
      goto LABEL_52;
    }

    v26 = v20 + 4;
    if (__OFADD__(v20, 4))
    {
      goto LABEL_138;
    }

    if (v15 == 2)
    {
      v27 = *(v13 + 16);
      v28 = *(v13 + 24);
    }

    else if (v15 == 1)
    {
      v27 = v13;
      v28 = v13 >> 32;
    }

    else
    {
      v27 = 0;
      v28 = BYTE6(v14);
    }

    if (v28 < v26 || v26 < v27)
    {
      goto LABEL_139;
    }

    if (v15)
    {
      if (v15 == 1)
      {
        goto LABEL_50;
      }

LABEL_52:
      if (v26 < *(v13 + 16))
      {
        goto LABEL_129;
      }

      goto LABEL_55;
    }

    if (v26 < 0)
    {
      goto LABEL_129;
    }

LABEL_55:
    v30 = sub_1001CFBC0();
    v32 = v31;
    v33 = *v12;
    v34 = *(v12 + 8);
    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2)
      {
        v38 = 0;
        v36 = 0;
        v39 = 0;
        v37 = 0;
        goto LABEL_66;
      }

      v36 = *(v33 + 16);
      v38 = *(v33 + 24);
    }

    else
    {
      if (!v35)
      {
        v36 = 0;
        v37 = 0;
        v38 = BYTE6(v34);
        v39 = BYTE6(v34);
        goto LABEL_66;
      }

      v36 = v33;
      v38 = v33 >> 32;
    }

    if (v38 < v36)
    {
      goto LABEL_132;
    }

    if (v35 == 2)
    {
      v37 = *(v33 + 16);
      v39 = *(v33 + 24);
    }

    else
    {
      v37 = v33;
      v39 = v33 >> 32;
    }

LABEL_66:
    if (v39 < v38 || v38 < v37)
    {
      goto LABEL_133;
    }

    v18 = __OFSUB__(v38, v36);
    v40 = v38 - v36;
    if (v18)
    {
      goto LABEL_134;
    }

    if (v40 < 4)
    {
      goto LABEL_140;
    }

    v41 = v36 + 4;
    if (__OFADD__(v36, 4))
    {
      goto LABEL_135;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v42 = *(v33 + 16);
        v43 = *(v33 + 24);
      }

      else
      {
        v43 = 0;
        v42 = 0;
      }
    }

    else if (v35)
    {
      v42 = v33;
      v43 = v33 >> 32;
    }

    else
    {
      v42 = 0;
      v43 = BYTE6(v34);
    }

    if (v43 < v41 || v41 < v42)
    {
      goto LABEL_136;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v44 = *(v33 + 24);
      }

      else
      {
        v44 = 0;
      }
    }

    else if (v35)
    {
      v44 = v33 >> 32;
    }

    else
    {
      v44 = BYTE6(v34);
    }

    sub_100012038(*v12, *(v12 + 8));
    sub_100011E48(v33, v34);
    if (v44 < v41)
    {
      goto LABEL_137;
    }

    v45 = sub_1001CFBC0();
    v47 = v46;
    sub_100011E48(v33, v34);
    *v12 = v45;
    *(v12 + 8) = v47;
    v48 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v48 != 2)
      {
        sub_100011E48(v30, v32);
        v8 = 0;
        goto LABEL_6;
      }

      v49 = *(v30 + 16);
      v50 = sub_1001CF870();
      if (!v50)
      {
        goto LABEL_148;
      }

      v51 = v50;
      v52 = sub_1001CF8A0();
      if (__OFSUB__(v49, v52))
      {
        goto LABEL_144;
      }

      v53 = (v49 - v52 + v51);
      sub_1001CF890();
      if (!v53)
      {
        goto LABEL_149;
      }
    }

    else
    {
      if (!v48)
      {
        sub_100011E48(v30, v32);
        v8 = bswap32(v30);
        goto LABEL_6;
      }

      if (v30 > v30 >> 32)
      {
        goto LABEL_143;
      }

      v54 = sub_1001CF870();
      if (!v54)
      {
        goto LABEL_150;
      }

      v55 = v54;
      v56 = sub_1001CF8A0();
      if (__OFSUB__(v30, v56))
      {
        goto LABEL_145;
      }

      v53 = (v30 - v56 + v55);
      result = sub_1001CF890();
      if (!v53)
      {
        goto LABEL_151;
      }
    }

    v58 = *v53;
    sub_100011E48(v30, v32);
    v8 = bswap32(v58);
LABEL_6:
    v7 = 0;
    v9 = *(v0 + 40) + *(v0 + 128);
    v6 = v8;
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  if (v7)
  {
    if (v6)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v68 = *(v0 + 32);
      v69 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
      (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
    }

    goto LABEL_125;
  }

  v59 = *(v0 + 40);
  if (!v6)
  {
    v66 = 0;
    v67 = 0xC000000000000000;
    goto LABEL_122;
  }

  v60 = *(*(v0 + 56) + 76);
  *(v0 + 136) = v60;
  v61 = *(v59 + v60);
  v62 = *(v59 + v60 + 8);
  v63 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    if (v63 != 2)
    {
      goto LABEL_115;
    }

    v71 = *(v61 + 16);
    v70 = *(v61 + 24);
    v18 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v18)
    {
      goto LABEL_146;
    }

    if (v72 < v6)
    {
      goto LABEL_115;
    }

LABEL_121:
    sub_100012038(v61, v62);
    sub_10007A708(v6, v61, v62, v77);
    v67 = *(&v77[0] + 1);
    v66 = *&v77[0];
    sub_10008570C(v6);
    v59 = *(v0 + 40);
LABEL_122:
    v73 = v59 + *(v0 + 128);
    *v73 = 0;
    *(v73 + 8) = 2;
    v74 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v0 + 16) = v66;
    *(v0 + 24) = v67;
    v78 = 0;
    memset(v77, 0, sizeof(v77));
    sub_100012038(v66, v67);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    if (v4)
    {
      sub_100011E48(v66, v67);
    }

    else
    {
      v75 = *(v0 + 32);
      sub_100011E48(v66, v67);
      (*(*(v74 - 8) + 56))(v75, 0, 1, v74);
    }

LABEL_125:

    v76 = *(v0 + 8);

    return v76();
  }

  if (v63)
  {
    if (__OFSUB__(HIDWORD(v61), v61))
    {
      goto LABEL_147;
    }

    if (HIDWORD(v61) - v61 < v6)
    {
      goto LABEL_115;
    }

    goto LABEL_121;
  }

  if (BYTE6(v62) >= v6)
  {
    goto LABEL_121;
  }

LABEL_115:
  v64 = swift_task_alloc();
  *(v0 + 96) = v64;
  *v64 = v0;
  v65 = sub_10007E98C;
LABEL_116:
  v64[1] = v65;

  return sub_100085848();
}

uint64_t sub_10007F30C(uint64_t a1)
{
  v77 = v1;
  v2 = *(v1 + 40) + *(v1 + 128);
  *v2 = *(v1 + 120);
  *(v2 + 8) = 1;
  v3 = (*(v1 + 40) + *(v1 + 128));
  v4 = *v3;
  v5 = *(v3 + 8);
  while (v5 == 2)
  {
    v8 = *(v1 + 40);
    v9 = *(*(v1 + 56) + 76);
    *(v1 + 132) = v9;
    v10 = v8 + v9;
    v11 = *(v8 + v9);
    v12 = *(v8 + v9 + 8);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_104;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_138;
      }

      if (v17 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v13)
    {
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v11) - v11 < 4)
      {
LABEL_104:
        v62 = swift_task_alloc();
        *(v1 + 64) = v62;
        *v62 = v1;
        v63 = sub_10007D7A0;
        goto LABEL_113;
      }
    }

    else if (BYTE6(v12) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v13 == 2)
    {
      v18 = *(v11 + 16);
      v19 = *(v11 + 24);
    }

    else
    {
      if (v13 != 1)
      {
        v18 = 0;
        v20 = 0;
        v19 = BYTE6(v12);
        v21 = BYTE6(v12);
        goto LABEL_24;
      }

      v18 = v11;
      v19 = v11 >> 32;
    }

    if (v19 < v18)
    {
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return result;
    }

    if (v13 == 2)
    {
      v20 = *(v11 + 16);
      v21 = *(v11 + 24);
    }

    else
    {
      v20 = v11;
      v21 = v11 >> 32;
    }

LABEL_24:
    if (v21 < v19 || v19 < v20)
    {
      goto LABEL_126;
    }

    v16 = __OFSUB__(v19, v18);
    v23 = v19 - v18;
    if (v16)
    {
      goto LABEL_127;
    }

    if (v23 < 4)
    {
      if (v13 != 2)
      {
        if (v13 != 1)
        {
          goto LABEL_52;
        }

        v24 = v11 >> 32;
LABEL_47:
        if (v24 < v11)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v24 = *(v11 + 24);
      goto LABEL_49;
    }

    v24 = v18 + 4;
    if (__OFADD__(v18, 4))
    {
      goto LABEL_134;
    }

    if (v13 == 2)
    {
      v25 = *(v11 + 16);
      v26 = *(v11 + 24);
    }

    else if (v13 == 1)
    {
      v25 = v11;
      v26 = v11 >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v12);
    }

    if (v26 < v24 || v24 < v25)
    {
      goto LABEL_135;
    }

    if (v13)
    {
      if (v13 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v24 < *(v11 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v24 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v28 = sub_1001CFBC0();
    v30 = v29;
    v31 = *v10;
    v32 = *(v10 + 8);
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 != 2)
      {
        v36 = 0;
        v34 = 0;
        v37 = 0;
        v35 = 0;
        goto LABEL_63;
      }

      v34 = *(v31 + 16);
      v36 = *(v31 + 24);
    }

    else
    {
      if (!v33)
      {
        v34 = 0;
        v35 = 0;
        v36 = BYTE6(v32);
        v37 = BYTE6(v32);
        goto LABEL_63;
      }

      v34 = v31;
      v36 = v31 >> 32;
    }

    if (v36 < v34)
    {
      goto LABEL_128;
    }

    if (v33 == 2)
    {
      v35 = *(v31 + 16);
      v37 = *(v31 + 24);
    }

    else
    {
      v35 = v31;
      v37 = v31 >> 32;
    }

LABEL_63:
    if (v37 < v36 || v36 < v35)
    {
      goto LABEL_129;
    }

    v16 = __OFSUB__(v36, v34);
    v38 = v36 - v34;
    if (v16)
    {
      goto LABEL_130;
    }

    if (v38 < 4)
    {
      goto LABEL_136;
    }

    v39 = v34 + 4;
    if (__OFADD__(v34, 4))
    {
      goto LABEL_131;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v40 = *(v31 + 16);
        v41 = *(v31 + 24);
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }
    }

    else if (v33)
    {
      v40 = v31;
      v41 = v31 >> 32;
    }

    else
    {
      v40 = 0;
      v41 = BYTE6(v32);
    }

    if (v41 < v39 || v39 < v40)
    {
      goto LABEL_132;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v42 = *(v31 + 24);
      }

      else
      {
        v42 = 0;
      }
    }

    else if (v33)
    {
      v42 = v31 >> 32;
    }

    else
    {
      v42 = BYTE6(v32);
    }

    sub_100012038(*v10, *(v10 + 8));
    sub_100011E48(v31, v32);
    if (v42 < v39)
    {
      goto LABEL_133;
    }

    v43 = sub_1001CFBC0();
    v45 = v44;
    sub_100011E48(v31, v32);
    *v10 = v43;
    *(v10 + 8) = v45;
    v46 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v46 != 2)
      {
        sub_100011E48(v28, v30);
        v6 = 0;
        goto LABEL_3;
      }

      v47 = *(v28 + 16);
      v48 = sub_1001CF870();
      if (!v48)
      {
        goto LABEL_144;
      }

      v49 = v48;
      v50 = sub_1001CF8A0();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_140;
      }

      v51 = (v47 - v50 + v49);
      sub_1001CF890();
      if (!v51)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v46)
      {
        sub_100011E48(v28, v30);
        v6 = bswap32(v28);
        goto LABEL_3;
      }

      if (v28 > v28 >> 32)
      {
        goto LABEL_139;
      }

      v52 = sub_1001CF870();
      if (!v52)
      {
        goto LABEL_146;
      }

      v53 = v52;
      v54 = sub_1001CF8A0();
      if (__OFSUB__(v28, v54))
      {
        goto LABEL_141;
      }

      v51 = (v28 - v54 + v53);
      result = sub_1001CF890();
      if (!v51)
      {
        goto LABEL_147;
      }
    }

    v56 = *v51;
    sub_100011E48(v28, v30);
    v6 = bswap32(v56);
LABEL_3:
    v5 = 0;
    v7 = *(v1 + 40) + *(v1 + 128);
    v4 = v6;
    *v7 = v6;
    *(v7 + 8) = 0;
  }

  if (v5)
  {
    if (v4)
    {
      swift_willThrow();
      swift_errorRetain();

      v73 = *(v1 + 8);
LABEL_121:

      return v73();
    }

    v66 = *(v1 + 32);
    v67 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
LABEL_120:

    v73 = *(v1 + 8);
    goto LABEL_121;
  }

  v57 = *(v1 + 40);
  if (!v4)
  {
    v64 = 0;
    v65 = 0xC000000000000000;
LABEL_119:
    v71 = v57 + *(v1 + 128);
    *v71 = 0;
    *(v71 + 8) = 2;
    v72 = type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse(0);
    *(v1 + 16) = v64;
    *(v1 + 24) = v65;
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    sub_100012038(v64, v65);
    sub_1001D0970();
    sub_10008A830(&qword_100229320, type metadata accessor for Proto_Ropes_HttpService_PrefetchResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_PrefetchResponse);
    sub_1001D0B10();
    v74 = *(v1 + 32);
    sub_100011E48(v64, v65);
    (*(*(v72 - 8) + 56))(v74, 0, 1, v72);
    goto LABEL_120;
  }

  v58 = *(*(v1 + 56) + 76);
  *(v1 + 136) = v58;
  v59 = *(v57 + v58);
  v60 = *(v57 + v58 + 8);
  v61 = v60 >> 62;
  if ((v60 >> 62) > 1)
  {
    if (v61 != 2)
    {
      goto LABEL_112;
    }

    v69 = *(v59 + 16);
    v68 = *(v59 + 24);
    v16 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v16)
    {
      goto LABEL_142;
    }

    if (v70 < v4)
    {
      goto LABEL_112;
    }

LABEL_118:
    sub_100012038(v59, v60);
    sub_10007A708(v4, v59, v60, v75);
    v65 = *(&v75[0] + 1);
    v64 = *&v75[0];
    sub_10008570C(v4);
    v57 = *(v1 + 40);
    goto LABEL_119;
  }

  if (v61)
  {
    if (__OFSUB__(HIDWORD(v59), v59))
    {
      goto LABEL_143;
    }

    if (HIDWORD(v59) - v59 < v4)
    {
      goto LABEL_112;
    }

    goto LABEL_118;
  }

  if (BYTE6(v60) >= v4)
  {
    goto LABEL_118;
  }

LABEL_112:
  v62 = swift_task_alloc();
  *(v1 + 96) = v62;
  *v62 = v1;
  v63 = sub_10007E98C;
LABEL_113:
  v62[1] = v63;

  return sub_100085848();
}