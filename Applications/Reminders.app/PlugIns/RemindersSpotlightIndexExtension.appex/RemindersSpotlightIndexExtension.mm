uint64_t sub_100001820()
{
  v0 = sub_100004F4C();
  sub_100004C38(v0, qword_10000C368);
  v1 = sub_100004A6C(v0, qword_10000C368);
  if (qword_10000C380 != -1)
  {
    swift_once();
  }

  v2 = sub_100004A6C(v0, qword_10000C448);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRSIEIndexRequestHandler.searchableIndex(_:reindexAllSearchableItemsWithAcknowledgementHandler:)(void *a1, void (*a2)(uint64_t a1), uint64_t a3)
{
  v6 = sub_10000500C();
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100005500;
  *(v7 + 56) = sub_100004AF0(0, &qword_10000C390, CSSearchableIndex_ptr);
  *(v7 + 64) = sub_100001BAC();
  *(v7 + 32) = a1;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  v8 = a1;
  v9 = sub_10000504C();
  sub_100004F2C("TTRSIEIndexRequestHandler: Reindex all items; index = %@", 56, 2, &_mh_execute_header, v9, v6, v7);

  v10 = [objc_opt_self() weakSharedInstance];
  v11 = sub_100004F6C();
  v20 = sub_100001C14;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100001C24;
  v19 = &unk_100008530;
  v12 = _Block_copy(&v16);
  v13 = [v10 syncIndexingPerformerWithReason:v11 errorHandler:v12];
  _Block_release(v12);

  if (!v13)
  {
    return (a2)();
  }

  v20 = a2;
  v21 = a3;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100001CA4;
  v19 = &unk_100008558;
  v14 = _Block_copy(&v16);

  [v13 reindexAllSearchableItemsWithAcknowledgementHandler:v14];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_100001B64(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001BAC()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    sub_100004AF0(255, &qword_10000C390, CSSearchableIndex_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C398);
  }

  return result;
}

void sub_100001C24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100001C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001CA4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void TTRSIEIndexRequestHandler.searchableIndex(_:reindexSearchableItemsWithIdentifiers:acknowledgementHandler:)(void *a1, uint64_t a2, void (*a3)(uint64_t a1), uint64_t a4)
{
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100005510;
  *(v8 + 56) = sub_100004AF0(0, &qword_10000C390, CSSearchableIndex_ptr);
  *(v8 + 64) = sub_100001BAC();
  *(v8 + 32) = a1;
  *(v8 + 96) = sub_100001B64(&qword_10000C3A8, &qword_100005578);
  *(v8 + 104) = sub_10000203C();
  *(v8 + 72) = a2;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  v9 = a1;

  v10 = sub_10000504C();
  v11 = sub_10000502C();
  sub_100004F2C("TTRSIEIndexRequestHandler: Reindex specific items; index = %@; item identifiers = %@", 84, 2, &_mh_execute_header, v10, v11, v8);

  v12 = [objc_opt_self() weakSharedInstance];
  v13 = sub_100004F6C();
  v22 = sub_1000020E8;
  v23 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100001C24;
  v21 = &unk_100008580;
  v14 = _Block_copy(&v18);
  v15 = [v12 syncIndexingPerformerWithReason:v13 errorHandler:v14];
  _Block_release(v14);

  if (v15)
  {
    isa = sub_100004FEC().super.isa;
    v22 = a3;
    v23 = a4;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100001CA4;
    v21 = &unk_1000085A8;
    v17 = _Block_copy(&v18);

    [v15 reindexSearchableItemsWithIdentifiers:isa acknowledgementHandler:v17];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    (a3)();
  }
}

unint64_t sub_10000203C()
{
  result = qword_10000C3B0;
  if (!qword_10000C3B0)
  {
    sub_1000020A0(&qword_10000C3A8, &qword_100005578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3B0);
  }

  return result;
}

uint64_t sub_1000020A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1000020F8(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  v5 = sub_10000501C();
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005500;
  swift_getErrorValue();
  v7 = sub_10000508C();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100004C9C();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  v10 = sub_10000504C();
  sub_100004F2C(a2, a3, 2, &_mh_execute_header, v10, v5, v6);
}

id TTRSIEIndexRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRSIEIndexRequestHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSIEIndexRequestHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRSIEIndexRequestHandler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TTRSIEIndexRequestHandler();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000024C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002594(v11, 0, 0, 1, a1, a2);
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
    sub_100004BD8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004AA4(v11);
  return v7;
}

