void sub_100001C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _HKInitializeLogging();
  v5 = HKLogDefault;
  if (a3)
  {
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Successfully cleared follow-up item with identifier %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    sub_100002C24(a1, v5);
  }
}

void sub_100001DE0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_100001E00(id a1)
{

  return a1;
}

uint64_t static EmergencyAccessBuddyViewControllerCreator.makeFollowUpViewController(for:healthStore:followUpDelegate:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v42 = a4;
  v43 = a3;
  v6 = sub_100002D48();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100002CD8();
  v8 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100002CF8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_100002D58();
  v44 = a2;
  if (v18 == a1 && v19 == a2)
  {

    goto LABEL_15;
  }

  v38 = v6;
  v21 = sub_100002DB8();

  if (v21)
  {
LABEL_15:
    sub_100002CE8();
    *v10 = v42;
    v33 = &enum case for EmergencyAccessBuddyFlow.followUpOnboarding(_:);
LABEL_16:
    (*(v8 + 104))(v10, *v33, v41);
    (*(v12 + 16))(v15, v17, v11);
    v34 = objc_allocWithZone(sub_100002D18());
    swift_unknownObjectRetain();
    v35 = v43;
    v32 = sub_100002D08();
    (*(v12 + 8))(v17, v11);
    return v32;
  }

  if (sub_100002D58() == a1 && v22 == v44)
  {

    goto LABEL_19;
  }

  v37 = a1;
  v24 = sub_100002DB8();

  if (v24)
  {
LABEL_19:
    sub_100002CE8();
    *v10 = v42;
    v33 = &enum case for EmergencyAccessBuddyFlow.followUpReview(_:);
    goto LABEL_16;
  }

  v25 = v39;
  sub_100002D28();

  v26 = sub_100002D38();
  v27 = sub_100002D78();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = sub_100002DC8();
    v31 = sub_10000243C(v29, v30, &v45);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_10000243C(v37, v44, &v45);
    _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Received an action identifier that we don't know how to handle: %s", v28, 0x16u);
    swift_arrayDestroy();
  }

  (*(v40 + 8))(v25, v38);
  return 0;
}

id EmergencyAccessBuddyViewControllerCreator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmergencyAccessBuddyViewControllerCreator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyViewControllerCreator();
  return objc_msgSendSuper2(&v2, "init");
}

id EmergencyAccessBuddyViewControllerCreator.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EmergencyAccessBuddyViewControllerCreator();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10000243C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002508(v11, 0, 0, 1, a1, a2);
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
    sub_100002A3C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000029F0(v11);
  return v7;
}

unint64_t sub_100002508(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002614(a5, a6);
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
    result = sub_100002D98();
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

char *sub_100002614(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002660(a1, a2);
  sub_100002790(&off_1000043A0);
  return v3;
}

char *sub_100002660(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000287C(v5, 0);
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

  result = sub_100002D98();
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
        v10 = sub_100002D68();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000287C(v10, 0);
        result = sub_100002D88();
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

uint64_t sub_100002790(uint64_t result)
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

  result = sub_1000028E4(result, v11, 1, v3);
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

void *sub_10000287C(uint64_t a1, uint64_t a2)
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

  sub_100002A98();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000028E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A98();
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

uint64_t sub_1000029F0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002A3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100002A98()
{
  if (!qword_100008378)
  {
    v0 = sub_100002DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_100008378);
    }
  }
}

void sub_100002AEC(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = sub_100001E00(v3);
  sub_100001DE0(&_mh_execute_header, v5, v6, "[%@] No view controller found for item with identifier: %@", v7, v8, v9, v10);
}

void sub_100002B88(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = sub_100001E00(v3);
  sub_100001DE0(&_mh_execute_header, v5, v6, "[%@] Action did not have an accepted identifier for us to process: %@", v7, v8, v9, v10);
}

void sub_100002C24(uint64_t a1, void *a2)
{
  v3 = a2;
  *v11 = 138412546;
  *&v11[4] = objc_opt_class();
  *&v11[12] = 2112;
  *&v11[14] = *(a1 + 32);
  v4 = *&v11[4];
  sub_100001DE0(&_mh_execute_header, v5, v6, "[%@] Failed to clear follow-up item with identifier %@", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
}