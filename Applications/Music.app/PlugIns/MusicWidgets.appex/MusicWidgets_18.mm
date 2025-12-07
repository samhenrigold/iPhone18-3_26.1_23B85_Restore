uint64_t sub_1001E9290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000D3B98(0, &qword_1006E9380, UITab_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_100574178();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_100574178();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _sSo18UITabBarControllerC9MusicCoreE24playActivityFeatureNames015sourceChildViewC0SaySSGSo06UIViewC0CSg_tF_0()
{
  v3 = v0;
  v4 = [v0 selectedTab];
  if (!v4)
  {
    sub_100009DCC(&unk_1006E8FD0, &unk_10058C660);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10057B510;
    v18 = [v0 playActivityFeatureName];
    v19 = sub_1005728D8();
    v21 = v20;

    result = v17;
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    return result;
  }

  v5 = v4;
  v6 = [v4 managingTabGroup];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 managingNavigationController];
  if (!v8)
  {

LABEL_14:
    sub_100009DCC(&unk_1006E8FD0, &unk_10058C660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057B510;
    v23 = [v3 playActivityFeatureName];
    v24 = sub_1005728D8();
    v26 = v25;

    *(v22 + 32) = v24;
    *(v22 + 40) = v26;

    return v22;
  }

  v9 = v8;
  v10 = UITab.path.getter();
  v48 = v10;
  v11 = [v9 viewControllers];
  sub_1000D3B98(0, &qword_1006E9350, UIViewController_ptr);
  v12 = sub_100572D28();

  if (v12 >> 62)
  {
    result = sub_100574178();
    v47 = v9;
    if (result)
    {
LABEL_6:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = sub_100573F58();
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v14 = *(v12 + 32);
      }

      v1 = v14;

      v15 = [v1 tab];
      if (!v15)
      {

        goto LABEL_21;
      }

      v2 = v15;
      result = sub_1001E6560(v15, v10, &qword_1006E9380, UITab_ptr);
      if (v16)
      {

        goto LABEL_21;
      }

      if (v10 >> 62)
      {
        goto LABEL_38;
      }

      v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27 >= result)
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v9;
    if (result)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
LABEL_21:
    sub_100009DCC(&unk_1006E8FD0, &unk_10058C660);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_10057B510;
    v28 = [v3 playActivityFeatureName];
    v29 = sub_1005728D8();
    v31 = v30;

    *(v1 + 32) = v29;
    *(v1 + 40) = v31;
    v46 = v1;
    if (v10 >> 62)
    {
      v3 = sub_100574178();
      if (!v3)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      v3 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_33;
      }
    }

    v44 = v7;
    v45 = v5;
    result = sub_1000CC614(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v42 = v7;
    v43 = result;
    v27 = sub_100574178();
    result = v43;
    v7 = v42;
    if (v27 < result)
    {
      goto LABEL_39;
    }

LABEL_18:
    sub_1000F53A0(result, v27);

    v10 = v48;
  }

  v32 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v33 = sub_100573F58();
    }

    else
    {
      v33 = *(v10 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = [v33 playActivityFeatureName];
    v36 = sub_1005728D8();
    v38 = v37;

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (v40 >= v39 >> 1)
    {
      sub_1000CC614((v39 > 1), v40 + 1, 1);
    }

    ++v32;
    _swiftEmptyArrayStorage[2] = v40 + 1;
    v41 = &_swiftEmptyArrayStorage[2 * v40];
    v41[4] = v36;
    v41[5] = v38;
  }

  while (v3 != v32);

  v7 = v44;
  v5 = v45;
LABEL_34:
  sub_1000DA410(_swiftEmptyArrayStorage);

  return v46;
}

unint64_t sub_1001E9848(unint64_t result, uint64_t a2, uint64_t a3)
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

unint64_t sub_1001E9908(unint64_t result, uint64_t a2, uint64_t a3)
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
  if (qword_1006E4EA0 != -1)
  {
    swift_once();
  }

  return &static NSUserDefaults.mobileiPod;
}

Swift::Bool __swiftcall NSUserDefaults.BOOL(forKey:withDefault:)(Swift::String forKey, Swift::Bool withDefault)
{
  countAndFlagsBits = forKey._countAndFlagsBits;
  sub_1000C5FB8();

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
    sub_1001D36AC(&v5);
  }

  return withDefault;
}

void sub_1001E9B10()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100572898();
  v2 = [v0 initWithSuiteName:v1];

  static NSUserDefaults.mobileiPod = v2;
}

uint64_t static NSUserDefaults.mobileiPod.getter()
{
  if (qword_1006E4EA0 != -1)
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
  v3._rawValue = &off_1006847F0;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  return v4 != 0;
}

Swift::Int sub_1001E9C5C()
{
  sub_100574678();
  sub_1005729F8();
  return sub_1005746C8();
}

Swift::Int sub_1001E9CD0(uint64_t a1)
{
  sub_100574678();
  sub_1005729F8();
  return sub_1005746C8();
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
  *(v3 + 40) = sub_1001A97A4();
  *(v4 + 48) = sub_1000C5FB8();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_1001D36AC(v4);
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
  return sub_1001E9E34;
}

uint64_t sub_1001E9E60(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1000C5FB8();
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
    sub_1001D36AC(&v4);
    return 0;
  }

  return result;
}

unint64_t sub_1001E9EF8()
{
  result = qword_1006E9388;
  if (!qword_1006E9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9388);
  }

  return result;
}

uint64_t sub_1001E9F6C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v9 = &type metadata for Bool;
  v8[0] = a1;
  v4 = a2(a1);
  v5 = sub_1000C5FB8();
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
  *(v3 + 40) = sub_1001E9EF8();
  *(v4 + 48) = sub_1000C5FB8();
  NSUserDefaults.subscript.getter(v4);
  if (!*(v4 + 24))
  {
    sub_1001D36AC(v4);
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
  return sub_1001EA0B4;
}

void sub_1001EA0C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

Swift::Int sub_1001EA120()
{
  sub_100574678();
  sub_1005729F8();
  return sub_1005746C8();
}

Swift::Int sub_1001EA194(uint64_t a1)
{
  sub_100574678();
  sub_1005729F8();
  return sub_1005746C8();
}

uint64_t sub_1001EA1F4@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_100574238(a2, v8);

  *a3 = v6 != 0;
  return result;
}

id MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter()
{
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v8;
  v10[7] = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  sub_100108D2C(v10);
  return [v0 transitionStyleForUserWithCatalogPlaybackCapability:BYTE8(v10[0]) & 1];
}

unint64_t sub_1001EA35C()
{
  result = qword_1006E9390;
  if (!qword_1006E9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9390);
  }

  return result;
}

unint64_t sub_1001EA3DC()
{
  result = qword_1006E9398;
  if (!qword_1006E9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9398);
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
    sub_10056C728();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t static ICMusicKitRequestContext.music.getter()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4[4] = sub_1001EB614;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1001D65E4;
  v4[3] = &unk_100691638;
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

id static ICURLSessionManager.musicSession.getter()
{
  v0 = [objc_opt_self() highPrioritySession];

  return v0;
}

double ICURLBag.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([v2 valueForBagKey:a1])
  {
    sub_100573D58();

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
  if (qword_1006E4EA8 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.music;
}

void sub_1001EA764(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = sub_100572898();
    v6 = sub_100572898();
    v7 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v5 clientVersion:v6];

    [v3 setClientInfo:v7];
    v8 = objc_opt_self();
    v9 = v4;
    v10 = [v8 defaultIdentityStore];
    [v3 setIdentityStore:v10];

    v11 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v11];
  }
}

id static ICStoreRequestContext.default(withConfigurationBlock:)(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001EB630;
  *(v3 + 24) = v7;
  aBlock[4] = sub_1001DA9E4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D65E4;
  aBlock[3] = &unk_100691688;
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

void sub_1001EAA54(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v8 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore:v5];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v6];

    [v3 setAllowsExpiredBags:1];
    v7 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v3 setAuthenticationProvider:v7];

    if (qword_1006E4EB0 != -1)
    {
      swift_once();
    }

    [v3 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void sub_1001EABE8(void *a1, void (*a2)(void *))
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

id static ICStoreRequestContext.current.getter()
{
  v0 = [objc_opt_self() activeAccount];
  v1 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v0];

  return v1;
}

uint64_t static ICStoreRequestContext.storeFlow.getter()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v4[4] = sub_1001EB610;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1001D65E4;
  v4[3] = &unk_1006916B0;
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
  if (qword_1006E4EB0 != -1)
  {
    swift_once();
  }

  return &static ICClientInfo.storeFlow;
}

id sub_1001EAEAC()
{
  result = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  static ICClientInfo.music = result;
  return result;
}

void *sub_1001EAF08()
{
  result = sub_1001EAF28();
  static ICClientInfo.storeFlow = result;
  return result;
}

void *sub_1001EAF28()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  sub_100573D58();
  swift_unknownObjectRelease();
  sub_1001EB7E8();
  swift_dynamicCast();
  v1 = sub_100572898();
  [v3 setBagProfileVersion:v1];

  return v3;
}

