uint64_t sub_12E8()
{
  v0 = sub_2AD0();
  sub_1374(v0, qword_8168);
  sub_13D8(v0, qword_8168);
  if (qword_80A0 != -1)
  {
    swift_once();
  }

  v1 = qword_8198;
  return sub_2AE0();
}

uint64_t *sub_1374(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_13D8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1410()
{
  v0 = sub_2AD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2A60();
  sub_1374(v4, qword_8180);
  sub_13D8(v4, qword_8180);
  if (qword_8090 != -1)
  {
    swift_once();
  }

  v5 = sub_13D8(v0, qword_8168);
  (*(v1 + 16))(v3, v5, v0);
  return sub_2A40();
}

uint64_t sub_154C()
{
  sub_15B4();
  result = sub_2B50();
  qword_8198 = result;
  return result;
}

unint64_t sub_15B4()
{
  result = qword_80A8;
  if (!qword_80A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_80A8);
  }

  return result;
}

uint64_t sub_15F8()
{
  v0 = swift_allocObject();
  sub_1630();
  return v0;
}

uint64_t sub_1630()
{
  v1 = v0;
  v2 = sub_2AD0();
  sub_284C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_2880();
  v8 = v7 - v6;
  if (qword_8090 != -1)
  {
    sub_2860(&qword_8090);
  }

  sub_13D8(v2, qword_8168);
  v9 = sub_28FC();
  v10(v9);
  v11 = sub_2AC0();
  v12 = sub_2B00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_28D8();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Initializing VideoFlowDelegatePlugin", v13, 2u);
    sub_28C0(v13);
  }

  (*(v4 + 8))(v8, v2);
  return v1;
}

uint64_t sub_178C(uint64_t a1)
{
  v49 = a1;
  v52 = *v1;
  v51 = sub_2950();
  sub_284C();
  v50 = v2;
  __chkstk_darwin(v3);
  sub_2880();
  v6 = v5 - v4;
  v53 = sub_2AD0();
  sub_284C();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_28B0();
  v48 = (v10 - v11);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_2A30();
  sub_284C();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_28B0();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  if (qword_8098 != -1)
  {
    sub_2890(&qword_8098);
  }

  v25 = sub_2A60();
  sub_13D8(v25, qword_8180);
  sub_2A20();
  v26 = sub_2A50();
  v27 = sub_2B20();
  if (sub_2B40())
  {
    v28 = sub_28D8();
    v47 = v14;
    sub_28F0(v28);
    v29 = sub_2A10();
    _os_signpost_emit_with_name_impl(&dword_0, v26, v27, v29, "makeFlowFor", "", v8, 2u);
    v14 = v47;
    sub_28C0(v8);
  }

  (*(v17 + 16))(v21, v24, v15);
  sub_2AA0();
  swift_allocObject();
  v30 = sub_2A90();
  (*(v17 + 8))(v24, v15);
  if (qword_8090 != -1)
  {
    sub_2860(&qword_8090);
  }

  v31 = v53;
  v32 = sub_13D8(v53, qword_8168);
  v33 = *(v8 + 16);
  v33(v14, v32, v31);
  v34 = sub_2AC0();
  v35 = sub_2B00();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = sub_28D8();
    v47 = v30;
    sub_28F0(v36);
    sub_2910(&dword_0, v37, v38, "VideoFlowDelegatePlugin#makeFlowFor");
    v30 = v47;
    sub_28C0(v8);
  }

  v39 = *(v8 + 8);
  v39(v14, v31);
  sub_29C0();
  sub_29A0();
  sub_27F8(v54);
  v40 = sub_2930();
  if (v40)
  {
    v41 = v40;
    (*(v50 + 8))(v6, v51);
    sub_2258(v30);

    return v41;
  }

  else
  {
    v33(v48, v32, v31);
    v43 = sub_2AC0();
    v44 = sub_2AF0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = sub_28D8();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "Unable to create a flow. Crashing.", v45, 2u);
      sub_28C0(v45);
    }

    v39(v48, v53);
    result = sub_2B60();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v59 = a2;
  v3 = *v2;
  v53 = sub_2AD0();
  sub_284C();
  v52 = v4;
  __chkstk_darwin(v5);
  sub_2880();
  v51 = v7 - v6;
  v56 = sub_29F0();
  sub_284C();
  v55 = v8;
  __chkstk_darwin(v9);
  sub_2880();
  v54 = v11 - v10;
  v57 = sub_2990();
  sub_284C();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_2880();
  v17 = v16 - v15;
  v18 = sub_2A30();
  sub_284C();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_28B0();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v50 - v26;
  if (qword_8098 != -1)
  {
    sub_2890(&qword_8098);
  }

  v28 = sub_2A60();
  sub_13D8(v28, qword_8180);
  sub_2A20();
  v29 = sub_2A50();
  v30 = sub_2B20();
  if (sub_2B40())
  {
    v31 = sub_28D8();
    v50 = v3;
    v32 = v31;
    *v31 = 0;
    v33 = sub_2A10();
    _os_signpost_emit_with_name_impl(&dword_0, v29, v30, v33, "makeFlowFor", "", v32, 2u);
    sub_28C0(v32);
  }

  (*(v20 + 16))(v24, v27, v18);
  sub_2AA0();
  swift_allocObject();
  v34 = sub_2A90();
  (*(v20 + 8))(v27, v18);
  v35 = v57;
  (*(v13 + 16))(v17, v58, v57);
  v36 = (*(v13 + 88))(v17, v35);
  v37 = enum case for Parse.NLv3IntentOnly(_:);
  (*(v13 + 8))(v17, v35);
  if (v36 == v37 && (v38 = v54, sub_29E0(), v39 = sub_29D0(), (*(v55 + 8))(v38, v56), v39))
  {
    if (qword_8090 != -1)
    {
      sub_2860(&qword_8090);
    }

    v40 = v53;
    v41 = sub_13D8(v53, qword_8168);
    v42 = v52;
    v43 = v51;
    (*(v52 + 16))(v51, v41, v40);
    v44 = sub_2AC0();
    v45 = sub_2B00();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = sub_28D8();
      sub_28F0(v46);
      sub_2910(&dword_0, v47, v48, "Got frame from controls project, using it");
      sub_28C0(v35);
    }

    (*(v42 + 8))(v43, v40);
    sub_2940();
  }

  else
  {
    sub_29C0();
    sub_29A0();
    sub_27F8(v60);
  }

  sub_2258(v34);
}

