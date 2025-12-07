id sub_1C60(uint64_t a1)
{
  [*(a1 + 32) setPreferenceValue:*(a1 + 40) specifier:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reload];
}

unint64_t sub_25B4()
{
  result = qword_C420;
  if (!qword_C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C420);
  }

  return result;
}

uint64_t sub_2624(uint64_t a1)
{
  sub_32A0();
  __chkstk_darwin();
  sub_31D0();
  __chkstk_darwin();
  v2 = [objc_allocWithZone(PSSpecifier) init];
  [v2 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_3290();
  sub_31C0();
  return sub_31A0();
}

uint64_t sub_2768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_31E0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_3010(0);
  v3[8] = swift_task_alloc();
  v5 = sub_3180();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_3190();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  sub_3280();
  v3[15] = sub_3270();
  v8 = sub_3260();

  return _swift_task_switch(sub_2944, v8, v7);
}

uint64_t sub_2944()
{
  v1 = v0 + 10;
  v2 = v0[10];
  v4 = v0 + 9;
  v3 = v0[9];
  v5 = v0[8];

  sub_3210();
  sub_3160();
  if ((*(v2 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0 + 7;
    sub_3068(v0[8]);
    sub_3200();
    sub_3220();
    v1 = v0 + 6;
    v4 = v0 + 5;
  }

  else
  {
    v6 = v0 + 11;
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    sub_3170();
    if (v7)
    {
      v8 = v0[4];
      v9 = sub_3250();

      [v8 setSpecifierIdentifierToScrollAndHighlight:v9];
    }

    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    sub_3200();
    sub_3220();
    (*(v11 + 8))(v10, v12);
  }

  v13 = *v4;
  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];
  (*(*v1 + 8))(*v6, v13);
  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2B30()
{
  sub_2D50(0);
  v2 = v1;
  v3 = *(v1 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  sub_31B0();
  sub_2FC8(&qword_C430, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v7 = v6;
  sub_3230();
  *(swift_allocObject() + 16) = v7;
  sub_2FC8(&qword_C438, sub_2D50, &protocol conformance descriptor for SettingsPane<A>);
  v8 = v7;
  sub_31F0();
  return (*(v3 + 8))(v5, v2);
}

id sub_2D14@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

void sub_2D50(uint64_t a1)
{
  if (!qword_C428)
  {
    sub_31B0();
    sub_2FC8(&qword_C430, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
    v1 = sub_3240();
    if (!v2)
    {
      atomic_store(v1, &qword_C428);
    }
  }
}

uint64_t sub_2DE4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2E24(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2ED4;

  return sub_2768(a1, a2, v6);
}

uint64_t sub_2ED4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_3010(uint64_t a1)
{
  if (!qword_C440)
  {
    sub_3180();
    v1 = sub_32B0();
    if (!v2)
    {
      atomic_store(v1, &qword_C440);
    }
  }
}

uint64_t sub_3068(uint64_t a1)
{
  sub_3010(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30D4()
{
  sub_2D50(255);
  sub_2FC8(&qword_C438, sub_2D50, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}