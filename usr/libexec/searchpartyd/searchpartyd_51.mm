uint64_t sub_1005B49AC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1005B52D8;
  }

  else
  {
    v4 = sub_1005B4AD8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005B4AD8()
{
  v1 = v0[27];
  sub_1005C32E0(v0[21], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005B4C04()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 224);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  (*(v0 + 232))(v3, *(v0 + 32), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 320) = v9;
  *(v9 + 16) = v2;
  (*(v5 + 32))(v9 + v7, v3, v6);
  *(v9 + v8) = v1;

  v10 = swift_task_alloc();
  *(v0 + 328) = v10;
  *v10 = v0;
  v10[1] = sub_1005B4D74;
  v11 = *(v0 + 264);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v9, v11);
}

uint64_t sub_1005B4D74()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_1005B4EA0, v1, 0);
}

uint64_t sub_1005B4EA0()
{
  v1 = v0[8];
  v0[42] = v0[3];
  return _swift_task_switch(sub_1005B4EC4, v1, 0);
}

uint64_t sub_1005B4EC4()
{
  v1 = v0[42];
  if (*(v1 + 16))
  {
    v2 = *(v0[17] + 80);
    sub_1005C31F8(v1 + ((v2 + 32) & ~v2), v0[19], type metadata accessor for OwnerSharingCircle);

    v3 = swift_task_alloc();
    v0[43] = v3;
    *v3 = v0;
    v3[1] = sub_1005B509C;
    v6 = v0[19];
    v7 = v0[7];

    return sub_1005C10E4(v6, v4, v5, v7);
  }

  else
  {
    sub_10000B3A8(v0[27], &unk_1016AFA00, &qword_10138C4D0);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1005B509C()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1005B51AC, v1, 0);
}

uint64_t sub_1005B51AC()
{
  v1 = v0[27];
  sub_1005C32E0(v0[19], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005B52D8()
{
  v31 = v0;
  v1 = v0[29];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[4];
  sub_1005C31F8(v0[21], v0[18], type metadata accessor for OwnerSharingCircle);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v29 = v0[36];
    v7 = v0[18];
    v8 = v0[9];
    v28 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v9 = 141559043;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
    v14 = sub_1000136BC(v11, v13, v30);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v29(v28, v8);
    v18 = sub_1000136BC(v15, v17, v30);

    *(v9 + 34) = v18;
    *(v9 + 42) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 44) = v19;
    *v10 = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error stopping delegated sharing of share id %{private,mask.hash}s, beacon id %{private,mask.hash}s due to %{public}@.", v9, 0x34u);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v20 = v0[36];
    v21 = v0[18];
    v22 = v0[12];
    v23 = v0[9];

    v20(v22, v23);
    sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
  }

  v24 = v0[27];
  v25 = v0[21];
  swift_willThrow();
  sub_1005C32E0(v25, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v24, &unk_1016AFA00, &qword_10138C4D0);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1005B56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v8 = type metadata accessor for OwnerSharingCircle(0);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v5[26] = *(v10 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v5[29] = v11;
  v5[30] = *(v11 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[36] = v12;
  *v12 = v5;
  v12[1] = sub_1005B5954;

  return sub_1005C10E4(a1, v13, v14, a4);
}

uint64_t sub_1005B5954()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_1005B5A64, v1, 0);
}

uint64_t sub_1005B5A64()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(*(v0 + 112) + 168);
  *(v0 + 296) = v3;
  *(v0 + 304) = sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
  *(v0 + 312) = *(v1 + 72);
  v4 = *(v1 + 80);
  *(v0 + 528) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 320) = v6;
  *(v6 + 16) = xmmword_101385D80;
  sub_1005C31F8(v2, v6 + v5, type metadata accessor for OwnerSharingCircle);

  return _swift_task_switch(sub_1005B5B50, v3, 0);
}

uint64_t sub_1005B5B50()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = swift_allocObject();
  v0[41] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[42] = v4;
  v5 = sub_1000BC4D4(&qword_1016A5418, &qword_1013B26F0);
  *v4 = v0;
  v4[1] = sub_1005B5C6C;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1005C3A54, v3, v5);
}

uint64_t sub_1005B5C6C()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_1005B5D98, v1, 0);
}

uint64_t sub_1005B5D98()
{
  v1 = v0[14];
  v0[43] = v0[7];
  return _swift_task_switch(sub_1005B5DBC, v1, 0);
}

uint64_t sub_1005B5DBC()
{
  v57 = v0;
  v1 = *(v0 + 344);
  v2 = *(v1 + 16);
  *(v0 + 352) = v2;
  if (v2)
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v5 = *(v0 + 120);
    *(v0 + 360) = 0;
    if (*(v1 + 16))
    {
      v6 = *(v0 + 272);
      v7 = *(v0 + 280);
      v8 = *(v0 + 264);
      sub_1000D2A70(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v7, &qword_10169EFA8, &qword_1013B2700);
      v9 = *(v4 + 48);
      v10 = *(v7 + v9);
      v11 = *(v4 + 64);
      v12 = *(v7 + v11);
      sub_1005C3260(v7, v6, type metadata accessor for OwnerSharingCircle);
      *(v6 + v9) = v10;
      *(v6 + v11) = v12;
      sub_1000D2A70(v6, v8, &qword_10169EFA8, &qword_1013B2700);

      LODWORD(v7) = *(v8 + *(v5 + 28));
      sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
      if (v7 == 3)
      {
        v13 = *(v0 + 104);
        v14 = *(v0 + 112);
        if (v13 >= 4)
        {
          v15 = 2;
        }

        else
        {
          v15 = 0x30100u >> (8 * v13);
        }

        *(v0 + 536) = v15;
        v16 = *(v0 + 256);
        v17 = *(v0 + 224);
        v18 = *(v0 + 192);
        v19 = *(v0 + 200);
        v20 = *(v0 + 120);
        sub_1000D2A70(*(v0 + 272), v16, &qword_10169EFA8, &qword_1013B2700);

        (*(v19 + 16))(v17, v16 + *(v20 + 20), v18);
        sub_1005C32E0(v16, type metadata accessor for OwnerSharingCircle);
        v21 = v14[17];
        v22 = v14[19];
        v23 = sub_1000035D0(v14 + 14, v21);
        *(v0 + 40) = v21;
        *(v0 + 48) = v22;
        v24 = sub_1000280DC((v0 + 16));
        (*(*(v21 - 8) + 16))(v24, v23, v21);

        return _swift_task_switch(sub_1005B64BC, 0, 0);
      }

      if (qword_101694778 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_14:
    v27 = *(v0 + 272);
    v28 = *(v0 + 248);
    v29 = *(v0 + 184);
    v30 = *(v0 + 80);
    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177AE28);
    sub_1000D2A70(v27, v28, &qword_10169EFA8, &qword_1013B2700);
    sub_1005C31F8(v30, v29, type metadata accessor for OwnerSharingCircle);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 272);
    if (v34)
    {
      v36 = *(v0 + 264);
      v37 = *(v0 + 248);
      v52 = v33;
      v38 = *(v0 + 216);
      v39 = *(v0 + 192);
      v40 = *(v0 + 200);
      v53 = *(v0 + 184);
      v41 = *(v0 + 120);
      v55 = *(v0 + 272);
      v42 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = v54;
      *v42 = 141558787;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      sub_1000D2A70(v37, v36, &qword_10169EFA8, &qword_1013B2700);

      (*(v40 + 16))(v38, v36 + *(v41 + 24), v39);
      sub_1005C32E0(v36, type metadata accessor for OwnerSharingCircle);
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v40 + 8))(v38, v39);
      sub_10000B3A8(v37, &qword_10169EFA8, &qword_1013B2700);
      v46 = sub_1000136BC(v43, v45, &v56);

      *(v42 + 14) = v46;
      *(v42 + 22) = 2160;
      *(v42 + 24) = 1752392040;
      *(v42 + 32) = 2049;
      v47 = *(v53 + *(v41 + 28));
      sub_1005C32E0(v53, type metadata accessor for OwnerSharingCircle);
      *(v42 + 34) = v47;
      _os_log_impl(&_mh_execute_header, v32, v52, "ERROR - stop delegated share of beacon %{private,mask.hash}s\nhas circle of wrong sharing type: %{private,mask.hash}ld", v42, 0x2Au);
      sub_100007BAC(v54);

      v48 = v55;
    }

    else
    {
      v49 = *(v0 + 248);
      sub_1005C32E0(*(v0 + 184), type metadata accessor for OwnerSharingCircle);

      sub_10000B3A8(v49, &qword_10169EFA8, &qword_1013B2700);
      v48 = v35;
    }

    sub_10000B3A8(v48, &qword_10169EFA8, &qword_1013B2700);

    v50 = *(v0 + 8);

    return v50();
  }

  v25 = swift_task_alloc();
  *(v0 + 384) = v25;
  *v25 = v0;
  v25[1] = sub_1005B75B4;
  v26 = *(v0 + 80);

  return sub_1005B9D78(v26);
}

uint64_t sub_1005B64BC()
{
  sub_1000035D0((v0 + 16), *(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_1005B6568;
  v2 = *(v0 + 224);
  v3 = *(v0 + 536);

  return sub_100640C34(v2, 4, v3);
}

uint64_t sub_1005B6568(char a1)
{
  v4 = *v2;

  if (v1)
  {
    *(v4 + 376) = v1;
    v5 = *(v4 + 112);
    (*(*(v4 + 200) + 8))(*(v4 + 224), *(v4 + 192));
    v6 = sub_1005B6EE8;
    v7 = v5;
  }

  else
  {
    *(v4 + 537) = a1 & 1;
    v6 = sub_1005B66BC;
    v7 = 0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1005B66BC()
{
  if (*(v0 + 537) == 1)
  {
    v1 = *(v0 + 112);
    (*(*(v0 + 200) + 8))(*(v0 + 224), *(v0 + 192));
    sub_100007BAC((v0 + 16));
    v2 = sub_1005B67B0;
  }

  else
  {
    sub_100111BE4();
    v3 = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    *(v0 + 376) = v3;
    v1 = *(v0 + 112);
    (*(*(v0 + 200) + 8))(*(v0 + 224), *(v0 + 192));
    v2 = sub_1005B6EE8;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_1005B67B0()
{
  v58 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360) + 1;
  sub_10000B3A8(*(v0 + 272), &qword_10169EFA8, &qword_1013B2700);
  if (v2 == v1)
  {
    v3 = swift_task_alloc();
    *(v0 + 384) = v3;
    *v3 = v0;
    v3[1] = sub_1005B75B4;
    v4 = *(v0 + 80);

    return sub_1005B9D78(v4);
  }

  v6 = *(v0 + 360) + 1;
  *(v0 + 360) = v6;
  v7 = *(v0 + 344);
  if (v6 >= *(v7 + 16))
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_14;
  }

  v9 = *(v0 + 272);
  v8 = *(v0 + 280);
  v10 = *(v0 + 264);
  v11 = *(v0 + 232);
  v55 = *(v0 + 120);
  sub_1000D2A70(v7 + ((*(*(v0 + 240) + 80) + 32) & ~*(*(v0 + 240) + 80)) + *(*(v0 + 240) + 72) * v6, v8, &qword_10169EFA8, &qword_1013B2700);
  v12 = *(v11 + 48);
  v13 = *(v8 + v12);
  v14 = *(v11 + 64);
  v15 = *(v8 + v14);
  sub_1005C3260(v8, v9, type metadata accessor for OwnerSharingCircle);
  *(v9 + v12) = v13;
  *(v9 + v14) = v15;
  sub_1000D2A70(v9, v10, &qword_10169EFA8, &qword_1013B2700);

  LODWORD(v8) = *(v10 + *(v55 + 28));
  sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
  if (v8 == 3)
  {
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    if (v16 >= 4)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0x30100u >> (8 * v16);
    }

    *(v0 + 536) = v18;
    v19 = *(v0 + 256);
    v20 = *(v0 + 224);
    v21 = *(v0 + 192);
    v22 = *(v0 + 200);
    v23 = *(v0 + 120);
    sub_1000D2A70(*(v0 + 272), v19, &qword_10169EFA8, &qword_1013B2700);

    (*(v22 + 16))(v20, v19 + *(v23 + 20), v21);
    sub_1005C32E0(v19, type metadata accessor for OwnerSharingCircle);
    v24 = v17[17];
    v25 = v17[19];
    v26 = sub_1000035D0(v17 + 14, v24);
    *(v0 + 40) = v24;
    *(v0 + 48) = v25;
    v27 = sub_1000280DC((v0 + 16));
    (*(*(v24 - 8) + 16))(v27, v26, v24);

    return _swift_task_switch(sub_1005B64BC, 0, 0);
  }

  if (qword_101694778 != -1)
  {
    goto LABEL_21;
  }

LABEL_14:
  v28 = *(v0 + 272);
  v29 = *(v0 + 248);
  v30 = *(v0 + 184);
  v31 = *(v0 + 80);
  v32 = type metadata accessor for Logger();
  sub_1000076D4(v32, qword_10177AE28);
  sub_1000D2A70(v28, v29, &qword_10169EFA8, &qword_1013B2700);
  sub_1005C31F8(v31, v30, type metadata accessor for OwnerSharingCircle);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 272);
  if (v35)
  {
    v37 = *(v0 + 264);
    v38 = *(v0 + 248);
    v52 = v34;
    v39 = *(v0 + 216);
    v40 = *(v0 + 192);
    v41 = *(v0 + 200);
    v53 = *(v0 + 184);
    v42 = *(v0 + 120);
    v56 = *(v0 + 272);
    v43 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57 = v54;
    *v43 = 141558787;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    sub_1000D2A70(v38, v37, &qword_10169EFA8, &qword_1013B2700);

    (*(v41 + 16))(v39, v37 + *(v42 + 24), v40);
    sub_1005C32E0(v37, type metadata accessor for OwnerSharingCircle);
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    (*(v41 + 8))(v39, v40);
    sub_10000B3A8(v38, &qword_10169EFA8, &qword_1013B2700);
    v47 = sub_1000136BC(v44, v46, &v57);

    *(v43 + 14) = v47;
    *(v43 + 22) = 2160;
    *(v43 + 24) = 1752392040;
    *(v43 + 32) = 2049;
    v48 = *(v53 + *(v42 + 28));
    sub_1005C32E0(v53, type metadata accessor for OwnerSharingCircle);
    *(v43 + 34) = v48;
    _os_log_impl(&_mh_execute_header, v33, v52, "ERROR - stop delegated share of beacon %{private,mask.hash}s\nhas circle of wrong sharing type: %{private,mask.hash}ld", v43, 0x2Au);
    sub_100007BAC(v54);

    v49 = v56;
  }

  else
  {
    v50 = *(v0 + 248);
    sub_1005C32E0(*(v0 + 184), type metadata accessor for OwnerSharingCircle);

    sub_10000B3A8(v50, &qword_10169EFA8, &qword_1013B2700);
    v49 = v36;
  }

  sub_10000B3A8(v49, &qword_10169EFA8, &qword_1013B2700);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1005B6EE8()
{
  v37 = v0;
  v1 = v0[47];
  sub_10000B3A8(v0[34], &qword_10169EFA8, &qword_1013B2700);
  sub_100007BAC(v0 + 2);
  v0[8] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v2 = v0[18];
    v3 = v0[10];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177AE28);
    sub_1005C31F8(v3, v2, type metadata accessor for OwnerSharingCircle);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[18];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36[0] = v10;
      *v8 = 141558531;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
      v14 = sub_1000136BC(v11, v13, v36);

      *(v8 + 14) = v14;
      *(v8 + 22) = 2114;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v15;
      *v9 = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Server share %{private,mask.hash}s is already revoked: %{public}@", v8, 0x20u);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v10);
    }

    else
    {
      v30 = v0[18];

      sub_1005C32E0(v30, type metadata accessor for OwnerSharingCircle);
    }

    v31 = swift_task_alloc();
    v0[48] = v31;
    *v31 = v0;
    v31[1] = sub_1005B75B4;
    v32 = v0[10];

    return sub_1005B9D78(v32);
  }

  else
  {

    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v16 = v0[19];
    v17 = v0[10];
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177AE28);
    sub_1005C31F8(v17, v16, type metadata accessor for OwnerSharingCircle);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[19];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36[0] = v24;
      *v22 = 141558531;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
      v28 = sub_1000136BC(v25, v27, v36);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2114;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v29;
      *v23 = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failure on delegate share stop %{private,mask.hash}s, server share deletion: %{public}@.", v22, 0x20u);
      sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v24);
    }

    else
    {
      v34 = v0[19];

      sub_1005C32E0(v34, type metadata accessor for OwnerSharingCircle);
    }

    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_1005B75B4()
{
  v2 = *v1;
  v2[49] = v0;

  if (v0)
  {
    v3 = v2[14];

    return _swift_task_switch(sub_1005B91A8, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[50] = v4;
    *v4 = v2;
    v4[1] = sub_1005B7728;
    v5 = v2[43];

    return sub_1005BA51C(v5);
  }
}

uint64_t sub_1005B7728()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 80);
  v4 = *v0;

  v5 = *(v2 + 20);
  v6 = swift_task_alloc();
  *(v1 + 408) = v6;
  *v6 = v4;
  v6[1] = sub_1005B78C0;

  return sub_1005C07B4(v3 + v5);
}

uint64_t sub_1005B78C0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 416) = v6;
    *v6 = v3;
    v6[1] = sub_1005B7AEC;

    return sub_1005BB5F0();
  }
}

uint64_t sub_1005B7AEC()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_1005B7BFC, v1, 0);
}

uint64_t sub_1005B7BFC()
{
  v1 = *(v0 + 296);
  *(v0 + 532) = *(*(v0 + 120) + 24);
  *(v0 + 424) = sub_100B08164(&off_101608BB8);

  return _swift_task_switch(sub_1005B7C7C, v1, 0);
}

uint64_t sub_1005B7C7C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 296);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  (*(v6 + 16))(v4, *(v0 + 80) + *(v0 + 532), v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 432) = v9;
  *(v9 + 16) = v2;
  (*(v6 + 32))(v9 + v7, v4, v5);
  *(v9 + v8) = v1;

  v10 = swift_task_alloc();
  *(v0 + 440) = v10;
  v11 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v10 = v0;
  v10[1] = sub_1005B7E10;

  return unsafeBlocking<A>(context:_:)(v0 + 72, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v9, v11);
}

uint64_t sub_1005B7E10()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_1005B7F3C, v1, 0);
}

uint64_t sub_1005B7F3C()
{
  v1 = v0[14];
  v0[56] = v0[9];
  return _swift_task_switch(sub_1005B7F60, v1, 0);
}

