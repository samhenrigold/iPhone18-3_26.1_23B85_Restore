int main(int argc, const char **argv, const char **envp)
{
  sub_100001094(&qword_100008000, "\n");
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = sub_1000011AC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  qword_100008010 = &off_100004138;
  sub_10000120C();
  sub_1000011BC();
  qword_100008018 = &_swiftEmptyArrayStorage;
  sub_1000011CC();
  qword_100008020 = sub_1000011EC();
  sub_10000119C();
  sub_10000121C();
  sub_1000010DC();
  sub_1000011FC();
  (*(v6 + 8))(v8, v5);
  v9 = enum case for SandboxID.blastdoor(_:);
  v10 = sub_10000122C();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v4, v9, v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  sub_1000011DC();
  sub_100001134(v4);
  return 0;
}

uint64_t sub_100001094(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000010DC()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    sub_1000011AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

uint64_t sub_100001134(uint64_t a1)
{
  v2 = sub_100001094(&qword_100008000, "\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}