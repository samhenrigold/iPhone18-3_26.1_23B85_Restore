uint64_t sub_117C()
{
  v0 = sub_2764();
  sub_14C8(v0, qword_83A0);
  sub_1254(v0, qword_83A0);
  sub_152C();
  sub_27C4();
  return sub_2774();
}

uint64_t sub_1200()
{
  if (qword_8290 != -1)
  {
    sub_1570(&qword_8290);
  }

  v0 = sub_2764();

  return sub_1254(v0, qword_83A0);
}

uint64_t sub_1254(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_128C@<X0>(uint64_t a1@<X8>)
{
  if (qword_8290 != -1)
  {
    sub_1570(&qword_8290);
  }

  v2 = sub_2764();
  v3 = sub_1254(v2, qword_83A0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_133C(uint64_t a1)
{
  if (qword_8290 != -1)
  {
    sub_1570(&qword_8290);
  }

  v2 = sub_2764();
  v3 = sub_1254(v2, qword_83A0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1420(uint64_t a1))(uint64_t a1)
{
  if (qword_8290 != -1)
  {
    sub_1570(&qword_8290);
  }

  v1 = sub_2764();
  sub_1254(v1, qword_83A0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *sub_14C8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_152C()
{
  result = qword_8120;
  if (!qword_8120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8120);
  }

  return result;
}

uint64_t sub_1570(uint64_t a1)
{

  return _swift_once(a1, sub_117C);
}

uint64_t PCSReadingFlowPluginBase.__allocating_init()()
{
  v0 = swift_allocObject();
  PCSReadingFlowPluginBase.init()();
  return v0;
}

uint64_t PCSReadingFlowPluginBase.init()()
{
  v1 = v0;
  v2 = sub_2764();
  sub_25A4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_25B8();
  v8 = v7 - v6;
  v9 = sub_1200();
  sub_25E0(v9, v14);
  (*(v4 + 16))(v8, v9, v2);
  v10 = sub_2754();
  v11 = sub_27A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_262C();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "PCSReadingFlowPluginBase init | invoked.", v12, 2u);
    sub_25C8(v12);
  }

  (*(v4 + 8))(v8, v2);
  return v1;
}

uint64_t PCSReadingFlowPluginBase.findFlowForX(parse:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v70 = a2;
  v66 = sub_2734();
  sub_25A4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_25B8();
  v64 = v6 - v5;
  v7 = sub_2744();
  sub_25A4();
  v71 = v8;
  __chkstk_darwin(v9);
  sub_25F8();
  v60 = v10;
  sub_2620();
  __chkstk_darwin(v11);
  v62 = &v59 - v12;
  sub_2620();
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v16 = sub_2764();
  sub_25A4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_25F8();
  v61 = v20;
  sub_2620();
  __chkstk_darwin(v21);
  v63 = &v59 - v22;
  sub_2620();
  __chkstk_darwin(v23);
  v25 = &v59 - v24;
  v26 = sub_1200();
  sub_25E0(v26, v75);
  v27 = *(v18 + 16);
  v72 = v16;
  v65 = v27;
  v27(v25, v26, v16);
  v28 = sub_2754();
  v29 = sub_27A4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = sub_262C();
    v69 = v3;
    v31 = v7;
    v32 = v15;
    v33 = v18;
    v34 = v30;
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "PCSReadingFlowPluginBase findFlowForX | invoked.", v30, 2u);
    v35 = v34;
    v18 = v33;
    v15 = v32;
    v7 = v31;
    v3 = v69;
    sub_25C8(v35);
  }

  v36 = v72;
  v68 = *(v18 + 8);
  v69 = v18 + 8;
  v68(v25, v72);
  v37 = v71;
  v38 = *(v71 + 16);
  v39 = v67;
  (v38)(v15, v67, v7);
  if ((*(v37 + 88))(v15, v7) == enum case for Parse.directInvocation(_:))
  {
    (*(v37 + 96))(v15, v7);
    v40 = v64;
    (*(v3 + 32))(v64, v15, v66);
    sub_25E0(v26, v74);
    v41 = v61;
    v65(v61, v26, v36);
    v42 = sub_2754();
    v43 = sub_27A4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = sub_262C();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "PCSReadingFlowPluginBase findFlowForX | received a direct invocation.", v44, 2u);
      sub_25C8(v44);
    }

    v68(v41, v72);
    PCSReadingFlowPluginBase.makeFlowFor(directInvocation:)();
    (*(v3 + 8))(v40, v66);
    return sub_26D4();
  }

  else
  {
    sub_25E0(v26, v74);
    v46 = v63;
    v65(v63, v26, v36);
    v47 = v62;
    (v38)(v62, v39, v7);
    v48 = v36;
    v49 = sub_2754();
    v50 = sub_27B4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v73 = v67;
      *v51 = 136315138;
      (v38)(v60, v47, v7);
      v52 = sub_2784();
      v54 = v53;
      sub_260C();
      v38();
      v55 = sub_1EC4(v52, v54, &v73);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_0, v49, v50, "PCSReadingFlowPluginBase findFlowForX | Unknown or unsupported parse received: %s", v51, 0xCu);
      v56 = v67;
      sub_2434(v67);
      sub_25C8(v56);
      sub_25C8(v51);

      v57 = v46;
      v58 = v72;
    }

    else
    {

      sub_260C();
      (v38)(v47, v7);
      v57 = v46;
      v58 = v48;
    }

    v68(v57, v58);
    sub_26D4();
    return (v38)(v15, v7);
  }
}

uint64_t PCSReadingFlowPluginBase.makeFlowFor(directInvocation:)()
{
  v0 = sub_2764();
  sub_25A4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_25B8();
  v6 = v5 - v4;
  v7 = sub_1200();
  sub_25E0(v7, v12);
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_2754();
  v9 = sub_27A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_262C();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "PCSReadingFlowPlugin makeFlowFor | invoked.", v10, 2u);
    sub_25C8(v10);
  }

  (*(v2 + 8))(v6, v0);
  return 0;
}

uint64_t sub_1E78@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

unint64_t sub_1EC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1F88(v11, 0, 0, 1, a1, a2);
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
    sub_24FC(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2434(v11);
  return v7;
}

unint64_t sub_1F88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2088(a5, a6);
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
    result = sub_27E4();
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

char *sub_2088(uint64_t a1, unint64_t a2)
{
  v3 = sub_20D4(a1, a2);
  sub_21EC(&off_4318);
  return v3;
}

char *sub_20D4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2794())
  {
    result = sub_22D0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_27D4();
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
          result = sub_27E4();
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

uint64_t sub_21EC(uint64_t result)
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

    result = sub_2340(result, v7, 1, v3);
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

void *sub_22D0(uint64_t a1, uint64_t a2)
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

  sub_2558(&qword_81D8, &unk_2B60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2340(char *result, int64_t a2, char a3, char *a4)
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
    sub_2558(&qword_81D8, &unk_2B60);
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

uint64_t sub_2434(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2484(uint64_t a1, uint64_t a2)
{
  result = qword_8128;
  if (!qword_8128)
  {
    type metadata accessor for PCSReadingFlowPluginBase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8128);
  }

  return result;
}

uint64_t sub_24FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2558(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25C8(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t sub_25E0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_262C()
{

  return swift_slowAlloc();
}

uint64_t sub_2680()
{
  v0 = PCSReadingFlowPluginBase.deinit();

  return _swift_deallocClassInstance(v0, 16, 7);
}