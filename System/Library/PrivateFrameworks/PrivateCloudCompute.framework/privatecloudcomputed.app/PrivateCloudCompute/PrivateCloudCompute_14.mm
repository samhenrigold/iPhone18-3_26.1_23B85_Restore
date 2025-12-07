uint64_t sub_10015C9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001208C(a3, v25 - v10, &qword_100229350, &unk_1001D6BA0);
  v12 = sub_1001D1BA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100011F00(v11, &qword_100229350, &unk_1001D6BA0);
  }

  else
  {
    sub_1001D1B90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1001D1A70();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1001D1840() + 32;
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

      sub_100011F00(a3, &qword_100229350, &unk_1001D6BA0);

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

  sub_100011F00(a3, &qword_100229350, &unk_1001D6BA0);
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

uint64_t sub_10015CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[7] = sub_100011AC0(&qword_10022C908, &qword_1001DD4C0);
  v5[8] = swift_task_alloc();
  v6 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_10015CE00, 0, 0);
}

uint64_t sub_10015CE00()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10015CEF0;
  v6 = v0[7];
  v5 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x80000001001E58A0, sub_100119DA0, v3, v6);
}

uint64_t sub_10015CEF0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10015D25C;
  }

  else
  {

    v2 = sub_10015D00C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015D00C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[5];
  v4 = (v0[8] + *(v0[7] + 48));
  v0[15] = *v4;
  v0[16] = v4[1];
  (*(v2 + 32))(v1);
  v7 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_10015D148;

  return v7();
}

uint64_t sub_10015D148()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10015D388;
  }

  else
  {
    v2 = sub_10015D2D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015D25C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015D2D4(uint64_t a1)
{
  v3 = v1[15];
  v2 = v1[16];
  v5 = v1[10];
  v4 = v1[11];
  v6 = v1[9];
  sub_1001D1AA0();
  sub_100011E48(v3, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_10015D388()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v0[2] = v0[18];
  swift_errorRetain();
  sub_1001D1A90();
  swift_willThrow();
  sub_100011E48(v2, v1);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

unint64_t sub_10015D464@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 2;
  v2 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  swift_storeEnumTagMultiPayload();
  v3 = a1 + v2[22];
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 2;
  v4 = v2[23];
  v5 = sub_1001D0ED0();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = a1 + v2[24];
  *v6 = 0;
  *(v6 + 8) = 4;
  v7 = (a1 + v2[25]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0xA000000000000000;
  v8 = a1 + v2[26];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 2;
  v9 = a1 + v2[27];
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 2;
  v10 = a1 + v2[28];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 2;
  v11 = a1 + v2[29];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  v12 = a1 + v2[30];
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 1;
  v13 = a1 + v2[31];
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = a1 + v2[32];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = a1 + v2[33];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = a1 + v2[34];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (a1 + v2[35]);
  *v17 = 0;
  v17[1] = 0;
  v18 = v2[36];
  *(a1 + v18) = sub_1000DBA3C(_swiftEmptyArrayStorage);
  v19 = v2[37];
  result = sub_1000DBC18(_swiftEmptyArrayStorage);
  *(a1 + v19) = result;
  *(a1 + v2[38]) = 2;
  v21 = a1 + v2[39];
  *v21 = 0;
  *(v21 + 8) = 1;
  return result;
}

double sub_10015D65C@<D0>(_OWORD *a1@<X8>)
{
  v48 = a1;
  v2 = sub_1001CFDA0();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1001CFDD0();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001CFD60();
  __chkstk_darwin(v6 - 8);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v14);
  v15 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_10001208C(v14 + *(v15 + 28), v13, &unk_100230120, &qword_1001DEF40);
  os_unfair_lock_unlock(v14);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v16 = *v1;
  v17 = (v1 + *(*v1 + 192));
  v18 = v17[1];
  v41 = *v17;
  v19 = (v1 + v16[28]);
  v20 = v19[1];
  v40 = *v19;
  v21 = (v1 + v16[32]);
  v22 = v21[9];
  v51[8] = v21[8];
  v51[9] = v22;
  v51[10] = v21[10];
  v23 = v21[5];
  v51[4] = v21[4];
  v51[5] = v23;
  v24 = v21[7];
  v51[6] = v21[6];
  v51[7] = v24;
  v25 = v21[1];
  v51[0] = *v21;
  v51[1] = v25;
  v26 = v21[3];
  v51[2] = v21[2];
  v51[3] = v26;
  v27 = (v1 + v16[26]);
  v28 = v27[1];
  v39 = *v27;
  v29 = (v1 + v16[25]);
  v30 = v29[1];
  v38 = *v29;
  v31 = v43;
  (*(v4 + 16))(v43, v1 + v16[33], v44);
  v32 = v45;
  (*(v46 + 16))(v45, v1 + *(*v1 + 320), v47);
  v33 = *(v1 + *(*v1 + 248));
  sub_10001208C(v13, v11, &unk_100230120, &qword_1001DEF40);

  sub_1000884D8(v51, v49);

  sub_10015A808(v42, v41, v18, v40, v20, v51, v39, v28, v49, v38, v30, v31, v32, v33, v11);
  sub_100011F00(v13, &unk_100230120, &qword_1001DEF40);
  result = *v49;
  v35 = v49[1];
  v36 = v48;
  *v48 = v49[0];
  v36[1] = v35;
  *(v36 + 4) = v50;
  return result;
}

void sub_10015DAB8()
{
  v1 = sub_1001D20D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v2 + 8))(v4, v1);
  v5 = v9[0];
  v6 = v9[1];
  v7 = (v0 + *(*v0 + 144));
  os_unfair_lock_lock(v7);
  v8 = v7 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  sub_10001208C(v8, v9, &qword_10022FD00, &qword_1001E16C0);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_100011F00(v9, &qword_10022FD00, &qword_1001E16C0);
    }

    sub_100011F00(v8, &qword_10022FD00, &qword_1001E16C0);
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 41) = 0u;
  }

  else
  {
    sub_100011F00(&v10, &qword_10022FD10, &qword_1001E16D0);
  }

  os_unfair_lock_unlock(v7);
}

uint64_t sub_10015DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001208C(a1, v9, &qword_10022FD00, &qword_1001E16C0);
  if (v11)
  {
    if (v11 == 1)
    {
      sub_100011F00(v9, &qword_10022FD00, &qword_1001E16C0);
    }
  }

  else
  {
    if (v10[3])
    {
      return sub_100011F00(v10, &qword_10022FD10, &qword_1001E16D0);
    }

    a2 = v9[0];
    a3 = v9[1];
  }

  sub_100011F00(a1, &qword_10022FD00, &qword_1001E16C0);
  *a1 = a2;
  *(a1 + 8) = a3;
  result = sub_100044698(a4, a1 + 16);
  *(a1 + 56) = 0;
  return result;
}

void sub_10015DE10(uint64_t a1)
{
  v3 = sub_1001D20D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v6, v3);
  v7 = v14[0];
  v8 = v14[1];
  v9 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v9);
  v10 = v9 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  sub_10001208C(v10, v14, &qword_10022FD00, &qword_1001E16C0);
  if (v16)
  {
    v11 = &qword_10022FD00;
    v12 = &qword_1001E16C0;
    if (v16 != 1)
    {
      sub_100011F00(v10, &qword_10022FD00, &qword_1001E16C0);
      *v10 = v7;
      *(v10 + 8) = v8;
      *(v10 + 16) = a1;
      *(v10 + 56) = 1;
      swift_errorRetain();
      goto LABEL_7;
    }

    v13 = v14;
  }

  else
  {
    v11 = &qword_10022FD10;
    v12 = &qword_1001E16D0;
    v13 = &v15;
  }

  sub_100011F00(v13, v11, v12);
LABEL_7:
  os_unfair_lock_unlock(v9);
}

uint64_t sub_10015E07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  v9 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v10 = (a1 + *(v9 + 100));
  if (v10[3] >> 61 >= 5uLL)
  {
    *v10 = a2;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0;
  }

  v11 = *(v9 + 84);
  sub_10001208C(a1 + v11, v8, &unk_100230130, &unk_1001E16A0);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    return sub_100011F00(v8, &unk_100230130, &unk_1001E16A0);
  }

  if (result > 4)
  {
    if (result == 5)
    {
      sub_100011F00(a1 + v11, &unk_100230130, &unk_1001E16A0);
      *(a1 + v11) = a3;
      swift_storeEnumTagMultiPayload();
    }
  }

  else if (result != 3)
  {
    v13 = sub_1001D0200();
    return (*(*(v13 - 8) + 8))(v8, v13);
  }

  return result;
}

uint64_t sub_10015E234(uint64_t a1, uint64_t a2, int *a3)
{
  v4[7] = a2;
  v4[8] = v3;
  v6 = sub_1001D0DC0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  v4[13] = swift_task_alloc();
  v7 = sub_1001D20D0();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v4[17] = v8;
  *v8 = v4;
  v8[1] = sub_10015E42C;

  return v10(v4 + 4);
}

uint64_t sub_10015E42C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10015EB34;
  }

  else
  {
    v2 = sub_10015E540;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015E540()
{
  v51 = v0;
  v1 = v0[4];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[8];
  v48 = v0[7];
  v49 = v0[18];
  sub_1001428C0(v1, v49 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v2 + 8))(v3, v4);
  v46 = v0[2];
  v47 = v0[3];
  v6 = (v5 + *(*v5 + 144));
  os_unfair_lock_lock(v6);
  v7 = v6 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v8 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v9 = v8[23];
  sub_100011F00(&v7[v9], &unk_100230110, &unk_1001D6520);
  v10 = sub_1001D0ED0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v7[v9], v48, v10);
  (*(v11 + 56))(&v7[v9], 0, 1, v10);
  if (v49)
  {
    v12 = &v7[v8[22]];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    *v12 = v1;
    *(v12 + 1) = v46;
    *(v12 + 2) = v47;
    v16 = v12[24];
    v12[24] = 1;
    swift_errorRetain();
    sub_100128734(v13, v14, v15, v16);
    os_unfair_lock_unlock(v6);
  }

  else
  {
    v17 = v0[13];
    v18 = &v7[v8[22]];
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = *(v18 + 2);
    *v18 = v46;
    *(v18 + 1) = v47;
    *(v18 + 2) = 0;
    v22 = v18[24];
    v18[24] = 0;
    sub_100128734(v19, v20, v21, v22);
    v23 = v8[21];
    sub_10001208C(&v7[v23], v17, &unk_100230130, &unk_1001E16A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = v0[13];
    if (EnumCaseMultiPayload)
    {
      sub_100011F00(v25, &unk_100230130, &unk_1001E16A0);
    }

    else
    {
      v26 = *v25;
      sub_100011F00(&v7[v23], &unk_100230130, &unk_1001E16A0);
      *&v7[v23] = v26;
      swift_storeEnumTagMultiPayload();
    }

    v27 = v0[10];
    v28 = v0[11];
    v30 = v0[8];
    v29 = v0[9];
    os_unfair_lock_unlock(v6);
    (*(v27 + 16))(v28, v30 + *(*v30 + 304), v29);
    v31 = sub_1001D0DE0();
    v32 = sub_1001D1EA0();
    v33 = sub_1001D1ED0();
    v34 = v0[10];
    v35 = v0[11];
    v36 = v0[9];
    if (v33)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v32, v38, "RopesInvokeRequestSent", "", v37, 2u);
    }

    (*(v34 + 8))(v35, v36);
  }

  v39 = sub_1001D0E50();
  v40 = sub_1001D1E00();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v0[8];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_1000954E0(*(v41 + *(*v41 + 280)), *(v41 + *(*v41 + 280) + 8), &v50);
    _os_log_impl(&_mh_execute_header, v39, v40, "%s Ropes invoke request sent", v42, 0xCu);
    sub_100011CF0(v43);
  }

  if (v0[18])
  {
    v0[6] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
  }

  v44 = v0[1];

  return v44();
}

uint64_t sub_10015EB34()
{
  v50 = v0;
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[8];
  v48 = v0[7];
  sub_1001428C0(v1, v1 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v3 + 8))(v2, v4);
  v46 = v0[2];
  v47 = v0[3];
  v6 = (v5 + *(*v5 + 144));
  os_unfair_lock_lock(v6);
  v7 = v6 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v8 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v9 = v8[23];
  sub_100011F00(&v7[v9], &unk_100230110, &unk_1001D6520);
  v10 = sub_1001D0ED0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v7[v9], v48, v10);
  (*(v11 + 56))(&v7[v9], 0, 1, v10);
  if (v1)
  {
    v12 = &v7[v8[22]];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    *v12 = v1;
    *(v12 + 1) = v46;
    *(v12 + 2) = v47;
    v16 = v12[24];
    v12[24] = 1;
    swift_errorRetain();
    sub_100128734(v13, v14, v15, v16);
    os_unfair_lock_unlock(v6);
  }

  else
  {
    v17 = v0[13];
    v18 = &v7[v8[22]];
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = *(v18 + 2);
    *v18 = v46;
    *(v18 + 1) = v47;
    *(v18 + 2) = 0;
    v22 = v18[24];
    v18[24] = 0;
    sub_100128734(v19, v20, v21, v22);
    v23 = v8[21];
    sub_10001208C(&v7[v23], v17, &unk_100230130, &unk_1001E16A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = v0[13];
    if (EnumCaseMultiPayload)
    {
      sub_100011F00(v25, &unk_100230130, &unk_1001E16A0);
    }

    else
    {
      v26 = *v25;
      sub_100011F00(&v7[v23], &unk_100230130, &unk_1001E16A0);
      *&v7[v23] = v26;
      swift_storeEnumTagMultiPayload();
    }

    v27 = v0[10];
    v28 = v0[11];
    v30 = v0[8];
    v29 = v0[9];
    os_unfair_lock_unlock(v6);
    (*(v27 + 16))(v28, v30 + *(*v30 + 304), v29);
    v31 = sub_1001D0DE0();
    v32 = sub_1001D1EA0();
    v33 = sub_1001D1ED0();
    v35 = v0[10];
    v34 = v0[11];
    v36 = v0[9];
    if (v33)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v32, v38, "RopesInvokeRequestSent", "", v37, 2u);
    }

    (*(v35 + 8))(v34, v36);
  }

  v39 = sub_1001D0E50();
  v40 = sub_1001D1E00();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v0[8];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_1000954E0(*(v41 + *(*v41 + 280)), *(v41 + *(*v41 + 280) + 8), &v49);
    _os_log_impl(&_mh_execute_header, v39, v40, "%s Ropes invoke request sent", v42, 0xCu);
    sub_100011CF0(v43);
  }

  if (v0[18])
  {
    v0[6] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
  }

  v44 = v0[1];

  return v44();
}

void sub_10015F120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v112 = a2;
  v5 = type metadata accessor for ThimbledEvent(0);
  __chkstk_darwin(v5);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v114 = *(v8 - 8);
  __chkstk_darwin(v8);
  v113 = &v92 - v9;
  v10 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v10 - 8);
  v111 = (&v92 - v11);
  v12 = sub_1001CFDD0();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v120 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001CFDA0();
  v116 = *(v14 - 8);
  v117 = v14;
  __chkstk_darwin(v14);
  v122 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001CFD60();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin(v16);
  v121 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001D0DC0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v22);
  v23 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  LOBYTE(a1) = sub_10015FD78(v22 + *(v23 + 28), a1);
  os_unfair_lock_unlock(v22);
  if ((a1 & 1) == 0)
  {
    return;
  }

  v24 = sub_1001D0E50();
  v25 = sub_1001D1E00();

  v26 = os_log_type_enabled(v24, v25);
  v107 = v7;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v125 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000954E0(*(v3 + *(*v3 + 280)), *(v3 + *(*v3 + 280) + 8), &v125);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s Ropes invoke response head received", v27, 0xCu);
    sub_100011CF0(v28);
  }

  v105 = v5;
  v106 = v8;
  (*(v19 + 16))(v21, v3 + *(*v3 + 304), v18);
  v29 = sub_1001D0DE0();
  v30 = sub_1001D1EA0();
  if (sub_1001D1ED0())
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v32, "RopesResponseHeadReceived", "", v31, 2u);
  }

  (*(v19 + 8))(v21, v18);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v33 = *v3;
  v34 = (v3 + *(*v3 + 192));
  v36 = *v34;
  v35 = v34[1];
  v108 = v36;
  v115 = v35;
  (*(v116 + 16))(v122, v3 + *(v33 + 320), v117);
  v37 = *v3;
  v38 = (v3 + *(*v3 + 224));
  v39 = v38[1];
  v98 = *v38;
  v40 = v3 + v37[32];
  v42 = *(v40 + 160);
  v41 = *(v40 + 168);
  v101 = v42;
  v100 = v41;
  v43 = (v3 + v37[26]);
  v44 = v43[1];
  v93 = *v43;
  (*(v118 + 16))(v120, v3 + v37[33], v119);
  sub_100011AC0(&qword_10022FEE0, &unk_1001E1BB0);
  v45 = sub_100011AC0(&qword_10022BD00, &qword_1001DB818);
  v46 = *(*(v45 - 8) + 72);
  v47 = (*(*(v45 - 8) + 80) + 32) & ~*(*(v45 - 8) + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1001D3AF0;
  v102 = v48;
  v49 = v48 + v47;
  v50 = (v48 + v47 + *(v45 + 48));
  *(v48 + v47) = 6;
  v103 = v44;

  v99 = v39;

  *v50 = sub_1001CFD70();
  v50[1] = v51;
  v52 = enum case for EventValue.string(_:);
  v53 = sub_1001CFEE0();
  v104 = *(v53 - 8);
  v54 = *(v104 + 104);
  v97 = v52;
  v55 = v54;
  (v54)(v50, v52, v53);
  v96 = v46;
  v56 = v49 + v46;
  v57 = *(v45 + 48);
  *(v49 + v46) = 0;
  sub_1001CFD20();
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v94 = v3;
  v95 = 0x80000001001E76D0;
  *(v56 + v57) = v58;
  v59 = v55;
  (v55)(v56 + v57, enum case for EventValue.int(_:), v53);
  v60 = v96;
  v61 = (v49 + 2 * v96);
  v62 = *(v45 + 48);
  *v61 = 1;
  v63 = &v61[v62];
  v64 = v99;
  *v63 = v98;
  v63[1] = v64;
  v65 = v97;
  v59();
  v66 = (v49 + 3 * v60);
  v67 = *(v45 + 48);
  *v66 = 2;
  v68 = &v66[v67];
  v69 = v100;
  *v68 = v101;
  v68[1] = v69;
  v59();
  v70 = (v49 + 4 * v60);
  v71 = *(v45 + 48);
  *v70 = 4;
  v72 = &v70[v71];
  v73 = v115;
  *v72 = v108;
  v72[1] = v73;
  v59();
  v74 = (v49 + 5 * v60);
  v75 = &v74[*(v45 + 48)];
  *v74 = 5;
  *v75 = sub_1001CFDB0();
  v75[1] = v76;
  v77 = v75;
  v78 = v65;
  (v59)(v77, v65, v53);

  v79 = sub_1000D5948(v102);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v125 = v79;
  v80 = v111;
  v81 = v104;
  v82 = v103;
  if (v103)
  {
    *v111 = v93;
    v80[1] = v82;
    (v59)(v80, v78, v53);
    (*(v81 + 56))(v80, 0, 1, v53);
    sub_100016B34(v80, 3);
  }

  v83 = v112;
  *v80 = v112 == 0;
  (v59)(v80, enum case for EventValue.BOOL(_:), v53);
  v84 = *(v81 + 56);
  v84(v80, 0, 1, v53);
  sub_100016B34(v80, 7);
  v85 = v107;
  if (v83)
  {
    swift_getErrorValue();
    v86 = v123;
    v87 = v124;
    swift_errorRetain();
    Error.telemetryString.getter(v80, v86, v87);
    v84(v80, 0, 1, v53);
    sub_100016B34(v80, 8);
  }

  (*(v118 + 8))(v120, v119);
  (*(v116 + 8))(v122, v117);
  (*(v109 + 8))(v121, v110);
  v88 = v125;
  v85[3] = &type metadata for InvokeResponseMetric;
  v85[4] = sub_1001AFD1C();
  v89 = swift_allocObject();
  *v85 = v89;
  v89[2] = 0xD000000000000015;
  v89[3] = v95;
  v89[4] = v88;
  v90 = v115;
  v89[5] = v108;
  v89[6] = v90;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v91 = v113;
  sub_1001D1BC0();
  (*(v114 + 8))(v91, v106);
}

BOOL sub_10015FD78(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_1001D0ED0();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001D0FD0();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  __chkstk_darwin(v9);
  v11 = (&v24 - v10);
  v12 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v13 = v12[21];
  sub_10001208C(a1 + v13, v11, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v15 = *v11;
    sub_100011F00(a1 + v13, &unk_100230130, &unk_1001E16A0);
    *(a1 + v13) = v15;
    swift_storeEnumTagMultiPayload();

    sub_1001D0FE0();
    v16 = sub_1001D0FC0();
    (*(v25 + 8))(v8, v26);
    v17 = a1 + v12[34];
    *v17 = v16;
    *(v17 + 8) = 0;
    sub_1001D0F90();
    if (qword_100227710 != -1)
    {
      swift_once();
    }

    v18 = sub_1001D1380();
    sub_10003A37C(v18, qword_100242EB0);
    v19 = sub_1001D0EE0();
    v21 = v20;

    (*(v28 + 8))(v5, v29);
    v22 = (a1 + v12[35]);

    *v22 = v19;
    v22[1] = v21;
  }

  else
  {
    sub_100011F00(v11, &unk_100230130, &unk_1001E16A0);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t sub_10016008C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for ThimbledEvent(0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = sub_1001D0E00();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_1001D0DC0();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v7 = sub_1001D20D0();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_10016031C, 0, 0);
}

uint64_t sub_10016031C()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = (v5 + *(*v5 + 144));
  os_unfair_lock_lock(v8);
  v9 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_100160A40(v8 + *(v9 + 28), v4, v6, v7);
  os_unfair_lock_unlock(v8);
  v10 = sub_1001D0DE0();
  sub_1001D0E10();
  v11 = sub_1001D1E80();
  if (sub_1001D1ED0())
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);

    sub_1001D0E40();

    if ((*(v13 + 88))(v12, v14) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v17, "FullTrustedRequest", v15, v16, 2u);
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = v10;
  v21 = *(v0 + 200);
  v22 = *(v0 + 168);
  v23 = *(v0 + 152);
  v24 = *(v0 + 136);
  v25 = *(v0 + 88);
  v44 = *(v0 + 144);
  v45 = *(v0 + 80);

  (*(v19 + 8))(v18, v21);
  sub_10015D65C((v0 + 16));
  v26 = *(*v25 + 288);
  v24[3] = &type metadata for TrustedRequestMetric;
  v24[4] = sub_1001ABB44();
  v27 = swift_allocObject();
  *v24 = v27;
  v28 = *(v0 + 32);
  *(v27 + 16) = *(v0 + 16);
  *(v27 + 32) = v28;
  *(v27 + 48) = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  sub_1001D1BC0();
  v29 = *(v23 + 8);
  v29(v22, v44);
  v30 = sub_1001D0200();
  if ((*(*(v30 - 8) + 48))(v45, 1, v30) == 1)
  {
    v31 = *(v0 + 88);
    (*(*(v0 + 104) + 16))(*(v0 + 112), v25 + v26, *(v0 + 96));
    v32 = (v31 + *(*v31 + 208));
    v33 = v32[1];
    if (v33)
    {
      v34 = *v32;
      v35 = v33;
    }

    else
    {
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    v36 = *(v0 + 160);
    v37 = *(v0 + 144);
    v38 = *(v0 + 128);
    v40 = *(v0 + 104);
    v39 = *(v0 + 112);
    v41 = *(v0 + 96);
    *v38 = v34;
    v38[1] = v35;
    swift_storeEnumTagMultiPayload();

    sub_1001D1BC0();
    (*(v40 + 8))(v39, v41);
    v29(v36, v37);
  }

  v42 = swift_task_alloc();
  *(v0 + 248) = v42;
  *v42 = v0;
  v42[1] = sub_100160854;

  return sub_100160CCC();
}

uint64_t sub_100160854()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100160A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = sub_100011AC0(&qword_10022FCE0, &qword_1001E1668);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1001D0200();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(a2, v9, &qword_10022FCE0, &qword_1001E1668);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100011F00(v9, &qword_10022FCE0, &qword_1001E1668);
    v14 = (a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 84));
    sub_100011F00(v14, &unk_100230130, &unk_1001E16A0);
    v15 = v22;
    *v14 = a3;
    v14[1] = v15;
  }

  else
  {
    v16 = *(v11 + 32);
    v16(v13, v9, v10);
    v17 = a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 84);
    sub_100011F00(v17, &unk_100230130, &unk_1001E16A0);
    v18 = (v17 + *(sub_100011AC0(&qword_10022FD08, &qword_1001E16C8) + 48));
    v16(v17, v13, v10);
    v19 = v22;
    *v18 = a3;
    v18[1] = v19;
  }

  sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100160CCC()
{
  v1[144] = v0;
  v2 = sub_1001D0D70();
  v1[145] = v2;
  v1[146] = *(v2 - 8);
  v1[147] = swift_task_alloc();
  sub_1001D1810();
  v1[148] = swift_task_alloc();
  v3 = sub_1001D0D10();
  v1[149] = v3;
  v1[150] = *(v3 - 8);
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();

  return _swift_task_switch(sub_100160E38, 0, 0);
}