double ICURLBag.subscript.getter@<D0>(_OWORD *a3@<X8>)
{
  v5 = sub_100572898();
  v6 = [v3 valueForBagKey:v5];

  if (v6)
  {
    sub_100573D58();

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
  v10 = *(sub_100573C28() - 8);
  __chkstk_darwin();
  v13 = &v40 - v12;
  v14 = a1[2];
  if (!v14)
  {
    sub_1001EB648();
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
    a1 = sub_1000CF81C(isUniquelyReferenced_nonNull_native, v14, 1, a1);
    v52 = a1;
  }

  sub_1001E8D90(0, 1, 0);
  if (![v6 valueForBagKey:v16])
  {

    sub_1001EB648();
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
  sub_100573D58();
  swift_unknownObjectRelease();
  sub_1000F51DC(v50, v51);
  sub_100081F38(v51, v50);
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
      sub_100081F38(v50, v49);
      v20 = v23;
      sub_100009DCC(&unk_1006EB150, &unk_10058AF20);
      if (!swift_dynamicCast())
      {

        sub_1001EB648();
        swift_allocError();
        v38 = v37;
        *v37 = v20;
        sub_100081F38(v50, (v37 + 1));
        *(v38 + 40) = 1;
        goto LABEL_22;
      }

      v24 = v48;
      v25 = sub_1005728D8();
      if (!*(v24 + 16))
      {

LABEL_21:

        sub_1001EB648();
        swift_allocError();
        *v39 = v20;
        *(v39 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v27 = sub_1000EB89C(v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v21;
      sub_100081F38(*(v24 + 56) + 32 * v27, v49);

      sub_100010474(v50);
      result = sub_1000F51DC(v49, v50);
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

    sub_100081F38(v50, v49);
    v31 = v44;
    v30 = v45;
    if (swift_dynamicCast())
    {

      sub_100010474(v50);
      sub_100010474(v51);
      v32 = *(v30 - 8);
      (*(v32 + 56))(v31, 0, 1, v30);
      return (*(v32 + 32))(v42, v31, v30);
    }

    else
    {
      (*(*(v30 - 8) + 56))(v31, 1, 1, v30);
      (*(v41 + 8))(v31, v46);
      sub_1001EB648();
      swift_allocError();
      v36 = v35;
      *v35 = v20;
      sub_100081F38(v50, (v35 + 1));
      *(v36 + 40) = 1;
      swift_willThrow();

LABEL_23:
      sub_100010474(v50);
      return sub_100010474(v51);
    }
  }

  return result;
}

uint64_t sub_1001EB618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001EB648()
{
  result = qword_1006EE2A0;
  if (!qword_1006EE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE2A0);
  }

  return result;
}

unint64_t sub_1001EB6A0()
{
  result = qword_1006E93A0;
  if (!qword_1006E93A0)
  {
    type metadata accessor for ICEnvironmentMonitorThermalPressureLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E93A0);
  }

  return result;
}

uint64_t sub_1001EB6F8(uint64_t a1)
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

__n128 sub_1001EB714(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001EB728(uint64_t a1, unsigned int a2)
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

uint64_t sub_1001EB764(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001EB7B0(uint64_t result, unsigned int a2)
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

unint64_t sub_1001EB7E8()
{
  result = qword_1006E93A8;
  if (!qword_1006E93A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006E93A8);
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
  sub_100573ED8(21);

  v4._countAndFlagsBits = v2;
  v4._object = v1;
  sub_100572A98(v4);

  return 0xD000000000000013;
}

uint64_t sub_1001EBA04()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006FC748);
  sub_10000C49C(v0, qword_1006FC748);
  return sub_10056DF78();
}

uint64_t sub_1001EBA84@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v34 = a2;
  v37 = a1;
  v38 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_100573C28();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin();
  v35 = &v32 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_100573C28();
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
      v31 = sub_10002AB7C(v25);
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

uint64_t sub_1001EBEA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1001EBFA0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1001EC09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_100573C28();
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

void sub_1001EC3A8(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1001EC43C(uint64_t result, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
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
  v11 = sub_1001F60C0(a1, a2, a3, a4);

  sub_1000F3E14(*(a3 + 8), *(a3 + 16));
  sub_1000F3E14(*(a3 + 24), *(a3 + 32));
  sub_1000F3E14(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v11;
}

id Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1001F60C0(a1, a2, a3, a4);

  sub_1000F3E14(*(a3 + 8), *(a3 + 16));
  sub_1000F3E14(*(a3 + 24), *(a3 + 32));
  sub_1000F3E14(*(a3 + 40), *(a3 + 48));
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_1001EC6B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1001EC09C(a2, 0, ObjectType, AssociatedTypeWitness, v5);
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
  return sub_1001EC914;
}

void sub_1001EC914(void **a1, char a2)
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
  sub_1000E672C(v5, v6);
  sub_1000E672C(v7, v8);
  result = sub_1000E672C(v9, v10);
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
  sub_1000E672C(v4, v5);
  sub_1000E672C(v6, v18);
  sub_1000E672C(v20, v19);

  sub_1000F3E14(v9, v10);
  sub_1000F3E14(v15, v14);
  sub_1000F3E14(v17, v16);
  sub_1001F2640();

  sub_1000F3E14(v4, v5);
  sub_1000F3E14(v6, v18);
  return sub_1000F3E14(v20, v19);
}

void (*Gliss.Coordinator.gestureConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001ECC2C;
}

void sub_1001ECC2C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1001F2640();
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
  a6[1] = sub_1001F6490;
  a6[2] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t sub_1001ECCF4(uint64_t a1, double (*a2)(uint64_t))
{
  sub_100009DCC(&qword_1006E9548, &qword_10058CCB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057B510;
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
  sub_1000E672C(v1, *(v0 + 16));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitRects.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000F3E14(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.getter()
{
  v1 = *(v0 + 24);
  sub_1000E672C(v1, *(v0 + 32));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.hitTest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000F3E14(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.getter()
{
  v1 = *(v0 + 40);
  sub_1000E672C(v1, *(v0 + 48));
  return v1;
}

uint64_t Gliss.Coordinator.GestureConfiguration.simultaneousGestureRecognizerAllowance.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000F3E14(*(v2 + 40), *(v2 + 48));
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
    v7 = sub_1000CFC80(0, v7[2] + 1, 1, v7);
    *(v3 + v6) = v7;
  }

  v11 = v7[2];
  v10 = v7[3];
  if (v11 >= v10 >> 1)
  {
    v7 = sub_1000CFC80((v10 > 1), v11 + 1, 1, v7);
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
      sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
      v9 = v8;
      v10 = sub_100573A58();

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
    v11 = sub_1000E9E90(v6);
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
  v6 = sub_100573C28();
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

  return sub_1001ED394(a1);
}

uint64_t sub_1001ED394@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, &v1[v3], AssociatedTypeWitness);
}

uint64_t sub_1001ED478(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x78);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&v1[v3], a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t sub_1001ED564@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_100573C28();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1001ED654(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x80);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_100573C28();
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

  sub_1001F6498(0, 0, v3);
}

uint64_t Gliss.Coordinator.setItem(_:animationDirection:animation:)(void *a1, unsigned int a2, void *a3, uint64_t a4, unsigned int a5)
{
  v112 = a5;
  v114 = a4;
  v117 = a3;
  v115 = a2;
  v7 = *((swift_isaMask & *v5) + 0x58);
  v8 = *((swift_isaMask & *v5) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v11;
  __chkstk_darwin();
  v14 = &v101 - v13;
  sub_100573C28();
  v15 = __chkstk_darwin();
  v17 = &v101 - v16;
  v108 = *(v10 + 56);
  v109 = v10 + 56;
  v108(&v101 - v16, 1, 1, AssociatedTypeWitness, v15);
  v110 = v17;
  sub_1001ED654(v17);
  v118 = v5;
  Gliss.Coordinator.item.getter(v14);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = sub_1005727E8();
  v113 = v10;
  v20 = *(v10 + 8);
  v116 = v14;
  result = v20(v14, AssociatedTypeWitness);
  if ((v19 & 1) == 0)
  {
    v102 = AssociatedConformanceWitness;
    v106 = v8;
    if (qword_1006E4EB8 != -1)
    {
      swift_once();
    }

    v22 = sub_10056DF88();
    v23 = sub_10000C49C(v22, qword_1006FC748);
    v25 = v113 + 16;
    v24 = *(v113 + 16);
    v24(v12, a1, AssociatedTypeWitness);
    v119 = v23;
    v26 = sub_10056DF68();
    v27 = sub_100573448();
    v28 = os_log_type_enabled(v26, v27);
    v107 = v7;
    v105 = a1;
    v104 = v25;
    v103 = v24;
    if (v28)
    {
      v29 = AssociatedTypeWitness;
      v30 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v122[0] = v101;
      *v30 = 136446210;
      v24(v116, v12, v29);
      v31 = sub_100572978();
      v33 = v32;
      v20(v12, v29);
      v34 = sub_1000C9784(v31, v33, v122);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to set item=%{public}s", v30, 0xCu);
      sub_100010474(v101);

      AssociatedTypeWitness = v29;
    }

    else
    {

      v20(v12, AssociatedTypeWitness);
    }

    v35 = v118;
    v36 = sub_10056DF68();
    v37 = sub_100573448();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v112;
    v40 = v114;
    if (v38)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v122[0] = v42;
      *v41 = 136446210;
      Gliss.Coordinator.item.getter(v116);
      v43 = sub_100572978();
      v45 = sub_1000C9784(v43, v44, v122);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "  Current Item=%{public}s", v41, 0xCu);
      sub_100010474(v42);
    }

    v46 = sub_10056DF68();
    v47 = sub_100573448();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v122[0] = v49;
      *v48 = 136446210;
      LOBYTE(v121[0]) = v115;
      sub_100009DCC(&qword_1006E93B8, &qword_10058CB38);
      v50 = sub_100572978();
      v52 = sub_1000C9784(v50, v51, v122);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "  Direction=%{public}s", v48, 0xCu);
      sub_100010474(v49);
    }

    v53 = v117;
    sub_1001F64C0(v117, v40, v39);
    v54 = sub_10056DF68();
    v55 = sub_100573448();
    sub_1001F6498(v53, v40, v39);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v121[0] = v57;
      *v56 = 136446210;
      v122[0] = v53;
      v122[1] = v40;
      v123 = v39;
      sub_1001F64C0(v53, v40, v39);
      sub_100009DCC(&qword_1006E93B0, &qword_10058CB30);
      v58 = sub_100572978();
      v60 = sub_1000C9784(v58, v59, v121);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "  Animation=%{public}s", v56, 0xCu);
      sub_100010474(v57);
    }

    v61 = v105;
    v62 = *(v35 + *((swift_isaMask & *v35) + 0x88));
    if (v62 && (v63 = *(*v62 + 128), swift_beginAccess(), *(v62 + v63)))
    {

      v64 = sub_10056DF68();
      v65 = sub_100573448();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v122[0] = v118;
        *v66 = 136446210;
        v120 = v62;
        type metadata accessor for Gliss.Transition(0, AssociatedTypeWitness, v102, v67);
        swift_getWitnessTable();
        v68 = sub_100574408();
        v70 = sub_1000C9784(v68, v69, v122);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "  Ongoing Transition=%{public}s", v66, 0xCu);
        sub_100010474(v118);
      }

      v71 = v103;
      v72 = sub_10056DF68();
      v73 = sub_100573448();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "  ⏳ Queueing item until ongoing transition completes", v74, 2u);
      }

      v75 = v110;
      v71(v110, v61, AssociatedTypeWitness);
      (v108)(v75, 0, 1, AssociatedTypeWitness);
      sub_1001ED654(v75);
      v76 = v116;
      v71(v116, v61, AssociatedTypeWitness);
      v77 = v113;
      v78 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v79 = (v78 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v78 + v111 + 23) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v107;
      *(v81 + 16) = v106;
      *(v81 + 24) = v82;
      (*(v77 + 32))(v81 + v78, v76, AssociatedTypeWitness);
      v83 = v81 + v79;
      *v83 = v35;
      *(v83 + 8) = v115;
      v84 = v81 + v80;
      v85 = v117;
      v86 = v114;
      *v84 = v117;
      *(v84 + 8) = v86;
      *(v84 + 16) = v39;
      v87 = v35;
      sub_1001F64C0(v85, v86, v39);
      Gliss.Transition.addCompletion(_:)(sub_1001F65B8, v81);
    }

    else
    {
      v88 = sub_1001EF3D0(v61, v115);
      v89 = v117;
      if (v39 >= 0xFEu)
      {
        v90 = 0;
      }

      else
      {
        v90 = v117;
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
      sub_1001F64C0(v89, v40, v39);
      sub_1001F64AC(v94, v95, v96);
      sub_1001F00EC(v88);
      v97 = v116;
      v103(v116, v61, AssociatedTypeWitness);
      sub_1001ED478(v97);
      v98 = *((swift_isaMask & *v35) + 0x70);
      swift_beginAccess();
      v99 = *(v35 + v98);
      __chkstk_darwin();
      v100 = v107;
      *(&v101 - 4) = v106;
      *(&v101 - 3) = v100;
      *(&v101 - 2) = v61;
      *(&v101 - 1) = v88;

      sub_1001EC3A8(sub_1001F72F0, (&v101 - 6), v99);

      sub_1001F139C(v88, v39 < 0xFEu);
    }
  }

  return result;
}

void sub_1001EE348(uint64_t *a1, uint64_t a2, char *a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v65 = a8;
  v66 = a5;
  v67 = a6;
  v68 = a7;
  v81 = a4;
  v63 = *a1;
  v9 = *(v63 + 80);
  v10 = sub_100573C28();
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
  if (qword_1006E4EB8 != -1)
  {
    swift_once();
  }

  v76 = v12;
  v23 = sub_10056DF88();
  v24 = sub_10000C49C(v23, qword_1006FC748);
  v25 = *(v19 + 16);
  v77 = a3;
  v25(v22, a3, v9);
  v72 = v24;
  v26 = sub_10056DF68();
  v27 = sub_100573448();
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
    v31 = sub_100572978();
    v33 = v32;
    v69 = *(v78 + 8);
    v69(v22, v9);
    v34 = sub_1000C9784(v31, v33, v83);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "⌛️ Dequeuing item=%{public}s", v29, 0xCu);
    sub_100010474(v30);
    v19 = v78;

    v17 = v75;
  }

  else
  {

    v69 = *(v19 + 8);
    v69(v22, v9);
  }

  v35 = v79;
  sub_1001ED564(v79);
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
  v58 = sub_1005727E8();
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
  v50 = sub_10056DF68();
  v51 = sub_100573448();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v83[0] = v53;
    *v52 = 136446210;
    sub_1001ED564(v64);
    v54 = sub_100572978();
    v56 = sub_1000C9784(v54, v55, v83);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "  ⌛️❌ Item no longer matches queued item=%{public}s", v52, 0xCu);
    sub_100010474(v53);
  }
}

void sub_1001EEB48(SEL *a1)
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

void sub_1001EEC04(uint64_t a1)
{
  v2 = sub_10056CAE8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100009DCC(&qword_1006E9530, &qword_10058CC98);
  __chkstk_darwin();
  v8 = &v29[-v7];
  sub_100009DCC(&qword_1006E9538, &unk_10058CCA0);
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
    sub_1001F6EE8(v14, v8);
    sub_1001F6EE8(v11, &v8[v20]);
    v21 = v32;
    v22 = *(v32 + 48);
    if (v22(v8, 1, v2) == 1)
    {
      v23 = v33;

      sub_10001036C(v11, &qword_1006E9538, &unk_10058CCA0);
      sub_10001036C(v14, &qword_1006E9538, &unk_10058CCA0);
      v24 = v23;
      if (v22(&v8[v20], 1, v2) == 1)
      {
        sub_10001036C(v8, &qword_1006E9538, &unk_10058CCA0);
LABEL_13:

        return;
      }
    }

    else
    {
      v25 = v34;
      sub_1001F6EE8(v8, v34);
      if (v22(&v8[v20], 1, v2) != 1)
      {
        v27 = v31;
        (*(v21 + 32))(v31, &v8[v20], v2);
        sub_1001F6F58();
        v24 = v33;

        v30 = sub_1005727E8();
        v28 = *(v21 + 8);
        v28(v27, v2);
        sub_10001036C(v11, &qword_1006E9538, &unk_10058CCA0);
        sub_10001036C(v14, &qword_1006E9538, &unk_10058CCA0);
        v28(v34, v2);
        sub_10001036C(v8, &qword_1006E9538, &unk_10058CCA0);
        if (v30)
        {
          goto LABEL_13;
        }

LABEL_10:
        v26 = *(*v24 + 16);
        swift_beginAccess();
        if (*(v24 + v26) <= 2u)
        {
          sub_1001F03F4(v24, 0);
        }

        goto LABEL_13;
      }

      v24 = v33;

      sub_10001036C(v11, &qword_1006E9538, &unk_10058CCA0);
      sub_10001036C(v14, &qword_1006E9538, &unk_10058CCA0);
      (*(v21 + 8))(v25, v2);
    }

    sub_10001036C(v8, &qword_1006E9530, &qword_10058CC98);
    goto LABEL_10;
  }
}

uint64_t sub_1001EF108(uint64_t a1)
{
  sub_1001F66E0(a1);
}

