uint64_t sub_100001500()
{
  v26 = 0;
  v34 = 0;
  v19 = 0;
  v20 = sub_100001DFC();
  v21 = *(v20 - 8);
  v22 = v21;
  __chkstk_darwin();
  v23 = &v4 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v23;
  sub_100001DDC();
  v28 = sub_100001DEC();
  v24 = v28;
  v27 = sub_100001E1C();
  v25 = v27;
  sub_100001AA4(&qword_100008000, &qword_100001FF0);
  v29 = sub_100001E5C();
  if (os_log_type_enabled(v28, v27))
  {
    v1 = v19;
    v10 = sub_100001E4C();
    v6 = v10;
    v7 = sub_100001AA4(&qword_100008008, &qword_100001FF8);
    v8 = 0;
    v11 = sub_100001988(0, v7, v7);
    v9 = v11;
    v12 = sub_100001988(v8, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = v10;
    v32 = v11;
    v31 = v12;
    v13 = 0;
    v14 = &v33;
    sub_1000019DC(0, &v33);
    sub_1000019DC(v13, v14);
    v30 = v29;
    v15 = &v4;
    __chkstk_darwin();
    v16 = &v4 - 6;
    *(&v4 - 4) = v2;
    *(&v4 - 3) = &v32;
    *(&v4 - 2) = &v31;
    v17 = sub_100001AA4(&qword_100008010, &qword_100002000);
    sub_100001B40();
    sub_100001E0C();
    v18 = v1;
    if (v1)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v24, v25, "Initializing MailShortcutsExtension", v6, 2u);
      v4 = 0;
      sub_100001A3C(v9, 0, v7);
      sub_100001A3C(v12, v4, &type metadata for Any + 8);
      sub_100001E2C();

      v5 = v18;
    }
  }

  else
  {

    v5 = v19;
  }

  return (*(v22 + 8))(v23, v20);
}

uint64_t sub_100001988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_100001E4C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000019DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_100001A3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_100001E3C();
    sub_100001E2C();
  }
}

uint64_t sub_100001AA4(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

unint64_t sub_100001B40()
{
  v2 = qword_100008018;
  if (!qword_100008018)
  {
    sub_100001BC8(&qword_100008010, &qword_100002000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100008018);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100001BC8(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_100001C3C()
{
  v2 = qword_100008020;
  if (!qword_100008020)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100008020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100001CD0()
{
  v2 = qword_100008028;
  if (!qword_100008028)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100008028);
    return WitnessTable;
  }

  return v2;
}