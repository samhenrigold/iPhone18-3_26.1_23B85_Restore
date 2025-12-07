uint64_t sub_4CBC0(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_99310();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_4BC78();
  sub_992E0();

  return (*(v7 + 8))(v9, v10);
}

id sub_4CD04()
{
  v2 = (v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__presentedSplatDescriptor);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_4CD74(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__presentedSplatDescriptor);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void sub_4CE0C(void *a1@<X0>, void *a2@<X8>)
{
  _objc_retain(a1);
  *a2 = a1;
  _objc_release(a1);
}

id sub_4CE5C()
{
  KeyPath = swift_getKeyPath();
  sub_4B660(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__presentedSplatDescriptor);
  swift_beginAccess();
  v4 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  return v4;
}

void sub_4CEF8(id *a1@<X0>, id *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_4CE5C();
  _objc_release(v2);
}

void sub_4CF64(id *a1, id *a2)
{
  sub_7CFA8(a1, &v5);
  v4 = v5;
  v3 = *a2;
  _objc_retain(*a2);
  sub_4CFDC(v4);
  _objc_release(v3);
}

void sub_4CFDC(void *a1)
{
  v26 = a1;
  v34 = 0;
  v22 = 0;
  v35 = a1;
  v23 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__presentedSplatDescriptor);
  v24 = &v33;
  swift_beginAccess();
  v25 = *v23;
  v2 = v25;
  swift_endAccess();
  v32 = v25;
  v31 = v26;
  v27 = sub_22FC(&qword_B5758, &qword_9BE68);
  v3 = sub_4D210();
  v28 = &v32;
  v29 = sub_4B7D0(&v32, &v31, v27, v3);
  sub_127E0(&v32);
  if (v29)
  {
    v4 = v21;
    v5 = v22;
    KeyPath = swift_getKeyPath();
    v17 = KeyPath;
    v6 = v21;
    v7 = v26;
    v19 = &v13;
    v8 = __chkstk_darwin(KeyPath);
    v12[2] = v4;
    v12[3] = v9;
    sub_4BA60(v8, sub_4D3C8, v12, &type metadata for () + 8, &type metadata for ());
    v20 = v5;

    v16 = v20;
  }

  else
  {
    v10 = v26;
    v14 = &v21[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__presentedSplatDescriptor];
    v15 = &v30;
    swift_beginAccess();
    v11 = *v14;
    *v14 = v26;

    swift_endAccess();
    v16 = v22;
  }
}

