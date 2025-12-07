uint64_t sub_1000BE68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1000C8FF4();
  sub_1000E1A68();

  sub_1000E1A38();

  sub_1000E1A48();

  sub_1000E1A78();

  return sub_1000E1A58();
}

void sub_1000BE71C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v6 - 8);
  v8 = (&v33 - v7);
  v10 = *(v2 + 120);
  v11 = *(v2 + 128);
  v9 = (v2 + 120);
  v12 = *(v2 + 152);
  v48 = *(v2 + 136);
  v49 = v12;
  v50 = *(v2 + 168);
  if (v11 && ((v13 = *(v2 + 152), v45 = *(v2 + 136), v46 = v13, v47 = *(v2 + 168), v10 == a1) && v11 == a2 || (sub_1000E2C68() & 1) != 0))
  {
    v41[0] = v10;
    v41[1] = v11;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    sub_1000A9C1C(v41, v40);
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v14 = sub_1000E1F08();
    sub_1000049D0(v14, qword_100120060);

    v15 = sub_1000E1EE8();
    v16 = sub_1000E2698();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = a1;
      v18 = v17;
      v19 = swift_slowAlloc();
      v34 = v8;
      v20 = v19;
      *&v40[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100029C70(v33, a2, v40);
      _os_log_impl(&_mh_execute_header, v15, v16, "Ending camera session with %s.", v18, 0xCu);
      sub_10000E9DC(v20);
      v8 = v34;
    }

    v21 = v9[1];
    v40[0] = *v9;
    v40[1] = v21;
    v22 = v9[3];
    v40[2] = v9[2];
    v40[3] = v22;
    *v9 = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    sub_1000033C8(v40, &unk_10011FA58, &unk_1000F25E0);
    sub_1000B98E4();
    v35 = v10;
    v36 = v11;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    sub_1000E1FC8();
    v23 = sub_1000E2538();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    v25 = sub_1000041BC(&unk_1001200D0, v24, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
    v26 = swift_allocObject();
    *(v26 + 16) = v3;
    *(v26 + 24) = v25;
    *(v26 + 32) = v3;
    *(v26 + 40) = v10;
    *(v26 + 48) = v11;
    v27 = v46;
    *(v26 + 56) = v45;
    *(v26 + 72) = v27;
    *(v26 + 88) = v47;
    swift_retain_n();
    sub_1000223DC(0, 0, v8, &unk_1000F3388, v26);
  }

  else
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_100120060);

    v34 = sub_1000E1EE8();
    v29 = sub_1000E2668();

    if (os_log_type_enabled(v34, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100029C70(a1, a2, v41);
      _os_log_impl(&_mh_execute_header, v34, v29, "Failed to find session to end for %s", v30, 0xCu);
      sub_10000E9DC(v31);
    }

    else
    {
      v32 = v34;
    }
  }
}

uint64_t sub_1000BEBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000E17C8();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000BEC9C, a4, 0);
}

uint64_t sub_1000BEC9C()
{
  v1 = v0[3];
  sub_1000E17B8();
  v2 = *v1;
  v3 = v1[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[7] = qword_1001230E0;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1000BED94;
  v5 = v0[6];

  return sub_1000295DC(10, v5, v2, v3, 0);
}

uint64_t sub_1000BED94()
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1000BEF3C;
  }

  else
  {
    v3 = sub_1000BEEBC;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000BEEBC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BEF3C()
{
  v1 = v0[2];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return _swift_task_switch(sub_1000BEFB8, v1, 0);
}

uint64_t sub_1000BEFB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BF01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v4[25] = swift_task_alloc();
  v5 = sub_1000E2B18();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v6 = sub_1000E2B28();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = sub_1000E1978();
  v4[33] = v7;
  v8 = *(v7 - 8);
  v4[34] = v8;
  v4[35] = *(v8 + 64);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v9 = sub_1000E0D68();
  v4[39] = v9;
  v4[40] = *(v9 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000BF27C, v3, 0);
}

uint64_t sub_1000BF27C(uint64_t a1)
{
  v43 = v1;
  sub_1000E0D58();
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v2 = v1[43];
  v3 = v1[44];
  v4 = v1[39];
  v5 = v1[40];
  v6 = v1[38];
  v7 = v1[33];
  v8 = v1[34];
  v9 = v1[22];
  v10 = sub_1000E1F08();
  v1[45] = sub_1000049D0(v10, qword_100120060);
  v11 = *(v5 + 16);
  v1[46] = v11;
  v1[47] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v3, v4);
  v12 = *(v8 + 16);
  v1[48] = v12;
  v1[49] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v6, v9, v7);
  v13 = sub_1000E1EE8();
  v14 = sub_1000E2698();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v1[43];
  v18 = v1[39];
  v17 = v1[40];
  v19 = v1[38];
  v21 = v1[33];
  v20 = v1[34];
  if (v15)
  {
    log = v13;
    v22 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v22 = 136315394;
    sub_1000041BC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = sub_1000E2C18();
    v40 = v14;
    v25 = v24;
    v39 = v21;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_100029C70(v23, v25, &v42);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = sub_1000E1968();
    v30 = v29;
    v31 = *(v20 + 8);
    v31(v19, v39);
    v32 = sub_100029C70(v28, v30, &v42);

    *(v22 + 14) = v32;
    _os_log_impl(&_mh_execute_header, log, v40, "[GetContactImage][%s] Received request for contact image for %s.", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31 = *(v20 + 8);
    v31(v19, v21);
    v26 = *(v17 + 8);
    v26(v16, v18);
  }

  v1[50] = v31;
  v1[51] = v26;
  v33 = sub_1000E1968();
  v35 = v34;
  v1[52] = v34;
  v36 = swift_task_alloc();
  v1[53] = v36;
  *v36 = v1;
  v36[1] = sub_1000BF5EC;
  v37 = v1[23];

  return sub_1000C12DC(v37, v33, v35);
}

uint64_t sub_1000BF5EC(char a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 105) = a1;

  return _swift_task_switch(sub_1000BF720, v2, 0);
}

uint64_t sub_1000BF720()
{
  v83 = v0;
  if (*(v0 + 105) == 1)
  {
    swift_beginAccess();
    *(v0 + 432) = 0;
    *(v0 + 440) = 1;
    v1 = *(v0 + 192);
    if (*(*(v1 + 328) + 16) < 0xAuLL)
    {
      v2 = *(v0 + 384);
      v80 = *(v0 + 352);
      v3 = *(v0 + 288);
      v4 = *(v0 + 264);
      v5 = *(v0 + 272);
      v6 = *(v0 + 200);
      v7 = *(v0 + 176);
      v8 = sub_1000E2538();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v2(v3, v7, v4);
      v10 = sub_1000041BC(&unk_1001200D0, v9, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
      v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
      v12 = swift_allocObject();
      *(v12 + 2) = v1;
      *(v12 + 3) = v10;
      *(v12 + 4) = v1;
      (*(v5 + 32))(&v12[v11], v3, v4);
      swift_retain_n();
      v13 = sub_100023258(0, 0, v6, &unk_1000F3360, v12);
      *(v0 + 480) = v13;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82[0] = *(v1 + 328);
      *(v1 + 328) = 0x8000000000000000;
      sub_1000CA994(v13, v80, isUniquelyReferenced_nonNull_native);
      *(v1 + 328) = v82[0];
      swift_endAccess();
      v15 = swift_task_alloc();
      *(v0 + 488) = v15;
      v16 = sub_10000ADE4(&qword_10011ED88, &qword_1000F11D8);
      *v15 = v0;
      v15[1] = sub_1000C0C70;
      v17 = v0 + 160;
      v18 = v13;

      return Task<>.value.getter(v17, v18, v16);
    }

    v29 = *(v0 + 384);
    v30 = *(v0 + 296);
    v31 = *(v0 + 264);
    v32 = *(v0 + 176);
    (*(v0 + 368))(*(v0 + 328), *(v0 + 352), *(v0 + 312));
    v29(v30, v32, v31);
    v33 = sub_1000E1EE8();
    v34 = sub_1000E2698();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 408);
    v81 = *(v0 + 400);
    v37 = *(v0 + 328);
    v38 = *(v0 + 312);
    v39 = *(v0 + 296);
    v40 = *(v0 + 264);
    if (v35)
    {
      v41 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v41 = 136315394;
      sub_1000041BC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v79 = v34;
      v42 = sub_1000E2C18();
      v44 = v43;
      v36(v37, v38);
      v45 = sub_100029C70(v42, v44, v82);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = sub_1000E1968();
      v48 = v47;
      v81(v39, v40);
      v49 = sub_100029C70(v46, v48, v82);

      *(v41 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v33, v79, "[GetContactImage][%s] Too many concurrent image requests, backing off for %s.", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v81(v39, v40);
      v36(v37, v38);
    }

    sub_1000E2828(v50, 2);
    sub_1000E0C48(v53, v51, v52);
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = HIDWORD(v54);
    v61 = HIWORD(v54);
    v62 = v56 >> 16;
    v63 = HIDWORD(v56);
    v64 = HIWORD(v56);
    v65 = HIWORD(v58);
    v66 = objc_allocWithZone(NSDecimalNumber);
    *(v0 + 108) = v55;
    *(v0 + 112) = v60;
    *(v0 + 114) = v61;
    *(v0 + 116) = v57;
    *(v0 + 118) = v62;
    *(v0 + 120) = v63;
    *(v0 + 122) = v64;
    *(v0 + 124) = v59;
    *(v0 + 126) = v65;
    v67 = [v66 initWithDecimal:v0 + 108];
    v68 = [v67 integerValue];

    v69 = 500 * v68;
    if ((v68 * 500) >> 64 == (500 * v68) >> 63)
    {
      if ((v69 & 0x8000000000000000) == 0)
      {
        v70 = v69 | 1;
        *(v0 + 144) = 0;
        v17 = swift_stdlib_random();
        v71 = *(v0 + 144);
        v72 = (v71 * (v69 | 1)) >> 64;
        v73 = v71 * (v69 | 1);
        if (v69 >= v73)
        {
          v74 = -v70 % v70;
          if (v74 > v73)
          {
            do
            {
              *(v0 + 152) = 0;
              v17 = swift_stdlib_random();
              v75 = *(v0 + 152);
            }

            while (v74 > v75 * v70);
            v72 = (v75 * v70) >> 64;
          }
        }

        v76 = v69 + v72;
        if (!__OFADD__(v69, v72))
        {
          v77 = 1000000000000000 * v76;
          v78 = ((v76 >> 63) & 0xFFFC72815B398000) + ((v76 * 0x38D7EA4C68000uLL) >> 64);
          sub_1000E2CF8();
          *(v0 + 128) = v77;
          *(v0 + 136) = v78;
          *(v0 + 88) = 0;
          *(v0 + 96) = 0;
          *(v0 + 104) = 1;

          return _swift_task_switch(sub_1000BFF48, 0, 0);
        }

LABEL_26:
        __break(1u);
        return Task<>.value.getter(v17, v18, v16);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  v19 = sub_1000E1EE8();
  v20 = sub_1000E2698();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 184);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v82[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100029C70(*(v21 + 16), *(v21 + 24), v82);
    _os_log_impl(&_mh_execute_header, v19, v20, "[GetContactImage] Rejecting request for contact image from device with which we do not have a laguna session %s.", v22, 0xCu);
    sub_10000E9DC(v23);
  }

  v24 = *(v0 + 408);
  v25 = *(v0 + 352);
  v26 = *(v0 + 312);
  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  v24(v25, v26);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000BFF48()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = sub_1000041BC(&qword_10011ED30, 255, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1000E2CD8();
  sub_1000041BC(&qword_10011ED38, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1000E2B38();
  v5 = *(v2 + 8);
  v0[56] = v5;
  v0[57] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[58] = v6;
  *v6 = v0;
  v6[1] = sub_1000C00D4;
  v8 = v0[29];
  v7 = v0[30];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 11, v7, v4);
}

uint64_t sub_1000C00D4()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    (*(v2 + 448))(*(v2 + 232), *(v2 + 208));
    v3 = sub_1000C0AE4;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 448);
    v7 = *(v2 + 248);
    v6 = *(v2 + 256);
    v8 = *(v2 + 232);
    v9 = *(v2 + 240);
    v10 = *(v2 + 208);
    v11 = *(v2 + 192);
    v5(v8, v10);
    (*(v7 + 8))(v6, v9);
    v3 = sub_1000C0238;
    v4 = v11;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1000C0238()
{
  v91 = v0;
  v1 = *(v0 + 440) + 1;
  *(v0 + 432) = *(v0 + 472);
  *(v0 + 440) = v1;
  v2 = *(v0 + 192);
  if (*(*(v2 + 328) + 16) < 0xAuLL)
  {
    v3 = *(v0 + 384);
    v88 = *(v0 + 352);
    v4 = *(v0 + 288);
    v5 = *(v0 + 264);
    v6 = *(v0 + 272);
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = sub_1000E2538();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v3(v4, v8, v5);
    v11 = sub_1000041BC(&unk_1001200D0, v10, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
    v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = v2;
    *(v13 + 3) = v11;
    *(v13 + 4) = v2;
    (*(v6 + 32))(&v13[v12], v4, v5);
    swift_retain_n();
    v14 = sub_100023258(0, 0, v7, &unk_1000F3360, v13);
    *(v0 + 480) = v14;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = *(v2 + 328);
    *(v2 + 328) = 0x8000000000000000;
    sub_1000CA994(v14, v88, isUniquelyReferenced_nonNull_native);
    *(v2 + 328) = v90[0];
    swift_endAccess();
    v16 = swift_task_alloc();
    *(v0 + 488) = v16;
    v17 = sub_10000ADE4(&qword_10011ED88, &qword_1000F11D8);
    *v16 = v0;
    v16[1] = sub_1000C0C70;
    v18 = v0 + 160;
    v19 = v14;

    return Task<>.value.getter(v18, v19, v17);
  }

  if (v1 == 4)
  {
    (*(v0 + 368))(*(v0 + 336), *(v0 + 352), *(v0 + 312));
    v20 = sub_1000E1EE8();
    v21 = sub_1000E2678();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 408);
    v24 = *(v0 + 336);
    v25 = *(v0 + 312);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v90[0] = v27;
      *v26 = 136315138;
      sub_1000041BC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = sub_1000E2C18();
      v30 = v29;
      v23(v24, v25);
      v31 = sub_100029C70(v28, v30, v90);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "[GetContactImage][%s] Failed to fulfill contact image request due to too many concurrent requests.", v26, 0xCu);
      sub_10000E9DC(v27);
    }

    else
    {

      v23(v24, v25);
    }

    v53 = *(v0 + 408);
    v54 = *(v0 + 352);
    v55 = *(v0 + 312);
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v53(v54, v55);

    v56 = *(v0 + 8);

    return v56();
  }

  v32 = *(v0 + 384);
  v33 = *(v0 + 296);
  v34 = *(v0 + 264);
  v35 = *(v0 + 176);
  (*(v0 + 368))(*(v0 + 328), *(v0 + 352), *(v0 + 312));
  v32(v33, v35, v34);
  v36 = sub_1000E1EE8();
  v37 = sub_1000E2698();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 408);
  v40 = *(v0 + 328);
  v41 = *(v0 + 312);
  v42 = *(v0 + 296);
  v87 = *(v0 + 264);
  v89 = *(v0 + 400);
  if (v38)
  {
    v43 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v43 = 136315394;
    sub_1000041BC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v86 = v37;
    v44 = sub_1000E2C18();
    v46 = v45;
    v39(v40, v41);
    v47 = sub_100029C70(v44, v46, v90);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    v48 = sub_1000E1968();
    v50 = v49;
    v89(v42, v87);
    v51 = sub_100029C70(v48, v50, v90);

    *(v43 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v36, v86, "[GetContactImage][%s] Too many concurrent image requests, backing off for %s.", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v89(v42, v87);
    v39(v40, v41);
  }

  sub_1000E2828(v52, 2);
  sub_1000E0C48(v60, v58, v59);
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = HIDWORD(v61);
  v68 = HIWORD(v61);
  v69 = v63 >> 16;
  v70 = HIDWORD(v63);
  v71 = HIWORD(v63);
  v72 = HIWORD(v65);
  v73 = objc_allocWithZone(NSDecimalNumber);
  *(v0 + 108) = v62;
  *(v0 + 112) = v67;
  *(v0 + 114) = v68;
  *(v0 + 116) = v64;
  *(v0 + 118) = v69;
  *(v0 + 120) = v70;
  *(v0 + 122) = v71;
  *(v0 + 124) = v66;
  *(v0 + 126) = v72;
  v74 = [v73 initWithDecimal:v0 + 108];
  v75 = [v74 integerValue];

  v76 = 500 * v75;
  if ((v75 * 500) >> 64 != (500 * v75) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v76 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return Task<>.value.getter(v18, v19, v17);
  }

  v77 = v76 | 1;
  *(v0 + 144) = 0;
  v18 = swift_stdlib_random();
  v78 = *(v0 + 144);
  v79 = (v78 * (v76 | 1)) >> 64;
  v80 = v78 * (v76 | 1);
  if (v76 >= v80)
  {
    v81 = -v77 % v77;
    if (v81 > v80)
    {
      do
      {
        *(v0 + 152) = 0;
        v18 = swift_stdlib_random();
        v82 = *(v0 + 152);
      }

      while (v81 > v82 * v77);
      v79 = (v82 * v77) >> 64;
    }
  }

  v83 = v76 + v79;
  if (__OFADD__(v76, v79))
  {
    goto LABEL_27;
  }

  v84 = 1000000000000000 * v83;
  v85 = ((v83 >> 63) & 0xFFFC72815B398000) + ((v83 * 0x38D7EA4C68000uLL) >> 64);
  sub_1000E2CF8();
  *(v0 + 128) = v84;
  *(v0 + 136) = v85;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;

  return _swift_task_switch(sub_1000BFF48, 0, 0);
}

uint64_t sub_1000C0AE4()
{
  v1 = v0[24];
  (*(v0[31] + 8))(v0[32], v0[30]);

  return _swift_task_switch(sub_1000C0B60, v1, 0);
}

uint64_t sub_1000C0B60()
{
  (*(v0 + 408))(*(v0 + 352), *(v0 + 312));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C0C70()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_1000C0D80, v1, 0);
}

