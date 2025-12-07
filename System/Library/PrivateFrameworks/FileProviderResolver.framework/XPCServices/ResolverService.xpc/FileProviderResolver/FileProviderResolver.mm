int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100002508();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  if ((fpfs_set_support_long_paths_iopolicy() & 0x80000000) != 0)
  {
    sub_1000024E8();
    sub_1000024C8();
    v14 = sub_1000024F8();
    v15 = sub_100002568();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = sub_100002518();
      _os_log_impl(&_mh_execute_header, v14, v15, "failed to enable support for long paths in VFS, errno: %d", v16, 8u);
    }

    (*(v4 + 8))(v9, v3);
    exit(1);
  }

  qword_1000084D0 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  qword_1000084D8 = [objc_opt_self() serviceListener];
  [qword_1000084D8 setDelegate:qword_1000084D0];
  sub_1000024E8();
  sub_1000024C8();
  v10 = sub_1000024F8();
  v11 = sub_100002558();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Resolver XPC Server Ready", v12, 2u);
  }

  (*(v4 + 8))(v7, v3);
  [qword_1000084D8 resume];
  return 0;
}

uint64_t sub_1000012B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000025C8();
  sub_100002538();
  v6 = sub_1000025D8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1000025B8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000013AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100001490()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000014C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001590(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100002460(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002310(v11);
  return v7;
}

unint64_t sub_100001590(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000169C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000025A8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000169C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000016E8(a1, a2);
  sub_100001818(&off_100004290);
  return v3;
}

char *sub_1000016E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100001904(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000025A8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100002548();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001904(v10, 0);
        result = sub_100002598();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100001818(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100001978(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100001904(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000022C8(&qword_100008460, &qword_100002A38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100001978(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000022C8(&qword_100008460, &qword_100002A38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

Swift::Int sub_100001A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000022C8(&qword_100008468, &unk_100002A40);
    v3 = sub_100002588();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1000025C8();

      sub_100002538();
      result = sub_1000025D8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1000025B8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100001BD4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100002508();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_100002528();
  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    sub_100002578();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  aBlock = v44;
  v39 = v45;
  if (!*(&v45 + 1))
  {
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_1000024E8();
    sub_1000024C8();
    v27 = a1;
    v28 = sub_1000024F8();
    v29 = sub_100002558();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = [v27 processIdentifier];

      _os_log_impl(&_mh_execute_header, v28, v29, "Client not allowed: %d", v30, 8u);
    }

    else
    {

      v28 = v27;
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v13 = v43;
  v37 = v42;
  v14 = sub_100002528();
  v15 = [a1 valueForEntitlement:v14];

  if (v15)
  {
    sub_100002578();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  aBlock = v44;
  v39 = v45;
  if (!*(&v45 + 1))
  {

LABEL_16:
    sub_100002260(&aBlock);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0 || v42 != 1)
  {

    goto LABEL_17;
  }

  v16 = sub_100001A6C(&off_1000042B8);
  swift_arrayDestroy();
  v17 = v37;
  v18 = sub_1000012B4(v37, v13, v16);

  if (v18)
  {

    v19 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___FPResolverProtocol];
    [a1 setExportedInterface:v19];

    v20 = [objc_allocWithZone(sub_1000024E8()) init];
    [a1 setExportedObject:v20];

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = sub_100002394;
    v41 = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_1000013AC;
    *(&v39 + 1) = &unk_100004320;
    v22 = _Block_copy(&aBlock);

    [a1 setInvalidationHandler:v22];
    _Block_release(v22);
    v40 = sub_100002408;
    v41 = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_1000013AC;
    *(&v39 + 1) = &unk_100004348;
    v23 = _Block_copy(&aBlock);

    [a1 setInterruptionHandler:v23];
    _Block_release(v23);
    v24 = objc_opt_self();
    v25 = sub_1000024D8();
    [v24 setupWithLog:v25 forConnection:a1];

    [a1 resume];

    return 1;
  }

  sub_1000024E8();
  sub_1000024C8();

  v31 = sub_1000024F8();
  v32 = sub_100002558();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&aBlock = v34;
    *v33 = 136315138;
    v35 = sub_1000014C4(v17, v13, &aBlock);

    *(v33 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Client %s not in allow list.", v33, 0xCu);
    sub_100002310(v34);
  }

  else
  {
  }

  (*(v5 + 8))(v10, v4);
  return 0;
}

uint64_t sub_100002260(uint64_t a1)
{
  v2 = sub_1000022C8(&qword_1000083F8, &qword_100002A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000022C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002310(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000235C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100002394()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setExportedObject:0];
  }
}

uint64_t sub_1000023F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100002408()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidate];
  }
}

uint64_t sub_100002460(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}