uint64_t sub_100160E38()
{
  v189 = v0;
  v1 = *(v0 + 1152);
  sub_1001D0E90();
  swift_allocObject();
  sub_1001D0E80();
  v2 = sub_1001D0E70();

  *(v0 + 1240) = *(*v1 + 272);

  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  v5 = os_log_type_enabled(v3, v4);
  if ((v2 & 1) == 0)
  {
    if (v5)
    {
      v20 = *(v0 + 1152);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v188[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1000954E0(*(v20 + *(*v20 + 280)), *(v20 + *(*v20 + 280) + 8), v188);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Request Log: TransparencyReport is not enabled", v21, 0xCu);
      sub_100011CF0(v22);
    }

    else
    {
    }

LABEL_96:

    v156 = *(v0 + 8);

    return v156();
  }

  if (v5)
  {
    v6 = *(v0 + 1152);
    v7 = swift_slowAlloc();
    v188[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000954E0(*(v6 + *(*v6 + 280)), *(v6 + *(*v6 + 280) + 8), v188);
    *(v7 + 12) = 2080;
    v8 = sub_1001D0890();
    v10 = sub_1000954E0(v8, v9, v188);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Request Log: workload type: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = sub_1001D0E50();
  v12 = sub_1001D1E00();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1152);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v188[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1000954E0(*(v14 + *(*v14 + 280)), *(v14 + *(*v14 + 280) + 8), v188);
    *(v15 + 12) = 2080;
    sub_1001D0870();
    v16 = sub_1001D1710();
    v18 = v17;

    v19 = sub_1000954E0(v16, v18, v188);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s Request Log: workload parameters: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v23 = *(v0 + 1152);
  v24 = *(*v23 + 144);
  *(v0 + 1248) = v24;
  v25 = (v23 + v24);
  os_unfair_lock_lock((v23 + v24));
  v26 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  *(v0 + 140) = v26;
  v27 = v25 + v26;
  v28 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  *(v0 + 1256) = v28;
  *(v0 + 1264) = *&v27[*(v28 + 144)];

  os_unfair_lock_unlock(v25);
  v29 = sub_1000D64BC(_swiftEmptyArrayStorage);
  v30 = *(v23 + *(*v23 + 328));
  *(v0 + 1272) = v30;
  if (v30)
  {
    v31 = *(v0 + 1152);

    *(v0 + 1280) = *(*v31 + 168);
    type metadata accessor for AttestationStore();
    sub_1001B0458(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);
    v32 = sub_1001D1A70();
    v34 = v33;
    v35 = sub_100162564;
    v36 = v32;
    v37 = v34;

    return _swift_task_switch(v35, v36, v37);
  }

  v158 = v0 + 1136;
  v159 = v29;
  v38 = v0 + 784;
  v39 = *(v0 + 1264);
  v40 = *(v0 + 1200);
  v41 = *(v0 + 1152);
  v35 = sub_100009830(0, *(v39 + 16), 0, _swiftEmptyArrayStorage);
  v42 = 0;
  v187 = v35;
  *(v0 + 1136) = v35;
  v43 = v39 + 64;
  v169 = v39;
  v44 = -1;
  v45 = -1 << *(v39 + 32);
  if (-v45 < 64)
  {
    v44 = ~(-1 << -v45);
  }

  v46 = v44 & *(v39 + 64);
  v162 = v41 + *(*v41 + 280);
  v47 = (63 - v45) >> 6;
  v180 = (v40 + 16);
  v167 = v41;
  v163 = *(*v41 + 248);
  v181 = v40;
  v182 = v0 + 784;
  v164 = v47;
  v166 = v39 + 64;
  while (v46)
  {
LABEL_22:
    v49 = __clz(__rbit64(v46)) | (v42 << 6);
    v50 = (*(v169 + 48) + 16 * v49);
    v51 = *v50;
    v52 = v50[1];
    v53 = (*(v169 + 56) + (v49 << 7));
    v54 = *v53;
    v55 = v53[1];
    v56 = v53[3];
    *(v0 + 48) = v53[2];
    *(v0 + 64) = v56;
    *(v0 + 16) = v54;
    *(v0 + 32) = v55;
    v57 = v53[4];
    v58 = v53[5];
    v59 = v53[6];
    *(v0 + 121) = *(v53 + 105);
    *(v0 + 96) = v58;
    *(v0 + 112) = v59;
    *(v0 + 80) = v57;
    *(v0 + 1120) = 0;
    *(v0 + 1128) = 0xE000000000000000;
    v60 = *(v0 + 56);
    v175 = v51;
    if (v60 >> 60 == 15)
    {
      if (!*(v159 + 16))
      {

        sub_10001208C(v0 + 16, v0 + 656, &qword_100230150, &unk_1001D3700);
LABEL_29:
        v68 = 0;
        v185 = 0xE000000000000000;
        goto LABEL_30;
      }

      v62 = *(v0 + 32);
      v61 = *(v0 + 40);

      sub_10001208C(v0 + 16, v0 + 528, &qword_100230150, &unk_1001D3700);
      v63 = sub_100006028(v62, v61);
      if ((v64 & 1) == 0)
      {
        goto LABEL_29;
      }

      v65 = (*(v159 + 56) + 16 * v63);
      v66 = *v65;
      v67 = v65[1];
      sub_100012038(*v65, v67);
      v68 = sub_10016B23C(v66, v67);
      v70 = v69;
      sub_100011E48(v66, v67);
    }

    else
    {
      v71 = *(v0 + 48);

      sub_10001208C(v0 + 16, v0 + 144, &qword_100230150, &unk_1001D3700);
      sub_100089C38(v71, v60);
      v68 = sub_10016B23C(v71, v60);
      v70 = v72;
      sub_10002683C(v71, v60);
    }

    swift_beginAccess();
    *(v0 + 1120) = v68;
    v185 = v70;
    *(v0 + 1128) = v70;
LABEL_30:
    v177 = *(v0 + 16);
    v73 = v177 >> 62;
    v183 = v68;
    v171 = *(v0 + 24);
    if ((v177 >> 62) - 1 < 2 || v73 && v177 & 0xFFFFFFFFFFFFFFFELL ^ 0xC000000000000000 | *(v0 + 24))
    {
      v74 = 0xE900000000000064;
      v178 = 0x65746164696C6156;
    }

    else
    {
      v178 = 0x6164696C61766E55;
      v74 = 0xEB00000000646574;
    }

    sub_10001208C(v0 + 16, v0 + 272, &qword_100230150, &unk_1001D3700);

    sub_10001208C(v0 + 16, v0 + 400, &qword_100230150, &unk_1001D3700);

    v75 = sub_1001D0E50();
    v76 = v52;
    v77 = sub_1001D1E00();

    v173 = v77;
    if (os_log_type_enabled(v75, v77))
    {
      v160 = v74;
      v78 = swift_slowAlloc();
      v188[0] = swift_slowAlloc();
      *v78 = 136316418;
      *(v78 + 4) = sub_1000954E0(*v162, *(v162 + 8), v188);
      *(v78 + 12) = 2080;
      v79 = sub_1000954E0(v175, v76, v188);

      *(v78 + 14) = v79;
      *(v78 + 22) = 2080;
      sub_1001ABB9C(v177);
      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
      if (v73 > 1)
      {
        v80 = v185;
        v81 = v178;
        v84 = v0 + 16;
        if (v73 == 2)
        {
          sub_100011F00(v84, &qword_100230150, &unk_1001D3700);
          v83 = 0xE800000000000000;
          v82 = 0x64656873696E6966;
        }

        else
        {
          sub_100011F00(v84, &qword_100230150, &unk_1001D3700);
          v85 = 0x6465696669726576;
          if (v177 ^ 0xC000000000000008 | v171)
          {
            v85 = 0x79654B746E6573;
          }

          v86 = 0xE800000000000000;
          if (v177 ^ 0xC000000000000008 | v171)
          {
            v86 = 0xE700000000000000;
          }

          v87 = 0x6966697265766E75;
          if (v177 ^ 0xC000000000000000 | v171)
          {
            v87 = 0x6E69796669726576;
          }

          v88 = 0xE900000000000067;
          if (!(v177 ^ 0xC000000000000000 | v171))
          {
            v88 = 0xEA00000000006465;
          }

          if (v177 <= 0xC000000000000007)
          {
            v82 = v87;
          }

          else
          {
            v82 = v85;
          }

          if (v177 <= 0xC000000000000007)
          {
            v83 = v88;
          }

          else
          {
            v83 = v86;
          }
        }
      }

      else
      {
        v80 = v185;
        v81 = v178;
        sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
        if (v73)
        {
          v82 = 0x6E69766965636572;
          v83 = 0xE900000000000067;
        }

        else
        {
          sub_10012853C(v177);
          v82 = 0x6465696669726576;
          v83 = 0xEE0064656C696146;
        }
      }

      v89 = sub_1000954E0(v82, v83, v188);

      *(v78 + 24) = v89;
      *(v78 + 32) = 2080;
      *(v78 + 34) = sub_1000954E0(v81, v160, v188);
      *(v78 + 42) = 2080;
      v90 = *(v0 + 32);
      v91 = *(v0 + 40);

      v92 = sub_1000954E0(v90, v91, v188);

      *(v78 + 44) = v92;
      *(v78 + 52) = 2080;

      v93 = sub_1000954E0(v183, v80, v188);

      *(v78 + 54) = v93;
      _os_log_impl(&_mh_execute_header, v75, v173, "%s Request Log: Attestation: %s %s <%s %s: %s>", v78, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);

      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
    }

    sub_1001D0D00();

    sub_1001D0CD0();
    sub_1001D0CE0();

    sub_1001D0CC0();
    if (*(v167 + v163) == 1)
    {
      sub_1001D0CB0();
    }

    (*v180)(*(v0 + 1224), *(v0 + 1232), *(v0 + 1192));
    v95 = v187[2];
    v94 = v187[3];
    v38 = v0 + 784;
    if (v95 >= v94 >> 1)
    {
      v187 = sub_100009830((v94 > 1), v95 + 1, 1, v187);
    }

    v46 &= v46 - 1;
    v96 = *(v0 + 1232);
    v97 = *(v0 + 1224);
    v98 = *(v0 + 1192);
    sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
    (*(v181 + 8))(v96, v98);
    v187[2] = v95 + 1;
    (*(v181 + 32))(v187 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v95, v97, v98);

    *(v0 + 1136) = v187;
    v47 = v164;
    v43 = v166;
  }

  while (1)
  {
    v48 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_100;
    }

    if (v48 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v48);
    ++v42;
    if (v46)
    {
      v42 = v48;
      goto LABEL_22;
    }
  }

  v99 = *(v0 + 1256);
  v100 = *(v0 + 140);
  v101 = *(v0 + 1248);
  v102 = *(v0 + 1152);

  os_unfair_lock_lock((v102 + v101));
  v103 = *(v102 + v101 + v100 + *(v99 + 148));

  os_unfair_lock_unlock((v102 + v101));
  v104 = 0;
  v105 = v103 + 64;
  v106 = -1;
  v170 = v103 + 64;
  v172 = v103;
  v107 = -1 << *(v103 + 32);
  if (-v107 < 64)
  {
    v106 = ~(-1 << -v107);
  }

  v108 = v106 & *(v103 + 64);
  v109 = (63 - v107) >> 6;
  v168 = v109;
  v161 = v0;
  if (v108)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v110 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      break;
    }

    if (v110 >= v109)
    {

      *(v0 + 1144) = sub_1001D0870();
      sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
      sub_1000594F0();
      v145 = sub_1001CF800();
      v146 = *(v0 + 1176);
      v147 = *(v0 + 1152);
      v148 = v145;
      v150 = v149;

      sub_1001D1800();
      v151 = sub_1001D17F0();
      if (v152)
      {
        v153 = v151;
      }

      else
      {
        v153 = 0;
      }

      if (v152)
      {
        v154 = v152;
      }

      else
      {
        v154 = 0xE000000000000000;
      }

      v155 = swift_task_alloc();
      v155[2] = v147;
      v155[3] = v153;
      v155[4] = v154;
      v155[5] = v158;
      sub_1001D0D90();

      type metadata accessor for BiomeReporter(0);
      sub_1001115D0(v146);
      (*(*(v0 + 1168) + 8))(*(v0 + 1176), *(v0 + 1160));
      sub_100011E48(v148, v150);

      goto LABEL_96;
    }

    v108 = *(v105 + 8 * v110);
    ++v104;
    if (v108)
    {
      v104 = v110;
      do
      {
LABEL_70:
        v111 = __clz(__rbit64(v108)) | (v104 << 6);
        v112 = (*(v172 + 48) + 16 * v111);
        v113 = v112[1];
        v176 = *v112;
        v114 = *(v172 + 56) + 72 * v111;
        v116 = *(v114 + 32);
        v115 = *(v114 + 48);
        v117 = *(v114 + 16);
        *(v38 + 64) = *(v114 + 64);
        *(v38 + 32) = v116;
        *(v38 + 48) = v115;
        *(v38 + 16) = v117;
        *v38 = *v114;
        v118 = *(v0 + 808);
        v119 = *(v0 + 816);

        sub_10001208C(v38, v0 + 856, &qword_100230140, &qword_1001D36F0);
        v186 = sub_10016B23C(v118, v119);
        v121 = v120;
        v174 = *(v0 + 800);
        v122 = 0x65746164696C6156;
        if (v174 != 2)
        {
          v122 = 0x6164696C61766E55;
        }

        v179 = v122;
        if (v174 == 2)
        {
          v123 = 0xE900000000000064;
        }

        else
        {
          v123 = 0xEB00000000646574;
        }

        sub_10001208C(v38, v0 + 928, &qword_100230140, &qword_1001D36F0);

        sub_10001208C(v38, v0 + 1000, &qword_100230140, &qword_1001D36F0);

        v124 = v121;
        v125 = sub_1001D0E50();
        v126 = sub_1001D1E00();

        v184 = v123;

        if (os_log_type_enabled(v125, v126))
        {
          v165 = v125;
          v127 = swift_slowAlloc();
          v188[0] = swift_slowAlloc();
          *v127 = 136316418;
          *(v127 + 4) = sub_1000954E0(*v162, *(v162 + 8), v188);
          *(v127 + 12) = 2080;
          v128 = sub_1000954E0(v176, v113, v188);

          *(v127 + 14) = v128;
          *(v127 + 22) = 2080;
          sub_1001ABBAC(v174);
          sub_100011F00(v38, &qword_100230140, &qword_1001D36F0);
          sub_100011F00(v38, &qword_100230140, &qword_1001D36F0);
          if (v174)
          {
            v129 = v186;
            v130 = v179;
            v0 = v161;
            if (v174 == 2)
            {
              v132 = 0xE800000000000000;
              v131 = 0x6465696669726576;
            }

            else if (v174 == 1)
            {
              v131 = 0x6E69796669726576;
              v132 = 0xE900000000000067;
            }

            else
            {
              sub_100127D1C(v174);
              v131 = 0x6465696669726576;
              v132 = 0xEE0064656C696146;
            }
          }

          else
          {
            v131 = 0x6966697265766E75;
            v132 = 0xEA00000000006465;
            v129 = v186;
            v130 = v179;
            v0 = v161;
          }

          v133 = sub_1000954E0(v131, v132, v188);

          *(v127 + 24) = v133;
          *(v127 + 32) = 2080;
          *(v127 + 34) = sub_1000954E0(v130, v184, v188);
          *(v127 + 42) = 2080;
          v134 = *(v0 + 784);
          v135 = *(v0 + 792);

          v136 = sub_1000954E0(v134, v135, v188);

          *(v127 + 44) = v136;
          *(v127 + 52) = 2080;
          *(v127 + 54) = sub_1000954E0(v129, v124, v188);
          _os_log_impl(&_mh_execute_header, v165, v126, "%s Request Log: Proxied Attestation: %s %s <%s %s: %s>", v127, 0x3Eu);
          swift_arrayDestroy();
        }

        else
        {
          sub_100011F00(v38, &qword_100230140, &qword_1001D36F0);

          sub_100011F00(v38, &qword_100230140, &qword_1001D36F0);
          v0 = v161;
        }

        v137 = *(v0 + 1216);
        v138 = *(v0 + 1208);
        v139 = *(v0 + 1192);
        sub_1001D0D00();

        sub_1001D0CD0();
        sub_1001D0CE0();
        sub_1001D0CC0();

        sub_1001D0CF0();
        (*v180)(v138, v137, v139);
        v141 = v187[2];
        v140 = v187[3];
        if (v141 >= v140 >> 1)
        {
          v187 = sub_100009830((v140 > 1), v141 + 1, 1, v187);
        }

        v38 = v182;
        v108 &= v108 - 1;
        v142 = *(v0 + 1216);
        v143 = *(v0 + 1208);
        v144 = *(v0 + 1192);
        sub_100011F00(v182, &qword_100230140, &qword_1001D36F0);
        (*(v181 + 8))(v142, v144);
        v187[2] = v141 + 1;
        v35 = (*(v181 + 32))(v187 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v141, v143, v144);
        *(v0 + 1136) = v187;
        v109 = v168;
        v105 = v170;
      }

      while (v108);
    }
  }

LABEL_100:
  __break(1u);
  return _swift_task_switch(v35, v36, v37);
}

uint64_t sub_100162564()
{
  v0[161] = sub_100036B18(v0[144] + v0[160]);

  return _swift_task_switch(sub_1001625DC, 0, 0);
}

void sub_1001625DC()
{
  v150 = v0;
  v1 = v0 + 784;

  v2 = *(v0 + 1288);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 1152);
  v6 = 0;
  v148 = sub_100009830(0, *(v3 + 16), 0, _swiftEmptyArrayStorage);
  *(v0 + 1136) = v148;
  v7 = (v3 + 64);
  v128 = v3;
  v8 = -1;
  v9 = -1 << *(v3 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  isa = v8 & *(v3 + 64);
  v122 = v5 + *(*v5 + 280);
  v11 = (63 - v9) >> 6;
  v141 = (v4 + 16);
  v127 = v5;
  v123 = *(*v5 + 248);
  v142 = v4;
  v147 = v0 + 784;
  v130 = v2;
  v124 = v11;
  v125 = (v3 + 64);
  while (isa)
  {
LABEL_9:
    v13 = __clz(__rbit64(isa)) | (v6 << 6);
    v14 = (*(v128 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v128 + 56) + (v13 << 7));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[3];
    *(v0 + 48) = v17[2];
    *(v0 + 64) = v20;
    *(v0 + 16) = v18;
    *(v0 + 32) = v19;
    v21 = v17[4];
    v22 = v17[5];
    v23 = v17[6];
    *(v0 + 121) = *(v17 + 105);
    *(v0 + 96) = v22;
    *(v0 + 112) = v23;
    *(v0 + 80) = v21;
    *(v0 + 1120) = 0;
    *(v0 + 1128) = 0xE000000000000000;
    v24 = *(v0 + 56);
    v136 = v15;
    if (v24 >> 60 == 15)
    {
      if (!*(v2 + 16))
      {

        sub_10001208C(v0 + 16, v0 + 656, &qword_100230150, &unk_1001D3700);
LABEL_16:
        v32 = 0;
        v145 = 0xE000000000000000;
        goto LABEL_17;
      }

      v26 = *(v0 + 32);
      v25 = *(v0 + 40);

      sub_10001208C(v0 + 16, v0 + 528, &qword_100230150, &unk_1001D3700);
      v27 = sub_100006028(v26, v25);
      if ((v28 & 1) == 0)
      {
        goto LABEL_16;
      }

      v29 = (*(v2 + 56) + 16 * v27);
      v30 = *v29;
      v31 = v29[1];
      sub_100012038(*v29, v31);
      v32 = sub_10016B23C(v30, v31);
      v34 = v33;
      sub_100011E48(v30, v31);
    }

    else
    {
      v35 = *(v0 + 48);

      sub_10001208C(v0 + 16, v0 + 144, &qword_100230150, &unk_1001D3700);
      sub_100089C38(v35, v24);
      v32 = sub_10016B23C(v35, v24);
      v34 = v36;
      sub_10002683C(v35, v24);
    }

    swift_beginAccess();
    *(v0 + 1120) = v32;
    v145 = v34;
    *(v0 + 1128) = v34;
LABEL_17:
    v138 = *(v0 + 16);
    v37 = v138 >> 62;
    v143 = v32;
    v132 = *(v0 + 24);
    if ((v138 >> 62) - 1 < 2 || v37 && v138 & 0xFFFFFFFFFFFFFFFELL ^ 0xC000000000000000 | *(v0 + 24))
    {
      v38 = 0xE900000000000064;
      v139 = 0x65746164696C6156;
    }

    else
    {
      v139 = 0x6164696C61766E55;
      v38 = 0xEB00000000646574;
    }

    sub_10001208C(v0 + 16, v0 + 272, &qword_100230150, &unk_1001D3700);

    sub_10001208C(v0 + 16, v0 + 400, &qword_100230150, &unk_1001D3700);

    v39 = sub_1001D0E50();
    v40 = v16;
    v41 = sub_1001D1E00();

    v134 = v41;
    if (os_log_type_enabled(v39, v41))
    {
      v121 = v38;
      v42 = swift_slowAlloc();
      v149[0] = swift_slowAlloc();
      *v42 = 136316418;
      *(v42 + 4) = sub_1000954E0(*v122, *(v122 + 8), v149);
      *(v42 + 12) = 2080;
      v43 = sub_1000954E0(v136, v40, v149);

      *(v42 + 14) = v43;
      *(v42 + 22) = 2080;
      sub_1001ABB9C(v138);
      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
      if (v37 > 1)
      {
        v44 = v145;
        v45 = v139;
        v48 = v0 + 16;
        if (v37 == 2)
        {
          sub_100011F00(v48, &qword_100230150, &unk_1001D3700);
          v47 = 0xE800000000000000;
          v46 = 0x64656873696E6966;
        }

        else
        {
          sub_100011F00(v48, &qword_100230150, &unk_1001D3700);
          v49 = 0x6465696669726576;
          if (v138 ^ 0xC000000000000008 | v132)
          {
            v49 = 0x79654B746E6573;
          }

          v50 = 0xE800000000000000;
          if (v138 ^ 0xC000000000000008 | v132)
          {
            v50 = 0xE700000000000000;
          }

          v51 = 0x6966697265766E75;
          if (v138 ^ 0xC000000000000000 | v132)
          {
            v51 = 0x6E69796669726576;
          }

          v52 = 0xE900000000000067;
          if (!(v138 ^ 0xC000000000000000 | v132))
          {
            v52 = 0xEA00000000006465;
          }

          if (v138 <= 0xC000000000000007)
          {
            v46 = v51;
          }

          else
          {
            v46 = v49;
          }

          if (v138 <= 0xC000000000000007)
          {
            v47 = v52;
          }

          else
          {
            v47 = v50;
          }
        }
      }

      else
      {
        v44 = v145;
        v45 = v139;
        sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
        if (v37)
        {
          v46 = 0x6E69766965636572;
          v47 = 0xE900000000000067;
        }

        else
        {
          sub_10012853C(v138);
          v46 = 0x6465696669726576;
          v47 = 0xEE0064656C696146;
        }
      }

      v53 = sub_1000954E0(v46, v47, v149);

      *(v42 + 24) = v53;
      *(v42 + 32) = 2080;
      *(v42 + 34) = sub_1000954E0(v45, v121, v149);
      *(v42 + 42) = 2080;
      v54 = *(v0 + 32);
      v55 = *(v0 + 40);

      v56 = sub_1000954E0(v54, v55, v149);

      *(v42 + 44) = v56;
      *(v42 + 52) = 2080;

      v57 = sub_1000954E0(v143, v44, v149);

      *(v42 + 54) = v57;
      _os_log_impl(&_mh_execute_header, v39, v134, "%s Request Log: Attestation: %s %s <%s %s: %s>", v42, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);

      sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
    }

    sub_1001D0D00();

    sub_1001D0CD0();
    sub_1001D0CE0();

    sub_1001D0CC0();
    if (*(v127 + v123) == 1)
    {
      sub_1001D0CB0();
    }

    (*v141)(*(v0 + 1224), *(v0 + 1232), *(v0 + 1192));
    v1 = v0 + 784;
    v59 = v148[2];
    v58 = v148[3];
    if (v59 >= v58 >> 1)
    {
      v148 = sub_100009830((v58 > 1), v59 + 1, 1, v148);
    }

    isa &= isa - 1;
    v60 = *(v0 + 1232);
    v61 = *(v0 + 1224);
    v62 = *(v0 + 1192);
    sub_100011F00(v0 + 16, &qword_100230150, &unk_1001D3700);
    (*(v142 + 8))(v60, v62);
    v148[2] = v59 + 1;
    (*(v142 + 32))(v148 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v59, v61, v62);

    *(v0 + 1136) = v148;
    v2 = v130;
    v11 = v124;
    v7 = v125;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_86;
    }

    if (v12 >= v11)
    {
      break;
    }

    isa = v7[v12].isa;
    ++v6;
    if (isa)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  v63 = *(v0 + 1256);
  v64 = *(v0 + 140);
  v65 = *(v0 + 1248);
  v66 = *(v0 + 1152);

  os_unfair_lock_lock((v66 + v65));
  v67 = *(v66 + v65 + v64 + *(v63 + 148));

  os_unfair_lock_unlock((v66 + v65));
  v68 = 0;
  v69 = v67 + 64;
  v70 = -1;
  v131 = v67 + 64;
  v133 = v67;
  v71 = -1 << *(v67 + 32);
  if (-v71 < 64)
  {
    v70 = ~(-1 << -v71);
  }

  v72 = v70 & *(v67 + 64);
  v73 = (63 - v71) >> 6;
  v129 = v73;
  if (v72)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v74 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v74 >= v73)
    {

      *(v0 + 1144) = sub_1001D0870();
      sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
      sub_1000594F0();
      v109 = sub_1001CF800();
      v110 = *(v0 + 1176);
      v111 = *(v0 + 1152);
      v112 = v109;
      v114 = v113;

      sub_1001D1800();
      v115 = sub_1001D17F0();
      if (v116)
      {
        v117 = v115;
      }

      else
      {
        v117 = 0;
      }

      if (v116)
      {
        v118 = v116;
      }

      else
      {
        v118 = 0xE000000000000000;
      }

      v119 = swift_task_alloc();
      v119[2] = v111;
      v119[3] = v117;
      v119[4] = v118;
      v119[5] = v0 + 1136;
      sub_1001D0D90();

      type metadata accessor for BiomeReporter(0);
      sub_1001115D0(v110);
      (*(*(v0 + 1168) + 8))(*(v0 + 1176), *(v0 + 1160));
      sub_100011E48(v112, v114);

      v120 = *(v0 + 8);

      v120();
      return;
    }

    v72 = *(v69 + 8 * v74);
    ++v68;
    if (v72)
    {
      v68 = v74;
      do
      {
LABEL_57:
        v75 = __clz(__rbit64(v72)) | (v68 << 6);
        v76 = (*(v133 + 48) + 16 * v75);
        v77 = v76[1];
        v137 = *v76;
        v78 = *(v133 + 56) + 72 * v75;
        v80 = *(v78 + 32);
        v79 = *(v78 + 48);
        v81 = *(v78 + 16);
        *(v1 + 64) = *(v78 + 64);
        *(v1 + 32) = v80;
        *(v1 + 48) = v79;
        *(v1 + 16) = v81;
        *v1 = *v78;
        v82 = *(v0 + 808);
        v83 = *(v0 + 816);

        sub_10001208C(v1, v0 + 856, &qword_100230140, &qword_1001D36F0);
        v146 = sub_10016B23C(v82, v83);
        v85 = v84;
        v135 = *(v0 + 800);
        v86 = 0x65746164696C6156;
        if (v135 != 2)
        {
          v86 = 0x6164696C61766E55;
        }

        v140 = v86;
        if (v135 == 2)
        {
          v87 = 0xE900000000000064;
        }

        else
        {
          v87 = 0xEB00000000646574;
        }

        sub_10001208C(v1, v0 + 928, &qword_100230140, &qword_1001D36F0);

        sub_10001208C(v1, v0 + 1000, &qword_100230140, &qword_1001D36F0);

        v88 = v85;
        v89 = sub_1001D0E50();
        v90 = sub_1001D1E00();

        v144 = v87;

        if (os_log_type_enabled(v89, v90))
        {
          v126 = v89;
          v91 = swift_slowAlloc();
          v149[0] = swift_slowAlloc();
          *v91 = 136316418;
          *(v91 + 4) = sub_1000954E0(*v122, *(v122 + 8), v149);
          *(v91 + 12) = 2080;
          v92 = sub_1000954E0(v137, v77, v149);

          *(v91 + 14) = v92;
          *(v91 + 22) = 2080;
          sub_1001ABBAC(v135);
          sub_100011F00(v147, &qword_100230140, &qword_1001D36F0);
          sub_100011F00(v147, &qword_100230140, &qword_1001D36F0);
          if (v135)
          {
            v93 = v146;
            v94 = v140;
            if (v135 == 2)
            {
              v96 = 0xE800000000000000;
              v95 = 0x6465696669726576;
            }

            else if (v135 == 1)
            {
              v95 = 0x6E69796669726576;
              v96 = 0xE900000000000067;
            }

            else
            {
              sub_100127D1C(v135);
              v95 = 0x6465696669726576;
              v96 = 0xEE0064656C696146;
            }
          }

          else
          {
            v95 = 0x6966697265766E75;
            v96 = 0xEA00000000006465;
            v93 = v146;
            v94 = v140;
          }

          v97 = sub_1000954E0(v95, v96, v149);

          *(v91 + 24) = v97;
          *(v91 + 32) = 2080;
          *(v91 + 34) = sub_1000954E0(v94, v144, v149);
          *(v91 + 42) = 2080;
          v98 = *(v0 + 784);
          v99 = *(v0 + 792);

          v100 = sub_1000954E0(v98, v99, v149);

          *(v91 + 44) = v100;
          *(v91 + 52) = 2080;
          *(v91 + 54) = sub_1000954E0(v93, v88, v149);
          _os_log_impl(&_mh_execute_header, v126, v90, "%s Request Log: Proxied Attestation: %s %s <%s %s: %s>", v91, 0x3Eu);
          swift_arrayDestroy();
        }

        else
        {
          sub_100011F00(v147, &qword_100230140, &qword_1001D36F0);

          sub_100011F00(v147, &qword_100230140, &qword_1001D36F0);
        }

        v101 = *(v0 + 1216);
        v102 = *(v0 + 1208);
        v103 = *(v0 + 1192);
        sub_1001D0D00();

        sub_1001D0CD0();
        sub_1001D0CE0();
        sub_1001D0CC0();

        sub_1001D0CF0();
        (*v141)(v102, v101, v103);
        v105 = v148[2];
        v104 = v148[3];
        if (v105 >= v104 >> 1)
        {
          v148 = sub_100009830((v104 > 1), v105 + 1, 1, v148);
        }

        v1 = v0 + 784;
        v72 &= v72 - 1;
        v106 = *(v0 + 1216);
        v107 = *(v0 + 1208);
        v108 = *(v0 + 1192);
        sub_100011F00(v147, &qword_100230140, &qword_1001D36F0);
        (*(v142 + 8))(v106, v108);
        v148[2] = v105 + 1;
        (*(v142 + 32))(v148 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v105, v107, v108);
        *(v0 + 1136) = v148;
        v73 = v129;
        v69 = v131;
      }

      while (v72);
    }
  }

LABEL_86:
  __break(1u);
}

uint64_t sub_1001637E0(uint64_t a1, int *a2)
{
  v3[7] = v2;
  v5 = sub_1001D0DC0();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_1001D20D0();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v3[14] = v7;
  *v7 = v3;
  v7[1] = sub_10016399C;

  return v9(v3 + 4);
}