uint64_t sub_1000C0D80()
{
  v1 = v0[44];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[20];
  swift_beginAccess();
  sub_1000B92E8(v1);
  swift_endAccess();

  sub_1000E1A28();
  *(swift_task_alloc() + 16) = v4;
  sub_1000041BC(&qword_1001201A0, 255, &type metadata accessor for NCProtoGetImageForContactResponse, &protocol conformance descriptor for NCProtoGetImageForContactResponse);
  sub_1000E0E38();

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000C0F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C0F90, a4, 0);
}

uint64_t sub_1000C0F90(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1000E1968();
  v5 = v4;
  v6 = sub_1000E1958();
  v7 = sub_1000CDFD0(v3, v5, v6);

  *v2 = v7;
  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1000C1030(uint64_t a1, void *a2)
{
  v4 = sub_10000ADE4(&qword_1001201A8, &unk_1000F3370);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1000E1368();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if (!a2)
  {
    goto LABEL_7;
  }

  v14 = [a2 imageData];
  if (v14)
  {
    v21 = a1;
    v15 = v14;
    sub_1000E0C88();
    v20 = v11;

    sub_1000E1A08();
    v11 = v20;
  }

  v16 = [a2 imageType];
  if (v16 == 1)
  {
    v17 = &enum case for NCProtoContactImageType.avatar(_:);
    goto LABEL_9;
  }

  if (v16 != 2)
  {
LABEL_7:
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_1000033C8(v6, &qword_1001201A8, &unk_1000F3370);
  }

  v17 = &enum case for NCProtoContactImageType.poster(_:);
LABEL_9:
  (*(v8 + 104))(v6, *v17, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  (*(v8 + 32))(v13, v6, v7);
  (*(v8 + 16))(v11, v13, v7);
  sub_1000E1A18();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1000C12DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_1000C1300, v3, 0);
}

uint64_t sub_1000C1300()
{
  sub_1000BA9C4(*(v0 + 80), (v0 + 16));
  if (*(v0 + 24))
  {
    sub_1000033C8(v0 + 16, &unk_10011FA58, &unk_1000F25E0);
    v2 = *(v0 + 8);

    return v2(1);
  }

  else
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 88);
    v7 = sub_1000041BC(&unk_1001200D0, v1, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
    v8 = swift_allocObject();
    *(v0 + 112) = v8;
    swift_weakInit();
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    v9[2] = v8;
    v9[3] = v6;
    v9[4] = v5;
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_1000C14E0;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 136, v4, v7, 0xD00000000000001BLL, 0x80000001000EC480, sub_1000CDDE4, v9, &type metadata for Bool);
  }
}

uint64_t sub_1000C14E0()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_1000C1630, v1, 0);
}

uint64_t sub_1000C1648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v5 = sub_1000E2118();
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000E2148();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = [*(result + 200) queue];
    v17 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v15, a1, v12);
    v18 = *(v13 + 80);
    v28 = v9;
    v19 = (v18 + 40) & ~v18;
    v20 = swift_allocObject();
    v21 = v32;
    v22 = v33;
    *(v20 + 2) = v17;
    *(v20 + 3) = v21;
    v23 = v11;
    v24 = v30;
    *(v20 + 4) = v22;
    (*(v13 + 32))(&v20[v19], v15, v12);
    aBlock[4] = sub_1000CDDF0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000026A0;
    aBlock[3] = &unk_100116440;
    v25 = _Block_copy(aBlock);

    sub_1000E2138();
    v35 = _swiftEmptyArrayStorage;
    sub_1000041BC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_10002B8C4();
    sub_1000E28C8();
    v26 = v29;
    sub_1000E2738();
    _Block_release(v25);

    (*(v31 + 8))(v8, v24);
    (*(v34 + 8))(v23, v28);
  }

  return result;
}

uint64_t sub_1000C1A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v25 = a4;
    sub_1000036AC((result + 256), *(result + 280));
    type metadata accessor for CallPublisher();
    v6 = sub_1000048CC();
    v7 = v6;
    v28[0] = _swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_1000E2A98();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ([v10 status] == 4)
        {
          sub_1000E2AC8();
          sub_1000E2AF8();
          sub_1000E2B08();
          sub_1000E2AD8();
        }

        else
        {
        }

        ++v9;
        if (v12 == i)
        {
          v13 = v28[0];
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_19:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      goto LABEL_35;
    }

    for (j = *(v13 + 16); j; j = sub_1000E2B68())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = sub_1000E2A98();
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_34;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v19 = [v16 contactIdentifiers];
        if (v19)
        {
          v20 = v19;
          v21 = sub_1000E2468();

          v28[0] = v26;
          v28[1] = v27;
          __chkstk_darwin(v22);
          v23[2] = v28;
          LOBYTE(v20) = sub_1000D0350(sub_1000CF7C4, v23, v21);

          if (v20)
          {

            LOBYTE(v28[0]) = 1;
            goto LABEL_37;
          }
        }

        else
        {
        }

        ++v15;
        if (v18 == j)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    LOBYTE(v28[0]) = 0;
LABEL_37:
    sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
    sub_1000E24D8();
  }

  return result;
}

uint64_t sub_1000C1D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[31] = a1;
  return _swift_task_switch(sub_1000C1D98, v3, 0);
}

uint64_t sub_1000C1D98()
{
  v106 = v0;
  sub_1000BA9C4(*(v0 + 32), v0 + 5);
  if (!*(v0 + 11))
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E1F08();
    sub_1000049D0(v4, qword_100120060);

    v5 = sub_1000E1EE8();
    v6 = sub_1000E2678();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v105[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100029C70(*(v7 + 16), *(v7 + 24), v105);
      _os_log_impl(&_mh_execute_header, v5, v6, "[GetContacts] Rejecting request to brows contacts from a device with which we do not have a session: %s", v8, 0xCu);
      sub_10000E9DC(v9);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v10 = *(v0 + 1);
    goto LABEL_91;
  }

  v88 = *(v0 + 11);
  v95 = v0 + 240;
  v84 = *(v0 + 10);
  v1 = v0[104];
  v2 = *(v0 + 15);
  v100 = *(v0 + 14);
  v86 = *(v0 + 12);
  v87 = *(v0 + 17);
  *v104 = *(v0 + 105);
  *&v104[3] = *(v0 + 27);
  *(v0 + 29) = *(v0 + 16);
  sub_10000CB64((v0 + 232), (v0 + 144), &unk_1001200E0, &qword_1000F3328);

  v85 = v1;
  if (v1)
  {
    v3 = sub_100021B70();
  }

  else
  {
    v3 = sub_1000217A8();
  }

  v11 = v3;
  v12 = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_80;
  }

LABEL_11:
  *v95 = v12;
  v102 = sub_10000C544(_swiftEmptyArrayStorage);
  if (v11 >> 62)
  {
    v13 = sub_1000E2B68();
    v99 = v2;
    if (!v13)
    {
LABEL_83:

      v76 = *(v0 + 29);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v76;
      sub_1000CDB30(v102, sub_1000CCF60, 0, isUniquelyReferenced_nonNull_native, v105);

      sub_1000033C8((v0 + 232), &unk_1001200E0, &qword_1000F3328);
      v78 = v105[0];
      *(v0 + 2) = v84;
      *(v0 + 3) = v88;
      *(v0 + 4) = v86;
      v0[40] = v85;
      *(v0 + 41) = *v104;
      *(v0 + 11) = *&v104[3];
      *(v0 + 6) = v100;
      *(v0 + 7) = v2;
      *(v0 + 8) = v78;
      *(v0 + 9) = v87;
      sub_1000C3AF4(v0 + 1);
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v79 = sub_1000E1F08();
      sub_1000049D0(v79, qword_100120060);
      v80 = sub_1000E1EE8();
      v81 = sub_1000E2698();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 134217984;
        swift_beginAccess();
        if ((*v95 & 0xC000000000000001) != 0)
        {

          v83 = sub_1000E2968();
        }

        else
        {
          v83 = *(*v95 + 16);
        }

        *(v82 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v80, v81, "[GetContacts] Successfully retrieved and cached contacts; count=%ld", v82, 0xCu);

        v2 = v99;
      }

      sub_1000E1C98();
      *(swift_task_alloc() + 16) = v95;
      sub_1000041BC(&qword_100120170, 255, &type metadata accessor for NCProtoGetAddressableContactsResponse, &protocol conformance descriptor for NCProtoGetAddressableContactsResponse);
      sub_1000E0E38();

      *(v0 + 18) = v84;
      *(v0 + 19) = v88;
      *(v0 + 20) = v86;
      v0[168] = v85;
      *(v0 + 169) = *v104;
      *(v0 + 43) = *&v104[3];
      *(v0 + 22) = v100;
      *(v0 + 23) = v2;
      *(v0 + 24) = v78;
      *(v0 + 25) = v87;
      sub_1000A9D38((v0 + 144));
      v10 = *(v0 + 1);
LABEL_91:

      return v10();
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v99 = v2;
    if (!v13)
    {
      goto LABEL_83;
    }
  }

  v14 = 0;
  v93 = v0;
  v94 = v11 & 0xC000000000000001;
  v89 = v11 + 32;
  v90 = v11 & 0xFFFFFFFFFFFFFF8;
  v91 = v13;
  v92 = v11;
  while (1)
  {
    if (v94)
    {
      v19 = sub_1000E2A98();
    }

    else
    {
      if (v14 >= *(v90 + 16))
      {
        goto LABEL_79;
      }

      v19 = *(v89 + 8 * v14);
    }

    v2 = v19;
    v20 = __OFADD__(v14, 1);
    v21 = v14 + 1;
    if (v20)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      if (sub_1000E2B68())
      {
        sub_1000E037C(_swiftEmptyArrayStorage);
      }

      else
      {
        v12 = &_swiftEmptySetSingleton;
      }

      goto LABEL_11;
    }

    v96 = v21;
    v22 = [v19 phoneNumbers];
    sub_10000ADE4(&qword_100120150, &qword_1000F3338);
    v23 = sub_1000E2468();

    if (v23 >> 62)
    {
      v24 = sub_1000E2B68();
      v97 = v2;
      if (!v24)
      {
LABEL_32:

        v2 = _swiftEmptyArrayStorage;
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v97 = v2;
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    v105[0] = _swiftEmptyArrayStorage;
    sub_10002A208(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      goto LABEL_77;
    }

    v25 = 0;
    v2 = v105[0];
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = sub_1000E2A98();
      }

      else
      {
        v26 = *(v23 + 8 * v25 + 32);
      }

      v105[0] = v2;
      v28 = v2[2];
      v27 = v2[3];
      if (v28 >= v27 >> 1)
      {
        v30 = v26;
        sub_10002A208((v27 > 1), v28 + 1, 1);
        v26 = v30;
        v2 = v105[0];
      }

      ++v25;
      v2[2] = v28 + 1;
      v29 = &v2[2 * v28];
      v29[4] = v26;
      *(v29 + 40) = 0;
    }

    while (v24 != v25);

LABEL_33:
    v31 = [v97 emailAddresses];
    v32 = sub_1000E2468();

    if (v32 >> 62)
    {
      v11 = sub_1000E2B68();
      if (!v11)
      {
LABEL_45:

        v34 = _swiftEmptyArrayStorage;
        goto LABEL_46;
      }
    }

    else
    {
      v11 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_45;
      }
    }

    v105[0] = _swiftEmptyArrayStorage;
    sub_10002A208(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      goto LABEL_78;
    }

    v33 = 0;
    v34 = v105[0];
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = sub_1000E2A98();
      }

      else
      {
        v35 = *(v32 + 8 * v33 + 32);
      }

      v105[0] = v34;
      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v39 = v35;
        sub_10002A208((v36 > 1), v37 + 1, 1);
        v35 = v39;
        v34 = v105[0];
      }

      ++v33;
      v34[2] = v37 + 1;
      v38 = &v34[2 * v37];
      v38[4] = v35;
      *(v38 + 40) = 1;
    }

    while (v11 != v33);