unint64_t sub_4D210()
{
  v2 = qword_B5760;
  if (!qword_B5760)
  {
    sub_87B4(&qword_B5758, &qword_9BE68);
    sub_4D2A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4D2A8()
{
  v2 = qword_B5768;
  if (!qword_B5768)
  {
    sub_FFE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_B5768);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4D328(uint64_t a1, id a2)
{
  _objc_retain(a2);
  v5 = (a1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__presentedSplatDescriptor);
  swift_beginAccess();
  v2 = *v5;
  *v5 = a2;
  _objc_release(v2);
  return swift_endAccess();
}

uint64_t (*sub_4D3F4(void *a1))()
{
  v8 = sub_209D0(0x30uLL, 8105);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_99310();
  v5 = *(v7 - 8);
  v6 = sub_209D0(*(v5 + 64), 8105);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_4B660(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_4BC78();
  sub_992F0();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_4D5B4;
}

void sub_4D5B4(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_4D640(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_4D640(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_4D640(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_99310();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_4BC78();
  sub_992E0();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_4D788()
{
  v2 = (v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__hasNonSplatDescriptor);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_4D7F0(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__hasNonSplatDescriptor);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_4D884()
{
  KeyPath = swift_getKeyPath();
  sub_4B660(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__hasNonSplatDescriptor);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

void sub_4D918(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_4D884() & 1;
  _objc_release(v2);
}

void sub_4D988(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_4D9F4(v3 & 1);
  _objc_release(v2);
}

void sub_4D9F4(int a1)
{
  v22 = a1;
  v17 = a1;
  v26 = 0;
  v18 = 0;
  v27 = a1;
  v19 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__hasNonSplatDescriptor);
  v20 = &v25;
  swift_beginAccess();
  v21 = *v19;
  swift_endAccess();
  v24 = v21;
  v23 = v22;
  if (sub_4B7D0(&v24, &v23, &type metadata for Bool, &protocol witness table for Bool))
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;
    v4 = v16;
    v14 = &v9;
    v5 = __chkstk_darwin(KeyPath);
    v7[2] = v2;
    v8 = v6 & 1;
    sub_4BA60(v5, sub_4DC58, v7, &type metadata for () + 8, &type metadata for ());
    v15 = v3;

    v11 = v15;
  }

  else
  {
    v10 = &v16[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__hasNonSplatDescriptor];
    swift_beginAccess();
    *v10 = v17 & 1;
    swift_endAccess();
  }
}

uint64_t sub_4DBDC(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__hasNonSplatDescriptor);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

uint64_t (*sub_4DC88(void *a1))()
{
  v8 = sub_209D0(0x30uLL, 18991);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_99310();
  v5 = *(v7 - 8);
  v6 = sub_209D0(*(v5 + 64), 18991);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_4B660(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_4BC78();
  sub_992F0();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_4DE48;
}

void sub_4DE48(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_4DED4(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_4DED4(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_4DED4(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_99310();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_4BC78();
  sub_992E0();

  return (*(v7 + 8))(v9, v10);
}

unint64_t sub_4E018()
{
  v2 = (v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__managerState);
  swift_beginAccess();
  v3 = *v2;
  sub_2183C(*v2);
  swift_endAccess();
  return v3;
}

unint64_t sub_4E080(unint64_t a1)
{
  sub_2183C(a1);
  v4 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__managerState);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  sub_109F4(v2);
  swift_endAccess();
  return sub_109F4(a1);
}

unint64_t sub_4E100@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  sub_2183C(a1);
  *a2 = a1;
  return sub_109F4(a1);
}

unint64_t sub_4E140()
{
  KeyPath = swift_getKeyPath();
  sub_4B660(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__managerState);
  swift_beginAccess();
  v4 = *v3;
  sub_2183C(*v3);
  swift_endAccess();
  return v4;
}

void sub_4E1D4(id *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_4E140();
  _objc_release(v2);
}

void sub_4E240(unint64_t *a1, id *a2)
{
  sub_811B0(a1, &v5);
  v4 = v5;
  v3 = *a2;
  _objc_retain(*a2);
  sub_4E2B8(v4);
  _objc_release(v3);
}

unint64_t sub_4E2B8(unint64_t a1)
{
  v22 = a1;
  v29 = 0;
  v18 = 0;
  v30 = a1;
  v19 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__managerState);
  v20 = &v28;
  swift_beginAccess();
  v21 = *v19;
  sub_2183C(v21);
  swift_endAccess();
  v27 = v21;
  v26 = v22;
  v2 = sub_28910();
  v23 = &v27;
  v24 = sub_4B7D0(&v27, &v26, &unk_AD520, v2);
  sub_28988(&v27);
  if (v24)
  {
    v3 = v17;
    v4 = v18;
    KeyPath = swift_getKeyPath();
    v13 = KeyPath;
    v5 = v17;
    sub_2183C(v22);
    v15 = v11;
    v6 = __chkstk_darwin(KeyPath);
    v10[2] = v3;
    v10[3] = v7;
    sub_4BA60(v6, sub_4E568, v10, &type metadata for () + 8, &type metadata for ());
    v16 = v4;

    sub_109F4(v22);

    v12 = v16;
  }

  else
  {
    sub_2183C(v22);
    v11[0] = &v17[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__managerState];
    v11[1] = &v25;
    swift_beginAccess();
    v8 = *v11[0];
    *v11[0] = v22;
    sub_109F4(v8);
    swift_endAccess();
    v12 = v18;
  }

  return sub_109F4(v22);
}

uint64_t sub_4E4D8(uint64_t a1, unint64_t a2)
{
  sub_2183C(a2);
  v5 = (a1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__managerState);
  swift_beginAccess();
  v2 = *v5;
  *v5 = a2;
  sub_109F4(v2);
  return swift_endAccess();
}

uint64_t (*sub_4E594(void *a1))()
{
  v8 = sub_209D0(0x30uLL, 38754);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_99310();
  v5 = *(v7 - 8);
  v6 = sub_209D0(*(v5 + 64), 38754);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_4B660(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_4BC78();
  sub_992F0();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_4E754;
}

void sub_4E754(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_4E7E0(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_4E7E0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_4E7E0(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_99310();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_4BC78();
  sub_992E0();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_4E928()
{
  v2 = (v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__isInitializing);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_4E990(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__isInitializing);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_4EA24()
{
  KeyPath = swift_getKeyPath();
  sub_4B660(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__isInitializing);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4 & 1;
}

void sub_4EAB8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  _objc_retain(*a1);
  *a2 = sub_4EA24() & 1;
  _objc_release(v2);
}

void sub_4EB28(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  _objc_retain(*a2);
  sub_4EB94(v3 & 1);
  _objc_release(v2);
}

void sub_4EB94(int a1)
{
  v22 = a1;
  v17 = a1;
  v26 = 0;
  v18 = 0;
  v27 = a1;
  v19 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__isInitializing);
  v20 = &v25;
  swift_beginAccess();
  v21 = *v19;
  swift_endAccess();
  v24 = v21;
  v23 = v22;
  if (sub_4B7D0(&v24, &v23, &type metadata for Bool, &protocol witness table for Bool))
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;
    v4 = v16;
    v14 = &v9;
    v5 = __chkstk_darwin(KeyPath);
    v7[2] = v2;
    v8 = v6 & 1;
    sub_4BA60(v5, sub_4EDF8, v7, &type metadata for () + 8, &type metadata for ());
    v15 = v3;

    v11 = v15;
  }

  else
  {
    v10 = &v16[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__isInitializing];
    swift_beginAccess();
    *v10 = v17 & 1;
    swift_endAccess();
  }
}

uint64_t sub_4ED7C(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__isInitializing);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

uint64_t (*sub_4EE28(void *a1))()
{
  v8 = sub_209D0(0x30uLL, 8009);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_99310();
  v5 = *(v7 - 8);
  v6 = sub_209D0(*(v5 + 64), 8009);
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_4B660(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_4BC78();
  sub_992F0();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_4EFE8;
}

void sub_4EFE8(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_4F074(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_4F074(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_4F074(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_99310();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_4BC78();
  sub_992E0();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_4F1C8()
{
  sub_22FC(&qword_B58A0, &qword_9C1A8);
  v1 = swift_allocObject();
  sub_81188(v1);
  return v1;
}

uint64_t sub_4F254()
{
  v2 = *(v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_initializationLock);

  return v2;
}

void *sub_4F294()
{
  v2 = *(v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient);
  _objc_retain(v2);
  return v2;
}

void *sub_4F2DC()
{
  v2 = *(v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_clientQueue);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_4F324()
{
  v2 = *(v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_preferencesManager);

  return v2;
}

char *sub_4F3A0(uint64_t a1)
{
  v26 = a1;
  v19 = "Fatal error";
  v20 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v21 = "BackgroundSecurityImprovement/StatefulManager.swift";
  ObjectType = swift_getObjectType();
  v57 = 0;
  v56 = 0;
  v53 = 0;
  v23 = (*(*(sub_99DB0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v47 = &v13 - v23;
  v24 = (*(*(sub_99DA0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v46 = &v13 - v24;
  v2 = sub_99A70();
  v25 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v45 = &v13 - v25;
  v27 = (*(*(sub_22FC(&qword_B4B58, &qword_9B1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v53);
  v29 = &v13 - v27;
  v56 = v4;
  v57 = v1;
  *&v1[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_viewControllerForPresentation] = v3;
  updated = type metadata accessor for UpdateHistoryData(v3);
  v5 = *(updated - 8);
  v33 = *(v5 + 56);
  v32 = v5 + 56;
  v52 = 1;
  v33(v29, 1);
  v28 = v57;
  swift_getObjectType();
  v30 = &qword_B5000;
  sub_4B118(v29, &v28[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__lastUpdateHistory]);
  (v33)(&v57[v30[507]], v52, v52, updated);
  v34 = v57;
  swift_getObjectType();
  v35 = &qword_B5000;
  v36 = 0xF000000000000000;
  sub_4C2AC(v53, 0xF000000000000000, &v34[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__splatDocumentationData]);
  v6 = v36;
  v7 = v53;
  v8 = &v57[v35[510]];
  *v8 = 0;
  *(v8 + 1) = v6;
  *&v57[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__presentedSplatDescriptor] = v7;
  v37 = v57;
  swift_getObjectType();
  v40 = 0;
  sub_4D864(0, &v37[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__hasNonSplatDescriptor]);
  v38 = v57;
  swift_getObjectType();
  sub_4E100(0xC000000000000000, &v38[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__managerState]);
  v39 = v57;
  swift_getObjectType();
  sub_4EA04(v40 & 1, &v39[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__isInitializing]);
  v42 = v57;
  v41 = OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_initializationLock;
  *&v42[v41] = sub_4F1C8();
  sub_99300();
  v48 = v57;
  sub_DE70();
  v43 = sub_99B90("com.apple.BackgroundSecurityImprovement.clientQueue", 0x33uLL, v52 & 1);
  v44 = v9;
  sub_99A60();
  sub_4FA2C();
  sub_4FACC(v47);
  v10 = sub_99DE0();
  v50 = &OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__presentedSplatDescriptor;
  *&v48[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_clientQueue] = v10;
  v49 = v57;
  sub_4FB38();
  v51 = *&v57[v50[10]];
  _objc_retain(v51);
  v54 = sub_4FB9C(v53, v51, v52);
  if (v54)
  {
    v18 = v54;
  }

  else
  {
    sub_99EF0();
    __break(1u);
  }

  v15 = &OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager__presentedSplatDescriptor;
  *&v49[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient] = v18;
  v14 = v57;

  v11 = ObjectType;
  *&v14[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_preferencesManager] = v26;
  v55.receiver = v57;
  v55.super_class = v11;
  v17 = objc_msgSendSuper2(&v55, "init");
  _objc_retain(v17);
  v57 = v17;
  v16 = *&v17[v15[9]];
  _objc_retain(v16);
  _objc_retain(v17);
  [v16 setDelegate:v17];
  swift_unknownObjectRelease();
  _objc_release(v16);
  sub_4FBEC();

  _objc_release(v57);
  return v17;
}

uint64_t sub_4FA2C()
{
  sub_76E28(0);
  sub_99DA0();
  sub_81080();
  sub_22FC(&qword_B5890, &qword_9C1A0);
  sub_81100();
  return sub_99E80();
}

uint64_t sub_4FACC@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v1 = sub_99DB0();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

unint64_t sub_4FB38()
{
  v2 = qword_B5770;
  if (!qword_B5770)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_B5770);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_4FBEC()
{
  v46 = 0;
  v56 = 0;
  v33 = 0;
  v54 = 0;
  v34 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = v15 - v34;
  v43 = sub_993B0();
  v37 = v43;
  v38 = *(v43 - 8);
  v42 = v38;
  v39 = v38;
  v40 = *(v38 + 64);
  __chkstk_darwin(v43 - 8);
  v0 = v15 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v0;
  v56 = v1;
  v2 = sub_81788();
  (*(v42 + 16))(v0, v2, v43);
  v48 = sub_99390();
  v44 = v48;
  v47 = sub_99D60();
  v45 = v47;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v49 = sub_99F80();
  if (os_log_type_enabled(v48, v47))
  {
    v3 = v33;
    v24 = sub_99E40();
    v20 = v24;
    v21 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v22 = 0;
    v25 = sub_F444(0, v21, v21);
    v23 = v25;
    v26 = sub_F444(v22, &type metadata for Any + 8, &type metadata for Any + 8);
    v53 = v24;
    v52 = v25;
    v51 = v26;
    v27 = 0;
    v28 = &v53;
    sub_F498(0, &v53);
    sub_F498(v27, v28);
    v50 = v49;
    v29 = v15;
    __chkstk_darwin(v15);
    v30 = &v15[-6];
    v15[-4] = v4;
    v15[-3] = &v52;
    v15[-2] = &v51;
    v31 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v32 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v44, v45, "initializeState called", v20, 2u);
      v18 = 0;
      sub_F5B0(v23, 0, v21);
      sub_F5B0(v26, v18, &type metadata for Any + 8);
      sub_99E20();

      v19 = v32;
    }
  }

  else
  {

    v19 = v33;
  }

  v5 = v19;

  (*(v39 + 8))(v41, v37);
  v16 = *&v36[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_initializationLock];
  v15[1] = v16;

  v6 = v36;
  v17 = v15;
  __chkstk_darwin(v15);
  v15[-2] = v7;
  sub_5F6CC(sub_5F6A4, &v15[-4], v8, &type metadata for Bool);
  if (v5)
  {

    __break(1u);
  }

  else
  {

    v54 = v55;
    if (v55 == 1)
    {
      v15[0] = 0;
      v9 = sub_99D00();
      (*(*(v9 - 8) + 56))(v35, 1);
      v10 = v36;
      v11 = swift_allocObject();
      v12 = v36;
      v13 = v15[0];
      v14 = v35;
      v11[2] = v15[0];
      v11[3] = v13;
      v11[4] = v12;
      sub_2A6F4(v13, v13, v14, &unk_9BEF0, v11, &type metadata for () + 8);
    }
  }
}

uint64_t sub_501D4(uint64_t a1, uint64_t a2)
{
  v130 = a2;
  v129 = a1;
  v126 = 0;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v125 = 0;
  v144 = 0;
  v127 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v128 = &v52[-v127];
  v131 = sub_993B0();
  v132 = *(v131 - 8);
  v133 = v132;
  v134 = *(v132 + 64);
  v3 = __chkstk_darwin(v129);
  v136 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  v135 = &v52[-v136];
  v4 = __chkstk_darwin(v3);
  v137 = &v52[-v136];
  v150 = v4;
  v151 = v5;
  v149 = v2;
  v138 = sub_4CE5C();
  if (v138)
  {
    v123 = v138;
    v6 = v137;
    v103 = v138;
    v144 = v138;
    v7 = sub_81788();
    (*(v133 + 16))(v6, v7, v131);
    v8 = v103;
    v111 = 7;
    v112 = swift_allocObject();
    *(v112 + 16) = v103;
    v122 = sub_99390();
    v104 = v122;
    v121 = sub_99D60();
    v105 = v121;
    v106 = 17;
    v115 = swift_allocObject();
    v107 = v115;
    v108 = 32;
    *(v115 + 16) = 32;
    v9 = swift_allocObject();
    v10 = v108;
    v116 = v9;
    v109 = v9;
    *(v9 + 16) = 8;
    v110 = v10;
    v11 = swift_allocObject();
    v12 = v112;
    v113 = v11;
    *(v11 + 16) = sub_75C8C;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v113;
    v119 = v13;
    v114 = v13;
    *(v13 + 16) = sub_7948C;
    *(v13 + 24) = v14;
    v120 = sub_22FC(&unk_B5940, &unk_9A9A0);
    v117 = sub_99F80();
    v118 = v15;

    v16 = v115;
    v17 = v118;
    *v118 = sub_79410;
    v17[1] = v16;

    v18 = v116;
    v19 = v118;
    v118[2] = sub_79444;
    v19[3] = v18;

    v20 = v118;
    v21 = v119;
    v118[4] = sub_794D8;
    v20[5] = v21;
    sub_29D0();

    if (os_log_type_enabled(v122, v121))
    {
      v22 = v125;
      v96 = sub_99E40();
      v93 = v96;
      v94 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v97 = sub_F444(0, v94, v94);
      v95 = v97;
      v99 = 1;
      v98 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v143 = v96;
      v142 = v97;
      v141 = v98;
      v100 = &v143;
      sub_F498(2, &v143);
      sub_F498(v99, v100);
      v139 = sub_79410;
      v140 = v107;
      sub_F4AC(&v139, v100, &v142, &v141);
      v101 = v22;
      v102 = v22;
      if (v22)
      {
        v91 = 0;

        __break(1u);
      }

      else
      {
        v139 = sub_79444;
        v140 = v109;
        sub_F4AC(&v139, &v143, &v142, &v141);
        v89 = 0;
        v90 = 0;
        v139 = sub_794D8;
        v140 = v114;
        sub_F4AC(&v139, &v143, &v142, &v141);
        v87 = 0;
        v88 = 0;
        _os_log_impl(&dword_0, v104, v105, "downloadAndInstall called with update: %s", v93, 0xCu);
        sub_F5B0(v95, 0, v94);
        sub_F5B0(v98, 1, &type metadata for Any + 8);
        sub_99E20();

        v92 = v87;
      }
    }

    else
    {
      v23 = v125;

      v92 = v23;
    }

    v85 = v92;

    (*(v133 + 8))(v137, v131);
    v84 = 0;
    v24 = sub_99D00();
    (*(*(v24 - 8) + 56))(v128, 1);
    v25 = v124;
    v26 = v103;

    v27 = swift_allocObject();
    v28 = v124;
    v29 = v129;
    v30 = v130;
    v31 = v84;
    v32 = v128;
    v33 = v103;
    v27[2] = v84;
    v27[3] = v31;
    v27[4] = v28;
    v27[5] = v33;
    v27[6] = v29;
    v27[7] = v30;
    sub_2A6F4(v31, v31, v32, &unk_9BF08, v27, &type metadata for () + 8);

    return v85;
  }

  else
  {
    v34 = v135;
    v35 = sub_81788();
    (*(v133 + 16))(v34, v35, v131);
    v82 = sub_99390();
    v79 = v82;
    v81 = sub_99D60();
    v80 = v81;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v83 = sub_99F80();
    if (os_log_type_enabled(v82, v81))
    {
      v36 = v125;
      v70 = sub_99E40();
      v66 = v70;
      v67 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v68 = 0;
      v71 = sub_F444(0, v67, v67);
      v69 = v71;
      v72 = sub_F444(v68, &type metadata for Any + 8, &type metadata for Any + 8);
      v148 = v70;
      v147 = v71;
      v146 = v72;
      v73 = 0;
      v74 = &v148;
      sub_F498(0, &v148);
      sub_F498(v73, v74);
      v145 = v83;
      v75 = v52;
      __chkstk_darwin(v52);
      v76 = &v52[-48];
      *&v52[-32] = v37;
      *&v52[-24] = &v147;
      *&v52[-16] = &v146;
      v77 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      v78 = v36;
      if (v36)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v79, v80, "performDownloadAndInstall called but presentedDescriptor is nil", v66, 2u);
        v64 = 0;
        sub_F5B0(v69, 0, v67);
        sub_F5B0(v72, v64, &type metadata for Any + 8);
        sub_99E20();

        v65 = v78;
      }
    }

    else
    {

      v65 = v125;
    }

    v63 = v65;

    (*(v133 + 8))(v135, v131);
    sub_75BB0();
    v53 = 1;
    v61 = sub_99B90("com.apple.BackgroundSecurityImprovement", 0x27uLL, 1);
    v60 = v38;
    v56 = sub_22FC(&qword_B5780, &qword_9BEF8);
    v55 = sub_99F80();
    v54 = v39;
    v57 = NSLocalizedDescriptionKey;
    v40 = NSLocalizedDescriptionKey;
    v41 = sub_99B30();
    v42 = v53;
    v43 = v54;
    *v54 = v41;
    v43[1] = v44;
    v45 = sub_99B90("No update descriptor available", 0x1EuLL, v42);
    v46 = v54;
    v59 = &type metadata for String;
    v54[5] = &type metadata for String;
    v46[2] = v45;
    v46[3] = v47;
    sub_29D0();
    v58 = v48;

    v49 = sub_99AC0();
    v62 = sub_50FF4(v61, v60, -1, v49);
    v50 = sub_5104C();
    sub_51058(v62, v50 & 1);
    sub_109F4(v62);
    return v63;
  }
}

uint64_t sub_51058(unint64_t a1, int a2)
{
  v184 = a1;
  v183 = a2;
  v158 = sub_797B0;
  v159 = sub_79860;
  v160 = sub_797E4;
  v161 = sub_79818;
  v162 = sub_798AC;
  v163 = sub_79900;
  v164 = sub_799F8;
  v165 = sub_79948;
  v166 = sub_79AF8;
  v167 = sub_7997C;
  v168 = sub_799B0;
  v169 = sub_79A44;
  v170 = sub_79A7C;
  v171 = sub_79AB0;
  v172 = sub_79B44;
  v173 = &protocol witness table for MainActor;
  v174 = &unk_9BF18;
  v175 = sub_79DF4;
  v176 = sub_79EA4;
  v177 = sub_79E28;
  v178 = sub_79E5C;
  v179 = sub_79EF0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  v180 = 0;
  v3 = sub_22FC(&unk_B5960, &qword_9BC48);
  v181 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v182 = v74 - v181;
  v185 = sub_993B0();
  v186 = *(v185 - 8);
  v187 = v185 - 8;
  v188 = (*(v186 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v184);
  v189 = v74 - v188;
  v190 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v191 = v74 - v190;
  v192 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v193 = v74 - v192;
  v216 = v8;
  v215 = v9 & 1;
  v214 = v2;
  v194 = &v213;
  v213 = v8;
  v10 = sub_4E140();
  v195 = &v212;
  v212 = v10;
  sub_28910();
  v196 = sub_99AF0();
  sub_28988(v195);
  if (v196)
  {
    v60 = v189;
    v61 = sub_81788();
    (*(v186 + 16))(v60, v61, v185);
    sub_2183C(v184);
    v85 = 7;
    v86 = swift_allocObject();
    *(v86 + 16) = v184;
    v94 = sub_99390();
    v95 = sub_99D70();
    v83 = 17;
    v88 = swift_allocObject();
    *(v88 + 16) = 32;
    v89 = swift_allocObject();
    *(v89 + 16) = 8;
    v84 = 32;
    v62 = swift_allocObject();
    v63 = v86;
    v87 = v62;
    *(v62 + 16) = v158;
    *(v62 + 24) = v63;
    v64 = swift_allocObject();
    v65 = v87;
    v91 = v64;
    *(v64 + 16) = v159;
    *(v64 + 24) = v65;
    v93 = sub_22FC(&unk_B5940, &unk_9A9A0);
    v90 = sub_99F80();
    v92 = v66;

    v67 = v88;
    v68 = v92;
    *v92 = v160;
    v68[1] = v67;

    v69 = v89;
    v70 = v92;
    v92[2] = v161;
    v70[3] = v69;

    v71 = v91;
    v72 = v92;
    v92[4] = v162;
    v72[5] = v71;
    sub_29D0();

    if (os_log_type_enabled(v94, v95))
    {
      v73 = v180;
      v76 = sub_99E40();
      v75 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v77 = sub_F444(0, v75, v75);
      v78 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v79 = &v211;
      v211 = v76;
      v80 = &v210;
      v210 = v77;
      v81 = &v209;
      v209 = v78;
      sub_F498(2, &v211);
      sub_F498(1, v79);
      v207 = v160;
      v208 = v88;
      sub_F4AC(&v207, v79, v80, v81);
      v82 = v73;
      if (v73)
      {

        __break(1u);
      }

      else
      {
        v207 = v161;
        v208 = v89;
        sub_F4AC(&v207, &v211, &v210, &v209);
        v74[1] = 0;
        v207 = v162;
        v208 = v91;
        sub_F4AC(&v207, &v211, &v210, &v209);
        _os_log_impl(&dword_0, v94, v95, "Manager state unchanged: %s", v76, 0xCu);
        sub_F5B0(v77, 0, v75);
        sub_F5B0(v78, 1, &type metadata for Any + 8);
        sub_99E20();
      }
    }

    else
    {
    }

    _objc_release(v94);
    return (*(v186 + 8))(v189, v185);
  }

  else
  {
    v155 = sub_4E140();
    v156 = sub_21160(v155, 0xC000000000000038);
    sub_109F4(v155);
    if (v156)
    {
      v154 = v183 ^ 1;
    }

    else
    {
      v154 = 0;
    }

    if (v154)
    {
      v11 = v193;
      v12 = sub_81788();
      (*(v186 + 16))(v11, v12, v185);
      sub_2183C(v184);
      v143 = 7;
      v144 = swift_allocObject();
      *(v144 + 16) = v184;
      v152 = sub_99390();
      v153 = sub_99D60();
      v141 = 17;
      v146 = swift_allocObject();
      *(v146 + 16) = 32;
      v147 = swift_allocObject();
      *(v147 + 16) = 8;
      v142 = 32;
      v13 = swift_allocObject();
      v14 = v144;
      v145 = v13;
      *(v13 + 16) = v175;
      *(v13 + 24) = v14;
      v15 = swift_allocObject();
      v16 = v145;
      v149 = v15;
      *(v15 + 16) = v176;
      *(v15 + 24) = v16;
      v151 = sub_22FC(&unk_B5940, &unk_9A9A0);
      v148 = sub_99F80();
      v150 = v17;

      v18 = v146;
      v19 = v150;
      *v150 = v177;
      v19[1] = v18;

      v20 = v147;
      v21 = v150;
      v150[2] = v178;
      v21[3] = v20;

      v22 = v149;
      v23 = v150;
      v150[4] = v179;
      v23[5] = v22;
      sub_29D0();

      if (os_log_type_enabled(v152, v153))
      {
        v24 = v180;
        v134 = sub_99E40();
        v133 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v135 = sub_F444(0, v133, v133);
        v136 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v137 = &v201;
        v201 = v134;
        v138 = &v200;
        v200 = v135;
        v139 = &v199;
        v199 = v136;
        sub_F498(2, &v201);
        sub_F498(1, v137);
        v197 = v177;
        v198 = v146;
        sub_F4AC(&v197, v137, v138, v139);
        v140 = v24;
        if (v24)
        {

          __break(1u);
        }

        else
        {
          v197 = v178;
          v198 = v147;
          sub_F4AC(&v197, &v201, &v200, &v199);
          v132 = 0;
          v197 = v179;
          v198 = v149;
          sub_F4AC(&v197, &v201, &v200, &v199);
          _os_log_impl(&dword_0, v152, v153, "Attempted to change state from .removing to %s - only handleRollbackFinished can change from .removing state", v134, 0xCu);
          sub_F5B0(v135, 0, v133);
          sub_F5B0(v136, 1, &type metadata for Any + 8);
          sub_99E20();
        }
      }

      else
      {
      }

      _objc_release(v152);
      return (*(v186 + 8))(v193, v185);
    }

    else
    {
      v26 = v191;
      v27 = sub_81788();
      (*(v186 + 16))(v26, v27, v185);
      _objc_retain(v157);
      v111 = 24;
      v118 = 7;
      v28 = swift_allocObject();
      v29 = v184;
      v112 = v28;
      *(v28 + 16) = v157;
      sub_2183C(v29);
      v119 = swift_allocObject();
      *(v119 + 16) = v184;
      v130 = sub_99390();
      v131 = sub_99D60();
      v115 = 17;
      v121 = swift_allocObject();
      v114 = 32;
      *(v121 + 16) = 32;
      v122 = swift_allocObject();
      v116 = 8;
      *(v122 + 16) = 8;
      v117 = 32;
      v30 = swift_allocObject();
      v31 = v112;
      v113 = v30;
      *(v30 + 16) = v163;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v113;
      v123 = v32;
      *(v32 + 16) = v164;
      *(v32 + 24) = v33;
      v124 = swift_allocObject();
      *(v124 + 16) = v114;
      v125 = swift_allocObject();
      *(v125 + 16) = v116;
      v34 = swift_allocObject();
      v35 = v119;
      v120 = v34;
      *(v34 + 16) = v165;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v120;
      v127 = v36;
      *(v36 + 16) = v166;
      *(v36 + 24) = v37;
      v129 = sub_22FC(&unk_B5940, &unk_9A9A0);
      v126 = sub_99F80();
      v128 = v38;

      v39 = v121;
      v40 = v128;
      *v128 = v167;
      v40[1] = v39;

      v41 = v122;
      v42 = v128;
      v128[2] = v168;
      v42[3] = v41;

      v43 = v123;
      v44 = v128;
      v128[4] = v169;
      v44[5] = v43;

      v45 = v124;
      v46 = v128;
      v128[6] = v170;
      v46[7] = v45;

      v47 = v125;
      v48 = v128;
      v128[8] = v171;
      v48[9] = v47;

      v49 = v127;
      v50 = v128;
      v128[10] = v172;
      v50[11] = v49;
      sub_29D0();

      if (os_log_type_enabled(v130, v131))
      {
        v51 = v180;
        v103 = sub_99E40();
        v102 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v104 = sub_F444(0, v102, v102);
        v105 = sub_F444(2, &type metadata for Any + 8, &type metadata for Any + 8);
        v107 = &v206;
        v206 = v103;
        v108 = &v205;
        v205 = v104;
        v109 = &v204;
        v204 = v105;
        v106 = 2;
        sub_F498(2, &v206);
        sub_F498(v106, v107);
        v202 = v167;
        v203 = v121;
        sub_F4AC(&v202, v107, v108, v109);
        v110 = v51;
        if (v51)
        {

          __break(1u);
        }

        else
        {
          v202 = v168;
          v203 = v122;
          sub_F4AC(&v202, &v206, &v205, &v204);
          v101 = 0;
          v202 = v169;
          v203 = v123;
          sub_F4AC(&v202, &v206, &v205, &v204);
          v100 = 0;
          v202 = v170;
          v203 = v124;
          sub_F4AC(&v202, &v206, &v205, &v204);
          v99 = 0;
          v202 = v171;
          v203 = v125;
          sub_F4AC(&v202, &v206, &v205, &v204);
          v98 = 0;
          v202 = v172;
          v203 = v127;
          sub_F4AC(&v202, &v206, &v205, &v204);
          _os_log_impl(&dword_0, v130, v131, "Manager state changing from %s to %s", v103, 0x16u);
          sub_F5B0(v104, 0, v102);
          sub_F5B0(v105, 2, &type metadata for Any + 8);
          sub_99E20();
        }
      }

      else
      {
      }

      _objc_release(v130);
      (*(v186 + 8))(v191, v185);
      v96 = 0;
      v52 = sub_99D00();
      (*(*(v52 - 8) + 56))(v182, 1);
      _objc_retain(v157);
      sub_2183C(v184);
      sub_99CD0();
      v97 = sub_99CC0();
      v53 = swift_allocObject();
      v54 = v173;
      v55 = v157;
      v56 = v184;
      v57 = v96;
      v58 = v182;
      v59 = v174;
      v53[2] = v97;
      v53[3] = v54;
      v53[4] = v55;
      v53[5] = v56;
      sub_2A6F4(v57, v57, v58, v59, v53, &type metadata for () + 8);
    }
  }
}

uint64_t sub_52A4C(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_52B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a5;
  *(v7 + 64) = a4;
  *(v7 + 32) = v7;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 104) = 0;
  *(v7 + 56) = 0;
  *(v7 + 112) = 0;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  v8 = swift_task_alloc();
  *(v10 + 80) = v8;
  *v8 = *(v10 + 32);
  v8[1] = sub_52C98;

  return sub_531B0(a5, a6, a7);
}

uint64_t sub_52C98(char a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 105) = a1;

  return _swift_task_switch(sub_52DB4);
}

uint64_t sub_52DB4()
{
  v1 = *(v0 + 105);
  *(v0 + 32) = v0;
  *(v0 + 104) = v1 & 1;
  if (v1)
  {
    v2 = sub_4E140();
    v8[11] = v2;
    v8[7] = v2;
    v3 = sub_5104C();
    sub_51058(0xC000000000000030, v3 & 1);
    v4 = swift_task_alloc();
    v8[12] = v4;
    *v4 = v8[4];
    v4[1] = sub_52F40;
    v5 = v8[9];

    return sub_55964(v5);
  }

  else
  {
    v7 = *(v8[4] + 8);

    return v7();
  }
}

uint64_t sub_52F40(char a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 106) = a1;

  return _swift_task_switch(sub_5305C);
}

uint64_t sub_5305C()
{
  v1 = *(v0 + 106);
  *(v0 + 32) = v0;
  *(v0 + 112) = v1 & 1;
  if ((v1 & 1) == 0)
  {
    v5 = *(v6 + 88);
    v2 = sub_5104C();
    sub_51058(v5, v2 & 1);
  }

  sub_109F4(*(v6 + 88));
  v3 = *(*(v6 + 32) + 8);

  return v3();
}

uint64_t sub_531B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 376) = v3;
  *(v4 + 368) = a3;
  *(v4 + 360) = a2;
  *(v4 + 352) = a1;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 48) = 0;
  *(v4 + 536) = 0;
  *(v4 + 88) = 0;
  *(v4 + 544) = 0;
  v5 = sub_993B0();
  *(v4 + 384) = v5;
  *(v4 + 392) = *(v5 - 8);
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 40) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 48) = v3;

  return _swift_task_switch(sub_533AC);
}

uint64_t sub_533AC()
{
  *(v0 + 32) = v0;
  if ((sub_63C08() & 1) == 0)
  {
    v1 = *(v121 + 464);
    v117 = *(v121 + 384);
    v116 = *(v121 + 392);
    v2 = sub_81788();
    (*(v116 + 16))(v1, v2, v117);
    v119 = sub_99390();
    v118 = sub_99D60();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v120 = sub_99F80();
    if (os_log_type_enabled(v119, v118))
    {
      v112 = sub_99E40();
      v111 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v113 = sub_F444(0, v111, v111);
      v114 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v121 + 320) = v112;
      *(v121 + 328) = v113;
      *(v121 + 336) = v114;
      sub_F498(0, (v121 + 320));
      sub_F498(0, (v121 + 320));
      *(v121 + 344) = v120;
      v115 = swift_task_alloc();
      v115[2] = v121 + 320;
      v115[3] = v121 + 328;
      v115[4] = v121 + 336;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, v119, v118, "Device does not support cellular capability, no need to check download constraints", v112, 2u);
      sub_F5B0(v113, 0, v111);
      sub_F5B0(v114, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v108 = *(v121 + 464);
    v109 = *(v121 + 384);
    v107 = *(v121 + 392);
    _objc_release(v119);
    (*(v107 + 8))(v108, v109);
    v110 = 1;
    goto LABEL_32;
  }

  sub_99B90("cellular-data", 0xDuLL, 1);
  v105 = sub_99B20();
  v106 = MGGetBoolAnswer();
  _objc_release(v105);

  *(v121 + 536) = v106 & 1;
  if ((v106 & 1) == 0)
  {
    v3 = *(v121 + 456);
    v101 = *(v121 + 384);
    v100 = *(v121 + 392);
    v4 = sub_81788();
    (*(v100 + 16))(v3, v4, v101);
    oslog = sub_99390();
    v102 = sub_99D60();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v104 = sub_99F80();
    if (os_log_type_enabled(oslog, v102))
    {
      buf = sub_99E40();
      v95 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v97 = sub_F444(0, v95, v95);
      v98 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v121 + 288) = buf;
      *(v121 + 296) = v97;
      *(v121 + 304) = v98;
      sub_F498(0, (v121 + 288));
      sub_F498(0, (v121 + 288));
      *(v121 + 312) = v104;
      v99 = swift_task_alloc();
      v99[2] = v121 + 288;
      v99[3] = v121 + 296;
      v99[4] = v121 + 304;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, oslog, v102, "MobileGestalt: The device does not support cellular capability. Skipping download constraints check.", buf, 2u);
      sub_F5B0(v97, 0, v95);
      sub_F5B0(v98, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v93 = *(v121 + 456);
    v94 = *(v121 + 384);
    v92 = *(v121 + 392);
    _objc_release(oslog);
    (*(v92 + 8))(v93, v94);
    v110 = 1;
    goto LABEL_32;
  }

  v90 = [objc_opt_self() sharedInstance];
  v91 = [v90 currentNetworkType];
  _objc_release(v90);
  *(v121 + 540) = v91;
  *(v121 + 548) = 1;
  type metadata accessor for SUNetworkType(0);
  sub_79F94();
  if (sub_99F90())
  {
    v5 = *(v121 + 448);
    v86 = *(v121 + 384);
    v85 = *(v121 + 392);
    v6 = sub_81788();
    (*(v85 + 16))(v5, v6, v86);
    log = sub_99390();
    v87 = sub_99D60();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v89 = sub_99F80();
    if (os_log_type_enabled(log, v87))
    {
      v81 = sub_99E40();
      v80 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v82 = sub_F444(0, v80, v80);
      v83 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v121 + 256) = v81;
      *(v121 + 264) = v82;
      *(v121 + 272) = v83;
      sub_F498(0, (v121 + 256));
      sub_F498(0, (v121 + 256));
      *(v121 + 280) = v89;
      v84 = swift_task_alloc();
      v84[2] = v121 + 256;
      v84[3] = v121 + 264;
      v84[4] = v121 + 272;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, log, v87, "Device is connected to WiFi. Skipping download constraints check.", v81, 2u);
      sub_F5B0(v82, 0, v80);
      sub_F5B0(v83, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v78 = *(v121 + 448);
    v79 = *(v121 + 384);
    v77 = *(v121 + 392);
    _objc_release(log);
    (*(v77 + 8))(v78, v79);
    v110 = 1;
    goto LABEL_32;
  }

  v75 = *(v121 + 352);
  v74 = objc_opt_self();
  _objc_retain(v75);
  v76 = [v74 userDownloadPolicyForDescriptor:v75 existingPolicy:0 allowCellularOverride:0];
  *(v121 + 472) = v76;
  _objc_release(v75);
  if (!v76)
  {
    v17 = *(v121 + 400);
    v29 = *(v121 + 384);
    v28 = *(v121 + 392);
    v18 = sub_81788();
    (*(v28 + 16))(v17, v18, v29);
    v31 = sub_99390();
    v30 = sub_99D80();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v32 = sub_99F80();
    if (os_log_type_enabled(v31, v30))
    {
      v24 = sub_99E40();
      v23 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v25 = sub_F444(0, v23, v23);
      v26 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v121 + 56) = v24;
      *(v121 + 64) = v25;
      *(v121 + 72) = v26;
      sub_F498(0, (v121 + 56));
      sub_F498(0, (v121 + 56));
      *(v121 + 80) = v32;
      v27 = swift_task_alloc();
      v27[2] = v121 + 56;
      v27[3] = v121 + 64;
      v27[4] = v121 + 72;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, v31, v30, "Unable to get download policy, aborting", v24, 2u);
      sub_F5B0(v25, 0, v23);
      sub_F5B0(v26, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v21 = *(v121 + 400);
    v22 = *(v121 + 384);
    v20 = *(v121 + 392);
    _objc_release(v31);
    (*(v20 + 8))(v21, v22);
    v110 = 0;
    goto LABEL_32;
  }

  *(v121 + 88) = v76;
  swift_getObjectType();
  if (([v76 isDownloadAllowableForCellular] & 1) == 0)
  {
    v7 = *(v121 + 440);
    v70 = *(v121 + 384);
    v69 = *(v121 + 392);
    v8 = sub_81788();
    (*(v69 + 16))(v7, v8, v70);
    v72 = sub_99390();
    v71 = sub_99D60();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v73 = sub_99F80();
    if (os_log_type_enabled(v72, v71))
    {
      v65 = sub_99E40();
      v64 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v66 = sub_F444(0, v64, v64);
      v67 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v121 + 224) = v65;
      *(v121 + 232) = v66;
      *(v121 + 240) = v67;
      sub_F498(0, (v121 + 224));
      sub_F498(0, (v121 + 224));
      *(v121 + 248) = v73;
      v68 = swift_task_alloc();
      v68[2] = v121 + 224;
      v68[3] = v121 + 232;
      v68[4] = v121 + 240;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, v72, v71, "Download not allowed on cellular network, Skipping on the download constraints acceptance step", v65, 2u);
      sub_F5B0(v66, 0, v64);
      sub_F5B0(v67, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v62 = *(v121 + 440);
    v63 = *(v121 + 384);
    v61 = *(v121 + 392);
    _objc_release(v72);
    (*(v61 + 8))(v62, v63);
    swift_unknownObjectRelease();
    v110 = 1;
    goto LABEL_32;
  }

  swift_getObjectType();
  if ([v76 is5GDownloadAllowed])
  {
    v9 = *(v121 + 432);
    v57 = *(v121 + 384);
    v56 = *(v121 + 392);
    v10 = sub_81788();
    (*(v56 + 16))(v9, v10, v57);
    v59 = sub_99390();
    v58 = sub_99D60();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v60 = sub_99F80();
    if (os_log_type_enabled(v59, v58))
    {
      v52 = sub_99E40();
      v51 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v53 = sub_F444(0, v51, v51);
      v54 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v121 + 192) = v52;
      *(v121 + 200) = v53;
      *(v121 + 208) = v54;
      sub_F498(0, (v121 + 192));
      sub_F498(0, (v121 + 192));
      *(v121 + 216) = v60;
      v55 = swift_task_alloc();
      v55[2] = v121 + 192;
      v55[3] = v121 + 200;
      v55[4] = v121 + 208;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, v59, v58, "Device is using inexpensive HDM. Skipping on the download constraints acceptance step.", v52, 2u);
      sub_F5B0(v53, 0, v51);
      sub_F5B0(v54, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v49 = *(v121 + 432);
    v50 = *(v121 + 384);
    v48 = *(v121 + 392);
    _objc_release(v59);
    (*(v48 + 8))(v49, v50);
    swift_unknownObjectRelease();
    v110 = 1;
    goto LABEL_32;
  }

  swift_getObjectType();
  if (([v76 isDownloadAllowableForCellular] & 1) == 0)
  {
    swift_unknownObjectRelease();
    v110 = 1;
LABEL_32:

    v19 = *(*(v121 + 32) + 8);

    return v19(v110 & 1);
  }

  v11 = *(v121 + 424);
  v44 = *(v121 + 384);
  v43 = *(v121 + 392);
  v12 = sub_81788();
  v13 = *(v43 + 16);
  *(v121 + 480) = v13;
  *(v121 + 488) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v12, v44);
  v46 = sub_99390();
  v45 = sub_99D60();
  *(v121 + 496) = sub_22FC(&unk_B5940, &unk_9A9A0);
  v47 = sub_99F80();
  if (os_log_type_enabled(v46, v45))
  {
    v39 = sub_99E40();
    v38 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v40 = sub_F444(0, v38, v38);
    v41 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v121 + 160) = v39;
    *(v121 + 168) = v40;
    *(v121 + 176) = v41;
    sub_F498(0, (v121 + 160));
    sub_F498(0, (v121 + 160));
    *(v121 + 184) = v47;
    v42 = swift_task_alloc();
    v42[2] = v121 + 160;
    v42[3] = v121 + 168;
    v42[4] = v121 + 176;
    sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();

    _os_log_impl(&dword_0, v46, v45, "Requesting user approval for cellular download", v39, 2u);
    sub_F5B0(v40, 0, v38);
    sub_F5B0(v41, 0, &type metadata for Any + 8);
    sub_99E20();
  }

  *(v121 + 504) = 0;
  v34 = *(v121 + 424);
  v35 = *(v121 + 384);
  v36 = *(v121 + 360);
  v33 = *(v121 + 392);
  _objc_release(v46);
  v14 = *(v33 + 8);
  *(v121 + 512) = v14;
  *(v121 + 520) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v34, v35);

  v37 = (v36 + *v36);
  v15 = swift_task_alloc();
  *(v121 + 528) = v15;
  *v15 = *(v121 + 32);
  v15[1] = sub_54F74;

  return v37();
}

uint64_t sub_54F74(char a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 537) = a1;

  return _swift_task_switch(sub_55090);
}

uint64_t sub_55090()
{
  v1 = *(v0 + 537);
  v38 = v1;
  *(v0 + 32) = v0;
  *(v0 + 544) = v1 & 1;

  if ((v38 & 1) == 0)
  {
    v20 = *(v37 + 480);
    v6 = *(v37 + 408);
    v19 = *(v37 + 384);
    v7 = sub_81788();
    v20(v6, v7, v19);
    oslog = sub_99390();
    v21 = sub_99D60();
    v23 = sub_99F80();
    if (os_log_type_enabled(oslog, v21))
    {
      v8 = *(v37 + 504);
      buf = sub_99E40();
      v14 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v16 = sub_F444(0, v14, v14);
      v17 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v37 + 96) = buf;
      *(v37 + 104) = v16;
      *(v37 + 112) = v17;
      sub_F498(0, (v37 + 96));
      sub_F498(0, (v37 + 96));
      *(v37 + 120) = v23;
      v18 = swift_task_alloc();
      v18[2] = v37 + 96;
      v18[3] = v37 + 104;
      v18[4] = v37 + 112;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      if (v8)
      {
      }

      _os_log_impl(&dword_0, oslog, v21, "User declined cellular download, aborting", buf, 2u);
      sub_F5B0(v16, 0, v14);
      sub_F5B0(v17, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    else
    {
    }

    v13 = *(v37 + 512);
    v11 = *(v37 + 408);
    v12 = *(v37 + 384);
    _objc_release(oslog);
    v13(v11, v12);
    goto LABEL_14;
  }

  v33 = *(v37 + 480);
  v2 = *(v37 + 416);
  v32 = *(v37 + 384);
  v3 = sub_81788();
  v33(v2, v3, v32);
  v35 = sub_99390();
  v34 = sub_99D60();
  v36 = sub_99F80();
  if (!os_log_type_enabled(v35, v34))
  {

    goto LABEL_7;
  }

  v4 = *(v37 + 504);
  v28 = sub_99E40();
  v27 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
  v29 = sub_F444(0, v27, v27);
  v30 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
  *(v37 + 128) = v28;
  *(v37 + 136) = v29;
  *(v37 + 144) = v30;
  sub_F498(0, (v37 + 128));
  sub_F498(0, (v37 + 128));
  *(v37 + 152) = v36;
  v31 = swift_task_alloc();
  v31[2] = v37 + 128;
  v31[3] = v37 + 136;
  v31[4] = v37 + 144;
  sub_22FC(&unk_B5950, &qword_9A9B0);
  sub_F528();
  sub_99C20();
  if (v4)
  {
  }

  _os_log_impl(&dword_0, v35, v34, "User approved cellular download, proceeding", v28, 2u);
  sub_F5B0(v29, 0, v27);
  sub_F5B0(v30, 0, &type metadata for Any + 8);
  sub_99E20();

LABEL_7:
  v26 = *(v37 + 512);
  v24 = *(v37 + 416);
  v25 = *(v37 + 384);
  _objc_release(v35);
  v26(v24, v25);
LABEL_14:
  if (*(v37 + 537))
  {
    swift_unknownObjectRelease();
    v10 = 1;
  }

  else
  {
    swift_unknownObjectRelease();
    v10 = 0;
  }

  v9 = *(*(v37 + 32) + 8);

  return v9(v10 & 1);
}

uint64_t sub_55964(uint64_t a1)
{
  *(v2 + 136) = v1;
  *(v2 + 128) = a1;
  *(v2 + 64) = v2;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 176) = 0;
  *(v2 + 88) = 0;
  v3 = sub_993B0();
  *(v2 + 144) = v3;
  *(v2 + 152) = *(v3 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v4 = swift_task_alloc();
  *(v6 + 168) = v4;
  *v4 = *(v6 + 64);
  v4[1] = sub_55AC4;

  return sub_64B20(a1);
}

uint64_t sub_55AC4(char a1)
{
  v3 = *v1;
  *(v3 + 64) = *v1;
  *(v3 + 177) = a1;

  return _swift_task_switch(sub_55BE0);
}

uint64_t sub_55BE0(uint64_t a1)
{
  v2 = *(v1 + 177);
  *(v1 + 64) = v1;
  *(v1 + 176) = v2 & 1;
  if (v2)
  {
    v8 = *(v27 + 136);
    v9 = *(v27 + 128);
    sub_7A1C4();
    _objc_retain(v9);
    v12 = sub_65014(v9);
    *(v27 + 88) = v12;
    [v12 setDownloadOnly:0];
    [v12 setTermsAndConditionsAgreementStatus:1];
    v11 = *&v8[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient];
    _objc_retain(v11);
    _objc_retain(v12);
    _objc_retain(v8);
    _objc_retain(v9);
    v5 = swift_allocObject();
    *(v5 + 16) = v8;
    *(v5 + 24) = v9;
    *(v27 + 48) = sub_7A280;
    *(v27 + 56) = v5;
    *(v27 + 16) = _NSConcreteStackBlock;
    *(v27 + 24) = 1107296256;
    *(v27 + 28) = 0;
    *(v27 + 32) = sub_66E30;
    *(v27 + 40) = &unk_AE070;
    aBlock = _Block_copy((v27 + 16));

    [v11 startDownloadWithOptions:v12 withResult:aBlock];
    _Block_release(aBlock);
    _objc_release(v12);
    _objc_release(v11);
    _objc_release(v12);
    v16 = 1;
  }

  else
  {
    v3 = *(v27 + 160);
    v23 = *(v27 + 144);
    v22 = *(v27 + 152);
    v4 = sub_81788();
    (*(v22 + 16))(v3, v4, v23);
    v25 = sub_99390();
    v24 = sub_99D60();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v26 = sub_99F80();
    if (os_log_type_enabled(v25, v24))
    {
      buf = sub_99E40();
      v17 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v19 = sub_F444(0, v17, v17);
      v20 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v27 + 96) = buf;
      *(v27 + 104) = v19;
      *(v27 + 112) = v20;
      sub_F498(0, (v27 + 96));
      sub_F498(0, (v27 + 96));
      *(v27 + 120) = v26;
      v21 = swift_task_alloc();
      v21[2] = v27 + 96;
      v21[3] = v27 + 104;
      v21[4] = v27 + 112;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, v25, v24, "Authentication failed, aborting download and installation", buf, 2u);
      sub_F5B0(v19, 0, v17);
      sub_F5B0(v20, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v14 = *(v27 + 160);
    v15 = *(v27 + 144);
    v13 = *(v27 + 152);
    _objc_release(v25);
    (*(v13 + 8))(v14, v15);
    v16 = 0;
  }

  v6 = *(*(v27 + 64) + 8);

  return v6(v16 & 1);
}

uint64_t sub_561DC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v119 = a5;
  v118 = a4;
  v117 = a3;
  v121 = a2;
  v120 = a1;
  v112 = a1;
  v145 = 0;
  v114 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v113 = 0;
  v135 = 0;
  v115 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v116 = &v48 - v115;
  v122 = sub_993B0();
  v123 = *(v122 - 8);
  v124 = v123;
  v125 = *(v123 + 64);
  v6 = __chkstk_darwin(v120);
  v127 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = &v48 - v127;
  v7 = __chkstk_darwin(v6);
  v128 = &v48 - v127;
  v145 = v7;
  v143 = v8;
  v144 = v9;
  v141 = v10;
  v142 = v11;
  v140 = v5;
  v129 = sub_4CE5C();
  if (v129)
  {
    v110 = v129;
    v12 = v128;
    v90 = v129;
    v135 = v129;
    v13 = sub_81788();
    (*(v124 + 16))(v12, v13, v122);
    v14 = v90;
    v98 = 7;
    v99 = swift_allocObject();
    *(v99 + 16) = v90;
    v109 = sub_99390();
    v91 = v109;
    v108 = sub_99D60();
    v92 = v108;
    v93 = 17;
    v102 = swift_allocObject();
    v94 = v102;
    v95 = 32;
    *(v102 + 16) = 32;
    v15 = swift_allocObject();
    v16 = v95;
    v103 = v15;
    v96 = v15;
    *(v15 + 16) = 8;
    v97 = v16;
    v17 = swift_allocObject();
    v18 = v99;
    v100 = v17;
    *(v17 + 16) = sub_7A39C;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v100;
    v106 = v19;
    v101 = v19;
    *(v19 + 16) = sub_7A44C;
    *(v19 + 24) = v20;
    v107 = sub_22FC(&unk_B5940, &unk_9A9A0);
    v104 = sub_99F80();
    v105 = v21;

    v22 = v102;
    v23 = v105;
    *v105 = sub_7A3D0;
    v23[1] = v22;

    v24 = v103;
    v25 = v105;
    v105[2] = sub_7A404;
    v25[3] = v24;

    v26 = v105;
    v27 = v106;
    v105[4] = sub_7A498;
    v26[5] = v27;
    sub_29D0();

    if (os_log_type_enabled(v109, v108))
    {
      v28 = v113;
      v83 = sub_99E40();
      v80 = v83;
      v81 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v84 = sub_F444(0, v81, v81);
      v82 = v84;
      v86 = 1;
      v85 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v134 = v83;
      v133 = v84;
      v132 = v85;
      v87 = &v134;
      sub_F498(2, &v134);
      sub_F498(v86, v87);
      v130 = sub_7A3D0;
      v131 = v94;
      sub_F4AC(&v130, v87, &v133, &v132);
      v88 = v28;
      v89 = v28;
      if (v28)
      {
        v78 = 0;

        __break(1u);
      }

      else
      {
        v130 = sub_7A404;
        v131 = v96;
        sub_F4AC(&v130, &v134, &v133, &v132);
        v76 = 0;
        v77 = 0;
        v130 = sub_7A498;
        v131 = v101;
        sub_F4AC(&v130, &v134, &v133, &v132);
        v74 = 0;
        v75 = 0;
        _os_log_impl(&dword_0, v91, v92, "installUpdate called with update: %s", v80, 0xCu);
        sub_F5B0(v82, 0, v81);
        sub_F5B0(v85, 1, &type metadata for Any + 8);
        sub_99E20();

        v79 = v74;
      }
    }

    else
    {
      v29 = v113;

      v79 = v29;
    }

    v72 = v79;

    (*(v124 + 8))(v128, v122);
    v70 = 0;
    v30 = sub_99D00();
    (*(*(v30 - 8) + 56))(v116, 1);
    v31 = v111;
    v32 = v90;
    sub_7A4A4(v121, v117);
    sub_7A4D8(v118, v119);
    v33 = swift_allocObject();
    v34 = v111;
    v35 = v112;
    v36 = v121;
    v37 = v117;
    v38 = v118;
    v39 = v119;
    v40 = v70;
    v41 = v116;
    v42 = v90;
    v71 = v33;
    *(v33 + 16) = v70;
    *(v33 + 24) = v40;
    *(v33 + 32) = v34;
    *(v33 + 40) = v42;
    *(v33 + 48) = v35 & 1;
    *(v33 + 56) = v36;
    *(v33 + 64) = v37;
    *(v33 + 72) = v38;
    *(v33 + 80) = v39;
    sub_2A6F4(v40, v40, v41, &unk_9BF40, v33, &type metadata for () + 8);

    return v72;
  }

  else
  {
    v43 = v126;
    v44 = sub_81788();
    (*(v124 + 16))(v43, v44, v122);
    v68 = sub_99390();
    v65 = v68;
    v67 = sub_99D60();
    v66 = v67;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v69 = sub_99F80();
    if (os_log_type_enabled(v68, v67))
    {
      v45 = v113;
      v56 = sub_99E40();
      v52 = v56;
      v53 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v54 = 0;
      v57 = sub_F444(0, v53, v53);
      v55 = v57;
      v58 = sub_F444(v54, &type metadata for Any + 8, &type metadata for Any + 8);
      v139 = v56;
      v138 = v57;
      v137 = v58;
      v59 = 0;
      v60 = &v139;
      sub_F498(0, &v139);
      sub_F498(v59, v60);
      v136 = v69;
      v61 = &v48;
      __chkstk_darwin(&v48);
      v62 = &v48 - 6;
      *(&v48 - 4) = v46;
      *(&v48 - 3) = &v138;
      *(&v48 - 2) = &v137;
      v63 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      v64 = v45;
      if (v45)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v65, v66, "installUpdate called but presentedDescriptor is nil", v52, 2u);
        v50 = 0;
        sub_F5B0(v55, 0, v53);
        sub_F5B0(v58, v50, &type metadata for Any + 8);
        sub_99E20();

        v51 = v64;
      }
    }

    else
    {

      v51 = v113;
    }

    v49 = v51;

    (*(v124 + 8))(v126, v122);
    return v49;
  }
}

uint64_t sub_56F28(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_57064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v8;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 80) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 80) = a6 & 1;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  *(v8 + 32) = v17;
  *(v8 + 40) = v18;
  v9 = swift_task_alloc();
  *(v11 + 72) = v9;
  *v9 = *(v11 + 48);
  v9[1] = sub_571A8;

  return sub_5730C(a5, a6 & 1, a7, a8, v17, v18);
}

uint64_t sub_571A8()
{
  v3 = *v0;
  *(v3 + 48) = *v0;

  v1 = *(*(v3 + 48) + 8);

  return v1();
}

uint64_t sub_5730C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 192) = v6;
  *(v7 + 184) = a6;
  *(v7 + 176) = a5;
  *(v7 + 168) = a4;
  *(v7 + 160) = a3;
  *(v7 + 273) = a2 & 1;
  *(v7 + 152) = a1;
  *(v7 + 64) = v7;
  *(v7 + 72) = 0;
  *(v7 + 272) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 80) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 280) = 0;
  v8 = sub_993B0();
  *(v7 + 200) = v8;
  *(v7 + 208) = *(v8 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 72) = a1;
  *(v7 + 272) = a2 & 1;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 80) = v6;

  return _swift_task_switch(sub_574EC);
}

uint64_t sub_574EC()
{
  v1 = *(v0 + 273);
  *(v0 + 64) = v0;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v50 + 232) = v2;
    *v2 = *(v50 + 64);
    v2[1] = sub_57EB8;
    v3 = *(v50 + 152);

    return sub_64B20(v3);
  }

  else
  {
    v49 = *(v50 + 160);
    sub_7A4A4(v49, *(v50 + 168));
    if (v49)
    {
      v42 = *(v50 + 160);
      v43 = *(v50 + 168);
      v5 = *(v50 + 224);
      v45 = *(v50 + 200);
      v44 = *(v50 + 208);
      *(v50 + 48) = v42;
      *(v50 + 56) = v43;
      v6 = sub_81788();
      (*(v44 + 16))(v5, v6, v45);
      v47 = sub_99390();
      v46 = sub_99D60();
      sub_22FC(&unk_B5940, &unk_9A9A0);
      v48 = sub_99F80();
      if (os_log_type_enabled(v47, v46))
      {
        v38 = sub_99E40();
        v37 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v39 = sub_F444(0, v37, v37);
        v40 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v50 + 120) = v38;
        *(v50 + 128) = v39;
        *(v50 + 136) = v40;
        sub_F498(0, (v50 + 120));
        sub_F498(0, (v50 + 120));
        *(v50 + 144) = v48;
        v41 = swift_task_alloc();
        v41[2] = v50 + 120;
        v41[3] = v50 + 128;
        v41[4] = v50 + 136;
        sub_22FC(&unk_B5950, &qword_9A9B0);
        sub_F528();
        sub_99C20();

        _os_log_impl(&dword_0, v47, v46, "Requesting user approval after authentication...", v38, 2u);
        sub_F5B0(v39, 0, v37);
        sub_F5B0(v40, 0, &type metadata for Any + 8);
        sub_99E20();
      }

      v27 = *(v50 + 224);
      v28 = *(v50 + 200);
      v29 = *(v50 + 192);
      v31 = *(v50 + 184);
      v30 = *(v50 + 176);
      v32 = *(v50 + 152);
      v26 = *(v50 + 208);
      _objc_release(v47);
      (*(v26 + 8))(v27, v28);
      v33 = sub_99B90("performInstallWithPasscodeAndConfirmationFromUser(update:needsPasscode:approvalCallback:failureCallback:)", 0x69uLL, 1);
      v34 = v7;
      *(v50 + 240) = v7;

      _objc_retain(v29);
      sub_7A4D8(v30, v31);
      _objc_retain(v32);
      v35 = swift_task_alloc();
      *(v50 + 248) = v35;
      v35[2] = v42;
      v35[3] = v43;
      v35[4] = v29;
      v35[5] = v30;
      v35[6] = v31;
      v35[7] = v32;
      v8 = swift_task_alloc();
      *(v50 + 256) = v8;
      *v8 = *(v50 + 64);
      v8[1] = sub_58A88;

      return withCheckedContinuation<A>(isolation:function:_:)(v36, 0, 0, v33, v34, sub_7A830, v35);
    }

    else
    {
      v9 = *(v50 + 216);
      v22 = *(v50 + 200);
      v21 = *(v50 + 208);
      v10 = sub_81788();
      (*(v21 + 16))(v9, v10, v22);
      oslog = sub_99390();
      v23 = sub_99D60();
      sub_22FC(&unk_B5940, &unk_9A9A0);
      v25 = sub_99F80();
      if (os_log_type_enabled(oslog, v23))
      {
        buf = sub_99E40();
        v16 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v18 = sub_F444(0, v16, v16);
        v19 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v50 + 88) = buf;
        *(v50 + 96) = v18;
        *(v50 + 104) = v19;
        sub_F498(0, (v50 + 88));
        sub_F498(0, (v50 + 88));
        *(v50 + 112) = v25;
        v20 = swift_task_alloc();
        v20[2] = v50 + 88;
        v20[3] = v50 + 96;
        v20[4] = v50 + 104;
        sub_22FC(&unk_B5950, &qword_9A9B0);
        sub_F528();
        sub_99C20();

        _os_log_impl(&dword_0, oslog, v23, "No approval callback provided, proceeding directly with installation", buf, 2u);
        sub_F5B0(v18, 0, v16);
        sub_F5B0(v19, 0, &type metadata for Any + 8);
        sub_99E20();
      }

      v14 = *(v50 + 216);
      v15 = *(v50 + 200);
      v13 = *(v50 + 208);
      _objc_release(oslog);
      (*(v13 + 8))(v14, v15);
      v11 = swift_task_alloc();
      *(v50 + 264) = v11;
      *v11 = *(v50 + 64);
      v11[1] = sub_58D70;
      v12 = *(v50 + 152);

      return sub_68370(v12);
    }
  }
}