id sub_1001EF140()
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
    sub_1000F3E14(v9[1], v9[2]);
    sub_1000F3E14(v9[3], v9[4]);
    sub_1000F3E14(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:1 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1001EF21C()
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
    sub_1000F3E14(v9[1], v9[2]);
    sub_1000F3E14(v9[3], v9[4]);
    sub_1000F3E14(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorWithStyle:3 forView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1001EF2F8()
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
    sub_1000F3E14(v9[1], v9[2]);
    sub_1000F3E14(v9[3], v9[4]);
    sub_1000F3E14(v9[5], v9[6]);
    v5 = [objc_opt_self() feedbackGeneratorForView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1001EF3D0(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v95 = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x58);
  v93 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = sub_100573C28();
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

        v28 = sub_1005727E8();
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
        LOBYTE(v29) = sub_1005727E8();
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
  if (qword_1006E4EB8 != -1)
  {
    swift_once();
  }

  v32 = sub_10056DF88();
  v33 = sub_10000C49C(v32, qword_1006FC748);
  v34 = v94;
  v35 = *(v94 + 16);
  v36 = v90;
  v35(v90, v95, AssociatedTypeWitness);
  v83 = v33;
  v37 = sub_10056DF68();
  v38 = sub_100573448();
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
    v43 = sub_100572978();
    v45 = v44;
    v90 = *(v94 + 8);
    (v90)(v36, AssociatedTypeWitness);
    v46 = sub_1000C9784(v43, v45, &v98);
    v47 = v80;

    *(v41 + 4) = v46;
    v34 = v94;
    _os_log_impl(&_mh_execute_header, v37, v38, "Creating transition for item=%{public}s", v41, 0xCu);
    sub_100010474(v42);
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
  v60 = sub_1005727E8();
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

  v68 = sub_1001EC43C(_swiftEmptyDictionarySingleton, sub_1001F7268, (&v79 - 6), v66);

  v21 = sub_1001F7360(v91, v64, v67, v68, 0.0);

  v69 = sub_10056DF68();
  v70 = sub_100573448();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = v48;
    v73 = swift_slowAlloc();
    v96 = v21;
    v97 = v73;
    *v71 = 136446210;
    swift_getWitnessTable();
    v74 = sub_100574408();
    v76 = sub_1000C9784(v74, v75, &v97);

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v69, v70, "   Created Transition=%{public}s", v71, 0xCu);
    sub_100010474(v73);

    v77 = v72;
  }

  else
  {

    v77 = v48;
  }

  (v90)(v77, AssociatedTypeWitness);
  return v21;
}

void sub_1001F0004(uint64_t a1, void **a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v9 = a2[1];
  ObjectType = swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = v8;
  sub_1001EBA84(a3, a4, ObjectType, AssociatedTypeWitness, v9, v13);
  sub_100276BB4(v13, v12);
}

void sub_1001F00EC(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  if (qword_1006E4EB8 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = sub_10056DF88();
    sub_10000C49C(v5, qword_1006FC748);

    v6 = sub_10056DF68();
    v7 = sub_100573448();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25[0] = v9;
      *v8 = 136446210;
      type metadata accessor for Gliss.Transition(0, *(v4 + 80), *(v4 + 88), v10);
      swift_getWitnessTable();
      v11 = sub_100574408();
      v13 = sub_1000C9784(v11, v12, v25);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Begin or Enqueue Transition=%{public}s", v8, 0xCu);
      sub_100010474(v9);
    }

    sub_1001F8078(2);

    sub_1001F66E0(v14);

    v15 = *((swift_isaMask & *v2) + 0x70);
    swift_beginAccess();
    v16 = *(v2 + v15);
    v4 = *(v16 + 16);

    if (!v4)
    {
      break;
    }

    v17 = 0;
    v18 = (v16 + 40);
    while (v17 < *(v16 + 16))
    {
      ++v17;
      v19 = *v18;
      v20 = *(v18 - 1);
      ObjectType = swift_getObjectType();
      sub_1001EBEA4(a1, ObjectType, v19);

      v18 += 2;
      if (v4 == v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_8:

  sub_1001EEB3C();
  v22 = sub_10056DF68();
  v23 = sub_100573448();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "   Transition Started!", v24, 2u);
  }
}