LABEL_46:
    v105[0] = v2;
    sub_1000CC2F0(v34);
    v40 = v105[0];
    v101 = *(v105[0] + 2);
    if (v101)
    {
      break;
    }

    v2 = v102;
LABEL_68:
    v102 = v2;

    [v97 mutableCopy];
    v0 = v93;
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_10000CAAC(0, &qword_100120158, CNMutableContact_ptr);
    swift_dynamicCast();
    v71 = *(v93 + 26);
    isa = sub_1000E2458().super.isa;
    [v71 setPhoneNumbers:isa];

    v73 = sub_1000E2458().super.isa;
    [v71 setEmailAddresses:v73];

    v74 = [v97 identifier];
    if (!v74)
    {
      sub_1000E2338();
      v74 = sub_1000E2328();
    }

    v15 = objc_allocWithZone(TUContinuitySessionContact);
    sub_10000CAAC(0, &qword_100120160, TUContinuityHandleAnonym_ptr);
    sub_10001B174(&qword_100120168, &qword_100120160, TUContinuityHandleAnonym_ptr);
    v16 = v71;
    v17 = sub_1000E25D8().super.isa;

    v18 = [v15 initWithContact:v16 contactIdentifier:v74 anonyms:v17];

    sub_1000D2B84(v105, v18);
    v11 = v92;
    v14 = v96;
    v2 = v99;
    if (v96 == v91)
    {
      goto LABEL_83;
    }
  }

  v41 = 0;
  v11 = v105[0] + 40;
  v42 = v99;
  v2 = v102;
  v98 = v105[0];
  while (1)
  {
    if (v41 >= v40[2])
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v0 = *v11;
    v43 = *(v11 - 8);
    v44 = v43;
    v45 = sub_1000C2B2C(v100, v42, v43, v0);
    if (v45)
    {
      break;
    }

LABEL_49:
    ++v41;
    v11 += 16;
    if (v101 == v41)
    {
      goto LABEL_68;
    }
  }

  v46 = v45;
  sub_1000D2BA8(v105, v46);

  v47 = [v46 identifier];
  v103 = sub_1000E2338();
  v49 = v48;

  v50 = [v44 value];
  v51 = v50;
  if (v0)
  {
    v52 = 3;
  }

  else
  {
    v53 = [v50 stringValue];

    v51 = v53;
    v52 = 2;
  }

  sub_1000E2338();

  v54 = objc_allocWithZone(TUHandle);
  v55 = sub_1000E2328();

  v0 = [v54 initWithType:v52 value:v55];

  v56 = swift_isUniquelyReferenced_nonNull_native();
  v105[0] = v2;
  v58 = sub_10000B2D0(v103, v49);
  v59 = v2;
  v60 = v2[2];
  v61 = (v57 & 1) == 0;
  v62 = v60 + v61;
  if (__OFADD__(v60, v61))
  {
    goto LABEL_74;
  }

  v63 = v57;
  if (v59[3] >= v62)
  {
    if (v56)
    {
      if ((v57 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      sub_1000CB760(&unk_100120100, &qword_1000F3330);
      if ((v63 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    goto LABEL_62;
  }

  sub_10001F5F8(v62, v56);
  v64 = sub_10000B2D0(v103, v49);
  if ((v63 & 1) == (v65 & 1))
  {
    v58 = v64;
    if ((v63 & 1) == 0)
    {
LABEL_64:
      v2 = v105[0];
      *(v105[0] + (v58 >> 6) + 8) |= 1 << v58;
      v68 = (v2[6] + 16 * v58);
      *v68 = v103;
      v68[1] = v49;
      *(v2[7] + 8 * v58) = v0;

      v69 = v2[2];
      v20 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v20)
      {
        goto LABEL_75;
      }

      v2[2] = v70;
      goto LABEL_66;
    }

LABEL_62:

    v2 = v105[0];
    v66 = *(v105[0] + 7);
    v67 = *(v66 + 8 * v58);
    *(v66 + 8 * v58) = v0;

LABEL_66:
    v40 = v98;
    v42 = v99;
    goto LABEL_49;
  }

  return sub_1000E2CC8();
}

id sub_1000C2B2C(uint64_t a1, void *a2, id a3, char a4)
{
  v8 = [a3 value];
  v9 = v8;
  if ((a4 & 1) == 0)
  {
    v10 = [v8 stringValue];

    v9 = v10;
  }

  v11 = sub_1000E2338();
  v13 = v12;

  sub_100021FF0(v11, v13, a1, a2);
  v15 = v14;

  if (!v15)
  {
    return 0;
  }

  v16 = [a3 label];
  if (a4)
  {
    if (v16)
    {
      v17 = v16;
      sub_1000E2338();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v24 = [a3 label];
    if (v24)
    {
      v25 = v24;
      sub_1000E2338();
    }

    else
    {
      sub_1000E2338();
    }

    v28 = objc_opt_self();
    v29 = sub_1000E2328();

    v30 = [v28 localizedStringForLabel:v29];

    if (!v30)
    {
      sub_1000E2338();
      v30 = sub_1000E2328();
    }

    v31 = sub_1000E2328();

    if (v19)
    {
      v32 = sub_1000E2328();
    }

    else
    {
      v32 = 0;
    }

    v35 = [objc_allocWithZone(TUContinuityHandleAnonym) initWithIdentifier:v31 label:v32 localizedDisplayName:v30 type:2];
  }

  else
  {
    if (v16)
    {
      v21 = v16;
      sub_1000E2338();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v26 = [a3 label];
    if (v26)
    {
      v27 = v26;
      sub_1000E2338();
    }

    else
    {
      sub_1000E2338();
    }

    v33 = objc_opt_self();
    v34 = sub_1000E2328();

    v30 = [v33 localizedStringForLabel:v34];

    if (!v30)
    {
      sub_1000E2338();
      v30 = sub_1000E2328();
    }

    v31 = sub_1000E2328();

    if (v23)
    {
      v32 = sub_1000E2328();
    }

    else
    {
      v32 = 0;
    }

    v35 = [objc_allocWithZone(TUContinuityHandleAnonym) initWithIdentifier:v31 label:v32 localizedDisplayName:v30 type:1];
  }

  v20 = v35;

  return v20;
}

id sub_1000C2EA0(void *a1, char a2)
{
  v3 = [a1 value];
  v4 = v3;
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v6 = [v3 stringValue];

    v5 = 2;
    v4 = v6;
  }

  sub_1000E2338();

  v7 = objc_allocWithZone(TUHandle);
  v8 = sub_1000E2328();

  v9 = [v7 initWithType:v5 value:v8];

  return v9;
}

uint64_t sub_1000C2F74(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();

  sub_1000B4EC0(v2);

  sub_1000E1C88();
  v3 = [objc_opt_self() sharedDefaults];
  [v3 sortOrder];

  return sub_1000E1C78();
}

uint64_t sub_1000C3030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000E1DA8();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_1000E1D58();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000C3150, v3, 0);
}

uint64_t sub_1000C3150()
{
  v32 = v0;
  sub_1000BA9C4(*(v0 + 96), (v0 + 16));
  if (*(v0 + 24))
  {
    v1 = *(v0 + 64);
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 136);
    sub_1000E1D68();
    v5 = (*(v3 + 88))(v2, v4);
    if (v5 == enum case for NCProtoGetDestinationCapabilitiesRequest.DestinationType.handle(_:))
    {
      v6 = sub_1000E1D88();
      v8 = v7;
LABEL_4:
      v9 = swift_task_alloc();
      *(v9 + 16) = v6;
      *(v9 + 24) = v8;
      sub_1000041BC(&qword_10011F628, 255, &type metadata accessor for NCProtoGetDestinationCapabilitiesRequest, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesRequest);
      sub_1000E0E38();

      v10 = swift_task_alloc();
      *(v0 + 160) = v10;
      *v10 = v0;
      v10[1] = sub_1000C359C;
      v11 = *(v0 + 128);

      return sub_10000CDF8(v11);
    }

    if (v5 == enum case for NCProtoGetDestinationCapabilitiesRequest.DestinationType.anonym(_:))
    {
      v19 = sub_1000E1D88();
      if (*(v1 + 16))
      {
        v21 = sub_10000B2D0(v19, v20);
        v23 = v22;

        if (v23)
        {
          v24 = *(*(v1 + 56) + 8 * v21);
          v25 = [v24 value];
          v6 = sub_1000E2338();
          v8 = v26;

          goto LABEL_4;
        }
      }

      else
      {
      }

      TUMakeNeighborhoodConduitError();
      swift_willThrow();
      sub_1000033C8(v0 + 16, &unk_10011FA58, &unk_1000F25E0);
    }

    else
    {
      v28 = *(v0 + 144);
      v27 = *(v0 + 152);
      v29 = *(v0 + 136);
      TUMakeNeighborhoodConduitError();
      swift_willThrow();
      sub_1000033C8(v0 + 16, &unk_10011FA58, &unk_1000F25E0);
      (*(v28 + 8))(v27, v29);
    }
  }

  else
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v13 = sub_1000E1F08();
    sub_1000049D0(v13, qword_100120060);

    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 96);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100029C70(*(v16 + 16), *(v16 + 24), &v31);
      _os_log_impl(&_mh_execute_header, v14, v15, "[GetDestinationCapabilities] Rejecting request to get handle capabilities from a device with which we do not have a session: %s", v17, 0xCu);
      sub_10000E9DC(v18);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000C359C(uint64_t a1)
{
  v4 = *v2;
  v4[21] = v1;

  v5 = v4[13];
  if (v1)
  {
    v6 = sub_1000C3834;
  }

  else
  {
    v4[22] = a1;
    v6 = sub_1000C36D8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C36D8()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  sub_1000E1DE8();
  *(swift_task_alloc() + 16) = v1;
  sub_1000041BC(&qword_100120140, 255, &type metadata accessor for NCProtoGetDestinationCapabilitiesResponse, &protocol conformance descriptor for NCProtoGetDestinationCapabilitiesResponse);
  sub_1000E0E38();

  sub_1000033C8((v0 + 2), &unk_10011FA58, &unk_1000F25E0);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000C3834()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_1000033C8((v0 + 2), &unk_10011FA58, &unk_1000F25E0);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000C38E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000E1D58();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000E1D98();
  (*(v4 + 104))(v6, enum case for NCProtoGetDestinationCapabilitiesRequest.DestinationType.handle(_:), v3);
  return sub_1000E1D78();
}

uint64_t sub_1000C39E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000E1828();
  __chkstk_darwin(v2);
  sub_1000041BC(&qword_100120148, 255, &type metadata accessor for NCProtoDestinationCapabilities, &protocol conformance descriptor for NCProtoDestinationCapabilities);
  sub_1000E0E38();
  return sub_1000E1DD8();
}

uint64_t sub_1000C3AF4(__int128 *a1)
{
  v2 = a1[1];
  v22 = *a1;
  v23 = v2;
  v3 = a1[3];
  v24 = a1[2];
  v25 = v3;
  v4 = *(v1 + 136);
  v26[0] = *(v1 + 120);
  v26[1] = v4;
  v5 = *(v1 + 168);
  v26[2] = *(v1 + 152);
  v26[3] = v5;
  v6 = v26[0];
  if (!*(&v26[0] + 1))
  {
    v18 = *&v26[0];
    v9 = *(v1 + 152);
    v19 = *(v1 + 136);
    v20 = v9;
    v21 = *(v1 + 168);
    sub_10000CB64(v26, v17, &unk_10011FA58, &unk_1000F25E0);
    return sub_1000033C8(&v18, &unk_10011FA58, &unk_1000F25E0);
  }

  v18 = v26[0];
  v8 = *(v1 + 152);
  v19 = *(v1 + 136);
  v20 = v8;
  v21 = *(v1 + 168);
  sub_10000CB64(v26, v17, &unk_10011FA58, &unk_1000F25E0);

  sub_1000033C8(&v18, &unk_10011FA58, &unk_1000F25E0);
  if (v6 == *a1)
  {
  }

  else
  {
    v11 = sub_1000E2C68();

    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v12 = *(v1 + 136);
  v17[0] = *(v1 + 120);
  v17[1] = v12;
  v13 = *(v1 + 168);
  v17[2] = *(v1 + 152);
  v17[3] = v13;
  v14 = v23;
  *(v1 + 120) = v22;
  *(v1 + 136) = v14;
  v15 = v25;
  *(v1 + 152) = v24;
  *(v1 + 168) = v15;
  sub_1000A9C1C(a1, &v16);
  sub_1000033C8(v17, &unk_10011FA58, &unk_1000F25E0);
  return sub_1000B98E4();
}

uint64_t sub_1000C3CA0(uint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = *(v3 + 136);
  v45 = *(v3 + 120);
  v46 = v4;
  v5 = *(v3 + 168);
  v47 = *(v3 + 152);
  v48 = v5;
  v49[0] = v45;
  v49[1] = v4;
  v49[2] = v47;
  v49[3] = v5;
  if (*(&v45 + 1))
  {
    v6 = *(v3 + 136);
    v41 = *(v3 + 120);
    v42 = v6;
    v7 = *(v3 + 168);
    v43 = *(v3 + 152);
    v44 = v7;
    if (!result)
    {
      v22 = *(v3 + 136);
      v36[0] = *(v3 + 120);
      v36[1] = v22;
      v23 = *(v3 + 168);
      v36[2] = *(v3 + 152);
      v36[3] = v23;
      sub_10000CB64(&v45, &v37, &unk_10011FA58, &unk_1000F25E0);
      sub_1000A9C1C(v36, &v37);
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v24 = sub_1000E1F08();
      sub_1000049D0(v24, qword_100120060);
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      sub_1000A9C1C(&v37, v35);
      v25 = sub_1000E1EE8();
      v26 = sub_1000E2698();
      sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35[0] = v28;
        *v27 = 136315138;
        v30 = *(&v49[0] + 1);
        v29 = *&v49[0];

        v31 = sub_100029C70(v29, v30, v35);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Disconnecting camera session (%s because rapport is now out of session.", v27, 0xCu);
        sub_10000E9DC(v28);
      }

      else
      {

        v30 = *(&v49[0] + 1);
        v29 = *&v49[0];
      }

      v32 = v29;
      v33 = v30;
      goto LABEL_22;
    }

    if (result == 1)
    {
      if (!a3 || (result = *&v49[0], __PAIR128__(*(&v45 + 1), *&v49[0]) != __PAIR128__(a3, a2)) && (v9 = a2, result = sub_1000E2C68(), a2 = v9, (result & 1) == 0))
      {
        v10 = a2;
        v37 = v45;
        v38 = v46;
        v39 = v47;
        v40 = v48;
        sub_10000CB64(&v45, v36, &unk_10011FA58, &unk_1000F25E0);
        sub_1000A9C1C(&v37, v36);
        if (qword_10011DC40 != -1)
        {
          swift_once();
        }

        v11 = sub_1000E1F08();
        sub_1000049D0(v11, qword_100120060);
        sub_10000CB64(&v45, v36, &unk_10011FA58, &unk_1000F25E0);

        v12 = sub_1000E1EE8();
        v13 = sub_1000E2698();
        sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v35[0] = swift_slowAlloc();
          *v14 = 136315394;
          sub_1000A9C1C(v49, v36);
          v15 = sub_1000B9764();
          v17 = v16;
          sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);
          v18 = sub_100029C70(v15, v17, v35);

          *(v14 + 4) = v18;
          *(v14 + 12) = 2080;
          if (a3)
          {
            *&v36[0] = v10;
            *(&v36[0] + 1) = a3;

            v19 = sub_1000E2368();
            v21 = v20;
          }

          else
          {
            v21 = 0xE300000000000000;
            v19 = 7104878;
          }

          v34 = sub_100029C70(v19, v21, v35);

          *(v14 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v12, v13, "Disconnecting camera session because rapport and conduit session devices are mismatched: [%s and %s]", v14, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v33 = *(&v49[0] + 1);
        v32 = *&v49[0];
LABEL_22:
        sub_1000BE71C(v32, v33);
        sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);
        return sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);
      }
    }
  }

  return result;
}