uint64_t sub_10016399C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100163FD8;
  }

  else
  {
    v2 = sub_100163AB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100163AB0()
{
  v48 = v0;
  v1 = v0[4];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[7];
  sub_1001428C0(v1, v2 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v7 = v0[2];
  v46 = v0[3];
  v8 = (v6 + *(*v6 + 144));
  os_unfair_lock_lock(v8);
  v9 = v8 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  if (v2)
  {
    v10 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
    v11 = &v9[*(v10 + 108)];
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    *v11 = v1;
    *(v11 + 1) = v7;
    *(v11 + 2) = v46;
    v15 = v11[24];
    v11[24] = 1;
    sub_1001428C0(v1, 1);
    swift_errorRetain();
    sub_100128734(v12, v13, v14, v15);
    v16 = &v9[*(v10 + 96)];
    v17 = *v16;
    *v16 = v1;
    v18 = v16[8];
    v16[8] = 3;
    sub_1001AF874(v17, v18);
    os_unfair_lock_unlock(v8);
    v0[6] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);

    v19 = v0[1];
  }

  else
  {
    v21 = v0[9];
    v20 = v0[10];
    v23 = v0[7];
    v22 = v0[8];
    v24 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
    v25 = &v9[*(v24 + 108)];
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = *(v25 + 2);
    *v25 = v7;
    *(v25 + 1) = v46;
    *(v25 + 2) = 0;
    v29 = v25[24];
    v25[24] = 0;
    sub_100128734(v26, v27, v28, v29);
    v30 = &v9[*(v24 + 96)];
    v31 = *v30;
    *v30 = 1;
    v32 = v30[8];
    v30[8] = 4;
    sub_1001AF874(v31, v32);
    os_unfair_lock_unlock(v8);
    (*(v21 + 16))(v20, v23 + *(*v23 + 304), v22);
    v33 = sub_1001D0DE0();
    v34 = sub_1001D1EA0();
    if (sub_1001D1ED0())
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v34, v36, "OTTSent", "", v35, 2u);
    }

    v38 = v0[9];
    v37 = v0[10];
    v39 = v0[8];

    (*(v38 + 8))(v37, v39);

    v40 = sub_1001D0E50();
    v41 = sub_1001D1E00();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v0[7];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1000954E0(*(v42 + *(*v42 + 280)), *(v42 + *(*v42 + 280) + 8), &v47);
      _os_log_impl(&_mh_execute_header, v40, v41, "%s Sent auth message on data stream", v43, 0xCu);
      sub_100011CF0(v44);
    }

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_100163FD8()
{
  v47 = v0;
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[7];
  sub_1001428C0(v1, v1 != 0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v3 + 8))(v2, v4);
  v6 = v0[2];
  v45 = v0[3];
  v7 = (v5 + *(*v5 + 144));
  os_unfair_lock_lock(v7);
  v8 = v7 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  if (v1)
  {
    v9 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
    v10 = &v8[*(v9 + 108)];
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 2);
    *v10 = v1;
    *(v10 + 1) = v6;
    *(v10 + 2) = v45;
    v14 = v10[24];
    v10[24] = 1;
    sub_1001428C0(v1, 1);
    swift_errorRetain();
    sub_100128734(v11, v12, v13, v14);
    v15 = &v8[*(v9 + 96)];
    v16 = *v15;
    *v15 = v1;
    v17 = v15[8];
    v15[8] = 3;
    sub_1001AF874(v16, v17);
    os_unfair_lock_unlock(v7);
    v0[6] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);

    v18 = v0[1];
  }

  else
  {
    v20 = v0[9];
    v19 = v0[10];
    v22 = v0[7];
    v21 = v0[8];
    v23 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
    v24 = &v8[*(v23 + 108)];
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = *(v24 + 2);
    *v24 = v6;
    *(v24 + 1) = v45;
    *(v24 + 2) = 0;
    v28 = v24[24];
    v24[24] = 0;
    sub_100128734(v25, v26, v27, v28);
    v29 = &v8[*(v23 + 96)];
    v30 = *v29;
    *v29 = 1;
    v31 = v29[8];
    v29[8] = 4;
    sub_1001AF874(v30, v31);
    os_unfair_lock_unlock(v7);
    (*(v20 + 16))(v19, v22 + *(*v22 + 304), v21);
    v32 = sub_1001D0DE0();
    v33 = sub_1001D1EA0();
    if (sub_1001D1ED0())
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v33, v35, "OTTSent", "", v34, 2u);
    }

    v37 = v0[9];
    v36 = v0[10];
    v38 = v0[8];

    (*(v37 + 8))(v36, v38);

    v39 = sub_1001D0E50();
    v40 = sub_1001D1E00();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v0[7];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1000954E0(*(v41 + *(*v41 + 280)), *(v41 + *(*v41 + 280) + 8), &v46);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s Sent auth message on data stream", v42, 0xCu);
      sub_100011CF0(v43);
    }

    v18 = v0[1];
  }

  return v18();
}

void sub_1001644FC()
{
  v1 = v0;
  v2 = sub_1001D0DC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001D20D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v7 + 8))(v9, v6);
  v10 = v26[0];
  v11 = v26[1];
  v12 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v12);
  v13 = v12 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v14 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v15 = &v13[*(v14 + 96)];
  v16 = v15[8];
  if (v16 <= 1)
  {
    if (v15[8])
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v16 != 2)
  {
    if (v16 == 3)
    {
      goto LABEL_8;
    }

    *v15 = 0;
LABEL_6:
    v15[8] = 1;
  }

  v17 = &v13[*(v14 + 124)];
  *v17 = v10;
  *(v17 + 1) = v11;
  v17[16] = 0;
LABEL_8:
  os_unfair_lock_unlock(v12);
  (*(v3 + 16))(v5, v1 + *(*v1 + 304), v2);
  v18 = sub_1001D0DE0();
  v19 = sub_1001D1EA0();
  if (sub_1001D1ED0())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "ReadyForMoreChunks", "", v20, 2u);
  }

  (*(v3 + 8))(v5, v2);

  v22 = sub_1001D0E50();
  v23 = sub_1001D1E00();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1000954E0(*(v1 + *(*v1 + 280)), *(v1 + *(*v1 + 280) + 8), v26);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s readyForMoreChunks received", v24, 0xCu);
    sub_100011CF0(v25);
  }
}

uint64_t sub_100164990()
{
  v1 = sub_1001D0DC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + *(*v0 + 304), v1);
  v5 = sub_1001D0DE0();
  v6 = sub_1001D1EA0();
  if (sub_1001D1ED0())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "ReceivedOutgoingUserDataChunk", "", v7, 2u);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_100164B24()
{
  v1 = v0;
  v2 = sub_1001D20D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v3 + 8))(v5, v2);
  v6 = v11;
  v7 = v12;
  v8 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v8);
  v9 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_100164D1C(v8 + *(v9 + 28), v6, v7);
  os_unfair_lock_unlock(v8);
}

uint64_t sub_100164D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v7 = a1 + *(result + 96);
  v8 = *(v7 + 8);
  v9 = v8 >= 2;
  v10 = v8 - 2;
  if (v9)
  {
    if (v10 < 2)
    {
      return result;
    }

    if (!*v7)
    {
      sub_1001D2030(49);

      v12._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v12);

      v13._object = 0x80000001001E7630;
      v13._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v13);
      result = sub_1001D2180();
      __break(1u);
      return result;
    }

    *v7 = 0;
  }

  *(v7 + 8) = 2;
  v11 = a1 + *(result + 128);
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = 0;
  return result;
}

uint64_t sub_100164E68(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v120 = a4;
  v154 = a1;
  v125 = type metadata accessor for ValidatedAttestation(0);
  __chkstk_darwin(v125);
  v136 = &v116[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  result = __chkstk_darwin(v137);
  v11 = &v116[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    goto LABEL_39;
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    v119 = *(*v120 + 272);
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v135 = *(v8 + 72);
    *&v10 = 136315138;
    v117 = v10;
    v118 = xmmword_1001D7160;
    v124 = xmmword_1001E1390;
    v123 = xmmword_1001D6800;
    v126 = &v116[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    do
    {
      sub_1001AFCB4(v13, v11, type metadata accessor for ValidatedAttestationOrAttestation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = *(v11 + 3);
        v143 = *(v11 + 2);
        v144 = v14;
        v15 = *(v11 + 5);
        v145 = *(v11 + 4);
        v146 = v15;
        v16 = *v11;
        v142 = *(v11 + 1);
        v141 = v16;
        v17 = *(&v142 + 1);
        if (*(&v142 + 1) >> 60 == 15)
        {
          sub_100089C90(&v141, &v147);
          v18 = sub_1001D0E50();
          v19 = sub_1001D1DE0();
          sub_10005AF88(&v141);
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            *&v147 = v21;
            *v20 = v117;
            v22 = v141;

            v23 = sub_1000954E0(v22, *(&v22 + 1), &v147);

            *(v20 + 4) = v23;
            _os_log_impl(&_mh_execute_header, v18, v19, "bundle missing for attestation: %s", v20, 0xCu);
            sub_100011CF0(v21);
          }

          result = sub_10005AF88(&v141);
          goto LABEL_5;
        }

        v138 = v13;
        v139 = v12;
        v132 = *(v11 + 12);
        v48 = *(&v141 + 1);
        v134 = v141;
        v49 = v142;
        v50 = *(&v143 + 1);
        v122 = v143;
        v51 = *(&v144 + 1);
        v129 = v144;
        v52 = *(&v145 + 1);
        v131 = v145;
        v53 = *(&v146 + 1);
        v133 = v146;
        v54 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
        sub_100089C38(v49, v17);
        v128 = v49;
        v130 = v17;
        sub_100089C38(v49, v17);
        v127 = v53;

        v55 = v154;

        v56 = v50;
        v57 = v48;

        v58 = v51;
        v59 = v134;

        v60 = v52;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v54;
        v62 = *(v55 + v54);
        v140 = v62;
        v63 = sub_100006028(v59, v48);
        v65 = v62[2];
        v66 = (v64 & 1) == 0;
        v67 = __OFADD__(v65, v66);
        v68 = v65 + v66;
        if (v67)
        {
          goto LABEL_35;
        }

        v69 = v64;
        if (v62[3] >= v68)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v115 = v63;
            sub_10001136C();
            v63 = v115;
          }
        }

        else
        {
          sub_10000EDB0(v68, isUniquelyReferenced_nonNull_native);
          v63 = sub_100006028(v59, v48);
          if ((v69 & 1) != (v70 & 1))
          {
            goto LABEL_38;
          }
        }

        v94 = v127;
        v95 = v133;
        v96 = v60;
        v97 = v128;
        v98 = v132;
        v99 = v131;
        v100 = v129;
        v101 = v122;
        if (v69)
        {
          v78 = v140;
          v102 = v140[7] + (v63 << 7);
          v103 = *(v102 + 48);
          v105 = *v102;
          v104 = *(v102 + 16);
          v149 = *(v102 + 32);
          v150 = v103;
          v147 = v105;
          v148 = v104;
          v107 = *(v102 + 80);
          v106 = *(v102 + 96);
          v108 = *(v102 + 64);
          *&v153[9] = *(v102 + 105);
          v152 = v107;
          *v153 = v106;
          v151 = v108;
          *v102 = v118;
          *(v102 + 16) = v59;
          *(v102 + 24) = v57;
          v109 = v130;
          *(v102 + 32) = v97;
          *(v102 + 40) = v109;
          *(v102 + 48) = v98;
          *(v102 + 56) = v101;
          *(v102 + 64) = v56;
          *(v102 + 72) = v100;
          *(v102 + 80) = v58;
          *(v102 + 88) = v99;
          *(v102 + 96) = v96;
          *(v102 + 104) = v95;
          *(v102 + 112) = v94;
          *(v102 + 120) = 0;
          sub_100011F00(&v147, &qword_100230150, &unk_1001D3700);
          sub_10005AF88(&v141);
          result = sub_10002683C(v97, v109);
        }

        else
        {
          v78 = v140;
          v140[(v63 >> 6) + 8] |= 1 << v63;
          v110 = (v78[6] + 16 * v63);
          *v110 = v59;
          v110[1] = v57;
          v111 = v78[7] + (v63 << 7);
          *v111 = v118;
          *(v111 + 16) = v59;
          *(v111 + 24) = v57;
          v112 = v130;
          *(v111 + 32) = v97;
          *(v111 + 40) = v112;
          *(v111 + 48) = v98;
          *(v111 + 56) = v101;
          *(v111 + 64) = v56;
          *(v111 + 72) = v100;
          *(v111 + 80) = v58;
          *(v111 + 88) = v99;
          *(v111 + 96) = v96;
          *(v111 + 104) = v95;
          *(v111 + 112) = v94;
          *(v111 + 120) = 0;

          sub_10005AF88(&v141);
          result = sub_10002683C(v97, v112);
          v113 = v78[2];
          v67 = __OFADD__(v113, 1);
          v114 = v113 + 1;
          if (v67)
          {
            goto LABEL_37;
          }

          v78[2] = v114;
        }

        v92 = v154;
        v93 = &v146;
      }

      else
      {
        v138 = v13;
        v139 = v12;
        v134 = *&v11[*(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48)];
        v24 = v136;
        sub_1001B0368(v11, v136, type metadata accessor for ValidatedAttestation);
        v26 = *v24;
        v25 = v24[1];
        v27 = v24[5];
        v130 = v24[4];
        v28 = v24[7];
        v132 = v24[6];
        v29 = (v24 + *(v125 + 36));
        v30 = v29[1];
        v131 = *v29;
        v31 = v24[10];
        v32 = v24[11];
        v133 = v31;
        v33 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
        v129 = v32;

        v34 = v154;

        v128 = v27;

        v35 = v28;

        v36 = v30;

        v37 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v33;
        v38 = *(v34 + v33);
        *&v141 = v38;
        v39 = v26;
        v41 = sub_100006028(v26, v25);
        v42 = *(v38 + 16);
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          sub_1001D24F0();
          __break(1u);
LABEL_39:
          sub_100011AC0(&qword_10022FF28, &unk_1001E1C60);
          result = sub_1001D2460();
          __break(1u);
          return result;
        }

        v45 = v40;
        if (*(v38 + 24) >= v44)
        {
          if ((v37 & 1) == 0)
          {
            sub_10001136C();
          }
        }

        else
        {
          sub_10000EDB0(v44, v37);
          v46 = sub_100006028(v26, v25);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_38;
          }

          v41 = v46;
        }

        v71 = v134;
        v72 = v129;
        v73 = v133;
        v74 = v132;
        v75 = v131;
        v76 = v128;
        v77 = v130;
        if (v45)
        {
          v78 = v141;
          v79 = *(v141 + 56) + (v41 << 7);
          v80 = *(v79 + 48);
          v82 = *v79;
          v81 = *(v79 + 16);
          v149 = *(v79 + 32);
          v150 = v80;
          v147 = v82;
          v148 = v81;
          v84 = *(v79 + 80);
          v83 = *(v79 + 96);
          v85 = *(v79 + 64);
          *&v153[9] = *(v79 + 105);
          v152 = v84;
          *v153 = v83;
          v151 = v85;
          *v79 = v124;
          *(v79 + 16) = v39;
          *(v79 + 24) = v25;
          *(v79 + 32) = v123;
          *(v79 + 48) = v71;
          *(v79 + 56) = v77;
          *(v79 + 64) = v76;
          *(v79 + 72) = v74;
          *(v79 + 80) = v35;
          *&v83 = v75;
          *(&v83 + 1) = v36;
          *&v80 = v73;
          *(&v80 + 1) = v72;
          *(v79 + 104) = v80;
          *(v79 + 88) = v83;
          *(v79 + 120) = 0;
          sub_100011F00(&v147, &qword_100230150, &unk_1001D3700);
        }

        else
        {
          v78 = v141;
          *(v141 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v86 = (v78[6] + 16 * v41);
          *v86 = v39;
          v86[1] = v25;
          v87 = v78[7] + (v41 << 7);
          *v87 = v124;
          *(v87 + 16) = v39;
          *(v87 + 24) = v25;
          *(v87 + 32) = v123;
          *(v87 + 48) = v71;
          *(v87 + 56) = v77;
          *(v87 + 64) = v76;
          *(v87 + 72) = v74;
          *&v88 = v75;
          *(&v88 + 1) = v36;
          *&v89 = v73;
          *(&v89 + 1) = v72;
          *(v87 + 80) = v35;
          *(v87 + 104) = v89;
          *(v87 + 88) = v88;
          *(v87 + 120) = 0;
          v90 = v78[2];
          v67 = __OFADD__(v90, 1);
          v91 = v90 + 1;
          if (v67)
          {
            goto LABEL_36;
          }

          v78[2] = v91;
        }

        result = sub_1001AFB98(v136, type metadata accessor for ValidatedAttestation);
        v92 = v154;
        v93 = &v150;
      }

      *(v92 + *(v93 - 32)) = v78;
      v11 = v126;
      v12 = v139;
      v13 = v138;
LABEL_5:
      v13 += v135;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1001658A0(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_1001D0F00();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001D0DC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001D20D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v10 + 8))(v12, v9);
  v13 = v31;
  v14 = v32;
  v15 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v15);
  v16 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  v17 = sub_100165CF0(v15 + *(v16 + 28), 1, v13, v14, v30, v2);
  os_unfair_lock_unlock(v15);
  (*(v6 + 16))(v8, v2 + *(*v2 + 304), v5);
  v18 = sub_1001D0DE0();
  v19 = sub_1001D1EA0();
  if (sub_1001D1ED0())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "AttestationsReceivedFromRopes", "", v20, 2u);
  }

  result = (*(v6 + 8))(v8, v5);
  if (v17)
  {
    v24 = v27;
    v23 = v28;
    v25 = v29;
    (*(v28 + 104))(v27, enum case for NWActivity.CompletionReason.success(_:), v29);

    sub_1001D0F20();

    return (*(v23 + 8))(v24, v25);
  }

  return result;
}

uint64_t sub_100165CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v146 = a6;
  v150 = a5;
  v10 = type metadata accessor for ValidatedAttestation(0);
  __chkstk_darwin(v10 - 8);
  v123 = (&v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  v152 = *(v140 - 8);
  v12 = __chkstk_darwin(v140);
  v126 = (&v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v142 = &v121 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v121 - v17;
  __chkstk_darwin(v16);
  v147 = &v121 - v19;
  v20 = sub_100011AC0(&qword_10022FDC8, &qword_1001E18D8);
  v21 = __chkstk_darwin(v20 - 8);
  v148 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v121 - v23;
  v25 = sub_100011AC0(&qword_10022FE90, &qword_1001E1B78);
  __chkstk_darwin(v25 - 8);
  v27 = &v121 - v26;
  v28 = sub_100011AC0(&qword_10022FE98, &qword_1001E1B80);
  __chkstk_darwin(v28 - 8);
  v151 = &v121 - v29;
  v30 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  __chkstk_darwin(v30);
  v32 = (&v121 - v31);
  v143 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v33 = a1 + v143[29];
  if ((*(v33 + 24) & 1) == 0)
  {
    v34 = __OFADD__(*v33, a2);
    a2 += *v33;
    if (v34)
    {
      goto LABEL_45;
    }

    a3 = *(v33 + 8);
    a4 = *(v33 + 16);
  }

  *v33 = a2;
  *(v33 + 8) = a3;
  *(v33 + 16) = a4;
  *(v33 + 24) = 0;
  v35 = v143[21];
  sub_10001208C(a1 + v35, v32, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v139 = a1;
  if (EnumCaseMultiPayload <= 2)
  {
    v37 = v140;
    v38 = v147;
    v122 = *v32;
    sub_100011F00(a1 + v35, &unk_100230130, &unk_1001E16A0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v122 = 0;
    v37 = v140;
    v38 = v147;
    if ((EnumCaseMultiPayload - 5) >= 2)
    {
      v39 = EnumCaseMultiPayload == 3;
      v40 = v150;
      if (!v39)
      {
        v41 = v150;
        v42 = sub_1001D0200();
        (*(*(v42 - 8) + 8))(v32, v42);
        v40 = v41;
        v122 = 0;
      }

      goto LABEL_10;
    }
  }

  v40 = v150;
LABEL_10:
  sub_10001208C(v40, v27, &qword_10022FE90, &qword_1001E1B78);
  v43 = v24;
  sub_1001B0368(v27, v24, type metadata accessor for ValidatedAttestationOrAttestation);
  v44 = v152;
  v45 = v152 + 56;
  v46 = *(v152 + 56);
  v46(v43, 0, 1, v37);
  v47 = v151;
  v46(v151, 1, 1, v37);
  sub_10001BAC8(v43, v47, &qword_10022FDC8, &qword_1001E18D8);
  v145 = *(*v146 + 272);
  v48 = v148;
  sub_1000DBEF4(v47, v148, &qword_10022FDC8, &qword_1001E18D8);
  v150 = v45;
  v149 = v46;
  v46(v47, 1, 1, v37);
  v49 = *(v44 + 48);
  v152 = v44 + 48;
  v50 = v49(v48, 1, v37);
  v52 = v142;
  v53 = v139;
  if (v50 == 1)
  {
LABEL_11:
    sub_100011F00(v151, &qword_10022FE98, &qword_1001E1B80);
    return v122;
  }

  *&v51 = 136315138;
  v137 = v51;
  v125 = xmmword_1001D7160;
  v138 = v49;
  v124 = v18;
  while (1)
  {
    sub_1001B0368(v48, v38, type metadata accessor for ValidatedAttestationOrAttestation);
    sub_1001AFCB4(v38, v18, type metadata accessor for ValidatedAttestationOrAttestation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1001AFCB4(v38, v52, type metadata accessor for ValidatedAttestationOrAttestation);
      v62 = sub_1001D0E50();
      v63 = sub_1001D1DE0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v160 = v65;
        *v64 = v137;
        v66 = v126;
        sub_1001B0368(v52, v126, type metadata accessor for ValidatedAttestationOrAttestation);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = v66[3];
          v155 = v66[2];
          v156 = v67;
          v68 = v66[5];
          v157 = v66[4];
          v158 = v68;
          v69 = v66[1];
          v153 = *v66;
          v154 = v69;
          v70 = *(&v153 + 1);
          v71 = v153;

          sub_10005AF88(&v153);
        }

        else
        {
          v95 = v123;
          sub_1001B0368(v66, v123, type metadata accessor for ValidatedAttestation);
          v71 = *v95;
          v70 = v95[1];

          v96 = v95;
          v37 = v140;
          sub_1001AFB98(v96, type metadata accessor for ValidatedAttestation);
        }

        v97 = sub_1000954E0(v71, v70, &v160);

        *(v64 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v62, v63, "Received unexpected validated attestation nodeID: %s", v64, 0xCu);
        sub_100011CF0(v65);

        v38 = v147;
        sub_1001AFB98(v147, type metadata accessor for ValidatedAttestationOrAttestation);
        v53 = v139;
        v49 = v138;
      }

      else
      {

        sub_1001AFB98(v52, type metadata accessor for ValidatedAttestationOrAttestation);
        sub_1001AFB98(v38, type metadata accessor for ValidatedAttestationOrAttestation);
      }

      sub_1001AFB98(v18, type metadata accessor for ValidatedAttestation);
      goto LABEL_15;
    }

    v56 = *(v18 + 1);
    v160 = *v18;
    v161 = v56;
    v57 = *(v18 + 5);
    v164 = *(v18 + 4);
    v165 = v57;
    v58 = *(v18 + 3);
    v162 = *(v18 + 2);
    v163 = v58;
    v144 = *(v18 + 12);
    v59 = v160;
    v60 = v143[36];
    if (*(*(v53 + v60) + 16))
    {
      sub_100006028(v160, *(&v160 + 1));
      if (v61)
      {
        sub_10005AF88(&v160);
        v38 = v147;
        sub_1001AFB98(v147, type metadata accessor for ValidatedAttestationOrAttestation);
        v52 = v142;
        goto LABEL_16;
      }
    }

    v141 = v59;
    if (*(&v161 + 1) >> 60 != 15)
    {
      break;
    }

    sub_100089C90(&v160, &v153);
    v72 = sub_1001D0E50();
    v73 = sub_1001D1DE0();
    sub_10005AF88(&v160);
    v74 = os_log_type_enabled(v72, v73);
    v37 = v140;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v153 = v76;
      *v75 = v137;

      v77 = sub_1000954E0(v141, *(&v59 + 1), &v153);

      *(v75 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v72, v73, "bundle missing for attestation: %s", v75, 0xCu);
      sub_100011CF0(v76);
      v49 = v138;

      sub_10005AF88(&v160);
    }

    else
    {
      sub_10005AF88(&v160);
    }

    v38 = v147;
    sub_1001AFB98(v147, type metadata accessor for ValidatedAttestationOrAttestation);
LABEL_42:
    v52 = v142;
LABEL_15:
    v48 = v148;
LABEL_16:
    v55 = v151;
    sub_1000DBEF4(v151, v48, &qword_10022FDC8, &qword_1001E18D8);
    v149(v55, 1, 1, v37);
    if (v49(v48, 1, v37) == 1)
    {
      goto LABEL_11;
    }
  }

  v78 = v161;
  v79 = *(&v162 + 1);
  v127 = v162;
  v130 = v163;
  v80 = v53;
  v81 = *(&v163 + 1);
  v82 = *(&v164 + 1);
  v132 = v164;
  v83 = *(&v165 + 1);
  v134 = v165;
  v84 = *(&v161 + 1);
  sub_100089C38(v161, *(&v161 + 1));
  v136 = v78;
  v128 = v84;
  sub_100089C38(v78, v84);
  v135 = v83;

  v129 = v79;

  v131 = v81;

  v133 = v82;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v166 = *(v80 + v60);
  v86 = v166;
  v88 = sub_100006028(v141, *(&v59 + 1));
  v89 = v86[2];
  v90 = (v87 & 1) == 0;
  v91 = v89 + v90;
  if (!__OFADD__(v89, v90))
  {
    v92 = v87;
    if (v86[3] >= v91)
    {
      v18 = v124;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001136C();
      }
    }

    else
    {
      sub_10000EDB0(v91, isUniquelyReferenced_nonNull_native);
      v93 = sub_100006028(v59, *(&v59 + 1));
      v18 = v124;
      if ((v92 & 1) != (v94 & 1))
      {
        goto LABEL_46;
      }

      v88 = v93;
    }

    v49 = v138;
    if (v92)
    {
      v98 = v166;
      v99 = v166[7] + (v88 << 7);
      v100 = *(v99 + 32);
      v102 = *v99;
      v101 = *(v99 + 16);
      v156 = *(v99 + 48);
      v155 = v100;
      v153 = v102;
      v154 = v101;
      v104 = *(v99 + 80);
      v103 = *(v99 + 96);
      v105 = *(v99 + 64);
      *&v159[9] = *(v99 + 105);
      v158 = v104;
      *v159 = v103;
      v157 = v105;
      *v99 = v125;
      *(v99 + 16) = v59;
      v106 = v136;
      v107 = v128;
      *(v99 + 32) = v136;
      *(v99 + 40) = v107;
      v108 = v127;
      *(v99 + 48) = v144;
      *(v99 + 56) = v108;
      v109 = v130;
      *(v99 + 64) = v129;
      *(v99 + 72) = v109;
      v110 = v132;
      *(v99 + 80) = v131;
      *(v99 + 88) = v110;
      v111 = v134;
      *(v99 + 96) = v133;
      *(v99 + 104) = v111;
      *(v99 + 112) = v135;
      *(v99 + 120) = 0;
      sub_100011F00(&v153, &qword_100230150, &unk_1001D3700);
      sub_10005AF88(&v160);
      sub_10002683C(v106, v107);
      v38 = v147;
      sub_1001AFB98(v147, type metadata accessor for ValidatedAttestationOrAttestation);
    }

    else
    {
      v98 = v166;
      v166[(v88 >> 6) + 8] |= 1 << v88;
      *(v98[6] + 16 * v88) = v59;
      v112 = v98[7] + (v88 << 7);
      *v112 = v125;
      *(v112 + 16) = v59;
      v113 = v136;
      v114 = v128;
      *(v112 + 32) = v136;
      *(v112 + 40) = v114;
      v115 = v127;
      *(v112 + 48) = v144;
      *(v112 + 56) = v115;
      v116 = v130;
      *(v112 + 64) = v129;
      *(v112 + 72) = v116;
      v117 = v132;
      *(v112 + 80) = v131;
      *(v112 + 88) = v117;
      v118 = v134;
      *(v112 + 96) = v133;
      *(v112 + 104) = v118;
      *(v112 + 112) = v135;
      *(v112 + 120) = 0;

      sub_10005AF88(&v160);
      sub_10002683C(v113, v114);
      v38 = v147;
      sub_1001AFB98(v147, type metadata accessor for ValidatedAttestationOrAttestation);
      v119 = v98[2];
      v34 = __OFADD__(v119, 1);
      v120 = v119 + 1;
      if (v34)
      {
        goto LABEL_44;
      }

      v98[2] = v120;
    }

    v53 = v139;
    *(v139 + v60) = v98;
    v37 = v140;
    goto LABEL_42;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_100166C04(uint64_t a1)
{
  v2 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  __chkstk_darwin(v2);
  v4 = (&v11 - v3);
  v5 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 84);
  sub_10001208C(a1 + v5, v4, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v9 = *v4;
    sub_100011F00(a1 + v5, &unk_100230130, &unk_1001E16A0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if ((EnumCaseMultiPayload - 5) >= 2 && EnumCaseMultiPayload != 3)
    {
      v8 = sub_1001D0200();
      (*(*(v8 - 8) + 8))(v4, v8);
    }

    return 0;
  }

  return v9;
}

uint64_t sub_100166D64(uint64_t a1, uint64_t a2, int *a3)
{
  v4[5] = a2;
  v4[6] = v3;
  v4[4] = a1;
  v6 = sub_1001D0DC0();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = sub_1001D20D0();
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for ThimbledEvent(0);
  v4[14] = swift_task_alloc();
  v8 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v4[18] = swift_task_alloc();
  v9 = sub_1001CFDD0();
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();
  v10 = sub_1001CFDA0();
  v4[22] = v10;
  v4[23] = *(v10 - 8);
  v4[24] = swift_task_alloc();
  v11 = sub_1001CFD60();
  v4[25] = v11;
  v4[26] = *(v11 - 8);
  v4[27] = swift_task_alloc();
  v14 = (a3 + *a3);
  v12 = swift_task_alloc();
  v4[28] = v12;
  *v12 = v4;
  v12[1] = sub_100167100;

  return v14();
}

uint64_t sub_100167100()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100167D74;
  }

  else
  {
    v2 = sub_100167214;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100167214(uint64_t a1)
{
  v106 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[22];
  v100 = v1[21];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[6];
  v90 = v1[29];
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  (*(v3 + 16))(v2, v7 + *(*v7 + 320), v4);
  v8 = (v7 + *(*v7 + 224));
  v9 = v8[1];
  v94 = *v8;
  v10 = v7 + *(*v7 + 256);
  v95 = *(v10 + 160);
  v97 = *(v10 + 168);
  v11 = (v7 + *(*v7 + 192));
  v12 = v11[1];
  v96 = *v11;
  v13 = (v7 + *(*v7 + 208));
  v14 = v13[1];
  v91 = *v13;
  (*(v6 + 16))(v100, v7 + *(*v7 + 264), v5);
  sub_100011AC0(&qword_10022FE50, &unk_1001E1A50);
  v15 = sub_100011AC0(&qword_10022BCF0, &qword_1001DB808);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001D3AF0;
  v19 = (v18 + v17);
  v20 = *(v15 + 48);
  *v19 = 0;
  v101 = v14;

  sub_1001428C0(v21, v90 != 0);
  sub_1001CFD20();
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v93 = v1[29];
  *&v19[v20] = v22;
  v23 = enum case for EventValue.int(_:);
  v24 = sub_1001CFEE0();
  v103 = *(v24 - 8);
  v92 = v18;
  v25 = *(v103 + 104);
  v25(&v19[v20], v23, v24);
  v26 = &v19[v16 + *(v15 + 48)];
  v19[v16] = 6;
  *v26 = sub_1001CFD70();
  v26[1] = v27;
  v28 = enum case for EventValue.string(_:);
  v29 = v26;
  v30 = v25;
  v25(v29, enum case for EventValue.string(_:), v24);
  v31 = &v19[2 * v16];
  v32 = *(v15 + 48);
  *v31 = 1;
  v33 = &v31[v32];
  *v33 = v94;
  v33[1] = v9;
  (v25)();
  v34 = &v19[3 * v16];
  v35 = *(v15 + 48);
  *v34 = 2;
  v36 = &v34[v35];
  *v36 = v95;
  v36[1] = v97;
  (v25)();
  v37 = &v19[4 * v16];
  v38 = *(v15 + 48);
  *v37 = 4;
  v39 = &v37[v38];
  *v39 = v96;
  v39[1] = v12;
  (v25)();
  v40 = &v19[5 * v16];
  v41 = &v40[*(v15 + 48)];
  *v40 = 5;
  *v41 = sub_1001CFDB0();
  v41[1] = v42;
  v25(v41, v28, v24);

  v43 = sub_1000D5B30(v92);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v105 = v43;
  v44 = v1[18];
  if (v93)
  {
    v98 = v30;
    v46 = v1[4];
    v45 = v1[5];
    sub_1001CFED0();
    v47 = *(v103 + 56);
    v47(v44, 0, 1, v24);
    sub_100016DC8(v44, 7);
    *v44 = v46;
    v44[1] = v45;
    v30 = v98;
    v98(v44, v28, v24);
    v47(v44, 0, 1, v24);

    v48 = sub_100016DC8(v44, 9);
    *v44 = sub_10012603C(v48);
    v44[1] = v49;
    v98(v44, v28, v24);
    v47(v44, 0, 1, v24);
    v50 = sub_100016DC8(v44, 8);
    sub_100142304(v50, 1);
    v51 = v101;
    if (!v101)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1001CFED0();
  v47 = *(v103 + 56);
  v47(v44, 0, 1, v24);
  sub_100016DC8(v44, 7);
  v51 = v101;
  if (v101)
  {
LABEL_6:
    v52 = v1[18];
    *v52 = v91;
    v52[1] = v51;
    v30(v52, v28, v24);
    v47(v52, 0, 1, v24);
    sub_100016DC8(v52, 3);
  }

LABEL_7:
  v104 = v1[29];
  v54 = v1[26];
  v53 = v1[27];
  v56 = v1[24];
  v55 = v1[25];
  v58 = v1[22];
  v57 = v1[23];
  v59 = v1[16];
  v60 = v1[14];
  v99 = v1[17];
  v102 = v1[15];
  (*(v1[20] + 8))(v1[21], v1[19]);
  (*(v57 + 8))(v56, v58);
  (*(v54 + 8))(v53, v55);
  v61 = v105;
  v60[3] = &type metadata for KDataSendMetric;
  v60[4] = sub_1001AF3F0();
  v62 = swift_allocObject();
  *v60 = v62;
  v62[2] = 0xD000000000000015;
  v62[3] = 0x80000001001E75B0;
  v62[4] = v61;
  v62[5] = 0;
  v62[6] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  v63 = (*(v59 + 8))(v99, v102);
  if (v104)
  {
    v64 = 1;
  }

  else
  {
    v67 = v1[11];
    v66 = v1[12];
    v68 = v1[10];
    v70 = v1[5];
    v69 = v1[6];
    v71 = v1[4];
    sub_1001D20F0();
    sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_1001D2500();
    sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    sub_1001D2110();
    (*(v67 + 8))(v66, v68);
    v72 = v1[2];
    v73 = v1[3];
    v74 = (v69 + *(*v69 + 144));
    os_unfair_lock_lock(v74);
    v75 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
    v76 = sub_1001688F4(v74 + *(v75 + 28), v71, v70, v72, v73, v69);
    os_unfair_lock_unlock(v74);
    if (v90)
    {
      return;
    }

    (*(v1[8] + 16))(v1[9], v1[6] + *(*v1[6] + 304), v1[7]);
    v77 = sub_1001D0DE0();
    v78 = sub_1001D1EA0();
    if (sub_1001D1ED0())
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      v80 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, v78, v80, "SentKeyToNode", "", v79, 2u);
    }

    v82 = v1[8];
    v81 = v1[9];
    v83 = v1[7];

    v63 = (*(v82 + 8))(v81, v83);
    if (v76)
    {

      v84 = sub_1001D0E50();
      v85 = sub_1001D1E00();

      v86 = os_log_type_enabled(v84, v85);
      if (v86)
      {
        v87 = v1[6];
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v105 = v89;
        *v88 = 136315138;
        *(v88 + 4) = sub_1000954E0(*(v87 + *(*v87 + 280)), *(v87 + *(*v87 + 280) + 8), &v105);
        _os_log_impl(&_mh_execute_header, v84, v85, "%s First key sent to node.", v88, 0xCu);
        sub_100011CF0(v89);
      }

      sub_100142304(v86, 0);

      goto LABEL_10;
    }

    v64 = 0;
  }

  sub_100142304(v63, v64);
LABEL_10:

  v65 = v1[1];

  v65();
}

