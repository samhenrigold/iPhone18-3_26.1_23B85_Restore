void sub_100000BF4()
{
  v1 = sub_100000DE4();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100000E44();
  v5 = &v4[*(sub_100000D9C(&qword_100008010, &qword_100000F08) + 48)];
  sub_100000E34();
  sub_100000E14();
  *v5 = nullsub_1;
  v5[1] = 0;
  (*(v2 + 104))(v4, _s26ManagedBackgroundAssetsXPC14XPCActorSystemC4RoleO6serveryAeA8ServerIDV_yAA10ConnectionC7RequestVYbAJ9RejectionVYKctcAEmFWC, v1);
  sub_100000E04();
  swift_allocObject();
  sub_100000DF4();
  if (!v0)
  {
    qword_100008018 = sub_100000E24();

    v6 = [objc_opt_self() mainRunLoop];
    [v6 run];
  }
}

uint64_t sub_100000D9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}