uint64_t sub_1000C4188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = sub_1000E19A8();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_1000C4284;

  return sub_1000C49E4(a5);
}

uint64_t sub_1000C4284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = a3;

  return _swift_task_switch(sub_1000C43A0, v5, 0);
}

uint64_t sub_1000C43A0()
{
  v22 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100120060);

  sub_1000A9C1C(v1, (v0 + 2));
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[16];
  v8 = v0[11];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315906;
    *(v9 + 4) = sub_100029C70(*v8, *(v8 + 8), &v21);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v7 + 16);
    *(v9 + 22) = 2048;
    *(v9 + 24) = *(v6 + 16);

    *(v9 + 32) = 1024;
    *(v9 + 34) = *(v8 + 24) & 1;
    sub_1000A9D38(v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "Recents calls data changed, sending %s new recent calls (%ld and contacts %ld isDedicatedInfo:%{BOOL}d.", v9, 0x26u);
    sub_10000E9DC(v10);
  }

  else
  {
    sub_1000A9D38(v0[11]);
  }

  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  v14 = v0[11];
  v15 = swift_task_alloc();
  v15[2] = v13;
  v15[3] = v12;
  v15[4] = v11;
  sub_1000041BC(&qword_10011EDD8, 255, &type metadata accessor for NCProtoRecentCallsDidChangeEvent, &protocol conformance descriptor for NCProtoRecentCallsDidChangeEvent);
  sub_1000E0E38();

  v16 = *v14;
  v17 = v14[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[19] = qword_1001230E0;
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_1000C4704;
  v19 = v0[14];

  return sub_1000283F8(9, v19, v16, v17, 0);
}

uint64_t sub_1000C4704()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_1000C48B0;
  }

  else
  {
    v4 = sub_1000C4830;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C4830()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C48B0()
{
  v1 = v0[10];
  (*(v0[13] + 8))(v0[14], v0[12]);

  return _swift_task_switch(sub_1000C492C, v1, 0);
}

uint64_t sub_1000C492C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C4990(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1000E1988();

  return sub_1000E1998();
}

uint64_t sub_1000C49E4(uint64_t a1)
{
  *(v2 + 24) = a1;

  return _swift_task_switch(sub_1000C4A74, v1, 0);
}

uint64_t sub_1000C4A74()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = sub_10000C668(_swiftEmptyArrayStorage);
    v4 = _swiftEmptyDictionarySingleton;
    goto LABEL_48;
  }

  v5 = [*(v1 + 56) recentCalls];
  if (v5)
  {
    v6 = v5;
    sub_10000CAAC(0, &unk_100120120, CHRecentCall_ptr);
    v7 = sub_1000E2468();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v7 >> 62)
  {
    v8 = sub_1000E2B68();
    v51 = v7;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v7;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8 < 1)
  {
    goto LABEL_54;
  }

  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  do
  {
    if (v10)
    {
      v11 = sub_1000E2A98();
    }

    else
    {
      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v11 remoteParticipantHandles];
    if (v13)
    {
      v14 = v13;
      sub_10000CAAC(0, &unk_100120110, CHHandle_ptr);
      sub_10001B174(&qword_10011EB70, &unk_100120110, CHHandle_ptr);
      v15 = sub_1000E25E8();

      v16 = v15;
      v7 = v51;
      sub_10001E3B8(v16);
    }

    ++v9;
  }

  while (v8 != v9);
LABEL_18:
  sub_1000B549C(&_swiftEmptySetSingleton);
  v18 = sub_1000D4CDC(v17);

  v19 = sub_1000206F8(v18, 0, 0, 0);

  if (v19)
  {
    v46 = v19;
    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v46 = sub_10000C558(_swiftEmptyArrayStorage);
    if (v8)
    {
LABEL_20:
      v20 = 0;
      v49 = v7 & 0xFFFFFFFFFFFFFF8;
      v50 = v7 & 0xC000000000000001;
      v47 = v7 + 32;
      v2 = _swiftEmptyArrayStorage;
      while (1)
      {
        v48 = v2;
        if (v50)
        {
          v21 = sub_1000E2A98();
        }

        else
        {
          if (v20 >= *(v49 + 16))
          {
            goto LABEL_53;
          }

          v21 = *(v47 + 8 * v20);
        }

        v22 = v21;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v23 = objc_opt_self();
        v0[2] = 0;
        v24 = v22;
        v25 = [v23 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:v0 + 2];
        v26 = v0[2];
        if (v25)
        {
          v27 = v25;
          ++v20;
        }

        else
        {
          v28 = v26;
          sub_1000E0BE8();

          swift_willThrow();

          if (v20 + 1 == v8)
          {
            goto LABEL_47;
          }

          v29 = v20 + 5;
          v30 = v51;
          while (1)
          {
            v31 = v29 - 4;
            if (v50)
            {
              v32 = sub_1000E2A98();
            }

            else
            {
              if (v31 >= *(v49 + 16))
              {
                goto LABEL_53;
              }

              v32 = *(v30 + 8 * v29);
            }

            v33 = v32;
            v20 = v29 - 3;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_52;
            }

            v34 = objc_opt_self();
            v0[2] = 0;
            v24 = v33;
            v35 = [v34 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:v0 + 2];
            v26 = v0[2];
            if (v35)
            {
              break;
            }

            v36 = v26;
            sub_1000E0BE8();

            swift_willThrow();

            ++v29;
            v30 = v51;
            if (v20 == v8)
            {
              v2 = v48;
              goto LABEL_47;
            }
          }

          v27 = v35;
          v2 = v48;
        }

        v37 = v26;
        v38 = sub_1000E0C88();
        v40 = v39;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000D213C(0, *(v2 + 2) + 1, 1, v2);
        }

        v42 = *(v2 + 2);
        v41 = *(v2 + 3);
        if (v42 >= v41 >> 1)
        {
          v2 = sub_1000D213C((v41 > 1), v42 + 1, 1, v2);
        }

        *(v2 + 2) = v42 + 1;
        v43 = &v2[16 * v42];
        *(v43 + 4) = v38;
        *(v43 + 5) = v40;
        if (v20 == v8)
        {
          goto LABEL_47;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }

  v2 = _swiftEmptyArrayStorage;
LABEL_47:

  v4 = sub_1000CBFFC(v46);

  v3 = _swiftEmptyDictionarySingleton;
LABEL_48:
  v44 = v0[1];

  return v44(v2, v4, v3);
}

uint64_t sub_1000C4FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = sub_1000C571C(a1);
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v8 = sub_1000E1F08();
  sub_1000049D0(v8, qword_100120060);

  sub_1000A9C1C(a1, v20);
  v9 = sub_1000E1EE8();
  v10 = sub_1000E2698();
  sub_1000A9D38(a1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100029C70(*a1, *(a1 + 8), v20);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7[2];

    _os_log_impl(&_mh_execute_header, v9, v10, "Favorites data changed, sending %s new favorites (%ld.", v11, 0x16u);
    sub_10000E9DC(v12);
  }

  else
  {
  }

  v13 = sub_1000E2538();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v15 = sub_1000041BC(&unk_1001200D0, v14, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v15;
  *(v16 + 32) = a2;
  *(v16 + 40) = v7;
  v17 = *(a1 + 16);
  *(v16 + 48) = *a1;
  *(v16 + 64) = v17;
  v18 = *(a1 + 48);
  *(v16 + 80) = *(a1 + 32);
  *(v16 + 96) = v18;

  sub_1000A9C1C(a1, v20);

  sub_1000223DC(0, 0, v6, &unk_1000F3490, v16);
}

uint64_t sub_1000C52C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1000E1848();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000C5388, a4, 0);
}

uint64_t sub_1000C5388()
{
  v1 = v0[4];
  v2 = v0[3];
  *(swift_task_alloc() + 16) = v2;
  sub_1000041BC(&qword_10011EDD0, 255, &type metadata accessor for NCProtoFavoritesDidChangeEvent, &protocol conformance descriptor for NCProtoFavoritesDidChangeEvent);
  sub_1000E0E38();

  v3 = *v1;
  v4 = v1[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[8] = qword_1001230E0;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1000C5514;
  v6 = v0[7];

  return sub_100029248(14, v6, v3, v4, 0);
}

uint64_t sub_1000C5514()
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1000C563C;
  }

  else
  {
    v3 = sub_1000713E8;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000C563C()
{
  v1 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_1000C56B8, v1, 0);
}

uint64_t sub_1000C56B8()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000C571C(uint64_t a1)
{
  v3 = sub_1000E15B8();
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 24) & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 48);
  v70 = *(a1 + 40);
  v83 = v6;
  v69 = *(a1 + 32);
  v7 = *(a1 + 16);
  v80 = *a1;
  v81 = v7;
  v82 = *(a1 + 32);
  v61 = *(a1 + 56);
  sub_1000A9C1C(a1, v84);
  sub_10000CB64(&v83, v84, &unk_1001200E0, &qword_1000F3328);
  if (qword_10011DBF0 != -1)
  {
LABEL_58:
    swift_once();
  }

  v8 = [qword_10011EB18 entries];
  sub_10000CAAC(0, &unk_10011EB40, CNFavoritesEntry_ptr);
  v9 = sub_1000E2468();

  v72 = sub_10000C544(_swiftEmptyArrayStorage);
  if (v9 >> 62)
  {
    v10 = sub_1000E2B68();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v1;
  if (v10)
  {
    v59 = v5;
    v60 = v3;
    v11 = 0;
    v3 = 0;
    v75 = v9 & 0xC000000000000001;
    v74 = v9 & 0xFFFFFFFFFFFFFF8;
    v58 = v71 + 32;
    v73 = _swiftEmptyArrayStorage;
    v68 = v9;
    v67 = v10;
    while (1)
    {
      if (v75)
      {
        v13 = sub_1000E2A98();
      }

      else
      {
        if (v11 >= *(v74 + 16))
        {
          goto LABEL_57;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v1 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (qword_10011DC50 != -1)
      {
        swift_once();
      }

      v15 = qword_100120078;
      v16 = [v1 bundleIdentifier];
      v17 = sub_1000E2338();
      v19 = v18;

      v5 = &v58;
      *&v84[0] = v17;
      *(&v84[0] + 1) = v19;
      __chkstk_darwin(v20);
      *(&v58 - 2) = v84;
      LOBYTE(v15) = sub_1000D0350(sub_1000CDA88, (&v58 - 4), v15);

      if ((v15 & 1) == 0)
      {
        goto LABEL_8;
      }

      v21 = [v1 contactProperty];
      if (!v21)
      {
        goto LABEL_8;
      }

      v22 = v21;
      v5 = [v1 value];
      if (!v5)
      {
        sub_1000E2338();
        v5 = sub_1000E2328();
      }

      v23 = [objc_opt_self() normalizedHandleWithDestinationID:v5];

      if (!v23)
      {
        break;
      }

      v24 = [v23 type];
      if (v24 == 2)
      {
        v29 = [v22 label];
        if (v29)
        {
          v30 = v29;
          sub_1000E2338();
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        v36 = [v23 value];
        if (!v36)
        {
          sub_1000E2338();
          v36 = sub_1000E2328();
        }

        v34 = [objc_allocWithZone(CNPhoneNumber) initWithStringValue:v36];

        if (v32)
        {
          v35 = sub_1000E2328();
        }

        else
        {
          v35 = 0;
        }

        v37 = [objc_allocWithZone(CNLabeledValue) initWithLabel:v35 value:v34];
        v5 = 0;
        goto LABEL_42;
      }

      if (v24 == 3)
      {
        v25 = [v22 label];
        if (v25)
        {
          v26 = v25;
          sub_1000E2338();
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v33 = [v23 value];
        if (!v33)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v34 = v33;
        if (v28)
        {
          v35 = sub_1000E2328();
        }

        else
        {
          v35 = 0;
        }

        v37 = [objc_allocWithZone(CNLabeledValue) initWithLabel:v35 value:v34];
        v5 = 1;
LABEL_42:

        v12 = v37;
        v38 = sub_1000C2B2C(v69, v70, v12, v5);

        if (v38)
        {
          v65 = v5;
          v5 = sub_10000CAAC(0, &qword_1001200F0, TUContinuityFavorite_ptr);
          v39 = v1;
          v40 = v38;
          v1 = v5;
          v41 = sub_1000DE464(v39, v40);
          if (v41)
          {
            v66 = v40;
            v64 = v39;
            v63 = __chkstk_darwin(v41);
            *(&v58 - 2) = v63;
            sub_1000041BC(&qword_1001200F8, 255, &type metadata accessor for NCProtoContinuityFavorite, &protocol conformance descriptor for NCProtoContinuityFavorite);
            v42 = v59;
            v43 = v60;
            sub_1000E0E38();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_1000D2248(0, v73[2] + 1, 1, v73);
            }

            v45 = v73[2];
            v44 = v73[3];
            if (v45 >= v44 >> 1)
            {
              v73 = sub_1000D2248((v44 > 1), v45 + 1, 1, v73);
            }

            v46 = v73;
            v73[2] = v45 + 1;
            (*(v71 + 32))(v46 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v45, v42, v43);
            v47 = [v66 identifier];
            v5 = sub_1000E2338();
            v49 = v48;

            v50 = sub_1000C2EA0(v12, v65);
            v51 = v72;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v84[0] = v51;
            v1 = v84;
            sub_1000CA7F8(v50, v5, v49, isUniquelyReferenced_nonNull_native, &unk_100120100, &qword_1000F3330, sub_10001F5F8);

            v72 = *&v84[0];
            goto LABEL_52;
          }
        }

        else
        {
        }

        v12 = v22;
LABEL_52:
        v9 = v68;
        v10 = v67;
        goto LABEL_9;
      }

      v12 = v23;
LABEL_9:

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_55;
      }
    }

LABEL_8:
    v12 = v1;
    goto LABEL_9;
  }

  v73 = _swiftEmptyArrayStorage;
LABEL_55:

  v54 = v83;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v79 = v54;
  sub_1000CDB30(v72, sub_1000CCF60, 0, v55, &v79);

  sub_1000033C8(&v83, &unk_1001200E0, &qword_1000F3328);
  v56 = v79;
  v84[0] = v80;
  v84[1] = v81;
  v84[2] = v82;
  v57 = v61;
  v85 = v79;
  v86 = v61;
  sub_1000C3AF4(v84);
  v76[0] = v80;
  v76[1] = v81;
  v76[2] = v82;
  v77 = v56;
  v78 = v57;
  sub_1000A9D38(v76);
  return v73;
}

void sub_1000C60F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  sub_1000036AC((Strong + 256), *(Strong + 280));
  type metadata accessor for CallPublisher();
  v3 = sub_1000048CC();
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_34:
    v5 = sub_1000E2B68();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_35:

    return;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_35;
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_1000E2A98();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = [v7 status];
    if (v10 == 1 || v10 == 3)
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_35;
    }
  }

  if (([v8 isScreening] & 1) != 0 || objc_msgSend(*(v2 + 240), "currentState") != 1)
  {

    return;
  }

  v12 = [*(v2 + 200) activeConversationForCall:v8];
  if (v12)
  {
    v13 = v12;
    if ([v12 isContinuitySession])
    {
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v14 = sub_1000E1F08();
      sub_1000049D0(v14, qword_100120060);
      v15 = v8;
      v16 = sub_1000E1EE8();
      v17 = sub_1000E2668();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Call active on phone while inSession - ignoring since it is a continuity conversation. %@", v18, 0xCu);
        sub_1000033C8(v19, &unk_10011EAC0, &unk_1000F0E60);
      }

      else
      {
      }

      return;
    }
  }

  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v21 = sub_1000E1F08();
  sub_1000049D0(v21, qword_100120060);
  v22 = v8;
  v23 = sub_1000E1EE8();
  v24 = sub_1000E2698();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Call active on phone while inSession. Calling exitSession. %@", v25, 0xCu);
    sub_1000033C8(v26, &unk_10011EAC0, &unk_1000F0E60);
  }

  v28 = *(v2 + 240);
  v29 = sub_1000E2328();
  [v28 exitDiscoverySessionWithReason:v29];
}

