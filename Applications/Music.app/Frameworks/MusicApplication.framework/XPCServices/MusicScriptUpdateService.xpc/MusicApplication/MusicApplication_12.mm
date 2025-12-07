unint64_t sub_1001330CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10013318C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t *NSUserDefaults.mobileiPod.unsafeMutableAddressor()
{
  if (qword_1005FFF70 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.mobileiPod;
}

Swift::Bool __swiftcall NSUserDefaults.BOOL(forKey:withDefault:)(Swift::String forKey, Swift::Bool withDefault)
{
  countAndFlagsBits = forKey._countAndFlagsBits;
  sub_10000E7F4();

  NSUserDefaults.subscript.getter(&v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return countAndFlagsBits;
    }
  }

  else
  {
    sub_10011CF58(&v5);
  }

  return withDefault;
}

void sub_100133394()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1004BBE24();
  v2 = [v0 initWithSuiteName:v1];

  static NSUserDefaults.mobileiPod = v2;
}

uint64_t static NSUserDefaults.mobileiPod.getter()
{
  if (qword_1005FFF70 != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.mobileiPod;
  v1 = static NSUserDefaults.mobileiPod;
  return v0;
}

BOOL NSUserDefaults.MobileiPod.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A5478;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  return v4 != 0;
}

Swift::Int sub_1001334E0()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

Swift::Int sub_100133554()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

void (*NSUserDefaults.hasUserRequestedSubscriptionHidden.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1000F2CF0();
  *(v4 + 48) = sub_10000E7F4();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_10011CF58(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_1001336B8;
}

uint64_t sub_1001336E4(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v4);
  if (v5)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_10011CF58(&v4);
    return 0;
  }

  return result;
}

unint64_t sub_10013377C()
{
  result = qword_100604458;
  if (!qword_100604458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604458);
  }

  return result;
}

uint64_t sub_1001337F0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v9 = &type metadata for Bool;
  v8[0] = a1;
  v4 = a2(a1);
  v5 = sub_10000E7F4();
  return NSUserDefaults.subscript.setter(v8, v6, a3, v4, v5);
}

void (*NSUserDefaults.hasSeenDownloadPinsAlert.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_10013377C();
  *(v4 + 48) = sub_10000E7F4();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_10011CF58(v4);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = *(v4 + 57);
LABEL_9:
  *(v4 + 56) = v5;
  return sub_100133938;
}

void sub_100133944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = &type metadata for Bool;
  v7[0] = v4;
  NSUserDefaults.subscript.setter(v7, a2, a3, v5, v6);

  free(v3);
}

Swift::Int sub_1001339A4()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

Swift::Int sub_100133A18()
{
  sub_1004BDBA4();
  sub_1004BBF84();
  return sub_1004BDBF4();
}

uint64_t sub_100133A78@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_1004BD764(a2, v8);

  *a3 = v6 != 0;
  return result;
}

id MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100051DEC(v10);
  return [v0 transitionStyleForUserWithCatalogPlaybackCapability:BYTE8(v10[0]) & 1];
}

unint64_t sub_100133BE0()
{
  result = qword_100604460;
  if (!qword_100604460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604460);
  }

  return result;
}

unint64_t sub_100133C60()
{
  result = qword_100604468;
  if (!qword_100604468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604468);
  }

  return result;
}

id static ICUserIdentity.active.getter()
{
  v0 = [swift_getObjCClassFromMetadata() activeAccount];

  return v0;
}

id static ICUserIdentityStore.activeAccountDSID.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultIdentityStore];
  v1 = [objc_opt_self() activeAccount];
  v6 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v6];

  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    sub_1004B69B4();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t static ICMusicKitRequestContext.music.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = sub_100134E98;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10011FE68;
  v4[3] = &unk_1005B22C0;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id static ICURLSessionManager.musicSession.getter(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() highPrioritySession];

  return v2;
}

double ICURLBag.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([v2 valueForBagKey:a1])
  {
    sub_1004BD284();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t *ICClientInfo.music.unsafeMutableAddressor()
{
  if (qword_1005FFF78 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.music;
}

void sub_100133FE8(void *a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = sub_1004BBE24();
    v7 = sub_1004BBE24();
    v8 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v6 clientVersion:v7];

    [v4 setClientInfo:v8];
    v9 = objc_opt_self();
    v10 = v5;
    v11 = [v9 defaultIdentityStore];
    [v4 setIdentityStore:v11];

    v12 = [objc_opt_self() activeAccount];
    [v4 setIdentity:v12];
  }
}

id static ICStoreRequestContext.default(withConfigurationBlock:)(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100134EB4;
  *(v3 + 24) = v7;
  aBlock[4] = sub_100124268;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011FE68;
  aBlock[3] = &unk_1005B2310;
  v4 = _Block_copy(aBlock);

  v5 = [v2 initWithBlock:v4];
  _Block_release(v4);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void sub_1001342D8(void *a1, uint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v9 = a1;
    v6 = [v5 defaultIdentityStore];
    [v4 setIdentityStore:v6];

    v7 = [objc_opt_self() activeAccount];
    [v4 setIdentity:v7];

    [v4 setAllowsExpiredBags:1];
    v8 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v4 setAuthenticationProvider:v8];

    if (qword_1005FFF80 != -1)
    {
      swift_once();
    }

    [v4 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void sub_10013446C(void *a1, void (*a2)(void *))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v9 = a1;
    v7 = [v6 defaultIdentityStore];
    [v5 setIdentityStore:v7];

    v8 = [objc_opt_self() activeAccount];
    [v5 setIdentity:v8];

    a2(v5);
  }
}

id static ICStoreRequestContext.current.getter(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() activeAccount];
  v3 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v2];

  return v3;
}

uint64_t static ICStoreRequestContext.storeFlow.getter()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v4[4] = sub_100134E94;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10011FE68;
  v4[3] = &unk_1005B2338;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ICClientInfo.storeFlow.unsafeMutableAddressor()
{
  if (qword_1005FFF80 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.storeFlow;
}

id sub_100134730()
{
  result = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  static ICClientInfo.music = result;
  return result;
}

void *sub_10013478C()
{
  result = sub_1001347AC();
  static ICClientInfo.storeFlow = result;
  return result;
}

void *sub_1001347AC()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_10013506C(0, v1);
  swift_dynamicCast();
  v2 = sub_1004BBE24();
  [v4 setBagProfileVersion:v2];

  return v4;
}

double ICURLBag.subscript.getter@<D0>(_OWORD *a3@<X8>)
{
  v5 = sub_1004BBE24();
  v6 = [v3 valueForBagKey:v5];

  if (v6)
  {
    sub_1004BD284();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

_OWORD *ICURLBag.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = *(sub_1004BD174() - 8);
  __chkstk_darwin();
  v13 = &v40 - v12;
  v14 = a1[2];
  if (!v14)
  {
    sub_100134ECC();
    swift_allocError();
    *v33 = 0u;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0;
    *(v33 + 40) = 2;
    return swift_willThrow();
  }

  v46 = v11;
  v15 = a1[4];

  v16 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = a1;
  if (!isUniquelyReferenced_nonNull_native || (v14 - 1) > a1[3] >> 1)
  {
    a1 = sub_100018288(isUniquelyReferenced_nonNull_native, v14, 1, a1);
    v52 = a1;
  }

  sub_100132614(0, 1, 0);
  if (![v6 valueForBagKey:v16])
  {

    sub_100134ECC();
    swift_allocError();
    *v34 = v16;
    *(v34 + 40) = 0;
    return swift_willThrow();
  }

  v41 = v10;
  v42 = a3;
  v44 = v13;
  v45 = a2;
  v43 = v5;
  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_10003E13C(v50, v51);
  sub_100004DE4(v51, v50);
  v18 = a1[2];
  result = v16;
  v20 = result;
  v47 = result;
  if (v18)
  {
    v21 = 0;
    v22 = v47;
    while (v21 < a1[2])
    {
      v23 = a1[v21 + 4];
      sub_100004DE4(v50, v49);
      v20 = v23;
      sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
      if (!swift_dynamicCast())
      {

        sub_100134ECC();
        swift_allocError();
        v38 = v37;
        *v37 = v20;
        sub_100004DE4(v50, (v37 + 1));
        *(v38 + 40) = 1;
        goto LABEL_22;
      }

      v24 = v48;
      v25 = sub_1004BBE64();
      if (!*(v24 + 16))
      {

LABEL_21:

        sub_100134ECC();
        swift_allocError();
        *v39 = v20;
        *(v39 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v27 = sub_1000346D4(v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v21;
      sub_100004DE4(*(v24 + 56) + 32 * v27, v49);

      sub_100004C6C(v50);
      result = sub_10003E13C(v49, v50);
      v22 = v20;
      if (v18 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_100004DE4(v50, v49);
    v31 = v44;
    v30 = v45;
    if (swift_dynamicCast())
    {

      sub_100004C6C(v50);
      sub_100004C6C(v51);
      v32 = *(v30 - 8);
      (*(v32 + 56))(v31, 0, 1, v30);
      return (*(v32 + 32))(v42, v31, v30);
    }

    else
    {
      (*(*(v30 - 8) + 56))(v31, 1, 1, v30);
      (*(v41 + 8))(v31, v46);
      sub_100134ECC();
      swift_allocError();
      v36 = v35;
      *v35 = v20;
      sub_100004DE4(v50, (v35 + 1));
      *(v36 + 40) = 1;
      swift_willThrow();

LABEL_23:
      sub_100004C6C(v50);
      return sub_100004C6C(v51);
    }
  }

  return result;
}

uint64_t sub_100134E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100134ECC()
{
  result = qword_100609370;
  if (!qword_100609370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100609370);
  }

  return result;
}

unint64_t sub_100134F24()
{
  result = qword_100604470;
  if (!qword_100604470)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604470);
  }

  return result;
}

uint64_t sub_100134F7C(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_100134F98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100134FAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100134FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100135034(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_10013506C(uint64_t a1, uint64_t a2)
{
  result = qword_100604478;
  if (!qword_100604478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100604478);
  }

  return result;
}

uint64_t Gliss.Direction.init(playerDirection:layoutDirection:)(uint64_t a1, char a2, uint64_t a3)
{
  if ((a1 - 1) <= 1)
  {
    v3 = a3 == 1;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 + 2) < 2)
  {
    v3 = a3 != 1;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

unint64_t MPCPlayerDirection.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x64726177726F66;
      goto LABEL_16;
    }

    if (a1 == 5)
    {
      v1 = 0xED0000797261646ELL;
      v2 = 0x756F426575657571;
      goto LABEL_16;
    }

    if (a1 != 2)
    {
LABEL_13:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    v2 = 0x4A64726177726F66;
LABEL_11:
    v1 = 0xEB00000000706D75;
    goto LABEL_16;
  }

  if (a1 == -2)
  {
    v2 = 0x4A65737265766572;
    goto LABEL_11;
  }

  if (a1 == -1)
  {
    v1 = 0xE700000000000000;
    v2 = 0x65737265766572;
    goto LABEL_16;
  }

  if (a1)
  {
    goto LABEL_13;
  }

  v1 = 0xEA00000000007972;
  v2 = 0x616E6F6974617473;
LABEL_16:
  sub_1004BD404(21);

  v4._countAndFlagsBits = v2;
  v4._object = v1;
  sub_1004BC024(v4);

  return 0xD000000000000013;
}

uint64_t sub_100135288(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1006174A8);
  sub_100007084(v2, qword_1006174A8);
  return sub_1004B80A4();
}

uint64_t sub_100135308@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v34 = a2;
  v37 = a1;
  v38 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1004BD174();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin();
  v35 = &v32 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1004BD174();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - v14;
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v11 - 8);
  v19 = __chkstk_darwin();
  v21 = &v32 - v20;
  (*(v22 + 16))(v17, v37, a4, v19);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v25 = v38;
    v24(v15, 0, 1, v11);
    (*(v18 + 32))(v21, v15, v11);
    v26 = v35;
    (*(a5 + 32))(v21, v34, a3, a5);
    v27 = AssociatedTypeWitness;
    v28 = *(AssociatedTypeWitness - 8);
    if ((*(v28 + 48))(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v18 + 8))(v21, v11);
      result = (*(v32 + 8))(v26, v33);
      *v25 = 0u;
      v25[1] = 0u;
    }

    else
    {
      *(v25 + 3) = v27;
      v31 = sub_1000133B0(v25);
      (*(v28 + 32))(v31, v26, v27);
      return (*(v18 + 8))(v21, v11);
    }
  }

  else
  {
    v24(v15, 1, 1, v11);
    result = (*(v13 + 8))(v15, v12);
    v30 = v38;
    *v38 = 0u;
    v30[1] = 0u;
  }

  return result;
}

uint64_t sub_100135728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    v10 = *(a3 + 40);

    v10(v9, a2, a3);
  }

  return result;
}

uint64_t sub_100135824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    v10 = *(a3 + 48);

    v10(v9, a2, a3);
  }

  return result;
}