uint64_t sub_57EB8(char a1)
{
  v3 = *v1;
  *(v3 + 64) = *v1;
  *(v3 + 274) = a1;

  return _swift_task_switch(sub_57FD4);
}

uint64_t sub_57FD4()
{
  v1 = *(v0 + 274);
  *(v0 + 64) = v0;
  *(v0 + 280) = v1 & 1;
  if (v1)
  {
    v50 = *(v51 + 160);
    sub_7A4A4(v50, *(v51 + 168));
    if (v50)
    {
      v42 = *(v51 + 160);
      v43 = *(v51 + 168);
      v5 = *(v51 + 224);
      v45 = *(v51 + 200);
      v44 = *(v51 + 208);
      *(v51 + 48) = v42;
      *(v51 + 56) = v43;
      v6 = sub_81788();
      (*(v44 + 16))(v5, v6, v45);
      v47 = sub_99390();
      v46 = sub_99D60();
      sub_22FC(&unk_B5940, &unk_9A9A0);
      v48 = sub_99F80();
      if (os_log_type_enabled(v47, v46))
      {
        buf = sub_99E40();
        v37 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v39 = sub_F444(0, v37, v37);
        v40 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v51 + 120) = buf;
        *(v51 + 128) = v39;
        *(v51 + 136) = v40;
        sub_F498(0, (v51 + 120));
        sub_F498(0, (v51 + 120));
        *(v51 + 144) = v48;
        v41 = swift_task_alloc();
        v41[2] = v51 + 120;
        v41[3] = v51 + 128;
        v41[4] = v51 + 136;
        sub_22FC(&unk_B5950, &qword_9A9B0);
        sub_F528();
        sub_99C20();

        _os_log_impl(&dword_0, v47, v46, "Requesting user approval after authentication...", buf, 2u);
        sub_F5B0(v39, 0, v37);
        sub_F5B0(v40, 0, &type metadata for Any + 8);
        sub_99E20();
      }

      v27 = *(v51 + 224);
      v28 = *(v51 + 200);
      v29 = *(v51 + 192);
      v31 = *(v51 + 184);
      v30 = *(v51 + 176);
      v32 = *(v51 + 152);
      v26 = *(v51 + 208);
      _objc_release(v47);
      (*(v26 + 8))(v27, v28);
      v33 = sub_99B90("performInstallWithPasscodeAndConfirmationFromUser(update:needsPasscode:approvalCallback:failureCallback:)", 0x69uLL, 1);
      v34 = v7;
      *(v51 + 240) = v7;

      _objc_retain(v29);
      sub_7A4D8(v30, v31);
      _objc_retain(v32);
      v35 = swift_task_alloc();
      *(v51 + 248) = v35;
      v35[2] = v42;
      v35[3] = v43;
      v35[4] = v29;
      v35[5] = v30;
      v35[6] = v31;
      v35[7] = v32;
      v8 = swift_task_alloc();
      *(v51 + 256) = v8;
      *v8 = *(v51 + 64);
      v8[1] = sub_58A88;

      return withCheckedContinuation<A>(isolation:function:_:)(v36, 0, 0, v33, v34, sub_7A830, v35);
    }

    else
    {
      v9 = *(v51 + 216);
      v22 = *(v51 + 200);
      v21 = *(v51 + 208);
      v10 = sub_81788();
      (*(v21 + 16))(v9, v10, v22);
      oslog = sub_99390();
      v23 = sub_99D60();
      sub_22FC(&unk_B5940, &unk_9A9A0);
      v25 = sub_99F80();
      if (os_log_type_enabled(oslog, v23))
      {
        v17 = sub_99E40();
        v16 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v18 = sub_F444(0, v16, v16);
        v19 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v51 + 88) = v17;
        *(v51 + 96) = v18;
        *(v51 + 104) = v19;
        sub_F498(0, (v51 + 88));
        sub_F498(0, (v51 + 88));
        *(v51 + 112) = v25;
        v20 = swift_task_alloc();
        v20[2] = v51 + 88;
        v20[3] = v51 + 96;
        v20[4] = v51 + 104;
        sub_22FC(&unk_B5950, &qword_9A9B0);
        sub_F528();
        sub_99C20();

        _os_log_impl(&dword_0, oslog, v23, "No approval callback provided, proceeding directly with installation", v17, 2u);
        sub_F5B0(v18, 0, v16);
        sub_F5B0(v19, 0, &type metadata for Any + 8);
        sub_99E20();
      }

      v14 = *(v51 + 216);
      v15 = *(v51 + 200);
      v13 = *(v51 + 208);
      _objc_release(oslog);
      (*(v13 + 8))(v14, v15);
      v11 = swift_task_alloc();
      *(v51 + 264) = v11;
      *v11 = *(v51 + 64);
      v11[1] = sub_58D70;
      v12 = *(v51 + 152);

      return sub_68370(v12);
    }
  }

  else
  {
    v49 = *(v51 + 176);
    v2 = sub_7A4D8(v49, *(v51 + 184));
    if (v49)
    {
      (*(v51 + 176))(v2);
    }

    v3 = *(*(v51 + 64) + 8);

    return v3();
  }
}

uint64_t sub_58A88()
{
  v2 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v5 = *(*v0 + 152);
  *(*v0 + 64) = *v0;

  sub_3AA9C(v3, v4);

  return _swift_task_switch(sub_58C7C);
}

uint64_t sub_58C7C()
{
  *(v0 + 64) = v0;

  v1 = *(*(v0 + 64) + 8);

  return v1();
}

uint64_t sub_58D70()
{
  v3 = *v0;
  *(v3 + 64) = *v0;

  v1 = *(*(v3 + 64) + 8);

  return v1();
}

void sub_58F34()
{
  v39 = 0;
  v55 = 0;
  v54 = 0;
  v28 = 0;
  v36 = sub_993B0();
  v30 = v36;
  v31 = *(v36 - 8);
  v35 = v31;
  v32 = v31;
  v33 = *(v31 + 64);
  __chkstk_darwin(v36 - 8);
  v0 = &v10 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v0;
  v55 = v1;
  v2 = sub_81788();
  (*(v35 + 16))(v0, v2, v36);
  v41 = sub_99390();
  v37 = v41;
  v40 = sub_99D60();
  v38 = v40;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v42 = sub_99F80();
  if (os_log_type_enabled(v41, v40))
  {
    v3 = v28;
    v19 = sub_99E40();
    v15 = v19;
    v16 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v17 = 0;
    v20 = sub_F444(0, v16, v16);
    v18 = v20;
    v21 = sub_F444(v17, &type metadata for Any + 8, &type metadata for Any + 8);
    v46 = v19;
    v45 = v20;
    v44 = v21;
    v22 = 0;
    v23 = &v46;
    sub_F498(0, &v46);
    sub_F498(v22, v23);
    v43 = v42;
    v24 = &v10;
    __chkstk_darwin(&v10);
    v25 = (&v10 - 6);
    *(&v10 - 4) = v4;
    *(&v10 - 3) = &v45;
    *(&v10 - 2) = &v44;
    v26 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v27 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v37, v38, "rollbackUpdate called", v15, 2u);
      v13 = 0;
      sub_F5B0(v18, 0, v16);
      sub_F5B0(v21, v13, &type metadata for Any + 8);
      sub_99E20();

      v14 = v27;
    }
  }

  else
  {

    v14 = v28;
  }

  (*(v32 + 8))(v34, v30);
  v5 = sub_5104C();
  sub_51058(0xC000000000000038, v5 & 1);
  sub_7A87C();
  v12 = sub_59480();
  v54 = v12;
  v11 = *&v29[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient];
  v6 = v11;
  v7 = v12;
  v8 = v29;
  v9 = swift_allocObject();
  *(v9 + 16) = v29;
  v52 = sub_7A928;
  v53 = v9;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = 0;
  v50 = sub_5AF08;
  v51 = &unk_AE1B0;
  v10 = _Block_copy(&aBlock);

  [v11 rollbackUpdateWithOptions:v12 withResult:v10];
  _Block_release(v10);
}

uint64_t sub_594B0(unsigned int a1, void *a2, uint64_t a3, void *a4)
{
  v86 = a1;
  v87 = a2;
  v89 = a3;
  v80 = a4;
  v90 = sub_7FA68;
  v92 = sub_7FBB4;
  v94 = sub_7FC00;
  v96 = sub_7FC4C;
  v98 = sub_7FABC;
  v100 = sub_7FDB4;
  v105 = sub_7FB04;
  v109 = sub_7FEB4;
  v111 = sub_7FB38;
  v113 = sub_7FB6C;
  v115 = sub_7FC98;
  v117 = sub_7FD38;
  v119 = sub_7FD6C;
  v121 = sub_7FE00;
  v123 = sub_7FE38;
  v125 = sub_7FE6C;
  v128 = sub_7FF00;
  v75 = &protocol witness table for MainActor;
  v76 = &unk_9C160;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v77 = 0;
  v4 = sub_22FC(&unk_B5960, &qword_9BC48);
  v78 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v79 = &v58 - v78;
  v85 = sub_993B0();
  v83 = *(v85 - 8);
  v84 = v85 - 8;
  v81 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v86);
  v6 = &v58 - v81;
  v82 = &v58 - v81;
  v142 = v5 & 1;
  v141 = v7;
  v140 = v8;
  v139 = v9;
  v10 = sub_81788();
  (*(v83 + 16))(v6, v10, v85);
  v103 = 17;
  v107 = 7;
  v11 = swift_allocObject();
  v12 = v87;
  v91 = v11;
  *(v11 + 16) = v86;
  _objc_retain(v12);
  v88 = 24;
  v99 = swift_allocObject();
  *(v99 + 16) = v87;
  swift_errorRetain();
  v108 = swift_allocObject();
  *(v108 + 16) = v89;
  v132 = sub_99390();
  v133 = sub_99D60();
  v112 = swift_allocObject();
  *(v112 + 16) = 0;
  v114 = swift_allocObject();
  *(v114 + 16) = 4;
  v106 = 32;
  v13 = swift_allocObject();
  v14 = v91;
  v93 = v13;
  *(v13 + 16) = v90;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v93;
  v95 = v15;
  *(v15 + 16) = v92;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v95;
  v97 = v17;
  *(v17 + 16) = v94;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v97;
  v116 = v19;
  *(v19 + 16) = v96;
  *(v19 + 24) = v20;
  v118 = swift_allocObject();
  v102 = 32;
  *(v118 + 16) = 32;
  v120 = swift_allocObject();
  v104 = 8;
  *(v120 + 16) = 8;
  v21 = swift_allocObject();
  v22 = v99;
  v101 = v21;
  *(v21 + 16) = v98;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v101;
  v122 = v23;
  *(v23 + 16) = v100;
  *(v23 + 24) = v24;
  v124 = swift_allocObject();
  *(v124 + 16) = v102;
  v126 = swift_allocObject();
  *(v126 + 16) = v104;
  v25 = swift_allocObject();
  v26 = v108;
  v110 = v25;
  *(v25 + 16) = v105;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v110;
  v129 = v27;
  *(v27 + 16) = v109;
  *(v27 + 24) = v28;
  v131 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v127 = sub_99F80();
  v130 = v29;

  v30 = v112;
  v31 = v130;
  *v130 = v111;
  v31[1] = v30;

  v32 = v114;
  v33 = v130;
  v130[2] = v113;
  v33[3] = v32;

  v34 = v116;
  v35 = v130;
  v130[4] = v115;
  v35[5] = v34;

  v36 = v118;
  v37 = v130;
  v130[6] = v117;
  v37[7] = v36;

  v38 = v120;
  v39 = v130;
  v130[8] = v119;
  v39[9] = v38;

  v40 = v122;
  v41 = v130;
  v130[10] = v121;
  v41[11] = v40;

  v42 = v124;
  v43 = v130;
  v130[12] = v123;
  v43[13] = v42;

  v44 = v126;
  v45 = v130;
  v130[14] = v125;
  v45[15] = v44;

  v46 = v129;
  v47 = v130;
  v130[16] = v128;
  v47[17] = v46;
  sub_29D0();

  if (os_log_type_enabled(v132, v133))
  {
    v48 = v77;
    v68 = sub_99E40();
    v67 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v69 = sub_F444(0, v67, v67);
    v70 = sub_F444(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v71 = &v138;
    v138 = v68;
    v72 = &v137;
    v137 = v69;
    v73 = &v136;
    v136 = v70;
    sub_F498(2, &v138);
    sub_F498(3, v71);
    v134 = v111;
    v135 = v112;
    sub_F4AC(&v134, v71, v72, v73);
    v74 = v48;
    if (v48)
    {

      __break(1u);
    }

    else
    {
      v134 = v113;
      v135 = v114;
      sub_F4AC(&v134, &v138, &v137, &v136);
      v66 = 0;
      v134 = v115;
      v135 = v116;
      sub_F4AC(&v134, &v138, &v137, &v136);
      v65 = 0;
      v134 = v117;
      v135 = v118;
      sub_F4AC(&v134, &v138, &v137, &v136);
      v64 = 0;
      v134 = v119;
      v135 = v120;
      sub_F4AC(&v134, &v138, &v137, &v136);
      v63 = 0;
      v134 = v121;
      v135 = v122;
      sub_F4AC(&v134, &v138, &v137, &v136);
      v62 = 0;
      v134 = v123;
      v135 = v124;
      sub_F4AC(&v134, &v138, &v137, &v136);
      v61 = 0;
      v134 = v125;
      v135 = v126;
      sub_F4AC(&v134, &v138, &v137, &v136);
      v60 = 0;
      v134 = v128;
      v135 = v129;
      sub_F4AC(&v134, &v138, &v137, &v136);
      _os_log_impl(&dword_0, v132, v133, "rollbackUpdate call has started with result: %{BOOL}d, rollbackDescriptor: %s, error: %s", v68, 0x1Cu);
      sub_F5B0(v69, 0, v67);
      sub_F5B0(v70, 2, &type metadata for Any + 8);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v132);
  (*(v83 + 8))(v82, v85);
  v58 = 0;
  v49 = sub_99D00();
  (*(*(v49 - 8) + 56))(v79, 1);
  swift_errorRetain();
  _objc_retain(v80);
  sub_99CD0();
  v59 = sub_99CC0();
  v50 = swift_allocObject();
  v51 = v75;
  v52 = v89;
  v53 = v80;
  v54 = v58;
  v55 = v79;
  v56 = v76;
  v50[2] = v59;
  v50[3] = v51;
  v50[4] = v52;
  v50[5] = v53;
  sub_2A6F4(v54, v54, v55, v56, v50, &type metadata for () + 8);
}

uint64_t sub_5A3FC(void *a1)
{
  _objc_retain(a1);
  sub_22FC(&qword_B5878, &qword_9C168);
  return sub_99B50();
}

uint64_t sub_5A458(uint64_t a1)
{
  swift_errorRetain();
  sub_22FC(&unk_B59F0, &unk_9C128);
  return sub_99B50();
}

uint64_t sub_5A4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[6] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[3] = a4;
  v5[4] = a5;
  sub_99CD0();
  v5[8] = sub_99CC0();
  sub_99CA0();

  return _swift_task_switch(sub_5A574);
}

uint64_t sub_5A574()
{
  v5 = *(v0 + 48);
  *(v0 + 16) = v0;
  swift_errorRetain();
  if (v5)
  {
    v3 = v4[6];
    v4[5] = v3;
    swift_errorRetain();
    sub_5A694(0, v3);
  }

  v1 = *(v4[2] + 8);

  return v1();
}

