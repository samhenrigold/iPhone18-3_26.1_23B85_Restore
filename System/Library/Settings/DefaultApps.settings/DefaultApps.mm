unint64_t sub_1178()
{
  result = qword_8128;
  if (!qword_8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8128);
  }

  return result;
}

uint64_t sub_11E8()
{
  sub_1660(&qword_8148, &qword_1B10);
  __chkstk_darwin();
  v1 = &v4 - v0;
  sub_1660(&unk_8150, &qword_1B18);
  __chkstk_darwin();
  sub_1938();
  sub_1928();
  sub_1918();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1888();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_18C8();
  sub_17AC(v1);
  sub_1898();
}

uint64_t sub_1388(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_18B8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1938();
  v2[7] = sub_1928();
  v5 = sub_1918();

  return _swift_task_switch(sub_147C, v5, v4);
}

uint64_t sub_147C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  sub_18E8();
  sub_18F8();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1528()
{
  v0 = sub_1660(&qword_8130, &qword_1B00);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_18A8();
  sub_16A8();
  sub_1908();
  sub_1700();
  sub_18D8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1660(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_16A8()
{
  result = qword_8138;
  if (!qword_8138)
  {
    sub_18A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8138);
  }

  return result;
}

unint64_t sub_1700()
{
  result = qword_8140;
  if (!qword_8140)
  {
    sub_1764(&qword_8130, &qword_1B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8140);
  }

  return result;
}

uint64_t sub_1764(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_17AC(uint64_t a1)
{
  v2 = sub_1660(&qword_8148, &qword_1B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1824()
{
  sub_1764(&qword_8130, &qword_1B00);
  sub_1700();
  return swift_getOpaqueTypeConformance2();
}