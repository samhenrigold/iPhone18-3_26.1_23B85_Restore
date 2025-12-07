uint64_t sub_100001478@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_100002B48();
  __chkstk_darwin();
  v23[1] = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A68();
  __chkstk_darwin();
  sub_100002B88();
  __chkstk_darwin();
  v2 = sub_100002514(&qword_100008278, &qword_100002FC8);
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  __chkstk_darwin();
  v5 = v23 - v4;
  v6 = sub_100002514(&qword_100008280, &qword_100002FD0);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  __chkstk_darwin();
  v9 = v23 - v8;
  v10 = sub_100002514(&qword_100008288, qword_100002FD8);
  v11 = *(v10 - 8);
  v28 = v10;
  v29 = v11;
  __chkstk_darwin();
  v13 = v23 - v12;
  v23[0] = qword_100008168;

  sub_100002B78();
  sub_100002A58();
  sub_100002B98();
  type metadata accessor for ToggleAirplaneModeStateProvider();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 16) = [objc_allocWithZone(RadiosPreferences) init];
  v31 = v14;
  sub_100002B38();
  sub_10000255C();
  sub_100002B58();
  sub_100002B78();
  sub_100002A58();
  v31 = sub_100002B98();
  v32 = v15;
  v16 = sub_1000025B0(&qword_100008298, &qword_100008278, &qword_100002FC8, &protocol conformance descriptor for ControlToggle<A>);
  v17 = sub_1000025F8();
  v18 = v24;
  sub_100002AD8();

  (*(v25 + 8))(v5, v18);
  v31 = v18;
  v32 = &type metadata for String;
  v33 = v16;
  v34 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v26;
  sub_100002AF8();
  (*(v27 + 8))(v9, v20);
  v31 = v20;
  v32 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  sub_100002AE8();
  return (*(v29 + 8))(v13, v21);
}

uint64_t sub_1000019F4@<X0>(uint64_t a1@<X8>)
{
  sub_100002AB8();
  result = sub_100002B08();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100001A74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002B28();
  *a1 = result;
  return result;
}

uint64_t sub_100001B0C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_100001B6C()
{
  result = qword_100008248;
  if (!qword_100008248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008248);
  }

  return result;
}

uint64_t sub_100001BC0()
{
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2;
    [v3 refresh];
    v4 = [v3 airplaneMode];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + 8);

  return v5(v4);
}

unint64_t sub_100001C64()
{
  result = qword_100008250;
  if (!qword_100008250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008250);
  }

  return result;
}

uint64_t sub_100001CB8()
{
  v0 = sub_100002A48();
  sub_100002330(v0, qword_100008350);
  sub_1000022F8(v0, qword_100008350);
  return sub_100002A38();
}

uint64_t sub_100001D28(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100001D4C, 0, 0);
}

uint64_t sub_100001D4C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32) ^ 1;
    v3 = v1;
    [v3 setAirplaneModeWithoutMirroring:v2 & 1];
    if (qword_100008180 != -1)
    {
      swift_once();
    }

    v4 = sub_100002A98();
    sub_1000022F8(v4, qword_100008368);
    v5 = v3;
    v6 = sub_100002A78();
    v7 = sub_100002BA8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v2 & 1;

      _os_log_impl(&_mh_execute_header, v6, v7, "Toggled airplane mode to: %{BOOL}d", v8, 8u);
    }

    else
    {
    }
  }

  sub_100002A28();
  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_100001EFC()
{
  result = qword_100008258;
  if (!qword_100008258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008258);
  }

  return result;
}

unint64_t sub_100001F54()
{
  result = qword_100008260;
  if (!qword_100008260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008260);
  }

  return result;
}

uint64_t sub_100002014@<X0>(uint64_t a1@<X8>)
{
  if (qword_100008178 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A48();
  v3 = sub_1000022F8(v2, qword_100008350);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000020D8(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002188;

  return sub_100001D28(a1, v4, v5);
}

uint64_t sub_100002188()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_10000227C@<X0>(uint64_t a1@<X8>)
{
  result = [objc_allocWithZone(RadiosPreferences) init];
  *a1 = 0;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000022BC(uint64_t a1)
{
  v2 = sub_100001C64();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000022F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002330(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 sub_1000023A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000023B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10000240C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000024B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002514(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000255C()
{
  result = qword_100008290;
  if (!qword_100008290)
  {
    type metadata accessor for ToggleAirplaneModeStateProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008290);
  }

  return result;
}

uint64_t sub_1000025B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000024B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000025F8()
{
  result = qword_1000082A0;
  if (!qword_1000082A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000082A0);
  }

  return result;
}

uint64_t sub_10000264C()
{
  sub_1000024B0(&qword_100008288, qword_100002FD8);
  sub_1000024B0(&qword_100008280, &qword_100002FD0);
  sub_1000024B0(&qword_100008278, &qword_100002FC8);
  sub_1000025B0(&qword_100008298, &qword_100008278, &qword_100002FC8, &protocol conformance descriptor for ControlToggle<A>);
  sub_1000025F8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100002778()
{
  v0 = sub_1000028F4();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for AirplaneModeToggle, v0);
}

uint64_t sub_1000027BC()
{
  v0 = sub_100002A98();
  sub_100002330(v0, qword_100008368);
  sub_1000022F8(v0, qword_100008368);
  return sub_100002A88();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002874();
  sub_100002AA8();
  return 0;
}

unint64_t sub_100002874()
{
  result = qword_1000082A8;
  if (!qword_1000082A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000082A8);
  }

  return result;
}

unint64_t sub_1000028F4()
{
  result = qword_1000082B0;
  if (!qword_1000082B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000082B0);
  }

  return result;
}