uint64_t sub_5A694(unsigned int a1, uint64_t a2)
{
  v60 = a1;
  v54 = a2;
  v62 = sub_7A9F4;
  v64 = sub_7AF00;
  v66 = sub_7AF74;
  v70 = sub_7AFFC;
  v72 = sub_7AA2C;
  v74 = sub_7AA60;
  v77 = sub_7B048;
  v48 = &protocol witness table for MainActor;
  v49 = &unk_9BF60;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v50 = 0;
  v2 = sub_22FC(&unk_B5960, &qword_9BC48);
  v51 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v52 = &v34 - v51;
  v59 = sub_993B0();
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v55 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v60);
  v4 = &v34 - v55;
  v56 = &v34 - v55;
  v90 = v3 & 1;
  v89 = v5;
  v88 = v6;
  v7 = sub_81788();
  (*(v57 + 16))(v4, v7, v59);
  v61 = 17;
  v68 = 7;
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  v81 = sub_99390();
  v82 = sub_99D60();
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = 4;
  v67 = 32;
  v8 = swift_allocObject();
  v9 = v63;
  v65 = v8;
  *(v8 + 16) = v62;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v65;
  v69 = v10;
  *(v10 + 16) = v64;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v69;
  v71 = v12;
  *(v12 + 16) = v66;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v71;
  v78 = v14;
  *(v14 + 16) = v70;
  *(v14 + 24) = v15;
  v80 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v76 = sub_99F80();
  v79 = v16;

  v17 = v73;
  v18 = v79;
  *v79 = v72;
  v18[1] = v17;

  v19 = v75;
  v20 = v79;
  v79[2] = v74;
  v20[3] = v19;

  v21 = v78;
  v22 = v79;
  v79[4] = v77;
  v22[5] = v21;
  sub_29D0();

  if (os_log_type_enabled(v81, v82))
  {
    v23 = v50;
    v41 = sub_99E40();
    v39 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v40 = 0;
    v42 = sub_F444(0, v39, v39);
    v43 = sub_F444(v40, &type metadata for Any + 8, &type metadata for Any + 8);
    v44 = &v87;
    v87 = v41;
    v45 = &v86;
    v86 = v42;
    v46 = &v85;
    v85 = v43;
    sub_F498(0, &v87);
    sub_F498(1, v44);
    v83 = v72;
    v84 = v73;
    sub_F4AC(&v83, v44, v45, v46);
    v47 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v83 = v74;
      v84 = v75;
      sub_F4AC(&v83, &v87, &v86, &v85);
      v38 = 0;
      v83 = v77;
      v84 = v78;
      sub_F4AC(&v83, &v87, &v86, &v85);
      _os_log_impl(&dword_0, v81, v82, "handleRollbackFinished called, success: %{BOOL}d", v41, 8u);
      v37 = 0;
      sub_F5B0(v42, 0, v39);
      sub_F5B0(v43, v37, &type metadata for Any + 8);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v81);
  (*(v57 + 8))(v56, v59);
  v35 = 0;
  v24 = sub_99D00();
  (*(*(v24 - 8) + 56))(v52, 1);
  _objc_retain(v53);
  swift_errorRetain();
  sub_99CD0();
  v36 = sub_99CC0();
  v25 = swift_allocObject();
  v26 = v48;
  v27 = v60;
  v28 = v53;
  v29 = v54;
  v30 = v35;
  v31 = v52;
  v32 = v49;
  *(v25 + 16) = v36;
  *(v25 + 24) = v26;
  *(v25 + 32) = v27;
  *(v25 + 40) = v28;
  *(v25 + 48) = v29;
  sub_2A6F4(v30, v30, v31, v32, v25, &type metadata for () + 8);
}

uint64_t sub_5AF08(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);

  _objc_retain(a3);
  _objc_retain(a4);
  v6(a2, a3);

  _objc_release(a3);
}

void sub_5AFDC()
{
  v42 = 0;
  v58 = 0;
  v57 = 0;
  v31 = 0;
  v39 = sub_993B0();
  v33 = v39;
  v34 = *(v39 - 8);
  v38 = v34;
  v35 = v34;
  v36 = *(v34 + 64);
  __chkstk_darwin(v39 - 8);
  v0 = v11 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v0;
  v58 = v1;
  v2 = sub_81788();
  (*(v38 + 16))(v0, v2, v39);
  v44 = sub_99390();
  v40 = v44;
  v43 = sub_99D60();
  v41 = v43;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v45 = sub_99F80();
  if (os_log_type_enabled(v44, v43))
  {
    v3 = v31;
    v22 = sub_99E40();
    v18 = v22;
    v19 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v20 = 0;
    v23 = sub_F444(0, v19, v19);
    v21 = v23;
    v24 = sub_F444(v20, &type metadata for Any + 8, &type metadata for Any + 8);
    v49 = v22;
    v48 = v23;
    v47 = v24;
    v25 = 0;
    v26 = &v49;
    sub_F498(0, &v49);
    sub_F498(v25, v26);
    v46 = v45;
    v27 = v11;
    __chkstk_darwin(v11);
    v28 = &v11[-6];
    v11[-4] = v4;
    v11[-3] = &v48;
    v11[-2] = &v47;
    v29 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v30 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v40, v41, "performScan called", v18, 2u);
      v16 = 0;
      sub_F5B0(v21, 0, v19);
      sub_F5B0(v24, v16, &type metadata for Any + 8);
      sub_99E20();

      v17 = v30;
    }
  }

  else
  {

    v17 = v31;
  }

  (*(v35 + 8))(v37, v33);
  v5 = sub_5104C();
  sub_51058(0xC000000000000008, v5 & 1);
  sub_7B3A8();
  v15 = sub_5B59C();
  v57 = v15;
  v6 = sub_4A9BC();
  v11[1] = *v6;
  v11[2] = v6[1];

  v12 = sub_99B20();

  [v15 setIdentifier:v12];

  v14 = *&v32[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient];
  v7 = v14;
  v8 = v15;
  v9 = v32;
  v10 = swift_allocObject();
  *(v10 + 16) = v32;
  v55 = sub_7B454;
  v56 = v10;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = 0;
  v53 = sub_5D5F0;
  v54 = &unk_AE340;
  v13 = _Block_copy(&aBlock);

  [v14 scanForUpdates:v15 withScanResults:v13];
  _Block_release(v13);
}

void sub_5B5CC(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  v61 = a2;
  v53 = a3;
  v62 = sub_7F7BC;
  v64 = sub_7F8B4;
  v69 = sub_7F804;
  v73 = sub_7F9B4;
  v75 = sub_7F838;
  v77 = sub_7F86C;
  v79 = sub_7F900;
  v81 = sub_7F938;
  v83 = sub_7F96C;
  v86 = sub_7FA00;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v52 = 0;
  v58 = sub_993B0();
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v54 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = &v29 - v54;
  v55 = &v29 - v54;
  v99 = __chkstk_darwin(v59);
  v98 = v4;
  v97 = v5;
  v6 = sub_81788();
  (*(v56 + 16))(v3, v6, v58);
  _objc_retain(v59);
  v60 = 24;
  v71 = 7;
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  swift_errorRetain();
  v72 = swift_allocObject();
  *(v72 + 16) = v61;
  v90 = sub_99390();
  v91 = sub_99D60();
  v67 = 17;
  v76 = swift_allocObject();
  v66 = 32;
  *(v76 + 16) = 32;
  v78 = swift_allocObject();
  v68 = 8;
  *(v78 + 16) = 8;
  v70 = 32;
  v7 = swift_allocObject();
  v8 = v63;
  v65 = v7;
  *(v7 + 16) = v62;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v65;
  v80 = v9;
  *(v9 + 16) = v64;
  *(v9 + 24) = v10;
  v82 = swift_allocObject();
  *(v82 + 16) = v66;
  v84 = swift_allocObject();
  *(v84 + 16) = v68;
  v11 = swift_allocObject();
  v12 = v72;
  v74 = v11;
  *(v11 + 16) = v69;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v74;
  v87 = v13;
  *(v13 + 16) = v73;
  *(v13 + 24) = v14;
  v89 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v85 = sub_99F80();
  v88 = v15;

  v16 = v76;
  v17 = v88;
  *v88 = v75;
  v17[1] = v16;

  v18 = v78;
  v19 = v88;
  v88[2] = v77;
  v19[3] = v18;

  v20 = v80;
  v21 = v88;
  v88[4] = v79;
  v21[5] = v20;

  v22 = v82;
  v23 = v88;
  v88[6] = v81;
  v23[7] = v22;

  v24 = v84;
  v25 = v88;
  v88[8] = v83;
  v25[9] = v24;

  v26 = v87;
  v27 = v88;
  v88[10] = v86;
  v27[11] = v26;
  sub_29D0();

  if (os_log_type_enabled(v90, v91))
  {
    v28 = v52;
    v44 = sub_99E40();
    v43 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v45 = sub_F444(0, v43, v43);
    v46 = sub_F444(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v48 = &v96;
    v96 = v44;
    v49 = &v95;
    v95 = v45;
    v50 = &v94;
    v94 = v46;
    v47 = 2;
    sub_F498(2, &v96);
    sub_F498(v47, v48);
    v92 = v75;
    v93 = v76;
    sub_F4AC(&v92, v48, v49, v50);
    v51 = v28;
    if (v28)
    {

      __break(1u);
    }

    else
    {
      v92 = v77;
      v93 = v78;
      sub_F4AC(&v92, &v96, &v95, &v94);
      v42 = 0;
      v92 = v79;
      v93 = v80;
      sub_F4AC(&v92, &v96, &v95, &v94);
      v41 = 0;
      v92 = v81;
      v93 = v82;
      sub_F4AC(&v92, &v96, &v95, &v94);
      v40 = 0;
      v92 = v83;
      v93 = v84;
      sub_F4AC(&v92, &v96, &v95, &v94);
      v39 = 0;
      v92 = v86;
      v93 = v87;
      sub_F4AC(&v92, &v96, &v95, &v94);
      _os_log_impl(&dword_0, v90, v91, "Received scan callback - results: %s, error: %s", v44, 0x16u);
      sub_F5B0(v45, 0, v43);
      sub_F5B0(v46, 2, &type metadata for Any + 8);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v90);
  (*(v56 + 8))(v55, v58);
  _objc_retain(v59);
  if (v59)
  {
    v38 = v59;
    v35 = v59;
    v36 = [v59 preferredDescriptor];
    _objc_release(v35);
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v34 = v37;
  _objc_retain(v59);
  if (v59)
  {
    v33 = v59;
    v30 = v59;
    v31 = [v59 alternateDescriptor];
    _objc_release(v30);
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v29 = v32;
  sub_5C198(v34, v32);
  _objc_release(v29);
  _objc_release(v34);
}

uint64_t sub_5C0E8(void *a1)
{
  _objc_retain(a1);
  sub_22FC(&qword_B5870, &qword_9C150);
  return sub_99B50();
}

uint64_t sub_5C144(uint64_t a1)
{
  swift_errorRetain();
  sub_22FC(&unk_B59F0, &unk_9C128);
  return sub_99B50();
}

uint64_t sub_5C198(void *a1, void *a2)
{
  v159 = a2;
  v168 = a1;
  v158 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v157 = 0;
  v183 = 0;
  v170 = 0;
  v169 = 0;
  v160 = sub_993B0();
  v161 = *(v160 - 8);
  v162 = v161;
  v164 = *(v161 + 64);
  v3 = __chkstk_darwin(v168);
  v166 = (v164 + 15) & 0xFFFFFFFFFFFFFFF0;
  v163 = &v53 - v166;
  v4 = __chkstk_darwin(v3);
  v165 = &v53 - v166;
  v5 = __chkstk_darwin(v4);
  v167 = &v53 - v166;
  v195 = v5;
  v194 = v6;
  v193 = v2;
  v192 = v7;
  v8 = v5;
  if (v168)
  {
    v155 = v168;
    v153 = v168;
    v169 = v168;
    v154 = [v168 isSplatOnly];
    v9 = v153;
    if (v154)
    {
      v152 = 1;
    }

    else
    {
      v152 = [v153 isSplombo];
    }

    v151 = v152;

    if (v151)
    {
      v10 = v153;
      v11 = v192;
      v192 = v153;

      goto LABEL_20;
    }
  }

  v12 = v159;
  if (v159)
  {
    v150 = v159;
    v148 = v159;
    v170 = v159;
    v149 = [v159 isSplatOnly];
    v13 = v148;
    if (v149)
    {
      v147 = 1;
    }

    else
    {
      v147 = [v148 isSplombo];
    }

    v146 = v147;

    if (v146)
    {
      v14 = v148;
      v15 = v192;
      v192 = v148;
    }
  }

LABEL_20:
  v16 = sub_61164(v168, v159);
  sub_4D9F4(v16 & 1);
  v145 = v192;
  v17 = v192;
  v191 = v145;
  v144 = v145 != 0;
  v143 = v144;
  sub_127E0(&v191);
  v18 = v156;
  if (v143)
  {
    v142 = 1;
  }

  else
  {
    v142 = sub_4D884();
  }

  v141 = v142;

  if (v141)
  {
    v19 = sub_5104C();
    sub_51058(0xC000000000000010, v19 & 1);
    v140 = v192;
    v139 = v192;
    v20 = v192;
    if (v140)
    {
      v138 = v139;
      v21 = v167;
      v118 = v139;
      v183 = v139;
      v22 = sub_81788();
      (*(v162 + 16))(v21, v22, v160);
      v23 = v118;
      v126 = 7;
      v127 = swift_allocObject();
      *(v127 + 16) = v118;
      v137 = sub_99390();
      v119 = v137;
      v136 = sub_99D60();
      v120 = v136;
      v121 = 17;
      v130 = swift_allocObject();
      v122 = v130;
      v123 = 32;
      *(v130 + 16) = 32;
      v24 = swift_allocObject();
      v25 = v123;
      v131 = v24;
      v124 = v24;
      *(v24 + 16) = 8;
      v125 = v25;
      v26 = swift_allocObject();
      v27 = v127;
      v128 = v26;
      *(v26 + 16) = sub_7B598;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v128;
      v134 = v28;
      v129 = v28;
      *(v28 + 16) = sub_7B648;
      *(v28 + 24) = v29;
      v135 = sub_22FC(&unk_B5940, &unk_9A9A0);
      v132 = sub_99F80();
      v133 = v30;

      v31 = v130;
      v32 = v133;
      *v133 = sub_7B5CC;
      v32[1] = v31;

      v33 = v131;
      v34 = v133;
      v133[2] = sub_7B600;
      v34[3] = v33;

      v35 = v133;
      v36 = v134;
      v133[4] = sub_7B694;
      v35[5] = v36;
      sub_29D0();

      if (os_log_type_enabled(v137, v136))
      {
        v37 = v157;
        v111 = sub_99E40();
        v108 = v111;
        v109 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v112 = sub_F444(0, v109, v109);
        v110 = v112;
        v114 = 1;
        v113 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v175 = v111;
        v174 = v112;
        v173 = v113;
        v115 = &v175;
        sub_F498(2, &v175);
        sub_F498(v114, v115);
        v171 = sub_7B5CC;
        v172 = v122;
        sub_F4AC(&v171, v115, &v174, &v173);
        v116 = v37;
        v117 = v37;
        if (v37)
        {
          v106 = 0;

          __break(1u);
        }

        else
        {
          v171 = sub_7B600;
          v172 = v124;
          sub_F4AC(&v171, &v175, &v174, &v173);
          v104 = 0;
          v105 = 0;
          v171 = sub_7B694;
          v172 = v129;
          sub_F4AC(&v171, &v175, &v174, &v173);
          v102 = 0;
          v103 = 0;
          _os_log_impl(&dword_0, v119, v120, "handleScanFinished found a splat update to display: %s", v108, 0xCu);
          sub_F5B0(v110, 0, v109);
          sub_F5B0(v113, 1, &type metadata for Any + 8);
          sub_99E20();

          v107 = v102;
        }
      }

      else
      {
        v38 = v157;

        v107 = v38;
      }

      v100 = v107;

      (*(v162 + 8))(v167, v160);
      v39 = v118;
      sub_4CFDC(v118);
      v99 = *&v156[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient];
      v40 = v99;
      v41 = v156;
      v42 = swift_allocObject();
      *(v42 + 16) = v156;
      v181 = sub_7B6E8;
      v182 = v42;
      aBlock = _NSConcreteStackBlock;
      v177 = 1107296256;
      v178 = 0;
      v179 = sub_63880;
      v180 = &unk_AE458;
      v98 = _Block_copy(&aBlock);

      [v99 downloadAndInstallState:v98];
      _Block_release(v98);

      v101 = v100;
    }

    else
    {
      v43 = v165;
      v44 = sub_81788();
      (*(v162 + 16))(v43, v44, v160);
      v96 = sub_99390();
      v93 = v96;
      v95 = sub_99D60();
      v94 = v95;
      sub_22FC(&unk_B5940, &unk_9A9A0);
      v97 = sub_99F80();
      if (os_log_type_enabled(v96, v95))
      {
        v45 = v157;
        v84 = sub_99E40();
        v80 = v84;
        v81 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v82 = 0;
        v85 = sub_F444(0, v81, v81);
        v83 = v85;
        v86 = sub_F444(v82, &type metadata for Any + 8, &type metadata for Any + 8);
        v187[0] = v84;
        v186 = v85;
        v185 = v86;
        v87 = 0;
        v88 = v187;
        sub_F498(0, v187);
        sub_F498(v87, v88);
        v184 = v97;
        v89 = &v53;
        __chkstk_darwin(&v53);
        v90 = &v53 - 6;
        *(&v53 - 4) = v46;
        *(&v53 - 3) = &v186;
        *(&v53 - 2) = &v185;
        v91 = sub_22FC(&unk_B5950, &qword_9A9B0);
        sub_F528();
        sub_99C20();
        v92 = v45;
        if (v45)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_0, v93, v94, "handleScanFinished found (only) a regular updates.", v80, 2u);
          v78 = 0;
          sub_F5B0(v83, 0, v81);
          sub_F5B0(v86, v78, &type metadata for Any + 8);
          sub_99E20();

          v79 = v92;
        }
      }

      else
      {

        v79 = v157;
      }

      v77 = v79;

      (*(v162 + 8))(v165, v160);
      v101 = v77;
    }

    v75 = v101;
    sub_127E0(&v192);
    return v75;
  }

  else
  {
    v47 = v163;
    v48 = sub_81788();
    (*(v162 + 16))(v47, v48, v160);
    v73 = sub_99390();
    v70 = v73;
    v72 = sub_99D60();
    v71 = v72;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v74 = sub_99F80();
    if (os_log_type_enabled(v73, v72))
    {
      v49 = v157;
      v61 = sub_99E40();
      v57 = v61;
      v58 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v59 = 0;
      v62 = sub_F444(0, v58, v58);
      v60 = v62;
      v63 = sub_F444(v59, &type metadata for Any + 8, &type metadata for Any + 8);
      v190 = v61;
      v189 = v62;
      v188 = v63;
      v64 = 0;
      v65 = &v190;
      sub_F498(0, &v190);
      sub_F498(v64, v65);
      v187[2] = v74;
      v66 = &v53;
      __chkstk_darwin(&v53);
      v67 = &v53 - 6;
      *(&v53 - 4) = v50;
      *(&v53 - 3) = &v189;
      *(&v53 - 2) = &v188;
      v68 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      v69 = v49;
      if (v49)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v70, v71, "No updates (splat or regular) has been found in scan results", v57, 2u);
        v55 = 0;
        sub_F5B0(v60, 0, v58);
        sub_F5B0(v63, v55, &type metadata for Any + 8);
        sub_99E20();

        v56 = v69;
      }
    }

    else
    {

      v56 = v157;
    }

    v54 = v56;

    (*(v162 + 8))(v163, v160);
    v51 = sub_5104C();
    sub_51058(0xC000000000000018, v51 & 1);
    sub_127E0(&v192);
    return v54;
  }
}

uint64_t sub_5D5F0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);

  _objc_retain(a2);
  _objc_retain(a3);
  v4(a2);

  _objc_release(a2);
}

uint64_t sub_5D6BC()
{
  v91 = 0;
  v109 = 0;
  v90 = 0;
  v107 = 0;
  v92 = sub_993B0();
  v93 = *(v92 - 8);
  v94 = v93;
  v95 = *(v93 + 64);
  __chkstk_darwin(v92 - 8);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v27 - v97;
  __chkstk_darwin(&v27 - v97);
  v98 = &v27 - v97;
  v109 = v0;
  v114 = v1;
  v100 = *(v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient);
  v2 = v100;
  v108 = v114;
  v101 = [v100 isSplatOnlyUpdateRollbackAllowed:&v108];
  v99 = v108;
  v3 = v108;
  v4 = v114;
  v114 = v99;

  if (v101)
  {
    v5 = v98;
    v6 = sub_81788();
    (*(v94 + 16))(v5, v6, v92);
    v88 = sub_99390();
    v85 = v88;
    v87 = sub_99D60();
    v86 = v87;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v89 = sub_99F80();
    if (os_log_type_enabled(v88, v87))
    {
      v7 = v90;
      v76 = sub_99E40();
      v72 = v76;
      v73 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v74 = 0;
      v77 = sub_F444(0, v73, v73);
      v75 = v77;
      v78 = sub_F444(v74, &type metadata for Any + 8, &type metadata for Any + 8);
      v103 = v76;
      v111 = v77;
      v110 = v78;
      v79 = 0;
      v80 = &v103;
      sub_F498(0, &v103);
      sub_F498(v79, v80);
      v102 = v89;
      v81 = &v27;
      __chkstk_darwin(&v27);
      v82 = &v27 - 6;
      *(&v27 - 4) = v8;
      *(&v27 - 3) = &v111;
      *(&v27 - 2) = &v110;
      v83 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      v84 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v85, v86, "isSplatOnlyUpdateRollbackAllowed returned without throwing an error, rollback is allowed", v72, 2u);
        v70 = 0;
        sub_F5B0(v75, 0, v73);
        sub_F5B0(v78, v70, &type metadata for Any + 8);
        sub_99E20();

        v71 = v84;
      }
    }

    else
    {

      v71 = v90;
    }

    v67 = v71;

    (*(v94 + 8))(v98, v92);
    v68 = 1;
    v69 = v67;
  }

  else
  {
    v44 = v114;
    v47 = sub_99160();
    v45 = v47;

    swift_willThrow();
    v10 = v96;
    v46 = 0;
    swift_errorRetain();
    v107 = v47;
    v11 = sub_81788();
    (*(v94 + 16))(v10, v11, v92);
    swift_errorRetain();
    v55 = 7;
    v53 = swift_allocObject();
    *(v53 + 16) = v47;
    sub_5E334();

    v66 = sub_99390();
    v48 = v66;
    v65 = sub_99D60();
    v49 = v65;
    v50 = 17;
    v59 = swift_allocObject();
    v51 = v59;
    *(v59 + 16) = 64;
    v60 = swift_allocObject();
    v52 = v60;
    *(v60 + 16) = 8;
    v54 = 32;
    v12 = swift_allocObject();
    v13 = v53;
    v56 = v12;
    *(v12 + 16) = sub_7B794;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v56;
    v57 = v14;
    *(v14 + 16) = sub_7B844;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v57;
    v63 = v16;
    v58 = v16;
    *(v16 + 16) = sub_7B890;
    *(v16 + 24) = v17;
    v64 = sub_22FC(&unk_B5940, &unk_9A9A0);
    v61 = sub_99F80();
    v62 = v18;

    v19 = v59;
    v20 = v62;
    *v62 = sub_7B7C8;
    v20[1] = v19;

    v21 = v60;
    v22 = v62;
    v62[2] = sub_7B7FC;
    v22[3] = v21;

    v23 = v62;
    v24 = v63;
    v62[4] = sub_7BA60;
    v23[5] = v24;
    sub_29D0();

    if (os_log_type_enabled(v66, v65))
    {
      v25 = v46;
      v37 = sub_99E40();
      v34 = v37;
      v35 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v40 = 1;
      v38 = sub_F444(1, v35, v35);
      v36 = v38;
      v39 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v106 = v37;
      v113 = v38;
      v112 = v39;
      v41 = &v106;
      sub_F498(2, &v106);
      sub_F498(v40, v41);
      v104 = sub_7B7C8;
      v105 = v51;
      sub_F4AC(&v104, v41, &v113, &v112);
      v42 = v25;
      v43 = v25;
      if (v25)
      {
        v32 = 0;

        __break(1u);
      }

      else
      {
        v104 = sub_7B7FC;
        v105 = v52;
        sub_F4AC(&v104, &v106, &v113, &v112);
        v30 = 0;
        v31 = 0;
        v104 = sub_7BA60;
        v105 = v58;
        sub_F4AC(&v104, &v106, &v113, &v112);
        v28 = 0;
        v29 = 0;
        _os_log_impl(&dword_0, v48, v49, "isSplatOnlyUpdateRollbackAllowed threw an error (%@), rollback is not allowed", v34, 0xCu);
        sub_F5B0(v36, 1, v35);
        sub_F5B0(v39, 0, &type metadata for Any + 8);
        sub_99E20();

        v33 = v28;
      }
    }

    else
    {
      v26 = v46;

      v33 = v26;
    }

    v27 = v33;

    (*(v94 + 8))(v96, v92);

    v68 = 0;
    v69 = v27;
  }

  return v68;
}

id sub_5E360()
{
  v93 = 0;
  v113 = 0;
  v92 = 0;
  v111 = 0;
  v107 = 0;
  v94 = sub_993B0();
  v95 = *(v94 - 8);
  v96 = v95;
  v97 = *(v95 + 64);
  __chkstk_darwin(v94 - 8);
  v99 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = &v27 - v99;
  __chkstk_darwin(&v27 - v99);
  v100 = &v27 - v99;
  v113 = v0;
  v118 = v1;
  v103 = *(v0 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient);
  v2 = v103;
  v112 = v118;
  v104 = [v103 getDocumentationDataForInstalledUpdateType:1 error:&v112];
  v101 = v104;
  v102 = v112;
  v3 = v112;
  v4 = v118;
  v118 = v102;

  if (v104)
  {
    v91 = v101;
    v5 = v100;
    v85 = v101;
    v107 = v101;
    v6 = sub_81788();
    (*(v96 + 16))(v5, v6, v94);
    v89 = sub_99390();
    v86 = v89;
    v88 = sub_99D60();
    v87 = v88;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v90 = sub_99F80();
    if (os_log_type_enabled(v89, v88))
    {
      v7 = v92;
      v76 = sub_99E40();
      v72 = v76;
      v73 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v74 = 0;
      v77 = sub_F444(0, v73, v73);
      v75 = v77;
      v78 = sub_F444(v74, &type metadata for Any + 8, &type metadata for Any + 8);
      v106 = v76;
      v115 = v77;
      v114 = v78;
      v79 = 0;
      v80 = &v106;
      sub_F498(0, &v106);
      sub_F498(v79, v80);
      v105 = v90;
      v81 = &v27;
      __chkstk_darwin(&v27);
      v82 = &v27 - 6;
      *(&v27 - 4) = v8;
      *(&v27 - 3) = &v115;
      *(&v27 - 2) = &v114;
      v83 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      v84 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v86, v87, "Successfully retrieved documentation data for update type SUOSUpdateTypeSplat", v72, 2u);
        v70 = 0;
        sub_F5B0(v75, 0, v73);
        sub_F5B0(v78, v70, &type metadata for Any + 8);
        sub_99E20();

        v71 = v84;
      }
    }

    else
    {

      v71 = v92;
    }

    v67 = v71;

    (*(v96 + 8))(v100, v94);
    v68 = v85;
    v69 = v67;
  }

  else
  {
    v44 = v118;
    v47 = sub_99160();
    v45 = v47;

    swift_willThrow();
    v10 = v98;
    v46 = 0;
    swift_errorRetain();
    v111 = v47;
    v11 = sub_81788();
    (*(v96 + 16))(v10, v11, v94);
    swift_errorRetain();
    v55 = 7;
    v53 = swift_allocObject();
    *(v53 + 16) = v47;
    sub_5E334();

    v66 = sub_99390();
    v48 = v66;
    v65 = sub_99D80();
    v49 = v65;
    v50 = 17;
    v59 = swift_allocObject();
    v51 = v59;
    *(v59 + 16) = 64;
    v60 = swift_allocObject();
    v52 = v60;
    *(v60 + 16) = 8;
    v54 = 32;
    v12 = swift_allocObject();
    v13 = v53;
    v56 = v12;
    *(v12 + 16) = sub_7BADC;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v56;
    v57 = v14;
    *(v14 + 16) = sub_7BB8C;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v57;
    v63 = v16;
    v58 = v16;
    *(v16 + 16) = sub_7BBD8;
    *(v16 + 24) = v17;
    v64 = sub_22FC(&unk_B5940, &unk_9A9A0);
    v61 = sub_99F80();
    v62 = v18;

    v19 = v59;
    v20 = v62;
    *v62 = sub_7BB10;
    v20[1] = v19;

    v21 = v60;
    v22 = v62;
    v62[2] = sub_7BB44;
    v22[3] = v21;

    v23 = v62;
    v24 = v63;
    v62[4] = sub_7BC24;
    v23[5] = v24;
    sub_29D0();

    if (os_log_type_enabled(v66, v65))
    {
      v25 = v46;
      v37 = sub_99E40();
      v34 = v37;
      v35 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v40 = 1;
      v38 = sub_F444(1, v35, v35);
      v36 = v38;
      v39 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v110 = v37;
      v117 = v38;
      v116 = v39;
      v41 = &v110;
      sub_F498(2, &v110);
      sub_F498(v40, v41);
      v108 = sub_7BB10;
      v109 = v51;
      sub_F4AC(&v108, v41, &v117, &v116);
      v42 = v25;
      v43 = v25;
      if (v25)
      {
        v32 = 0;

        __break(1u);
      }

      else
      {
        v108 = sub_7BB44;
        v109 = v52;
        sub_F4AC(&v108, &v110, &v117, &v116);
        v30 = 0;
        v31 = 0;
        v108 = sub_7BC24;
        v109 = v58;
        sub_F4AC(&v108, &v110, &v117, &v116);
        v28 = 0;
        v29 = 0;
        _os_log_impl(&dword_0, v48, v49, "Failed to get documentation data for update type SUOSUpdateTypeSplat: %@", v34, 0xCu);
        sub_F5B0(v36, 1, v35);
        sub_F5B0(v39, 0, &type metadata for Any + 8);
        sub_99E20();

        v33 = v28;
      }
    }

    else
    {
      v26 = v46;

      v33 = v26;
    }

    v27 = v33;

    (*(v96 + 8))(v98, v94);

    v68 = 0;
    v69 = v27;
  }

  return v68;
}

