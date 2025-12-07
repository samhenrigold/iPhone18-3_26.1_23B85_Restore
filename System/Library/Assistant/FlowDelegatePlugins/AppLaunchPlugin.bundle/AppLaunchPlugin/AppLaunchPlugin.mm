uint64_t sub_1248()
{
  v0 = swift_allocObject();
  sub_1280();
  return v0;
}

uint64_t sub_1280()
{
  v1 = v0;
  v2 = sub_312C();
  sub_2C00();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_2C54();
  v8 = v7 - v6;
  if (qword_8098 != -1)
  {
    sub_2C34(&qword_8098);
  }

  sub_2CF8(v2, qword_8278);
  (*(v4 + 16))(v8);
  v9 = sub_311C();
  v10 = sub_316C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_2C9C();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Initializing AppLaunchPlugin", v11, 2u);
    sub_2C64(v11);
  }

  (*(v4 + 8))(v8, v2);
  return v1;
}

void sub_13E4(uint64_t a1, uint64_t a2)
{
  sub_2CC8();
  v37 = v2;
  v38 = v3;
  v4 = sub_312C();
  sub_2C00();
  v36 = v5;
  __chkstk_darwin(v6);
  sub_2C54();
  v35 = v8 - v7;
  v9 = sub_308C();
  sub_2C00();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_2C54();
  v15 = v14 - v13;
  v16 = sub_30BC();
  sub_2C00();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_2C54();
  v22 = v21 - v20;
  if (qword_80A0 != -1)
  {
    sub_2C14(&qword_80A0);
  }

  sub_2CF8(v16, qword_8290);
  (*(v18 + 16))(v22);
  sub_307C();
  v23 = sub_30AC();
  v24 = sub_319C();
  if (sub_31AC())
  {
    v34 = v9;
    v25 = v4;
    v26 = sub_2C9C();
    *v26 = 0;
    v27 = sub_306C();
    _os_signpost_emit_with_name_impl(&dword_0, v23, v24, v27, "AppLaunchPlugin#warmup", "", v26, 2u);
    v28 = v26;
    v4 = v25;
    v9 = v34;
    sub_2C64(v28);
  }

  (*(v11 + 8))(v15, v9);
  (*(v18 + 8))(v22, v16);
  if (qword_8098 != -1)
  {
    sub_2C34(&qword_8098);
  }

  sub_2CF8(v4, qword_8278);
  (*(v36 + 16))(v35);

  v29 = sub_311C();
  v30 = sub_316C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v4;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_259C(v37, v38, &v39);
    _os_log_impl(&dword_0, v29, v30, "AppLaunchPlugin#warmup for %s", v32, 0xCu);
    sub_2B0C(v33);
    sub_2C64(v33);
    sub_2C64(v32);

    (*(v36 + 8))(v35, v31);
  }

  else
  {

    (*(v36 + 8))(v35, v4);
  }

  sub_304C();
  sub_2CE0();
}

void sub_179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_2CC8();
  a19 = v20;
  a20 = v21;
  v76 = v22;
  v78 = sub_2FFC();
  sub_2C00();
  v77 = v23;
  __chkstk_darwin(v24);
  sub_2C54();
  sub_2C8C(v26 - v25);
  v80 = sub_312C();
  sub_2C00();
  v79 = v27;
  __chkstk_darwin(v28);
  sub_2C7C();
  v74 = v29 - v30;
  __chkstk_darwin(v31);
  sub_2C8C(&v73 - v32);
  v33 = sub_308C();
  sub_2C00();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_2C7C();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  v42 = &v73 - v41;
  v43 = sub_30BC();
  sub_2C00();
  v45 = v44;
  __chkstk_darwin(v46);
  sub_2C54();
  v49 = v48 - v47;
  if (qword_80A0 != -1)
  {
    sub_2C14(&qword_80A0);
  }

  sub_2CF8(v43, qword_8290);
  (*(v45 + 16))(v49);
  sub_307C();
  v50 = sub_30AC();
  v51 = sub_318C();
  if (sub_31AC())
  {
    v52 = sub_2C9C();
    v73 = v33;
    v53 = v52;
    *v52 = 0;
    v54 = sub_306C();
    _os_signpost_emit_with_name_impl(&dword_0, v50, v51, v54, "appLaunchPluginMakeFlow", "", v53, 2u);
    v55 = v53;
    v33 = v73;
    sub_2C64(v55);
  }

  (*(v35 + 16))(v39, v42, v33);
  sub_30FC();
  swift_allocObject();
  v56 = sub_30EC();
  (*(v35 + 8))(v42, v33);
  (*(v45 + 8))(v49, v43);
  if (qword_8098 != -1)
  {
    sub_2C34(&qword_8098);
  }

  v57 = v80;
  sub_2510(v80, qword_8278);
  v58 = v79;
  v59 = *(v79 + 16);
  v60 = sub_2CB4(&a9);
  v59(v60);
  v61 = sub_311C();
  v62 = sub_316C();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v75;
  if (v63)
  {
    v65 = sub_2C9C();
    *v65 = 0;
    _os_log_impl(&dword_0, v61, v62, "AppLaunchPlugin#makeFlowFor", v65, 2u);
    sub_2C64(v65);
  }

  v66 = *(v58 + 8);
  v66(v81, v57);
  sub_305C();
  sub_303C();
  sub_2548(&v82);
  if (sub_2FEC())
  {
    (*(v77 + 8))(v64, v78);
    sub_2134(v56, v67, v68);

    sub_2CE0();
  }

  else
  {
    v69 = sub_2CB4(v83);
    v59(v69);
    v70 = sub_311C();
    v71 = sub_315C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = sub_2C9C();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "Unable to create a flow. Crashing.", v72, 2u);
      sub_2C64(v72);
    }

    v66(v74, v80);
    sub_31EC();
    __break(1u);
  }
}

