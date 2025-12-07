void sub_10000340C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v5 = [v2 URL];
    v4 = [NSString stringWithFormat:@"Failed to insert rich link with URL %@ (%@)", v5, v3];

    MMALog(v4);
  }
}

id _MMALog(uint64_t a1)
{
  if (qword_10064AE48[0] != -1)
  {
    sub_1004D7930();
  }

  v2 = qword_10064AE40;

  return v2;
}

void sub_1000034F8(id a1)
{
  v1 = os_log_create("com.apple.Music", "MusicMessagesApp");
  v2 = qword_10064AE40;
  qword_10064AE40 = v1;
}

void MMALog(void *a1)
{
  v1 = a1;
  v2 = _MMALog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@", &v3, 0xCu);
  }
}

void MMALogDebug(void *a1)
{
  v1 = a1;
  v2 = _MMALog(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D7944(v1, v2);
  }
}

uint64_t MMASetSQLiteTraceEnabled(int a1)
{
  if (a1)
  {
    return setenv("SQLITE_AUTO_TRACE", "syslog", 6);
  }

  else
  {
    return unsetenv("SQLITE_AUTO_TRACE");
  }
}

__n128 sub_1000036C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GlowModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlowModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_100003788(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100003820@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000384C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100003918@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003928(uint64_t a1, id *a2)
{
  result = sub_1004DD41C();
  *a2 = 0;
  return result;
}

uint64_t sub_1000039A0(uint64_t a1, id *a2)
{
  v3 = sub_1004DD42C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003A20@<X0>(uint64_t *a1@<X8>)
{
  sub_1004DD43C();
  v2 = sub_1004DD3FC();

  *a1 = v2;
  return result;
}

uint64_t sub_100003A68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DD43C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003A94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100004638(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100003AE4(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError, &unk_1005118E8);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003B50(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError, &unk_1005118E8);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003BBC(void *a1, uint64_t a2)
{
  v4 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError, &unk_1005118E8);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError, &unk_1005118E8);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004DF26C();
  sub_1004DD2BC();
  return sub_1004DF2BC();
}

uint64_t sub_100003D4C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1004DD3FC();

  *a2 = v3;
  return result;
}

uint64_t sub_100003D94(uint64_t a1)
{
  sub_100003F9C(&qword_100632090, type metadata accessor for NSKeyValueChangeKey, &unk_1005118A4);
  sub_100003F9C(&qword_100632098, type metadata accessor for NSKeyValueChangeKey, &unk_1005117F8);

  return sub_1004DEE0C();
}

uint64_t sub_100003E50(uint64_t a1)
{
  sub_100003F9C(&qword_100631FF0, type metadata accessor for ICStoreArtworkInfoCropStyle, &unk_100511138);
  sub_100003F9C(&qword_100631FF8, type metadata accessor for ICStoreArtworkInfoCropStyle, &unk_1005110E0);

  return sub_1004DEE0C();
}

uint64_t sub_100003F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000402C(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632050, type metadata accessor for AVError, &unk_100511740);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004098(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632050, type metadata accessor for AVError, &unk_100511740);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004108(uint64_t a1)
{
  v2 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError, &unk_1005118E8);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003F9C(&qword_100632088, type metadata accessor for AVError, &unk_1005118E8);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000041F8(uint64_t a1)
{
  sub_100003F9C(&qword_100631FE0, type metadata accessor for WaitingReason, &unk_1005114FC);
  sub_100003F9C(&qword_100631FE8, type metadata accessor for WaitingReason, &unk_10051149C);

  return sub_1004DEE0C();
}

uint64_t sub_100004464()
{
  sub_1004DD43C();
  v0 = sub_1004DD69C();

  return v0;
}

uint64_t sub_1000044A0(uint64_t a1)
{
  sub_1004DD43C();
  sub_1004DD55C();
}

Swift::Int sub_1000044F4()
{
  sub_1004DD43C();
  sub_1004DF26C();
  sub_1004DD55C();
  v0 = sub_1004DF2BC();

  return v0;
}

uint64_t sub_100004568(void *a1, uint64_t *a2)
{
  v2 = sub_1004DD43C();
  v4 = v3;
  if (v2 == sub_1004DD43C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1004DF08C();
  }

  return v7 & 1;
}

uint64_t sub_100004638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 sub_100004684(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004690(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000046B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_100004A14()
{
  result = qword_100632078;
  if (!qword_100632078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100632078);
  }

  return result;
}

void sub_100004B0C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

UITraitCollection __swiftcall UITraitCollection.combining(with:)(UITraitCollection_optional with)
{
  if (with.value.super.isa)
  {
    isa = with.value.super.isa;
    sub_100004CB8(&qword_1006320B0, &qword_100511A90);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100511A20;
    *(v3 + 32) = v1;
    *(v3 + 40) = isa;
    sub_100004D00();
    v4 = isa;
    v5 = v1;
    v6 = sub_1004DD85C().super.isa;

    v7 = [objc_opt_self() traitCollectionWithTraitsFromCollections:v6];

    return v7;
  }

  else
  {

    return v1;
  }
}

uint64_t sub_100004CB8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004D00()
{
  result = qword_1006320B8;
  if (!qword_1006320B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006320B8);
  }

  return result;
}

double sub_100004D4C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2 + 1.0;
  *&qword_1006320C0 = result;
  return result;
}

char *sub_100004DBC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize] = 0;
  v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped] = 1;
  v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_showsIdealizedLevelPositionsWhenStopped] = 1;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth] = 0x4008000000000000;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight] = 0x4000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight] = 0x402C000000000000;
  v10 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews;
  v27 = _swiftEmptyArrayStorage;
  sub_1004DEBCC();
  v11 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v11 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v12 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v12 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v13 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v13 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v14 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v14 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v15 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v15 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  *&v5[v10] = _swiftEmptyArrayStorage;
  v26.receiver = v5;
  v26.super_class = type metadata accessor for NowPlayingIndicatorView();
  result = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v17 = result;
  v18 = *&result[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews];
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_11:
    v25 = v17;
LABEL_12:
    sub_1000058A4();

    return v17;
  }

  result = sub_1004DED5C();
  v19 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v20 = v17;

    v21 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = sub_10000E008(v21, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v24 = [v20 tintColor];
      [v23 setBackgroundColor:v24];
    }

    while (v19 != v21);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_10000523C(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for NowPlayingIndicatorView();
  result = objc_msgSendSuper2(&v9, "tintColorDidChange");
  v3 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews];
  if (v3 >> 62)
  {
    result = sub_1004DED5C();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10000E008(v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v1 tintColor];
      [v7 setBackgroundColor:v8];
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_1000053AC(uint64_t a1)
{
  v21.receiver = v1;
  v21.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews];
  if (v2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004DED5C())
  {
    v19 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_showsIdealizedLevelPositionsWhenStopped;
    v20 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth;
    v4 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight;
    v18 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight;

    if (!i)
    {
      break;
    }

    for (j = 4; ; ++j)
    {
      v6 = j - 4;
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_10000E008(j - 4, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = *(v2 + 8 * j);
      }

      v8 = v7;
      v9 = j - 3;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 superview];
      if (v10)
      {
      }

      else
      {
        [v1 addSubview:v8];
      }

      [v8 frame];
      v12 = v11;
      v13 = *&v1[v20];
      if (v1[v19] == 1)
      {
        if (v6 > 4)
        {
          goto LABEL_24;
        }

        v14 = *&v1[v4] + *(&off_1005CEE68 + j) * (*&v1[v18] - *&v1[v4]);
      }

      else
      {
        v14 = *&v1[v4];
      }

      if (qword_100631E60 != -1)
      {
        swift_once();
      }

      v15 = (v13 + *&qword_1006320C0) * v6;
      [v1 bounds];
      MaxY = CGRectGetMaxY(v22);
      v23.origin.x = v15;
      v23.origin.y = v12;
      v23.size.width = v13;
      v23.size.height = v14;
      [v8 setFrame:{v15, MaxY - CGRectGetHeight(v23), v13, v14}];

      if (v9 == i)
      {
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

void sub_100005704(void *a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for NowPlayingIndicatorView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1004DD43C();
  v8 = v7;
  if (v6 == sub_1004DD43C() && v8 == v9)
  {

    return;
  }

  v11 = sub_1004DF08C();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_1000058A4();
  }
}

void sub_1000058A4()
{
  if (v0[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize] == 1)
  {
    v1 = v0;
    v2 = objc_opt_self();
    v3 = [v2 defaultMetrics];
    v4 = [v1 traitCollection];
    v5 = sub_1004DE2BC();
    sub_1004DDF4C();
    v7 = v6;

    v8 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth];
    *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth] = v7;
    if (v7 != v8)
    {
      [v1 setNeedsLayout];
    }

    v9 = [v2 defaultMetrics];
    v10 = [v1 traitCollection];
    v11 = sub_1004DE2BC();
    sub_1004DDF4C();
    v13 = v12;

    v14 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight];
    *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight] = v13;
    if (v13 != v14)
    {
      [v1 setNeedsLayout];
    }

    v15 = [v2 defaultMetrics];
    v16 = [v1 traitCollection];
    v17 = sub_1004DE2BC();
    sub_1004DDF4C();
    v19 = v18;

    v20 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight];
    *&v1[OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight] = v19;
    if (v19 != v20)
    {

      [v1 setNeedsLayout];
    }
  }
}

uint64_t sub_100005B14()
{
  v1 = v0;
  v2 = objc_opt_self();
  v66 = [v2 functionWithName:kCAMediaTimingFunctionEaseOut];
  v74 = [v2 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  isUniquelyReferenced_nonNull_bridgeObject = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews);
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_58;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped;
  v75 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight;
  v76 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight;
  v69 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_showsIdealizedLevelPositionsWhenStopped;
  v65 = isUniquelyReferenced_nonNull_bridgeObject;

  if (v4)
  {
    v6 = 0;
    v67 = v4;
    v68 = v5;
    while (1)
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10000E008(v6, v65);
      }

      else
      {
        if (v6 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v65 + 32 + 8 * v6);
      }

      v9 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v64 = isUniquelyReferenced_nonNull_bridgeObject;
        v4 = sub_1004DED5C();
        isUniquelyReferenced_nonNull_bridgeObject = v64;
        goto LABEL_3;
      }

      v11 = [isUniquelyReferenced_nonNull_bridgeObject layer];
      v12 = v11;
      if (*(v1 + v5) == 1)
      {
        break;
      }

      v71 = v11;
      v73 = v9;
      v70 = v6 + 1;
      v37 = sub_100006D14(v6);
      v38 = v37[2];
      if (v38)
      {
        v39 = _swiftEmptyArrayStorage;
        v40 = 0;
        v41 = v37 + 4;
        v42 = _swiftEmptyArrayStorage;
        do
        {
          if (*&v41[v40] <= 1.0)
          {
            v43 = *&v41[v40];
          }

          else
          {
            v43 = 1.0;
          }

          v44 = *(v1 + v76);
          v45 = *(v1 + v75);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1000249B8(0, *(v42 + 2) + 1, 1, v42);
          }

          v47 = *(v42 + 2);
          v46 = *(v42 + 3);
          if (v47 >= v46 >> 1)
          {
            v42 = sub_1000249B8((v46 > 1), v47 + 1, 1, v42);
          }

          *(v42 + 2) = v47 + 1;
          *&v42[8 * v47 + 32] = v44 + v43 * (v45 - v44);
          if (v40 < v38 - 1)
          {
            v48 = v74;
            sub_1004DD84C();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1004DD8BC();
            }

            sub_1004DD90C();
            v39 = _swiftEmptyArrayStorage;
          }

          ++v40;
        }

        while (v38 != v40);
      }

      else
      {
        v42 = _swiftEmptyArrayStorage;
        v39 = _swiftEmptyArrayStorage;
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004DED5C();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v68;
      v49 = v71;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        goto LABEL_55;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (_swiftEmptyArrayStorage >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1000117AC(_swiftEmptyArrayStorage);
        v39 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      v50 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v50)
      {
        goto LABEL_56;
      }

      v51 = v50 - 1;
      v52 = *((v39 & 0xFFFFFFFFFFFFFF8) + 8 * v51 + 0x20);
      *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) = v51;

      v53 = sub_1004DD3FC();
      v54 = [objc_opt_self() animationWithKeyPath:v53];

      v55 = v54;
      [v55 setDuration:1.0];
      sub_1000064FC(v42);

      isa = sub_1004DD85C().super.isa;

      [v55 setValues:isa];

      v57 = sub_100006E0C(v6)[2];
      if (v57)
      {
        sub_1004DEBCC();
        v58 = 32;
        do
        {
          sub_1004DDB7C();
          sub_1004DEB9C();
          sub_1004DEBDC();
          sub_1004DEBEC();
          sub_1004DEBAC();
          v58 += 8;
          --v57;
        }

        while (v57);

        v49 = v71;
      }

      else
      {
      }

      sub_100006F10(0, &qword_100632430, NSNumber_ptr);
      v59 = sub_1004DD85C().super.isa;

      [v55 setKeyTimes:v59];

      sub_100006F10(0, &qword_100632128, CAMediaTimingFunction_ptr);
      v60 = sub_1004DD85C().super.isa;

      [v55 setTimingFunctions:v60];

      LODWORD(v61) = 2139095040;
      [v55 setRepeatCount:v61];
      [v55 setRemovedOnCompletion:0];

      v62 = sub_1004DD3FC();
      [v49 addAnimation:v55 forKey:v62];

      v4 = v67;
      v10 = v70;
LABEL_8:
      v6 = v10;
      if (v10 == v4)
      {
        goto LABEL_50;
      }
    }

    v13 = [v11 presentationLayer];
    if (!v13)
    {
      v13 = v12;
    }

    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v78.origin.x = v16;
    v78.origin.y = v18;
    v78.size.width = v20;
    v78.size.height = v22;
    Height = CGRectGetHeight(v78);
    v24 = *(v1 + v76);
    if (*(v1 + v69))
    {
      if (v6 > 4)
      {
        goto LABEL_57;
      }

      v7 = v24 + *(&off_1005CEE68 + v6 + 4) * (*(v1 + v75) - v24);
      v24 = v7;
      if (Height != v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = Height;
      if (Height != v24)
      {
LABEL_19:
        v25 = v7 * 1.1;
        v26 = Height;
        v27 = sub_1004DD3FC();
        v72 = v9;
        v28 = [objc_opt_self() animationWithKeyPath:v27];

        [v28 setDuration:0.733333333];
        sub_100004CB8(&qword_100632130, &qword_100511A88);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_100511A40;
        *(v29 + 56) = &type metadata for CGFloat;
        *(v29 + 32) = v26;
        *(v29 + 88) = &type metadata for CGFloat;
        *(v29 + 64) = v25;
        *(v29 + 120) = &type metadata for CGFloat;
        *(v29 + 96) = v24;
        v30 = sub_1004DD85C().super.isa;

        [v28 setValues:v30];

        sub_1004DEBCC();
        sub_1004DDB7C();
        sub_1004DEB9C();
        sub_1004DEBDC();
        sub_1004DEBEC();
        sub_1004DEBAC();
        sub_1004DDB7C();
        sub_1004DEB9C();
        sub_1004DEBDC();
        sub_1004DEBEC();
        sub_1004DEBAC();
        sub_1004DDB7C();
        sub_1004DEB9C();
        sub_1004DEBDC();
        sub_1004DEBEC();
        sub_1004DEBAC();
        sub_100006F10(0, &qword_100632430, NSNumber_ptr);
        v31 = sub_1004DD85C().super.isa;

        [v28 setKeyTimes:v31];

        sub_100004CB8(&qword_1006320B0, &qword_100511A90);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_100511A20;
        *(v32 + 32) = v66;
        *(v32 + 40) = v74;
        sub_100006F10(0, &qword_100632128, CAMediaTimingFunction_ptr);
        v33 = v66;
        v34 = v74;
        v35 = sub_1004DD85C().super.isa;

        [v28 setTimingFunctions:v35];

        v10 = v6 + 1;
        v36 = sub_1004DD3FC();
        [v12 addAnimation:v28 forKey:v36];

        goto LABEL_7;
      }
    }

    v8 = sub_1004DD3FC();
    [v12 removeAnimationForKey:v8];

LABEL_7:
    goto LABEL_8;
  }

LABEL_50:
}

void *sub_1000064FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1000066A8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000066A8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100006F5C(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1000065F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingIndicatorView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_100006668(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000066C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100006688(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000067CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000066A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000068D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000066C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100632140, &qword_100511AA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000067CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100632138, &qword_100511A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000068D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100632130, &qword_100511A88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000069E0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelsScaleWithTextSize) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_showsIdealizedLevelPositionsWhenStopped) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth) = 0x4008000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_minimumLevelHeight) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight) = 0x402C000000000000;
  v2 = OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelViews;
  sub_1004DEBCC();
  v3 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v3 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v4 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v4 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v5 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v5 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v6 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v6 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  v7 = [objc_msgSend(objc_allocWithZone(UIView) "init")];
  [v7 setAnchorPoint:{0.5, 1.0}];

  sub_1004DEB9C();
  sub_1004DEBDC();
  sub_1004DEBEC();
  sub_1004DEBAC();
  *(v1 + v2) = _swiftEmptyArrayStorage;
  sub_1004DECCC();
  __break(1u);
}