uint64_t sub_5F034(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  *(v6 + 48) = a5;
  *(v6 + 73) = a4 & 1;
  *(v6 + 16) = v6;
  *(v6 + 72) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 72) = a4 & 1;
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  sub_99CD0();
  *(v6 + 64) = sub_99CC0();
  sub_99CA0();

  return _swift_task_switch(sub_5F120);
}

uint64_t sub_5F120()
{
  v1 = *(v0 + 73);
  *(v0 + 16) = v0;
  if (v1)
  {
    sub_51058(0xC000000000000000, 1);
    sub_4FBEC();
  }

  else
  {
    v5 = v6[7];
    swift_errorRetain();
    if (v5)
    {
      v4 = v6[7];
      v6[5] = v4;
      swift_errorRetain();
      sub_51058(v4 | 0x8000000000000000, 1);
      sub_109F4(v4 | 0x8000000000000000);
    }
  }

  v2 = *(v6[2] + 8);

  return v2();
}

uint64_t sub_5F2C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  v45 = 0;
  v37 = sub_993B0();
  v38 = *(v37 - 8);
  v39 = v38;
  __chkstk_darwin(v37 - 8);
  v40 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = a1;
  if (sub_4EA24())
  {
    v4 = v40;
    v5 = sub_81788();
    (*(v39 + 16))(v4, v5, v37);
    v32 = sub_99390();
    v29 = v32;
    v31 = sub_99D60();
    v30 = v31;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v33 = sub_99F80();
    if (os_log_type_enabled(v32, v31))
    {
      v27 = v34;
      v19 = sub_99E40();
      v15 = v19;
      v16 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v17 = 0;
      v20 = sub_F444(0, v16, v16);
      v18 = v20;
      v21 = sub_F444(v17, &type metadata for Any + 8, &type metadata for Any + 8);
      v44 = v19;
      v43 = v20;
      v42 = v21;
      v22 = 0;
      v23 = &v44;
      sub_F498(0, &v44);
      sub_F498(v22, v23);
      v41 = v33;
      v24 = v9;
      __chkstk_darwin(v9);
      v25 = &v9[-48];
      *&v9[-32] = v6;
      *&v9[-24] = &v43;
      *&v9[-16] = &v42;
      v26 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      v7 = v27;
      sub_99C20();
      v28 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v29, v30, "initializeState already in progress, ignoring duplicate call", v15, 2u);
        v13 = 0;
        sub_F5B0(v18, 0, v16);
        sub_F5B0(v21, v13, &type metadata for Any + 8);
        sub_99E20();

        v14 = v28;
      }
    }

    else
    {

      v14 = v34;
    }

    v11 = v14;

    (*(v39 + 8))(v40, v37);
    result = v11;
    *v36 = 0;
    v12 = result;
  }

  else
  {
    v10 = 1;
    sub_4EB94(1);
    result = v34;
    *v36 = v10;
  }

  return result;
}

void sub_5F6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v5 = a4;
  v6 = a1;
  v7 = a2;
  sub_6804C(sub_81014, v4, a3, &type metadata for () + 8, a4);
}

uint64_t sub_5F768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v4[8] = v4;
  v4[9] = 0;
  v5 = sub_993B0();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_22FC(&qword_B4B58, &qword_9B1A0);
  v4[19] = swift_task_alloc();
  v4[9] = a4;

  return _swift_task_switch(sub_5F8B4);
}

uint64_t sub_5F8B4()
{
  v52 = v0;
  v33 = v0[19];
  v34 = v0[18];
  v35 = v0[16];
  v36 = v0[15];
  v38 = v0[14];
  v0[8] = v0;
  v1 = sub_5104C();
  sub_51058(0xC000000000000000, v1 & 1);
  updated = type metadata accessor for UpdateHistoryData(0);
  (*(*(updated - 8) + 56))(v33, 1);
  sub_4B40C(v33);
  sub_4C494(0, 0xF000000000000000);
  sub_4CFDC(0);
  sub_4D9F4(0);
  sub_60654();
  v3 = sub_81788();
  v37 = *(v35 + 16);
  v37(v34, v3, v36);
  _objc_retain(v38);
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  v45 = sub_99390();
  v46 = sub_99D60();
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_80DCC;
  *(v40 + 24) = v39;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_80E7C;
  *(v43 + 24) = v40;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  sub_99F80();
  v44 = v4;

  *v44 = sub_80E00;
  v44[1] = v41;

  v44[2] = sub_80E34;
  v44[3] = v42;

  v44[4] = sub_80EC8;
  v44[5] = v43;
  sub_29D0();

  if (os_log_type_enabled(v45, v46))
  {
    buf = sub_99E40();
    v28 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v30 = sub_F444(0, v28, v28);
    v31 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v47 = buf;
    v48 = v30;
    v49 = v31;
    sub_F498(2, &v47);
    sub_F498(1, &v47);
    v50 = sub_80E00;
    v51 = v41;
    sub_F4AC(&v50, &v47, &v48, &v49);
    v50 = sub_80E34;
    v51 = v42;
    sub_F4AC(&v50, &v47, &v48, &v49);
    v50 = sub_80EC8;
    v51 = v43;
    sub_F4AC(&v50, &v47, &v48, &v49);
    _os_log_impl(&dword_0, v45, v46, "Security update history loaded: %s", buf, 0xCu);
    sub_F5B0(v30, 0, v28);
    sub_F5B0(v31, 1, &type metadata for Any + 8);
    sub_99E20();
  }

  else
  {
  }

  v18 = *(v32 + 144);
  v20 = *(v32 + 136);
  v24 = *(v32 + 120);
  v21 = *(v32 + 112);
  v17 = *(v32 + 128);
  _objc_release(v45);
  v19 = *(v17 + 8);
  v19(v18, v24);
  sub_5AFDC();
  v23 = *&v21[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient];
  _objc_retain(v23);
  _objc_retain(v21);
  v5 = swift_allocObject();
  *(v5 + 16) = v21;
  *(v32 + 48) = sub_80F1C;
  *(v32 + 56) = v5;
  *(v32 + 16) = _NSConcreteStackBlock;
  *(v32 + 24) = 1107296256;
  *(v32 + 28) = 0;
  *(v32 + 32) = sub_5AF08;
  *(v32 + 40) = &unk_AFD58;
  aBlock = _Block_copy((v32 + 16));

  [v23 isRollingBack:aBlock];
  _Block_release(aBlock);
  _objc_release(v23);
  v6 = sub_81788();
  v37(v20, v6, v24);
  oslog = sub_99390();
  v25 = sub_99D60();
  v27 = sub_99F80();
  if (os_log_type_enabled(oslog, v25))
  {
    v13 = sub_99E40();
    v12 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v14 = sub_F444(0, v12, v12);
    v15 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v32 + 80) = v13;
    *(v32 + 88) = v14;
    *(v32 + 96) = v15;
    sub_F498(0, (v32 + 80));
    sub_F498(0, (v32 + 80));
    *(v32 + 104) = v27;
    v16 = swift_task_alloc();
    v16[2] = v32 + 80;
    v16[3] = v32 + 88;
    v16[4] = v32 + 96;
    sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();

    _os_log_impl(&dword_0, oslog, v25, "initializeState completed", v13, 2u);
    sub_F5B0(v14, 0, v12);
    sub_F5B0(v15, 0, &type metadata for Any + 8);
    sub_99E20();
  }

  v11 = *(v32 + 136);
  v9 = *(v32 + 120);
  v10 = *(v32 + 112);
  _objc_release(oslog);
  v19(v11, v9);
  sub_60580(v10);

  v7 = *(*(v32 + 64) + 8);

  return v7();
}

uint64_t sub_60330()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_60380(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_60458;

  return sub_5F768(a1, v6, v7, v8);
}

uint64_t sub_60458()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_60580(char *a1)
{
  v6 = a1;
  v3 = *&a1[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_initializationLock];

  _objc_retain(a1);
  v5 = a1;
  sub_5F6CC(sub_80FBC, v4, v3, &type metadata for () + 8);
  _objc_release(a1);
}

uint64_t sub_60654()
{
  v45 = 0;
  v53 = 0;
  v32 = 0;
  v33 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v34 = v12 - v33;
  v42 = sub_993B0();
  v36 = v42;
  v37 = *(v42 - 8);
  v41 = v37;
  v38 = v37;
  v39 = *(v37 + 64);
  __chkstk_darwin(v42 - 8);
  v0 = v12 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v0;
  v53 = v1;
  v2 = sub_81788();
  (*(v41 + 16))(v0, v2, v42);
  v47 = sub_99390();
  v43 = v47;
  v46 = sub_99D60();
  v44 = v46;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v48 = sub_99F80();
  if (os_log_type_enabled(v47, v46))
  {
    v3 = v32;
    v23 = sub_99E40();
    v19 = v23;
    v20 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v21 = 0;
    v24 = sub_F444(0, v20, v20);
    v22 = v24;
    v25 = sub_F444(v21, &type metadata for Any + 8, &type metadata for Any + 8);
    v52 = v23;
    v51 = v24;
    v50 = v25;
    v26 = 0;
    v27 = &v52;
    sub_F498(0, &v52);
    sub_F498(v26, v27);
    v49 = v48;
    v28 = v12;
    __chkstk_darwin(v12);
    v29 = &v12[-6];
    v12[-4] = v4;
    v12[-3] = &v51;
    v12[-2] = &v50;
    v30 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v31 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v43, v44, "reloadHistory called", v19, 2u);
      v17 = 0;
      sub_F5B0(v22, 0, v20);
      sub_F5B0(v25, v17, &type metadata for Any + 8);
      sub_99E20();

      v18 = v31;
    }
  }

  else
  {

    v18 = v32;
  }

  (*(v38 + 8))(v40, v36);
  sub_99CE0();
  v14 = 0;
  v5 = sub_99D00();
  (*(*(v5 - 8) + 56))(v34, 0, 1);
  v12[1] = 7;
  v13 = swift_allocObject();
  v12[0] = v13 + 16;
  v6 = v35;
  swift_unknownObjectWeakInit();

  v7 = swift_allocObject();
  v8 = v14;
  v9 = v7;
  v10 = v13;
  v15 = v9;
  v9[2] = v14;
  v9[3] = v8;
  v9[4] = v10;

  v16 = sub_6F1F4(v14, v14, v34, &unk_9BF70, v15, &type metadata for () + 8);
  sub_3D660(v34);
}

uint64_t sub_60BCC()
{
  v0 = sub_22FC(&qword_B4B58, &qword_9B1A0);
  v7 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v8 = &v3 - v7;
  sub_4B1C8((&v3 - v7));
  updated = type metadata accessor for UpdateHistoryData(0);
  v6 = (*(*(updated - 8) + 48))(v8, 1) != 1;
  v5 = v6;
  sub_4154(v8);
  if (v5)
  {
    return sub_99B90("found last event", 0x10uLL, 1);
  }

  else
  {
    return sub_99B90("no events", 9uLL, 1);
  }
}

uint64_t sub_60D2C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v39 = a3;
  v42 = a2;
  v41 = a1;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v38 = 0;
  v43 = sub_993B0();
  v44 = *(v43 - 8);
  v45 = v44;
  v4 = __chkstk_darwin(v41);
  v46 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v4;
  v53 = v6;
  v52 = v7;
  v51 = v8;
  if ((v4 & 1) == 0)
  {
    return v38;
  }

  v9 = v46;
  v10 = sub_81788();
  (*(v45 + 16))(v9, v10, v43);
  v36 = sub_99390();
  v33 = v36;
  v35 = sub_99D60();
  v34 = v35;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v37 = sub_99F80();
  if (os_log_type_enabled(v36, v35))
  {
    v11 = v38;
    v24 = sub_99E40();
    v20 = v24;
    v21 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v22 = 0;
    v25 = sub_F444(0, v21, v21);
    v23 = v25;
    v26 = sub_F444(v22, &type metadata for Any + 8, &type metadata for Any + 8);
    v50 = v24;
    v49 = v25;
    v48 = v26;
    v27 = 0;
    v28 = &v50;
    sub_F498(0, &v50);
    sub_F498(v27, v28);
    v47 = v37;
    v29 = &v15;
    __chkstk_darwin(&v15);
    v30 = &v15 - 6;
    *(&v15 - 4) = v12;
    *(&v15 - 3) = &v49;
    *(&v15 - 2) = &v48;
    v31 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v32 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v33, v34, "Rollback in progress detected, setting state to removing", v20, 2u);
      v18 = 0;
      sub_F5B0(v23, 0, v21);
      sub_F5B0(v26, v18, &type metadata for Any + 8);
      sub_99E20();

      v19 = v32;
    }
  }

  else
  {

    v19 = v38;
  }

  v16 = v19;

  (*(v45 + 8))(v46, v43);
  v13 = sub_5104C();
  sub_51058(0xC000000000000038, v13 & 1);
  return v16;
}

uint64_t sub_61164(void *a1, void *a2)
{
  _objc_retain(a1);
  if (!a1)
  {
LABEL_10:
    _objc_retain(a2);
    if (a2)
    {
      v4 = [a2 isSplombo];
      _objc_retain(a2);
      if (v4)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        v3 = [a2 isSplatOnly] ^ 1;
      }

      _objc_release(a2);
      if (v3)
      {
        _objc_release(a2);
        v5 = 1;
        return v5 & 1;
      }

      _objc_release(a2);
    }

    v5 = 0;
    return v5 & 1;
  }

  v7 = [a1 isSplombo];
  _objc_retain(a1);
  if (v7)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = [a1 isSplatOnly] ^ 1;
  }

  _objc_release(a1);
  if ((v6 & 1) == 0)
  {
    _objc_release(a1);
    goto LABEL_10;
  }

  _objc_release(a1);
  v5 = 1;
  return v5 & 1;
}

uint64_t sub_61380(void *a1, int a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;
  v68 = a3;
  v77 = sub_7BF60;
  v79 = sub_7C048;
  v82 = sub_7BF94;
  v84 = sub_7C148;
  v86 = sub_7C194;
  v90 = sub_7C1E0;
  v92 = sub_7BFCC;
  v94 = sub_7C000;
  v96 = sub_7C094;
  v98 = sub_7C0CC;
  v100 = sub_7C100;
  v103 = sub_7C22C;
  v63 = &protocol witness table for MainActor;
  v64 = &unk_9BF80;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v65 = 0;
  v3 = sub_22FC(&unk_B5960, &qword_9BC48);
  v66 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v67 = &v47 - v66;
  v74 = sub_993B0();
  v72 = *(v74 - 8);
  v73 = v74 - 8;
  v70 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v75);
  v5 = &v47 - v70;
  v71 = &v47 - v70;
  v117 = v4;
  v116 = v6 & 1;
  v115 = v7;
  v114 = v8;
  v9 = sub_81788();
  (*(v72 + 16))(v5, v9, v74);
  _objc_retain(v75);
  v88 = 7;
  v78 = swift_allocObject();
  *(v78 + 16) = v75;
  v81 = 17;
  v83 = swift_allocObject();
  *(v83 + 16) = v76;
  v107 = sub_99390();
  v108 = sub_99D60();
  v93 = swift_allocObject();
  *(v93 + 16) = 32;
  v95 = swift_allocObject();
  *(v95 + 16) = 8;
  v87 = 32;
  v10 = swift_allocObject();
  v11 = v78;
  v80 = v10;
  *(v10 + 16) = v77;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v80;
  v97 = v12;
  *(v12 + 16) = v79;
  *(v12 + 24) = v13;
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = 4;
  v14 = swift_allocObject();
  v15 = v83;
  v85 = v14;
  *(v14 + 16) = v82;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v85;
  v89 = v16;
  *(v16 + 16) = v84;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v89;
  v91 = v18;
  *(v18 + 16) = v86;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v91;
  v104 = v20;
  *(v20 + 16) = v90;
  *(v20 + 24) = v21;
  v106 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v102 = sub_99F80();
  v105 = v22;

  v23 = v93;
  v24 = v105;
  *v105 = v92;
  v24[1] = v23;

  v25 = v95;
  v26 = v105;
  v105[2] = v94;
  v26[3] = v25;

  v27 = v97;
  v28 = v105;
  v105[4] = v96;
  v28[5] = v27;

  v29 = v99;
  v30 = v105;
  v105[6] = v98;
  v30[7] = v29;

  v31 = v101;
  v32 = v105;
  v105[8] = v100;
  v32[9] = v31;

  v33 = v104;
  v34 = v105;
  v105[10] = v103;
  v34[11] = v33;
  sub_29D0();

  if (os_log_type_enabled(v107, v108))
  {
    v35 = v65;
    v55 = sub_99E40();
    v54 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v56 = sub_F444(0, v54, v54);
    v57 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v59 = &v113;
    v113 = v55;
    v60 = &v112;
    v112 = v56;
    v61 = &v111;
    v111 = v57;
    v58 = 2;
    sub_F498(2, &v113);
    sub_F498(v58, v59);
    v109 = v92;
    v110 = v93;
    sub_F4AC(&v109, v59, v60, v61);
    v62 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v109 = v94;
      v110 = v95;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v53 = 0;
      v109 = v96;
      v110 = v97;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v52 = 0;
      v109 = v98;
      v110 = v99;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v51 = 0;
      v109 = v100;
      v110 = v101;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v50 = 0;
      v109 = v103;
      v110 = v104;
      sub_F4AC(&v109, &v113, &v112, &v111);
      _os_log_impl(&dword_0, v107, v108, "handleDownloadFinished called for update: %s, success: %{BOOL}d", v55, 0x12u);
      sub_F5B0(v56, 0, v54);
      sub_F5B0(v57, 1, &type metadata for Any + 8);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v107);
  (*(v72 + 8))(v71, v74);
  v48 = 0;
  v36 = sub_99D00();
  (*(*(v36 - 8) + 56))(v67, 1);
  _objc_retain(v75);
  _objc_retain(v69);
  swift_errorRetain();
  sub_99CD0();
  v49 = sub_99CC0();
  v37 = swift_allocObject();
  v38 = v63;
  v39 = v75;
  v40 = v69;
  v41 = v76;
  v42 = v68;
  v43 = v48;
  v44 = v67;
  v45 = v64;
  *(v37 + 16) = v49;
  *(v37 + 24) = v38;
  *(v37 + 32) = v39;
  *(v37 + 40) = v40;
  *(v37 + 48) = v41;
  *(v37 + 56) = v42;
  sub_2A6F4(v43, v43, v44, v45, v37, &type metadata for () + 8);
}

uint64_t sub_61F7C(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_620C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 128) = a7;
  *(v7 + 169) = a6 & 1;
  *(v7 + 120) = a5;
  *(v7 + 112) = a4;
  *(v7 + 32) = v7;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 168) = 0;
  *(v7 + 56) = 0;
  *(v7 + 96) = 0;
  v8 = sub_993B0();
  *(v7 + 136) = v8;
  *(v7 + 144) = *(v8 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 168) = a6 & 1;
  *(v7 + 56) = a7;
  sub_99CD0();
  *(v7 + 160) = sub_99CC0();
  sub_99CA0();

  return _swift_task_switch(sub_62270);
}

uint64_t sub_62270()
{
  v1 = v0[14];
  v25 = v1;
  v0[4] = v0;
  _objc_retain(v1);
  _objc_retain(v25);
  v26 = sub_4CE5C();
  _objc_retain(v26);
  v0[2] = v25;
  v0[3] = v26;
  if (v0[2])
  {
    sub_7CFA8((v24 + 16), (v24 + 104));
    if (*(v24 + 24))
    {
      v27 = *(v24 + 104);
      v28 = *(v24 + 24);
      sub_FFE8();
      v23 = sub_99E10();
      _objc_release(v28);
      _objc_release(v27);
      sub_127E0((v24 + 16));
      _objc_release(v26);
      _objc_release(v25);
      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    _objc_release(*(v24 + 104));
LABEL_9:
    sub_7CED4((v24 + 16));
    _objc_release(v26);
    _objc_release(v25);
    goto LABEL_17;
  }

  if (*(v24 + 24))
  {
    goto LABEL_9;
  }

  sub_127E0((v24 + 16));
  _objc_release(v26);
  _objc_release(v25);
LABEL_11:
  if ((*(v24 + 169) & 1) != 0 || (v22 = *(v24 + 128), swift_errorRetain(), !v22))
  {
    v3 = *(v24 + 152);
    v17 = *(v24 + 136);
    v16 = *(v24 + 144);
    v4 = sub_81788();
    (*(v16 + 16))(v3, v4, v17);
    oslog = sub_99390();
    v18 = sub_99D60();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v20 = sub_99F80();
    if (os_log_type_enabled(oslog, v18))
    {
      buf = sub_99E40();
      v11 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v13 = sub_F444(0, v11, v11);
      v14 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v24 + 64) = buf;
      *(v24 + 72) = v13;
      *(v24 + 80) = v14;
      sub_F498(0, (v24 + 64));
      sub_F498(0, (v24 + 64));
      *(v24 + 88) = v20;
      v15 = swift_task_alloc();
      v15[2] = v24 + 64;
      v15[3] = v24 + 72;
      v15[4] = v24 + 80;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, oslog, v18, "Download finished.", buf, 2u);
      sub_F5B0(v13, 0, v11);
      sub_F5B0(v14, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v9 = *(v24 + 152);
    v10 = *(v24 + 136);
    v8 = *(v24 + 144);
    _objc_release(oslog);
    (*(v8 + 8))(v9, v10);
    v5 = sub_5104C();
    sub_51058(0xC000000000000028, v5 & 1);
  }

  else
  {
    v21 = *(v24 + 128);
    *(v24 + 96) = v21;
    swift_errorRetain();
    v2 = sub_5104C();
    sub_51058(v21, v2 & 1);
    sub_109F4(v21);
  }

LABEL_17:

  v6 = *(*(v24 + 32) + 8);

  return v6();
}

uint64_t sub_62A08(void *a1)
{
  v8 = [a1 humanReadableUpdateName];
  if (v8)
  {
    v4 = sub_99B30();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_99EF0();
  __break(1u);
  return v3;
}

uint64_t sub_62B44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v105 = a5;
  v104 = a4;
  v103 = a3;
  v106 = a2;
  v115 = a1;
  v101 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v102 = 0;
  v125 = 0;
  v120 = 0;
  v107 = sub_993B0();
  v108 = *(v107 - 8);
  v109 = v108;
  v111 = *(v108 + 64);
  v5 = __chkstk_darwin(v115);
  v113 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = &v29 - v113;
  v6 = __chkstk_darwin(v5);
  v112 = &v29 - v113;
  v7 = __chkstk_darwin(v6);
  v114 = &v29 - v113;
  v134 = v7;
  v133 = v8;
  v132 = v9;
  v131 = v10;
  v130 = v11;
  v12 = v7;
  if (v115)
  {
    v100 = v115;
    v93 = v115;
    v125 = v115;
    v15 = [v115 progress];
    v94 = v15;
    if (v15)
    {
      v92 = v94;
      v91 = v94;
      v120 = v94;
      if ([v94 isDone])
      {
        v16 = v112;
        v17 = sub_81788();
        (*(v109 + 16))(v16, v17, v107);
        v89 = sub_99390();
        v86 = v89;
        v88 = sub_99D60();
        v87 = v88;
        sub_22FC(&unk_B5940, &unk_9A9A0);
        v90 = sub_99F80();
        if (os_log_type_enabled(v89, v88))
        {
          v18 = v102;
          v77 = sub_99E40();
          v73 = v77;
          v74 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
          v75 = 0;
          v78 = sub_F444(0, v74, v74);
          v76 = v78;
          v79 = sub_F444(v75, &type metadata for Any + 8, &type metadata for Any + 8);
          v119 = v77;
          v118 = v78;
          v117 = v79;
          v80 = 0;
          v81 = &v119;
          sub_F498(0, &v119);
          sub_F498(v80, v81);
          v116 = v90;
          v82 = &v29;
          __chkstk_darwin(&v29);
          v83 = &v29 - 6;
          *(&v29 - 4) = v19;
          *(&v29 - 3) = &v118;
          *(&v29 - 2) = &v117;
          v84 = sub_22FC(&unk_B5950, &qword_9A9B0);
          sub_F528();
          sub_99C20();
          v85 = v18;
          if (v18)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_0, v86, v87, "Update is already downloaded, setting state to alreadyDownloaded", v73, 2u);
            v71 = 0;
            sub_F5B0(v76, 0, v74);
            sub_F5B0(v79, v71, &type metadata for Any + 8);
            sub_99E20();

            v72 = v85;
          }
        }

        else
        {

          v72 = v102;
        }

        v69 = v72;

        (*(v109 + 8))(v112, v107);
        v20 = sub_5104C();
        sub_51058(0xC000000000000028, v20 & 1);

        v70 = v69;
LABEL_22:
        v46 = v70;

        return v46;
      }
    }

    v21 = v110;
    v22 = sub_81788();
    (*(v109 + 16))(v21, v22, v107);
    v67 = sub_99390();
    v64 = v67;
    v66 = sub_99D60();
    v65 = v66;
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v68 = sub_99F80();
    if (os_log_type_enabled(v67, v66))
    {
      v23 = v102;
      v55 = sub_99E40();
      v51 = v55;
      v52 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v53 = 0;
      v56 = sub_F444(0, v52, v52);
      v54 = v56;
      v57 = sub_F444(v53, &type metadata for Any + 8, &type metadata for Any + 8);
      v124 = v55;
      v123 = v56;
      v122 = v57;
      v58 = 0;
      v59 = &v124;
      sub_F498(0, &v124);
      sub_F498(v58, v59);
      v121 = v68;
      v60 = &v29;
      __chkstk_darwin(&v29);
      v61 = &v29 - 6;
      *(&v29 - 4) = v24;
      *(&v29 - 3) = &v123;
      *(&v29 - 2) = &v122;
      v62 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      v63 = v23;
      if (v23)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v64, v65, "Update is currently downloading, setting state to downloading", v51, 2u);
        v49 = 0;
        sub_F5B0(v54, 0, v52);
        sub_F5B0(v57, v49, &type metadata for Any + 8);
        sub_99E20();

        v50 = v63;
      }
    }

    else
    {

      v50 = v102;
    }

    v48 = v50;

    (*(v109 + 8))(v110, v107);
    v25 = sub_5104C();
    sub_51058(0xC000000000000020, v25 & 1);
    v70 = v48;
    goto LABEL_22;
  }

  v13 = v114;
  v14 = sub_81788();
  (*(v109 + 16))(v13, v14, v107);
  v98 = sub_99390();
  v95 = v98;
  v97 = sub_99D60();
  v96 = v97;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v99 = sub_99F80();
  if (os_log_type_enabled(v98, v97))
  {
    v26 = v102;
    v37 = sub_99E40();
    v33 = v37;
    v34 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v35 = 0;
    v38 = sub_F444(0, v34, v34);
    v36 = v38;
    v39 = sub_F444(v35, &type metadata for Any + 8, &type metadata for Any + 8);
    v129 = v37;
    v128 = v38;
    v127 = v39;
    v40 = 0;
    v41 = &v129;
    sub_F498(0, &v129);
    sub_F498(v40, v41);
    v126 = v99;
    v42 = &v29;
    __chkstk_darwin(&v29);
    v43 = &v29 - 6;
    *(&v29 - 4) = v27;
    *(&v29 - 3) = &v128;
    *(&v29 - 2) = &v127;
    v44 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v45 = v26;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v95, v96, "Update found but not downloaded.", v33, 2u);
      v31 = 0;
      sub_F5B0(v36, 0, v34);
      sub_F5B0(v39, v31, &type metadata for Any + 8);
      sub_99E20();

      v32 = v45;
    }
  }

  else
  {

    v32 = v102;
  }

  v30 = v32;

  (*(v109 + 8))(v114, v107);
  return v30;
}