void sub_1D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2CC8();
  v4 = v3;
  v46 = v5;
  v45 = sub_312C();
  sub_2C00();
  v44 = v6;
  __chkstk_darwin(v7);
  sub_2C54();
  sub_2C8C(v9 - v8);
  v42 = sub_308C();
  sub_2C00();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_2C7C();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = v41 - v17;
  v19 = sub_30BC();
  sub_2C00();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_2C54();
  v25 = v24 - v23;
  if (qword_80A0 != -1)
  {
    sub_2C14(&qword_80A0);
  }

  sub_2CF8(v19, qword_8290);
  (*(v21 + 16))(v25);
  sub_307C();
  v26 = sub_30AC();
  v27 = sub_318C();
  if (sub_31AC())
  {
    v28 = sub_2C9C();
    v41[1] = v4;
    v29 = v28;
    *v28 = 0;
    v30 = sub_306C();
    _os_signpost_emit_with_name_impl(&dword_0, v26, v27, v30, "appLaunchPluginMakeFlow", "", v29, 2u);
    sub_2C64(v29);
  }

  v31 = v42;
  (*(v11 + 16))(v15, v18, v42);
  sub_30FC();
  swift_allocObject();
  v32 = sub_30EC();
  (*(v11 + 8))(v18, v31);
  (*(v21 + 8))(v25, v19);
  if (qword_8098 != -1)
  {
    sub_2C34(&qword_8098);
  }

  v33 = v45;
  sub_2CF8(v45, qword_8278);
  v34 = v44;
  v35 = v43;
  (*(v44 + 16))(v43);
  v36 = sub_311C();
  v37 = sub_316C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = sub_2C9C();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "AppLaunchPlugin#findFlowForX", v38, 2u);
    sub_2C64(v38);
  }

  (*(v34 + 8))(v35, v33);
  sub_305C();
  sub_303C();
  sub_2548(&v47);
  sub_2134(v32, v39, v40);

  sub_2CE0();
}

void sub_2134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2CC8();
  v3 = sub_30CC();
  sub_2C00();
  v27 = v4;
  __chkstk_darwin(v5);
  sub_2C54();
  v8 = v7 - v6;
  v28 = sub_308C();
  sub_2C00();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_2C54();
  v14 = v13 - v12;
  v15 = sub_30BC();
  sub_2C00();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_2C54();
  v21 = v20 - v19;
  if (qword_80A0 != -1)
  {
    sub_2C14(&qword_80A0);
  }

  sub_2CF8(v15, qword_8290);
  (*(v17 + 16))(v21);
  v22 = sub_30AC();
  sub_30DC();
  v26 = sub_317C();
  if (sub_31AC())
  {

    sub_310C();

    if ((*(v27 + 88))(v8, v3) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v23 = "[Error] Interval already ended";
    }

    else
    {
      (*(v27 + 8))(v8, v3);
      v23 = "";
    }

    v24 = sub_2C9C();
    *v24 = 0;
    v25 = sub_306C();
    _os_signpost_emit_with_name_impl(&dword_0, v22, v26, v25, "appLaunchPluginMakeFlow", v23, v24, 2u);
    sub_2C64(v24);
  }

  (*(v10 + 8))(v14, v28);
  (*(v17 + 8))(v21, v15);
  sub_2CE0();
}

uint64_t sub_2454@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1248();
  *a1 = result;
  return result;
}

unint64_t sub_24BC()
{
  result = qword_8158;
  if (!qword_8158)
  {
    type metadata accessor for AppLaunchPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8158);
  }

  return result;
}

uint64_t sub_2510(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_259C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2660(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2B58(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2B0C(v11);
  return v7;
}

unint64_t sub_2660(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2760(a5, a6);
    *a1 = v9;
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
    result = sub_31DC();
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

char *sub_2760(uint64_t a1, unint64_t a2)
{
  v3 = sub_27AC(a1, a2);
  sub_28C4(&off_4358);
  return v3;
}

char *sub_27AC(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_314C())
  {
    result = sub_29A8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_31CC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_31DC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_28C4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2A18(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29A8(uint64_t a1, uint64_t a2)
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

  sub_2BB4(&qword_8160, qword_3458);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2A18(char *result, int64_t a2, char a3, char *a4)
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
    sub_2BB4(&qword_8160, qword_3458);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_2B0C(void *a1)
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

uint64_t sub_2B58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2BB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2C14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2C34(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2C64(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t sub_2C9C()
{

  return swift_slowAlloc();
}

uint64_t sub_2D10()
{
  sub_2D7C();
  result = sub_31BC();
  qword_8270 = result;
  return result;
}

unint64_t sub_2D7C()
{
  result = qword_8168;
  if (!qword_8168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8168);
  }

  return result;
}

uint64_t sub_2DC0()
{
  v0 = sub_312C();
  sub_2E4C(v0, qword_8278);
  sub_2510(v0, qword_8278);
  if (qword_8090 != -1)
  {
    swift_once();
  }

  v1 = qword_8270;
  return sub_313C();
}

uint64_t *sub_2E4C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2EB0()
{
  v0 = sub_312C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30BC();
  sub_2E4C(v4, qword_8290);
  sub_2510(v4, qword_8290);
  if (qword_8098 != -1)
  {
    swift_once();
  }

  v5 = sub_2510(v0, qword_8278);
  (*(v1 + 16))(v3, v5, v0);
  return sub_309C();
}