void sub_100167D74(uint64_t a1)
{
  v104 = v1;
  v2 = v1[29];
  v4 = v1[23];
  v3 = v1[24];
  v5 = v1[22];
  v99 = v1[21];
  v6 = v1[20];
  v96 = v1[19];
  v7 = v1[6];
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  (*(v4 + 16))(v3, v7 + *(*v7 + 320), v5);
  v8 = (v7 + *(*v7 + 224));
  v9 = v8[1];
  v89 = *v8;
  v10 = v7 + *(*v7 + 256);
  v91 = *(v10 + 160);
  v93 = *(v10 + 168);
  v11 = (v7 + *(*v7 + 192));
  v12 = v11[1];
  v92 = *v11;
  v13 = (v7 + *(*v7 + 208));
  v14 = v13[1];
  v86 = *v13;
  (*(v6 + 16))(v99, v7 + *(*v7 + 264), v96);
  sub_100011AC0(&qword_10022FE50, &unk_1001E1A50);
  v15 = sub_100011AC0(&qword_10022BCF0, &qword_1001DB808);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001D3AF0;
  v19 = (v18 + v17);
  v20 = *(v15 + 48);
  *v19 = 0;
  v97 = v14;

  v90 = v9;

  v100 = v2;
  sub_1001428C0(v2, v2 != 0);
  sub_1001CFD20();
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v88 = v1[29];
  *&v19[v20] = v21;
  v22 = enum case for EventValue.int(_:);
  v23 = sub_1001CFEE0();
  v101 = *(v23 - 8);
  v87 = v18;
  v24 = *(v101 + 104);
  v24(&v19[v20], v22, v23);
  v25 = &v19[v16 + *(v15 + 48)];
  v19[v16] = 6;
  *v25 = sub_1001CFD70();
  v25[1] = v26;
  v27 = enum case for EventValue.string(_:);
  v28 = v25;
  v29 = v24;
  v24(v28, enum case for EventValue.string(_:), v23);
  v30 = &v19[2 * v16];
  v31 = *(v15 + 48);
  *v30 = 1;
  v32 = &v30[v31];
  *v32 = v89;
  v32[1] = v90;
  (v24)();
  v33 = &v19[3 * v16];
  v34 = *(v15 + 48);
  *v33 = 2;
  v35 = &v33[v34];
  *v35 = v91;
  v35[1] = v93;
  (v24)();
  v36 = &v19[4 * v16];
  v37 = *(v15 + 48);
  *v36 = 4;
  v38 = &v36[v37];
  *v38 = v92;
  v38[1] = v12;
  (v24)();
  v39 = &v19[5 * v16];
  v40 = &v39[*(v15 + 48)];
  *v39 = 5;
  *v40 = sub_1001CFDB0();
  v40[1] = v41;
  v24(v40, v27, v23);

  v42 = sub_1000D5B30(v87);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v103 = v42;
  v43 = v1[18];
  if (v88)
  {
    v94 = v29;
    v45 = v1[4];
    v44 = v1[5];
    sub_1001CFED0();
    v46 = *(v101 + 56);
    v46(v43, 0, 1, v23);
    sub_100016DC8(v43, 7);
    *v43 = v45;
    v43[1] = v44;
    v29 = v94;
    v94(v43, v27, v23);
    v46(v43, 0, 1, v23);

    sub_100016DC8(v43, 9);
    *v43 = sub_10012603C(v100);
    v43[1] = v47;
    v94(v43, v27, v23);
    v46(v43, 0, 1, v23);
    sub_100016DC8(v43, 8);
    sub_100142304(v100, 1);
    v48 = v97;
    if (!v97)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1001CFED0();
  v46 = *(v101 + 56);
  v46(v43, 0, 1, v23);
  sub_100016DC8(v43, 7);
  v48 = v97;
  if (v97)
  {
LABEL_6:
    v49 = v1[18];
    *v49 = v86;
    v49[1] = v48;
    v29(v49, v27, v23);
    v46(v49, 0, 1, v23);
    sub_100016DC8(v49, 3);
  }

LABEL_7:
  v102 = v1[29];
  v51 = v1[26];
  v50 = v1[27];
  v53 = v1[24];
  v52 = v1[25];
  v55 = v1[22];
  v54 = v1[23];
  v56 = v1[16];
  v57 = v1[14];
  v95 = v1[17];
  v98 = v1[15];
  (*(v1[20] + 8))(v1[21], v1[19]);
  (*(v54 + 8))(v53, v55);
  (*(v51 + 8))(v50, v52);
  v58 = v103;
  v57[3] = &type metadata for KDataSendMetric;
  v57[4] = sub_1001AF3F0();
  v59 = swift_allocObject();
  *v57 = v59;
  v59[2] = 0xD000000000000015;
  v59[3] = 0x80000001001E75B0;
  v59[4] = v58;
  v59[5] = 0;
  v59[6] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  (*(v56 + 8))(v95, v98);
  if (v102)
  {
    v60 = v100;
    v61 = 1;
  }

  else
  {
    v64 = v1[11];
    v63 = v1[12];
    v65 = v1[10];
    v67 = v1[5];
    v66 = v1[6];
    v68 = v1[4];
    sub_1001D20F0();
    sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_1001D2500();
    sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    sub_1001D2110();
    (*(v64 + 8))(v63, v65);
    v69 = v1[2];
    v70 = v1[3];
    v71 = (v66 + *(*v66 + 144));
    os_unfair_lock_lock(v71);
    v72 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
    v73 = sub_1001688F4(v71 + *(v72 + 28), v68, v67, v69, v70, v66);
    os_unfair_lock_unlock(v71);
    (*(v1[8] + 16))(v1[9], v1[6] + *(*v1[6] + 304), v1[7]);
    v74 = sub_1001D0DE0();
    v75 = sub_1001D1EA0();
    if (sub_1001D1ED0())
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      v77 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, v75, v77, "SentKeyToNode", "", v76, 2u);
    }

    v79 = v1[8];
    v78 = v1[9];
    v80 = v1[7];

    (*(v79 + 8))(v78, v80);
    if (v73)
    {

      v81 = sub_1001D0E50();
      v82 = sub_1001D1E00();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = v1[6];
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v103 = v85;
        *v84 = 136315138;
        *(v84 + 4) = sub_1000954E0(*(v83 + *(*v83 + 280)), *(v83 + *(*v83 + 280) + 8), &v103);
        _os_log_impl(&_mh_execute_header, v81, v82, "%s First key sent to node.", v84, 0xCu);
        sub_100011CF0(v85);
      }

      sub_100142304(v100, 0);

      goto LABEL_10;
    }

    v60 = v100;
    v61 = 0;
  }

  sub_100142304(v60, v61);
LABEL_10:

  v62 = v1[1];

  v62();
}

uint64_t sub_1001688F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v63 = a4;
  v64 = a5;
  v9 = sub_1001D0DC0();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v16 = *(v15 + 144);
  v17 = *(a1 + v16);
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = v15;
  v19 = sub_100006028(a2, a3);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = (*(v17 + 56) + (v19 << 7));
  v22 = v21[3];
  v24 = *v21;
  v23 = v21[1];
  v72[2] = v21[2];
  v72[3] = v22;
  v72[0] = v24;
  v72[1] = v23;
  v25 = v21[4];
  v26 = v21[5];
  v27 = v21[6];
  *(v73 + 9) = *(v21 + 105);
  v72[5] = v26;
  v73[0] = v27;
  v72[4] = v25;
  v28 = v24;
  v29 = v21[2];
  v74 = v21[1];
  v75 = v29;
  v30 = v21[3];
  v31 = v21[4];
  *(v79 + 9) = *(v21 + 105);
  v32 = v21[6];
  v78 = v21[5];
  v79[0] = v32;
  v76 = v30;
  v77 = v31;
  if (v28 >> 62 != 3 || v28 != 0xC000000000000008)
  {
    v80 = v28;
    v85 = v78;
    v86[0] = v79[0];
    *(v86 + 9) = *(v79 + 9);
    v81 = v74;
    v82 = v75;
    v83 = v76;
    v84 = v77;
    sub_10001208C(v72, &v65, &qword_100230150, &unk_1001D3700);
    v39 = &v80;
LABEL_16:
    sub_100011F00(v39, &qword_100230150, &unk_1001D3700);
    return 0;
  }

  v84 = v77;
  v85 = v78;
  v86[0] = v79[0];
  *(v86 + 9) = *(v79 + 9);
  v59 = xmmword_1001E13A0;
  v80 = xmmword_1001E13A0;
  v81 = v74;
  v82 = v75;
  v83 = v76;

  sub_10001208C(v72, &v65, &qword_100230150, &unk_1001D3700);
  sub_10001208C(&v80, &v65, &qword_100230150, &unk_1001D3700);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v65 = *(a1 + v16);
  sub_10001B1A4(&v80, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v16) = v65;
  v35 = a1 + *(v18 + 120);
  if (*(v35 + 24))
  {
    v36 = 1;
    v38 = v63;
    v37 = v64;
    goto LABEL_10;
  }

  v40 = *(v35 + 16);
  v41 = __OFADD__(v40, 1);
  v36 = v40 + 1;
  if (!v41)
  {
    v38 = *v35;
    v37 = *(v35 + 8);
LABEL_10:
    *v35 = v38;
    *(v35 + 8) = v37;
    *(v35 + 16) = v36;
    *(v35 + 24) = 0;
    v42 = (a1 + *(v18 + 100));
    v43 = v42[3];
    if ((v43 >> 61) - 1 >= 4 && !(v43 >> 61))
    {
      v44 = *v42;
      v63 = v42[1];
      v58 = v42[2];
      v45 = v60 + *(*v60 + 304);
      v57 = *(v61 + 16);
      v57(v14, v45, v62);
      v64 = v44;

      v46 = sub_1001D0DE0();
      v47 = sub_1001D1E90();
      if (sub_1001D1ED0())
      {
        v48 = swift_slowAlloc();
        LODWORD(v60) = v47;
        v49 = v48;
        *v48 = 0;
        v50 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, v60, v50, "SentKey", "", v49, 2u);
      }

      v51 = v62;
      v57(v12, v14, v62);
      sub_1001D0E30();
      swift_allocObject();
      v52 = 1;
      v53 = sub_1001D0E20();
      (*(v61 + 8))(v14, v51);
      v54 = v64;
      sub_1001AF240(v64, v63, v58, v43);
      *(v42 + 1) = xmmword_1001E13B0;
      v55 = v76;
      v69 = v77;
      v70 = v78;
      v71[0] = v79[0];
      *(v71 + 9) = *(v79 + 9);
      v56 = v75;
      v65 = v59;
      v66 = v74;
      *v42 = v54;
      v42[1] = v53;
      v67 = v56;
      v68 = v55;
      sub_100011F00(&v65, &qword_100230150, &unk_1001D3700);
      return v52;
    }

    v69 = v77;
    v70 = v78;
    v71[0] = v79[0];
    *(v71 + 9) = *(v79 + 9);
    v65 = v59;
    v66 = v74;
    v67 = v75;
    v68 = v76;
    v39 = &v65;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100168E14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001D0E00();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001D0DC0();
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001D0F00();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v16);
  v17 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_100169284(v16 + *(v17 + 28), a1, a2, v3, &v31);
  os_unfair_lock_unlock(v16);
  if ((~(v31 & v32) & 0xF000000000000007) != 0)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      (*(v13 + 104))(v15, enum case for NWActivity.CompletionReason.success(_:), v12);
      sub_1001D0F20();
      sub_100011F00(&v31, &qword_10022FE28, &qword_1001E1A28);
      (*(v13 + 8))(v15, v12);
      return;
    }

    v26 = v33;
    v18 = v34;
    (*(v13 + 104))(v15, enum case for NWActivity.CompletionReason.success(_:), v12);
    sub_1001D0F20();
    (*(v13 + 8))(v15, v12);
    v19 = sub_1001D0DE0();
    sub_1001D0E10();
    v20 = sub_1001D1E80();
    if ((sub_1001D1ED0() & 1) == 0)
    {
      goto LABEL_16;
    }

    if ((v18 & 1) == 0)
    {
      v21 = v26;
      if (v26)
      {
LABEL_12:

        sub_1001D0E40();

        v22 = v27;
        if ((*(v27 + 88))(v8, v6) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v23 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22 + 8))(v8, v6);
          v23 = "";
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v25, v21, v23, v24, 2u);

LABEL_16:

        sub_100011F00(&v31, &qword_10022FE28, &qword_1001E1A28);
        (*(v28 + 8))(v11, v29);
        return;
      }

      __break(1u);
    }

    if (v26 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v26 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v26 >> 16 <= 0x10)
      {
        v21 = &v30;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_100169284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a4;
  v9 = sub_1001D0DC0();
  v83 = *(v9 - 8);
  v84 = v9;
  v10 = __chkstk_darwin(v9);
  v82 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v73 - v13;
  __chkstk_darwin(v12);
  v80 = &v73 - v15;
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v17 = *(result + 144);
  v18 = *(a1 + v17);
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = result;
  v78 = a2;
  v79 = a3;
  result = sub_100006028(a2, a3);
  if ((v21 & 1) == 0)
  {
LABEL_13:
    v19 = 0;
LABEL_14:
    v60 = 0;
    v59 = 0;
    v40 = 0xF000000000000007;
    v58 = 0xF000000000000007;
    goto LABEL_15;
  }

  v22 = (*(v18 + 56) + (result << 7));
  v23 = v22[3];
  v25 = *v22;
  v24 = v22[1];
  v92[2] = v22[2];
  v92[3] = v23;
  v92[0] = v25;
  v92[1] = v24;
  v26 = v22[4];
  v27 = v22[5];
  v28 = v22[6];
  *(v93 + 9) = *(v22 + 105);
  v92[5] = v27;
  v93[0] = v28;
  v92[4] = v26;
  v29 = v25;
  v30 = v22[2];
  v94 = v22[1];
  v95 = v30;
  v31 = v22[3];
  v32 = v22[4];
  *(v99 + 9) = *(v22 + 105);
  v33 = v22[6];
  v98 = v22[5];
  v99[0] = v33;
  v96 = v31;
  v97 = v32;
  if (v29 >> 62 != 3 || v29 != 0xC000000000000009)
  {
    v100 = v29;
    v105 = v98;
    v106[0] = v99[0];
    *(v106 + 9) = *(v99 + 9);
    v101 = v94;
    v102 = v95;
    v103 = v96;
    v104 = v97;
    sub_10001208C(v92, &v85, &qword_100230150, &unk_1001D3700);
    v61 = &v100;
LABEL_12:
    result = sub_100011F00(v61, &qword_100230150, &unk_1001D3700);
    goto LABEL_13;
  }

  v104 = v97;
  v105 = v98;
  v106[0] = v99[0];
  *(v106 + 9) = *(v99 + 9);
  v77 = xmmword_1001E13C0;
  v100 = xmmword_1001E13C0;
  v101 = v94;
  v102 = v95;
  v103 = v96;
  v34 = v79;

  sub_10001208C(v92, &v85, &qword_100230150, &unk_1001D3700);
  sub_10001208C(&v100, &v85, &qword_100230150, &unk_1001D3700);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v85 = *(a1 + v17);
  sub_10001B1A4(&v100, v78, v34, isUniquelyReferenced_nonNull_native);

  *(a1 + v17) = v85;
  v36 = (a1 + *(v20 + 100));
  v37 = v36[3];
  v38 = v37 >> 61;
  if ((v37 >> 61) > 2)
  {
LABEL_20:
    v89 = v97;
    v90 = v98;
    v91[0] = v99[0];
    *(v91 + 9) = *(v99 + 9);
    v85 = v77;
    v86 = v94;
    v87 = v95;
    v88 = v96;
    v61 = &v85;
    goto LABEL_12;
  }

  v40 = *v36;
  v39 = v36[1];
  if (v38)
  {
    if (v38 == 1)
    {
      v74 = v36[2];
      v75 = v37;
      v41 = v80;
      v42 = v39;
      v43 = v81 + *(*v81 + 304);
      v73 = *(v83 + 16);
      v73(v80, v43, v84);

      v76 = v42;
      v44 = v41;

      v45 = sub_1001D0DE0();
      v46 = sub_1001D1E90();
      if (sub_1001D1ED0())
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        LODWORD(v81) = v46;
        v48 = v47;
        v49 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v81, v49, "NodeResponse", "", v48, 2u);
      }

      v50 = v44;
      v51 = v44;
      v52 = v84;
      v73(v82, v50, v84);
      sub_1001D0E30();
      swift_allocObject();
      v53 = sub_1001D0E20();
      (*(v83 + 8))(v51, v52);
      v54 = v79;

      v55 = v76;
      sub_1001AF240(v40, v76, v74, v75);
      v56 = v96;
      v89 = v97;
      v90 = v98;
      v91[0] = v99[0];
      *(v91 + 9) = *(v99 + 9);
      v57 = v95;
      v85 = v77;
      v86 = v94;
      *v36 = v78;
      v36[1] = v54;
      v36[2] = 0;
      v36[3] = v53 | 0x4000000000000000;
      v58 = v55 | 0x8000000000000000;
      v87 = v57;
      v88 = v56;
      result = sub_100011F00(&v85, &qword_100230150, &unk_1001D3700);
      v59 = 2;
      v19 = "SentKey";
      v60 = 7;
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v74 = v36[2];
  v75 = v37;
  v76 = v39;
  v62 = v81 + *(*v81 + 304);
  v80 = *(v83 + 16);
  (v80)(v14, v62, v84);

  v63 = sub_1001D0DE0();
  v64 = sub_1001D1E90();
  if (sub_1001D1ED0())
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    LODWORD(v81) = v64;
    v66 = v65;
    v67 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, v81, v67, "NodeResponse", "", v66, 2u);
  }

  v68 = v84;
  (v80)(v82, v14, v84);
  sub_1001D0E30();
  swift_allocObject();
  v69 = sub_1001D0E20();
  (*(v83 + 8))(v14, v68);
  v70 = v79;

  sub_1001AF240(v40, v76, v74, v75);
  v71 = v96;
  v89 = v97;
  v90 = v98;
  v91[0] = v99[0];
  *(v91 + 9) = *(v99 + 9);
  v72 = v95;
  v85 = v77;
  v86 = v94;
  *v36 = v78;
  v36[1] = v70;
  v36[2] = 0;
  v36[3] = v69 | 0x4000000000000000;
  v87 = v72;
  v88 = v71;
  result = sub_100011F00(&v85, &qword_100230150, &unk_1001D3700);
  v58 = 0;
  v19 = 0;
  v60 = 0;
  v59 = 0;
LABEL_15:
  *a5 = v40;
  *(a5 + 8) = v58;
  *(a5 + 16) = v19;
  *(a5 + 24) = v60;
  *(a5 + 32) = v59;
  return result;
}

void sub_1001699DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v99 = a3;
  v90 = a2;
  v89 = a1;
  v102 = type metadata accessor for ThimbledEvent(0);
  __chkstk_darwin(v102);
  v104 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v79 - v6;
  v7 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  __chkstk_darwin(v7 - 8);
  v96 = (&v79 - v8);
  v9 = sub_1001CFDD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001CFDA0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1001CFD60();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v19 = *v4;
  v20 = &v4[*(*v4 + 192)];
  v22 = *v20;
  v21 = v20[1];
  v106 = v22;
  v108 = v21;
  v23 = *(v19 + 320);
  v94 = v14;
  v95 = v13;
  v24 = *(v14 + 16);
  v105 = v16;
  v24(v16, &v4[v23], v13);
  v25 = *v4;
  v26 = &v4[*(*v4 + 224)];
  v27 = v26[1];
  v83 = *v26;
  v28 = &v4[v25[32]];
  v30 = *(v28 + 20);
  v29 = *(v28 + 21);
  v85 = v30;
  v87 = v29;
  v31 = &v4[v25[26]];
  v32 = v31[1];
  v80 = *v31;
  v33 = v25[33];
  v97 = v10;
  v98 = v9;
  v34 = *(v10 + 16);
  v107 = v12;
  v34(v12, &v4[v33], v9);
  sub_100011AC0(&qword_10022FE30, &unk_1001E1A30);
  v35 = sub_100011AC0(&qword_10022BCE0, &unk_1001DB7E8);
  v36 = *(*(v35 - 8) + 72);
  v37 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1001D3ED0;
  v86 = v38;
  v39 = v38 + v37;
  v40 = *(v35 + 48);
  *(v38 + v37) = 0;
  v88 = v32;

  v84 = v27;

  v91 = v18;
  sub_1001CFD20();
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v41 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v82 = v4;
  *(v39 + v40) = v41;
  v42 = enum case for EventValue.int(_:);
  v43 = sub_1001CFEE0();
  v81 = *(v43 - 8);
  v44 = *(v81 + 104);
  (v44)(v39 + v40, v42, v43);
  v45 = (v39 + v36 + *(v35 + 48));
  *(v39 + v36) = 4;
  v46 = v108;
  *v45 = v106;
  v45[1] = v46;
  v47 = enum case for EventValue.string(_:);
  v44();
  v48 = (v39 + 2 * v36);
  v49 = &v48[*(v35 + 48)];
  *v48 = 6;

  *v49 = sub_1001CFD70();
  v49[1] = v50;
  (v44)(v49, v47, v43);
  v51 = (v39 + 3 * v36);
  v52 = *(v35 + 48);
  *v51 = 1;
  v53 = &v51[v52];
  v54 = v84;
  *v53 = v83;
  v53[1] = v54;
  v44();
  v55 = (v39 + 4 * v36);
  v56 = *(v35 + 48);
  *v55 = 2;
  v57 = &v55[v56];
  v58 = v87;
  *v57 = v85;
  v57[1] = v58;
  v44();
  v59 = (v39 + 5 * v36);
  v60 = &v59[*(v35 + 48)];
  *v59 = 5;
  *v60 = sub_1001CFDB0();
  v60[1] = v61;
  (v44)(v60, v47, v43);
  v62 = (v39 + 6 * v36);
  v63 = v81;
  v64 = *(v35 + 48);
  *v62 = 9;
  v65 = &v62[v64];
  v66 = v90;
  *v65 = v89;
  v65[1] = v66;
  v44();

  v67 = sub_1000D5D18(v86);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v111 = v67;
  v68 = v96;
  v69 = v88;
  if (v88)
  {
    *v96 = v80;
    v68[1] = v69;
    (v44)(v68, v47, v43);
    (*(v63 + 56))(v68, 0, 1, v43);
    sub_10001705C(v68, 3);
  }

  v70 = v103;
  if (v99)
  {
    swift_getErrorValue();
    v71 = v109;
    v72 = v110;
    swift_errorRetain();
    Error.telemetryString.getter(v68, v71, v72);
    v73 = *(v63 + 56);
    v73(v68, 0, 1, v43);
    sub_10001705C(v68, 8);
    sub_1001CFED0();
    v73(v68, 0, 1, v43);
    sub_10001705C(v68, 7);
  }

  else
  {
    sub_1001CFED0();
    (*(v63 + 56))(v68, 0, 1, v43);
    sub_10001705C(v68, 7);
  }

  v74 = v104;
  (*(v97 + 8))(v107, v98);
  (*(v94 + 8))(v105, v95);
  (*(v92 + 8))(v91, v93);
  v75 = v111;
  v74[3] = &type metadata for TrustedEndpointResponseMetric;
  v74[4] = sub_1001AF304();
  v76 = swift_allocObject();
  *v74 = v76;
  v76[2] = 0xD000000000000015;
  v76[3] = 0x80000001001E7590;
  v77 = v106;
  v76[4] = v75;
  v76[5] = v77;
  v76[6] = v108;
  swift_storeEnumTagMultiPayload();
  sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v78 = v100;
  sub_1001D1BC0();
  (*(v101 + 8))(v78, v70);
}