void *sub_100006D14(void *result)
{
  if (result > 4)
  {
    __break(1u);
  }

  else
  {
    v1 = *(&off_1005CF0F0 + result + 4);
    v2 = *(v1 + 16);
    if (v2)
    {

      sub_100006668(0, v2, 0);
      v3 = _swiftEmptyArrayStorage[2];
      v4 = 32;
      do
      {
        v5 = *(v1 + v4);
        v6 = _swiftEmptyArrayStorage[3];
        if (v3 >= v6 >> 1)
        {
          sub_100006668((v6 > 1), v3 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v3 + 1;
        _swiftEmptyArrayStorage[v3 + 4] = v5;
        v4 += 16;
        ++v3;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_100006E0C(void *result)
{
  if (result > 4)
  {
    __break(1u);
  }

  else
  {
    v1 = *(&off_1005CF0F0 + result + 4);
    v2 = *(v1 + 16);
    if (v2)
    {

      sub_100006688(0, v2, 0);
      v3 = _swiftEmptyArrayStorage[2];
      v4 = 40;
      do
      {
        v5 = *(v1 + v4);
        v6 = _swiftEmptyArrayStorage[3];
        if (v3 >= v6 >> 1)
        {
          sub_100006688((v6 > 1), v3 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v3 + 1;
        *&_swiftEmptyArrayStorage[v3 + 4] = v5 / 60.0;
        v4 += 16;
        ++v3;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100006F10(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_100006F5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_100006F6C()
{
  result = [objc_allocWithZone(type metadata accessor for AudioPreviewPlayer()) init];
  qword_100671800 = result;
  return result;
}

uint64_t sub_100006F9C(uint64_t a1)
{
  v3 = sub_1004DBEBC();
  v21 = *(v3 - 8);
  __chkstk_darwin();
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DBEFC();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin();
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004D809C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin();
  v18[1] = *&v1[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue];
  (*(v10 + 16))(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v10 + 32))(v14 + v13, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_100008EF0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005CF4E8;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  sub_1004DBEDC();
  v22 = _swiftEmptyArrayStorage;
  sub_100008FB4(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_1006323E0, &qword_100511C10);
  sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v15);
  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

uint64_t sub_100007320()
{
  v1 = sub_1004DBEBC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DBEFC();
  v5 = *(v13 - 8);
  __chkstk_darwin();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100008DC0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005CF498;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_1004DBEDC();
  v14 = _swiftEmptyArrayStorage;
  sub_100008FB4(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_1006323E0, &qword_100511C10);
  sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void sub_1000075DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1004DBEBC();
  v40 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(sub_1004DBEFC() - 8);
  __chkstk_darwin();
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v5[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts];
  v18 = *&v5[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts];
  if (!a5)
  {
    if (v18)
    {
      if (*(v17 + 1))
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_16:
    v39 = v14;
    v27 = swift_allocObject();
    *(v27 + 16) = v5;
    v46 = sub_100009044;
    v47 = v27;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100012680;
    v45 = &unk_1005CF588;
    v28 = _Block_copy(&aBlock);
    v29 = v5;
    sub_1004DBEDC();
    v41 = _swiftEmptyArrayStorage;
    sub_100008FB4(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0, &qword_100511C10);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
    sub_1004DE92C();
    sub_1004DE15C();
    v25 = v28;
    goto LABEL_17;
  }

  if (v18)
  {
    v19 = v18 == a5;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    goto LABEL_16;
  }

  v20 = *(v17 + 1);
  if (v20)
  {
    v21 = v20 == a5;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
LABEL_11:
    v39 = v14;
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = v5;
    v46 = sub_10000903C;
    v47 = v22;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100012680;
    v45 = &unk_1005CF538;
    v23 = _Block_copy(&aBlock);

    v24 = v5;
    sub_1004DBEDC();
    v41 = _swiftEmptyArrayStorage;
    sub_100008FB4(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0, &qword_100511C10);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
    sub_1004DE92C();
    sub_1004DE15C();
    v25 = v23;
LABEL_17:
    _Block_release(v25);
    (*(v40 + 8))(v12, v10);
    (*(v13 + 8))(v16, v39);

    return;
  }

LABEL_14:
  if (a2)
  {
    v26 = sub_1004DD3FC();
  }

  else
  {
    v26 = 0;
  }

  sub_100008AC0(a3, &aBlock);
  v30 = v45;
  if (!v45)
  {
    v35 = 0;
    if (a4)
    {
      goto LABEL_21;
    }

LABEL_23:
    v36.super.isa = 0;
    goto LABEL_24;
  }

  sub_100008C70(&aBlock, v45);
  v31 = *(v30 - 1);
  v32 = __chkstk_darwin();
  v34 = &v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v34, v32);
  v35 = sub_1004DF06C();
  (*(v31 + 8))(v34, v30);
  sub_100008D24(&aBlock);
  if (!a4)
  {
    goto LABEL_23;
  }

LABEL_21:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_100008FB4(&qword_100632090, type metadata accessor for NSKeyValueChangeKey, &unk_1005118A4);
  v36.super.isa = sub_1004DD1FC().super.isa;
LABEL_24:
  v37 = type metadata accessor for AudioPreviewPlayer();
  v48.receiver = v5;
  v48.super_class = v37;
  objc_msgSendSuper2(&v48, "observeValueForKeyPath:ofObject:change:context:", v26, v35, v36.super.isa, a5);

  swift_unknownObjectRelease();
}

id sub_100007BF0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player;
  result = *(a1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player);
  if (result)
  {
    result = [result status];
    if (result == 1)
    {
      result = *(a1 + v2);
      if (result)
      {
        result = [result rate];
        if (v4 == 0.0)
        {
          v5 = [objc_opt_self() sharedInstance];
          v6 = [v5 mode];
          v13 = 0;
          v7 = [v5 setCategory:AVAudioSessionCategoryPlayback mode:v6 options:0 error:&v13];

          v8 = v13;
          if (v7 && (v13 = 0, v9 = v8, v10 = [v5 setActive:1 error:&v13], v8 = v13, (v10 & 1) != 0))
          {
            v11 = v13;
          }

          else
          {
            v12 = v8;
            sub_1004D7F4C();

            swift_willThrow();
          }

          return [*(a1 + v2) play];
        }
      }
    }
  }

  return result;
}

void sub_100007D80(uint64_t result)
{
  if (!result)
  {
    goto LABEL_14;
  }

  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = sub_100028E14(NSKeyValueChangeOldKey);
  if ((v3 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10000904C(*(result + 56) + 32 * v2, v7);
  sub_100006F5C(v7, v8);
  swift_dynamicCast();
  if (!*(result + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = sub_100028E14(NSKeyValueChangeNewKey);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  sub_10000904C(*(result + 56) + 32 * v4, v7);
  sub_100006F5C(v7, v8);
  swift_dynamicCast();
  if (v6 > 0.0 && v6 == 0.0)
  {
    sub_100008B98();
  }
}

uint64_t sub_100007FD8()
{
  v1 = v0;
  v2 = sub_1004DBF6C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  v9 = sub_1004DBF9C();
  result = (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v11 = objc_allocWithZone(AVPlayer);
    sub_1004D7FDC(v12);
    v14 = v13;
    v15 = [v11 initWithURL:v13];

    v16 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player;
    v17 = *(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player);
    *(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player) = v15;
    v18 = v15;

    if (v18)
    {
      LODWORD(v19) = *(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer_volume);
      [v18 setVolume:v19];
    }

    v20 = *(v1 + v16);
    if (v20)
    {
      v21 = v20;
      v22 = sub_1004DD3FC();
      [v21 addObserver:v1 forKeyPath:v22 options:3 context:*(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts)];

      v23 = *(v1 + v16);
      if (v23)
      {
        v24 = v23;
        v25 = sub_1004DD3FC();
        [v24 addObserver:v1 forKeyPath:v25 options:3 context:*(v1 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts + 8)];
      }
    }

    sub_100004CB8(&qword_1006320B0, &qword_100511A90);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100511AB0;
    v27 = sub_1004DE47C(3, 4);
    v29 = v28;
    v31 = v30;
    v32 = HIDWORD(v28);
    v33 = objc_allocWithZone(NSValue);
    *&aBlock = v27;
    *(&aBlock + 1) = __PAIR64__(v32, v29);
    *&v42 = v31;
    *(v26 + 32) = [v33 initWithCMTime:&aBlock];
    v34 = *(v1 + v16);
    if (v34)
    {
      sub_100006F10(0, &qword_1006321A0, NSValue_ptr);
      v35 = v34;
      isa = sub_1004DD85C().super.isa;

      v43 = sub_1000083CC;
      v44 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v42 = sub_100012680;
      *(&v42 + 1) = &unk_1005CF448;
      v37 = _Block_copy(&aBlock);
      v38 = [v35 addBoundaryTimeObserverForTimes:isa queue:v8 usingBlock:v37];
      _Block_release(v37);

      sub_1004DE8DC();
      swift_unknownObjectRelease();
    }

    else
    {

      aBlock = 0u;
      v42 = 0u;
    }

    v39 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerBoundaryTimeObservationToken;
    swift_beginAccess();
    sub_100008CB4(&aBlock, v1 + v39);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000083CC()
{
  v0 = sub_1004DD3FC();
  AnalyticsSendEvent();
}

void sub_100008424()
{
  v1 = sub_1004DBF6C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin();
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004DBF9C();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player;
    v9 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player);
    if (v9)
    {
      v10 = v9;
      v11 = sub_1004DD3FC();
      [v10 removeObserver:v0 forKeyPath:v11 context:*(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts)];

      v12 = *(v0 + v8);
      if (v12)
      {
        v13 = v12;
        v14 = sub_1004DD3FC();
        [v13 removeObserver:v0 forKeyPath:v14 context:*(v0 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts + 8)];
      }
    }

    v15 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerBoundaryTimeObservationToken;
    swift_beginAccess();
    sub_100008AC0(v0 + v15, &v23);
    if (*(&v24 + 1))
    {
      sub_100006F5C(&v23, &v25);
      v16 = *(v0 + v8);
      if (v16)
      {
        sub_100008C70(&v25, v27);
        v17 = v16;
        [v17 removeTimeObserver:sub_1004DF06C()];

        swift_unknownObjectRelease();
      }

      v23 = 0u;
      v24 = 0u;
      swift_beginAccess();
      sub_100008CB4(&v23, v0 + v15);
      swift_endAccess();
      sub_100008D24(&v25);
      v18 = *(v0 + v8);
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100008B30(&v23);
      v18 = *(v0 + v8);
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    v19 = v18;
    *&v25 = sub_1004DE47C(1, 2);
    *(&v25 + 1) = v20;
    v26 = v21;
    [v19 setRate:&v25 withVolumeRampDuration:0.0];

    v18 = *(v0 + v8);
LABEL_10:
    *(v0 + v8) = 0;

    sub_100008B98();
    return;
  }

  __break(1u);
}

id sub_100008718()
{
  v1 = sub_1004DE13C();
  v14 = *(v1 - 8);
  v15 = v1;
  __chkstk_darwin();
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DE0FC();
  __chkstk_darwin();
  sub_1004DBEFC();
  __chkstk_darwin();
  *&v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer_volume] = 0;
  *&v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player] = 0;
  v13 = OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerDispatchQueue;
  v12[3] = sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  v4 = type metadata accessor for AudioPreviewPlayer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  v7 = sub_1004DD43C();
  v12[1] = v8;
  v12[2] = v7;

  sub_1004DBEEC();
  v17 = _swiftEmptyArrayStorage;
  sub_100008FB4(&qword_1006321C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&unk_100632480, &qword_100511B00);
  sub_100008F60(&qword_1006321C8, &unk_100632480, &qword_100511B00);
  sub_1004DE92C();
  (*(v14 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *&v0[v13] = sub_1004DE17C();
  v9 = &v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerObservationContexts];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v0[OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__playerBoundaryTimeObservationToken];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v16.receiver = v0;
  v16.super_class = v4;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_100008A0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioPreviewPlayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632198, &qword_100511AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008B30(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100632198, &qword_100511AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100008B98()
{
  v0 = [objc_opt_self() sharedInstance];
  v3 = 0;
  if ([v0 setActive:0 withOptions:1 error:&v3])
  {
    v1 = v3;
  }

  else
  {
    v2 = v3;
    sub_1004D7F4C();

    swift_willThrow();
  }
}

void *sub_100008C70(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632198, &qword_100511AF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008D24(void *a1)
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

uint64_t sub_100008D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008D88()
{

  return swift_deallocObject();
}

uint64_t sub_100008DE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008E2C()
{
  v1 = sub_1004D809C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100008EF0()
{
  sub_1004D809C();
  sub_100008424();
  return sub_100007FD8();
}

uint64_t sub_100008F60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100008FFC()
{

  return swift_deallocObject();
}

uint64_t sub_10000904C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1000090CC()
{
  type metadata accessor for MusicMessagesSharingViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100671808 = result;
  return result;
}

void sub_100009124()
{
  if (qword_100631E70 != -1)
  {
    swift_once();
  }

  v0 = qword_100671808;
  v5._countAndFlagsBits = 0x80000001004E7510;
  v6._countAndFlagsBits = 0x545F524544414548;
  v6._object = 0xEB00000000545845;
  v8._object = 0x80000001004E74F0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0xE000000000000000;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v2 = sub_1004D7E5C(v6, v7, v1, v8, 0xD000000000000062, v5);
  v4 = v3;

  qword_1006321D0 = v2;
  *algn_1006321D8 = v4;
}

char *sub_10000920C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v27[1] = a1;
  v5 = sub_1004DE13C();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin();
  v30 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DE0FC();
  __chkstk_darwin();
  sub_1004DBEFC();
  __chkstk_darwin();
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__contextMenuInteraction] = 0;
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack] = 0;
  v7 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewedItemIndexToIgnoreForNextSelect;
  v8 = sub_1004D85FC();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView] = 0;
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout] = 0;
  v28 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__mediaLibraryQueue;
  v27[2] = sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  v29 = type metadata accessor for MusicMessagesSharingViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1004DD43C();

  sub_1004DBEEC();
  v36 = _swiftEmptyArrayStorage;
  sub_100010984(&qword_1006321C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&unk_100632480, &qword_100511B00);
  sub_100008F60(&qword_1006321C8, &unk_100632480, &qword_100511B00);
  sub_1004DE92C();
  (*(v31 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  *&v3[v28] = sub_1004DE17C();
  *&v3[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken] = 0;
  v11 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserver;
  if (qword_100631F38 != -1)
  {
    swift_once();
  }

  *&v4[v11] = qword_100671920;
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier;
  *&v4[v12] = sub_10002763C(_swiftEmptyArrayStorage);
  v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] = 0;
  if (v33)
  {

    v13 = sub_1004DD3FC();
  }

  else
  {

    v13 = 0;
  }

  v37.receiver = v4;
  v37.super_class = v29;
  v14 = v34;
  v15 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", v13, v34);

  v16 = objc_opt_self();
  v17 = v15;
  [v16 setFilteringDisabled:1];
  v18 = *&v17[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserver];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = objc_allocWithZone(NSUUID);

  v21 = [v20 init];
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1000109CC;
  *(v22 + 24) = v19;
  swift_beginAccess();
  v23 = v21;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v18 + 40);
  *(v18 + 40) = 0x8000000000000000;
  sub_10000E398(sub_100010A0C, v22, v23, isUniquelyReferenced_nonNull_native);

  *(v18 + 40) = v35;
  swift_endAccess();

  v25 = *&v17[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken];
  *&v17[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken] = v23;

  return v17;
}

void sub_10000977C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10000BB34();
  }
}

id sub_100009858()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView];
  if (v2)
  {
    v3 = v2;
    [v3 setDataSource:0];
    [v3 setDelegate:0];
  }

  v4 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken];
  if (v4)
  {
    v5 = v4;

    sub_10002804C(v5);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for MusicMessagesSharingViewController(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for MusicMessagesSharingViewController(uint64_t a1)
{
  result = qword_100632388;
  if (!qword_100632388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100009A8C()
{
  v1 = v0;
  v46.receiver = v0;
  v46.super_class = type metadata accessor for MusicMessagesSharingViewController(0);
  objc_msgSendSuper2(&v46, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v1 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  if (qword_100631EB0 != -1)
  {
    swift_once();
  }

  [v13 setBackgroundColor:qword_1006718A0];

  v14 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  v15 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout;
  v16 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout];
  *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout] = v14;
  v17 = v14;

  if (!v17)
  {
    goto LABEL_19;
  }

  [v17 setSectionHeadersPinToVisibleBounds:0];

  v18 = *&v1[v15];
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = [objc_allocWithZone(type metadata accessor for SharingCollectionView()) initWithFrame:v18 collectionViewLayout:{v5, v7, v9, v11}];
  v20 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView;
  v21 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView];
  *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView] = v19;
  v22 = v19;

  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v22 setAutoresizingMask:18];

  v23 = *&v1[v20];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v23 setAlwaysBounceVertical:1];
  v24 = *&v1[v20];
  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = type metadata accessor for SharingCollectionViewHeader();
  v26 = sub_1004DD43C();
  v28 = v27;
  v29 = v24;
  v30 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v25, v26, v28, v30, v31);

  v32 = *&v1[v20];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = type metadata accessor for LaunchMusicCellView();
  v34 = v32;
  v35 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v33, v35, v36);

  v37 = *&v1[v20];
  if (!v37)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v38 = type metadata accessor for TrackCellView();
  v39 = v37;
  v40 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v38, v40, v41);

  v42 = *&v1[v20];
  if (!v42)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v42 setDelegate:v1];
  v43 = *&v1[v20];
  if (!v43)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v43 setDataSource:v1];
  v44 = [v1 view];
  if (!v44)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*&v1[v20])
  {
    v45 = v44;
    [v44 addSubview:?];

    sub_10000B6E8();
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_100009F2C()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MusicMessagesSharingViewController(0);
  objc_msgSendSuper2(&v5, "viewDidLayoutSubviews");
  v2 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack;
  if (*&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack])
  {
    v3 = [v0 presentedViewController];
    if (v3)
    {
      v4 = v3;
      [v3 dismissViewControllerAnimated:0 completion:0];
    }

    *&v1[v2] = 0;

    if (qword_100631E68 != -1)
    {
      swift_once();
    }

    sub_100007320();
    if (v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] == 1)
    {
      v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] = 0;
      sub_10000BB34();
    }
  }
}

void sub_10000A14C(char a1, SEL *a2)
{
  v4 = v2;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for MusicMessagesSharingViewController(0);
  objc_msgSendSuper2(&v6, *a2, a1 & 1);
  *&v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack] = 0;

  if (qword_100631E68 != -1)
  {
    swift_once();
  }

  sub_100007320();
  if (v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] == 1)
  {
    v4[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] = 0;
    sub_10000BB34();
  }
}

void sub_10000A26C(uint64_t a1, char *a2)
{
  v2 = *&a2[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v2 invalidateLayout];
  v4 = [a2 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

uint64_t sub_10000A2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

unint64_t sub_10000A548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks;
  v6 = *(v2 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_43:
    v50 = type metadata accessor for LaunchMusicCellView();
    v51 = static UICollectionReusableView.reuseIdentifier.getter();
    v10 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v50, a2, v51, v52, v50);

    return v10;
  }

  if (sub_1004DED5C() < 1)
  {
    goto LABEL_43;
  }

LABEL_3:
  v7 = type metadata accessor for TrackCellView();
  v8 = static UICollectionReusableView.reuseIdentifier.getter();
  v10 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v7, a2, v8, v9, v7);

  result = sub_1004D85AC();
  v12 = *(v3 + v5);
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 8 * result + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_48;
  }

  v53 = result;

  v13 = sub_10000E01C(v53, v12);

LABEL_7:
  if (*(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8))
  {
    v14 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
    v15 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel;
  v17 = *&v10[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel];

  v18 = [v17 text];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1004DD43C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  if (v20 == v14 && v22 == v15)
  {
  }

  else
  {
    v24 = sub_1004DF08C();

    if (v24)
    {
    }

    else
    {
      v25 = *&v10[v16];
      v26 = sub_1004DD3FC();

      [v25 setText:v26];

      [v10 setNeedsLayout];
    }
  }

  v27 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isExplicit);
  v28 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel;
  if (v27 == [*&v10[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel] isHidden])
  {
    [*&v10[v28] setHidden:v27 ^ 1u];
    [v10 setNeedsLayout];
  }

  if (*(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8))
  {
    v29 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
    v30 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel;
  v32 = *&v10[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel];

  v33 = [v32 text];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1004DD43C();
    v37 = v36;

    if (v35 != v29)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v37 = 0xE000000000000000;
    if (v29)
    {
      goto LABEL_32;
    }
  }

  if (v37 == v30)
  {

    goto LABEL_35;
  }

LABEL_32:
  v38 = sub_1004DF08C();

  if (v38)
  {
  }

  else
  {
    v39 = *&v10[v31];
    v40 = sub_1004DD3FC();

    [v39 setText:v40];

    [v10 setNeedsLayout];
  }