uint64_t sub_1005B7F60()
{
  v29 = v0;
  v1 = *(v0 + 448);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 112);
    sub_1005C31F8(v1 + ((*(v0 + 528) + 32) & ~*(v0 + 528)), v2, type metadata accessor for OwnerSharingCircle);

    sub_1005C3260(v2, v3, type metadata accessor for OwnerSharingCircle);
    sub_1000035D0((v4 + 272), *(v4 + 296));
    v5 = swift_task_alloc();
    *(v0 + 456) = v5;
    *v5 = v0;
    v5[1] = sub_1005B8488;
    v6 = *(v0 + 176);

    return sub_1007256F8(v6, 0);
  }

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 160);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177AE28);
  sub_1005C31F8(v11, v8, type metadata accessor for OwnerSharingCircle);
  sub_1003CB5AC(v12, v10, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_1005C339C(v12, v10, v9);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 160);
    v17 = *(v0 + 104);
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v18 = 141558787;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1005C32E0(v16, type metadata accessor for OwnerSharingCircle);
    v22 = sub_1000136BC(v19, v21, &v28);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2160;
    *(v18 + 24) = 1752392040;
    *(v18 + 32) = 2081;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v24 = 0xED00006465726970;
        v23 = 0x7865206572616873;
        goto LABEL_19;
      }

      if (v17 == 3)
      {
        v24 = 0xEE00797469726765;
        v23 = 0x746E692061746164;
        goto LABEL_19;
      }
    }

    else
    {
      if (!v17)
      {
        v24 = 0xEB00000000706F74;
        v23 = 0x73206C61756E616DLL;
        goto LABEL_19;
      }

      if (v17 == 1)
      {
        v23 = 0xD000000000000018;
        v24 = 0x800000010135B460;
LABEL_19:
        v26 = sub_1000136BC(v23, v24, &v28);

        *(v18 + 34) = v26;
        _os_log_impl(&_mh_execute_header, v14, v15, "Successfully marked delegated sharing of %{private,mask.hash}s as tentative\ndue to reason %{private,mask.hash}s.", v18, 0x2Au);
        swift_arrayDestroy();

        goto LABEL_20;
      }
    }

    v24 = 0x800000010135B440;
    v23 = 0xD000000000000019;
    goto LABEL_19;
  }

  v25 = *(v0 + 160);

  sub_1005C32E0(v25, type metadata accessor for OwnerSharingCircle);
LABEL_20:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1005B8488()
{
  v2 = *v1;
  v2[58] = v0;

  if (v0)
  {
    v3 = v2[14];

    return _swift_task_switch(sub_1005B8934, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[59] = v4;
    *v4 = v2;
    v4[1] = sub_1005B85F4;

    return daemon.getter();
  }
}

uint64_t sub_1005B85F4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 480) = a1;

  v3 = swift_task_alloc();
  *(v2 + 488) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CircleTrustService();
  v6 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194B0(&unk_101698CE0, type metadata accessor for CircleTrustService, &unk_1013E49D8);
  *v3 = v9;
  v3[1] = sub_1005B87D0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005B87D0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 496) = a1;

  v4 = *(v3 + 112);
  if (v1)
  {

    v5 = sub_1005B92C8;
  }

  else
  {

    v5 = sub_1005B8A68;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005B8934()
{
  sub_1005C32E0(*(v0 + 176), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B8A68()
{
  v1 = *(v0 + 176);
  v2 = (*(v0 + 528) + 32) & ~*(v0 + 528);
  v3 = swift_allocObject();
  *(v0 + 504) = v3;
  *(v3 + 16) = xmmword_101385D80;
  sub_1005C31F8(v1, v3 + v2, type metadata accessor for OwnerSharingCircle);

  v4 = swift_task_alloc();
  *(v0 + 512) = v4;
  *v4 = v0;
  v4[1] = sub_1005B8B68;

  return sub_100D276D8(v3);
}

uint64_t sub_1005B8B68()
{
  v2 = *v1;
  *(v2 + 520) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 528);
  v5 = *(v2 + 112);
  if (v0)
  {
    swift_setDeallocating();
    sub_1005C32E0(v3 + ((v4 + 32) & ~v4), type metadata accessor for OwnerSharingCircle);
    swift_deallocClassInstance();

    v6 = sub_1005B970C;
  }

  else
  {

    swift_setDeallocating();
    sub_1005C32E0(v3 + ((v4 + 32) & ~v4), type metadata accessor for OwnerSharingCircle);
    swift_deallocClassInstance();
    v6 = sub_1005B8D58;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005B8D58()
{
  v24 = v0;
  v1 = v0[22];

  sub_1005C32E0(v1, type metadata accessor for OwnerSharingCircle);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AE28);
  sub_1005C31F8(v5, v2, type metadata accessor for OwnerSharingCircle);
  sub_1003CB5AC(v6, v4, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_1005C339C(v6, v4, v3);
  if (!os_log_type_enabled(v8, v9))
  {
    v19 = v0[20];

    sub_1005C32E0(v19, type metadata accessor for OwnerSharingCircle);
    goto LABEL_16;
  }

  v10 = v0[20];
  v11 = v0[13];
  v12 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *v12 = 141558787;
  *(v12 + 4) = 1752392040;
  *(v12 + 12) = 2081;
  sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
  v16 = sub_1000136BC(v13, v15, &v23);

  *(v12 + 14) = v16;
  *(v12 + 22) = 2160;
  *(v12 + 24) = 1752392040;
  *(v12 + 32) = 2081;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v18 = 0xED00006465726970;
      v17 = 0x7865206572616873;
      goto LABEL_15;
    }

    if (v11 == 3)
    {
      v18 = 0xEE00797469726765;
      v17 = 0x746E692061746164;
      goto LABEL_15;
    }

LABEL_12:
    v18 = 0x800000010135B440;
    v17 = 0xD000000000000019;
    goto LABEL_15;
  }

  if (!v11)
  {
    v18 = 0xEB00000000706F74;
    v17 = 0x73206C61756E616DLL;
    goto LABEL_15;
  }

  if (v11 != 1)
  {
    goto LABEL_12;
  }

  v17 = 0xD000000000000018;
  v18 = 0x800000010135B460;
LABEL_15:
  v20 = sub_1000136BC(v17, v18, &v23);

  *(v12 + 34) = v20;
  _os_log_impl(&_mh_execute_header, v8, v9, "Successfully marked delegated sharing of %{private,mask.hash}s as tentative\ndue to reason %{private,mask.hash}s.", v12, 0x2Au);
  swift_arrayDestroy();

LABEL_16:

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005B91A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B92C8()
{
  v23 = v0;
  sub_1005C32E0(v0[22], type metadata accessor for OwnerSharingCircle);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE28);
  sub_1005C31F8(v4, v1, type metadata accessor for OwnerSharingCircle);
  sub_1003CB5AC(v5, v3, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_1005C339C(v5, v3, v2);
  if (!os_log_type_enabled(v7, v8))
  {
    v18 = v0[20];

    sub_1005C32E0(v18, type metadata accessor for OwnerSharingCircle);
    goto LABEL_16;
  }

  v9 = v0[20];
  v10 = v0[13];
  v11 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  *v11 = 141558787;
  *(v11 + 4) = 1752392040;
  *(v11 + 12) = 2081;
  sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;
  sub_1005C32E0(v9, type metadata accessor for OwnerSharingCircle);
  v15 = sub_1000136BC(v12, v14, &v22);

  *(v11 + 14) = v15;
  *(v11 + 22) = 2160;
  *(v11 + 24) = 1752392040;
  *(v11 + 32) = 2081;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v17 = 0xED00006465726970;
      v16 = 0x7865206572616873;
      goto LABEL_15;
    }

    if (v10 == 3)
    {
      v17 = 0xEE00797469726765;
      v16 = 0x746E692061746164;
      goto LABEL_15;
    }

LABEL_12:
    v17 = 0x800000010135B440;
    v16 = 0xD000000000000019;
    goto LABEL_15;
  }

  if (!v10)
  {
    v17 = 0xEB00000000706F74;
    v16 = 0x73206C61756E616DLL;
    goto LABEL_15;
  }

  if (v10 != 1)
  {
    goto LABEL_12;
  }

  v16 = 0xD000000000000018;
  v17 = 0x800000010135B460;
LABEL_15:
  v19 = sub_1000136BC(v16, v17, &v22);

  *(v11 + 34) = v19;
  _os_log_impl(&_mh_execute_header, v7, v8, "Successfully marked delegated sharing of %{private,mask.hash}s as tentative\ndue to reason %{private,mask.hash}s.", v11, 0x2Au);
  swift_arrayDestroy();

LABEL_16:

  v20 = v0[1];

  return v20();
}

uint64_t sub_1005B970C()
{
  v41 = v0;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = v0[10];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE28);
  sub_1005C31F8(v3, v2, type metadata accessor for OwnerSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v38 = v0[22];
    v7 = v0[17];
    v39 = v4;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
    v13 = v10;
    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
    v14 = sub_1000136BC(v13, v12, &v40);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to send delegation stop update to sharees for the beacon: %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);

    v4 = v39;

    v15 = v38;
  }

  else
  {
    v16 = v0[22];
    v17 = v0[17];

    sub_1005C32E0(v17, type metadata accessor for OwnerSharingCircle);
    v15 = v16;
  }

  sub_1005C32E0(v15, type metadata accessor for OwnerSharingCircle);
  if (p_weak_ivar_lyt[239] != -1)
  {
    swift_once();
  }

  v18 = v0[20];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[10];
  v22 = v0[11];
  sub_1000076D4(v4, qword_10177AE28);
  sub_1005C31F8(v21, v18, type metadata accessor for OwnerSharingCircle);
  sub_1003CB5AC(v22, v20, v19);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  sub_1005C339C(v22, v20, v19);
  if (!os_log_type_enabled(v23, v24))
  {
    v34 = v0[20];

    sub_1005C32E0(v34, type metadata accessor for OwnerSharingCircle);
    goto LABEL_21;
  }

  v25 = v0[20];
  v26 = v0[13];
  v27 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  *v27 = 141558787;
  *(v27 + 4) = 1752392040;
  *(v27 + 12) = 2081;
  sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  sub_1005C32E0(v25, type metadata accessor for OwnerSharingCircle);
  v31 = sub_1000136BC(v28, v30, &v40);

  *(v27 + 14) = v31;
  *(v27 + 22) = 2160;
  *(v27 + 24) = 1752392040;
  *(v27 + 32) = 2081;
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v33 = 0xED00006465726970;
      v32 = 0x7865206572616873;
      goto LABEL_20;
    }

    if (v26 == 3)
    {
      v33 = 0xEE00797469726765;
      v32 = 0x746E692061746164;
      goto LABEL_20;
    }

LABEL_17:
    v33 = 0x800000010135B440;
    v32 = 0xD000000000000019;
    goto LABEL_20;
  }

  if (!v26)
  {
    v33 = 0xEB00000000706F74;
    v32 = 0x73206C61756E616DLL;
    goto LABEL_20;
  }

  if (v26 != 1)
  {
    goto LABEL_17;
  }

  v32 = 0xD000000000000018;
  v33 = 0x800000010135B460;
LABEL_20:
  v35 = sub_1000136BC(v32, v33, &v40);

  *(v27 + 34) = v35;
  _os_log_impl(&_mh_execute_header, v23, v24, "Successfully marked delegated sharing of %{private,mask.hash}s as tentative\ndue to reason %{private,mask.hash}s.", v27, 0x2Au);
  swift_arrayDestroy();

LABEL_21:

  v36 = v0[1];

  return v36();
}

uint64_t sub_1005B9D78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for OwnerSharingCircle(0);
  v2[5] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005B9E44, v1, 0);
}

uint64_t sub_1005B9E44()
{
  v1 = v0[6];
  v2 = v0[2];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_1005C33D0, v1);

  v3 = *(v0[3] + 168);
  v0[7] = v3;

  return _swift_task_switch(sub_1005B9F44, v3, 0);
}

uint64_t sub_1005B9F6C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1005BA064;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_1005BA064()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1005BA42C;
  }

  else
  {

    v2 = sub_1005BA180;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005BA19C()
{
  v18 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[5];
  v7 = v0[6];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
    v14 = sub_1000136BC(v11, v13, &v17);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Acceptance state changed to .tentativelyRevoked\nfor delegated circle: %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
  }

  sub_10000B3A8(v7, &qword_1016975C8, &qword_10138C1F0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005BA42C()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1005BA498, v1, 0);
}

uint64_t sub_1005BA498()
{
  sub_10000B3A8(*(v0 + 48), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005BA51C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for OwnerSharingCircle(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1005BA6F4, v1, 0);
}

uint64_t sub_1005BA6F4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 152) = v2;
  v3 = *(v0 + 144);
  if (v2)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v6 + 48);
    *(v0 + 232) = v7;
    v8 = *(v6 + 64);
    *(v0 + 236) = v8;
    v20 = v5;
    v21 = *(v4 + 168);
    *(v0 + 160) = v21;
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    LODWORD(v5) = *(v9 + 80);
    *(v0 + 240) = v5;
    v11 = *(v9 + 72);
    *(v0 + 244) = enum case for Connection.TransactionMode.deferred(_:);
    v19 = *(v0 + 88);
    *(v0 + 168) = v11;
    *(v0 + 176) = 0;
    *(v0 + 184) = 0;
    v12 = *(v0 + 136);
    sub_1000D2A70(v1 + ((v5 + 32) & ~v5), v3, &qword_10169EFA8, &qword_1013B2700);
    v13 = *(v3 + v7);
    v14 = *(v3 + v8);
    v15 = *(v6 + 48);
    v16 = *(v6 + 64);
    sub_1005C3260(v3, v12, type metadata accessor for OwnerSharingCircle);
    *(v12 + v15) = v13;
    *(v12 + v16) = v14;
    sub_1000D2A70(v12, v10, &qword_10169EFA8, &qword_1013B2700);

    sub_1005C3260(v10, v20, type metadata accessor for OwnerSharingCircle);
    *(v0 + 248) = *(v19 + 20);

    return _swift_task_switch(sub_1005BA91C, v21, 0);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1005BA91C()
{

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1005BA9FC;
  v3 = *(v0 + 160);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1005BA9FC()
{
  v1 = *(*v0 + 160);

  return _swift_task_switch(sub_1005BAB14, v1, 0);
}

uint64_t sub_1005BAB14()
{
  v1 = v0[4];
  v0[25] = v0[2];
  return _swift_task_switch(sub_1005BAB38, v1, 0);
}

uint64_t sub_1005BAB38()
{
  v1 = *(*(v0 + 200) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  *(v0 + 208) = v1;

  return _swift_task_switch(sub_1005BABC0, v1, 0);
}

uint64_t sub_1005BABC0()
{
  v1 = *(*(v0 + 208) + 112);
  if (!v1)
  {
    sub_10020223C();
    v16 = swift_allocError();
    *v22 = 2;
    *(v22 + 4) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v2 = *(v1 + 32);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3 != 1 || (v4 = sub_1000194B0(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0), v5 = *(v4 + 16), v6 = type metadata accessor for ItemSharingKeyDatabase(0), (v7 = v5(v6, v4)) == 0))
  {
    sub_10020223C();
    v16 = swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();

LABEL_8:

    goto LABEL_9;
  }

  v30 = *(v0 + 176);
  v28 = *(v0 + 244);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  v27 = *(v0 + 40);
  v13 = *(v0 + 104) + *(v0 + 248);
  v14 = *(v7 + 24);

  (*(v8 + 16))(v9, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret, v10);
  v15 = swift_task_alloc();
  v15[2] = v9;
  v15[3] = v13;
  v15[4] = v14;
  (*(v12 + 104))(v11, v28, v27);
  Connection.transaction(_:block:)();
  v16 = v30;
  *(v0 + 216) = v30;
  v17 = *(v0 + 72);
  v18 = *(v0 + 56);
  v29 = *(v0 + 64);
  v31 = *(v0 + 80);
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  if (v16)
  {

    (*(v19 + 8))(v18, v20);

    (*(v17 + 8))(v31, v29);
LABEL_9:
    *(v0 + 224) = v16;
    v23 = *(v0 + 32);
    v24 = sub_1005BB138;
    goto LABEL_10;
  }

  v25 = *(v0 + 32);

  (*(v19 + 8))(v18, v20);

  (*(v17 + 8))(v31, v29);
  v24 = sub_1005BAF00;
  v23 = v25;
LABEL_10:

  return _swift_task_switch(v24, v23, 0);
}

uint64_t sub_1005BAF00()
{
  v1 = *(v0 + 104);
  sub_10000B3A8(*(v0 + 136), &qword_10169EFA8, &qword_1013B2700);
  sub_1005C32E0(v1, type metadata accessor for OwnerSharingCircle);
  v2 = *(v0 + 184) + 1;
  if (v2 == *(v0 + 152))
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 176) = *(v0 + 216);
    *(v0 + 184) = v2;
    v17 = *(v0 + 160);
    v6 = *(v0 + 232);
    v5 = *(v0 + 236);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 128);
    v10 = *(v0 + 112);
    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    sub_1000D2A70(*(v0 + 24) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 168) * v2, v7, &qword_10169EFA8, &qword_1013B2700);
    v11 = *(v7 + v6);
    v12 = *(v7 + v5);
    v13 = *(v10 + 48);
    v14 = *(v10 + 64);
    sub_1005C3260(v7, v8, type metadata accessor for OwnerSharingCircle);
    *(v8 + v13) = v11;
    *(v8 + v14) = v12;
    sub_1000D2A70(v8, v9, &qword_10169EFA8, &qword_1013B2700);

    sub_1005C3260(v9, v15, type metadata accessor for OwnerSharingCircle);
    *(v0 + 248) = *(v16 + 20);

    return _swift_task_switch(sub_1005BA91C, v17, 0);
  }
}

uint64_t sub_1005BB138()
{
  v38 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v1, v2, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  if (v6)
  {
    v35 = *(v0 + 136);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    type metadata accessor for UUID();
    v33 = v9;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v37);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to delete secrets for share %{private,mask.hash}s, %{public}@.", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);

    sub_10000B3A8(v35, &qword_10169EFA8, &qword_1013B2700);
    v18 = v33;
  }

  else
  {

    sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v7, &qword_10169EFA8, &qword_1013B2700);
    v18 = v9;
  }

  sub_1005C32E0(v18, type metadata accessor for OwnerSharingCircle);
  v19 = *(v0 + 184) + 1;
  if (v19 == *(v0 + 152))
  {

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    *(v0 + 176) = 0;
    *(v0 + 184) = v19;
    v36 = *(v0 + 160);
    v23 = *(v0 + 232);
    v22 = *(v0 + 236);
    v25 = *(v0 + 136);
    v24 = *(v0 + 144);
    v26 = *(v0 + 128);
    v27 = *(v0 + 112);
    v32 = *(v0 + 104);
    v34 = *(v0 + 88);
    sub_1000D2A70(*(v0 + 24) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 168) * v19, v24, &qword_10169EFA8, &qword_1013B2700);
    v28 = *(v24 + v23);
    v29 = *(v24 + v22);
    v30 = *(v27 + 48);
    v31 = *(v27 + 64);
    sub_1005C3260(v24, v25, type metadata accessor for OwnerSharingCircle);
    *(v25 + v30) = v28;
    *(v25 + v31) = v29;
    sub_1000D2A70(v25, v26, &qword_10169EFA8, &qword_1013B2700);

    sub_1005C3260(v26, v32, type metadata accessor for OwnerSharingCircle);
    *(v0 + 248) = *(v34 + 20);

    return _swift_task_switch(sub_1005BA91C, v36, 0);
  }
}

uint64_t sub_1005BB5F0()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1005BB684;

  return daemon.getter();
}

uint64_t sub_1005BB684(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194B0(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_1005BB860;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005BB860(uint64_t a1)
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

    return _swift_task_switch(sub_1005BB9E0, a1, 0);
  }
}

uint64_t sub_1005BB9E0()
{
  v1 = *(v0 + 16);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1004D4490, v1, 0);
}

uint64_t sub_1005BBAF4()
{
  v1[22] = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v3 = type metadata accessor for OwnerSharingCircle(0);
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v4 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[39] = v4;
  v1[40] = *(v4 + 64);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_1005BBD84, v0, 0);
}

uint64_t sub_1005BBD84()
{
  v1 = v0[42];
  v2 = *(v0[22] + 168);
  v0[43] = v2;
  v3 = type metadata accessor for UUID();
  v0[44] = v3;
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  return _swift_task_switch(sub_1005BBE6C, v2, 0);
}

