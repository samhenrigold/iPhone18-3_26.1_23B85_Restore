uint64_t sub_100001250@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  sub_100001880(0);
  v35 = v2;
  __chkstk_darwin(v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100001A3C();
  v30 = *(v33 - 8);
  v4 = v30;
  v5 = __chkstk_darwin(v33);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v30 - v7;
  v8 = sub_100001A5C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100001A1C();
  v31 = *(v12 - 8);
  v13 = v31;
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  v19 = *(v9 + 16);
  v19(v11, v1, v8);
  sub_100001A0C();
  v19(v11, v1, v8);
  v20 = v37;
  sub_100001A2C();
  v21 = *(v13 + 16);
  v21(v16, v18, v12);
  v22 = *(v4 + 16);
  v23 = v32;
  v24 = v20;
  v25 = v33;
  v22(v32, v24, v33);
  v26 = v34;
  v21(v34, v16, v12);
  v22(&v26[*(v35 + 48)], v23, v25);
  sub_100001A7C();
  v27 = *(v30 + 8);
  v27(v37, v25);
  v28 = *(v31 + 8);
  v28(v18, v12);
  v27(v23, v25);
  return (v28)(v16, v12);
}

uint64_t sub_1000015EC()
{
  v0 = [objc_allocWithZone(HKHealthStore) init];

  return BalanceWidgetDataProvider.init(healthStore:)(v0);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for HealthBalanceWidgets(0);
  sub_100001938(&qword_100008098, type metadata accessor for HealthBalanceWidgets, "1%");
  sub_100001A8C();
  return 0;
}

uint64_t type metadata accessor for HealthBalanceWidgets(uint64_t a1)
{
  result = qword_1000080F8;
  if (!qword_1000080F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A5C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100001788(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A5C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000017F8(uint64_t a1)
{
  result = sub_100001A5C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100001880(uint64_t a1)
{
  if (!qword_100008130)
  {
    sub_100001A1C();
    sub_100001A3C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100008130);
    }
  }
}

uint64_t sub_100001938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100001980(uint64_t a1)
{
  if (!qword_100008140)
  {
    sub_100001880(255);
    v1 = sub_100001A6C();
    if (!v2)
    {
      atomic_store(v1, &qword_100008140);
    }
  }
}