uint64_t sub_1000C6584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = sub_1000E1BB8();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_1000C6680;

  return sub_1000C6D08(a5);
}

uint64_t sub_1000C6680(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_1000C6798, v2, 0);
}

uint64_t sub_1000C6798()
{
  v18 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100120060);
  sub_1000A9C1C(v1, (v0 + 2));

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();
  sub_1000A9D38(v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100029C70(*v7, *(v7 + 8), &v17);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "[ContinuityCalls][%s] Sending updated calls of count %ld", v8, 0x16u);
    sub_10000E9DC(v9);
  }

  else
  {
  }

  v10 = v0[16];
  v11 = v0[11];
  *(swift_task_alloc() + 16) = v10;
  sub_1000041BC(&qword_10011ED68, 255, &type metadata accessor for NCProtoContinuityCallsDidChangeEvent, &protocol conformance descriptor for NCProtoContinuityCallsDidChangeEvent);
  sub_1000E0E38();

  v12 = *v11;
  v13 = v11[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[17] = qword_1001230E0;
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_1000C6A7C;
  v15 = v0[14];

  return sub_100028EB4(13, v15, v12, v13, 0);
}

uint64_t sub_1000C6A7C()
{
  v2 = *v1;

  v3 = *(v2 + 136);
  if (v0)
  {

    v4 = sub_1000C6C2C;
  }

  else
  {
    v4 = sub_1000C6BB4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C6BB4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C6C2C()
{
  v1 = v0[10];
  (*(v0[13] + 8))(v0[14], v0[12]);

  return _swift_task_switch(sub_1000C6CA8, v1, 0);
}

uint64_t sub_1000C6CA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C6D08(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1000C6D28, v1, 0);
}

uint64_t sub_1000C6D28()
{
  if (![*(v0[4] + 232) isGreenTea] || TUGreenTeaLagunaEnabled())
  {
    if (*(v0[3] + 24))
    {
      v2 = sub_100021DD8();
    }

    else
    {
      if (!(_swiftEmptyArrayStorage >> 62) || !sub_1000E2B68())
      {
        v3 = &_swiftEmptySetSingleton;
        goto LABEL_8;
      }

      sub_1000E006C(_swiftEmptyArrayStorage);
    }

    v3 = v2;
LABEL_8:
    v0[5] = v3;
    v5 = v0[3];
    v4 = v0[4];
    v6 = sub_1000041BC(&unk_1001200D0, v1, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
    v7 = swift_allocObject();
    v0[6] = v7;
    swift_weakInit();
    v8 = swift_task_alloc();
    v0[7] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = v5;
    *(v8 + 40) = v3;
    v9 = swift_task_alloc();
    v0[8] = v9;
    v10 = sub_10000ADE4(&qword_10011ECC8, &qword_1000F3300);
    *v9 = v0;
    v9[1] = sub_1000C6F68;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v4, v6, 0xD000000000000015, 0x80000001000EC460, sub_1000CCF50, v8, v10);
  }

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_1000C6F68()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1000C70D4, v1, 0);
}

uint64_t sub_1000C70EC(uint64_t a1, uint64_t a2, char a3, _OWORD *a4, uint64_t a5)
{
  v31 = a5;
  v30 = sub_1000E2118();
  v34 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000E2148();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = [*(result + 200) queue];
    v17 = swift_allocObject();
    swift_weakInit();
    (*(v13 + 16))(v15, a1, v12);
    v18 = (*(v13 + 80) + 104) & ~*(v13 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = a3 & 1;
    v20 = a4[1];
    *(v19 + 32) = *a4;
    *(v19 + 48) = v20;
    v21 = a4[3];
    *(v19 + 64) = a4[2];
    *(v19 + 80) = v21;
    v22 = v11;
    v23 = v30;
    *(v19 + 96) = v31;
    (*(v13 + 32))(v19 + v18, v15, v12);
    aBlock[4] = sub_1000CD914;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000026A0;
    aBlock[3] = &unk_1001163A0;
    v24 = _Block_copy(aBlock);

    sub_1000A9C1C(a4, &v35);

    sub_1000E2138();
    v35 = _swiftEmptyArrayStorage;
    sub_1000041BC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_10002B8C4();
    v25 = v29;
    sub_1000E28C8();
    v26 = v28;
    sub_1000E2738();
    _Block_release(v24);

    (*(v34 + 8))(v25, v23);
    (*(v32 + 8))(v22, v33);
  }

  return result;
}

uint64_t sub_1000C7560(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a4;
  v87 = a3;
  LODWORD(v98) = a2;
  v97 = sub_1000E1208();
  v91 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v75 = a5;
  v8 = *(result + 280);
  v94 = result;
  sub_1000036AC((result + 256), v8);
  type metadata accessor for CallPublisher();
  v9 = sub_1000048CC();
  v10 = v9;
  v108 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_114;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_1000E2A98();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_107;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 isScreening] & 1) == 0)
      {
        v16 = [v14 provider];
        v17 = [v16 isTelephonyProvider];

        if (v17)
        {
          if (v98)
          {
            goto LABEL_18;
          }
        }

        else if ([v14 status] == 4 || objc_msgSend(v14, "status") == 1)
        {
LABEL_18:
          sub_1000E2AC8();
          sub_1000E2AF8();
          sub_1000E2B08();
          sub_1000E2AD8();
          goto LABEL_7;
        }
      }

LABEL_7:
      ++v12;
      if (v15 == i)
      {
        v18 = v108;
        goto LABEL_22;
      }
    }

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
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_22:

  v102 = _swiftEmptyArrayStorage;
  v19 = v18;
  v84 = v18;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    v20 = sub_1000E2B68();
    v19 = v84;
  }

  else
  {
    v20 = *(v18 + 16);
  }

  v21 = _swiftEmptyArrayStorage;
  if (v20)
  {
    v10 = 0;
    v83 = v19 & 0xC000000000000001;
    v82 = v19 + 32;
    v86 = v77 & 0xC000000000000001;
    v22 = v77 & 0xFFFFFFFFFFFFFF8;
    if (v77 < 0)
    {
      v22 = v77;
    }

    v79 = v22;
    v76 = v77 + 56;
    v81 = v20;
    while (1)
    {
      if (v83)
      {
        v23 = sub_1000E2A98();
      }

      else
      {
        if (v10 >= *(v19 + 16))
        {
          goto LABEL_113;
        }

        v23 = *(v82 + 8 * v10);
      }

      v24 = v23;
      v25 = __OFADD__(v10++, 1);
      if (v25)
      {
        goto LABEL_112;
      }

      if ((*(v87 + 24) & 1) == 0)
      {
LABEL_29:
        sub_1000E2AC8();
        sub_1000E2AF8();
        sub_1000E2B08();
        sub_1000E2AD8();
        goto LABEL_30;
      }

      v26 = [*(v94 + 200) activeConversationForCall:v23];
      if (!v26)
      {

        goto LABEL_30;
      }

      v92 = v24;
      *&v93 = v10;
      v78 = v26;
      v27 = [v26 remoteMembers];
      v10 = TUConversationMember_ptr;
      v28 = sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
      sub_10001B174(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
      v29 = sub_1000E25E8();

      v101 = _swiftEmptyArrayStorage;
      v95 = v29;
      v98 = v28;
      if ((v29 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1000E2918();
        sub_1000E2628();
        v29 = v103;
        v30 = v104;
        v31 = v105;
        v32 = v106;
        v33 = v107;
      }

      else
      {
        v34 = -1 << *(v29 + 32);
        v30 = v29 + 56;
        v31 = ~v34;
        v35 = -v34;
        v36 = v35 < 64 ? ~(-1 << v35) : -1;
        v33 = v36 & *(v29 + 56);

        v32 = 0;
      }

      v90 = v31;
      v37 = (v31 + 64) >> 6;
      if ((v29 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v43 = sub_1000E29A8();
        if (!v43)
        {
          break;
        }

        v99 = v43;
        swift_dynamicCast();
        v42 = v100;
        v40 = v32;
        v41 = v33;
        if (!v100)
        {
          break;
        }

LABEL_53:
        v44 = [v42 handles];
        v10 = TUHandle_ptr;
        sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
        sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
        v45 = sub_1000E25E8();

        sub_1000CC4E8(v45);
        v32 = v40;
        v33 = v41;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }
      }

LABEL_55:
      sub_10000A840(v29);

      v80 = v101;
      if (v101 >> 62)
      {
        v46 = sub_1000E2B68();
      }

      else
      {
        v46 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v93;
      v47 = v92;
      if (!v46)
      {
        goto LABEL_84;
      }

      v48 = 0;
      v90 = v80 & 0xC000000000000001;
      v89 = v80 & 0xFFFFFFFFFFFFFF8;
      v88 = v80 + 32;
      v85 = v46;
      while (2)
      {
        if (v90)
        {
          v49 = sub_1000E2A98();
        }

        else
        {
          if (v48 >= *(v89 + 16))
          {
            goto LABEL_111;
          }

          v49 = *(v88 + 8 * v48);
        }

        v98 = v49;
        v25 = __OFADD__(v48++, 1);
        if (v25)
        {
          goto LABEL_110;
        }

        if (v86)
        {
          swift_unknownObjectRetain();
          sub_1000E2918();
          sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
          sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
          sub_1000E2628();
          v50 = v108;
          v51 = v109;
          v52 = v110;
          v53 = v111;
          v10 = v112;
        }

        else
        {
          v50 = v77;
          v54 = -1 << *(v77 + 32);
          v52 = ~v54;
          v55 = -v54;
          if (v55 < 64)
          {
            v56 = ~(-1 << v55);
          }

          else
          {
            v56 = -1;
          }

          v10 = v56 & *(v77 + 56);

          v53 = 0;
          v51 = v76;
        }

        v95 = v52;
        v57 = (v52 + 64) >> 6;
        while (v50 < 0)
        {
          v61 = sub_1000E29A8();
          if (!v61)
          {
            goto LABEL_81;
          }

          v100 = v61;
          sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
          swift_dynamicCast();
          v60 = v101;
          if (!v101)
          {
            goto LABEL_81;
          }

LABEL_79:
          v62 = [v60 isEquivalentToHandle:v98];

          if (v62)
          {

            sub_10000A840(v50);
            v10 = v93;
            goto LABEL_29;
          }
        }

        v58 = v53;
        v59 = v10;
        if (!v10)
        {
          while (1)
          {
            v53 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              break;
            }

            if (v53 >= v57)
            {
              goto LABEL_81;
            }

            v59 = *(v51 + 8 * v53);
            ++v58;
            if (v59)
            {
              goto LABEL_75;
            }
          }

          __break(1u);
          goto LABEL_105;
        }

LABEL_75:
        v10 = (v59 - 1) & v59;
        v60 = *(*(v50 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v59)))));
        if (v60)
        {
          goto LABEL_79;
        }

LABEL_81:
        sub_10000A840(v50);

        v10 = v93;
        v47 = v92;
        if (v48 != v85)
        {
          continue;
        }

        break;
      }

LABEL_84:

LABEL_30:
      v19 = v84;
      if (v10 == v81)
      {
        v21 = v102;
        goto LABEL_88;
      }
    }

LABEL_45:
    v38 = v32;
    v39 = v33;
    v40 = v32;
    if (!v33)
    {
      while (1)
      {
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v40 >= v37)
        {
          goto LABEL_55;
        }

        v39 = *(v30 + 8 * v40);
        ++v38;
        if (v39)
        {
          goto LABEL_49;
        }
      }

LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

LABEL_49:
    v41 = (v39 - 1) & v39;
    v42 = *(*(v29 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));
    if (!v42)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