unint64_t sub_100002594(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000026A0(a5, a6);
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
    result = sub_10000506C();
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

char *sub_1000026A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000026EC(a1, a2);
  sub_10000281C(&off_100008508);
  return v3;
}

char *sub_1000026EC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002908(v5, 0);
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

  result = sub_10000506C();
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
        v10 = sub_100004FDC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002908(v10, 0);
        result = sub_10000505C();
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

uint64_t sub_10000281C(uint64_t result)
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

  result = sub_10000297C(result, v11, 1, v3);
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

void *sub_100002908(uint64_t a1, uint64_t a2)
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

  sub_100001B64(&qword_10000C410, qword_1000055F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000297C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B64(&qword_10000C410, qword_1000055F8);
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

uint64_t sub_100002A70(void *a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = sub_10000500C();
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005500;
  *(v6 + 56) = sub_100004AF0(0, &qword_10000C390, CSSearchableIndex_ptr);
  *(v6 + 64) = sub_100001BAC();
  *(v6 + 32) = a1;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  v7 = a1;
  v8 = sub_10000504C();
  sub_100004F2C("TTRSIEIndexRequestHandler: Reindex all items; index = %@", 56, 2, &_mh_execute_header, v8, v5, v6);

  v9 = [objc_opt_self() weakSharedInstance];
  v10 = sub_100004F6C();
  v19 = sub_100001C14;
  v20 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100001C24;
  v18 = &unk_100008670;
  v11 = _Block_copy(&v15);
  v12 = [v9 syncIndexingPerformerWithReason:v10 errorHandler:v11];
  _Block_release(v11);

  if (v12)
  {
    v19 = sub_100004D10;
    v20 = v4;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100001CA4;
    v18 = &unk_100008698;
    v13 = _Block_copy(&v15);

    [v12 reindexAllSearchableItemsWithAcknowledgementHandler:v13];
    _Block_release(v13);

    return swift_unknownObjectRelease();
  }

  else
  {
    a2[2](a2);
  }
}

void sub_100002D30(void *a1, uint64_t a2, void (**a3)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100005510;
  *(v7 + 56) = sub_100004AF0(0, &qword_10000C390, CSSearchableIndex_ptr);
  *(v7 + 64) = sub_100001BAC();
  *(v7 + 32) = a1;
  *(v7 + 96) = sub_100001B64(&qword_10000C3A8, &qword_100005578);
  *(v7 + 104) = sub_10000203C();
  *(v7 + 72) = a2;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  _Block_copy(a3);
  v8 = a1;

  v9 = sub_10000504C();
  v10 = sub_10000502C();
  sub_100004F2C("TTRSIEIndexRequestHandler: Reindex specific items; index = %@; item identifiers = %@", 84, 2, &_mh_execute_header, v9, v10, v7);

  v11 = [objc_opt_self() weakSharedInstance];
  v12 = sub_100004F6C();
  v21 = sub_1000020E8;
  v22 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100001C24;
  v20 = &unk_1000085F8;
  v13 = _Block_copy(&v17);
  v14 = [v11 syncIndexingPerformerWithReason:v12 errorHandler:v13];
  _Block_release(v13);

  if (v14)
  {
    isa = sub_100004FEC().super.isa;
    v21 = sub_100004A5C;
    v22 = v6;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100001CA4;
    v20 = &unk_100008620;
    v16 = _Block_copy(&v17);

    [v14 reindexSearchableItemsWithIdentifiers:isa acknowledgementHandler:v16];
    _Block_release(v16);

    swift_unknownObjectRelease();
  }

  else
  {
    a3[2](a3);
  }
}

char *sub_100003040(void *a1, uint64_t a2)
{
  v95 = a2;
  v97 = a1;
  v94 = sub_100004EBC();
  v92 = *(v94 - 1);
  __chkstk_darwin(v94);
  v93 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001B64(&qword_10000C400, &qword_1000055E8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v88 - v7;
  v9 = sub_100004EDC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E8C();
  sub_100001B64(&qword_10000C408, &qword_1000055F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100005500;
  (*(v10 + 104))(v12, enum case for REMSearchableItemAttributeName.itemType(_:), v9);
  v14 = sub_100004ECC();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v18 = v95;
  v17 = v96;
  v19 = v97;
  v20 = sub_100004E7C();
  if (v17)
  {

    if (qword_10000C360 != -1)
    {
      swift_once();
    }

    v22 = sub_100004F4C();
    sub_100004A6C(v22, qword_10000C368);

    v23 = sub_100004F3C();
    v24 = sub_10000501C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v98 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000024C8(v19, v18, &v98);
      _os_log_impl(&_mh_execute_header, v23, v24, "TTRSIEIndexRequestHandler: Error occured when querying spotlight for item identifier {itemIdentifier: %s}", v25, 0xCu);
      sub_100004AA4(v26);
    }

LABEL_7:
    swift_willThrow();
    return v23;
  }

  v28 = v20;
  v29 = v21;
  v89 = v6;
  v31 = v93;
  v30 = v94;

  if (!v28)
  {
    if (qword_10000C360 != -1)
    {
      swift_once();
    }

    v44 = sub_100004F4C();
    sub_100004A6C(v44, qword_10000C368);

    v45 = sub_100004F3C();
    v46 = sub_10000501C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v98 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1000024C8(v19, v18, &v98);
      _os_log_impl(&_mh_execute_header, v45, v46, "TTRSIEIndexRequestHandler: Spotlight item identifier does not exist {itemIdentifier: %s}", v47, 0xCu);
      sub_100004AA4(v48);
    }

    v23 = objc_opt_self();
    v49 = sub_100004F6C();
    [v23 invalidParameterErrorWithDescription:v49];

    goto LABEL_7;
  }

  v32 = v18;
  v90 = v28;
  v91 = v28;
  v96 = v29;
  sub_10000503C();
  v33 = v92;
  v88 = v92[6];
  if (v88(v8, 1, v30) != 1)
  {
    v50 = (*(v33 + 88))(v8, v30);
    if (v50 == enum case for REMSearchableItemType.reminder(_:))
    {
      v94 = v29;
      v51 = [objc_allocWithZone(REMStore) init];
      v98 = 0;
      v52 = v91;
      v53 = [v51 fetchReminderWithObjectID:v91 error:&v98];
      v54 = v98;
      if (v53)
      {
        v23 = v53;
        v55 = v96;
LABEL_28:
        v58 = v54;
        sub_100004B38(v90, v94);

        return v23;
      }

      v23 = v98;
      sub_100004E4C();

      swift_willThrow();
      if (qword_10000C360 != -1)
      {
        swift_once();
      }

      v69 = sub_100004F4C();
      sub_100004A6C(v69, qword_10000C368);

      v70 = v52;
      swift_errorRetain();
      v71 = sub_100004F3C();
      v72 = sub_10000501C();

      if (os_log_type_enabled(v71, v72))
      {
        v23 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v92 = v73;
        v93 = swift_slowAlloc();
        v98 = v93;
        *v23 = 136315650;
        *(v23 + 4) = sub_1000024C8(v97, v32, &v98);
        *(v23 + 6) = 2112;
        *(v23 + 14) = v70;
        v74 = v90;
        *v73 = v90;
        *(v23 + 11) = 2080;
        swift_getErrorValue();
        v75 = v70;
        v76 = sub_10000509C();
        v78 = sub_1000024C8(v76, v77, &v98);
        v79 = v74;

        *(v23 + 3) = v78;
        v80 = "TTRSIEIndexRequestHandler: Error fetching reminder {spotlightItemIdentifier: %s, objectID: %@, error: %s}";
LABEL_41:
        _os_log_impl(&_mh_execute_header, v71, v72, v80, v23, 0x20u);
        sub_100004B78(v92, &qword_10000C3E8, &qword_1000055D8);

        swift_arrayDestroy();

LABEL_43:
        swift_willThrow();
        sub_100004B38(v79, v94);

        return v23;
      }
    }

    else
    {
      if (v50 != enum case for REMSearchableItemType.list(_:))
      {
        (v92[1])(v8, v30);
        goto LABEL_11;
      }

      v94 = v29;
      v52 = [objc_allocWithZone(REMStore) init];
      v98 = 0;
      v55 = v91;
      v57 = [v52 fetchListWithObjectID:v91 error:&v98];
      v54 = v98;
      if (v57)
      {
        v23 = v57;
        v51 = v96;
        goto LABEL_28;
      }

      v23 = v98;
      sub_100004E4C();

      swift_willThrow();
      if (qword_10000C360 != -1)
      {
        swift_once();
      }

      v81 = sub_100004F4C();
      sub_100004A6C(v81, qword_10000C368);

      v70 = v55;
      swift_errorRetain();
      v71 = sub_100004F3C();
      v72 = sub_10000501C();

      if (os_log_type_enabled(v71, v72))
      {
        v23 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v92 = v82;
        v93 = swift_slowAlloc();
        v98 = v93;
        *v23 = 136315650;
        *(v23 + 4) = sub_1000024C8(v97, v32, &v98);
        *(v23 + 6) = 2112;
        *(v23 + 14) = v70;
        v83 = v90;
        *v82 = v90;
        *(v23 + 11) = 2080;
        swift_getErrorValue();
        v84 = v70;
        v85 = sub_10000509C();
        v87 = sub_1000024C8(v85, v86, &v98);
        v79 = v83;

        *(v23 + 3) = v87;
        v80 = "TTRSIEIndexRequestHandler: Error fetching list {spotlightItemIdentifier: %s, objectID: %@, error: %s}";
        goto LABEL_41;
      }
    }

    v79 = v90;
    goto LABEL_43;
  }

LABEL_11:
  if (qword_10000C360 != -1)
  {
    swift_once();
  }

  v34 = sub_100004F4C();
  sub_100004A6C(v34, qword_10000C368);
  v35 = v96;
  v36 = sub_100004F3C();
  v37 = sub_10000501C();

  v38 = os_log_type_enabled(v36, v37);
  v97 = v35;
  if (v38)
  {
    v39 = v31;
    v40 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v98 = v96;
    *v40 = 136315394;
    v41 = v89;
    sub_10000503C();
    if (v88(v41, 1, v30))
    {
      sub_100004B78(v41, &qword_10000C400, &qword_1000055E8);
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      v59 = v92;
      (v92[2])(v39, v41, v30);
      sub_100004B78(v41, &qword_10000C400, &qword_1000055E8);
      v60 = sub_100004EAC();
      v61 = v39;
      v62 = v60;
      v42 = v63;
      (*(v59 + 8))(v61, v30);
      v43 = v62;
    }

    v56 = v91;
    v64 = sub_1000024C8(v43, v42, &v98);

    *(v40 + 4) = v64;
    *(v40 + 12) = 2080;
    v65 = sub_100004F7C();
    v67 = sub_1000024C8(v65, v66, &v98);

    *(v40 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v36, v37, "TTRSIEIndexRequestHandler: Item type does not support exporting to data type {itemType: %s, dataTypeIdentifier: %s}", v40, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v56 = v91;
  }

  v23 = objc_opt_self();
  v68 = sub_100004F6C();
  [v23 invalidParameterErrorWithDescription:v68];

  swift_willThrow();
  sub_100004B38(v90, v29);

  return v23;
}

uint64_t sub_100003D78(void *a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v104 = a2;
  v99 = sub_100004FBC();
  v9 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004F1C();
  v101 = *(v11 - 8);
  v102 = v11;
  v12 = __chkstk_darwin(v11);
  v97 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v93 - v14;
  if (qword_10000C360 != -1)
  {
    swift_once();
  }

  v16 = sub_100004F4C();
  v17 = sub_100004A6C(v16, qword_10000C368);
  v18 = a1;

  v96 = v17;
  v19 = sub_100004F3C();
  v20 = sub_10000502C();

  v21 = os_log_type_enabled(v19, v20);
  v103 = a3;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v95 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v105[0] = v94;
    *v23 = 138412802;
    *(v23 + 4) = v18;
    *v24 = v18;
    *(v23 + 12) = 2080;
    v25 = v18;
    *(v23 + 14) = sub_1000024C8(v104, a3, v105);
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_1000024C8(a4, a5, v105);
    _os_log_impl(&_mh_execute_header, v19, v20, "TTRSIEIndexRequestHandler: Generating data representation of an item {searchableIndex: %@, itemIdentifier: %s, typeIdentifier, %s}", v23, 0x20u);
    sub_100004B78(v24, &qword_10000C3E8, &qword_1000055D8);

    swift_arrayDestroy();

    v9 = v95;
  }

  sub_100004EFC();
  v26 = sub_100004EEC();
  v28 = v27;
  v29 = v102;
  v30 = *(v101 + 8);
  v30(v15, v102);
  if (v26 == a4 && v28 == a5)
  {

LABEL_14:
    v37 = v100;
    v38 = sub_100003040(v104, v103);
    if (!v37)
    {
      v39 = v38;
      swift_getObjectType();
      sub_100004E9C();
      v40 = v98;
      sub_100004F9C();
      v28 = sub_100004F8C();
      v42 = v41;

      (*(v9 + 8))(v40, v99);
      if (v42 >> 60 == 15)
      {
        swift_unknownObjectRetain();
        v43 = sub_100004F3C();
        v44 = sub_10000501C();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          v47 = [v39 remObjectID];
          *(v45 + 4) = v47;
          *v46 = v47;
          _os_log_impl(&_mh_execute_header, v43, v44, "TTRSIEIndexRequestHandler: Couldn't encode description string to UTF-8 {objectID: %@}", v45, 0xCu);
          sub_100004B78(v46, &qword_10000C3E8, &qword_1000055D8);
        }

        goto LABEL_18;
      }

LABEL_26:
      swift_unknownObjectRelease();
      return v28;
    }

    return v28;
  }

  v32 = sub_10000507C();

  if (v32)
  {
    goto LABEL_14;
  }

  v33 = v97;
  sub_100004F0C();
  v34 = sub_100004EEC();
  v28 = v35;
  v30(v33, v29);
  if (v34 == a4 && v28 == a5)
  {

    v36 = v103;
    goto LABEL_20;
  }

  v50 = a4;
  v51 = sub_10000507C();

  v36 = v103;
  if (v51)
  {
LABEL_20:
    v52 = v100;
    v53 = sub_100003040(v104, v36);
    if (v52)
    {
      return v28;
    }

    v55 = v53;
    swift_getObjectType();
    sub_100004E9C();
    v56 = v98;
    sub_100004FAC();
    v28 = sub_100004F8C();
    v58 = v57;

    (*(v9 + 8))(v56, v99);
    if (v58 >> 60 == 15)
    {
      swift_unknownObjectRetain();
      v43 = sub_100004F3C();
      v59 = sub_10000501C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v43, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = [v55 remObjectID];
        *(v60 + 4) = v62;
        *v61 = v62;
        _os_log_impl(&_mh_execute_header, v43, v59, "TTRSIEIndexRequestHandler: Couldn't encode description string to UTF-16 {objectID: %@}", v60, 0xCu);
        sub_100004B78(v61, &qword_10000C3E8, &qword_1000055D8);
      }

LABEL_18:

      v48 = objc_opt_self();
      v49 = sub_100004F6C();
      v28 = [v48 internalErrorWithDebugDescription:v49];

      swift_willThrow();
      swift_unknownObjectRelease();
      return v28;
    }

    goto LABEL_26;
  }

  v63 = v103;
  if (sub_100004F7C() == v50 && v64 == a5)
  {

    goto LABEL_31;
  }

  v65 = v50;
  v28 = sub_10000507C();

  if (v28)
  {
LABEL_31:
    v66 = v100;
    v67 = sub_100003040(v104, v63);
    if (!v66)
    {
      v69 = v67;
      v70 = v68;
      objc_opt_self();
      v71 = swift_dynamicCastObjCClass();
      if (v71)
      {
        v72 = v71;
        v73 = objc_opt_self();
        sub_100001B64(&qword_10000C3F0, &qword_1000055E0);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_100005520;
        *(v74 + 32) = v72;
        sub_100004AF0(0, &qword_10000C3F8, REMReminder_ptr);
        swift_unknownObjectRetain_n();
        isa = sub_100004FEC().super.isa;

        v76 = [v73 exportICSCalendarFromReminders:isa];

        v77 = REMiCalendarDataFromICSCalendar();
        v28 = sub_100004E6C();
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRetain();
        v83 = sub_100004F3C();
        v84 = sub_10000501C();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v106 = v87;
          *v85 = 138412546;
          v88 = [v69 remObjectID];
          *(v85 + 4) = v88;
          *v86 = v88;
          *(v85 + 12) = 2080;
          v105[0] = swift_getObjectType();
          v105[1] = v70;
          sub_100001B64(&qword_10000C3E0, &qword_1000055D0);
          v89 = sub_100004FCC();
          v91 = sub_1000024C8(v89, v90, &v106);

          *(v85 + 14) = v91;
          _os_log_impl(&_mh_execute_header, v83, v84, "TTRSIEIndexRequestHandler: Unsupported type of REMSearchableItem for exporting to ICS data {objectID: %@, type: %s}", v85, 0x16u);
          sub_100004B78(v86, &qword_10000C3E8, &qword_1000055D8);

          sub_100004AA4(v87);
        }

        v92 = objc_opt_self();
        v28 = sub_100004F6C();
        [v92 internalErrorWithDebugDescription:v28];

        swift_willThrow();
        swift_unknownObjectRelease();
      }
    }

    return v28;
  }

  v78 = sub_100004F3C();
  v79 = sub_10000501C();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v105[0] = v81;
    *v80 = 136315138;
    *(v80 + 4) = sub_1000024C8(v65, a5, v105);
    _os_log_impl(&_mh_execute_header, v78, v79, "TTRSIEIndexRequestHandler: Unsupported typeIdentifier {typeIdentifier: %s}", v80, 0xCu);
    sub_100004AA4(v81);
  }

  v82 = objc_opt_self();
  v28 = sub_100004F6C();
  [v82 invalidParameterErrorWithDescription:v28];

  swift_willThrow();
  return v28;
}

uint64_t sub_1000049D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100004A24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004A6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004AA4(void *a1)
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

uint64_t sub_100004AF0(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100004B38(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_100004B78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001B64(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100004C38(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100004C9C()
{
  result = qword_10000C418;
  if (!qword_10000C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C418);
  }

  return result;
}

id sub_100004D70()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004DCC()
{
  v0 = sub_100004F4C();
  sub_100004C38(v0, qword_10000C448);
  sub_100004A6C(v0, qword_10000C448);
  v1 = [objc_opt_self() search];
  return sub_100004F5C();
}