void sub_10016A3F4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001D0E00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1001D0DC0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v13);
  v14 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  v15 = sub_10016A6BC(v13 + *(v14 + 28), a1, a2);
  os_unfair_lock_unlock(v13);
  if (v15)
  {
    v16 = sub_1001D0DE0();
    sub_1001D0E10();
    v17 = sub_1001D1E80();
    if (sub_1001D1ED0())
    {

      sub_1001D0E40();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1001D0DB0();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v20, "NodeResponse", v18, v19, 2u);
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_10016A6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v7 = *(v6 + 144);
  v8 = *(a1 + v7);
  if (*(v8 + 16))
  {
    v9 = v6;
    v10 = sub_100006028(a2, a3);
    if (v11)
    {
      v12 = (*(v8 + 56) + (v10 << 7));
      v13 = v12[3];
      v15 = *v12;
      v14 = v12[1];
      v39[2] = v12[2];
      v39[3] = v13;
      v39[0] = v15;
      v39[1] = v14;
      v16 = v12[4];
      v17 = v12[5];
      v18 = v12[6];
      *(v40 + 9) = *(v12 + 105);
      v39[5] = v17;
      v40[0] = v18;
      v39[4] = v16;
      v19 = v15;
      v20 = v12[2];
      v41 = v12[1];
      v42 = v20;
      v21 = v12[3];
      v22 = v12[4];
      *(v46 + 9) = *(v12 + 105);
      v23 = v12[6];
      v45 = v12[5];
      v46[0] = v23;
      v43 = v21;
      v44 = v22;
      if (v19 >> 62 == 1)
      {
        v24 = v19 & 1 | 0x8000000000000000;
        *&v47 = v24;
        *(&v47 + 1) = *(&v19 + 1);
        v54 = *(&v19 + 1);
        v52 = v45;
        v53[0] = v46[0];
        *(v53 + 9) = *(v46 + 9);
        v48 = v41;
        v49 = v42;
        v50 = v43;
        v51 = v44;

        sub_10001208C(v39, &v31, &qword_100230150, &unk_1001D3700);
        sub_10001208C(&v47, &v31, &qword_100230150, &unk_1001D3700);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(a1 + v7);
        sub_10001B1A4(&v47, a2, a3, isUniquelyReferenced_nonNull_native);

        *(a1 + v7) = v31;
        v26 = a1 + *(v9 + 100);
        v27 = *(v26 + 24);
        if (v27 >> 61 == 2)
        {
          *(v26 + 24) = 0x6000000000000000;
          v28 = v27 & 0x1FFFFFFFFFFFFFFFLL;
          v31 = v24;
          v32 = v54;
          v37 = v45;
          v38[0] = v46[0];
          *(v38 + 9) = *(v46 + 9);
          v33 = v41;
          v34 = v42;
          v35 = v43;
          v36 = v44;
          sub_100011F00(&v31, &qword_100230150, &unk_1001D3700);
          return v28;
        }

        v31 = v24;
        v32 = v54;
        v37 = v45;
        v38[0] = v46[0];
        *(v38 + 9) = *(v46 + 9);
        v33 = v41;
        v34 = v42;
        v35 = v43;
        v36 = v44;
        v30 = &v31;
      }

      else
      {
        v47 = v19;
        v52 = v45;
        v53[0] = v46[0];
        *(v53 + 9) = *(v46 + 9);
        v48 = v41;
        v49 = v42;
        v50 = v43;
        v51 = v44;
        sub_10001208C(v39, &v31, &qword_100230150, &unk_1001D3700);
        v30 = &v47;
      }

      sub_100011F00(v30, &qword_100230150, &unk_1001D3700);
    }
  }

  return 0;
}

void sub_10016A96C(unint64_t a1)
{
  v3 = sub_1001D0E00();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = __chkstk_darwin(v3);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  v8 = sub_1001D0F00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001D0DC0();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = __chkstk_darwin(v12);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v42 - v15;
  v16 = (v1 + *(*v1 + 144));
  os_unfair_lock_lock(v16);
  v17 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_10016B034(v16 + *(v17 + 28), a1, &v53);
  v18 = v53;
  v43 = v54;
  os_unfair_lock_unlock(v16);
  v19 = v53;
  if ((~v53 & 0xF000000000000007) != 0)
  {
    if (!(v53 >> 62))
    {
      (*(v9 + 104))(v11, enum case for NWActivity.CompletionReason.failure(_:), v8);
      sub_1001D0F20();
      sub_100011F00(&v53, &qword_10022FE60, &qword_1001E1A60);
      (*(v9 + 8))(v11, v8);
      return;
    }

    v42 = v18;
    v20 = v54;
    if (v53 >> 62 == 1)
    {
      v21 = v55;
      v22 = v57;
      (*(v9 + 104))(v11, enum case for NWActivity.CompletionReason.failure(_:), v8);
      sub_1001D0F20();
      (*(v9 + 8))(v11, v8);
      v23 = sub_1001D0DE0();
      v24 = v47;
      sub_1001D0E10();
      v25 = sub_1001D1E80();
      if ((sub_1001D1ED0() & 1) == 0)
      {
LABEL_28:

        sub_100011F00(&v53, &qword_10022FE60, &qword_1001E1A60);
        (*(v49 + 8))(v24, v50);
        return;
      }

      v19 = v20;
      if (v22)
      {
        if (!(v21 >> 32))
        {
          v27 = v45;
          v26 = v46;
          v28 = v44;
          if ((v21 & 0xFFFFF800) == 0xD800)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v21 >> 16 <= 0x10)
          {
            v21 = &v52;
            goto LABEL_18;
          }

          goto LABEL_36;
        }
      }

      else
      {
        if (v21)
        {
          v27 = v45;
          v26 = v46;
          v28 = v44;
LABEL_18:

          sub_1001D0E40();

          if ((*(v27 + 88))(v28, v26) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v33 = "[Error] Interval already ended";
          }

          else
          {
            (*(v27 + 8))(v28, v26);
            v33 = "";
          }

          v37 = swift_slowAlloc();
          *v37 = 0;
          v38 = sub_1001D0DB0();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v25, v38, v21, v33, v37, 2u);

          goto LABEL_28;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_34;
    }

    v29 = v56;
    v30 = sub_1001D0DE0();
    v31 = v48;
    sub_1001D0E10();
    LODWORD(v47) = sub_1001D1E80();
    if ((sub_1001D1ED0() & 1) == 0)
    {

      sub_100011F00(&v53, &qword_10022FE60, &qword_1001E1A60);
      (*(v49 + 8))(v31, v50);
      return;
    }

    if (v29)
    {
      if (HIDWORD(v20))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if ((v20 & 0xFFFFF800) == 0xD800)
      {
LABEL_39:
        __break(1u);
        os_unfair_lock_unlock(v19);
        __break(1u);
        return;
      }

      if (v20 >> 16 > 0x10)
      {
        goto LABEL_37;
      }

      v32 = &v51;
    }

    else
    {
      if (!v20)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v32 = v20;
    }

    sub_1001AF444(v42, v43);
    sub_1001D0E40();
    sub_100011F00(&v53, &qword_10022FE60, &qword_1001E1A60);
    v35 = v45;
    v34 = v46;
    if ((*(v45 + 88))(v7, v46) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v35 + 8))(v7, v34);
      v36 = "";
    }

    v39 = v48;
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1001D0DB0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v47, v41, v32, v36, v40, 2u);

    sub_100011F00(&v53, &qword_10022FE60, &qword_1001E1A60);
    (*(v49 + 8))(v39, v50);
  }
}

const char *sub_10016B034@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    if (*(v17 + 16))
    {
      a2 = *(v17 + 32);
      swift_errorRetain();
    }

    else
    {
      sub_100089BE4();
      a2 = swift_allocError();
      *v6 = v15;
      *(v6 + 1) = v16;
      *(v6 + 8) = v17;
    }
  }

  else
  {
    swift_errorRetain();
  }

  v7 = (a1 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 100));
  v9 = v7 + 1;
  result = v7[1];
  v10 = v7[3];
  v11 = v10 >> 61;
  if ((v10 >> 61) > 2)
  {
    if (v11 == 3 || v11 == 4)
    {

      result = 0;
      v13 = 0;
      v14 = 0;
      LOBYTE(v11) = 0;
    }

    else
    {
      result = 0;
      v13 = 0;
      v14 = 0;
      LOBYTE(v11) = 0;
      *v7 = a2;
      *v9 = 0;
      v7[2] = 0;
      v7[3] = 0x8000000000000000;
    }

    v12 = 0xF000000000000007;
  }

  else
  {
    v12 = *v7;
    if (v11)
    {
      if (v11 == 1)
      {
        *v7 = a2;
        *v9 = 0;
        v7[2] = 0;
        v7[3] = 0x8000000000000000;
        v12 |= 0x4000000000000000uLL;
        LOBYTE(v11) = 2;
        v13 = "SentKey";
        v14 = 7;
      }

      else
      {

        LOBYTE(v11) = 0;
        *v7 = a2;
        *v9 = 0;
        v7[2] = 0;
        v7[3] = 0x8000000000000000;
        v12 = v10 & 0x1FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        result = "ReceivingResponse";
        v14 = 2;
        v13 = 17;
      }
    }

    else
    {
      result = 0;
      v13 = 0;
      v14 = 0;
      *v7 = a2;
      *v9 = 0;
      v7[2] = 0;
      v7[3] = 0x8000000000000000;
    }
  }

  *a3 = v12;
  *(a3 + 8) = result;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_10016B23C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001CFFB0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  sub_100012038(a1, a2);
  sub_1001CFFA0();
  (*(v5 + 32))(v10, v8, v4);
  v11 = sub_1001CFF90();
  (*(v5 + 8))(v10, v4);
  return v11;
}

uint64_t sub_10016B5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  sub_1001CFD70();
  sub_1001D0D50();
  sub_1001CFD50();
  v8 = sub_1001CFD60();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1001D0D60();
  sub_1001D0890();
  sub_1001D0D20();

  sub_1001D0D30();

  return sub_1001D0D40();
}

unint64_t sub_10016B71C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_1001D2030(18);

      v4 = 0xD000000000000010;
      goto LABEL_8;
    }

    v2 = 1701080942;
LABEL_6:
    v4 = v2 & 0xFFFF0000FFFFFFFFLL | 0x202C00000000;
LABEL_8:
    v5._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v5);

    return v4;
  }

  if (a2 == 2)
  {
    v2 = 1635017060;
    goto LABEL_6;
  }

  return 1953460082;
}

uint64_t sub_10016B800()
{
  v1[2] = v0;
  v2 = sub_1001D0270();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1001D02F0();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for PowerAssertion(0);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10016B94C, 0, 0);
}

uint64_t sub_10016B94C(uint64_t a1)
{
  v28 = v1;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running TrustedRequest", v4, 2u);
  }

  swift_retain_n();
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = sub_1001D23A0();
    v27 = v8;
    v30._countAndFlagsBits = 58;
    v30._object = 0xE100000000000000;
    sub_1001D18B0(v30);
    v9 = sub_1000954E0(v26, v27, &v25);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;

    v10 = sub_10012C8DC();
    v12 = v11;

    v13 = sub_1000954E0(v10, v12, &v25);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Configuration: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v1[9];
  v14 = v1[10];
  v17 = v1[7];
  v16 = v1[8];
  v19 = v1[5];
  v18 = v1[6];
  v20 = v1[3];
  v21 = v1[4];
  (*(v17 + 104))(v16, enum case for TC2LogCategory.daemon(_:), v18);
  sub_1001D08B0();
  (*(v17 + 8))(v16, v18);
  *(v14 + *(v15 + 24)) = 0;
  v22 = (v14 + *(v15 + 20));
  *v22 = 0xD000000000000030;
  v22[1] = 0x80000001001E74C0;
  sub_10014A444();
  (*(v21 + 104))(v19, enum case for StepIdentifier.privateCloudComputeRequestInDaemon(_:), v20);
  v23 = swift_task_alloc();
  v1[11] = v23;
  *v23 = v1;
  v23[1] = sub_10016BD34;

  return withAppleIntelligenceEvent<A>(isolation:id:step:operation:)();
}

uint64_t sub_10016BD34()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10016BF4C;
  }

  else
  {
    v5 = sub_10016BEA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016BEA4()
{
  v1 = *(v0 + 80);
  sub_10014A754();
  sub_1001AFB98(v1, type metadata accessor for PowerAssertion);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016BF4C()
{
  v1 = *(v0 + 80);
  sub_10014A754();
  sub_1001AFB98(v1, type metadata accessor for PowerAssertion);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016BFF4(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_1001D0200();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_100011AC0(&qword_10022FCE0, &qword_1001E1668);
  v2[10] = swift_task_alloc();
  sub_100011AC0(&qword_10022D2D0, &qword_1001E1670);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v2;
  v4[1] = sub_10016C184;

  return sub_10016D004();
}

uint64_t sub_10016C184()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10016C704;
  }

  else
  {
    v2 = sub_10016C298;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10016C298()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = (*(*(v0 + 40) + *(**(v0 + 40) + 280)) + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v3);
  v4 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100112654(v3 + *(v4 + 28), 0, v2);
  os_unfair_lock_unlock(v3);
  if (!v1)
  {
    v5 = *(v0 + 104);
    sub_10001208C(*(v0 + 112), v5, &qword_10022D2D0, &qword_1001E1670);
    v6 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    if (v8 == 1)
    {
      sub_100011F00(*(v0 + 112), &qword_10022D2D0, &qword_1001E1670);
      sub_100011F00(v9, &qword_10022D2D0, &qword_1001E1670);
    }

    else
    {
      *(v0 + 16) = xmmword_1001D6800;
      sub_1001D1AA0();
      sub_100011F00(v10, &qword_10022D2D0, &qword_1001E1670);
      (*(v7 + 8))(v9, v6);
    }

    (*(*(v0 + 56) + 56))(*(v0 + 80), 1, 1, *(v0 + 48));
    v11 = swift_task_alloc();
    *(v0 + 136) = v11;
    *v11 = v0;
    v11[1] = sub_10016C518;
    v12 = *(v0 + 80);

    sub_10016008C(v12);
  }
}

uint64_t sub_10016C518()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  sub_100011F00(v1, &qword_10022FCE0, &qword_1001E1668);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10016C704()
{
  v52 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  static PrivateCloudComputeError.wrapAny(error:)(*(v0 + 128), v1);
  v5 = *(v4 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v48 = v5;
  v5(v2, v1, v3);

  swift_errorRetain();
  v6 = sub_1001D0E50();
  v7 = sub_1001D1DE0();

  if (os_log_type_enabled(v6, v7))
  {
    v43 = *(v0 + 64);
    v44 = *(v0 + 56);
    v45 = v7;
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v46;
    *v9 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v50 = sub_1001D23A0();
    v51 = v11;
    v54._countAndFlagsBits = 58;
    v54._object = 0xE100000000000000;
    sub_1001D18B0(v54);
    v12 = sub_1000954E0(v50, v51, &v49);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    v48(v13, v43, v8);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    v15 = *(v44 + 8);
    v15(v43, v8);
    *(v9 + 14) = v14;
    *v10 = v14;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    v10[1] = v16;
    _os_log_impl(&_mh_execute_header, v6, v45, "%s sendRopesRequest pccError=%@ from error=%@", v9, 0x20u);
    sub_100011AC0(&unk_1002301D0, &qword_1001D4F50);
    swift_arrayDestroy();

    sub_100011CF0(v46);
  }

  else
  {
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 48);

    v15 = *(v18 + 8);
    v15(v17, v19);
  }

  *(v0 + 160) = v15;
  v20 = *(v0 + 96);
  v21 = *(v0 + 72);
  v23 = *(v0 + 40);
  v22 = *(v0 + 48);
  v24 = *(*v23 + 280);
  *(v0 + 168) = sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
  v25 = swift_allocError();
  v48(v26, v21, v22);
  v27 = (*(v23 + v24) + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock);
  os_unfair_lock_lock(v27);
  v28 = sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0);
  sub_100112654(v27 + *(v28 + 28), v25, v20);
  os_unfair_lock_unlock(v27);
  v29 = *(v0 + 88);
  sub_10001208C(*(v0 + 96), v29, &qword_10022D2D0, &qword_1001E1670);
  v30 = sub_100011AC0(&qword_10022D288, &unk_1001DE440);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v29, 1, v30);
  v33 = *(v0 + 88);
  v34 = *(v0 + 96);
  if (v32 == 1)
  {
    sub_100011F00(v34, &qword_10022D2D0, &qword_1001E1670);
    sub_100011F00(v33, &qword_10022D2D0, &qword_1001E1670);
  }

  else
  {
    *(v0 + 32) = v25;
    swift_errorRetain();
    sub_1001D1A90();
    sub_100011F00(v34, &qword_10022D2D0, &qword_1001E1670);
    (*(v31 + 8))(v33, v30);
  }

  v35 = *(v0 + 72);
  v47 = *(v0 + 80);
  v36 = *(v0 + 48);
  v37 = *(v0 + 56);
  v38 = swift_allocError();
  v48(v39, v35, v36);
  sub_100118764(v38);

  v48(v47, v35, v36);
  (*(v37 + 56))(v47, 0, 1, v36);
  v40 = swift_task_alloc();
  *(v0 + 176) = v40;
  *v40 = v0;
  v40[1] = sub_10016CDB0;
  v41 = *(v0 + 80);

  return sub_10016008C(v41);
}

uint64_t sub_10016CDB0()
{
  v1 = *(*v0 + 80);

  sub_100011F00(v1, &qword_10022FCE0, &qword_1001E1668);

  return _swift_task_switch(sub_10016CED8, 0, 0);
}

uint64_t sub_10016CED8()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[9];
  v4 = v0[6];
  swift_allocError();
  v2(v5, v3, v4);
  swift_willThrow();

  v1(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10016D004()
{
  v1[12] = v0;
  v2 = sub_1001D0F40();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10016D0D0, 0, 0);
}

uint64_t sub_10016D0D0()
{
  sub_10016DA04();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10016D168;

  return sub_10016DC24();
}

uint64_t sub_10016D168(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10016D2C0, 0, 0);
  }
}

uint64_t sub_10016D2C0()
{
  v1 = v0[12] + qword_100243500;
  v2 = *(v1 + 73);
  v3 = *(v1 + 96);
  v27 = type metadata accessor for TrustedRequestConfiguration(0);
  v28 = v1;
  sub_1001D1210();
  v0[19] = sub_1001D1200();
  sub_1001D1240();
  swift_allocObject();
  v4 = sub_1001D1230();
  sub_1001D1270();
  v5 = sub_1001D1260();
  if (v3 == 1)
  {
    sub_1001D11F0();
    nw_parameters_set_privacy_proxy_fail_closed();
    swift_unknownObjectRelease();
  }

  sub_1001D11E0();
  if (v2)
  {
    v6 = sub_1001D1220();
    v0[6] = sub_100096568;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100059234;
    v0[5] = &unk_100222B10;
    v7 = _Block_copy(v0 + 2);
    sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v8 = sub_1001D1E40();
    sec_protocol_options_set_verify_block(v6, v7, v8);

    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  sub_1001D11D0();
  sub_100011AC0(&qword_100228C30, &qword_1001D53E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001D54B0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;

  sub_1001D11C0();

  sub_1001D12D0();
  v10 = sub_1001D12C0();
  sub_1001D11D0();

  v11 = sub_1001D11B0();
  if (*v12 >> 62 && (result = sub_1001D2190(), result < 0))
  {
    __break(1u);
  }

  else
  {
    v13 = v0[16];
    v25 = v0[18];
    v26 = v0[15];
    v14 = v0[14];
    v23 = v0[13];
    v24 = v0[12];
    sub_10005A0B8(0, 0, v10);

    v11(v0 + 8, 0);

    v15 = *(v27 + 64);
    v16 = sub_1001CFB10();
    (*(*(v16 - 8) + 16))(v13, v28 + v15, v16);
    (*(v14 + 104))(v13, enum case for NWEndpoint.url(_:), v23);
    sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v17 = sub_1001D1E40();
    v0[20] = v17;
    v18 = qword_1002434F8;
    v19 = swift_task_alloc();
    v0[21] = v19;
    *(v19 + 16) = v24;
    *(v19 + 24) = v25;
    (*(v14 + 16))(v26, v13, v23);
    sub_1001D11A0();
    swift_allocObject();

    v20 = sub_1001D1140();
    v0[22] = v20;
    v21 = swift_task_alloc();
    v0[23] = v21;
    *v21 = v0;
    v21[1] = sub_10016D770;

    return sub_100135C64(sub_100135C64, v20, v17, v24 + v18, 1953460082, 0xE400000000000000, &unk_1001E16F0, v19);
  }

  return result;
}

uint64_t sub_10016D770()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10016D948;
  }

  else
  {
    v2 = sub_10016D884;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016D884()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10016D948()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10016DA04()
{
  v1 = type metadata accessor for ThimbledEvent(0);
  __chkstk_darwin(v1);
  v2 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = v0 + qword_100243500;
  result = type metadata accessor for TrustedRequestConfiguration(0);
  if (*(v6 + *(result + 136)) == 1)
  {
    v8 = sub_1001D0E50();
    v9 = sub_1001D1DC0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Server driven configuration is outdated, scheduling a fetch", v10, 2u);
    }

    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_10016DC24()
{
  v1[13] = v0;
  v2 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v1[17] = swift_task_alloc();
  v3 = sub_1001CFDA0();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v1[22] = swift_task_alloc();
  v4 = sub_1001D01B0();
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  v5 = sub_1001CFD60();
  v1[26] = v5;
  v1[27] = *(v5 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_100011AC0(&qword_100227E08, &unk_1001D3B30);
  v1[30] = swift_task_alloc();
  v6 = sub_1001D0260();
  v1[31] = v6;
  v1[32] = *(v6 - 8);
  v1[33] = swift_task_alloc();
  v7 = sub_1001D08A0();
  v1[34] = v7;
  v1[35] = *(v7 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = type metadata accessor for TrustedRequestConfiguration(0);
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_10016DFAC, 0, 0);
}

uint64_t sub_10016DFAC()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = *(v0 + 104);
  v7 = qword_100243500;
  *(v0 + 312) = qword_100243500;
  sub_1001AFCB4(v6 + v7, v1, type metadata accessor for TrustedRequestConfiguration);
  (*(v4 + 16))(v3, v6 + qword_100243508, v5);
  v8 = *(v2 + 112);
  v9 = (v1 + *(v2 + 108));
  v10 = v9[1];
  v26 = *v9;
  if (*(v1 + v8 + 8))
  {
    v24 = *(v1 + v8 + 8);
    v25 = *(v1 + v8);
  }

  else
  {
    v24 = 0xE000000000000000;
    v25 = 0;
  }

  v11 = *(v0 + 304);
  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  v14 = *(v0 + 272);
  v23 = *(v0 + 296);
  v15 = *(v0 + 104);

  v16 = sub_1001D0890();
  v18 = v17;
  v19 = sub_1001D0870();
  (*(v13 + 8))(v12, v14);
  sub_1001AFB98(v11, type metadata accessor for TrustedRequestConfiguration);
  *(v0 + 16) = v26;
  *(v0 + 24) = v10;
  *(v0 + 32) = v25;
  *(v0 + 40) = v24;
  *(v0 + 48) = v16;
  *(v0 + 56) = v18;
  *(v0 + 64) = v19;
  v20 = *(*v15 + 312);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  *(v0 + 352) = *(v23 + 116);
  v21 = *(v15 + v20);
  *(v0 + 320) = v21;

  return _swift_task_switch(sub_10016E178, v21, 0);
}

uint64_t sub_10016E178()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  sub_1000EED5C(v1, (v0 + 16), *(v0 + 104) + *(v0 + 312) + *(v0 + 352), *(v0 + 240));
  sub_10001BB30(v0 + 16);
  v4 = *(v3 + 8);
  *(v0 + 328) = v4;
  *(v0 + 336) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return _swift_task_switch(sub_10016E234, 0, 0);
}

uint64_t sub_10016E234()
{
  v29 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 352);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 136);
    v8 = *(v0 + 104) + *(v0 + 312);
    sub_100011F00(v3, &qword_100227E08, &unk_1001D3B30);
    sub_10001208C(v8 + v4, v7, &qword_1002288B0, &qword_1001D5FC0);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_100011F00(*(v0 + 136), &qword_1002288B0, &qword_1001D5FC0);

      v9 = sub_1001D0E50();
      v10 = sub_1001D1E00();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v26 = v12;
        *v11 = 136315138;
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v27 = sub_1001D23A0();
        v28 = v13;
        v31._countAndFlagsBits = 58;
        v31._object = 0xE100000000000000;
        sub_1001D18B0(v31);
        v14 = sub_1000954E0(v27, v28, &v26);

        *(v11 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v9, v10, "%s no session identifier on request", v11, 0xCu);
        sub_100011CF0(v12);
      }

      v15 = *(v0 + 8);

      return v15(0);
    }

    else
    {
      v24 = *(v0 + 320);
      (*(*(v0 + 152) + 32))(*(v0 + 168), *(v0 + 136), *(v0 + 144));
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

      return _swift_task_switch(sub_10016E798, v24, 0);
    }
  }

  else
  {
    v17 = *(v0 + 264);
    v18 = *(v0 + 216);
    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v25 = *(v0 + 208);
    v22 = *(v0 + 176);
    v21 = *(v0 + 184);
    (*(v2 + 32))(v17, v3, v1);
    (*(v20 + 104))(v19, enum case for PrivateCloudComputeError.Code.deniedDueToRateLimit(_:), v21);
    sub_1001D0240();
    (*(v18 + 56))(v22, 0, 1, v25);
    sub_1001D0200();
    sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    sub_1001D01C0();
    swift_willThrow();
    (*(v2 + 8))(v17, v1);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10016E798()
{
  v12 = v0[41];
  v1 = v0[40];
  v2 = v0[28];
  v3 = v0[26];
  v10 = v0[29];
  v11 = v0[21];
  v4 = v0[15];
  v5 = v0[16];
  v9 = v0[14];
  v6 = v1 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
  swift_beginAccess();
  v7 = *(v6 + 24);
  sub_100024DC8((v1 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config), *(v1 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config + 24));

  sub_1001D0430();
  sub_1001D0210();
  (*(v4 + 8))(v5, v9);
  sub_1001CFCF0();
  v0[43] = sub_1000FB3F4(v2, v11, v7);

  v12(v2, v3);
  v12(v10, v3);

  return _swift_task_switch(sub_10016E920, 0, 0);
}

uint64_t sub_10016E920()
{
  v28 = v0;
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v22 = v0[43];
    v23 = v0[21];
    v4 = v0[18];
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 136315650;
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = sub_1001D23A0();
    v27 = v7;
    v30._countAndFlagsBits = 58;
    v30._object = 0xE100000000000000;
    sub_1001D18B0(v30);
    v8 = sub_1000954E0(v26, v27, &v25);

    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = v3;
    v10 = sub_1001D23A0();
    v12 = v11;
    v13 = *(v5 + 8);
    v13(v9, v4);
    v14 = sub_1000954E0(v10, v12, &v25);

    *(v6 + 14) = v14;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s using session identifier %s with progress %lu", v6, 0x20u);
    swift_arrayDestroy();

    v13(v23, v4);
  }

  else
  {
    v16 = v0[20];
    v15 = v0[21];
    v17 = v0[18];
    v18 = v0[19];

    v19 = *(v18 + 8);
    v19(v16, v17);
    v19(v15, v17);
  }

  v24 = v0[43];

  v20 = v0[1];

  return v20(v24);
}