LABEL_35:
  v41 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying);
  [*&v10[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel] setHidden:(v41 & 1) == 0];
  [*&v10[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView] setHidden:(v41 & 1) == 0];
  v42 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView;
  [*&v10[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView] setHidden:(v41 & 1) == 0];
  result = [v10 setNeedsLayout];
  v43 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isPlaying);
  v44 = *&v10[v42];
  v45 = *(v44 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped);
  *(v44 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped) = v43 ^ 1;
  if (v43 == v45)
  {
    result = sub_100005B14();
  }

  if (*&v10[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent])
  {
    v46 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
    if (v46)
    {
      v47 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser + 8);

      v48 = sub_10000DE64(v46, v47);
      v49 = v46(v48);
      sub_10000DE74(v46, v47);
    }

    else
    {

      v49 = 0;
    }

    sub_1000126C4(v49);

    return v10;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10000AF78(char *a1, char a2)
{
  v3 = *&a1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks];
  if (v3 >> 62)
  {
    v26 = a1;
    v27 = sub_1004DED5C();
    a1 = v26;
    if (v27 < 1)
    {
      return 1;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 1;
  }

  v4 = a1;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  if (CGRectGetWidth(v28) < 736.0)
  {
    result = [v4 view];
    if (result)
    {
      v15 = result;
      [result bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v29.origin.x = v17;
      v29.origin.y = v19;
      v29.size.width = v21;
      v29.size.height = v23;
      if (CGRectGetWidth(v29) > 320.0)
      {
        v24 = (a2 & 1) == 0;
        v25 = 1;
        goto LABEL_9;
      }

      return 1;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  v24 = (a2 & 1) == 0;
  v25 = 2;
LABEL_9:
  if (v24)
  {
    return v25 + 1;
  }

  else
  {
    return v25;
  }
}

char *sub_10000B318(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack];
    v5 = result;

    result = 0;
    if (v4)
    {
      v6 = type metadata accessor for TrackPreviewViewController();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView] = 0;
      *&v7[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__sharableTrack] = 0;
      v12.receiver = v7;
      v12.super_class = v6;

      v8 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
      *&v8[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__sharableTrack] = v4;

      [a2 frame];
      v10 = v9 * 1.6;
      [a2 frame];
      [v8 setPreferredContentSize:{v10, v11}];

      return v8;
    }
  }

  return result;
}

void sub_10000B604(uint64_t a1)
{
  sub_10000BE58(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000B6E8()
{
  v1 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__contextMenuInteraction;
  if (*(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__contextMenuInteraction))
  {
    return;
  }

  v2 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v0];
  v3 = *(v0 + v1);
  *(v0 + v1) = v2;
  v6 = v2;

  v4 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView);
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v5 = v4;
  [v5 addInteraction:v6];
}

uint64_t sub_10000B7B8@<X0>(char *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_100004CB8(&qword_100632448, &qword_100511C48);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = sub_1004D85FC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView;
  v17 = *(v3 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView);
  if (!v17)
  {
    (*(v12 + 56))(v10, 1, 1, v11, v13);
LABEL_7:
    sub_10001074C(v10, &qword_100632448, &qword_100511C48);
    goto LABEL_14;
  }

  v18 = [v17 indexPathForItemAtPoint:{a2, a3}];
  if (v18)
  {
    v19 = v18;
    sub_1004D858C();

    (*(v12 + 56))(v8, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v8, 1, 1, v11);
  }

  sub_1000106D4(v8, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_7;
  }

  v20 = *(v12 + 32);
  v20(v15, v10, v11);
  v21 = *(v3 + v16);
  if (v21)
  {
    v22 = v21;
    isa = sub_1004D856C().super.isa;
    v24 = [v22 cellForItemAtIndexPath:isa];

    if (v24)
    {
      type metadata accessor for TrackCellView();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v25;
        v27 = sub_100004CB8(&qword_100632450, &qword_100511C50);
        v28 = *(v27 + 48);
        v20(a1, v15, v11);
        *&a1[v28] = v26;
        return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
      }
    }
  }

  (*(v12 + 8))(v15, v11);
LABEL_14:
  v30 = sub_100004CB8(&qword_100632450, &qword_100511C50);
  return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
}

void sub_10000BB34()
{
  v1 = sub_1004DBEBC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DBEFC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack])
  {
    v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload] = 1;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier];
    v10 = *&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserver];
    v16 = v2;
    v11 = *(v10 + 16);
    v15[1] = *&v0[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__mediaLibraryQueue];
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v9;
    v12[4] = v0;
    aBlock[4] = sub_10000DECC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005CF5D8;
    v13 = _Block_copy(aBlock);
    v15[0] = v11;

    v14 = v0;
    sub_1004DBEDC();
    v17 = _swiftEmptyArrayStorage;
    sub_100010984(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0, &qword_100511C10);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v13);

    (*(v16 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_10000BE58(uint64_t a1)
{
  if (!qword_100632398)
  {
    sub_1004D85FC();
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_100632398);
    }
  }
}