uint64_t sub_1005BBE6C()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[39];
  sub_1000D2A70(v0[42], v3, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v2;
  v7 = swift_allocObject();
  v0[45] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v3, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 0;

  v8 = swift_task_alloc();
  v0[46] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_1005BC010;

  return unsafeBlocking<A>(context:_:)(v0 + 18, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2718, v7, v9);
}

uint64_t sub_1005BC010()
{
  v1 = *(*v0 + 344);

  return _swift_task_switch(sub_1005BC170, v1, 0);
}

uint64_t sub_1005BC170()
{
  v1 = v0[22];
  sub_10000B3A8(v0[42], &qword_1016980D0, &unk_10138F3B0);
  v0[47] = v0[18];

  return _swift_task_switch(sub_1005BC220, v1, 0);
}

uint64_t sub_1005BC220()
{
  v103 = v0;
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 240);
    v96 = (v4 + 48);
    v87 = (v4 + 32);
    v94 = (v4 + 56);
    v95 = *(v0 + 304);
    v93 = (v4 + 8);
    v5 = _swiftEmptyArrayStorage;
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v90 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
    v88 = *(v1 + 16);
    v89 = *(v0 + 376);
    v91 = v7;
    v92 = v6;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_74;
      }

      v8 = *(v0 + 304);
      v98 = *(v6 + 72);
      v100 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1005C31F8(*(v0 + 376) + v100 + v98 * v3, v8, type metadata accessor for OwnerSharingCircle);
      if (*(v8 + *(v7 + 36)) != 4)
      {
        goto LABEL_4;
      }

      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      *(v0 + 112) = 0x7365547265646E75;
      *(v0 + 120) = 0xE900000000000074;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      v97 = v5;
      if (*(v0 + 432) == 1)
      {
        v9 = [objc_opt_self() sharedInstance];
        v10 = [v9 isInternalBuild];

        if (v10)
        {
          if (qword_101694418 != -1)
          {
            swift_once();
          }

          v12 = *(v0 + 224);
          v11 = *(v0 + 232);
          v13 = sub_1000076D4(*(v0 + 200), qword_101696A00);
          swift_beginAccess();
          sub_1000D2A70(v13, v12, &unk_101696900, &unk_10138B1E0);
          if ((*v96)(v12, 1, v11) != 1)
          {
            (*v87)(*(v0 + 256), *(v0 + 224), *(v0 + 232));
            goto LABEL_32;
          }

          sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
        }
      }

      My = type metadata accessor for Feature.FindMy();
      *(v0 + 40) = My;
      *(v0 + 48) = sub_1000194B0(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v15 = sub_1000280DC((v0 + 16));
      (*(*(My - 8) + 104))(v15, v90, My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC((v0 + 16));
      if (My)
      {
        sub_100F0FDBC();
        Current = CFAbsoluteTimeGetCurrent();
        if (qword_101694FD8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        if (Current - *(v0 + 128) - *(v0 + 136) > 86400.0)
        {
          v17 = *(v0 + 184);
          v18 = *(v0 + 192);
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v19 = type metadata accessor for TaskPriority();
          v20 = *(v19 - 8);
          (*(v20 + 56))(v18, 1, 1, v19);
          v21 = swift_allocObject();
          *(v21 + 16) = 0;
          *(v21 + 24) = 0;
          sub_1000D2A70(v18, v17, &qword_101698C00, &qword_10138B570);
          LODWORD(v18) = (*(v20 + 48))(v17, 1, v19);

          v22 = *(v0 + 184);
          if (v18 == 1)
          {
            sub_10000B3A8(*(v0 + 184), &qword_101698C00, &qword_10138B570);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v20 + 8))(v22, v19);
          }

          v23 = *(v21 + 16);
          swift_unknownObjectRetain();

          if (v23)
          {
            swift_getObjectType();
            v24 = dispatch thunk of Actor.unownedExecutor.getter();
            v26 = v25;
            swift_unknownObjectRelease();
          }

          else
          {
            v24 = 0;
            v26 = 0;
          }

          sub_10000B3A8(*(v0 + 192), &qword_101698C00, &qword_10138B570);
          v27 = swift_allocObject();
          *(v27 + 16) = &unk_10138B610;
          *(v27 + 24) = v21;
          v2 = v88;
          if (v26 | v24)
          {
            *(v0 + 56) = 0;
            *(v0 + 64) = 0;
            *(v0 + 72) = v24;
            *(v0 + 80) = v26;
          }

          v1 = v89;
          swift_task_create();
        }

        Date.init(timeIntervalSinceReferenceDate:)();
      }

      else
      {
        Date.init()();
      }

LABEL_32:
      v28 = *(v0 + 304);
      v29 = objc_autoreleasePoolPush();
      v30 = *v28;
      v31 = *(v95 + 8);
      v32 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v32 != 2 || *(v30 + 16) == *(v30 + 24))
        {
          goto LABEL_47;
        }
      }

      else if (v32)
      {
        if (v30 == v30 >> 32)
        {
          goto LABEL_47;
        }
      }

      else if ((v31 & 0xFF000000000000) == 0)
      {
        goto LABEL_47;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v30, v31);
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 152) = 0;
      v36 = [v34 initForReadingFromData:isa error:v0 + 152];

      v37 = *(v0 + 152);
      if (!v36)
      {
        v43 = v37;
        v44 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v30, v31);
        v45 = static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_101385D80;
        *(v0 + 160) = v44;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v47 = String.init<A>(describing:)();
        v49 = v48;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = sub_100008C00();
        *(v46 + 32) = v47;
        *(v46 + 40) = v49;
        sub_10039722C();
        v50 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v50, "Unable to create unarchiver: %@", 31, 2, v46);

        goto LABEL_46;
      }

      v38 = v37;
      sub_100016590(v30, v31);
      [v36 _enableStrictSecureDecodingMode];
      v39 = [objc_allocWithZone(CKRecord) initWithCoder:v36];
      if (!v39)
      {
        v51 = static os_log_type_t.error.getter();
        sub_10039722C();
        v52 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v52, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

LABEL_46:
        objc_autoreleasePoolPop(v33);
        v2 = v88;
        v1 = v89;
LABEL_47:
        (*v94)(*(v0 + 216), 1, 1, *(v0 + 232));
LABEL_48:
        v53 = *(v0 + 232);
        v54 = *(v0 + 216);
        Date.init()();
        if ((*v96)(v54, 1, v53) != 1)
        {
          sub_10000B3A8(*(v0 + 216), &unk_101696900, &unk_10138B1E0);
        }

        goto LABEL_50;
      }

      v40 = v39;

      objc_autoreleasePoolPop(v33);
      v41 = [v40 modificationDate];

      if (v41)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v2 = v88;
      v1 = v89;
      v64 = *(v0 + 232);
      v66 = *(v0 + 208);
      v65 = *(v0 + 216);
      (*v94)(v66, v42, 1, v64);
      sub_1000D2AD8(v66, v65, &unk_101696900, &unk_10138B1E0);
      if ((*v96)(v65, 1, v64) == 1)
      {
        goto LABEL_48;
      }

      (*v87)(*(v0 + 248), *(v0 + 216), *(v0 + 232));
LABEL_50:
      v56 = *(v0 + 248);
      v55 = *(v0 + 256);
      v57 = *(v0 + 232);
      objc_autoreleasePoolPop(v29);
      Date.timeIntervalSince(_:)();
      v59 = v58;
      v60 = *v93;
      (*v93)(v56, v57);
      v60(v55, v57);
      if (v59 >= 86400.0)
      {
        sub_1005C3260(*(v0 + 304), *(v0 + 288), type metadata accessor for OwnerSharingCircle);
        v5 = v97;
        v102[0] = v97;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, *(v97 + 16) + 1, 1);
          v5 = v102[0];
        }

        v62 = v5[2];
        v61 = v5[3];
        if (v62 >= v61 >> 1)
        {
          sub_101123FE4((v61 > 1), v62 + 1, 1);
          v5 = v102[0];
        }

        v63 = *(v0 + 288);
        v5[2] = v62 + 1;
        sub_1005C3260(v63, v5 + v100 + v62 * v98, type metadata accessor for OwnerSharingCircle);
        v7 = v91;
        v6 = v92;
        goto LABEL_5;
      }

      v5 = v97;
      v7 = v91;
      v6 = v92;
LABEL_4:
      sub_1005C32E0(*(v0 + 304), type metadata accessor for OwnerSharingCircle);
LABEL_5:
      if (v2 == ++v3)
      {
        goto LABEL_61;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_61:
  *(v0 + 384) = v5;

  v67 = v5[2];
  if (v67)
  {
    v68 = 0;
    v69 = *(v0 + 272);
    v99 = v69;
    v101 = v5[2];
    while (v68 < v5[2])
    {
      sub_1005C31F8(v5 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v68, *(v0 + 296), type metadata accessor for OwnerSharingCircle);
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v71 = *(v0 + 296);
      v72 = *(v0 + 280);
      v73 = type metadata accessor for Logger();
      sub_1000076D4(v73, qword_10177A560);
      sub_1005C31F8(v71, v72, type metadata accessor for OwnerSharingCircle);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = v5;
        v77 = *(v0 + 280);
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v102[0] = v79;
        *v78 = 136315138;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        v83 = v77;
        v5 = v76;
        v67 = v101;
        sub_1005C32E0(v83, type metadata accessor for OwnerSharingCircle);
        v84 = sub_1000136BC(v80, v82, v102);
        v69 = v99;

        *(v78 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v74, v75, "Removing tentatively revoked delegated shares from cloud for beacon %s", v78, 0xCu);
        sub_100007BAC(v79);
      }

      else
      {
        v70 = *(v0 + 280);

        sub_1005C32E0(v70, type metadata accessor for OwnerSharingCircle);
      }

      ++v68;
      sub_1005C32E0(*(v0 + 296), type metadata accessor for OwnerSharingCircle);
      if (v67 == v68)
      {
        goto LABEL_70;
      }
    }

LABEL_74:
    __break(1u);
  }

LABEL_70:
  v85 = *(v0 + 344);

  return _swift_task_switch(sub_1005BD054, v85, 0);
}

uint64_t sub_1005BD054()
{
  v1 = v0[48];
  v2 = v0[43];
  v3 = swift_allocObject();
  v0[49] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[50] = v4;
  v5 = sub_1000BC4D4(&qword_1016A5418, &qword_1013B26F0);
  *v4 = v0;
  v4[1] = sub_1005BD19C;

  return unsafeBlocking<A>(context:_:)(v0 + 21, 0xD000000000000010, 0x800000010134A8C0, sub_1005C3394, v3, v5);
}

uint64_t sub_1005BD19C()
{
  v1 = *(*v0 + 344);

  return _swift_task_switch(sub_1005BD2FC, v1, 0);
}

uint64_t sub_1005BD2FC()
{
  v1 = v0[21];
  v0[51] = v1;
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_1005BD3CC;

  return sub_1005BD8E4(v1);
}

uint64_t sub_1005BD3CC()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_1005BD678;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_1005BD540;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005BD540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005BD678()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on removal of tentatively revoked delegated share from cloud: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005BD8E4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for UUID();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = *(type metadata accessor for OwnerPeerTrust(0) - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1005BDA9C, v1, 0);
}

uint64_t sub_1005BDA9C()
{
  v1 = v0[11];
  type metadata accessor for ChangeSetAdaptor();
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyDictionarySingleton;
  *(v2 + 24) = _swiftEmptyDictionarySingleton;
  v32 = v2 + 24;
  v3 = *(v1 + 16);

  if (!v3)
  {
LABEL_9:

    swift_beginAccess();
    if (!*(*(v2 + 16) + 16))
    {
      swift_beginAccess();
      if ((*v32 & 0xC000000000000001) != 0)
      {

        v18 = __CocoaDictionary.count.getter();

        if (v18)
        {
          goto LABEL_12;
        }
      }

      else if (*(*v32 + 16))
      {
        goto LABEL_12;
      }

      v28 = v0[21];

      v29 = type metadata accessor for CloudKitChangeSet(0);
      (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
LABEL_13:
      v11 = *(v0[12] + 168);
      v0[22] = v11;
      v13 = sub_1005BDF04;
      v12 = 0;

      return _swift_task_switch(v13, v11, v12);
    }

LABEL_12:
    v19 = v0[21];
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];
    UUID.init()();
    swift_beginAccess();

    v25 = sub_1003A8B54(v23, v24);

    v26 = *(v2 + 16);

    (*(v21 + 32))(v19, v20, v22);
    v27 = type metadata accessor for CloudKitChangeSet(0);
    *(v19 + *(v27 + 20)) = v25;
    *(v19 + *(v27 + 24)) = v26;
    (*(*(v27 - 8) + 56))(v19, 0, 1, v27);
    goto LABEL_13;
  }

  v4 = 0;
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v8 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v9 = *(v5 + 72);
  v31 = v3;
  v33 = v6;
  while (1)
  {
    v10 = v0[20];
    sub_1000D2A70(v8 + v4 * v9, v10, &qword_10169EFA8, &qword_1013B2700);
    sub_100D45194(v10);
    sub_1001BA354(*(v0[20] + *(v6 + 48)));
    v13 = v0[20];
    v14 = *(v13 + *(v6 + 64));
    v15 = *(v14 + 16);
    if (v15)
    {
      break;
    }

LABEL_3:
    ++v4;
    sub_10000B3A8(v13, &qword_10169EFA8, &qword_1013B2700);
    v6 = v33;
    if (v4 == v3)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
  while (v16 < *(v14 + 16))
  {
    v17 = v0[17];
    sub_1005C31F8(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v17, type metadata accessor for OwnerPeerTrust);
    sub_100D467FC(v17);
    ++v16;
    v13 = sub_1005C32E0(v0[17], type metadata accessor for OwnerPeerTrust);
    if (v15 == v16)
    {
      v13 = v0[20];
      v3 = v31;
      goto LABEL_3;
    }
  }

  __break(1u);
  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_1005BDF2C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = swift_task_alloc();
  v0[24] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1005BE024;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_1005BE024()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1005BE204;
  }

  else
  {

    v2 = sub_1005BE140;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005BE15C()
{
  sub_10000B3A8(*(v0 + 168), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005BE204()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_1005BE270, v1, 0);
}

uint64_t sub_1005BE270()
{
  sub_10000B3A8(*(v0 + 168), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005BE314(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for MemberPeerTrust(0);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for MemberSharingCircle(0);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[20] = v5;
  v6 = *(v5 - 8);
  v2[21] = v6;
  v2[22] = *(v6 + 64);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005BE500, v1, 0);
}

uint64_t sub_1005BE500()
{
  v23 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_1000076D4(v5, qword_10177AE28);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[20];
  v12 = v0[21];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Notify owner to stop delegated share of %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v19 = *(v0[10] + 168);
  v0[31] = v19;

  return _swift_task_switch(sub_1005BE76C, v19, 0);
}

uint64_t sub_1005BE76C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  (*(v0 + 224))(v2, *(v0 + 72), v4);
  v5 = *(v3 + 80);
  *(v0 + 328) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 256) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 264) = v8;
  *(v0 + 272) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  v10 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v9 = v0;
  v9[1] = sub_1005BE8F0;

  return unsafeBlocking<A>(context:_:)(v0 + 64, 0xD000000000000010, 0x800000010134A8C0, sub_1005C31E0, v7, v10);
}

uint64_t sub_1005BE8F0()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_1005BEA1C, v1, 0);
}

uint64_t sub_1005BEA1C()
{
  v1 = v0[10];
  v0[36] = v0[8];
  return _swift_task_switch(sub_1005BEA40, v1, 0);
}

uint64_t sub_1005BEA40()
{
  v24 = v0;
  v1 = *(v0 + 288);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 248);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(*(v0 + 136) + 80);
    sub_1005C31F8(v1 + ((v6 + 32) & ~v6), v4, type metadata accessor for MemberSharingCircle);

    sub_1005C3260(v4, v3, type metadata accessor for MemberSharingCircle);
    *(v0 + 332) = *(v5 + 32);

    return _swift_task_switch(sub_1005BED7C, v2, 0);
  }

  else
  {

    (*(v0 + 224))(*(v0 + 184), *(v0 + 72), *(v0 + 160));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 240);
    v11 = *(v0 + 184);
    v12 = *(v0 + 160);
    if (v9)
    {
      v22 = *(v0 + 240);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v22(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v23);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "No peerTrustIdentifier for %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      v10(v11, v12);
    }

    sub_1005C3340();
    swift_allocError();
    *v19 = 6;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1005BED7C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 200);
  v4 = *(v0 + 160);
  v5 = (*(v0 + 328) + 24) & ~*(v0 + 328);
  (*(v0 + 224))(v3, *(v0 + 152) + *(v0 + 332), v4);
  v6 = swift_allocObject();
  *(v0 + 296) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *v7 = v0;
  v7[1] = sub_1005BEED0;
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1005C32C8, v6, v9);
}

uint64_t sub_1005BEED0()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1005BEFFC, v1, 0);
}

uint64_t sub_1005BEFFC()
{
  v46 = v0;
  v1 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v1, 1, *(v0 + 104)) == 1)
  {
    sub_1005C32E0(*(v0 + 152), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    (*(v0 + 224))(*(v0 + 184), *(v0 + 72), *(v0 + 160));
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 240);
    v6 = *(v0 + 184);
    v7 = *(v0 + 160);
    if (v4)
    {
      v43 = *(v0 + 240);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v45[0] = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      v43(v6, v7);
      v13 = sub_1000136BC(v10, v12, v45);

      *(v8 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v2, v3, "No peerTrustIdentifier for %{private,mask.hash}s", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {

      v5(v6, v7);
    }

    sub_1005C3340();
    swift_allocError();
    *v30 = 6;
    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 192);
    v16 = *(v0 + 160);
    v17 = *(v0 + 72);
    sub_1005C3260(v1, *(v0 + 120), type metadata accessor for MemberPeerTrust);
    v14(v15, v17, v16);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 240);
    v22 = *(v0 + 192);
    v23 = *(v0 + 160);
    if (v20)
    {
      v44 = *(v0 + 240);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v44(v22, v23);
      v29 = sub_1000136BC(v26, v28, v45);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Will send ids message to owner to stop delegated share of %{private,mask.hash}s.", v24, 0x16u);
      sub_100007BAC(v25);
    }

    else
    {

      v21(v22, v23);
    }

    v33 = *(v0 + 224);
    v35 = *(v0 + 152);
    v34 = *(v0 + 160);
    v36 = *(v0 + 120);
    v37 = *(v0 + 104);
    v38 = *(v0 + 80);
    v39 = *(*(v0 + 128) + 28);
    *(v0 + 40) = type metadata accessor for DelegatedCircleTrustStopEnvelopeV1(0);
    *(v0 + 48) = sub_1000194B0(&qword_1016A4F10, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1, &unk_1013AE188);
    *(v0 + 56) = sub_1000194B0(&qword_1016A5410, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1, "iS%");
    v40 = sub_1000280DC((v0 + 16));
    v33(v40, v35 + v39, v34);
    v41 = *(v37 + 28);
    v42 = swift_task_alloc();
    *(v0 + 312) = v42;
    *v42 = v0;
    v42[1] = sub_1005BF5B8;

    return sub_10129B0F0(v38 + 232, v0 + 16, 8, v36 + v41);
  }
}