void sub_1001F03F4(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (qword_1006E4EB8 != -1)
  {
    swift_once();
  }

  v7 = sub_10056DF88();
  sub_10000C49C(v7, qword_1006FC748);

  v8 = sub_10056DF68();
  v9 = sub_100573448();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = sub_100574408();
    v14 = sub_1000C9784(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_1000C9784(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to cancel transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_1001F8078(4);
    sub_1001EEB30();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
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

        v26 = sub_1000EB9E8(a1 + v21);
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
      sub_1001F64D4(v34, v35, v36);
      sub_1000F3E14(v37, v39);
      sub_1000F3E14(v58[3], v58[4]);
      sub_1000F3E14(v58[5], v58[6]);
      v40 = sub_1001F73D8(a1, v38, v34, v35, v36);

      sub_1001F64AC(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_1001F7054;
      *(v41 + 24) = v19;
      v56 = sub_1000E6D8C;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10007885C;
      v55 = &unk_100691A00;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_1001F7094;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_1001F72B8;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1001F1348;
      v55 = &unk_100691A50;
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
      sub_1000EF8D4(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_1001F1A98(a1, 0, v32, sub_1001F7320, 0.0);
      sub_1001F0AF0(a1, v32);
    }
  }

  else
  {
    v29 = sub_10056DF68();
    v30 = sub_100573448();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

uint64_t sub_1001F0AF0(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = sub_10056CAE8();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E9530, &qword_10058CC98);
  __chkstk_darwin();
  v59 = &v52 - v9;
  sub_100009DCC(&qword_1006E9538, &unk_10058CCA0);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  sub_1001F8078(6);
  if (qword_1006E4EB8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_10056DF88();
    sub_10000C49C(v16, qword_1006FC748);

    v17 = sub_10056DF68();
    v18 = sub_100573448();

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
      v23 = sub_100574408();
      v25 = sub_1000C9784(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "❎ Cancelled transition=%{public}s", v20, 0xCu);
      sub_100010474(v21);

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
    sub_1001F6EE8(v15, v59);
    sub_1001F6EE8(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_10001036C(v13, &qword_1006E9538, &unk_10058CCA0);
      v34 = v59;
      sub_10001036C(v15, &qword_1006E9538, &unk_10058CCA0);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_10001036C(v34, &qword_1006E9538, &unk_10058CCA0);
      v35 = v57;
LABEL_14:
      sub_1001F66E0(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    sub_1001F6EE8(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_10001036C(v56, &qword_1006E9538, &unk_10058CCA0);
      v34 = v59;
      sub_10001036C(v15, &qword_1006E9538, &unk_10058CCA0);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_10001036C(v34, &qword_1006E9530, &qword_10058CC98);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    sub_1001F6F58();
    v41 = v27;
    v42 = sub_1005727E8();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_10001036C(v56, &qword_1006E9538, &unk_10058CCA0);
    sub_10001036C(v15, &qword_1006E9538, &unk_10058CCA0);
    v43(v36, v28);
    sub_10001036C(v39, &qword_1006E9538, &unk_10058CCA0);
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
    v3 = sub_100572E38();

    swift_getWitnessTable();
    sub_100572C78();

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
      sub_1001EBFA0(a1, ObjectType, v49);

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

uint64_t sub_1001F1348(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1001F139C(void **a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  if (qword_1006E4EB8 != -1)
  {
    swift_once();
  }

  v7 = sub_10056DF88();
  sub_10000C49C(v7, qword_1006FC748);

  v8 = sub_10056DF68();
  v9 = sub_100573448();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v10 = 136446466;
    aBlock = a1;
    type metadata accessor for Gliss.Transition(0, v6[10], v6[11], v11);
    swift_getWitnessTable();
    v12 = sub_100574408();
    v14 = sub_1000C9784(v12, v13, v58);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (a2)
    {
      v15 = 0x6574616D696E6128;
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v16 = 0xEA00000000002964;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_1000C9784(v15, v16, v58);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to end transition=%{public}s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*a1 + 16);
  swift_beginAccess();
  if (*(a1 + v18) == 2)
  {
    sub_1001F8078(3);
    sub_1001EEB30();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2 & 1;
    *(v19 + 32) = v3;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v3;
    if (a2)
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

        v26 = sub_1000EB9E8(a1 + v21);
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
      sub_1001F64D4(v34, v35, v36);
      sub_1000F3E14(v37, v39);
      sub_1000F3E14(v58[3], v58[4]);
      sub_1000F3E14(v58[5], v58[6]);
      v40 = sub_1001F73D8(a1, v38, v34, v35, v36);

      sub_1001F64AC(v34, v35, v36);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_1001F70F8;
      *(v41 + 24) = v19;
      v56 = sub_1000E23F0;
      v57 = v41;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10007885C;
      v55 = &unk_100691AF0;
      v42 = _Block_copy(&aBlock);

      [v40 addAnimations:v42];
      _Block_release(v42);
      v43 = swift_allocObject();
      v43[2] = sub_1001F7134;
      v43[3] = v20;
      v43[4] = v49;
      v43[5] = a1;
      v56 = sub_1001F7184;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1001F1348;
      v55 = &unk_100691B40;
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
      sub_1000EF8D4(v47, a1 + v50, isUniquelyReferenced_nonNull_native);
      *(v45 + v46) = v51;
      swift_endAccess();
    }

    else
    {
      swift_retain_n();
      v32 = v3;
      sub_1001F1A98(a1, 0, v32, sub_1001F720C, 1.0);
      sub_1001F1C74(a1, v32);
    }
  }

  else
  {
    v29 = sub_10056DF68();
    v30 = sub_100573448();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "   🫷Ignored (Transition Not Active)", v31, 2u);
    }
  }
}

void sub_1001F1A98(uint64_t *a1, char a2, void *a3, uint64_t a4, double a5)
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
    sub_100572E38();

    swift_getWitnessTable();
    sub_100572C78();
  }

  sub_1001EEB3C();
}

uint64_t sub_1001F1C74(char *a1, void *a2)
{
  v58 = *a1;
  v3 = &swift_isaMask;
  v4 = swift_isaMask & *a2;
  v60 = a2;
  v57 = v4;
  v5 = sub_10056CAE8();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  __chkstk_darwin();
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E9530, &qword_10058CC98);
  __chkstk_darwin();
  v59 = &v52 - v9;
  sub_100009DCC(&qword_1006E9538, &unk_10058CCA0);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  __chkstk_darwin();
  v15 = (&v52 - v14);
  sub_1001F8078(5);
  if (qword_1006E4EB8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v16 = sub_10056DF88();
    sub_10000C49C(v16, qword_1006FC748);

    v17 = sub_10056DF68();
    v18 = sub_100573448();

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
      v23 = sub_100574408();
      v25 = sub_1000C9784(v23, v24, v62);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "✅ End of transition=%{public}s", v20, 0xCu);
      sub_100010474(v21);

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
    sub_1001F6EE8(v15, v59);
    sub_1001F6EE8(v13, v32 + v31);
    v33 = *(v27 + 48);
    if (v33(v32, 1, v28) == 1)
    {
      sub_10001036C(v13, &qword_1006E9538, &unk_10058CCA0);
      v34 = v59;
      sub_10001036C(v15, &qword_1006E9538, &unk_10058CCA0);
      v8 = &swift_isaMask;
      if (v33(v34 + v31, 1, v28) != 1)
      {
        goto LABEL_12;
      }

      sub_10001036C(v34, &qword_1006E9538, &unk_10058CCA0);
      v35 = v57;
LABEL_14:
      sub_1001F66E0(0);
      goto LABEL_15;
    }

    v56 = v13;
    v36 = v53;
    sub_1001F6EE8(v32, v53);
    if (v33(v32 + v31, 1, v28) == 1)
    {
      v37 = v27;
      sub_10001036C(v56, &qword_1006E9538, &unk_10058CCA0);
      v34 = v59;
      sub_10001036C(v15, &qword_1006E9538, &unk_10058CCA0);
      (*(v37 + 8))(v36, v28);
      v8 = &swift_isaMask;
LABEL_12:
      sub_10001036C(v34, &qword_1006E9530, &qword_10058CC98);
      v35 = v57;
      goto LABEL_15;
    }

    v38 = v32 + v31;
    v39 = v32;
    v40 = v52;
    (*(v27 + 32))(v52, v38, v28);
    sub_1001F6F58();
    v41 = v27;
    v42 = sub_1005727E8();
    v43 = *(v41 + 8);
    v43(v40, v28);
    sub_10001036C(v56, &qword_1006E9538, &unk_10058CCA0);
    sub_10001036C(v15, &qword_1006E9538, &unk_10058CCA0);
    v43(v36, v28);
    sub_10001036C(v39, &qword_1006E9538, &unk_10058CCA0);
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
    v3 = sub_100572E38();

    swift_getWitnessTable();
    sub_100572C78();

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
      sub_1001EBFA0(a1, ObjectType, v49);

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

uint64_t sub_1001F24CC(uint64_t a1, void (*a2)(__n128), uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_10056CAE8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 16))(v11, a5 + direct field offset for Gliss.Transition.id, v7);
  swift_beginAccess();
  sub_1002769F4(0, v11);
  return swift_endAccess();
}

void sub_1001F2610(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_1001F2640()
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
    v4 = [v5 initWithTarget:sub_100574478() action:"handlePanGestureRecognizer:"];
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
  sub_1000F3E14(v18[1], v18[2]);
  sub_1000F3E14(v18[3], v18[4]);
  sub_1000F3E14(v18[5], v18[6]);
  v13 = [v11 view];
  if (v13)
  {
    v14 = v13;
    sub_1000D3B98(0, &qword_1006E9540, UIView_ptr);
    if ((sub_100573A58() & 1) == 0)
    {
      [v14 removeGestureRecognizer:v11];
    }
  }

  v15 = [v11 view];

  if (!v15 || (sub_1000D3B98(0, &qword_1006E9540, UIView_ptr), v16 = v12, v17 = sub_100573A58(), v15, v16, (v17 & 1) == 0))
  {
    [v12 addGestureRecognizer:v11];
  }
}

void sub_1001F2898(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v286 = v279 - v6;
  v7 = *((v5 & v4) + 0x50);
  v305 = *((v5 & v4) + 0x58);
  v302 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v303 = *(sub_100573C28() - 8);
  __chkstk_darwin();
  v287 = v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v290 = v279 - v10;
  __chkstk_darwin();
  v289 = v279 - v11;
  __chkstk_darwin();
  v291 = v279 - v12;
  __chkstk_darwin();
  v294 = (v279 - v13);
  __chkstk_darwin();
  v293 = v279 - v14;
  v306 = AssociatedTypeWitness;
  isa = AssociatedTypeWitness[-1].isa;
  __chkstk_darwin();
  v295 = v279 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v285 = v279 - v17;
  __chkstk_darwin();
  v19 = v279 - v18;
  __chkstk_darwin();
  v304 = v279 - v20;
  v284 = v21;
  __chkstk_darwin();
  v300 = v22;
  v301 = v279 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v27 = v279 - v26;
  v28 = Gliss.Coordinator.dataSource.getter();
  if (!v28)
  {
    if (qword_1006E4EB8 != -1)
    {
      swift_once();
    }

    v45 = sub_10056DF88();
    sub_10000C49C(v45, qword_1006FC748);
    v306 = sub_10056DF68();
    v46 = sub_100573448();
    if (os_log_type_enabled(v306, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v306, v46, "No Data Source Set", v47, 2u);
    }

    v48 = v306;

    return;
  }

  v29 = v28;
  Gliss.Coordinator.gestureConfiguration.getter(v310);
  v30 = v310[0];
  sub_1000F3E14(v310[1], v310[2]);
  sub_1000F3E14(v310[3], v310[4]);
  sub_1000F3E14(v310[5], v310[6]);
  v288 = a1;
  [a1 translationInView:v30];
  v32 = v31;
  v34 = v33;

  if (v32 == 0.0)
  {
    if (qword_1006E4EB8 != -1)
    {
      swift_once();
    }

    v49 = sub_10056DF88();
    sub_10000C49C(v49, qword_1006FC748);
    v50 = sub_10056DF68();
    v51 = sub_100573448();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = COERCE_DOUBLE(swift_slowAlloc());
      v307 = v53;
      *v52 = 136446210;
      v311 = v32;
      v312 = v34;
      type metadata accessor for CGPoint(0);
      v54 = sub_100572978();
      v56 = sub_1000C9784(v54, v55, &v307);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to compute direction from gesture's translation %{public}s", v52, 0xCu);
      sub_100010474(*&v53);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return;
  }

  v298 = isa;
  v35 = *(v2 + *((swift_isaMask & *v2) + 0x88));
  v292 = TupleTypeMetadata2;
  v296 = v2;
  v297 = v29;
  v299 = v27;
  if (v35)
  {
    v36 = *(*v35 + 120);
    swift_beginAccess();
    v37 = *(v35 + v36);
    v38 = v301;
    if (v37 == 2 || (((v32 >= 0.0) ^ v37) & 1) != 0)
    {

      v2 = v296;
      sub_1001F66E0(0);
      Gliss.Coordinator.item.getter(v38);
      v44 = v302;
      (v305[3].isa)(v299, &v299[*(TupleTypeMetadata2 + 48)], v38, v302);
    }

    else
    {
      v39 = *(*v35 + 104);
      swift_beginAccess();
      (v298[2])(v38, v35 + v39, v306);
      v40 = v25;
      v41 = v299;
      v42 = v305[3].isa;
      v43 = *(v292 + 48);

      v44 = v302;
      (v42)(v41, &v41[v43], v38);
      v25 = v40;
      TupleTypeMetadata2 = v292;

      v2 = v296;
    }
  }

  else
  {
    v38 = v301;
    Gliss.Coordinator.item.getter(v301);
    v57 = &v27[*(TupleTypeMetadata2 + 48)];
    v58 = v27;
    v44 = v302;
    (v305[3].isa)(v58, v57, v38, v302);
  }

  v59 = v298;
  v60 = v298[1];
  v281 = (v298 + 1);
  v282 = v25;
  v60(v38, v306);
  Gliss.Coordinator.gestureConfiguration.getter(&v311);
  v61 = v311;
  sub_1000F3E14(v312, v313);
  sub_1000F3E14(v314, v315);
  sub_1000F3E14(v316, v317);
  v62 = [*&v61 effectiveUserInterfaceLayoutDirection];
  v283 = v60;
  v280 = v61;
  if (v32 < 0.0)
  {
    v63 = v304;
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
    v64 = v294;
    (*(v303 + 2))(v294, v299, v300);
    v65 = v59[6];
    if (v65(v64, 1, v306) != 1)
    {
      (v59[4])(v19, v64, v306);
      v2 = v296;
      v44 = v302;
      goto LABEL_39;
    }

    v66 = v296;
    Gliss.Coordinator.item.getter(v19);
    v67 = v65(v64, 1, v306);
    v2 = v66;
    v68 = v67 == 1;
    v69 = v64;
    v44 = v302;
    if (v68)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v63 = v304;
  if (!v62)
  {
    goto LABEL_26;
  }

  if (v62 != 1)
  {
    goto LABEL_33;
  }

LABEL_30:
  v70 = &v299[*(TupleTypeMetadata2 + 48)];
  v71 = v293;
  (*(v303 + 2))(v293, v70, v300);
  v72 = v59[6];
  if (v72(v71, 1, v306) != 1)
  {
    (v59[4])(v19, v71, v306);
    TupleTypeMetadata2 = v292;
    v2 = v296;
    goto LABEL_39;
  }

  v73 = v296;
  Gliss.Coordinator.item.getter(v19);
  v74 = v72(v71, 1, v306);
  v2 = v73;
  v68 = v74 == 1;
  v69 = v71;
  TupleTypeMetadata2 = v292;
  if (!v68)
  {
LABEL_32:
    (*(v303 + 1))(v69, v300);
  }

LABEL_39:
  v75 = v59[4];
  v75(v63, v19, v306);
  if ((v305[4].isa)(v63, v44))
  {
    v279[1] = v59 + 4;
    v76 = TupleTypeMetadata2;
    v77 = *&v280;
    [v288 velocityInView:v77];
    v79 = v78;
    v81 = v80;
    v82 = sub_1001EF3D0(v63, v32 >= 0.0);
    v295 = v77;
    [v77 bounds];
    Width = CGRectGetWidth(v319);
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
    v294 = v82;
    if (v90 <= 1)
    {
      v91 = v75;
      if (qword_1006E4EB8 != -1)
      {
        swift_once();
      }

      v92 = sub_10056DF88();
      v293 = sub_10000C49C(v92, qword_1006FC748);
      v93 = sub_10056DF68();
      v94 = sub_100573448();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "🤏 Swipe Gesture Began", v95, 2u);
      }

      v96 = sub_10056DF68();
      v97 = sub_100573448();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v99;
        *v98 = 136446210;
        LOBYTE(v309[0]) = v32 >= 0.0;
        v100 = sub_100572978();
        v102 = sub_1000C9784(v100, v101, &v307);

        *(v98 + 4) = v102;
        v82 = v294;
        _os_log_impl(&_mh_execute_header, v96, v97, "   Direction=%{public}s", v98, 0xCu);
        sub_100010474(*&v99);
      }

      v103 = sub_10056DF68();
      v104 = sub_100573448();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = COERCE_DOUBLE(swift_slowAlloc());
        v307 = v106;
        *v105 = 136446210;
        v309[0] = v82;
        v107 = v306;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        type metadata accessor for Gliss.Transition(0, v107, AssociatedConformanceWitness, v109);
        swift_getWitnessTable();
        v110 = sub_100574408();
        v112 = sub_1000C9784(v110, v111, &v307);

        *(v105 + 4) = v112;
        v82 = v294;
        _os_log_impl(&_mh_execute_header, v103, v104, "   Transition=%{public}s", v105, 0xCu);
        sub_100010474(*&v106);
      }

      v76 = v292;
      v75 = v91;
      v2 = v296;
      sub_1001F00EC(v82);
      v63 = v304;
    }

    v113 = [v288 state];
    if (v113 <= 2)
    {
      if (v113 < 2)
      {
        v114 = sub_1001EF140();
        [v114 prepare];

        goto LABEL_69;
      }

      v139 = v283;
      if (v113 == 2)
      {
LABEL_69:
        if (qword_1006E4EB8 != -1)
        {
          swift_once();
        }

        v148 = sub_10056DF88();
        v149 = sub_10000C49C(v148, qword_1006FC748);
        v150 = sub_10056DF68();
        v151 = sub_100573418();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&_mh_execute_header, v150, v151, "🤏 Swipe Gesture Updated", v152, 2u);
        }

        v153 = sub_10056DF68();
        v154 = sub_100573418();
        v155 = os_log_type_enabled(v153, v154);
        v305 = v149;
        if (v155)
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v309[0] = v157;
          *v156 = 136446210;
          v307 = v32;
          v308 = v34;
          type metadata accessor for CGPoint(0);
          v158 = sub_100572978();
          v160 = sub_1000C9784(v158, v159, v309);

          *(v156 + 4) = v160;
          _os_log_impl(&_mh_execute_header, v153, v154, "   Translation=%{public}s", v156, 0xCu);
          sub_100010474(v157);
        }

        v161 = sub_10056DF68();
        v162 = sub_100573418();
        v163 = os_log_type_enabled(v161, v162);
        v164 = v295;
        v165 = v303;
        if (v163)
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v309[0] = v167;
          *v166 = 136446210;
          v307 = v79;
          v308 = v81;
          type metadata accessor for CGPoint(0);
          v168 = sub_100572978();
          v170 = sub_1000C9784(v168, v169, v309);

          *(v166 + 4) = v170;
          _os_log_impl(&_mh_execute_header, v161, v162, "   Velocity=%{public}s", v166, 0xCu);
          sub_100010474(v167);
        }

        v171 = v291;
        [v164 bounds];
        v172 = fabs(v32);
        v173 = v172 * (1.0 / CGRectGetWidth(v320));
        v174 = *(*v82 + 112);
        swift_beginAccess();
        v175 = *(v165 + 2);
        v302 = v174;
        v176 = v82 + v174;
        v177 = v300;
        v178 = v175;
        v175(v171, v176, v300);
        v179 = v298[6];
        v298 += 6;
        v180 = v179;
        if (v179(v171, 1, v306) == 1)
        {

          v181 = *(v165 + 1);
          v181(v171, v177);
          v182 = v177;
          v183 = v178;
          v184 = v180;
        }

        else
        {
          v181 = *(v165 + 1);
          v181(v171, v177);
          v185 = (v82 + *(*v82 + 120));
          swift_beginAccess();
          v186 = v185[1];
          v185[1] = v173;
          v187 = sub_10056DF68();
          v188 = sub_100573418();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            *v189 = 134349056;
            *(v189 + 4) = v173;
            _os_log_impl(&_mh_execute_header, v187, v188, "   Progression Value=%{public}f", v189, 0xCu);
          }

          v183 = v178;
          if (v186 >= 0.45)
          {
            v184 = v180;
            if (v186 <= 0.55)
            {
              v224 = v302;
              if (v173 < 0.45 || v173 > 0.55)
              {
                v272 = sub_1001EF140();
                [v288 locationInView:v164];
                v274 = v273;
                v276 = v275;

                [v272 impactOccurredAtLocation:{v274, v276}];
                v278 = sub_1001F86EC(&v307);
                if (*(v277 + 32) != 2)
                {
                  *(v277 + 32) = v173 >= 0.55;
                }

                (v278)(&v307, 0);
                v182 = v300;
              }

              else
              {

                v182 = v300;
              }

LABEL_110:
              if (v173 <= 1.0)
              {
                v226 = 0;
              }

              else
              {
                v225 = v289;
                v183(v289, v294 + v224, v182);
                v226 = v184(v225, 1, v306) != 1;
                v181(v225, v182);
              }

              v228 = sub_1001F86EC(&v307);
              if (*(v227 + 32) != 2)
              {
                *(v227 + 33) = v226;
              }

              (v228)(&v307, 0);
              v229 = v294;
              v230 = v290;
              v183(v290, v294 + v224, v182);
              v231 = v229;
              LODWORD(v229) = v184(v230, 1, v306) == 1;
              v181(v230, v182);
              v232 = v282;
              v233 = v283;
              v234 = v292;
              v235 = v299;
              if (((v229 | v226) & 1) == 0)
              {
                goto LABEL_125;
              }

              v236 = v295;
              [v295 bounds];
              v237 = CGRectGetWidth(v321) * 0.2;
              v238 = 0.0;
              if (v226)
              {
                [v236 bounds];
                v238 = CGRectGetWidth(v322);
              }

              v239 = v237 * ((v172 - v238) / (v237 + v237 + v172 - v238));
              [v236 bounds];
              v240 = 1.0 / CGRectGetWidth(v323) * v239;
              if (v226)
              {
                v241 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v241 + 8) = v240 + 1.0;

                v242 = sub_10056DF68();
                v243 = sub_100573418();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v241 + 8);
                  v245 = "   Over-swiping Progression Value=%{public}f";
LABEL_123:
                  _os_log_impl(&_mh_execute_header, v242, v243, v245, v244, 0xCu);

                  v234 = v292;
                }
              }

              else
              {
                v246 = v231 + *(*v231 + 120);
                swift_beginAccess();
                *(v246 + 8) = v240;

                v242 = sub_10056DF68();
                v243 = sub_100573418();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134349056;
                  *(v244 + 4) = *(v246 + 8);
                  v245 = "   Eased Progression Value=%{public}f";
                  goto LABEL_123;
                }
              }