id sub_10000BEB0(void *a1, uint64_t a2, void *a3)
{
  v4 = swift_allocObject();
  v5 = sub_10002763C(_swiftEmptyArrayStorage);
  v157 = v4;
  *(v4 + 16) = v5;
  v162 = (v4 + 16);
  v159 = _swiftEmptyArrayStorage;
  v168 = _swiftEmptyArrayStorage;
  if ((sub_10001E438(a1) & 1) == 0)
  {
LABEL_22:
    result = [objc_opt_self() playbackHistoryPlaylist];
    if (result)
    {
      v156 = result;
      v40 = [result items];
      sub_100006F10(0, &qword_1006323F0, MPMediaItem_ptr);
      v41 = sub_1004DD87C();

      v161 = v41;
      if (v41 >> 62)
      {
        goto LABEL_83;
      }

      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (v42)
      {
        while (__OFSUB__(v42--, 1))
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          v42 = sub_1004DED5C();
          if (!v42)
          {
            goto LABEL_84;
          }
        }

        if ((v161 & 0xC000000000000001) != 0)
        {
          v56 = sub_10000E1C8(v42, v161, &qword_1006323F0, MPMediaItem_ptr);
          goto LABEL_35;
        }

        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_81;
        }

        if (v42 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v56 = *(v161 + 32 + 8 * v42);
LABEL_35:
        v57 = v56;
        sub_100004CB8(&qword_1006323F8, &qword_100511C18);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100511B10;
        sub_1004DD43C();
        sub_1004DEA4C();
        sub_1004DD43C();
        sub_1004DEA4C();
        sub_1004DD43C();
        sub_1004DEA4C();
        v166 = sub_1004DD43C();
        v167 = v59;
        sub_1004DEA4C();
        sub_100010218(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        isa = sub_1004DDC2C().super.isa;

        v61 = [v57 valuesForProperties:isa];

        if (v61)
        {
          v62 = sub_1004DD21C();
        }

        else
        {
          v62 = sub_100027854(_swiftEmptyArrayStorage);
        }

        v63 = sub_1004DD43C();
        v65 = sub_10000D068(v63, v64, v62);
        v67 = v66;

        v68 = sub_1004DD43C();
        v70 = sub_10000D068(v68, v69, v62);
        v72 = v71;

        v73 = sub_1004DD43C();
        v164 = sub_10000D068(v73, v74, v62);
        v165 = v75;

        if (v72)
        {
          v76 = v65;
        }

        else
        {
          v76 = v70;
        }

        if (v72 & 1) != 0 && (v67)
        {

          v163 = sub_1004DDF9C();
          sub_100004CB8(&qword_100632400, &qword_100511C20);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_100511B20;
          v78 = [v57 title];
          if (v78)
          {
            v79 = v78;
            v80 = sub_1004DD43C();
            v82 = v81;
          }

          else
          {
            v80 = 0;
            v82 = 0;
          }

          v166 = v80;
          v167 = v82;
          sub_100004CB8(&qword_100632408, &qword_100511C28);
          v92 = sub_1004DD4DC();
          v94 = v93;
          *(v77 + 56) = &type metadata for String;
          v95 = sub_100010378();
          *(v77 + 64) = v95;
          *(v77 + 32) = v92;
          *(v77 + 40) = v94;
          v96 = [v57 artist];
          if (v96)
          {
            v97 = v96;
            v98 = sub_1004DD43C();
            v100 = v99;
          }

          else
          {
            v98 = 0;
            v100 = 0;
          }

          v166 = v98;
          v167 = v100;
          v101 = sub_1004DD4DC();
          *(v77 + 96) = &type metadata for String;
          *(v77 + 104) = v95;
          *(v77 + 72) = v101;
          *(v77 + 80) = v102;
          v103 = [v57 albumTitle];
          if (v103)
          {
            v104 = v103;
            v105 = sub_1004DD43C();
            v107 = v106;
          }

          else
          {
            v105 = 0;
            v107 = 0;
          }

          v166 = v105;
          v167 = v107;
          v108 = sub_1004DD4DC();
          *(v77 + 136) = &type metadata for String;
          *(v77 + 144) = v95;
          *(v77 + 112) = v108;
          *(v77 + 120) = v109;
          v110 = [v57 albumArtist];
          if (v110)
          {
            v43 = v110;
            sub_1004DD43C();
            v45 = v44;
          }

          else
          {
            v45 = 0;
          }

          v167 = v45;
          v46 = sub_1004DD4DC();
          *(v77 + 176) = &type metadata for String;
          *(v77 + 184) = v95;
          *(v77 + 152) = v46;
          *(v77 + 160) = v47;
          sub_100004CB8(&qword_100632418, &unk_100511C30);
          v48 = sub_1004DD4DC();
          *(v77 + 216) = &type metadata for String;
          *(v77 + 224) = v95;
          *(v77 + 192) = v48;
          *(v77 + 200) = v49;
          v50 = sub_1004DD4DC();
          *(v77 + 256) = &type metadata for String;
          *(v77 + 264) = v95;
          *(v77 + 232) = v50;
          *(v77 + 240) = v51;
          v166 = v164;
          LOBYTE(v167) = v165 & 1;
          v52 = sub_1004DD4DC();
          *(v77 + 296) = &type metadata for String;
          *(v77 + 304) = v95;
          *(v77 + 272) = v52;
          *(v77 + 280) = v53;
          sub_100006F10(0, &unk_100632420, OS_os_log_ptr);
          v54 = sub_1004DE79C();
          sub_1004D953C(v163, &_mh_execute_header, v54, "MusicMessagesSharingViewController: skipping track without store ID Track( title: %{public}@, artist: %{public}@, albumTitle: %{public}@, albumArtist: %{public}@, id: %{public}@, subscriptionID: %{public}@, albumStoreIdentifier: %{public}@)", 240, 2, v77);
        }

        else if (*(*v162 + 16) && (sub_100028EF8(v76), (v83 & 1) != 0))
        {
        }

        else
        {
          if (*(a2 + 16) && (v84 = sub_100028EF8(v76), (v85 & 1) != 0))
          {
            v86 = *(*(a2 + 56) + 8 * v84);
          }

          else
          {
            type metadata accessor for SharableTrack(0);
            swift_allocObject();
            v86 = sub_100025274(v76);
          }

          v87 = [v57 title];
          if (v87)
          {
            v88 = v87;
            v89 = sub_1004DD43C();
            v91 = v90;
          }

          else
          {
            v89 = 0;
            v91 = 0;
          }

          v111 = (v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
          *v111 = v89;
          v111[1] = v91;

          v112 = [v57 artist];
          if (v112)
          {
            v113 = v112;
            v114 = sub_1004DD43C();
            v116 = v115;
          }

          else
          {
            v114 = 0;
            v116 = 0;
          }

          v117 = (v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
          *v117 = v114;
          v117[1] = v116;

          v118 = [v57 albumTitle];
          if (v118)
          {
            v119 = v118;
            v120 = sub_1004DD43C();
            v122 = v121;
          }

          else
          {
            v120 = 0;
            v122 = 0;
          }

          v123 = (v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_album);
          *v123 = v120;
          v123[1] = v122;

          v124 = [v57 albumArtist];
          if (v124)
          {
            v125 = v124;
            v126 = sub_1004DD43C();
            v128 = v127;
          }

          else
          {
            v126 = 0;
            v128 = 0;
          }

          v129 = (v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumArtist);
          *v129 = v126;
          v129[1] = v128;

          v130 = v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreIdentifier;
          *v130 = v164;
          *(v130 + 8) = v165 & 1;
          v131 = sub_1004DD43C();
          v133 = sub_10000D15C(v131, v132, v62);

          *(v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isExplicit) = v133 & 1;
          sub_1000253E0();
          *(v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying) = 0;
          *(v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isPlaying) = 0;
          v134 = swift_allocObject();
          *(v134 + 16) = v57;
          v135 = (v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
          v136 = *(v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
          v137 = *(v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser + 8);
          *v135 = sub_100010468;
          v135[1] = v134;
          v138 = v57;
          sub_10000DE74(v136, v137);
          v139 = swift_allocObject();
          *(v139 + 16) = v138;
          v140 = (v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
          v141 = *(v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
          v142 = *(v86 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing + 8);
          *v140 = sub_1000104C8;
          v140[1] = v139;
          v143 = v138;
          sub_10000DE74(v141, v142);

          v144 = *v162;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v166 = v144;
          *v162 = 0x8000000000000000;
          sub_10000E51C(v86, v76, isUniquelyReferenced_nonNull_native);
          *v162 = v166;

          sub_1004DD84C();
          if (*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004DD8BC();
          }

          sub_1004DD90C();
          v159 = v168;
          if (v168 >> 62)
          {
            v146 = sub_1004DED5C();
          }

          else
          {
            v146 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v146 >= 30)
          {
            break;
          }
        }
      }

LABEL_84:

      sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
      v147 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v148 = swift_allocObject();
      v148[2] = v147;
      v148[3] = v159;
      v148[4] = v157;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10001044C, v148);

      if (qword_100631F18 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v149 = *v162;
      v150 = *(*v162 + 16);
      if (v150)
      {
        v151 = sub_100025110(*(*v162 + 16), 0);
        v152 = sub_10000E668(&v166, v151 + 4, v150, v149);
        v153 = v166;

        sub_100010458(v153);
        if (v152 == v150)
        {
LABEL_90:
          v154 = swift_allocObject();
          *(v154 + 16) = a3;
          v155 = a3;
          sub_1000212A4(v151, sub_100010460, v154);
        }

        __break(1u);
      }

      v151 = _swiftEmptyArrayStorage;
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  result = kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier;
  if (!kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v7 = sub_10001E914(kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier, a1);
  if ((v8 & 1) == 0)
  {
    v9 = v7;
    if (v7)
    {
LABEL_8:
      if (*(a2 + 16) && (v11 = sub_100028EF8(v9), (v12 & 1) != 0))
      {
        v13 = *(*(a2 + 56) + 8 * v11);
      }

      else
      {
        type metadata accessor for SharableTrack(0);
        swift_allocObject();
        v13 = sub_100025274(v9);
      }

      v14 = sub_10001E4FC(a1);
      v15 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
      *v15 = v14;
      v15[1] = v16;

      v17 = sub_10001E508(a1);
      v18 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
      *v18 = v17;
      v18[1] = v19;

      v20 = sub_10001E514(a1);
      v21 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_album);
      *v21 = v20;
      v21[1] = v22;

      result = kMRMediaRemoteNowPlayingInfoIsExplicitTrack;
      if (!kMRMediaRemoteNowPlayingInfoIsExplicitTrack)
      {
        goto LABEL_94;
      }

      *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isExplicit) = sub_10001E780(kMRMediaRemoteNowPlayingInfoIsExplicitTrack, a1) & 1;
      result = kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier;
      if (!kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v23 = sub_10001E914(kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier, a1);
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      v26 = v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_albumStoreIdentifier;
      *v26 = v25;
      *(v26 + 8) = v24 & 1 | (v23 == 0);
      *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying) = 1;
      v27 = sub_10001E6AC(a1);
      v28 = (v27 & &_mh_execute_header) == 0;
      if (*&v27 <= 0.0)
      {
        v28 = 0;
      }

      *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isPlaying) = v28;
      sub_1000253E0();
      v29 = swift_allocObject();
      *(v29 + 16) = a1;
      v30 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
      v31 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
      v32 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser + 8);
      *v30 = sub_100010520;
      v30[1] = v29;
      v33 = a1;
      sub_10000DE74(v31, v32);
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      v35 = (v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
      v36 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing);
      v37 = *(v13 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForSharing + 8);
      *v35 = sub_100010528;
      v35[1] = v34;
      v38 = v33;
      sub_10000DE74(v36, v37);

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v166 = v5;
      *v162 = 0x8000000000000000;
      sub_10000E51C(v13, v9, v39);
      *v162 = v166;

      sub_1004DD84C();
      if (*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();

      v159 = v168;
      goto LABEL_22;
    }
  }

  result = kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier;
  if (!kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  result = sub_10001E914(kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier, a1);
  if ((v10 & 1) == 0)
  {
    v9 = result;
    if (!result)
    {
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    goto LABEL_8;
  }

LABEL_97:
  __break(1u);
  return result;
}

id sub_10000CE60(void *a1)
{
  v1 = *&qword_100633198;
  v2 = sub_10001E5E0(a1);
  if (v3 >> 60 != 15)
  {
    v4 = v2;
    v5 = v3;
    v6 = objc_allocWithZone(UIImage);
    sub_100010530(v4, v5);
    isa = sub_1004D80FC().super.isa;
    v8 = [v6 initWithData:isa];

    sub_100010584(v4, v5);
    if (v8)
    {
      v9 = [objc_opt_self() staticArtworkCatalogWithImage:v8];
      [v9 setFittingSize:{v1, v1}];

      sub_100010584(v4, v5);
      return v9;
    }

    sub_100010584(v4, v5);
  }

  return 0;
}

id sub_10000CF68(void *a1)
{
  v1 = sub_10001E5E0(a1);
  if (v2 >> 60 != 15)
  {
    v3 = v1;
    v4 = v2;
    v5 = objc_allocWithZone(UIImage);
    sub_100010530(v3, v4);
    isa = sub_1004D80FC().super.isa;
    v7 = [v5 initWithData:isa];

    sub_100010584(v3, v4);
    if (v7)
    {
      v8 = [objc_opt_self() staticArtworkCatalogWithImage:v7];
      [v8 setFittingSize:{300.0, 300.0}];

      sub_100010584(v3, v4);
      return v8;
    }

    sub_100010584(v3, v4);
  }

  return 0;
}

id sub_10000D068(void *a1, void *a2, uint64_t a3)
{

  sub_1004DEA4C();
  if (*(a3 + 16) && (v4 = sub_100028F3C(v9), (v5 & 1) != 0))
  {
    sub_10000904C(*(a3 + 56) + 32 * v4, v10);
    sub_1000105EC(v9);
    sub_100006F10(0, &qword_100632430, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v6 = [a1 longLongValue];

      if (v6)
      {
        return v6;
      }
    }
  }

  else
  {
    sub_1000105EC(v9);
  }

  return 0;
}

id sub_10000D15C(void *a1, void *a2, uint64_t a3)
{

  sub_1004DEA4C();
  if (*(a3 + 16) && (v4 = sub_100028F3C(v9), (v5 & 1) != 0))
  {
    sub_10000904C(*(a3 + 56) + 32 * v4, v10);
    sub_1000105EC(v9);
    sub_100006F10(0, &qword_100632430, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v6 = [a1 BOOLValue];

      return v6;
    }
  }

  else
  {
    sub_1000105EC(v9);
  }

  return 0;
}

void sub_10000D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *(Strong + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks) = a2;

    swift_beginAccess();
    *&v6[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier] = *(a3 + 16);

    if ([v6 isViewLoaded])
    {
      v7 = *&v6[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      [v8 reloadData];
    }
  }
}

uint64_t sub_10000D338(uint64_t a1, void *a2)
{
  sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = a2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100010658, v4);
}

uint64_t sub_10000D3DC(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100632438, &unk_100512600);
  __chkstk_darwin();
  v5 = &v28 - v4;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier;
  v10 = (v6 + 63) >> 6;

  v12 = 0;
  while (v8)
  {
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(a1 + 56) + 16 * v15;
    if ((*(v16 + 8) & 1) == 0)
    {
      v17 = *(a2 + v9);
      if (*(v17 + 16))
      {
        v18 = *v16;
        result = sub_100028EF8(*(*(a1 + 48) + 8 * v15));
        if (v19)
        {
          v28 = a2;
          v20 = *(*(v17 + 56) + 8 * result);

          sub_100010660(v18, 0);
          v21 = [v18 productPageURL];
          if (v21)
          {
            v22 = v21;
            sub_1004D802C();

            v23 = 0;
          }

          else
          {
            v23 = 1;
          }

          v24 = sub_1004D809C();
          (*(*(v24 - 8) + 56))(v5, v23, 1, v24);
          v25 = OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_trackStoreURL;
          swift_beginAccess();
          sub_1000107AC(v5, v20 + v25, &qword_100632438, &unk_100512600);
          swift_endAccess();
          *(v20 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_audioPreviews) = sub_100023D94();

          v27 = sub_100024714(v26);
          sub_10001066C(v18, 0);
          *(v20 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_offerTypes) = v27;

          a2 = v28;
        }
      }
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v8 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10000D6E0()
{
  v1 = v0;
  v53.receiver = v0;
  v53.super_class = type metadata accessor for TrackPreviewViewController();
  objc_msgSendSuper2(&v53, "viewDidLoad");
  v2 = [objc_allocWithZone(type metadata accessor for TrackCellView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView;
  v4 = *&v0[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView];
  *&v0[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__cellView] = v2;

  v5 = *&v0[OBJC_IVAR____TtC16MusicMessagesAppP33_578446D9A918AE2275B472A9158C63A626TrackPreviewViewController__sharableTrack];
  if (!v5)
  {
LABEL_44:
    v50 = [v1 view];
    if (v50)
    {
      if (*&v1[v3])
      {
        v51 = v50;
        [v50 addSubview:?];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_49;
  }

  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (*(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8))
  {
    v7 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title);
    v8 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_title + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel;
  v10 = *&v6[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__titleLabel];
  v52 = v6;

  v11 = [v10 text];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1004DD43C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  if (v13 == v7 && v15 == v8)
  {

    v18 = *&v1[v3];
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  v17 = sub_1004DF08C();

  if ((v17 & 1) == 0)
  {
    v32 = *&v6[v9];
    v33 = sub_1004DD3FC();

    [v32 setText:v33];

    v9 = v52;
    [v52 setNeedsLayout];

    v18 = *&v1[v3];
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = *&v1[v3];
  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_17:
  v19 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isExplicit);
  v20 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel;
  v21 = *&v18[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__explicitLabel];
  v22 = v18;
  if (v19 == [v21 isHidden])
  {
    [*&v18[v20] setHidden:v19 ^ 1u];
    [v22 setNeedsLayout];
  }

  v6 = *&v1[v3];
  if (!v6)
  {
    goto LABEL_50;
  }

  if (*(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8))
  {
    v23 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist);
    v24 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artist + 8);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v9 = OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel;
  v25 = *&v6[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__artistLabel];
  v52 = v6;

  v26 = [v25 text];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1004DD43C();
    v30 = v29;

    if (v28 != v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v30 = 0xE000000000000000;
    if (v23)
    {
      goto LABEL_29;
    }
  }

  if (v30 == v24)
  {

    goto LABEL_34;
  }

LABEL_29:
  v31 = sub_1004DF08C();

  if (v31)
  {

    goto LABEL_34;
  }

LABEL_33:
  v34 = *&v6[v9];
  v35 = sub_1004DD3FC();

  [v34 setText:v35];

  [v52 setNeedsLayout];
LABEL_34:
  v36 = *&v1[v3];
  if (!v36)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v37 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isNowPlaying);
  v38 = *&v36[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel];
  v39 = v36;
  [v38 setHidden:(v37 & 1) == 0];
  [*&v39[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorDimmingView] setHidden:(v37 & 1) == 0];
  [*&v39[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView] setHidden:(v37 & 1) == 0];
  [v39 setNeedsLayout];

  v40 = *&v1[v3];
  if (!v40)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v41 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_isPlaying);
  v42 = *&v40[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView];
  v43 = *(v42 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped);
  *(v42 + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped) = v41 ^ 1;
  if (v41 == v43)
  {
    v44 = v40;
    sub_100005B14();
  }

  v45 = *&v1[v3];
  if (!v45)
  {
    goto LABEL_53;
  }

  if (*(v45 + OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView_artworkComponent))
  {
    v46 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser);
    if (v46)
    {
      v47 = *(v5 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_artworkCatalogForBrowser + 8);

      v48 = sub_10000DE64(v46, v47);
      v49 = v46(v48);
      sub_10000DE74(v46, v47);
    }

    else
    {

      v49 = 0;
    }

    sub_1000126C4(v49);

    goto LABEL_44;
  }

LABEL_54:
  __break(1u);
}

id sub_10000DDBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackPreviewViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DE64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000DE74(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000DE84()
{

  return swift_deallocObject();
}

uint64_t sub_10000DED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DEF0()
{

  return swift_deallocObject();
}

id sub_10000DF28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10000DF78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100006F10(0, &unk_100632470, UIMenuElement_ptr);
  v3 = sub_1004DD87C();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_10000E01C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_1004DED7C();
    type metadata accessor for SharableTrack(0);
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    sub_1004DEAAC(85);
    v3._countAndFlagsBits = 0xD000000000000046;
    v3._object = 0x80000001004E7460;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for SharableTrack(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  sub_1004DEAAC(82);
  v3._object = 0x80000001004E7410;
  v3._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_1004DD5FC(v3);
  v5._countAndFlagsBits = 0x656C626172616853;
  v5._object = 0xED00006B63617254;
  sub_1004DD5FC(v5);
  v6._countAndFlagsBits = 0x756F662074756220;
  v6._object = 0xEB0000000020646ELL;
  sub_1004DD5FC(v6);
  swift_getObjectType();
  v7._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v7);

  result = sub_1004DECDC();
  __break(1u);
  return result;
}

uint64_t sub_10000E1C8(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  sub_100006F10(0, a3, a4);
  if (a2 >> 62)
  {
    v6 = sub_1004DED7C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v6;
    }

LABEL_10:
    sub_1004DEAAC(85);
    v7._countAndFlagsBits = 0xD000000000000046;
    v7._object = 0x80000001004E7460;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v6;
  }

  sub_1004DEAAC(82);
  v7._object = 0x80000001004E7410;
  v7._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_1004DD5FC(v7);
  v9._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v9);

  v10._countAndFlagsBits = 0x756F662074756220;
  v10._object = 0xEB0000000020646ELL;
  sub_1004DD5FC(v10);
  swift_getObjectType();
  v11._countAndFlagsBits = sub_1004DF34C();
  sub_1004DD5FC(v11);

  result = sub_1004DECDC();
  __break(1u);
  return result;
}

id sub_10000E398(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100028EA8(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_1000225E4(v15, a4 & 1);
      v10 = sub_100028EA8(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_100006F10(0, &qword_100632490, NSUUID_ptr);
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_10002971C();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

unint64_t sub_10000E51C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100028EF8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100022AE8(v14, a3 & 1);
      result = sub_100028EF8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100029A04();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *sub_10000E668(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_10000E768()
{
  v1 = v0;
  v2 = sub_1004DE13C();
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin();
  v12 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DE0FC();
  __chkstk_darwin();
  sub_1004DBEFC();
  __chkstk_darwin();
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__contextMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack) = 0;
  v4 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewedItemIndexToIgnoreForNextSelect;
  v5 = sub_1004D85FC();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionFlowLayout) = 0;
  v11 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__mediaLibraryQueue;
  v10 = sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  type metadata accessor for MusicMessagesSharingViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1004DD43C();

  sub_1004DBEEC();
  v15 = _swiftEmptyArrayStorage;
  sub_100010984(&qword_1006321C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&unk_100632480, &qword_100511B00);
  sub_100008F60(&qword_1006321C8, &unk_100632480, &qword_100511B00);
  sub_1004DE92C();
  (*(v13 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *(v0 + v11) = sub_1004DE17C();
  *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserverToken) = 0;
  v8 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__nowPlayingObserver;
  if (qword_100631F38 != -1)
  {
    swift_once();
  }

  *(v1 + v8) = qword_100671920;
  *(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks) = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracksByStoreIdentifier;
  *(v1 + v9) = sub_10002763C(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) = 0;
  sub_1004DECCC();
  __break(1u);
}

char *sub_10000EB38(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SharingCollectionViewHeader();
  v4 = sub_1004DD43C();
  v6 = v5;
  v7 = static UICollectionReusableView.reuseIdentifier.getter();
  v9 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v3, v4, v6, a2, v7, v8, v3);

  if (qword_100631E78 != -1)
  {
    swift_once();
  }

  v11 = qword_1006321D0;
  v10 = *algn_1006321D8;
  v12 = OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label;
  v13 = *&v9[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label];

  v14 = [v13 text];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1004DD43C();
    v18 = v17;

    if (v16 != v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0xE000000000000000;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (v18 == v10)
  {

    return v9;
  }

LABEL_9:
  v19 = sub_1004DF08C();

  if (v19)
  {
  }

  else
  {
    v20 = *&v9[v12];
    v21 = sub_1004DD3FC();

    [v20 setText:v21];

    [*&v9[v12] sizeToFit];
    [v9 setNeedsLayout];
  }

  return v9;
}

BOOL sub_10000ED1C(uint64_t a1)
{
  sub_100004CB8(&qword_100632448, &qword_100511C48);
  __chkstk_darwin();
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v13[-v4];
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewedItemIndexToIgnoreForNextSelect;
  swift_beginAccess();
  sub_1000108DC(v1 + v10, v5, &qword_100632448, &qword_100511C48);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001074C(v5, &qword_100632448, &qword_100511C48);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_1004D857C();
    (*(v7 + 8))(v9, v6);
    if (v11)
    {
      (*(v7 + 56))(v3, 1, 1, v6);
      swift_beginAccess();
      sub_1000107AC(v3, v1 + v10, &qword_100632448, &qword_100511C48);
      swift_endAccess();
      return 0;
    }
  }

  return *(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack) == 0;
}

void sub_10000EF8C()
{
  v1 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks);
  if (v2 >> 62)
  {
    if (sub_1004DED5C() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v3 = sub_1004D85AC();
    v4 = *(v0 + v1);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = v3;

      v5 = sub_10000E01C(v11, v4);

      goto LABEL_7;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 8 * v3 + 32);

LABEL_7:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = v5;
        swift_unknownObjectRetain();

        sub_1000259B8(sub_100010A90, v8);

        swift_unknownObjectRelease();
      }

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v12 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = [objc_opt_self() defaultWorkspace];
  if (!v9)
  {
LABEL_24:

    __break(1u);
    return;
  }

  v10 = v9;
  [v9 openApplicationWithBundleID:v12];
  swift_unknownObjectRelease();
}

double sub_10000F1A0(void *a1)
{
  v4 = *&qword_1006330B8;
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_1004DE2CC();
  v8 = sub_10000AF78(v1, v7 & 1);
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v8;
  [a1 bounds];
  Width = CGRectGetWidth(v24);
  v10 = [v1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  v12 = sub_1004DE2BC();
  v13 = sub_1004DE2DC();

  if (v13)
  {
    v14 = [v1 traitCollection];
    v15 = [v14 preferredContentSizeCategory];

    LOBYTE(v14) = sub_1004DE2CC();
    if ((v14 & 1) == 0)
    {
LABEL_7:
      v19 = 0x4052400000000000;
LABEL_12:
      v20 = *&v19;
      v21 = [objc_opt_self() defaultMetrics];
      [v21 scaledValueForValue:v20];

      goto LABEL_13;
    }

    v16 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks];
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

LABEL_10:
    if (sub_1004DED5C() > 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v17 = [v1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 1)
    {
      goto LABEL_7;
    }

LABEL_11:
    v19 = 0x404B800000000000;
    goto LABEL_12;
  }

LABEL_13:

  return CGSize.nonNegative()((Width - (v4 + v4) + v9 * -10.0) / v7);
}

double sub_10000F40C(void *a1)
{
  type metadata accessor for SharingCollectionViewHeader();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_100631E78 != -1)
  {
    swift_once();
  }

  v4 = qword_1006321D0;
  v3 = *algn_1006321D8;
  v5 = OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label;
  v6 = *&v2[OBJC_IVAR____TtC16MusicMessagesApp27SharingCollectionViewHeader__label];

  v7 = [v6 text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1004DD43C();
    v11 = v10;

    if (v9 != v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0xE000000000000000;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  if (v11 == v3)
  {

    goto LABEL_12;
  }

LABEL_9:
  v12 = sub_1004DF08C();

  if (v12)
  {
  }

  else
  {
    v13 = *&v2[v5];
    v14 = sub_1004DD3FC();

    [v13 setText:v14];

    [*&v2[v5] sizeToFit];
    [v2 setNeedsLayout];
  }

LABEL_12:
  [a1 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a1 contentInset];
  v28.origin.x = sub_10001087C(v16, v18, v20, v22, v23, v24);
  [v2 sizeThatFits:{CGRectGetWidth(v28), 0.0}];
  v26 = v25;

  return v26;
}

id sub_10000F634(void *a1)
{
  sub_100004CB8(&qword_100632460, &qword_100511C60);
  __chkstk_darwin();
  v4 = &v20 - v3;
  v5 = sub_100004CB8(&qword_100632468, &qword_100511C68);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v20 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks);
  if (v9 >> 62)
  {
    if (sub_1004DED5C() < 1)
    {
      return 0;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  [a1 locationInView:{*(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__collectionView), v6}];
  sub_10000B7B8(v4, v10, v11);
  v12 = sub_100004CB8(&qword_100632450, &qword_100511C50);
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_10001074C(v4, &qword_100632460, &qword_100511C60);
    return 0;
  }

  v14 = *&v4[*(v12 + 48)];
  v15 = *(v5 + 48);
  v16 = sub_1004D85FC();
  v17 = *(v16 - 8);
  (*(v17 + 32))(v8, v4, v16);
  *&v8[v15] = v14;
  v18 = *&v8[*(v5 + 48)];
  (*(v17 + 8))(v8, v16);
  v19 = [objc_allocWithZone(UITargetedPreview) initWithView:v18];

  return v19;
}

id sub_10000F894(double a1, double a2)
{
  v67 = *(sub_100004CB8(&qword_100632458, &qword_100511C58) - 8);
  __chkstk_darwin();
  v6 = &v60 - v5;
  v7 = sub_1004D809C();
  v68 = *(v7 - 8);
  __chkstk_darwin();
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v60 - v9;
  sub_100004CB8(&qword_100632448, &qword_100511C48);
  __chkstk_darwin();
  v69 = &v60 - v11;
  sub_100004CB8(&qword_100632460, &qword_100511C60);
  __chkstk_darwin();
  v13 = &v60 - v12;
  v14 = sub_100004CB8(&qword_100632468, &qword_100511C68);
  __chkstk_darwin();
  v16 = &v60 - v15;
  v17 = sub_1004D85FC();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks;
  v22 = *(v2 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks);
  if (v22 >> 62)
  {
    v62 = v2;
    v57 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__sharableTracks;
    v58 = sub_1004DED5C();
    v21 = v57;
    v2 = v62;
    if (v58 < 1)
    {
      return 0;
    }
  }

  else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  v63 = v6;
  v64 = v21;
  v65 = v10;
  v23 = v2;
  sub_10000B7B8(v13, a1, a2);
  v24 = sub_100004CB8(&qword_100632450, &qword_100511C50);
  if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
  {
    sub_10001074C(v13, &qword_100632460, &qword_100511C60);
    return 0;
  }

  v61 = v7;
  v25 = v20;
  v26 = v23;
  v27 = *&v13[*(v24 + 48)];
  v28 = *(v14 + 48);
  v62 = v26;
  v30 = v18 + 32;
  v29 = *(v18 + 32);
  v29(v16, v13, v17);
  *&v16[v28] = v27;
  v31 = v25;
  v32 = v17;
  v33 = *&v16[*(v14 + 48)];
  v29(v25, v16, v17);
  v34 = v62;
  v35 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack;
  if (*(v62 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack))
  {

    (*(v18 + 8))(v25, v17);
    return 0;
  }

  v37 = sub_1004D85AC();
  v38 = *(v34 + v64);
  if ((v38 & 0xC000000000000001) != 0)
  {
    v59 = v37;

    v39 = sub_10000E01C(v59, v38);

    v30 = v18;
    goto LABEL_12;
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v37 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v18;
  v39 = *(v38 + 8 * v37 + 32);

LABEL_12:
  *(v34 + v35) = v39;

  v40 = v69;
  (*(v30 + 16))(v69, v31, v17);
  (*(v30 + 56))(v40, 0, 1, v17);
  v41 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewedItemIndexToIgnoreForNextSelect;
  swift_beginAccess();
  sub_1000107AC(v40, v34 + v41, &qword_100632448, &qword_100511C48);
  swift_endAccess();
  v42 = *(v34 + v35);
  if (!v42)
  {
    goto LABEL_19;
  }

  v43 = *(v42 + OBJC_IVAR____TtC16MusicMessagesApp13SharableTrack_audioPreviews);
  if (!*(v43 + 16))
  {
    goto LABEL_19;
  }

  v44 = v63;
  sub_1000108DC(v43 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v63, &qword_100632458, &qword_100511C58);
  v45 = *(v68 + 32);
  v46 = v66;
  v47 = v44;
  v48 = v61;
  v45(v66, v47, v61);
  v45(v65, v46, v48);
  if (([*&v33[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingLabel] isHidden] & 1) != 0 || *(*&v33[OBJC_IVAR____TtC16MusicMessagesApp13TrackCellView__nowPlayingIndicatorView] + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_isStopped) == 1)
  {
    if (qword_100631E68 == -1)
    {
LABEL_17:
      v49 = qword_100671800;
      sub_100006F9C(v65);
      *(v49 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer_volume) = 1065353216;
      LODWORD(v50) = 1.0;
      [*(v49 + OBJC_IVAR____TtC16MusicMessagesApp18AudioPreviewPlayer__player) setVolume:v50];
      goto LABEL_18;
    }

LABEL_25:
    swift_once();
    goto LABEL_17;
  }

LABEL_18:
  (*(v68 + 8))(v65, v61);
LABEL_19:
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v33;
  v53 = objc_opt_self();
  v74 = sub_100010874;
  v75 = v52;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10000DF28;
  v73 = &unk_1005CF7B8;
  v54 = _Block_copy(&aBlock);

  v74 = static MPMediaLibraryFilteringOptions.none.getter;
  v75 = 0;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10000DF78;
  v73 = &unk_1005CF7E0;
  v55 = _Block_copy(&aBlock);

  v56 = [v53 configurationWithIdentifier:0 previewProvider:v54 actionProvider:v55];

  _Block_release(v55);
  _Block_release(v54);
  (*(v30 + 8))(v31, v32);

  return v56;
}

void sub_1000100D8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__activePreviewingTrack);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v3;
      swift_retain_n();
      swift_unknownObjectRetain();
      sub_1000259B8(sub_100010744, v6);

      swift_unknownObjectRelease();
    }
  }

  *(v1 + v2) = 0;

  if (qword_100631E68 != -1)
  {
    swift_once();
  }

  sub_100007320();
  if (*(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) == 1)
  {
    *(v1 + OBJC_IVAR____TtC16MusicMessagesApp34MusicMessagesSharingViewController__previewingPreventedReload) = 0;

    sub_10000BB34();
  }
}

Swift::Int sub_100010218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100632440, &qword_100511C40);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_100010678(v6 + 40 * v4, v19);
      result = sub_1004DEA2C(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_100010678(*(v3 + 48) + 40 * i, v18);
        v11 = sub_1004DEA3C();
        result = sub_1000105EC(v18);
        if (v11)
        {
          sub_1000105EC(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
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

unint64_t sub_100010378()
{
  result = qword_100632410;
  if (!qword_100632410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100632410);
  }

  return result;
}

uint64_t sub_1000103CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100010404()
{

  return swift_deallocObject();
}

id sub_100010468()
{
  v1 = *&qword_100633198;
  v2 = [*(v0 + 16) artworkCatalog];
  [v2 setFittingSize:{v1, v1}];
  return v2;
}

id sub_1000104C8()
{
  v1 = [*(v0 + 16) artworkCatalog];
  [v1 setFittingSize:{300.0, 300.0}];
  return v1;
}

uint64_t sub_100010530(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100010584(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010598(a1, a2);
  }

  return a1;
}

uint64_t sub_100010598(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_100010660(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10001066C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000106D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100632448, &qword_100511C48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001074C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004CB8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000107AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004CB8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001082C(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_10001089C()
{

  return swift_deallocObject();
}

uint64_t sub_1000108DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004CB8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100010944()
{

  return swift_deallocObject();
}

uint64_t sub_100010984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000109D4()
{

  return swift_deallocObject();
}

id sub_100010A94()
{
  _s24LoadingStatusCoordinatorCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(NSHashTable) initWithOptions:5 capacity:0];
  result = [objc_allocWithZone(NSMapTable) initWithKeyOptions:5 valueOptions:0 capacity:0];
  *(v0 + 24) = result;
  qword_100671810 = v0;
  return result;
}

void sub_100010B18(uint64_t a1)
{
  v3 = &selRef_scaledValueForValue_;
  [*(v1 + 16) removeObject:a1];
  v4 = sub_100027990(_swiftEmptyArrayStorage);
  v87 = v4;
  v79 = v1;
  v5 = [*(v1 + 24) keyEnumerator];
  v74 = v5;
  v83 = a1;
  if ([v5 nextObject])
  {
    while (1)
    {
      sub_1004DE8DC();
      swift_unknownObjectRelease();
      sub_10000904C(v86, &v84);
      sub_100011884();
      if (swift_dynamicCast())
      {
        v6 = v85;
        v7 = [*(v79 + 24) objectForKey:v85];
        if (v7)
        {
          v8 = v7;
          v9 = v87;
          if ((v87 & 0xC000000000000001) != 0)
          {
            if (v87 < 0)
            {
              v10 = v87;
            }

            else
            {
              v10 = v87 & 0xFFFFFFFFFFFFFF8;
            }

            v11 = sub_1004DEC9C();
            if (__OFADD__(v11, 1))
            {
              goto LABEL_73;
            }

            v9 = sub_100011588(v10, v11 + 1);
            v87 = v9;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v84 = v9;
          v13 = sub_100028FF8(v6);
          v15 = *(v9 + 16);
          v16 = (v14 & 1) == 0;
          v17 = __OFADD__(v15, v16);
          v18 = v15 + v16;
          if (v17)
          {
            goto LABEL_72;
          }

          v19 = v14;
          if (*(v9 + 24) < v18)
          {
            sub_100022D58(v18, isUniquelyReferenced_nonNull_native);
            v13 = sub_100028FF8(v6);
            if ((v19 & 1) != (v20 & 1))
            {
              goto LABEL_75;
            }

            goto LABEL_19;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_19:
            v21 = v84;
            if ((v19 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v22 = v13;
            sub_100029B60();
            v13 = v22;
            v5 = v74;
            v21 = v84;
            if ((v19 & 1) == 0)
            {
LABEL_22:
              v21[(v13 >> 6) + 8] |= 1 << v13;
              *(v21[6] + 8 * v13) = v6;
              *(v21[7] + 8 * v13) = v8;
              sub_100008D24(v86);
              v23 = v21[2];
              v17 = __OFADD__(v23, 1);
              v24 = v23 + 1;
              if (v17)
              {
                goto LABEL_74;
              }

              v21[2] = v24;
              v87 = v21;
              goto LABEL_5;
            }
          }

          *(v21[7] + 8 * v13) = v8;

          sub_100008D24(v86);
          v87 = v21;
          goto LABEL_5;
        }

        sub_10001143C(v6);
      }

      sub_100008D24(v86);
LABEL_5:
      if (![v5 nextObject])
      {
        v4 = v87;
        v3 = &selRef_scaledValueForValue_;
        break;
      }
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    if (sub_1004DEC9C() <= 0)
    {
      goto LABEL_66;
    }

    v25 = sub_1004DEC8C();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v4 = v25 | 0x8000000000000000;
  }

  else
  {
    if (!*(v4 + 16))
    {
      goto LABEL_66;
    }

    v29 = -1 << *(v4 + 32);
    v26 = v4 + 64;
    v27 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v4 + 64);
  }

  v32 = 0;
  v81 = _swiftEmptyArrayStorage;
  v33 = (v27 + 64) >> 6;
  v75 = v33;
  v72 = v26;
  v73 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_43:
  v43 = sub_1004DECBC();
  if (!v43 || (v45 = v44, v85 = v43, sub_100011884(), swift_dynamicCast(), v42 = v84, v85 = v45, _s24LoadingStatusCoordinatorC12ObserverListCMa(), swift_dynamicCast(), v82 = v84, v34 = v32, v38 = v28, !v42))
  {
LABEL_62:
    sub_100010458(v4);
    v68 = v81[2];
    if (v68)
    {
      v69 = v81 + 5;
      do
      {
        v70 = *(v69 - 1);

        v70(v71);

        v69 += 2;
        --v68;
      }

      while (v68);

      v5 = v74;
      goto LABEL_67;
    }

LABEL_66:

LABEL_67:

    return;
  }

  while (1)
  {
    v77 = v42;
    v78 = v38;
    swift_beginAccess();
    v46 = v82[2];
    v47 = *(v46 + 16);
    v80 = (v46 + 16);
    if (v47)
    {
      v76 = v34;

      v48 = -v47;
      v49 = v47 - 1;
      v50 = 24 * v47 + 32;
      v51 = v80;
      v52 = v81;
      v53 = &selRef_scaledValueForValue_;
      do
      {
        if (!v48)
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (v49 >= *v51)
        {
          goto LABEL_69;
        }

        v56 = *(v51 + v50 - 40);
        v57 = *(v51 + v50 - 32);
        v58 = *(v51 + v50 - 24);

        [v58 v3[21]];
        if (![v58 v53[24]])
        {
          swift_beginAccess();
          v59 = v82[2];
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v82[2] = v59;
          if ((v60 & 1) == 0)
          {
            v59 = sub_100011810(v59);
            v82[2] = v59;
          }

          v61 = *(v59 + 2);
          if (v49 >= v61)
          {
            goto LABEL_70;
          }

          v62 = v61 - 1;
          v63 = v52;
          v64 = *&v59[v50 - 8];
          memmove(&v59[v50 - 24], &v59[v50], 24 * (v48 + v61));
          *(v59 + 2) = v62;
          v82[2] = v59;
          swift_endAccess();

          v52 = v63;

          v65 = swift_allocObject();
          *(v65 + 16) = v56;
          *(v65 + 24) = v57;
          v66 = v63[2];

          v67 = swift_isUniquelyReferenced_nonNull_native();
          if (!v67 || v66 >= v52[3] >> 1)
          {
            v52 = sub_100024EBC(v67, v66 + 1, 1, v52);
          }

          v3 = &selRef_scaledValueForValue_;
          sub_100004CB8(&qword_100632768, qword_100511D10);
          swift_arrayDestroy();
          v54 = v52[2];
          memmove(v52 + 6, v52 + 4, 16 * v54);
          v52[2] = v54 + 1;
          v52[4] = sub_10001185C;
          v52[5] = v65;
          v53 = &selRef_scaledValueForValue_;
          v51 = v80;
        }

        --v49;
        v50 -= 24;
      }

      while (!__CFADD__(v48++, 1));
      v81 = v52;

      v4 = v73;
      if (!*(v82[2] + 16))
      {
        v5 = v74;
        v26 = v72;
        v34 = v76;
        goto LABEL_36;
      }

      v32 = v76;
      v28 = v78;
      v5 = v74;
      v33 = v75;
      v26 = v72;
      if ((v73 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
LABEL_36:
      v35 = *(v79 + 24);
      [v35 removeObjectForKey:v77];

      v32 = v34;
      v28 = v78;
      v33 = v75;
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_37:
    v36 = v32;
    v37 = v28;
    v34 = v32;
    if (!v28)
    {
      break;
    }

LABEL_41:
    v38 = (v37 - 1) & v37;
    v39 = (v34 << 9) | (8 * __clz(__rbit64(v37)));
    v40 = v5;
    v41 = *(*(v4 + 56) + v39);
    v42 = *(*(v4 + 48) + v39);
    v82 = v41;
    v5 = v40;

    if (!v42)
    {
      goto LABEL_62;
    }
  }

  while (1)
  {
    v34 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v34 >= v33)
    {
      goto LABEL_62;
    }

    v37 = *(v26 + 8 * v34);
    ++v36;
    if (v37)
    {
      goto LABEL_41;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_1004DF16C();
  __break(1u);
}

uint64_t WeakValuesDictionary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100011308()
{

  return swift_deallocClassInstance();
}

__n128 sub_100011390(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000113A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000113EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001143C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_100028FF8(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100029590(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100029B60();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1004DECAC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1004DEC9C();
  v8 = sub_100011588(v4, v7);

  v9 = sub_100028FF8(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100029590(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_100011588(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004CB8(&qword_100632778, &qword_1005123B0);
    v2 = sub_1004DEDAC();
    v19 = v2;
    sub_1004DEC8C();
    v3 = sub_1004DECBC();
    if (v3)
    {
      v4 = v3;
      sub_100011884();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        _s24LoadingStatusCoordinatorC12ObserverListCMa();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100022D58(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1004DE5EC(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1004DECBC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1000117AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1004DED5C();
  }

  return sub_1004DEB3C();
}

uint64_t sub_100011824()
{

  return swift_deallocObject();
}

unint64_t sub_100011884()
{
  result = qword_100632770;
  if (!qword_100632770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100632770);
  }

  return result;
}

id sub_100011920(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_100011964()
{
  if (qword_100631E90 != -1)
  {
    swift_once();
  }

  v1 = qword_100632788;
  qword_100671818 = qword_100632788;

  return v1;
}

char *sub_1000119C8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_customBackgroundView;
  v11 = [objc_allocWithZone(UIView) init];
  if (qword_100631EA0 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_100671818];
  v12 = [v11 layer];
  if (qword_100631E88 != -1)
  {
    swift_once();
  }

  [v12 setCornerRadius:*&qword_100632780];

  v13 = [v11 layer];
  [v13 setCornerCurve:kCACornerCurveContinuous];

  [v11 setClipsToBounds:1];
  *&v4[v10] = v11;
  v14 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView;
  v15 = [objc_allocWithZone(UIView) init];
  if (qword_100631E98 != -1)
  {
    swift_once();
  }

  [v15 setBackgroundColor:qword_100632790];
  v16 = [v15 layer];
  [v16 setCornerRadius:*&qword_100632780];

  v17 = [v15 layer];
  [v17 setCornerCurve:kCACornerCurveContinuous];

  [v15 setClipsToBounds:1];
  [v15 setAlpha:0.0];
  *&v4[v14] = v15;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for PlatterCellView();
  v18 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  v20 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView;
  [v19 addSubview:*&v18[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView]];

  [*&v18[v20] addSubview:*&v18[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_customBackgroundView]];
  [*&v18[v20] addSubview:*&v18[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView]];

  return v18;
}

id sub_100011D3C(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for PlatterCellView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView];
  v3 = [v1 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView];
  [v2 bringSubviewToFront:v12];
  [v2 bounds];
  [v12 setFrame:?];
  v13 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_customBackgroundView];
  [v2 bounds];
  return [v13 setFrame:?];
}

void sub_100011F38(uint64_t a1)
{
  v2 = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PlatterCellView();
  objc_msgSendSuper2(&v9, "setHighlighted:", v2 & 1);
  if ([v1 isHighlighted])
  {
    v3 = 0.15;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v8[4] = sub_100012380;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100012680;
  v8[3] = &unk_1005CF9F0;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v4 animateWithDuration:v6 animations:v3];
  _Block_release(v6);
}

uint64_t sub_100012070(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PlatterCellView();
  objc_msgSendSuper2(&v10, "prepareForReuse");
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100012344;
  *(v4 + 24) = v3;
  v9[4] = sub_10001185C;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000121E8;
  v9[3] = &unk_1005CF9A0;
  v5 = _Block_copy(v9);
  v6 = v1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_100012258(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlatterCellView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001230C()
{

  return swift_deallocObject();
}

uint64_t sub_100012368(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100012380()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView];
  v3 = [v1 isHighlighted];
  v4 = 0.15;
  if (!v3)
  {
    v4 = 0.0;
  }

  return [v2 setAlpha:v4];
}

void sub_1000123EC()
{
  v1 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_platterView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_customBackgroundView;
  v3 = [objc_allocWithZone(UIView) init];
  if (qword_100631EA0 != -1)
  {
    swift_once();
  }

  [v3 setBackgroundColor:qword_100671818];
  v4 = [v3 layer];
  if (qword_100631E88 != -1)
  {
    swift_once();
  }

  [v4 setCornerRadius:*&qword_100632780];

  v5 = [v3 layer];
  [v5 setCornerCurve:kCACornerCurveContinuous];

  [v3 setClipsToBounds:1];
  *(v0 + v2) = v3;
  v6 = OBJC_IVAR____TtC16MusicMessagesApp15PlatterCellView_highlightDimmingView;
  v7 = [objc_allocWithZone(UIView) init];
  if (qword_100631E98 != -1)
  {
    swift_once();
  }

  [v7 setBackgroundColor:qword_100632790];
  v8 = [v7 layer];
  [v8 setCornerRadius:*&qword_100632780];

  v9 = [v7 layer];
  [v9 setCornerCurve:kCACornerCurveContinuous];

  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  *(v0 + v6) = v7;
  sub_1004DECCC();
  __break(1u);
}

uint64_t sub_100012680(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000126C4(id a1)
{
  v2 = v1[8];
  v53 = a1;
  if (!v2)
  {
    if (!a1)
    {
      v15 = v1[22];
      if (!v15)
      {
        return;
      }

      v16 = v1[19];
      v17 = v1[20];
      v18 = v1[21];
      v20 = v1[23];
      v19 = v1[24];
      v22 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent);
      v21 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 8);
      v24 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 16);
      v23 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 24);
      v26 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 32);
      v25 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 40);
      v27 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 48);
      v55[0] = v16;
      v55[1] = v17;
      v55[2] = v18;
      v55[3] = v15;
      v55[4] = v20;
      v55[5] = v19;
      if (v27 == 255)
      {
        v50 = v26;
        v52 = v25;
        v30 = v23;
        v48 = v19;
        v31 = v18;
        v32 = v15;
        v33 = v16;
        v34 = v17;
        sub_10001C7F0(v22, v21, v24, v30, v50, v52, 255);
        v35 = v16;
        v36 = v17;
        v37 = v18;
        v38 = v15;
        v39 = v20;
        v40 = v48;
        v41 = 1;
      }

      else
      {
        if (v27)
        {
          v54[0] = v22;
          v54[1] = v21;
          v54[2] = v24;
          v54[3] = v23;
          v54[4] = v26;
          v54[5] = v25;
          v45 = v23;
          v46 = v18;
          v28 = v26;
          v49 = v26;
          v29 = v25;
          v51 = v25;
          sub_10001C784(v22, v21, v24, v23, v26, v25, v27);
          sub_10001C784(v22, v21, v24, v45, v28, v29, v27);
          sub_10001B558(v16, v17, v46, v15);
          v47 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v54, v55);
          sub_10001B5B0(v16, v17, v46, v15);

          sub_10001C7F0(v22, v21, v24, v45, v49, v51, v27);
          v4 = v53;
          if (v47)
          {
            goto LABEL_13;
          }

LABEL_11:
          v12 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
          if (v12)
          {
            v13 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

            v12(v14);
            sub_10000DE74(v12, v13);
            v4 = v53;
          }

          goto LABEL_13;
        }

        v42 = v23;
        v43 = v26;
        v44 = v25;
        sub_10001C784(v22, v21, v24, v23, v26, v25, v27);
        sub_10001C79C(v22, v21, v24, v42, v43, v44, 0);

        v35 = v22;
        v36 = v21;
        v37 = v24;
        v38 = v42;
        v39 = v43;
        v40 = v44;
        v41 = v27;
      }

      sub_10001C7F0(v35, v36, v37, v38, v39, v40, v41);
LABEL_10:
      v4 = v53;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (!a1)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v3 = [v2 isArtworkVisuallyIdenticalToCatalog:a1];
  v4 = v53;
  if (!v3)
  {
LABEL_7:
    v5 = v1[14];
    v6 = v53;
    v7 = [v5 traitCollection];
    [v7 displayScale];
    v9 = v8;

    [v6 setDestinationScale:v9];
    v10 = v6;
    [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];

    a1 = v53;
    v2 = v1[8];
LABEL_9:
    v1[8] = a1;
    v11 = v10;

    goto LABEL_10;
  }

  if ((*(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
}

uint64_t sub_100012A7C(double a1, double a2)
{
  type metadata accessor for CGSize(0);
  v9 = *(v2 + 80);
  result = sub_1004D868C();
  if (result)
  {
    result = *(v2 + 64);
    if (result)
    {
      result = [result setFittingSize:{*(v2 + 80), *(v2 + 88), v9, *&a1, *&a2}];
    }

    if (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) != 1 || (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0 || !*(v2 + 72))
    {
      v6 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
      if (v6)
      {
        v7 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

        v6(v8);
        return sub_10000DE74(v6, v7);
      }
    }
  }

  return result;
}

void sub_100012B60(void **result)
{
  v4 = *result;
  v3 = result[1];
  v5 = result[2];
  v6 = result[3];
  v8 = result[4];
  v7 = result[5];
  v10 = *(v1 + 152);
  v9 = *(v1 + 160);
  v11 = *(v1 + 168);
  v12 = *(v1 + 176);
  v14 = *(v1 + 184);
  v13 = *(v1 + 192);
  if (v6)
  {
    if (v12)
    {
      v23[0] = *(v1 + 152);
      v23[1] = v9;
      v23[2] = v11;
      v23[3] = v12;
      v23[4] = v14;
      v23[5] = v13;
      v22[0] = v4;
      v22[1] = v3;
      v22[2] = v5;
      v22[3] = v6;
      v22[4] = v8;
      v22[5] = v7;
      sub_10001B558(v10, v9, v11, v12);
      sub_1000108DC(result, v21, &qword_100632FD0, &unk_1005120B0);
      v15 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v22, v23);

      sub_10001074C(result, &qword_100632FD0, &unk_1005120B0);
      if (v15)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v12)
  {
    return;
  }

  v19 = result[1];
  v20 = result[2];
  sub_10001B558(*(v1 + 152), v9, v11, v12);
  sub_1000108DC(result, v23, &qword_100632FD0, &unk_1005120B0);
  sub_10001B5B0(v4, v19, v20, v6);
  sub_10001B5B0(v10, v9, v11, v12);
LABEL_7:
  v16 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

    v16(v18);
    sub_10000DE74(v16, v17);
  }
}

uint64_t sub_100012D00(uint64_t a1)
{
  v3 = sub_1004DE53C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100632FD8, &unk_100512340);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = sub_100004CB8(&qword_100632FE0, &unk_1005120C0) - 8;
  __chkstk_darwin();
  v10 = &v21 - v9;
  v11 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  v12 = *(v8 + 56);
  sub_1000108DC(a1, v10, &qword_100632FD8, &unk_100512340);
  sub_1000108DC(v1 + v11, &v10[v12], &qword_100632FD8, &unk_100512340);
  v13 = *(v4 + 48);
  if (v13(v10, 1, v3) == 1)
  {
    if (v13(&v10[v12], 1, v3) == 1)
    {
      return sub_10001074C(v10, &qword_100632FD8, &unk_100512340);
    }
  }

  else
  {
    sub_1000108DC(v10, v7, &qword_100632FD8, &unk_100512340);
    if (v13(&v10[v12], 1, v3) != 1)
    {
      v18 = v21;
      (*(v4 + 32))(v21, &v10[v12], v3);
      sub_10001C73C(&qword_100632FE8, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
      v19 = sub_1004DD35C();
      v20 = *(v4 + 8);
      v20(v18, v3);
      v20(v7, v3);
      result = sub_10001074C(v10, &qword_100632FD8, &unk_100512340);
      if (v19)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v7, v3);
  }

  result = sub_10001074C(v10, &qword_100632FE0, &unk_1005120C0);
LABEL_7:
  v15 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v15)
  {
    v16 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

    v15(v17);
    return sub_10000DE74(v15, v16);
  }

  return result;
}

void sub_10001307C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment);
  v6 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment);
  v7 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment + 8);
  v8 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment + 16);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v16 = v8;
  if (v8)
  {
    if (a3)
    {
      v9 = a2;
      v10 = a3;
      if (static UIView.Border.__derived_struct_equals(_:_:)(v6, v7 & 1, v16, a1, v9 & 1, v10))
      {

        v11 = v16;
LABEL_12:

        return;
      }
    }
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v12 = a3;
  }

  v13 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (!v13)
  {

    v11 = a3;
    goto LABEL_12;
  }

  v14 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

  v13(v15);

  sub_10000DE74(v13, v14);
}

double sub_1000131D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1004DE53C();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin();
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100632FE0, &unk_1005120C0);
  __chkstk_darwin();
  v13 = &v49 - v12;
  sub_100004CB8(&qword_100632FD8, &unk_100512340);
  __chkstk_darwin();
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v49 - v16;
  __chkstk_darwin();
  v19 = &v49 - v18;
  v20 = sub_1000138A0(a1, a2, a3 & 1, v4);
  v22 = v21;
  v23 = v4[14];
  v24 = [v23 image];
  if (!v24 || (v25 = v24, [v24 size], v27 = v26, v29 = v28, v25, v30 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed, *(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1) && (*(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v4[9] || (v55 = v27, v56 = 0.0, (sub_1004D868C() & 1) == 0) || (v55 = v29, v56 = 0.0, (sub_1004D868C() & 1) == 0))
  {
LABEL_19:
    sub_1004DE43C();
    goto LABEL_20;
  }

  v49 = v30;
  v50 = v23;
  v31 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_1000108DC(v4 + v31, v19, &qword_100632FD8, &unk_100512340);
  sub_1004DE52C();
  v32 = v52;
  v33 = v53;
  (*(v52 + 56))(v17, 0, 1, v53);
  v34 = *(v11 + 48);
  sub_1000108DC(v19, v13, &qword_100632FD8, &unk_100512340);
  v51 = v34;
  sub_1000108DC(v17, &v13[v34], &qword_100632FD8, &unk_100512340);
  v35 = *(v32 + 48);
  if (v35(v13, 1, v33) != 1)
  {
    sub_1000108DC(v13, v15, &qword_100632FD8, &unk_100512340);
    v36 = v51;
    if (v35(&v13[v51], 1, v53) != 1)
    {
      v45 = v52;
      v46 = &v13[v36];
      v47 = v53;
      (*(v52 + 32))(v10, v46, v53);
      sub_10001C73C(&qword_100632FE8, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
      LODWORD(v51) = sub_1004DD35C();
      v48 = *(v45 + 8);
      v48(v10, v47);
      sub_10001074C(v17, &qword_100632FD8, &unk_100512340);
      sub_10001074C(v19, &qword_100632FD8, &unk_100512340);
      v48(v15, v47);
      sub_10001074C(v13, &qword_100632FD8, &unk_100512340);
      v37 = v50;
      if (v51)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    sub_10001074C(v17, &qword_100632FD8, &unk_100512340);
    sub_10001074C(v19, &qword_100632FD8, &unk_100512340);
    (*(v52 + 8))(v15, v53);
LABEL_12:
    sub_10001074C(v13, &qword_100632FE0, &unk_1005120C0);
    v37 = v50;
LABEL_13:
    if (v4[18] == 1)
    {
      sub_1004DE43C();
      v39 = v38;
      sub_1004DE43C();
      if (vabdd_f64(v39, v40) > 0.1 && (v27 >= v29 || v22 >= v20))
      {
        v41 = [v37 traitCollection];
        [v41 displayScale];

        v56 = v20 / v27;
        v54 = v22 / v29;
        if (sub_1004D868C())
        {
          sub_1004D871C();
          v20 = v42;
          sub_1004D871C();
        }
      }
    }

    goto LABEL_19;
  }

  sub_10001074C(v17, &qword_100632FD8, &unk_100512340);
  sub_10001074C(v19, &qword_100632FD8, &unk_100512340);
  if (v35(&v13[v51], 1, v53) != 1)
  {
    goto LABEL_12;
  }

  sub_10001074C(v13, &qword_100632FD8, &unk_100512340);
LABEL_22:
  if (v22 < v20)
  {
    v20 = v22;
  }

  v43 = 1.0;
LABEL_20:
  *(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_lastProposedAspectRatio) = v43;
  return v20;
}

double sub_1000138A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3 & 1) == 0 && (sub_1004D868C() & 1) != 0 && (sub_1004D868C())
  {
    return *&a1;
  }

  if (*(a4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(a4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0)
  {
    v7 = 96;
    if (!*(a4 + 72))
    {
      v7 = 80;
    }
  }

  else
  {
    v7 = 80;
  }

  return *(a4 + v7);
}

uint64_t sub_100013990(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_100004CB8(&qword_100632FD8, &unk_100512340);
  __chkstk_darwin();
  v11 = v111 - v10;
  v121 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed;
  if (*(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) != 1 || (*(v4 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0 || (v12 = v4[9]) == 0)
  {
    v12 = v4[8];
  }

  v13 = v12;
  v14 = v4[14];
  v15 = [v14 artworkCatalog];
  v16 = v12 == 0;
  v122 = v12;
  if (v15)
  {
    v17 = v15;
    if (v12)
    {
      sub_100006F10(0, &qword_1006330A8, MPArtworkCatalog_ptr);
      v18 = v12;
      v19 = sub_1004DE5FC();

      if (v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (!v12)
  {
LABEL_10:
    v20 = 0;
    goto LABEL_13;
  }

  [v14 clearArtworkCatalogs];
  *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = 0;
  v5[25] = 0;
  v5[26] = 0;

  v20 = 1;
LABEL_13:
  v21 = [v14 traitCollection];
  [v21 displayScale];
  v23 = v22;

  type metadata accessor for CGRect(0);
  [v14 frame];
  *&aBlock = v24;
  *(&aBlock + 1) = v25;
  *&v124 = v26;
  *(&v124 + 1) = v27;
  v128 = a1;
  v129 = a2;
  v130 = a3;
  v131 = a4;
  if (sub_1004D868C())
  {
    [v14 setFrame:{a1, a2, a3, a4}];
  }

  v28 = v5[15];
  if (v28)
  {
    v29 = v28;
    [v29 frame];
    *&aBlock = v30;
    *(&aBlock + 1) = v31;
    *&v124 = v32;
    *(&v124 + 1) = v33;
    v128 = 0.0;
    v129 = 0.0;
    v130 = a3;
    v131 = a4;
    if (sub_1004D868C())
    {
      [v29 setFrame:{0.0, 0.0, a3, a4}];
    }
  }

  v34 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment);
  v35 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment + 8);
  v36 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_borderTreatment + 16);
  v37 = v36;
  UIView.border.setter(v34, v35, v36);
  v38 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_1000108DC(v5 + v38, v11, &qword_100632FD8, &unk_100512340);
  sub_1004DE54C();
  v39 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_foregroundOverlayView);
  if (v39)
  {
    [v39 setFrame:{0.0, 0.0, a3, a4}];
  }

  sub_1000162EC();
  v40 = v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent;
  v41 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  if (v41 != 255 && (v41 & 1) != 0)
  {
    v42 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
    if (v42)
    {
      v43 = v42;
      [v14 bounds];
      [v43 setFrame:?];

      v41 = v40[48];
    }
  }

  v44 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_needsArtworkReload;
  v45 = v20 | *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_needsArtworkReload);
  if (v41 != 255)
  {
    v119 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_needsArtworkReload;
    LODWORD(v120) = v16;
    v46 = *v40;
    v47 = *(v40 + 1);
    v48 = *(v40 + 2);
    v49 = *(v40 + 3);
    v51 = *(v40 + 4);
    v50 = *(v40 + 5);
    if (v41)
    {
      v128 = *v40;
      v129 = *&v47;
      v130 = *&v48;
      v131 = *&v49;
      v132 = v51;
      v133 = v50;
      if (v45)
      {
        v52 = 1;
        sub_10001C79C(v46, v47, v48, v49, v51, v50, 1);

LABEL_41:
        v53 = v122;
        LOBYTE(v16) = v120;
LABEL_42:
        v44 = v119;
        goto LABEL_43;
      }

      v55 = v5[19];
      v54 = v5[20];
      v56 = v5[21];
      v57 = v5[22];
      v58 = v5[23];
      v59 = v5[24];
      v118 = v56;
      v117 = v58;
      v116 = v54;
      v115 = v55;
      if (v57)
      {
        v127[0] = v55;
        v127[1] = v54;
        v127[2] = v56;
        v127[3] = v57;
        v127[4] = v58;
        v127[5] = v59;
        v111[1] = v59;
        v60 = v56;
        v114 = v57;
        sub_10001C784(v46, v47, v48, v49, v51, v50, v41);
        v61 = v48;
        v62 = v49;
        v113 = v46;
        v63 = v47;
        v64 = v115;
        v65 = v116;
        sub_10001B558(v115, v116, v60, v114);
        v112 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v127, &v128);

        v66 = v113;
        sub_10001B5B0(v64, v65, v118, v114);
        v52 = v112 ^ 1;
        goto LABEL_41;
      }

      sub_10001C784(v46, v47, v48, v49, v51, v50, v41);
      sub_10001B5B0(v115, v116, v118, 0);
      sub_10001B5B0(v46, v47, v48, v49);
    }

    else
    {
      sub_10001C79C(*v40, *(v40 + 1), *(v40 + 2), *(v40 + 3), *(v40 + 4), *(v40 + 5), 0);

      if ((v45 & 1) == 0)
      {
        v53 = v122;
        LOBYTE(v16) = v120;
        if (!v122)
        {

          LOBYTE(v16) = 1;
          v44 = v119;
          goto LABEL_53;
        }

        v67 = v122;
        v68 = [v67 isArtworkVisuallyIdenticalToCatalog:v46];

        v52 = v68 ^ 1;
        goto LABEL_42;
      }
    }

    v52 = 1;
    goto LABEL_41;
  }

  v53 = v122;
  if (!(v45 & 1 | (v122 != 0)))
  {
    if (v5[22])
    {
      LOBYTE(v16) = 1;
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  v52 = 1;
LABEL_43:
  if (!*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog) || !v53)
  {
    if (v52)
    {
      goto LABEL_53;
    }

LABEL_49:
    v70 = 0;
    goto LABEL_50;
  }

  v69 = [v53 isArtworkVisuallyIdenticalToCatalog:?];
  v70 = v69;
  if (v52)
  {
    if (v69)
    {
      v70 = 1;
      goto LABEL_50;
    }

    LOBYTE(v16) = 0;
LABEL_53:
    if (qword_100631E80 != -1)
    {
      swift_once();
    }

    [*(qword_100671810 + 16) addObject:v5];
    if (*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isReusable) == 1)
    {
      [v14 setImage:0];
      sub_100019F64();
    }

    v72 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
    if (v72)
    {
      [v72 setHidden:1];
    }

    [v14 setHidden:0];
    *(v5 + v44) = 0;
    v73 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler);
    if (v73)
    {
      v74 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler + 8);

      v73(v75);
      sub_10000DE74(v73, v74);
    }

    v77 = v5[19];
    v76 = v5[20];
    v79 = v5[21];
    v78 = v5[22];
    v80 = v5[23];
    v81 = v5[24];
    if (v16)
    {
      if (v78)
      {
        *&aBlock = v5[19];
        *(&aBlock + 1) = v76;
        *&v124 = v79;
        *(&v124 + 1) = v78;
        *&v125 = v80;
        *(&v125 + 1) = v81;
        v71 = 1;
        v126 = 1;
        sub_10001B558(v77, v76, v79, v78);
        v82 = v79;
        v83 = v78;
        v84 = v77;
        v85 = v76;
        sub_100015958(&aBlock);

        return v71 & 1;
      }

      v125 = 0u;
      v124 = 0u;
      aBlock = 0u;
      v126 = -1;
      sub_100015958(&aBlock);
    }

    else
    {
      if (*(v5 + v121) == 1 && (*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v5[9])
      {
        v86 = 13;
        v87 = 12;
      }

      else
      {
        v86 = 11;
        v87 = 10;
      }

      v88 = *&v5[v86];
      v89 = *&v5[v87];
      v90 = v5[19];
      v91 = v5[20];
      v92 = v5[21];
      v93 = v5[22];
      v120 = v5[23];
      sub_10001B558(v90, v91, v92, v93);
      [v53 setFittingSize:{v89, v88}];
      [v53 setDestinationScale:v23];

      v94 = sub_1004DD3FC();

      [v53 setCacheIdentifier:v94 forCacheReference:v5[2]];

      if ((v5[6] & 1) == 0)
      {
        v119 = v79;
        v95 = v53;
        v96 = v5[5];

        v97 = sub_1004DD3FC();

        v98 = v5[2];
        v99 = objc_opt_self();
        v100 = v98;
        v53 = v95;
        v79 = v119;
        [v99 setCacheLimit:v96 forCacheIdentifier:v97 cacheReference:v100];
      }

      if (*(v5 + v121) == 1 && (*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && v5[9])
      {
        v101 = [objc_opt_self() defaultController];
        v119 = v79;
        v102 = v53;
        v103 = v101;
        v104 = sub_1004DD3FC();
        v105 = [v103 takeAssertionPreventingResourceReclamationWithReason:v104];

        v53 = v102;
        v79 = v119;

        v106 = 3;
      }

      else
      {
        v105 = 0;
        v106 = 1;
      }

      v107 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion);
      *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_resourceReclamationAssertion) = v105;

      v108 = swift_allocObject();
      swift_weakInit();
      *&v125 = sub_10001C9EC;
      *(&v125 + 1) = v108;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v124 = sub_100014F88;
      *(&v124 + 1) = &unk_1005CFD78;
      v109 = _Block_copy(&aBlock);

      [v53 setDestination:v14 forRepresentationKinds:v106 configurationBlock:v109];
      sub_10001B5B0(v77, v76, v79, v78);

      _Block_release(v109);
    }

    v71 = 1;
    return v71 & 1;
  }

LABEL_50:

  v71 = (v40[48] != 255) | v70;
  return v71 & 1;
}

void sub_1000145BC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [*(Strong + 112) artworkCatalog];
    if (v6)
    {
      v7 = v6;
      v8 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed;
      if ((*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) & 1) != 0 && (*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && (v9 = v5[9]) != 0 || (v9 = v5[8]) != 0)
      {
        v10 = v9;
        v11 = [v10 isArtworkVisuallyIdenticalToCatalog:v7];

        if (v11)
        {
          v12 = [a2 imageRepresentation];
          if (v12 || (v12 = [a2 videoRepresentation]) != 0)
          {

            v13 = 1;
          }

          else
          {
            v13 = 0;
          }

          if (*(v5 + v8) != 1 || (v14 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork, (*(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) != 0) || ((v5[9] != 0) & ~v13) == 0)
          {
            v15 = [v7 visualIdenticalityIdentifier];
            v16 = v15;
            if (v15)
            {
              if ([v15 respondsToSelector:"stringRepresentation"])
              {
                v17 = [v16 stringRepresentation];
                swift_unknownObjectRelease();
                if (v17)
                {
                  v16 = sub_1004DD43C();
                  v19 = v18;

                  goto LABEL_21;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v16 = 0;
            }

            v19 = 0;
LABEL_21:
            v5[25] = v16;
            v5[26] = v19;

            v20 = [a2 imageRepresentation];
            v21 = [a2 videoRepresentation];
            if (v20)
            {
              v22 = v20;
              v23 = [v22 image];
              if (v23)
              {
                v24 = v23;
                LOBYTE(aBlock) = 0;
                v25 = sub_10001C9F4();
                if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v25) & 1) != 0 && ![v22 isImagePrepared])
                {
                  v44 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog);
                  *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog) = v7;
                  v45 = v7;

                  v46 = swift_allocObject();
                  v46[2] = v45;
                  v46[3] = v5;
                  v46[4] = v24;
                  *&v52 = sub_10001CA90;
                  *(&v52 + 1) = v46;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v51 = sub_100014F1C;
                  *(&v51 + 1) = &unk_1005CFDC8;
                  v47 = _Block_copy(&aBlock);
                  v48 = v45;
                  v49 = v24;

                  [v49 prepareForDisplayWithCompletionHandler:v47];

                  _Block_release(v47);
                  if (!v21)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  *&aBlock = v7;
                  *(&aBlock + 1) = v24;
                  v51 = 0u;
                  v52 = 0u;
                  v53 = 0;
                  v26 = v7;
                  v27 = v24;
                  sub_100015958(&aBlock);

                  if (!v21)
                  {
                    goto LABEL_44;
                  }
                }

LABEL_29:
                v28 = v21;
                v29 = [a2 isBestRepresentationForKind:{objc_msgSend(v28, "kind")}];

                if (v29)
                {
                  v30 = [v28 video];
                  sub_100016688(v30);

LABEL_45:

                  return;
                }

LABEL_44:
                sub_100016688(0);

                goto LABEL_45;
              }
            }

            if (!v21)
            {
              v31 = v5[22];
              if (v31)
              {
                v32 = v5[23];
                v33 = v5[24];
                v35 = v5[20];
                v34 = v5[21];
                *&aBlock = v5[19];
                *(&aBlock + 1) = v35;
                *&v51 = v34;
                *(&v51 + 1) = v31;
                *&v52 = v32;
                *(&v52 + 1) = v33;
                v53 = 1;
                sub_10001B558(aBlock, v35, v34, v31);
                v36 = v34;
                v37 = v31;
                v38 = aBlock;
                v39 = v35;
                sub_100015958(&aBlock);
              }

              else
              {
                v51 = 0u;
                v52 = 0u;
                aBlock = 0u;
                v53 = -1;
                sub_100015958(&aBlock);
              }

              goto LABEL_44;
            }

            goto LABEL_29;
          }

          v40 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
          *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
          if (v40)
          {
            [v40 invalidate];
          }

          *(v5 + v14) = 1;
          v41 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
          if (v41)
          {
            v42 = *(v5 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

            v41(v43);

            sub_10000DE74(v41, v42);
            return;
          }
        }
      }
    }
  }
}

uint64_t sub_100014B28(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = a4;
  v9 = a1;
  v10 = a4;
  v11 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10001CAEC, v8);
}

void sub_100014BE8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1004D966C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && (v12 = *(a2 + 72)) != 0 || (v12 = *(a2 + 64)) != 0) && (v13 = v12, sub_100006F10(0, &qword_1006330A8, MPArtworkCatalog_ptr), v14 = a1, v15 = sub_1004DE5FC(), v13, v14, (v15))
  {
    if (a3)
    {
      v32 = v14;
      v33 = a3;
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
      v16 = v14;
      v17 = a3;
      sub_100015958(&v32);
    }

    else
    {
      v23 = Logger.artwork.unsafeMutableAddressor();
      (*(v9 + 16))(v11, v23, v8);
      v24 = a4;
      v25 = sub_1004D964C();
      v26 = sub_1004DDF7C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to prepare image: %@", v27, 0xCu);
        sub_10001074C(v28, &qword_100633038, &qword_1005121F8);
      }

      (*(v9 + 8))(v11, v8);
      v32 = v14;
      v33 = v24;
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
      sub_100015958(&v32);
    }

    v30 = *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog);
    *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog) = 0;
  }

  else
  {
    v18 = *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog);
    *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_decodingCatalog) = 0;

    v19 = a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler;
    v20 = *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v20)
    {
      v21 = *(v19 + 8);

      v20(v22);

      sub_10000DE74(v20, v21);
    }
  }
}

void sub_100014F1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100014F88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a2;

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v8, v6);

  return sub_100008D24(v8);
}