uint64_t sub_100135920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1004BD174();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v27 - v11;
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(AssociatedTypeWitness - 8);
  v16 = __chkstk_darwin();
  v18 = &v27 - v17;
  (*(v19 + 16))(v14, a1, a4, v16);
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v21(v12, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v18, v12, AssociatedTypeWitness);
    if (v28)
    {
      v22 = v29;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
      v25 = swift_dynamicCastClass();
    }

    else
    {
      v25 = 0;
      v22 = v29;
    }

    (*(a5 + 56))(v18, v25, v22, a5);
    return (*(v15 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v21(v12, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_100135C2C(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v8 = *i;
      v7 = v8;
      a1(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_100135CC0(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

id Gliss.Coordinator.__allocating_init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = sub_10013F944(a1, a2, a3, a4);

  sub_10003CC4C(*(a3 + 8), *(a3 + 16));
  sub_10003CC4C(*(a3 + 24), *(a3 + 32));
  sub_10003CC4C(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10013F944(a1, a2, a3, a4);

  sub_10003CC4C(*(a3 + 8), *(a3 + 16));
  sub_10003CC4C(*(a3 + 24), *(a3 + 32));
  sub_10003CC4C(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_100135F3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_100135920(a2, 0, ObjectType, AssociatedTypeWitness, v5);
}

uint64_t Gliss.Coordinator.dataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Gliss.Coordinator.dataSource.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = *((swift_isaMask & *v1) + 0x60);
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100136198;
}

void sub_100136198(void **a1, char a2)
{
  v3 = *a1;
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

uint64_t Gliss.Coordinator.gestureConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 6);
  v11 = v4;
  sub_10002F518(v5, v6);
  sub_10002F518(v7, v8);
  result = sub_10002F518(v9, v10);
  *a1 = v11;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t Gliss.Coordinator.gestureConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v20 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v7 = v1 + *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v14 = *(v7 + 4);
  v15 = *(v7 + 3);
  v16 = *(v7 + 6);
  v17 = *(v7 + 5);
  v11 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v11;
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 6) = *(a1 + 48);
  v12 = v3;
  sub_10002F518(v4, v5);
  sub_10002F518(v6, v18);
  sub_10002F518(v20, v19);

  sub_10003CC4C(v9, v10);
  sub_10003CC4C(v15, v14);
  sub_10003CC4C(v17, v16);
  sub_10013BEC4();

  sub_10003CC4C(v4, v5);
  sub_10003CC4C(v6, v18);
  return sub_10003CC4C(v20, v19);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001364B0;
}

void sub_1001364B0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10013BEC4();
  }
}

double Gliss.Coordinator.GestureConfiguration.init(hostingView:simultaneousGestureRecognizerAllowance:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *a6 = a1;
  a6[1] = sub_10013FD14;
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t sub_100136578(uint64_t a1, double (*a2)(uint64_t))
{
  sub_100003ABC(&qword_100604618, &qword_1004CF960);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C50A0;
  *(v4 + 32) = a2(a1);
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  return v4;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRects:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = 0;
  a6[2] = 0;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.getter()
{
  v1 = *(v0 + 8);
  sub_10002F518(v1, *(v0 + 16));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  sub_10002F518(v1, *(v0 + 32));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  sub_10002F518(v1, *(v0 + 48));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Gliss.Coordinator.addCoordinatedView<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *((swift_isaMask & *v3) + 0x70);
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1000186EC(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_1000186EC((v10 > 1), v11 + 1, 1, v7);
  }

  v7[2] = v11 + 1;
  v12 = &v7[2 * v11];
  v12[4] = v8;
  v12[5] = a3;
  *(v3 + v6) = v7;
  return swift_endAccess();
}

void Gliss.Coordinator.removeCoordinatedView<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *((swift_isaMask & *v2) + 0x70);
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = 32;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v4 + v7);
      sub_100009130(0, &qword_100604490, NSObject_ptr);
      v9 = v8;
      v10 = sub_1004BCFA4();

      if (v10)
      {
        break;
      }

      ++v6;
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    v11 = sub_100032CA4(v6);
    swift_endAccess();
    if (!swift_dynamicCastUnknownClass())
    {
    }
  }

  else
  {
LABEL_6:
  }
}

uint64_t Gliss.Coordinator.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1004BD174();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15[-v8];
  v10 = *(v1 + *((v4 & v3) + 0x88));
  if (v10)
  {
    v11 = *(*v10 + 128);
    swift_beginAccess();
    if (*(v10 + v11) != 6)
    {
      v12 = *(*v10 + 112);
      swift_beginAccess();
      (*(v7 + 16))(v9, v10 + v12, v6);
      v13 = *(AssociatedTypeWitness - 8);
      if ((*(v13 + 48))(v9, 1, AssociatedTypeWitness) != 1)
      {
        return (*(v13 + 32))(a1, v9, AssociatedTypeWitness);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return sub_100136C18(a1);
}

uint64_t sub_100136C18@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t sub_100136CFC(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_100136DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1004BD174();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_100136ED8(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1004BD174();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void Gliss.Coordinator.setItem(_:animationDirection:animated:)(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = -64;
  }

  else
  {
    v3 = -2;
  }

  Gliss.Coordinator.setItem(_:animationDirection:animation:)(a1, a2, 0, 0, v3);

  sub_10013FD1C(0, 0, v3);
}

uint64_t Gliss.Coordinator.setItem(_:animationDirection:animation:)(void *a1, unsigned int a2, void *a3, uint64_t a4, unsigned int a5)
{
  v113 = a5;
  v115 = a4;
  v118 = a3;
  v116 = a2;
  v7 = *((swift_isaMask & *v5) + 0x58);
  v8 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v11;
  __chkstk_darwin();
  v14 = &v102 - v13;
  sub_1004BD174();
  v15 = __chkstk_darwin();
  v17 = &v102 - v16;
  v109 = *(v10 + 56);
  v110 = v10 + 56;
  v109(&v102 - v16, 1, 1, AssociatedTypeWitness, v15);
  v111 = v17;
  sub_100136ED8(v17);
  v119 = v5;
  Gliss.Coordinator.item.getter(v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = sub_1004BBD84();
  v114 = v10;
  v20 = *(v10 + 8);
  v117 = v14;
  result = v20(v14, AssociatedTypeWitness);
  if ((v19 & 1) == 0)
  {
    v103 = AssociatedConformanceWitness;
    v107 = v8;
    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v22 = sub_1004B80B4();
    v23 = sub_100007084(v22, qword_1006174A8);
    v25 = v114 + 16;
    v24 = *(v114 + 16);
    v24(v12, a1, AssociatedTypeWitness);
    v120 = v23;
    v26 = sub_1004B8094();
    v27 = sub_1004BC9A4();
    v28 = os_log_type_enabled(v26, v27);
    v108 = v7;
    v106 = a1;
    v105 = v25;
    v104 = v24;
    if (v28)
    {
      v29 = AssociatedTypeWitness;
      v30 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v123[0] = v102;
      *v30 = 136446210;
      v24(v117, v12, v29);
      v31 = sub_1004BBF04();
      v33 = v32;
      v20(v12, v29);
      v34 = sub_100012018(v31, v33, v123);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to set item=%{public}s", v30, 0xCu);
      sub_100004C6C(v102);

      AssociatedTypeWitness = v29;
    }

    else
    {

      v20(v12, AssociatedTypeWitness);
    }

    v35 = v119;
    v36 = sub_1004B8094();
    v37 = sub_1004BC9A4();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v113;
    v40 = v115;
    if (v38)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v123[0] = v42;
      *v41 = 136446210;
      Gliss.Coordinator.item.getter(v117);
      v43 = sub_1004BBF04();
      v45 = sub_100012018(v43, v44, v123);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "  Current Item=%{public}s", v41, 0xCu);
      sub_100004C6C(v42);
    }

    v46 = sub_1004B8094();
    v47 = sub_1004BC9A4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v123[0] = v49;
      *v48 = 136446210;
      LOBYTE(v122[0]) = v116;
      sub_100003ABC(&qword_100604488, &qword_1004CF7E8);
      v50 = sub_1004BBF04();
      v52 = sub_100012018(v50, v51, v123);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "  Direction=%{public}s", v48, 0xCu);
      sub_100004C6C(v49);
    }

    v53 = v118;
    sub_10013FD44(v118, v40, v39);
    v54 = sub_1004B8094();
    v55 = sub_1004BC9A4();
    sub_10013FD1C(v53, v40, v39);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v122[0] = v57;
      *v56 = 136446210;
      v123[0] = v53;
      v123[1] = v40;
      v124 = v39;
      sub_10013FD44(v53, v40, v39);
      sub_100003ABC(&qword_100604480, &qword_1004CF7E0);
      v58 = sub_1004BBF04();
      v60 = sub_100012018(v58, v59, v122);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "  Animation=%{public}s", v56, 0xCu);
      sub_100004C6C(v57);
    }

    v61 = v106;
    v62 = *(v35 + *((swift_isaMask & *v35) + 0x88));
    if (v62 && (v63 = *(*v62 + 128), swift_beginAccess(), *(v62 + v63)))
    {

      v64 = sub_1004B8094();
      v65 = sub_1004BC9A4();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v123[0] = v119;
        *v66 = 136446210;
        v121 = v62;
        type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, v103, v67);
        swift_getWitnessTable();
        v68 = sub_1004BD934();
        v70 = sub_100012018(v68, v69, v123);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "  Ongoing Transition=%{public}s", v66, 0xCu);
        sub_100004C6C(v119);
      }

      v71 = v104;
      v72 = sub_1004B8094();
      v73 = sub_1004BC9A4();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "  ⏳ Queueing item until ongoing transition completes", v74, 2u);
      }

      v75 = v111;
      v71(v111, v61, AssociatedTypeWitness);
      (v109)(v75, 0, 1, AssociatedTypeWitness);
      sub_100136ED8(v75);
      v76 = v117;
      v71(v117, v61, AssociatedTypeWitness);
      v77 = v114;
      v78 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v79 = (v78 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v78 + v112 + 23) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v108;
      *(v81 + 16) = v107;
      *(v81 + 24) = v82;
      (*(v77 + 32))(v81 + v78, v76, AssociatedTypeWitness);
      v83 = v81 + v79;
      *v83 = v35;
      *(v83 + 8) = v116;
      v84 = v81 + v80;
      v85 = v118;
      v86 = v115;
      *v84 = v118;
      *(v84 + 8) = v86;
      *(v84 + 16) = v39;
      v87 = v35;
      sub_10013FD44(v85, v86, v39);
      Gliss.Transition.addCompletion(_:)(sub_10013FE3C, v81);
    }

    else
    {
      v88 = sub_100138C54(v61, v116);
      v89 = v118;
      if (v39 >= 0xFEu)
      {
        v90 = 0;
      }

      else
      {
        v90 = v118;
      }

      if (v39 >= 0xFEu)
      {
        v91 = 0;
      }

      else
      {
        v91 = v40;
      }

      if (v39 >= 0xFEu)
      {
        v92 = -64;
      }

      else
      {
        v92 = v39;
      }

      v93 = v88 + *(*v88 + 136);
      v94 = *v93;
      v95 = *(v93 + 1);
      *v93 = v90;
      *(v93 + 1) = v91;
      v96 = v93[16];
      v93[16] = v92;
      sub_10013FD44(v89, v40, v39);
      sub_10013FD30(v94, v95, v96);
      sub_100139970(v88, v97);
      v98 = v117;
      v104(v117, v61, AssociatedTypeWitness);
      sub_100136CFC(v98);
      v99 = *((swift_isaMask & *v35) + 0x70);
      swift_beginAccess();
      v100 = *(v35 + v99);
      __chkstk_darwin();
      v101 = v108;
      *(&v102 - 4) = v107;
      *(&v102 - 3) = v101;
      *(&v102 - 2) = v61;
      *(&v102 - 1) = v88;

      sub_100135C2C(sub_100140B74, (&v102 - 6), v100);

      sub_10013AC20(v88, v39 < 0xFEu);
    }
  }

  return result;
}

void sub_100137BCC(uint64_t *a1, uint64_t a2, char *a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v65 = a8;
  v66 = a5;
  v67 = a6;
  v68 = a7;
  v81 = a4;
  v63 = *a1;
  v9 = *(v63 + 80);
  v10 = sub_1004BD174();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v12 = &v62 - v11;
  v82 = v10;
  v74 = *(v10 - 8);
  __chkstk_darwin();
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v62 - v14;
  __chkstk_darwin();
  v17 = &v62 - v16;
  __chkstk_darwin();
  v79 = &v62 - v18;
  v19 = *(v9 - 8);
  __chkstk_darwin();
  v73 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v62 - v21;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v76 = v12;
  v23 = sub_1004B80B4();
  v24 = sub_100007084(v23, qword_1006174A8);
  v25 = *(v19 + 16);
  v77 = a3;
  v25(v22, a3, v9);
  v72 = v24;
  v26 = sub_1004B8094();
  v27 = sub_1004BC9A4();
  v28 = os_log_type_enabled(v26, v27);
  v78 = v19;
  v70 = v15;
  v75 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v83[0] = v30;
    *v29 = 136446210;
    v25(v73, v22, v9);
    v31 = sub_1004BBF04();
    v33 = v32;
    v69 = *(v78 + 8);
    v69(v22, v9);
    v34 = sub_100012018(v31, v33, v83);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "⌛️ Dequeuing item=%{public}s", v29, 0xCu);
    sub_100004C6C(v30);
    v19 = v78;

    v17 = v75;
  }

  else
  {

    v69 = *(v19 + 8);
    v69(v22, v9);
  }

  v35 = v79;
  sub_100136DE8(v79);
  v25(v17, v77, v9);
  (*(v19 + 56))(v17, 0, 1, v9);
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = *(v74 + 16);
  v38 = v19;
  v39 = v74;
  v40 = v76;
  v41 = v82;
  v37(v76, v35, v82);
  v37(&v40[v36], v17, v41);
  v42 = *(v38 + 48);
  if (v42(v40, 1, v9) == 1)
  {
    v43 = *(v39 + 8);
    v44 = v17;
    v45 = v82;
    v43(v44, v82);
    v43(v35, v45);
    if (v42(&v40[v36], 1, v9) == 1)
    {
      v43(v40, v82);
LABEL_16:
      Gliss.Coordinator.setItem(_:animationDirection:animation:)(v77, v66, v67, v68, v65);
      return;
    }

    goto LABEL_11;
  }

  v46 = v70;
  v37(v70, v40, v82);
  if (v42(&v40[v36], 1, v9) == 1)
  {
    v47 = *(v39 + 8);
    v48 = v82;
    v47(v75, v82);
    v47(v79, v48);
    v69(v46, v9);
LABEL_11:
    (*(v71 + 8))(v40, TupleTypeMetadata2);
    goto LABEL_12;
  }

  v57 = v73;
  (*(v78 + 32))(v73, &v40[v36], v9);
  v58 = sub_1004BBD84();
  v59 = v69;
  v69(v57, v9);
  v60 = *(v39 + 8);
  v61 = v82;
  v60(v75, v82);
  v60(v79, v61);
  v59(v46, v9);
  v60(v40, v61);
  if (v58)
  {
    goto LABEL_16;
  }

LABEL_12:
  v49 = v81;
  v50 = sub_1004B8094();
  v51 = sub_1004BC9A4();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v83[0] = v53;
    *v52 = 136446210;
    sub_100136DE8(v64);
    v54 = sub_1004BBF04();
    v56 = sub_100012018(v54, v55, v83);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "  ⌛️❌ Item no longer matches queued item=%{public}s", v52, 0xCu);
    sub_100004C6C(v53);
  }
}

void sub_1001383CC(SEL *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 32);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      v7 += 2;
      [v8 *a1];
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void sub_100138488(uint64_t a1)
{
  v2 = sub_1004B6D14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100003ABC(&qword_100604600, &qword_1004CF948);
  __chkstk_darwin();
  v8 = &v29[-v7];
  sub_100003ABC(&qword_100604608, &unk_1004CF950);
  __chkstk_darwin();
  v34 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v29[-v10];
  v13 = __chkstk_darwin();
  v14 = &v29[-v12];
  if (a1)
  {
    v31 = v5;
    v15 = v3;
    v16 = *(v3 + 16);
    v33 = a1;
    v16(&v29[-v12], a1 + direct field offset for Gliss.Transition.id, v2, v13);
    v32 = v15;
    v17 = *(v15 + 56);
    v18 = 1;
    v17(v14, 0, 1, v2);
    v19 = *(v35 + *((swift_isaMask & *v35) + 0x88));
    if (v19)
    {
      (v16)(v11, v19 + direct field offset for Gliss.Transition.id, v2);
      v18 = 0;
    }

    v17(v11, v18, 1, v2);
    v20 = *(v6 + 48);
    sub_10014076C(v14, v8);
    sub_10014076C(v11, &v8[v20]);
    v21 = v32;
    v22 = *(v32 + 48);
    if (v22(v8, 1, v2) == 1)
    {
      v23 = v33;

      sub_100007214(v11, &qword_100604608, &unk_1004CF950);
      sub_100007214(v14, &qword_100604608, &unk_1004CF950);
      v24 = v23;
      if (v22(&v8[v20], 1, v2) == 1)
      {
        sub_100007214(v8, &qword_100604608, &unk_1004CF950);
LABEL_13:

        return;
      }
    }

    else
    {
      v25 = v34;
      sub_10014076C(v8, v34);
      if (v22(&v8[v20], 1, v2) != 1)
      {
        v27 = v31;
        (*(v21 + 32))(v31, &v8[v20], v2);
        sub_1001407DC();
        v24 = v33;

        v30 = sub_1004BBD84();
        v28 = *(v21 + 8);
        v28(v27, v2);
        sub_100007214(v11, &qword_100604608, &unk_1004CF950);
        sub_100007214(v14, &qword_100604608, &unk_1004CF950);
        v28(v34, v2);
        sub_100007214(v8, &qword_100604608, &unk_1004CF950);
        if (v30)
        {
          goto LABEL_13;
        }

LABEL_10:
        v26 = *(*v24 + 16);
        swift_beginAccess();
        if (*(v24 + v26) <= 2u)
        {
          sub_100139C78(v24, 0);
        }

        goto LABEL_13;
      }

      v24 = v33;

      sub_100007214(v11, &qword_100604608, &unk_1004CF950);
      sub_100007214(v14, &qword_100604608, &unk_1004CF950);
      (*(v21 + 8))(v25, v2);
    }

    sub_100007214(v8, &qword_100604600, &qword_1004CF948);
    goto LABEL_10;
  }
}

uint64_t sub_10013898C(uint64_t a1)
{
  sub_10013FF64(a1);
}