LABEL_125:
              sub_1001EEB30();

              swift_unknownObjectRelease();

              v233(v304, v306);
              (*(v232 + 8))(v235, v234);
              return;
            }

            v182 = v300;
          }

          else
          {

            v182 = v300;
            v184 = v180;
          }
        }

        v224 = v302;
        goto LABEL_110;
      }

      goto LABEL_92;
    }

    v138 = v298;
    if (v113 != 3)
    {
      if (v113 == 4)
      {

        v139 = v283;
        if (qword_1006E4EB8 != -1)
        {
          swift_once();
        }

        v199 = sub_10056DF88();
        sub_10000C49C(v199, qword_1006FC748);
        v141 = sub_10056DF68();
        v142 = sub_100573448();
        if (!os_log_type_enabled(v141, v142))
        {
          goto LABEL_98;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❎ Swipe Gesture Cancelled";
      }

      else
      {
        v139 = v283;
        if (v113 != 5)
        {
LABEL_92:
          swift_unknownObjectRelease();

          v198 = v295;

LABEL_99:
          v139(v63, v306);
LABEL_100:
          (*(v282 + 8))(v299, v76);
          return;
        }

        if (qword_1006E4EB8 != -1)
        {
          swift_once();
        }

        v140 = sub_10056DF88();
        sub_10000C49C(v140, qword_1006FC748);
        v141 = sub_10056DF68();
        v142 = sub_100573448();
        if (!os_log_type_enabled(v141, v142))
        {
LABEL_98:

          sub_1001F03F4(v82, 1);
          swift_unknownObjectRelease();

          goto LABEL_99;
        }

        v143 = swift_slowAlloc();
        *v143 = 0;
        v144 = "🤏❌ Swipe Gesture Failed";
      }

      _os_log_impl(&_mh_execute_header, v141, v142, v144, v143, 2u);
      v76 = v292;

      goto LABEL_98;
    }

    if (qword_1006E4EB8 != -1)
    {
      swift_once();
    }

    v190 = sub_10056DF88();
    sub_10000C49C(v190, qword_1006FC748);
    v191 = sub_10056DF68();
    v192 = sub_100573448();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      *v193 = 0;
      _os_log_impl(&_mh_execute_header, v191, v192, "🤏✅ Swipe Gesture Ended", v193, 2u);
      v138 = v298;
      v2 = v296;
    }

    if (Width * 0.5 >= fabs(v79))
    {
      v194 = (v82 + *(*v82 + 120));
      swift_beginAccess();
      if (v194[1] < 0.5)
      {

        v195 = sub_10056DF68();
        v196 = sub_100573448();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          *v197 = 0;
          _os_log_impl(&_mh_execute_header, v195, v196, "   Hasn't reached translation thresholds. Cancelling ❎", v197, 2u);
        }

        sub_1001F03F4(v82, 1);
        swift_unknownObjectRelease();

        v283(v63, v306);
        goto LABEL_139;
      }
    }

    if (v32 < 0.0)
    {
      v200 = v303;
      v201 = v287;
      if (v79 <= 0.0)
      {
LABEL_103:
        v202 = *(*v82 + 112);
        swift_beginAccess();
        v203 = v82 + v202;
        v204 = v300;
        (*(v200 + 2))(v201, v203, v300);
        if ((v138[6])(v201, 1, v306) == 1)
        {
          (*(v200 + 1))(v201, v204);
          v205 = sub_1001EF21C();
          [v205 prepare];

          v206 = *(v2 + *((swift_isaMask & *v2) + 0xA0));
          v207 = v295;
          [v288 locationInView:v295];
          v209 = v208;
          v211 = v210;

          [v206 impactOccurredWithIntensity:0.5 atLocation:{v209, v211}];
          sub_1001F03F4(v82, 1);
          v212 = sub_1001F6680();
          if (*(v212 + 16))
          {
            v213 = direct field offset for Gliss.Transition.id;

            v214 = sub_1000EB9E8(v82 + v213);
            v215 = v283;
            if (v216)
            {
              v217 = *(*(v212 + 56) + 8 * v214);

              sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
              v218 = sub_1005735E8();
              [v217 duration];
              v220 = v219 + -0.1;
              v221 = v215;
              v222 = swift_allocObject();
              *(v222 + 16) = v2;
              v223 = v2;
              OS_dispatch_queue.asyncAfter(_:block:)(sub_1001F6BAC, v222, v220);

              swift_unknownObjectRelease();

              v221(v63, v306);
LABEL_139:
              (*(v282 + 8))(v299, v292);
              return;
            }
          }

          else
          {

            v215 = v283;
          }

          swift_unknownObjectRelease();

          v215(v63, v306);
          goto LABEL_139;
        }

        v251 = v201;
        v252 = v295;

        v253 = v285;
        v254 = v251;
        v255 = v306;
        v75(v285, v254, v306);
        v256 = sub_100572F48();
        (*(*(v256 - 8) + 56))(v286, 1, 1, v256);
        (v138[2])(v301, v253, v255);
        sub_100572F08();
        v303 = v252;

        v257 = v297;
        swift_unknownObjectRetain();
        v298 = v2;
        v300 = v288;
        v296 = sub_100572EF8();
        v258 = (*(v138 + 80) + 56) & ~*(v138 + 80);
        v259 = (v284 + v258 + 7) & 0xFFFFFFFFFFFFFFF8;
        v260 = (v259 + 15) & 0xFFFFFFFFFFFFFFF8;
        v261 = (v260 + 15) & 0xFFFFFFFFFFFFFFF8;
        v262 = v75;
        v263 = (v261 + 15) & 0xFFFFFFFFFFFFFFF8;
        v264 = swift_allocObject();
        v264[2] = v296;
        v264[3] = &protocol witness table for MainActor;
        v265 = v301;
        v266 = v305;
        v264[4] = v302;
        v264[5] = v266;
        v264[6] = v257;
        v267 = v264 + v258;
        v268 = v306;
        v262(v267, v265, v306);
        *(v264 + v259) = v298;
        *(v264 + v260) = v294;
        v269 = v303;
        *(v264 + v261) = v303;
        v270 = v264 + v263;
        *v270 = v79;
        *(v270 + 1) = v81;
        *(v264 + ((v263 + 23) & 0xFFFFFFFFFFFFFFF8)) = v300;
        sub_1001B3FAC(0, 0, v286, &unk_10058CC90, v264);

        swift_unknownObjectRelease();

        v271 = v283;
        v283(v285, v268);
        v271(v304, v268);
        goto LABEL_139;
      }
    }

    else
    {
      v200 = v303;
      v201 = v287;
      if (v79 >= 0.0)
      {
        goto LABEL_103;
      }
    }

    v247 = sub_10056DF68();
    v248 = sub_100573448();
    v249 = os_log_type_enabled(v247, v248);
    v76 = v292;
    if (v249)
    {
      v250 = swift_slowAlloc();
      *v250 = 0;
      _os_log_impl(&_mh_execute_header, v247, v248, "   Going opposite direction. Cancelling ❎", v250, 2u);
      v76 = v292;
    }

    sub_1001F03F4(v82, 1);
    swift_unknownObjectRelease();

    v283(v63, v306);
    goto LABEL_100;
  }

  v115 = v299;
  if (qword_1006E4EB8 != -1)
  {
    swift_once();
  }

  v116 = sub_10056DF88();
  sub_10000C49C(v116, qword_1006FC748);
  v117 = v59[2];
  v118 = v295;
  v119 = v63;
  v117(v295, v63, v306);
  v120 = sub_10056DF68();
  v121 = sub_100573448();
  v122 = os_log_type_enabled(v120, v121);
  v123 = v282;
  if (v122)
  {
    v124 = swift_slowAlloc();
    v305 = v120;
    v125 = v124;
    v126 = COERCE_DOUBLE(swift_slowAlloc());
    v307 = v126;
    *v125 = 136446210;
    v127 = v306;
    v117(v301, v118, v306);
    v128 = sub_100572978();
    v129 = v127;
    v130 = v123;
    v132 = v131;
    v133 = v118;
    v134 = v283;
    v283(v133, v129);
    v135 = sub_1000C9784(v128, v132, &v307);

    *(v125 + 4) = v135;
    v136 = v121;
    v137 = v305;
    _os_log_impl(&_mh_execute_header, v305, v136, "DataSource doesn't allow swipe for item=%{public}s", v125, 0xCu);
    sub_100010474(*&v126);

    swift_unknownObjectRelease();
    v134(v304, v129);
    (*(v130 + 8))(v299, v292);
  }

  else
  {

    swift_unknownObjectRelease();
    v145 = v118;
    v146 = v306;
    v147 = v283;
    v283(v145, v306);
    v147(v119, v146);
    (*(v123 + 8))(v115, TupleTypeMetadata2);
  }
}

uint64_t sub_1001F4B98(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
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
  *(v9 + 144) = sub_100572F08();
  *(v9 + 152) = sub_100572EF8();
  v14 = *((v12 & v11) + 0x58);
  *(v9 + 160) = v14;
  v15 = *(v14 + 40);
  v16 = *((v12 & v11) + 0x50);
  *(v9 + 168) = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v9 + 176) = v17;
  *v17 = v9;
  v17[1] = sub_1001F4DA4;

  return v19(a6, v16, v14);
}

uint64_t sub_1001F4DA4()
{
  *(*v1 + 184) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_1001F5234;
  }

  else
  {
    v4 = sub_1001F4EFC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1001F4EFC()
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
  sub_1001ED478(v1);
  v7 = *((swift_isaMask & *v5) + 0x70);
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  v9[1] = vextq_s8(v29, v29, 8uLL);
  v9[2].i64[0] = v6;
  v9[2].i64[1] = v4;

  sub_1001EC3A8(sub_1001F6FB0, v9, v8);

  sub_1001F139C(v4, 1);
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
    v16 = sub_1001EF140();
    [v12 locationInView:v14];
    [v16 impactOccurredWithIntensity:v15 atLocation:{v17, v18}];

    if (qword_1006E4EB8 != -1)
    {
      swift_once();
    }

    v19 = sub_10056DF88();
    sub_10000C49C(v19, qword_1006FC748);
    v20 = sub_10056DF68();
    v21 = sub_100573448();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      v24 = sub_100573058();
      v26 = sub_1000C9784(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "   Feedback Intensity=%{public}s", v22, 0xCu);
      sub_100010474(v23);
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1001F5234()
{
  v19 = v0;

  if (qword_1006E4EB8 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006FC748);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v7 = sub_100572978();
    v9 = sub_1000C9784(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "   ❌ Failed to commit with error=%{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  v10 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = sub_1001EF2F8();
  [v14 prepare];

  v15 = *(v13 + *((swift_isaMask & *v13) + 0xA8));
  [v10 locationInView:v11];
  [v15 notificationOccurred:2 atLocation:?];

  sub_1001F03F4(v12, 1);

  v16 = v0[1];

  return v16();
}

void sub_1001F5494(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1001F2898(v4);
}

Swift::Bool __swiftcall Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0xB0));
  if (!v2)
  {
    return 1;
  }

  v3 = v1;
  sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
  v5 = v2;
  if ((sub_100573A58() & 1) == 0)
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

    sub_1000F3E14(v59[3], v59[4]);
    sub_1000F3E14(v59[5], v59[6]);
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
          sub_1000F3E14(v15, v14);

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
          sub_1000F3E14(v15, v14);

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
    sub_1000E672C(v61, v62);

    sub_1000F3E14(v60[1], v60[2]);
    sub_1000F3E14(v33, v32);
    sub_1000F3E14(v63, v64);
    if (v33)
    {
      v35 = v33(v7, v9, v11);
      sub_1000F3E14(v33, v32);
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
        if (qword_1006E4EB8 != -1)
        {
          swift_once();
        }

        v50 = sub_10056DF88();
        sub_10000C49C(v50, qword_1006FC748);
        v51 = sub_10056DF68();
        v52 = sub_100573448();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v58 = v54;
          *v53 = 136446210;
          type metadata accessor for CGPoint(0);
          v55 = sub_100572978();
          v57 = sub_1000C9784(v55, v56, &v58);

          *(v53 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v51, v52, "🤏🙂‍↔️ Swipe Gesture ignored: hit test not allowed at location %{public}s", v53, 0xCu);
          sub_100010474(v54);
        }

        goto LABEL_37;
      }
    }

    if (qword_1006E4EB8 != -1)
    {
      swift_once();
    }

    v36 = sub_10056DF88();
    sub_10000C49C(v36, qword_1006FC748);
    v37 = v3;
    v38 = sub_10056DF68();
    v39 = sub_100573448();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v40 = 136446466;
      v65 = v9;
      v66 = v11;
      type metadata accessor for CGPoint(0);
      v41 = sub_100572978();
      v43 = sub_1000C9784(v41, v42, &v58);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      Gliss.Coordinator.gestureConfiguration.getter(&v65);
      v45 = v66;
      v44 = v67;

      sub_1000F3E14(v68, v69);
      sub_1000F3E14(v70, v71);
      if (v45 != 0.0)
      {
        v46 = swift_allocObject();
        *(v46 + 16) = v45;
        *(v46 + 24) = v44;
      }

      sub_100009DCC(&qword_1006E93C8, &qword_10058CB40);
      v47 = sub_100572978();
      v49 = sub_1000C9784(v47, v48, &v58);

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

  if (qword_1006E4EB8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v24 = sub_10056DF88();
  sub_10000C49C(v24, qword_1006FC748);
  v25 = sub_10056DF68();
  v26 = sub_100573448();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v60[0] = v28;
    *v27 = 136446210;
    v65 = v9;
    v66 = v11;
    type metadata accessor for CGPoint(0);
    v29 = sub_100572978();
    v31 = sub_1000C9784(v29, v30, v60);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "🤏🙂‍↔️ Swipe Gesture ignored: horizontal velocity too low %{public}s", v27, 0xCu);
    sub_100010474(v28);
  }

  return 0;
}

uint64_t sub_1001F5BDC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = Gliss.Coordinator.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t sub_1001F5C34(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1001F6748(v7);

  return v9 & 1;
}

id Gliss.Coordinator.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Gliss.Coordinator(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1001F5D80(char *a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);

  sub_1000F3E14(v3, v4);
  sub_1000F3E14(v5, v6);
  sub_1000F3E14(v7, v8);

  v9 = *((swift_isaMask & *a1) + 0x78);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v9], AssociatedTypeWitness);
  v11 = *((swift_isaMask & *a1) + 0x80);
  v12 = sub_100573C28();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  v13 = *&a1[*((swift_isaMask & *a1) + 0xB0)];
}

void sub_1001F605C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

