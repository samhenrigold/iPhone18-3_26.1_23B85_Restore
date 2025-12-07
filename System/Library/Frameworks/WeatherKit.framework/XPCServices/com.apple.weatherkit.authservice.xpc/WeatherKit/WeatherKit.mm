int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001B94();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001340(&qword_1000080D0, &unk_100001D30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100001D20;
  v8 = type metadata accessor for AuthServiceAssembly();
  v9 = swift_allocObject();
  *(v7 + 56) = v8;
  *(v7 + 64) = sub_100001388();
  *(v7 + 32) = v9;
  sub_100001B24();
  swift_allocObject();
  sub_100001B14();
  (*(v4 + 104))(v6, enum case for Container.Environment.normal(_:), v3);
  sub_100001BC4();
  swift_allocObject();
  qword_100008190 = sub_100001BA4();
  [objc_opt_self() setSuppressEngagement:1];
  sub_100001BB4();
  qword_1000081C0 = [objc_opt_self() serviceListener];
  sub_1000013E0(qword_100008198, qword_1000081B0);
  sub_100001C54();
  v10 = sub_100001AF4();
  if (v10)
  {
    qword_1000081C8 = v10;
    [qword_1000081C0 setDelegate:v10];
    [qword_1000081C0 activate];
    LODWORD(v10) = 0;
  }

  else
  {
    __break(1u);
  }

  return v10;
}

uint64_t sub_100001340(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001388()
{
  result = qword_1000080D8;
  if (!qword_1000080D8)
  {
    type metadata accessor for AuthServiceAssembly();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080D8);
  }

  return result;
}

void *sub_1000013E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001424()
{
  sub_100001B34();
  sub_100001C54();
  sub_100001B64();

  sub_100001B44();
  sub_100001B54();
}

uint64_t sub_1000014C8(void *a1)
{
  v2 = sub_100001BD4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001340(&qword_100008188, &qword_100001DB8);
  __chkstk_darwin();
  v7 = v14 - v6;
  sub_1000013E0(a1, a1[3]);
  v8 = sub_100001A48();
  result = sub_100001AE4();
  if (result)
  {
    v14[8] = v8;
    v14[9] = &protocol witness table for NSURLSession;
    v14[5] = result;
    v10 = sub_100001C14();
    swift_allocObject();
    v11 = sub_100001C04();
    v14[3] = v10;
    v14[4] = &protocol witness table for WDSJWTMescalSigner;
    v14[0] = v11;
    sub_1000013E0(a1, a1[3]);
    v12 = sub_100001BF4();
    sub_100001B04();
    result = sub_100001A8C(v7, 1, v12);
    if (result != 1)
    {
      (*(v3 + 104))(v5, enum case for WDSVersion.tokenServiceVersion(_:), v2);
      sub_100001C34();
      swift_allocObject();
      sub_100001C24();
      v13 = objc_allocWithZone(sub_100001C54());
      return sub_100001C44();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100001734()
{
  v0 = sub_100001B84();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A48();
  sub_100001B64();

  sub_100001BF4();
  sub_100001B74();
  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  sub_100001AD4();

  return (*(v1 + 8))(v3, v0);
}

id sub_1000018A8()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  [v0 setRequestCachePolicy:4];
  [v0 setURLCache:0];
  v1 = [objc_opt_self() sessionWithConfiguration:v0];

  return v1;
}

uint64_t sub_10000193C()
{
  sub_100001340(&qword_100008180, &qword_100001DB0);
  __chkstk_darwin();
  v1 = &v4 - v0;
  sub_100001AB4();
  v2 = sub_100001AC4();
  result = sub_100001A8C(v1, 1, v2);
  if (result != 1)
  {
    return sub_100001BE4();
  }

  __break(1u);
  return result;
}

unint64_t sub_100001A48()
{
  result = qword_100008178;
  if (!qword_100008178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008178);
  }

  return result;
}