uint64_t sub_63880(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = *(a1 + 32);

  _objc_retain(a2);
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  v6(a2, a3, a4);

  _objc_release(a4);
  _objc_release(a3);
  _objc_release(a2);
}

uint64_t sub_63A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  sub_99CD0();
  v5[7] = sub_99CC0();
  sub_99CA0();

  return _swift_task_switch(sub_63B58);
}

uint64_t sub_63B58()
{
  v1 = *(v0 + 48);
  v4 = v1;
  *(v0 + 16) = v0;
  sub_2183C(v1);
  sub_4E2B8(v4);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_63C08()
{
  v91 = sub_7C5C0;
  v92 = sub_7C6AC;
  v93 = sub_7C6F8;
  v94 = sub_7C744;
  v95 = sub_7C5F8;
  v96 = sub_7C8AC;
  v97 = sub_7C8F8;
  v98 = sub_7C944;
  v99 = sub_7C630;
  v100 = sub_7C664;
  v101 = sub_7C790;
  v102 = sub_7C830;
  v103 = sub_7C864;
  v104 = sub_7C990;
  v125 = 0;
  v124 = 0;
  v122 = 0;
  v120 = 0;
  v119 = 0;
  v105 = 0;
  v106 = 0;
  v107 = sub_993B0();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v111 = v35 - v110;
  v125 = v0;
  sub_7C530();
  v112 = sub_64AE0();
  v124 = v112;
  v113 = [v112 dataServiceIdentifier];
  if (v113)
  {
    v90 = v113;
    v85 = v113;
    v86 = sub_99B30();
    v87 = v1;
    _objc_release(v85);
    v88 = v86;
    v89 = v87;
  }

  else
  {
    v88 = 0;
    v89 = 0;
  }

  v123[0] = v88;
  v123[1] = v89;
  v84 = v89 != 0;
  v82 = v84;
  sub_48490(v123);
  v122 = v82;
  v83 = [v112 serviceCurrentRadioAccessTechnology];
  if (v83)
  {
    v81 = v83;
    v78 = v83;
    v79 = sub_99AB0();
    _objc_release(v78);
    v80 = v79;
  }

  else
  {
    v80 = 0;
  }

  v77 = v80;
  if (v80)
  {
    v76 = v77;
    v73 = v77;
    v74 = sub_99AD0();

    v75 = v74 & 1;
  }

  else
  {
    v75 = 2;
  }

  v121 = v75;
  if (v75 == 2)
  {
    v72 = 1;
  }

  else
  {
    v72 = v121;
  }

  v71 = v72 ^ 1;
  v120 = (v72 ^ 1) & 1;
  if (v82)
  {
    v70 = 1;
  }

  else
  {
    v70 = v71;
  }

  v2 = v111;
  v45 = v70;
  v46 = 1;
  v119 = v70 & 1;
  v3 = sub_81788();
  (*(v108 + 16))(v2, v3, v107);
  v51 = 17;
  v56 = 7;
  v47 = swift_allocObject();
  *(v47 + 16) = v82 & v46;
  v53 = swift_allocObject();
  *(v53 + 16) = v71 & v46;
  v68 = sub_99390();
  v69 = sub_99D60();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  v60 = swift_allocObject();
  v52 = 4;
  *(v60 + 16) = 4;
  v55 = 32;
  v4 = swift_allocObject();
  v5 = v47;
  v48 = v4;
  *(v4 + 16) = v91;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v48;
  v49 = v6;
  *(v6 + 16) = v92;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v49;
  v50 = v8;
  *(v8 + 16) = v93;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v50;
  v61 = v10;
  *(v10 + 16) = v94;
  *(v10 + 24) = v11;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = v52;
  v12 = swift_allocObject();
  v13 = v53;
  v54 = v12;
  *(v12 + 16) = v95;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v54;
  v57 = v14;
  *(v14 + 16) = v96;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v57;
  v58 = v16;
  *(v16 + 16) = v97;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v58;
  v65 = v18;
  *(v18 + 16) = v98;
  *(v18 + 24) = v19;
  v67 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v64 = sub_99F80();
  v66 = v20;

  v21 = v59;
  v22 = v66;
  *v66 = v99;
  v22[1] = v21;

  v23 = v60;
  v24 = v66;
  v66[2] = v100;
  v24[3] = v23;

  v25 = v61;
  v26 = v66;
  v66[4] = v101;
  v26[5] = v25;

  v27 = v62;
  v28 = v66;
  v66[6] = v102;
  v28[7] = v27;

  v29 = v63;
  v30 = v66;
  v66[8] = v103;
  v30[9] = v29;

  v31 = v65;
  v32 = v66;
  v66[10] = v104;
  v32[11] = v31;
  sub_29D0();

  if (os_log_type_enabled(v68, v69))
  {
    v33 = v105;
    v38 = sub_99E40();
    v36 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v37 = 0;
    v39 = sub_F444(0, v36, v36);
    v40 = sub_F444(v37, &type metadata for Any + 8, &type metadata for Any + 8);
    v41 = &v118;
    v118 = v38;
    v42 = &v117;
    v117 = v39;
    v43 = &v116;
    v116 = v40;
    sub_F498(0, &v118);
    sub_F498(2, v41);
    v114 = v99;
    v115 = v59;
    sub_F4AC(&v114, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v114 = v100;
      v115 = v60;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v35[4] = 0;
      v114 = v101;
      v115 = v61;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v35[3] = 0;
      v114 = v102;
      v115 = v62;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v35[2] = 0;
      v114 = v103;
      v115 = v63;
      sub_F4AC(&v114, &v118, &v117, &v116);
      v35[1] = 0;
      v114 = v104;
      v115 = v65;
      sub_F4AC(&v114, &v118, &v117, &v116);
      _os_log_impl(&dword_0, v68, v69, "Device cellular capability check: dataService=%{BOOL}d, radioTech=%{BOOL}d", v38, 0xEu);
      v35[0] = 0;
      sub_F5B0(v39, 0, v36);
      sub_F5B0(v40, v35[0], &type metadata for Any + 8);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v68);
  (*(v108 + 8))(v111, v107);
  _objc_release(v112);
  return v45 & 1;
}

uint64_t sub_64B20(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_64B80);
}

uint64_t sub_64B80()
{
  v1 = *(v0 + 48);
  v9 = *(v0 + 40);
  *(v0 + 16) = v0;
  v10 = *(v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient);
  _objc_retain(v10);
  _objc_retain(v9);
  v11 = [v10 isInstallationKeybagRequiredForDescriptor:v9];
  _objc_release(v9);
  _objc_release(v10);
  *(v0 + 64) = v11 & 1;
  if (v11 & 1) != 0 || ((v7 = [objc_opt_self() sharedInstance]) == 0 ? (v6 = 2) : (v5 = objc_msgSend(v7, "hasPasscodeSet"), _objc_release(v7), v6 = v5), v6 != 2 && (v6))
  {
    v2 = swift_task_alloc();
    *(v8 + 56) = v2;
    *v2 = *(v8 + 16);
    v2[1] = sub_64EC0;

    return sub_685CC(v11);
  }

  else
  {
    v4 = *(*(v8 + 16) + 8);

    return v4(1);
  }
}

uint64_t sub_64EC0(char a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  *(v4 + 72) = a1;
  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_650C4(void *a1, int a2, void *a3)
{
  v196 = a3;
  v194 = a2;
  v193 = a1;
  v179 = a2;
  v261 = 0;
  v204 = 0;
  v260 = 0;
  v259 = 0;
  v258 = 0;
  v180 = 0;
  v251 = 0;
  v248 = 0;
  v190 = sub_993B0();
  v181 = v190;
  v182 = *(v190 - 8);
  v189 = v182;
  v183 = v182;
  v185 = *(v182 + 64);
  v3 = __chkstk_darwin(v193);
  v187 = (v185 + 15) & 0xFFFFFFFFFFFFFFF0;
  v184 = &v75 - v187;
  v4 = __chkstk_darwin(v3);
  v186 = &v75 - v187;
  v5 = __chkstk_darwin(v4);
  v6 = &v75 - v187;
  v188 = &v75 - v187;
  v261 = v5;
  v260 = v7;
  v259 = v8;
  v258 = v9;
  v10 = sub_81788();
  v191 = *(v189 + 16);
  v192 = (v189 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v191(v6, v10, v190);
  v11 = v193;
  v195 = 24;
  v218 = 7;
  v201 = swift_allocObject();
  *(v201 + 16) = v193;
  v213 = 17;
  v207 = swift_allocObject();
  *(v207 + 16) = v194;
  swift_errorRetain();
  v219 = swift_allocObject();
  *(v219 + 16) = v196;
  v236 = sub_99390();
  v197 = v236;
  v235 = sub_99D60();
  v198 = v235;
  v223 = swift_allocObject();
  v199 = v223;
  v212 = 32;
  *(v223 + 16) = 32;
  v12 = swift_allocObject();
  v13 = v212;
  v224 = v12;
  v200 = v12;
  v215 = 8;
  *(v12 + 16) = 8;
  v217 = v13;
  v14 = swift_allocObject();
  v15 = v201;
  v202 = v14;
  *(v14 + 16) = sub_7CA4C;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v202;
  v225 = v16;
  v203 = v16;
  *(v16 + 16) = sub_7CB7C;
  *(v16 + 24) = v17;
  v226 = swift_allocObject();
  v205 = v226;
  *(v226 + 16) = v204;
  v227 = swift_allocObject();
  v206 = v227;
  *(v227 + 16) = 4;
  v18 = swift_allocObject();
  v19 = v207;
  v208 = v18;
  *(v18 + 16) = sub_7CA80;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v208;
  v209 = v20;
  *(v20 + 16) = sub_7CC7C;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v209;
  v210 = v22;
  *(v22 + 16) = sub_7CCC8;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v210;
  v228 = v24;
  v211 = v24;
  *(v24 + 16) = sub_7CD14;
  *(v24 + 24) = v25;
  v229 = swift_allocObject();
  v214 = v229;
  *(v229 + 16) = v212;
  v230 = swift_allocObject();
  v216 = v230;
  *(v230 + 16) = v215;
  v26 = swift_allocObject();
  v27 = v219;
  v220 = v26;
  *(v26 + 16) = sub_7CACC;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v220;
  v233 = v28;
  v221 = v28;
  *(v28 + 16) = sub_7CE7C;
  *(v28 + 24) = v29;
  v234 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v222 = v234;
  v231 = sub_99F80();
  v232 = v30;

  v31 = v223;
  v32 = v232;
  *v232 = sub_7CB00;
  v32[1] = v31;

  v33 = v224;
  v34 = v232;
  v232[2] = sub_7CB34;
  v34[3] = v33;

  v35 = v225;
  v36 = v232;
  v232[4] = sub_7CBC8;
  v36[5] = v35;

  v37 = v226;
  v38 = v232;
  v232[6] = sub_7CC00;
  v38[7] = v37;

  v39 = v227;
  v40 = v232;
  v232[8] = sub_7CC34;
  v40[9] = v39;

  v41 = v228;
  v42 = v232;
  v232[10] = sub_7CD60;
  v42[11] = v41;

  v43 = v229;
  v44 = v232;
  v232[12] = sub_7CE00;
  v44[13] = v43;

  v45 = v230;
  v46 = v232;
  v232[14] = sub_7CE34;
  v46[15] = v45;

  v47 = v232;
  v48 = v233;
  v232[16] = sub_7CEC8;
  v47[17] = v48;
  sub_29D0();

  if (os_log_type_enabled(v236, v235))
  {
    v49 = v180;
    v172 = sub_99E40();
    v169 = v172;
    v170 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v173 = sub_F444(0, v170, v170);
    v171 = v173;
    v174 = 2;
    v175 = sub_F444(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v241 = v172;
    v240 = v173;
    v239 = v175;
    v176 = &v241;
    sub_F498(v174, &v241);
    sub_F498(3, v176);
    v237 = sub_7CB00;
    v238 = v199;
    sub_F4AC(&v237, v176, &v240, &v239);
    v177 = v49;
    v178 = v49;
    if (v49)
    {
      v167 = 0;

      __break(1u);
    }

    else
    {
      v237 = sub_7CB34;
      v238 = v200;
      sub_F4AC(&v237, &v241, &v240, &v239);
      v165 = 0;
      v166 = 0;
      v237 = sub_7CBC8;
      v238 = v203;
      sub_F4AC(&v237, &v241, &v240, &v239);
      v163 = 0;
      v164 = 0;
      v237 = sub_7CC00;
      v238 = v205;
      sub_F4AC(&v237, &v241, &v240, &v239);
      v161 = 0;
      v162 = 0;
      v237 = sub_7CC34;
      v238 = v206;
      sub_F4AC(&v237, &v241, &v240, &v239);
      v159 = 0;
      v160 = 0;
      v237 = sub_7CD60;
      v238 = v211;
      sub_F4AC(&v237, &v241, &v240, &v239);
      v157 = 0;
      v158 = 0;
      v237 = sub_7CE00;
      v238 = v214;
      sub_F4AC(&v237, &v241, &v240, &v239);
      v155 = 0;
      v156 = 0;
      v237 = sub_7CE34;
      v238 = v216;
      sub_F4AC(&v237, &v241, &v240, &v239);
      v153 = 0;
      v154 = 0;
      v237 = sub_7CEC8;
      v238 = v221;
      sub_F4AC(&v237, &v241, &v240, &v239);
      v151 = 0;
      v152 = 0;
      _os_log_impl(&dword_0, v197, v198, "Download initiated for update: %s success: %{BOOL}d, error: %s", v169, 0x1Cu);
      sub_F5B0(v171, 0, v170);
      sub_F5B0(v175, 2, &type metadata for Any + 8);
      sub_99E20();

      v168 = v151;
    }
  }

  else
  {
    v50 = v180;

    v168 = v50;
  }

  v143 = v168;

  v144 = *(v183 + 8);
  v145 = (v183 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v144(v188, v181);
  v51 = v193;
  v146 = v193;
  v52 = v193;
  v148 = sub_4CE5C();
  v147 = v148;
  v53 = v148;
  v149 = &v256;
  v150 = &v257;
  v256 = v193;
  v257 = v148;
  if (v193)
  {
    sub_7CFA8(v149, v244);
    if (*v150)
    {
      v243 = v244[0];
      v242 = *v150;
      sub_FFE8();
      v141 = sub_99E10();

      sub_127E0(v149);
      v142 = v141;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (*v150)
  {
LABEL_14:
    sub_7CED4(&v256);
    v142 = 0;
    goto LABEL_12;
  }

  sub_127E0(v149);
  v142 = 1;
LABEL_12:
  v140 = v142;

  if ((v140 & 1) == 0)
  {
    v66 = v184;
    v67 = sub_81788();
    v191(v66, v67, v181);
    v97 = sub_99390();
    v94 = v97;
    v96 = sub_99D80();
    v95 = v96;
    v98 = sub_99F80();
    if (os_log_type_enabled(v97, v96))
    {
      v69 = v143;
      v85 = sub_99E40();
      v81 = v85;
      v82 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v83 = 0;
      v86 = sub_F444(0, v82, v82);
      v84 = v86;
      v87 = sub_F444(v83, &type metadata for Any + 8, &type metadata for Any + 8);
      v255 = v85;
      v254 = v86;
      v253 = v87;
      v88 = 0;
      v89 = &v255;
      sub_F498(0, &v255);
      sub_F498(v88, v89);
      v252 = v98;
      v90 = &v75;
      __chkstk_darwin(&v75);
      v91 = &v75 - 6;
      *(&v75 - 4) = v70;
      *(&v75 - 3) = &v254;
      *(&v75 - 2) = &v253;
      v92 = sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      v93 = v69;
      if (v69)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v94, v95, "handleDownloadStarted called with descriptor that doesn't match presentedDescriptor", v81, 2u);
        v79 = 0;
        sub_F5B0(v84, 0, v82);
        sub_F5B0(v87, v79, &type metadata for Any + 8);
        sub_99E20();

        v80 = v93;
      }
    }

    else
    {

      v80 = v143;
    }

    v78 = v80;

    v144(v184, v181);
    v76 = 0;
    sub_75BB0();
    v71 = sub_99B90("Internal error", 0xEuLL, 1);
    v77 = sub_50FF4(v71, v72, -1, v76);
    v73 = sub_5104C();
    sub_51058(v77, v73 & 1);
    sub_109F4(v77);
    return v78;
  }

  v251 = v179 & 1;
  swift_errorRetain();
  if (v196)
  {
    v139 = v196;
    v244[2] = v196;
    v138 = sub_22FC(&qword_B57B8, &qword_9BF90);
    sub_75BB0();
    if (swift_dynamicCast())
    {
      v137 = v244[1];
    }

    else
    {
      v137 = 0;
    }

    v136 = v137;
  }

  else
  {
    v136 = 0;
  }

  v135 = v136;
  if (v136)
  {
    v134 = v135;
    v130 = v135;
    v248 = v135;
    v132 = [v135 code];
    sub_6C954();
    v131 = v54;
    v55 = v130;
    if (v132 == v131)
    {
      v129 = 1;
    }

    else
    {
      v128 = [v130 code];
      sub_6C954();
      v129 = v128 == v56;
    }

    v127 = v129;

    if (v127)
    {
      v251 = 1;
      v126 = 1;
    }

    else
    {
      v125 = [v130 code];
      sub_6C954();
      if (v125 == v57)
      {
        v58 = v186;
        v59 = sub_81788();
        v191(v58, v59, v181);
        v123 = sub_99390();
        v120 = v123;
        v122 = sub_99D60();
        v121 = v122;
        v124 = sub_99F80();
        if (os_log_type_enabled(v123, v122))
        {
          v60 = v143;
          v111 = sub_99E40();
          v107 = v111;
          v108 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
          v109 = 0;
          v112 = sub_F444(0, v108, v108);
          v110 = v112;
          v113 = sub_F444(v109, &type metadata for Any + 8, &type metadata for Any + 8);
          v247 = v111;
          v246 = v112;
          v245 = v113;
          v114 = 0;
          v115 = &v247;
          sub_F498(0, &v247);
          sub_F498(v114, v115);
          v244[3] = v124;
          v116 = &v75;
          __chkstk_darwin(&v75);
          v117 = &v75 - 6;
          *(&v75 - 4) = v61;
          *(&v75 - 3) = &v246;
          *(&v75 - 2) = &v245;
          v118 = sub_22FC(&unk_B5950, &qword_9A9B0);
          sub_F528();
          sub_99C20();
          v119 = v60;
          if (v60)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_0, v120, v121, "update already downloaded.", v107, 2u);
            v105 = 0;
            sub_F5B0(v110, 0, v108);
            sub_F5B0(v113, v105, &type metadata for Any + 8);
            sub_99E20();

            v106 = v119;
          }
        }

        else
        {

          v106 = v143;
        }

        v103 = v106;

        v144(v186, v181);
        v62 = sub_5104C();
        sub_51058(0xC000000000000028, v62 & 1);

        return v103;
      }

      v126 = v179;
    }

    v102 = v126;

    v133 = v102;
  }

  else
  {
    v133 = v179;
  }

  if (v133)
  {
    v101 = 0xC000000000000020;
  }

  else
  {
    swift_errorRetain();
    v249 = v196;
    if (v196)
    {
      v250 = v249;
    }

    else
    {
      v100 = 0;
      sub_75BB0();
      v63 = sub_99B90("Internal error", 0xEuLL, 1);
      v250 = sub_50FF4(v63, v64, -1, v100);
      if (v249)
      {
        sub_7CF4C(&v249);
      }
    }

    v101 = v250;
  }

  v99 = v101;
  v65 = sub_5104C();
  sub_51058(v99, v65 & 1);
  sub_109F4(v99);
  return v143;
}

uint64_t sub_66E30(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = *(a1 + 32);

  _objc_retain(a3);
  v5(a2);
}

uint64_t sub_66EDC(uint64_t a1, void (*a2)(uint64_t (*)()), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v26 = a1;
  v39 = a2;
  v43 = a3;
  v25 = a4;
  v30 = a5;
  v31 = a6;
  v37 = a7;
  v40 = sub_802B8;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v45 = 0;
  v36 = sub_22FC(&qword_B5880, &qword_9C170);
  v32 = *(v36 - 8);
  v33 = v36 - 8;
  v27 = v32;
  v28 = *(v32 + 64);
  v24 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v24 - v24;
  v53 = __chkstk_darwin(v26);
  v51 = v8;
  v52 = a3;
  v50 = v9;
  v48 = v10;
  v49 = v11;
  v47 = v12;
  v46 = 0;
  v44 = sub_671F4(&v46, &type metadata for Bool);
  v45 = v44;

  v29 = 7;
  v42 = swift_allocObject();
  _objc_retain(v25);
  swift_unknownObjectWeakInit();
  _objc_release(v25);

  sub_7A4D8(v30, v31);
  (*(v32 + 16))(v35, v26, v36);
  _objc_retain(v37);
  v34 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v38 = (v34 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v14 = v30;
  v15 = v31;
  v16 = v32;
  v17 = v34;
  v18 = v35;
  v19 = v36;
  v20 = v42;
  v41 = v13;
  v13[2] = v44;
  v13[3] = v20;
  v13[4] = v14;
  v13[5] = v15;
  (*(v16 + 32))(v13 + v17, v18, v19);
  v21 = v39;
  v22 = v40;
  *(v41 + v38) = v37;
  v21(v22);
}

uint64_t sub_671F4(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v10 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v4 = &v3 - v3;
  (*(v5 + 16))();
  v9 = sub_77494(v4, v7);
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t sub_672E8(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void *a7)
{
  v101 = a7;
  v100 = a6;
  v99 = a5;
  v98 = a4;
  v97 = a3;
  v102 = a2;
  v103 = a1;
  v88 = a1;
  v132 = 0;
  v104 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v124 = 0;
  v118 = 0;
  v89 = sub_22FC(&qword_B5880, &qword_9C170);
  v90 = *(v89 - 8);
  v91 = v90;
  v92 = *(v90 + 64);
  v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89 - 8);
  v94 = v36 - v93;
  v95 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v104);
  v96 = v36 - v95;
  v105 = sub_993B0();
  v106 = *(v105 - 8);
  v107 = v106;
  v108 = *(v106 + 64);
  v7 = __chkstk_darwin(v103);
  v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v36 - v110;
  v8 = __chkstk_darwin(v7);
  v111 = v36 - v110;
  v132 = v8;
  v131 = v9;
  v112 = v10 + 16;
  v130 = v10 + 16;
  v128 = v11;
  v129 = v12;
  v127 = v13;
  v126 = v14;
  sub_6804C(sub_67FF4, v15, v9, &type metadata for Bool, &type metadata for Bool);
  v113 = 0;
  v124 = v125;
  if (v125 != 1)
  {
    return v113;
  }

  v85 = &v123;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v86 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v84 = v86;
    v83 = v84;
    v118 = v84;
    if (v88)
    {
      v16 = v111;
      v17 = sub_81788();
      (*(v107 + 16))(v16, v17, v105);
      v81 = sub_99390();
      v78 = v81;
      v80 = sub_99D60();
      v79 = v80;
      sub_22FC(&unk_B5940, &unk_9A9A0);
      v82 = sub_99F80();
      if (os_log_type_enabled(v81, v80))
      {
        v18 = v113;
        v69 = sub_99E40();
        v65 = v69;
        v66 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v67 = 0;
        v70 = sub_F444(0, v66, v66);
        v68 = v70;
        v71 = sub_F444(v67, &type metadata for Any + 8, &type metadata for Any + 8);
        v117 = v69;
        v116 = v70;
        v115 = v71;
        v72 = 0;
        v73 = &v117;
        sub_F498(0, &v117);
        sub_F498(v72, v73);
        v114 = v82;
        v74 = v36;
        __chkstk_darwin(v36);
        v75 = &v36[-6];
        v36[-4] = v19;
        v36[-3] = &v116;
        v36[-2] = &v115;
        v76 = sub_22FC(&unk_B5950, &qword_9A9B0);
        sub_F528();
        sub_99C20();
        v77 = v18;
        if (v18)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_0, v78, v79, "User approved installation after authentication, proceeding...", v65, 2u);
          v63 = 0;
          sub_F5B0(v68, 0, v66);
          sub_F5B0(v71, v63, &type metadata for Any + 8);
          sub_99E20();

          v64 = v77;
        }
      }

      else
      {

        v64 = v113;
      }

      v61 = v64;

      (*(v107 + 8))(v111, v105);
      v59 = 0;
      v20 = sub_99D00();
      (*(*(v20 - 8) + 56))(v96, 1);
      v21 = v83;
      v22 = v101;
      (*(v91 + 16))(v94, v100, v89);
      v58 = (*(v91 + 80) + 48) & ~*(v91 + 80);
      v23 = swift_allocObject();
      v24 = v101;
      v25 = v58;
      v26 = v91;
      v27 = v94;
      v28 = v89;
      v29 = v59;
      v30 = v83;
      v60 = v23;
      v23[2] = v59;
      v23[3] = v29;
      v23[4] = v30;
      v23[5] = v24;
      (*(v26 + 32))(v23 + v25, v27, v28);
      sub_2A6F4(v59, v59, v96, &unk_9C180, v60, &type metadata for () + 8);

      return v61;
    }
  }

  v31 = v109;
  v32 = sub_81788();
  (*(v107 + 16))(v31, v32, v105);
  v56 = sub_99390();
  v53 = v56;
  v55 = sub_99D60();
  v54 = v55;
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v57 = sub_99F80();
  if (os_log_type_enabled(v56, v55))
  {
    v33 = v113;
    v44 = sub_99E40();
    v40 = v44;
    v41 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v42 = 0;
    v45 = sub_F444(0, v41, v41);
    v43 = v45;
    v46 = sub_F444(v42, &type metadata for Any + 8, &type metadata for Any + 8);
    v122 = v44;
    v121 = v45;
    v120 = v46;
    v47 = 0;
    v48 = &v122;
    sub_F498(0, &v122);
    sub_F498(v47, v48);
    v119 = v57;
    v49 = v36;
    __chkstk_darwin(v36);
    v50 = &v36[-6];
    v36[-4] = v34;
    v36[-3] = &v121;
    v36[-2] = &v120;
    v51 = sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    v52 = v33;
    if (v33)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v53, v54, "User cancelled installation after authentication", v40, 2u);
      v38 = 0;
      sub_F5B0(v43, 0, v41);
      sub_F5B0(v46, v38, &type metadata for Any + 8);
      sub_99E20();

      v39 = v52;
    }
  }

  else
  {

    v39 = v113;
  }

  v37 = v39;

  (*(v107 + 8))(v109, v105);
  sub_7A4D8(v98, v99);
  if (v98)
  {
    v36[1] = v98;
    v36[2] = v99;
    v36[0] = v99;
    (v98)(v99);
  }

  sub_680B0(v89);
  return v37;
}