uint64_t sub_2258(uint8_t *a1)
{
  v2 = sub_2A70();
  sub_284C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_2880();
  v8 = v7 - v6;
  v9 = sub_2A30();
  sub_284C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_2880();
  v15 = v14 - v13;
  if (qword_8098 != -1)
  {
    sub_2890(&qword_8098);
  }

  v16 = sub_2A60();
  sub_13D8(v16, qword_8180);
  v17 = sub_2A50();
  sub_2A80();
  v18 = sub_2B10();
  if (sub_2B40())
  {

    sub_2AB0();

    if ((*(v4 + 88))(v8, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v8, v2);
      v19 = "";
    }

    v20 = sub_28D8();
    sub_28F0(v20);
    v21 = sub_2A10();
    _os_signpost_emit_with_name_impl(&dword_0, v17, v18, v21, "makeFlowFor", v19, a1, 2u);
    sub_28C0(a1);
  }

  return (*(v11 + 8))(v15, v9);
}

uint64_t sub_2498()
{
  v0 = sub_2AD0();
  sub_284C();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_2880();
  v6 = v5 - v4;
  v7 = sub_2A30();
  sub_284C();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_2880();
  v13 = v12 - v11;
  v14 = sub_2B30();
  if (qword_80A0 != -1)
  {
    swift_once();
  }

  sub_2A20();
  sub_2A00();
  (*(v9 + 8))(v13, v7);
  if (qword_8090 != -1)
  {
    sub_2860(&qword_8090);
  }

  sub_13D8(v0, qword_8168);
  v15 = sub_28FC();
  v16(v15);
  v17 = sub_2AC0();
  v18 = sub_2B00();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_28D8();
    sub_28F0(v19);
    _os_log_impl(&dword_0, v17, v18, "Plugin received warmup signal", v14, 2u);
    sub_28C0(v14);
  }

  (*(v2 + 8))(v6, v0);
  return sub_29B0();
}

uint64_t sub_2730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_15F8();
  *a1 = result;
  return result;
}

unint64_t sub_27A4()
{
  result = qword_8160;
  if (!qword_8160)
  {
    type metadata accessor for VideoFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8160);
  }

  return result;
}

uint64_t sub_2860(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2890(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_28C0(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t sub_28D8()
{

  return swift_slowAlloc();
}

void sub_2910(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}