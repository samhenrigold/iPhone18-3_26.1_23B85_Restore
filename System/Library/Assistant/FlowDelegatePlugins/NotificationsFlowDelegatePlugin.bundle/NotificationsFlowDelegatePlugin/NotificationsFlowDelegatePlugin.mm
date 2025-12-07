uint64_t sub_12C8()
{
  v0 = swift_allocObject();
  sub_1300();
  return v0;
}

uint64_t sub_1300()
{
  sub_26EC();
  sub_271C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_26DC();

  return v0;
}

uint64_t sub_1378@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a1;
  v30 = a2;
  v2 = sub_264C();
  sub_1E78();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = sub_275C();
  sub_1E78();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26AC();
  sub_26CC();
  sub_26BC();
  sub_26FC();
  sub_271C();
  swift_allocObject();
  v16 = *(*sub_270C() + 104);

  v17 = v30;
  v16(v32);

  v18 = sub_1FC8();
  swift_beginAccess();
  v31 = v12;
  v32 = v10;
  (*(v12 + 16))(v15, v18, v10);
  v19 = *(v4 + 16);
  v19(v9, v17, v2);
  v30 = v15;
  v20 = sub_274C();
  v21 = sub_279C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33[0] = v23;
    *v22 = 136315138;
    v19(v29, v9, v2);
    v24 = sub_277C();
    v26 = v25;
    (*(v4 + 8))(v9, v2);
    v27 = sub_1798(v24, v26, v33);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v20, v21, "NotificationsFlowDelegatePlugin findFlowForX | flowSearchResult: %s", v22, 0xCu);
    sub_1D08(v23);
  }

  else
  {

    (*(v4 + 8))(v9, v2);
  }

  return (*(v31 + 8))(v30, v32);
}

uint64_t sub_174C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

unint64_t sub_1798(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_185C(v11, 0, 0, 1, a1, a2);
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
    sub_1DD0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1D08(v11);
  return v7;
}

unint64_t sub_185C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_195C(a5, a6);
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
    result = sub_27EC();
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

char *sub_195C(uint64_t a1, unint64_t a2)
{
  v3 = sub_19A8(a1, a2);
  sub_1AC0(&off_4250);
  return v3;
}

char *sub_19A8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_278C())
  {
    result = sub_1BA4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_27DC();
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
          result = sub_27EC();
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

uint64_t sub_1AC0(uint64_t result)
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

    result = sub_1C14(result, v7, 1, v3);
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

void *sub_1BA4(uint64_t a1, uint64_t a2)
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

  sub_1E2C(&qword_8140, qword_2A90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1C14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E2C(&qword_8140, qword_2A90);
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

uint64_t sub_1D08(void *a1)
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

unint64_t sub_1D58(uint64_t a1, uint64_t a2)
{
  result = qword_8098;
  if (!qword_8098)
  {
    type metadata accessor for NotificationsFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8098);
  }

  return result;
}

uint64_t sub_1DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1EA4()
{
  sub_2530();
  result = sub_27CC();
  qword_8268 = result;
  return result;
}

uint64_t *sub_1F0C()
{
  if (qword_8250 != -1)
  {
    sub_2618(&qword_8250);
  }

  return &qword_8268;
}

uint64_t sub_1F4C()
{
  v0 = sub_275C();
  sub_2574(v0, qword_8270);
  sub_201C(v0, qword_8270);
  if (qword_8250 != -1)
  {
    sub_2618(&qword_8250);
  }

  v1 = qword_8268;
  return sub_276C();
}

uint64_t sub_1FC8()
{
  if (qword_8258 != -1)
  {
    sub_25F8(&qword_8258);
  }

  v0 = sub_275C();

  return sub_201C(v0, qword_8270);
}

uint64_t sub_201C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2054@<X0>(uint64_t a1@<X8>)
{
  if (qword_8258 != -1)
  {
    sub_25F8(&qword_8258);
  }

  v2 = sub_275C();
  v3 = sub_201C(v2, qword_8270);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2104(uint64_t a1)
{
  if (qword_8258 != -1)
  {
    sub_25F8(&qword_8258);
  }

  v2 = sub_275C();
  v3 = sub_201C(v2, qword_8270);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_21E8(uint64_t a1))(uint64_t a1)
{
  if (qword_8258 != -1)
  {
    sub_25F8(&qword_8258);
  }

  v1 = sub_275C();
  sub_201C(v1, qword_8270);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2270()
{
  sub_2530();
  result = sub_27CC();
  qword_8288 = result;
  return result;
}

uint64_t *sub_22D8()
{
  if (qword_8260 != -1)
  {
    sub_25D8(&qword_8260);
  }

  return &qword_8288;
}

id sub_2318()
{
  if (qword_8260 != -1)
  {
    sub_25D8(&qword_8260);
  }

  v1 = qword_8288;

  return v1;
}

uint64_t sub_2364()
{
  if (qword_8260 != -1)
  {
    sub_25D8(&qword_8260);
  }

  v0 = qword_8288;

  return sub_273C();
}

uint64_t sub_23CC()
{
  if (qword_8260 != -1)
  {
    sub_25D8(&qword_8260);
  }

  v0 = qword_8288;
  sub_273C();
  sub_27BC();
  sub_2638();

  return os_signpost(_:dso:log:name:signpostID:)(v1);
}

uint64_t sub_2464()
{
  sub_27AC();
  if (qword_8260 != -1)
  {
    sub_25D8(&qword_8260);
  }

  sub_2638();

  return os_signpost(_:dso:log:name:signpostID:)(v0);
}

unint64_t sub_2530()
{
  result = qword_8148;
  if (!qword_8148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8148);
  }

  return result;
}

uint64_t *sub_2574(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_25D8(uint64_t a1)
{

  return _swift_once(a1, sub_2270);
}

uint64_t sub_25F8(uint64_t a1)
{

  return _swift_once(a1, sub_1F4C);
}

uint64_t sub_2618(uint64_t a1)
{

  return _swift_once(a1, sub_1EA4);
}