uint64_t sub_100015218()
{
  v5 = sub_1004DE13C();
  v0 = *(v5 - 8);
  __chkstk_darwin();
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DE0FC();
  __chkstk_darwin();
  sub_1004DBEFC();
  __chkstk_darwin();
  v4[1] = sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  sub_1004DBEDC();
  v6 = _swiftEmptyArrayStorage;
  sub_10001C73C(&qword_1006321C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&unk_100632480, &qword_100511B00);
  sub_100008F60(&qword_1006321C8, &unk_100632480, &qword_100511B00);
  sub_1004DE92C();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  result = sub_1004DE17C();
  qword_1006327D8 = result;
  return result;
}

void sub_100015478(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
  *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = a1;
  if (a1)
  {
    if (v3)
    {
      sub_100006F10(0, &qword_1006330A0, NSTimer_ptr);
      v2 = v2;
      v5 = v3;
      v4 = sub_1004DE5FC();

      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 = a1;
    }
  }

  else if (!v3)
  {
    return;
  }

  [v3 invalidate];
  v5 = v3;
LABEL_9:
}

id sub_100015558(void *a1)
{
  v2 = v1;
  v4 = sub_1004DBF6C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  *v7 = sub_1004DE14C();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_1004DBF9C();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v10 = *(v2 + 144);
  v11 = *(v2 + 112);
  v12 = OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed;
  if (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v2 + 72))
  {
    v13 = *(v2 + 136);
    v14 = v13;
    v15 = sub_10001BBB0(v13);
    result = [v11 contentMode];
    if (result == v15)
    {
      return result;
    }

    result = [v11 setContentMode:v15];
    goto LABEL_20;
  }

  if (!a1)
  {
    goto LABEL_18;
  }

  [a1 size];
  if (v16 < v17)
  {
    if (*(v2 + v12) == 1 && (*(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0)
    {
      v26 = *(v2 + 72);
      v27 = 96;
      if (!v26)
      {
        v27 = 80;
      }

      v18 = *(v2 + v27);
      if (v26)
      {
        v19 = 104;
LABEL_13:
        if (*(v2 + v19) < v18)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v18 = *(v2 + 80);
    }

    v19 = 88;
    goto LABEL_13;
  }

LABEL_14:
  if (v10 == 1)
  {
LABEL_15:
    [a1 size];
    sub_1004DE43C();
    v21 = v20;
    sub_1004DE43C();
    if (vabdd_f64(v21, v22) > 0.1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

LABEL_18:
  result = [v11 contentMode];
  if (result == v10)
  {
    return result;
  }

  result = [v11 setContentMode:v10];
LABEL_20:
  v23 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler);
  if (v23)
  {
    v24 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler + 8);

    v23(v25);
    return sub_10000DE74(v23, v24);
  }

  return result;
}

uint64_t sub_10001585C(uint64_t a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    v18 = *a2;
    v16 = v2;
    v13 = v16;
    if (v4)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v16 isArtworkVisuallyIdenticalToCatalog:v18];
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = a2[2];
  v10 = *(a1 + 24);
  v19[0] = *a1;
  v19[1] = v6;
  v19[2] = v5;
  v19[3] = v10;
  v20 = *(a1 + 32);
  if (v4)
  {
    v21 = v3;
    v22 = v7;
    v23 = v8;
    v24 = v9;
    v11 = v5;
    v12 = v10;
    v13 = v2;
    v14 = v6;
    v15 = static Artwork.Placeholder.__derived_struct_equals(_:_:)(v19, &v21);

LABEL_8:
    return v15 & 1;
  }

  v15 = 0;
  return v15 & 1;
}

void sub_100015958(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1004DBF6C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  *v8 = sub_1004DE14C();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = sub_1004DBF9C();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_38;
  }

  v10 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);
  if ((v10 & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = v10 | 1;
  }

  v11 = *(v3 + 112);
  v12 = [v11 image];
  sub_100015558(v12);

  v13 = v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent;
  v14 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent);
  v72 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 8);
  v73 = v14;
  v15 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 16);
  v70 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 24);
  v71 = v15;
  v16 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 40);
  v69 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 32);
  v68 = v16;
  v67 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  v17 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 16) = v17;
  *(v13 + 32) = *(a1 + 32);
  *(v13 + 48) = *(a1 + 48);
  sub_1000108DC(a1, &aBlock, &qword_100633068, &qword_100512218);
  v18 = AccessibilityIdentifier.artwork.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = v18[3];
  sub_100006F10(0, &qword_100633070, UIImageView_ptr);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v19, v20, v23, v21, v22);
  v24 = *(a1 + 48);
  if (v24 == 255)
  {
    [v11 setHidden:1];
    v33 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
    if (v33)
    {
      [v33 setHidden:1];
    }

    sub_100019F64();
    v34 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
    v2 = v67;
    if (v34)
    {
      v35 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler + 8);

      v34(0);
      sub_10000DE74(v34, v35);
    }
  }

  else
  {
    v25 = *(a1 + 8);
    if (v24)
    {
      v66 = *(a1 + 8);
      v26 = *a1;
      v28 = *(a1 + 16);
      v27 = *(a1 + 24);
      v80 = *(a1 + 32);
      v29 = v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView;
      v30 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
      if (v30)
      {
        v31 = *(v29 + 8);
        v32 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
      }

      else
      {
        aBlock = v26;
        v76 = v66;
        v77 = v28;
        v78 = v27;
        v79 = *(a1 + 32);
        v37 = sub_10001C868();
        v32 = MusicUIContentConfiguration.makeContentView()(&type metadata for Artwork.Placeholder, v37);
        v31 = v38;
        v30 = 0;
      }

      v65[1] = swift_getObjectType();
      v39 = v30;
      v40 = [v32 superview];
      if (v40)
      {
      }

      else
      {
        [v11 insertSubview:v32 atIndex:0];
      }

      v45 = *v29;
      *v29 = v32;
      *(v29 + 8) = v31;
      v46 = v32;

      [v46 setHidden:0];
      v47 = v66;
      v81 = v26;
      v82 = v66;
      v83[0] = v28;
      v78 = &type metadata for Artwork.Placeholder;
      *&v79 = sub_10001C8BC();
      v48 = swift_allocObject();
      aBlock = v48;
      *(v48 + 16) = v26;
      *(v48 + 24) = v47;
      *(v48 + 32) = v28;
      *(v48 + 40) = v27;
      *(v48 + 48) = v80;
      v49 = v27;
      sub_1000108DC(&v81, v74, &qword_100633088, &qword_100512220);
      sub_1000108DC(&v82, v74, &qword_100633088, &qword_100512220);
      sub_1000108DC(v83, v74, &qword_100633090, &qword_100512228);
      sub_1004D970C();
      v50 = *(v13 + 48);
      if (v50 != 255 && (v50 & 1) != 0 && *v29)
      {
        v51 = *v29;
        [v11 bounds];
        [v51 setFrame:?];
      }

      v52 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
      v2 = v67;
      if (v52)
      {
        v53 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

        v52(v54);
        sub_10000DE74(v52, v53);
      }
    }

    else
    {
      [v11 setHidden:0];
      v36 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_placeholderView);
      if (v36)
      {
        [v36 setHidden:1];
      }

      v2 = v67;
      if (v67 == 255)
      {
        v41 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component__fadeImageView);
        v42 = [v11 image];
        [v41 setImage:v42];

        v43 = [v41 image];
        if (v43)
        {

          v44 = 0;
        }

        else
        {
          v44 = [v11 backgroundColor];
        }

        [v41 setBackgroundColor:v44];

        [v41 setAlpha:1.0];
        [v41 setHidden:0];
        [v11 setImage:v25];
        v55 = objc_opt_self();
        *&v79 = sub_10001C960;
        *(&v79 + 1) = v3;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_100012680;
        v78 = &unk_1005CFD28;
        v56 = _Block_copy(&aBlock);

        *&v79 = sub_10001C97C;
        *(&v79 + 1) = v3;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_100016298;
        v78 = &unk_1005CFD50;
        v57 = _Block_copy(&aBlock);

        [v55 animateWithDuration:v56 animations:v57 completion:0.2];
        _Block_release(v57);
        _Block_release(v56);
      }

      else
      {
        [v11 setImage:v25];
      }

      [v25 size];
      sub_1004DE43C();
      sub_1004DE43C();
      sub_1004DE43C();
      aBlock = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_lastProposedAspectRatio);
      *&v80 = v58;
      if (sub_1004D868C())
      {
        v59 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
        if (v59)
        {
          v60 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

          v59(v61);
          sub_10000DE74(v59, v60);
        }
      }

      sub_100015558(v25);
    }
  }

  sub_1000162EC();
  v62 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  if (v62)
  {
    v63 = *(v3 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_imageDidChangeHandler + 8);

    v62(v64);
    sub_10000DE74(v62, v63);
  }

  if (qword_100631E80 != -1)
  {
    goto LABEL_40;
  }