id sub_1001F60C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  *&v4[v13] = sub_1000F4874(_swiftEmptyArrayStorage);
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
  sub_1000E672C(v15, v16);
  sub_1000E672C(v17, v18);
  sub_1000E672C(v28, v19);

  v33 = v29;
  v34 = v30;
  v35 = a1;
  sub_1001EC3A8(sub_1001F728C, v32, a4);

  v24 = type metadata accessor for Gliss.Coordinator(0, v29, v30, v23);
  v36.receiver = v4;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, "init");
  sub_1001F2640();

  return v25;
}

uint64_t sub_1001F6458()
{

  return swift_deallocObject();
}

void sub_1001F6498(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    sub_1001F64AC(result, a2, a3);
  }
}

void sub_1001F64AC(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
  }
}

id sub_1001F64C0(id result, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1001F64D4(result, a2, a3);
  }

  return result;
}

id sub_1001F64D4(id result, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_1001F64E8()
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
    sub_1001F64AC(*(v0 + v6), *(v0 + v6 + 8), v7);
  }

  return swift_deallocObject();
}

void sub_1001F65B8(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(*a1 + 80) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_1001EE348(a1, a2, (v2 + v4), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1001F664C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001F6680()
{
  v1 = *((swift_isaMask & *v0) + 0x90);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001F66E0(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x88);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_1001EEC04(v3);
}

uint64_t sub_1001F6748(void *a1)
{
  Gliss.Coordinator.gestureConfiguration.getter(v19);

  sub_1000F3E14(v19[1], v19[2]);
  sub_1000F3E14(v19[3], v19[4]);
  v2 = v20;
  if (!v20)
  {
    return 1;
  }

  v3 = v21;
  v4 = v20(a1);
  sub_1000F3E14(v2, v3);
  if (v4)
  {
    return 1;
  }

  if (qword_1006E4EB8 != -1)
  {
    swift_once();
  }

  v6 = sub_10056DF88();
  sub_10000C49C(v6, qword_1006FC748);
  v7 = a1;
  v8 = sub_10056DF68();
  v9 = sub_100573448();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_1005728D8();
    v16 = v15;

    v17 = sub_1000C9784(v14, v16, &v18);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "🤏🙂‍↔️ Swipe Gesture ignored: conflicts with other gesture: %{public}s", v10, 0xCu);
    sub_100010474(v11);
  }

  return 0;
}

uint64_t sub_1001F6970(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_100573C28();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1001F6A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001F6AC8(uint64_t *a1, int a2)
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

uint64_t sub_1001F6B10(uint64_t result, int a2, int a3)
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

uint64_t sub_1001F6B74()
{

  return swift_deallocObject();
}

void sub_1001F6BAC()
{
  v0 = sub_1001EF21C();
  [v0 impactOccurredWithIntensity:1.0 atLocation:{0.0, 0.0}];
}

uint64_t sub_1001F6C08()
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

uint64_t sub_1001F6D44(uint64_t a1)
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
  v15[1] = sub_10000CB98;

  return sub_1001F4B98(v14, a1, v8, v9, v11, v1 + v4, v10, v12, v13);
}

uint64_t sub_1001F6EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E9538, &unk_10058CCA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001F6F58()
{
  result = qword_1006E6A70;
  if (!qword_1006E6A70)
  {
    sub_10056CAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6A70);
  }

  return result;
}

uint64_t sub_1001F6FC8(void *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *v2;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  return sub_1001EC09C(v3, v2, ObjectType, *(v4 + 80), v5);
}

uint64_t sub_1001F709C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F70B8()
{

  return swift_deallocObject();
}

uint64_t sub_1001F713C()
{

  return swift_deallocObject();
}

uint64_t sub_1001F71BC(uint64_t (**a1)(uint64_t *, char *))
{
  v2 = *a1;
  v5 = *(v1 + 32);
  v4 = 1;
  return v2(&v5, &v4);
}

uint64_t sub_1001F7224(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = *(v1 + 32);
  return v2(&v4);
}

uint64_t sub_1001F7360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  sub_1001F77C8(a1, a2, v7, a4, a5);
  return v10;
}

id sub_1001F73D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v38 = *&a3;
  v9 = *(*a1 + 80);
  v10 = *(sub_100573C28() - 8);
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

uint64_t *sub_1001F77C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
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
  *(v5 + v14) = sub_100572D88();
  v16 = *(*v5 + 152);
  swift_getFunctionTypeMetadata2();
  *(v5 + v16) = sub_100572D88();
  v17 = v5 + *(*v5 + 168);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 2;
  (*(v12 + 32))(v5 + *(*v5 + 104), a1, v11);
  swift_beginAccess();
  v18 = sub_100573C28();
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
  v4 = sub_10056CAE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001F7B08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(**a1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_1001F7BA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1001F7D58@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(**a1 + 112);
  swift_beginAccess();
  v7 = sub_100573C28();
  return (*(*(v7 - 8) + 16))(a4, v5 + v6, v7);
}

uint64_t sub_1001F7DFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100573C28();
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
  v4 = sub_100573C28();
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

uint64_t sub_1001F8078(char a1)
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
  sub_100572E38();

  sub_100572DE8();
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
  sub_100572E38();

  sub_100572DE8();
  return swift_endAccess();
}

uint64_t Gliss.Transition.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = *(v4 + *(*v4 + 160));
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_1000EBA6C(a1);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    memset(v13, 0, sizeof(v13));
    goto LABEL_6;
  }

  sub_100081F38(*(v6 + 56) + 32 * v8, v13);

LABEL_6:
  sub_100009DCC(&qword_1006EA040, &unk_10058A5D0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v11 ^ 1u, 1, AssociatedTypeWitness);
}

__n128 sub_1001F85B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

__n128 sub_1001F8618(uint64_t a1, uint64_t a2)
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
  v3 = sub_100573C28();
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
  v23._countAndFlagsBits = sub_10056CAB8();
  sub_100572A98(v23);

  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  sub_100572A98(v24);
  sub_100572A98(v21);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0x6D6F726620202020;
  v25._object = 0xEA0000000000203ALL;
  sub_100572A98(v25);
  v11 = *(*v0 + 104);
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v11, v2);
  sub_100574438();
  v12 = *(v7 + 8);
  v12(v10, v2);
  v26._countAndFlagsBits = 10;
  v26._object = 0xE100000000000000;
  sub_100572A98(v26);
  sub_100572A98(v20);

  v13 = *(*v1 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v13, v3);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v27._object = 0xED00000A656E6F6ELL;
    v27._countAndFlagsBits = 0x203A6F7420202020;
    sub_100572A98(v27);
  }

  else
  {
    v14 = v17;
    (*(v7 + 32))(v17, v6, v2);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0x203A6F7420202020;
    v28._object = 0xE800000000000000;
    sub_100572A98(v28);
    sub_100574438();
    v29._countAndFlagsBits = 10;
    v29._object = 0xE100000000000000;
    sub_100572A98(v29);
    sub_100572A98(v18);

    v12(v14, v2);
  }

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_100573ED8(19);

  v19._countAndFlagsBits = 0xD000000000000010;
  v19._object = 0x80000001005B1D50;
  v15 = v1 + *(*v1 + 120);
  swift_beginAccess();
  v30._countAndFlagsBits = Gliss.Progression.description.getter(*v15, *(v15 + 8));
  sub_100572A98(v30);

  v31._countAndFlagsBits = 10;
  v31._object = 0xE100000000000000;
  sub_100572A98(v31);
  sub_100572A98(v19);

  v32._countAndFlagsBits = 10528;
  v32._object = 0xE200000000000000;
  sub_100572A98(v32);
  return v22[0];
}

uint64_t *Gliss.Transition.deinit()
{
  v1 = *v0;
  v2 = direct field offset for Gliss.Transition.id;
  v3 = sub_10056CAE8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(v1 + 80));
  v4 = *(*v0 + 112);
  v5 = sub_100573C28();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1001F64AC(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8), *(v0 + *(*v0 + 136) + 16));

  return v0;
}

uint64_t Gliss.Transition.__deallocating_deinit()
{
  Gliss.Transition.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001F8DC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for Gliss.Transition.id;
  v5 = sub_10056CAE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1001F8E78()
{

  return swift_deallocObject();
}

unint64_t Gliss.Progression.description.getter(char a1, double a2)
{
  sub_100009DCC(&qword_1006E93B8, &qword_10058CB38);
  v3._countAndFlagsBits = sub_100572978();
  sub_100572A98(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  sub_100572A98(v4);
  v5._countAndFlagsBits = 0x6F69746365726964;
  v5._object = 0xEA00000000003D6ELL;
  sub_100572A98(v5);

  v6._countAndFlagsBits = sub_100573058();
  sub_100572A98(v6);

  v7._countAndFlagsBits = 0x3D65756C6176;
  v7._object = 0xE600000000000000;
  sub_100572A98(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  sub_100572A98(v8);
  return 0xD000000000000014;
}

unint64_t sub_1001F90F4()
{
  result = qword_1006E6A68;
  if (!qword_1006E6A68)
  {
    sub_10056CAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6A68);
  }

  return result;
}

unint64_t sub_1001F9150()
{
  result = qword_1006E9550;
  if (!qword_1006E9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9550);
  }

  return result;
}

unint64_t sub_1001F91A8()
{
  result = qword_1006E9558[0];
  if (!qword_1006E9558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006E9558);
  }

  return result;
}

__n128 sub_1001F9210(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1001F9230@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 120);
  swift_beginAccess();
  result = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001F9298(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2 + *(**a2 + 120);
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1001F9310@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 128);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1001F93BC(uint64_t a1)
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

uint64_t sub_1001F93D8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1001F942C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001F9490(uint64_t result, unsigned int a2)
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

uint64_t sub_1001F94CC(uint64_t a1)
{
  result = sub_10056CAE8();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_100573C28();
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

__n128 sub_1001F96D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001F96E8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1001F973C(uint64_t result, unsigned int a2, unsigned int a3)
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

  v7 = sub_1005726A8();
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
    v9 = sub_1000EB89C(v4, v8 | 0x8000000000000000);
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
    sub_1000C5FB8();
    v6 = sub_100573D38();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (sub_100574498() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (sub_100574498() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = sub_100574498();

  return v10 & 1;
}

uint64_t sub_1001F9A68(uint64_t a1)
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

uint64_t sub_1001F9A84(uint64_t a1, unsigned int a2)
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

uint64_t sub_1001F9ACC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001F9B10(uint64_t result, unsigned int a2)
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

uint64_t sub_1001F9B40()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E95E0);
  sub_10000C49C(v0, qword_1006E95E0);
  return sub_10056DF78();
}

uint64_t static StagedInstall.current()()
{
  v0 = sub_10056C8A8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v45 - v4;
  __chkstk_darwin();
  v7 = &v45 - v6;
  if (qword_1006E5608 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (qword_1006E4EC0 != -1)
  {
    swift_once();
  }

  v8 = sub_10056DF88();
  sub_10000C49C(v8, qword_1006E95E0);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Checking for a staged install of Music", v11, 2u);
  }

  sub_10056C7B8();
  v12 = [objc_opt_self() defaultManager];
  sub_10056C848();
  v13 = sub_100572898();

  v14 = [v12 fileExistsAtPath:v13];

  v15 = sub_10056DF68();
  if (v14)
  {
    v16 = sub_100573428();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Found Music.app in staged_system_apps", v17, 2u);
    }

    v18 = sub_10056C8C8();
    v23 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v23 != 2 || *(v18 + 16) == *(v18 + 24))
      {
LABEL_23:
        sub_10008246C(v18, v19);
        v15 = sub_10056DF68();
        v20 = sub_100573428();
        if (os_log_type_enabled(v15, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v23)
    {
      if (v18 == v18 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v19 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v24 = v18;
    v47 = v19;
    v25 = [objc_opt_self() mainBundle];
    v26 = [v25 executableURL];

    if (!v26)
    {
LABEL_39:
      v36 = sub_10056DF68();
      v37 = sub_100573428();
      if (os_log_type_enabled(v36, v37))
      {
        v29 = 2;
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unable to read data of running executable", v38, 2u);

        sub_10008246C(v24, v47);
        (*(v1 + 8))(v7, v0);
        return v29;
      }

      sub_10008246C(v24, v47);

      goto LABEL_27;
    }

    sub_10056C838();

    (*(v1 + 32))(v5, v3, v0);
    v27 = sub_10056C8C8();
    v31 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_38;
      }

      v32 = *(v27 + 16);
      v33 = *(v27 + 24);
    }

    else
    {
      if (!v31)
      {
        if ((v28 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v45 = v27;
        v46 = v28;
        v39 = sub_1001FA768(v27, v28, v24, v47);
        v40 = sub_10056DF68();
        if (v39)
        {
          v41 = sub_100573448();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);
          }
        }

        else
        {
          v41 = sub_100573428();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        sub_10008246C(v45, v46);
        sub_10008246C(v24, v47);
        v44 = *(v1 + 8);
        v44(v5, v0);
        v44(v7, v0);
        return v39;
      }

      v32 = v27;
      v33 = v27 >> 32;
    }

    if (v32 != v33)
    {
      goto LABEL_42;
    }

LABEL_38:
    v34 = v27;
    v35 = v28;
    (*(v1 + 8))(v5, v0);
    sub_10008246C(v34, v35);
    goto LABEL_39;
  }

  v20 = sub_100573448();
  if (!os_log_type_enabled(v15, v20))
  {
LABEL_26:

LABEL_27:
    (*(v1 + 8))(v7, v0);
    return 2;
  }

  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v15, v20, v22, v21, 2u);

  (*(v1 + 8))(v7, v0);
  return 2;
}