uint64_t sub_10016EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[129] = a6;
  v6[128] = a5;
  v6[127] = a4;
  v6[126] = a2;
  v8 = sub_100011AC0(&qword_10022FD18, &unk_1001E1700);
  v6[130] = v8;
  v6[131] = *(v8 - 8);
  v6[132] = swift_task_alloc();
  v6[133] = sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
  v6[134] = swift_task_alloc();
  v9 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  v6[135] = v9;
  v6[136] = *(v9 - 8);
  v6[137] = swift_task_alloc();
  v10 = sub_100011AC0(&qword_10022FD20, &qword_1001E1710);
  v6[138] = v10;
  v6[139] = *(v10 - 8);
  v6[140] = swift_task_alloc();
  v11 = sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
  v6[141] = v11;
  v6[142] = *(v11 - 8);
  v6[143] = swift_task_alloc();
  v12 = sub_100011AC0(&qword_10022FD30, &qword_1001E1720);
  v6[144] = v12;
  v6[145] = *(v12 - 8);
  v6[146] = swift_task_alloc();
  v6[107] = a3;

  return _swift_task_switch(sub_10016EF28, 0, 0);
}

uint64_t sub_10016EF28()
{
  v1 = *(*(v0 + 1024) + *(**(v0 + 1024) + 368));
  *(v0 + 1176) = v1;
  sub_1001D0F30();
  v2 = sub_1001D0F10();
  v3 = sub_1001D0F10();
  sub_1001D1030();
  sub_1001D1030();
  v4 = *(*v1 + 144);
  *(v0 + 1184) = v4;
  v5 = (v1 + v4);
  os_unfair_lock_lock((v1 + v4));
  v6 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  *(v0 + 852) = v6;
  sub_10015E07C(v5 + v6, v3, v2);
  v7 = *(v0 + 1024);
  os_unfair_lock_unlock(v5);

  v8 = swift_allocObject();
  *(v0 + 1192) = v8;
  *(v8 + 16) = &unk_1001E1730;
  *(v8 + 24) = v7;

  sub_100011AC0(&qword_10022FD38, &qword_1001E1748);
  swift_asyncLet_begin();
  v9 = *(*v1 + 296);
  v10 = *(*v1 + 304);
  swift_retain_n();
  v11 = swift_task_alloc();
  *(v0 + 1200) = v11;
  *v11 = v0;
  v11[1] = sub_10016F1C0;
  v12 = *(v0 + 1024);

  return sub_100127D2C("LoadAttestationsFromCache", 25, 2, v1 + v10, v1 + v9, v12);
}

uint64_t sub_10016F1C0(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 1208) = a1;
  *(v4 + 849) = a2;
  *(v4 + 1216) = v2;

  if (v2)
  {
  }

  else
  {

    return _swift_task_switch(sub_10016F31C, 0, 0);
  }
}

void sub_10016F31C()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 849);
  v3 = *(v0 + 1208);
  v4 = *(v0 + 852);
  v5 = *(v0 + 1176);
  v6 = (v5 + *(v0 + 1184));
  os_unfair_lock_lock(v6);
  sub_100164E68(v6 + v4, v3, v2 & 1, v5);
  os_unfair_lock_unlock(v6);
  if (!v1)
  {
    if (*(v0 + 849))
    {

      swift_willThrowTypedImpl();
    }

    else
    {
      v7 = *(v0 + 1208);
      v8 = *(v0 + 1120);
      v9 = *(v0 + 1112);
      v10 = *(v0 + 1104);

      (*(v9 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v10);
      sub_1001D1BB0();
      (*(v9 + 8))(v8, v10);
      v11 = *(v7 + 16);
      if (v11)
      {
        v12 = *(v0 + 1088);
        v13 = v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v14 = *(v12 + 72);
        v15 = (*(v0 + 1048) + 8);
        do
        {
          v16 = *(v0 + 1056);
          v17 = *(v0 + 1040);
          sub_1001AFCB4(v13, *(v0 + 1096), type metadata accessor for ValidatedAttestationOrAttestation);
          sub_1001D1BC0();
          (*v15)(v16, v17);
          v13 += v14;
          --v11;
        }

        while (v11);
      }

      v18 = *(v0 + 1072);
      sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
      v19 = swift_allocObject();
      *(v0 + 1224) = v19;
      *(v19 + 16) = 0;
      *(v19 + 24) = _swiftEmptyArrayStorage;
      *(v19 + 32) = 0;
      v20 = swift_allocObject();
      *(v0 + 1232) = v20;
      *(v20 + 16) = 0;
      *(v20 + 24) = _swiftEmptyArrayStorage;
      *(v20 + 32) = 0;
      sub_100011AC0(&qword_10022FD40, &unk_1001E1750);
      v21 = swift_allocObject();
      *(v0 + 1240) = v21;
      v22 = (v21 + *(*v21 + 88));
      *v18 = _swiftEmptyArrayStorage;
      swift_storeEnumTagMultiPayload();
      *v22 = 0;
      v23 = *(sub_100011AC0(&qword_10022F148, &qword_1001E06B0) + 28);
      v24 = sub_100011AC0(&qword_10022FD48, &qword_1001E1760);
      bzero(v22 + v23, *(*(v24 - 8) + 64));
      sub_1000DBEF4(v18, v22 + v23, &qword_10022F158, &qword_1001E06C0);
      sub_100011AC0(&qword_10022FD50, &qword_1001E1768);
      v25 = swift_allocObject();
      *(v0 + 1248) = v25;
      *(v25 + 16) = 0;
      *(v25 + 24) = _swiftEmptyArrayStorage;
      *(v25 + 32) = 0;

      _swift_asyncLet_get_throwing(v0 + 16);
    }
  }
}

uint64_t sub_10016F6A8()
{
  *(v1 + 1256) = v0;
  if (v0)
  {
    sub_1001ABE28(*(v1 + 1208), 0);
    v2 = sub_10016FC20;
  }

  else
  {
    v2 = sub_10016F72C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016F72C()
{
  v18 = *(v0 + 1248);
  v14 = *(v0 + 1232);
  v13 = *(v0 + 1224);
  v1 = *(v0 + 1208);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1240);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 760);
  *(v0 + 696) = *(v0 + 744);
  *(v0 + 712) = v6;
  *(v0 + 728) = *(v0 + 776);
  v7 = sub_100011AC0(&qword_10022FD58, &qword_1001E1770);
  v8 = sub_100011AC0(&qword_10022FD60, &qword_1001E1778);
  v9 = swift_task_alloc();
  *(v0 + 1264) = v9;
  v9[2] = v4;
  v9[3] = v0 + 696;
  v9[4] = v3;
  v9[5] = v1;
  v9[6] = v5;
  v9[7] = v0 + 856;
  v9[8] = v2;
  v9[9] = v14;
  v9[10] = v13;
  v9[11] = v18;
  v9[12] = v12;
  v9[13] = v16;
  v9[14] = v15;
  sub_10001208C(v0 + 696, v0 + 792, &qword_10022FD38, &qword_1001E1748);
  v10 = swift_task_alloc();
  *(v0 + 1272) = v10;
  *v10 = v0;
  v10[1] = sub_10016F900;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 840, v7, v8, 0, 0, &unk_1001E1788, v9, v7);
}

uint64_t sub_10016F900()
{
  v1 = *(*v0 + 1208);

  sub_1001ABE28(v1, 0);

  return _swift_task_switch(sub_10016FA38, 0, 0);
}

uint64_t sub_10016FA38()
{
  v1 = *(v0 + 840);
  *(v0 + 1280) = v1;
  v2 = *(v0 + 1160);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1168);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1128);
  if (*(v0 + 848))
  {
    *(v0 + 1000) = v1;
    swift_errorRetain();
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100011F00(v0 + 696, &qword_10022FD38, &qword_1001E1748);

    sub_100142304(v1, 1);
    (*(v4 + 8))(v3, v5);
    (*(v2 + 8))(v12, v11);
    v6 = sub_10016FED0;
    v7 = v0 + 16;
    v8 = v0 + 744;
    v9 = v0 + 912;
  }

  else
  {
    sub_100011F00(v0 + 696, &qword_10022FD38, &qword_1001E1748);

    (*(v4 + 8))(v3, v5);
    (*(v2 + 8))(v12, v11);
    v6 = sub_10016FDF8;
    v7 = v0 + 16;
    v8 = v0 + 744;
    v9 = v0 + 960;
  }

  return _swift_asyncLet_finish(v7, v8, v6, v9);
}

uint64_t sub_10016FC20()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v4 = v0[143];
  v5 = v0[142];
  v6 = v0[141];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return _swift_asyncLet_finish(v0 + 2, v0 + 93, sub_10016FD18, v0 + 108);
}

uint64_t sub_10016FD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016FE14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016FEEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016FFB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_10016FFD0, 0, 0);
}

uint64_t sub_10016FFD0()
{
  v1 = *(*(v0 + 72) + *(**(v0 + 72) + 368));

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1001700A8;
  v3 = *(v0 + 72);

  return sub_10011CBDC(v0 + 16, v1, v3);
}

uint64_t sub_1001700A8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1001701E8;
  }

  else
  {
    v2 = sub_1001701BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001701BC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_100170200(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_1001702F4;

  return v5(v2 + 16);
}

uint64_t sub_1001702F4()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 16);
    v6 = *(v2 + 48);
    v4[1] = *(v2 + 32);
    v4[2] = v6;
    *v4 = v5;
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_10017040C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001704B0;

  return sub_1001242F0();
}

uint64_t sub_1001704B0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1001705AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 552) = v21;
  *(v8 + 544) = v20;
  *(v8 + 512) = v18;
  *(v8 + 528) = v19;
  *(v8 + 496) = a7;
  *(v8 + 504) = a8;
  *(v8 + 480) = a5;
  *(v8 + 488) = a6;
  *(v8 + 464) = a3;
  *(v8 + 472) = a4;
  *(v8 + 448) = a1;
  *(v8 + 456) = a2;
  sub_100011AC0(&qword_10022FD68, &qword_1001E17A0);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  v9 = sub_100011AC0(&qword_10022FD30, &qword_1001E1720);
  *(v8 + 592) = v9;
  v10 = *(v9 - 8);
  *(v8 + 600) = v10;
  *(v8 + 608) = *(v10 + 64);
  *(v8 + 616) = swift_task_alloc();
  v11 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  *(v8 + 624) = v11;
  v12 = *(v11 - 8);
  *(v8 + 632) = v12;
  *(v8 + 640) = *(v12 + 64);
  *(v8 + 648) = swift_task_alloc();
  v13 = sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
  *(v8 + 656) = v13;
  v14 = *(v13 - 8);
  *(v8 + 664) = v14;
  *(v8 + 672) = *(v14 + 64);
  *(v8 + 680) = swift_task_alloc();
  v15 = *(type metadata accessor for NWAsyncConnection.Inbound(0) - 8);
  *(v8 + 688) = v15;
  *(v8 + 696) = *(v15 + 64);
  *(v8 + 704) = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  *(v8 + 712) = swift_task_alloc();

  return _swift_task_switch(sub_10017086C, 0, 0);
}