_BYTE *sub_67FF4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result)
  {
    *a2 = 0;
  }

  else
  {
    *result = 1;
    *a2 = 1;
  }

  return result;
}

uint64_t sub_680CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  v6[2] = v6;
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  v7 = swift_task_alloc();
  *(v9 + 56) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_681B0;

  return sub_68370(a5);
}

uint64_t sub_681B0()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_682C8);
}

uint64_t sub_682C8()
{
  *(v0 + 16) = v0;
  v1 = sub_22FC(&qword_B5880, &qword_9C170);
  sub_680B0(v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_68370(uint64_t a1)
{
  v2[13] = v1;
  v2[12] = a1;
  v2[8] = v2;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[9] = a1;
  v2[10] = v1;
  return _swift_task_switch(sub_683C4);
}

uint64_t sub_683C4()
{
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  *(v0 + 64) = v0;
  sub_7CFE8();
  v8 = sub_6BAE8();
  *(v0 + 88) = v8;
  v7 = *&v4[OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient];
  _objc_retain(v7);
  _objc_retain(v8);
  _objc_retain(v4);
  _objc_retain(v5);
  v1 = swift_allocObject();
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v0 + 48) = sub_7D0A4;
  *(v0 + 56) = v1;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 28) = 0;
  *(v0 + 32) = sub_66E30;
  *(v0 + 40) = &unk_AEDB8;
  aBlock = _Block_copy((v0 + 16));

  [v7 installUpdateWithInstallOptions:v8 withResult:aBlock];
  _Block_release(aBlock);
  _objc_release(v8);
  _objc_release(v7);
  _objc_release(v8);
  v2 = *(*(v0 + 64) + 8);

  return v2();
}

uint64_t sub_685CC(char a1)
{
  *(v2 + 408) = v1;
  *(v2 + 530) = a1 & 1;
  *(v2 + 176) = v2;
  *(v2 + 528) = 0;
  *(v2 + 184) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 256) = 0;
  *(v2 + 536) = 0;
  *(v2 + 328) = 0;
  *(v2 + 336) = 0;
  *(v2 + 544) = 0;
  v3 = sub_993B0();
  *(v2 + 416) = v3;
  *(v2 + 424) = *(v3 - 8);
  *(v2 + 432) = swift_task_alloc();
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = swift_task_alloc();
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 528) = a1 & 1;
  *(v2 + 184) = v1;
  v4 = swift_task_alloc();
  *(v7 + 480) = v4;
  *v4 = *(v7 + 176);
  v4[1] = sub_687C8;

  return sub_6F784();
}

uint64_t sub_687C8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v4[22] = *v2;
  v4[61] = a1;
  v4[62] = a2;

  return _swift_task_switch(sub_688E8);
}

uint64_t sub_688E8()
{
  v47 = v0[62];
  v1 = v0[61];
  v0[22] = v0;
  v0[18] = v1;
  v0[19] = v47;
  sub_4C180(v1, v47);
  if ((v47 & 0xF000000000000000) == 0xF000000000000000)
  {
    v6 = *(v46 + 432);
    v21 = *(v46 + 416);
    v20 = *(v46 + 424);
    v7 = sub_81788();
    (*(v20 + 16))(v6, v7, v21);
    oslog = sub_99390();
    v22 = sub_99D80();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v24 = sub_99F80();
    if (os_log_type_enabled(oslog, v22))
    {
      buf = sub_99E40();
      v15 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v17 = sub_F444(0, v15, v15);
      v18 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v46 + 192) = buf;
      *(v46 + 200) = v17;
      *(v46 + 208) = v18;
      sub_F498(0, (v46 + 192));
      sub_F498(0, (v46 + 192));
      *(v46 + 216) = v24;
      v19 = swift_task_alloc();
      v19[2] = v46 + 192;
      v19[3] = v46 + 200;
      v19[4] = v46 + 208;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, oslog, v22, "Failed to obtain passcode", buf, 2u);
      sub_F5B0(v17, 0, v15);
      sub_F5B0(v18, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v14 = *(v46 + 496);
    v13 = *(v46 + 488);
    v11 = *(v46 + 432);
    v12 = *(v46 + 416);
    v10 = *(v46 + 424);
    _objc_release(oslog);
    (*(v10 + 8))(v11, v12);
    sub_4C264(v13, v14);
    v30 = 0;
  }

  else
  {
    v2 = *(v46 + 496);
    v3 = *(v46 + 530);
    *(v46 + 160) = *(v46 + 488);
    *(v46 + 168) = v2;
    if (v3)
    {
      v41 = *(v46 + 496);
      v42 = *(v46 + 488);
      sub_7D178();
      v45 = sub_72320();
      *(v46 + 504) = v45;
      *(v46 + 256) = v45;
      sub_1A538(v42, v41);
      isa = sub_991D0().super.isa;
      *(v46 + 512) = isa;
      sub_1A6B0(v42, v41);
      *(v46 + 16) = *(v46 + 176);
      *(v46 + 56) = v46 + 529;
      *(v46 + 24) = sub_692BC;
      v43 = swift_continuation_init();
      *(v46 + 136) = sub_22FC(&qword_B57D0, &qword_9BFA0);
      *(v46 + 112) = v43;
      *(v46 + 80) = _NSConcreteStackBlock;
      *(v46 + 88) = 1107296256;
      *(v46 + 92) = 0;
      *(v46 + 96) = sub_72350;
      *(v46 + 104) = &unk_AEDE0;
      [v45 setCredential:isa type:-8 reply:?];

      return _swift_continuation_await(v46 + 16);
    }

    v4 = *(v46 + 440);
    v37 = *(v46 + 416);
    v36 = *(v46 + 424);
    v5 = sub_81788();
    (*(v36 + 16))(v4, v5, v37);
    v39 = sub_99390();
    v38 = sub_99D60();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v40 = sub_99F80();
    if (os_log_type_enabled(v39, v38))
    {
      v32 = sub_99E40();
      v31 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v33 = sub_F444(0, v31, v31);
      v34 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v46 + 224) = v32;
      *(v46 + 232) = v33;
      *(v46 + 240) = v34;
      sub_F498(0, (v46 + 224));
      sub_F498(0, (v46 + 224));
      *(v46 + 248) = v40;
      v35 = swift_task_alloc();
      v35[2] = v46 + 224;
      v35[3] = v46 + 232;
      v35[4] = v46 + 240;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, v39, v38, "Passcode requested, but ignore its result as shouldCommitTheKeybag is false", v32, 2u);
      sub_F5B0(v33, 0, v31);
      sub_F5B0(v34, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v29 = *(v46 + 496);
    v28 = *(v46 + 488);
    v26 = *(v46 + 440);
    v27 = *(v46 + 416);
    v25 = *(v46 + 424);
    _objc_release(v39);
    (*(v25 + 8))(v26, v27);
    sub_1A6B0(v28, v29);
    sub_4C264(v28, v29);
    v30 = 1;
  }

  v8 = *(*(v46 + 176) + 8);

  return v8(v30 & 1);
}

uint64_t sub_692BC()
{
  v4 = *v0;
  v4[22] = *v0;
  v1 = v4[6];
  v4[65] = v1;
  if (v1)
  {
    v2 = sub_6A774;
  }

  else
  {
    v2 = sub_69414;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_69414()
{
  v1 = *(v0 + 512);
  *(v0 + 176) = v0;
  v84 = *(v0 + 529);
  _objc_release(v1);
  *(v0 + 536) = v84;
  if (v84 != 2 && (v84 & 1) != 0)
  {
    v82 = sub_4CE5C();
    if (v82)
    {
      v77 = *(v83 + 504);
      v78 = *(v83 + 408);
      *(v83 + 328) = v82;
      sub_7D380();
      v79 = sub_7240C();
      *(v83 + 336) = v79;
      _objc_retain(v82);
      [v79 setDescriptor:v82];
      _objc_release(v82);
      [v79 setKeybagType:0];
      _objc_retain(v77);
      [v79 setLaContext:v77];
      _objc_release(v77);
      v80 = *(v78 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_suClient);
      _objc_retain(v80);
      _objc_retain(v79);
      v81 = [v80 createInstallationKeybagWithOptions:v79];
      _objc_release(v79);
      _objc_release(v80);
      *(v83 + 544) = v81 & 1;
      if (v81)
      {
        v2 = *(v83 + 472);
        v73 = *(v83 + 416);
        v72 = *(v83 + 424);
        v3 = sub_81788();
        (*(v72 + 16))(v2, v3, v73);
        v75 = sub_99390();
        v74 = sub_99D60();
        sub_22FC(&unk_B5940, &unk_9A9A0);
        v76 = sub_99F80();
        if (os_log_type_enabled(v75, v74))
        {
          v68 = sub_99E40();
          v67 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
          v69 = sub_F444(0, v67, v67);
          v70 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
          *(v83 + 376) = v68;
          *(v83 + 384) = v69;
          *(v83 + 392) = v70;
          sub_F498(0, (v83 + 376));
          sub_F498(0, (v83 + 376));
          *(v83 + 400) = v76;
          v71 = swift_task_alloc();
          v71[2] = v83 + 376;
          v71[3] = v83 + 384;
          v71[4] = v83 + 392;
          sub_22FC(&unk_B5950, &qword_9A9B0);
          sub_F528();
          sub_99C20();

          _os_log_impl(&dword_0, v75, v74, "keybag created successfully", v68, 2u);
          sub_F5B0(v69, 0, v67);
          sub_F5B0(v70, 0, &type metadata for Any + 8);
          sub_99E20();
        }

        v63 = *(v83 + 504);
        v65 = *(v83 + 496);
        v64 = *(v83 + 488);
        v61 = *(v83 + 472);
        v62 = *(v83 + 416);
        v60 = *(v83 + 424);
        _objc_release(v75);
        (*(v60 + 8))(v61, v62);
        _objc_release(v79);
        _objc_release(v82);
        _objc_release(v63);
        sub_1A6B0(v64, v65);
        sub_4C264(v64, v65);
        v66 = 1;
      }

      else
      {
        v4 = *(v83 + 464);
        v56 = *(v83 + 416);
        v55 = *(v83 + 424);
        v5 = sub_81788();
        (*(v55 + 16))(v4, v5, v56);
        oslog = sub_99390();
        v57 = sub_99D80();
        sub_22FC(&unk_B5940, &unk_9A9A0);
        v59 = sub_99F80();
        if (os_log_type_enabled(oslog, v57))
        {
          buf = sub_99E40();
          v50 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
          v52 = sub_F444(0, v50, v50);
          v53 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
          *(v83 + 344) = buf;
          *(v83 + 352) = v52;
          *(v83 + 360) = v53;
          sub_F498(0, (v83 + 344));
          sub_F498(0, (v83 + 344));
          *(v83 + 368) = v59;
          v54 = swift_task_alloc();
          v54[2] = v83 + 344;
          v54[3] = v83 + 352;
          v54[4] = v83 + 360;
          sub_22FC(&unk_B5950, &qword_9A9B0);
          sub_F528();
          sub_99C20();

          _os_log_impl(&dword_0, oslog, v57, "Unable to create keybag, suClient failed to create", buf, 2u);
          sub_F5B0(v52, 0, v50);
          sub_F5B0(v53, 0, &type metadata for Any + 8);
          sub_99E20();
        }

        v47 = *(v83 + 504);
        v49 = *(v83 + 496);
        v48 = *(v83 + 488);
        v45 = *(v83 + 464);
        v46 = *(v83 + 416);
        v44 = *(v83 + 424);
        _objc_release(oslog);
        (*(v44 + 8))(v45, v46);
        _objc_release(v79);
        _objc_release(v82);
        _objc_release(v47);
        sub_1A6B0(v48, v49);
        sub_4C264(v48, v49);
        v66 = 0;
      }
    }

    else
    {
      v6 = *(v83 + 456);
      v40 = *(v83 + 416);
      v39 = *(v83 + 424);
      v7 = sub_81788();
      (*(v39 + 16))(v6, v7, v40);
      log = sub_99390();
      v41 = sub_99D80();
      sub_22FC(&unk_B5940, &unk_9A9A0);
      v43 = sub_99F80();
      if (os_log_type_enabled(log, v41))
      {
        v35 = sub_99E40();
        v34 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
        v36 = sub_F444(0, v34, v34);
        v37 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v83 + 296) = v35;
        *(v83 + 304) = v36;
        *(v83 + 312) = v37;
        sub_F498(0, (v83 + 296));
        sub_F498(0, (v83 + 296));
        *(v83 + 320) = v43;
        v38 = swift_task_alloc();
        v38[2] = v83 + 296;
        v38[3] = v83 + 304;
        v38[4] = v83 + 312;
        sub_22FC(&unk_B5950, &qword_9A9B0);
        sub_F528();
        sub_99C20();

        _os_log_impl(&dword_0, log, v41, "presentedDescriptor is nil, this should not happen.", v35, 2u);
        sub_F5B0(v36, 0, v34);
        sub_F5B0(v37, 0, &type metadata for Any + 8);
        sub_99E20();
      }

      v31 = *(v83 + 504);
      v33 = *(v83 + 496);
      v32 = *(v83 + 488);
      v29 = *(v83 + 456);
      v30 = *(v83 + 416);
      v28 = *(v83 + 424);
      _objc_release(log);
      (*(v28 + 8))(v29, v30);
      _objc_release(v31);
      sub_1A6B0(v32, v33);
      sub_4C264(v32, v33);
      v66 = 0;
    }
  }

  else
  {
    v8 = *(v83 + 448);
    v24 = *(v83 + 416);
    v23 = *(v83 + 424);
    v9 = sub_81788();
    (*(v23 + 16))(v8, v9, v24);
    v26 = sub_99390();
    v25 = sub_99D80();
    sub_22FC(&unk_B5940, &unk_9A9A0);
    v27 = sub_99F80();
    if (os_log_type_enabled(v26, v25))
    {
      v19 = sub_99E40();
      v18 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v20 = sub_F444(0, v18, v18);
      v21 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v83 + 264) = v19;
      *(v83 + 272) = v20;
      *(v83 + 280) = v21;
      sub_F498(0, (v83 + 264));
      sub_F498(0, (v83 + 264));
      *(v83 + 288) = v27;
      v22 = swift_task_alloc();
      v22[2] = v83 + 264;
      v22[3] = v83 + 272;
      v22[4] = v83 + 280;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, v26, v25, "Failed to set credential", v19, 2u);
      sub_F5B0(v20, 0, v18);
      sub_F5B0(v21, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    v15 = *(v83 + 504);
    v17 = *(v83 + 496);
    v16 = *(v83 + 488);
    v13 = *(v83 + 448);
    v14 = *(v83 + 416);
    v12 = *(v83 + 424);
    _objc_release(v26);
    (*(v12 + 8))(v13, v14);
    _objc_release(v15);
    sub_1A6B0(v16, v17);
    sub_4C264(v16, v17);
    v66 = 0;
  }

  v10 = *(*(v83 + 176) + 8);

  return v10(v66 & 1);
}

uint64_t sub_6A774()
{
  v22 = *(v0 + 512);
  *(v0 + 176) = v0;
  swift_willThrow();
  _objc_release(v22);

  *(v0 + 536) = 2;
  v1 = *(v21 + 448);
  v17 = *(v21 + 416);
  v16 = *(v21 + 424);
  v2 = sub_81788();
  (*(v16 + 16))(v1, v2, v17);
  v19 = sub_99390();
  v18 = sub_99D80();
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v20 = sub_99F80();
  if (os_log_type_enabled(v19, v18))
  {
    v12 = sub_99E40();
    v11 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v13 = sub_F444(0, v11, v11);
    v14 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v21 + 264) = v12;
    *(v21 + 272) = v13;
    *(v21 + 280) = v14;
    sub_F498(0, (v21 + 264));
    sub_F498(0, (v21 + 264));
    *(v21 + 288) = v20;
    v15 = swift_task_alloc();
    v15[2] = v21 + 264;
    v15[3] = v21 + 272;
    v15[4] = v21 + 280;
    sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();

    _os_log_impl(&dword_0, v19, v18, "Failed to set credential", v12, 2u);
    sub_F5B0(v13, 0, v11);
    sub_F5B0(v14, 0, &type metadata for Any + 8);
    sub_99E20();
  }

  v8 = *(v21 + 504);
  v10 = *(v21 + 496);
  v9 = *(v21 + 488);
  v6 = *(v21 + 448);
  v7 = *(v21 + 416);
  v5 = *(v21 + 424);
  _objc_release(v19);
  (*(v5 + 8))(v6, v7);
  _objc_release(v8);
  sub_1A6B0(v9, v10);
  sub_4C264(v9, v10);

  v3 = *(*(v21 + 176) + 8);

  return v3(0);
}

uint64_t sub_6BB18(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v81 = a1;
  v82 = a2;
  v74 = a3;
  v75 = a4;
  v83 = sub_7EE64;
  v85 = sub_7EF60;
  v87 = sub_7EFAC;
  v89 = sub_7EFF8;
  v92 = sub_7EEB0;
  v96 = sub_7F160;
  v98 = sub_7EEE4;
  v100 = sub_7EF18;
  v102 = sub_7F044;
  v104 = sub_7F0E4;
  v106 = sub_7F118;
  v109 = sub_7F1AC;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v73 = 0;
  v80 = sub_993B0();
  v78 = *(v80 - 8);
  v79 = v80 - 8;
  v76 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v40[-v76];
  v77 = &v40[-v76];
  v126 = __chkstk_darwin(v81) & 1;
  v125 = v5;
  v124 = v6;
  v123 = v7;
  v8 = sub_81788();
  (*(v78 + 16))(v4, v8, v80);
  v91 = 17;
  v94 = 7;
  v84 = swift_allocObject();
  *(v84 + 16) = v81;
  swift_errorRetain();
  v95 = swift_allocObject();
  *(v95 + 16) = v82;
  v113 = sub_99390();
  v114 = sub_99D60();
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = 4;
  v93 = 32;
  v9 = swift_allocObject();
  v10 = v84;
  v86 = v9;
  *(v9 + 16) = v83;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v86;
  v88 = v11;
  *(v11 + 16) = v85;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v88;
  v90 = v13;
  *(v13 + 16) = v87;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v90;
  v103 = v15;
  *(v15 + 16) = v89;
  *(v15 + 24) = v16;
  v105 = swift_allocObject();
  *(v105 + 16) = 32;
  v107 = swift_allocObject();
  *(v107 + 16) = 8;
  v17 = swift_allocObject();
  v18 = v95;
  v97 = v17;
  *(v17 + 16) = v92;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v97;
  v110 = v19;
  *(v19 + 16) = v96;
  *(v19 + 24) = v20;
  v112 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v108 = sub_99F80();
  v111 = v21;

  v22 = v99;
  v23 = v111;
  *v111 = v98;
  v23[1] = v22;

  v24 = v101;
  v25 = v111;
  v111[2] = v100;
  v25[3] = v24;

  v26 = v103;
  v27 = v111;
  v111[4] = v102;
  v27[5] = v26;

  v28 = v105;
  v29 = v111;
  v111[6] = v104;
  v29[7] = v28;

  v30 = v107;
  v31 = v111;
  v111[8] = v106;
  v31[9] = v30;

  v32 = v110;
  v33 = v111;
  v111[10] = v109;
  v33[11] = v32;
  sub_29D0();

  if (os_log_type_enabled(v113, v114))
  {
    v34 = v73;
    v65 = sub_99E40();
    v64 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v66 = sub_F444(0, v64, v64);
    v67 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v69 = v119;
    v119[0] = v65;
    v70 = &v118;
    v118 = v66;
    v71 = &v117;
    v117 = v67;
    v68 = 2;
    sub_F498(2, v119);
    sub_F498(v68, v69);
    v115 = v98;
    v116 = v99;
    sub_F4AC(&v115, v69, v70, v71);
    v72 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v115 = v100;
      v116 = v101;
      sub_F4AC(&v115, v119, &v118, &v117);
      v63 = 0;
      v115 = v102;
      v116 = v103;
      sub_F4AC(&v115, v119, &v118, &v117);
      v62 = 0;
      v115 = v104;
      v116 = v105;
      sub_F4AC(&v115, v119, &v118, &v117);
      v61 = 0;
      v115 = v106;
      v116 = v107;
      sub_F4AC(&v115, v119, &v118, &v117);
      v60 = 0;
      v115 = v109;
      v116 = v110;
      sub_F4AC(&v115, v119, &v118, &v117);
      _os_log_impl(&dword_0, v113, v114, "Received installUpdate callback - success: %{BOOL}d, error: %s", v65, 0x12u);
      sub_F5B0(v66, 0, v64);
      sub_F5B0(v67, 1, &type metadata for Any + 8);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v113);
  (*(v78 + 8))(v77, v80);
  v122 = v81;
  swift_errorRetain();
  if (v82)
  {
    v59 = v82;
    v57 = &v120;
    v120 = v82;
    v56 = sub_22FC(&qword_B57B8, &qword_9BF90);
    sub_75BB0();
    v35 = swift_dynamicCast();
    if (v35)
    {
      v55 = v119[1];
    }

    else
    {
      v55 = 0;
    }

    v58 = v55;
  }

  else
  {
    v58 = 0;
  }

  v54 = v58;
  if (v58)
  {
    v53 = v54;
    v49 = v54;
    v121 = v54;
    v51 = [v54 code];
    sub_6C954();
    v50 = v36;
    _objc_retain(v49);
    if (v51 == v50)
    {
      v48 = 1;
    }

    else
    {
      v47 = [v49 code];
      sub_6C954();
      v48 = v47 == v37;
    }

    v46 = v48;
    _objc_release(v49);
    _objc_retain(v49);
    if (v46)
    {
      v45 = 1;
    }

    else
    {
      v44 = [v49 code];
      sub_6C954();
      v45 = v44 == v38;
    }

    v43 = v45;
    _objc_release(v49);
    if (v43)
    {
      v122 = 1;
      v42 = 1;
    }

    else
    {
      v42 = v81;
    }

    v41 = v42;
    _objc_release(v49);
    v52 = v41;
  }

  else
  {
    v52 = v81;
  }

  if (v52)
  {
    return sub_6D56C(v75);
  }

  else
  {
    return sub_6C970(v75, 0, v82);
  }
}

uint64_t sub_6C900(uint64_t a1)
{
  swift_errorRetain();
  sub_22FC(&unk_B59F0, &unk_9C128);
  return sub_99B50();
}

uint64_t sub_6C970(void *a1, int a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;
  v68 = a3;
  v77 = sub_7D48C;
  v79 = sub_7D574;
  v82 = sub_7D4C0;
  v84 = sub_7D674;
  v86 = sub_7D6C0;
  v90 = sub_7D70C;
  v92 = sub_7D4F8;
  v94 = sub_7D52C;
  v96 = sub_7D5C0;
  v98 = sub_7D5F8;
  v100 = sub_7D62C;
  v103 = sub_7D758;
  v63 = &protocol witness table for MainActor;
  v64 = &unk_9BFB0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v65 = 0;
  v3 = sub_22FC(&unk_B5960, &qword_9BC48);
  v66 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v67 = &v47 - v66;
  v74 = sub_993B0();
  v72 = *(v74 - 8);
  v73 = v74 - 8;
  v70 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v75);
  v5 = &v47 - v70;
  v71 = &v47 - v70;
  v117 = v4;
  v116 = v6 & 1;
  v115 = v7;
  v114 = v8;
  v9 = sub_81788();
  (*(v72 + 16))(v5, v9, v74);
  _objc_retain(v75);
  v88 = 7;
  v78 = swift_allocObject();
  *(v78 + 16) = v75;
  v81 = 17;
  v83 = swift_allocObject();
  *(v83 + 16) = v76;
  v107 = sub_99390();
  v108 = sub_99D60();
  v93 = swift_allocObject();
  *(v93 + 16) = 32;
  v95 = swift_allocObject();
  *(v95 + 16) = 8;
  v87 = 32;
  v10 = swift_allocObject();
  v11 = v78;
  v80 = v10;
  *(v10 + 16) = v77;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v80;
  v97 = v12;
  *(v12 + 16) = v79;
  *(v12 + 24) = v13;
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = 4;
  v14 = swift_allocObject();
  v15 = v83;
  v85 = v14;
  *(v14 + 16) = v82;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v85;
  v89 = v16;
  *(v16 + 16) = v84;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v89;
  v91 = v18;
  *(v18 + 16) = v86;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v91;
  v104 = v20;
  *(v20 + 16) = v90;
  *(v20 + 24) = v21;
  v106 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v102 = sub_99F80();
  v105 = v22;

  v23 = v93;
  v24 = v105;
  *v105 = v92;
  v24[1] = v23;

  v25 = v95;
  v26 = v105;
  v105[2] = v94;
  v26[3] = v25;

  v27 = v97;
  v28 = v105;
  v105[4] = v96;
  v28[5] = v27;

  v29 = v99;
  v30 = v105;
  v105[6] = v98;
  v30[7] = v29;

  v31 = v101;
  v32 = v105;
  v105[8] = v100;
  v32[9] = v31;

  v33 = v104;
  v34 = v105;
  v105[10] = v103;
  v34[11] = v33;
  sub_29D0();

  if (os_log_type_enabled(v107, v108))
  {
    v35 = v65;
    v55 = sub_99E40();
    v54 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v56 = sub_F444(0, v54, v54);
    v57 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v59 = &v113;
    v113 = v55;
    v60 = &v112;
    v112 = v56;
    v61 = &v111;
    v111 = v57;
    v58 = 2;
    sub_F498(2, &v113);
    sub_F498(v58, v59);
    v109 = v92;
    v110 = v93;
    sub_F4AC(&v109, v59, v60, v61);
    v62 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v109 = v94;
      v110 = v95;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v53 = 0;
      v109 = v96;
      v110 = v97;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v52 = 0;
      v109 = v98;
      v110 = v99;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v51 = 0;
      v109 = v100;
      v110 = v101;
      sub_F4AC(&v109, &v113, &v112, &v111);
      v50 = 0;
      v109 = v103;
      v110 = v104;
      sub_F4AC(&v109, &v113, &v112, &v111);
      _os_log_impl(&dword_0, v107, v108, "handleInstallFinished called for update: %s, success: %{BOOL}d", v55, 0x12u);
      sub_F5B0(v56, 0, v54);
      sub_F5B0(v57, 1, &type metadata for Any + 8);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v107);
  (*(v72 + 8))(v71, v74);
  v48 = 0;
  v36 = sub_99D00();
  (*(*(v36 - 8) + 56))(v67, 1);
  _objc_retain(v75);
  _objc_retain(v69);
  swift_errorRetain();
  sub_99CD0();
  v49 = sub_99CC0();
  v37 = swift_allocObject();
  v38 = v63;
  v39 = v75;
  v40 = v69;
  v41 = v76;
  v42 = v68;
  v43 = v48;
  v44 = v67;
  v45 = v64;
  *(v37 + 16) = v49;
  *(v37 + 24) = v38;
  *(v37 + 32) = v39;
  *(v37 + 40) = v40;
  *(v37 + 48) = v41;
  *(v37 + 56) = v42;
  sub_2A6F4(v43, v43, v44, v45, v37, &type metadata for () + 8);
}