LABEL_38:
  sub_100010B18(v3);
  sub_10001C7F0(v73, v72, v71, v70, v69, v68, v2);
}

uint64_t sub_100016298(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1000162EC()
{
  v1 = *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_explicitBackgroundColor);
  v2 = v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent;
  v3 = *(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_appliedContent + 48);
  v32 = v1;
  if (v3 == 255)
  {
    v13 = v1;
    v12 = v32;
    goto LABEL_5;
  }

  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  if (v3)
  {
    v10 = v1;
    sub_10001C784(v5, v4, v6, v7, v9, v8, v3);
    v11 = v10;

    v12 = [objc_opt_self() clearColor];
    goto LABEL_5;
  }

  if (!v1)
  {
    sub_10001C79C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), 0);
    [v4 size];
    v20 = v19;
    [v4 size];
    if (v20 >= v21)
    {
      goto LABEL_21;
    }

    if (*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v0 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0)
    {
      v30 = *(v0 + 72);
      v31 = 96;
      if (!v30)
      {
        v31 = 80;
      }

      v22 = *(v0 + v31);
      if (v30)
      {
        v23 = 104;
LABEL_19:
        if (*(v0 + v23) < v22)
        {
LABEL_20:
          v12 = [objc_opt_self() blackColor];

          goto LABEL_5;
        }

LABEL_21:
        v24 = COERCE_DOUBLE(MPArtworkCatalog.originalSize.getter());
        if ((v27 & 1) == 0)
        {
          v26 = v24;
          if (v24 < v25)
          {
            goto LABEL_20;
          }
        }

        if ([v5 dataSource])
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            swift_unknownObjectRelease();
            goto LABEL_30;
          }

          swift_unknownObjectRelease();
        }

        v28 = [v5 existingColorAnalysisWithAlgorithm:1];
        if (v28)
        {
          v29 = v28;
          v12 = [v28 backgroundColor];

LABEL_5:
          v14 = *(v0 + 112);
          if (!v12)
          {
            v15 = [objc_opt_self() clearColor];
            v16 = 0;
            goto LABEL_11;
          }

          goto LABEL_9;
        }