uint64_t sub_1005BF5B8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1005BF7E0;
  }

  else
  {
    v5 = *(v2 + 80);
    sub_100007BAC((v2 + 16));
    v4 = sub_1005BF6E0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005BF6E0()
{
  v1 = v0[19];
  sub_1005C32E0(v0[15], type metadata accessor for MemberPeerTrust);
  sub_1005C32E0(v1, type metadata accessor for MemberSharingCircle);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005BF7E0()
{
  v1 = v0[19];
  sub_1005C32E0(v0[15], type metadata accessor for MemberPeerTrust);
  sub_1005C32E0(v1, type metadata accessor for MemberSharingCircle);
  sub_100007BAC(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005BF8E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 184) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = type metadata accessor for UUID();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  *(v5 + 64) = *(v7 + 64);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle(0);
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1005BFA5C, v4, 0);
}

uint64_t sub_1005BFA5C()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1005BFA80, v1, 0);
}

uint64_t sub_1005BFA80()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v5 = v0[2];
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);

  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1005BFBF0;
  v11 = v0[11];
  v10 = v0[12];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1005C31C8, v8, v11);
}

uint64_t sub_1005BFBF0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1005BFD1C, v1, 0);
}

uint64_t sub_1005BFD1C()
{
  v29 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 136);
    v4 = *(v0 + 72);
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AE28);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136315138;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v28);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "handleDelegatedCircleTrustStop - owner sharing circle not found with shareIdentifier %s. Cannot stop the share.", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v20 = *(v0 + 120);
    v21 = *(v0 + 32);
    v22 = *(v0 + 184);
    sub_1005C3260(v2, v20, type metadata accessor for OwnerSharingCircle);
    v23 = *(v1 + 24);
    v24 = swift_task_alloc();
    *(v0 + 168) = v24;
    *v24 = v0;
    v24[1] = sub_1005C0074;
    v25 = *(v0 + 24);

    return sub_1005B39DC(v20 + v23, v22, v25, v21);
  }
}

uint64_t sub_1005C0074()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_1005C0248;
  }

  else
  {
    v4 = sub_1005C01A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005C01A0()
{
  sub_1005C32E0(*(v0 + 120), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C0248()
{
  sub_1005C32E0(*(v0 + 120), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C02F4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1005C0314, v1, 0);
}

uint64_t sub_1005C0314()
{
  v1 = *(*(v0 + 32) + 168);
  *(v0 + 40) = v1;
  return _swift_task_switch(sub_1005C0338, v1, 0);
}

uint64_t sub_1005C0338()
{

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1005C0418;
  v3 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1005C0418()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1005C0530, v1, 0);
}

uint64_t sub_1005C0530()
{
  v1 = v0[4];
  v0[7] = v0[2];
  return _swift_task_switch(sub_1005C0554, v1, 0);
}

uint64_t sub_1005C0554()
{
  v0[8] = *(v0[7] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1005C0614;
  v2 = v0[3];

  return sub_100692A94(v2);
}

uint64_t sub_1005C0614()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_1005C0750, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1005C0750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C07B4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1005C07D4, v1, 0);
}

uint64_t sub_1005C07D4()
{
  v1 = *(*(v0 + 32) + 168);
  *(v0 + 40) = v1;
  return _swift_task_switch(sub_1005C07F8, v1, 0);
}

uint64_t sub_1005C07F8()
{

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1005C08D8;
  v3 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1005C08D8()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_1005C09F0, v1, 0);
}

uint64_t sub_1005C0A14()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1005C0ABC;
  v2 = *(v0 + 24);

  return sub_100691410(v2);
}

uint64_t sub_1005C0ABC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005C0BF8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1005C0BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C0C5C(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_1005C0C7C, v1, 0);
}

uint64_t sub_1005C0C7C()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1005C0CA0, v1, 0);
}

uint64_t sub_1005C0CA0()
{

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1005C0D80;
  v3 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_1005C0D80()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1005C0E98, v1, 0);
}

uint64_t sub_1005C0E98()
{
  v0[10] = v0[5];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1005C0F34;
  v2 = v0[6];

  return sub_1012DB570(v2);
}

uint64_t sub_1005C0F34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[7];
  v4[12] = a2;

  return _swift_task_switch(sub_1005C106C, v5, 0);
}

uint64_t sub_1005C106C()
{
  v1 = v0[12];
  v2 = v1 >> 60;
  if (v1 >> 60 != 15)
  {
    sub_100006654(v0[3], v1);
  }

  v3 = v0[1];

  return v3(v2 < 0xF);
}

uint64_t sub_1005C10E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  v5[5] = type metadata accessor for OwnerSharingCircle(0);
  v5[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1005C11AC;

  return daemon.getter();
}

uint64_t sub_1005C11AC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ItemSharingNotificationsService();
  v6 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194B0(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v3 = v9;
  v3[1] = sub_1005C1388;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1005C1388(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);

  if (v1)
  {

    v6 = sub_1005C1ADC;
  }

  else
  {

    *(v4 + 80) = a1;
    v6 = sub_1005C14F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005C14F0()
{
  v1 = v0[10];
  v0[11] = v1;
  v2 = v0[3];
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v1)
        {

          v3 = swift_task_alloc();
          v0[12] = v3;
          *v3 = v0;
          v3[1] = sub_1005C16FC;
          v4 = v0[2];

          return sub_100B55070(v4);
        }

        goto LABEL_11;
      }

LABEL_14:
      if (v1)
      {

        v7 = swift_task_alloc();
        v0[14] = v7;
        *v7 = v0;
        v7[1] = sub_1005C188C;
        v8 = v0[2];

        return sub_100B55F38(v8);
      }

LABEL_11:

      v6 = v0[1];

      return v6();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v1)
  {
    goto LABEL_11;
  }

  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1005C19B4;
  v10 = v0[2];

  return sub_100B541A8(v10);
}

uint64_t sub_1005C16FC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1005C1B40;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1005C1824;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005C1824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C188C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1005C1E34;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1005C3A34;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005C19B4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1005C2128;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1005C3A34;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005C1ADC()
{
  *(v0 + 88) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C1B40()
{
  v19 = v0;

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to post notification for %{private,mask.hash}s: %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {

    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005C1E34()
{
  v19 = v0;

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to post notification for %{private,mask.hash}s: %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {

    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005C2128()
{
  v19 = v0;

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to post notification for %{private,mask.hash}s: %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {

    sub_1005C32E0(v7, type metadata accessor for OwnerSharingCircle);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1005C241C()
{
  sub_100007BAC(v0 + 14);

  sub_100007BAC(v0 + 22);
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 29);
  sub_100007BAC(v0 + 34);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005C24A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for URLComponents();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005C2634, 0, 0);
}

uint64_t sub_1005C2634()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for DelegatedShareUseCase.DelegationURL(0) + 20));
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  OS_dispatch_queue.sync<A>(execute:)();
  v6 = sub_101074C00(v0[2]);
  v8 = v7;

  *v2 = v6;
  v2[1] = v8;

  URL.init(string:)();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v9 = v0[12];

    v10 = &unk_101696AC0;
    v11 = &qword_101390A60;
    v12 = v9;
LABEL_7:
    sub_10000B3A8(v12, v10, v11);
    sub_1005C3410();
    swift_allocError();
    swift_willThrow();

    v20 = v0[1];
    goto LABEL_9;
  }

  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v16 = (*(v14 + 48))(v15, 1, v13);
  v18 = v0[14];
  v17 = v0[15];
  if (v16 == 1)
  {
    v19 = v0[8];
    (*(v18 + 8))(v0[15], v0[13]);

    v10 = &qword_101699BA8;
    v11 = &unk_1013926B0;
    v12 = v19;
    goto LABEL_7;
  }

  v21 = v0[11];
  v23 = v0[9];
  v22 = v0[10];
  v26 = v0[13];
  v24 = v0[3];
  (*(v22 + 32))(v21, v0[8], v23);
  (*(v22 + 16))(v24, v21, v23);
  sub_1000BC4D4(&qword_1016A5428, &unk_1013B2748);
  type metadata accessor for URLQueryItem();
  *(swift_allocObject() + 16) = xmmword_101385D80;
  URLQueryItem.init(name:value:)();

  URLComponents.queryItems.setter();
  URLComponents.fragment.setter();
  (*(v22 + 8))(v21, v23);
  (*(v18 + 8))(v17, v26);

  v20 = v0[1];
LABEL_9:

  return v20();
}

uint64_t sub_1005C2A40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for SharingCircleSecret(0);
  v31 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v30 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OwnerSharingCircle(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for OwnerPeerTrust(0);
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11 - 8);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a3;
  v16 = a3[2];
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_6:
    v19 = v32;
    v20 = v32[1];
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = 0;
      while (v22 < *(v20 + 16))
      {
        sub_1005C31F8(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v10, type metadata accessor for OwnerSharingCircle);
        sub_100D43440(v10);
        if (v3)
        {
          v29 = type metadata accessor for OwnerSharingCircle;
LABEL_20:
          v27 = v29;
          v28 = v10;
          return sub_1005C32E0(v28, v27);
        }

        ++v22;
        result = sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
        if (v21 == v22)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      __break(1u);
    }

    else
    {
LABEL_11:
      v23 = *v19;
      v24 = *(*v19 + 16);
      if (!v24)
      {
        return result;
      }

      v25 = 0;
      v10 = v30;
      v26 = v31;
      while (v25 < *(v23 + 16))
      {
        sub_1005C31F8(v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, v10, type metadata accessor for SharingCircleSecret);
        sub_100D4346C(v10);
        if (v3)
        {
          v29 = type metadata accessor for SharingCircleSecret;
          goto LABEL_20;
        }

        ++v25;
        result = sub_1005C32E0(v10, type metadata accessor for SharingCircleSecret);
        if (v24 == v25)
        {
          return result;
        }
      }
    }

    __break(1u);
    return result;
  }

  v18 = 0;
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_1005C31F8(v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v15, type metadata accessor for OwnerPeerTrust);
    sub_100D437C0(v15);
    if (v3)
    {
      break;
    }

    ++v18;
    result = sub_1005C32E0(v15, type metadata accessor for OwnerPeerTrust);
    if (v17 == v18)
    {
      goto LABEL_6;
    }
  }

  v27 = type metadata accessor for OwnerPeerTrust;
  v28 = v15;
  return sub_1005C32E0(v28, v27);
}

void sub_1005C2DF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v29 = a5;
  v30 = a4;
  v7 = type metadata accessor for SharingCircleSecret(0);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for OwnerSharingCircle(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for OwnerPeerTrust(0) - 8;
  __chkstk_darwin(v14);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a3 + 16);
  if (v18)
  {
    v19 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    while (1)
    {
      sub_1005C31F8(v19, v17, type metadata accessor for OwnerPeerTrust);
      sub_100D467FC(v17);
      if (v5)
      {
        break;
      }

      sub_1005C32E0(v17, type metadata accessor for OwnerPeerTrust);
      v19 += v20;
      if (!--v18)
      {
        goto LABEL_5;
      }
    }

    sub_1005C32E0(v17, type metadata accessor for OwnerPeerTrust);
  }

  else
  {
LABEL_5:
    v21 = *v30;
    v22 = *(*v30 + 16);

    if (v22)
    {
      v23 = 0;
      while (v23 < *(v21 + 16))
      {
        sub_1005C31F8(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v13, type metadata accessor for OwnerSharingCircle);
        sub_100D45194(v13);
        if (v5)
        {
          sub_1005C32E0(v13, type metadata accessor for OwnerSharingCircle);
          goto LABEL_19;
        }

        ++v23;
        sub_1005C32E0(v13, type metadata accessor for OwnerSharingCircle);
        if (v22 == v23)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:

      v24 = *v29;
      v25 = *(*v29 + 16);

      if (!v25)
      {
LABEL_19:

        return;
      }

      v26 = 0;
      v27 = v28;
      while (v26 < *(v24 + 16))
      {
        sub_1005C31F8(v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v9, type metadata accessor for SharingCircleSecret);
        sub_100D44DD8(v9);
        if (v5)
        {
          sub_1005C32E0(v9, type metadata accessor for SharingCircleSecret);
          goto LABEL_19;
        }

        ++v26;
        sub_1005C32E0(v9, type metadata accessor for SharingCircleSecret);
        if (v25 == v26)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_1005C31F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C3260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C32E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1005C3340()
{
  result = qword_1016A5408;
  if (!qword_1016A5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5408);
  }

  return result;
}

uint64_t sub_1005C339C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
  }

  return result;
}

unint64_t sub_1005C3410()
{
  result = qword_1016A5420;
  if (!qword_1016A5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5420);
  }

  return result;
}

uint64_t sub_1005C3464()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for OwnerSharingCircle(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1005AA9F0(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1005C35D0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1005C36A4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_1005C3754(uint64_t a1)
{
  sub_1005C3874(319, &qword_1016A5498, type metadata accessor for SharingCircleSecret);
  if (v1 <= 0x3F)
  {
    sub_1005C3874(319, &qword_1016A54A0, type metadata accessor for OwnerSharingCircle);
    if (v2 <= 0x3F)
    {
      sub_1005C3874(319, &unk_1016A54A8, type metadata accessor for OwnerPeerTrust);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OwnedBeaconRecord(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for BeaconNamingRecord(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1005C3874(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005C3900(uint64_t a1)
{
  result = type metadata accessor for URLComponents();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1005C3988()
{
  result = qword_1016A5578;
  if (!qword_1016A5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5578);
  }

  return result;
}

unint64_t sub_1005C39E0()
{
  result = qword_1016A5580;
  if (!qword_1016A5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5580);
  }

  return result;
}

void sub_1005C3AB0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1005C3C38(319, &qword_10169C360, type metadata accessor for FamilyCryptoKeysV1);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005C3B98(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1005C3C38(319, &qword_1016A5680, type metadata accessor for FamilyCryptoKeysV2);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005C3C38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005C3C8C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A56B8, &unk_1013B2AE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1005C4DDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for UUID();
  sub_1005C549C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CompanionSelfBeaconingKeyEnvelope(0) + 20));
    v10[15] = 1;
    sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
    sub_1005C5364(&qword_10169C468, &qword_10169C470, &unk_1013E9BB4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005C3EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = type metadata accessor for UUID();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A5720, &qword_1013B2B20);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for CompanionSelfBeaconingKeyEnvelope(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1005C4DDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_1005C549C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = v26;
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
  v28 = 1;
  sub_1005C5364(&qword_10169C498, &qword_10169C4A0, &unk_1013E9BDC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_1005C54E4(v18, v22, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
  sub_100007BAC(a1);
  return sub_1005C554C(v18, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
}

uint64_t sub_1005C4270(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A56C8, &qword_1013B2AF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1005C4E30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for UUID();
  sub_1005C549C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    MyAccessoryKeyEnvelope = type metadata accessor for CompanionFindMyAccessoryKeyEnvelope(0);
    v13 = *(v3 + *(MyAccessoryKeyEnvelope + 20));
    v12 = 1;
    sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
    sub_1005C5400(&qword_1016A56E0, &qword_1016A56E8, &unk_1013C40A4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + *(MyAccessoryKeyEnvelope + 24));
    v12 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005C44D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016A5728, &qword_1013B2B28);
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v18 - v6;
  MyAccessoryKeyEnvelope = type metadata accessor for CompanionFindMyAccessoryKeyEnvelope(0);
  __chkstk_darwin(MyAccessoryKeyEnvelope);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1005C4E30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v12 = v21;
  v11 = v22;
  v18 = v10;
  v19 = a1;
  LOBYTE(v26) = 0;
  sub_1005C549C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v23;
  v13 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 32))(v18, v14, v4);
  sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
  v25 = 1;
  v23 = sub_1005C5400(&qword_1016A5730, &qword_1016A5738, &unk_1013C40CC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v18[*(MyAccessoryKeyEnvelope + 20)] = v26;
  v25 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v13);
  v15 = *(MyAccessoryKeyEnvelope + 24);
  v16 = v18;
  *&v18[v15] = v26;
  sub_1005C54E4(v16, v20, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
  sub_100007BAC(v19);
  return sub_1005C554C(v16, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
}

uint64_t sub_1005C4924(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A56F0, &qword_1013B2B08);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_1005C4E84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000BC4D4(&qword_1016A5700, &qword_1013B2B10);
  sub_1005C4ED8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1005C4A80(uint64_t a1)
{
  v2 = sub_1005C4DDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C4ABC(uint64_t a1)
{
  v2 = sub_1005C4DDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005C4B28()
{
  v1 = 0x4B7972616D697270;
  if (*v0 != 1)
  {
    v1 = 0x7261646E6F636573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1005C4B9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1005C4FC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1005C4BC4(uint64_t a1)
{
  v2 = sub_1005C4E30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C4C00(uint64_t a1)
{
  v2 = sub_1005C4E30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005C4C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010135B4C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1005C4D1C(uint64_t a1)
{
  v2 = sub_1005C4E84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C4D58(uint64_t a1)
{
  v2 = sub_1005C4E84();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1005C4D94@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1005C50F4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1005C4DDC()
{
  result = qword_1016A56C0;
  if (!qword_1016A56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A56C0);
  }

  return result;
}

unint64_t sub_1005C4E30()
{
  result = qword_1016A56D0;
  if (!qword_1016A56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A56D0);
  }

  return result;
}

unint64_t sub_1005C4E84()
{
  result = qword_1016A56F8;
  if (!qword_1016A56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A56F8);
  }

  return result;
}

unint64_t sub_1005C4ED8()
{
  result = qword_1016A5708;
  if (!qword_1016A5708)
  {
    sub_1000BC580(&qword_1016A5700, &qword_1013B2B10);
    sub_1005C549C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1005C549C(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5708);
  }

  return result;
}

uint64_t sub_1005C4FC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B7972616D697270 && a2 == 0xEB00000000737965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007379654B79)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_1005C50F4(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A5710, &qword_1013B2B18);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1005C4E84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016A5700, &qword_1013B2B10);
    sub_1005C5278();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_1005C5278()
{
  result = qword_1016A5718;
  if (!qword_1016A5718)
  {
    sub_1000BC580(&qword_1016A5700, &qword_1013B2B10);
    sub_1005C549C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1005C549C(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5718);
  }

  return result;
}

uint64_t sub_1005C5364(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C460, &qword_1013B1CA0);
    sub_1005C549C(a2, type metadata accessor for FamilyCryptoKeysV1, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005C5400(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A56D8, &qword_1013B2B00);
    sub_1005C549C(a2, type metadata accessor for FamilyCryptoKeysV2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005C549C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005C54E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C554C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1005C55E0()
{
  result = qword_1016A5740;
  if (!qword_1016A5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5740);
  }

  return result;
}

unint64_t sub_1005C5638()
{
  result = qword_1016A5748;
  if (!qword_1016A5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5748);
  }

  return result;
}

unint64_t sub_1005C5690()
{
  result = qword_1016A5750;
  if (!qword_1016A5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5750);
  }

  return result;
}

unint64_t sub_1005C56E8()
{
  result = qword_1016A5758;
  if (!qword_1016A5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5758);
  }

  return result;
}

unint64_t sub_1005C5740()
{
  result = qword_1016A5760;
  if (!qword_1016A5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5760);
  }

  return result;
}

unint64_t sub_1005C5798()
{
  result = qword_1016A5768;
  if (!qword_1016A5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5768);
  }

  return result;
}

unint64_t sub_1005C57F0()
{
  result = qword_1016A5770;
  if (!qword_1016A5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5770);
  }

  return result;
}

unint64_t sub_1005C5848()
{
  result = qword_1016A5778;
  if (!qword_1016A5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5778);
  }

  return result;
}

unint64_t sub_1005C58A0()
{
  result = qword_1016A5780;
  if (!qword_1016A5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5780);
  }

  return result;
}

uint64_t sub_1005C58F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 88))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1005C5948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1005C59BC(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v13 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v13, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v6, *(&v6 + 1));
    v12 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1005C61E8(&v12, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    *&v6 = sub_10098E0F0(*(v1 + 8));
    *(&v6 + 1) = v3;
    sub_10015049C(v7, v8);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v11 = *(v1 + 40);
    v6 = *(v1 + 40);
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = *(v1 + 56);
    v6 = *(v1 + 56);
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = *(v1 + 72);
    v6 = *(v1 + 72);
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v6, *(&v6 + 1));
  return sub_100007BAC(v7);
}

double sub_1005C5C60@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1005C5DAC(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1005C5CD4(uint64_t a1)
{
  *(a1 + 8) = sub_1005C5D04();
  result = sub_1005C5D58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1005C5D04()
{
  result = qword_1016A5788;
  if (!qword_1016A5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5788);
  }

  return result;
}

unint64_t sub_1005C5D58()
{
  result = qword_1016A5790;
  if (!qword_1016A5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5790);
  }

  return result;
}

uint64_t sub_1005C5DAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v41, v42);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_8;
  }

  v7 = v5;
  v43 = v6;
  sub_10015049C(v41, v42);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v10 = v9;
  sub_100017D5C(v8, v9);
  v11 = sub_100314594(v8, v10);
  if (v12 >> 60 == 15)
  {
    v13 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for BinaryEncodingError.encodingError(_:), v13);
    swift_willThrow();