uint64_t sub_1001FA2F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_10056C498();
    if (v10)
    {
      v11 = sub_10056C4C8();
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
      result = sub_10056C4B8();
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
  v10 = sub_10056C498();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_10056C4C8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_10056C4B8();
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

uint64_t sub_1001FA520(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1001FA6B0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10008246C(a3, a4);
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
  sub_1001FA2F0(v13, a3, a4, &v12);
  v10 = v4;
  sub_10008246C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1001FA6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_10056C498();
  v11 = result;
  if (result)
  {
    result = sub_10056C4C8();
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

  sub_10056C4B8();
  sub_1001FA2F0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1001FA768(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1000F54C8(a3, a4);
          return sub_1001FA520(v13, a2, a3, a4) & 1;
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

uint64_t sub_1001FA980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int64_t a9@<X8>, unsigned __int8 a10)
{
  v122 = a8;
  v117 = a7;
  v135 = a6;
  v121 = a4;
  v120 = a3;
  v119 = a2;
  v118 = a1;
  LODWORD(v12) = a10;
  v132 = sub_10056C798();
  v13 = *(v132 - 8);
  __chkstk_darwin();
  v131 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  __chkstk_darwin();
  v133 = &v107 - v15;
  v16 = sub_10056C8A8();
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
  sub_100009DCC(&qword_1006E8B58, &qword_10058B5F8);
  __chkstk_darwin();
  v22 = &v107 - v21;
  v23 = sub_10056C468();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E5608 != -1)
  {
LABEL_71:
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_10056C448();
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
        v22 = sub_100574178();
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
        if (qword_1006E4EC8 != -1)
        {
          swift_once();
        }

        v29 = sub_10000C49C(v141, static URL.tapToRadarDirectory);
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
          v30 = sub_100573F58();
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

        v26 = sub_1001FBFE8(a9, v30);
        v33 = v32;

        ++a9;
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_1000CF25C(0, *(v130 + 2) + 1, 1, v130);
          }

          v24 = *(v130 + 2);
          v34 = *(v130 + 3);
          if (v24 >= v34 >> 1)
          {
            v130 = sub_1000CF25C((v34 > 1), v24 + 1, 1, v130);
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
      v44 = &qword_1006E3FF8[1];
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

        sub_1000F54C8(v23, v50);
        if (v44[473] != -1)
        {
          swift_once();
        }

        sub_10000C49C(v43, static URL.tapToRadarDirectory);
        v143[0] = 47;
        v143[1] = 0xE100000000000000;
        v145._countAndFlagsBits = v48;
        v134 = v47;
        v145._object = v47;
        sub_100572A98(v145);
        v52 = v131;
        v51 = v132;
        (*v127)(v131, v128, v132);
        sub_1000C5FB8();
        v53 = v136;
        sub_10056C898();
        (*v126)(v52, v51);

        v12 = v137;
        sub_10056C928();
        v24 = v50;
        if (v12)
        {
          v54 = v141;
          if (qword_1006E4ED0 != -1)
          {
            swift_once();
          }

          v55 = sub_10056DF88();
          sub_10000C49C(v55, qword_1006E95F8);
          swift_errorRetain();
          v56 = sub_10056DF68();
          v57 = sub_100573428();

          v44 = qword_1006E3FF8 + 8;
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
            sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
            v62 = sub_100572978();
            v64 = sub_1000C9784(v62, v63, v143);

            *(v60 + 4) = v64;
            _os_log_impl(&_mh_execute_header, v56, v57, "Tap-to-Radar Attachment file write failed with error: %{public}s", v60, 0xCu);
            sub_100010474(v61);
            v43 = v141;

            v24 = v59;
            v23 = v137;

            v44 = qword_1006E3FF8 + 8;

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
          v44 = qword_1006E3FF8 + 8;
        }

        v26 = v134;
        v22 &= v22 - 1;
        (*v125)(v65, v66, 1, v43);

        sub_10008246C(v23, v24);
        v67 = (*v124)(v65, 1, v43);
        a5 = v123;
        if (v67 == 1)
        {
          sub_1000C6EF4(v65);
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
            v115 = sub_1000CFAB4(0, *(v115 + 2) + 1, 1, v115);
          }

          v23 = *(v115 + 2);
          v69 = *(v115 + 3);
          if (v23 >= v69 >> 1)
          {
            v115 = sub_1000CFAB4((v69 > 1), v23 + 1, 1, v115);
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

      sub_1000DA504(v71);
      v72 = v143[0];
      v73 = *(v143[0] + 16);
      if (v73)
      {
        v143[0] = _swiftEmptyArrayStorage;
        sub_1000CC614(0, v73, 0);
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
          v81 = sub_10056C848();
          v83 = v82;
          (*v139)(v79, v80);
          v143[0] = v75;
          v85 = *(v75 + 2);
          v84 = *(v75 + 3);
          if (v85 >= v84 >> 1)
          {
            sub_1000CC614((v84 > 1), v85 + 1, 1);
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

      sub_100009DCC(&qword_1006E6258, &qword_100596C00);
      v87 = *(sub_10056C3A8() - 8);
      v88 = *(v87 + 72);
      v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1005824E0;
      sub_10056C378();
      sub_10056C378();
      sub_10056C378();
      sub_10056C378();
      sub_10056C378();
      v91 = [objc_opt_self() mainBundle];
      v92 = [v91 bundleIdentifier];

      v93 = v122;
      if (v92)
      {
        sub_1005728D8();
      }

      sub_10056C378();

      v143[0] = v130;
      v94 = sub_100009DCC(&unk_1006E84C0, &unk_1005854A0);
      v95 = sub_1000E81D0();
      sub_100572798();
      sub_10056C378();

      v143[0] = v75;
      v140 = v95;
      v141 = v94;
      sub_100572798();
      sub_10056C378();

      v96 = *(v93 + 16);
      v97 = _swiftEmptyArrayStorage;
      if (v96)
      {
        v137 = v90 + v89;
        v138 = v88;
        v139 = v90;
        v143[0] = _swiftEmptyArrayStorage;
        sub_1000CC614(0, v96, 0);
        v97 = v143[0];
        v98 = (v93 + 32);
        do
        {
          v99 = *v98++;
          v142 = qword_10058D150[v99];
          v100 = sub_100574408();
          v102 = v101;
          v143[0] = v97;
          v104 = v97[2];
          v103 = v97[3];
          if (v104 >= v103 >> 1)
          {
            sub_1000CC614((v103 > 1), v104 + 1, 1);
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
      sub_100572798();

      sub_10056C378();

      v143[0] = v130;
      sub_1000DA410(v75);

      sub_10056C378();

      sub_10056C378();

      v106 = v107;
      sub_10056C3C8();
      sub_10056C3E8();
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

uint64_t sub_1001FBB5C()
{
  v0 = sub_10056C798();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  __chkstk_darwin();
  v5 = &v8 - v4;
  v6 = sub_10056C8A8();
  sub_10000C910(v6, static URL.tapToRadarDirectory);
  sub_10000C49C(v6, static URL.tapToRadarDirectory);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return sub_10056C878();
}

uint64_t URL.tapToRadarDirectory.unsafeMutableAddressor()
{
  if (qword_1006E4EC8 != -1)
  {
    swift_once();
  }

  v0 = sub_10056C8A8();

  return sub_10000C49C(v0, static URL.tapToRadarDirectory);
}

uint64_t static URL.tapToRadarDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E4EC8 != -1)
  {
    swift_once();
  }

  v2 = sub_10056C8A8();
  v3 = sub_10000C49C(v2, static URL.tapToRadarDirectory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001FBE28()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E95F8);
  sub_10000C49C(v0, qword_1006E95F8);
  return sub_10056DF78();
}

Swift::Int sub_1001FBED0()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(qword_10058D150[v1]);
  return sub_1005746C8();
}

Swift::Int sub_1001FBF58(uint64_t a1)
{
  v2 = *v1;
  sub_100574678();
  sub_100574688(qword_10058D150[v2]);
  return sub_1005746C8();
}

uint64_t sub_1001FBFA4@<X0>(Swift::Int *a1@<X0>, MusicCore::TTR::Keyword_optional *a2@<X8>)
{
  result = _s9MusicCore3TTRO7KeywordO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_1001FBFE8(uint64_t a1, UIImage *a2)
{
  v4 = sub_10056C798();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4EC8 != -1)
  {
    swift_once();
  }

  sub_10000C49C(v8, static URL.tapToRadarDirectory);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_100573ED8(24);

  v20 = 0xD000000000000012;
  v21 = 0x80000001005B1EF0;
  v19[1] = a1;
  v22._countAndFlagsBits = sub_100574408();
  sub_100572A98(v22);

  v23._countAndFlagsBits = 1735420462;
  v23._object = 0xE400000000000000;
  sub_100572A98(v23);
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_1000C5FB8();
  sub_10056C898();
  (*(v5 + 8))(v7, v4);

  v12 = UIImageJPEGRepresentation(a2, 85.0);
  if (v12)
  {
    v13 = v12;
    v14 = sub_10056C918();
    v16 = v15;

    sub_10056C928();
    sub_10008246C(v14, v16);
  }

  v17 = sub_10056C848();
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

unint64_t sub_1001FC4D8()
{
  result = qword_1006E9610;
  if (!qword_1006E9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9610);
  }

  return result;
}

uint64_t static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 89) = a1;
  *(v3 + 32) = sub_100572F08();
  *(v3 + 40) = sub_100572EF8();
  v5 = sub_100572E78();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_1001FC5EC, v5, v4);
}

uint64_t sub_1001FC5EC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 89);
  v5 = sub_100572EF8();
  *(v1 + 64) = v5;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v1;
  v7[1] = sub_1001FC708;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 88, v5, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001005ACD10, sub_1001093B0, v6, &type metadata for Bool);
}

uint64_t sub_1001FC708()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100206804, v3, v2);
}

void sub_1001FC868(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1001FC8D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006E6B48, &qword_100586920);
    v2 = sub_1005741C8();
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
    sub_100081F38(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000F51DC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000F51DC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000F51DC(v31, v32);
    v16 = sub_100573E58(v2[5]);
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
    sub_1000F51DC(v32, (v2[7] + 32 * v9));
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

void sub_1001FCB9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006E6B48, &qword_100586920);
    v2 = sub_1005741C8();
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
    sub_1000F51DC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1000F51DC(v29, v30);
    v14 = sub_100573E58(v2[5]);
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
    sub_1000F51DC(v30, (v2[7] + 32 * v9));
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
  if (qword_1006E4ED8 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.EnablementContext.action;
}

uint64_t *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor()
{
  if (qword_1006E4EE0 != -1)
  {
    swift_once();
  }

  return &static CloudLibrary.StatusObserver.shared;
}