uint64_t sub_10017086C(uint64_t a1)
{
  *(v1 + 720) = *(**(v1 + 456) + 392);
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Entered main task group", v4, 2u);
  }

  v5 = *(v1 + 712);
  v65 = v5;
  v6 = *(v1 + 704);
  v7 = *(v1 + 688);
  v8 = *(v1 + 680);
  v52 = v8;
  v53 = *(v1 + 696);
  v55 = *(v1 + 672);
  v9 = *(v1 + 664);
  v10 = *(v1 + 656);
  v73 = *(v1 + 640);
  v70 = *(v1 + 648);
  v71 = *(v1 + 632);
  v68 = *(v1 + 536);
  v63 = *(v1 + 528);
  v76 = *(v1 + 520);
  v11 = *(v1 + 504);
  v12 = *(v1 + 488);
  v60 = *(v1 + 496);
  v62 = *(v1 + 512);
  v57 = *(v1 + 472);
  v58 = *(v1 + 480);
  v77 = *(v1 + 464);
  v75 = *(v1 + 456);

  v79 = sub_1001D1BA0();
  v80 = *(*(v79 - 8) + 56);
  (v80)(v5, 1, 1, v79);
  sub_1001AFCB4(v12, v6, type metadata accessor for NWAsyncConnection.Inbound);
  (*(v9 + 16))(v8, v11, v10);
  v13 = (*(v7 + 80) + 104) & ~*(v7 + 80);
  v54 = (v53 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v9;
  v15 = (*(v9 + 80) + v54 + 8) & ~*(v9 + 80);
  v56 = (v55 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v75;
  v19 = *v77;
  v18 = v77[1];
  *(v17 + 72) = v77[2];
  *(v17 + 40) = v19;
  *(v17 + 56) = v18;
  *(v17 + 88) = v57;
  *(v17 + 96) = v58;
  sub_1001B0368(v6, v17 + v13, type metadata accessor for NWAsyncConnection.Inbound);
  *(v17 + v54) = v60;
  (*(v14 + 32))(v17 + v15, v52, v10);
  *(v17 + v56) = v62;
  *(v17 + v16) = v76;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;

  sub_10001208C(v77, v1 + 16, &qword_10022FD38, &qword_1001E1748);

  sub_10015C7D4(v5, &unk_1001E17B0, v17, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
  sub_100011F00(v5, &qword_100229350, &unk_1001D6BA0);
  (v80)(v5, 1, 1, v79);
  sub_1001AFCB4(v68, v70, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  v20 = *(v71 + 80);
  v72 = ~v20;
  v21 = (v20 + 40) & ~v20;
  v22 = (v73 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = v20;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v62;
  sub_1001B0368(v70, v24 + v21, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  *(v24 + v22) = v75;
  *(v24 + v23) = v76;
  v25 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = *v77;
  v27 = v77[2];
  v25[1] = v77[1];
  v25[2] = v27;
  *v25 = v26;

  sub_10001208C(v77, v1 + 64, &qword_10022FD38, &qword_1001E1748);

  sub_10015C7D4(v65, &unk_1001E17C0, v24, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
  sub_100011F00(v65, &qword_100229350, &unk_1001D6BA0);
  v28 = v75 + qword_100243500;
  if (*(v28 + *(type metadata accessor for TrustedRequestConfiguration(0) + 96)) == 1)
  {
    v29 = *(v1 + 712);
    v30 = *(v1 + 648);
    v31 = *(v1 + 544);
    v32 = *(v1 + 536);
    v33 = *(v1 + 456);
    (v80)(v29, 1, 1, v79);
    sub_1001AFCB4(v32, v30, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v33;
    v34[5] = v31;
    sub_1001B0368(v30, v34 + ((v74 + 48) & v72), type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

    sub_10015C7D4(v29, &unk_1001E17F8, v34, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
    sub_100011F00(v29, &qword_100229350, &unk_1001D6BA0);
  }

  v69 = *(v1 + 712);
  v35 = *(v1 + 648);
  v59 = v35;
  v78 = *(v1 + 624);
  v36 = *(v1 + 616);
  v37 = *(v1 + 608);
  v38 = *(v1 + 600);
  v39 = *(v1 + 592);
  v40 = *(v1 + 552);
  v67 = *(v1 + 544);
  v41 = *(v1 + 536);
  v64 = *(v1 + 512);
  v66 = *(v1 + 528);
  v61 = *(v1 + 456);
  v80();
  (*(v38 + 16))(v36, v40, v39);
  sub_1001AFCB4(v41, v35, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  v42 = (*(v38 + 80) + 40) & ~*(v38 + 80);
  v43 = (v37 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  *(v46 + 4) = v61;
  (*(v38 + 32))(&v46[v42], v36, v39);
  *&v46[v43] = v64;
  *&v46[v44] = v67;
  *&v46[v45] = v66;
  sub_1001B0368(v59, &v46[(v74 + v45 + 8) & v72], type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  sub_10015C7D4(v69, &unk_1001E17D0, v46, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
  sub_100011F00(v69, &qword_100229350, &unk_1001D6BA0);
  *(v1 + 136) = v78;
  *(v1 + 144) = &off_100221910;
  v47 = sub_10003B47C((v1 + 112));
  sub_1001AFCB4(v41, v47, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  (v80)(v69, 1, 1, v79);
  sub_100044698(v1 + 112, v1 + 152);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  sub_1000446FC((v1 + 152), (v48 + 4));
  v48[9] = v61;

  sub_10015C7D4(v69, &unk_1001E17E0, v48, &unk_100222E40, &qword_10022FD58, &qword_1001E1770, &unk_1001E1AF8);
  sub_100011F00(v69, &qword_100229350, &unk_1001D6BA0);
  sub_100011CF0((v1 + 112));
  *(v1 + 728) = qword_1002434F8;
  *(v1 + 736) = 0u;
  *(v1 + 752) = 0u;
  v49 = swift_task_alloc();
  *(v1 + 768) = v49;
  v50 = sub_100011AC0(&qword_10022FD70, &qword_1001E17E8);
  *v49 = v1;
  v49[1] = sub_100171248;

  return TaskGroup.next(isolation:)(v1 + 384, 0, 0, v50);
}

uint64_t sub_100171248()
{

  return _swift_task_switch(sub_100171344, 0, 0);
}

uint64_t sub_100171344()
{
  v96 = v0;
  v1 = *(v0 + 392);
  if (v1 > 0xFD)
  {
    v2 = *(v0 + 760);
    if (v2)
    {
      *(v0 + 432) = v2;
      swift_errorRetain();
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      if (swift_dynamicCast())
      {
        v3 = *(v0 + 192);
        v4 = *(v0 + 193);
        v5 = *(v0 + 200);
        if (v3 == 18 || v3 == 29)
        {
          sub_100089BE4();
          v6 = swift_allocError();
          *v7 = v3;
          *(v7 + 1) = v4;
          *(v7 + 8) = v5;

LABEL_66:

          v94 = 1;
          goto LABEL_69;
        }
      }
    }

    v58 = *(v0 + 736);
    if (v58)
    {
      *(v0 + 424) = v58;
      swift_errorRetain();
      swift_errorRetain();
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v59 = sub_1001D1AC0();
      v60 = swift_dynamicCast();
      v61 = *(*(v59 - 8) + 56);
      if (!v60)
      {
        v78 = *(v0 + 584);
        v94 = 1;
        v61(v78, 1, 1, v59);
        sub_100011F00(v78, &qword_10022FD68, &qword_1001E17A0);

        v6 = *(v0 + 736);
        goto LABEL_69;
      }

      v62 = *(v0 + 584);
      v61(v62, 0, 1, v59);
      sub_100011F00(v62, &qword_10022FD68, &qword_1001E17A0);
    }

    if (v2)
    {
      *(v0 + 416) = *(v0 + 760);
      swift_errorRetain();
      swift_errorRetain();
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      v63 = sub_1001D1AC0();
      v64 = swift_dynamicCast();
      v65 = *(*(v63 - 8) + 56);
      if (!v64)
      {
        v79 = *(v0 + 576);
        v94 = 1;
        v65(v79, 1, 1, v63);
        sub_100011F00(v79, &qword_10022FD68, &qword_1001E17A0);

        v6 = *(v0 + 760);
        goto LABEL_69;
      }

      v66 = *(v0 + 576);
      v65(v66, 0, 1, v63);
      sub_100011F00(v66, &qword_10022FD68, &qword_1001E17A0);
    }

    v67 = *(v0 + 744);
    if (!v67)
    {
LABEL_42:
      v72 = *(v0 + 752);
      if (v72)
      {
        *(v0 + 400) = v72;
        swift_errorRetain();
        swift_errorRetain();
        sub_100011AC0(&qword_100227A58, &qword_1001D3600);
        v73 = sub_1001D1AC0();
        v74 = swift_dynamicCast();
        v75 = *(*(v73 - 8) + 56);
        if (!v74)
        {
          v91 = *(v0 + 560);
          v94 = 1;
          v75(v91, 1, 1, v73);
          sub_100011F00(v91, &qword_10022FD68, &qword_1001E17A0);

          v6 = *(v0 + 752);
          goto LABEL_69;
        }

        v76 = *(v0 + 560);
        v75(v76, 0, 1, v73);
        sub_100011F00(v76, &qword_10022FD68, &qword_1001E17A0);

        v77 = *(v0 + 752);
      }

      else
      {
        v77 = 0;
      }

      if (!(v77 | *(v0 + 760) | *(v0 + 744) | *(v0 + 736)))
      {
        v6 = 0;
        v94 = 0;
        goto LABEL_69;
      }

      sub_1001D1AC0();
      sub_1001B0458(&qword_1002295E0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
      v6 = swift_allocError();
      sub_1001D16E0();

      goto LABEL_66;
    }

    *(v0 + 408) = v67;
    swift_errorRetain();
    swift_errorRetain();
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v68 = sub_1001D1AC0();
    v69 = swift_dynamicCast();
    v70 = *(*(v68 - 8) + 56);
    if (v69)
    {
      v71 = *(v0 + 568);
      v70(v71, 0, 1, v68);
      sub_100011F00(v71, &qword_10022FD68, &qword_1001E17A0);

      goto LABEL_42;
    }

    v80 = *(v0 + 568);
    v94 = 1;
    v70(v80, 1, 1, v68);
    sub_100011F00(v80, &qword_10022FD68, &qword_1001E17A0);

    v6 = *(v0 + 744);
LABEL_69:

    v92 = *(v0 + 8);

    return v92(v6, v94);
  }

  v8 = *(v0 + 384);
  v9 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (v9)
    {
      if (v1)
      {
        sub_1001ACB00(*(v0 + 384), *(v0 + 392));

        sub_1001ACB00(v8, v1);
        v50 = sub_1001D0E50();
        v51 = sub_1001D1E00();

        sub_1001ACADC(v8, v1);
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v95 = v54;
          *v52 = 136315394;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          *(v0 + 272) = sub_1001D23A0();
          *(v0 + 280) = v55;
          v103._countAndFlagsBits = 58;
          v103._object = 0xE100000000000000;
          sub_1001D18B0(v103);
          v56 = sub_1000954E0(*(v0 + 272), *(v0 + 280), &v95);

          *(v52 + 4) = v56;
          *(v52 + 12) = 2112;
          sub_1001ACB14(v8, v1);
          v57 = _swift_stdlib_bridgeErrorToNSError();
          *(v52 + 14) = v57;
          *v53 = v57;
          _os_log_impl(&_mh_execute_header, v50, v51, "%s Data substream task failed. Error: %@", v52, 0x16u);
          sub_100011F00(v53, &unk_1002301D0, &qword_1001D4F50);

          sub_100011CF0(v54);
        }

        sub_1001ACADC(v8, v1);
        v34 = *(v0 + 736);
        *&v33 = v8;
        *(&v33 + 1) = *(v0 + 760);
        goto LABEL_60;
      }

      v43 = sub_1001D0E50();
      v44 = sub_1001D1E00();

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_58;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v95 = v46;
      *v45 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      *(v0 + 288) = sub_1001D23A0();
      *(v0 + 296) = v87;
      v107._countAndFlagsBits = 58;
      v107._object = 0xE100000000000000;
      sub_1001D18B0(v107);
      v88 = sub_1000954E0(*(v0 + 288), *(v0 + 296), &v95);

      *(v45 + 4) = v88;
      v49 = "%s Data substream task finished successfully";
    }

    else
    {
      if (v1)
      {
        sub_1001ACB00(*(v0 + 384), *(v0 + 392));

        sub_1001ACB00(v8, v1);
        v19 = sub_1001D0E50();
        v20 = sub_1001D1E00();

        sub_1001ACADC(v8, v1);
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v95 = v23;
          *v21 = 136315394;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          *(v0 + 352) = sub_1001D23A0();
          *(v0 + 360) = v24;
          v99._countAndFlagsBits = 58;
          v99._object = 0xE100000000000000;
          sub_1001D18B0(v99);
          v25 = sub_1000954E0(*(v0 + 352), *(v0 + 360), &v95);

          *(v21 + 4) = v25;
          *(v21 + 12) = 2112;
          sub_1001ACB14(v8, v1);
          v26 = _swift_stdlib_bridgeErrorToNSError();
          *(v21 + 14) = v26;
          *v22 = v26;
          _os_log_impl(&_mh_execute_header, v19, v20, "%s Ropes request failed. Error: %@", v21, 0x16u);
          sub_100011F00(v22, &unk_1002301D0, &qword_1001D4F50);

          sub_100011CF0(v23);
        }

        v27 = sub_1001D0E50();
        v28 = sub_1001D1DD0();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v95 = v30;
          *v29 = 136315138;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          *(v0 + 336) = sub_1001D23A0();
          *(v0 + 344) = v31;
          v100._countAndFlagsBits = 58;
          v100._object = 0xE100000000000000;
          sub_1001D18B0(v100);
          v32 = sub_1000954E0(*(v0 + 336), *(v0 + 344), &v95);

          *(v29 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "%s Cancelling main task group", v29, 0xCu);
          sub_100011CF0(v30);
        }

        sub_100011AC0(&qword_10022FD58, &qword_1001E1770);
        sub_1001D1AE0();

        sub_1001ACADC(v8, v1);
        v33 = *(v0 + 752);
        *&v34 = v8;
        *(&v34 + 1) = *(v0 + 744);
        goto LABEL_60;
      }

      v43 = sub_1001D0E50();
      v44 = sub_1001D1E00();

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_58;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v95 = v46;
      *v45 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      *(v0 + 368) = sub_1001D23A0();
      *(v0 + 376) = v85;
      v106._countAndFlagsBits = 58;
      v106._object = 0xE100000000000000;
      sub_1001D18B0(v106);
      v86 = sub_1000954E0(*(v0 + 368), *(v0 + 376), &v95);

      *(v45 + 4) = v86;
      v49 = "%s Ropes request finished successfully";
    }

LABEL_57:
    _os_log_impl(&_mh_execute_header, v43, v44, v49, v45, 0xCu);
    sub_100011CF0(v46);

LABEL_58:

    sub_1001ACADC(v8, v1);
    goto LABEL_59;
  }

  if (v9 == 2)
  {
    if (v1)
    {
      sub_1001ACB00(*(v0 + 384), *(v0 + 392));

      sub_1001ACB00(v8, v1);
      v35 = sub_1001D0E50();
      v36 = sub_1001D1E00();

      sub_1001ACADC(v8, v1);
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v95 = v39;
        *v37 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 304) = sub_1001D23A0();
        *(v0 + 312) = v40;
        v101._countAndFlagsBits = 58;
        v101._object = 0xE100000000000000;
        sub_1001D18B0(v101);
        v41 = sub_1000954E0(*(v0 + 304), *(v0 + 312), &v95);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2112;
        sub_1001ACB14(v8, v1);
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v42;
        *v38 = v42;
        _os_log_impl(&_mh_execute_header, v35, v36, "%s Response bypass substream task failed. Error: %@", v37, 0x16u);
        sub_100011F00(v38, &unk_1002301D0, &qword_1001D4F50);

        sub_100011CF0(v39);
      }

      sub_1001ACADC(v8, v1);
      v33 = *(v0 + 752);
      *&v34 = *(v0 + 736);
      *(&v34 + 1) = v8;
      goto LABEL_60;
    }

    v43 = sub_1001D0E50();
    v44 = sub_1001D1E00();

    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_58;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v95 = v46;
    *v45 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *(v0 + 320) = sub_1001D23A0();
    *(v0 + 328) = v81;
    v104._countAndFlagsBits = 58;
    v104._object = 0xE100000000000000;
    sub_1001D18B0(v104);
    v82 = sub_1000954E0(*(v0 + 320), *(v0 + 328), &v95);

    *(v45 + 4) = v82;
    v49 = "%s Response bypass substream task finished successfully";
    goto LABEL_57;
  }

  if (v9 == 3)
  {
    if (v1)
    {
      *(v0 + 440) = v8;
      sub_1001ACB00(v8, v1);
      sub_1001ACB14(v8, v1);
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      if (swift_dynamicCast())
      {
        v10 = *(v0 + 224);

        if (v10 == 18 || v10 == 29)
        {
          sub_100011AC0(&qword_10022FD58, &qword_1001E1770);
          sub_1001D1AE0();
        }
      }

      sub_1001ACB00(v8, v1);
      v11 = sub_1001D0E50();
      v12 = sub_1001D1E00();

      sub_1001ACADC(v8, v1);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v95 = v15;
        *v13 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        *(v0 + 240) = sub_1001D23A0();
        *(v0 + 248) = v16;
        v98._countAndFlagsBits = 58;
        v98._object = 0xE100000000000000;
        sub_1001D18B0(v98);
        v17 = sub_1000954E0(*(v0 + 240), *(v0 + 248), &v95);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2112;
        sub_1001ACB14(v8, v1);
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 14) = v18;
        *v14 = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s Node substreams task failed. error: %@", v13, 0x16u);
        sub_100011F00(v14, &unk_1002301D0, &qword_1001D4F50);

        sub_100011CF0(v15);
      }

      sub_1001ACADC(v8, v1);
      v34 = *(v0 + 736);
      *&v33 = *(v0 + 752);
      *(&v33 + 1) = v8;
      goto LABEL_60;
    }

    v43 = sub_1001D0E50();
    v44 = sub_1001D1E00();

    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_58;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v95 = v46;
    *v45 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *(v0 + 256) = sub_1001D23A0();
    *(v0 + 264) = v83;
    v105._countAndFlagsBits = 58;
    v105._object = 0xE100000000000000;
    sub_1001D18B0(v105);
    v84 = sub_1000954E0(*(v0 + 256), *(v0 + 264), &v95);

    *(v45 + 4) = v84;
    v49 = "%s Node substreams task finished successfully";
    goto LABEL_57;
  }

  v43 = sub_1001D0E50();
  v44 = sub_1001D1E00();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v95 = v46;
    *v45 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *(v0 + 208) = sub_1001D23A0();
    *(v0 + 216) = v47;
    v102._countAndFlagsBits = 58;
    v102._object = 0xE100000000000000;
    sub_1001D18B0(v102);
    v48 = sub_1000954E0(*(v0 + 208), *(v0 + 216), &v95);

    *(v45 + 4) = v48;
    v49 = "%s Connection metrics reporting finished";
    goto LABEL_57;
  }

LABEL_59:
  v34 = *(v0 + 736);
  v33 = *(v0 + 752);
LABEL_60:
  *(v0 + 736) = v34;
  *(v0 + 752) = v33;
  v89 = swift_task_alloc();
  *(v0 + 768) = v89;
  v90 = sub_100011AC0(&qword_10022FD70, &qword_1001E17E8);
  *v89 = v0;
  v89[1] = sub_100171248;

  return TaskGroup.next(isolation:)(v0 + 384, 0, 0, v90);
}

uint64_t sub_100172AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v141 = a3;
  v144 = a2;
  v136 = type metadata accessor for ValidatedAttestation(0);
  __chkstk_darwin(v136);
  v135 = v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for ValidatedAttestationOrAttestation(0);
  v137 = *(v138 - 8);
  v10 = __chkstk_darwin(v138);
  v139 = v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v145 = v126 - v12;
  v13 = sub_1001D1380();
  v151 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v142 = v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v126 - v16;
  v18 = sub_1001D0ED0();
  v148 = *(v18 - 8);
  v149 = v18;
  __chkstk_darwin(v18);
  v147 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001D1810();
  __chkstk_darwin(v20 - 8);
  v143 = qword_100243508;
  v21 = sub_1001D0870();
  v22 = v4 + qword_100243500;
  v160 = type metadata accessor for TrustedRequestConfiguration(0);
  v23 = v160[19];
  v150 = v22;
  LODWORD(v23) = *(v22 + v23);
  v146 = v17;
  if (v23 == 1)
  {
    v24 = sub_1001A6DA4(&off_10021CA38);
    swift_arrayDestroy();

    v25 = sub_1001A735C(v21, v24, v6);

    swift_bridgeObjectRelease_n();

    v21 = v25;
  }

  v154 = v21;
  sub_100011AC0(&qword_1002292B8, &qword_1001DD2C0);
  sub_1000594F0();
  v26 = sub_1001CF800();
  v28 = v27;

  if (!v5)
  {
    v130 = a1;
    v140 = v6;
    v133 = 0;
    v134 = a4;
    sub_1001D1800();
    v131 = v26;
    v132 = v28;
    v30 = sub_1001D17F0();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    v128 = v32;
    v33 = 0xE000000000000000;
    if (v31)
    {
      v33 = v31;
    }

    v127 = v33;
    sub_100011AC0(&qword_10022FF18, &qword_1001E1C50);
    v34 = sub_100011AC0(&qword_10022FF20, &qword_1001E1C58);
    v35 = *(*(v34 - 8) + 72);
    v36 = (*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1001D3C60;
    v129 = v37;
    v38 = v37 + v36;
    v39 = (v37 + v36 + *(v34 + 48));
    if (qword_1002276A8 != -1)
    {
      swift_once();
    }

    v40 = sub_10003A37C(v13, qword_100242D78);
    v41 = *(v151 + 2);
    v41(v38, v40, v13);
    v126[1] = qword_1002434F8;
    v42 = v140;
    *v39 = sub_1001CFD70();
    v39[1] = v43;
    v44 = (v38 + v35 + *(v34 + 48));
    if (qword_1002276B0 != -1)
    {
      swift_once();
    }

    v45 = sub_10003A37C(v13, qword_100242D90);
    v41(v38 + v35, v45, v13);
    v46 = v42 + *(*v42 + 320);
    v47 = *(v46 + 152);
    *v44 = *(v46 + 144);
    v44[1] = v47;
    v48 = (v38 + 2 * v35 + *(v34 + 48));
    v49 = qword_1002276B8;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = sub_10003A37C(v13, qword_100242DA8);
    v41(v38 + 2 * v35, v50, v13);
    *v48 = sub_1001D0890();
    v48[1] = v51;
    v52 = (v38 + 3 * v35 + *(v34 + 48));
    if (qword_1002276C0 != -1)
    {
      swift_once();
    }

    v53 = sub_10003A37C(v13, qword_100242DC0);
    v41(v38 + 3 * v35, v53, v13);
    v54 = v127;
    *v52 = v128;
    v52[1] = v54;
    v55 = v150;
    if (qword_1002276C8 != -1)
    {
      swift_once();
    }

    v56 = sub_10003A37C(v13, qword_100242DD8);
    v41(v38 + 4 * v35, v56, v13);
    v57 = *(v55 + v160[33]);
    v151 = v41;
    if (v57)
    {
      if (v57 == 1)
      {
        v58 = 0xE300000000000000;
        v59 = 7827308;
      }

      else
      {
        v58 = 0xEA0000000000646ELL;
        v59 = 0x756F72676B636162;
      }
    }

    else
    {
      v58 = 0xE400000000000000;
      v59 = 1751607656;
    }

    v60 = (v38 + 4 * v35 + *(v34 + 48));
    *v60 = v59;
    v60[1] = v58;
    v61 = (v38 + 5 * v35 + *(v34 + 48));
    if (qword_1002276D8 != -1)
    {
      swift_once();
    }

    v62 = sub_10003A37C(v13, qword_100242E08);
    v63 = v151;
    v151(v38 + 5 * v35, v62, v13);
    v64 = (v55 + v160[27]);
    v65 = v64[1];
    *v61 = *v64;
    v61[1] = v65;
    v66 = (v38 + 6 * v35 + *(v34 + 48));
    v67 = qword_1002276E0;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = sub_10003A37C(v13, qword_100242E20);
    v63(v38 + 6 * v35, v68, v13);
    v154 = v144;
    *v66 = sub_1001D23A0();
    v66[1] = v69;
    v70 = (v38 + 7 * v35 + *(v34 + 48));
    sub_1001D1330();
    *v70 = 0xD000000000000011;
    v70[1] = 0x80000001001E7730;
    v71 = (v38 + 8 * v35 + *(v34 + 48));
    sub_1001D1370();
    *v71 = 0xD000000000000014;
    v71[1] = 0x80000001001E13D0;
    v72 = (v38 + 9 * v35 + *(v34 + 48));
    sub_1001D1340();
    v154 = 0;
    v155 = 0xE000000000000000;
    sub_1001D2030(23);

    v154 = 0xD000000000000014;
    v155 = 0x80000001001E7750;
    v152 = sub_1001CFBF0(0);
    v153 = v73;
    v158 = 43;
    v159 = 0xE100000000000000;
    v156 = 45;
    v157 = 0xE100000000000000;
    sub_100011EAC();
    v74 = sub_1001D1F30();
    v76 = v75;

    v152 = v74;
    v153 = v76;
    v158 = 47;
    v159 = 0xE100000000000000;
    v156 = 95;
    v157 = 0xE100000000000000;
    v77 = sub_1001D1F30();
    v79 = v78;

    v152 = v77;
    v153 = v79;
    v158 = 61;
    v159 = 0xE100000000000000;
    v156 = 0;
    v157 = 0xE000000000000000;
    v80 = sub_1001D1F30();
    v82 = v81;

    v161._countAndFlagsBits = v80;
    v161._object = v82;
    sub_1001D18B0(v161);

    v162._countAndFlagsBits = 34;
    v162._object = 0xE100000000000000;
    sub_1001D18B0(v162);
    v83 = v155;
    *v72 = v154;
    v72[1] = v83;
    v84 = v147;
    sub_1001D0EC0();
    v85 = v150;
    v86 = v146;
    if (*(v150 + v160[28] + 8))
    {
      v87 = qword_1002276D0;

      if (v87 != -1)
      {
        swift_once();
      }

      v88 = sub_10003A37C(v13, qword_100242DF0);
      v151(v86, v88, v13);
      sub_1001D0EF0();
    }

    v89 = [objc_opt_self() automatedDeviceGroup];
    if (v89)
    {
      v90 = v86;
      v91 = v89;
      sub_1001D17D0();

      if (qword_1002276E8 != -1)
      {
        swift_once();
      }

      v92 = sub_10003A37C(v13, qword_100242E38);
      v86 = v90;
      v151(v90, v92, v13);
      sub_1001D0EF0();
    }

    v93 = v160;
    v94 = v151;
    if (*(v85 + v160[20] + 8))
    {
      v95 = qword_1002276F0;

      if (v95 != -1)
      {
        swift_once();
      }

      v96 = sub_10003A37C(v13, qword_100242E50);
      v94(v86, v96, v13);
      sub_1001D0EF0();
      v93 = v160;
    }

    if (*(v85 + v93[21] + 8))
    {
      v97 = qword_1002276F8;

      if (v97 != -1)
      {
        swift_once();
      }

      v98 = sub_10003A37C(v13, qword_100242E68);
      v94(v86, v98, v13);
      sub_1001D0EF0();
      v93 = v160;
    }

    if (*(v85 + v93[22] + 8))
    {
      v99 = qword_100227718;

      if (v99 != -1)
      {
        swift_once();
      }

      v100 = sub_10003A37C(v13, qword_100242EC8);
      v94(v86, v100, v13);
      sub_1001D0EF0();
      v93 = v160;
    }

    if (*(v85 + v93[25] + 8))
    {
      v101 = qword_100227730;

      if (v101 != -1)
      {
        swift_once();
      }

      v102 = sub_10003A37C(v13, qword_100242F10);
      v94(v86, v102, v13);
      sub_1001D0EF0();
      v93 = v160;
    }

    v103 = v145;
    if (*(v85 + v93[23]) != 2)
    {
      if (qword_100227728 != -1)
      {
        swift_once();
      }

      v104 = sub_10003A37C(v13, qword_100242EF8);
      v151(v142, v104, v13);
      sub_1001D0EF0();
      v85 = v150;
    }

    v105 = v151;
    if (*(v85 + 72) == 1)
    {
      if (qword_100227720 != -1)
      {
        swift_once();
      }

      v106 = sub_10003A37C(v13, qword_100242EE0);
      v105(v86, v106, v13);
      sub_1001D0EF0();
    }

    if (*(v85 + 40))
    {
      v107 = qword_100227700;

      if (v107 != -1)
      {
        swift_once();
      }

      v108 = sub_10003A37C(v13, qword_100242E80);
      v105(v86, v108, v13);
      sub_1001D0EF0();
      if (qword_100227708 != -1)
      {
        swift_once();
      }

      v109 = sub_10003A37C(v13, qword_100242E98);
      v105(v86, v109, v13);
      sub_1001D0EF0();
    }

    else if (*(v141 + 16))
    {
      sub_1001AFCB4(v141 + ((*(v137 + 80) + 32) & ~*(v137 + 80)), v103, type metadata accessor for ValidatedAttestationOrAttestation);
      v122 = v139;
      sub_1001AFCB4(v103, v139, type metadata accessor for ValidatedAttestationOrAttestation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1001AFB98(v122, type metadata accessor for ValidatedAttestationOrAttestation);
        sub_1001AFB98(v103, type metadata accessor for ValidatedAttestationOrAttestation);
      }

      else
      {
        v123 = v135;
        sub_1001B0368(v122, v135, type metadata accessor for ValidatedAttestation);
        v124 = *(v123 + *(v136 + 36) + 8);

        sub_1001AFB98(v123, type metadata accessor for ValidatedAttestation);
        if (v124)
        {
          if (qword_100227700 != -1)
          {
            swift_once();
          }

          v125 = sub_10003A37C(v13, qword_100242E80);
          v151(v86, v125, v13);
          sub_1001D0EF0();
        }

        sub_1001AFB98(v103, type metadata accessor for ValidatedAttestationOrAttestation);
      }
    }

    v110 = sub_1001D0E50();
    v111 = sub_1001D1E00();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *v112 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v154 = sub_1001D23A0();
      v155 = v113;
      v163._countAndFlagsBits = 2629690;
      v163._object = 0xE300000000000000;
      sub_1001D18B0(v163);
      v164._countAndFlagsBits = 1953460082;
      v164._object = 0xE400000000000000;
      sub_1001D18B0(v164);
      v165._countAndFlagsBits = 41;
      v165._object = 0xE100000000000000;
      sub_1001D18B0(v165);
      v114 = sub_1000954E0(v154, v155, &v158);

      *(v112 + 4) = v114;
      *(v112 + 12) = 2080;
      swift_beginAccess();
      v115 = HTTPFields.loggingDescription.getter();
      v117 = sub_1000954E0(v115, v116, &v158);

      *(v112 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v110, v111, "%s sending headers\n%s", v112, 0x16u);
      swift_arrayDestroy();
    }

    sub_100011E48(v131, v132);

    v118 = v134;
    swift_beginAccess();
    v119 = v148;
    v120 = v118;
    v121 = v149;
    (*(v148 + 16))(v120, v84, v149);
    return (*(v119 + 8))(v84, v121);
  }

  return result;
}

uint64_t sub_100173F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[4] = a2;
  v4[2] = a1;
  return _swift_task_switch(sub_100173F5C, 0, 0);
}

uint64_t sub_100173F5C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 152) = 0;
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = 0x10000;
  *(v0 + 64) = *(v1 + *(*v1 + 368));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  *(v4 + 40) = 1;
  *(v4 + 48) = 2;
  *(v4 + 56) = v0 + 16;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_10017409C;

  return (sub_1001637E0)();
}

uint64_t sub_10017409C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100174388;
  }

  else
  {

    v2 = sub_1001741B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001741B8()
{
  *(v0 + 153) = 0;
  v1 = *(v0 + 48);
  v2 = *(v1 + *(*v1 + 272));
  *(v0 + 96) = v2;
  v3 = OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator;
  *(v0 + 104) = OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator;
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  v14 = v6;
  *(v0 + 112) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = 1;
  *(v6 + 32) = 2;
  *(v6 + 40) = v0 + 153;
  *(v6 + 48) = v0 + 16;
  *(v6 + 56) = v0 + 152;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v15 = *(v2 + v3);
  do
  {
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v16 = v15;
    atomic_compare_exchange_strong_explicit((*(v0 + 96) + *(v0 + 104)), &v16, v15 + 1, memory_order_relaxed, memory_order_relaxed);
    v17 = v16 == v15;
    v15 = v16;
  }

  while (!v17);
  v18 = *(v0 + 96);
  v19 = swift_task_alloc();
  *(v0 + 120) = v19;
  v19[2] = v18;
  v19[3] = v15;
  v19[4] = &unk_1001E1AC0;
  v19[5] = v14;
  v20 = swift_task_alloc();
  *(v0 + 128) = v20;
  *(v20 + 16) = v18;
  *(v20 + 24) = v15;
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  *(v6 + 8) = sub_1001743F8;
  v7 = &unk_1001E1AC8;
  v9 = sub_100119C4C;
  v13 = &type metadata for () + 8;
  v8 = v19;
  v10 = v20;
  v11 = 0;
  v12 = 0;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_100174388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001743F8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100174900;
  }

  else
  {

    v2 = sub_100174528;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100174528()
{
  v33 = v0;
  if (*(v0 + 153) == 1)
  {

    v1 = sub_1001D0E50();
    v2 = sub_1001D1E00();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v29 = v4;
      *v3 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = sub_1001D23A0();
      v31 = v5;
      v35._countAndFlagsBits = 2629690;
      v35._object = 0xE300000000000000;
      sub_1001D18B0(v35);
      v32._countAndFlagsBits = 0x202C61746164;
      v32._object = 0xE600000000000000;
      *(v0 + 24) = 1;
      v36._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v36);

      sub_1001D18B0(v32);

      v37._countAndFlagsBits = 41;
      v37._object = 0xE100000000000000;
      sub_1001D18B0(v37);
      v6 = sub_1000954E0(v30, v31, &v29);

      *(v3 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s Finished sending all user data", v3, 0xCu);
      sub_100011CF0(v4);
    }

    sub_100164B24();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 32);
    v14 = swift_task_alloc();
    v22 = v14;
    *(v0 + 112) = v14;
    *(v14 + 16) = v12;
    *(v14 + 24) = 1;
    *(v14 + 32) = 2;
    *(v14 + 40) = v0 + 153;
    *(v14 + 48) = v0 + 16;
    *(v14 + 56) = v0 + 152;
    *(v14 + 64) = v11;
    *(v14 + 72) = v13;
    v23 = *(v10 + v9);
    do
    {
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v24 = v23;
      atomic_compare_exchange_strong_explicit((*(v0 + 96) + *(v0 + 104)), &v24, v23 + 1, memory_order_relaxed, memory_order_relaxed);
      v25 = v24 == v23;
      v23 = v24;
    }

    while (!v25);
    v26 = *(v0 + 96);
    v27 = swift_task_alloc();
    *(v0 + 120) = v27;
    v27[2] = v26;
    v27[3] = v23;
    v27[4] = &unk_1001E1AC0;
    v27[5] = v22;
    v28 = swift_task_alloc();
    *(v0 + 128) = v28;
    *(v28 + 16) = v26;
    *(v28 + 24) = v23;
    v14 = swift_task_alloc();
    *(v0 + 136) = v14;
    *v14 = v0;
    *(v14 + 8) = sub_1001743F8;
    v15 = &unk_1001E1AC8;
    v17 = sub_100119C4C;
    v21 = &type metadata for () + 8;
    v16 = v27;
    v18 = v28;
    v19 = 0;
    v20 = 0;

    return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_100174900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017498C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_1001749B0, 0, 0);
}

void sub_1001749B0()
{
  v20 = v0;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = sub_1001D23A0();
    v18 = v6;
    v22._countAndFlagsBits = 2629690;
    v22._object = 0xE300000000000000;
    sub_1001D18B0(v22);
    sub_1001D2030(18);

    v19._countAndFlagsBits = 0xD000000000000010;
    v19._object = 0x80000001001E7540;
    v0[3] = v3;
    v23._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v23);

    sub_1001D18B0(v19);

    v24._countAndFlagsBits = 41;
    v24._object = 0xE100000000000000;
    sub_1001D18B0(v24);
    v7 = sub_1000954E0(v17, v18, &v16);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2048;
    *(v4 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s starting response bypass context=%ld", v4, 0x16u);
    sub_100011CF0(v5);
  }

  v8 = v0[4];
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[7];
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_1001D2030(18);

    v19._countAndFlagsBits = 0xD000000000000010;
    v19._object = 0x80000001001E7540;
    v0[2] = v8;
    v25._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v25);

    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;
    v0[8] = v19._object;
    v12 = swift_task_alloc();
    v0[9] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v8;
    *(v12 + 32) = 1;
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_100174D44;
    v14 = v0[5];
    v15 = v0[4];

    sub_100198D5C(sub_100198D5C, v15, countAndFlagsBits, object, &unk_1001E1808, v14, &unk_1001E1818, v12);
  }
}

uint64_t sub_100174D44()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1001701E8;
  }

  else
  {
    v2 = sub_100013F2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100174E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[105] = a7;
  v7[104] = a6;
  v7[103] = a5;
  v7[102] = a4;
  v7[101] = a3;
  v7[95] = a2;
  v7[106] = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  v7[107] = swift_task_alloc();
  v8 = sub_100011AC0(&qword_10022FDA8, &qword_1001E1878);
  v7[108] = v8;
  v7[109] = *(v8 - 8);
  v7[110] = swift_task_alloc();
  v9 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  v7[111] = v9;
  v7[112] = *(v9 - 8);
  v7[113] = swift_task_alloc();
  v10 = sub_100011AC0(&qword_10022FDB8, &qword_1001E1888);
  v7[114] = v10;
  v11 = *(v10 - 8);
  v7[115] = v11;
  v7[116] = *(v11 + 64);
  v7[117] = swift_task_alloc();
  v7[118] = swift_task_alloc();

  return _swift_task_switch(sub_100175098, 0, 0);
}

uint64_t sub_100175098()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v18 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 904);
  v6 = *(v0 + 880);
  v7 = *(v0 + 872);
  v8 = *(v0 + 864);
  v22 = *(v0 + 808);
  v9 = *(v0 + 760);
  v19 = *(v0 + 832);
  v20 = *(v0 + 816);
  (*(v7 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);
  sub_1001D1BB0();
  (*(v7 + 8))(v6, v8);
  (*(v3 + 16))(v2, v1, v4);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v2, v4);
  *(v11 + ((v18 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v12 = swift_allocObject();
  *(v0 + 952) = v12;
  *(v12 + 16) = &unk_1001E1898;
  *(v12 + 24) = v11;

  swift_asyncLet_begin();
  v13 = sub_100011AC0(&qword_10022FDC0, &qword_1001E18A8);
  v14 = sub_100011AC0(&qword_10022FD60, &qword_1001E1778);
  v15 = swift_task_alloc();
  *(v0 + 960) = v15;
  *(v15 + 16) = v9;
  *(v15 + 24) = v22;
  *(v15 + 32) = v5;
  *(v15 + 40) = v20;
  *(v15 + 56) = vextq_s8(v19, v19, 8uLL);
  v16 = swift_task_alloc();
  *(v0 + 968) = v16;
  *v16 = v0;
  v16[1] = sub_100175354;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 696, v13, v14, 0, 0, &unk_1001E18B8, v15, v13);
}

uint64_t sub_100175354()
{

  return _swift_task_switch(sub_10017546C, 0, 0);
}

uint64_t sub_10017546C()
{
  *(v0 + 976) = *(v0 + 696);
  *(v0 + 705) = *(v0 + 704);
  sub_1001D1BD0();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_100175504(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 705))
  {
    *(v2 + 712) = *(v2 + 976);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    v3 = sub_100175930;
    v4 = v2 + 16;
    v5 = v2 + 720;
  }

  else
  {
    v3 = sub_1001755B8;
    v4 = v2 + 16;
    v5 = v2 + 768;
  }

  return _swift_asyncLet_finish(v4, a2, v3, v5);
}

uint64_t sub_1001755D4()
{
  v23 = v0;
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[95];
  (*(v0[115] + 8))(v0[118], v0[114]);
  (*(v2 + 8))(v1, v3);
  sub_100183F84(v4);

  v5 = v4 + qword_100243500;
  if (*(v5 + *(type metadata accessor for TrustedRequestConfiguration(0) + 96)) == 1)
  {
    v6 = v0[107];
    v7 = v0[103];
    sub_100089BE4();
    v8 = swift_allocError();
    *v9 = 5916;
    *(v9 + 8) = _swiftEmptyArrayStorage;
    v10 = (v7 + *(*v7 + 88));
    os_unfair_lock_lock(v10);
    sub_100011AC0(&qword_10022F148, &qword_1001E06B0);
    *v6 = v8;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v11 = sub_10019ACD8(v6);
    sub_100011F00(v6, &qword_10022F188, &qword_1001E06F0);
    os_unfair_lock_unlock(v10);

    if (v11)
    {

      v12 = sub_1001D0E50();
      v13 = sub_1001D1DD0();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v21 = sub_1001D23A0();
        v22 = v16;
        v25._countAndFlagsBits = 58;
        v25._object = 0xE100000000000000;
        sub_1001D18B0(v25);
        v17 = sub_1000954E0(v21, v22, &v20);

        *(v14 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s No response bypass context received from any node", v14, 0xCu);
        sub_100011CF0(v15);
      }
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10017594C()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[95];
  (*(v0[115] + 8))(v0[118], v0[114]);
  (*(v2 + 8))(v1, v3);
  sub_100183F84(v4);

  v5 = v4 + qword_100243500;
  if (*(v5 + *(type metadata accessor for TrustedRequestConfiguration(0) + 96)) == 1)
  {
    v6 = v0[122];
    v7 = v0[107];
    v8 = (v0[103] + *(*v0[103] + 88));
    os_unfair_lock_lock(v8);
    sub_100011AC0(&qword_10022F148, &qword_1001E06B0);
    *v7 = v6;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_10019ACD8(v7);
    sub_100011F00(v7, &qword_10022F188, &qword_1001E06F0);
    os_unfair_lock_unlock(v8);
  }

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100175B14()
{
  v1[10] = v0;
  v2 = sub_1001CFD60();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v1[14] = swift_task_alloc();
  v3 = sub_1001D08A0();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for TrustedRequestConfiguration(0);
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100175C98, 0, 0);
}

uint64_t sub_100175C98()
{
  v67 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[10];
  v63 = v6 + qword_100243500;
  sub_1001AFCB4(v6 + qword_100243500, v1, type metadata accessor for TrustedRequestConfiguration);
  (*(v3 + 16))(v4, v6 + qword_100243508, v5);
  v7 = *(v2 + 112);
  v8 = (v1 + *(v2 + 108));
  v9 = v8[1];
  v61 = *v8;
  v62 = v2;
  if (*(v1 + v7 + 8))
  {
    v58 = *(v1 + v7 + 8);
    v59 = *(v1 + v7);
  }

  else
  {
    v58 = 0xE000000000000000;
    v59 = 0;
  }

  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[15];

  v14 = sub_1001D0890();
  v16 = v15;
  v17 = sub_1001D0870();
  (*(v11 + 8))(v12, v13);
  sub_1001AFB98(v10, type metadata accessor for TrustedRequestConfiguration);
  v0[2] = v61;
  v0[3] = v9;
  v0[4] = v59;
  v0[5] = v58;
  v0[6] = v14;
  v0[7] = v16;
  v0[8] = v17;

  v18 = sub_1001D0E50();
  v19 = sub_1001D1E00();

  if (os_log_type_enabled(v18, v19))
  {
    v60 = v19;
    v20 = v0[18];
    v21 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v21 = 136316930;
    v22 = sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v65 = sub_1001D23A0();
    v66 = v23;
    v69._countAndFlagsBits = 58;
    v69._object = 0xE100000000000000;
    sub_1001D18B0(v69);
    v24 = sub_1000954E0(v65, v66, &v64);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = v63;
    *(v21 + 14) = sub_1000954E0(*(v63 + *(v62 + 108)), *(v63 + *(v62 + 108) + 8), &v64);
    *(v21 + 22) = 2080;
    v26 = (v63 + *(v20 + 120));
    if (v26[1])
    {
      v27 = *v26;
      v28 = v26[1];
    }

    else
    {
      v28 = 0xE300000000000000;
      v27 = 7104878;
    }

    v29 = v0[18];

    v30 = sub_1000954E0(v27, v28, &v64);

    *(v21 + 24) = v30;
    *(v21 + 32) = 2080;
    *(v21 + 34) = sub_1000954E0(*(v63 + *(v29 + 104)), *(v63 + *(v29 + 104) + 8), &v64);
    *(v21 + 42) = 2080;
    v31 = (v63 + *(v62 + 112));
    if (v31[1])
    {
      v32 = *v31;
      v33 = v31[1];
    }

    else
    {
      v33 = 0xE300000000000000;
      v32 = 7104878;
    }

    v34 = v0[18];
    v35 = v0[14];

    v36 = sub_1000954E0(v32, v33, &v64);

    *(v21 + 44) = v36;
    *(v21 + 52) = 2080;
    sub_10001208C(v63 + *(v34 + 116), v35, &qword_1002288B0, &qword_1001D5FC0);
    v37 = *(v22 - 8);
    v38 = (*(v37 + 48))(v35, 1, v22);
    v39 = v0[14];
    if (v38 == 1)
    {
      sub_100011F00(v0[14], &qword_1002288B0, &qword_1001D5FC0);
      v40 = 0xE300000000000000;
      v41 = 7104878;
    }

    else
    {
      v42 = sub_1001CFD70();
      v40 = v43;
      (*(v37 + 8))(v39, v22);
      v41 = v42;
    }

    v44 = sub_1000954E0(v41, v40, &v64);

    *(v21 + 54) = v44;
    *(v21 + 62) = 2080;
    v45 = sub_1001D0890();
    v47 = sub_1000954E0(v45, v46, &v64);

    *(v21 + 64) = v47;
    *(v21 + 72) = 2080;
    v48 = sub_1001D0870();
    v49 = sub_10015A550(v48);

    v65 = v49;

    sub_100152064(&v65);

    v0[9] = v65;
    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_100024B78(&qword_1002281F0, &unk_100230200, &qword_1001D4F80, &protocol conformance descriptor for [A]);
    v50 = sub_1001D1750();
    v52 = v51;

    v53 = sub_1000954E0(v50, v52, &v64);

    *(v21 + 74) = v53;
    _os_log_impl(&_mh_execute_header, v18, v60, "%s updating rate limiter with attribution\nbundleID: %s\noriginatingBundleID: %s\nclientBundleID: %s\nfeatureID: %s\nsessionID: %s\n\nworkloadType: %s\nworkloadTags: \n%s", v21, 0x52u);
    swift_arrayDestroy();
  }

  else
  {

    v25 = v63;
  }

  v54 = *(v0[18] + 116);
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v55 = swift_task_alloc();
  v0[20] = v55;
  *v55 = v0;
  v55[1] = sub_100176350;
  v56 = v0[13];

  return sub_1000F0CD4((v0 + 2), v25 + v54, v56);
}

uint64_t sub_100176350()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v7 = *v0;

  sub_10001BB30(v1 + 16);
  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

void sub_100176514(uint64_t a1)
{

  oslog = sub_1001D0E50();
  v1 = sub_1001D1DD0();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = sub_1001D23A0();
    v8 = v4;
    v11._countAndFlagsBits = 2629690;
    v11._object = 0xE300000000000000;
    sub_1001D18B0(v11);
    v12._countAndFlagsBits = 1953460082;
    v12._object = 0xE400000000000000;
    sub_1001D18B0(v12);
    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    sub_1001D18B0(v13);
    v5 = sub_1000954E0(v7, v8, &v9);

    *(v2 + 4) = v5;
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s Finished root connection subtask", v2, 0xCu);
    sub_100011CF0(v3);
  }
}

uint64_t sub_1001766D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a2;
  v6[5] = a4;
  v6[2] = a3;
  v6[3] = a1;
  return _swift_task_switch(sub_100176700, 0, 0);
}

