uint64_t sub_12D0()
{
  v22 = sub_1B40();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = (&v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1B70();
  v3 = *(v21 - 8);
  v4 = __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = dispatch_semaphore_create(0);
  sub_18B0(0);
  v10 = swift_allocObject();
  *(v10 + 32) = 0;
  v11 = (v10 + 32);
  *(v10 + 16) = 0;
  *(v10 + 24) = 0xE000000000000000;
  v12 = [objc_allocWithZone(sub_1B30()) init];
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v9;

  v14 = v9;
  v20 = v12;
  sub_1B20();

  sub_1B60();
  *v2 = 10;
  v15 = v22;
  (*(v0 + 104))(v2, enum case for DispatchTimeInterval.seconds(_:), v22);
  sub_1B80();
  (*(v0 + 8))(v2, v15);
  v16 = *(v3 + 8);
  v17 = v21;
  v16(v6, v21);
  sub_1BD0();
  v16(v8, v17);
  if (sub_1B50())
  {
    v18 = sub_1B90();
  }

  else
  {
    os_unfair_lock_lock(v11);

    os_unfair_lock_unlock(v11);
    v18 = sub_1B90();
  }

  [v23 appendString:v18];
}

Swift::Int sub_1604(uint64_t a1, uint64_t a2, char a3, os_unfair_lock_s *a4)
{
  if (a3)
  {
    __chkstk_darwin(a1);
    v5 = a4 + 8;
    os_unfair_lock_lock(a4 + 8);
    sub_19CC(&a4[4]._os_unfair_lock_opaque);
  }

  else
  {
    __chkstk_darwin(a1);
    v5 = a4 + 8;
    os_unfair_lock_lock(a4 + 8);
    sub_1984(&a4[4]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(v5);
  return sub_1BE0();
}

uint64_t sub_16D8(unint64_t *a1, uint64_t a2)
{

  sub_1BF0(40);

  v9 = 0xD000000000000026;
  v10 = 0x8000000000001FD0;
  ErrorValue = swift_getErrorValue();
  __chkstk_darwin(ErrorValue);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11._countAndFlagsBits = sub_1BA0();
  sub_1BB0(v11);

  v7 = v10;
  *a1 = v9;
  a1[1] = v7;
  return result;
}

id sub_1854(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_18B0(uint64_t a1)
{
  if (!qword_8318)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1C00();
    if (!v2)
    {
      atomic_store(v1, &qword_8318);
    }
  }
}

uint64_t sub_1938()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1984(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

void sub_19F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A48()
{
  result = qword_8328;
  if (!qword_8328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8328);
  }

  return result;
}

uint64_t sub_1AA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}