uint64_t CloudLibrary.EnablementContext.title.getter(unsigned __int8 a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 > 6u)
  {
    sub_100572818();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1006E4C60 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_100572818();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1006E4C60 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.EnablementContext.message.getter(unsigned __int8 a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = (v3 + 16);
  if (a1 > 6u)
  {
    sub_100572818();
    (*v8)(v5, v7, v2);
    if (qword_1006E4C60 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_100572818();
  (*v8)(v5, v7, v2);
  if (qword_1006E4C60 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_3:
  v9 = qword_1006FC3B8;
  sub_10056CBC8();
  v10 = sub_100572948();
  (*(v3 + 8))(v7, v2);
  return v10;
}

Swift::Int sub_1001FD5FC()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(~v1);
  return sub_1005746C8();
}

Swift::Int sub_1001FD674(uint64_t a1)
{
  v2 = *v1;
  sub_100574678();
  sub_100574688(~v2);
  return sub_1005746C8();
}

uint64_t sub_1001FD6B8@<X0>(Swift::Int *a1@<X0>, MusicCore::CloudLibrary::FailureType_optional *a2@<X8>)
{
  result = _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t CloudLibrary.Status.shouldDisplayBanner.getter(uint64_t a1)
{
  if (qword_1006E4EE0 != -1)
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
  v5 = sub_100009DCC(&qword_1006E9638, &qword_10058D178);
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
  v1 = sub_1001FD894;
  if (a1 >> 30)
  {
    if (a1 >> 30 != 2)
    {
      return 0;
    }

    v1 = sub_1001FD894;
    if (a1 >> 1 != 1073741825)
    {
      return 0;
    }
  }

  return v1;
}

void sub_1001FD894()
{
  if (qword_1006E4EE0 != -1)
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

uint64_t sub_1001FD968()
{
  sub_10056CC38();
  __chkstk_darwin();
  v0 = sub_100572888();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v11[-v4];
  sub_100572818();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v6 = qword_1006FC3B8;
  sub_10056CBC8();
  v7 = sub_100572948();
  v9 = v8;
  result = (*(v1 + 8))(v5, v0);
  *&static CloudLibrary.EnablementContext.action = v7;
  *(&static CloudLibrary.EnablementContext.action + 1) = v9;
  return result;
}

uint64_t static CloudLibrary.EnablementContext.action.getter(uint64_t a1, uint64_t a2)
{
  if (qword_1006E4ED8 != -1)
  {
    swift_once();
  }

  v2 = static CloudLibrary.EnablementContext.action;

  return v2;
}

uint64_t sub_1001FDBB4()
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  swift_allocObject();
  result = sub_1001FDC50();
  static CloudLibrary.StatusObserver.shared = result;
  return result;
}

uint64_t static CloudLibrary.StatusObserver.shared.getter()
{
  if (qword_1006E4EE0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001FDC50()
{
  v1 = v0;
  v2 = sub_100009DCC(&unk_1006E9658, &qword_10058D1D8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v31[-v4];
  v33 = 2;
  v32[0] = 0xD000000000000014;
  v32[1] = 0x80000001005AC6E0;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_1000C5FB8();
  UserDefault.init(wrappedValue:defaults:key:)(&v33, v6, v32, &type metadata for String, &type metadata for Bool, v7, &v34);
  v8 = v35;
  v9 = v36;
  *(v1 + 16) = v34;
  *(v1 + 32) = v8;
  *(v1 + 40) = v9;
  *(v1 + 48) = _swiftEmptyArrayStorage;
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static ApplicationCapabilities.Controller.shared;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v10 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver__status;
  *&v34 = 0x80000000;

  sub_10056E438();
  (*(v3 + 32))(v1 + v10, v5, v2);
  *(v1 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;
  sub_100009DCC(&unk_1006E84D0, &unk_10058AE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100580F90;
  if (qword_1006E4DA0 != -1)
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
  v15 = qword_1006E4DC0;
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
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v23 = v17;

  v24 = v20;

  Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_10020657C, v22);

  swift_beginAccess();
  sub_100572CE8();
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  swift_endAccess();
  v25 = MPCloudControllerIsUpdateInProgressDidChangeNotification;
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 sharedCloudController];
  v29 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 80) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v27, v28, 1, 1, sub_100206584, v29);

  return v1;
}

void sub_1001FE154(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v24[4] = v20;
    v24[5] = v21;
    v25 = v22;
    v26 = v23;
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    sub_100108D2C(v24);
    if (v25 == 2)
    {
    }

    else
    {
      v3 = sub_100574498();

      if ((v3 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10056E478();

        v7 = v16;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v16 = 2147483649;

        sub_10056E488();
        sub_1001FFB3C(v7);
        goto LABEL_9;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_100108D2C(&v16);
    if ((BYTE2(v16) & 1) == 0)
    {
      v4 = [objc_opt_self() sharedCloudController];
      if (v4)
      {
        v5 = v4;
        *&v10 = sub_10020658C;
        *(&v10 + 1) = v2;
        *&v8 = _NSConcreteStackBlock;
        *(&v8 + 1) = 1107296256;
        *&v9 = sub_1000128FC;
        *(&v9 + 1) = &unk_100692910;
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

uint64_t sub_1001FE4B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100570B88();
  v18 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100570BC8();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
  v12 = sub_1005735E8();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1002065DC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_100692960;
  v14 = _Block_copy(aBlock);
  swift_errorRetain();
  v15 = a1;

  sub_100570BA8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100206434(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009DCC(&unk_1006E9B30, &qword_10058AF10);
  sub_100010BC0(&qword_1006EBE80, &unk_1006E9B30, &qword_10058AF10, &protocol conformance descriptor for [A]);
  sub_100573DA8();
  sub_100573608();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_1001FE7C8(uint64_t a1, void *a2, uint64_t a3)
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
    sub_10056E478();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_10056E488();
    sub_1001FFB3C(v4);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E488();
  sub_1001FFB3C(v4);
}

uint64_t sub_1001FE968(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100200230();
  }

  return result;
}

void *sub_1001FE9C0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = v1;
  v9 = v2;
  v3 = sub_100009DCC(&qword_1006E9638, &qword_10058D178);
  result = UserDefault.wrappedValue.getter(v3, &v6);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v5 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v7 = 2147483650;

    sub_10056E488();
    return sub_1001FFB3C(v5);
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
  v3 = sub_100009DCC(&qword_1006E9638, &qword_10058D178);
  UserDefault.wrappedValue.getter(v3, &v5);
  return v5;
}

void *CloudLibrary.StatusObserver.hasDisregardedBanner.setter(char a1)
{
  v3 = a1;
  swift_beginAccess();
  v1 = sub_100009DCC(&qword_1006E9638, &qword_10058D178);
  UserDefault.wrappedValue.setter(&v3, v1);
  swift_endAccess();
  return sub_1001FE9C0();
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
  v7 = sub_100009DCC(&qword_1006E9638, &qword_10058D178);
  *(v4 + 64) = v7;
  UserDefault.wrappedValue.getter(v7, v4 + 25);
  return sub_1001FEC98;
}

void sub_1001FEC98(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *a1;
  *(*a1 + 26) = *(*a1 + 25);
  swift_beginAccess();
  UserDefault.wrappedValue.setter(v3 + 26, v2);
  swift_endAccess();
  sub_1001FE9C0();

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
      v6 = sub_1000CFC34(0, v6[2] + 1, 1, v6);
      *(v2 + 48) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1000CFC34((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = sub_100204F80;
    v10[5] = v5;
    *(v2 + 48) = v6;
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v11 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v21[0] = 2147483652;

  sub_10056E488();
  sub_1001FFB3C(v11);
  sub_100009DCC(&qword_1006E9648, &qword_10058D1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B500;
  *(inited + 32) = sub_1005728D8();
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1005728D8();
  *(inited + 64) = v14;
  *(inited + 72) = 1;
  v15 = sub_1000F4764(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E9650, &qword_10058D1D0);
  swift_arrayDestroy();
  v16 = [objc_opt_self() sharedCloudController];
  if (v16)
  {
    v17 = v16;
    sub_1001FCB9C(v15);

    isa = sub_100572688().super.isa;

    v19 = swift_allocObject();
    swift_weakInit();
    v21[4] = sub_100204F60;
    v21[5] = v19;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1001FC868;
    v21[3] = &unk_1006921C8;
    v20 = _Block_copy(v21);

    [v17 enableCloudLibraryWithOptions:isa completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001FF0B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100570B88();
  v30 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100570BC8();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1006E4EE8 != -1)
    {
      swift_once();
    }

    v18 = sub_10056DF88();
    sub_10000C49C(v18, qword_1006E9620);
    v10 = sub_10056DF68();
    v19 = sub_100573448();
    if (os_log_type_enabled(v10, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, v19, "Successfully enabled Cloud Library", v20, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1006E4EE8 != -1)
  {
    swift_once();
  }

  v9 = sub_10056DF88();
  sub_10000C49C(v9, qword_1006E9620);
  swift_errorRetain();
  v10 = sub_10056DF68();
  v11 = sub_100573428();

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
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v15 = sub_100572978();
    v17 = sub_1000C9784(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to enable Cloud Library with error=%s", v12, 0xCu);
    sub_100010474(v14);
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
    sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
    v23 = sub_1005735E8();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = a1;
    aBlock[4] = sub_100206574;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_1006928E8;
    v25 = _Block_copy(aBlock);
    swift_errorRetain();

    sub_100570BA8();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100206434(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100009DCC(&unk_1006E9B30, &qword_10058AF10);
    sub_100010BC0(&qword_1006EBE80, &unk_1006E9B30, &qword_10058AF10, &protocol conformance descriptor for [A]);
    sub_100573DA8();
    sub_100573608();
    _Block_release(v25);

    (*(v30 + 8))(v5, v3);
    return (*(v28 + 8))(v8, v29);
  }

  return result;
}

uint64_t sub_1001FF600(uint64_t a1, uint64_t a2)
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
      sub_100204FAC(v8, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100204FE4(v16);
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
  sub_10056E478();

  (*(a2 + 8))(v16[0], ObjectType, a2);
  sub_100204FAC(v18, v17);
  swift_beginAccess();
  a1 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 64) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_1000CFCA4(0, a1[2] + 1, 1, a1);
    *(v3 + 64) = a1;
  }

  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14 >> 1)
  {
    a1 = sub_1000CFCA4((v14 > 1), v15 + 1, 1, a1);
  }

  a1[2] = v15 + 1;
  sub_1000F5318(v17, &a1[2 * v15 + 4]);
  *(v3 + 64) = a1;
  swift_endAccess();
  return sub_100204FE4(v18);
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
      sub_100204FAC(v5, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100204FE4(v8);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          sub_1000E9F1C(v6, v9);
          sub_100204FE4(v9);
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

uint64_t sub_1001FF9F0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v4;
  return result;
}

uint64_t sub_1001FFA70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E488();
  return sub_1001FFB3C(v3);
}

uint64_t sub_1001FFB3C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  result = _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v11, a1);
  if ((result & 1) == 0)
  {
    if (qword_1006E4EE8 != -1)
    {
      swift_once();
    }

    v3 = sub_10056DF88();
    sub_10000C49C(v3, qword_1006E9620);

    v4 = sub_10056DF68();
    v5 = sub_100573448();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      v8 = sub_100572978();
      v10 = sub_1000C9784(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Status did change: %s", v6, 0xCu);
      sub_100010474(v7);
    }

    return sub_100200EFC();
  }

  return result;
}

uint64_t CloudLibrary.StatusObserver.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_1001FFDC0(void *a1)
{
  swift_beginAccess();
  sub_100009DCC(&unk_1006E9658, &qword_10058D1D8);
  sub_10056E448();
  return swift_endAccess();
}

uint64_t sub_1001FFE38(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100009DCC(&unk_1006E9B40, &unk_10058D850);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100009DCC(&unk_1006E9658, &qword_10058D1D8);
  sub_10056E458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t CloudLibrary.StatusObserver.$status.getter()
{
  swift_beginAccess();
  sub_100009DCC(&unk_1006E9658, &qword_10058D1D8);
  sub_10056E448();
  return swift_endAccess();
}

float sub_100200030(uint64_t a1)
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
    sub_10056E478();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_10056E488();
    sub_1001FFB3C(v4);
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

float (*sub_1002001CC(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext;
  *a1 = v1;
  a1[1] = v2;
  a1[2] = *(v1 + v2);
  return sub_100200200;
}

float sub_100200200(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = *(*a1 + v1);
  *(v2 + v1) = v3;
  return sub_100200030(v4);
}

void sub_100200230()
{
  v1 = sub_100570B88();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin();
  v53 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100570BC8();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100570B78();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin();
  v48 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v46 = (&v42 - v6);
  v47 = sub_100570BF8();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100573678();
  v43 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100570B98();
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
      sub_100200030(v24);
      sub_1000D3B98(0, &unk_1006E9B00, OS_dispatch_source_ptr);
      sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
      (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInteractive(_:), v11);
      v25 = sub_100573638();
      (*(v12 + 8))(v14, v11);
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100206434(&unk_1006E9B10, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
      sub_100009DCC(&qword_1006EBE60, &unk_10058D840);
      sub_100010BC0(&unk_1006E9B20, &qword_1006EBE60, &unk_10058D840, &protocol conformance descriptor for [A]);
      sub_100573DA8();
      v26 = sub_100573688();

      (*(v43 + 8))(v10, v8);
      ObjectType = swift_getObjectType();
      v28 = v44;
      sub_100570BE8();
      v29 = v46;
      *v46 = 1;
      v31 = v49;
      v30 = v50;
      v32 = *(v49 + 104);
      v32(v29, enum case for DispatchTimeInterval.seconds(_:), v50);
      v33 = v48;
      *v48 = 1;
      v32(v33, enum case for DispatchTimeInterval.nanoseconds(_:), v30);
      sub_1005737E8();
      v34 = *(v31 + 8);
      v34(v33, v30);
      v34(v29, v30);
      (*(v45 + 8))(v28, v47);
      v35 = v42;
      aBlock[4] = sub_10020647C;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007885C;
      aBlock[3] = &unk_1006926B8;
      v36 = _Block_copy(aBlock);
      v37 = v35;

      v38 = v51;
      sub_1002B1488(ObjectType);
      v39 = v53;
      sub_1002B148C();
      sub_100573698();
      _Block_release(v36);
      (*(v55 + 8))(v39, v56);
      (*(v52 + 8))(v38, v54);

      v40 = *(v35 + 88);
      *(v37 + 88) = v26;
      if (v40)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1005736A8();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_1005736B8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v0 + 88) = 0;
    if (v23)
    {
      swift_getObjectType();
      sub_1005736A8();
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext);
    *(v0 + OBJC_IVAR____TtCO9MusicCore12CloudLibrary14StatusObserver_updateContext) = 2;

    sub_100200030(v41);
  }
}

void sub_100200A00(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v5[4] = sub_100206484;
    v5[5] = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100200EA8;
    v5[3] = &unk_1006926E0;
    v4 = _Block_copy(v5);

    [v3 loadCloudMusicLibraryUpdateProgressWithCompletionHandler:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100200AF4(uint64_t a1, float a2)
{
  v3 = sub_100570B88();
  v15 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100570BC8();
  v6 = *(v14 - 8);
  __chkstk_darwin();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
  v9 = sub_1005735E8();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1002064C4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_100692730;
  v12 = _Block_copy(aBlock);

  sub_100570BA8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100206434(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009DCC(&unk_1006E9B30, &qword_10058AF10);
  sub_100010BC0(&qword_1006EBE80, &unk_1006E9B30, &qword_10058AF10, &protocol conformance descriptor for [A]);
  sub_100573DA8();
  sub_100573608();
  _Block_release(v12);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_100200E14(uint64_t a1, float a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_1002001CC(v6);
    if (*v4 != 2)
    {
      *(v4 + 4) = a2;
    }

    (v5)(v6, 0);
  }

  return result;
}

uint64_t sub_100200EA8(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_100200EFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v1 = v10[0];
  result = swift_beginAccess();
  v3 = *(v0 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_100204FAC(v5, v8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v1, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      sub_100204FE4(v8);
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
  v3 = sub_100009DCC(&unk_1006E9658, &qword_10058D1D8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CloudLibrary.StatusObserver.__deallocating_deinit()
{
  CloudLibrary.StatusObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100201118@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CloudLibrary.StatusObserver(0);
  result = sub_10056E408();
  *a2 = result;
  return result;
}

uint64_t CloudLibrary.Status.message.getter(uint64_t a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 > 1 && (a1 - 0x80000000) < 3)
  {
    return 0;
  }

  sub_100572818();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t CloudLibrary.Status.actionTitle.getter(uint64_t a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 >> 30 && (a1 >> 30 == 1 || a1 != 2147483651))
  {
    return 0;
  }

  sub_100572818();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v9 = qword_1006FC3B8;
  sub_10056CBC8();
  v10 = sub_100572948();
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

  sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
  return sub_100573A58() & 1;
}

BOOL sub_100201668(uint64_t *a1, unint64_t *a2)
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

  sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
  return sub_100573A58() & 1;
}