LABEL_30:
        v14 = *(v0 + 112);
        v18 = *(v0 + 56);
        goto LABEL_10;
      }
    }

    else
    {
      v22 = *(v0 + 80);
    }

    v23 = 88;
    goto LABEL_19;
  }

  v17 = v1;
  sub_10001C784(v5, v4, v6, v7, v9, v8, v3);
  v12 = v17;

  v14 = *(v0 + 112);
LABEL_9:
  v18 = v12;
LABEL_10:
  v15 = v18;
  v16 = v18;
LABEL_11:
  [v14 setBackgroundColor:v15];
}

void sub_100016688(void *a1)
{
  v2 = v1;
  v4 = sub_1004DBF6C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  *v7 = sub_1004DE14C();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_1004DBF9C();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (a1)
    {
      v9 = *(v2 + 128);
      if (v9)
      {
        v10 = a1;
        v11 = [v9 player];
        v12 = [v11 currentItem];

        if (v12)
        {
          v9 = [v12 asset];

          if (v9)
          {
            sub_100006F10(0, &qword_100633060, AVAsset_ptr);
            v13 = v10;
            v9 = v9;
            v14 = sub_1004DE5FC();

            if (v14)
            {

              return;
            }
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v19 = a1;
      }

      sub_1000168F0(a1);
    }

    else
    {
      v15 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);
      if ((v15 & 2) == 0)
      {
        *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = v15 | 2;
        v16 = v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler;
        v17 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
        if (v17)
        {
          v18 = *(v16 + 8);

          v17(0);
          sub_10000DE74(v17, v18);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000168F0(void *a1)
{
  v26 = *v1;
  v27 = a1;
  v2 = sub_1004DBEBC();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin();
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1004DBEFC();
  v28 = *(v30 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DBECC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DBF6C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  *v13 = sub_1004DE14C();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_1004DBF9C();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock);
    if ((v16 & 2) == 0)
    {
      *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_representationsUpdatedFromConfigurationBlock) = v16 | 2;
    }

    (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
    v17 = sub_1004DE18C();
    (*(v7 + 8))(v9, v6);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v20 = v26;
    v21 = v27;
    v19[2] = v18;
    v19[3] = v21;
    v19[4] = v20;
    aBlock[4] = sub_10001C68C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005CFB98;
    v22 = _Block_copy(aBlock);

    v23 = v21;
    sub_1004DBEDC();
    v33 = _swiftEmptyArrayStorage;
    sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0, &qword_100511C10);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
    v24 = v29;
    v25 = v32;
    sub_1004DE92C();
    sub_1004DE15C();
    _Block_release(v22);

    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v5, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100016DE8(uint64_t a1, void *a2)
{
  v3 = sub_1004D966C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v98 - v7;
  __chkstk_darwin();
  v10 = v98 - v9;
  v11 = sub_1004DBEBC();
  v111 = *(v11 - 8);
  __chkstk_darwin();
  v109 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DBEFC();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v110 = v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v108 = v14;
  v17 = *(result + 72);
  if (!v17)
  {
  }

  v106 = v13;
  v107 = result;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 auxiliarySession];
  aBlock = 0;
  v21 = [v20 setParticipatesInNowPlayingAppPolicy:0 error:&aBlock];
  v22 = aBlock;
  v105 = v11;
  v104 = v20;
  v103 = v19;
  if ((v21 & 1) == 0)
  {
    v59 = aBlock;
    v60 = sub_1004D7F4C();

    swift_willThrow();
    v61 = Logger.motion.unsafeMutableAddressor();
    (*(v4 + 16))(v10, v61, v3);
    swift_errorRetain();
    v62 = sub_1004D964C();
    v63 = sub_1004DDF7C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315138;
      v112 = v60;
      swift_errorRetain();
      sub_100004CB8(&qword_100633048, &unk_100512610);
      v66 = sub_1004DD4DC();
      v68 = sub_10001B608(v66, v67, &aBlock);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Error creating non-now-playing session: %s", v64, 0xCu);
      sub_100008D24(v65);
    }

    (*(v4 + 8))(v10, v3);
    sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
    v69 = sub_1004DE14C();
    v117 = sub_10001CB28;
    v118 = v107;
    aBlock = _NSConcreteStackBlock;
    v114 = 1107296256;
    v115 = sub_100012680;
    v116 = &unk_1005CFBC0;
    v70 = _Block_copy(&aBlock);

    v71 = v110;
    sub_1004DBEDC();
    aBlock = _swiftEmptyArrayStorage;
    sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0, &qword_100511C10);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
    v72 = v109;
    v73 = v105;
    sub_1004DE92C();
    sub_1004DE15C();

    _Block_release(v70);

    goto LABEL_26;
  }

  aBlock = 0;
  v23 = v22;
  v24 = [v20 setCategory:AVAudioSessionCategoryAmbient error:&aBlock];
  v25 = aBlock;
  if (!v24)
  {
    v74 = aBlock;
    v75 = sub_1004D7F4C();

    swift_willThrow();
    v76 = Logger.motion.unsafeMutableAddressor();
    (*(v4 + 16))(v8, v76, v3);
    swift_errorRetain();
    v77 = sub_1004D964C();
    v78 = sub_1004DDF7C();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock = v80;
      *v79 = 136315138;
      v112 = v75;
      swift_errorRetain();
      sub_100004CB8(&qword_100633048, &unk_100512610);
      v81 = sub_1004DD4DC();
      v83 = sub_10001B608(v81, v82, &aBlock);

      *(v79 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "Error creating ambient audio session: %s", v79, 0xCu);
      sub_100008D24(v80);
    }

    (*(v4 + 8))(v8, v3);
    sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
    v84 = sub_1004DE14C();
    v117 = sub_10001C6B0;
    v118 = v107;
    aBlock = _NSConcreteStackBlock;
    v114 = 1107296256;
    v115 = sub_100012680;
    v116 = &unk_1005CFBE8;
    v85 = _Block_copy(&aBlock);

    v71 = v110;
    sub_1004DBEDC();
    aBlock = _swiftEmptyArrayStorage;
    sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0, &qword_100511C10);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
    v72 = v109;
    v73 = v105;
    sub_1004DE92C();
    sub_1004DE15C();

    _Block_release(v85);
    goto LABEL_25;
  }

  aBlock = 0;
  v26 = v25;
  v27 = [v20 setRequiresNoAudioResources:1 error:&aBlock];
  v28 = aBlock;
  if (!v27)
  {
    v86 = aBlock;
    v87 = sub_1004D7F4C();

    swift_willThrow();
    v88 = Logger.motion.unsafeMutableAddressor();
    (*(v4 + 16))(v6, v88, v3);
    swift_errorRetain();
    v89 = sub_1004D964C();
    v90 = sub_1004DDF7C();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      aBlock = v92;
      *v91 = 136315138;
      v112 = v87;
      swift_errorRetain();
      sub_100004CB8(&qword_100633048, &unk_100512610);
      v93 = sub_1004DD4DC();
      v95 = sub_10001B608(v93, v94, &aBlock);

      *(v91 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v89, v90, "Error creating audio-resource-less session: %s", v91, 0xCu);
      sub_100008D24(v92);
    }

    (*(v4 + 8))(v6, v3);
    sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
    v96 = sub_1004DE14C();
    v117 = sub_10001CB28;
    v118 = v107;
    aBlock = _NSConcreteStackBlock;
    v114 = 1107296256;
    v115 = sub_100012680;
    v116 = &unk_1005CFC10;
    v97 = _Block_copy(&aBlock);

    v71 = v110;
    sub_1004DBEDC();
    aBlock = _swiftEmptyArrayStorage;
    sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004CB8(&unk_1006323E0, &qword_100511C10);
    sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
    v72 = v109;
    v73 = v105;
    sub_1004DE92C();
    sub_1004DE15C();

    _Block_release(v97);
LABEL_25:

LABEL_26:
    (*(v111 + 8))(v72, v73);
    return (*(v108 + 8))(v71, v106);
  }

  v29 = objc_allocWithZone(MPCScriptedLooper);
  v30 = v28;
  v31 = [v29 initWithAsset:a2 audioSession:v20];
  v32 = [v31 player];
  v33 = [v32 currentItem];
  if (v33)
  {
    v34 = v33;
    [v19 scaledFittingSize];
    [v34 setPreferredMinimumResolution:?];
  }

  [v32 setAutomaticallyWaitsToMinimizeStalling:1];
  [v32 setMuted:1];
  [v32 setAllowsExternalPlayback:0];
  [v32 setPreventsDisplaySleepDuringVideoPlayback:0];
  [v32 _setSuppressesAudioRendering:1];
  if (qword_100631EA8 != -1)
  {
    swift_once();
  }

  v100 = qword_1006327D8;
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v31;
  v117 = sub_10001C720;
  v118 = v36;
  aBlock = _NSConcreteStackBlock;
  v114 = 1107296256;
  v101 = &v115;
  v115 = sub_100012680;
  v116 = &unk_1005CFC60;
  v37 = _Block_copy(&aBlock);

  v99 = v31;
  v38 = v110;
  sub_1004DBEDC();
  v112 = _swiftEmptyArrayStorage;
  v39 = sub_10001C73C(&qword_1006321A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v40 = sub_100004CB8(&unk_1006323E0, &qword_100511C10);
  v41 = sub_100008F60(&qword_1006321B0, &unk_1006323E0, &qword_100511C10);
  v42 = v109;
  v98[1] = v40;
  v98[0] = v41;
  v102 = v39;
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v37);
  v43 = *(v111 + 8);
  v111 += 8;
  v100 = v43;
  v43(v42, v11);
  v44 = *(v108 + 8);
  v108 += 8;
  v44(v38, v106);

  v45 = [v32 currentItem];
  if (v45)
  {
    v46 = v45;
    v47 = [a2 mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicAudible];
    if (v47)
    {
      v48 = v47;
      [v46 selectMediaOption:0 inMediaSelectionGroup:v47];

      v46 = v48;
    }
  }

  sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);
  v49 = sub_1004DE14C();
  v50 = swift_allocObject();
  v51 = v99;
  v52 = v107;
  v50[2] = v99;
  v50[3] = v52;
  v50[4] = v32;
  v117 = sub_10001C728;
  v118 = v50;
  aBlock = _NSConcreteStackBlock;
  v114 = 1107296256;
  v115 = sub_100012680;
  v116 = &unk_1005CFCB0;
  v53 = _Block_copy(&aBlock);
  v54 = v51;

  v55 = v32;

  v56 = v110;
  sub_1004DBEDC();
  aBlock = _swiftEmptyArrayStorage;
  v57 = v109;
  v58 = v105;
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v53);

  v100(v57, v58);
  return (v44)(v56, v106);
}

