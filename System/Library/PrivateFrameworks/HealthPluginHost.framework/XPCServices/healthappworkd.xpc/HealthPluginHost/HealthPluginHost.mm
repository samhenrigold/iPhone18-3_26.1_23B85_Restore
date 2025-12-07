int main(int argc, const char **argv, const char **envp)
{
  sub_100001560();
  __chkstk_darwin();
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000015C0();
  v20 = *(v5 - 8);
  __chkstk_darwin();
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000015B0();
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001580();
  __chkstk_darwin();
  sub_100001470();
  sub_100001410();
  sub_100001460();
  sub_100001450();
  swift_allocObject();
  qword_100008048 = sub_100001420();
  sub_100001440();
  v17[4] = v9;
  v18 = v7;
  v10 = v20;
  v19 = v4;
  sub_1000012A4();
  v17[3] = sub_100001430();
  v11 = sub_100001360(0, &qword_100008018, OS_dispatch_queue_ptr);
  v17[1] = "lugins from disk: ";
  v17[2] = v11;
  sub_100001570();
  v21 = &_swiftEmptyArrayStorage;
  sub_1000013A8(&qword_100008020, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001308(0);
  sub_1000013A8(&qword_100008030, sub_100001308, &protocol conformance descriptor for [A]);
  sub_1000015E0();
  (*(v10 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  sub_1000015D0();
  sub_100001510();
  swift_allocObject();
  qword_100008050 = sub_100001500();
  sub_100001400();
  qword_100008058 = sub_1000013F0();
  v12 = [objc_allocWithZone(HKHealthStore) init];
  qword_100008060 = v12;
  sub_1000014D0();
  swift_allocObject();
  v13 = v12;
  qword_100008068 = sub_1000014C0();
  sub_100001490();
  qword_100008070 = sub_100001480();
  sub_1000014F0();
  qword_100008078 = sub_1000014E0();
  v14 = [objc_allocWithZone(HKProfileStore) initWithHealthStore:qword_100008060];
  v22 = sub_100001360(0, &qword_100008038, HKProfileStore_ptr);
  v23 = &protocol witness table for HKProfileStore;
  v21 = v14;
  v15 = qword_100008058;

  sub_100001550();
  [objc_allocWithZone(HKHealthStore) init];
  sub_1000014B0();
  swift_allocObject();
  qword_100008080 = sub_1000014A0();
  qword_100008088 = sub_100001430();
  sub_1000013A8(&qword_100008040, &type metadata accessor for HealthPlatformContextProvider, &protocol conformance descriptor for HealthPlatformContextProvider);
  sub_100001540();
  swift_allocObject();

  qword_100008090 = sub_100001520();
  result = sub_100001530();
  __break(1u);
  return result;
}

unint64_t sub_1000012A4()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

void sub_100001308(uint64_t a1)
{
  if (!qword_100008028)
  {
    sub_1000015B0();
    v1 = sub_1000015A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100008028);
    }
  }
}

uint64_t sub_100001360(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000013A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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