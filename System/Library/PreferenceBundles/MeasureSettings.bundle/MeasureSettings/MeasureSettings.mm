uint64_t sub_1BAC()
{
  v0 = +[NSLocale currentLocale];
  v1 = [v0 usesMetricSystem];

  return v1;
}

uint64_t sub_1DB4(uint64_t a1)
{
  qword_8540 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

unint64_t sub_2064()
{
  result = qword_8510;
  if (!qword_8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8510);
  }

  return result;
}

uint64_t sub_20D4(uint64_t a1)
{
  sub_276C();
  __chkstk_darwin();
  sub_267C();
  v2 = [objc_allocWithZone(PSSpecifier) init];
  [v2 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_275C();
  return sub_273C();
}

uint64_t sub_21B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_277C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_27EC();
  v2[7] = sub_27DC();
  v5 = sub_27CC();

  return _swift_task_switch(sub_22A4, v5, v4);
}

uint64_t sub_22A4()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  sub_279C();
  sub_27AC();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2350()
{
  v1 = sub_24F0(&qword_8518, &qword_3168);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  sub_274C();
  sub_2578();
  v6 = v5;
  sub_27BC();
  sub_25D0();
  sub_278C();
  return (*(v2 + 8))(v4, v1);
}

id sub_24B4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_24F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2538()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2578()
{
  result = qword_8520;
  if (!qword_8520)
  {
    sub_274C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8520);
  }

  return result;
}

unint64_t sub_25D0()
{
  result = qword_8528;
  if (!qword_8528)
  {
    sub_2634(&qword_8518, &qword_3168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8528);
  }

  return result;
}

uint64_t sub_2634(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_267C()
{
  result = qword_8530;
  if (!qword_8530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8530);
  }

  return result;
}

uint64_t sub_26D8()
{
  sub_2634(&qword_8518, &qword_3168);
  sub_25D0();
  return swift_getOpaqueTypeConformance2();
}