uint64_t sub_100000ED0()
{
  v0 = sub_1000010BC(&qword_100008008, &qword_1000012A8);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - v2;
  WindowGroup.init(id:title:lazyContent:)();
  sub_100001104();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000103C();
  static App.main()();
  return 0;
}

unint64_t sub_10000103C()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

uint64_t sub_1000010BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001104()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    sub_100001168(&qword_100008008, &qword_1000012A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

uint64_t sub_100001168(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}