uint64_t sub_100176700()
{
  v1 = *(v0 + 56);
  v9 = *(v0 + 40);
  v2 = *(v0 + 32) + *(**(v0 + 32) + 336);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v0 + 16;
  *(v3 + 24) = v9;
  *(v3 + 40) = v1;
  v4 = swift_allocObject();
  *(v0 + 72) = v4;
  *(v4 + 16) = &unk_1001E1BE0;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *(v5 + 16) = &unk_1001E1BF0;
  *(v5 + 24) = v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = xmmword_1001E13D0;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_100176894;
  v7 = *(v0 + 24);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v7, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1001E1C00, v5, &type metadata for () + 8);
}

uint64_t sub_100176894()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100176A4C;
  }

  else
  {

    v2 = sub_1001769B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001769B0()
{
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_100176A4C()
{

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_100176AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_100011AC0(&qword_10022F1A8, &qword_1001E0870);
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = type metadata accessor for ThimbledEvent(0);
  v5[34] = swift_task_alloc();
  v7 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v8 = sub_1001D08A0();
  v5[38] = v8;
  v5[39] = *(v8 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = type metadata accessor for Proto_Ropes_Common_DiagnosticInformation(0);
  v5[42] = swift_task_alloc();
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected(0);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v9 = sub_1001D0F00();
  v5[45] = v9;
  v5[46] = *(v9 - 8);
  v5[47] = swift_task_alloc();
  type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0);
  v5[48] = swift_task_alloc();
  type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList(0);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v5[51] = swift_task_alloc();
  v5[52] = sub_100011AC0(&qword_10022AA88, &qword_1001D9620);
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v10 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
  v5[56] = v10;
  v5[57] = *(v10 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v11 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v5[61] = v11;
  v5[62] = *(v11 - 8);
  v5[63] = swift_task_alloc();
  sub_100011AC0(&qword_10022FE70, &qword_1001E1B38);
  v5[64] = swift_task_alloc();
  v12 = sub_100011AC0(&qword_10022FE78, &unk_1001E1B40);
  v5[65] = v12;
  v5[66] = *(v12 - 8);
  v5[67] = swift_task_alloc();
  v5[68] = sub_100011AC0(&qword_100229620, &qword_1001D69C8);
  v5[69] = swift_task_alloc();
  v5[70] = type metadata accessor for NWAsyncConnection.Inbound(0);
  v5[71] = swift_task_alloc();
  sub_100011AC0(&qword_10022FE80, &qword_1001E1B50);
  v5[72] = swift_task_alloc();

  return _swift_task_switch(sub_10017707C, 0, 0);
}

uint64_t sub_10017707C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 552);
  v12 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 232);
  sub_1001AFCB4(*(v0 + 200), *(v0 + 568), type metadata accessor for NWAsyncConnection.Inbound);
  sub_1001B0458(&qword_10022EE88, type metadata accessor for NWAsyncConnection.Inbound, &protocol conformance descriptor for NWAsyncConnection.Inbound);

  sub_1001D24B0();
  (*(v4 + 16))(v3, v1, v5);
  sub_100024B78(&qword_10022FE88, &qword_10022FE78, &unk_1001E1B40, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>);
  sub_1001D1C90();
  v7 = v2 + *(v12 + 80);
  *v7 = 0;
  *(v7 + 8) = 2;
  *(v2 + *(v12 + 76)) = xmmword_1001D3A00;
  v8 = *v6;
  *(v0 + 584) = *(*v6 + 392);
  *(v0 + 592) = qword_1002434F8;
  *(v0 + 600) = qword_100243508;
  *(v0 + 608) = qword_100243500;
  *(v0 + 616) = *(v8 + 368);
  *(v0 + 624) = *(v8 + 360);
  *(v0 + 172) = enum case for NWActivity.CompletionReason.success(_:);
  v9 = swift_task_alloc();
  *(v0 + 632) = v9;
  *v9 = v0;
  v9[1] = sub_100177314;
  v10 = *(v0 + 512);

  return sub_100082910(v10);
}

uint64_t sub_100177314()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_100179634;
  }

  else
  {
    v2 = sub_100177428;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100177428()
{
  v218 = v0;
  v1 = v0;
  v2 = v0[64];
  if ((*(v0[57] + 48))(v2, 1, v0[56]) == 1)
  {
    sub_100011F00(v0[69], &qword_100229620, &qword_1001D69C8);

    v3 = sub_1001D0E50();
    v4 = sub_1001D1DD0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[72];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v215 = v7;
      *v6 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v216 = sub_1001D23A0();
      v217 = v8;
      v220._countAndFlagsBits = 2629690;
      v220._object = 0xE300000000000000;
      sub_1001D18B0(v220);
      v221._countAndFlagsBits = 1953460082;
      v221._object = 0xE400000000000000;
      sub_1001D18B0(v221);
      v222._countAndFlagsBits = 41;
      v222._object = 0xE100000000000000;
      sub_1001D18B0(v222);
      v9 = sub_1000954E0(v216, v217, &v215);

      *(v6 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Received all messages on ropes stream", v6, 0xCu);
      sub_100011CF0(v7);

      v10 = v5;
    }

    else
    {
      v24 = v0[72];

      v10 = v24;
    }

    sub_100011F00(v10, &qword_10022FE80, &qword_1001E1B50);

    v25 = v0[1];

    v25();
    return;
  }

  v12 = v0[59];
  v11 = v0[60];
  sub_1001B0368(v2, v11, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
  sub_1001AFCB4(v11, v12, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);

  v13 = sub_1001D0E50();
  v14 = sub_1001D1E00();

  v213 = v0;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[59];
    v16 = v0[55];
    v17 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    *v17 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v0[18] = sub_1001D23A0();
    v0[19] = v18;
    v223._countAndFlagsBits = 2629690;
    v223._object = 0xE300000000000000;
    sub_1001D18B0(v223);
    v224._countAndFlagsBits = 1953460082;
    v224._object = 0xE400000000000000;
    sub_1001D18B0(v224);
    v225._countAndFlagsBits = 41;
    v225._object = 0xE100000000000000;
    sub_1001D18B0(v225);
    v19 = sub_1000954E0(v0[18], v0[19], &v216);

    *(v17 + 4) = v19;
    v1 = v0;
    *(v17 + 12) = 2080;
    sub_10001208C(v15, v16, &qword_10022AA88, &qword_1001D9620);
    v20 = sub_1001D1820();
    v22 = v21;
    sub_1001AFB98(v15, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
    v23 = sub_1000954E0(v20, v22, &v216);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s received message: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[59];

    sub_1001AFB98(v26, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
  }

  v27 = v1[54];
  sub_10001208C(v1[60], v27, &qword_10022AA88, &qword_1001D9620);
  v28 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {
    v29 = v1[60];
    v30 = v1[54];
    v31 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse;
LABEL_13:
    sub_1001AFB98(v29, v31);
    v32 = v30;
LABEL_14:
    sub_100011F00(v32, &qword_10022AA88, &qword_1001D9620);
LABEL_15:
    v33 = swift_task_alloc();
    v1[79] = v33;
    *v33 = v1;
    v33[1] = sub_100177314;
    v34 = v1[64];

    sub_100082910(v34);
    return;
  }

  sub_10001208C(v1[54], v1[53], &qword_10022AA88, &qword_1001D9620);
  LODWORD(v35) = swift_getEnumCaseMultiPayload();
  if (v35 > 4)
  {
    if (v35 <= 6)
    {
LABEL_41:
      if (v35 == 5)
      {
        sub_1001B0368(v1[53], v1[48], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);

        v68 = sub_1001D0E50();
        v69 = sub_1001D1DD0();

        if (os_log_type_enabled(v68, v69))
        {
          v209 = v1[75];
          v70 = v1[40];
          v71 = v213[39];
          v72 = v213[38];
          v73 = v213[29];
          v74 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          *v74 = 136315394;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v213[14] = sub_1001D23A0();
          v213[15] = v75;
          v229._countAndFlagsBits = 2629690;
          v229._object = 0xE300000000000000;
          sub_1001D18B0(v229);
          v230._countAndFlagsBits = 1953460082;
          v230._object = 0xE400000000000000;
          sub_1001D18B0(v230);
          v231._countAndFlagsBits = 41;
          v231._object = 0xE100000000000000;
          sub_1001D18B0(v231);
          v76 = sub_1000954E0(v213[14], v213[15], &v216);

          *(v74 + 4) = v76;
          *(v74 + 12) = 2080;
          (*(v71 + 16))(v70, v73 + v209, v72);
          v1 = v213;
          v77 = sub_1001D1820();
          v79 = sub_1000954E0(v77, v78, &v216);

          *(v74 + 14) = v79;
          _os_log_impl(&_mh_execute_header, v68, v69, "%s received expired attestation message for parameters  %s. Will refresh attestations out of band", v74, 0x16u);
          swift_arrayDestroy();
        }

        v80 = v1[75];
        v204 = v1[60];
        v210 = v1[54];
        v81 = v1[48];
        v82 = v1[38];
        v83 = v1[39];
        v84 = v1[36];
        v85 = v1[37];
        v86 = v1[34];
        v202 = v1[35];
        v87 = v1[29];
        v88 = *(sub_100011AC0(&unk_1002301C0, &qword_1001E1B70) + 48);
        sub_1001AFCB4(v81, v86, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        v89 = v86 + v88;
        v1 = v213;
        (*(v83 + 16))(v89, v87 + v80, v82);
        swift_storeEnumTagMultiPayload();
        sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
        sub_1001D1BC0();
        (*(v84 + 8))(v85, v202);
        sub_1001AFB98(v81, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        sub_1001AFB98(v204, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
        v32 = v210;
        goto LABEL_14;
      }

      v122 = v1[80];
      v123 = v1[77];
      v124 = v1[29];
      sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
      sub_1001D1BD0();
      v125 = (*(v124 + v123) + *(**(v124 + v123) + 144));
      os_unfair_lock_lock(v125);
      v126 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
      v127 = sub_100166C04(v125 + *(v126 + 28));
      os_unfair_lock_unlock(v125);
      if (v122)
      {
        return;
      }

      if (v127)
      {
        v156 = v1[46];
        v155 = v1[47];
        v157 = v1[45];
        (*(v156 + 104))(v155, *(v1 + 43), v157);

        sub_1001D0F20();

        (*(v156 + 8))(v155, v157);
      }

      goto LABEL_26;
    }

    if (v35 == 7)
    {
      v95 = v1[43];
      v96 = v1[44];
      sub_1001B0368(v1[53], v96, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      sub_1001AFCB4(v96, v95, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);

      v97 = sub_1001D0E50();
      v98 = sub_1001D1DC0();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = v1[43];
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v216 = v101;
        *v100 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v1[12] = sub_1001D23A0();
        v1[13] = v102;
        v232._countAndFlagsBits = 2629690;
        v232._object = 0xE300000000000000;
        sub_1001D18B0(v232);
        v233._countAndFlagsBits = 1953460082;
        v233._object = 0xE400000000000000;
        sub_1001D18B0(v233);
        v234._countAndFlagsBits = 41;
        v234._object = 0xE100000000000000;
        sub_1001D18B0(v234);
        v103 = sub_1000954E0(v1[12], v1[13], &v216);

        *(v100 + 4) = v103;
        *(v100 + 12) = 1024;
        v104 = *v99;
        sub_1001AFB98(v99, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
        *(v100 + 14) = v104;
        _os_log_impl(&_mh_execute_header, v97, v98, "%s trusted proxy node selected ohttpContext=%u", v100, 0x12u);
        sub_100011CF0(v101);
      }

      else
      {
        sub_1001AFB98(v1[43], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      }

      v128 = v1[28];
      v129 = *v1[44];
      os_unfair_lock_lock((v128 + 16));
      if ((*(v128 + 33) & 1) == 0)
      {
        v53 = *(v128 + 24);
        v200 = *(v128 + 32);
        v54 = v53 & 0xFFFFFFFFFFFFFF8;
        v208 = v129;
        if (v53 >> 62)
        {
          goto LABEL_98;
        }

        v130 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v130)
        {
          goto LABEL_59;
        }

LABEL_99:
        v188 = v1[28];
        sub_1001AFB84(v53, v200, 0, sub_1001428C4);
        v129 = v208;
        *(v188 + 24) = v208;
        *(v188 + 32) = 256;
      }

      v189 = v1[77];
      v50 = v1[60];
      v30 = v1[54];
      v190 = v1[44];
      v191 = v1[29];
      os_unfair_lock_unlock((v1[28] + 16));
      v192 = (*(v191 + v189) + *(**(v191 + v189) + 144));
      os_unfair_lock_lock(v192);
      v193 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      v194 = v192 + v193 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 156);
      *v194 = v129;
      v194[8] = 0;
      os_unfair_lock_unlock(v192);
      sub_1001AFB98(v190, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.TrustedProxyNodeSelected);
      v51 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse;
      goto LABEL_101;
    }

    if (v35 == 8)
    {
LABEL_26:
      v50 = v1[53];
      v30 = v1[54];
      sub_1001AFB98(v1[60], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
      v51 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type;
LABEL_101:
      v31 = v51;
      v29 = v50;
      goto LABEL_13;
    }

    v108 = v1[41];
    v107 = v1[42];
    sub_1001B0368(v1[53], v107, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
    v109 = v107 + *(v108 + 20);
    if (*(v109 + 9))
    {
      v110 = v1[60];
      v111 = v1[42];
LABEL_81:
      sub_1001AFB98(v111, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
      v154 = v110;
      goto LABEL_82;
    }

    v141 = *v109;
    v142 = *(v109 + 8);
    v1[4] = 0;
    v1[5] = 0xE000000000000000;
    v1[20] = v141;
    *(v1 + 168) = v142 & 1;
    sub_1001D2120();
    v144 = v1[4];
    v143 = v1[5];
    if ((v142 & 1) != 0 && ((1 << v141) & 0x73) == 0)
    {
      if (v141 == 2)
      {
        v214 = v1[4];
        v159 = sub_1001D0890();
        v161 = v160;
        sub_1001D0870();
        v162 = sub_1001D1710();
        v164 = v163;

        v165 = sub_1001D0E50();
        v166 = sub_1001D1DE0();

        if (os_log_type_enabled(v165, v166))
        {
          v206 = v1[42];
          v211 = v1[60];
          v167 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          *v167 = 136315906;
          sub_1001CFDA0();
          v199 = v159;
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v1[8] = sub_1001D23A0();
          v1[9] = v168;
          v241._countAndFlagsBits = 2629690;
          v241._object = 0xE300000000000000;
          sub_1001D18B0(v241);
          v242._countAndFlagsBits = 1953460082;
          v242._object = 0xE400000000000000;
          sub_1001D18B0(v242);
          v243._countAndFlagsBits = 41;
          v243._object = 0xE100000000000000;
          sub_1001D18B0(v243);
          v169 = sub_1000954E0(v1[8], v1[9], &v216);

          *(v167 + 4) = v169;
          *(v167 + 12) = 2082;
          v170 = sub_1000954E0(v214, v143, &v216);

          *(v167 + 14) = v170;
          *(v167 + 22) = 2080;
          v171 = sub_1000954E0(v199, v161, &v216);

          *(v167 + 24) = v171;
          *(v167 + 32) = 2080;
          v172 = sub_1000954E0(v162, v164, &v216);

          *(v167 + 34) = v172;
          _os_log_impl(&_mh_execute_header, v165, v166, "%s request denial: reason=%{public}s, type=%s, parameters=%s", v167, 0x2Au);
          swift_arrayDestroy();

          v153 = v206;
          goto LABEL_72;
        }

        v110 = v1[60];
        v158 = v1[42];
      }

      else
      {
        v173 = v1[29] + v1[76];
        v174 = (v173 + *(type metadata accessor for TrustedRequestConfiguration(0) + 112));
        if (v174[1])
        {
          v212 = *v174;
          v175 = v174[1];
        }

        else
        {
          v175 = 0xE300000000000000;
          v212 = 7104878;
        }

        v176 = sub_1001D0E50();
        v177 = sub_1001D1DE0();

        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          *v178 = 136315650;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v213[10] = sub_1001D23A0();
          v213[11] = v179;
          v244._countAndFlagsBits = 2629690;
          v244._object = 0xE300000000000000;
          sub_1001D18B0(v244);
          v245._countAndFlagsBits = 1953460082;
          v245._object = 0xE400000000000000;
          sub_1001D18B0(v245);
          v246._countAndFlagsBits = 41;
          v246._object = 0xE100000000000000;
          sub_1001D18B0(v246);
          v180 = sub_1000954E0(v213[10], v213[11], &v216);

          *(v178 + 4) = v180;
          *(v178 + 12) = 2082;
          v181 = sub_1000954E0(v144, v143, &v216);

          *(v178 + 14) = v181;
          *(v178 + 22) = 2082;
          *(v178 + 24) = sub_1000954E0(v212, v175, &v216);
          _os_log_impl(&_mh_execute_header, v176, v177, "%s request denial: reason=%{public}s, featureID=%{public}s", v178, 0x20u);
          swift_arrayDestroy();
          v1 = v213;
        }

        else
        {
        }

        v182 = sub_1001D0E50();
        v183 = sub_1001D1DF0();

        v184 = os_log_type_enabled(v182, v183);
        v110 = v1[60];
        v158 = v1[42];
        if (v184)
        {
          v185 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          v216 = v186;
          *v185 = 136315138;
          v187 = sub_1000954E0(v212, v175, &v216);

          *(v185 + 4) = v187;
          _os_log_impl(&_mh_execute_header, v182, v183, "FEATURE_ID_BLOCKED: %s", v185, 0xCu);
          sub_100011CF0(v186);

          goto LABEL_80;
        }
      }
    }

    else
    {

      v145 = sub_1001D0E50();
      v146 = sub_1001D1DE0();

      if (os_log_type_enabled(v145, v146))
      {
        v211 = v1[60];
        v147 = v1[42];
        v148 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        *v148 = 136315394;
        sub_1001CFDA0();
        v149 = v144;
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v213[6] = sub_1001D23A0();
        v213[7] = v150;
        v238._countAndFlagsBits = 2629690;
        v238._object = 0xE300000000000000;
        sub_1001D18B0(v238);
        v239._countAndFlagsBits = 1953460082;
        v239._object = 0xE400000000000000;
        sub_1001D18B0(v239);
        v240._countAndFlagsBits = 41;
        v240._object = 0xE100000000000000;
        sub_1001D18B0(v240);
        v151 = sub_1000954E0(v213[6], v213[7], &v216);

        *(v148 + 4) = v151;
        *(v148 + 12) = 2082;
        v152 = sub_1000954E0(v149, v143, &v216);

        *(v148 + 14) = v152;
        _os_log_impl(&_mh_execute_header, v145, v146, "%s request denial: reason=%{public}s", v148, 0x16u);
        swift_arrayDestroy();
        v1 = v213;

        v153 = v147;
LABEL_72:
        sub_1001AFB98(v153, type metadata accessor for Proto_Ropes_Common_DiagnosticInformation);
        v154 = v211;
LABEL_82:
        sub_1001AFB98(v154, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
        v32 = v1[54];
        goto LABEL_14;
      }

      v110 = v1[60];
      v158 = v1[42];
    }

LABEL_80:
    v111 = v158;
    goto LABEL_81;
  }

  if (v35 <= 2)
  {
    if (v35 < 2)
    {
      v36 = v1[60];
      v37 = v1[58];
      v38 = v1[54];
      sub_1001AFB98(v1[53], type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
      sub_100011F00(v38, &qword_10022AA88, &qword_1001D9620);
      sub_1001AFCB4(v36, v37, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);

      v39 = sub_1001D0E50();
      v40 = sub_1001D1DF0();

      if (os_log_type_enabled(v39, v40))
      {
        v207 = v1[60];
        v41 = v1[58];
        v42 = v1[55];
        v43 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        *v43 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v0[2] = sub_1001D23A0();
        v0[3] = v44;
        v226._countAndFlagsBits = 2629690;
        v226._object = 0xE300000000000000;
        sub_1001D18B0(v226);
        v227._countAndFlagsBits = 1953460082;
        v227._object = 0xE400000000000000;
        sub_1001D18B0(v227);
        v228._countAndFlagsBits = 41;
        v228._object = 0xE100000000000000;
        sub_1001D18B0(v228);
        v45 = sub_1000954E0(v0[2], v0[3], &v216);

        *(v43 + 4) = v45;
        *(v43 + 12) = 2080;
        sub_10001208C(v41, v42, &qword_10022AA88, &qword_1001D9620);
        v1 = v0;
        v46 = sub_1001D1820();
        v48 = v47;
        sub_1001AFB98(v41, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
        v49 = sub_1000954E0(v46, v48, &v216);

        *(v43 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v39, v40, "%s attestation response unexpected: %s", v43, 0x16u);
        swift_arrayDestroy();

        sub_1001AFB98(v207, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
      }

      else
      {
        v105 = v1[60];
        v106 = v1[58];

        sub_1001AFB98(v106, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
        sub_1001AFB98(v105, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
      }

      goto LABEL_15;
    }

    v90 = v1[60];
    v91 = v1[54];
    v92 = v1[51];
    v93 = v1[26];
    sub_1001B0368(v1[53], v92, type metadata accessor for Proto_Ropes_Common_Attestation);
    sub_10017ADEC(v92, v93);
    v94 = type metadata accessor for Proto_Ropes_Common_Attestation;
    goto LABEL_75;
  }

  if (v35 != 3)
  {
    v112 = v1[49];
    v113 = v1[50];
    sub_1001B0368(v1[53], v113, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    sub_1001AFCB4(v113, v112, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);

    v114 = sub_1001D0E50();
    v115 = sub_1001D1DD0();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = v1[49];
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v216 = v118;
      *v117 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v1[16] = sub_1001D23A0();
      v1[17] = v119;
      v235._countAndFlagsBits = 2629690;
      v235._object = 0xE300000000000000;
      sub_1001D18B0(v235);
      v236._countAndFlagsBits = 1953460082;
      v236._object = 0xE400000000000000;
      sub_1001D18B0(v236);
      v237._countAndFlagsBits = 41;
      v237._object = 0xE100000000000000;
      sub_1001D18B0(v237);
      v120 = sub_1000954E0(v1[16], v1[17], &v216);

      *(v117 + 4) = v120;
      *(v117 + 12) = 2048;
      v121 = *(*v116 + 16);
      sub_1001AFB98(v116, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
      *(v117 + 14) = v121;
      _os_log_impl(&_mh_execute_header, v114, v115, "%s received %ld rate limit configurations", v117, 0x16u);
      sub_100011CF0(v118);
    }

    else
    {
      sub_1001AFB98(v1[49], type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList);
    }

    v90 = v1[60];
    v91 = v1[54];
    v92 = v1[50];
    sub_10017B838(v92);
    v94 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfigurationList;
LABEL_75:
    sub_1001AFB98(v92, v94);
    sub_1001AFB98(v90, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
    v32 = v91;
    goto LABEL_14;
  }

  v52 = v1[27];
  sub_1001644FC();
  os_unfair_lock_lock((v52 + 16));
  if (*(v52 + 33))
  {
LABEL_104:
    v196 = v1[60];
    v198 = v1[53];
    v197 = v1[54];
    os_unfair_lock_unlock((v1[27] + 16));
    sub_1001AFB98(v196, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
    sub_1001AFB98(v198, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.OneOf_Type);
    v32 = v197;
    goto LABEL_14;
  }

  v53 = *(v52 + 24);
  v54 = v53 & 0xFFFFFFFFFFFFFF8;
  v201 = *(v52 + 32);
  if (v53 >> 62)
  {
    v55 = sub_1001D2190();
    if (v55)
    {
      goto LABEL_31;
    }

    goto LABEL_103;
  }

  v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
LABEL_103:
    v195 = v1[27];
    sub_1001AFB84(v53, v201, 0, sub_1001428C4);
    *(v195 + 24) = 0;
    *(v195 + 32) = 256;
    goto LABEL_104;
  }

LABEL_31:
  v56 = 0;
  v203 = v55;
  v208 = v53 & 0xC000000000000001;
  while (v208)
  {
    v35 = sub_1001D2040();
    v57 = v35;
    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_36:
    v59 = v1[61];
    v60 = v1[62];
    v61 = (v57 + *(*v57 + 88));
    os_unfair_lock_lock(v61);
    v62 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
    if (!(*(v60 + 48))(v61 + v62, 1, v59))
    {
      v63 = v54;
      v64 = v53;
      v65 = v213[62];
      v66 = v213[63];
      v67 = v213[61];
      (*(v65 + 16))(v66, v61 + v62, v67);
      sub_1001D1AA0();
      (*(v65 + 8))(v66, v67);
      v53 = v64;
      v54 = v63;
      v55 = v203;
    }

    os_unfair_lock_unlock(v61);

    ++v56;
    v1 = v213;
    if (v58 == v55)
    {
      goto LABEL_103;
    }
  }

  if (v56 < *(v54 + 16))
  {
    v57 = *(v53 + 8 * v56 + 32);

    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  v130 = sub_1001D2190();
  if (!v130)
  {
    goto LABEL_99;
  }

LABEL_59:
  if (v130 >= 1)
  {
    v131 = 0;
    v132 = v53 & 0xC000000000000001;
    v205 = v130;
    do
    {
      if (v132)
      {
        v133 = sub_1001D2040();
      }

      else
      {
        if (v131 >= *(v54 + 16))
        {
          goto LABEL_97;
        }

        v133 = *(v53 + 8 * v131 + 32);
      }

      v134 = v1[30];
      v135 = v1[31];
      v136 = (v133 + *(*v133 + 88));
      os_unfair_lock_lock(v136);
      v137 = *(sub_100011AC0(&qword_10022F198, &qword_1001E0718) + 28);
      if (!(*(v135 + 48))(v136 + v137, 1, v134))
      {
        v139 = v213[31];
        v138 = v213[32];
        v140 = v213[30];
        (*(v139 + 16))(v138, v136 + v137, v140);
        v213[24] = v208;
        v130 = v205;
        sub_1001D1AA0();
        (*(v139 + 8))(v138, v140);
        v132 = v53 & 0xC000000000000001;
      }

      ++v131;
      os_unfair_lock_unlock(v136);

      v1 = v213;
    }

    while (v130 != v131);
    goto LABEL_99;
  }

  __break(1u);
}