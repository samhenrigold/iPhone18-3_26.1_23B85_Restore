void sub_1000015B8(unint64_t a1)
{
  v84 = a1;
  v2 = sub_100003000(&qword_10000C1F8, &qword_100003AD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v60 - v3;
  v5 = sub_100003000(&qword_10000C200, &qword_100003AE0);
  __chkstk_darwin(v5 - 8);
  v72 = &v60 - v6;
  v7 = sub_100003000(&qword_10000C208, &qword_100003AE8);
  __chkstk_darwin(v7 - 8);
  v71 = &v60 - v8;
  v9 = sub_100003000(&qword_10000C210, &qword_100003AF0);
  __chkstk_darwin(v9 - 8);
  v70 = &v60 - v10;
  v11 = sub_100003000(&qword_10000C218, &qword_100003AF8);
  v12 = __chkstk_darwin(v11 - 8);
  v69 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v68 = &v60 - v15;
  v16 = __chkstk_darwin(v14);
  v79 = &v60 - v17;
  __chkstk_darwin(v16);
  v19 = (&v60 - v18);
  v20 = sub_10000358C();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v78 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v60 - v24;
  v85 = v1;
  if ([*(v1 + OBJC_IVAR___MPSpotlightIndexExtensionHandler_featureFlags) voicemailSearchEnabled])
  {
    v87 = &_swiftEmptyArrayStorage;
    v27 = v84 >> 62;
    v62 = v4;
    if (v84 >> 62)
    {
      v28 = sub_10000375C();
    }

    else
    {
      v28 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v27;
    if (v28)
    {
      if (v28 < 1)
      {
        __break(1u);
        goto LABEL_34;
      }

      v29 = 0;
      v82 = v84 & 0xC000000000000001;
      v83 = OBJC_IVAR___MPSpotlightIndexExtensionHandler_logger;
      v77 = "SpotlightReIndexManager";
      v81 = v21 + 6;
      v74 = v21 + 4;
      v65 = v21 + 2;
      v64 = &v21[7];
      v73 = v21 + 1;
      v75 = &_swiftEmptyArrayStorage;
      *&v26 = 136446466;
      v76 = v26;
      v67 = v19;
      v66 = v20;
      v80 = v28;
      v63 = v25;
      do
      {
        if (v82)
        {
          v30 = sub_10000373C();
        }

        else
        {
          v30 = *(v84 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = sub_10000364C();
        v33 = sub_10000371C();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v86 = v36;
          *v34 = v76;
          *(v34 + 4) = sub_100002A58(0xD00000000000001CLL, v77 | 0x8000000000000000, &v86);
          *(v34 + 12) = 2112;
          *(v34 + 14) = v31;
          *v35 = v31;
          v37 = v31;
          _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s: item: %@", v34, 0x16u);
          sub_10000332C(v35, &qword_10000C220, &qword_100003B10);

          sub_100003210(v36);
          v28 = v80;
        }

        v38 = [v31 uniqueIdentifier];
        sub_10000367C();

        sub_10000357C();

        if ((v81->isa)(v19, 1, v20) == 1)
        {

          sub_10000332C(v19, &qword_10000C218, &qword_100003AF8);
        }

        else
        {
          (v74->isa)(v25, v19, v20);
          v39 = [v31 attributeSet];
          v40 = [v39 textContentSummary];

          if (v40)
          {
            v41 = sub_10000367C();
            v43 = v42;

            v44 = sub_10000364C();
            v45 = sub_10000371C();

            v46 = os_log_type_enabled(v44, v45);
            v75 = v41;
            if (v46)
            {
              v47 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              *v47 = v76;
              *(v47 + 4) = sub_100002A58(0xD00000000000001CLL, v77 | 0x8000000000000000, &v86);
              *(v47 + 12) = 2080;
              *(v47 + 14) = sub_100002A58(v41, v43, &v86);
              _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s: got summary: %s", v47, 0x16u);
              swift_arrayDestroy();
            }

            v20 = v66;
            (v65->isa)(v78, v25, v66);
            v48 = *v64;
            (*v64)(v79, 1, 1, v20);
            v48(v68, 1, 1, v20);
            v49 = sub_10000355C();
            (*(*(v49 - 8) + 56))(v70, 1, 1, v49);
            v50 = sub_10000356C();
            (*(*(v50 - 8) + 56))(v71, 1, 1, v50);
            v51 = v72;
            sub_10000362C();
            v52 = sub_10000363C();
            (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
            v48(v69, 1, 1, v20);
            v53 = objc_allocWithZone(sub_1000035AC());
            LOBYTE(v86) = 1;
            sub_10000359C();
            sub_1000036AC();
            if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1000036CC();
            }

            sub_1000036DC();

            v25 = v63;
            (v73->isa)(v63, v20);
            v75 = v87;
            v19 = v67;
            v28 = v80;
          }

          else
          {
            (v73->isa)(v25, v20);
          }
        }

        ++v29;
      }

      while (v28 != v29);
    }

    else
    {
      v75 = &_swiftEmptyArrayStorage;
    }

    v54 = sub_10000370C();
    v55 = v62;
    (*(*(v54 - 8) + 56))(v62, 1, 1, v54);
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    v57 = v75;
    v56[4] = v75;

    sub_1000024B8(0, 0, v55, &unk_100003B08, v56);

    [objc_opt_self() sleepForTimeInterval:5000000.0];

    v21 = sub_10000364C();
    LOBYTE(v27) = sub_10000371C();
    if (!os_log_type_enabled(v21, v27))
    {

      swift_bridgeObjectRelease_n();
      return;
    }

    v1 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v86 = v19;
    *v1 = 136446722;
    *(v1 + 4) = sub_100002A58(0xD00000000000001CLL, 0x8000000100003D10, &v86);
    *(v1 + 12) = 2050;
    if (v61)
    {
      v58 = sub_10000375C();
    }

    else
    {
      v58 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v1 + 14) = v58;

    *(v1 + 22) = 2048;
    if (!(v57 >> 62))
    {
      v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:

      *(v1 + 24) = v59;

      _os_log_impl(&_mh_execute_header, v21, v27, "%{public}s: Asked to handle %{public}ld updated items and found %ld updated messages", v1, 0x20u);
      sub_100003210(v19);

      return;
    }

LABEL_34:
    v59 = sub_10000375C();
    goto LABEL_30;
  }
}

uint64_t sub_10000222C()
{
  sub_1000035DC();
  v0[3] = sub_1000035CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000022DC;
  v2 = v0[2];

  return MessageStoreController.updateMessages(_:)(v2);
}

uint64_t sub_1000022DC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100002454;
  }

  else
  {
    v2 = sub_1000023F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000023F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002454()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000024B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003000(&qword_10000C1F8, &qword_100003AD8);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000032BC(a3, v22 - v9);
  v11 = sub_10000370C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000332C(v10, &qword_10000C1F8, &qword_100003AD8);
  }

  else
  {
    sub_1000036FC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000036EC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10000368C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000332C(a3, &qword_10000C1F8, &qword_100003AD8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000332C(a3, &qword_10000C1F8, &qword_100003AD8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_100002868()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MPSpotlightIndexExtensionHandler(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MPSpotlightIndexExtensionHandler(uint64_t a1)
{
  result = qword_10000C240;
  if (!qword_10000C240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002970(uint64_t a1, uint64_t a2)
{
  result = sub_10000366C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100002A0C()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_100002A58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002B24(v11, 0, 0, 1, a1, a2);
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
    sub_10000325C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003210(v11);
  return v7;
}

unint64_t sub_100002B24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002C30(a5, a6);
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
    result = sub_10000374C();
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

char *sub_100002C30(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002C7C(a1, a2);
  sub_100002DAC(&off_1000083B8);
  return v3;
}

char *sub_100002C7C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002E98(v5, 0);
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

  result = sub_10000374C();
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
        v10 = sub_10000369C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002E98(v10, 0);
        result = sub_10000372C();
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

uint64_t sub_100002DAC(uint64_t result)
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

  result = sub_100002F0C(result, v11, 1, v3);
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

void *sub_100002E98(uint64_t a1, uint64_t a2)
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

  sub_100003000(&qword_10000C228, &qword_100003B18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002F0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003000(&qword_10000C228, &qword_100003B18);
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

uint64_t sub_100003000(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003048()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003088()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000311C;

  return sub_10000220C(v3, v4, v5, v2);
}

uint64_t sub_10000311C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003210(void *a1)
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

uint64_t sub_10000325C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000032BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003000(&qword_10000C1F8, &qword_100003AD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000332C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003000(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_10000338C(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = sub_1000035FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR___MPSpotlightIndexExtensionHandler_featureFlags);
  result = [v10 callHistorySearchEnabled];
  if (result)
  {
    v12 = sub_10000364C();
    v13 = sub_10000371C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, a3, v14, 2u);
    }

    [objc_opt_self() setCallsNeedsDeferredReindexingForReason:4];
    if ([v10 voicemailSearchEnabled])
    {
      sub_10000361C();
      sub_1000035EC();
      sub_10000360C();
      (*(v7 + 8))(v9, v6);
    }

    return (*(a2 + 16))(a2);
  }

  return result;
}