LABEL_7:
    sub_100016590(v8, v10);
    sub_100016590(v7, v43);
LABEL_8:
    sub_100007BAC(v41);
    return sub_100007BAC(a1);
  }

  v39 = v11;
  v40 = v12;
  sub_10015049C(v41, v42);
  v15 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v17 = v16;
  sub_100017D5C(v15, v16);
  v18 = sub_10098E844(v15, v17);
  sub_100016590(v15, v17);
  if ((v18 & 0x100000000) != 0)
  {
    v22 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for BinaryEncodingError.encodingError(_:), v22);
    swift_willThrow();
    sub_100016590(v15, v17);
    sub_100006654(v39, v40);
    goto LABEL_7;
  }

  v37 = v17;
  sub_10015049C(v41, v42);
  v35 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v36 = v19;
  sub_10015049C(v41, v42);
  v20 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v38 = v21;
  v34 = v20;
  sub_10015049C(v41, v42);
  v25 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v33 = v26;
  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  v27 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v27 * 20) >> 64 != (20 * v27) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (((20 * v27) & 0x8000000000000000) == 0)
  {
    v32 = Data.subdata(in:)();
    v28 = v25;
    v30 = v29;
    sub_100016590(v28, v33);
    sub_100016590(v15, v37);
    sub_100016590(v8, v10);
    sub_100007BAC(v41);
    result = sub_100007BAC(a1);
    v31 = v43;
    *a2 = v7;
    *(a2 + 8) = v31;
    *(a2 + 16) = v39;
    *(a2 + 24) = v40;
    *(a2 + 32) = v18;
    *(a2 + 34) = BYTE2(v18);
    *(a2 + 35) = BYTE3(v18);
    *(a2 + 40) = v35;
    *(a2 + 48) = v36;
    *(a2 + 56) = v34;
    *(a2 + 64) = v38;
    *(a2 + 72) = v32;
    *(a2 + 80) = v30;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SharingRampState(uint64_t a1)
{
  result = qword_1016A5808;
  if (!qword_1016A5808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C62B8(uint64_t a1)
{
  sub_1005C6310();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1005C6310()
{
  if (!qword_1016A5818)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A5818);
    }
  }
}

void sub_1005C6358(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v24 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  __chkstk_darwin(v24);
  v23 = (&v23 - v6);
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v26 = a3;

  v12 = 0;
  while (v10)
  {
    v27 = v4;
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v26 + 56);
    v17 = (*(v26 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v20 = v16 + *(*(type metadata accessor for MultipartAccessoryPairingInfo(0) - 8) + 72) * v15;
    v21 = v23;
    sub_10062CD24(v20, v23 + *(v24 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    *v21 = v19;
    v21[1] = v18;
    sub_100017D5C(v19, v18);
    v22 = v27;
    v25(v21);
    v4 = v22;
    sub_10000B3A8(v21, &qword_101696E38, &qword_1013D8510);
    if (v22)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v27 = v4;
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1005C6534(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v19 = type metadata accessor for UUID();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v16 = v5 + 16;
  v18 = (v5 + 8);
  v20 = a3;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
      v15 = v19;
LABEL_9:
      (*(v5 + 16))(v7, *(v20 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v15);
      v17(v7);
      if (v3)
      {
        break;
      }

      v11 &= v11 - 1;
      (*v18)(v7, v15);
      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    (*v18)(v7, v15);
LABEL_13:
  }

  else
  {
LABEL_5:
    v15 = v19;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_13;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_1005C6730(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      sub_100017D5C(v13, *(&v13 + 1));
      a1(&v13);
      sub_100016590(v13, *(&v13 + 1));
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1005C684C(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a1;
  v22 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  __chkstk_darwin(v22);
  v7 = &v21 - v6;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v24 = a3;

  v13 = 0;
  while (v11)
  {
    v25 = v4;
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = v24;
    v18 = *(v24 + 48);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 16))(v7, v18 + *(*(v19 - 8) + 72) * v16, v19);
    *&v7[*(v22 + 48)] = *(*(v17 + 56) + 8 * v16);

    v20 = v25;
    (v23)(v7);
    v4 = v20;
    sub_10000B3A8(v7, &qword_1016A5890, &qword_1013B3290);
    if (v20)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v25 = v4;
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1005C6A20(void (*a1)(void *__return_ptr, void, __n128), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v19 = a1;
  v18 = v4;
  while (v9)
  {
LABEL_12:
    v26 = *(*(v4 + 48) + (__clz(__rbit64(v9)) | (v11 << 6)));
    (a1)(v23, &v26);
    if (v3)
    {

LABEL_18:

      return;
    }

    v15 = v24;
    if (v24 != 2)
    {
      v20 = v23[1];
      v21 = v23[0];
      v22 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100A5B880(0, *(v12 + 2) + 1, 1, v12);
      }

      v17 = *(v12 + 2);
      v16 = *(v12 + 3);
      if (v17 >= v16 >> 1)
      {
        v12 = sub_100A5B880((v16 > 1), v17 + 1, 1, v12);
      }

      *(v12 + 2) = v17 + 1;
      v13 = &v12[32 * v17];
      v13[32] = v21;
      *(v13 + 5) = v20;
      v13[48] = v15 & 1;
      *(v13 + 7) = v22;
      v4 = v18;
      a1 = v19;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_18;
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1005C6BF0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A5AC0, &qword_1013B35F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for KeyDropCreateRequest.Member(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(type metadata accessor for OwnerPeerTrust(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = _swiftEmptyArrayStorage;
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_10000B3A8(v9, &qword_1016A5AC0, &qword_1013B35F8);
    }

    else
    {
      v20 = v28;
      sub_10062CC64(v9, v28, type metadata accessor for KeyDropCreateRequest.Member);
      sub_10062CC64(v20, v30, type metadata accessor for KeyDropCreateRequest.Member);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100A5BF90(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100A5BF90((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_10062CC64(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for KeyDropCreateRequest.Member);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1005C6F0C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A5A78, &qword_1013B35A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v10 = __chkstk_darwin(v9);
  v28 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v27 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = (a3 + 32);
  v24 = v12;
  v16 = (v12 + 48);
  v29 = _swiftEmptyArrayStorage;
  v25 = v9;
  v26 = a1;
  while (1)
  {
    v17 = *v15++;
    v30 = v17;
    a1(&v30);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_10000B3A8(v8, &qword_1016A5A78, &qword_1013B35A0);
    }

    else
    {
      v18 = v27;
      sub_1000D2AD8(v8, v27, &qword_1016A5A80, &qword_1013B35A8);
      sub_1000D2AD8(v18, v28, &qword_1016A5A80, &qword_1013B35A8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100A5D0F0(0, v29[2] + 1, 1, v29);
      }

      v20 = v29[2];
      v19 = v29[3];
      if (v20 >= v19 >> 1)
      {
        v29 = sub_100A5D0F0((v19 > 1), v20 + 1, 1, v29);
      }

      v21 = v28;
      v22 = v29;
      v29[2] = v20 + 1;
      sub_1000D2AD8(v21, v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, &qword_1016A5A80, &qword_1013B35A8);
      v9 = v25;
      a1 = v26;
    }

    if (!--v14)
    {
      return v29;
    }
  }

  return v29;
}

void *sub_1005C71E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for DeviceEvent(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(type metadata accessor for DeviceEventEncodedInfo(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = _swiftEmptyArrayStorage;
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_10000B3A8(v9, &unk_1016AA500, &unk_1013B3600);
    }

    else
    {
      v20 = v28;
      sub_10062CC64(v9, v28, type metadata accessor for DeviceEvent);
      sub_10062CC64(v20, v30, type metadata accessor for DeviceEvent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100A5D300(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100A5D300((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_10062CC64(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for DeviceEvent);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1005C7500(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A58D8, &qword_1013B3318);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for RawSearchResult(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(type metadata accessor for ObservedAdvertisement(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = _swiftEmptyArrayStorage;
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_10000B3A8(v9, &qword_1016A58D8, &qword_1013B3318);
    }

    else
    {
      v20 = v28;
      sub_10062CC64(v9, v28, type metadata accessor for RawSearchResult);
      sub_10062CC64(v20, v30, type metadata accessor for RawSearchResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100A5D328(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100A5D328((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_10062CC64(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for RawSearchResult);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1005C781C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v8 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for TimeBasedKey(0);
  v12 = __chkstk_darwin(v11);
  v27 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v24 = &v23 - v14;
  v25 = v15;
  v16 = (v15 + 48);
  v17 = _swiftEmptyArrayStorage;
  v26 = a4;
  while (1)
  {
    v29 = a3;
    a1(&v29);
    if (v4)
    {
      break;
    }

    if ((*v16)(v10, 1, v11) == 1)
    {
      result = sub_10000B3A8(v10, &qword_10169BA30, &unk_101395620);
    }

    else
    {
      v19 = v24;
      sub_10062CC64(v10, v24, type metadata accessor for TimeBasedKey);
      sub_10062CC64(v19, v27, type metadata accessor for TimeBasedKey);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100A5BDF0(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        v17 = sub_100A5BDF0((v20 > 1), v21 + 1, 1, v17);
      }

      v17[2] = v21 + 1;
      result = sub_10062CC64(v27, v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for TimeBasedKey);
      a4 = v26;
    }

    if (a4 == a3)
    {
      return v17;
    }

    if (__CFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v17;
}

void *sub_1005C7B10(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = _s18ConnectionKeyGroupVMa(0);
  v11 = __chkstk_darwin(v10);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = (a3 + 32);
  v25 = v13;
  v17 = (v13 + 48);
  v18 = _swiftEmptyArrayStorage;
  v26 = v10;
  v27 = a2;
  while (1)
  {
    v19 = *v16++;
    v30 = v19;
    a1(&v30);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_10000B3A8(v9, &qword_1016A5A70, &unk_1013D6860);
    }

    else
    {
      v20 = v28;
      sub_10062CC64(v9, v28, _s18ConnectionKeyGroupVMa);
      sub_10062CC64(v20, v29, _s18ConnectionKeyGroupVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100A5BE18(0, v18[2] + 1, 1, v18);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = sub_100A5BE18((v21 > 1), v22 + 1, 1, v18);
      }

      v18[2] = v22 + 1;
      sub_10062CC64(v29, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, _s18ConnectionKeyGroupVMa);
      v10 = v26;
    }

    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_1005C7DD8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1005C7F84(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  v17 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

char *sub_1005C8110(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = (a3 + 72);
  v39 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = *(v5 - 1);
    v6 = *v5;
    v8 = *(v5 - 3);
    v9 = *(v5 - 2);
    v10 = *(v5 - 4);
    v33[0] = *(v5 - 40);
    v34 = v10;
    v35 = v8;
    v36 = v9;
    v37 = v7;
    v38 = v6;
    sub_100017D5C(v8, v9);
    sub_100017D5C(v7, v6);
    a1(&v27, v33);
    if (v3)
    {
      break;
    }

    v11 = v37;
    v12 = v38;
    sub_100016590(v35, v36);
    sub_100016590(v11, v12);
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    if (v27 == 2)
    {
      sub_10062C0A0(v27, v28, v29, v30, v31, v32);
    }

    else
    {
      v24 = v31;
      v25 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100A5CBA0(0, *(v39 + 2) + 1, 1, v39);
      }

      v18 = *(v39 + 2);
      v17 = *(v39 + 3);
      if (v18 >= v17 >> 1)
      {
        v39 = sub_100A5CBA0((v17 > 1), v18 + 1, 1, v39);
      }

      v19 = v39;
      *(v39 + 2) = v18 + 1;
      v20 = &v19[48 * v18];
      v20[32] = v13 & 1;
      *(v20 + 5) = v14;
      *(v20 + 6) = v15;
      *(v20 + 7) = v16;
      *(v20 + 8) = v24;
      *(v20 + 9) = v25;
    }

    v5 += 6;
    if (!--v4)
    {
      return v39;
    }
  }

  v21 = v37;
  v22 = v38;
  sub_100016590(v35, v36);
  sub_100016590(v21, v22);

  return v39;
}

char *sub_1005C82E0(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v42 = result;
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v10 = sub_1000BC4D4(&qword_101698CC0, &unk_101390890);
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      a1(&v35, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {
        v28 = v42;

        return v28;
      }

      v13 = v41;
      if (v41)
      {
        break;
      }

      result = sub_10062CC18(v35, v36, v37, v38, v39, v40, 0);
      if (v7 == v4)
      {
        return v42;
      }
    }

    v33 = v36;
    v34 = v35;
    v30 = v37;
    v31 = v39;
    v32 = v38;
    v29 = v40;
    v14 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100A5DF68(0, *(v14 + 2) + 1, 1, v14);
    }

    v15 = v14;
    v16 = *(v14 + 2);
    v17 = v15;
    v18 = *(v15 + 3);
    v19 = (v16 + 1);
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    if (v16 >= v18 >> 1)
    {
      v42 = (v16 + 1);
      v27 = sub_100A5DF68((v18 > 1), v16 + 1, 1, v17);
      v19 = v42;
      v23 = v32;
      v24 = v33;
      v21 = v30;
      v22 = v31;
      v20 = v29;
      v17 = v27;
      v25 = v34;
    }

    *(v17 + 2) = v19;
    v26 = &v17[56 * v16];
    result = v17;
    *(v26 + 4) = v25;
    *(v26 + 5) = v24;
    *(v26 + 6) = v21;
    *(v26 + 7) = v23;
    *(v26 + 8) = v22;
    *(v26 + 9) = v20;
    *(v26 + 10) = v13;
  }

  while (v7 != v4);
  return result;
}

void *sub_1005C84F0(void (*a1)(char *), uint64_t a2)
{
  v31 = a1;
  v4 = sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v30 = type metadata accessor for SharingCircleSecretValue(0);
  v26 = *(v30 - 8);
  v7 = __chkstk_darwin(v30);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v25 = &v24 - v9;
  v10 = type metadata accessor for SharingCircleSecret(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  v32 = dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v17 = *(v11 + 48);
  v27 = v11 + 48;
  v28 = v10;
  if (v17(v16, 1, v10) == 1)
  {
    v18 = _swiftEmptyArrayStorage;
  }

  else
  {
    v19 = (v26 + 48);
    v18 = _swiftEmptyArrayStorage;
    v24 = a2;
    while (1)
    {
      sub_10062CC64(v16, v13, type metadata accessor for SharingCircleSecret);
      v31(v13);
      if (v2)
      {
        break;
      }

      sub_10062CBB8(v13, type metadata accessor for SharingCircleSecret);
      if ((*v19)(v6, 1, v30) == 1)
      {
        sub_10000B3A8(v6, &qword_101697610, &unk_10138C4B0);
      }

      else
      {
        v20 = v25;
        sub_10062CC64(v6, v25, type metadata accessor for SharingCircleSecretValue);
        sub_10062CC64(v20, v29, type metadata accessor for SharingCircleSecretValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100A5E720(0, v18[2] + 1, 1, v18);
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          v18 = sub_100A5E720((v21 > 1), v22 + 1, 1, v18);
        }

        v18[2] = v22 + 1;
        sub_10062CC64(v29, v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, type metadata accessor for SharingCircleSecretValue);
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v17(v16, 1, v28) == 1)
      {
        goto LABEL_14;
      }
    }

    sub_10062CBB8(v13, type metadata accessor for SharingCircleSecret);
  }

LABEL_14:

  return v18;
}

BOOL sub_1005C8928(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  if (a1)
  {
    v4 = 0x7261646E6F636553;
  }

  else
  {
    v4 = 0x7972616D697250;
  }

  if (a1)
  {
    v5 = 0xE900000000000079;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  do
  {
    v6 = v2;
    if (v2-- == 0)
    {
      break;
    }

    if (*v3)
    {
      v8 = 0x7261646E6F636553;
    }

    else
    {
      v8 = 0x7972616D697250;
    }

    if (*v3)
    {
      v9 = 0xE900000000000079;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (v8 == v4 && v9 == v5)
    {

      return v6 != 0;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v3;
  }

  while ((v11 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1005C8A30(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for UUID();
    ++v2;
    sub_100009774(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

BOOL sub_1005C8B3C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (qword_1013B37F0[v6] != qword_1013B37F0[a1]);
  return v4 != 0;
}

uint64_t sub_1005C8B7C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v40 = v4;
    v41 = v11;
    while (1)
    {
      sub_10062CD24(v10, v7, type metadata accessor for OwnerSharingCircle);
      v12 = *v7;
      v13 = v7[1];
      v15 = *a1;
      v14 = a1[1];
      v16 = v13 >> 62;
      v17 = v14 >> 62;
      if (v13 >> 62 == 3)
      {
        break;
      }

      if (v16 <= 1)
      {
        if (!v16)
        {
          v19 = BYTE6(v13);
          if (v17 <= 1)
          {
            goto LABEL_26;
          }

          goto LABEL_31;
        }

        LODWORD(v19) = HIDWORD(v12) - v12;
        if (__OFSUB__(HIDWORD(v12), v12))
        {
          goto LABEL_69;
        }

        v19 = v19;
        goto LABEL_25;
      }

      if (v16 == 2)
      {
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        v23 = __OFSUB__(v21, v22);
        v19 = v21 - v22;
        if (v23)
        {
          goto LABEL_68;
        }

        goto LABEL_25;
      }

      v19 = 0;
      if (v17 <= 1)
      {
LABEL_26:
        if (v17)
        {
          LODWORD(v24) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_67;
          }

          v24 = v24;
        }

        else
        {
          v24 = BYTE6(v14);
        }

        goto LABEL_33;
      }

LABEL_31:
      if (v17 != 2)
      {
        if (v19)
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      }

      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      v23 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v23)
      {
        __break(1u);
LABEL_67:
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
      }

LABEL_33:
      if (v19 != v24)
      {
        goto LABEL_63;
      }

      if (v19 < 1)
      {
        goto LABEL_56;
      }

      if (v16 > 1)
      {
        if (v16 != 2)
        {
          memset(v44, 0, 14);
LABEL_52:
          sub_100771A28(v44, v15, v14, &v43);
          if (!v43)
          {
            goto LABEL_63;
          }

          goto LABEL_56;
        }

        v42 = v9;
        v27 = *(v12 + 16);
        v39 = *(v12 + 24);
        v28 = __DataStorage._bytes.getter();
        if (v28)
        {
          v29 = __DataStorage._offset.getter();
          if (__OFSUB__(v27, v29))
          {
            goto LABEL_72;
          }

          v28 += v27 - v29;
        }

        if (__OFSUB__(v39, v27))
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (!v16)
        {
          v44[0] = *v7;
          LOWORD(v44[1]) = v13;
          BYTE2(v44[1]) = BYTE2(v13);
          BYTE3(v44[1]) = BYTE3(v13);
          BYTE4(v44[1]) = BYTE4(v13);
          BYTE5(v44[1]) = BYTE5(v13);
          goto LABEL_52;
        }

        v42 = v9;
        v30 = v12;
        if (v12 >> 32 < v12)
        {
          goto LABEL_70;
        }

        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v39 = v31;
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_73;
          }

          v28 = v30 - v32 + v39;
        }

        else
        {
          v28 = 0;
        }
      }

      __DataStorage._length.getter();
      v9 = v42;
      sub_100771A28(v28, v15, v14, v44);
      v4 = v40;
      v11 = v41;
      if ((v44[0] & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_56:
      if ((static UUID.== infix(_:_:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || *(v7 + v4[7]) != *(a1 + v4[7]) || (sub_100DE7CB4(*(v7 + v4[8]), *(a1 + v4[8])) & 1) == 0)
      {
LABEL_63:
        sub_10062CBB8(v7, type metadata accessor for OwnerSharingCircle);
        goto LABEL_64;
      }

      v33 = v4[9];
      v34 = *(v7 + v33);
      v35 = v9;
      v36 = *(a1 + v33);
      sub_10062CBB8(v7, type metadata accessor for OwnerSharingCircle);
      v18 = v34 == v36;
      v9 = v35;
      v11 = v41;
      if (v18)
      {
        return 1;
      }

LABEL_64:
      v10 += v11;
      if (!--v8)
      {
        return 0;
      }
    }

    if (v12)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13 == 0xC000000000000000;
    }

    v19 = 0;
    v20 = v18 && v14 >> 62 == 3;
    if (v20 && !v15 && v14 == 0xC000000000000000)
    {
      goto LABEL_56;
    }

LABEL_25:
    if (v17 <= 1)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t sub_1005C9000(uint64_t *a1, uint64_t a2)
{
  v105 = type metadata accessor for OwnedDeviceKeyRecord(0);
  __chkstk_darwin(v105);
  v6 = (&v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    v104 = a1;
    v10 = v105;
    v106 = v9;
    v107 = 0;
    while (1)
    {
      sub_10062CD24(v8, v6, type metadata accessor for OwnedDeviceKeyRecord);
      v11 = *v6;
      v12 = v6[1];
      v14 = *a1;
      v13 = a1[1];
      v15 = v12 >> 62;
      v16 = v13 >> 62;
      if (v12 >> 62 == 3)
      {
        break;
      }

      if (v15 <= 1)
      {
        if (!v15)
        {
          v18 = BYTE6(v12);
          if (v16 <= 1)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

        LODWORD(v18) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_158;
        }

        v18 = v18;
        goto LABEL_27;
      }

      if (v15 == 2)
      {
        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        v22 = __OFSUB__(v20, v21);
        v18 = v20 - v21;
        if (v22)
        {
          goto LABEL_157;
        }

        goto LABEL_27;
      }

      v18 = 0;
      if (v16 <= 1)
      {
LABEL_28:
        if (v16)
        {
          LODWORD(v23) = HIDWORD(v14) - v14;
          if (__OFSUB__(HIDWORD(v14), v14))
          {
            goto LABEL_156;
          }

          v23 = v23;
        }

        else
        {
          v23 = BYTE6(v13);
        }

        goto LABEL_35;
      }

LABEL_33:
      if (v16 != 2)
      {
        if (v18)
        {
          goto LABEL_4;
        }

        goto LABEL_57;
      }

      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      v22 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v22)
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
      }

LABEL_35:
      if (v18 != v23)
      {
        goto LABEL_4;
      }

      if (v18 >= 1)
      {
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v27 = *(v11 + 16);
            v28 = *(v11 + 24);
            v29 = __DataStorage._bytes.getter();
            if (v29)
            {
              v30 = v29;
              v31 = __DataStorage._offset.getter();
              if (__OFSUB__(v27, v31))
              {
                goto LABEL_161;
              }

              v32 = v28;
              v33 = v27 - v31 + v30;
              if (__OFSUB__(v32, v27))
              {
                goto LABEL_160;
              }
            }

            else
            {
              v40 = v28;
              v33 = 0;
              if (__OFSUB__(v40, v27))
              {
                goto LABEL_160;
              }
            }

            __DataStorage._length.getter();
            v37 = v33;
LABEL_55:
            v41 = v107;
            sub_100771A28(v37, v14, v13, v109);
            v107 = v41;
            v39 = v109[0];
            a1 = v104;
            v10 = v105;
          }

          else
          {
            memset(v109, 0, 14);
            v38 = v107;
            sub_100771A28(v109, v14, v13, &v108);
            v107 = v38;
            v39 = v108;
          }

          v9 = v106;
          if ((v39 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_57;
        }

        if (v15)
        {
          v34 = v11;
          if (v11 >> 32 < v11)
          {
            goto LABEL_159;
          }

          v35 = __DataStorage._bytes.getter();
          if (v35)
          {
            v36 = __DataStorage._offset.getter();
            if (__OFSUB__(v34, v36))
            {
              goto LABEL_162;
            }

            v35 += v34 - v36;
          }

          __DataStorage._length.getter();
          v37 = v35;
          goto LABEL_55;
        }

        v109[0] = *v6;
        LOWORD(v109[1]) = v12;
        BYTE2(v109[1]) = BYTE2(v12);
        BYTE3(v109[1]) = BYTE3(v12);
        BYTE4(v109[1]) = BYTE4(v12);
        BYTE5(v109[1]) = BYTE5(v12);
        v26 = v107;
        sub_100771A28(v109, v14, v13, &v108);
        v107 = v26;
        v9 = v106;
        if ((v108 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_57:
      if ((static UUID.== infix(_:_:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v42 = *(v10 + 28);
      v44 = *(v6 + v42);
      v43 = *(v6 + v42 + 8);
      v45 = (a1 + v42);
      v47 = *v45;
      v46 = v45[1];
      v48 = v43 >> 62;
      v49 = v46 >> 62;
      if (v43 >> 62 == 3)
      {
        v50 = 0;
        if (!v44 && v43 == 0xC000000000000000 && v46 >> 62 == 3)
        {
          v50 = 0;
          if (!v47 && v46 == 0xC000000000000000)
          {
            goto LABEL_106;
          }
        }

LABEL_76:
        if (v49 <= 1)
        {
          goto LABEL_77;
        }

        goto LABEL_82;
      }

      if (v48 <= 1)
      {
        if (!v48)
        {
          v50 = BYTE6(v43);
          if (v49 <= 1)
          {
            goto LABEL_77;
          }

          goto LABEL_82;
        }

        LODWORD(v50) = HIDWORD(v44) - v44;
        if (__OFSUB__(HIDWORD(v44), v44))
        {
          goto LABEL_165;
        }

        v50 = v50;
        goto LABEL_76;
      }

      if (v48 == 2)
      {
        v52 = *(v44 + 16);
        v51 = *(v44 + 24);
        v22 = __OFSUB__(v51, v52);
        v50 = v51 - v52;
        if (v22)
        {
          goto LABEL_166;
        }

        goto LABEL_76;
      }

      v50 = 0;
      if (v49 <= 1)
      {
LABEL_77:
        if (v49)
        {
          LODWORD(v53) = HIDWORD(v47) - v47;
          if (__OFSUB__(HIDWORD(v47), v47))
          {
            goto LABEL_163;
          }

          v53 = v53;
        }

        else
        {
          v53 = BYTE6(v46);
        }

        goto LABEL_84;
      }

LABEL_82:
      if (v49 != 2)
      {
        if (v50)
        {
          goto LABEL_4;
        }

        goto LABEL_106;
      }

      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      v22 = __OFSUB__(v54, v55);
      v53 = v54 - v55;
      if (v22)
      {
        goto LABEL_164;
      }

LABEL_84:
      if (v50 != v53)
      {
        goto LABEL_4;
      }

      if (v50 >= 1)
      {
        if (v48 > 1)
        {
          if (v48 != 2)
          {
            memset(v109, 0, 14);
            sub_100017D5C(v44, v43);
            sub_100017D5C(v47, v46);
            v70 = v107;
            sub_100771A28(v109, v47, v46, &v108);
            v107 = v70;
            sub_100016590(v47, v46);
            sub_100016590(v44, v43);
            v9 = v106;
            if ((v108 & 1) == 0)
            {
              goto LABEL_4;
            }

            goto LABEL_106;
          }

          v57 = v47;
          v58 = *(v44 + 16);
          v102 = *(v44 + 24);
          sub_100017D5C(v44, v43);
          v103 = v57;
          sub_100017D5C(v57, v46);
          v59 = __DataStorage._bytes.getter();
          if (v59)
          {
            v60 = __DataStorage._offset.getter();
            if (__OFSUB__(v58, v60))
            {
              goto LABEL_175;
            }

            v59 += v58 - v60;
          }

          if (__OFSUB__(v102, v58))
          {
            goto LABEL_172;
          }

          __DataStorage._length.getter();
          v61 = v59;
          v62 = v103;
          v63 = v107;
          sub_100771A28(v61, v103, v46, v109);
          v107 = v63;
          sub_100016590(v62, v46);
          sub_100016590(v44, v43);
          v64 = v109[0];
          a1 = v104;
          goto LABEL_103;
        }

        if (v48)
        {
          v103 = v47;
          if (v44 >> 32 < v44)
          {
            goto LABEL_171;
          }

          sub_100017D5C(v44, v43);
          sub_100017D5C(v103, v46);
          v65 = __DataStorage._bytes.getter();
          if (v65)
          {
            v66 = __DataStorage._offset.getter();
            if (__OFSUB__(v44, v66))
            {
              goto LABEL_176;
            }

            v65 += v44 - v66;
          }

          a1 = v104;
          __DataStorage._length.getter();
          v67 = v65;
          v68 = v103;
          v69 = v107;
          sub_100771A28(v67, v103, v46, v109);
          v107 = v69;
          sub_100016590(v68, v46);
          sub_100016590(v44, v43);
          v64 = v109[0];
LABEL_103:
          v10 = v105;
          v9 = v106;
          if ((v64 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_106;
        }

        v109[0] = v44;
        LOWORD(v109[1]) = v43;
        BYTE2(v109[1]) = BYTE2(v43);
        BYTE3(v109[1]) = BYTE3(v43);
        BYTE4(v109[1]) = BYTE4(v43);
        BYTE5(v109[1]) = BYTE5(v43);
        sub_100017D5C(v44, v43);
        sub_100017D5C(v47, v46);
        v10 = v105;
        v56 = v107;
        sub_100771A28(v109, v47, v46, &v108);
        v107 = v56;
        v9 = v106;
        sub_100016590(v47, v46);
        sub_100016590(v44, v43);
        if ((v108 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_106:
      v71 = *(v10 + 32);
      v73 = *(v6 + v71);
      v72 = *(v6 + v71 + 8);
      v74 = (a1 + v71);
      v75 = *v74;
      v76 = v74[1];
      v77 = v72 >> 62;
      v78 = v76 >> 62;
      if (v72 >> 62 == 3)
      {
        v79 = 0;
        if (!v73 && v72 == 0xC000000000000000 && v76 >> 62 == 3)
        {
          v79 = 0;
          if (!v75 && v76 == 0xC000000000000000)
          {
LABEL_153:
            sub_10062CBB8(v6, type metadata accessor for OwnedDeviceKeyRecord);
            return 1;
          }
        }

LABEL_123:
        if (v78 <= 1)
        {
          goto LABEL_124;
        }

        goto LABEL_129;
      }

      if (v77 <= 1)
      {
        if (!v77)
        {
          v79 = BYTE6(v72);
          if (v78 <= 1)
          {
            goto LABEL_124;
          }

          goto LABEL_129;
        }

        LODWORD(v79) = HIDWORD(v73) - v73;
        if (__OFSUB__(HIDWORD(v73), v73))
        {
          goto LABEL_170;
        }

        v79 = v79;
        goto LABEL_123;
      }

      if (v77 == 2)
      {
        v81 = *(v73 + 16);
        v80 = *(v73 + 24);
        v22 = __OFSUB__(v80, v81);
        v79 = v80 - v81;
        if (v22)
        {
          goto LABEL_169;
        }

        goto LABEL_123;
      }

      v79 = 0;
      if (v78 <= 1)
      {
LABEL_124:
        if (v78)
        {
          LODWORD(v82) = HIDWORD(v75) - v75;
          if (__OFSUB__(HIDWORD(v75), v75))
          {
            goto LABEL_168;
          }

          v82 = v82;
        }

        else
        {
          v82 = BYTE6(v76);
        }

        goto LABEL_131;
      }

LABEL_129:
      if (v78 != 2)
      {
        if (!v79)
        {
          goto LABEL_153;
        }

        goto LABEL_4;
      }

      v84 = *(v75 + 16);
      v83 = *(v75 + 24);
      v22 = __OFSUB__(v83, v84);
      v82 = v83 - v84;
      if (v22)
      {
        goto LABEL_167;
      }

LABEL_131:
      if (v79 != v82)
      {
        goto LABEL_4;
      }

      if (v79 < 1)
      {
        goto LABEL_153;
      }

      if (v77 <= 1)
      {
        if (!v77)
        {
          v109[0] = v73;
          LOWORD(v109[1]) = v72;
          BYTE2(v109[1]) = BYTE2(v72);
          BYTE3(v109[1]) = BYTE3(v72);
          BYTE4(v109[1]) = BYTE4(v72);
          BYTE5(v109[1]) = BYTE5(v72);
          sub_100017D5C(v75, v76);
          sub_100017D5C(v75, v76);
          v10 = v105;
          v85 = v107;
          sub_100771A28(v109, v75, v76, &v108);
          v107 = v85;
          v9 = v106;
          sub_100016590(v75, v76);
          sub_100016590(v75, v76);
          sub_100016590(v73, v72);
          if (v108)
          {
            goto LABEL_153;
          }

          goto LABEL_4;
        }

        v93 = v73;
        v73 = v73;
        v102 = (v93 >> 32) - v73;
        if (v93 >> 32 < v73)
        {
          goto LABEL_173;
        }

        sub_100017D5C(v75, v76);
        sub_100017D5C(v75, v76);
        v103 = v93;
        sub_100017D5C(v93, v72);
        v94 = __DataStorage._bytes.getter();
        if (v94)
        {
          v95 = __DataStorage._offset.getter();
          if (__OFSUB__(v73, v95))
          {
            goto LABEL_178;
          }

          v94 += v73 - v95;
        }

        v96 = v103;
        __DataStorage._length.getter();
        v97 = v94;
        v98 = v107;
        sub_100771A28(v97, v75, v76, v109);
        v107 = v98;
        sub_100016590(v75, v76);
        sub_100016590(v75, v76);
        sub_100016590(v96, v72);
        v92 = v109[0];
        goto LABEL_150;
      }

      if (v77 == 2)
      {
        v86 = v73;
        v87 = *(v73 + 16);
        v102 = *(v86 + 24);
        sub_100017D5C(v75, v76);
        sub_100017D5C(v75, v76);
        v103 = v86;
        sub_100017D5C(v86, v72);
        v88 = __DataStorage._bytes.getter();
        if (v88)
        {
          v89 = __DataStorage._offset.getter();
          if (__OFSUB__(v87, v89))
          {
            goto LABEL_177;
          }

          v88 += v87 - v89;
        }

        if (__OFSUB__(v102, v87))
        {
          goto LABEL_174;
        }

        __DataStorage._length.getter();
        v90 = v88;
        v91 = v107;
        sub_100771A28(v90, v75, v76, v109);
        v107 = v91;
        sub_100016590(v75, v76);
        sub_100016590(v75, v76);
        sub_100016590(v103, v72);
        v92 = v109[0];
        a1 = v104;
LABEL_150:
        v10 = v105;
        goto LABEL_152;
      }

      memset(v109, 0, 14);
      sub_100017D5C(v75, v76);
      sub_100017D5C(v75, v76);
      v99 = v107;
      sub_100771A28(v109, v75, v76, &v108);
      v107 = v99;
      sub_100016590(v75, v76);
      sub_100016590(v75, v76);
      sub_100016590(v73, v72);
      v92 = v108;
LABEL_152:
      v9 = v106;
      if (v92)
      {
        goto LABEL_153;
      }

LABEL_4:
      sub_10062CBB8(v6, type metadata accessor for OwnedDeviceKeyRecord);
      v8 += v9;
      if (!--v7)
      {
        return 0;
      }
    }

    if (v11)
    {
      v17 = 0;
    }

    else
    {
      v17 = v12 == 0xC000000000000000;
    }

    v18 = 0;
    v19 = v17 && v13 >> 62 == 3;
    if (v19 && !v14 && v13 == 0xC000000000000000)
    {
      goto LABEL_57;
    }

LABEL_27:
    if (v16 <= 1)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  return 0;
}

uint64_t sub_1005C9C88(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_11:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + (v8 | (v7 << 6))) == result)
    {
      return 1;
    }
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
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005C9D54(uint64_t result)
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
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);

      sub_100DEA8E0(v14, v11, v12, v13);

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

uint64_t sub_1005C9E68(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  result = __chkstk_darwin(v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_100DE8BCC(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005CA078(uint64_t a1)
{
  v2 = v1;
  v57 = type metadata accessor for RawSearchResult(0);
  v51 = *(v57 - 1);
  v4 = __chkstk_darwin(v57);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v47 - v8;
  v10 = __chkstk_darwin(v7);
  v55 = &v47 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v47 - v13;
  __chkstk_darwin(v12);
  v50 = &v47 - v15;
  v16 = 0;
  v52 = a1;
  v53 = v2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v56 = v14;
  v48 = v23;
  v49 = v18;
  if (v22)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_6:
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v24 >= v23)
    {
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
  }

  while (!v22);
LABEL_9:
  v25 = __clz(__rbit64(v22));
  v22 &= v22 - 1;
  v26 = *(v51 + 72);
  v27 = v50;
  sub_10062CD24(*(v52 + 48) + v26 * (v25 | (v24 << 6)), v50, type metadata accessor for RawSearchResult);
  sub_10062CC64(v27, v14, type metadata accessor for RawSearchResult);
  v28 = *v2;
  Hasher.init(_seed:)();
  sub_100D15128(v59);
  v29 = Hasher._finalize()();
  v30 = -1 << *(v28 + 32);
  v31 = v29 & ~v30;
  if ((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
  {
    v32 = ~v30;
    v33 = *v14;
    do
    {
      sub_10062CD24(*(v28 + 48) + v31 * v26, v6, type metadata accessor for RawSearchResult);
      if (*v6 == v33 && (static Date.== infix(_:_:)() & 1) != 0 && *&v6[v57[6]] == *&v56[v57[6]] && *&v6[v57[7]] == *&v56[v57[7]] && *&v6[v57[8]] == *&v56[v57[8]])
      {
        v54 = static UUID.== infix(_:_:)();
        sub_10062CBB8(v6, type metadata accessor for RawSearchResult);
        if (v54)
        {
          v14 = v56;
          sub_10062CBB8(v56, type metadata accessor for RawSearchResult);
          v16 = v24;
          v2 = v53;
LABEL_40:
          v23 = v48;
          v18 = v49;
          if (!v22)
          {
            goto LABEL_6;
          }

LABEL_5:
          v24 = v16;
          goto LABEL_9;
        }
      }

      else
      {
        sub_10062CBB8(v6, type metadata accessor for RawSearchResult);
      }

      v31 = (v31 + 1) & v32;
    }

    while (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
  }

  v2 = v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v55;
  sub_10062CD24(v56, v55, type metadata accessor for RawSearchResult);
  v58 = *v2;
  v36 = v58;
  v37 = *(v58 + 16);
  if (*(v58 + 24) <= v37)
  {
    v38 = v37 + 1;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_100DF50BC(v38);
    }

    else
    {
      sub_100E08824(v38);
    }

    v36 = v58;
    Hasher.init(_seed:)();
    sub_100D15128(v59);
    v39 = Hasher._finalize()();
    v40 = -1 << *(v36 + 32);
    v31 = v39 & ~v40;
    if ((*(v36 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
    {
      v41 = ~v40;
      v42 = *v35;
      do
      {
        sub_10062CD24(*(v36 + 48) + v31 * v26, v9, type metadata accessor for RawSearchResult);
        if (*v9 == v42 && (static Date.== infix(_:_:)() & 1) != 0 && *&v9[v57[6]] == *&v55[v57[6]] && *&v9[v57[7]] == *&v55[v57[7]] && *&v9[v57[8]] == *&v55[v57[8]])
        {
          v54 = static UUID.== infix(_:_:)();
          sub_10062CBB8(v9, type metadata accessor for RawSearchResult);
          if (v54)
          {
            goto LABEL_45;
          }
        }

        else
        {
          sub_10062CBB8(v9, type metadata accessor for RawSearchResult);
        }

        v31 = (v31 + 1) & v41;
      }

      while (((*(v36 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
      v2 = v53;
      v35 = v55;
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E04FE0();
    v36 = v58;
  }

  *(v36 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v31;
  sub_10062CC64(v35, *(v36 + 48) + v31 * v26, type metadata accessor for RawSearchResult);
  v14 = v56;
  sub_10062CBB8(v56, type metadata accessor for RawSearchResult);
  v43 = *(v36 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (!v44)
  {
    *(v36 + 16) = v45;
    *v2 = v36;
    v16 = v24;
    goto LABEL_40;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005CA6B4(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for Characteristic();
    sub_100009774(&qword_1016A5B28, type metadata accessor for Characteristic, &unk_1013D4780);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
      return sub_1000128F8(v1);
    }

    while (1)
    {
      sub_100DF104C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for Characteristic();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      return sub_1000128F8(v1);
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      return sub_1000128F8(v1);
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1005CA8D8(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, a2, a3);
    sub_100009CC8(a4, a2, a3);
    Set.Iterator.init(_cocoa:)();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_1000128F8(v6);
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BB8(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1005CAAF8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100771FF8(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1005CABE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  if (*(a3 + 16) && (v10 = sub_100771E30(a1, a2), (a2 & 1) != 0))
  {
    v11 = v10;
    v12 = *(a3 + 56);
    v13 = a4(0);
    v20 = *(v13 - 8);
    sub_10062CD24(v12 + *(v20 + 72) * v11, a6, a5);
    v14 = *(v20 + 56);
    v15 = a6;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = (a4)(0, a2);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a6;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1005CAD18(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1000210EC(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_1005CAD68@<X0>(uint64_t *a1@<X8>)
{
  result = static Data.random(bytes:)();
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_21;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
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
    v5 = BYTE6(v3);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v5;
LABEL_10:
  if (v5 != 32)
  {
LABEL_13:
    v13 = v3;
    v14 = result;
    if (v4 == 1)
    {
      LODWORD(v4) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        while (1)
        {
          v11 = v4;
LABEL_22:
          sub_100018350();
          swift_allocError();
          *v12 = 32;
          *(v12 + 8) = v11;
          *(v12 + 16) = 0;
          swift_willThrow();
          sub_100016590(v14, v13);
          swift_unexpectedError();
          __break(1u);
        }
      }

      __break(1u);
    }

    if (v4 != 2)
    {
      v11 = BYTE6(v3);
      goto LABEL_22;
    }

    v9 = *(result + 16);
    v10 = *(result + 24);
    v11 = v10 - v9;
    if (!__OFSUB__(v10, v9))
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    v13 = v3;
    v14 = result;
    v11 = 0;
    goto LABEL_22;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005CAEA4@<X0>(uint64_t *a1@<X8>)
{
  result = static Data.random(bytes:)();
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_21;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
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
    v5 = BYTE6(v3);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v5;
LABEL_10:
  if (v5 != 6)
  {
LABEL_13:
    v13 = v3;
    v14 = result;
    if (v4 == 1)
    {
      LODWORD(v4) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        while (1)
        {
          v11 = v4;
LABEL_22:
          sub_100018350();
          swift_allocError();
          *v12 = 6;
          *(v12 + 8) = v11;
          *(v12 + 16) = 0;
          swift_willThrow();
          sub_100016590(v14, v13);
          swift_unexpectedError();
          __break(1u);
        }
      }

      __break(1u);
    }

    if (v4 != 2)
    {
      v11 = BYTE6(v3);
      goto LABEL_22;
    }

    v9 = *(result + 16);
    v10 = *(result + 24);
    v11 = v10 - v9;
    if (!__OFSUB__(v10, v9))
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    v13 = v3;
    v14 = result;
    v11 = 0;
    goto LABEL_22;
  }

  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005CAFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LocationFetcher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  My = type metadata accessor for Feature.FindMy();
  v22[3] = My;
  v22[4] = sub_100009774(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v12 = sub_1000280DC(v22);
  (*(*(My - 8) + 104))(v12, enum case for Feature.FindMy.itemSharing(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100007BAC(v22);
  if (My)
  {
    v14 = v4[6];
    v15 = v4[7];
    sub_1000035D0(v4 + 3, v14);
    if ((*(v15 + 24))(v14, v15))
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a3;
      type metadata accessor for Transaction();
      sub_10062CD24(v4, &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
      v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v18 = swift_allocObject();
      v18[2] = sub_10013A884;
      v18[3] = v16;
      v18[4] = a1;
      sub_10062CC64(&v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for LocationFetcher);

      static Transaction.asyncTask(name:block:)();
    }

    else
    {
      type metadata accessor for Transaction();
      sub_10062CD24(v4, &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
      v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v20 = swift_allocObject();
      v20[2] = a2;
      v20[3] = a3;
      v20[4] = a1;
      sub_10062CC64(&v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for LocationFetcher);

      static Transaction.asyncTask(name:block:)();
    }
  }

  return result;
}

uint64_t sub_1005CB328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LocationFetcher(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v3[6];
  v11 = v3[7];
  sub_1000035D0(v3 + 3, v10);
  if ((*(v11 + 24))(v10, v11))
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    type metadata accessor for Transaction();
    sub_10062CD24(v3, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
    v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v14[2] = sub_100150F2C;
    v14[3] = v12;
    v14[4] = a1;
    sub_10062CC64(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LocationFetcher);

    static Transaction.asyncTask(name:block:)();
  }

  else
  {
    type metadata accessor for Transaction();
    sub_10062CD24(v3, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationFetcher);
    v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a1;
    sub_10062CC64(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LocationFetcher);

    static Transaction.asyncTask(name:block:)();
  }
}

uint64_t sub_1005CB5CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF88);
  sub_1000076D4(v0, qword_10177AF88);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005CB64C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AFA0);
  sub_1000076D4(v0, qword_10177AFA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005CB6CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AFB8);
  sub_1000076D4(v0, qword_10177AFB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005CB748()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AFD0);
  sub_1000076D4(v0, qword_10177AFD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005CB7C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1000035D0(a1, v4);
  LOBYTE(v4) = (*(v5 + 24))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  sub_1000035D0(a1, v6);
  v8 = (*(v7 + 40))(v6, v7);
  if (v4)
  {
    if (v8)
    {
      if (qword_101694808 != -1)
      {
        swift_once();
      }

      v9 = qword_10177AFD0;
    }

    else
    {
      if (qword_1016947F8 != -1)
      {
        swift_once();
      }

      v9 = qword_10177AFA0;
    }
  }

  else if (v8)
  {
    if (qword_101694800 != -1)
    {
      swift_once();
    }

    v9 = qword_10177AFB8;
  }

  else
  {
    if (qword_1016947F0 != -1)
    {
      swift_once();
    }

    v9 = qword_10177AF88;
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_1000076D4(v10, v9);
  v12 = *(*(v10 - 8) + 16);

  return v12(a2, v11, v10);
}

uint64_t sub_1005CB9A8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v157 = a7;
  LODWORD(v155) = a3;
  v159 = type metadata accessor for UUID();
  v162 = *(v159 - 8);
  v14 = __chkstk_darwin(v159);
  v144 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v154 = &v144 - v17;
  v18 = __chkstk_darwin(v16);
  v151 = &v144 - v19;
  v20 = __chkstk_darwin(v18);
  v150 = &v144 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v144 - v23;
  v25 = __chkstk_darwin(v22);
  v145 = &v144 - v26;
  __chkstk_darwin(v25);
  v147 = &v144 - v27;
  v28 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v28 - 8);
  v30 = &v144 - v29;
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v156 = (&v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __chkstk_darwin(v33);
  v148 = &v144 - v36;
  v37 = __chkstk_darwin(v35);
  v146 = &v144 - v38;
  __chkstk_darwin(v37);
  v161 = &v144 - v39;
  swift_beginAccess();
  v153 = a4;
  v40 = a4[2];
  if (*(v40 + 16) && (v41 = sub_1000210EC(a1), (v42 & 1) != 0))
  {
    v43 = *(*(v40 + 56) + 8 * v41);
    swift_endAccess();
    v166 = v43;
  }

  else
  {
    swift_endAccess();
    v43 = &_swiftEmptySetSingleton;
    v166 = &_swiftEmptySetSingleton;
  }

  v149 = v43[2];

  sub_1005CA078(v44);
  swift_beginAccess();
  v45 = *(a5 + 16);
  if (*(v45 + 16))
  {
    v46 = sub_1000210EC(a1);
    v47 = v161;
    if (v48)
    {
      (*(v32 + 16))(v30, *(v45 + 56) + *(v32 + 72) * v46, v31);
      v49 = 0;
    }

    else
    {
      v49 = 1;
    }
  }

  else
  {
    v49 = 1;
    v47 = v161;
  }

  (*(v32 + 56))(v30, v49, 1, v31);
  swift_endAccess();
  v50 = *(v32 + 48);
  v51 = v50(v30, 1, v31);
  v160 = a6;
  if (v51 == 1)
  {
    static Date.distantPast.getter();
    if (v50(v30, 1, v31) != 1)
    {
      sub_10000B3A8(v30, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v32 + 32))(v47, v30, v31);
  }

  v52 = v166;
  if (!v166[2])
  {
    if (v155)
    {
      v158 = v166;
      type metadata accessor for LocationFetcher(0);
      v53 = v162;
      v54 = *(v162 + 16);
      v55 = v159;
      v54(v147, a1, v159);
      (*(v32 + 16))(v146, v47, v31);
      v56 = v145;
      v54(v145, a1, v55);
      v57 = v157;
      swift_retain_n();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        LODWORD(v160) = v59;
        v60 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v165[0] = v156;
        *v60 = 141558787;
        *(v60 + 4) = 1752392040;
        *(v60 + 12) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v61 = v147;
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v55;
        v65 = v64;
        v66 = *(v53 + 8);
        v162 = v53 + 8;
        v66(v61, v63);
        v67 = sub_1000136BC(v62, v65, v165);

        *(v60 + 14) = v67;
        *(v60 + 22) = 2048;
        v68 = v148;
        static Date.trustedNow.getter(v148);
        v69 = v146;
        Date.timeIntervalSince(_:)();
        v71 = v70;
        v72 = *(v32 + 8);
        v72(v68, v31);
        v72(v69, v31);
        *(v60 + 24) = fabs(v71);
        *(v60 + 32) = 2048;
        swift_beginAccess();
        v73 = *(v57 + 16);
        if (*(v73 + 16) && (v74 = sub_1000210EC(v145), (v75 & 1) != 0))
        {
          v76 = *(*(v73 + 56) + 8 * v74);
        }

        else
        {
          v76 = 0;
        }

        v142 = v159;
        swift_endAccess();

        v66(v145, v142);
        *(v60 + 34) = v76;

        _os_log_impl(&_mh_execute_header, v58, v160, "No location found for beacon %{private,mask.hash}s after %f seconds, %ld round trip(s).", v60, 0x2Au);
        sub_100007BAC(v156);

        v72(v161, v31);
      }

      else
      {

        v140 = *(v53 + 8);
        v140(v56, v55);

        v141 = *(v32 + 8);
        v141(v146, v31);
        v140(v147, v55);
        v141(v47, v31);
      }
    }

    goto LABEL_22;
  }

  if ((v155 & 1) == 0)
  {
LABEL_22:
    swift_beginAccess();
    v77 = *(a8 + 16);

    v78 = sub_1005CCB64(v52, a1, v77);

    if ((v78 & 1) == 0)
    {
      v125 = v153;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = v125[2];
      v125[2] = 0x8000000000000000;
      sub_100FFC200(v52, a1, isUniquelyReferenced_nonNull_native);
      v125[2] = v164;
      swift_endAccess();
      type metadata accessor for LocationFetcher(0);
      v127 = v162;
      v128 = v144;
      v129 = v159;
      (*(v162 + 16))(v144, a1, v159);
      v130 = Logger.logObject.getter();
      v131 = v52;
      v132 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v130, v132))
      {
        v133 = v128;
        v134 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v165[0] = v160;
        *v134 = 134218499;
        *(v134 + 4) = v131[2] - v149;
        *(v134 + 12) = 2160;
        *(v134 + 14) = 1752392040;
        *(v134 + 22) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v158 = v131;
        v135 = dispatch thunk of CustomStringConvertible.description.getter();
        v137 = v136;
        (*(v127 + 8))(v133, v129);
        v138 = sub_1000136BC(v135, v137, v165);

        *(v134 + 24) = v138;
        _os_log_impl(&_mh_execute_header, v130, v132, "Appended %ld location results for beacon %{private,mask.hash}s.", v134, 0x20u);
        sub_100007BAC(v160);

        (*(v32 + 8))(v161, v31);
      }

      else
      {

        (*(v127 + 8))(v128, v129);
        (*(v32 + 8))(v47, v31);
      }
    }
  }

  v155 = v32;
  v79 = v162;
  v80 = *(v162 + 16);
  v80(v24, a1, v159);
  swift_beginAccess();
  v81 = *(a8 + 16);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v81;
  v152 = v31;
  v158 = v52;
  if ((v82 & 1) == 0)
  {
    v81 = sub_100A5BFE0(0, v81[2] + 1, 1, v81);
    *(a8 + 16) = v81;
  }

  v84 = v81[2];
  v83 = v81[3];
  if (v84 >= v83 >> 1)
  {
    v81 = sub_100A5BFE0((v83 > 1), v84 + 1, 1, v81);
  }

  v81[2] = v84 + 1;
  v85 = v159;
  (*(v79 + 32))(v81 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v84, v24, v159);
  *(a8 + 16) = v81;
  v86 = v85;
  sub_1000BC4D4(&qword_10169C9D0, &qword_101398A88);
  v87 = (sub_1000BC4D4(&qword_10169C9D8, &qword_1013B3280) - 8);
  v88 = (*(*v87 + 80) + 32) & ~*(*v87 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_101385D80;
  v90 = v89 + v88;
  v91 = v87[14];
  v80(v90, a1, v85);
  *(v90 + v91) = v158;

  v92 = sub_1009089B8(v89);
  swift_setDeallocating();
  sub_10000B3A8(v90, &qword_10169C9D8, &qword_1013B3280);
  swift_deallocClassInstance();
  v93 = sub_1005CEE64(v92);

  swift_beginAccess();

  v94 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *(a9 + 16);
  *(a9 + 16) = 0x8000000000000000;
  sub_10062B3A4(v93, sub_10060D9AC, 0, v94, &v163);

  *(a9 + 16) = v163;
  swift_endAccess();

  v95 = v150;
  v80(v150, a1, v85);
  swift_beginAccess();
  sub_1001DE1B0(0, v95);
  swift_endAccess();
  type metadata accessor for LocationFetcher(0);
  v96 = v151;
  v80(v151, a1, v85);
  v97 = v155;
  v98 = v161;
  (*(v155 + 16))(v156, v161, v152);
  v99 = v154;
  v80(v154, a1, v85);
  v100 = v157;
  swift_retain_n();
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v101, v102))
  {
    LODWORD(v160) = v102;
    v103 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v163 = v153;
    *v103 = 134219011;
    *(v103 + 4) = v158[2] - v149;
    *(v103 + 12) = 2160;
    *(v103 + 14) = 1752392040;
    *(v103 + 22) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v104 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v105;
    v107 = *(v162 + 8);
    v108 = v86;
    v162 += 8;
    v109 = v107;
    v107(v96, v108);
    v110 = sub_1000136BC(v104, v106, &v163);

    *(v103 + 24) = v110;
    *(v103 + 32) = 2048;
    v111 = v148;
    static Date.trustedNow.getter(v148);
    v112 = v156;
    Date.timeIntervalSince(_:)();
    v114 = v113;
    v115 = *(v97 + 8);
    v116 = v152;
    v115(v111, v152);
    v155 = v97 + 8;
    v115(v112, v116);
    *(v103 + 34) = fabs(v114);
    *(v103 + 42) = 2048;
    swift_beginAccess();
    v117 = *(v100 + 16);
    if (*(v117 + 16))
    {
      v118 = v154;
      v119 = sub_1000210EC(v154);
      if (v120)
      {
        v121 = *(*(v117 + 56) + 8 * v119);
      }

      else
      {
        v121 = 0;
      }

      v139 = v161;
    }

    else
    {
      v121 = 0;
      v139 = v161;
      v118 = v154;
    }

    swift_endAccess();

    v109(v118, v159);
    *(v103 + 44) = v121;

    _os_log_impl(&_mh_execute_header, v101, v160, "Terminated fetch with %ld results and cleared beacon %{private,mask.hash}s after %f seconds, %ld round trip(s).", v103, 0x34u);
    sub_100007BAC(v153);

    v115(v139, v116);
  }

  else
  {

    v122 = *(v162 + 8);
    v122(v99, v85);

    v123 = *(v97 + 8);
    v124 = v152;
    v123(v156, v152);
    v122(v96, v85);
    v123(v98, v124);
  }
}

uint64_t sub_1005CCB64(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v252 = a3;
  v268 = a2;
  v275 = a1;
  *&v254 = sub_1000BC4D4(&qword_10169EF28, &unk_10139FC10);
  v261 = *(v254 - 8);
  v5 = __chkstk_darwin(v254);
  *&v253 = &v244 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v273 = (&v244 - v7);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v256 = &v244 - v9;
  v10 = type metadata accessor for UUID();
  v267 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v274 = &v244 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v244 - v14;
  v16 = __chkstk_darwin(v13);
  v259 = &v244 - v17;
  v18 = __chkstk_darwin(v16);
  v248 = &v244 - v19;
  v20 = __chkstk_darwin(v18);
  v250 = &v244 - v21;
  v22 = __chkstk_darwin(v20);
  v260 = &v244 - v23;
  v24 = __chkstk_darwin(v22);
  v262 = &v244 - v25;
  v26 = __chkstk_darwin(v24);
  v270 = &v244 - v27;
  v28 = __chkstk_darwin(v26);
  v249 = &v244 - v29;
  v30 = __chkstk_darwin(v28);
  v258 = &v244 - v31;
  v32 = __chkstk_darwin(v30);
  v251 = &v244 - v33;
  v34 = __chkstk_darwin(v32);
  v255 = &v244 - v35;
  __chkstk_darwin(v34);
  v265 = &v244 - v36;
  v269 = type metadata accessor for LocationFetcher(0);
  v37 = __chkstk_darwin(v269);
  v257 = &v244 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v264 = (&v244 - v39);
  v40 = type metadata accessor for RawSearchResult(0);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v244 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    v44 = sub_101074188(v281);

    v45 = *(v4 + 48);
    v46 = *(v4 + 56);
    sub_1000035D0((v4 + 24), v45);
    v47 = (*(v46 + 40))(v45, v46);
    v266 = v44;
    if (v47)
    {
      v48 = *(v269 + 32);
      v49 = v267;
      v272 = *(v267 + 16);
      v272(v15, v268, v10);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v263 = v4;
        v271 = v48;
        v53 = v52;
        v54 = swift_slowAlloc();
        v281 = v54;
        *v53 = 141558275;
        *(v53 + 4) = 1752392040;
        *(v53 + 12) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v273 = *(v49 + 8);
        v273(v15, v10);
        v58 = sub_1000136BC(v55, v57, &v281);

        *(v53 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v50, v51, "Exhaustive termination policy in effect for %{private,mask.hash}s.", v53, 0x16u);
        sub_100007BAC(v54);
      }

      else
      {

        v273 = *(v49 + 8);
        v273(v15, v10);
      }

      v64 = v274;
      v65 = v275[2];
      v66 = v266;
      v67 = v65 >= v266;
      v272(v274, v268, v10);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = v65 >= v66;
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v281 = v72;
        *v71 = 67109635;
        *(v71 + 4) = v70;
        *(v71 + 8) = 2160;
        *(v71 + 10) = 1752392040;
        *(v71 + 18) = 2081;
        sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v64;
        v76 = v75;
        v273(v74, v10);
        v77 = sub_1000136BC(v73, v76, &v281);

        *(v71 + 20) = v77;
        _os_log_impl(&_mh_execute_header, v68, v69, "Found enough results: %{BOOL}d to terminate beacon: %{private,mask.hash}s.", v71, 0x1Cu);
        sub_100007BAC(v72);
      }

      else
      {

        v273(v64, v10);
      }

      return v67 & 1;
    }

    v263 = v4;
    v59 = v275;
    v60 = v275 + 7;
    v15 = _HashTable.startBucket.getter();
    v61 = *(v59 + 9);
    v62 = 1 << *(v59 + 32);
    v274 = v10;
    if (v15 == v62)
    {
      break;
    }

    v78 = v59;
    v272 = (v59 + 8);
    while ((v15 & 0x8000000000000000) == 0 && v15 < v62)
    {
      v4 = v15 >> 6;
      v10 = 1 << v15;
      if ((v60[v15 >> 6] & (1 << v15)) == 0)
      {
        goto LABEL_101;
      }

      sub_10062CD24(v78[6] + *(v41 + 72) * v15, v43, type metadata accessor for RawSearchResult);
      v80 = v43[*(v40 + 36)];
      if (v80 == 12)
      {
        sub_10062CBB8(v43, type metadata accessor for RawSearchResult);
      }

      else
      {
        sub_10062CBB8(v43, type metadata accessor for RawSearchResult);
        if (v80 != 13)
        {
          v10 = v274;
          v63 = *(v275 + 9);
          v62 = 1 << *(v275 + 32);
          goto LABEL_30;
        }
      }

      v78 = v275;
      v79 = 1 << *(v275 + 32);
      if (v15 >= v79)
      {
        goto LABEL_102;
      }

      v81 = v60[v4];
      if ((v81 & v10) == 0)
      {
        goto LABEL_103;
      }

      if (v61 != *(v275 + 9))
      {
        goto LABEL_104;
      }

      v82 = v81 & (-2 << (v15 & 0x3F));
      if (v82)
      {
        v79 = __clz(__rbit64(v82)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v83 = v4 << 6;
        v84 = v4 + 1;
        v85 = (v272 + 8 * v4);
        while (v84 < (v79 + 63) >> 6)
        {
          v86 = *v85++;
          v4 = v86;
          v83 += 64;
          ++v84;
          if (v86)
          {
            sub_1000BB408(v15, v61, 0);
            v78 = v275;
            v79 = __clz(__rbit64(v4)) + v83;
            goto LABEL_12;
          }
        }

        sub_1000BB408(v15, v61, 0);
        v78 = v275;
      }

LABEL_12:
      v61 = *(v78 + 9);
      v62 = 1 << *(v78 + 32);
      v15 = v79;
      v63 = v61;
      v10 = v274;
      if (v79 == v62)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    swift_once();
  }

  v63 = v61;
LABEL_30:
  v79 = v15;
LABEL_31:
  result = sub_10061CDE4(v79, v61, 0, v62, v63, 0, v275, sub_1005E8344, 0);
  v88 = v275[2];
  v89 = v88 - result;
  if (__OFSUB__(v88, result))
  {
    goto LABEL_107;
  }

  v90 = result;
  v91 = v263;
  sub_10062CD24(v263, v264, type metadata accessor for LocationFetcher);
  v92 = v267;
  v93 = (v267 + 16);
  v94 = *(v267 + 16);
  v95 = v268;
  v94(v265, v268, v10);
  v96 = *v91;
  sub_100025020(v95, &v278);
  if (!v279)
  {
    sub_10000B3A8(&v278, &qword_101696920, &unk_10138B200);
LABEL_43:
    v116 = v259;
    v94(v259, v95, v10);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      v281 = v275;
      *v119 = 141558275;
      *(v119 + 4) = 1752392040;
      *(v119 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v120 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v90;
      v122 = v89;
      v124 = v123;
      v125 = *(v267 + 8);
      v125(v116, v10);
      v126 = sub_1000136BC(v120, v124, &v281);
      v89 = v122;
      v90 = v121;

      *(v119 + 14) = v126;
      _os_log_impl(&_mh_execute_header, v117, v118, "Single-beacon termination policy in effect for %{private,mask.hash}s.", v119, 0x16u);
      sub_100007BAC(v275);
    }

    else
    {

      v125 = *(v267 + 8);
      v125(v116, v10);
    }

    v127 = v264;
    v128 = v265;
    v67 = sub_1005E8380(v90, v89, _swiftEmptyArrayStorage, v266, v264, v265);
    v125(v128, v10);
    sub_10062CBB8(v127, type metadata accessor for LocationFetcher);
    return v67 & 1;
  }

  v247 = v96;
  v271 = v93;
  v272 = v94;
  sub_10000A748(&v278, &v281);
  v97 = v282;
  v98 = v283;
  sub_1000035D0(&v281, v282);
  v99 = v256;
  (*(v98 + 200))(v97, v98);
  if ((*(v92 + 48))(v99, 1, v10) == 1)
  {
    sub_10000B3A8(v99, &qword_1016980D0, &unk_10138F3B0);
    goto LABEL_42;
  }

  v100 = v99;
  v101 = v255;
  (*(v92 + 32))(v255, v100, v10);
  sub_100ACBC98(v101, &v276);
  if (!v277)
  {
    (*(v92 + 8))(v101, v10);
    sub_10000B3A8(&v276, &unk_1016AA480, &unk_1013BD050);
LABEL_42:
    sub_100007BAC(&v281);
    v94 = v272;
    goto LABEL_43;
  }

  sub_10000A748(&v276, &v278);
  v102 = v279;
  v103 = v280;
  sub_1000035D0(&v278, v279);
  if ((*(v103 + 24))(v102, v103) < 2u)
  {
    (*(v267 + 8))(v101, v10);
    sub_100007BAC(&v278);
    goto LABEL_42;
  }

  v244 = v90;
  v104 = *(v269 + 32);
  v105 = v251;
  v272(v251, v95, v10);
  v259 = v104;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  v108 = os_log_type_enabled(v106, v107);
  v245 = v89;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v276 = v110;
    *v109 = 141558275;
    *(v109 + 4) = 1752392040;
    *(v109 + 12) = 2081;
    sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v112 = v105;
    v114 = v113;
    v269 = *(v267 + 8);
    (v269)(v112, v10);
    v115 = sub_1000136BC(v111, v114, &v276);

    *(v109 + 14) = v115;
    _os_log_impl(&_mh_execute_header, v106, v107, "Multipart termination policy for %{private,mask.hash}s.", v109, 0x16u);
    sub_100007BAC(v110);
    v95 = v268;
  }

  else
  {

    v269 = *(v267 + 8);
    (v269)(v105, v10);
  }

  v129 = v258;
  sub_10062CD24(v263, v257, type metadata accessor for LocationFetcher);
  v130 = v272;
  v272(v129, v95, v10);
  v131 = v279;
  v132 = v280;
  sub_1000035D0(&v278, v279);
  v133 = (*(v132 + 16))(v131, v132);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v134 = *(v267 + 72);
  v135 = (*(v267 + 80) + 32) & ~*(v267 + 80);
  v136 = swift_allocObject();
  v246 = xmmword_101385D80;
  *(v136 + 16) = xmmword_101385D80;
  v130(v136 + v135, v95, v10);
  *&v276 = v252;

  sub_100398278(v136);
  v137 = sub_100615D6C(v276, v133);

  if (!v137[2])
  {

    v154 = v269;
    (v269)(v258, v10);
    sub_10062CBB8(v257, type metadata accessor for LocationFetcher);
    v155 = v248;
    v130(v248, v268, v10);
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v276 = v159;
      *v158 = 141558275;
      *(v158 + 4) = 1752392040;
      *(v158 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v160 = dispatch thunk of CustomStringConvertible.description.getter();
      v162 = v161;
      v154(v155, v10);
      v163 = sub_1000136BC(v160, v162, &v276);

      *(v158 + 14) = v163;
      _os_log_impl(&_mh_execute_header, v156, v157, "Multipart termination policy found all remaining peers for %{private,mask.hash}s - applying single-beacon policy.", v158, 0x16u);
      sub_100007BAC(v159);
    }

    else
    {

      v154(v155, v10);
    }

    v242 = v264;
    v243 = v265;
    v67 = sub_1005E8380(v244, v245, _swiftEmptyArrayStorage, v266, v264, v265);
    v154(v255, v10);
    v154(v243, v10);
    sub_10062CBB8(v242, type metadata accessor for LocationFetcher);
LABEL_99:
    sub_100007BAC(&v278);
    sub_100007BAC(&v281);
    return v67 & 1;
  }

  result = sub_1005E8FE4(&v281, v247);
  v138 = result;
  v256 = *(result + 16);
  if (!v256)
  {

    v153 = _swiftEmptyArrayStorage;
LABEL_71:
    v164 = v249;
    v165 = v268;
    v272(v249, v268, v10);

    v166 = Logger.logObject.getter();
    v167 = static os_log_type_t.default.getter();

    v168 = os_log_type_enabled(v166, v167);
    v169 = v267;
    v170 = v262;
    if (v168)
    {
      v171 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      *&v276 = v273;
      *v171 = 141558531;
      *(v171 + 4) = 1752392040;
      *(v171 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v172 = dispatch thunk of CustomStringConvertible.description.getter();
      v173 = v169;
      v175 = v174;
      v176 = v164;
      v177 = v269;
      (v269)(v176, v10);
      v178 = sub_1000136BC(v172, v175, &v276);

      *(v171 + 14) = v178;
      *(v171 + 22) = 2082;
      v179 = Array.description.getter();
      v181 = sub_1000136BC(v179, v180, &v276);

      *(v171 + 24) = v181;
      v169 = v173;
      v182 = v167;
      v183 = v177;
      _os_log_impl(&_mh_execute_header, v166, v182, "Counting multipart results for %{private,mask.hash}s, multipart: %{public}s.", v171, 0x20u);
      swift_arrayDestroy();
      v165 = v268;
    }

    else
    {

      v183 = v269;
      (v269)(v164, v10);
    }

    v185 = *(v153 + 2);
    v251 = v153;
    v252 = v185;
    if (v185)
    {
      v186 = v153 + 32;
      v273 = _swiftEmptyDictionarySingleton;
      v261 = v169 + 8;
      *&v184 = 141558787;
      v254 = v184;
      *&v184 = 141558275;
      v253 = v184;
      v187 = v263;
      do
      {
        while (1)
        {
          v196 = *v186++;
          v195 = v196;
          if (v196 >= 3uLL)
          {
            break;
          }

          v270 = v186;
          v197 = v187;
          v198 = dword_1013B3950[v195];
          v199 = dword_1013B395C[v195];
          v200 = v275;
          v201 = v257;
          v202 = v258;
          v203 = sub_1005E88B4(v199 | v198, 0, v275, v257, v258);
          v204 = sub_1005E88B4(v199 | v198, 1, v200, v201, v202);
          sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
          v205 = swift_allocObject();
          *(v205 + 16) = v246;
          *(v205 + 32) = v195;
          v206 = sub_1005E8380(v203, v204, v205, v266, v264, v265);
          v165 = v268;

          v207 = v273;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v276 = v207;
          v187 = v197;
          sub_100FFE718(v206 & 1, v195, isUniquelyReferenced_nonNull_native);
          v273 = v276;
          v209 = v260;
          v272(v260, v165, v10);
          v210 = Logger.logObject.getter();
          v211 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v210, v211))
          {
            v212 = swift_slowAlloc();
            LODWORD(v256) = v206 & 1;
            v213 = v212;
            v214 = swift_slowAlloc();
            *&v276 = v214;
            *v213 = v254;
            *(v213 + 4) = 1752392040;
            *(v213 + 12) = 2081;
            sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v215 = dispatch thunk of CustomStringConvertible.description.getter();
            v217 = v216;
            v183 = v269;
            (v269)(v260, v10);
            v218 = sub_1000136BC(v215, v217, &v276);
            v187 = v263;

            *(v213 + 14) = v218;
            *(v213 + 22) = 256;
            *(v213 + 24) = v195;
            *(v213 + 25) = 1024;
            *(v213 + 27) = v256;
            _os_log_impl(&_mh_execute_header, v210, v211, "Multipart termination for %{private,mask.hash}s part %hhu foundEnoughConnectedPositions: %{BOOL}d.", v213, 0x1Fu);
            sub_100007BAC(v214);
            v165 = v268;
          }

          else
          {

            v221 = v209;
            v183 = v269;
            (v269)(v221, v10);
          }

          v170 = v262;
          v186 = v270;
          if (!--v185)
          {
            goto LABEL_87;
          }
        }

        v272(v170, v165, v10);
        v219 = Logger.logObject.getter();
        v220 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v219, v220))
        {
          v188 = swift_slowAlloc();
          v270 = v186;
          v189 = v188;
          v190 = swift_slowAlloc();
          *&v276 = v190;
          *v189 = v253;
          *(v189 + 4) = 1752392040;
          *(v189 + 12) = 2081;
          sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v191 = dispatch thunk of CustomStringConvertible.description.getter();
          v193 = v192;
          v183(v262, v10);
          v194 = sub_1000136BC(v191, v193, &v276);
          v170 = v262;

          *(v189 + 14) = v194;
          _os_log_impl(&_mh_execute_header, v219, v220, "Could not determine multipart configuration for %{private,mask.hash}s - partId out of bounds.", v189, 0x16u);
          sub_100007BAC(v190);

          v186 = v270;
        }

        else
        {

          v183(v170, v10);
        }

        v165 = v268;
        --v185;
      }

      while (v185);
    }

    else
    {
      v273 = _swiftEmptyDictionarySingleton;
    }

LABEL_87:
    v183(v258, v10);
    sub_10062CBB8(v257, type metadata accessor for LocationFetcher);
    v222 = v264;
    v223 = v265;
    LODWORD(v275) = sub_1005E8380(v244, v245, _swiftEmptyArrayStorage, v266, v264, v265);
    v183(v223, v10);
    result = sub_10062CBB8(v222, type metadata accessor for LocationFetcher);
    v224 = 0;
    v225 = v250;
    v226 = v272;
    v227 = v251;
    v228 = v252;
    v229 = v273;
    do
    {
      v230 = v224;
      if (v228 == v224)
      {
        break;
      }

      if (v224 >= *(v227 + 2))
      {
        goto LABEL_108;
      }

      if (!*(v229 + 2))
      {
        break;
      }

      result = sub_1007721A4(v227[v224 + 32]);
      v229 = v273;
      if ((v231 & 1) == 0)
      {
        break;
      }

      v224 = v230 + 1;
    }

    while ((*(*(v273 + 7) + result) & 1) != 0);

    v232 = v274;
    v226(v225, v165, v274);
    v233 = Logger.logObject.getter();
    v234 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v233, v234))
    {
      LODWORD(v272) = v228 == v230;
      v235 = v225;
      v236 = swift_slowAlloc();
      v271 = swift_slowAlloc();
      *&v276 = v271;
      *v236 = 141558787;
      *(v236 + 4) = 1752392040;
      *(v236 + 12) = 2081;
      sub_100009774(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v237 = dispatch thunk of CustomStringConvertible.description.getter();
      v239 = v238;
      v183(v235, v232);
      v240 = sub_1000136BC(v237, v239, &v276);

      *(v236 + 14) = v240;
      *(v236 + 22) = 1024;
      v241 = v275;
      *(v236 + 24) = v275 & 1;
      *(v236 + 28) = 1024;
      *(v236 + 30) = v272;
      _os_log_impl(&_mh_execute_header, v233, v234, "Multipart termination result for %{private,mask.hash}s, singleBeacon: %{BOOL}d, multipartResult: %{BOOL}d", v236, 0x22u);
      sub_100007BAC(v271);
      v228 = v252;

      v183(v255, v232);
    }

    else
    {

      v183(v225, v232);
      v183(v255, v232);

      v241 = v275;
    }

    v67 = v241 & (v228 == v230);
    goto LABEL_99;
  }

  v139 = 0;
  v252 = result + ((*(v261 + 80) + 32) & ~*(v261 + 80));
  v140 = v137 + 7;
  v251 = _swiftEmptyArrayStorage;
  v141 = v273;
  v248 = result;
  while (v139 < *(v138 + 16))
  {
    sub_1000D2A70(v252 + *(v261 + 72) * v139, v141, &qword_10169EF28, &unk_10139FC10);
    if (v137[2])
    {
      sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v142 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v143 = -1 << *(v137 + 32);
      v144 = v142 & ~v143;
      if ((*(v140 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144))
      {
        v145 = ~v143;
        while (1)
        {
          v146 = v270;
          v272(v270, v137[6] + v144 * v134, v10);
          sub_100009774(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v147 = dispatch thunk of static Equatable.== infix(_:_:)();
          (v269)(v146, v10);
          if (v147)
          {
            break;
          }

          v144 = (v144 + 1) & v145;
          if (((*(v140 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144) & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        v148 = v253;
        sub_1000D2AD8(v273, v253, &qword_10169EF28, &unk_10139FC10);
        v149 = *(v148 + *(v254 + 48));
        (v269)(v148, v10);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5D2EC(0, *(v251 + 2) + 1, 1, v251);
          v251 = result;
        }

        v151 = *(v251 + 2);
        v150 = *(v251 + 3);
        if (v151 >= v150 >> 1)
        {
          result = sub_100A5D2EC((v150 > 1), v151 + 1, 1, v251);
          v251 = result;
        }

        v152 = v251;
        *(v251 + 2) = v151 + 1;
        v152[v151 + 32] = v149;
        v141 = v273;
        v138 = v248;
      }

      else
      {
LABEL_52:
        v141 = v273;
        result = sub_10000B3A8(v273, &qword_10169EF28, &unk_10139FC10);
        v138 = v248;
      }
    }

    else
    {
      result = sub_10000B3A8(v141, &qword_10169EF28, &unk_10139FC10);
    }

    if (++v139 == v256)
    {

      v153 = v251;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  return result;
}