void *sub_100017E6C(const char **a1)
{
  result = (*((swift_isaMask & *v1) + 0x128))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100017EF8()
{
  v1 = v0;
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100033274();
  v6 = sub_100033284();
  v7 = sub_100033EA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "ActivityPickerServiceViewController cleanupViewAndExtension", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  if (*&v1[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100033044();
    swift_unknownObjectRelease();
  }

  v9 = [v1 extensionContext];
  if (v9)
  {
    v10 = v9;
    isa = sub_100033DE4().super.isa;
    [v10 completeRequestReturningItems:isa completionHandler:0];
  }

  v12 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController];
  if (v12)
  {
    [v12 dismissViewControllerAnimated:0 completion:0];
  }

  return [v1 dismissViewControllerAnimated:0 completion:0];
}

id sub_100018154(uint64_t a1, ActivityPickerServiceViewController *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_100033D04();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

void sub_10001822C(uint64_t a1, const char *a2, ActivityPickerServiceViewController *a3, void *a4, ActivityPickerServiceViewController *a5, uint64_t a6, void *a7, void *a8)
{
  if (a3 != 1)
  {
    a3, a2, a3, a4, a5, a6, a7, a8;

    a5, v10, v11, v12, v13, v14, v15, v16;
  }
}

ActivityPickerServiceViewController *sub_100018274(ActivityPickerServiceViewController *result, int64_t a2, uint64_t a3, ActivityPickerServiceViewController *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tokenDecoder;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->hostingViewController;
  if (v11 <= v12)
  {
    v13 = *a4->hostingViewController;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100001A68(&qword_100045758, &unk_100035890);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->hostingViewController = v12;
    *v14->tokenDecoder = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  tokenEncoder = v14->tokenEncoder;
  v18 = a4->tokenEncoder;
  if (v9)
  {
    if (v14 != a4 || tokenEncoder >= &v18[16 * v12])
    {
      memmove(tokenEncoder, v18, 16 * v12);
    }

    *a4->hostingViewController = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

ActivityPickerServiceViewController *sub_100018380(ActivityPickerServiceViewController *result, int64_t a2, uint64_t a3, ActivityPickerServiceViewController *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tokenDecoder;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->hostingViewController;
  if (v11 <= v12)
  {
    v13 = *a4->hostingViewController;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100001A68(&qword_100045718, &qword_100035858);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->hostingViewController = v12;
    *v14->tokenDecoder = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  tokenEncoder = v14->tokenEncoder;
  v18 = a4->tokenEncoder;
  if (v9)
  {
    if (v14 != a4 || tokenEncoder >= &v18[16 * v12])
    {
      memmove(tokenEncoder, v18, 16 * v12);
    }

    *a4->hostingViewController = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_10001848C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1000185E4()
{
  v1 = v0;
  v2 = OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration;
  type metadata accessor for ActivityPickerViewConfiguration(0);
  *(v0 + v2) = sub_100012708();
  *(v0 + OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController) = 0;
  *(v0 + OBJC_IVAR___ActivityPickerServiceViewController_tokenDecoder) = 0;
  *(v0 + OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder) = 0;
  v3 = v0 + OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client;
  *v3 = 0u;
  *(v3 + 16) = 1;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0u;
  v4 = (v0 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR___ActivityPickerServiceViewController_connectionLock;
  *(v1 + v5) = [objc_allocWithZone(NSLock) init];
  sub_100034044();
  __break(1u);
}

uint64_t sub_1000186E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1000186FC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100018760(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000187B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100018808(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100033E64();
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100005AEC(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

uint64_t sub_1000188A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000188D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_1000189D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000189E8()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100018A34()
{
  result = qword_100045730;
  if (!qword_100045730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045730);
  }

  return result;
}

uint64_t sub_100018A80()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100018B04()
{
  result = qword_100045738;
  if (!qword_100045738)
  {
    sub_100033CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045738);
  }

  return result;
}

unint64_t sub_100018B5C()
{
  result = qword_100045748;
  if (!qword_100045748)
  {
    sub_100006924(&qword_100045740, &qword_100035878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045748);
  }

  return result;
}

uint64_t sub_100018BC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100018C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100018CCC()
{
  v1 = *(v0 + 8);

  return v1;
}

double sub_100018D04@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v16 = a3;
  v5 = sub_100033294();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 processIdentifier];
  [a1 auditToken];
  v10 = v17;
  v11 = v18[0];
  (*(v6 + 16))(v8, a2, v5);
  sub_100018EE8(v9, v10, *(&v10 + 1), v11, *(&v11 + 1), a1, v8, &v17);
  (*(v6 + 8))(a2, v5);
  v12 = v18[0];
  v13 = v16;
  *v16 = v17;
  v13[1] = v12;
  result = *(v18 + 9);
  *(v13 + 25) = *(v18 + 9);
  return result;
}

double sub_100018E6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  sub_100018EE8(a1, a2, a3, a4, a5, a6, a7, &v11);
  v9 = v12[0];
  *a8 = v11;
  a8[1] = v9;
  result = *(v12 + 9);
  *(a8 + 25) = *(v12 + 9);
  return result;
}

unint64_t sub_100018EAC(uint64_t a1)
{
  v2 = sub_10001939C();

  return sub_1000115BC(a1, v2);
}

void sub_100018EE8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *token.val = a2;
  *&token.val[2] = a3;
  *&token.val[4] = a4;
  *&token.val[6] = a5;
  v16 = SecTaskCreateWithAuditToken(0, &token);
  if (v16)
  {
    v17 = v16;
    v18 = sub_100006BA0();
    v31 = v19;
    v32 = v18;
    v33 = sub_100006D7C();
    *token.val = a2;
    *&token.val[2] = a3;
    *&token.val[4] = a4;
    *&token.val[6] = a5;
    v35 = 0;
    v24 = sub_100033254();
    v26 = v25;
    v27 = sub_100033294();
    (*(*(v27 - 8) + 8))(a7, v27);

    v28 = v33;
    v30 = v31;
    v29 = v32;
  }

  else
  {
    v20 = sub_100033284();
    v21 = sub_100033EB4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create SecTask from audit token", v22, 2u);
    }

    v23 = sub_100033294();
    (*(*(v23 - 8) + 8))(a7, v23);
    v28 = 0;
    v24 = 0;
    v26 = 0;
    v29 = 0;
    v30 = 0;
  }

  *a8 = a1;
  *(a8 + 8) = v29;
  *(a8 + 16) = v30;
  *(a8 + 24) = v24;
  *(a8 + 32) = v26;
  *(a8 + 40) = v28 & 1;
}

unint64_t sub_100019240(uint64_t a1)
{
  result = sub_100019268();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100019268()
{
  result = qword_100045760;
  if (!qword_100045760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045760);
  }

  return result;
}

__n128 sub_1000192BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000192D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10001932C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_10001939C()
{
  result = qword_100045768;
  if (!qword_100045768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045768);
  }

  return result;
}

uint64_t sub_100019440()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_1000194B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_100019500(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t sub_100019554(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

void (*sub_1000195C4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100002518;
}

uint64_t sub_100019674()
{
  swift_beginAccess();
  sub_100001A68(&qword_100045778, &qword_100035990);
  sub_1000332D4();
  return swift_endAccess();
}

uint64_t sub_1000196E8(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045780, &qword_100035998);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045778, &qword_100035990);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_100019820(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045780, &qword_100035998);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider__groups;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045778, &qword_100035990);
  sub_1000332D4();
  swift_endAccess();
  return sub_1000028CC;
}

uint64_t sub_1000199E0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100019A4C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100019AEC;
}

void sub_100019AEC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100019B74(uint64_t a1)
{
  v1 = a1;
  v2 = sub_100001A68(&qword_100045778, &qword_100035990);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider__groups;
  v9[1] = _swiftEmptyArrayStorage;
  sub_100001A68(&qword_100045770, &qword_100035940);
  sub_1000332C4();
  (*(v3 + 32))(v6 + v7, v5, v2);
  *(v6 + OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10001A084(v1);
  return v6;
}

uint64_t sub_100019CB8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100001A68(&qword_100045778, &qword_100035990);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider__groups;
  v9[1] = _swiftEmptyArrayStorage;
  sub_100001A68(&qword_100045770, &qword_100035940);
  sub_1000332C4();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10001A084(v2);
  return v1;
}

uint64_t sub_100019DE8()
{
  v1 = v0;
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100033274();
  v6 = sub_100033284();
  v7 = sub_100033EA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "ActivityProvider deinit", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider__groups;
  v10 = sub_100001A68(&qword_100045778, &qword_100035990);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  sub_10001BC8C(v1 + OBJC_IVAR____TtC23ActivityPickerExtension16ActivityProvider_selectionsDelegate);
  return v1;
}

uint64_t sub_100019F88()
{
  sub_100019DE8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100019FE0(uint64_t a1)
{
  v2 = a1;
  v3 = (*(*v1 + 192))();
  v5 = v4;
  v7 = v6;
  sub_10001A084(v2);
  v8 = *(*v1 + 200);

  return v8(v3, v5, v7);
}

uint64_t sub_10001A084(int a1)
{
  LODWORD(v567) = a1;
  v1 = sub_100033294();
  v565 = *(v1 - 8);
  v566 = v1;
  __chkstk_darwin(v1);
  v564 = &v552 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001A68(&qword_1000458D0, &unk_100035A68);
  __chkstk_darwin(v3 - 8);
  v5 = &v552 - v4;
  v6 = sub_100032F84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v552 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100033144();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v552 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100032FE4();
  swift_allocObject();
  v14 = sub_100032FD4();
  sub_100033124();
  sub_100033134();
  (*(v11 + 8))(v13, v10);
  v553 = v14;
  sub_100032FC4();
  v15 = 0;
  (*(v7 + 8))(v9, v6);
  v577 = &_swiftEmptyDictionarySingleton;
  v570 = v553;
  sub_100020170(&qword_1000458D8, &type metadata accessor for UsageStore, &protocol conformance descriptor for UsageStore);

  tokenEncoder = &v573;
  sub_100033DB4();
  v17 = sub_100020170(&qword_1000458E0, &type metadata accessor for UsageStore, &protocol conformance descriptor for UsageStore);
  sub_100033E74();
  if ((v576 & 1) == 0)
  {
    v18 = v571;
    v19 = v574;
    while ((v572 & 1) == 0)
    {
      if (v575 != v18)
      {
        goto LABEL_222;
      }

      if (v19 == v570)
      {
        goto LABEL_8;
      }

      v20 = sub_100033E94();
      sub_10001FF88(v21, v5);
      v20(&v570, 0);
      sub_100033E84();
      sub_10001BCB4(&v577, v5);
      sub_10001FFF8(v5);
      sub_100033E74();
      v19 = v574;
      v18 = v571;
      if (v576)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_8:
  v566 = 0;

  v562 = v577;
  v22 = [objc_opt_self() sharedCategories];
  v23 = sub_10000AFB8();

  v31 = *v23->hostingViewController;
  if (v31)
  {
    v32 = 0;
    tokenEncoder = v23->tokenEncoder;
    do
    {
      if (v32 >= *v23->hostingViewController)
      {
        goto LABEL_223;
      }

      v42 = *(tokenEncoder + 8 * v32);
      v43 = sub_100033D34();
      v45 = v44;
      v46 = v562;
      v15 = *v562->hostingViewController;
      v17 = v42;
      if (v15)
      {
        sub_10001E180(v43, v45);
        if (v47)
        {
          v45, v47, v48, v49, v50, v51, v52, v53;

          goto LABEL_11;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v570 = v46;
      v55 = sub_10001E180(v43, v45);
      v63 = *v46->hostingViewController;
      v64 = (v56 & 1) == 0;
      v65 = __OFADD__(v63, v64);
      v66 = v63 + v64;
      if (v65)
      {
        goto LABEL_230;
      }

      v15 = v56;
      if (*v46->tokenDecoder >= v66)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = v55;
          sub_10001F8E0();
          v55 = v71;
          if ((v15 & 1) == 0)
          {
LABEL_22:
            v67 = v570;
            *(v570 + 8 * (v55 >> 6) + 64) |= 1 << v55;
            v68 = (*(v67 + 48) + 16 * v55);
            *v68 = v43;
            v68[1] = v45;
            *(*(v67 + 56) + 8 * v55) = _swiftEmptyArrayStorage;

            v69 = *(v67 + 16);
            v65 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v65)
            {
              goto LABEL_232;
            }

            v562 = v67;
            *(v67 + 16) = v70;
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }

      else
      {
        sub_10001F580(v66, isUniquelyReferenced_nonNull_native);
        v55 = sub_10001E180(v43, v45);
        if ((v15 & 1) != (v56 & 1))
        {
LABEL_238:
          sub_1000340F4();
          __break(1u);
          goto LABEL_239;
        }
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_10:
      v15 = v55;
      v45, v56, v57, v58, v59, v60, v61, v62;
      v562 = v570;
      v33 = *(v570 + 56);
      v34 = *(v33 + 8 * v15);
      *(v33 + 8 * v15) = _swiftEmptyArrayStorage;

      v34, v35, v36, v37, v38, v39, v40, v41;
LABEL_11:
      ++v32;
    }

    while (v31 != v32);
  }

  v23, v24, v25, v26, v27, v28, v29, v30;
  tokenEncoder = v566;
  sub_10001C390(v562, v567 & 1);
  v15 = v72;
  v17 = _swiftEmptyArrayStorage;
  v577 = _swiftEmptyArrayStorage;
  if (v72 >> 62)
  {
    goto LABEL_235;
  }

  v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v563 = tokenEncoder;
  v566 = v73;
  v567 = v15;
  if (!v73)
  {
    v216 = _swiftEmptyArrayStorage;
    v215 = _swiftEmptyArrayStorage;
    goto LABEL_73;
  }

  v74 = 0;
  v564 = (v15 & 0xFFFFFFFFFFFFFF8);
  v565 = v15 & 0xC000000000000001;
  while (v565)
  {
    v77 = sub_100033FC4();
    tokenEncoder = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_49;
    }

LABEL_35:
    v78 = sub_100009FE4();
    v73 = *(*v77 + 112);
    v17 = *v78;
    v79 = *(v73(v17) + 16);

    v569 = v79;
    v568 = 1;
    sub_100006698();
    sub_100033DC4();
    sub_100033DC4();
    v86 = v571;
    v87 = v574;
    if (v570 == v573 && v571 == v574)
    {
      v571, v80, v573, v81, v82, v83, v84, v85;
      v87, v88, v89, v90, v91, v92, v93, v94;
    }

    else
    {
      v96 = sub_1000340D4();
      v86, v97, v98, v99, v100, v101, v102, v103;
      v87, v104, v105, v106, v107, v108, v109, v110;
      if ((v96 & 1) == 0)
      {

        v75 = v566;
        v15 = v567;
        goto LABEL_31;
      }
    }

    v111 = v73(v95);
    v113 = *(v111 + 24);
    v112 = *(v111 + 32);

    v114 = sub_100033D34();
    v122 = v115;
    if (v113 == v114 && v112 == v115)
    {
      v112, v115, v116, v117, v118, v119, v120, v121;
      v122, v139, v140, v141, v142, v143, v144, v145;

      v75 = v566;
      v15 = v567;
LABEL_46:
      sub_100033FF4();
      v17 = *v577->hostingViewController;
      sub_100034024();
      sub_100034034();
      sub_100034004();
      goto LABEL_31;
    }

    v124 = sub_1000340D4();
    v112, v125, v126, v127, v128, v129, v130, v131;
    v122, v132, v133, v134, v135, v136, v137, v138;

    v75 = v566;
    v15 = v567;
    if (v124)
    {
      goto LABEL_46;
    }

LABEL_31:
    ++v74;
    v76 = _swiftEmptyArrayStorage;
    if (tokenEncoder == v75)
    {
      goto LABEL_50;
    }
  }

  if (v74 >= *(v564 + 2))
  {
    goto LABEL_224;
  }

  v77 = *(v15 + 8 * v74 + 32);

  tokenEncoder = v74 + 1;
  if (!__OFADD__(v74, 1))
  {
    goto LABEL_35;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  v146 = 0;
  v559 = v577;
  v577 = v76;
  v560 = CTCategoryIdentifierSocialNetworking;
  while (2)
  {
    if (v565)
    {
      v147 = sub_100033FC4();
      v17 = v147;
      v148 = (v146 + 1);
      if (__OFADD__(v146, 1))
      {
        goto LABEL_70;
      }

LABEL_56:
      v149 = *(*v17 + 112);
      v150 = *(v149(v147) + 16);

      v569 = v150;
      v568 = 1;
      sub_100033DC4();
      sub_100033DC4();
      v157 = v571;
      v158 = v574;
      if (v570 == v573 && v571 == v574)
      {
        v571, v151, v573, v152, v153, v154, v155, v156;
        v158, v159, v160, v161, v162, v163, v164, v165;
      }

      else
      {
        tokenEncoder = sub_1000340D4();
        v157, v167, v168, v169, v170, v171, v172, v173;
        v158, v174, v175, v176, v177, v178, v179, v180;
        if ((tokenEncoder & 1) == 0)
        {

          v73 = v566;
          v15 = v567;
          goto LABEL_52;
        }
      }

      v181 = v149(v166);
      v183 = *(v181 + 24);
      v182 = *(v181 + 32);

      v184 = sub_100033D34();
      v192 = v185;
      if (v183 == v184 && v182 == v185)
      {
        v182, v185, v186, v187, v188, v189, v190, v191;
        v192, v208, v209, v210, v211, v212, v213, v214;
        v73 = v566;
        v15 = v567;
      }

      else
      {
        tokenEncoder = sub_1000340D4();
        v182, v194, v195, v196, v197, v198, v199, v200;
        v192, v201, v202, v203, v204, v205, v206, v207;
        v73 = v566;
        v15 = v567;
        if ((tokenEncoder & 1) == 0)
        {

          goto LABEL_52;
        }
      }

      sub_100033FF4();
      tokenEncoder = *v577->hostingViewController;
      sub_100034024();
      sub_100034034();
      sub_100034004();
LABEL_52:
      ++v146;
      v17 = _swiftEmptyArrayStorage;
      if (v148 == v73)
      {
        goto LABEL_71;
      }

      continue;
    }

    break;
  }

  if (v146 >= *(v564 + 2))
  {
    goto LABEL_225;
  }

  v17 = *(v15 + 8 * v146 + 32);

  v148 = (v146 + 1);
  if (!__OFADD__(v146, 1))
  {
    goto LABEL_56;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v215 = v577;
  tokenEncoder = v563;
  v216 = v559;
LABEL_73:
  v570 = v216;
  sub_10001E1F8(v215);
  v217 = v570;
  v577 = v17;
  if (!v73)
  {
    v288 = v17;
    goto LABEL_97;
  }

  v560 = v570;
  v218 = 0;
  v565 = v15 & 0xC000000000000001;
  v219 = v15 & 0xFFFFFFFFFFFFFF8;
  v564 = CTCategoryIdentifierGames;
  while (2)
  {
    if (v565)
    {
      v221 = sub_100033FC4();
      v220 = v221;
      v222 = (v218 + 1);
      if (__OFADD__(v218, 1))
      {
        goto LABEL_94;
      }

LABEL_80:
      v223 = *(*v220 + 112);
      v224 = *(v223(v221) + 16);

      v569 = v224;
      v568 = 1;
      sub_100006698();
      sub_100033DC4();
      sub_100033DC4();
      v231 = v571;
      v232 = v574;
      if (v570 == v573 && v571 == v574)
      {
        v571, v225, v573, v226, v227, v228, v229, v230;
        v232, v233, v234, v235, v236, v237, v238, v239;
      }

      else
      {
        tokenEncoder = sub_1000340D4();
        v231, v241, v242, v243, v244, v245, v246, v247;
        v232, v248, v249, v250, v251, v252, v253, v254;
        if ((tokenEncoder & 1) == 0)
        {

          v73 = v566;
          v15 = v567;
          goto LABEL_76;
        }
      }

      v255 = v223(v240);
      tokenEncoder = *(v255 + 24);
      v256 = *(v255 + 32);

      v257 = sub_100033D34();
      v265 = v258;
      if (tokenEncoder == v257 && v256 == v258)
      {
        v256, v258, v259, v260, v261, v262, v263, v264;
        v265, v281, v282, v283, v284, v285, v286, v287;
        v73 = v566;
        v15 = v567;
      }

      else
      {
        tokenEncoder = sub_1000340D4();
        v256, v267, v268, v269, v270, v271, v272, v273;
        v265, v274, v275, v276, v277, v278, v279, v280;
        v73 = v566;
        v15 = v567;
        if ((tokenEncoder & 1) == 0)
        {

          goto LABEL_76;
        }
      }

      sub_100033FF4();
      sub_100034024();
      sub_100034034();
      sub_100034004();
LABEL_76:
      ++v218;
      v17 = _swiftEmptyArrayStorage;
      if (v222 == v73)
      {
        goto LABEL_95;
      }

      continue;
    }

    break;
  }

  if (v218 >= *(v219 + 16))
  {
    goto LABEL_226;
  }

  v220 = *(v15 + 8 * v218 + 32);

  v222 = (v218 + 1);
  if (!__OFADD__(v218, 1))
  {
    goto LABEL_80;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  v288 = v577;
  tokenEncoder = v563;
  v217 = v560;
LABEL_97:
  v570 = v217;
  sub_10001E1F8(v288);
  v289 = v570;
  v577 = v17;
  if (!v73)
  {
    v360 = v17;
    goto LABEL_121;
  }

  v560 = v570;
  v290 = 0;
  v565 = v15 & 0xC000000000000001;
  v291 = v15 & 0xFFFFFFFFFFFFFF8;
  v564 = CTCategoryIdentifierEntertainment;
  while (2)
  {
    if (v565)
    {
      v293 = sub_100033FC4();
      v292 = v293;
      v294 = (v290 + 1);
      if (__OFADD__(v290, 1))
      {
        goto LABEL_118;
      }

LABEL_104:
      v295 = *(*v292 + 112);
      v296 = *(v295(v293) + 16);

      v569 = v296;
      v568 = 1;
      sub_100006698();
      sub_100033DC4();
      sub_100033DC4();
      v303 = v571;
      v304 = v574;
      if (v570 == v573 && v571 == v574)
      {
        v571, v297, v573, v298, v299, v300, v301, v302;
        v304, v305, v306, v307, v308, v309, v310, v311;
      }

      else
      {
        tokenEncoder = sub_1000340D4();
        v303, v313, v314, v315, v316, v317, v318, v319;
        v304, v320, v321, v322, v323, v324, v325, v326;
        if ((tokenEncoder & 1) == 0)
        {

          v73 = v566;
          v15 = v567;
          goto LABEL_100;
        }
      }

      v327 = v295(v312);
      tokenEncoder = *(v327 + 24);
      v328 = *(v327 + 32);

      v329 = sub_100033D34();
      v337 = v330;
      if (tokenEncoder == v329 && v328 == v330)
      {
        v328, v330, v331, v332, v333, v334, v335, v336;
        v337, v353, v354, v355, v356, v357, v358, v359;
        v73 = v566;
        v15 = v567;
      }

      else
      {
        tokenEncoder = sub_1000340D4();
        v328, v339, v340, v341, v342, v343, v344, v345;
        v337, v346, v347, v348, v349, v350, v351, v352;
        v73 = v566;
        v15 = v567;
        if ((tokenEncoder & 1) == 0)
        {

          goto LABEL_100;
        }
      }

      sub_100033FF4();
      sub_100034024();
      sub_100034034();
      sub_100034004();
LABEL_100:
      ++v290;
      v17 = _swiftEmptyArrayStorage;
      if (v294 == v73)
      {
        goto LABEL_119;
      }

      continue;
    }

    break;
  }

  if (v290 >= *(v291 + 16))
  {
    goto LABEL_227;
  }

  v292 = *(v15 + 8 * v290 + 32);

  v294 = (v290 + 1);
  if (!__OFADD__(v290, 1))
  {
    goto LABEL_104;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  v360 = v577;
  tokenEncoder = v563;
  v289 = v560;
LABEL_121:
  v570 = v289;
  sub_10001E1F8(v360);
  v565 = v570;
  v577 = v17;
  if (!v73)
  {
    v567 = v17;
    goto LABEL_158;
  }

  v368 = 0;
  v369 = v15 & 0xC000000000000001;
  v370 = v15 & 0xFFFFFFFFFFFFFF8;
  v564 = CTCategoryIdentifierOther;
  while (2)
  {
    if (v369)
    {
      v372 = sub_100033FC4();
      v17 = v372;
      v373 = (v368 + 1);
      if (__OFADD__(v368, 1))
      {
        goto LABEL_142;
      }

LABEL_128:
      v374 = *(*v17 + 112);
      v375 = *(v374(v372) + 16);

      v569 = v375;
      v568 = 1;
      sub_100006698();
      sub_100033DC4();
      sub_100033DC4();
      v382 = v571;
      v383 = v574;
      if (v570 == v573 && v571 == v574)
      {
        v571, v376, v573, v377, v378, v379, v380, v381;
        v383, v384, v385, v386, v387, v388, v389, v390;
      }

      else
      {
        tokenEncoder = sub_1000340D4();
        v382, v392, v393, v394, v395, v396, v397, v398;
        v383, v399, v400, v401, v402, v403, v404, v405;
        if ((tokenEncoder & 1) == 0)
        {

          v73 = v566;
          v15 = v567;
          goto LABEL_124;
        }
      }

      v406 = v374(v391);
      v408 = *(v406 + 24);
      v407 = *(v406 + 32);

      v409 = sub_100033D34();
      v417 = v410;
      if (v408 == v409 && v407 == v410)
      {
        v407, v410, v411, v412, v413, v414, v415, v416;
        v417, v433, v434, v435, v436, v437, v438, v439;
        v73 = v566;
        v15 = v567;
      }

      else
      {
        tokenEncoder = sub_1000340D4();
        v407, v419, v420, v421, v422, v423, v424, v425;
        v417, v426, v427, v428, v429, v430, v431, v432;
        v73 = v566;
        v15 = v567;
        if ((tokenEncoder & 1) == 0)
        {

          goto LABEL_124;
        }
      }

      sub_100033FF4();
      tokenEncoder = *v577->hostingViewController;
      sub_100034024();
      sub_100034034();
      sub_100034004();
LABEL_124:
      ++v368;
      v371 = _swiftEmptyArrayStorage;
      if (v373 == v73)
      {
        goto LABEL_143;
      }

      continue;
    }

    break;
  }

  if (v368 >= *(v370 + 16))
  {
    goto LABEL_228;
  }

  v17 = *(v15 + 8 * v368 + 32);

  v373 = (v368 + 1);
  if (!__OFADD__(v368, 1))
  {
    goto LABEL_128;
  }

LABEL_142:
  __break(1u);
LABEL_143:
  v17 = 0;
  v567 = v577;
  v570 = v371;
  while (2)
  {
    if (v369)
    {
      v441 = sub_100033FC4();
      v440 = v441;
      v442 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_155;
      }

LABEL_149:
      v573 = v440;
      __chkstk_darwin(v441);
      *(&v552 - 2) = &v573;
      tokenEncoder = v563;
      v443 = sub_10001FA50(sub_1000200FC, (&v552 - 4), v565);
      if (v443)
      {
        v563 = tokenEncoder;
      }

      else
      {
        v573 = v440;
        __chkstk_darwin(v443);
        *(&v552 - 2) = &v573;
        v444 = sub_10001FA50(sub_1000201B8, (&v552 - 4), v567);
        v563 = tokenEncoder;
        if ((v444 & 1) == 0)
        {
          sub_100033FF4();
          tokenEncoder = *(v570 + 16);
          sub_100034024();
          sub_100034034();
          sub_100034004();
          goto LABEL_145;
        }
      }

LABEL_145:
      ++v17;
      if (v442 == v73)
      {
        goto LABEL_156;
      }

      continue;
    }

    break;
  }

  if (v17 >= *(v370 + 16))
  {
    goto LABEL_229;
  }

  v440 = *(v15 + 8 * v17 + 32);

  v442 = (v17 + 1);
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_149;
  }

LABEL_155:
  __break(1u);
LABEL_156:
  tokenEncoder = v563;
LABEL_158:
  v15, v361, v362, v363, v364, v365, v366, v367;

  v570 = sub_10001FB8C(v445, sub_10001FC28);
  sub_10001E2E8(&v570, sub_1000201D8, type metadata accessor for ActivityGroup, sub_10001E6B0, sub_10001E4B8);
  v559 = tokenEncoder;
  if (tokenEncoder)
  {
LABEL_239:

    __break(1u);
    return result;
  }

  v446 = v570;
  v570 = v565;
  sub_10001E1F8(v446);
  sub_10001E1F8(v567);
  v454 = v570;
  v570 = _swiftEmptyArrayStorage;
  tokenEncoder = v561;
  if (v454 >> 62)
  {
    v455 = sub_100034054();
  }

  else
  {
    v455 = *((v454 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v552 = tokenEncoder & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  if (v455)
  {
    v17 = 0;
    v456 = (*tokenEncoder + 96);
    v563 = *v456;
    v560 = v456;
    v558 = v454 & 0xC000000000000001;
    v555 = v454 & 0xFFFFFFFFFFFFFF8;
    v554 = (v454 + 32);
    v556 = v455;
    v557 = v454;
    while (2)
    {
      if (v558)
      {
        v464 = sub_100033FC4();
        v465 = v464;
        v65 = __OFADD__(v17++, 1);
        if (v65)
        {
          goto LABEL_231;
        }
      }

      else
      {
        if (v17 >= *(v555 + 16))
        {
          goto LABEL_234;
        }

        v465 = *&v554[8 * v17];

        v65 = __OFADD__(v17++, 1);
        if (v65)
        {
          goto LABEL_231;
        }
      }

      v564 = v17;
      v466 = (v563)(v464);
      tokenEncoder = v466;
      v565 = v466 & 0xFFFFFFFFFFFFFF8;
      if (v466 >> 62)
      {
        v474 = sub_100034054();
      }

      else
      {
        v474 = *((v466 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v566 = tokenEncoder & 0xC000000000000001;
      v567 = -v474;
      v475 = 4;
      while (1)
      {
        if (v567 + v475 == 4)
        {
          tokenEncoder, v467, v468, v469, v470, v471, v472, v473;

          sub_100033DD4();
          if (*((v570 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v570 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100033E14();
          }

          sub_100033E34();

          tokenEncoder = v561;
          v17 = v564;
          goto LABEL_164;
        }

        v476 = v475 - 4;
        if (v566)
        {
          v477 = sub_100033FC4();
          v15 = v477;
        }

        else
        {
          if (v476 >= *(v565 + 16))
          {
            goto LABEL_220;
          }

          v15 = *(tokenEncoder + 8 * v475);
        }

        v478 = (*(*v15 + 112))(v477);
        v479 = *(v478 + 24);
        v480 = *(v478 + 32);

        v17 = v465;
        v482 = (*(*v465 + 112))(v481);
        v484 = *(v482 + 24);
        v483 = *(v482 + 32);

        if (v479 == v484 && v480 == v483)
        {
          tokenEncoder, v485, v486, v487, v488, v489, v490, v491;

          v480, v508, v509, v510, v511, v512, v513, v514;
          goto LABEL_192;
        }

        v493 = sub_1000340D4();

        v480, v494, v495, v496, v497, v498, v499, v500;
        v483, v501, v502, v503, v504, v505, v506, v507;
        if (v493)
        {
          break;
        }

        ++v475;
        v465 = v17;
        if (__OFADD__(v476, 1))
        {
          goto LABEL_221;
        }
      }

      v483 = tokenEncoder;
LABEL_192:
      v483, v467, v468, v469, v470, v471, v472, v473;
      v516 = (v563)(v515);
      v517 = v516;
      tokenEncoder = _swiftEmptyArrayStorage;
      if ((v516 & 0xC000000000000001) != 0)
      {
        v15 = sub_100033FC4();
      }

      else
      {
        if (v476 >= *((v516 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_233;
        }

        v15 = *(v516 + 8 * v475);
      }

      v517, v518, v519, v520, v521, v522, v523, v524;
      v526 = (*(*v17 + 160))(v525);
      v534 = v526;
      v573 = _swiftEmptyArrayStorage;
      if (v526 >> 62)
      {
        v535 = sub_100034054();
        if (v535)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v535 = *((v526 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v535)
        {
LABEL_197:
          v566 = v15;
          v15 = 0;
          v567 = v534 & 0xC000000000000001;
          while (1)
          {
            if (v567)
            {
              v536 = sub_100033FC4();
              v537 = (v15 + 1);
              if (__OFADD__(v15, 1))
              {
                goto LABEL_218;
              }
            }

            else
            {
              if (v15 >= *((v534 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_219;
              }

              v536 = *(v534 + 8 * v15 + 32);

              v537 = (v15 + 1);
              if (__OFADD__(v15, 1))
              {
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
LABEL_231:
                __break(1u);
LABEL_232:
                __break(1u);
LABEL_233:
                __break(1u);
LABEL_234:
                __break(1u);
LABEL_235:
                v73 = sub_100034054();
                goto LABEL_28;
              }
            }

            tokenEncoder = v535;
            v538 = *(*v536 + 240);

            v540 = v538(v539);

            if (v540)
            {
              sub_100033FF4();
              sub_100034024();
              sub_100034034();
              sub_100034004();
            }

            else
            {
            }

            v535 = tokenEncoder;
            ++v15;
            if (v537 == tokenEncoder)
            {
              v15 = v566;
              break;
            }
          }
        }
      }

      v534, v527, v528, v529, v530, v531, v532, v533;

      v573 = sub_10001FB8C(v541, sub_100006444);
      v542 = v559;
      sub_10001E2E8(&v573, sub_100006B84, type metadata accessor for ActivityItem, sub_100004E54, sub_100004CC8);
      v559 = v542;
      if (v542)
      {

        __break(1u);
        goto LABEL_238;
      }

      (*(*v15 + 168))(v573);

      sub_100033DD4();
      tokenEncoder = v561;
      v17 = v564;
      if (*((v570 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v570 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100033E14();
        v17 = v564;
      }

      sub_100033E34();

LABEL_164:
      if (v17 != v556)
      {
        continue;
      }

      break;
    }

    v543 = v570;
    v557, v457, v458, v459, v460, v461, v462, v463;
  }

  else
  {
    v454, v447, v448, v449, v450, v451, v452, v453;
    v543 = _swiftEmptyArrayStorage;
  }

  (*(*tokenEncoder + 104))(v543);
  v562, v544, v545, v546, v547, v548, v549, v550;
}

unint64_t sub_10001BCB4(void *a1, uint64_t a2)
{
  v107 = a1;
  v3 = sub_100033294();
  v105 = *(v3 - 8);
  v106 = v3;
  __chkstk_darwin(v3);
  v104 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000330A4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v103 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v100 - v10;
  __chkstk_darwin(v9);
  v13 = &v100 - v12;
  v14 = sub_100001A68(&qword_1000458D0, &unk_100035A68);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = (&v100 - v16);
  v18 = sub_1000330E4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FF88(a2, v17);
  v17[1], v22, v23, v24, v25, v26, v27, v28;
  v29 = *(v15 + 56);
  v108 = v19;
  v109 = v18;
  v30 = v19;
  v31 = v13;
  (*(v30 + 32))(v21, v17 + v29, v18);
  sub_1000330C4();
  v32 = sub_1000330B4();
  v34 = v33;
  v35 = v6[2];
  v35(v11, v13, v5);
  v36 = v6[11];
  v110 = v5;
  v37 = v36(v11, v5);
  if (v37 == enum case for UsageItemRecord.UsageType.application(_:))
  {
    v45 = 0;
  }

  else
  {
    if (v37 != enum case for UsageItemRecord.UsageType.webDomain(_:))
    {
      v34, v38, v39, v40, v41, v42, v43, v44;
      v79 = v104;
      sub_100033274();
      v80 = v103;
      v35(v103, v31, v110);
      v81 = sub_100033284();
      v82 = sub_100033EB4();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v111 = v107;
        *v83 = 136446210;
        v102 = v81;
        v100 = sub_100033094();
        v85 = v84;
        v86 = v6[1];
        v101 = v82;
        v86(v80, v110);
        v87 = sub_1000045A0(v100, v85, &v111);
        v85, v88, v89, v90, v91, v92, v93, v94;
        v95 = v83;
        *(v83 + 4) = v87;
        v96 = v102;
        _os_log_impl(&_mh_execute_header, v102, v101, "Unknown usage item type: %{public}s", v95, 0xCu);
        sub_100006A74(v107);

        (*(v105 + 8))(v79, v106);
        v97 = v31;
        v98 = v110;
      }

      else
      {

        v86 = v6[1];
        v98 = v110;
        v86(v80, v110);
        (*(v105 + 8))(v79, v106);
        v97 = v31;
      }

      v86(v97, v98);
      (*(v108 + 8))(v21, v109);
      return (v86)(v11, v98);
    }

    v45 = 2;
  }

  v46 = type metadata accessor for ActivityItem(0);
  (*(v46 + 448))(v45, v32, v34);
  v34, v47, v48, v49, v50, v51, v52, v53;
  v54 = sub_1000330D4();
  v56 = v55;
  v57 = v107;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v57;
  v59 = v111;
  result = sub_10001E180(v54, v56);
  v68 = *(v59 + 16);
  v69 = (v61 & 1) == 0;
  v70 = __OFADD__(v68, v69);
  v71 = v68 + v69;
  if (v70)
  {
    __break(1u);
    goto LABEL_22;
  }

  v72 = v61;
  if (*(v59 + 24) >= v71)
  {
    goto LABEL_9;
  }

  sub_10001F580(v71, isUniquelyReferenced_nonNull_native);
  result = sub_10001E180(v54, v56);
  if ((v72 & 1) != (v61 & 1))
  {
    result = sub_1000340F4();
    __break(1u);
LABEL_9:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v99 = result;
      sub_10001F8E0();
      result = v99;
    }
  }

  v73 = v111;
  *v57 = v111;
  if (v72)
  {
    v74 = result;
    v56, v61, v62, v63, v64, v65, v66, v67;
    result = v74;
    goto LABEL_15;
  }

  v73[(result >> 6) + 8] |= 1 << result;
  v75 = (v73[6] + 16 * result);
  *v75 = v54;
  v75[1] = v56;
  *(v73[7] + 8 * result) = _swiftEmptyArrayStorage;
  v76 = v73[2];
  v70 = __OFADD__(v76, 1);
  v77 = v76 + 1;
  if (!v70)
  {
    v73[2] = v77;
LABEL_15:
    v78 = (v73[7] + 8 * result);

    sub_100033DD4();
    v56 = v110;
    if (*((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_16:
      sub_100033E34();

      (v6[1])(v31, v56);
      return (*(v108 + 8))(v21, v109);
    }

LABEL_22:
    sub_100033E14();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10001C390(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100034014();
    v3 = a1;
    v4 = a1 + 64;
    v5 = sub_100033F74();
    v6 = *(a1 + 36);
    v28 = v2;
    type metadata accessor for ActivityGroup(0);
    v7 = 0;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v3 + 36))
      {
        goto LABEL_22;
      }

      v10 = v4;
      v11 = *(v3 + 56);
      v12 = (*(v3 + 48) + 16 * v5);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v11 + 8 * v5);

      sub_100002A44(v14, v13, v15, a2 & 1);
      sub_100033FF4();
      sub_100034024();
      sub_100034034();
      sub_100034004();
      v3 = a1;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v21 = *(v10 + 8 * v9);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v4 = v10;
      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (a1 + 72 + 8 * v9);
        while (v24 < (v8 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_100020060(v5, v6, 0, v16, v17, v18, v19, v20);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_18;
          }
        }

        sub_100020060(v5, v6, 0, v16, v17, v18, v19, v20);
LABEL_18:
        v3 = a1;
      }

      ++v7;
      v5 = v8;
      if (v7 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_10001C5F4(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 112);
  v2();

  sub_100006698();
  sub_100033DC4();
  sub_100033DC4();
  if (v54 == v53)
  {
    *(&v54 + 1), v3, v53, v4, v5, v6, v7, v8;
    *(&v53 + 1), v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v16 = sub_1000340D4();
    *(&v54 + 1), v17, v18, v19, v20, v21, v22, v23;
    *(&v53 + 1), v24, v25, v26, v27, v28, v29, v30;
    v31 = 0;
    if ((v16 & 1) == 0)
    {
      return v31 & 1;
    }
  }

  v32 = v2();
  v34 = *(v32 + 24);
  v33 = *(v32 + 32);

  v35 = sub_100033D34();
  v43 = v36;
  if (v34 == v35 && v33 == v36)
  {
    v31 = 1;
  }

  else
  {
    v31 = sub_1000340D4();
  }

  v33, v36, v37, v38, v39, v40, v41, v42;
  v43, v45, v46, v47, v48, v49, v50, v51;
  return v31 & 1;
}

void *sub_10001C77C()
{
  v1 = (*(*v0 + 96))();
  sub_10001C908(v1);
  v1, v2, v3, v4, v5, v6, v7, v8;
  return &_swiftEmptySetSingleton;
}

void sub_10001C804(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100005AEC(v20, v11, v12);
      v20[1], v13, v14, v15, v16, v17, v18, v19;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

unint64_t sub_10001C908(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100033FC4();
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        v6 = (*(*v4 + 272))();
        v8 = v7;
        v10 = v9;

        sub_10001C804(v11);
        sub_10001C804(v8);
        v6, v12, v13, v14, v15, v16, v17, v18;
        sub_10001C804(v10);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_100034054();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10001CA68(ActivityPickerServiceViewController *a1, ActivityPickerServiceViewController *a2, ActivityPickerServiceViewController *a3)
{
  v7 = (*(*v3 + 96))();
  v15 = v7;
  if (v7 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100034054())
  {
    v17 = 0;
    while ((v15 & 0xC000000000000001) != 0)
    {
      v18 = sub_100033FC4();
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v20 = *(*v18 + 280);

      v20(a1, a2, a3);

      ++v17;
      if (v19 == i)
      {
        goto LABEL_14;
      }
    }

    if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v18 = *(v15 + 8 * v17 + 32);

    v19 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  a3, v8, v9, v10, v11, v12, v13, v14;
  a2, v21, v22, v23, v24, v25, v26, v27;
  a1, v28, v29, v30, v31, v32, v33, v34;
  v15, v35, v36, v37, v38, v39, v40, v41;
  result = (*(*v46 + 144))();
  if (result)
  {
    v44 = v43;
    ObjectType = swift_getObjectType();
    (*(v44 + 8))(ObjectType, v44);

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_10001CC7C(void *a1))(ActivityPickerServiceViewController **a1, char a2)
{
  a1[3] = v1;
  v3 = (*(*v1 + 96))();
  sub_10001C908(v3);
  v3, v4, v5, v6, v7, v8, v9, v10;
  *a1 = &_swiftEmptySetSingleton;
  a1[1] = &_swiftEmptySetSingleton;
  a1[2] = &_swiftEmptySetSingleton;
  return sub_10001CD30;
}

void sub_10001CD30(ActivityPickerServiceViewController **a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    sub_10001CA68(v3, v2, v4);
    v3, v5, v6, v7, v8, v9, v10, v11;
    v2, v12, v13, v14, v15, v16, v17, v18;

    v4, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    sub_10001CA68(*a1, v2, v4);
  }
}

uint64_t sub_10001CDCC()
{
  v1 = (*(*v0 + 96))();
  v9 = v1;
  if (v1 >> 62)
  {
LABEL_15:
    v10 = sub_100034054();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = sub_100033FC4();
          v20 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v9, v13, v14, v15, v16, v17, v18, v19;
            return v12;
          }
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v12 = *(v9 + 8 * v11 + 32);

          v20 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_12;
          }
        }

        v21 = (*(*v12 + 112))();
        v22 = (*(*v21 + 488))(v21);

        if (v22)
        {
          goto LABEL_13;
        }

        ++v11;
      }

      while (v20 != v10);
    }
  }

  v9, v2, v3, v4, v5, v6, v7, v8;
  result = sub_100034044();
  __break(1u);
  return result;
}

uint64_t sub_10001CF98(char a1)
{
  v3 = (*(*v1 + 96))();
  v55 = v3;
  v54 = v1;
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      v12 = 0;
      while (1)
      {
        if ((v55 & 0xC000000000000001) != 0)
        {
          v13 = sub_100033FC4();
          v14 = __OFADD__(v12++, 1);
          if (v14)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v12 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v13 = *(v55 + 32 + 8 * v12);

          v14 = __OFADD__(v12++, 1);
          if (v14)
          {
            goto LABEL_25;
          }
        }

        v15 = *(*v13 + 112);
        v16 = v15();
        v17 = (*(*v16 + 488))(v16);

        if ((v17 & 1) == 0)
        {
          break;
        }

LABEL_4:

        if (v12 == v11)
        {
          goto LABEL_28;
        }
      }

      v19 = (v15)(v18);
      (*(*v19 + 392))(a1 & 1);

      v20 = (*(*v13 + 216))(a1 & 1, 1);
      v21 = *(*v13 + 160);
      v22 = (v21)(v20);
      if (!(v22 >> 62))
      {
        break;
      }

      v42 = v22;
      v30 = sub_100034054();
      v42, v43, v44, v45, v46, v47, v48, v49;
      if ((v30 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v11 = sub_100034054();
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22, v23, v24, v25, v26, v27, v28, v29;
LABEL_14:
    if (v30)
    {
      v31 = 0;
      do
      {
        v32 = v21();
        v33 = v32;
        if ((v32 & 0xC000000000000001) != 0)
        {
          v34 = sub_100033FC4();
        }

        else
        {
          if (v31 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v34 = *(v32 + 8 * v31 + 32);
        }

        ++v31;
        v33, v35, v36, v37, v38, v39, v40, v41;
        (*(*v34 + 392))(a1 & 1);
      }

      while (v30 != v31);
    }

    goto LABEL_4;
  }

LABEL_28:
  v55, v4, v5, v6, v7, v8, v9, v10;
  result = (*(*v54 + 144))();
  if (result)
  {
    v52 = v51;
    ObjectType = swift_getObjectType();
    (*(v52 + 8))(ObjectType, v52);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001D340(ActivityPickerServiceViewController *a1, ActivityPickerServiceViewController *a2, char a3)
{
  v7 = *(*v3 + 96);
  v8 = v7();
  v16 = v8;
  v101 = v7;
  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100034054())
  {
    v18 = 0;
    v107 = i;
    v109 = v16 & 0xC000000000000001;
    v104 = v16 + 32;
    v105 = v16 & 0xFFFFFFFFFFFFFF8;
    v102 = v16;
    v103 = a1;
    while (1)
    {
      if (v109)
      {
        v21 = sub_100033FC4();
        v22 = __OFADD__(v18++, 1);
        if (v22)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v18 >= *(v105 + 16))
        {
          goto LABEL_34;
        }

        v21 = *(v104 + 8 * v18);

        v22 = __OFADD__(v18++, 1);
        if (v22)
        {
          goto LABEL_33;
        }
      }

      v23 = *(*v21 + 112);
      v24 = v23();
      v25 = (*(*v24 + 488))(v24);

      if (v25)
      {
        goto LABEL_5;
      }

      v27 = (v23)(v26);
      v29 = *(v27 + 24);
      v28 = *(v27 + 32);

      if (v29 == a1 && v28 == a2)
      {
        break;
      }

      v38 = sub_1000340D4();
      v28, v39, v40, v41, v42, v43, v44, v45;
      if (v38)
      {
        goto LABEL_20;
      }

LABEL_5:

      if (v18 == v107)
      {
        goto LABEL_36;
      }
    }

    v28, v30, v31, v32, v33, v34, v35, v36;
LABEL_20:
    a1 = a2;
    v46 = *(*v21 + 160);
    a2 = (*v21 + 160);
    v47 = v46();
    if (!(v47 >> 62))
    {
      v16 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47, v48, v49, v50, v51, v52, v53, v54;
LABEL_22:
      if (v16)
      {
        v55 = 0;
        do
        {
          v56 = v46();
          v57 = v56;
          if ((v56 & 0xC000000000000001) != 0)
          {
            v58 = sub_100033FC4();
          }

          else
          {
            if (v55 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v58 = *(v56 + 8 * v55 + 32);
          }

          ++v55;
          v57, v59, v60, v61, v62, v63, v64, v65;
          (*(*v58 + 392))(a3 & 1);
        }

        while (v16 != v55);
      }

      v19 = (*(*v106 + 248))(v21);
      (*(*v21 + 216))(v19, v20 & 1);
      a2 = a1;
      v16 = v102;
      a1 = v103;
      goto LABEL_5;
    }

    v66 = v47;
    v16 = sub_100034054();
    v66, v67, v68, v69, v70, v71, v72, v73;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
  v16, v9, v10, v11, v12, v13, v14, v15;
  v74 = (*(*v106 + 216))();
  v75 = (*(*v74 + 112))(v74);

  v77 = (v101)(v76);
  v85 = v77;
  if (v77 >> 62)
  {
    goto LABEL_54;
  }

  v86 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v86)
  {
LABEL_38:
    v87 = 0;
    v108 = v75;
    while (1)
    {
      if ((v85 & 0xC000000000000001) != 0)
      {
        v88 = sub_100033FC4();
        v89 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          v95 = 1;
LABEL_52:
          v75 = v108;
          goto LABEL_56;
        }
      }

      else
      {
        if (v87 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_54:
          v86 = sub_100034054();
          if (!v86)
          {
            break;
          }

          goto LABEL_38;
        }

        v88 = *(v85 + 8 * v87 + 32);

        v89 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_50;
        }
      }

      v75 = *(*v88 + 112);
      v90 = v75();
      v91 = (*(*v90 + 488))(v90);

      if ((v91 & 1) != 0 || ((*(*v88 + 264))(v92) & 1) == 0)
      {
      }

      else
      {
        v93 = v75();
        v94 = (*(*v93 + 384))(v93);

        if ((v94 & 1) == 0)
        {
          v95 = 0;
          goto LABEL_52;
        }
      }

      ++v87;
      if (v89 == v86)
      {
        goto LABEL_51;
      }
    }
  }

  v95 = 1;
LABEL_56:
  v85, v78, v79, v80, v81, v82, v83, v84;
  (*(*v75 + 392))(v95);

  result = (*(*v106 + 144))(v96);
  if (result)
  {
    v99 = v98;
    ObjectType = swift_getObjectType();
    (*(v99 + 8))(ObjectType, v99);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001D9B4()
{
  v1 = *(*v0 + 96);
  v2 = v1();
  v10 = v2;
  v82 = v1;
  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
LABEL_3:
    v12 = 0;
    v89 = v10 & 0xC000000000000001;
    v85 = v10 + 32;
    v86 = v10 & 0xFFFFFFFFFFFFFF8;
    v83 = v11;
    v84 = v10;
    while (1)
    {
      if (v89)
      {
        v15 = sub_100033FC4();
        v16 = __OFADD__(v12++, 1);
        if (v16)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v12 >= *(v86 + 16))
        {
          goto LABEL_33;
        }

        v15 = *(v85 + 8 * v12);

        v16 = __OFADD__(v12++, 1);
        if (v16)
        {
          goto LABEL_32;
        }
      }

      v17 = *(*v15 + 112);
      v18 = v17();
      v19 = (*(*v18 + 488))(v18);

      if (v19)
      {
        goto LABEL_5;
      }

      v21 = *(*v15 + 160);
      v22 = (v21)(v20);
      if (v22 >> 62)
      {
        break;
      }

      v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22, v23, v24, v25, v26, v27, v28, v29;
      if (v30)
      {
        goto LABEL_15;
      }

LABEL_5:

      if (v12 == v11)
      {
        goto LABEL_35;
      }
    }

    v46 = v22;
    v47 = sub_100034054();
    v46, v48, v49, v50, v51, v52, v53, v54;
    if (!v47)
    {
      goto LABEL_5;
    }

LABEL_15:
    v31 = v17();
    v32 = v21();
    v40 = v32;
    v41 = v32 & 0xFFFFFFFFFFFFFF8;
    if (v32 >> 62)
    {
      v10 = sub_100034054();
    }

    else
    {
      v10 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = 0;
    while (1)
    {
      v43 = v42;
      if (v10 == v42)
      {
LABEL_4:
        v40, v33, v34, v35, v36, v37, v38, v39;
        (*(*v31 + 392))(v10 == v43);

        v13 = (*(*v88 + 248))(v15);
        (*(*v15 + 216))(v13, v14 & 1);
        v11 = v83;
        v10 = v84;
        goto LABEL_5;
      }

      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = sub_100033FC4();
        if (__OFADD__(v43, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v42 >= *(v41 + 16))
        {
          goto LABEL_31;
        }

        v44 = *(v40 + 8 * v42 + 32);

        if (__OFADD__(v43, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v11 = sub_100034054();
          if (!v11)
          {
            break;
          }

          goto LABEL_3;
        }
      }

      v45 = (*(*v44 + 384))();

      v42 = v43 + 1;
      if ((v45 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_35:
  v10, v3, v4, v5, v6, v7, v8, v9;
  v55 = (*(*v88 + 216))();
  v56 = (*(*v55 + 112))(v55);

  v58 = (v82)(v57);
  v66 = v58;
  if (v58 >> 62)
  {
    goto LABEL_53;
  }

  v67 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v67)
  {
LABEL_37:
    v87 = v56;
    v68 = 0;
    while (1)
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v69 = sub_100033FC4();
        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          v76 = 1;
LABEL_51:
          v56 = v87;
          goto LABEL_55;
        }
      }

      else
      {
        if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_53:
          v67 = sub_100034054();
          if (!v67)
          {
            break;
          }

          goto LABEL_37;
        }

        v69 = *(v66 + 8 * v68 + 32);

        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_49;
        }
      }

      v56 = *(*v69 + 112);
      v71 = v56();
      v72 = (*(*v71 + 488))(v71);

      if ((v72 & 1) != 0 || ((*(*v69 + 264))(v73) & 1) == 0)
      {
      }

      else
      {
        v74 = v56();
        v75 = (*(*v74 + 384))(v74);

        if ((v75 & 1) == 0)
        {
          v76 = 0;
          goto LABEL_51;
        }
      }

      ++v68;
      if (v70 == v67)
      {
        goto LABEL_50;
      }
    }
  }

  v76 = 1;
LABEL_55:
  v66, v59, v60, v61, v62, v63, v64, v65;
  (*(*v56 + 392))(v76);

  result = (*(*v88 + 144))(v77);
  if (result)
  {
    v80 = v79;
    ObjectType = swift_getObjectType();
    (*(v80 + 8))(ObjectType, v80);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001E03C(uint64_t a1)
{
  v2 = (*(*a1 + 112))();
  v3 = (*(*v2 + 384))(v2);

  if (v3)
  {
    return 1;
  }

  v6 = (*(*a1 + 272))(v4);
  v8 = v7;
  v10 = v9;
  v11 = *v6->hostingViewController;
  v6, v7, v9, v12, v13, v14, v15, v16;
  v8, v17, v18, v19, v20, v21, v22, v23;
  v24 = *v10->hostingViewController;
  v10, v25, v26, v27, v28, v29, v30, v31;
  result = v11 + v24;
  if (__OFADD__(v11, v24))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E140@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityProvider(0);
  result = sub_1000332B4();
  *a2 = result;
  return result;
}

unint64_t sub_10001E180(uint64_t a1, uint64_t a2)
{
  sub_100034154();
  sub_100033D74();
  v4 = sub_100034164();

  return sub_10001F828(a1, a2, v4);
}

void sub_10001E1F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100034054();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = sub_100034054();
  v5 = __OFADD__(v20, v3);
  v6 = v20 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10001F4E0(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = sub_10001FC28(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v11 = v10;
  v9, v12, v10, v13, v14, v15, v16, v17;
  if (v11 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v18 = *(v8 + 16);
  v5 = __OFADD__(v18, v11);
  v19 = v18 + v11;
  if (!v5)
  {
    *(v8 + 16) = v19;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_10001E2E8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, uint64_t), void (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_10001E394(v14, a3, a4, a5);
  return sub_100034004();
}

void sub_10001E394(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_1000340B4(v8);
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = sub_100033E24();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v22[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v22[1] = v11;
      v14 = v12;
      a3(v22, v23, a1, v10);
      *(v13 + 16) = 0;
      v14, v15, v16, v17, v18, v19, v20, v21;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_10001E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v55 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = a1 - a3;
LABEL_6:
    v53 = v4;
    v54 = a3;
    v20 = *(v55 + 8 * a3);
    v52 = v5;
    while (1)
    {
      v21 = *v4;
      v22 = *(*v20 + 112);

      v24 = v22(v23);
      v25 = (*(*v24 + 192))(v24);
      v27 = v26;

      v29 = (*(*v21 + 112))(v28);
      v30 = (*(*v29 + 192))(v29);
      v32 = v31;

      if (v25 == v30 && v27 == v32)
      {

        v27, v6, v7, v8, v9, v10, v11, v12;
        v32, v13, v14, v15, v16, v17, v18, v19;
LABEL_5:
        a3 = v54 + 1;
        v4 = v53 + 1;
        v5 = v52 - 1;
        if (v54 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v34 = sub_1000340D4();

      v27, v35, v36, v37, v38, v39, v40, v41;
      v32, v42, v43, v44, v45, v46, v47, v48;
      if ((v34 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v55)
      {
        break;
      }

      v49 = *v4;
      v20 = v4[1];
      *v4 = v20;
      v4[1] = v49;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_10001E6B0(char **a1, const char *a2, uint64_t *a3, char *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v9 = v8;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_104:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v175 = *v12->hostingViewController;
      if (v175 >= 2)
      {
        while (*a3)
        {
          v176 = *(&v12->super.super.super.isa + 2 * v175);
          v177 = *&v12->tokenDecoder[16 * v175];
          sub_10001F00C((*a3 + 8 * v176), (*a3 + 8 * *&v12->hostingViewController[16 * v175]), (*a3 + 8 * v177), v11);
          if (v9)
          {
            goto LABEL_114;
          }

          if (v177 < v176)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_100005AD8(v12, a2, a3, a4, a5, a6, a7, a8);
          }

          if (v175 - 2 >= *v12->hostingViewController)
          {
            goto LABEL_130;
          }

          v178 = &v12->super.super.super.isa + 2 * v175;
          *v178 = v176;
          v178[1] = v177;
          sub_100005A4C(v175 - 1);
          v175 = *v12->hostingViewController;
          if (v175 <= 1)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_140;
      }

LABEL_114:
      v12, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

LABEL_136:
    v12 = sub_100005AD8(v12, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_106;
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11++;
    v189 = v12;
    if (v11 < v10)
    {
      v187 = v10;
      v14 = *a3;
      v191 = v11;
      v183 = v13;
      v15 = *(*a3 + 8 * v13);
      v16 = *(**(*a3 + 8 * v11) + 112);

      v18 = v16(v17);
      v19 = (*(*v18 + 192))(v18);
      v21 = v20;

      v23 = (*(*v15 + 112))(v22);
      v24 = (*(*v23 + 192))();
      v26 = v25;

      v34 = v19 == v24 && v21 == v26;
      v180 = v9;
      if (v34)
      {
        v194 = 0;
      }

      else
      {
        v194 = sub_1000340D4();
      }

      v21, v27, v28, v29, v30, v31, v32, v33;
      v26, v35, v36, v37, v38, v39, v40, v41;

      v42 = v14 + 8 * v183 + 16;
      v43 = 8 * v183 + 8;
      v11 = v191;
      do
      {
        v9 = v43;
        v185 = v11++;
        if (v11 >= v187)
        {
          break;
        }

        v192 = v11;
        v53 = *(v42 - 8);
        v54 = *(**v42 + 112);

        v56 = v54(v55);
        v57 = (*(*v56 + 192))(v56);
        v59 = v58;

        v61 = (*(*v53 + 112))(v60);
        v62 = (*(*v61 + 192))(v61);
        v64 = v63;

        v72 = v57 == v62 && v59 == v64;
        v44 = v72 ? 0 : sub_1000340D4();
        v59, v65, v66, v67, v68, v69, v70, v71;
        v64, v45, v46, v47, v48, v49, v50, v51;

        v52 = v194 ^ v44;
        v42 += 8;
        v43 = v9 + 8;
        v12 = v189;
        v11 = v192;
      }

      while ((v52 & 1) == 0);
      if (v194)
      {
        v13 = v183;
        if (v11 < v183)
        {
          goto LABEL_133;
        }

        if (v183 < v11)
        {
          v73 = v183;
          v74 = 8 * v183;
          v75 = v185;
          do
          {
            if (v73 != v75)
            {
              v77 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v78 = *(v77 + v74);
              *(v77 + v74) = *(v77 + v9);
              *(v77 + v9) = v78;
            }

            ++v73;
            v9 -= 8;
            v74 += 8;
          }

          while (v73 < v75--);
        }

        v9 = v180;
      }

      else
      {
        v9 = v180;
        v13 = v183;
      }
    }

    v79 = a3[1];
    if (v11 < v79)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_132;
      }

      if (&v11[-v13] < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v11 < v13)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_100004414(0, *v12->hostingViewController + 1, 1, v12, a5, a6, a7, a8);
    }

    v129 = *v12->hostingViewController;
    v128 = *v12->tokenDecoder;
    v130 = v129 + 1;
    if (v129 >= v128 >> 1)
    {
      v12 = sub_100004414((v128 > 1), v129 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->hostingViewController = v130;
    v131 = v12 + 16 * v129;
    *(v131 + 4) = v13;
    *(v131 + 5) = v11;
    v132 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v129)
    {
      while (1)
      {
        v133 = v130 - 1;
        if (v130 >= 4)
        {
          break;
        }

        if (v130 == 3)
        {
          v134 = *v12->tokenEncoder;
          v135 = *v12->$__lazy_storage_$_client;
          v144 = __OFSUB__(v135, v134);
          v136 = v135 - v134;
          v137 = v144;
LABEL_73:
          if (v137)
          {
            goto LABEL_120;
          }

          v150 = &v12->super.super.super.isa + 2 * v130;
          v152 = *v150;
          v151 = v150[1];
          v153 = __OFSUB__(v151, v152);
          v154 = v151 - v152;
          v155 = v153;
          if (v153)
          {
            goto LABEL_123;
          }

          v156 = &v12->tokenEncoder[16 * v133];
          v158 = *v156;
          v157 = *(v156 + 1);
          v144 = __OFSUB__(v157, v158);
          v159 = v157 - v158;
          if (v144)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v154, v159))
          {
            goto LABEL_127;
          }

          if (v154 + v159 >= v136)
          {
            if (v136 < v159)
            {
              v133 = v130 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v160 = &v12->super.super.super.isa + 2 * v130;
        v162 = *v160;
        v161 = v160[1];
        v144 = __OFSUB__(v161, v162);
        v154 = v161 - v162;
        v155 = v144;
LABEL_87:
        if (v155)
        {
          goto LABEL_122;
        }

        v163 = v12 + 16 * v133;
        v165 = *(v163 + 4);
        v164 = *(v163 + 5);
        v144 = __OFSUB__(v164, v165);
        v166 = v164 - v165;
        if (v144)
        {
          goto LABEL_125;
        }

        if (v166 < v154)
        {
          goto LABEL_3;
        }

LABEL_94:
        v171 = v133 - 1;
        if (v133 - 1 >= v130)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v172 = *&v12->tokenEncoder[16 * v171];
        v173 = *&v12->$__lazy_storage_$_client[16 * v133];
        sub_10001F00C((*a3 + 8 * v172), (*a3 + 8 * *&v12->tokenEncoder[16 * v133]), (*a3 + 8 * v173), v132);
        if (v9)
        {
          goto LABEL_114;
        }

        if (v173 < v172)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100005AD8(v12, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v171 >= *v12->hostingViewController)
        {
          goto LABEL_117;
        }

        v174 = v12 + 16 * v171;
        *(v174 + 4) = v172;
        *(v174 + 5) = v173;
        sub_100005A4C(v133);
        v130 = *v12->hostingViewController;
        if (v130 <= 1)
        {
          goto LABEL_3;
        }
      }

      v138 = &v12->tokenEncoder[16 * v130];
      v139 = *(v138 - 64);
      v140 = *(v138 - 56);
      v144 = __OFSUB__(v140, v139);
      v141 = v140 - v139;
      if (v144)
      {
        goto LABEL_118;
      }

      v143 = *(v138 - 48);
      v142 = *(v138 - 40);
      v144 = __OFSUB__(v142, v143);
      v136 = v142 - v143;
      v137 = v144;
      if (v144)
      {
        goto LABEL_119;
      }

      v145 = &v12->super.super.super.isa + 2 * v130;
      v147 = *v145;
      v146 = v145[1];
      v144 = __OFSUB__(v146, v147);
      v148 = v146 - v147;
      if (v144)
      {
        goto LABEL_121;
      }

      v144 = __OFADD__(v136, v148);
      v149 = v136 + v148;
      if (v144)
      {
        goto LABEL_124;
      }

      if (v149 >= v141)
      {
        v167 = &v12->tokenEncoder[16 * v133];
        v169 = *v167;
        v168 = *(v167 + 1);
        v144 = __OFSUB__(v168, v169);
        v170 = v168 - v169;
        if (v144)
        {
          goto LABEL_128;
        }

        if (v136 < v170)
        {
          v133 = v130 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v10 = a3[1];
    if (v11 >= v10)
    {
      goto LABEL_104;
    }
  }

  v80 = &a4[v13];
  if (__OFADD__(v13, a4))
  {
    goto LABEL_134;
  }

  if (v80 >= v79)
  {
    v80 = a3[1];
  }

  if (v80 < v13)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v11 == v80)
  {
    goto LABEL_53;
  }

  v181 = v9;
  v195 = *a3;
  v81 = (*a3 + 8 * v11 - 8);
  v184 = v80;
  v82 = v13 - v11;
LABEL_42:
  v193 = v11;
  v97 = *(v195 + 8 * v11);
  v186 = v82;
  v188 = v81;
  while (1)
  {
    v98 = *v81;
    v99 = *(*v97 + 112);

    v101 = v99(v100);
    v102 = (*(*v101 + 192))(v101);
    v104 = v103;

    v106 = (*(*v98 + 112))(v105);
    v107 = (*(*v106 + 192))();
    v109 = v108;

    if (v102 == v107 && v104 == v109)
    {

      v104, v83, v84, v85, v86, v87, v88, v89;
      v109, v90, v91, v92, v93, v94, v95, v96;
LABEL_41:
      v11 = v193 + 1;
      v81 = v188 + 1;
      v82 = v186 - 1;
      if (v193 + 1 == v184)
      {
        v11 = v184;
        v9 = v181;
        v12 = v189;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v111 = sub_1000340D4();

    v104, v112, v113, v114, v115, v116, v117, v118;
    v109, v119, v120, v121, v122, v123, v124, v125;
    if ((v111 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v195)
    {
      break;
    }

    v126 = *v81;
    v97 = v81[1];
    *v81 = v97;
    v81[1] = v126;
    --v81;
    if (__CFADD__(v82++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_10001F00C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v97 = &v4[8 * v12];
    if (v10 >= 8 && v6 > __dst)
    {
      v92 = v4;
LABEL_32:
      v96 = v6;
      v59 = v6 - 8;
      v5 -= 8;
      v60 = v97;
      v93 = v59;
      do
      {
        v61 = *(v60 - 1);
        v60 -= 8;
        v62 = *v59;
        v63 = *(*v61 + 112);

        v65 = v63(v64);
        v66 = (*(*v65 + 192))(v65);
        v68 = v67;

        v70 = (*(*v62 + 112))(v69);
        v71 = (*(*v70 + 192))();
        v73 = v72;

        if (v66 == v71 && v68 == v73)
        {
          v82 = 0;
        }

        else
        {
          v82 = sub_1000340D4();
        }

        v68, v74, v75, v76, v77, v78, v79, v80;
        v73, v83, v84, v85, v86, v87, v88, v89;

        v90 = v5 + 8;
        if (v82)
        {
          v4 = v92;
          if (v90 != v96)
          {
            *v5 = *v93;
          }

          if (v97 <= v92 || (v6 = v93, v93 <= __dst))
          {
            v6 = v93;
            goto LABEL_49;
          }

          goto LABEL_32;
        }

        v4 = v92;
        if (v90 != v97)
        {
          *v5 = *v60;
        }

        v5 -= 8;
        v97 = v60;
        v59 = v93;
      }

      while (v60 > v92);
      v97 = v60;
      v6 = v96;
    }
  }

  else
  {
    v13 = __dst;
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v97 = &v4[8 * v9];
    if (v7 >= 8 && v6 < v5)
    {
      while (1)
      {
        v95 = v6;
        v14 = *v6;
        v15 = v4;
        v16 = *v4;
        v17 = *(*v14 + 112);

        v19 = v17(v18);
        v20 = (*(*v19 + 192))(v19);
        v22 = v21;

        v24 = (*(*v16 + 112))(v23);
        v25 = (*(*v24 + 192))(v24);
        v27 = v26;

        v28 = v20 == v25 && v22 == v27;
        if (v28)
        {
          break;
        }

        v29 = sub_1000340D4();

        v22, v30, v31, v32, v33, v34, v35, v36;
        v27, v37, v38, v39, v40, v41, v42, v43;
        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }

        v44 = v95;
        v28 = v13 == v95;
        v95 += 8;
        v4 = v15;
        if (!v28)
        {
          goto LABEL_21;
        }

LABEL_22:
        v13 += 8;
        if (v4 < v97)
        {
          v6 = v95;
          if (v95 < v5)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      v22, v45, v46, v47, v48, v49, v50, v51;
      v27, v52, v53, v54, v55, v56, v57, v58;
LABEL_20:
      v44 = v15;
      v4 = v15 + 8;
      if (v13 == v15)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v13 = *v44;
      goto LABEL_22;
    }

LABEL_24:
    v6 = v13;
  }

LABEL_49:
  if (v6 != v4 || v6 >= &v4[(v97 - v4 + (v97 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v97 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10001F4E0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_100034054();
LABEL_9:
  result = sub_100033FD4();
  *v2 = result;
  return result;
}

uint64_t sub_10001F580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001A68(&qword_1000458E8, &qword_100035A78);
  v34 = v4;
  result = sub_100034074();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100034154();
      sub_100033D74();
      result = sub_100034164();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_10001F828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000340D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_10001F8E0()
{
  v1 = v0;
  sub_100001A68(&qword_1000458E8, &qword_100035A78);
  v2 = *v0;
  v3 = sub_100034064();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_10001FA50(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = sub_100033FC4();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_100034054();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

void *sub_10001FB8C(unint64_t a1, uint64_t (*a2)(void *, ActivityPickerServiceViewController *, ActivityPickerServiceViewController *))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v4 = a1;
  v5 = sub_100034054();
  if (!v5)
  {
LABEL_7:
    v4, v6, v7, v8, v9, v10, v11, v12;
    return _swiftEmptyArrayStorage;
  }

  v13 = v5;
  v14 = sub_100004518(v5, 0);
  v15 = a2(v14 + 4, v13, v4);
  v4 = v16;
  v15, v17, v16, v18, v19, v20, v21, v22;
  result = v14;
  if (v4 != v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10001FC28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100034054();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100034054();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10002011C(&qword_1000458F0, &qword_100045770, &qword_100035940);
          for (i = 0; i != v6; ++i)
          {
            sub_100001A68(&qword_100045770, &qword_100035940);
            v9 = sub_10001FDB8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ActivityGroup(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_10001FDB8(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100033FC4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000201D4;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ActivityProvider(uint64_t a1)
{
  result = qword_100046FB0;
  if (!qword_100046FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001FE8C(uint64_t a1)
{
  sub_10001FF24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10001FF24(uint64_t a1)
{
  if (!qword_1000457B0)
  {
    sub_100006924(&qword_100045770, &qword_100035940);
    v1 = sub_100033324();
    if (!v2)
    {
      atomic_store(v1, &qword_1000457B0);
    }
  }
}

uint64_t sub_10001FF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_1000458D0, &unk_100035A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001FFF8(uint64_t a1)
{
  v2 = sub_100001A68(&qword_1000458D0, &unk_100035A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100020060(ActivityPickerServiceViewController *self, SEL x1_0, uint64_t w2_0, id x3_0, id x4_0, uint64_t w5_0, id x6_0, id x7_0)
{
  if (w2_0)
  {
    self, x1_0, w2_0, x3_0, x4_0, w5_0, x6_0, x7_0;
  }
}

uint64_t sub_10002006C(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for ActivityGroup(0);
  sub_100020170(&qword_100044E38, type metadata accessor for ActivityGroup, &unk_100034B40);
  return sub_100033CF4() & 1;
}

uint64_t sub_10002011C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006924(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100020170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000201E0(char a1)
{
  result = 0xD000000000000023;
  if (a1 == 1)
  {
    return 0xD000000000000027;
  }

  return result;
}

uint64_t sub_100020238(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = "per.team-identifier";
  v10 = 0xD000000000000027;
  if (v8 == 1)
  {
    v11 = 0xD000000000000027;
  }

  else
  {
    v11 = 0xD000000000000023;
  }

  if (v8 == 1)
  {
    v12 = "per.team-identifier";
  }

  else
  {
    v12 = "Controls.private-client";
  }

  if (*a1)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xD000000000000023;
  }

  if (v8)
  {
    v14 = v12;
  }

  else
  {
    v14 = "selectionsDelegate";
  }

  v15 = (v14 | 0x8000000000000000);
  if (*a2 != 1)
  {
    v10 = 0xD000000000000023;
    v9 = "Controls.private-client";
  }

  if (*a2)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0xD000000000000023;
  }

  if (*a2)
  {
    v17 = v9;
  }

  else
  {
    v17 = "selectionsDelegate";
  }

  v18 = (v17 | 0x8000000000000000);
  if (v13 == v16 && v15 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1000340D4();
  }

  v15, a2, v16, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

Swift::Int sub_10002030C()
{
  v1 = *v0;
  sub_100034154();
  v2 = "per.team-identifier";
  if (v1 != 1)
  {
    v2 = "Controls.private-client";
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "selectionsDelegate";
  }

  sub_100033D74();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return sub_100034164();
}

void sub_1000203A4(uint64_t a1)
{
  v2 = "per.team-identifier";
  if (*v1 != 1)
  {
    v2 = "Controls.private-client";
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "selectionsDelegate";
  }

  sub_100033D74();

  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_100020428(uint64_t a1)
{
  v2 = *v1;
  sub_100034154();
  v3 = "per.team-identifier";
  if (v2 != 1)
  {
    v3 = "Controls.private-client";
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = "selectionsDelegate";
  }

  sub_100033D74();
  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11;
  return sub_100034164();
}

unint64_t sub_1000204BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020544(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000204EC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000023;
  v3 = "per.team-identifier";
  v4 = 0xD000000000000027;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000023;
    v3 = "Controls.private-client";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "selectionsDelegate";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_100020544(uint64_t a1, ActivityPickerServiceViewController *a2)
{
  v13._countAndFlagsBits = a1;
  v3._rawValue = &off_100041ED0;
  v13._object = a2;
  v4 = sub_100034094(v3, v13);
  a2, v5, v6, v7, v8, v9, v10, v11;
  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100020594()
{
  result = qword_1000458F8;
  if (!qword_1000458F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000458F8);
  }

  return result;
}

uint64_t sub_100020660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v29 = sub_100001A68(&qword_100045900, &qword_100035B70);
  __chkstk_darwin(v29);
  v27 = &v23 - v9;
  v28 = sub_100001A68(&qword_100045908, &qword_100035B78);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v23 - v10;
  v11 = sub_1000337E4();
  __chkstk_darwin(v11 - 8);
  v24 = sub_100001A68(&qword_100045910, &qword_100035B80);
  v12 = *(v24 - 8);
  __chkstk_darwin(v24);
  v14 = &v23 - v13;
  sub_1000337D4();
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  sub_100001A68(&qword_100045918, &qword_100035B88);
  sub_1000114F8(&qword_100045920, &qword_100045918, &qword_100035B88, &protocol conformance descriptor for Button<A>);
  sub_1000333D4();
  sub_1000337C4();
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  sub_100001A68(&qword_100045928, &qword_100035B90);
  sub_100020C30();
  v15 = v25;
  sub_1000333D4();
  v16 = *(v29 + 48);
  v17 = v27;
  v18 = v24;
  (*(v12 + 16))(v27, v14, v24);
  v19 = v26;
  v20 = &v17[v16];
  v21 = v28;
  (*(v26 + 16))(v20, v15, v28);
  sub_100033754();
  (*(v19 + 8))(v15, v21);
  return (*(v12 + 8))(v14, v18);
}

uint64_t sub_1000209DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_100033364();
  __chkstk_darwin(v2 - 8);
  sub_100033354();

  return sub_100033BE4();
}

uint64_t sub_100020A80(uint64_t a1, uint64_t a2)
{
  v2 = sub_100033364();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100001A68(&qword_100045918, &qword_100035B88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100033344();

  sub_100033BE4();
  sub_1000114F8(&qword_100045920, &qword_100045918, &qword_100035B88, &protocol conformance descriptor for Button<A>);
  sub_100033A54();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100020C30()
{
  result = qword_100045930;
  if (!qword_100045930)
  {
    sub_100006924(&qword_100045928, &qword_100035B90);
    sub_1000114F8(&qword_100045920, &qword_100045918, &qword_100035B88, &protocol conformance descriptor for Button<A>);
    sub_100020CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045930);
  }

  return result;
}

unint64_t sub_100020CE8()
{
  result = qword_100045938;
  if (!qword_100045938)
  {
    sub_100033874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045938);
  }

  return result;
}

__n128 sub_100020D70(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100020D7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100020DC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100020E64(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100020E94()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    type metadata accessor for ActivityProvider(0);
    sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_100020F20()
{
  type metadata accessor for ActivityProvider(0);
  sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);

  return sub_100033594();
}

uint64_t sub_100020F94()
{
  type metadata accessor for ActivityProvider(0);
  sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);

  return sub_100033564();
}

uint64_t sub_10002101C(uint64_t a1)
{
  type metadata accessor for ActivityItem(0);
  sub_100021098(&qword_100045950, type metadata accessor for ActivityItem, &unk_100034FC0);

  return sub_100033464();
}

uint64_t sub_100021098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000210E8(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_100021134()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for ActivityItem(0);
  v4 = sub_100021098(&qword_100045950, type metadata accessor for ActivityItem, &unk_100034FC0);

  return ObservedObject.projectedValue.getter(v1, v2, v3, v4);
}

uint64_t sub_1000211BC()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_100021204(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return result;
}

uint64_t sub_10002130C()
{
  type metadata accessor for ActivitySelectableRow(0);
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  return v1;
}

uint64_t sub_100021394(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivitySelectableRow(0);
  sub_100001A68(&qword_100045958, &qword_100035C88);
  return sub_100033BB4();
}

void (*sub_100021410(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for ActivitySelectableRow(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[13] = sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  return sub_1000214D4;
}

void sub_1000214D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  *(v2 + 24) = *(*a1 + 80);
  *(v2 + 64) = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 96);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  *(v2 + 72) = v4;
  if (a2)
  {

    sub_100033BB4();
    v3, v6, v7, v8, v9, v10, v11, v12;

    *(v2 + 56), v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    sub_100033BB4();
    v3, v20, v21, v22, v23, v24, v25, v26;
  }

  free(v2);
}

uint64_t sub_100021590()
{
  v0 = [objc_opt_self() shortLocalizedNameForIdentifier:CTCategoryIdentifierOther];
  v1 = sub_100033D34();

  return v1;
}

uint64_t sub_1000215FC()
{
  type metadata accessor for ActivitySelectableRow(0);
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BC4();
  return v1;
}

uint64_t sub_100021668@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  type metadata accessor for ActivityProvider(0);
  sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);
  *(a9 + 16) = sub_100033594();
  *(a9 + 24) = v14;
  v15 = type metadata accessor for ActivitySelectableRow(0);
  v16 = *(v15 + 40);
  *(a9 + v16) = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  swift_storeEnumTagMultiPayload();
  v17 = a9 + *(v15 + 44);
  v18 = [objc_opt_self() shortLocalizedNameForIdentifier:CTCategoryIdentifierOther];
  sub_100033D34();

  sub_100033B94();
  *v17 = v24;
  *(v17 + 16) = v25;
  type metadata accessor for ActivityItem(0);
  sub_100021098(&qword_100045950, type metadata accessor for ActivityItem, &unk_100034FC0);
  result = sub_100033464();
  *(a9 + 32) = result;
  *(a9 + 40) = v20;
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *a9 = a5;
  *(a9 + 8) = a6 & 1;
  *(a9 + 65) = a7;
  *(a9 + 66) = a8;
  return result;
}

uint64_t sub_100021848@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v62 = sub_100001A68(&qword_100045960, &qword_100035C90);
  __chkstk_darwin(v62);
  v63 = (&v56 - v3);
  v4 = sub_100032F84();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v59 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100001A68(&qword_100045968, &qword_100035C98);
  __chkstk_darwin(v70);
  v64 = &v56 - v6;
  v67 = sub_100001A68(&qword_100045970, &qword_100035CA0);
  __chkstk_darwin(v67);
  v68 = (&v56 - v7);
  v8 = sub_100033B54();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100001A68(&qword_100045978, &qword_100035CA8);
  __chkstk_darwin(v72);
  v69 = &v56 - v11;
  v12 = sub_100001A68(&qword_100045980, &unk_100035CB0);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v56 - v20;
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  v24 = sub_100001A68(&qword_100045988, &qword_100035CC0);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v56 - v27;
  if ((*(*a1 + 336))(v26))
  {
    (*(*a1 + 144))();
    sub_10000DBBC(v23, v21, &qword_100045018, &qword_100034C60);
    sub_100001A68(&qword_1000459C8, &qword_100035CD8);
    sub_100026ECC();
    sub_100033334();
    sub_10000DC24(v23, &qword_100045018, &qword_100034C60);
    (*(v25 + 16))(v14, v28, v24);
    swift_storeEnumTagMultiPayload();
    sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0, &protocol conformance descriptor for AsyncImage<A>);
    sub_1000225FC();
    sub_100033784();
    return (*(v25 + 8))(v28, v24);
  }

  v57 = v14;
  v58 = v24;
  if (a1[16])
  {
    if (a1[16] == 1)
    {
      type metadata accessor for ActivityItem(0);
      v30 = sub_100033D04();
      sub_10000A0D0(v30);

      sub_100033B24();
      v32 = v65;
      v31 = v66;
      (*(v65 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v66);
      v33 = sub_100033B74();

      (*(v32 + 8))(v10, v31);
      v73 = v33;
      v74 = 0;
    }

    else
    {
      sub_100033B84();
      v47 = v65;
      v46 = v66;
      (*(v65 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v66);
      v48 = sub_100033B74();

      (*(v47 + 8))(v10, v46);
      v73 = v48;
      v74 = 1;
    }

    sub_100033784();
    v49 = v76;
    v50 = v68;
    *v68 = v75;
    *(v50 + 8) = v49;
    swift_storeEnumTagMultiPayload();
    sub_100001A68(&qword_1000459A8, &qword_100035CD0);
    sub_10002249C();
    sub_100022518();
    v51 = v69;
    sub_100033784();

    v52 = v57;
    goto LABEL_14;
  }

  v34 = (*(*a1 + 288))();
  v56 = v12;
  if (v34)
  {
    (*(*a1 + 144))(v34);
    v35 = v60;
    v36 = v61;
    if ((*(v60 + 48))(v18, 1, v61) != 1)
    {
      v53 = v59;
      (*(v35 + 32))(v59, v18, v36);
      (*(v35 + 16))(v23, v53, v36);
      (*(v35 + 56))(v23, 0, 1, v36);
      sub_10000DBBC(v23, v21, &qword_100045018, &qword_100034C60);
      sub_100001A68(&qword_1000459C8, &qword_100035CD8);
      sub_100026ECC();
      sub_100033334();
      sub_10000DC24(v23, &qword_100045018, &qword_100034C60);
      v54 = v58;
      (*(v25 + 16))(v63, v28, v58);
      swift_storeEnumTagMultiPayload();
      sub_100001A68(&qword_100045990, &qword_100035CC8);
      sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0, &protocol conformance descriptor for AsyncImage<A>);
      sub_1000114F8(&qword_1000459A0, &qword_100045990, &qword_100035CC8, &protocol conformance descriptor for ApplicationIcon<A>);
      v45 = v64;
      sub_100033784();
      (*(v25 + 8))(v28, v54);
      (*(v35 + 8))(v59, v36);
      goto LABEL_13;
    }

    sub_10000DC24(v18, &qword_100045018, &qword_100034C60);
  }

  v37 = objc_allocWithZone(ISIcon);
  v38 = sub_100033D04();
  v39 = [v37 initWithBundleIdentifier:{v38, v56}];

  v40 = ApplicationIcon.init<>(icon:descriptor:)(v39, 0);
  v41 = v63;
  *v63 = v42;
  v41[1] = v40;
  v41[2] = v43;
  v41[3] = v44;
  swift_storeEnumTagMultiPayload();
  sub_100001A68(&qword_100045990, &qword_100035CC8);
  sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0, &protocol conformance descriptor for AsyncImage<A>);
  sub_1000114F8(&qword_1000459A0, &qword_100045990, &qword_100035CC8, &protocol conformance descriptor for ApplicationIcon<A>);
  v45 = v64;
  sub_100033784();
LABEL_13:
  sub_10000DBBC(v45, v68, &qword_100045968, &qword_100035C98);
  swift_storeEnumTagMultiPayload();
  sub_100001A68(&qword_1000459A8, &qword_100035CD0);
  sub_10002249C();
  sub_100022518();
  v55 = v45;
  v51 = v69;
  sub_100033784();
  sub_10000DC24(v55, &qword_100045968, &qword_100035C98);
  v52 = v57;
LABEL_14:
  sub_10000DBBC(v51, v52, &qword_100045978, &qword_100035CA8);
  swift_storeEnumTagMultiPayload();
  sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0, &protocol conformance descriptor for AsyncImage<A>);
  sub_1000225FC();
  sub_100033784();
  return sub_10000DC24(v51, &qword_100045978, &qword_100035CA8);
}

unint64_t sub_10002249C()
{
  result = qword_1000459B0;
  if (!qword_1000459B0)
  {
    sub_100006924(&qword_1000459A8, &qword_100035CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459B0);
  }

  return result;
}

unint64_t sub_100022518()
{
  result = qword_1000459B8;
  if (!qword_1000459B8)
  {
    sub_100006924(&qword_100045968, &qword_100035C98);
    sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0, &protocol conformance descriptor for AsyncImage<A>);
    sub_1000114F8(&qword_1000459A0, &qword_100045990, &qword_100035CC8, &protocol conformance descriptor for ApplicationIcon<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459B8);
  }

  return result;
}

unint64_t sub_1000225FC()
{
  result = qword_1000459C0;
  if (!qword_1000459C0)
  {
    sub_100006924(&qword_100045978, &qword_100035CA8);
    sub_10002249C();
    sub_100022518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459C0);
  }

  return result;
}

uint64_t sub_100022688@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v2 = sub_100001A68(&qword_100045A08, &qword_100035CF8);
  __chkstk_darwin(v2);
  v4 = v78 - v3;
  v5 = type metadata accessor for ActivitySelectableRow(0);
  v97 = *(v5 - 8);
  v6 = *(v97 + 64);
  __chkstk_darwin(v5 - 8);
  v96 = type metadata accessor for ToggleableStyle(0);
  __chkstk_darwin(v96);
  v86 = (v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100001A68(&qword_100045A10, &qword_100035D00);
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v10 = v78 - v9;
  v85 = sub_100001A68(&qword_100045A18, &qword_100035D08);
  __chkstk_darwin(v85);
  v12 = v78 - v11;
  v89 = sub_100001A68(&qword_100045A20, &qword_100035D10);
  __chkstk_darwin(v89);
  v90 = v78 - v13;
  v14 = sub_100001A68(&qword_100045A28, &qword_100035D18);
  v93 = *(v14 - 8);
  v94 = v14;
  __chkstk_darwin(v14);
  v92 = v78 - v15;
  v16 = sub_100001A68(&qword_100045A30, &qword_100035D20);
  v17 = __chkstk_darwin(v16);
  v91 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v95 = v78 - v20;
  v21 = *(v1 + 40);
  v22 = (*(*v21 + 240))(v19);
  if (v22)
  {
    v79 = v16;
    v80 = v6;
    v81 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v83 = v2;
    v84 = v4;
    v78[1] = v78;
    __chkstk_darwin(v22);
    v82 = v1;
    v78[-2] = v1;

    sub_100001A68(&qword_100045A60, &qword_100035D28);
    sub_1000114F8(&qword_100045A68, &qword_100045A60, &qword_100035D28, &protocol conformance descriptor for TupleView<A>);
    sub_100033BF4();
    v23 = sub_100033904();
    v104 = v21[16];
    v103 = 1;
    sub_100006698();
    sub_100033DC4();
    sub_100033DC4();
    v30 = v102;
    v31 = v100;
    if (v101 == v99 && v102 == v100)
    {
      v102, v24, v99, v25, v26, v27, v28, v29;
      v31, v32, v33, v34, v35, v36, v37, v38;
    }

    else
    {
      sub_1000340D4();
      v30, v40, v41, v42, v43, v44, v45, v46;
      v31, v47, v48, v49, v50, v51, v52, v53;
    }

    v54 = v89;
    v55 = v90;
    sub_100033374();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    (*(v87 + 32))(v12, v10, v88);
    v64 = &v12[*(v85 + 36)];
    *v64 = v23;
    *(v64 + 1) = v57;
    *(v64 + 2) = v59;
    *(v64 + 3) = v61;
    *(v64 + 4) = v63;
    v64[40] = 0;
    v65 = sub_100033914();
    sub_100011540(v12, v55, &qword_100045A18, &qword_100035D08);
    v66 = v55 + *(v54 + 36);
    *v66 = v65;
    *(v66 + 8) = 0u;
    *(v66 + 24) = 0u;
    *(v66 + 40) = 1;
    v67 = v82;
    v68 = *(v82 + 16);
    v69 = v81;
    if (v68)
    {
      v70 = v86;
      *v86 = v21;
      *(v70 + 8) = v68;
      v71 = *(v96 + 24);
      *(v70 + v71) = swift_getKeyPath();
      sub_100001A68(&qword_1000453A0, &qword_100035C80);
      swift_storeEnumTagMultiPayload();
      sub_1000271AC();
      sub_100021098(&qword_100045A58, type metadata accessor for ToggleableStyle, &unk_100035DC0);

      v72 = v92;
      sub_1000339E4();
      sub_100028B64(v70, type metadata accessor for ToggleableStyle);
      sub_10000DC24(v55, &qword_100045A20, &qword_100035D10);
      sub_1000273CC(v67, v69, type metadata accessor for ActivitySelectableRow);
      v73 = (*(v97 + 80) + 16) & ~*(v97 + 80);
      v74 = swift_allocObject();
      sub_100027434(v69, v74 + v73, type metadata accessor for ActivitySelectableRow);
      v75 = v91;
      (*(v93 + 32))(v91, v72, v94);
      v76 = (v75 + *(v79 + 36));
      *v76 = sub_1000272FC;
      v76[1] = v74;
      v76[2] = 0;
      v76[3] = 0;
      v77 = v95;
      sub_10002735C(v75, v95);
      sub_10000DBBC(v77, v84, &qword_100045A30, &qword_100035D20);
      swift_storeEnumTagMultiPayload();
      sub_100027094();
      sub_100033784();
      return sub_10000DC24(v77, &qword_100045A30, &qword_100035D20);
    }

    else
    {
      type metadata accessor for ActivityProvider(0);
      sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);

      result = sub_100033574();
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100027094();
    return sub_100033784();
  }

  return result;
}

uint64_t sub_100022F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_1000333A4();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = __chkstk_darwin(v3);
  v94 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v93 - v6;
  v8 = sub_100033534();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100001A68(&qword_100045D30, &qword_100036078);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v93 - v14;
  v102 = sub_100001A68(&qword_100045D38, &qword_100036080);
  __chkstk_darwin(v102);
  v101 = &v93 - v16;
  v17 = sub_100001A68(&qword_100045D40, &qword_100036088);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v93 - v19;
  v98 = sub_100001A68(&qword_100045D48, &qword_100036090);
  v21 = __chkstk_darwin(v98);
  v103 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v93 - v24;
  __chkstk_darwin(v23);
  v105 = &v93 - v26;
  v99 = a1[5];
  sub_100021848(v99, v20);
  sub_100033C74();
  sub_100033414();
  v27 = *(v18 + 44);
  v100 = v20;
  v28 = &v20[v27];
  v29 = v127[1];
  *v28 = v127[0];
  *(v28 + 1) = v29;
  *(v28 + 2) = v127[2];
  v30 = *(v9 + 28);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = sub_100033734();
  (*(*(v32 - 8) + 104))(&v11[v30], v31, v32);
  __asm { FMOV            V0.2D, #5.0 }

  *v11 = _Q0;
  v38 = 0.0;
  sub_1000333C4();
  sub_1000273CC(v11, v15, &type metadata accessor for RoundedRectangle);
  v39 = &v15[*(sub_100001A68(&qword_100045D50, &qword_100036098) + 36)];
  v40 = v127[4];
  *v39 = v127[3];
  *(v39 + 1) = v40;
  *(v39 + 4) = v128;
  v41 = sub_100001A68(&qword_100045D58, &qword_1000360A0);
  *&v15[*(v41 + 52)] = 1048576000;
  *&v15[*(v41 + 56)] = 256;
  v42 = sub_100033C74();
  v44 = v43;
  sub_100028B64(v11, &type metadata accessor for RoundedRectangle);
  v45 = &v15[*(sub_100001A68(&qword_100045D60, &qword_1000360A8) + 36)];
  *v45 = v42;
  v45[1] = v44;
  sub_100033C74();
  sub_100033414();
  v46 = &v15[*(v13 + 44)];
  v47 = v130;
  *v46 = v129;
  *(v46 + 1) = v47;
  *(v46 + 2) = v131;
  v48 = a1;
  v97 = *(a1 + 66);
  if (v97 == 1)
  {
    type metadata accessor for ActivitySelectableRow(0);
    sub_100010E90(v7);
    v50 = v94;
    v49 = v95;
    v51 = v96;
    (*(v95 + 104))(v94, enum case for ColorScheme.light(_:), v96);
    v52 = sub_100033394();
    v53 = *(v49 + 8);
    v53(v50, v51);
    v53(v7, v51);
    if (v52)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = 0.0;
    }
  }

  v54 = v101;
  sub_100011540(v15, v101, &qword_100045D30, &qword_100036078);
  *(v54 + *(v102 + 36)) = v38;
  v55 = sub_100033C74();
  v57 = v56;
  v58 = &v25[*(v98 + 36)];
  sub_100011540(v54, v58, &qword_100045D38, &qword_100036080);
  v59 = (v58 + *(sub_100001A68(&qword_100045D68, &qword_1000360B0) + 36));
  *v59 = v55;
  v59[1] = v57;
  sub_100011540(v100, v25, &qword_100045D40, &qword_100036088);
  v60 = v105;
  v61 = sub_100011540(v25, v105, &qword_100045D48, &qword_100036090);
  v62 = *v48;
  v63 = *(v48 + 8);
  v64 = (*(*v99 + 192))(v61);
  v102 = v65;
  LODWORD(v101) = *(v48 + 65);
  v66 = v48 + *(type metadata accessor for ActivitySelectableRow(0) + 44);
  v67 = *v66;
  v68 = *(v66 + 2);
  v114 = v67;
  v115 = v68;
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  v99 = *(&v107 + 1);
  v100 = v107;
  v106 = v63;
  v69 = sub_100033904();
  v70 = v69;
  LODWORD(v96) = v69;
  sub_100033374();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v106;
  LODWORD(v98) = v106;
  LOBYTE(v114) = 0;
  v80 = v103;
  sub_10000DBBC(v60, v103, &qword_100045D48, &qword_100036090);
  v81 = v104;
  sub_10000DBBC(v80, v104, &qword_100045D48, &qword_100036090);
  v82 = v81 + *(sub_100001A68(&qword_100045D70, &qword_1000360B8) + 48);
  v83 = v62;
  *&v107 = v62;
  BYTE8(v107) = v79;
  v84 = v64;
  *&v108 = v64;
  v85 = v102;
  *(&v108 + 1) = v102;
  LOBYTE(v55) = v101;
  LOBYTE(v109) = v101;
  v86 = v97;
  BYTE1(v109) = v97;
  v88 = v99;
  v87 = v100;
  *(&v109 + 1) = v100;
  *&v110 = v99;
  BYTE8(v110) = v70;
  *&v111 = v72;
  *(&v111 + 1) = v74;
  *&v112 = v76;
  *(&v112 + 1) = v78;
  v113 = 0;
  *(v82 + 96) = 0;
  v89 = v108;
  *v82 = v107;
  *(v82 + 16) = v89;
  v90 = v110;
  *(v82 + 32) = v109;
  *(v82 + 48) = v90;
  v91 = v112;
  *(v82 + 64) = v111;
  *(v82 + 80) = v91;
  sub_10000DBBC(&v107, &v114, &qword_100045D78, &qword_1000360C0);
  sub_10000DC24(v105, &qword_100045D48, &qword_100036090);
  *&v114 = v83;
  BYTE8(v114) = v98;
  v115 = v84;
  v116 = v85;
  v117 = v55;
  v118 = v86;
  v119 = v87;
  v120 = v88;
  v121 = v96;
  v122 = v72;
  v123 = v74;
  v124 = v76;
  v125 = v78;
  v126 = 0;
  sub_10000DC24(&v114, &qword_100045D78, &qword_1000360C0);
  return sub_10000DC24(v80, &qword_100045D48, &qword_100036090);
}

uint64_t sub_1000237BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = *(type metadata accessor for ToggleableStyle(0) + 24);
  *(a3 + v4) = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);

  return swift_storeEnumTagMultiPayload();
}

void sub_10002382C(void *a1)
{
  v2 = type metadata accessor for ActivitySelectableRow(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  if (v6)
  {
    v7 = *(*v6 + 96);

    v9 = v7(v8);

    __chkstk_darwin(v10);
    v55[-2] = a1;
    v11 = sub_100023C1C(sub_1000288F0, &v55[-4], v9);
    v9, v12, v13, v14, v15, v16, v17, v18;
    if (v11)
    {
      v19 = (*(*v11 + 112))();
      v55[1] = v4;
      v20 = v3;
      v21 = *(v19 + 32);

      v22 = sub_100033D04();
      v21, v23, v24, v25, v26, v27, v28, v29;
      v30 = [objc_opt_self() shortLocalizedNameForIdentifier:v22];
      v31 = sub_100033D34();
      v33 = v32;

      v34 = (a1 + *(v2 + 44));
      v35 = v34[1];
      v36 = v34[2];
      v55[4] = *v34;
      v55[5] = v35;
      v55[6] = v36;
      v55[2] = v31;
      v55[3] = v33;
      v3 = v20;
      v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

      sub_100001A68(&qword_100045958, &qword_100035C88);
      sub_100033BB4();

      v35, v37, v38, v39, v40, v41, v42, v43;
    }

    v44 = a1[5];
    if ((*(*v44 + 336))())
    {
      (*(*v44 + 248))(0);
      sub_100033024();
      sub_100033014();
      v45 = v44[4];
      sub_1000273CC(a1, v5, type metadata accessor for ActivitySelectableRow);
      v46 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v47 = swift_allocObject();
      sub_100027434(v5, v47 + v46, type metadata accessor for ActivitySelectableRow);

      sub_100033004();

      v45, v48, v49, v50, v51, v52, v53, v54;
    }
  }

  else
  {
    type metadata accessor for ActivityProvider(0);
    sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);
    sub_100033574();
    __break(1u);
  }
}

uint64_t sub_100023C1C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_100034054();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = sub_100033FC4();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_100023D40(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for ActivitySelectableRow(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100033294();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  v15 = sub_100032F84();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = sub_100033104();
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      sub_1000330F4();
      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        (*(v16 + 32))(v18, v14, v15);
        v47 = v51;
        v48 = *(v51 + 40);
        (*(*v48 + 200))(v21, v22);
        (*(v16 + 16))(v12, v18, v15);
        (*(v16 + 56))(v12, 0, 1, v15);
        (*(*v48 + 152))(v12);
        (*(v16 + 8))(v18, v15);
        v30 = v47;
        return (*(**(v30 + 40) + 248))(1);
      }

      v22, v23, v24, v25, v26, v27, v28, v29;
      sub_10000DC24(v14, &qword_100045018, &qword_100034C60);
    }
  }

  sub_100033274();
  v30 = v51;
  sub_1000273CC(v51, v5, type metadata accessor for ActivitySelectableRow);
  v31 = sub_100033284();
  v32 = sub_100033EB4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v52 = v34;
    *v33 = 136315138;
    v35 = *(v5 + 5);

    sub_100028B64(v5, type metadata accessor for ActivitySelectableRow);
    v36 = *(v35 + 24);
    v37 = *(v35 + 32);

    v38 = sub_1000045A0(v36, v37, &v52);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to resolve localized name and/or artwork URL for bundle identifier: %s", v33, 0xCu);
    sub_100006A74(v34);
  }

  else
  {

    sub_100028B64(v5, type metadata accessor for ActivitySelectableRow);
  }

  (*(v49 + 8))(v8, v50);
  return (*(**(v30 + 40) + 248))(1);
}

uint64_t sub_100024210(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_100024244(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_100024290@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);

  return swift_storeEnumTagMultiPayload();
}

void sub_1000242F0(char a1)
{
  v3 = *v1;
  if ((*(**v1 + 488))())
  {
    (*(*v1[1] + 224))(a1 & 1);
    return;
  }

  sub_100006698();
  sub_100033DC4();
  sub_100033DC4();
  if (v44 == v42 && v45 == v43)
  {
    v45, v4, v42, v5, v6, v7, v8, v9;
    v43, v10, v11, v12, v13, v14, v15, v16;
LABEL_7:
    v32 = *(v3 + 24);
    v33 = *(v3 + 32);
    v34 = *(*v1[1] + 232);

    v34(v32, v33, a1 & 1);
    v33, v35, v36, v37, v38, v39, v40, v41;
    return;
  }

  v17 = sub_1000340D4();
  v45, v18, v19, v20, v21, v22, v23, v24;
  v43, v25, v26, v27, v28, v29, v30, v31;
  if (v17)
  {
    goto LABEL_7;
  }

  (*(*v1[1] + 240))();
}

uint64_t sub_1000244A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v44 = a2;
  v43 = sub_100001A68(&qword_100045A70, &qword_100035D30);
  __chkstk_darwin(v43);
  v33 = (&v32 - v3);
  v41 = sub_100001A68(&qword_100045A78, &qword_100035D38);
  __chkstk_darwin(v41);
  v42 = &v32 - v4;
  v5 = type metadata accessor for ToggleableStyle(0);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v5 - 8);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100033864();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v39 = sub_100001A68(&qword_100045A80, &qword_100035D40);
  __chkstk_darwin(v39);
  v11 = &v32 - v10;
  v40 = sub_100001A68(&qword_100045A88, &qword_100035D48);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v35 = &v32 - v12;
  v13 = v2;
  v14 = *v2;
  LOBYTE(v45) = *(*v2 + 16);
  v47 = 1;
  sub_10000D610();
  if ((sub_100033CF4() & 1) != 0 && ((*(*v14 + 488))() & 1) == 0)
  {
    v28 = sub_1000336C4();
    v29 = v33;
    *v33 = v28;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = sub_100001A68(&qword_100045AB8, &qword_100035D68);
    sub_100025034(v38, v2, (v29 + *(v30 + 44)));
    sub_10000DBBC(v29, v42, &qword_100045A70, &qword_100035D30);
    swift_storeEnumTagMultiPayload();
    v31 = sub_10002749C();
    v45 = v39;
    v46 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1000114F8(&qword_100045AB0, &qword_100045A70, &qword_100035D30, &protocol conformance descriptor for HStack<A>);
    sub_100033784();
    return sub_10000DC24(v29, &qword_100045A70, &qword_100035D30);
  }

  else
  {
    *v11 = sub_1000336C4();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v15 = sub_100001A68(&qword_100045A90, &qword_100035D50);
    v16 = v38;
    sub_100024AEC(v13, &v11[*(v15 + 44)]);
    v17 = v39;
    v11[*(v39 + 36)] = 0;
    (*(v8 + 16))(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v7);
    v18 = v13;
    v19 = v36;
    sub_1000273CC(v18, v36, type metadata accessor for ToggleableStyle);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v21 = (v9 + *(v34 + 80) + v20) & ~*(v34 + 80);
    v22 = swift_allocObject();
    (*(v8 + 32))(v22 + v20, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_100027434(v19, v22 + v21, type metadata accessor for ToggleableStyle);
    v23 = sub_10002749C();
    v24 = v35;
    sub_1000339F4();

    sub_10000DC24(v11, &qword_100045A80, &qword_100035D40);
    v25 = v37;
    v26 = v40;
    (*(v37 + 16))(v42, v24, v40);
    swift_storeEnumTagMultiPayload();
    v45 = v17;
    v46 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1000114F8(&qword_100045AB0, &qword_100045A70, &qword_100035D30, &protocol conformance descriptor for HStack<A>);
    sub_100033784();
    return (*(v25 + 8))(v24, v26);
  }
}

uint64_t sub_100024AEC@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v2 = sub_100033844();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = __chkstk_darwin(v2);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v39 - v5;
  v6 = sub_1000333A4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = sub_100033B54();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100033834();
  sub_100033B44();
  (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
  v45 = sub_100033B74();

  (*(v14 + 8))(v16, v13);
  sub_100033C74();
  sub_100033414();
  v58 = 1;
  *&v57[6] = v59;
  *&v57[22] = v60;
  *&v57[38] = v61;
  if (sub_100033834())
  {
    v17 = sub_100033AE4();
  }

  else
  {
    type metadata accessor for ToggleableStyle(0);
    sub_100010E90(v12);
    (*(v7 + 104))(v10, enum case for ColorScheme.dark(_:), v6);
    v18 = sub_100033394();
    v19 = *(v7 + 8);
    v19(v10, v6);
    v19(v12, v6);
    v20 = objc_opt_self();
    if (v18)
    {
      v21 = [v20 systemGray2Color];
    }

    else
    {
      v21 = [v20 systemGray4Color];
    }

    v22 = v21;
    v17 = sub_100033AC4();
  }

  v23 = v17;
  KeyPath = swift_getKeyPath();
  v39 = KeyPath;
  v25 = v40;
  sub_100033854();
  v26 = v42;
  v27 = v43;
  v28 = *(v43 + 16);
  v29 = v44;
  v28(v42, v25, v44);
  v46[0] = v45;
  v46[1] = 0;
  LOWORD(v47[0]) = 257;
  *(v47 + 2) = *v57;
  *(&v47[2] + 2) = *&v57[32];
  *(&v47[1] + 2) = *&v57[16];
  *&v47[3] = *&v57[46];
  *(&v47[3] + 1) = KeyPath;
  v30 = v23;
  v48 = v23;
  v31 = v47[0];
  v32 = v41;
  *v41 = v45;
  v32[1] = v31;
  v33 = v47[1];
  v34 = v47[2];
  v35 = v47[3];
  *(v32 + 10) = v30;
  v32[3] = v34;
  v32[4] = v35;
  v32[2] = v33;
  v36 = sub_100001A68(&qword_100045D28, &unk_100036068);
  v28(v32 + *(v36 + 48), v26, v29);
  sub_10000DBBC(v46, v49, &qword_100045CE0, &qword_100036040);
  v37 = *(v27 + 8);
  v37(v25, v29);
  v37(v26, v29);
  v49[0] = v45;
  v49[1] = 0;
  v50 = 1;
  v51 = 1;
  v52 = *v57;
  v53 = *&v57[16];
  *v54 = *&v57[32];
  *&v54[14] = *&v57[46];
  v55 = v39;
  v56 = v30;
  return sub_10000DC24(v49, &qword_100045CE0, &qword_100036040);
}

uint64_t sub_100025034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a2;
  v68 = a3;
  v4 = sub_100033844();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = __chkstk_darwin(v4);
  v73 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v55 - v7;
  v56 = type metadata accessor for ToggleableStyle(0);
  v62 = *(v56 - 8);
  __chkstk_darwin(v56);
  v63 = v8;
  v64 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_100033864();
  v9 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = v10;
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000333A4();
  v11 = *(v55 - 8);
  v12 = __chkstk_darwin(v55);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v17 = sub_100033B54();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100001A68(&qword_100045CD8, &qword_100036038);
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = __chkstk_darwin(v21);
  v65 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v71 = &v55 - v24;
  sub_100033834();
  sub_100033B44();
  (*(v18 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v17);
  v57 = sub_100033B74();

  (*(v18 + 8))(v20, v17);
  sub_100033C74();
  sub_100033414();
  v80 = 1;
  *&v79[6] = v81[0];
  *&v79[22] = v81[1];
  *&v79[38] = v81[2];
  if (sub_100033834())
  {
    v25 = v58;
    v26 = sub_100033AE4();
  }

  else
  {
    v25 = v58;
    sub_100010E90(v16);
    v27 = v55;
    (*(v11 + 104))(v14, enum case for ColorScheme.dark(_:), v55);
    v28 = sub_100033394();
    v29 = *(v11 + 8);
    v29(v14, v27);
    v29(v16, v27);
    v30 = objc_opt_self();
    if (v28)
    {
      v31 = [v30 systemGray2Color];
    }

    else
    {
      v31 = [v30 systemGray4Color];
    }

    v32 = v31;
    v26 = sub_100033AC4();
  }

  KeyPath = swift_getKeyPath();
  v74 = v57;
  LOWORD(v75[0]) = 257;
  *(v75 + 2) = *v79;
  *(&v75[1] + 2) = *&v79[16];
  *(&v75[2] + 2) = *&v79[32];
  *&v75[3] = *&v79[46];
  *(&v75[3] + 1) = KeyPath;
  v76 = v26;
  v35 = v60;
  v34 = v61;
  (*(v9 + 16))(v60, a1, v61);
  v36 = v64;
  sub_1000273CC(v25, v64, type metadata accessor for ToggleableStyle);
  v37 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v38 = (v59 + *(v62 + 80) + v37) & ~*(v62 + 80);
  v39 = swift_allocObject();
  (*(v9 + 32))(v39 + v37, v35, v34);
  sub_100027434(v36, v39 + v38, type metadata accessor for ToggleableStyle);
  sub_100001A68(&qword_100045CE0, &qword_100036040);
  sub_100028728();
  v40 = v71;
  sub_1000339F4();

  v77[3] = v75[2];
  v77[4] = v75[3];
  v78 = v76;
  v77[0] = v74;
  v77[1] = v75[0];
  v77[2] = v75[1];
  sub_10000DC24(v77, &qword_100045CE0, &qword_100036040);
  v41 = v72;
  sub_100033854();
  v43 = v65;
  v42 = v66;
  v44 = *(v66 + 16);
  v45 = v67;
  v44(v65, v40, v67);
  v46 = v69;
  v64 = *(v69 + 16);
  v47 = v41;
  v48 = v70;
  (v64)(v73, v47, v70);
  v49 = v68;
  v44(v68, v43, v45);
  v50 = &v49[*(sub_100001A68(&qword_100045D20, &qword_100036060) + 48)];
  v51 = v73;
  (v64)(v50, v73, v48);
  v52 = *(v46 + 8);
  v52(v72, v48);
  v53 = *(v42 + 8);
  v53(v71, v45);
  v52(v51, v48);
  return (v53)(v43, v45);
}

uint64_t sub_100025864@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v37 = sub_100001A68(&qword_100045C38, &qword_100035EE8);
  __chkstk_darwin(v37);
  v4 = &v31 - v3;
  v32 = sub_100001A68(&qword_100045C40, &qword_100035EF0);
  __chkstk_darwin(v32);
  v6 = &v31 - v5;
  v35 = sub_100001A68(&qword_100045C48, &qword_100035EF8);
  __chkstk_darwin(v35);
  v8 = &v31 - v7;
  v9 = sub_100001A68(&qword_100045C50, &qword_100035F00);
  v10 = __chkstk_darwin(v9 - 8);
  v38 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = &v31 - v12;
  v41 = sub_1000336C4();
  v57 = 1;
  sub_100025F7C(a1, &v43);
  v68 = *&v44[144];
  v69 = *&v44[160];
  v64 = *&v44[80];
  v65 = *&v44[96];
  v66 = *&v44[112];
  v67 = *&v44[128];
  v60 = *&v44[16];
  v61 = *&v44[32];
  v62 = *&v44[48];
  v63 = *&v44[64];
  v58 = v43;
  v59 = *v44;
  v71[10] = *&v44[144];
  v71[11] = *&v44[160];
  v71[6] = *&v44[80];
  v71[7] = *&v44[96];
  v71[8] = *&v44[112];
  v71[9] = *&v44[128];
  v71[2] = *&v44[16];
  v71[3] = *&v44[32];
  v71[4] = *&v44[48];
  v71[5] = *&v44[64];
  v70 = *&v44[176];
  v72 = *&v44[176];
  v71[0] = v43;
  v71[1] = *v44;
  sub_10000DBBC(&v58, v42, &qword_100045C58, &qword_100035F08);
  sub_10000DC24(v71, &qword_100045C58, &qword_100035F08);
  *(&v56[9] + 7) = v67;
  *(&v56[10] + 7) = v68;
  *(&v56[11] + 7) = v69;
  *(&v56[5] + 7) = v63;
  *(&v56[6] + 7) = v64;
  *(&v56[7] + 7) = v65;
  *(&v56[8] + 7) = v66;
  *(&v56[1] + 7) = v59;
  *(&v56[2] + 7) = v60;
  *(&v56[3] + 7) = v61;
  *(&v56[4] + 7) = v62;
  *(&v56[12] + 7) = v70;
  *(v56 + 7) = v58;
  v13 = v57;
  KeyPath = swift_getKeyPath();
  LOBYTE(v43) = 0;
  v34 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  if (*(a1 + 32))
  {
    sub_100033C44();
    v14 = sub_100033904();
    sub_100033374();
    v15 = &v8[*(v35 + 36)];
    *v15 = v14;
    *(v15 + 1) = v16;
    *(v15 + 2) = v17;
    *(v15 + 3) = v18;
    *(v15 + 4) = v19;
    v15[40] = 0;
    sub_10000DBBC(v8, v6, &qword_100045C48, &qword_100035EF8);
    swift_storeEnumTagMultiPayload();
    sub_100028038();
    sub_1000280F4();
    sub_100033784();
    v20 = v8;
    v21 = &qword_100045C48;
    v22 = &qword_100035EF8;
  }

  else
  {
    sub_100033C44();
    sub_10000DBBC(v4, v6, &qword_100045C38, &qword_100035EE8);
    swift_storeEnumTagMultiPayload();
    sub_100028038();
    sub_1000280F4();
    sub_100033784();
    v20 = v4;
    v21 = &qword_100045C38;
    v22 = &qword_100035EE8;
  }

  sub_10000DC24(v20, v21, v22);
  v23 = v40;
  v24 = v38;
  sub_10000DBBC(v40, v38, &qword_100045C50, &qword_100035F00);
  *(&v42[20] + 1) = v56[9];
  *(&v42[22] + 1) = v56[10];
  *(&v42[24] + 1) = v56[11];
  *(&v42[25] + 2) = *(&v56[11] + 9);
  *(&v42[12] + 1) = v56[5];
  *(&v42[14] + 1) = v56[6];
  *(&v42[16] + 1) = v56[7];
  *(&v42[18] + 1) = v56[8];
  *(&v42[4] + 1) = v56[1];
  *(&v42[6] + 1) = v56[2];
  *(&v42[8] + 1) = v56[3];
  *(&v42[10] + 1) = v56[4];
  v42[0] = v41;
  v42[1] = 0;
  LOBYTE(v42[2]) = v13;
  *(&v42[2] + 1) = v56[0];
  LODWORD(v37) = v13;
  *(&v42[27] + 2) = v75;
  HIWORD(v42[27]) = v76;
  v25 = KeyPath;
  v42[28] = KeyPath;
  v42[29] = 1;
  LOBYTE(v42[30]) = 0;
  *(&v42[30] + 1) = *v74;
  HIDWORD(v42[30]) = *&v74[3];
  v27 = v33;
  v26 = v34;
  v42[31] = v34;
  LOBYTE(v42[32]) = 1;
  *(&v42[32] + 1) = *v73;
  HIDWORD(v42[32]) = *&v73[3];
  v42[33] = v33;
  v42[34] = 0x3FE0000000000000;
  v28 = v39;
  memcpy(v39, v42, 0x118uLL);
  v29 = sub_100001A68(&qword_100045C80, &qword_100035FA0);
  sub_10000DBBC(v24, v28 + *(v29 + 48), &qword_100045C50, &qword_100035F00);
  sub_10000DBBC(v42, &v43, &qword_100045C88, &qword_100035FA8);
  sub_10000DC24(v23, &qword_100045C50, &qword_100035F00);
  sub_10000DC24(v24, &qword_100045C50, &qword_100035F00);
  *&v44[145] = v56[9];
  *&v44[161] = v56[10];
  *&v44[177] = v56[11];
  *&v44[186] = *(&v56[11] + 9);
  *&v44[81] = v56[5];
  *&v44[97] = v56[6];
  *&v44[113] = v56[7];
  *&v44[129] = v56[8];
  *&v44[17] = v56[1];
  *&v44[33] = v56[2];
  *&v44[49] = v56[3];
  *&v44[65] = v56[4];
  v43 = v41;
  v44[0] = v37;
  *&v44[1] = v56[0];
  v45 = v75;
  v46 = v76;
  v47 = v25;
  v48 = 1;
  v49 = 0;
  *v50 = *v74;
  *&v50[3] = *&v74[3];
  v51 = v26;
  v52 = 1;
  *v53 = *v73;
  *&v53[3] = *&v73[3];
  v54 = v27;
  v55 = 0x3FE0000000000000;
  return sub_10000DC24(&v43, &qword_100045C88, &qword_100035FA8);
}

void sub_100025F7C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100033704();
  __chkstk_darwin(v3 - 8);
  v4 = a1[3];
  *&v159 = a1[2];
  *(&v159 + 1) = v4;
  sub_100028204();

  v5 = sub_1000339A4();
  v111 = v6;
  v112 = v5;
  v103 = v7;
  v106 = v8;
  v105 = sub_100033B14();
  KeyPath = swift_getKeyPath();
  v108 = 0;
  v109 = 0;
  v9 = 0;
  v107 = 0;
  if (*(a1 + 33))
  {
    sub_1000336F4();
    v167._countAndFlagsBits = 546603234;
    v167._object = 0xA400000000000000;
    sub_1000336E4(v167);
    sub_1000336D4(*(a1 + 5));
    v168._countAndFlagsBits = 0;
    v168._object = 0xE000000000000000;
    sub_1000336E4(v168);
    sub_100033724();
    v10 = sub_100033994();
    v12 = v11;
    v14 = v13;
    v110 = v15;
    v16 = [objc_opt_self() systemGray2Color];
    sub_100033AC4();
    v17 = sub_100033974();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_1000283F8(v10, v12, v14 & 1, v24, v25, v26, v27, v28);
    v110, v29, v30, v31, v32, v33, v34, v35;
    v9 = v21 & 1;
    v108 = v19;
    v109 = v17;
    sub_100028360(v17, v19, v21 & 1);
    v107 = v23;
  }

  v101 = v9;
  if (a1[1])
  {
    if (*a1)
    {
      sub_100033714();
      v36 = sub_100033994();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = sub_100033924();
      sub_100033374();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = v40 & 1;
      LOBYTE(v159) = v40 & 1;
      LOBYTE(v151) = 0;
      v53 = [objc_opt_self() systemGray2Color];
      v54 = sub_100033AC4();
      v55 = swift_getKeyPath();
      *&v114 = v36;
      *(&v114 + 1) = v38;
      LOBYTE(v115) = v52;
      *(&v115 + 1) = v42;
      LOBYTE(v116) = v43;
      *(&v116 + 1) = v45;
      *&v117 = v47;
      *(&v117 + 1) = v49;
      *&v118 = v51;
      BYTE8(v118) = 0;
      HIDWORD(v118) = *(&v159 + 3);
      *(&v118 + 9) = v159;
      *&v119 = v55;
      *(&v119 + 1) = v54;
      v127 = v114;
      v128 = v115;
      v131 = v118;
      v132 = v119;
      v129 = v116;
      v130 = v117;
      v120 = v114;
      v121 = v115;
      v124 = v118;
      v125 = v119;
      v122 = v116;
      v123 = v117;
      *&v113[7] = v114;
      *&v113[23] = v115;
      *&v113[87] = v119;
      *&v113[71] = v118;
      *&v113[55] = v117;
      *&v113[39] = v116;
      *&v126[0] = 0;
      BYTE8(v126[0]) = 1;
      *(v126 + 9) = *v113;
      *(&v126[2] + 9) = *&v113[32];
      *(&v126[1] + 9) = *&v113[16];
      *(&v126[6] + 1) = v54;
      *(&v126[5] + 9) = *&v113[80];
      *(&v126[4] + 9) = *&v113[64];
      *(&v126[3] + 9) = *&v113[48];
      v135 = v126[0];
      v136 = v126[1];
      v140 = v126[5];
      v141 = v126[6];
      v138 = v126[3];
      v139 = v126[4];
      v137 = v126[2];
      sub_10000DBBC(&v114, &v159, &qword_100045CC0, &qword_100036028);
      sub_10000DBBC(&v120, &v159, &qword_100045CC0, &qword_100036028);
      sub_10000DC24(&v127, &qword_100045CC0, &qword_100036028);
      v133 = 1;
      v163 = v139;
      v164 = v140;
      v165 = v141;
      v159 = v135;
      v160 = v136;
      v161 = v137;
      v162 = v138;
      LOBYTE(v166) = 1;
      sub_10000DBBC(v126, &v151, &qword_100045CC8, &qword_100036030);
      sub_100001A68(&qword_100045CB0, &qword_100035FE8);
      sub_1000114F8(&qword_100045CA8, &qword_100045CB0, &qword_100035FE8, &protocol conformance descriptor for TupleView<A>);
      sub_100033784();
      v163 = v147;
      v164 = v148;
      v165 = v149;
      v166 = v150;
      v159 = v143;
      v160 = v144;
      v161 = v145;
      v162 = v146;
      v134 = 0;
      sub_100001A68(&qword_100045C98, &qword_100035FE0);
      sub_1000282B0();
      sub_100033784();
      sub_10000DC24(v126, &qword_100045CC8, &qword_100036030);
      sub_10000DC24(&v114, &qword_100045CC0, &qword_100036028);
      v163 = v155;
      v164 = v156;
      v165 = v157;
      v166 = v158;
      v159 = v151;
      v160 = v152;
      v161 = v153;
      v162 = v154;
    }

    else
    {
      LOBYTE(v143) = 1;
      HIBYTE(v158) = 1;
      sub_100001A68(&qword_100045C98, &qword_100035FE0);
      sub_1000282B0();
      sub_100033784();
    }
  }

  else
  {
    *&v151 = *a1;
    sub_100028408();
    *&v159 = sub_100033F44();
    *(&v159 + 1) = v56;
    v57 = sub_1000339A4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = sub_100033924();
    sub_100033374();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = v61 & 1;
    LOBYTE(v159) = v61 & 1;
    LOBYTE(v151) = 0;
    v74 = [objc_opt_self() systemGray2Color];
    v75 = sub_100033AC4();
    v76 = swift_getKeyPath();
    *&v114 = v57;
    *(&v114 + 1) = v59;
    LOBYTE(v115) = v73;
    *(&v115 + 1) = v63;
    LOBYTE(v116) = v64;
    *(&v116 + 1) = v66;
    *&v117 = v68;
    *(&v117 + 1) = v70;
    *&v118 = v72;
    BYTE8(v118) = 0;
    *&v119 = v76;
    *(&v119 + 1) = v75;
    v127 = v114;
    v128 = v115;
    v131 = v118;
    v132 = v119;
    v129 = v116;
    v130 = v117;
    v120 = v114;
    v121 = v115;
    v124 = v118;
    v125 = v119;
    v122 = v116;
    v123 = v117;
    *&v113[7] = v114;
    *&v113[23] = v115;
    *&v113[87] = v119;
    *&v113[71] = v118;
    *&v113[55] = v117;
    *&v113[39] = v116;
    *&v126[0] = 0;
    BYTE8(v126[0]) = 1;
    *(v126 + 9) = *v113;
    *(&v126[2] + 9) = *&v113[32];
    *(&v126[1] + 9) = *&v113[16];
    *(&v126[6] + 1) = v75;
    *(&v126[5] + 9) = *&v113[80];
    *(&v126[4] + 9) = *&v113[64];
    *(&v126[3] + 9) = *&v113[48];
    v135 = v126[0];
    v136 = v126[1];
    v140 = v126[5];
    v141 = v126[6];
    v138 = v126[3];
    v139 = v126[4];
    v137 = v126[2];
    sub_10000DBBC(&v114, &v159, &qword_100045CC0, &qword_100036028);
    sub_10000DBBC(&v120, &v159, &qword_100045CC0, &qword_100036028);
    sub_10000DC24(&v127, &qword_100045CC0, &qword_100036028);
    v133 = 0;
    v163 = v139;
    v164 = v140;
    v165 = v141;
    v159 = v135;
    v160 = v136;
    v161 = v137;
    v162 = v138;
    LOBYTE(v166) = 0;
    sub_10000DBBC(v126, &v151, &qword_100045CC8, &qword_100036030);
    sub_100001A68(&qword_100045CB0, &qword_100035FE8);
    sub_1000114F8(&qword_100045CA8, &qword_100045CB0, &qword_100035FE8, &protocol conformance descriptor for TupleView<A>);
    sub_100033784();
    v163 = v147;
    v164 = v148;
    v165 = v149;
    v166 = v150;
    v159 = v143;
    v160 = v144;
    v161 = v145;
    v162 = v146;
    v134 = 0;
    sub_100001A68(&qword_100045C98, &qword_100035FE0);
    sub_1000282B0();
    sub_100033784();
    sub_10000DC24(v126, &qword_100045CC8, &qword_100036030);
    sub_10000DC24(&v114, &qword_100045CC0, &qword_100036028);
    v163 = v155;
    v164 = v156;
    v165 = v157;
    v166 = v158;
    v159 = v151;
    v160 = v152;
    v161 = v153;
    v162 = v154;
  }

  v139 = v163;
  v140 = v164;
  v141 = v165;
  v135 = v159;
  v136 = v160;
  v137 = v161;
  v138 = v162;
  v145 = v161;
  v146 = v162;
  v142 = v166;
  LOBYTE(v126[0]) = v103 & 1;
  v143 = v159;
  v144 = v160;
  v150 = v166;
  v148 = v164;
  v149 = v165;
  v147 = v163;
  sub_100028360(v112, v111, v103 & 1);

  sub_100028370(v109, v108, v101, v107);
  sub_10000DBBC(&v143, &v151, &qword_100045CB8, &qword_100035FF0);
  sub_1000283B4(v109, v108, v101, v107, v77, v78, v79, v80);
  v81 = v126[0];
  *a2 = v112;
  a2[1] = v111;
  *(a2 + 16) = v81;
  a2[3] = v106;
  a2[4] = KeyPath;
  a2[5] = v105;
  a2[6] = v109;
  a2[7] = v108;
  a2[8] = v101;
  a2[9] = v107;
  v82 = v148;
  *(a2 + 9) = v147;
  *(a2 + 10) = v82;
  *(a2 + 11) = v149;
  *(a2 + 96) = v150;
  v83 = v144;
  *(a2 + 5) = v143;
  *(a2 + 6) = v83;
  v84 = v146;
  *(a2 + 7) = v145;
  *(a2 + 8) = v84;
  v155 = v139;
  v156 = v140;
  v157 = v141;
  v158 = v142;
  v151 = v135;
  v152 = v136;
  v153 = v137;
  v154 = v138;
  sub_10000DC24(&v151, &qword_100045CB8, &qword_100035FF0);
  sub_1000283B4(v109, v108, v101, v107, v85, v86, v87, v88);
  sub_1000283F8(v112, v111, v103 & 1, v89, v90, v91, v92, v93);

  v106, v94, v95, v96, v97, v98, v99, v100;
}

uint64_t sub_100026A4C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100033744();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100001A68(&qword_100045C30, &qword_100035EE0);
  return sub_100025864(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_100026AA4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_100001A68(&qword_100045A00, &qword_100035CF0);
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = &v26 - v2;
  v4 = sub_100001A68(&qword_100045D80, &qword_1000360C8);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_100033B54();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001A68(&qword_1000459E0, &qword_100035CE0);
  __chkstk_darwin(v11);
  v13 = (&v26 - v12);
  if (sub_1000334B4())
  {
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v14 = sub_100033B74();
    (*(v8 + 8))(v10, v7);
    v15 = v13 + *(v11 + 36);
    v16 = *(sub_100033534() + 20);
    v17 = enum case for RoundedCornerStyle.continuous(_:);
    v18 = sub_100033734();
    (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
    __asm { FMOV            V0.2D, #5.0 }

    *v15 = _Q0;
    *&v15[*(sub_100001A68(&qword_1000459F0, &qword_100035CE8) + 36)] = 256;
    *v13 = v14;
    sub_10000DBBC(v13, v6, &qword_1000459E0, &qword_100035CE0);
    swift_storeEnumTagMultiPayload();
    sub_100026F84();
    sub_1000114F8(&qword_1000459F8, &qword_100045A00, &qword_100035CF0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100033784();

    return sub_10000DC24(v13, &qword_1000459E0, &qword_100035CE0);
  }

  else
  {
    sub_1000333F4();
    v25 = v27;
    (*(v1 + 16))(v6, v3, v27);
    swift_storeEnumTagMultiPayload();
    sub_100026F84();
    sub_1000114F8(&qword_1000459F8, &qword_100045A00, &qword_100035CF0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100033784();
    return (*(v1 + 8))(v3, v25);
  }
}

unint64_t sub_100026ECC()
{
  result = qword_1000459D0;
  if (!qword_1000459D0)
  {
    sub_100006924(&qword_1000459C8, &qword_100035CD8);
    sub_100026F84();
    sub_1000114F8(&qword_1000459F8, &qword_100045A00, &qword_100035CF0, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459D0);
  }

  return result;
}

unint64_t sub_100026F84()
{
  result = qword_1000459D8;
  if (!qword_1000459D8)
  {
    sub_100006924(&qword_1000459E0, &qword_100035CE0);
    sub_1000114F8(&qword_1000459E8, &qword_1000459F0, &qword_100035CE8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000459D8);
  }

  return result;
}

uint64_t sub_10002705C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100027094()
{
  result = qword_100045A38;
  if (!qword_100045A38)
  {
    sub_100006924(&qword_100045A30, &qword_100035D20);
    sub_100006924(&qword_100045A20, &qword_100035D10);
    type metadata accessor for ToggleableStyle(255);
    sub_1000271AC();
    sub_100021098(&qword_100045A58, type metadata accessor for ToggleableStyle, &unk_100035DC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A38);
  }

  return result;
}

unint64_t sub_1000271AC()
{
  result = qword_100045A40;
  if (!qword_100045A40)
  {
    sub_100006924(&qword_100045A20, &qword_100035D10);
    sub_100027238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A40);
  }

  return result;
}

unint64_t sub_100027238()
{
  result = qword_100045A48;
  if (!qword_100045A48)
  {
    sub_100006924(&qword_100045A18, &qword_100035D08);
    sub_1000114F8(&qword_100045A50, &qword_100045A10, &qword_100035D00, &protocol conformance descriptor for Toggle<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A48);
  }

  return result;
}

void sub_1000272FC()
{
  v1 = *(type metadata accessor for ActivitySelectableRow(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_10002382C(v2);
}

uint64_t sub_10002735C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_100045A30, &qword_100035D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000273CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100027434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002749C()
{
  result = qword_100045A98;
  if (!qword_100045A98)
  {
    sub_100006924(&qword_100045A80, &qword_100035D40);
    sub_1000114F8(&qword_100045AA0, &qword_100045AA8, &qword_100035D58, &protocol conformance descriptor for HStack<A>);
    sub_1000114F8(&qword_1000453F0, &qword_1000453F8, &qword_100035D60, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045A98);
  }

  return result;
}

uint64_t sub_1000275CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002769C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002774C(uint64_t a1)
{
  sub_10002787C(319);
  if (v1 <= 0x3F)
  {
    sub_100027910(319);
    if (v2 <= 0x3F)
    {
      sub_1000279A4(319, &qword_100045B28, &type metadata for Bool, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_100010C38(319);
        if (v4 <= 0x3F)
        {
          sub_1000279A4(319, &unk_100045B30, &type metadata for String, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002787C(uint64_t a1)
{
  if (!qword_100045B18)
  {
    type metadata accessor for ActivityProvider(255);
    sub_100021098(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);
    v1 = sub_1000335A4();
    if (!v2)
    {
      atomic_store(v1, &qword_100045B18);
    }
  }
}

void sub_100027910(uint64_t a1)
{
  if (!qword_100045B20)
  {
    type metadata accessor for ActivityItem(255);
    sub_100021098(&qword_100045950, type metadata accessor for ActivityItem, &unk_100034FC0);
    v1 = sub_100033484();
    if (!v2)
    {
      atomic_store(v1, &qword_100045B20);
    }
  }
}

void sub_1000279A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100027A08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100027AD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100027B88(uint64_t a1)
{
  type metadata accessor for ActivityItem(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActivityProvider(319);
    if (v2 <= 0x3F)
    {
      sub_100010C38(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100027C28()
{
  result = qword_100045C00;
  if (!qword_100045C00)
  {
    sub_100006924(&qword_100045C08, &qword_100035E48);
    sub_1000114F8(&qword_100045998, &qword_100045988, &qword_100035CC0, &protocol conformance descriptor for AsyncImage<A>);
    sub_1000225FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C00);
  }

  return result;
}

unint64_t sub_100027CE4()
{
  result = qword_100045C10;
  if (!qword_100045C10)
  {
    sub_100006924(&qword_100045C18, &qword_100035E50);
    sub_100027094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C10);
  }

  return result;
}

unint64_t sub_100027D74()
{
  result = qword_100045C20;
  if (!qword_100045C20)
  {
    sub_100006924(&qword_100045C28, &qword_100035E58);
    sub_100006924(&qword_100045A80, &qword_100035D40);
    sub_10002749C();
    swift_getOpaqueTypeConformance2();
    sub_1000114F8(&qword_100045AB0, &qword_100045A70, &qword_100035D30, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C20);
  }

  return result;
}

uint64_t sub_100027E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100027EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100027F28@<X0>(uint64_t a1@<X8>)
{
  result = sub_100033674();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100027F8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100033614();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100028038()
{
  result = qword_100045C60;
  if (!qword_100045C60)
  {
    sub_100006924(&qword_100045C48, &qword_100035EF8);
    sub_100021098(&qword_100045C68, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C60);
  }

  return result;
}

unint64_t sub_1000280F4()
{
  result = qword_100045C70;
  if (!qword_100045C70)
  {
    sub_100006924(&qword_100045C38, &qword_100035EE8);
    sub_100021098(&qword_100045C68, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_1000281B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C70);
  }

  return result;
}

unint64_t sub_1000281B0()
{
  result = qword_100045C78;
  if (!qword_100045C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C78);
  }

  return result;
}

unint64_t sub_100028204()
{
  result = qword_100045C90;
  if (!qword_100045C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045C90);
  }

  return result;
}

uint64_t sub_100028258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000335C4();
  *a1 = result;
  return result;
}

unint64_t sub_1000282B0()
{
  result = qword_100045CA0;
  if (!qword_100045CA0)
  {
    sub_100006924(&qword_100045C98, &qword_100035FE0);
    sub_1000114F8(&qword_100045CA8, &qword_100045CB0, &qword_100035FE8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045CA0);
  }

  return result;
}

double sub_100028360(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_100028370(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100028360(a1, a2, a3 & 1);
  }

  return result;
}

void sub_1000283B4(uint64_t a1, ActivityPickerServiceViewController *a2, char a3, ActivityPickerServiceViewController *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  if (a4)
  {
    sub_1000283F8(a1, a2, a3 & 1, a4, a5, a6, a7, a8);

    a4, v9, v10, v11, v12, v13, v14, v15;
  }
}

void sub_1000283F8(uint64_t a1, ActivityPickerServiceViewController *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  if (a3)
  {
  }

  else
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

unint64_t sub_100028408()
{
  result = qword_100045CD0;
  if (!qword_100045CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045CD0);
  }

  return result;
}

uint64_t sub_100028460()
{
  v1 = sub_100033864();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ToggleableStyle(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = v6[8];
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000333A4();
    (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

void sub_100028614()
{
  sub_100033864();
  type metadata accessor for ToggleableStyle(0);
  v0 = sub_100033824();
  *v1 = !*v1;
  v0(&v3, 0);
  v2 = sub_100033834();
  sub_1000242F0(v2 & 1);
}

unint64_t sub_100028728()
{
  result = qword_100045CE8;
  if (!qword_100045CE8)
  {
    sub_100006924(&qword_100045CE0, &qword_100036040);
    sub_1000287E0();
    sub_1000114F8(&qword_100045D10, &qword_100045D18, &qword_100036058, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045CE8);
  }

  return result;
}

unint64_t sub_1000287E0()
{
  result = qword_100045CF0;
  if (!qword_100045CF0)
  {
    sub_100006924(&qword_100045CF8, &qword_100036048);
    sub_10002886C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045CF0);
  }

  return result;
}

unint64_t sub_10002886C()
{
  result = qword_100045D00;
  if (!qword_100045D00)
  {
    sub_100006924(&qword_100045D08, &qword_100036050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045D00);
  }

  return result;
}

uint64_t sub_1000288F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = (*(**a1 + 160))();
  v14 = *(v2 + 40);
  v13[2] = &v14;
  v4 = sub_10001FA50(sub_100028C54, v13, v3);
  v3, v5, v6, v7, v8, v9, v10, v11;
  return v4 & 1;
}

uint64_t sub_10002899C()
{
  v1 = type metadata accessor for ActivitySelectableRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 40);
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000333A4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  *(v5 + *(v1 + 44) + 8), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100028AF4(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivitySelectableRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100023D40(a1, v4);
}

uint64_t sub_100028B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100028BC4(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for ActivityItem(0);
  sub_100021098(&qword_100045060, type metadata accessor for ActivityItem, &unk_100034F98);
  return sub_100033CF4() & 1;
}

uint64_t sub_100028D20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for ActivityPickerViewConfiguration(0);
  v4 = sub_10002CD04(&qword_100045D98, type metadata accessor for ActivityPickerViewConfiguration, &unk_100035700);

  return ObservedObject.projectedValue.getter(v1, v2, v3, v4);
}

uint64_t sub_100028DF0(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(0);
  sub_10002CD04(a3, a4, a5);

  return sub_100033464();
}

uint64_t sub_100028E70(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_100028EBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ActivityProvider(0);
  v4 = sub_10002CD04(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);

  return ObservedObject.projectedValue.getter(v1, v2, v3, v4);
}

void sub_100028F4C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*sub_100028F8C(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100028FD8;
}

void sub_100028FD8(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100029034()
{
  v1 = *(v0 + 48);

  return v1;
}

const char *sub_100029070(uint64_t (*a1)(uint64_t *), const char *a2, unint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v10 = a3;
  v30 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v13 = sub_100034054();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_3:
      v14 = 0;
      v27 = v10 & 0xFFFFFFFFFFFFFF8;
      v28 = v10 & 0xC000000000000001;
      v26 = v10;
      while (1)
      {
        if (v28)
        {
          v15 = sub_100033FC4();
          v23 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v10, v16, v17, v18, v19, v20, v21, v22;

            return v8;
          }
        }

        else
        {
          if (v14 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v15 = *&v10->tokenEncoder[8 * v14];

          v23 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_14;
          }
        }

        v29 = v15;
        v8 = a2;
        v24 = a1(&v29);
        if (v9)
        {
          goto LABEL_15;
        }

        if (v24)
        {
          sub_100033FF4();
          sub_100034024();
          v10 = v26;
          sub_100034034();
          v8 = &v30;
          sub_100034004();
        }

        else
        {
        }

        ++v14;
        if (v23 == v13)
        {
          v8 = v30;
          goto LABEL_20;
        }
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_20:
  v10, a2, a3, a4, a5, a6, a7, a8;
  return v8;
}

void sub_10002922C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a4 + 48) = 0xD000000000000011;
  *(a4 + 56) = 0x800000010003AF50;
  sub_100033B94();
  *(a4 + 64) = v14;
  *(a4 + 80) = v15;
  type metadata accessor for ActivityPickerViewConfiguration(0);
  sub_10002CD04(&qword_100045D98, type metadata accessor for ActivityPickerViewConfiguration, &unk_100035700);

  *a4 = sub_100033464();
  *(a4 + 8) = v8;
  type metadata accessor for ActivityProvider(0);
  sub_10002CD04(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);

  *(a4 + 16) = sub_100033464();
  *(a4 + 24) = v9;
  v10 = swift_unknownObjectWeakAssign();
  if ((*(*a1 + 104))(v10))
  {
    type metadata accessor for ActivityPickerServiceView.ActivityPickerServiceSelectionsObserver();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v11 + 16) = a2;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v12 = *(**(v11 + 16) + 152);

    v12(v13, &off_1000421C8);
  }

  else
  {

    v11 = 0;
  }

  *(a4 + 40) = v11;
}

uint64_t sub_100029484(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = *(**(v4 + 16) + 152);

  v5(v6, &off_1000421C8);

  return v4;
}

uint64_t sub_100029588@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001A68(&qword_100045DA0, &qword_1000360F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v28 = sub_100001A68(&qword_100045DA8, &qword_1000360F8);
  __chkstk_darwin(v28);
  v8 = &v27 - v7;
  v9 = sub_100001A68(&qword_100045DB0, &qword_100036100);
  v10 = __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = (*(**(v1 + 8) + 104))(v10);
  v29 = v1;
  if (v13)
  {
    sub_100001A68(&qword_100045E40, &unk_100036150);
    v14 = sub_100006924(&qword_100045DE0, &qword_100036128);
    v15 = sub_10002B4A4();
    v30 = v14;
    v31 = v15;
    swift_getOpaqueTypeConformance2();
    sub_1000334E4();
    sub_10001891C(v1, &v30);
    v16 = swift_allocObject();
    sub_10002B740(&v30, v16 + 16);
    v17 = &v12[*(v9 + 36)];
    *v17 = 0;
    *(v17 + 1) = 0;
    *(v17 + 2) = sub_10002B778;
    *(v17 + 3) = v16;
    sub_10002B810(v12, v8);
    swift_storeEnumTagMultiPayload();
    sub_10002B67C();
    sub_1000114F8(&qword_100045E38, &qword_100045DA0, &qword_1000360F0, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100033784();
    return sub_10000DC24(v12, &qword_100045DB0, &qword_100036100);
  }

  else
  {
    sub_100001A68(&qword_100045DB8, &qword_100036108);
    v19 = sub_100006924(&qword_100045DC0, &qword_100036110);
    v20 = sub_100006924(&qword_100045DC8, &qword_100036118);
    v21 = sub_100006924(&qword_100045DD0, &qword_100036120);
    v27 = a1;
    v22 = v21;
    v23 = sub_10002B390();
    v30 = v22;
    v31 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v25 = sub_10002B628();
    v30 = &type metadata for ActivityPickerToolbar;
    v31 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    v30 = v19;
    v31 = v20;
    v32 = OpaqueTypeConformance2;
    v33 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1000334E4();
    (*(v4 + 16))(v8, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_10002B67C();
    sub_1000114F8(&qword_100045E38, &qword_100045DA0, &qword_1000360F0, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100033784();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100029A40()
{
  v0 = sub_100001A68(&qword_100045DE0, &qword_100036128);
  __chkstk_darwin(v0);
  v2 = &v12 - v1;
  sub_100029BB0(&v12 - v1);
  sub_100001A68(&qword_100045F20, &qword_100036298);
  sub_100033554();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000360E0;
  sub_100033544();
  sub_10002B4A4();
  sub_100033A84();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_10000DC24(v2, &qword_100045DE0, &qword_100036128);
}

uint64_t sub_100029BB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_1000337B4();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100033804();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001A68(&qword_100045DF8, &qword_100036138);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = sub_100001A68(&qword_100045DF0, &qword_100036130);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v42 = v1;
  sub_100001A68(&qword_100045F28, &qword_1000362A0);
  sub_10002BF74();
  sub_100033964();
  sub_1000337F4();
  v17 = sub_1000114F8(&qword_100045E00, &qword_100045DF8, &qword_100036138, &protocol conformance descriptor for List<A, B>);
  sub_100033AB4();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v18 = *(v1 + 80);
  v47 = *(v1 + 64);
  v48 = v18;
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BC4();
  v19 = v46;
  v20 = v38;
  sub_1000337A4();
  v43 = v9;
  v44 = v5;
  v45 = v17;
  v46 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v21 = v36;
  v22 = v39;
  sub_1000339D4();
  v19, v23, v24, v25, v26, v27, v28, v29;

  (*(v40 + 8))(v20, v41);
  (*(v37 + 8))(v16, v21);
  v30 = sub_100033C74();
  v32 = v31;
  v33 = v22 + *(sub_100001A68(&qword_100045DE0, &qword_100036128) + 36);
  sub_10002AACC(v2, v33);
  result = sub_100001A68(&qword_100045E10, &qword_100036140);
  v35 = (v33 + *(result + 36));
  *v35 = v30;
  v35[1] = v32;
  return result;
}

uint64_t sub_10002A01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1000336B4();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001A68(&qword_100045DE0, &qword_100036128);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = sub_100001A68(&qword_100045FF8, &qword_100036368);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v35 = sub_100001A68(&qword_100045DD0, &qword_100036120);
  __chkstk_darwin(v35);
  v13 = &v30 - v12;
  v14 = sub_100001A68(&qword_100045DC0, &qword_100036110);
  v15 = *(v14 - 8);
  v37 = v14;
  v38 = v15;
  __chkstk_darwin(v14);
  v31 = &v30 - v16;
  sub_100029BB0(v7);
  v32 = a1;
  v17 = *(a1 + 56);
  v43 = *(a1 + 48);
  v44 = v17;
  v18 = sub_10002B4A4();
  v19 = sub_100028204();
  sub_100033A14();
  sub_10000DC24(v7, &qword_100045DE0, &qword_100036128);
  v43 = v5;
  v44 = &type metadata for String;
  v45 = v18;
  v46 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v33;
  sub_100033A54();
  (*(v34 + 8))(v11, v20);
  v22 = v39;
  v21 = v40;
  v23 = v36;
  (*(v39 + 104))(v36, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v40);
  v24 = sub_10002B390();
  v25 = v31;
  v26 = v35;
  sub_100033A64();
  (*(v22 + 8))(v23, v21);
  sub_10000DC24(v13, &qword_100045DD0, &qword_100036120);
  v42 = v32;
  sub_100001A68(&qword_100045DC8, &qword_100036118);
  v43 = v26;
  v44 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = sub_10002B628();
  v43 = &type metadata for ActivityPickerToolbar;
  v44 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v37;
  sub_100033A74();
  return (*(v38 + 8))(v25, v28);
}

uint64_t sub_10002A4A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  (*(*v1 + 152))();
  if (v2)
  {
    sub_100028204();
    sub_1000339A4();
  }

  (*(*v1 + 200))();
  if (v3)
  {
    sub_100028204();
    v4 = sub_1000339A4();
  }

  else
  {
    v4 = 0;
  }

  __chkstk_darwin(v4);
  sub_100001A68(&qword_100045F40, &qword_1000362A8);
  sub_100001A68(&qword_100045F50, &qword_1000362B0);
  sub_10002C004();
  sub_10002C080();
  return sub_100033C64();
}

uint64_t sub_10002A64C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_100028204();
  return sub_1000339A4();
}

unint64_t sub_10002A6A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001A68(&qword_100045F58, &qword_1000362B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - v8;
  v10 = *a1;
  v11 = *(a2 + 24);
  v12 = *(*v11 + 96);

  result = v12(v13);
  if (!(result >> 62))
  {
    v22 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = a3;
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_11:
    result, v15, v16, v17, v18, v19, v20, v21;
    v56 = v10;
    goto LABEL_12;
  }

  v36 = result;
  v22 = sub_100034054();
  result = v36;
  v47 = a3;
  if (!v22)
  {
    goto LABEL_11;
  }

LABEL_3:
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_15:
    v25 = result;
    v26 = sub_100033FC4();
LABEL_8:
    v25, v27, v28, v29, v30, v31, v32, v33;
    v56 = v10;
    if (v26)
    {
      *&v54[0] = v26;
      type metadata accessor for ActivityGroup(0);
      sub_10002CD04(&qword_100044E38, type metadata accessor for ActivityGroup, &unk_100034B40);
      v34 = sub_100033CF4();

      v35 = v34 ^ 1;
LABEL_13:
      v37 = sub_10000F43C();
      v39 = v38;
      v40 = sub_1000115AC();
      sub_10000F484(v37, v39, v40, v41, v35 & 1, v58);
      type metadata accessor for ActivityProvider(0);
      sub_10002CD04(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);
      v42 = sub_1000332A4();
      type metadata accessor for ActivityGroup(0);
      sub_10002CD04(&qword_100045320, type metadata accessor for ActivityGroup, &unk_100034B68);

      v43 = sub_1000332A4();
      v57 = 0;
      v48 = v58[0];
      v49 = v58[1];
      v50 = v58[2];
      *&v51 = v59;
      *(&v51 + 1) = v42;
      *&v52 = v11;
      *(&v52 + 1) = v43;
      *&v53[0] = v10;
      *(v53 + 8) = 0u;
      *(&v53[1] + 8) = 0u;
      BYTE8(v53[2]) = 0;

      sub_100033404();
      v44 = sub_100001A68(&qword_100045F60, &qword_1000362C0);
      v45 = sub_10002C184();
      sub_100033A24();
      v54[4] = v52;
      v54[5] = v53[0];
      v55[0] = v53[1];
      *(v55 + 9) = *(&v53[1] + 9);
      v54[0] = v48;
      v54[1] = v49;
      v54[2] = v50;
      v54[3] = v51;
      sub_10002CC9C(v54);
      sub_100033404();
      *&v48 = v44;
      *(&v48 + 1) = v45;
      swift_getOpaqueTypeConformance2();
      sub_100033A44();
      return (*(v7 + 8))(v9, v6);
    }

LABEL_12:

    v35 = 1;
    goto LABEL_13;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v24 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = result;
    v26 = *(result + 8 * v24 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002AACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001A68(&qword_100045FB8, &qword_1000362F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = *(a1 + 80);
  v24 = *(a1 + 64);
  v25 = v8;
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  v10 = v22[1];
  v9 = v23;
  v23, v11, v12, v13, v14, v15, v16, v17;
  v19 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v19 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    __chkstk_darwin(v18);
    v22[-2] = a1;
    sub_100001A68(&qword_100045FC0, &qword_1000362F8);
    sub_10002C538();
    sub_100033964();
    (*(v5 + 32))(a2, v7, v4);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  return (*(v5 + 56))(a2, v20, 1, v4);
}

void *sub_10002AC98()
{
  v1 = v0;
  v2 = *(v0 + 80);
  v83 = *(v0 + 64);
  v84 = v2;
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  v82, v3, v4, v5, v6, v7, v8, v9;
  v10 = (v82 >> 56) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v10 = v81 & 0xFFFFFFFFFFFFLL;
  }

  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v81 = _swiftEmptyArrayStorage;
    v12 = (*(**(v0 + 24) + 96))();
    v20 = v12;
    *&v83 = _swiftEmptyArrayStorage;
    if (v12 >> 62)
    {
      goto LABEL_25;
    }

    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      while (1)
      {
        v79 = v1;
        v80 = CTCategoryIdentifierSystemBlockable;
        v22 = 4;
        while (1)
        {
          v30 = v22 - 4;
          if ((v20 & 0xC000000000000001) == 0)
          {
            break;
          }

          v31 = sub_100033FC4();
          v1 = v22 - 3;
          if (__OFADD__(v30, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v69 = v83;
            v1 = v79;
            goto LABEL_27;
          }

LABEL_13:
          if (((*(*v31 + 264))() & 1) == 0)
          {
            v32 = *((*(*v31 + 112))() + 32);

            v33 = sub_100033D04();
            v32, v34, v35, v36, v37, v38, v39, v40;
            v41 = sub_100033D34();
            v43 = v42;

            v44 = sub_100033D34();
            v52 = v45;
            if (v41 == v44 && v43 == v45)
            {
              v45, v45, v46, v47, v48, v49, v50, v51;
              v43, v23, v24, v25, v26, v27, v28, v29;
            }

            else
            {
              v54 = sub_1000340D4();
              v52, v55, v56, v57, v58, v59, v60, v61;
              v43, v62, v63, v64, v65, v66, v67, v68;
              if ((v54 & 1) == 0)
              {

                goto LABEL_9;
              }
            }
          }

          sub_100033FF4();
          sub_100034024();
          sub_100034034();
          sub_100034004();
LABEL_9:
          ++v22;
          if (v1 == v21)
          {
            goto LABEL_23;
          }
        }

        if (v30 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_25:
        v21 = sub_100034054();
        if (!v21)
        {
          goto LABEL_26;
        }
      }

      v31 = *(v20 + 8 * v22);

      v1 = v22 - 3;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

LABEL_26:
    v69 = _swiftEmptyArrayStorage;
LABEL_27:
    v20, v13, v14, v15, v16, v17, v18, v19;
    __chkstk_darwin(v70);
    v78[2] = &v81;
    v78[3] = v1;
    sub_10002B00C(sub_10002B880, v78, v69);
    v69, v71, v72, v73, v74, v75, v76, v77;
    return v81;
  }

  return result;
}

uint64_t sub_10002AFB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  return result;
}

void (*sub_10002B00C(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_100033FC4();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_100034054();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_10002B160(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10002B1AC(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10002B23C;
}

void sub_10002B23C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_10002B2B8(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5 = *(**(v2 + 16) + 152);

  v5(v6, &off_1000421C8);

  return v2;
}

unint64_t sub_10002B390()
{
  result = qword_100045DD8;
  if (!qword_100045DD8)
  {
    sub_100006924(&qword_100045DD0, &qword_100036120);
    sub_100006924(&qword_100045DE0, &qword_100036128);
    sub_10002B4A4();
    sub_100028204();
    swift_getOpaqueTypeConformance2();
    sub_10002CD04(&qword_100045938, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045DD8);
  }

  return result;
}

unint64_t sub_10002B4A4()
{
  result = qword_100045DE8;
  if (!qword_100045DE8)
  {
    sub_100006924(&qword_100045DE0, &qword_100036128);
    sub_100006924(&qword_100045DF0, &qword_100036130);
    sub_100006924(&qword_100045DF8, &qword_100036138);
    sub_100033804();
    sub_1000114F8(&qword_100045E00, &qword_100045DF8, &qword_100036138, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000114F8(&qword_100045E08, &qword_100045E10, &qword_100036140, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045DE8);
  }

  return result;
}

unint64_t sub_10002B628()
{
  result = qword_100045E18;
  if (!qword_100045E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045E18);
  }

  return result;
}

unint64_t sub_10002B67C()
{
  result = qword_100045E20;
  if (!qword_100045E20)
  {
    sub_100006924(&qword_100045DB0, &qword_100036100);
    sub_1000114F8(&qword_100045E28, &qword_100045E30, &qword_100036148, &protocol conformance descriptor for NavigationStack<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045E20);
  }

  return result;
}

void sub_10002B778()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x150))();
  }
}

uint64_t sub_10002B810(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_100045DB0, &qword_100036100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10002B880(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v4 = (*(**a1 + 112))();
  v5 = (*(*v4 + 192))(v4);
  v7 = v6;

  v9 = (*(*v3 + 160))(v8);
  v24 = v2;
  v25 = v5;
  v26 = v7;
  v15 = sub_100029070(sub_10002BCB4, v23, v9, v10, v11, v12, v13, v14);
  v7, v16, v17, v18, v19, v20, v21, v22;
  sub_10002BE7C(v15);
}

void sub_10002B99C()
{
  v1 = (*(*v0[2] + 192))();
  v3 = v2;
  v5 = v4;
  v6 = ((*v0)[12])();
  if (v6)
  {
    v14 = v6;
    (*((swift_isaMask & *v6) + 0x140))(v1, v3, v5);
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v3, v15, v16, v17, v18, v19, v20, v21;

  v1, v22, v23, v24, v25, v26, v27, v28;
}

uint64_t sub_10002BAA0()
{

  swift_unknownObjectWeakDestroy();
  return v0;
}

uint64_t sub_10002BAC8()
{

  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10002BB4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002BB94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002BBFC()
{
  result = qword_100045F10;
  if (!qword_100045F10)
  {
    sub_100006924(&qword_100045F18, "D3");
    sub_10002B67C();
    sub_1000114F8(&qword_100045E38, &qword_100045DA0, &qword_1000360F0, &protocol conformance descriptor for NavigationStack<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F10);
  }

  return result;
}

uint64_t sub_10002BCB4(uint64_t *a1)
{
  v1 = *a1;
  (*(**a1 + 192))();
  v3 = v2;
  sub_100001A68(&qword_100045958, &qword_100035C88);
  sub_100033BA4();
  sub_100028204();
  v4 = sub_100033F34();
  v29, v5, v6, v7, v8, v9, v10, v11;
  v3, v12, v13, v14, v15, v16, v17, v18;
  if ((v4 & 1) != 0 || (sub_100033BA4(), v19 = sub_100033F34(), v29, v20, v21, v22, v23, v24, v25, v26, (v19)) && (sub_10000D610(), (sub_100033CF4() & 1) == 0))
  {
    v27 = (*(*v1 + 240))();
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

void sub_10002BE7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100034054();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = sub_100034054();
  v5 = __OFADD__(v20, v3);
  v6 = v20 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10001F4E0(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = sub_100006444(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v11 = v10;
  v9, v12, v10, v13, v14, v15, v16, v17;
  if (v11 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v18 = *(v8 + 16);
  v5 = __OFADD__(v18, v11);
  v19 = v18 + v11;
  if (!v5)
  {
    *(v8 + 16) = v19;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_10002BF74()
{
  result = qword_100045F30;
  if (!qword_100045F30)
  {
    sub_100006924(&qword_100045F28, &qword_1000362A0);
    sub_10002C004();
    sub_10002C080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F30);
  }

  return result;
}

unint64_t sub_10002C004()
{
  result = qword_100045F38;
  if (!qword_100045F38)
  {
    sub_100006924(&qword_100045F40, &qword_1000362A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F38);
  }

  return result;
}

unint64_t sub_10002C080()
{
  result = qword_100045F48;
  if (!qword_100045F48)
  {
    sub_100006924(&qword_100045F50, &qword_1000362B0);
    sub_100006924(&qword_100045F58, &qword_1000362B8);
    sub_100006924(&qword_100045F60, &qword_1000362C0);
    sub_10002C184();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F48);
  }

  return result;
}

unint64_t sub_10002C184()
{
  result = qword_100045F68;
  if (!qword_100045F68)
  {
    sub_100006924(&qword_100045F60, &qword_1000362C0);
    sub_10002C23C();
    sub_1000114F8(&qword_100045FA8, &qword_100045FB0, &qword_1000362E8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F68);
  }

  return result;
}

unint64_t sub_10002C23C()
{
  result = qword_100045F70;
  if (!qword_100045F70)
  {
    sub_100006924(&qword_100045F78, &qword_1000362C8);
    sub_10002C2F4();
    sub_1000114F8(&qword_100045F98, &qword_100045FA0, &qword_1000362E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F70);
  }

  return result;
}

unint64_t sub_10002C2F4()
{
  result = qword_100045F80;
  if (!qword_100045F80)
  {
    sub_100006924(&qword_100045F88, &unk_1000362D0);
    sub_10002C3AC();
    sub_1000114F8(&qword_100045368, &qword_100045370, &qword_100035270, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F80);
  }

  return result;
}

unint64_t sub_10002C3AC()
{
  result = qword_100045F90;
  if (!qword_100045F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045F90);
  }

  return result;
}

uint64_t sub_10002C400()
{
  v1 = *(v0 + 16);
  v5 = sub_10002AC98();
  swift_getKeyPath();
  sub_10001891C(v1, v4);
  v2 = swift_allocObject();
  sub_10002B740(v4, v2 + 16);
  sub_100001A68(&qword_100044E08, &unk_100035A80);
  sub_100001A68(&qword_100045FD8, &unk_100036300);
  sub_1000114F8(&qword_100045510, &qword_100044E08, &unk_100035A80, &protocol conformance descriptor for [A]);
  sub_10002C5BC();
  return sub_100033C54();
}

unint64_t sub_10002C538()
{
  result = qword_100045FC8;
  if (!qword_100045FC8)
  {
    sub_100006924(&qword_100045FC0, &qword_1000362F8);
    sub_10002C5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045FC8);
  }

  return result;
}

unint64_t sub_10002C5BC()
{
  result = qword_100045FD0;
  if (!qword_100045FD0)
  {
    sub_100006924(&qword_100045FD8, &unk_100036300);
    sub_10000F218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045FD0);
  }

  return result;
}

uint64_t sub_10002C648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  sub_100033E54();

  v6 = sub_100033E44();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;

  v8 = sub_100033E44();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  sub_100033C24();

  sub_100021668(v23, v24, v25, 0, 1, 0, 1, a2);
  v10 = *(v3 + 40);
  type metadata accessor for ActivityProvider(0);
  sub_10002CD04(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);
  v11 = sub_1000332A4();
  v12 = (a2 + *(sub_100001A68(&qword_100045348, &qword_100035260) + 36));
  *v12 = v11;
  v12[1] = v10;

  LOBYTE(v11) = sub_100033904();
  sub_100033374();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  result = sub_100001A68(&qword_100045FD8, &unk_100036300);
  v22 = a2 + *(result + 36);
  *v22 = v11;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_10002C870@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**(v1 + 32) + 384))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002C8C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002C958()
{
  v1 = *(v0 + 16);
  v2 = (*(**(v1 + 24) + 96))();
  v10 = v2;
  v23 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
LABEL_16:
    v11 = sub_100034054();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = sub_100033FC4();
          v15 = v12 - 3;
          if (__OFADD__(v13, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v16 = v23;
            goto LABEL_18;
          }
        }

        else
        {
          if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v14 = *(v10 + 8 * v12);

          v15 = v12 - 3;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*(*v14 + 264))())
        {
          sub_100033FF4();
          sub_100034024();
          sub_100034034();
          sub_100034004();
        }

        else
        {
        }

        ++v12;
        if (v15 == v11)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_18:
  v10, v3, v4, v5, v6, v7, v8, v9;
  v25 = v16;
  swift_getKeyPath();
  sub_10001891C(v1, &v23);
  v17 = swift_allocObject();
  sub_10002B740(&v23, v17 + 16);
  sub_100001A68(&qword_100045770, &qword_100035940);
  sub_100001A68(&qword_100045FE0, &qword_100036360);
  sub_1000114F8(&qword_100045FE8, &qword_100045770, &qword_100035940, &protocol conformance descriptor for [A]);
  sub_10002CD04(&qword_100045FF0, type metadata accessor for ActivityGroup, &unk_100034B00);
  v18 = sub_100006924(&qword_100045F58, &qword_1000362B8);
  v19 = sub_100006924(&qword_100045F60, &qword_1000362C0);
  v20 = sub_10002C184();
  v23 = v19;
  v24 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v18;
  v24 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_100033C54();
}

uint64_t sub_10002CC9C(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045F60, &qword_1000362C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002CD04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002CD4C()
{
  v1 = *(v0 + 16);
  sub_10001891C(v1, v10);
  v2 = swift_allocObject();
  sub_10002B740(v10, v2 + 16);
  sub_10001891C(v1, v9);
  v3 = swift_allocObject();
  sub_10002B740(v9, v3 + 16);
  nullsub_1();
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  sub_10002B628();
  sub_100033814();
}

void sub_10002CE50()
{
  v1 = (*(**(v0 + 40) + 192))();
  v3 = v2;
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*((swift_isaMask & *Strong) + 0x140))(v1, v3, v5);
  }

  v1, v7, v8, v9, v10, v11, v12, v13;
  v3, v15, v16, v17, v18, v19, v20, v21;

  v5, v22, v23, v24, v25, v26, v27, v28;
}

uint64_t sub_10002CF34()
{

  swift_unknownObjectWeakDestroy();

  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 88), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 104, 7);
}

void sub_10002CF9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x148))();
  }
}