LABEL_88:

  if ((v21 & 0x8000000000000000) == 0 && (v21 & 0x4000000000000000) == 0)
  {
    v63 = *(v21 + 16);
    if (!v63)
    {
      goto LABEL_117;
    }

    goto LABEL_91;
  }

  v63 = sub_1000E2B68();
  if (v63)
  {
LABEL_91:
    v64 = 0;
    v10 = 0;
    v98 = (v21 & 0xC000000000000001);
    v95 = v91 + 32;
    v65 = _swiftEmptyArrayStorage;
    v93 = xmmword_1000F0FE0;
    while (1)
    {
      if (v98)
      {
        v66 = v21;
        v67 = sub_1000E2A98();
      }

      else
      {
        if (v64 >= *(v21 + 16))
        {
          goto LABEL_109;
        }

        v66 = v21;
        v67 = *(v21 + 8 * v64 + 32);
      }

      v68 = v67;
      v69 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_108;
      }

      v70 = [*(v94 + 200) activeConversationForCall:v67];
      v71 = __chkstk_darwin(v70);
      *(&v75 - 4) = v68;
      *(&v75 - 3) = v71;
      *(&v75 - 1) = v93;
      sub_1000041BC(&qword_10011ED20, 255, &type metadata accessor for NCProtoContinuityCall, &protocol conformance descriptor for NCProtoContinuityCall);
      sub_1000E0E38();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1000D25B4(0, v65[2] + 1, 1, v65);
      }

      v73 = v65[2];
      v72 = v65[3];
      if (v73 >= v72 >> 1)
      {
        v65 = sub_1000D25B4((v72 > 1), v73 + 1, 1, v65);
      }

      v65[2] = v73 + 1;
      (*(v91 + 32))(v65 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v73, v96, v97);
      ++v64;
      v74 = v69 == v63;
      v21 = v66;
      if (v74)
      {
        goto LABEL_118;
      }
    }
  }

LABEL_117:
  v65 = _swiftEmptyArrayStorage;
LABEL_118:

  v102 = v65;
  sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
  sub_1000E24D8();
}

uint64_t sub_1000C81B8()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8260, v0, 0);
}

uint64_t sub_1000C8260()
{
  v1 = v0[2];
  if (*(v1 + 344))
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100120060);
    v3 = sub_1000E1EE8();
    v4 = sub_1000E2668();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[ActiveConversations] Deduping active conversations changed event.", v5, 2u);
    }
  }

  else
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = sub_1000E2538();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v10 = sub_1000041BC(&unk_1001200D0, v9, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
    v11 = swift_allocObject();
    v11[2] = v1;
    v11[3] = v10;
    v11[4] = v1;
    v11[5] = v7;
    swift_retain_n();
    *(v1 + 344) = sub_100022960(0, 0, v6, &unk_1000F32E0, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000C8474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v4[25] = swift_task_alloc();
  v6 = sub_1000E2B28();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8570, a4, 0);
}

uint64_t sub_1000C8570(uint64_t a1)
{
  sub_1000E2CF8();
  v2 = swift_task_alloc();
  *(v1 + 232) = v2;
  *v2 = v1;
  v2[1] = sub_1000C863C;

  return sub_100003DA4(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000C863C()
{
  v2 = *v1;

  v3 = v2[28];
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[24];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v7 = sub_1000CF77C;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v7 = sub_1000C87E8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000C87E8(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = sub_1000C8FF4();
  v4 = *(v2 + 136);
  v5 = *(v2 + 168);
  v6 = *(v2 + 120);
  *(v1 + 48) = *(v2 + 152);
  *(v1 + 64) = v5;
  *(v1 + 16) = v6;
  *(v1 + 32) = v4;
  v7 = *(v1 + 24);
  if (v7)
  {
    v9 = *(v1 + 192);
    v8 = *(v1 + 200);
    v10 = *(v1 + 16);
    v11 = *(v9 + 168);
    v12 = *(v9 + 152);
    *(v1 + 144) = *(v9 + 136);
    *(v1 + 160) = v12;
    *(v1 + 176) = v11;
    v13 = sub_1000E2538();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v15 = sub_1000041BC(&unk_1001200D0, v14, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
    v16 = swift_allocObject();
    *(v16 + 16) = v9;
    *(v16 + 24) = v15;
    *(v16 + 32) = v10;
    *(v16 + 40) = v7;
    v17 = *(v1 + 160);
    *(v16 + 48) = *(v1 + 144);
    *(v16 + 64) = v17;
    *(v16 + 80) = *(v1 + 176);
    *(v16 + 96) = v3;
    *(v16 + 104) = v9;
    swift_retain_n();
    sub_10000CB64(v1 + 16, v1 + 80, &unk_10011FA58, &unk_1000F25E0);
    sub_100022960(0, 0, v8, &unk_1000F32F0, v16);
  }

  else
  {
  }

  *(*(v1 + 192) + 344) = 0;

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_1000C89D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v8 = sub_1000E1D48();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8A98, a6, 0);
}

uint64_t sub_1000C8A98()
{
  v18 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100120060);
  sub_1000A9C1C(v1, (v0 + 2));

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();
  sub_1000A9D38(v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100029C70(*v7, *(v7 + 8), &v17);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "[ActiveConversations][%s] Sending updated active conversations of count %ld", v8, 0x16u);
    sub_10000E9DC(v9);
  }

  else
  {
  }

  v11 = v0[10];
  v10 = v0[11];
  *(swift_task_alloc() + 16) = v10;
  sub_1000041BC(&unk_10011ED50, 255, &type metadata accessor for NCProtoActiveConversationsDidChangeEvent, &protocol conformance descriptor for NCProtoActiveConversationsDidChangeEvent);
  sub_1000E0E38();

  v12 = *v11;
  v13 = v11[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[16] = qword_1001230E0;
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_1000C8D6C;
  v15 = v0[15];

  return sub_100028B20(12, v15, v12, v13, 0);
}

uint64_t sub_1000C8D6C()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  if (v0)
  {

    v4 = sub_1000C8F1C;
  }

  else
  {
    v4 = sub_1000C8EA4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C8EA4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C8F1C()
{
  v1 = v0[12];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return _swift_task_switch(sub_1000C8F94, v1, 0);
}

uint64_t sub_1000C8F94()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000C8FF4()
{
  v1 = [*(v0 + 216) activeConversations];
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_10001B174(&qword_10011FA90, qword_10011F0D0, TUConversation_ptr);
  v2 = sub_1000E25E8();

  v39 = 0;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = &_swiftEmptySetSingleton;
    v42 = &_swiftEmptySetSingleton;
    v2 = sub_1000E2918();
    for (i = sub_1000E29A8(); i; i = sub_1000E29A8())
    {
      v40 = i;
      swift_dynamicCast();
      if ([v41[0] state] && objc_msgSend(v41[0], "state") != 1 && ((objc_msgSend(v41[0], "isContinuitySession") & 1) != 0 || !objc_msgSend(v41[0], "avMode")))
      {
      }

      else
      {
        v12 = v41[0];
        v13 = v4[2];
        if (v4[3] <= v13)
        {
          sub_1000D35E8(v13 + 1);
        }

        v4 = v42;
        v6 = sub_1000E2808(v42[5]);
        v7 = (v42 + 7);
        v8 = -1 << *(v42 + 32);
        v9 = v6 & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~v42[(v9 >> 6) + 7]) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~v42[(v9 >> 6) + 7])) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              goto LABEL_47;
            }

            v16 = v10 == v15;
            if (v10 == v15)
            {
              v10 = 0;
            }

            v14 |= v16;
            v17 = *&v7[8 * v10];
          }

          while (v17 == -1);
          v11 = __clz(__rbit64(~v17)) + (v10 << 6);
        }

        *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        *(v4[6] + 8 * v11) = v12;
        ++v4[2];
      }
    }

    goto LABEL_46;
  }

  v18 = *(v2 + 32);
  v37 = ((1 << v18) + 63) >> 6;
  if ((v18 & 0x3Fu) > 0xD)
  {
    goto LABEL_48;
  }

  while (2)
  {
    v36[1] = v36;
    __chkstk_darwin(v3);
    v20 = v36 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v20, v19);
    v38 = 0;
    v21 = 0;
    v22 = 1 << *(v2 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v2 + 56);
    v25 = (v22 + 63) >> 6;
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_36:
      v29 = v26 | (v21 << 6);
      v30 = *(*(v2 + 48) + 8 * v29);
      if (![v30 state] || objc_msgSend(v30, "state") == 1)
      {

LABEL_42:
        *&v20[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_45:
          v4 = sub_1000CC924(v20, v37, v38, v2, &qword_1001200B0, &qword_1000F32D0);
          goto LABEL_46;
        }
      }

      else if ([v30 isContinuitySession])
      {
      }

      else
      {
        v31 = [v30 avMode];

        if (v31)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {
        goto LABEL_45;
      }

      v28 = *(v2 + 56 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_36;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v35 = swift_slowAlloc();
  v4 = sub_1000CCC90(v35, v37, v2, sub_1000C94F8);

LABEL_46:
  v33 = sub_1000B4A24(v4);

  return v33;
}

uint64_t sub_1000C94F8(id *a1)
{
  v1 = *a1;
  if (![*a1 state])
  {
    return 1;
  }

  result = [v1 state];
  if (result != 1)
  {
    return ([v1 isContinuitySession] & 1) == 0 && objc_msgSend(v1, "avMode") != 0;
  }

  return result;
}

uint64_t sub_1000C958C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_1000C81B8();
}

uint64_t sub_1000C969C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002E7C;

  return sub_1000C81B8();
}

uint64_t sub_1000C976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;

  sub_100022960(0, 0, v10, a6, v12);
}