id sub_1001389C4()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_10003CC4C(v9[1], v9[2]);
    sub_10003CC4C(v9[3], v9[4]);
    sub_10003CC4C(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100138AA0()
{
  v1 = *((swift_isaMask & *v0) + 0xA0);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_10003CC4C(v9[1], v9[2]);
    sub_10003CC4C(v9[3], v9[4]);
    sub_10003CC4C(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100138B7C()
{
  v1 = *((swift_isaMask & *v0) + 0xA8);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    Gliss.Coordinator.gestureConfiguration.getter(v9);
    v4 = v9[0];
    sub_10003CC4C(v9[1], v9[2]);
    sub_10003CC4C(v9[3], v9[4]);
    sub_10003CC4C(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_100138C54(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v95 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x58);
  v93 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = sub_1004BD174();
  v88 = *(v92 - 8);
  __chkstk_darwin();
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v79 - v10;
  __chkstk_darwin();
  v12 = &v79 - v11;
  __chkstk_darwin();
  v14 = &v79 - v13;
  v94 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v91 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v79 - v16;
  __chkstk_darwin();
  v90 = &v79 - v17;
  __chkstk_darwin();
  v89 = &v79 - v18;
  __chkstk_darwin();
  v20 = &v79 - v19;
  v21 = *(v3 + *((v6 & v5) + 0x88));
  v86 = a2;
  if (v21)
  {
    v22 = *(*v21 + 128);
    swift_beginAccess();
    if (*(v21 + v22) <= 2u)
    {
      v80 = v7;
      v23 = *(*v21 + 112);
      swift_beginAccess();
      v24 = v88;
      v25 = *(v88 + 16);
      v83 = v23;
      v82 = v25;
      v25(v14, v21 + v23, v92);
      v26 = v94;
      v81 = *(v94 + 48);
      if (v81(v14, 1, AssociatedTypeWitness) == 1)
      {
        v27 = *(v24 + 8);

        v27(v14, v92);
      }

      else
      {
        (*(v26 + 32))(v20, v14, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();

        v28 = sub_1004BBD84();
        (*(v26 + 8))(v20, AssociatedTypeWitness);
        if (v28)
        {
          return v21;
        }
      }

      v82(v12, v21 + v83, v92);
      if (v81(v12, 1, AssociatedTypeWitness) == 1)
      {
        (*(v88 + 8))(v12, v92);
        v29 = *(*v21 + 104);
        swift_beginAccess();
        v30 = v94;
        v31 = v89;
        (*(v94 + 16))(v89, v21 + v29, AssociatedTypeWitness);
        v7 = v80;
        swift_getAssociatedConformanceWitness();
        LOBYTE(v29) = sub_1004BBD84();
        (*(v30 + 8))(v31, AssociatedTypeWitness);
        if (v29)
        {
          return v21;
        }
      }

      else
      {

        (*(v88 + 8))(v12, v92);
        v7 = v80;
      }
    }
  }

  v81 = v3;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v32 = sub_1004B80B4();
  v33 = sub_100007084(v32, qword_1006174A8);
  v34 = v94;
  v35 = *(v94 + 16);
  v36 = v90;
  v35(v90, v95, AssociatedTypeWitness);
  v83 = v33;
  v37 = sub_1004B8094();
  v38 = sub_1004BC9A4();
  v39 = os_log_type_enabled(v37, v38);
  v82 = v35;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v80 = v7;
    v41 = v40;
    v42 = swift_slowAlloc();
    v98 = v42;
    *v41 = 136446210;
    v35(v89, v36, AssociatedTypeWitness);
    v43 = sub_1004BBF04();
    v45 = v44;
    v90 = *(v94 + 8);
    (v90)(v36, AssociatedTypeWitness);
    v46 = sub_100012018(v43, v45, &v98);
    v47 = v80;

    *(v41 + 4) = v46;
    v34 = v94;
    _os_log_impl(&_mh_execute_header, v37, v38, "Creating transition for item=%{public}s", v41, 0xCu);
    sub_100004C6C(v42);
  }

  else
  {
    v47 = v7;

    v90 = *(v34 + 8);
    (v90)(v36, AssociatedTypeWitness);
  }

  v48 = v87;
  v49 = v88;
  v50 = v81;
  v51 = *(v81 + *((swift_isaMask & *v81) + 0x88));
  if (!v51)
  {
    v54 = v84;
    (*(v34 + 56))(v84, 1, 1, AssociatedTypeWitness);
    v55 = v47;
    goto LABEL_19;
  }

  v52 = *(*v51 + 112);
  swift_beginAccess();
  v53 = v51 + v52;
  v54 = v84;
  (*(v49 + 16))(v84, v53, v92);
  v55 = v47;
  if ((*(v34 + 48))(v54, 1, AssociatedTypeWitness) == 1)
  {
LABEL_19:
    Gliss.Coordinator.item.getter(v48);
    v57 = (*(v34 + 48))(v54, 1, AssociatedTypeWitness);
    v56 = v82;
    if (v57 != 1)
    {
      (*(v49 + 8))(v54, v92);
    }

    v56(v91, v48, AssociatedTypeWitness);
    goto LABEL_22;
  }

  (*(v34 + 32))(v48, v54, AssociatedTypeWitness);
  v56 = v82;
  v82(v91, v48, AssociatedTypeWitness);
LABEL_22:
  v58 = v89;
  Gliss.Coordinator.item.getter(v89);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = sub_1004BBD84();
  v94 = v34 + 8;
  (v90)(v58, AssociatedTypeWitness);
  if (v60)
  {
    v61 = 1;
    v62 = v85;
  }

  else
  {
    v62 = v85;
    v56(v85, v95, AssociatedTypeWitness);
    v61 = 0;
  }

  (*(v34 + 56))(v62, v61, 1, AssociatedTypeWitness);
  type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, AssociatedConformanceWitness, v63);
  v64 = v62;
  v65 = *((swift_isaMask & *v50) + 0x70);
  swift_beginAccess();
  v66 = *(v50 + v65);
  __chkstk_darwin();
  *(&v79 - 4) = v93;
  *(&v79 - 3) = v55;
  *(&v79 - 2) = v95;
  v67 = v86;
  *(&v79 - 8) = v86;

  v68 = sub_100135CC0(_swiftEmptyDictionarySingleton, sub_100140AEC, (&v79 - 6), v66);

  v21 = sub_100140BE4(v91, v64, v67, v68, 0.0);

  v69 = sub_1004B8094();
  v70 = sub_1004BC9A4();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = v48;
    v73 = swift_slowAlloc();
    v96 = v21;
    v97 = v73;
    *v71 = 136446210;
    swift_getWitnessTable();
    v74 = sub_1004BD934();
    v76 = sub_100012018(v74, v75, &v97);

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v69, v70, "   Created Transition=%{public}s", v71, 0xCu);
    sub_100004C6C(v73);

    v77 = v72;
  }

  else
  {

    v77 = v48;
  }

  (v90)(v77, AssociatedTypeWitness);
  return v21;
}

void sub_100139888(uint64_t a1, void **a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v9 = a2[1];
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = v8;
  sub_100135308(a3, a4, ObjectType, AssociatedTypeWitness, v9, v13);
  sub_1001C061C(v13, v12);
}

void sub_100139970(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  if (qword_1005FFF88 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v6 = sub_1004B80B4();
    sub_100007084(v6, qword_1006174A8);

    v7 = sub_1004B8094();
    v8 = sub_1004BC9A4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26[0] = v10;
      *v9 = 136446210;
      type metadata accessor for Gliss.Transition(0, *(v5 + 80), *(v5 + 88), v11);
      swift_getWitnessTable();
      v12 = sub_1004BD934();
      v14 = sub_100012018(v12, v13, v26);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Begin or Enqueue Transition=%{public}s", v9, 0xCu);
      sub_100004C6C(v10);
    }

    sub_1001418FC(2);

    sub_10013FF64(v15);

    v16 = *((swift_isaMask & *v3) + 0x70);
    swift_beginAccess();
    v17 = *(v3 + v16);
    v5 = *(v17 + 16);

    if (!v5)
    {
      break;
    }

    v18 = 0;
    v19 = (v17 + 40);
    while (v18 < *(v17 + 16))
    {
      ++v18;
      v20 = *v19;
      v21 = *(v19 - 1);
      ObjectType = swift_getObjectType();
      sub_100135728(a1, ObjectType, v20);

      v19 += 2;
      if (v5 == v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  sub_1001383C0();
  v23 = sub_1004B8094();
  v24 = sub_1004BC9A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "   Transition Started!", v25, 2u);
  }
}

void sub_100139C78(void **a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *a1;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v7 = sub_1004B80B4();
  sub_100007084(v7, qword_1006174A8);

  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = sub_1004BD934();
    v14 = sub_100012018(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (v4)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (v4)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_100012018(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to cancel transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_1001418FC(4);
    sub_1001383B4();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v4 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (v4)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = sub_100034820(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      sub_10013FD58(v34, v35, v36);
      sub_10003CC4C(v37, v39);
      sub_10003CC4C(v58[3], v58[4]);
      sub_10003CC4C(v58[5], v58[6]);
      v40 = sub_100140C5C(a1, v38, v34, v35, v36);

      sub_10013FD30(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_1001408D8;
      *(v41 + 24) = v19;
      v56 = sub_100009350;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1000D6C80;
      v55 = &unk_1005B2688;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_100140918;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_100140B3C;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10013ABCC;
      v55 = &unk_1005B26D8;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *((swift_isaMask & *v45) + 0x90);
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      sub_10003870C(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_10013B31C(a1, 0, v32, sub_100140BA4, 0.0);
      sub_10013A374(a1, v32);
    }
  }

  else
  {
    v29 = sub_1004B8094();
    v30 = sub_1004BC9A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

uint64_t sub_10013A374(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = sub_1004B6D14();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100604600, &qword_1004CF948);
  __chkstk_darwin();
  v59 = &v52 - v9;
  sub_100003ABC(&qword_100604608, &unk_1004CF950);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  sub_1001418FC(6);
  if (qword_1005FFF88 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_1004B80B4();
    sub_100007084(v16, qword_1006174A8);

    v17 = sub_1004B8094();
    v18 = sub_1004BC9A4();

    v19 = os_log_type_enabled(v17, v18);
    v53 = v11;
    v54 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136446210;
      v61[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v58 + 80), *(v58 + 88), v22);
      swift_getWitnessTable();
      v23 = sub_1004BD934();
      v25 = sub_100012018(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "❎ Cancelled transition=%{public}s", v20, 0xCu);
      sub_100004C6C(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v60 + *((*v3 & *v60) + 0x88));
    v28 = v55;
    v27 = v56;
    if (v26)
    {
      v29 = *(v56 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v55);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v56 + 7);
      v30(v15, 1, 1, v55);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v54[12];
    v32 = v59;
    sub_10014076C(v15, v59);
    sub_10014076C(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_100007214(v13, &qword_100604608, &unk_1004CF950);
      v34 = v59;
      sub_100007214(v15, &qword_100604608, &unk_1004CF950);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_100007214(v34, &qword_100604608, &unk_1004CF950);
      v35 = v57;
LABEL_14:
      sub_10013FF64(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    sub_10014076C(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_100007214(v56, &qword_100604608, &unk_1004CF950);
      v34 = v59;
      sub_100007214(v15, &qword_100604608, &unk_1004CF950);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_100007214(v34, &qword_100604600, &qword_1004CF948);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    sub_1001407DC();
    v41 = v27;
    v42 = sub_1004BBD84();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_100007214(v56, &qword_100604608, &unk_1004CF950);
    sub_100007214(v15, &qword_100604608, &unk_1004CF950);
    v43(v36, v28);
    sub_100007214(v39, &qword_100604608, &unk_1004CF950);
    v8 = &swift_isaMask;
    v35 = v57;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v62[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v52 - 2) = *(v35 + 80);
    *(&v52 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v58 + 80), *(v58 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = sub_1004BC3B4();

    swift_getWitnessTable();
    sub_1004BC204();

    v46 = v60;
    v47 = *((swift_isaMask & *v60) + 0x70);
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      sub_100135824(a1, ObjectType, v49);

      v15 += 2;
      if (v11 == v13)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_10013ABCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10013AC20(void **a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *a1;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v7 = sub_1004B80B4();
  sub_100007084(v7, qword_1006174A8);

  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = sub_1004BD934();
    v14 = sub_100012018(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (v4)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (v4)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_100012018(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to end transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_1001418FC(3);
    sub_1001383B4();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v4 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (v4)
    {
      v21 = direct field offset for Gliss.Transition.id;
      v22 = *((swift_isaMask & *v3) + 0x90);
      swift_beginAccess();
      v23 = *(v3 + v22);
      v24 = *(v23 + 16);
      swift_retain_n();
      v25 = v3;
      if (v24)
      {

        v26 = sub_100034820(a1 + v21);
        if (v27)
        {
          v28 = *(*(v23 + 56) + 8 * v26);

          [v28 stopAnimation:0];
        }

        else
        {
        }
      }

      v33 = a1 + *(*a1 + 17);
      v50 = v21;
      v34 = *v33;
      v35 = *(v33 + 1);
      v36 = v33[16];
      Gliss.Coordinator.gestureConfiguration.getter(v58);
      v49 = v25;
      v38 = v58[0];
      v37 = v58[1];
      v39 = v58[2];
      sub_10013FD58(v34, v35, v36);
      sub_10003CC4C(v37, v39);
      sub_10003CC4C(v58[3], v58[4]);
      sub_10003CC4C(v58[5], v58[6]);
      v40 = sub_100140C5C(a1, v38, v34, v35, v36);

      sub_10013FD30(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_10014097C;
      *(v41 + 24) = v19;
      v56 = sub_1000081FC;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1000D6C80;
      v55 = &unk_1005B2778;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_1001409B8;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_100140A08;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10013ABCC;
      v55 = &unk_1005B27C8;
      v44 = _Block_copy(&aBlock);

      v45 = v49;

      [v40 addCompletion:v44];
      _Block_release(v44);
      [v40 startAnimation];
      v46 = *((swift_isaMask & *v45) + 0x90);
      swift_beginAccess();
      v47 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v45 + v46);
      *(v45 + v46) = 0x8000000000000000;
      sub_10003870C(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_10013B31C(a1, 0, v32, sub_100140A90, 1.0);
      sub_10013B4F8(a1, v32);
    }
  }

  else
  {
    v29 = sub_1004B8094();
    v30 = sub_1004BC9A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

void sub_10013B31C(uint64_t *a1, char a2, void *a3, uint64_t a4, double a5)
{
  v7 = *a1;
  v8 = (a1 + *(*a1 + 120));
  swift_beginAccess();
  v8[1] = a5;
  if (a2)
  {
    swift_beginAccess();
    __chkstk_darwin();
    type metadata accessor for Gliss.Transition(255, *(v7 + 80), *(v7 + 88), v9);
    swift_getFunctionTypeMetadata1();
    sub_1004BC3B4();

    swift_getWitnessTable();
    sub_1004BC204();
  }

  sub_1001383C0();
}

uint64_t sub_10013B4F8(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = sub_1004B6D14();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_100604600, &qword_1004CF948);
  __chkstk_darwin();
  v59 = &v52 - v9;
  sub_100003ABC(&qword_100604608, &unk_1004CF950);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  sub_1001418FC(5);
  if (qword_1005FFF88 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_1004B80B4();
    sub_100007084(v16, qword_1006174A8);

    v17 = sub_1004B8094();
    v18 = sub_1004BC9A4();

    v19 = os_log_type_enabled(v17, v18);
    v53 = v11;
    v54 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136446210;
      v61[0] = a1;
      type metadata accessor for Gliss.Transition(0, *(v58 + 80), *(v58 + 88), v22);
      swift_getWitnessTable();
      v23 = sub_1004BD934();
      v25 = sub_100012018(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "✅ End of transition=%{public}s", v20, 0xCu);
      sub_100004C6C(v21);

      v3 = &swift_isaMask;
    }

    v26 = *(v60 + *((*v3 & *v60) + 0x88));
    v28 = v55;
    v27 = v56;
    if (v26)
    {
      v29 = *(v56 + 2);
      v29(v15, v26 + direct field offset for Gliss.Transition.id, v55);
      v30 = *(v27 + 56);
      v30(v15, 0, 1, v28);
    }

    else
    {
      v30 = *(v56 + 7);
      v30(v15, 1, 1, v55);
      v29 = *(v27 + 16);
    }

    v29(v13, &a1[direct field offset for Gliss.Transition.id], v28);
    v30(v13, 0, 1, v28);
    v31 = v54[12];
    v32 = v59;
    sub_10014076C(v15, v59);
    sub_10014076C(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_100007214(v13, &qword_100604608, &unk_1004CF950);
      v34 = v59;
      sub_100007214(v15, &qword_100604608, &unk_1004CF950);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_100007214(v34, &qword_100604608, &unk_1004CF950);
      v35 = v57;
LABEL_14:
      sub_10013FF64(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    sub_10014076C(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_100007214(v56, &qword_100604608, &unk_1004CF950);
      v34 = v59;
      sub_100007214(v15, &qword_100604608, &unk_1004CF950);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_100007214(v34, &qword_100604600, &qword_1004CF948);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    sub_1001407DC();
    v41 = v27;
    v42 = sub_1004BBD84();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_100007214(v56, &qword_100604608, &unk_1004CF950);
    sub_100007214(v15, &qword_100604608, &unk_1004CF950);
    v43(v36, v28);
    sub_100007214(v39, &qword_100604608, &unk_1004CF950);
    v8 = &swift_isaMask;
    v35 = v57;
    if (v42)
    {
      goto LABEL_14;
    }

LABEL_15:
    v44 = *(*a1 + 152);
    swift_beginAccess();
    v62[0] = *&a1[v44];
    __chkstk_darwin();
    *(&v52 - 2) = *(v35 + 80);
    *(&v52 - 2) = a1;
    type metadata accessor for Gliss.Transition(255, *(v58 + 80), *(v58 + 88), v45);
    swift_getFunctionTypeMetadata2();
    v3 = sub_1004BC3B4();

    swift_getWitnessTable();
    sub_1004BC204();

    v46 = v60;
    v47 = *((swift_isaMask & *v60) + 0x70);
    swift_beginAccess();
    v48 = *(v46 + v47);
    v11 = *(v48 + 16);

    if (!v11)
    {
    }

    v13 = 0;
    v15 = (v48 + 40);
    while (v13 < *(v48 + 16))
    {
      ++v13;
      v49 = *v15;
      v3 = *(v15 - 1);
      ObjectType = swift_getObjectType();
      sub_100135824(a1, ObjectType, v49);

      v15 += 2;
      if (v11 == v13)
      {
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_10013BD50(uint64_t a1, void (*a2)(__n128), uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_1004B6D14();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  sub_1001C045C(0, v11);
  return swift_endAccess();
}

void sub_10013BE94(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_10013BEC4()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[22];
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v18[0] = v0;
    v5 = objc_allocWithZone(UIPanGestureRecognizer);
    type metadata accessor for Gliss.Coordinator(0, v1[10], v1[11], v6);
    v4 = [v5 initWithTarget:sub_1004BD9A4() action:"handlePanGestureRecognizer:"];
    swift_unknownObjectRelease();
    v3 = 0;
  }

  v7 = v4;
  v8 = v3;
  [v7 setDelegate:v0];
  v9 = *((swift_isaMask & *v0) + 0xB0);
  v10 = *(v0 + v9);
  *(v0 + v9) = v7;
  v11 = v7;

  [v11 setAllowedScrollTypesMask:3];
  Gliss.Coordinator.gestureConfiguration.getter(v18);
  v12 = v18[0];
  sub_10003CC4C(v18[1], v18[2]);
  sub_10003CC4C(v18[3], v18[4]);
  sub_10003CC4C(v18[5], v18[6]);
  v13 = [v11 view];
  if (v13)
  {
    v14 = v13;
    sub_100009130(0, &qword_100604610, UIView_ptr);
    if ((sub_1004BCFA4() & 1) == 0)
    {
      [v14 removeGestureRecognizer:v11];
    }
  }

  v15 = [v11 view];

  if (!v15 || (sub_100009130(0, &qword_100604610, UIView_ptr), v16 = v12, v17 = sub_1004BCFA4(), v15, v16, (v17 & 1) == 0))
  {
    [v12 addGestureRecognizer:v11];
  }
}

void sub_10013C11C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v287 = v280 - v6;
  v7 = *((v5 & v4) + 0x50);
  v306 = *((v5 & v4) + 0x58);
  v303 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v304 = *(sub_1004BD174() - 8);
  __chkstk_darwin();
  v288 = v280 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v291 = v280 - v10;
  __chkstk_darwin();
  v290 = v280 - v11;
  __chkstk_darwin();
  v292 = v280 - v12;
  __chkstk_darwin();
  v295 = (v280 - v13);
  __chkstk_darwin();
  v294 = v280 - v14;
  v307 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  __chkstk_darwin();
  v296 = v280 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v286 = v280 - v17;
  __chkstk_darwin();
  v19 = v280 - v18;
  __chkstk_darwin();
  v305 = v280 - v20;
  v285 = v21;
  __chkstk_darwin();
  v301 = v22;
  v302 = v280 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v27 = v280 - v26;
  v28 = Gliss.Coordinator.dataSource.getter();
  if (!v28)
  {
    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v45 = sub_1004B80B4();
    sub_100007084(v45, qword_1006174A8);
    v307 = sub_1004B8094();
    v46 = sub_1004BC9A4();
    if (os_log_type_enabled(v307, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v307, v46, "No Data Source Set", v47, 2u);
    }

    v48 = v307;

    return;
  }

  v29 = v28;
  Gliss.Coordinator.gestureConfiguration.getter(v311);
  v30 = v311[0];
  sub_10003CC4C(v311[1], v311[2]);
  sub_10003CC4C(v311[3], v311[4]);
  sub_10003CC4C(v311[5], v311[6]);
  v289 = a1;
  [a1 translationInView:v30];
  v32 = v31;
  v34 = v33;

  if (v32 == 0.0)
  {
    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v49 = sub_1004B80B4();
    sub_100007084(v49, qword_1006174A8);
    v50 = sub_1004B8094();
    v51 = sub_1004BC9A4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = COERCE_DOUBLE(swift_slowAlloc());
      v308 = v53;
      *v52 = 136446210;
      v312 = v32;
      v313 = v34;
      type metadata accessor for CGPoint(0);
      v54 = sub_1004BBF04();
      v56 = sub_100012018(v54, v55, &v308);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to compute direction from gesture's translation %{public}s", v52, 0xCu);
      sub_100004C6C(*&v53);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v299 = isa;
  v35 = *(v2 + *((swift_isaMask & *v2) + 0x88));
  v293 = TupleTypeMetadata2;
  v297 = v2;
  v298 = v29;
  v300 = v27;
  if (v35)
  {
    v36 = *(*v35 + 120);
    swift_beginAccess();
    v37 = *(v35 + v36);
    v38 = v302;
    if (v37 == 2 || (((v32 >= 0.0) ^ v37) & 1) != 0)
    {

      v2 = v297;
      sub_10013FF64(0);
      Gliss.Coordinator.item.getter(v38);
      v44 = v303;
      (v306[3].isa)(v300, &v300[*(TupleTypeMetadata2 + 48)], v38, v303);
    }

    else
    {
      v39 = *(*v35 + 104);
      swift_beginAccess();
      (v299[2])(v38, v35 + v39, v307);
      v40 = v25;
      v41 = v300;
      v42 = v306[3].isa;
      v43 = *(v293 + 48);

      v44 = v303;
      (v42)(v41, &v41[v43], v38);
      v25 = v40;
      TupleTypeMetadata2 = v293;

      v2 = v297;
    }
  }

  else
  {
    v38 = v302;
    Gliss.Coordinator.item.getter(v302);
    v57 = &v27[*(TupleTypeMetadata2 + 48)];
    v58 = v27;
    v44 = v303;
    (v306[3].isa)(v58, v57, v38, v303);
  }

  v59 = v299;
  v60 = v299[1];
  v282 = (v299 + 1);
  v283 = v25;
  v60(v38, v307);
  Gliss.Coordinator.gestureConfiguration.getter(&v312);
  v61 = v312;
  sub_10003CC4C(v313, v314);
  sub_10003CC4C(v315, v316);
  sub_10003CC4C(v317, v318);
  v62 = [*&v61 effectiveUserInterfaceLayoutDirection];
  v284 = v60;
  v281 = v61;
  if (v32 < 0.0)
  {
    v63 = v305;
    if (!v62)
    {
      goto LABEL_30;
    }

    if (v62 != 1)
    {
LABEL_33:
      Gliss.Coordinator.item.getter(v19);
      goto LABEL_39;
    }

LABEL_26:
    v64 = v295;
    (*(v304 + 2))(v295, v300, v301);
    v65 = v59[6];
    if (v65(v64, 1, v307) != 1)
    {
      (v59[4])(v19, v64, v307);
      v2 = v297;
      v44 = v303;
      goto LABEL_39;
    }

    v66 = v297;
    Gliss.Coordinator.item.getter(v19);
    v67 = v65(v64, 1, v307);
    v2 = v66;
    v68 = v67 == 1;
    v69 = v64;
    v44 = v303;
    if (v68)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v63 = v305;
  if (!v62)
  {
    goto LABEL_26;
  }

  if (v62 != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v70 = &v300[*(TupleTypeMetadata2 + 48)];
  v71 = v294;
  (*(v304 + 2))(v294, v70, v301);
  v72 = v59[6];
  if (v72(v71, 1, v307) != 1)
  {
    (v59[4])(v19, v71, v307);
    TupleTypeMetadata2 = v293;
    v2 = v297;
    goto LABEL_39;
  }

  v73 = v297;
  Gliss.Coordinator.item.getter(v19);
  v74 = v72(v71, 1, v307);
  v2 = v73;
  v68 = v74 == 1;
  v69 = v71;
  TupleTypeMetadata2 = v293;
  if (!v68)
  {
LABEL_32:
    (*(v304 + 1))(v69, v301);
  }

LABEL_39:
  v75 = v59[4];
  v75(v63, v19, v307);
  if ((v306[4].isa)(v63, v44))
  {
    v280[1] = v59 + 4;
    v76 = TupleTypeMetadata2;
    v77 = *&v281;
    [v289 velocityInView:v77];
    v79 = v78;
    v81 = v80;
    v82 = sub_100138C54(v63, v32 >= 0.0);
    v296 = v77;
    [v77 bounds];
    Width = CGRectGetWidth(v320);
    v84 = v82 + *(*v82 + 168);
    swift_beginAccess();
    v85 = v84[32];
    v86 = v85 != 2;
    v87 = v86 & v85;
    if ((v86 & v84[33]) != 0)
    {
      v88 = 256;
    }

    else
    {
      v88 = 0;
    }

    *v84 = v32;
    *(v84 + 1) = v34;
    *(v84 + 2) = v79;
    *(v84 + 3) = v81;
    *(v84 + 16) = v88 | v87;
    v89 = *(*v82 + 128);
    swift_beginAccess();
    v90 = *(v82 + v89);
    v295 = v82;
    if (v90 <= 1)
    {
      v91 = v75;
      if (qword_1005FFF88 != -1)
      {
        swift_once();
      }

      v92 = sub_1004B80B4();
      v294 = sub_100007084(v92, qword_1006174A8);
      v93 = sub_1004B8094();
      v94 = sub_1004BC9A4();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "🤏 Swipe Gesture Began", v95, 2u);
      }

      v96 = sub_1004B8094();
      v97 = sub_1004BC9A4();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = COERCE_DOUBLE(swift_slowAlloc());
        v308 = v99;
        *v98 = 136446210;
        LOBYTE(v310[0]) = v32 >= 0.0;
        v100 = sub_1004BBF04();
        v102 = sub_100012018(v100, v101, &v308);

        *(v98 + 4) = v102;
        v82 = v295;
        _os_log_impl(&_mh_execute_header, v96, v97, "   Direction=%{public}s", v98, 0xCu);
        sub_100004C6C(*&v99);
      }

      v103 = sub_1004B8094();
      v104 = sub_1004BC9A4();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = COERCE_DOUBLE(swift_slowAlloc());
        v308 = v106;
        *v105 = 136446210;
        v310[0] = v82;
        v107 = v307;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition(0, v107, AssociatedConformanceWitness, v109);
        swift_getWitnessTable();
        v110 = sub_1004BD934();
        v112 = sub_100012018(v110, v111, &v308);

        *(v105 + 4) = v112;
        v82 = v295;
        _os_log_impl(&_mh_execute_header, v103, v104, "   Transition=%{public}s", v105, 0xCu);
        sub_100004C6C(*&v106);
      }

      v76 = v293;
      v75 = v91;
      v2 = v297;
      sub_100139970(v82, v113);
      v63 = v305;
    }

    v114 = [v289 state];
    if (v114 <= 2)
    {
      if (v114 < 2)
      {
        v115 = sub_1001389C4();
        [v115 prepare];

        goto LABEL_69;
      }

      v140 = v284;
      if (v114 == 2)
      {
LABEL_69:
        if (qword_1005FFF88 != -1)
        {
          swift_once();
        }

        v149 = sub_1004B80B4();
        v150 = sub_100007084(v149, qword_1006174A8);
        v151 = sub_1004B8094();
        v152 = sub_1004BC974();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          *v153 = 0;
          _os_log_impl(&_mh_execute_header, v151, v152, "🤏 Swipe Gesture Updated", v153, 2u);
        }

        v154 = sub_1004B8094();
        v155 = sub_1004BC974();
        v156 = os_log_type_enabled(v154, v155);
        v306 = v150;
        if (v156)
        {
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v310[0] = v158;
          *v157 = 136446210;
          v308 = v32;
          v309 = v34;
          type metadata accessor for CGPoint(0);
          v159 = sub_1004BBF04();
          v161 = sub_100012018(v159, v160, v310);

          *(v157 + 4) = v161;
          _os_log_impl(&_mh_execute_header, v154, v155, "   Translation=%{public}s", v157, 0xCu);
          sub_100004C6C(v158);
        }

        v162 = sub_1004B8094();
        v163 = sub_1004BC974();
        v164 = os_log_type_enabled(v162, v163);
        v165 = v296;
        v166 = v304;
        if (v164)
        {
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v310[0] = v168;
          *v167 = 136446210;
          v308 = v79;
          v309 = v81;
          type metadata accessor for CGPoint(0);
          v169 = sub_1004BBF04();
          v171 = sub_100012018(v169, v170, v310);

          *(v167 + 4) = v171;
          _os_log_impl(&_mh_execute_header, v162, v163, "   Velocity=%{public}s", v167, 0xCu);
          sub_100004C6C(v168);
        }

        v172 = v292;
        [v165 bounds];
        v173 = fabs(v32);
        v174 = v173 * (1.0 / CGRectGetWidth(v321));
        v175 = *(*v82 + 112);
        swift_beginAccess();
        v176 = *(v166 + 2);
        v303 = v175;
        v177 = v82 + v175;
        v178 = v301;
        v179 = v176;
        v176(v172, v177, v301);
        v180 = v299[6];
        v299 += 6;
        v181 = v180;
        if (v180(v172, 1, v307) == 1)
        {

          v182 = *(v166 + 1);
          v182(v172, v178);
          v183 = v178;
          v184 = v179;
          v185 = v181;
        }

        else
        {
          v182 = *(v166 + 1);
          v182(v172, v178);
          v186 = (v82 + *(*v82 + 120));
          swift_beginAccess();
          v187 = v186[1];
          v186[1] = v174;
          v188 = sub_1004B8094();
          v189 = sub_1004BC974();
          if (os_log_type_enabled(v188, v189))
          {
            v190 = swift_slowAlloc();
            *v190 = 134349056;
            *(v190 + 4) = v174;
            _os_log_impl(&_mh_execute_header, v188, v189, "   Progression Value=%{public}f", v190, 0xCu);
          }

          v184 = v179;
          if (v187 >= 0.45)
          {
            v185 = v181;
            if (v187 <= 0.55)
            {
              v225 = v303;
              if (v174 < 0.45 || v174 > 0.55)
              {
                v273 = sub_1001389C4();
                [v289 locationInView:v165];
                v275 = v274;
                v277 = v276;

                [v273 impactOccurredAtLocation:{v275, v277}];
                v279 = sub_100141F70(&v308);
                if (*(v278 + 32) != 2)
                {
                  *(v278 + 32) = v174 >= 0.55;
                }

                (v279)(&v308, 0);
                v183 = v301;
              }

              else
              {

                v183 = v301;
              }

LABEL_110:
              if (v174 <= 1.0)
              {
                v227 = 0;
              }

              else
              {
                v226 = v290;
                v184(v290, v295 + v225, v183);
                v227 = v185(v226, 1, v307) != 1;
                v182(v226, v183);
              }

              v229 = sub_100141F70(&v308);
              if (*(v228 + 32) != 2)
              {
                *(v228 + 33) = v227;
              }

              (v229)(&v308, 0);
              v230 = v295;
              v231 = v291;
              v184(v291, v295 + v225, v183);
              v232 = v230;
              LODWORD(v230) = v185(v231, 1, v307) == 1;
              v182(v231, v183);
              v233 = v283;
              v234 = v284;
              v235 = v293;
              v236 = v300;
              if (((v230 | v227) & 1) == 0)
              {
                goto LABEL_125;
              }

              v237 = v296;
              [v296 bounds];
              v238 = CGRectGetWidth(v322) * 0.2;
              v239 = 0.0;
              if (v227)
              {
                [v237 bounds];
                v239 = CGRectGetWidth(v323);
              }

              v240 = v238 * ((v173 - v239) / (v238 + v238 + v173 - v239));
              [v237 bounds];
              v241 = 1.0 / CGRectGetWidth(v324) * v240;
              if (v227)
              {
                v242 = v232 + *(*v232 + 120);
                swift_beginAccess();
                *(v242 + 8) = v241 + 1.0;

                v243 = sub_1004B8094();
                v244 = sub_1004BC974();

                if (os_log_type_enabled(v243, v244))
                {
                  v245 = swift_slowAlloc();
                  *v245 = 134349056;
                  *(v245 + 4) = *(v242 + 8);
                  v246 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&_mh_execute_header, v243, v244, v246, v245, 0xCu);

                  v235 = v293;
                }
              }

              else
              {
                v247 = v232 + *(*v232 + 120);
                swift_beginAccess();
                *(v247 + 8) = v241;

                v243 = sub_1004B8094();
                v244 = sub_1004BC974();

                if (os_log_type_enabled(v243, v244))
                {
                  v245 = swift_slowAlloc();
                  *v245 = 134349056;
                  *(v245 + 4) = *(v247 + 8);
                  v246 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              sub_1001383B4();

              swift_unknownObjectRelease();

              v234(v305, v307);
              (*(v233 + 8))(v236, v235);
              return;
            }

            v183 = v301;
          }

          else
          {

            v183 = v301;
            v185 = v181;
          }
        }

        v225 = v303;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v139 = v299;
    if (v114 != 3)
    {
      if (v114 == 4)
      {

        v140 = v284;
        if (qword_1005FFF88 != -1)
        {
          swift_once();
        }

        v200 = sub_1004B80B4();
        sub_100007084(v200, qword_1006174A8);
        v142 = sub_1004B8094();
        v143 = sub_1004BC9A4();
        if (!os_log_type_enabled(v142, v143))
        {
          goto LABEL_98;
        }

        v144 = swift_slowAlloc();
        *v144 = 0;
        v145 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v140 = v284;
        if (v114 != 5)
        {
LABEL_92:
          swift_unknownObjectRelease();

          v199 = v296;

LABEL_99:
          v140(v63, v307);
LABEL_100:
          (*(v283 + 8))(v300, v76);
          return;
        }

        if (qword_1005FFF88 != -1)
        {
          swift_once();
        }

        v141 = sub_1004B80B4();
        sub_100007084(v141, qword_1006174A8);
        v142 = sub_1004B8094();
        v143 = sub_1004BC9A4();
        if (!os_log_type_enabled(v142, v143))
        {
LABEL_98:

          sub_100139C78(v82, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v144 = swift_slowAlloc();
        *v144 = 0;
        v145 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&_mh_execute_header, v142, v143, v145, v144, 2u);
      v76 = v293;

      goto LABEL_98;
    }

    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v191 = sub_1004B80B4();
    sub_100007084(v191, qword_1006174A8);
    v192 = sub_1004B8094();
    v193 = sub_1004BC9A4();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      *v194 = 0;
      _os_log_impl(&_mh_execute_header, v192, v193, "🤏✅ Swipe Gesture Ended", v194, 2u);
      v139 = v299;
      v2 = v297;
    }

    if (Width * 0.5 >= fabs(v79))
    {
      v195 = (v82 + *(*v82 + 120));
      swift_beginAccess();
      if (v195[1] < 0.5)
      {

        v196 = sub_1004B8094();
        v197 = sub_1004BC9A4();
        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          *v198 = 0;
          _os_log_impl(&_mh_execute_header, v196, v197, "   Hasn't reached translation thresholds. Cancelling ❎", v198, 2u);
        }

        sub_100139C78(v82, 1);
        swift_unknownObjectRelease();

        v284(v63, v307);
        goto LABEL_139;
      }
    }

    if (v32 < 0.0)
    {
      v201 = v304;
      v202 = v288;
      if (v79 <= 0.0)
      {
LABEL_103:
        v203 = *(*v82 + 112);
        swift_beginAccess();
        v204 = v82 + v203;
        v205 = v301;
        (*(v201 + 2))(v202, v204, v301);
        if ((v139[6])(v202, 1, v307) == 1)
        {
          (*(v201 + 1))(v202, v205);
          v206 = sub_100138AA0();
          [v206 prepare];

          v207 = *(v2 + *((swift_isaMask & *v2) + 0xA0));
          v208 = v296;
          [v289 locationInView:v296];
          v210 = v209;
          v212 = v211;

          [v207 impactOccurredWithIntensity:0.5 atLocation:{v210, v212}];
          sub_100139C78(v82, 1);
          v213 = sub_10013FF04();
          if (*(v213 + 16))
          {
            v214 = direct field offset for Gliss.Transition.id;

            v215 = sub_100034820(v82 + v214);
            v216 = v284;
            if (v217)
            {
              v218 = *(*(v213 + 56) + 8 * v215);

              sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
              v219 = sub_1004BCB44();
              [v218 duration];
              v221 = v220 + -0.1;
              v222 = v216;
              v223 = swift_allocObject();
              *(v223 + 16) = v2;
              v224 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(sub_100140430, v223, v221);

              swift_unknownObjectRelease();

              v222(v63, v307);
LABEL_139:
              (*(v283 + 8))(v300, v293);
              return;
            }
          }

          else
          {

            v216 = v284;
          }

          swift_unknownObjectRelease();

          v216(v63, v307);
          goto LABEL_139;
        }

        v252 = v202;
        v253 = v296;

        v254 = v286;
        v255 = v252;
        v256 = v307;
        v75(v286, v255, v307);
        v257 = sub_1004BC4B4();
        (*(*(v257 - 8) + 56))(v287, 1, 1, v257);
        (v139[2])(v302, v254, v256);
        sub_1004BC474();
        v304 = v253;

        v258 = v298;
        swift_unknownObjectRetain();
        v299 = v2;
        v301 = v289;
        v297 = sub_1004BC464();
        v259 = (*(v139 + 80) + 56) & ~*(v139 + 80);
        v260 = (v285 + v259 + 7) & 0xFFFFFFFFFFFFFFF8;
        v261 = (v260 + 15) & 0xFFFFFFFFFFFFFFF8;
        v262 = (v261 + 15) & 0xFFFFFFFFFFFFFFF8;
        v263 = v75;
        v264 = (v262 + 15) & 0xFFFFFFFFFFFFFFF8;
        v265 = swift_allocObject();
        v265[2] = v297;
        v265[3] = &protocol witness table for MainActor;
        v266 = v302;
        v267 = v306;
        v265[4] = v303;
        v265[5] = v267;
        v265[6] = v258;
        v268 = v265 + v259;
        v269 = v307;
        v263(v268, v266, v307);
        *(v265 + v260) = v299;
        *(v265 + v261) = v295;
        v270 = v304;
        *(v265 + v262) = v304;
        v271 = v265 + v264;
        *v271 = v79;
        *(v271 + 1) = v81;
        *(v265 + ((v264 + 23) & 0xFFFFFFFFFFFFFFF8)) = v301;
        sub_1000FD6BC(0, 0, v287, &unk_1004CF940, v265);

        swift_unknownObjectRelease();

        v272 = v284;
        v284(v286, v269);
        v272(v305, v269);
        goto LABEL_139;
      }
    }

    else
    {
      v201 = v304;
      v202 = v288;
      if (v79 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v248 = sub_1004B8094();
    v249 = sub_1004BC9A4();
    v250 = os_log_type_enabled(v248, v249);
    v76 = v293;
    if (v250)
    {
      v251 = swift_slowAlloc();
      *v251 = 0;
      _os_log_impl(&_mh_execute_header, v248, v249, "   Going opposite direction. Cancelling ❎", v251, 2u);
      v76 = v293;
    }

    sub_100139C78(v82, 1);
    swift_unknownObjectRelease();

    v284(v63, v307);
    goto LABEL_100;
  }

  v116 = v300;
  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v117 = sub_1004B80B4();
  sub_100007084(v117, qword_1006174A8);
  v118 = v59[2];
  v119 = v296;
  v120 = v63;
  v118(v296, v63, v307);
  v121 = sub_1004B8094();
  v122 = sub_1004BC9A4();
  v123 = os_log_type_enabled(v121, v122);
  v124 = v283;
  if (v123)
  {
    v125 = swift_slowAlloc();
    v306 = v121;
    v126 = v125;
    v127 = COERCE_DOUBLE(swift_slowAlloc());
    v308 = v127;
    *v126 = 136446210;
    v128 = v307;
    v118(v302, v119, v307);
    v129 = sub_1004BBF04();
    v130 = v128;
    v131 = v124;
    v133 = v132;
    v134 = v119;
    v135 = v284;
    v284(v134, v130);
    v136 = sub_100012018(v129, v133, &v308);

    *(v126 + 4) = v136;
    v137 = v122;
    v138 = v306;
    _os_log_impl(&_mh_execute_header, v306, v137, "DataSource doesn't allow swipe for item=%{public}s", v126, 0xCu);
    sub_100004C6C(*&v127);

    swift_unknownObjectRelease();
    v135(v305, v130);
    (*(v131 + 8))(v300, v293);
  }

  else
  {

    swift_unknownObjectRelease();
    v146 = v119;
    v147 = v307;
    v148 = v284;
    v284(v146, v307);
    v148(v120, v147);
    (*(v124 + 8))(v116, TupleTypeMetadata2);
  }
}

uint64_t sub_10013E41C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 112) = v21;
  *(v9 + 104) = a1;
  *(v9 + 88) = a8;
  *(v9 + 96) = a9;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  v11 = *a7;
  v12 = swift_isaMask;
  v13 = *(*a8 + 80);
  *(v9 + 120) = v13;
  *(v9 + 128) = *(v13 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = sub_1004BC474();
  *(v9 + 152) = sub_1004BC464();
  v14 = *((v12 & v11) + 0x58);
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *((v12 & v11) + 0x50);
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = sub_10013E628;

  return v19(a6, v16, v14);
}

uint64_t sub_10013E628()
{
  *(*v1 + 184) = v0;

  v3 = sub_1004BC3E4();
  if (v0)
  {
    v4 = sub_10013EAB8;
  }

  else
  {
    v4 = sub_10013E780;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10013E780()
{
  v31 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v29 = *(v0 + 160);

  (*(v2 + 16))(v1, v6, v3);
  sub_100136CFC(v1);
  v7 = *((swift_isaMask & *v5) + 0x70);
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  sub_100135C2C(sub_100140834, v9, v8);

  sub_10013AC20(v4, 1);
  v10 = v4 + *(*v4 + 21);
  swift_beginAccess();
  v11 = v10[32];
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(v0 + 96);
    [v14 bounds];
    v15 = fmax(fmin(fabs(v13) * (1.0 / (CGRectGetWidth(v33) * 4.0)), 1.0), 0.25);
    v16 = sub_1001389C4();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v19 = sub_1004B80B4();
    sub_100007084(v19, qword_1006174A8);
    v20 = sub_1004B8094();
    v21 = sub_1004BC9A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = sub_1004BC5C4();
      v26 = sub_100012018(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      sub_100004C6C(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10013EAB8()
{
  v19 = v0;

  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, qword_1006174A8);
  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v7 = sub_1004BBF04();
    v9 = sub_100012018(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    sub_100004C6C(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = sub_100138B7C();
  [v14 prepare];

  v15 = *(v13 + *((swift_isaMask & *v13) + 0xA8));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  sub_100139C78(v12, 1);

  v16 = v0[1];

  return v16();
}

void sub_10013ED18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10013C11C(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0xB0));
  if (!v2)
  {
    return 1;
  }

  v3 = v1;
  sub_100009130(0, &qword_100604490, NSObject_ptr);
  v5 = v2;
  if ((sub_1004BCFA4() & 1) == 0)
  {

    return 1;
  }

  v6 = [(objc_class *)a1.super.isa view];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  [v5 velocityInView:v7];
  v9 = v8;
  v11 = v10;
  if (fabs(v10) < fabs(v8))
  {
    [(objc_class *)a1.super.isa locationInView:v7];
    v9 = v12;
    v11 = v13;

    Gliss.Coordinator.gestureConfiguration.getter(v59);
    v15 = v59[1];
    v14 = v59[2];

    sub_10003CC4C(v59[3], v59[4]);
    sub_10003CC4C(v59[5], v59[6]);
    if (v15)
    {
      v16 = v15(v7);
      v17 = v16 + 56;
      v18 = -*(v16 + 16);
      v19 = -1;
      while (1)
      {
        if (v18 + v19 == -1)
        {
          sub_10003CC4C(v15, v14);

          v22 = 0;
          goto LABEL_20;
        }

        if (++v19 >= *(v16 + 16))
        {
          break;
        }

        v20 = v17 + 32;
        v72.x = v9;
        v72.y = v11;
        v21 = CGRectContainsPoint(*(v17 - 24), v72);
        v17 = v20;
        if (v21)
        {
          sub_10003CC4C(v15, v14);

          v22 = 1;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    [v7 bounds];
    v73.x = v9;
    v73.y = v11;
    v22 = CGRectContainsPoint(v74, v73);
LABEL_20:
    Gliss.Coordinator.gestureConfiguration.getter(v60);
    v33 = v61;
    v32 = v62;
    v34 = v60[0];
    sub_10002F518(v61, v62);

    sub_10003CC4C(v60[1], v60[2]);
    sub_10003CC4C(v33, v32);
    sub_10003CC4C(v63, v64);
    if (v33)
    {
      v35 = v33(v7, v9, v11);
      sub_10003CC4C(v33, v32);
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v35 = 1;
      if (v22)
      {
LABEL_22:
        if (v35)
        {
LABEL_23:

LABEL_37:
          return v22 & v35;
        }

LABEL_32:
        if (qword_1005FFF88 != -1)
        {
          swift_once();
        }

        v50 = sub_1004B80B4();
        sub_100007084(v50, qword_1006174A8);
        v51 = sub_1004B8094();
        v52 = sub_1004BC9A4();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v58 = v54;
          *v53 = 136446210;
          type metadata accessor for CGPoint(0);
          v55 = sub_1004BBF04();
          v57 = sub_100012018(v55, v56, &v58);

          *(v53 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v51, v52, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v53, 0xCu);
          sub_100004C6C(v54);
        }

        goto LABEL_37;
      }
    }

    if (qword_1005FFF88 != -1)
    {
      swift_once();
    }

    v36 = sub_1004B80B4();
    sub_100007084(v36, qword_1006174A8);
    v37 = v3;
    v38 = sub_1004B8094();
    v39 = sub_1004BC9A4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v40 = 136446466;
      v65 = v9;
      v66 = v11;
      type metadata accessor for CGPoint(0);
      v41 = sub_1004BBF04();
      v43 = sub_100012018(v41, v42, &v58);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v65);
      v45 = v66;
      v44 = v67;

      sub_10003CC4C(v68, v69);
      sub_10003CC4C(v70, v71);
      if (v45 != 0.0)
      {
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        *(v46 + 24) = v44;
      }

      sub_100003ABC(&qword_100604498, &qword_1004CF7F0);
      v47 = sub_1004BBF04();
      v49 = sub_100012018(v47, v48, &v58);

      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "🤏🙂‍↔️ Swipe Gesture ignored: outside allowed areas %{public}s, %{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    if (v35)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (qword_1005FFF88 != -1)
  {
LABEL_39:
    swift_once();
  }

  v24 = sub_1004B80B4();
  sub_100007084(v24, qword_1006174A8);
  v25 = sub_1004B8094();
  v26 = sub_1004BC9A4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v60[0] = v28;
    *v27 = 136446210;
    v65 = v9;
    v66 = v11;
    type metadata accessor for CGPoint(0);
    v29 = sub_1004BBF04();
    v31 = sub_100012018(v29, v30, v60);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v27, 0xCu);
    sub_100004C6C(v28);
  }

  return 0;
}

uint64_t sub_10013F460(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t sub_10013F4B8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_10013FFCC(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Gliss.Coordinator(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10013F604(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);

  sub_10003CC4C(v3, v4);
  sub_10003CC4C(v5, v6);
  sub_10003CC4C(v7, v8);

  v9 = *((swift_isaMask & *a1) + 0x78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v9], AssociatedTypeWitness);
  v11 = *((swift_isaMask & *a1) + 0x80);
  v12 = sub_1004BD174();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  v13 = *&a1[*((swift_isaMask & *a1) + 0xB0)];
}

void sub_10013F8E0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_10013F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = swift_isaMask;
  swift_unknownObjectWeakInit();
  v9 = *((swift_isaMask & *v4) + 0x70);
  *&v4[v9] = _swiftEmptyArrayStorage;
  v10 = *((swift_isaMask & *v4) + 0x80);
  v30 = *((v8 & v7) + 0x58);
  v29 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  (*(v12 + 56))(&v4[v10], 1, 1, AssociatedTypeWitness);
  *&v4[*((swift_isaMask & *v4) + 0x88)] = 0;
  v13 = *((swift_isaMask & *v4) + 0x90);
  *&v4[v13] = sub_10003D7D4(_swiftEmptyArrayStorage);
  *&v4[*((swift_isaMask & *v4) + 0x98)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA0)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xA8)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0xB0)] = 0;
  (*(v12 + 16))(&v4[*((swift_isaMask & *v4) + 0x78)], a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *(a3 + 32);
  v28 = *(a3 + 40);
  v19 = *(a3 + 48);
  v20 = &v4[*((swift_isaMask & *v4) + 0x68)];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 1) = v21;
  *(v20 + 2) = *(a3 + 32);
  *(v20 + 6) = v19;
  swift_beginAccess();
  *&v4[v9] = a4;
  v22 = v14;
  sub_10002F518(v15, v16);
  sub_10002F518(v17, v18);
  sub_10002F518(v28, v19);

  v33 = v29;
  v34 = v30;
  v35 = a1;
  sub_100135C2C(sub_100140B10, v32, a4);

  v24 = type metadata accessor for Gliss.Coordinator(0, v29, v30, v23);
  v36.receiver = v4;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, "init");
  sub_10013BEC4();

  return v25;
}

uint64_t sub_10013FCDC()
{

  return swift_deallocObject();
}

void sub_10013FD1C(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    sub_10013FD30(result, a2, a3);
  }
}

void sub_10013FD30(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id sub_10013FD44(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_10013FD58(result, a2, a3);
  }

  return result;
}

id sub_10013FD58(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_10013FD6C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  v7 = *(v0 + v6 + 16);
  if (v7 <= 0xFD)
  {
    sub_10013FD30(*(v0 + v6), *(v0 + v6 + 8), v7);
  }

  return swift_deallocObject();
}

void sub_10013FE3C(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_100137BCC(a1, a2, (v2 + v4), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_10013FED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10013FF04()
{
  v1 = *((swift_isaMask & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10013FF64(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_100138488(v3);
}

uint64_t sub_10013FFCC(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v19);

  sub_10003CC4C(v19[1], v19[2]);
  sub_10003CC4C(v19[3], v19[4]);
  v2 = v20;
  if (!v20)
  {
    return 1;
  }

  v3 = v21;
  v4 = v20(a1);
  sub_10003CC4C(v2, v3);
  if (v4)
  {
    return 1;
  }

  if (qword_1005FFF88 != -1)
  {
    swift_once();
  }

  v6 = sub_1004B80B4();
  sub_100007084(v6, qword_1006174A8);
  v7 = a1;
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_1004BBE64();
    v16 = v15;

    v17 = sub_100012018(v14, v16, &v18);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v10, 0xCu);
    sub_100004C6C(v11);
  }

  return 0;
}

uint64_t sub_1001401F4(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1004BD174();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100140310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10014034C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100140394(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1001403F8()
{

  return swift_deallocObject();
}

void sub_100140430()
{
  v0 = sub_100138AA0();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_10014048C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1001405C8(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1000136EC;

  return sub_10013E41C(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t sub_10014076C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100604608, &unk_1004CF950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001407DC()
{
  result = qword_100601B40;
  if (!qword_100601B40)
  {
    sub_1004B6D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601B40);
  }

  return result;
}

uint64_t sub_10014084C(void *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  return sub_100135920(v3, v2, ObjectType, *(v4 + 80), v5);
}

uint64_t sub_100140920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014093C()
{

  return swift_deallocObject();
}

uint64_t sub_1001409C0()
{

  return swift_deallocObject();
}

uint64_t sub_100140A40(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

uint64_t sub_100140AA8(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

uint64_t sub_100140BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  sub_10014104C(a1, a2, v7, a4, a5);
  return v10;
}

id sub_100140C5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v38 = *&a3;
  v9 = *(*a1 + 80);
  v10 = *(sub_1004BD174() - 8);
  __chkstk_darwin();
  v13 = &v38 - v12;
  if ((a5 >> 6) > 1u)
  {
    if (a5 >> 6 == 2)
    {
      v18 = v38;

      return *&v18;
    }

    else
    {
      v23 = v11;
      if (UIAccessibilityIsReduceMotionEnabled() || (v24 = *(*a1 + 120), swift_beginAccess(), *(a1 + v24) == 2))
      {
        v25 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
        v26 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v26 initWithDuration:v25 timingParameters:{0.25, *&v38}];
      }

      else
      {
        v28 = a1 + *(*a1 + 168);
        swift_beginAccess();
        if (*(v28 + 32) == 2)
        {
          [a2 bounds];
          v29 = CGRectGetWidth(v40) * 0.5;
        }

        else
        {
          v29 = *(v28 + 16);
        }

        v30 = fabs(v29);
        [a2 bounds];
        Width = CGRectGetWidth(v41);
        v32 = fabs(*v28);
        if (*(v28 + 32) == 2)
        {
          v32 = 0.0;
        }

        v33 = v30 / (Width - v32);
        v34 = *(*a1 + 112);
        swift_beginAccess();
        (*(v10 + 16))(v13, a1 + v34, v23);
        if ((*(*(v9 - 8) + 48))(v13, 1, v9) == 1)
        {
          v35 = 0.5;
        }

        else
        {
          v35 = 0.8;
        }

        (*(v10 + 8))(v13, v23);
        v25 = [objc_allocWithZone(UISpringTimingParameters) initWithDampingRatio:v35 initialVelocity:{v33, 0.0}];
        v36 = objc_allocWithZone(UIViewPropertyAnimator);
        v27 = [v36 initWithDuration:v25 timingParameters:{0.0, *&v38}];
      }

      v37 = v27;

      return v37;
    }
  }

  else
  {
    if (a5 >> 6)
    {
      if (a5)
      {
        v20 = 0.25;
      }

      else
      {
        v20 = *&a4;
      }

      v15 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:v20 bounce:v38];
      v21 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v21 initWithDuration:v15 timingParameters:{0.0, *&v38}];
    }

    else
    {
      v14 = v38;
      v15 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
      v16 = objc_allocWithZone(UIViewPropertyAnimator);
      v17 = [v16 initWithDuration:v15 timingParameters:{v14, *&v38}];
    }

    v22 = v17;

    return v22;
  }
}

uint64_t Gliss.Direction.init(_:)(double a1)
{
  if (a1 > 0.0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 0.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10014104C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v9 = *v5;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v10 = *(*v5 + 112);
  v11 = *(v9 + 80);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 128)) = 0;
  v13 = v5 + *(*v5 + 136);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = -64;
  v14 = *(*v5 + 144);
  type metadata accessor for Gliss.Transition(255, v11, *(v9 + 88), v15);
  swift_getFunctionTypeMetadata1();
  *(v5 + v14) = sub_1004BC304();
  v16 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v16) = sub_1004BC304();
  v17 = v5 + *(*v5 + 168);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v18 = sub_1004BD174();
  (*(*(v18 - 8) + 40))(v5 + v10, a2, v18);
  swift_endAccess();
  v19 = v5 + *(*v5 + 120);
  *v19 = a3;
  *(v19 + 8) = a5;
  *(v5 + *(*v5 + 160)) = a4;
  return v5;
}

uint64_t Gliss.Transition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for Gliss.Transition.id;
  v4 = sub_1004B6D14();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10014138C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_100141424(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, v7);
  v10 = *a2;
  v11 = *(*v10 + 104);
  swift_beginAccess();
  (*(v6 + 40))(v10 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t Gliss.Transition.from.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1001415DC@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(**a1 + 112);
  swift_beginAccess();
  v7 = sub_1004BD174();
  return (*(*(v7 - 8) + 16))(a4, v5 + v6, v7);
}

uint64_t sub_100141680(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1004BD174();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = *a2;
  v12 = *(*v11 + 112);
  swift_beginAccess();
  (*(v7 + 40))(v11 + v12, v10, v6);
  return swift_endAccess();
}

uint64_t Gliss.Transition.to.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_1004BD174();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Gliss.Transition.progression.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  return *v1;
}

uint64_t Gliss.Transition.state.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001418FC(char a1)
{
  v3 = *(*v1 + 128);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL Gliss.Transition.isEnding.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 3;
}

BOOL Gliss.Transition.isCancelling.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) == 4;
}

BOOL Gliss.Transition.hasEnded.getter()
{
  v1 = *(*v0 + 128);
  swift_beginAccess();
  return *(v0 + v1) > 4u;
}

BOOL Gliss.Transition.isGestureBased.getter()
{
  v1 = v0 + *(*v0 + 168);
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

uint64_t Gliss.Transition.addAlongsideAnimation(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata1();
  sub_1004BC3B4();

  sub_1004BC364();
  return swift_endAccess();
}

uint64_t Gliss.Transition.addCompletion(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v7 = *(v5 + 80);
  v6[2] = v7;
  v8 = *(v5 + 88);
  v6[3] = v8;
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  type metadata accessor for Gliss.Transition(255, v7, v8, v9);
  swift_getFunctionTypeMetadata2();
  sub_1004BC3B4();

  sub_1004BC364();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = *(v4 + *(*v4 + 160));
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_1000348A4(a1);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    memset(v13, 0, sizeof(v13));
    goto LABEL_6;
  }

  sub_100004DE4(*(v6 + 56) + 32 * v8, v13);

LABEL_6:
  sub_100003ABC(&qword_100605110, &unk_1004CD280);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v11 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 sub_100141E34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_100141E9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + *(**a2 + 168);
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 Gliss.Transition.gestureState.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t Gliss.Transition.description.getter()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = sub_1004BD174();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - v5;
  v7 = *(v2 - 8);
  __chkstk_darwin();
  v17 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v17 - v9;
  strcpy(v22, "Transition(\n");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  v21._countAndFlagsBits = 0x3A646920202020;
  v21._object = 0xE700000000000000;
  v23._countAndFlagsBits = sub_1004B6CE4();
  sub_1004BC024(v23);

  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  sub_1004BC024(v24);
  sub_1004BC024(v21);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0x6D6F726620202020;
  v25._object = 0xEA0000000000203ALL;
  sub_1004BC024(v25);
  v11 = *(*v0 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v2);
  sub_1004BD964();
  v12 = *(v7 + 8);
  v12(v10, v2);
  v26._countAndFlagsBits = 10;
  v26._object = 0xE100000000000000;
  sub_1004BC024(v26);
  sub_1004BC024(v20);

  v13 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v13, v3);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v27._object = 0xED00000A656E6F6ELL;
    v27._countAndFlagsBits = 0x203A6F7420202020;
    sub_1004BC024(v27);
  }

  else
  {
    v14 = v17;
    (*(v7 + 32))(v17, v6, v2);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0x203A6F7420202020;
    v28._object = 0xE800000000000000;
    sub_1004BC024(v28);
    sub_1004BD964();
    v29._countAndFlagsBits = 10;
    v29._object = 0xE100000000000000;
    sub_1004BC024(v29);
    sub_1004BC024(v18);

    v12(v14, v2);
  }

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_1004BD404(19);

  v19._countAndFlagsBits = 0xD000000000000010;
  v19._object = 0x8000000100501960;
  v15 = v1 + *(*v1 + 120);
  swift_beginAccess();
  v30._countAndFlagsBits = Gliss.Progression.description.getter(*v15, *(v15 + 8));
  sub_1004BC024(v30);

  v31._countAndFlagsBits = 10;
  v31._object = 0xE100000000000000;
  sub_1004BC024(v31);
  sub_1004BC024(v19);

  v32._countAndFlagsBits = 10528;
  v32._object = 0xE200000000000000;
  sub_1004BC024(v32);
  return v22[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = sub_1004B6D14();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = sub_1004BD174();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_10013FD30(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100142648@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = sub_1004B6D14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1001426FC()
{

  return swift_deallocObject();
}

unint64_t Gliss.Progression.description.getter(char a1, double a2)
{
  sub_100003ABC(&qword_100604488, &qword_1004CF7E8);
  v3._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  sub_1004BC024(v4);
  v5._countAndFlagsBits = 0x6F69746365726964;
  v5._object = 0xEA00000000003D6ELL;
  sub_1004BC024(v5);

  v6._countAndFlagsBits = sub_1004BC5C4();
  sub_1004BC024(v6);

  v7._countAndFlagsBits = 0x3D65756C6176;
  v7._object = 0xE600000000000000;
  sub_1004BC024(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  sub_1004BC024(v8);
  return 0xD000000000000014;
}

unint64_t sub_100142978()
{
  result = qword_100601B38;
  if (!qword_100601B38)
  {
    sub_1004B6D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601B38);
  }

  return result;
}

unint64_t sub_1001429D4()
{
  result = qword_100604620;
  if (!qword_100604620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604620);
  }

  return result;
}

unint64_t sub_100142A2C()
{
  result = qword_100604628[0];
  if (!qword_100604628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100604628);
  }

  return result;
}

__n128 sub_100142A94(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_100142AB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 120);
  swift_beginAccess();
  result = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100142B1C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2 + *(**a2 + 120);
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_100142B94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100142C40(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100142C5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100142CB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100142D14(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_100142D50(uint64_t a1)
{
  result = sub_1004B6D14();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1004BD174();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t _s11ProgressionVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t _s11ProgressionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 sub_100142F58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100142F6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100142FC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t EnvironmentVariable.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xD000000000000013;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 environment];

  v7 = sub_1004BBC44();
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a3 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "FEATUREFLAGS_ENABLED";
    }
  }

  else
  {
    v8 = "MUSIC_TOOLTIP_DEBUG_ALL";
  }

  if (*(v7 + 16))
  {
    v9 = sub_1000346D4(v4, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v7 + 56) + 16 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

uint64_t EnvironmentVariable.isEnabled.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = EnvironmentVariable.value.getter(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  if (a3 <= 1u)
  {
    sub_10000E7F4();
    v6 = sub_1004BD264();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (sub_1004BD9C4() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (sub_1004BD9C4() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = sub_1004BD9C4();

  return v10 & 1;
}

uint64_t sub_1001432EC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100143308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100143350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100143394(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1001433C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1006046B0);
  sub_100007084(v2, qword_1006046B0);
  return sub_1004B80A4();
}

uint64_t static StagedInstall.current()(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B6B04();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v47 - v6;
  __chkstk_darwin();
  v9 = &v47 - v8;
  if (qword_1006006D8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (qword_1005FFF90 != -1)
  {
    swift_once();
  }

  v10 = sub_1004B80B4();
  sub_100007084(v10, qword_1006046B0);
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Checking for a staged install of Music", v13, 2u);
  }

  sub_1004B6A14();
  v14 = [objc_opt_self() defaultManager];
  sub_1004B6AA4();
  v15 = sub_1004BBE24();

  v16 = [v14 fileExistsAtPath:v15];

  v17 = sub_1004B8094();
  if (v16)
  {
    v18 = sub_1004BC984();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Found Music.app in staged_system_apps", v19, 2u);
    }

    v20 = sub_1004B6B24();
    v25 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v25 != 2 || *(v20 + 16) == *(v20 + 24))
      {
LABEL_23:
        sub_100004D90(v20, v21);
        v17 = sub_1004B8094();
        v22 = sub_1004BC984();
        if (os_log_type_enabled(v17, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v25)
    {
      if (v20 == v20 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v21 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v26 = v20;
    v49 = v21;
    v27 = [objc_opt_self() mainBundle];
    v28 = [v27 executableURL];

    if (!v28)
    {
LABEL_39:
      v38 = sub_1004B8094();
      v39 = sub_1004BC984();
      if (os_log_type_enabled(v38, v39))
      {
        v31 = 2;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unable to read data of running executable", v40, 2u);

        sub_100004D90(v26, v49);
        (*(v3 + 8))(v9, v2);
        return v31;
      }

      sub_100004D90(v26, v49);

      goto LABEL_27;
    }

    sub_1004B6A94();

    (*(v3 + 32))(v7, v5, v2);
    v29 = sub_1004B6B24();
    v33 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_38;
      }

      v34 = *(v29 + 16);
      v35 = *(v29 + 24);
    }

    else
    {
      if (!v33)
      {
        if ((v30 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v47 = v29;
        v48 = v30;
        v41 = sub_100143FEC(v29, v30, v26, v49);
        v42 = sub_1004B8094();
        if (v41)
        {
          v43 = sub_1004BC9A4();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);
          }
        }

        else
        {
          v43 = sub_1004BC984();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        sub_100004D90(v47, v48);
        sub_100004D90(v26, v49);
        v46 = *(v3 + 8);
        v46(v7, v2);
        v46(v9, v2);
        return v41;
      }

      v34 = v29;
      v35 = v29 >> 32;
    }

    if (v34 != v35)
    {
      goto LABEL_42;
    }

LABEL_38:
    v36 = v29;
    v37 = v30;
    (*(v3 + 8))(v7, v2);
    sub_100004D90(v36, v37);
    goto LABEL_39;
  }

  v22 = sub_1004BC9A4();
  if (!os_log_type_enabled(v17, v22))
  {
LABEL_26:

LABEL_27:
    (*(v3 + 8))(v9, v2);
    return 2;
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v17, v22, v24, v23, 2u);

  (*(v3 + 8))(v9, v2);
  return 2;
}

uint64_t sub_100143B74@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1004B6724();
    if (v10)
    {
      v11 = sub_1004B6754();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1004B6744();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1004B6724();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1004B6754();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1004B6744();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100143DA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100143F34(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100004D90(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100143B74(v13, a3, a4, &v12);
  v10 = v4;
  sub_100004D90(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100143F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1004B6724();
  v11 = result;
  if (result)
  {
    result = sub_1004B6754();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1004B6744();
  sub_100143B74(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100143FEC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10003E428(a3, a4);
          return sub_100143DA4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for StagedInstall(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100144204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int64_t a9@<X8>, unsigned __int8 a10)
{
  v122 = a8;
  v117 = a7;
  v135 = a6;
  v121 = a4;
  v120 = a3;
  v119 = a2;
  v118 = a1;
  LODWORD(v12) = a10;
  v132 = sub_1004B69F4();
  v13 = *(v132 - 8);
  __chkstk_darwin();
  v131 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v133 = &v107 - v15;
  v16 = sub_1004B6B04();
  v140 = *(v16 - 8);
  v141 = v16;
  __chkstk_darwin();
  v138 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v107 - v18;
  __chkstk_darwin();
  v136 = &v107 - v19;
  __chkstk_darwin();
  v112 = &v107 - v20;
  sub_100003ABC(&qword_100603C28, &qword_1004CE2A8);
  __chkstk_darwin();
  v22 = &v107 - v21;
  v23 = sub_1004B66F4();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006006D8 != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1004B66D4();
    result = (*(v24 + 48))(v22, 1, v23);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v24 + 32))(v26, v22, v23);
      if (a5 >> 62)
      {
        v22 = sub_1004BD6A4();
      }

      else
      {
        v22 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v111 = a9;
      v110 = v12;
      v109 = v23;
      v108 = v24;
      v107 = v26;
      if (v22 || *(v135 + 16))
      {
        v28 = [objc_opt_self() defaultManager];
        if (qword_1005FFF98 != -1)
        {
          swift_once();
        }

        v29 = sub_100007084(v141, static URL.tapToRadarDirectory);
        NSFileManager.createDirectoryIfNeeded(at:)(v29);
        v137 = 0;
      }

      else
      {
        v137 = 0;
      }

      a9 = 0;
      v12 = a5 & 0xC000000000000001;
      v23 = a5 & 0xFFFFFFFFFFFFFF8;
      v130 = _swiftEmptyArrayStorage;
      while (v22 != a9)
      {
        if (v12)
        {
          v30 = sub_1004BD484();
        }

        else
        {
          if (a9 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v30 = *(a5 + 8 * a9 + 32);
        }

        v24 = v30;
        v31 = a9 + 1;
        if (__OFADD__(a9, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v26 = sub_10014586C(a9, v30);
        v33 = v32;

        ++a9;
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_100017CC8(0, *(v130 + 2) + 1, 1, v130);
          }

          v24 = *(v130 + 2);
          v34 = *(v130 + 3);
          if (v24 >= v34 >> 1)
          {
            v130 = sub_100017CC8((v34 > 1), v24 + 1, 1, v130);
          }

          v35 = v130;
          *(v130 + 2) = v24 + 1;
          v36 = &v35[16 * v24];
          *(v36 + 4) = v26;
          *(v36 + 5) = v33;
          a9 = v31;
        }
      }

      a5 = v135 + 64;
      v39 = 1 << *(v135 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v22 = v40 & *(v135 + 64);
      a9 = (v39 + 63) >> 6;
      v128 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v126 = (v13 + 8);
      v127 = (v13 + 104);
      v139 = (v140 + 8);
      v125 = (v140 + 56);
      v116 = (v140 + 32);
      v124 = (v140 + 48);

      v41 = 0;
      *&v42 = 136446210;
      v113 = v42;
      v115 = _swiftEmptyArrayStorage;
      v43 = v141;
      v44 = &off_1005FF000;
      v12 = v137;
      v129 = a9;
      v123 = a5;
      while (v22)
      {
        v13 = v41;
LABEL_35:
        v137 = v12;
        v45 = (v13 << 10) | (16 * __clz(__rbit64(v22)));
        v46 = (*(v135 + 48) + v45);
        v48 = *v46;
        v47 = v46[1];
        v49 = (*(v135 + 56) + v45);
        v23 = *v49;
        v50 = v49[1];

        sub_10003E428(v23, v50);
        if (v44[499] != -1)
        {
          swift_once();
        }

        sub_100007084(v43, static URL.tapToRadarDirectory);
        v143[0] = 47;
        v143[1] = 0xE100000000000000;
        v145._countAndFlagsBits = v48;
        v134 = v47;
        v145._object = v47;
        sub_1004BC024(v145);
        v52 = v131;
        v51 = v132;
        (*v127)(v131, v128, v132);
        sub_10000E7F4();
        v53 = v136;
        sub_1004B6AF4();
        (*v126)(v52, v51);

        v12 = v137;
        sub_1004B6B84();
        v24 = v50;
        if (v12)
        {
          v54 = v141;
          if (qword_1005FFFA0 != -1)
          {
            swift_once();
          }

          v55 = sub_1004B80B4();
          sub_100007084(v55, qword_1006046C8);
          swift_errorRetain();
          v56 = sub_1004B8094();
          v57 = sub_1004BC984();

          v44 = &off_1005FF000;
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v137 = v23;
            v59 = v24;
            v60 = v58;
            v61 = swift_slowAlloc();
            v142 = v12;
            v143[0] = v61;
            *v60 = v113;
            swift_errorRetain();
            sub_100003ABC(&qword_100604C30, &qword_1004C8490);
            v62 = sub_1004BBF04();
            v64 = sub_100012018(v62, v63, v143);

            *(v60 + 4) = v64;
            _os_log_impl(&_mh_execute_header, v56, v57, "Tap-to-Radar Attachment file write failed with error: %{public}s", v60, 0xCu);
            sub_100004C6C(v61);
            v43 = v141;

            v24 = v59;
            v23 = v137;

            v44 = &off_1005FF000;

            (*v139)(v136, v43);
          }

          else
          {

            v43 = v54;
            (*v139)(v136, v54);
          }

          v12 = 0;
          v66 = 1;
          v65 = v133;
        }

        else
        {
          v65 = v133;
          v43 = v141;
          (*v116)(v133, v53, v141);
          v66 = 0;
          v44 = &off_1005FF000;
        }

        v26 = v134;
        v22 &= v22 - 1;
        (*v125)(v65, v66, 1, v43);

        sub_100004D90(v23, v24);
        v67 = (*v124)(v65, 1, v43);
        a5 = v123;
        if (v67 == 1)
        {
          sub_10000F7E0(v65);
          v41 = v13;
          a9 = v129;
        }

        else
        {
          v26 = 0;
          v68 = *v116;
          v24 = v112;
          (*v116)(v112, v65, v43);
          v68(v114, v24, v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_100018520(0, *(v115 + 2) + 1, 1, v115);
          }

          v23 = *(v115 + 2);
          v69 = *(v115 + 3);
          if (v23 >= v69 >> 1)
          {
            v115 = sub_100018520((v69 > 1), v23 + 1, 1, v115);
          }

          v70 = v115;
          *(v115 + 2) = v23 + 1;
          v43 = v141;
          v68(&v70[((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v23], v114, v141);
          v41 = v13;
          v12 = 0;
          a9 = v129;
        }
      }

      while (1)
      {
        v13 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_69;
        }

        if (v13 >= a9)
        {
          break;
        }

        v22 = *(a5 + 8 * v13);
        ++v41;
        if (v22)
        {
          goto LABEL_35;
        }
      }

      v143[0] = v115;

      sub_100022FA8(v71);
      v72 = v143[0];
      v73 = *(v143[0] + 16);
      if (v73)
      {
        v143[0] = _swiftEmptyArrayStorage;
        sub_100015080(0, v73, 0);
        v74 = *(v140 + 16);
        v75 = v143[0];
        v76 = (*(v140 + 80) + 32) & ~*(v140 + 80);
        v137 = v72;
        v77 = v72 + v76;
        v140 += 16;
        v78 = *(v140 + 56);
        do
        {
          v79 = v138;
          v80 = v141;
          v74(v138, v77, v141);
          v81 = sub_1004B6AA4();
          v83 = v82;
          (*v139)(v79, v80);
          v143[0] = v75;
          v85 = *(v75 + 2);
          v84 = *(v75 + 3);
          if (v85 >= v84 >> 1)
          {
            sub_100015080((v84 > 1), v85 + 1, 1);
            v75 = v143[0];
          }

          *(v75 + 2) = v85 + 1;
          v86 = &v75[16 * v85];
          *(v86 + 4) = v81;
          *(v86 + 5) = v83;
          v77 += v78;
          --v73;
        }

        while (v73);
      }

      else
      {

        v75 = _swiftEmptyArrayStorage;
      }

      sub_100003ABC(&qword_100601328, &qword_1004D98B0);
      v87 = *(sub_1004B6634() - 8);
      v88 = *(v87 + 72);
      v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1004C5180;
      sub_1004B6604();
      sub_1004B6604();
      sub_1004B6604();
      sub_1004B6604();
      sub_1004B6604();
      v91 = [objc_opt_self() mainBundle];
      v92 = [v91 bundleIdentifier];

      v93 = v122;
      if (v92)
      {
        sub_1004BBE64();
      }

      sub_1004B6604();

      v143[0] = v130;
      v94 = sub_100003ABC(&unk_100603590, &unk_1004C8150);
      v95 = sub_100030FE4();
      sub_1004BBD34();
      sub_1004B6604();

      v143[0] = v75;
      v140 = v95;
      v141 = v94;
      sub_1004BBD34();
      sub_1004B6604();

      v96 = *(v93 + 16);
      v97 = _swiftEmptyArrayStorage;
      if (v96)
      {
        v137 = v90 + v89;
        v138 = v88;
        v139 = v90;
        v143[0] = _swiftEmptyArrayStorage;
        sub_100015080(0, v96, 0);
        v97 = v143[0];
        v98 = (v93 + 32);
        do
        {
          v99 = *v98++;
          v142 = qword_1004CFE00[v99];
          v100 = sub_1004BD934();
          v102 = v101;
          v143[0] = v97;
          v104 = v97[2];
          v103 = v97[3];
          if (v104 >= v103 >> 1)
          {
            sub_100015080((v103 > 1), v104 + 1, 1);
            v97 = v143[0];
          }

          v97[2] = v104 + 1;
          v105 = &v97[2 * v104];
          v105[4] = v100;
          v105[5] = v102;
          --v96;
        }

        while (v96);
      }

      v143[0] = v97;
      sub_1004BBD34();

      sub_1004B6604();

      v143[0] = v130;
      sub_100022EB4(v75);

      sub_1004B6604();

      sub_1004B6604();

      v106 = v107;
      sub_1004B6654();
      sub_1004B6674();
      return (*(v108 + 8))(v106, v109);
    }
  }

  else
  {
    v37 = v141;
    v38 = *(v140 + 56);

    return v38(a9, 1, 1, v37);
  }

  return result;
}

uint64_t sub_1001453E0()
{
  v0 = sub_1004B69F4();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v5 = &v8 - v4;
  v6 = sub_1004B6B04();
  sub_100007108(v6, static URL.tapToRadarDirectory);
  sub_100007084(v6, static URL.tapToRadarDirectory);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return sub_1004B6AD4();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFF98 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B6B04();

  return sub_100007084(v2, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1005FFF98 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B6B04();
  v4 = sub_100007084(v3, static URL.tapToRadarDirectory);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

uint64_t sub_1001456AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1006046C8);
  sub_100007084(v2, qword_1006046C8);
  return sub_1004B80A4();
}

Swift::Int sub_100145754()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(qword_1004CFE00[v1]);
  return sub_1004BDBF4();
}

Swift::Int sub_1001457DC()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(qword_1004CFE00[v1]);
  return sub_1004BDBF4();
}

uint64_t sub_100145828@<X0>(Swift::Int *a1@<X0>, MusicCore::TTR::Keyword_optional *a2@<X8>)
{
  result = _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_10014586C(uint64_t a1, UIImage *a2)
{
  v4 = sub_1004B69F4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B6B04();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFF98 != -1)
  {
    swift_once();
  }

  sub_100007084(v8, static URL.tapToRadarDirectory);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1004BD404(24);

  v20 = 0xD000000000000012;
  v21 = 0x8000000100501B00;
  v19[1] = a1;
  v22._countAndFlagsBits = sub_1004BD934();
  sub_1004BC024(v22);

  v23._countAndFlagsBits = 1735420462;
  v23._object = 0xE400000000000000;
  sub_1004BC024(v23);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10000E7F4();
  sub_1004B6AF4();
  (*(v5 + 8))(v7, v4);

  v12 = UIImageJPEGRepresentation(a2, 85.0);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1004B6B74();
    v16 = v15;

    sub_1004B6B84();
    sub_100004D90(v14, v16);
  }

  v17 = sub_1004B6AA4();
  (*(v9 + 8))(v11, v8);
  return v17;
}

uint64_t _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if (a1 > 1723675)
  {
    if (a1 != 1947834)
    {
      if (a1 == 1723676)
      {
        return 2;
      }

      return 4;
    }

    return 3;
  }

  else
  {
    if (a1 != 1723672)
    {
      if (a1 == 1723674)
      {
        return 1;
      }

      return 4;
    }

    return 0;
  }
}

unint64_t sub_100145D5C()
{
  result = qword_1006046E0;
  if (!qword_1006046E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006046E0);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_1004BC474();
  *(v3 + 40) = sub_1004BC464();
  v5 = sub_1004BC3E4();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_100145E70, v5, v4);
}

uint64_t sub_100145E70(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = sub_1004BC464();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_100145F8C;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004FC910, sub_100052470, v6, &type metadata for Bool);
}

uint64_t sub_100145F8C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1001501D0, v3, v2);
}

void sub_1001460EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100146158(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_100601C18, &qword_1004C95D0);
    v2 = sub_1004BD6F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100004DE4(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10003E13C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10003E13C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10003E13C(v31, v32);
    v16 = sub_1004BD384(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_10003E13C(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100146420(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003ABC(&qword_100601C18, &qword_1004C95D0);
    v2 = sub_1004BD6F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10003E13C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10003E13C(v29, v30);
    v14 = sub_1004BD384(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_10003E13C(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

__int128 *CloudLibrary.EnablementContext.action.unsafeMutableAddressor()
{
  if (qword_1005FFFA8 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 > 6u)
  {
    sub_1004BBDA4();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1005FFD30 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = (v3 + 16);
  if (a1 > 6u)
  {
    sub_1004BBDA4();
    (*v8)(v5, v7, v2);
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1004BBDA4();
  (*v8)(v5, v7, v2);
  if (qword_1005FFD30 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v9 = qword_100617118;
  sub_1004B6DF4();
  v10 = sub_1004BBED4();
  (*(v3 + 8))(v7, v2);
  return v10;
}

Swift::Int sub_100146E80()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(~v1);
  return sub_1004BDBF4();
}

Swift::Int sub_100146EF8()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(~v1);
  return sub_1004BDBF4();
}

uint64_t sub_100146F3C@<X0>(Swift::Int *a1@<X0>, MusicCore::CloudLibrary::FailureType_optional *a2@<X8>)
{
  result = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }

  v2 = static CloudLibrary.StatusObserver.shared;
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = v4;
  v5 = sub_100003ABC(&qword_100604708, &qword_1004CFE28);
  UserDefault.wrappedValue.getter(v5, &v7);
  if (v7 != 2 && (v7 & 1) != 0)
  {
LABEL_8:
    LOBYTE(a1) = 0;
    return a1 & 1;
  }

  if (a1 >> 30 != 1)
  {
    if (a1 >> 30 != 2 || (a1 - 0x80000000) >= 3)
    {
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    goto LABEL_8;
  }

  return a1 & 1;
}

BOOL CloudLibrary.Status.shouldShowActionButton.getter(unint64_t a1)
{
  v1 = a1 >> 1 == 1073741825;
  if (a1 >> 30 != 2)
  {
    v1 = 0;
  }

  return !(a1 >> 30) || v1;
}

void (*CloudLibrary.Status.action.getter(unint64_t a1))()
{
  v1 = sub_100147118;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = sub_100147118;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void sub_100147118()
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
}

unint64_t CloudLibrary.Status.progress.getter(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if ((a1 & 0xC0000000) != 0x40000000)
  {
    v1 = 0;
  }

  return v1 | (((a1 & 0xC0000000) != 0x40000000) << 32);
}

uint64_t sub_1001471EC()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v0 = sub_1004BBE14();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v11[-v4];
  sub_1004BBDA4();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v6 = qword_100617118;
  sub_1004B6DF4();
  v7 = sub_1004BBED4();
  v9 = v8;
  result = (*(v1 + 8))(v5, v0);
  *&static CloudLibrary.EnablementContext.action = v7;
  *(&static CloudLibrary.EnablementContext.action + 1) = v9;
  return result;
}

uint64_t static CloudLibrary.EnablementContext.action.getter()
{
  if (qword_1005FFFA8 != -1)
  {
    swift_once();
  }

  v0 = static CloudLibrary.EnablementContext.action;

  return v0;
}

uint64_t sub_100147438()
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = sub_1001474D4();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

uint64_t static CloudLibrary.StatusObserver.shared.getter()
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001474D4()
{
  v1 = v0;
  v2 = sub_100003ABC(&unk_100604728, &qword_1004CFE88);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v33[-v4];
  v35 = 2;
  v34[0] = 0xD000000000000014;
  v34[1] = 0x80000001004FC250;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_10000E7F4();
  UserDefault.init(wrappedValue:defaults:key:)(&v35, v6, v34, &type metadata for String, &type metadata for Bool, v7, &v36);
  v8 = v37;
  v9 = v38;
  *(v1 + 16) = v36;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = _swiftEmptyArrayStorage;
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v10 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v36 = 0x80000000;

  sub_1004B8564();
  (*(v3 + 32))(v1 + v10, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  sub_100003ABC(&unk_1006035A0, &unk_1004CDAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5070;
  if (qword_1005FFE70 != -1)
  {
    swift_once();
  }

  v12 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v13.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v13.length = *(v1 + 56);
  v14 = CFRange.init(_:)(v13);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v14;
  v15 = qword_1005FFE90;
  v16 = v12;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v18.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v18.length = *(v1 + 56);
  v19 = CFRange.init(_:)(v18);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v19;
  v20 = MPCloudControllerCloudLibraryFailureDidChangeNotification;
  v21 = CFRange.init(_:)(MPCloudControllerCloudLibraryFailureDidChangeNotification);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding(0, v23);
  swift_allocObject();
  v24 = v17;

  v25 = v20;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_10014FF48, v22);

  swift_beginAccess();
  sub_1004BC274();
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();
  v26 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 sharedCloudController];
  v30 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver(0, v31);
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v28, v29, 1, 1, sub_10014FF50, v30);

  return v1;
}

void sub_1001479D8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v24[4] = v20;
    v24[5] = v21;
    v25 = v22;
    v26 = v23;
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    sub_100051DEC(v24);
    if (v25 == 2)
    {
    }

    else
    {
      v3 = sub_1004BD9C4();

      if ((v3 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004B85A4();

        v7 = v16;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v16 = 2147483649;

        sub_1004B85B4();
        sub_1001493C0(v7);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_100051DEC(&v16);
    if ((BYTE2(v16) & 1) == 0)
    {
      v4 = [objc_opt_self() sharedCloudController];
      if (v4)
      {
        v5 = v4;
        *&v10 = sub_10014FF58;
        *(&v10 + 1) = v2;
        *&v8 = _NSConcreteStackBlock;
        *(&v8 + 1) = 1107296256;
        *&v9 = sub_1000E26FC;
        *(&v9 + 1) = &unk_1005B3598;
        v6 = _Block_copy(&v8);

        [v5 loadLastKnownEnableICMLErrorStatusWithCompletionHander:v6];

        _Block_release(v6);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_9:
  }
}

uint64_t sub_100147D3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004BA8F4();
  v18 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004BA924();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v12 = sub_1004BCB44();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_10014FFA8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005B35E8;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  sub_1004BA914();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10014FE00(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
  sub_1000206D4(&qword_100606F50, &unk_100604C00, &qword_1004CDBC0, &protocol conformance descriptor for [A]);
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_10014804C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1 || !a2)
  {
    goto LABEL_5;
  }

  v3 = a2;
  if (_s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0([v3 integerValue]) == 6)
  {

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004B85B4();
    sub_1001493C0(v4);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  sub_1001493C0(v4);
}

uint64_t sub_1001481EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100149AB4();
  }

  return result;
}

void *sub_100148244()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = sub_100003ABC(&qword_100604708, &qword_1004CFE28);
  result = UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    sub_1004B85B4();
    return sub_1001493C0(v5);
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.hasDisregardedBanner.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = v1;
  v8 = v2;
  v3 = sub_100003ABC(&qword_100604708, &qword_1004CFE28);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

void *CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_100003ABC(&qword_100604708, &qword_1004CFE28);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return sub_100148244();
}

void (*CloudLibrary.StatusObserver.hasDisregardedBanner.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *v4 = *(v1 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = sub_100003ABC(&qword_100604708, &qword_1004CFE28);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return sub_10014851C;
}

void sub_10014851C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  sub_100148244();

  free(v1);
}

void CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    v6 = *(v2 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1000186A0(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1000186A0((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = sub_10014E80C;
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  sub_1004B85B4();
  sub_1001493C0(v11);
  sub_100003ABC(&qword_100604718, &qword_1004CFE78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1004BBE64();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_10003D6C4(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100604720, &qword_1004CFE80);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    sub_100146420(v15);

    isa = sub_1004BBC24().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_10014E7EC;
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1001460EC;
    v21[3] = &unk_1005B2E50;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100148938(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004BA8F4();
  v30 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BA924();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1005FFFB8 != -1)
    {
      swift_once();
    }

    v18 = sub_1004B80B4();
    sub_100007084(v18, qword_1006046F0);
    v10 = sub_1004B8094();
    v19 = sub_1004BC9A4();
    if (os_log_type_enabled(v10, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, v19, "Successfully enabled Cloud Library", v20, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1005FFFB8 != -1)
  {
    swift_once();
  }

  v9 = sub_1004B80B4();
  sub_100007084(v9, qword_1006046F0);
  swift_errorRetain();
  v10 = sub_1004B8094();
  v11 = sub_1004BC984();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v3;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    aBlock[6] = a1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v15 = sub_1004BBF04();
    v17 = sub_100012018(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to enable Cloud Library with error=%s", v12, 0xCu);
    sub_100004C6C(v14);
    v3 = v27;

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
    v23 = sub_1004BCB44();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = a1;
    aBlock[4] = sub_10014FF40;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005B3570;
    v25 = _Block_copy(aBlock);
    swift_errorRetain();

    sub_1004BA914();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10014FE00(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
    sub_1000206D4(&qword_100606F50, &unk_100604C00, &qword_1004CDBC0, &protocol conformance descriptor for [A]);
    sub_1004BD2D4();
    sub_1004BCB54();
    _Block_release(v25);

    (*(v30 + 8))(v5, v3);
    return (*(v28 + 8))(v8, v29);
  }

  return result;
}

uint64_t sub_100148E84(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 48);
  *(a1 + 48) = _swiftEmptyArrayStorage;
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = v5 + 40;
  while (v7 < *(v5 + 16))
  {
    ++v7;
    v9 = *(v8 - 8);
    v10 = a2 == 0;

    v9(&v10);

    v8 += 16;
    if (v6 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t CloudLibrary.StatusObserver.add(updateObserver:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 64);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      sub_10014E838(v8, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10014E870(v16);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v19 = a2;
  swift_unknownObjectWeakInit();
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  (*(a2 + 8))(v16[0], ObjectType, a2);
  sub_10014E838(v18, v17);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_100018710(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14 >> 1)
  {
    a1 = sub_100018710((v14 > 1), v15 + 1, 1, a1);
  }

  a1[2] = v15 + 1;
  sub_10003E278(v17, &a1[2 * v15 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  return sub_10014E870(v18);
}

void CloudLibrary.StatusObserver.remove(updateObserver:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      sub_10014E838(v5, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_10014E870(v8);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          sub_100032D30(v6, v9);
          sub_10014E870(v9);
          swift_endAccess();
          return;
        }
      }

      ++v6;
      v5 += 16;
      if (v4 == v6)
      {

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100149274@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v4;
  return result;
}

uint64_t sub_1001492F4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  return sub_1001493C0(v3);
}

uint64_t sub_1001493C0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  result = _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v11, a1);
  if ((result & 1) == 0)
  {
    if (qword_1005FFFB8 != -1)
    {
      swift_once();
    }

    v3 = sub_1004B80B4();
    sub_100007084(v3, qword_1006046F0);

    v4 = sub_1004B8094();
    v5 = sub_1004BC9A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      v8 = sub_1004BBF04();
      v10 = sub_100012018(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Status did change: %s", v6, 0xCu);
      sub_100004C6C(v7);
    }

    return sub_10014A780();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_100149644(void *a1)
{
  swift_beginAccess();
  sub_100003ABC(&unk_100604728, &qword_1004CFE88);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t sub_1001496BC(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&unk_100604C10, &unk_1004D0500);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&unk_100604728, &qword_1004CFE88);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  sub_100003ABC(&unk_100604728, &qword_1004CFE88);
  sub_1004B8574();
  return swift_endAccess();
}

float sub_1001498B4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
  if (a1 == 2)
  {
    if (v2 == 2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2 == 2)
  {
LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004B85B4();
    sub_1001493C0(v4);
    return result;
  }

  if (((v2 ^ a1) & 1) != 0 || (result = *(&v2 + 1), *(&a1 + 1) != *(&v2 + 1)))
  {
LABEL_3:
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

float (*sub_100149A50(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return sub_100149A84;
}

float sub_100149A84(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return sub_1001498B4(v4);
}

void sub_100149AB4()
{
  v1 = sub_1004BA8F4();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin();
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1004BA924();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BA8E4();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v48 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v46 = (&v42 - v6);
  v47 = sub_1004BA954();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BCBC4();
  v43 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004BA904();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 sharedCloudController];
  if (!v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v16 isUpdateInProgress];

  v19 = [v15 sharedCloudController];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 isInitialImport];

  v22 = v18 & v21;
  v23 = *(v0 + 88);
  if (v22 == 1)
  {
    if (!v23)
    {
      v24 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
      *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 1;
      v42 = v0;
      sub_1001498B4(v24);
      sub_100009130(0, &unk_100604BD0, OS_dispatch_source_ptr);
      sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
      (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInteractive(_:), v11);
      v25 = sub_1004BCB84();
      (*(v12 + 8))(v14, v11);
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10014FE00(&unk_100604BE0, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
      sub_100003ABC(&qword_100606F30, &unk_1004D04F0);
      sub_1000206D4(&unk_100604BF0, &qword_100606F30, &unk_1004D04F0, &protocol conformance descriptor for [A]);
      sub_1004BD2D4();
      v26 = sub_1004BCBD4();

      (*(v43 + 8))(v10, v8);
      ObjectType = swift_getObjectType();
      v28 = v44;
      sub_1004BA944();
      v29 = v46;
      *v46 = 1;
      v31 = v49;
      v30 = v50;
      v32 = *(v49 + 104);
      v32(v29, enum case for DispatchTimeInterval.seconds(_:), v50);
      v33 = v48;
      *v48 = 1;
      v32(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v30);
      sub_1004BCD34();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v34(v29, v30);
      (*(v45 + 8))(v28, v47);
      v35 = v42;
      aBlock[4] = sub_10014FE48;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      aBlock[3] = &unk_1005B3340;
      v36 = _Block_copy(aBlock);
      v37 = v35;

      v38 = v51;
      sub_1001FAF30(ObjectType);
      v39 = v53;
      sub_1001FAF34();
      sub_1004BCBE4();
      _Block_release(v36);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v38, v54);

      v40 = *(v35 + 88);
      *(v37 + 88) = v26;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1004BCBF4();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_1004BCC04();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v23)
    {
      swift_getObjectType();
      sub_1004BCBF4();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    sub_1001498B4(v41);
  }
}

void sub_10014A284(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedCloudController];
  if (v3)
  {
    v4 = v3;
    v6[4] = sub_10014FE50;
    v6[5] = a1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10014A72C;
    v6[3] = &unk_1005B3368;
    v5 = _Block_copy(v6);

    [v4 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10014A378(uint64_t a1, float a2)
{
  v3 = sub_1004BA8F4();
  v15 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004BA924();
  v6 = *(v14 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v9 = sub_1004BCB44();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_10014FE90;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005B33B8;
  v12 = _Block_copy(aBlock);

  sub_1004BA914();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10014FE00(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
  sub_1000206D4(&qword_100606F50, &unk_100604C00, &qword_1004CDBC0, &protocol conformance descriptor for [A]);
  sub_1004BD2D4();
  sub_1004BCB54();
  _Block_release(v12);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_10014A698(uint64_t a1, float a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_100149A50(v6);
    if (*v4 != 2)
    {
      *(v4 + 4) = a2;
    }

    (v5)(v6, 0);
  }

  return result;
}

uint64_t sub_10014A72C(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_10014A780()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v1 = v10[0];
  result = swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_10014E838(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      sub_10014E870(v8);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *CloudLibrary.StatusObserver.deinit()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  v3 = sub_100003ABC(&unk_100604728, &qword_1004CFE88);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10014A99C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = sub_1004B8534();
  *a2 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v9 = qword_100617118;
  sub_1004B6DF4();
  v10 = sub_1004BBED4();
  (*(v3 + 8))(v7, v2);
  return v10;
}

BOOL static CloudLibrary.PresentationStyle.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_100009130(0, &qword_100604490, NSObject_ptr);
  return sub_1004BCFA4() & 1;
}

BOOL sub_10014AEEC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_100009130(0, &qword_100604490, NSObject_ptr);
  return sub_1004BCFA4() & 1;
}

void sub_10014AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
    v4 = a2;
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(v4, a3);
}

uint64_t sub_10014AFE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = sub_100003ABC(&qword_1006020A0, &qword_1004CA490);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v6, a3, a4, sub_100150200, v14);
}

void static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = a1;
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v27[4] = v23;
  v27[5] = v24;
  v27[6] = v25;
  v27[7] = v26;
  v27[0] = v19;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v22;
  sub_100051DEC(v27);
  if (BYTE2(v27[0]))
  {
    if (!a4)
    {
      return;
    }

    v10 = 1;
LABEL_9:
    a4(v10);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_100051DEC(&v19);
  if ((BYTE9(v19) & 1) == 0)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    goto LABEL_9;
  }

  _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v9, a2, a3, a4, a5);
}

uint64_t static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_1004BC474();
  *(v3 + 40) = sub_1004BC464();
  v5 = sub_1004BC3E4();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_10014B3A0, v5, v4);
}

uint64_t sub_10014B3A0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = sub_1004BC464();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_10014B4BC;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD000000000000045, 0x80000001005020F0, sub_10014F370, v6, &type metadata for Bool);
}

uint64_t sub_10014B4BC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10014B61C, v3, v2);
}

uint64_t sub_10014B61C()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10014B680(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = sub_100003ABC(&qword_1006020A0, &qword_1004CA490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v21[-v9];
  v11 = __chkstk_darwin();
  v13 = &v21[-v12];
  v14 = *(v6 + 16);
  v14(&v21[-v12], a1, v5, v11);
  (v14)(v10, v13, v5);
  (v14)(v8, v13, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v13, v5);
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v41[4] = v37;
  v41[5] = v38;
  v41[6] = v39;
  v41[7] = v40;
  v41[0] = v33;
  v41[1] = v34;
  v41[2] = v35;
  v41[3] = v36;
  sub_100051DEC(v41);
  if (BYTE2(v41[0]))
  {
    v17 = *(v6 + 8);
    v17(v10, v5);
    LOBYTE(v33) = 1;
    sub_1004BC404();

    return (v17)(v8, v5);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v37 = v29;
    v38 = v30;
    v39 = v31;
    v40 = v32;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v36 = v28;
    sub_100051DEC(&v33);
    if (BYTE9(v33))
    {
      v20 = *(v6 + 8);
      v20(v10, v5);
      _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(v22, v23, v24, sub_10014FEA0, v16);

      return (v20)(v8, v5);
    }

    else
    {
      LOBYTE(v25) = 0;
      sub_1004BC404();

      v19 = *(v6 + 8);
      v19(v8, v5);
      return (v19)(v10, v5);
    }
  }
}

char *sub_10014BA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + qword_100604948) = 0;
  type metadata accessor for EnableCloudLibraryView.Model(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  *v14 = 0;
  v14[1] = 0;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a5;
  v13[7] = a6;
  swift_beginAccess();
  sub_10002F518(a5, a6);
  type metadata accessor for UIUserInterfaceSizeClass(0);
  sub_1004B8564();
  swift_endAccess();
  v15 = (v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v16 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v17 = *(v13 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v15 = 0;
  v15[1] = 0;
  sub_10003CC4C(v16, v17);
  *(v6 + qword_100604940) = v13;
  sub_10014FE00(&qword_100604C20, type metadata accessor for EnableCloudLibraryView.Model, asc_1004D0384);
  swift_retain_n();
  v32 = sub_1004B8B74();
  v33 = v18;
  v19 = sub_1004B93F4();
  v20 = *&v19[qword_100604940];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = (v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v23 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  v24 = *(v20 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss + 8);
  *v22 = sub_10014FEF8;
  v22[1] = v21;
  v25 = v19;

  sub_10003CC4C(v23, v24);

  sub_10014C088();
  v26 = [v25 presentingViewController];
  if (v26)
  {
    v27 = v26;
    sub_100003ABC(&qword_100604C28, &unk_1004D0510);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1004C50A0;
    *(v28 + 32) = sub_1004B8374();
    *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_1004BCA64();
    swift_unknownObjectRelease();
  }

  v29 = [v25 presentationController];

  if (v29)
  {
    sub_100003ABC(&qword_100604C28, &unk_1004D0510);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1004C50A0;
    *(v30 + 32) = sub_1004B8374();
    *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_1004BCD44();

    sub_10003CC4C(a5, a6);
    swift_unknownObjectRelease();
  }

  else
  {

    sub_10003CC4C(a5, a6);
  }

  return v25;
}