void sub_100017F50(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
  *(a1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
  if (v2)
  {
    [v2 invalidate];
  }

  *(a1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 1;
  v3 = a1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler;
  v4 = *(a1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  if (v4)
  {
    v5 = *(v3 + 8);

    v4(v6);

    sub_10000DE74(v4, v5);
  }
}

void sub_100017FF4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 128);
    *(Strong + 128) = a2;
    v5 = a2;
  }
}

void sub_100018064(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    sub_100006F10(0, &qword_100633050, MPCScriptedLooper_ptr);
    v7 = a1;
    v8 = v3;
    LOBYTE(a1) = sub_1004DE5FC();

    if (a1)
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      swift_weakInit();
      v19[4] = sub_10001C734;
      v19[5] = v10;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 1107296256;
      v19[2] = sub_100018634;
      v19[3] = &unk_1005CFCD8;
      v11 = _Block_copy(v19);

      v12 = [v9 scheduledTimerWithTimeInterval:0 repeats:v11 block:8.0];
      _Block_release(v11);
      sub_100015478(v12);
      v13 = *(a2 + 120);
      if (v13)
      {
        v14 = v13;
        v15 = [v14 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setPlayer:a3];
      }

      sub_10001869C(v7);
      v16 = a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler;
      v17 = *(a2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
      if (v17)
      {
        v18 = *(v16 + 8);

        v17(v7);
        sub_10000DE74(v17, v18);
      }
    }
  }
}

uint64_t sub_10001827C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.motion.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1004D964C();
  v8 = sub_1004DDF5C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1000108DC(Strong + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext, v29, &qword_100633028, &qword_1005121E8);
    }

    else
    {
      v30 = 0;
      memset(v29, 0, sizeof(v29));
    }

    sub_100004CB8(&qword_100633028, &qword_1005121E8);
    v12 = sub_1004DD4DC();
    v14 = sub_10001B608(v12, v13, &v31);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v28[1] = v10;
      v16 = *(v15 + 128);
      v17 = v16;

      if (v16)
      {
        v18 = [v17 player];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    *&v29[0] = v18;
    sub_100004CB8(&qword_100633058, &unk_100512208);
    v19 = sub_1004DD4DC();
    v21 = sub_10001B608(v19, v20, &v31);

    *(v9 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Timed out loading video artwork [player was not ready to play]. context=%s player=%s, privacy: .public)", v9, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v24 = *(result + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(result + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v24)
    {
      [v24 invalidate];
    }

    *(v23 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 1;
    v25 = *(v23 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v25)
    {
      v26 = *(v23 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

      v25(v27);

      return sub_10000DE74(v25, v26);
    }

    else
    {
    }
  }

  return result;
}

void sub_100018634(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10001869C(void *a1)
{
  v3 = [a1 player];
  sub_100004CB8(&qword_1006320B0, &qword_100511A90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100511D90;
  type metadata accessor for Whitetail.Binding();
  KeyPath = swift_getKeyPath();
  v25 = sub_100004CB8(&qword_100633000, qword_1005120F8);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = a1;
  v24 = KeyPath;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  v8 = a1;
  *(v4 + 32) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_10001C530, v7);
  v9 = swift_getKeyPath();
  v25 = sub_100004CB8(&qword_100633008, qword_100512140);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = v3;
  v24 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = v8;
  v12 = v3;
  *(v4 + 40) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_10001C5B8, v10);
  v13 = swift_getKeyPath();
  v25 = sub_100004CB8(&qword_100633010, qword_100512190);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = v12;
  v24 = v13;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = v12;
  *(v4 + 48) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_10001C600, v14);
  v16 = swift_getKeyPath();
  v25 = sub_100004CB8(&qword_100633018, &unk_1005121D0);
  v26 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  v23 = v15;
  v24 = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v17;
  v18[4] = v15;
  v19 = v15;
  v20 = v11;
  v21 = v19;
  *(v4 + 56) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v23, 1, sub_10001C654, v18);

  *(v1 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoBindings) = v4;
}

void sub_1000189B0(void *a1, uint64_t a2)
{
  v4 = sub_1004D966C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v54 - v9;
  v11 = [a1 status];
  if (v11 <= 1)
  {
    if (!v11)
    {
      return;
    }

    if (v11 == 1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
        *(Strong + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
        if (v13)
        {
          [v13 invalidate];
        }

        else
        {
        }
      }

      return;
    }

LABEL_34:
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_1004DEAAC(25);

    [a1 status];
    *&v60 = 0xD00000000000002CLL;
    *(&v60 + 1) = 0x80000001004E7F40;
    [a1 status];
    v63._countAndFlagsBits = sub_1004DE33C();
    sub_1004DD5FC(v63);

    sub_1004DECCC();
    __break(1u);
    return;
  }

  if (v11 == 2)
  {
    v14 = [a1 error];
    if (!v14 || (*&v60 = v14, sub_100004CB8(&qword_100633048, &unk_100512610), type metadata accessor for AVError(0), (swift_dynamicCast() & 1) == 0) || (v15 = v5, v16 = v59, *&v60 = v59, sub_10001C73C(&qword_100632088, type metadata accessor for AVError, &unk_1005118E8), sub_1004D7EFC(), v16, v5 = v15, v59 != -11819))
    {
      v17 = [a1 error];
      if (!v17 || (*&v60 = v17, sub_100004CB8(&qword_100633048, &unk_100512610), type metadata accessor for AVError(0), (swift_dynamicCast() & 1) == 0) || (v18 = v5, v19 = v59, *&v60 = v59, sub_10001C73C(&qword_100632088, type metadata accessor for AVError, &unk_1005118E8), sub_1004D7EFC(), v19, v5 = v18, v59 != -11818))
      {
        v20 = [a1 player];
        v21 = [v20 status];

        if (v21 == 2)
        {
          swift_beginAccess();
          v22 = swift_weakLoadStrong();
          if (v22)
          {
            v24 = *(v22 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler);
            v23 = *(v22 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLooperDidFailHandler + 8);
            sub_10000DE64(v24, v23);

            if (v24)
            {
              v24(a1);
              sub_10000DE74(v24, v23);
            }
          }
        }

        sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);

        static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10001CB24, a2);

        v25 = Logger.motion.unsafeMutableAddressor();
        (*(v5 + 16))(v10, v25, v4);

        v26 = a1;
        v27 = sub_1004D964C();
        v28 = sub_1004DDF7C();

        if (os_log_type_enabled(v27, v28))
        {
          v56 = v5;
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v58 = v55;
          *v29 = 136446722;
          *&v60 = [v26 error];
          sub_100004CB8(&qword_100633040, &qword_100512200);
          v31 = sub_1004DD4DC();
          v33 = sub_10001B608(v31, v32, &v58);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2114;
          *(v29 + 14) = v26;
          *v30 = v26;
          *(v29 + 22) = 2082;
          swift_beginAccess();
          v34 = swift_weakLoadStrong();
          if (v34)
          {
            sub_1000108DC(v34 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext, &v60, &qword_100633028, &qword_1005121E8);
            v35 = v26;
          }

          else
          {
            v62 = 0;
            v60 = 0u;
            v61 = 0u;
            v50 = v26;
          }

          sub_100004CB8(&qword_100633028, &qword_1005121E8);
          v51 = sub_1004DD4DC();
          v53 = sub_10001B608(v51, v52, &v58);

          *(v29 + 24) = v53;
          _os_log_impl(&_mh_execute_header, v27, v28, "MPCScriptedLooper failed. error=%{public}s videoLooper=%{public}@ context=%{public}s", v29, 0x20u);
          sub_10001074C(v30, &qword_100633038, &qword_1005121F8);

          swift_arrayDestroy();

          (*(v56 + 8))(v10, v4);
        }

        else
        {

          (*(v5 + 8))(v10, v4);
        }
      }
    }
  }

  else
  {
    if (v11 != 3)
    {
      goto LABEL_34;
    }

    sub_100006F10(0, &qword_1006321B8, OS_dispatch_queue_ptr);

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10001C668, a2);

    v36 = Logger.motion.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v36, v4);

    v37 = a1;
    v38 = sub_1004D964C();
    v39 = sub_1004DDF7C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v5;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57[0] = v43;
      *v41 = 138543618;
      *(v41 + 4) = v37;
      *v42 = v37;
      *(v41 + 12) = 2082;
      swift_beginAccess();
      v44 = swift_weakLoadStrong();
      if (v44)
      {
        sub_1000108DC(v44 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext, &v60, &qword_100633028, &qword_1005121E8);
        v45 = v37;
      }

      else
      {
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        v46 = v37;
      }

      sub_100004CB8(&qword_100633028, &qword_1005121E8);
      v47 = sub_1004DD4DC();
      v49 = sub_10001B608(v47, v48, v57);

      *(v41 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "MPCScriptedLooper was cancelled. videoLooper=%{public}@ context=%{public}s", v41, 0x16u);
      sub_10001074C(v42, &qword_100633038, &qword_1005121F8);

      sub_100008D24(v43);

      (*(v40 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_100019308(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(result + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v3)
    {
      [v3 invalidate];
    }

    *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_prefersImageArtwork) = 1;
    v4 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v4)
    {
      v5 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

      v4(v6);

      return sub_10000DE74(v4, v5);
    }

    else
    {
    }
  }

  return result;
}

void sub_1000193DC(void *a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 player];
  [v7 rate];
  v9 = v8;

  if (v9 == 1.0)
  {
    v10 = [a1 player];
    v39 = [v10 reasonForWaitingToPlay];

    if (v39)
    {
      v11 = sub_1004DD43C();
      v13 = v12;
      if (v11 == sub_1004DD43C() && v13 == v14)
      {
        goto LABEL_10;
      }

      v16 = sub_1004DF08C();

      if (v16)
      {
        goto LABEL_11;
      }

      v17 = sub_1004DD43C();
      v19 = v18;
      if (v17 == sub_1004DD43C() && v19 == v20)
      {
LABEL_10:

        goto LABEL_11;
      }

      v36 = sub_1004DF08C();

      if (v36)
      {
LABEL_11:
        v21 = Logger.motion.unsafeMutableAddressor();
        (*(v3 + 16))(v6, v21, v2);
        v22 = v39;
        v23 = a1;
        v24 = sub_1004D964C();
        v25 = sub_1004DDF9C();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v40 = v22;
          v41 = v27;
          *v26 = 136446466;
          type metadata accessor for WaitingReason(0);
          v39 = v3;
          v38 = v22;
          v28 = sub_1004DD4DC();
          v30 = sub_10001B608(v28, v29, &v41);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2082;
          v31 = [v23 player];
          v32 = [v31 currentItem];

          v40 = v32;
          sub_100004CB8(&qword_100633020, &qword_1005121E0);
          v33 = sub_1004DD4DC();
          v35 = sub_10001B608(v33, v34, &v41);

          *(v26 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v24, v25, "AVPlayer waiting because %{public}s currentItem=%{public}s", v26, 0x16u);
          swift_arrayDestroy();

          (*(v39 + 1))(v6, v2);
        }

        else
        {

          (*(v3 + 8))(v6, v2);
        }

        return;
      }

      v37 = v39;
    }
  }
}

void sub_100019824(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!*(Strong + 128) || (v2 = Strong, (v3 = [*(Strong + 128) player]) == 0))
    {

      return;
    }

    v4 = v3;
    v5 = [v3 timeControlStatus];
    [v4 rate];
    if (v5)
    {
      if (v5 == 2 && v6 == 1.0)
      {
        v7 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlaying);
        *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlaying) = 1;
        if (v7 != 1)
        {
          v8 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
          if (v8)
          {
            v9 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler + 8);

            v10 = 1;
LABEL_16:
            v8(v10);

            sub_10000DE74(v8, v9);
            return;
          }
        }
      }
    }

    else if (v6 == 0.0)
    {
      v11 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlaying);
      *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlaying) = 0;
      if (v11)
      {
        v8 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler);
        if (v8)
        {
          v9 = *(v2 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_isPlayingDidChangeHandler + 8);

          v10 = 0;
          goto LABEL_16;
        }
      }
    }
  }
}

void sub_1000199AC(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 player];
  v6 = [v5 currentItem];

  if (v6)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = sub_1004DD3FC();
      v10 = swift_allocObject();
      *(v10 + 16) = a3;
      *(v10 + 24) = a2;
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v11 = a3;

      *(v8 + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_itemFailedToPlayToEndTimeObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v9, v6, 1, 1, sub_10001C660, v10);
    }

    else
    {
    }
  }
}

uint64_t sub_100019B04(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1004D966C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D7B6C();
  if (v8)
  {
    v9 = v8;
    *&v38[0] = sub_1004DD43C();
    *(&v38[0] + 1) = v10;
    sub_1004DEA4C();
    if (*(v9 + 16))
    {
      v11 = sub_100028F3C(v34);
      if (v12)
      {
        sub_10000904C(*(v9 + 56) + 32 * v11, v38);
        sub_1000105EC(v34);

        goto LABEL_7;
      }
    }

    sub_1000105EC(v34);
  }

  memset(v38, 0, 32);
LABEL_7:
  v13 = Logger.motion.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v13, v4);
  sub_1000108DC(v38, v37, &qword_100632198, &qword_100511AF8);
  v14 = a2;

  v15 = sub_1004D964C();
  v16 = sub_1004DDF7C();

  if (os_log_type_enabled(v15, v16))
  {
    v32 = v5;
    v33 = v4;
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v17 = 136446722;
    sub_1000108DC(v37, v34, &qword_100632198, &qword_100511AF8);
    sub_100004CB8(&qword_100632198, &qword_100511AF8);
    v18 = sub_1004DD4DC();
    v20 = v19;
    sub_10001074C(v37, &qword_100632198, &qword_100511AF8);
    v21 = sub_10001B608(v18, v20, &v36);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *&v34[0] = [v14 currentItem];
    sub_100004CB8(&qword_100633020, &qword_1005121E0);
    v22 = sub_1004DD4DC();
    v24 = sub_10001B608(v22, v23, &v36);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2082;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1000108DC(Strong + OBJC_IVAR____TtCE16MusicMessagesAppV11MusicCoreUI7Artwork9Component_loggingContext, v34, &qword_100633028, &qword_1005121E8);
    }

    else
    {
      v35 = 0;
      memset(v34, 0, sizeof(v34));
    }

    v26 = v32;
    sub_100004CB8(&qword_100633028, &qword_1005121E8);
    v27 = sub_1004DD4DC();
    v29 = sub_10001B608(v27, v28, &v36);

    *(v17 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v15, v16, "AVPlayerItem failed to play to end. error=%{public}s currentItem=%{public}s context=%{public}s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v26 + 8))(v7, v33);
  }

  else
  {

    sub_10001074C(v37, &qword_100632198, &qword_100511AF8);
    (*(v5 + 8))(v7, v4);
  }

  return sub_10001074C(v38, &qword_100632198, &qword_100511AF8);
}