uint64_t sub_1000C98A0()
{

  sub_1000CEE08(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  sub_10000E9DC((v0 + 256));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C9964()
{
  sub_1000C98A0();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_1000C99B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000C99C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000C9A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C9A70(int a1, id a2)
{
  [a2 supportsTelephonyCalls];
  sub_1000E1818();
  [a2 supportsFaceTimeAudio];
  sub_1000E17F8();
  [a2 supportsFaceTimeVideo];
  return sub_1000E1808();
}

unint64_t sub_1000C9AE0(int64_t a1, uint64_t a2)
{
  v40 = sub_1000E0D68();
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
    v12 = sub_1000E28E8();
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
      sub_1000041BC(&qword_1001201B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = sub_1000E22D8();
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

uint64_t sub_1000C9E04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000E28E8() + 1) & ~v5;
    do
    {
      sub_1000E2D48();

      sub_1000E2398();
      v9 = sub_1000E2D68();

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

  return result;
}

unint64_t sub_1000C9FB4(int64_t a1, uint64_t a2)
{
  v4 = sub_1000E0D68();
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
    v13 = sub_1000E28E8();
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
      sub_1000041BC(&qword_1001201B0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = sub_1000E22D8();
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
          v27 = *(*(sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0) - 8) + 72);
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

void sub_1000CA308(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000B2D0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000CAF6C();
      goto LABEL_7;
    }

    sub_10001E98C(v15, a4 & 1);
    v25 = sub_10000B2D0(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1000E2CC8();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1000E0DE8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1000CACB0(v12, a2, a3, a1, v18);
}

uint64_t sub_1000CA4B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10000B348(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000CB370();
      goto LABEL_7;
    }

    sub_10001EFA4(v17, a3 & 1);
    v22 = sub_10000B348(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000CAD60(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1000E2CC8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_1000CA67C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000B2D0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10001F350(v16, a4 & 1);
      v11 = sub_10000B2D0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1000E2CC8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1000CB5F0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1000CA7F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, void))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_10000B2D0(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      a7(v22, a4 & 1);
      v17 = sub_10000B2D0(a2, a3);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_1000E2CC8();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v25 = v17;
      sub_1000CB760(a5, a6);
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    *(v27[7] + 8 * v17) = a1;

    goto _objc_release_x1;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v28 = (v27[6] + 16 * v17);
  *v28 = a2;
  v28[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v29 = v27[2];
  v21 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v30;
}

uint64_t sub_1000CA994(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10000B348(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000CB8BC();
      goto LABEL_7;
    }

    sub_10001F8A8(v17, a3 & 1);
    v22 = sub_10000B348(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000CAD60(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1000E2CC8();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_1000CAB60(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000B2D0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000CBB3C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10001FC54(v16, a4 & 1);
    v11 = sub_10000B2D0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1000E2CC8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000E9DC(v22);

    sub_10000C154(a1, v22);
  }

  else
  {
    sub_1000CAE18(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1000CACB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1000E0DE8();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1000CAD60(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000E0D68();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1000CAE18(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000C154(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000CAE84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000E0D68();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  result = sub_10000CAF4(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void sub_1000CAF6C()
{
  v1 = v0;
  v35 = sub_1000E0DE8();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&qword_10011DFC0, &qword_1000F3500);
  v3 = *v0;
  v4 = sub_1000E2B78();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1000CB1EC()
{
  v1 = v0;
  sub_10000ADE4(&qword_10011EBB8, &unk_1000F3440);
  v2 = *v0;
  v3 = sub_1000E2B78();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

char *sub_1000CB370()
{
  v1 = v0;
  v33 = sub_1000E0D68();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&qword_10011DFD0, &qword_1000F34D0);
  v3 = *v0;
  v4 = sub_1000E2B78();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1000CB5F0()
{
  v1 = v0;
  sub_10000ADE4(&unk_10011DF30, &unk_1000F04A0);
  v2 = *v0;
  v3 = sub_1000E2B78();
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

id sub_1000CB760(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000ADE4(a1, a2);
  v4 = *v2;
  v5 = sub_1000E2B78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1000CB8BC()
{
  v1 = v0;
  v33 = sub_1000E0D68();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&unk_10011EB90, &qword_1000F0500);
  v3 = *v0;
  v4 = sub_1000E2B78();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_1000CBB3C()
{
  v1 = v0;
  sub_10000ADE4(&qword_10011DF70, &qword_1000F04D0);
  v2 = *v0;
  v3 = sub_1000E2B78();
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
        v22 = 32 * v17;
        sub_1000153C0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000C154(v25, (*(v4 + 56) + v22));
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

char *sub_1000CBCE0()
{
  v1 = v0;
  v2 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - v3;
  v34 = sub_1000E0D68();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&unk_10011DF90, &qword_1000F04E8);
  v5 = *v0;
  v6 = sub_1000E2B78();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_10000CB64(*(v5 + 56) + v26, v35, &qword_10011EBB0, &qword_1000F04F0);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_10000CAF4(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1000CBFFC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000E10C8();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&unk_10011F920, &unk_1000F23A0);
  result = sub_1000E2B78();
  v7 = result;
  v8 = 0;
  v38 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v36 = v4;
  v32[1] = v4 + 32;
  v33 = result + 8;
  v34 = result;
  if (v14)
  {
    while (1)
    {
      v43 = v2;
      v16 = __clz(__rbit64(v14));
      v39 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v42 = v32;
      v40 = 16 * v19;
      v20 = *(v38 + 56);
      v21 = (*(v38 + 48) + 16 * v19);
      v22 = v21[1];
      v41 = *v21;
      v23 = *(v20 + 8 * v19);
      __chkstk_darwin(result);
      v32[-2] = v23;
      sub_1000041BC(&qword_100120130, 255, &type metadata accessor for NCProtoContactInfo, &protocol conformance descriptor for NCProtoContactInfo);

      v24 = v23;
      v25 = v35;
      v26 = v37;
      v27 = v43;
      sub_1000E0E38();
      v2 = v27;

      v7 = v34;
      *(v33 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v28 = (v7[6] + v40);
      *v28 = v41;
      v28[1] = v22;
      result = (*(v36 + 32))(v7[7] + *(v36 + 72) * v19, v25, v26);
      v29 = v7[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v7[2] = v31;
      v14 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v43 = v2;
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CC2F0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000D2270(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000CC3E4(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000D237C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000ADE4(&unk_100120208, &qword_1000F3660);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000CC4E8(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1000E2968();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_1000E2B68();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1000CC870(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = ((*(v3 + 0x18) >> 1) - v13);
  result = sub_10002AB20(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_10000A840(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_1000E29A8())
    {
      goto LABEL_11;
    }

    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1000E2488();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1000E29A8())
      {
        sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1000CC870(uint64_t a1, char a2)
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

  sub_1000E2B68();
LABEL_9:
  result = sub_1000E2AA8();
  *v2 = result;
  return result;
}

uint64_t sub_1000CC924(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_10000ADE4(a5, a6);
  result = sub_1000E2A58();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1000E2808(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1000CCB10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1000CC924(a1, a2, v20, a3, &qword_1001200B0, &qword_1000F32D0);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1000CCC90(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1000CCB10(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1000CCD20(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000E2C68() & 1;
  }
}

uint64_t sub_1000CCD94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000C8474(a1, v4, v5, v6);
}

uint64_t sub_1000CCE54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000C89D0(a1, v4, v5, (v1 + 4), v6, v7);
}

id sub_1000CCF60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

void *sub_1000CCFAC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E2128();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v8 - 8);
  v52 = &v52 - v9;
  v62[3] = type metadata accessor for CallPublisher();
  v62[4] = &off_100116E48;
  v62[0] = a2;
  swift_defaultActor_initialize();
  sub_10000ADE4(&unk_100120230, &qword_1000F2470);
  swift_allocObject();
  *(a3 + 112) = sub_1000E1FD8();
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  v10 = [objc_opt_self() sharedManager];
  type metadata accessor for HandleCapabilitiesLookupActor();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = v10;
  *(a3 + 184) = v11;
  LOBYTE(aBlock) = 0;
  sub_10000ADE4(&qword_10011EA88, &qword_1000F3450);
  swift_allocObject();
  *(a3 + 192) = sub_1000E2008();
  v12 = objc_opt_self();
  *(a3 + 200) = [v12 sharedInstance];
  *(a3 + 208) = [objc_opt_self() strongToWeakObjectsMapTable];
  v13 = [v12 sharedInstance];
  v14 = [v13 conversationManager];

  *(a3 + 216) = v14;
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  *(a3 + 224) = qword_1001230E8;
  v15 = objc_allocWithZone(FTDeviceSupport);

  *(a3 + 232) = [v15 init];
  *(a3 + 240) = [objc_allocWithZone(RPRemoteDisplayDiscovery) init];
  *(a3 + 296) = 0u;
  *(a3 + 312) = 0u;
  v16 = sub_10000BC1C(_swiftEmptyArrayStorage);
  *(a3 + 336) = 0;
  *(a3 + 344) = 0;
  *(a3 + 328) = v16;
  *(a3 + 248) = a1;
  sub_10002B4BC(v62, a3 + 256);
  v17 = type metadata accessor for ContinuitySessionServer();
  v61.receiver = a3;
  v61.super_class = v17;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v61, "init");
  v20 = v19[30];
  v21 = swift_allocObject();
  swift_weakInit();
  v59 = sub_1000CEED8;
  v60 = v21;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v57 = sub_100067144;
  v58 = &unk_1001165F8;
  v22 = _Block_copy(&aBlock);
  v23 = v19;
  v24 = v20;

  [v24 setDiscoverySessionStateChangedHandler:v22];
  _Block_release(v22);

  v25 = v19[30];
  v59 = sub_1000B9DC4;
  v60 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v57 = sub_100067380;
  v58 = &unk_100116620;
  v26 = _Block_copy(&aBlock);
  v27 = v25;
  [v27 activateWithCompletion:v26];
  _Block_release(v26);

  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  v30 = TUCallHistoryControllerRecentCallsDidChangeNotification;
  v31 = swift_allocObject();
  swift_weakInit();
  v59 = sub_1000CEEE0;
  v60 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v57 = sub_100002014;
  v58 = &unk_100116648;
  v32 = _Block_copy(&aBlock);

  v33 = [v29 addObserverForName:v30 object:0 queue:0 usingBlock:v32];
  _Block_release(v32);

  v23[37] = v33;
  swift_unknownObjectRelease();
  v34 = [v28 defaultCenter];
  v35 = CNFavoritesChangedNotification;
  v36 = swift_allocObject();
  swift_weakInit();
  v59 = sub_1000CEF18;
  v60 = v36;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v57 = sub_100002014;
  v58 = &unk_100116670;
  v37 = _Block_copy(&aBlock);

  v38 = [v34 addObserverForName:v35 object:0 queue:0 usingBlock:v37];
  _Block_release(v37);

  v23[38] = v38;
  swift_unknownObjectRelease();
  v39 = swift_allocObject();
  swift_weakInit();
  sub_10002B4BC(v62, &aBlock);
  v40 = swift_allocObject();
  sub_1000079B4(&aBlock, v40 + 16);
  *(v40 + 56) = v39;
  sub_10000ADE4(&unk_100120240, &qword_1000F10E8);
  v41 = swift_allocObject();
  v42 = sub_1000E2538();
  v43 = v52;
  (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = &unk_1000F3460;
  v44[5] = v40;
  *(v41 + 16) = sub_1000223DC(0, 0, v43, &unk_1000F3470, v44);
  v23[40] = v41;

  v45 = v23[27];
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  v47 = v53;
  v46 = v54;
  v48 = v55;
  (*(v54 + 104))(v53, enum case for DispatchQoS.QoSClass.userInteractive(_:), v55);
  v49 = v45;
  v50 = sub_1000E2758();
  (*(v46 + 8))(v47, v48);
  [v49 addDelegate:v23 queue:v50];

  [v23[27] registerWithCompletionHandler:0];
  sub_10000E9DC(v62);
  return v23;
}

uint64_t sub_1000CD800()
{
  result = sub_10005A5B8();
  if (!v0)
  {
    result = TUIsIDSAvailableForFaceTime();
    if (!result)
    {
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v2 = sub_1000E1F08();
      sub_1000049D0(v2, qword_100120060);
      v3 = sub_1000E1EE8();
      v4 = sub_1000E2698();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Rejecting start laguna session because iOS device is not signed into FaceTime.", v5, 2u);
      }

      TUMakeNeighborhoodConduitError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000CD914()
{
  v1 = *(sub_10000ADE4(&unk_10011ED00, &unk_1000F1160) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 96);
  v5 = v0 + ((*(v1 + 80) + 104) & ~*(v1 + 80));

  return sub_1000C7560(v2, v3, v0 + 32, v4, v5);
}

uint64_t sub_1000CD990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000C6584(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000CDB30(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_10000B2D0(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_1000CB760(&unk_100120100, &qword_1000F3330);
      }
    }

    else
    {
      sub_10001F5F8(v29, v42 & 1);
      v31 = sub_10000B2D0(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10000A840(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1000E2CC8();
  __break(1u);
  return result;
}

uint64_t sub_1000CDDF0()
{
  v1 = *(sub_10000ADE4(&qword_10011FC38, &qword_1000F3350) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1000C1A64(v2, v3, v4, v5);
}

uint64_t sub_1000CDE64(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000E2C68() & 1;
  }
}

uint64_t sub_1000CDEBC(uint64_t a1)
{
  v4 = *(sub_1000E1978() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000C0F70(a1, v6, v7, v8, v1 + v5);
}

id sub_1000CDFD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v64 = a1;
  v65 = a2;
  v4 = sub_1000E1368();
  v78 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v69 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v64 - v8;
  v10 = __chkstk_darwin(v7);
  v80 = &v64 - v11;
  __chkstk_darwin(v10);
  v14 = &v64 - v13;
  v15 = *(a3 + 16);
  if (v15)
  {
    v16 = 0;
    v75 = (v78 + 88);
    v74 = enum case for NCProtoContactImageType.avatar(_:);
    v73 = enum case for NCProtoContactImageType.poster(_:);
    v17 = (v78 + 8);
    v66 = _swiftEmptyArrayStorage;
    *&v12 = 136315138;
    v68 = v12;
    v76 = v15;
    v77 = v14;
    v67 = a3;
    v79 = v78 + 16;
LABEL_3:
    v18 = v16;
    while (v18 < v15)
    {
      v25 = v17;
      v26 = *(v78 + 16);
      v26(v14, a3 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v18, v4);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_50;
      }

      v81 = v18 + 1;
      v27 = v80;
      v26(v80, v14, v4);
      v28 = (*v75)(v27, v4);
      if (v28 == v74)
      {
        v32 = 1;
        (*v17)(v14, v4);
        goto LABEL_16;
      }

      v29 = *v17;
      if (v28 == v73)
      {
        v32 = 2;
        v29(v14, v4);
LABEL_16:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1000D24B0(0, *(v66 + 2) + 1, 1, v66);
        }

        v15 = v76;
        v34 = *(v66 + 2);
        v33 = *(v66 + 3);
        v35 = v34 + 1;
        v16 = v81;
        if (v34 >= v33 >> 1)
        {
          v37 = sub_1000D24B0((v33 > 1), v34 + 1, 1, v66);
          v16 = v81;
          v66 = v37;
        }

        v36 = v66;
        *(v66 + 2) = v35;
        *&v36[8 * v34 + 32] = v32;
        v14 = v77;
        if (v16 == v15)
        {
LABEL_23:
          v38 = 32;
          v40 = v64;
          v39 = v65;
          v41 = v66;
          while (v35)
          {
            v42 = *&v66[v38];
            v38 += 8;
            --v35;
            if (v42 == 2)
            {
              v43 = sub_100021588(v64, v65, 2, 0);
              if (v43)
              {
LABEL_48:
                v63 = v43;

                return v63;
              }

              break;
            }
          }

          v44 = *(v41 + 2);
          v45 = 32;
          while (v44)
          {
            v46 = *&v41[v45];
            v45 += 8;
            --v44;
            if (v46 == 1)
            {
              v43 = sub_100021588(v40, v39, 1, 0);
              if (v43)
              {
                goto LABEL_48;
              }

              break;
            }
          }

          if (qword_10011DC40 != -1)
          {
            swift_once();
          }

          v47 = sub_1000E1F08();
          sub_1000049D0(v47, qword_100120060);

          v48 = sub_1000E1EE8();
          v49 = sub_1000E2678();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v82[0] = v51;
            *v50 = v68;
            *(v50 + 4) = sub_100029C70(v40, v39, v82);
            _os_log_impl(&_mh_execute_header, v48, v49, "[GetContactImage] Could not find contact image for %s with a supported image type.", v50, 0xCu);
            sub_10000E9DC(v51);

            goto LABEL_43;
          }

          goto LABEL_44;
        }

        goto LABEL_3;
      }

      v29(v80, v4);
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v72 = sub_1000E1F08();
      sub_1000049D0(v72, qword_100120060);
      v26(v9, v14, v4);
      v30 = sub_1000E1EE8();
      v31 = sub_1000E2678();
      if (os_log_type_enabled(v30, v31))
      {
        v19 = swift_slowAlloc();
        v70 = v19;
        v71 = swift_slowAlloc();
        v82[0] = v71;
        *v19 = v68;
        v26(v69, v9, v4);
        v20 = sub_1000E2358();
        v22 = v21;
        v29(v9, v4);
        v23 = sub_100029C70(v20, v22, v82);

        v24 = v70;
        *(v70 + 1) = v23;
        v17 = v25;
        _os_log_impl(&_mh_execute_header, v30, v31, "[GetContactImage] Requested image with unknown image type %s.", v24, 0xCu);
        sub_10000E9DC(v71);

        a3 = v67;
      }

      else
      {

        v29(v9, v4);
      }

      v14 = v77;
      v29(v77, v4);
      ++v18;
      v15 = v76;
      if (v81 == v76)
      {
        v35 = *(v66 + 2);
        if (v35)
        {
          goto LABEL_23;
        }

        if (qword_10011DC40 != -1)
        {
          swift_once();
        }

        sub_1000049D0(v72, qword_100120060);
        v48 = sub_1000E1EE8();
        v61 = sub_1000E2678();
        if (os_log_type_enabled(v48, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v48, v61, "[GetContactImage] Did not receive any known image types for request.", v62, 2u);
LABEL_43:
        }

LABEL_44:

        return 0;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (qword_10011DC40 != -1)
  {
LABEL_51:
    swift_once();
  }

  v52 = sub_1000E1F08();
  sub_1000049D0(v52, qword_100120060);
  v53 = v65;

  v54 = sub_1000E1EE8();
  v55 = sub_1000E2698();

  v56 = os_log_type_enabled(v54, v55);
  v57 = v64;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v82[0] = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_100029C70(v57, v53, v82);
    _os_log_impl(&_mh_execute_header, v54, v55, "[GetContactImage] No supported image types provided for image request. Retrieving avatar image for %s.", v58, 0xCu);
    sub_10000E9DC(v59);
  }

  return sub_100021588(v57, v53, 1, 0);
}

uint64_t sub_1000CE86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_1000BEBD8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000CE9D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_1000C958C();
}

uint64_t sub_1000CEA84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_1000C969C();
}

uint64_t sub_1000CEB38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_1000C958C();
}

uint64_t sub_1000CEBEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_1000C958C();
}

uint64_t sub_1000CECA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_1000C958C();
}

uint64_t sub_1000CED54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_1000C958C();
}

void sub_1000CEE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a2)
  {
  }
}

uint64_t sub_1000CEF50(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D64;

  return sub_1000BA698(a1, v1 + 16, v4);
}

uint64_t sub_1000CEFFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000252C4(a1, v4, v5, v6);
}

uint64_t sub_1000CF0D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000BA458(a1, v4, v5, v6);
}

uint64_t sub_1000CF184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000C52C0(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1000CF280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000B9F74(a1, v4, v5, v6);
}

uint64_t sub_1000CF334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000C4188(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000CF414(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002E7C;

  return sub_1000B9C60(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_1000CF5B8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000ADE4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 25) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000CF6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_10000ADE4(a4, a5) - 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  v13 = v6 + ((*(v10 + 80) + 25) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11, v12, v13);
}

void sub_1000CF7E0(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_10002A1A4(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = sub_1000E2908();
    }

    else
    {
      v3 = sub_1000E28D8();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1000D48C0(v38, v39, v40, v1, &unk_10011F930, TUHandle_ptr);
        v12 = v11;
        v13 = [v11 value];
        v14 = sub_1000E2338();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_10002A1A4((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_10000ADE4(&qword_10011FC28, &qword_1000F28B0);
          v6 = sub_1000E2618();
          sub_1000E29D8();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_10000A848(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_10000A848(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_10000A848(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
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
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1000CFB58(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_10002A1A4(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = sub_1000E2908();
    }

    else
    {
      v3 = sub_1000E28D8();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v39;
        v9 = v41;
        v36 = v40;
        v10 = v1;
        sub_1000D48C0(v39, v40, v41, v1, &qword_10011F890, TUConversationMember_ptr);
        v12 = v11;
        v13 = [v12 handle];
        v14 = [v13 value];
        v15 = sub_1000E2338();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_10002A1A4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_10000ADE4(&qword_10011F940, &unk_1000F3600);
          v6 = sub_1000E2618();
          sub_1000E29D8();
          v6(v38, 0);
          if (v5 == v34)
          {
LABEL_32:
            sub_10000A848(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v22 = 1 << *(v10 + 32);
          if (v8 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v8 >> 6;
          v24 = *(v33 + 8 * (v8 >> 6));
          if (((v24 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v8 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_10000A848(v8, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_10000A848(v8, v36, 0);
          }

LABEL_31:
          v31 = *(v10 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
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
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1000CFEF8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
    sub_1000E2628();
    v1 = v24;
    v23 = v25;
    v2 = v26;
    v3 = v27;
    v4 = v28;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v23 = a1 + 56;
    v2 = ~v5;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v4 = v7 & *(a1 + 56);

    v3 = 0;
  }

  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1000E29A8() || (sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr), swift_dynamicCast(), v13 = v29, v11 = v3, v12 = v4, !v29))
      {
LABEL_31:
        sub_1000AE20C(v1);
        return;
      }

      goto LABEL_18;
    }

    v9 = v3;
    v10 = v4;
    v11 = v3;
    if (!v4)
    {
      break;
    }

LABEL_14:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
      goto LABEL_31;
    }

LABEL_18:
    v14 = sub_1000AE1FC();

    v15 = *(v14 + 16);
    v16 = *(v8 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v17 <= *(v8 + 3) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_27;
      }

LABEL_8:

      v3 = v11;
      v4 = v12;
      if (v15)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v8 = sub_1000D2030(isUniquelyReferenced_nonNull_native, v19, 1, v8);
      if (!*(v14 + 16))
      {
        goto LABEL_8;
      }

LABEL_27:
      if ((*(v8 + 3) >> 1) - *(v8 + 2) < v15)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      v3 = v11;
      v4 = v12;
      if (v15)
      {
        v20 = *(v8 + 2);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_36;
        }

        *(v8 + 2) = v22;
        v3 = v11;
        v4 = v12;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v2 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v10 = *(v23 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1000D01E4(uint64_t a1)
{
  sub_10000CAAC(0, &qword_10011F078, IRCandidate_ptr);
  sub_10001B174(&unk_10011F080, &qword_10011F078, IRCandidate_ptr);
  v2 = 0;
  v9[1] = sub_1000E2608();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_1000D2C14(v9, *(*(a1 + 56) + ((v7 << 9) | (8 * v8))), &qword_10011F078, IRCandidate_ptr, &qword_100120308, &qword_1000F3690);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000D0350(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1000D03FC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
    sub_10001B174(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr);
    sub_1000E2628();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v27 = v17;
        v18 = a1(&v27);

        if (v4)
        {
          v19 = v21;
          goto LABEL_24;
        }

        v5 = v21;
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1000E29A8())
        {
          goto LABEL_20;
        }

        sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
        swift_dynamicCast();
        v17 = v27;
        v15 = v8;
        v16 = v9;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      v19 = v21;
LABEL_24:
      sub_1000AE20C(v19);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      sub_1000AE20C(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000D0660(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_1000E2A98();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1000E2B68();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t NCProtoContinuityCall.description.getter()
{
  v0 = sub_1000E1198();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1000E2A88(88);
  v9._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0x80000001000EC590;
  sub_1000E23A8(v9);
  v10._countAndFlagsBits = sub_1000E10D8();
  sub_1000E23A8(v10);

  v11._object = 0x80000001000EC5C0;
  v11._countAndFlagsBits = 0xD000000000000018;
  sub_1000E23A8(v11);
  v12._countAndFlagsBits = sub_1000E1158();
  sub_1000E23A8(v12);

  v13._countAndFlagsBits = 0x79616C7073696420;
  v13._object = 0xED00003D656D614ELL;
  sub_1000E23A8(v13);
  v14._countAndFlagsBits = sub_1000E10F8();
  sub_1000E23A8(v14);

  v15._countAndFlagsBits = 0x3D73757461747320;
  v15._object = 0xE800000000000000;
  sub_1000E23A8(v15);
  sub_1000E11A8();
  v4 = sub_1000E1188();
  (*(v1 + 8))(v3, v0);
  v6[1] = v4;
  v16._countAndFlagsBits = sub_1000E2C18();
  sub_1000E23A8(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  sub_1000E23A8(v17);
  return v7;
}

uint64_t sub_1000D0994(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v44 = a5;
  v36 = a4;
  v39 = a3;
  v47 = sub_1000E11C8();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000E0ED8();
  __chkstk_darwin(v41);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E0D68();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = __chkstk_darwin(v8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v38 = &v36 - v12;
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = sub_1000E1198();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a2 callUUID];
  sub_1000E2338();

  sub_1000E10E8();
  v20 = [a2 status];
  if (v20 > 6)
  {
    v21 = &enum case for NCProtoContinuityCall.Status.unknown(_:);
  }

  else
  {
    v21 = *(&off_1001168B8 + v20);
  }

  (*(v16 + 104))(v18, *v21, v15);
  sub_1000E11B8();
  [a2 isUplinkMuted];
  sub_1000E11D8();
  [a2 isSendingVideo];
  sub_1000E1138();
  if (v39)
  {
    v22 = v39;
    v23 = [v22 displayName];
    sub_1000E2338();

    sub_1000E1108();
    v24 = [v22 UUID];
    sub_1000E0D38();

    sub_1000E0D08();
    v26 = v42;
    v25 = v43;
    (*(v42 + 8))(v14, v43);
    sub_1000E1168();
  }

  else
  {
    v28 = [a2 displayName];
    sub_1000E2338();

    v27 = sub_1000E1108();
    v26 = v42;
    v25 = v43;
  }

  __chkstk_darwin(v27);
  *(&v36 - 2) = a2;
  sub_1000D4D90(&qword_100120288, &type metadata accessor for NCProtoCallInfo, &protocol conformance descriptor for NCProtoCallInfo);
  sub_1000E0E38();
  sub_1000E1178();
  v29 = [a2 callGroupUUID];
  if (v29)
  {
    v30 = v37;
    v31 = v29;
    sub_1000E0D38();

    v32 = v38;
    (*(v26 + 32))(v38, v30, v25);
    sub_1000E0D08();
    sub_1000E1148();
    (*(v26 + 8))(v32, v25);
  }

  if (v44 >> 60 != 15)
  {
    sub_1000123E0(v36, v44);
    sub_1000E11F8();
  }

  v33 = [a2 service] - 1;
  if (v33 > 2)
  {
    v34 = &enum case for NCProtoContinuityCall.Service.unknownService(_:);
  }

  else
  {
    v34 = *(&off_1001168F0 + v33);
  }

  (*(v46 + 104))(v45, *v34, v47);
  sub_1000E11E8();
  [a2 wantsHoldMusic];
  sub_1000E1128();
  [a2 isScreening];
  return sub_1000E1118();
}

uint64_t sub_1000D0F80(int a1, id a2)
{
  v3 = [a2 localizedShortName];
  sub_1000E2338();

  sub_1000E1228();
  v4 = [a2 localizedName];
  sub_1000E2338();

  return sub_1000E1218();
}

uint64_t sub_1000D102C(uint64_t a1, void *a2)
{
  v3 = sub_1000E1238();
  __chkstk_darwin(v3);
  v4 = [a2 callUUID];
  sub_1000E2338();

  sub_1000E0E88();
  v5 = [a2 localizedLabel];
  if (v5)
  {
    v6 = v5;
    sub_1000E2338();

    sub_1000E0EA8();
  }

  v7 = [a2 displayName];
  sub_1000E2338();

  sub_1000E0E58();
  sub_1000D13B0();
  sub_1000E0EC8();
  sub_1000D1590();
  sub_1000E0E78();
  sub_1000D1874();
  sub_1000E0EB8();
  v8 = [a2 provider];
  v9 = [v8 prioritizedSenderIdentities];

  v10 = [v9 count];
  if (v10 >= 2)
  {
    v11 = [a2 localSenderIdentity];
    if (v11)
    {
      v12 = __chkstk_darwin(v11);
      *(&v19 - 2) = v12;
      v13 = v12;
      sub_1000D4D90(&qword_100120290, &type metadata accessor for NCProtoSenderIdentity, &protocol conformance descriptor for NCProtoSenderIdentity);
      sub_1000E0E38();
      sub_1000E0E98();
    }
  }

  v14 = [a2 remoteParticipantHandles];
  sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
  v15 = sub_1000E25E8();

  sub_1000CF7E0(v15);
  v17 = v16;

  sub_1000D4CDC(v17);

  sub_1000E0E48();

  return sub_1000E0E68();
}

uint64_t sub_1000D13B0()
{
  v1 = sub_1000E0C38();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000ADE4(&qword_1001202A8, &unk_1000F35F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = [v0 imageURL];
  if (v8)
  {
    v9 = v8;
    sub_1000E0C28();

    (*(v2 + 32))(v7, v4, v1);
    (*(v2 + 56))(v7, 0, 1, v1);
    sub_1000D5158(v7);
    result = [v0 localizedLabel];
    if (!result)
    {
      return result;
    }

    v11 = [v0 callDirectoryName];
    if (!v11)
    {
      return 1;
    }
  }

  else
  {
    (*(v2 + 56))(v7, 1, 1, v1);
    sub_1000D5158(v7);
  }

  return 0;
}

uint64_t sub_1000D1590()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if (v2)
  {
    return [v0 isEmergency];
  }

  v4 = [v0 provider];
  v5 = [v4 isSuperboxProvider];

  if (!v5)
  {
    return 0;
  }

  result = [v0 handle];
  if (result)
  {
    v6 = result;
    v7 = [v0 provider];
    v8 = [v7 emergencyHandles];

    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    v9 = sub_1000E2468();

    v21 = v6;
    __chkstk_darwin(v10);
    v20[2] = &v21;
    LOBYTE(v7) = sub_1000D0660(sub_1000D50F0, v20, v9);

    if (v7)
    {
LABEL_19:

      return 1;
    }

    else
    {
      v11 = [v0 provider];
      v12 = [v11 emergencyLabeledHandles];

      sub_10000CAAC(0, &qword_1001202A0, TULabeledHandle_ptr);
      v13 = sub_1000E2468();

      if (v13 >> 62)
      {
LABEL_23:
        v14 = sub_1000E2B68();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      while (v14 != v15)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = sub_1000E2A98();
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v18 = [v16 handle];
        v19 = [v18 isEqualToHandle:v6];

        ++v15;
        if (v19)
        {

          goto LABEL_19;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_1000D1874()
{
  v1 = [v0 remoteParticipantHandles];
  sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
  v2 = sub_1000E25E8();

  sub_1000CFEF8(v2);
  v4 = v3;

  v5 = sub_1000D4CDC(v4);

  v6 = sub_1000206F8(v5, 0, 0, 0);

  if (v6)
  {
    sub_10000ADE4(&qword_10011DEC8, &unk_1000F35E0);
    v7 = sub_1000E2B78();
    v8 = 0;
    v9 = v6 + 64;
    v10 = 1 << *(v6 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 64);
    v13 = (v10 + 63) >> 6;
    v31 = v7 + 64;
    v32 = v7;
    if (v12)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v12));
        v33 = (v12 - 1) & v12;
LABEL_11:
        v17 = v14 | (v8 << 6);
        v18 = v6;
        v19 = (*(v6 + 48) + 16 * v17);
        v34 = v19[1];
        v35 = *v19;
        v20 = *(*(v6 + 56) + 8 * v17);

        v21 = v20;
        v22 = [v21 identifier];
        v23 = sub_1000E2338();
        v25 = v24;

        *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v26 = (v32[6] + 16 * v17);
        *v26 = v35;
        v26[1] = v34;
        v27 = (v32[7] + 16 * v17);
        *v27 = v23;
        v27[1] = v25;
        v28 = v32[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          break;
        }

        v32[2] = v30;
        v6 = v18;
        v12 = v33;
        if (!v33)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
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

          return;
        }

        v16 = *(v9 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v33 = (v16 - 1) & v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    sub_10000C854(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000D1B24(uint64_t a1, void *a2)
{
  v34 = sub_1000E1CC8();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000E15C8();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000E13C8();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000E0D68();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 UUID];
  sub_1000E0D38();

  sub_1000E0D08();
  (*(v10 + 8))(v12, v9);
  sub_1000E1458();
  v14 = [a2 displayName];
  sub_1000E2338();

  sub_1000E1468();
  v15 = [a2 state];
  if (v15 > 4)
  {
    v16 = &enum case for NCProtoConversationState.unknownState(_:);
  }

  else
  {
    v16 = *(&off_100116908 + v15);
  }

  (*(v6 + 104))(v8, *v16, v28);
  sub_1000E14B8();
  v17 = [a2 resolvedAudioVideoMode];
  v18 = &enum case for NCProtoConversationAVMode.audio(_:);
  v19 = &enum case for NCProtoConversationAVMode.none(_:);
  if (v17)
  {
    v19 = &enum case for NCProtoConversationAVMode.video(_:);
  }

  if (v17 != 1)
  {
    v18 = v19;
  }

  (*(v30 + 104))(v29, *v18, v31);
  sub_1000E14C8();
  v20 = [a2 letMeInRequestState];
  if (v20 > 3)
  {
    v21 = &enum case for NCProtoConversationLetMeInRequestState.unknownLmiState(_:);
  }

  else
  {
    v21 = *(&off_100116930 + v20);
  }

  (*(v33 + 104))(v32, *v21, v34);
  sub_1000E1498();
  v22 = [a2 mergedRemoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10001B174(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  v23 = sub_1000E25E8();

  if ((v23 & 0xC000000000000001) != 0 && sub_1000E2968() < 0)
  {
    __break(1u);
  }

  sub_1000E1488();
  sub_100020B10(v23);
  sub_1000E14A8();
  sub_1000CFB58(v23);
  v25 = v24;

  sub_1000D4CDC(v25);

  sub_1000E0E48();

  return sub_1000E1478();
}

char *sub_1000D2030(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
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

char *sub_1000D213C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE4(&qword_1001202C8, &qword_1000F3630);
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

char *sub_1000D2270(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE4(&qword_10011ED80, &qword_1000F11C0);
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

void *sub_1000D237C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000ADE4(&qword_10011FF18, &qword_1000F2E68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000ADE4(&unk_100120208, &qword_1000F3660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000D24B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE4(&qword_1001202E0, &unk_1000F3650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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