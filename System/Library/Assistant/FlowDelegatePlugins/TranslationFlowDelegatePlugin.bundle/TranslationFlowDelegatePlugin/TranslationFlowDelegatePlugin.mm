uint64_t sub_1250()
{
  sub_1CB0();
  result = sub_1E24();
  qword_8198 = result;
  return result;
}

uint64_t *sub_12B8()
{
  if (qword_82B0 != -1)
  {
    sub_1CF4(&qword_82B0);
  }

  return &qword_8198;
}

id sub_12F8()
{
  if (qword_82B0 != -1)
  {
    sub_1CF4(&qword_82B0);
  }

  v1 = qword_8198;

  return v1;
}

uint64_t sub_1344@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DC4();
  sub_1DF4();
  sub_1D14();
  v5 = *(v4 + 16);

  return v5(a1, v2, v3);
}

uint64_t sub_13AC()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC29TranslationFlowDelegatePlugin29TranslationFlowDelegatePlugin_logger;
  v2 = sub_1DC4();
  sub_1DF4();
  sub_1D14();
  (*(v3 + 16))(v0 + v1, v2);
  return v0;
}

uint64_t sub_142C()
{
  v1 = OBJC_IVAR____TtC29TranslationFlowDelegatePlugin29TranslationFlowDelegatePlugin_logger;
  v2 = sub_1DC4();
  sub_1DF4();
  sub_1D14();
  (*(v3 + 16))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1DA4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_82B0 != -1)
  {
    sub_1CF4(&qword_82B0);
  }

  v7 = qword_8198;
  v8 = sub_1E14();
  sub_17E4(&qword_80C0, &qword_1F60);
  v9 = swift_allocObject();
  v23 = xmmword_1F50;
  *(v9 + 16) = xmmword_1F50;
  (*(v4 + 16))(v6, a1, v3);
  v10 = sub_1E04();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_182C();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_1DD4("TranslationFlowDelegatePlugin | FindFlowForX received parse: %@", 63, 2, &dword_0, v7, v8, v9);

  v14 = sub_1DE4();
  v15 = sub_1E14();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "About to call getRCHFlow()", v16, 2u);
  }

  sub_1DB4();
  if (v26)
  {
    sub_18E8(&v25, v27);
    v17 = sub_1E14();
    v18 = swift_allocObject();
    *(v18 + 16) = v23;
    sub_1900(v27, &v25);
    sub_17E4(&qword_80D8, qword_1F70);
    v19 = sub_1E04();
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v13;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    sub_1DD4("TranslationFlowDelegatePlugin | FindFlowForX returning flow: %@", 63, 2, &dword_0, v7, v17, v18);

    sub_1964(v27, v27[3]);
    sub_1D24();
    sub_1D44();

    return sub_19A8(v27);
  }

  else
  {
    sub_1880(&v25);
    v22 = sub_1E14();
    sub_1DD4("TranslationFlowDelegatePlugin | FindFlowForX could not find flow.", 65, 2, &dword_0, v7, v22, &_swiftEmptyArrayStorage);
    return sub_1D34();
  }
}

uint64_t sub_17E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_182C()
{
  result = qword_80C8;
  if (!qword_80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80C8);
  }

  return result;
}

uint64_t sub_1880(uint64_t a1)
{
  v2 = sub_17E4(&qword_80D0, &qword_1F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1964(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19A8(void *a1)
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

uint64_t sub_19F4()
{
  v1 = OBJC_IVAR____TtC29TranslationFlowDelegatePlugin29TranslationFlowDelegatePlugin_logger;
  sub_1DF4();
  sub_1D14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1A4C()
{
  v1 = OBJC_IVAR____TtC29TranslationFlowDelegatePlugin29TranslationFlowDelegatePlugin_logger;
  sub_1DF4();
  sub_1D14();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1B24@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 88))();
  *a1 = result;
  return result;
}

unint64_t sub_1B74()
{
  result = qword_80E0;
  if (!qword_80E0)
  {
    type metadata accessor for TranslationFlowDelegatePlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80E0);
  }

  return result;
}

uint64_t type metadata accessor for TranslationFlowDelegatePlugin(uint64_t a1)
{
  result = qword_82A0;
  if (!qword_82A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C20(uint64_t a1)
{
  result = sub_1DF4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CB0()
{
  result = qword_8190;
  if (!qword_8190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8190);
  }

  return result;
}

uint64_t sub_1CF4(uint64_t a1)
{

  return _swift_once(a1, sub_1250);
}