uint64_t sub_6D56C(void *a1)
{
  v50 = a1;
  v52 = sub_7DAA4;
  v56 = sub_7DB54;
  v58 = sub_7DAD8;
  v60 = sub_7DB0C;
  v63 = sub_7DBA0;
  v39 = &protocol witness table for MainActor;
  v40 = &unk_9BFC0;
  v75 = 0;
  v74 = 0;
  v41 = 0;
  v1 = sub_22FC(&unk_B5960, &qword_9BC48);
  v42 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v43 = &v27 - v42;
  v49 = sub_993B0();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v45 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v50);
  v3 = &v27 - v45;
  v46 = &v27 - v45;
  v75 = v2;
  v74 = v4;
  v5 = sub_81788();
  (*(v47 + 16))(v3, v5, v49);
  _objc_retain(v50);
  v54 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  v67 = sub_99390();
  v68 = sub_99D60();
  v51 = 17;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v53 = 32;
  v6 = swift_allocObject();
  v7 = v55;
  v57 = v6;
  *(v6 + 16) = v52;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v57;
  v64 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v66 = sub_22FC(&unk_B5940, &unk_9A9A0);
  v62 = sub_99F80();
  v65 = v10;

  v11 = v59;
  v12 = v65;
  *v65 = v58;
  v12[1] = v11;

  v13 = v61;
  v14 = v65;
  v65[2] = v60;
  v14[3] = v13;

  v15 = v64;
  v16 = v65;
  v65[4] = v63;
  v16[5] = v15;
  sub_29D0();

  if (os_log_type_enabled(v67, v68))
  {
    v17 = v41;
    v32 = sub_99E40();
    v31 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v33 = sub_F444(0, v31, v31);
    v34 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v35 = &v73;
    v73 = v32;
    v36 = &v72;
    v72 = v33;
    v37 = &v71;
    v71 = v34;
    sub_F498(2, &v73);
    sub_F498(1, v35);
    v69 = v58;
    v70 = v59;
    sub_F4AC(&v69, v35, v36, v37);
    v38 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      sub_F4AC(&v69, &v73, &v72, &v71);
      v30 = 0;
      v69 = v63;
      v70 = v64;
      sub_F4AC(&v69, &v73, &v72, &v71);
      _os_log_impl(&dword_0, v67, v68, "installStarted called for update: %s", v32, 0xCu);
      sub_F5B0(v33, 0, v31);
      sub_F5B0(v34, 1, &type metadata for Any + 8);
      sub_99E20();
    }
  }

  else
  {
  }

  _objc_release(v67);
  (*(v47 + 8))(v46, v49);
  v28 = 0;
  v18 = sub_99D00();
  (*(*(v18 - 8) + 56))(v43, 1);
  _objc_retain(v50);
  _objc_retain(v44);
  sub_99CD0();
  v29 = sub_99CC0();
  v19 = swift_allocObject();
  v20 = v39;
  v21 = v50;
  v22 = v44;
  v23 = v28;
  v24 = v43;
  v25 = v40;
  v19[2] = v29;
  v19[3] = v20;
  v19[4] = v21;
  v19[5] = v22;
  sub_2A6F4(v23, v23, v24, v25, v19, &type metadata for () + 8);
}

uint64_t sub_6DCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[5] = 0;
  v4[6] = 0;
  sub_22FC(&qword_B4B58, &qword_9B1A0);
  v4[13] = swift_task_alloc();
  v4[8] = a4 + 16;

  return _swift_task_switch(sub_6DDD8);
}

uint64_t sub_6DDD8()
{
  *(v0 + 56) = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v4[9] = Strong;
    v1 = swift_task_alloc();
    v4[15] = v1;
    *v1 = v4[7];
    v1[1] = sub_6DF54;

    return sub_6E6E0();
  }

  else
  {

    v3 = *(v4[7] + 8);

    return v3();
  }
}

uint64_t sub_6DF54(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 56) = *v1;
  *(v3 + 128) = a1;

  return _swift_task_switch(sub_6E070);
}

uint64_t sub_6E070()
{
  v1 = v0[16];
  v0[7] = v0;
  v0[10] = v1;
  sub_6EE20();
  v17 = sub_5E360();
  v0[17] = v17;
  v0[11] = v17;
  _objc_retain(v17);
  if (v17)
  {
    v15 = [v17 readmeSummary];
    if (v15)
    {
      v9 = sub_991E0();
      v10 = v2;
      _objc_release(v15);
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0xF000000000000000;
    }

    _objc_release(v17);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  v16[19] = v14;
  v16[18] = v13;
  v6 = v16[13];
  v5 = v16[14];
  v16[5] = v13;
  v16[6] = v14;
  sub_99CD0();
  _objc_retain(v5);
  sub_4C180(v13, v14);
  v7 = swift_task_alloc();
  v16[20] = v7;
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v13;
  v7[5] = v14;
  sub_2A4D4();
  v3 = swift_task_alloc();
  v16[21] = v3;
  *v3 = v16[7];
  v3[1] = sub_6E3B0;

  return sub_2A4E8(v8, &type metadata for () + 8, sub_7F6B0, v7);
}

uint64_t sub_6E3B0()
{
  v2 = *v1;
  *(v2 + 56) = *v1;
  v8 = (v2 + 16);

  if (v0)
  {
    v3 = sub_6E650;
  }

  else
  {
    v7 = v8[17];
    v6 = v8[16];
    v5 = v8[12];

    sub_4C264(v6, v7);
    v3 = sub_6E550;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_6E550()
{
  v1 = v0[19];
  v2 = v0[18];
  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[13];
  v0[7] = v0;
  sub_4C264(v2, v1);
  _objc_release(v5);
  sub_4154(v6);

  _objc_release(v7);

  v3 = *(v0[7] + 8);

  return v3();
}

uint64_t sub_6E650()
{
  v4 = v0[19];
  v3 = v0[18];
  v2 = v0[14];
  v0[7] = v0;

  _objc_release(v2);
  return sub_4C264(v3, v4);
}

uint64_t sub_6E6E0()
{
  v1[9] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = sub_993B0();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[3] = v0;

  return _swift_task_switch(sub_6E7D4);
}

uint64_t sub_6E7D4(uint64_t a1)
{
  v2 = v1[12];
  v20 = v1[11];
  v21 = v1[10];
  v1[2] = v1;
  v3 = sub_81788();
  (*(v20 + 16))(v2, v3, v21);
  v23 = sub_99390();
  v22 = sub_99D60();
  sub_22FC(&unk_B5940, &unk_9A9A0);
  v24 = sub_99F80();
  if (os_log_type_enabled(v23, v22))
  {
    buf = sub_99E40();
    v14 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v16 = sub_F444(0, v14, v14);
    v17 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v19 + 40) = buf;
    *(v19 + 48) = v16;
    *(v19 + 56) = v17;
    sub_F498(0, (v19 + 40));
    sub_F498(0, (v19 + 40));
    *(v19 + 64) = v24;
    v18 = swift_task_alloc();
    v18[2] = v19 + 40;
    v18[3] = v19 + 48;
    v18[4] = v19 + 56;
    sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();

    _os_log_impl(&dword_0, v23, v22, "getInstallHistoryEvents called", buf, 2u);
    sub_F5B0(v16, 0, v14);
    sub_F5B0(v17, 0, &type metadata for Any + 8);
    sub_99E20();
  }

  v8 = *(v19 + 96);
  v9 = *(v19 + 80);
  v10 = *(v19 + 72);
  v7 = *(v19 + 88);
  _objc_release(v23);
  (*(v7 + 8))(v8, v9);
  v11 = sub_99B90("getInstallHistoryEvents()", 0x19uLL, 1);
  v12 = v4;
  *(v19 + 104) = v4;
  _objc_retain(v10);
  v13 = swift_task_alloc();
  *(v19 + 112) = v13;
  *(v13 + 16) = v10;
  v5 = swift_task_alloc();
  *(v19 + 120) = v5;
  sub_22FC(&qword_B57E0, &qword_9BFD0);
  *v5 = *(v19 + 16);
  v5[1] = sub_6EC10;

  return withCheckedContinuation<A>(isolation:function:_:)(v19 + 32, 0, 0, v11, v12, sub_7DE18, v13);
}

uint64_t sub_6EC10()
{
  v2 = *(*v0 + 72);
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_6ED88);
}

uint64_t sub_6ED88()
{
  *(v0 + 16) = v0;
  v3 = *(v0 + 32);

  v1 = *(*(v0 + 16) + 8);

  return v1(v3);
}

uint64_t sub_6EE20()
{
  sub_22FC(&qword_B57E0, &qword_9BFD0);
  sub_7DE50();
  return sub_99C10();
}

uint64_t sub_6EEC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a1;
  v14 = a2;
  v17 = a3;
  v18 = a4;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v15 = (*(*(sub_22FC(&qword_B4B58, &qword_9B1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = (&v8 - v15);
  v24 = a1;
  v23 = __chkstk_darwin(v14);
  v21 = v5;
  v22 = v6;
  sub_31A0(v23, (&v8 - v15));
  sub_4B40C(v16);
  result = sub_4C180(v17, v18);
  if ((v18 & 0xF000000000000000) != 0xF000000000000000)
  {
    v11 = v17;
    v12 = v18;
    v10 = v18;
    v9 = v17;
    v19 = v17;
    v20 = v18;
    sub_1A538(v17, v18);
    sub_4C494(v9, v10);
    return sub_1A6B0(v9, v10);
  }

  return result;
}

uint64_t sub_6F02C(uint64_t a1)
{
  *(v1 + 16) = v1;
  *(v1 + 56) = sub_99CC0();
  sub_99CA0();

  return _swift_task_switch(sub_6F0C4);
}

uint64_t sub_6F0C4()
{
  v4 = *(v0 + 32);
  *(v0 + 16) = v0;

  v4(v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_6F1F4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v46 = a6;
  v47 = "Fatal error";
  v48 = "Unexpectedly found nil while unwrapping an Optional value";
  v49 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v50 = &unk_9C138;
  v51 = 0;
  v64 = a6;
  v52 = (*(*(sub_22FC(&unk_B5960, &qword_9BC48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v56 = &v15 - v52;

  v62 = v54;
  v63 = v55;
  sub_3D538(v53, v56);
  v57 = sub_99D00();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_3D660(v56);
    v43 = 0;
  }

  else
  {
    v42 = sub_99CF0();
    (*(v58 + 8))(v56, v57);
    v43 = v42;
  }

  v39 = v43 | 0x1000;
  v41 = *(v55 + 16);
  v40 = *(v55 + 24);
  swift_unknownObjectRetain();

  if (v41)
  {
    v37 = v41;
    v38 = v40;
    v31 = v40;
    v32 = v41;
    swift_getObjectType();
    v33 = sub_99CA0();
    v34 = v6;
    swift_unknownObjectRelease();
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  if (v45)
  {
    v27 = v44;
    v28 = v45;
    v7 = v51;
    v25 = sub_99B70();
    sub_772C0(v25 + 32, &v62, v46, &v60);
    if (v7)
    {
      __break(1u);
    }

    v24 = v60;

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v17 = v23;
    v18 = v23;
  }

  else
  {

    v19 = v62;
    v20 = v63;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v30;
    v12 = v29;
    v21 = v8;
    v8[2] = v46;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v61[0] = 0;
      v61[1] = 0;
      v61[2] = v30;
      v61[3] = v29;
      v22 = v61;
    }

    v18 = swift_task_create();
  }

  sub_77480();
  v16 = v13;

  return v16;
}

uint64_t sub_6F784()
{
  v1[65] = v0;
  v1[41] = v1;
  v1[42] = 0;
  v1[43] = 0;
  v1[44] = 0;
  v1[45] = 0;
  v1[47] = 0;
  v1[48] = 0;
  v1[39] = 0;
  v1[40] = 0;
  v2 = sub_993B0();
  v1[66] = v2;
  v1[67] = *(v2 - 8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[42] = v0;
  sub_99CD0();
  v1[73] = sub_99CC0();
  v1[74] = sub_99CA0();
  v1[75] = v3;

  return _swift_task_switch(sub_6F928);
}

uint64_t sub_6F928()
{
  v1 = v0[65];
  v0[41] = v0;
  v25 = (v1 + OBJC_IVAR____TtC29BackgroundSecurityImprovement15StatefulManager_viewControllerForPresentation);
  swift_beginAccess();
  v26 = *v25;
  v0[76] = *v25;
  _objc_retain(v26);
  swift_endAccess();
  if (v26)
  {
    v17 = *(v24 + 576);
    v20 = *(v24 + 528);
    v19 = *(v24 + 536);
    *(v24 + 344) = v26;
    sub_7DED8();
    v16 = sub_71F04();
    *(v24 + 616) = v16;
    *(v24 + 352) = v16;
    sub_7DF3C();
    v18 = sub_71F34();
    *(v24 + 624) = v18;
    *(v24 + 360) = v18;
    [v18 setDismissUIAfterCompletion:0];
    v2 = sub_81788();
    v3 = *(v19 + 16);
    *(v24 + 632) = v3;
    *(v24 + 640) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v3(v17, v2, v20);
    v22 = sub_99390();
    v21 = sub_99D60();
    *(v24 + 648) = sub_22FC(&unk_B5940, &unk_9A9A0);
    v23 = sub_99F80();
    if (os_log_type_enabled(v22, v21))
    {
      buf = sub_99E40();
      v11 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v13 = sub_F444(0, v11, v11);
      v14 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v24 + 488) = buf;
      *(v24 + 496) = v13;
      *(v24 + 504) = v14;
      sub_F498(0, (v24 + 488));
      sub_F498(0, (v24 + 488));
      *(v24 + 512) = v23;
      v15 = swift_task_alloc();
      v15[2] = v24 + 488;
      v15[3] = v24 + 496;
      v15[4] = v24 + 504;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();

      _os_log_impl(&dword_0, v22, v21, "Starting passcode verification service...", buf, 2u);
      sub_F5B0(v13, 0, v11);
      sub_F5B0(v14, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    *(v24 + 656) = 0;
    v8 = *(v24 + 576);
    v9 = *(v24 + 528);
    v7 = *(v24 + 536);
    _objc_release(v22);
    v4 = *(v7 + 8);
    *(v24 + 664) = v4;
    *(v24 + 672) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v4(v8, v9);
    *(v24 + 16) = *(v24 + 328);
    *(v24 + 56) = v24 + 368;
    *(v24 + 24) = sub_6FFF0;
    v10 = swift_continuation_init();
    *(v24 + 200) = sub_22FC(&qword_B5800, &qword_9BFD8);
    *(v24 + 176) = v10;
    *(v24 + 144) = _NSConcreteStackBlock;
    *(v24 + 152) = 1107296256;
    *(v24 + 156) = 0;
    *(v24 + 160) = sub_71F64;
    *(v24 + 168) = &unk_AF100;
    [v16 startInParentVC:v26 options:v18 completion:?];

    return _swift_continuation_await(v24 + 16);
  }

  else
  {
    sub_99ED0();

    v5 = *(*(v24 + 328) + 8);

    return v5(0, 0xF000000000000000);
  }
}

uint64_t sub_6FFF0()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 328) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 680) = v1;
  if (v1)
  {
    v2 = sub_71048;
  }

  else
  {
    v2 = sub_70168;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_70168(uint64_t a1)
{
  v19 = v1[79];
  v2 = v1[71];
  v18 = v1[66];
  v1[41] = v1;
  v17 = v1[46];
  v1[86] = v17;
  v1[48] = v17;
  v3 = sub_81788();
  v19(v2, v3, v18);
  v21 = sub_99390();
  v20 = sub_99D60();
  v22 = sub_99F80();
  if (os_log_type_enabled(v21, v20))
  {
    v4 = *(v16 + 656);
    buf = sub_99E40();
    v11 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v13 = sub_F444(0, v11, v11);
    v14 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v16 + 456) = buf;
    *(v16 + 464) = v13;
    *(v16 + 472) = v14;
    sub_F498(0, (v16 + 456));
    sub_F498(0, (v16 + 456));
    *(v16 + 480) = v22;
    v15 = swift_task_alloc();
    v15[2] = v16 + 456;
    v15[3] = v16 + 464;
    v15[4] = v16 + 472;
    sub_22FC(&unk_B5950, &qword_9A9B0);
    sub_F528();
    sub_99C20();
    if (v4)
    {
    }

    _os_log_impl(&dword_0, v21, v20, "Passcode challenge succeeded, extracting credentials.", buf, 2u);
    sub_F5B0(v13, 0, v11);
    sub_F5B0(v14, 0, &type metadata for Any + 8);
    sub_99E20();

    v10 = 0;
  }

  else
  {

    v10 = *(v16 + 656);
  }

  *(v16 + 696) = v10;
  v8 = *(v16 + 664);
  v6 = *(v16 + 568);
  v7 = *(v16 + 528);
  _objc_release(v21);
  v8(v6, v7);
  *(v16 + 80) = *(v16 + 328);
  *(v16 + 120) = v16 + 296;
  *(v16 + 88) = sub_70610;
  v9 = swift_continuation_init();
  *(v16 + 264) = sub_22FC(&qword_B5808, &qword_9BFE0);
  *(v16 + 240) = v9;
  *(v16 + 208) = _NSConcreteStackBlock;
  *(v16 + 216) = 1107296256;
  *(v16 + 220) = 0;
  *(v16 + 224) = sub_7215C;
  *(v16 + 232) = &unk_AF1F0;
  [v17 credentialOfType:-9 reply:?];

  return _swift_continuation_await(v16 + 80);
}

uint64_t sub_70610()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 328) = *v0;
  v1 = *(v4 + 112);
  *(v5 + 704) = v1;
  if (v1)
  {
    v2 = sub_71780;
  }

  else
  {
    v2 = sub_70788;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_70788(uint64_t a1)
{
  v1[41] = v1;
  v47 = v1[37];
  v48 = v1[38];
  if ((v48 & 0xF000000000000000) == 0xF000000000000000)
  {
    v23 = *(v46 + 632);
    v6 = *(v46 + 552);
    v22 = *(v46 + 528);
    v7 = sub_81788();
    v23(v6, v7, v22);
    oslog = sub_99390();
    v24 = sub_99D90();
    v26 = sub_99F80();
    if (os_log_type_enabled(oslog, v24))
    {
      v8 = *(v46 + 696);
      buf = sub_99E40();
      v17 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
      v19 = sub_F444(0, v17, v17);
      v20 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v46 + 392) = buf;
      *(v46 + 400) = v19;
      *(v46 + 408) = v20;
      sub_F498(0, (v46 + 392));
      sub_F498(0, (v46 + 392));
      *(v46 + 416) = v26;
      v21 = swift_task_alloc();
      v21[2] = v46 + 392;
      v21[3] = v46 + 400;
      v21[4] = v46 + 408;
      sub_22FC(&unk_B5950, &qword_9A9B0);
      sub_F528();
      sub_99C20();
      if (v8)
      {
      }

      _os_log_impl(&dword_0, oslog, v24, "Extracting credentials from passcode challenge failed unexpectedly.", buf, 2u);
      sub_F5B0(v19, 0, v17);
      sub_F5B0(v20, 0, &type metadata for Any + 8);
      sub_99E20();
    }

    else
    {
    }

    v13 = *(v46 + 688);
    v12 = *(v46 + 664);
    v14 = *(v46 + 624);
    v15 = *(v46 + 616);
    v10 = *(v46 + 552);
    v11 = *(v46 + 528);
    v16 = *(v46 + 608);
    _objc_release(oslog);
    v12(v10, v11);
    _objc_release(v13);
    _objc_release(v14);
    _objc_release(v15);
    _objc_release(v16);
    v34 = 0;
    v35 = 0xF000000000000000;
    goto LABEL_14;
  }

  v42 = *(v46 + 632);
  v2 = *(v46 + 560);
  v41 = *(v46 + 528);
  *(v46 + 312) = v47;
  *(v46 + 320) = v48;
  v3 = sub_81788();
  v42(v2, v3, v41);
  v44 = sub_99390();
  v43 = sub_99D60();
  v45 = sub_99F80();
  if (!os_log_type_enabled(v44, v43))
  {

    goto LABEL_7;
  }

  v4 = *(v46 + 696);
  v37 = sub_99E40();
  v36 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
  v38 = sub_F444(0, v36, v36);
  v39 = sub_F444(0, &type metadata for Any + 8, &type metadata for Any + 8);
  *(v46 + 424) = v37;
  *(v46 + 432) = v38;
  *(v46 + 440) = v39;
  sub_F498(0, (v46 + 424));
  sub_F498(0, (v46 + 424));
  *(v46 + 448) = v45;
  v40 = swift_task_alloc();
  v40[2] = v46 + 424;
  v40[3] = v46 + 432;
  v40[4] = v46 + 440;
  sub_22FC(&unk_B5950, &qword_9A9B0);
  sub_F528();
  sub_99C20();
  if (v4)
  {
  }

  _os_log_impl(&dword_0, v44, v43, "Successfully extracted passcode credentials.", v37, 2u);
  sub_F5B0(v38, 0, v36);
  sub_F5B0(v39, 0, &type metadata for Any + 8);
  sub_99E20();

LABEL_7:
  v30 = *(v46 + 688);
  v29 = *(v46 + 664);
  v31 = *(v46 + 624);
  v32 = *(v46 + 616);
  v27 = *(v46 + 560);
  v28 = *(v46 + 528);
  v33 = *(v46 + 608);
  _objc_release(v44);
  v29(v27, v28);
  _objc_release(v30);
  _objc_release(v31);
  _objc_release(v32);
  _objc_release(v33);
  v34 = v47;
  v35 = v48;
LABEL_14:

  v9 = *(*(v46 + 328) + 8);

  return v9(v34, v35);
}

uint64_t sub_71048()
{
  v33 = v0;
  v0[41] = v0;
  swift_willThrow();
  v19 = v0[85];
  v18 = v0[79];
  v1 = v0[68];
  v17 = v0[66];
  swift_errorRetain();
  v0[47] = v19;
  v2 = sub_81788();
  v18(v1, v2, v17);
  swift_errorRetain();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v26 = sub_99390();
  v27 = sub_99D80();
  v22 = swift_allocObject();
  *(v22 + 16) = 32;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_7E020;
  *(v21 + 24) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_7E0D0;
  *(v24 + 24) = v21;
  sub_99F80();
  v25 = v3;

  *v25 = sub_7E054;
  v25[1] = v22;

  v25[2] = sub_7E088;
  v25[3] = v23;

  v25[4] = sub_7E11C;
  v25[5] = v24;
  sub_29D0();

  if (os_log_type_enabled(v26, v27))
  {
    buf = sub_99E40();
    v12 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v14 = sub_F444(0, v12, v12);
    v15 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v28 = buf;
    v29 = v14;
    v30 = v15;
    sub_F498(2, &v28);
    sub_F498(1, &v28);
    v31 = sub_7E054;
    v32 = v22;
    sub_F4AC(&v31, &v28, &v29, &v30);
    v31 = sub_7E088;
    v32 = v23;
    sub_F4AC(&v31, &v28, &v29, &v30);
    v31 = sub_7E11C;
    v32 = v24;
    sub_F4AC(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_0, v26, v27, "Passcode challenge failed with error '%s'", buf, 0xCu);
    sub_F5B0(v14, 0, v12);
    sub_F5B0(v15, 1, &type metadata for Any + 8);
    sub_99E20();
  }

  else
  {
  }

  v8 = v16[83];
  v9 = v16[78];
  v10 = v16[77];
  v6 = v16[68];
  v7 = v16[66];
  v11 = v16[76];
  _objc_release(v26);
  v8(v6, v7);

  _objc_release(v9);
  _objc_release(v10);
  _objc_release(v11);

  v4 = *(v16[41] + 8);

  return v4(0, 0xF000000000000000);
}

uint64_t sub_71780()
{
  v34 = v0;
  v17 = v0[86];
  v0[41] = v0;
  swift_willThrow();
  _objc_release(v17);
  v20 = v0[88];
  v19 = v0[79];
  v1 = v0[68];
  v18 = v0[66];
  swift_errorRetain();
  v0[47] = v20;
  v2 = sub_81788();
  v19(v1, v2, v18);
  swift_errorRetain();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v27 = sub_99390();
  v28 = sub_99D80();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_7E020;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_7E0D0;
  *(v25 + 24) = v22;
  sub_99F80();
  v26 = v3;

  *v26 = sub_7E054;
  v26[1] = v23;

  v26[2] = sub_7E088;
  v26[3] = v24;

  v26[4] = sub_7E11C;
  v26[5] = v25;
  sub_29D0();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_99E40();
    v12 = sub_22FC(&qword_B4CD8, &unk_9AFC0);
    v14 = sub_F444(0, v12, v12);
    v15 = sub_F444(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v29 = buf;
    v30 = v14;
    v31 = v15;
    sub_F498(2, &v29);
    sub_F498(1, &v29);
    v32 = sub_7E054;
    v33 = v23;
    sub_F4AC(&v32, &v29, &v30, &v31);
    v32 = sub_7E088;
    v33 = v24;
    sub_F4AC(&v32, &v29, &v30, &v31);
    v32 = sub_7E11C;
    v33 = v25;
    sub_F4AC(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_0, v27, v28, "Passcode challenge failed with error '%s'", buf, 0xCu);
    sub_F5B0(v14, 0, v12);
    sub_F5B0(v15, 1, &type metadata for Any + 8);
    sub_99E20();
  }

  else
  {
  }

  v8 = v16[83];
  v9 = v16[78];
  v10 = v16[77];
  v6 = v16[68];
  v7 = v16[66];
  v11 = v16[76];
  _objc_release(v27);
  v8(v6, v7);

  _objc_release(v9);
  _objc_release(v10);
  _objc_release(v11);

  v4 = *(v16[41] + 8);

  return v4(0, 0xF000000000000000);
}

void sub_71F64(uint64_t a1, id a2, void *a3)
{
  _objc_retain(a2);
  _objc_retain(a3);
  v9 = *sub_7E494((a1 + 32), *(a1 + 56));
  if (a3)
  {
    swift_errorRetain();
    v4 = sub_7D178();
    sub_7209C(v9, a3, v4);
  }

  else
  {
    _objc_retain(a2);
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_99FA0("", 0, 1, 0, 1);
      __break(1u);
    }

    v10 = v5;
    v3 = sub_7D178();
    sub_72100(v9, &v10, v3);
  }

  _objc_release(a3);
  _objc_release(a2);
}

uint64_t sub_7209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = sub_22FC(&qword_B57B8, &qword_9BF90);
  return sub_776B8(v7, a1, a3, v3, &protocol self-conformance witness table for Error);
}

void sub_7215C(uint64_t a1, id a2, void *a3)
{
  _objc_retain(a2);
  _objc_retain(a3);
  v13 = *sub_7E494((a1 + 32), *(a1 + 56));
  if (a3)
  {
    swift_errorRetain();
    v5 = sub_22FC(&qword_B5740, &qword_9BE38);
    sub_7209C(v13, a3, v5);
  }

  else
  {
    _objc_retain(a2);
    if (a2)
    {
      v6 = sub_991E0();
      v7 = v3;
      _objc_release(a2);
      v8 = v6;
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0xF000000000000000;
    }

    v14[0] = v8;
    v14[1] = v9;
    v4 = sub_22FC(&qword_B5740, &qword_9BE38);
    sub_72100(v13, v14, v4);
  }

  _objc_release(a3);
  _objc_release(a2);
}

void sub_72350(uint64_t a1, char a2, id a3)
{
  _objc_retain(a3);
  v6 = *sub_7E494((a1 + 32), *(a1 + 56));
  if (a3)
  {
    swift_errorRetain();
    sub_7209C(v6, a3, &type metadata for Bool);
  }

  else
  {
    v7 = a2;
    sub_72100(v6, &v7, &type metadata for Bool);
  }

  _objc_release(a3);
}