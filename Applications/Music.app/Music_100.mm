uint64_t sub_100AE32A8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_100AE3600;
  }

  else
  {
    v5 = sub_100AE3410;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100AE3410()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100AE34B0()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_100AE36A0;
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_100AE3AA0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100AE3600()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100AE36A0()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100AE3754()
{
  result = qword_1011AFCB8;
  if (!qword_1011AFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFCB8);
  }

  return result;
}

uint64_t sub_100AE37FC(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_100AE3828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100AE1700(a1, v4, v5, v7, v6);
}

uint64_t sub_100AE38E8()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002F3F4;

  return sub_100ADF668(v0 + v3);
}

double sub_100AE39BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100AE39DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100AE10C4(a1, v4, v5, v6);
}

uint64_t sub_100AE3AA0()
{

  return sub_100AE3410();
}

uint64_t *AccessibilityString.dolbyAtmosLabel.unsafeMutableAddressor()
{
  if (qword_1011A7080 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAtmosLabel;
}

uint64_t *AccessibilityString.dolbyAudioLabel.unsafeMutableAddressor()
{
  if (qword_1011A7088 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.dolbyAudioLabel;
}

uint64_t *AccessibilityString.losslessLabel.unsafeMutableAddressor()
{
  if (qword_1011A7098 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.losslessLabel;
}

uint64_t *AccessibilityString.hiResLosslessLabel.unsafeMutableAddressor()
{
  if (qword_1011A7090 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.hiResLosslessLabel;
}

uint64_t static String.socialDisconnectMessage(networkName:)(uint64_t a1, void *a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v18[-v8];
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100E63FE0;
  v10._countAndFlagsBits = 0xD000000000000017;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);
  v12._object = 0x8000000100E64000;
  v12._countAndFlagsBits = 0x1000000000000060;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v15 = qword_101219808;
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v9, v4);
  return v16;
}

uint64_t MPModelTVShow.localizedEpisodeCount.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v12 - v5;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  v12[1] = [v0 episodesCount];
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v8._countAndFlagsBits = 0x65646F7369704520;
  v8._object = 0xEB00000000297328;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v9 = qword_101219808;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v10;
}

uint64_t *AccessibilityString.albumArtworkLabel.unsafeMutableAddressor()
{
  if (qword_1011A7068 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.albumArtworkLabel;
}

uint64_t sub_100AE4218()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v16[-v4];
  __chkstk_darwin();
  v7 = &v16[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v1 + 16);
  v8(v5, v7, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v9 = qword_101219808;
  v8(v3, v5, v0);
  v10 = v9;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  v14 = *(v1 + 8);
  v14(v5, v0);
  result = (v14)(v7, v0);
  static AccessibilityString.playlistArtworkLabel = v11;
  unk_10121B180 = v13;
  return result;
}

uint64_t *AccessibilityString.playlistArtworkLabel.unsafeMutableAddressor()
{
  if (qword_1011A7070 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playlistArtworkLabel;
}

uint64_t *AccessibilityString.qrCodeButtonLabel.unsafeMutableAddressor()
{
  if (qword_1011A7078 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.qrCodeButtonLabel;
}

uint64_t *AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor()
{
  if (qword_1011A70A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteBadgeLabel;
}

uint64_t *AccessibilityString.popularBadgeLabel.unsafeMutableAddressor()
{
  if (qword_1011A70A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.popularBadgeLabel;
}

uint64_t *AccessibilityString.immersiveBadgeLabel.unsafeMutableAddressor()
{
  if (qword_1011A70B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.immersiveBadgeLabel;
}

uint64_t *AccessibilityString.nowPlayingWafeformLabel.unsafeMutableAddressor()
{
  if (qword_1011A70B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.nowPlayingWafeformLabel;
}

uint64_t *AccessibilityString.pausedWafeformLabel.unsafeMutableAddressor()
{
  if (qword_1011A70C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.pausedWafeformLabel;
}

uint64_t *AccessibilityString.favoriteButtonLabel.unsafeMutableAddressor()
{
  if (qword_1011A70C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.favoriteButtonLabel;
}

uint64_t *AccessibilityString.undoFavoriteButtonLabel.unsafeMutableAddressor()
{
  if (qword_1011A70D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.undoFavoriteButtonLabel;
}

uint64_t *AccessibilityString.playbackPlayButtonLabel.unsafeMutableAddressor()
{
  if (qword_1011A70D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackPlayButtonLabel;
}

uint64_t sub_100AE4BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v22[0] = a5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v22 - v10;
  __chkstk_darwin();
  v13 = v22 - v12;
  String.LocalizationValue.init(stringLiteral:)();
  v14 = *(v7 + 16);
  v14(v11, v13, v6);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v15 = qword_101219808;
  v14(v9, v11, v6);
  v16 = v15;
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  v20 = *(v7 + 8);
  v20(v11, v6);
  result = (v20)(v13, v6);
  *a4 = v17;
  *v22[0] = v19;
  return result;
}

uint64_t *AccessibilityString.playbackShuffleButtonLabel.unsafeMutableAddressor()
{
  if (qword_1011A70E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityString.playbackShuffleButtonLabel;
}

uint64_t sub_100AE4E5C(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

id NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

void NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.setter()
{
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void (*NSUserDefaults.hasSeenDolbyDownloadFirstTimeAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return sub_10006DA24;
}

void (*NSUserDefaults.hasSeenDolbyDownloadConflictAlert.modify(uint64_t a1))(void **a1)
{
  *a1 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 BOOLForKey:v3];

  *(a1 + 8) = v4;
  return sub_10006DB24;
}

uint64_t *DeviceCapabilities.deviceFamily.unsafeMutableAddressor()
{
  if (qword_1011A70F0 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceFamily;
}

uint64_t *DeviceCapabilities.deviceModel.unsafeMutableAddressor()
{
  if (qword_1011A7100 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceModel;
}

uint64_t sub_100AE51E4(uint64_t a1)
{
  result = sub_100AE5204(a1);
  static DeviceCapabilities.deviceType = result;
  return result;
}

uint64_t sub_100AE5204(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber > 2)
    {
      if (deviceClassNumber != 11)
      {
        if (deviceClassNumber == 3)
        {
          return 2;
        }

        return 0;
      }

      return 4;
    }

    else
    {
      if (deviceClassNumber != 1)
      {
        if (deviceClassNumber == 2)
        {
          return 3;
        }

        return 0;
      }

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DeviceCapabilities.deviceType.getter()
{
  if (qword_1011A70F8 != -1)
  {
    swift_once();
  }

  return static DeviceCapabilities.deviceType;
}

void sub_100AE5304(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      *a3 = v10;
      *a4 = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100AE53B8()
{
  v0 = 0;
  result = MGGetProductType();
  if (result > 2158787295)
  {
    if (result <= 2311900305)
    {
      if (result != 2158787296 && result != 2270970153)
      {
        goto LABEL_17;
      }
    }

    else if (result != 2311900306 && result != 3645319985 && result != 3242623367)
    {
      goto LABEL_17;
    }
  }

  else if (result <= 820711326)
  {
    if (result != 228444038 && result != 502329937)
    {
      goto LABEL_17;
    }
  }

  else if (result != 820711327 && result != 1429914406 && result != 1721691077)
  {
LABEL_17:
    v0 = 1;
  }

  static DeviceCapabilities.supportsHighFrameRateLyricsBackground = v0;
  return result;
}

char *DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor()
{
  if (qword_1011A7108 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsHighFrameRateLyricsBackground;
}

uint64_t sub_100AE5538()
{
  result = MGGetProductType();
  static DeviceCapabilities.supportsMotionBlur = result != 1325975682;
  return result;
}

char *DeviceCapabilities.supportsMotionBlur.unsafeMutableAddressor()
{
  if (qword_1011A7110 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.supportsMotionBlur;
}

void sub_100AE55DC(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    static DeviceCapabilities.hasExtendedColorDisplay = hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }
}

id static DeviceCapabilitiesObjC.hasWAPICapability.getter(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    return wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *_s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0()
{
  if (!MGCopyAnswer())
  {
    goto LABEL_46;
  }

  sub_10010FC20(&qword_1011AFDD8, "@S\n");
  swift_dynamicCast();
  v40 = sub_1008BD1B0(_swiftEmptyArrayStorage);
  v0 = 1 << *(v47 + 32);
  v1 = -1;
  if (v0 < 64)
  {
    v1 = ~(-1 << v0);
  }

  v2 = v1 & *(v47 + 64);
  v3 = (v0 + 63) >> 6;
  v4 = kMGQDiskUsageTotalSystemCapacity;
  v5 = kMGQDiskUsageTotalSystemAvailable;
  v44 = kMGQDiskUsageTotalDataCapacity;
  v43 = kMGQDiskUsageTotalDataAvailable;
  v42 = kMGQDiskUsageTotalDiskCapacity;

  v6 = 0;
  v45 = v4;
  v46 = v5;
  if (v2)
  {
    while (1)
    {
LABEL_12:
      v8 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v9 = (v6 << 9) | (8 * v8);
      v10 = *(*(v47 + 48) + v9);
      v41 = *(*(v47 + 56) + v9);
      if (v4)
      {
        type metadata accessor for CFString(0);
        sub_100AE5C88();
        v11 = v10;
        v12 = v4;
        v13 = static _CFObject.== infix(_:_:)();

        v5 = v46;
        if (v13)
        {
          v26 = 0;
          goto LABEL_29;
        }

        if (!v46)
        {
          goto LABEL_18;
        }

LABEL_17:
        type metadata accessor for CFString(0);
        sub_100AE5C88();
        v15 = v10;
        v16 = v5;
        v17 = static _CFObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }

        v26 = 1;
LABEL_29:

LABEL_30:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = sub_1006BE7F4(v26);
        v30 = v40[2];
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_44;
        }

        v34 = v29;
        if (v40[3] >= v33)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = v28;
            sub_1008BAA2C();
            v28 = v38;
          }
        }

        else
        {
          sub_1008B747C(v33, isUniquelyReferenced_nonNull_native);
          v28 = sub_1006BE7F4(v26);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_47;
          }
        }

        if (v34)
        {
          *(v40[7] + 8 * v28) = v41;
        }

        else
        {
          v40[(v28 >> 6) + 8] |= 1 << v28;
          *(v40[6] + v28) = v26;
          *(v40[7] + 8 * v28) = v41;

          v36 = v40[2];
          v32 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v32)
          {
            goto LABEL_45;
          }

          v40[2] = v37;
        }

        v4 = v45;
        v5 = v46;
        if (!v2)
        {
          break;
        }
      }

      else
      {
        v14 = v10;
        if (v5)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v44)
        {
          type metadata accessor for CFString(0);
          sub_100AE5C88();
          v18 = v10;
          v19 = v44;
          v20 = static _CFObject.== infix(_:_:)();

          if (v20)
          {
            v26 = 2;
            goto LABEL_29;
          }
        }

        if (v43)
        {
          type metadata accessor for CFString(0);
          sub_100AE5C88();
          v21 = v10;
          v22 = v43;
          v23 = static _CFObject.== infix(_:_:)();

          if (v23)
          {
            v26 = 3;
            goto LABEL_29;
          }
        }

        if (v42)
        {
          type metadata accessor for CFString(0);
          sub_100AE5C88();
          v24 = v42;
          v25 = static _CFObject.== infix(_:_:)();

          v5 = v46;
          if (v25)
          {
            v26 = 4;
            goto LABEL_30;
          }
        }

        else
        {

          v5 = v46;
        }

        v4 = v45;
        if (!v2)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return v40;
    }

    v2 = *(v47 + 64 + 8 * v7);
    ++v6;
    if (v2)
    {
      v6 = v7;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100AE5B88()
{
  result = qword_1011AFDA0;
  if (!qword_1011AFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFDA0);
  }

  return result;
}

unint64_t sub_100AE5BE0()
{
  result = qword_1011AFDA8;
  if (!qword_1011AFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFDA8);
  }

  return result;
}

unint64_t sub_100AE5C88()
{
  result = qword_1011AFDE0;
  if (!qword_1011AFDE0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFDE0);
  }

  return result;
}

id sub_100AE5CE8()
{
  result = [objc_allocWithZone(type metadata accessor for EnvironmentMonitor(0)) init];
  static EnvironmentMonitor.shared = result;
  return result;
}

uint64_t *EnvironmentMonitor.shared.unsafeMutableAddressor()
{
  if (qword_1011A7120 != -1)
  {
    swift_once();
  }

  return &static EnvironmentMonitor.shared;
}

id static EnvironmentMonitor.shared.getter()
{
  if (qword_1011A7120 != -1)
  {
    swift_once();
  }

  v1 = static EnvironmentMonitor.shared;

  return v1;
}

uint64_t EnvironmentMonitor.isNetworkConstrained.getter()
{
  swift_getKeyPath();
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
}

void sub_100AE5E40(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained);
}

uint64_t EnvironmentMonitor.thermalLevel.getter()
{
  swift_getKeyPath();
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
}

void sub_100AE5F60(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel);
}

Swift::Int sub_100AE6068()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100EFCFE0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100AE60F0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100EFCFE0[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100AE613C@<X0>(Swift::Int *a1@<X0>, MusicCore::EnvironmentMonitor::ThermalLevel_optional *a2@<X8>)
{
  result = _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

id sub_100AE6210()
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v3 = &v9 - v2;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained] = 0;
  v0[OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel] = 0;
  ObservationRegistrar.init()();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, "init");
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v7 = v4;
  sub_1008A3074(0, 0, v3, &unk_100EFCFC0, v6);

  sub_10001CC48(v3);
  return v7;
}

uint64_t sub_100AE6384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100AE6420, 0, 0);
}

uint64_t sub_100AE6420()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_opt_self() sharedMonitor];
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  v7 = v3;
  v8 = v2;
  sub_1008A3074(0, 0, v1, &unk_100EFCFC8, v6);

  sub_10001CC48(v1);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v10 = v7;
  v11 = v8;
  sub_1008A3074(0, 0, v1, &unk_100EFCFD0, v9);

  sub_10001CC48(v1);
  [v10 registerObserver:v11];

  v12 = v0[1];

  return v12();
}

id EnvironmentMonitor.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() sharedMonitor];
  [v2 unregisterObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100AE67E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100AE6808, 0, 0);
}

uint64_t sub_100AE6808()
{
  *(v0 + 48) = [*(v0 + 24) isNetworkConstrained];
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AE68B0, v2, v1);
}

uint64_t sub_100AE68B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1 != *(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained))
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100AE6A28(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v3;
  v10 = a1;
  v11 = v3;
  sub_1008A3074(0, 0, v7, a3, v9);

  return sub_10001CC48(v7);
}

uint64_t sub_100AE6B58(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a1;
  v12 = a3;
  v13 = a1;
  v14 = v12;
  v15 = v13;
  sub_1008A3074(0, 0, v9, a5, v11);

  return sub_10001CC48(v9);
}

uint64_t sub_100AE6C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100AE6CB4, 0, 0);
}

uint64_t sub_100AE6CB4()
{
  v1 = [*(v0 + 24) currentThermalLevel];
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 48) = sub_100AE6ED4(v1);
    type metadata accessor for MainActor();
    *(v0 + 40) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v1 = sub_100AE6D6C;
    v2 = v4;
    v3 = v6;
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100AE6D6C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_10006D3A8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (qword_100EFCFE0[v1] != qword_100EFCFE0[*(v2 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)])
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100AE6ED4(uint64_t result)
{
  if (result > 29)
  {
    switch(result)
    {
      case 0x1E:
        return 3;
      case 0x28:
        return 4;
      case 0x32:
        return 5;
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        return result;
      case 0xA:
        return 1;
      case 0x14:
        return 2;
    }
  }

  return 6;
}

uint64_t _s9MusicCore18EnvironmentMonitorC12ThermalLevelO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result > 19)
  {
    if (result > 39)
    {
      if (result == 40)
      {
        return 4;
      }

      if (result == 50)
      {
        return 5;
      }
    }

    else
    {
      if (result == 20)
      {
        return 2;
      }

      if (result == 30)
      {
        return 3;
      }
    }

    return 7;
  }

  if (result == -1)
  {
    return 6;
  }

  if (result)
  {
    if (result == 10)
    {
      return 1;
    }

    return 7;
  }

  return result;
}

uint64_t sub_100AE6FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100AE67E8(a1, v4, v5, v7, v6);
}

uint64_t sub_100AE7074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100AE6C94(a1, v4, v5, v7, v6);
}

unint64_t sub_100AE7134()
{
  result = qword_1011AFE18;
  if (!qword_1011AFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFE18);
  }

  return result;
}

uint64_t sub_100AE7190(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100AE7244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100AE6C94(a1, v4, v5, v7, v6);
}

uint64_t sub_100AE7304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100AE6384(a1, v4, v5, v6);
}

uint64_t *ExplicitRestrictionsController.shared.unsafeMutableAddressor()
{
  if (qword_1011A7128 != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.shared;
}

BOOL ExplicitRestrictionsController.explicitContentIsAllowed.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  if (v4 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  v0 = v3;
  if (!v3)
  {
    return 0;
  }

  v1 = [v3 status];

  return (v1 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t ExplicitRestrictionsController.accountVerificationURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v10 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v11);

  v4 = v11;
  if (v11)
  {
    v5 = [v11 verificationURL];

    if (v5)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v3, v6, 1, v9);
    return sub_100027A78(v3, a1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_100AE7704()
{
  type metadata accessor for ExplicitRestrictionsController(0);
  swift_allocObject();
  result = sub_100AE77A0();
  static ExplicitRestrictionsController.shared = result;
  return result;
}

double static ExplicitRestrictionsController.shared.getter()
{
  if (qword_1011A7128 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100AE77A0()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011AFE88, &qword_100EFD0C8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  LOBYTE(v23) = 0;
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v10, v9, v6);
  v11 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v23 = 0;
  sub_10010FC20(&qword_1011AFE80, &qword_100EFD0B8);
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v11, v5, v2);
  v12 = (v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  if (qword_1011A7130 != -1)
  {
    swift_once();
  }

  v13 = *algn_10121B2B8;
  *v12 = static ExplicitRestrictionsController.symbols;
  v12[1] = v13;
  v14 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings;
  *(v1 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_bindings) = _swiftEmptyArrayStorage;

  sub_100AE7C0C();
  sub_100AE7D10();
  sub_100AE7E58();
  type metadata accessor for Whitetail.Binding();
  v15 = MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v15;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v17, 1, sub_100AE8FD4, v16);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v18 = ICAgeVerificationStateDidChangeNotification;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v18;

  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v20, 1, sub_100AE8FDC, v19);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v1;
}

double property wrapper backing initializer of ExplicitRestrictionsController.ageVerification(uint64_t a1)
{
  sub_10010FC20(&qword_1011AFE80, &qword_100EFD0B8);
  Published.init(initialValue:)();
  return result;
}

void sub_100AE7C0C()
{
  v0 = [objc_opt_self() sharedRestrictionsMonitor];
  [v0 allowsExplicitContent];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  v1 = v2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100AE8360(v1);
}

double sub_100AE7D10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v8);

  v1 = v8[0];
  if (v8[0] && (v2 = [v8[0] treatment], v1, v2 == 1))
  {
    if (qword_1011A7130 != -1)
    {
      swift_once();
    }

    v3 = &qword_10121B2C0;
  }

  else
  {
    if (qword_1011A7130 != -1)
    {
      swift_once();
    }

    v3 = &static ExplicitRestrictionsController.symbols;
  }

  v5 = *v3;
  v4 = v3[1];
  v6 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  *v6 = v5;
  v6[1] = v4;

  return result;
}

void sub_100AE7E58()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 ageVerificationState];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  v4 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;

  v5 = v3;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  v6 = v10;
  if (v10)
  {
    if (v4)
    {
      sub_100AE8F88();
      v7 = v4;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {

        v5 = v7;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_1011A7138 != -1)
  {
    swift_once();
  }

  [v9 postNotificationName:qword_1011AFE60 object:v1];

  v5 = v4;
LABEL_11:
}

double sub_100AE8078(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100AE7C0C();
  }

  return result;
}

double sub_100AE80D0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100AE7E58();
    sub_100AE7D10();
  }

  return result;
}

uint64_t ExplicitRestrictionsController.profileAllowsExplicitContent.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t ExplicitRestrictionsController.ageVerification.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100AE8214(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void sub_100AE8294(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  v2 = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100AE8360(v2);
}

void sub_100AE8360(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  if (v4 != v2)
  {
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1011A7138 != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_1011AFE68 object:v1];
  }
}

uint64_t sub_100AE8470(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10010FC20(&qword_1011AC720, &qword_100EFA120);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

void sub_100AE85F4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void sub_100AE8674(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100AE8DB4(v1);
}

uint64_t sub_100AE86E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10010FC20(&qword_1011AFF68, &qword_100EFD148);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AFE88, &qword_100EFD0C8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t *ExplicitRestrictionsController.symbols.unsafeMutableAddressor()
{
  if (qword_1011A7130 != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.symbols;
}

uint64_t ExplicitRestrictionsController.symbol.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_100AE890C()
{
  static ExplicitRestrictionsController.symbols = 3028656112;
  *algn_10121B2B8 = 0xA400000000000000;
  qword_10121B2C0 = 11768802;
  unk_10121B2C8 = 0xA300000000000000;
}

uint64_t static ExplicitRestrictionsController.symbols.getter()
{
  if (qword_1011A7130 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t ExplicitRestrictionsController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_10010FC20(&qword_1011AFE88, &qword_100EFD0C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ExplicitRestrictionsController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_10010FC20(&qword_1011AFE88, &qword_100EFD0C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

NSString sub_100AE8BB0()
{
  qword_1011AFE60 = String._bridgeToObjectiveC()();
  result = String._bridgeToObjectiveC()();
  qword_1011AFE68 = result;
  return result;
}

uint64_t type metadata accessor for ExplicitRestrictionsController(uint64_t a1)
{
  result = qword_1011AFEC0;
  if (!qword_1011AFEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100AE8C6C(uint64_t a1)
{
  sub_100008E80();
  if (v1 <= 0x3F)
  {
    sub_100AE8D50(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100AE8D50(uint64_t a1)
{
  if (!qword_1011AFED0)
  {
    sub_1001109D0(&qword_1011AFE80, &qword_100EFD0B8);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1011AFED0);
    }
  }
}

void sub_100AE8DB4(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  v4 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;
  v5 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  v6 = v10;
  if (v10)
  {
    if (v4)
    {
      sub_100AE8F88();
      v7 = v4;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
LABEL_11:

        return;
      }
    }

    else
    {
    }

LABEL_8:
    v9 = [objc_opt_self() defaultCenter];
    if (qword_1011A7138 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_1011AFE60 object:v2];

    v7 = v4;
    goto LABEL_11;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

unint64_t sub_100AE8F88()
{
  result = qword_1011AFF70;
  if (!qword_1011AFF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011AFF70);
  }

  return result;
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(uint64_t a1, int *a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100AE9100;

  return v7(a1);
}

uint64_t sub_100AE9100(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100AE92EC;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100AE9284;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100AE9284()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_100AE92EC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100AE9354(uint64_t a1)
{
  v4 = *v1;
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100AE946C;

  return v7(a1);
}

uint64_t sub_100AE946C(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100AEAF0C;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100AEAF08;
  }

  return _swift_task_switch(v8, v5, v7);
}

void *static LaunchURL.ArrayBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    sub_100AE9708(v2, &v10);
    v7[0] = v10;
    v7[1] = v11;
    v8 = v12;
    if (*(&v11 + 1))
    {
      sub_100059A8C(v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10089D5EC(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = sub_10089D5EC((v4 > 1), v5 + 1, 1, v3);
      }

      v3[2] = v5 + 1;
      sub_100059A8C(v9, &v3[5 * v5 + 4]);
    }

    else
    {
      sub_100AE9778(v7);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_100AE9708(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AFF78, &unk_100EFD158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AE9778(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AFF78, &unk_100EFD158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static LaunchURL.ArrayBuilder.buildOptional(_:)(uint64_t a1)
{
  sub_100AE9708(a1, &v3);
  if (v4)
  {
    sub_100059A8C(&v3, v5);
    sub_10010FC20(&qword_1011A7C80, &unk_100EEC3D0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100EBC6B0;
    sub_100059A8C(v5, v1 + 32);
  }

  else
  {
    sub_100AE9778(&v3);
    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_100AE9878(uint64_t a1)
{
  sub_10010FC20(&qword_1011A7C80, &unk_100EEC3D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(a1, v2 + 32);
  return v2;
}

uint64_t LaunchURL.Resolver.init(perform:handlerBuilder:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LaunchURL.Resolver(0);
  v6 = Logger.init(subsystem:category:)();
  *a3 = a1 & 1;
  result = a2(v6);
  *(a3 + 8) = result;
  return result;
}

uint64_t LaunchURL.Resolver.perform(withURL:)(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = type metadata accessor for URL();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_100AE9A4C, 0, 0);
}

void sub_100AE9A4C()
{
  v62 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  *(v0 + 392) = *(type metadata accessor for LaunchURL.Resolver(0) + 24);
  v5 = *(v3 + 16);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v12 = 136446210;
    sub_100AEACF4();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_100010678(v13, v15, &v61);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluating URL=%{public}s", v12, 0xCu);
    sub_10000959C(v59);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 336) = v16;
  v18 = *(*(v0 + 264) + 8);
  *(v0 + 344) = v18;
  v19 = *(v18 + 16);
  *(v0 + 352) = v19;
  if (v19)
  {
    *(v0 + 360) = 0;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    if (*(v18 + 16))
    {
      v20 = *(v0 + 320);
      v21 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);
      sub_100008FE4(v18 + 32, v0 + 16);
      v20(v21, v23, v22);
      sub_100008FE4(v0 + 16, v0 + 56);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 336);
      v28 = *(v0 + 304);
      v29 = *(v0 + 272);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v30 = 136446466;
        sub_100AEACF4();
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v27(v28, v29);
        v34 = sub_100010678(v31, v33, &v61);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        sub_100008FE4(v0 + 56, v0 + 216);
        sub_10010FC20(&qword_1011A7C88, &qword_100EFD170);
        v35 = String.init<A>(describing:)();
        v37 = v36;
        sub_10000959C((v0 + 56));
        v38 = sub_100010678(v35, v37, &v61);

        *(v30 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving URL=%{public}s with handler=%{public}s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000959C((v0 + 56));
        v27(v28, v29);
      }

      v53 = *(v0 + 40);
      v54 = *(v0 + 48);
      sub_10000954C((v0 + 16), v53);
      v60 = (*(v54 + 8) + **(v54 + 8));
      v55 = swift_task_alloc();
      *(v0 + 376) = v55;
      *v55 = v0;
      v55[1] = sub_100AEA140;
      v56 = *(v0 + 256);

      v60(v56, v53, v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 336);
    v43 = *(v0 + 288);
    v44 = *(v0 + 272);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v45 = 136446466;
      sub_100AEACF4();
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v42(v43, v44);
      v49 = sub_100010678(v46, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      sub_10010FC20(&qword_1011A7C88, &qword_100EFD170);
      v50 = Array.description.getter();
      v52 = sub_100010678(v50, v51, &v61);

      *(v45 + 14) = v52;

      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v42(v43, v44);
    }

    v57 = _swiftEmptyArrayStorage[2];

    v58 = *(v0 + 8);

    v58(v57 != 0);
  }
}

uint64_t sub_100AEA140(char a1)
{
  v3 = *v2;
  *(v3 + 396) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v4 = sub_100AEAA74;
  }

  else
  {
    v4 = sub_100AEA260;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100AEA260()
{
  v71 = v0;
  v1 = *(v0 + 368);
  if (*(v0 + 396))
  {
    sub_100008FE4(v0 + 16, v0 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_10089D5EC(0, v1[2] + 1, 1, *(v0 + 368));
    }

    v4 = v1[2];
    v3 = v1[3];
    if (v4 >= v3 >> 1)
    {
      v1 = sub_10089D5EC((v3 > 1), v4 + 1, 1, v1);
    }

    v1[2] = v4 + 1;
    sub_100059A8C((v0 + 176), &v1[5 * v4 + 4]);
  }

  (*(v0 + 320))(*(v0 + 296), *(v0 + 256), *(v0 + 272));
  sub_100008FE4(v0 + 16, v0 + 96);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 336);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v11 = 136446466;
    sub_100AEACF4();
    v12 = v1;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v8(v9, v10);
    v16 = v13;
    v1 = v12;
    v17 = sub_100010678(v16, v15, &v70);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    sub_100008FE4(v0 + 96, v0 + 136);
    sub_10010FC20(&qword_1011A7C88, &qword_100EFD170);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    sub_10000959C((v0 + 96));
    v21 = sub_100010678(v18, v20, &v70);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resolved URL=%{public}s with handler=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C((v0 + 96));
    v8(v9, v10);
  }

  if (*(v0 + 396) == 1 && (**(v0 + 264) & 1) == 0)
  {
    sub_10000959C((v0 + 16));
  }

  else
  {
    v22 = *(v0 + 352);
    v23 = *(v0 + 360) + 1;
    result = sub_10000959C((v0 + 16));
    if (v23 != v22)
    {
      v25 = *(v0 + 360) + 1;
      *(v0 + 360) = v25;
      *(v0 + 368) = v1;
      v26 = *(v0 + 344);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 320);
        v28 = *(v0 + 304);
        v29 = *(v0 + 272);
        v30 = *(v0 + 256);
        sub_100008FE4(v26 + 40 * v25 + 32, v0 + 16);
        v27(v28, v30, v29);
        sub_100008FE4(v0 + 16, v0 + 56);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 336);
        v35 = *(v0 + 304);
        v36 = *(v0 + 272);
        if (v33)
        {
          v37 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v37 = 136446466;
          sub_100AEACF4();
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v40 = v39;
          v34(v35, v36);
          v41 = sub_100010678(v38, v40, &v70);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2082;
          sub_100008FE4(v0 + 56, v0 + 216);
          sub_10010FC20(&qword_1011A7C88, &qword_100EFD170);
          v42 = String.init<A>(describing:)();
          v44 = v43;
          sub_10000959C((v0 + 56));
          v45 = sub_100010678(v42, v44, &v70);

          *(v37 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v31, v32, "Resolving URL=%{public}s with handler=%{public}s", v37, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10000959C((v0 + 56));
          v34(v35, v36);
        }

        v64 = *(v0 + 40);
        v65 = *(v0 + 48);
        sub_10000954C((v0 + 16), v64);
        v69 = (*(v65 + 8) + **(v65 + 8));
        v66 = swift_task_alloc();
        *(v0 + 376) = v66;
        *v66 = v0;
        v66[1] = sub_100AEA140;
        v67 = *(v0 + 256);

        return v69(v67, v64, v65);
      }

      return result;
    }
  }

  (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 336);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  if (v48)
  {
    v68 = v47;
    v52 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v52 = 136446466;
    sub_100AEACF4();
    v53 = v1;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v49(v50, v51);
    v57 = v54;
    v1 = v53;
    v58 = sub_100010678(v57, v56, &v70);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    sub_10010FC20(&qword_1011A7C88, &qword_100EFD170);
    v59 = Array.description.getter();
    v61 = sub_100010678(v59, v60, &v70);

    *(v52 + 14) = v61;

    _os_log_impl(&_mh_execute_header, v46, v68, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49(v50, v51);
  }

  v62 = v1[2];

  v63 = *(v0 + 8);

  return v63(v62 != 0);
}

uint64_t sub_100AEAA74()
{
  sub_10000959C((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100AEAB0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100AEABA0;

  return LaunchURL.Resolver.perform(withURL:)(a1);
}

uint64_t sub_100AEABA0(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t type metadata accessor for LaunchURL.Resolver(uint64_t a1)
{
  result = qword_1011AFFE0;
  if (!qword_1011AFFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100AEACF4()
{
  result = qword_1011AA648;
  if (!qword_1011AA648)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA648);
  }

  return result;
}

unint64_t sub_100AEAD50()
{
  result = qword_1011AFF80;
  if (!qword_1011AFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFF80);
  }

  return result;
}

void sub_100AEADFC(uint64_t a1)
{
  sub_100AEAE90(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100AEAE90(uint64_t a1)
{
  if (!qword_1011AFFF0)
  {
    sub_1001109D0(&qword_1011A7C88, &qword_100EFD170);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1011AFFF0);
    }
  }
}

uint64_t LifecyclePatrol.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

double LifecyclePatrol.didInit(_:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (static LifecyclePatrol.isEnabled == 1)
  {
    sub_10002705C();
    v4 = static OS_dispatch_queue.main.getter();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;

    OS_dispatch_queue.asyncAfter(_:block:)(sub_100AEB3D4, v6, 1.0);
  }

  return result;
}

double sub_100AEB158(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (qword_1011A7140 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000060E4(v3, qword_1011B0030);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.fault.getter();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v6 = 136446722;
        swift_getObjectType();
        sub_10010FC20(&qword_1011B0110, &qword_100EFD2C8);
        v7 = String.init<A>(describing:)();
        v9 = sub_100010678(v7, v8, &v16);

        *(v6 + 4) = v9;
        *(v6 + 12) = 2082;
        v10 = String.init<A>(describing:)();
        v12 = sub_100010678(v10, v11, &v16);

        *(v6 + 14) = v12;
        *(v6 + 22) = 2082;
        v13 = String.init<A>(describing:)();
        v15 = sub_100010678(v13, v14, &v16);

        *(v6 + 24) = v15;
        _os_log_impl(&_mh_execute_header, v4, v5, "A new instance of %{public}s<%{public}s> while one already exists <%{public}s>", v6, 0x20u);
        swift_arrayDestroy();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  return result;
}

void LifecyclePatrol.willDeinit(_:)(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_unknownObjectRelease();
    if (v3 == a1)
    {

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t LifecyclePatrol.__deallocating_deinit()
{
  sub_1000D8F2C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100AEB4C4()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011B0030);
  sub_1000060E4(v0, qword_1011B0030);
  return Logger.init(subsystem:category:)();
}

void sub_100AEB544(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011A8608, &qword_100EED8D0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_10000DD18(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    sub_100016270(v22, v21);

    sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = sub_100019C28(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;

      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

void sub_100AEB7A8(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  if (!*a1)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = (*(a2 + 40))(a1);

    goto LABEL_9;
  }

  v8 = a1[1];

  if (v8)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = String._bridgeToObjectiveC()();
  v10 = [a3 dictionaryForBagKey:v9];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_10001A718(v11);

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a4 = v8;
}

uint64_t *sub_100AEB8C8()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 11);
  sub_100AEB9AC(&v1[4], v6);
  os_unfair_lock_unlock(v1 + 11);
  v2 = v6[0];
  v3 = v6[2];
  v4 = v7;

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      [v2 removeObserverWithToken:v3];
    }
  }

  return v0;
}

void sub_100AEB9AC(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(type metadata accessor for Logger() - 8);
  __chkstk_darwin();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) == 0)
    {
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 24) = 0;

      v27 = v11;
      return;
    }

    v29 = v8;
    v13 = v12;
    v14 = qword_1011A6930;
    v15 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28[1] = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      v28[2] = v4;
      v22 = v21;
      v30 = v21;
      *v20 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100010678(v23, v24, &v30);
      v28[0] = v15;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "    %s wasn't configured with an AMSBag update handler prior to deallocation. This may have caused musicTabs updates to be missed after initialization.", v20, 0xCu);
      sub_10000959C(v22);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v29);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}

uint64_t sub_100AEBC28()
{
  sub_100AEB8C8();

  return swift_deallocClassInstance();
}

uint64_t sub_100AEBC5C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100AEBC74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100AEBC88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100AEBCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100AEBD34(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

double sub_100AEBD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(a1 + 16);
    v30 = v14;
    v31 = v10;
    if (v20 && (v21 = sub_100019C28(a3, a4), (v22 & 1) != 0))
    {
      sub_10000DD18(*(a1 + 56) + 32 * v21, aBlock);
      sub_10010FC20(&qword_1011A9FC0, &qword_100EF1D60);
      if (swift_dynamicCast())
      {
        v23 = v34;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v19 + 16);
    __chkstk_darwin();
    *(&v29 - 2) = v23;
    os_unfair_lock_lock(v24 + 11);
    sub_100AECDBC(&v24[4], aBlock);
    os_unfair_lock_unlock(v24 + 11);
    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_10002705C();
      v25 = static OS_dispatch_queue.main.getter();
      v26 = swift_allocObject();
      v27 = v33;
      v26[2] = v32;
      v26[3] = v27;
      v26[4] = v23;
      aBlock[4] = sub_100AECDD8;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010E01D8;
      v28 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100024794();
      sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
      sub_100024900();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v31 + 8))(v12, v9);
      (*(v30 + 8))(v16, v13);
    }

    else
    {
    }
  }

  return result;
}

void sub_100AEC110(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v116 = a3;
  v5 = type metadata accessor for Logger();
  v114 = *(v5 - 8);
  v115 = v5;
  __chkstk_darwin();
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v97 - v8;
  v10 = *a1;
  v11 = &static OS_os_log.musicBag;
  if (!*a1)
  {
    if (qword_1011A6930 != -1)
    {
      swift_once();
    }

    v52 = static OS_os_log.musicBag;
    Logger.init(_:)();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v120[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_100010678(0xD000000000000047, 0x8000000100E64350, v120);
      _os_log_impl(&_mh_execute_header, v53, v54, "Unexpected update handler call in %s with .userDefaults configuration. This is likely programmer error.", v55, 0xCu);
      sub_10000959C(v56);
    }

    (*(v114 + 8))(v7, v115);
    v57 = 0;
    goto LABEL_70;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 24) & 1;
  *(a1 + 8) = a2;
  *(a1 + 24) = v13;
  v14 = qword_1011A6930;
  swift_bridgeObjectRetain_n();
  v110 = v10;
  if (v14 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v15 = *v11;
    Logger.init(_:)();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_69;
    }

    v101 = v17;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v123 = v19;
    v105 = v18;
    *v18 = 136315394;
    v112 = a2;
    v111 = v9;
    v102 = v16;
    v100 = v19;
    if (!v12)
    {
      break;
    }

    sub_10010FC20(&qword_1011B01D8, &qword_100EFD388);
    v20 = static _DictionaryStorage.copy(original:)();
    v21 = v20;
    v22 = 0;
    v23 = *(v12 + 64);
    v99 = v12 + 64;
    v24 = 1 << *(v12 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v11 = v25 & v23;
    v98 = (v24 + 63) >> 6;
    v117 = "v16@?0@NSDictionary8";
    v106 = v20 + 64;
    v104 = v12;
    i = v20;
    if ((v25 & v23) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_15:
        v29 = v26 | (v22 << 6);
        v30 = *(v12 + 56);
        v31 = (*(v12 + 48) + 16 * v29);
        v32 = v31[1];
        v113 = *v31;
        v33 = *(v30 + 8 * v29);
        v34 = *(v33 + 16);
        if (v34)
        {
          v108 = v29;
          v109 = v11;
          v122 = _swiftEmptyArrayStorage;
          v107 = v32;

          sub_100015C24(0, v34, 0);
          v9 = v122;
          v35 = 32;
          v36 = v33;
          v118 = v33;
          do
          {
            v37 = *(v36 + v35);
            *&v119[0] = 25705;
            *(&v119[0] + 1) = 0xE200000000000000;

            AnyHashable.init<A>(_:)();
            if (*(v37 + 16) && (v38 = sub_1000160B4(v120), v36 = v118, (v39 & 1) != 0))
            {
              sub_10000DD18(*(v37 + 56) + 32 * v38, v119);
              sub_10001621C(v120);
              sub_100016270(v119, &v121);
              sub_10000DD18(&v121, v120);
              if (swift_dynamicCast())
              {
                v40 = *(&v119[0] + 1);
                v41 = *&v119[0];
              }

              else
              {
                *&v119[0] = 0;
                *(&v119[0] + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(23);
                v42._object = (v117 | 0x8000000000000000);
                v42._countAndFlagsBits = 0xD000000000000014;
                String.append(_:)(v42);
                _print_unlocked<A, B>(_:_:)();
                v43._countAndFlagsBits = 62;
                v43._object = 0xE100000000000000;
                String.append(_:)(v43);
                v36 = v118;

                v40 = *(&v119[0] + 1);
                v41 = *&v119[0];
              }

              sub_10000959C(&v121);
            }

            else
            {
              sub_10001621C(v120);

              v41 = 0x204449206261743CLL;
              v40 = 0xEF3E746E65736261;
            }

            v122 = v9;
            v45 = *(v9 + 16);
            v44 = *(v9 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_100015C24((v44 > 1), v45 + 1, 1);
              v36 = v118;
              v9 = v122;
            }

            *(v9 + 16) = v45 + 1;
            v46 = v9 + 16 * v45;
            *(v46 + 32) = v41;
            *(v46 + 40) = v40;
            v35 += 8;
            --v34;
          }

          while (v34);

          a2 = v112;
          v12 = v104;
          v21 = i;
          v11 = v109;
          v29 = v108;
          v47 = v107;
        }

        else
        {

          v9 = _swiftEmptyArrayStorage;
        }

        *(v106 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v48 = (v21[6] + 16 * v29);
        *v48 = v113;
        v48[1] = v47;
        *(v21[7] + 8 * v29) = v9;
        v49 = v21[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_73;
        }

        v21[2] = v51;
        v9 = v111;
      }

      while (v11);
    }

    v27 = v22;
    while (1)
    {
      v22 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v22 >= v98)
      {
        goto LABEL_39;
      }

      v28 = *(v99 + 8 * v22);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v11 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v21 = 0;
LABEL_39:
  v120[0] = v21;
  v99 = sub_10010FC20(&qword_1011B01E0, &qword_100EFD390);
  v58 = String.init<A>(describing:)();
  v60 = v59;

  v11 = sub_100010678(v58, v60, &v123);

  v61 = v105;
  *(v105 + 1) = v11;
  *(v61 + 6) = 2080;
  if (a2)
  {
    sub_10010FC20(&qword_1011B01D8, &qword_100EFD388);
    v62 = static _DictionaryStorage.copy(original:)();
    v63 = v62;
    v64 = *(a2 + 64);
    v98 = a2 + 64;
    v65 = 1 << *(a2 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & v64;
    v68 = (v65 + 63) >> 6;
    v117 = "v16@?0@NSDictionary8";
    v106 = v62 + 64;

    v9 = 0;
    v104 = v63;
    for (i = v68; v67; v63[2] = v91)
    {
      v69 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
LABEL_49:
      v72 = v69 | (v9 << 6);
      v73 = *(a2 + 56);
      v74 = (*(a2 + 48) + 16 * v72);
      v75 = v74[1];
      v113 = *v74;
      v12 = *(v73 + 8 * v72);
      v76 = *(v12 + 16);
      if (v76)
      {
        v108 = v72;
        v109 = v67;
        v122 = _swiftEmptyArrayStorage;
        v107 = v75;

        sub_100015C24(0, v76, 0);
        v11 = v122;
        v77 = 32;
        v78 = v12;
        v118 = v12;
        do
        {
          v79 = *(v78 + v77);
          *&v119[0] = 25705;
          *(&v119[0] + 1) = 0xE200000000000000;

          AnyHashable.init<A>(_:)();
          if (*(v79 + 16) && (v80 = sub_1000160B4(v120), v78 = v118, (v81 & 1) != 0))
          {
            sub_10000DD18(*(v79 + 56) + 32 * v80, v119);
            sub_10001621C(v120);
            sub_100016270(v119, &v121);
            sub_10000DD18(&v121, v120);
            if (swift_dynamicCast())
            {
              v12 = *(&v119[0] + 1);
              v82 = *&v119[0];
            }

            else
            {
              *&v119[0] = 0;
              *(&v119[0] + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(23);
              v83._object = (v117 | 0x8000000000000000);
              v83._countAndFlagsBits = 0xD000000000000014;
              String.append(_:)(v83);
              _print_unlocked<A, B>(_:_:)();
              v84._countAndFlagsBits = 62;
              v84._object = 0xE100000000000000;
              String.append(_:)(v84);
              v78 = v118;

              v12 = *(&v119[0] + 1);
              v82 = *&v119[0];
            }

            sub_10000959C(&v121);
          }

          else
          {
            sub_10001621C(v120);

            v82 = 0x204449206261743CLL;
            v12 = 0xEF3E746E65736261;
          }

          v122 = v11;
          v86 = *(v11 + 16);
          v85 = *(v11 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_100015C24((v85 > 1), v86 + 1, 1);
            v78 = v118;
            v11 = v122;
          }

          *(v11 + 16) = v86 + 1;
          v87 = v11 + 16 * v86;
          *(v87 + 32) = v82;
          *(v87 + 40) = v12;
          v77 += 8;
          --v76;
        }

        while (v76);

        a2 = v112;
        v63 = v104;
        v68 = i;
        v67 = v109;
        v72 = v108;
        v88 = v107;
      }

      else
      {

        v11 = _swiftEmptyArrayStorage;
      }

      *(v106 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
      v89 = (v63[6] + 16 * v72);
      *v89 = v113;
      v89[1] = v88;
      *(v63[7] + 8 * v72) = v11;
      v90 = v63[2];
      v50 = __OFADD__(v90, 1);
      v91 = v90 + 1;
      if (v50)
      {
        goto LABEL_74;
      }
    }

    v70 = v9;
    while (1)
    {
      v9 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_72;
      }

      if (v9 >= v68)
      {

        v9 = v111;
        goto LABEL_68;
      }

      v71 = *(v98 + 8 * v9);
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v67 = (v71 - 1) & v71;
        goto LABEL_49;
      }
    }
  }

  v63 = 0;
LABEL_68:
  v120[0] = v63;
  v92 = String.init<A>(describing:)();
  v94 = sub_100010678(v92, v93, &v123);

  v95 = v105;
  *(v105 + 14) = v94;
  v96 = v102;
  _os_log_impl(&_mh_execute_header, v102, v101, "    AMSBag provided updated musicTabs dictionary.\n    Previous: %s\n    Updated: %s", v95, 0x16u);
  swift_arrayDestroy();

LABEL_69:
  (*(v114 + 8))(v9, v115);

  v57 = 1;
LABEL_70:
  *v116 = v57;
}

double sub_100AECD28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);

  return result;
}

uint64_t OptimisticValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *(type metadata accessor for OptimisticValue(0, a2, a4, a5) + 28);
  v11 = type metadata accessor for OptimisticValue.Transaction(0, a2, v9, v10);
  (*(*(v11 - 8) + 56))(a3 + v8, 1, 1, v11);
  v12 = *(*(a2 - 8) + 32);

  return v12(a3, a1, a2);
}

uint64_t sub_100AECF20(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = *(v4 + 16);
  v12(&v30 - v10, v1, v3, v9);
  v13 = v1 + *(a1 + 28);
  v16 = type metadata accessor for OptimisticValue.Transaction(0, v3, v14, v15);
  if (!(*(*(v16 - 8) + 48))(v13, 1, v16))
  {
    (*(v4 + 24))(v13 + *(v16 + 28), v11, v3);
  }

  if (qword_1011A7148 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000060E4(v17, qword_1011B01F0);
  (v12)(v8, v11, v3);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136446210;
    (v30)(v6, v8, v3);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v30 = v11;
    v26 = *(v4 + 8);
    v26(v8, v3);
    v27 = sub_100010678(v23, v25, &v31);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Underlying value updated to %{public}s", v21, 0xCu);
    sub_10000959C(v22);

    return (v26)(v30, v3);
  }

  else
  {

    v29 = *(v4 + 8);
    v29(v8, v3);
    return (v29)(v11, v3);
  }
}

uint64_t OptimisticValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = type metadata accessor for OptimisticValue.Transaction(255, v7, a2, a3);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - v11;
  v13 = *(v7 - 8);
  v14 = __chkstk_darwin();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v4 + *(a1 + 28), v9, v14);
  v17 = *(v8 - 8);
  if ((*(v17 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return (*(v13 + 16))(a4, v4, v7);
  }

  else
  {
    (*(v13 + 16))(v16, &v12[*(v8 + 32)], v7);
    (*(v17 + 8))(v12, v8);
    return (*(v13 + 32))(a4, v16, v7);
  }
}

uint64_t OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  sub_100AEEC8C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OptimisticValue.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v5[4] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[6] = v10;
  OptimisticValue.value.getter(a2, v11, v12, v10);
  return sub_100AED620;
}

void sub_100AED620(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v8);
    (*(v5 + 24))(v7, v3, v8);
    sub_100AECF20(v9);
    v10 = *(v6 + 8);
    v10(v3, v8);
    v10(v4, v8);
  }

  else
  {
    (*(v5 + 24))((*a1)[1], v4, v8);
    sub_100AECF20(v9);
    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);

  free(v2);
}

void OptimisticValue.beginTransaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v35 = a1;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for OptimisticValue.Transaction(0, v9, a3, a4);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v34 - v13;
  v14 = *(v9 - 8);
  __chkstk_darwin();
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v34 - v18;
  v20 = *(v14 + 16);
  v20(&v34 - v18, v6, v9, v17);
  (v20)(v16, v35, v9);
  sub_100AEDB58(v19, v16, v9, a5);
  v21 = *(a2 + 28);
  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 8))(v6 + v21, v22);
  v23 = *(v11 + 16);
  v23(v6 + v21, a5, v10);
  (*(v11 + 56))(v6 + v21, 0, 1, v10);
  if (qword_1011A7148 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000060E4(v24, qword_1011B01F0);
  v25 = v36;
  v23(v36, a5, v10);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    v23(v34, v25, v10);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    (*(v11 + 8))(v25, v10);
    v33 = sub_100010678(v30, v32, &v37);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "New transaction: %{public}s", v28, 0xCu);
    sub_10000959C(v29);
  }

  else
  {

    (*(v11 + 8))(v25, v10);
  }
}

uint64_t sub_100AEDB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  UUID.init()();
  v11 = type metadata accessor for OptimisticValue.Transaction(0, a3, v9, v10);
  v14 = *(*(a3 - 8) + 32);
  v14(a4 + *(v11 + 28), a1, a3);
  v12 = a4 + *(v11 + 32);

  return (v14)(v12, a2, a3);
}

uint64_t OptimisticValue.cancelTransaction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = *(a2 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction(0, v69, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v59 - v9;
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v76 = *(v10 - 8);
  v14 = v76;
  __chkstk_darwin();
  v75 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v59 - v16;
  v18 = __chkstk_darwin();
  v20 = &v59 - v19;
  v21 = v7[2];
  v68 = a1;
  v61 = v21;
  v62 = v7 + 2;
  (v21)(&v59 - v19, a1, v6, v18);
  v64 = v7[7];
  v65 = v7 + 7;
  v64(v20, 0, 1, v6);
  v70 = a2;
  v22 = *(a2 + 28);
  v67 = v14;
  v23 = *(v14 + 16);
  v63 = v22;
  v24 = v10;
  v23(v17, v77 + v22, v10);
  v73 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v23(v13, v20, v24);
  v74 = v25;
  v23(&v13[v25], v17, v24);
  v26 = v7;
  v27 = v7[6];
  v78 = v13;
  if (v27(v13, 1, v6) == 1)
  {
    v60 = v26;
    v28 = *(v76 + 8);
    v28(v17, v24);
    v28(v20, v24);
    v29 = v78;
    v30 = v27(&v78[v74], 1, v6) == 1;
    v31 = v29;
    if (!v30)
    {
      return (*(v72 + 8))(v31, v73);
    }

    v32 = v6;
    v28(v29, v24);
LABEL_9:
    v78 = v28;
    v43 = v24;
    if (qword_1011A7148 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000060E4(v44, qword_1011B01F0);
    v45 = v66;
    v46 = v68;
    v47 = v61;
    v61(v66, v68, v32);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v79 = v51;
      *v50 = 136446210;
      v47(v71, v45, v32);
      v52 = v32;
      v53 = String.init<A>(describing:)();
      v55 = v54;
      (v60[1])(v45, v52);
      v56 = sub_100010678(v53, v55, &v79);

      *(v50 + 4) = v56;
      v32 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Cancelled transaction: %{public}s", v50, 0xCu);
      sub_10000959C(v51);
    }

    else
    {

      (v60[1])(v45, v32);
    }

    v57 = v77;
    (*(*(v69 - 8) + 24))(v77, v46 + *(v32 + 28));
    sub_100AECF20(v70);
    v58 = v63;
    (v78)(v57 + v63, v43);
    return v64(v57 + v58, 1, 1, v32);
  }

  v33 = v78;
  v23(v75, v78, v24);
  v34 = &v33[v74];
  v35 = v74;
  v32 = v6;
  if (v27(v34, 1, v6) == 1)
  {
    v36 = *(v76 + 8);
    v36(v17, v24);
    v36(v20, v24);
    (v26[1])(v75, v6);
    v31 = v78;
    return (*(v72 + 8))(v31, v73);
  }

  v60 = v26;
  v38 = v78;
  v39 = v71;
  (v26[4])(v71, &v78[v35], v32);
  v40 = v75;
  LODWORD(v74) = static UUID.== infix(_:_:)();
  v41 = v26[1];
  v41(v39, v32);
  v42 = *(v76 + 8);
  v42(v17, v24);
  v42(v20, v24);
  v41(v40, v32);
  v28 = v42;
  result = (v42)(v38, v24);
  if (v74)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t OptimisticValue.completeTransaction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = *(a2 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction(0, v69, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v59 - v9;
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v76 = *(v10 - 8);
  v14 = v76;
  __chkstk_darwin();
  v75 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v59 - v16;
  v18 = __chkstk_darwin();
  v20 = &v59 - v19;
  v21 = v7[2];
  v68 = a1;
  v61 = v21;
  v62 = v7 + 2;
  (v21)(&v59 - v19, a1, v6, v18);
  v64 = v7[7];
  v65 = v7 + 7;
  v64(v20, 0, 1, v6);
  v70 = a2;
  v22 = *(a2 + 28);
  v67 = v14;
  v23 = *(v14 + 16);
  v63 = v22;
  v24 = v10;
  v23(v17, v77 + v22, v10);
  v73 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v23(v13, v20, v24);
  v74 = v25;
  v23(&v13[v25], v17, v24);
  v26 = v7;
  v27 = v7[6];
  v78 = v13;
  if (v27(v13, 1, v6) == 1)
  {
    v60 = v26;
    v28 = *(v76 + 8);
    v28(v17, v24);
    v28(v20, v24);
    v29 = v78;
    v30 = v27(&v78[v74], 1, v6) == 1;
    v31 = v29;
    if (!v30)
    {
      return (*(v72 + 8))(v31, v73);
    }

    v32 = v6;
    v28(v29, v24);
LABEL_9:
    v78 = v28;
    v43 = v24;
    if (qword_1011A7148 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000060E4(v44, qword_1011B01F0);
    v45 = v66;
    v46 = v68;
    v47 = v61;
    v61(v66, v68, v32);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v79 = v51;
      *v50 = 136446210;
      v47(v71, v45, v32);
      v52 = v32;
      v53 = String.init<A>(describing:)();
      v55 = v54;
      (v60[1])(v45, v52);
      v56 = sub_100010678(v53, v55, &v79);

      *(v50 + 4) = v56;
      v32 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Completed transaction: %{public}s", v50, 0xCu);
      sub_10000959C(v51);
    }

    else
    {

      (v60[1])(v45, v32);
    }

    v57 = v77;
    (*(*(v69 - 8) + 24))(v77, v46 + *(v32 + 32));
    sub_100AECF20(v70);
    v58 = v63;
    (v78)(v57 + v63, v43);
    return v64(v57 + v58, 1, 1, v32);
  }

  v33 = v78;
  v23(v75, v78, v24);
  v34 = &v33[v74];
  v35 = v74;
  v32 = v6;
  if (v27(v34, 1, v6) == 1)
  {
    v36 = *(v76 + 8);
    v36(v17, v24);
    v36(v20, v24);
    (v26[1])(v75, v6);
    v31 = v78;
    return (*(v72 + 8))(v31, v73);
  }

  v60 = v26;
  v38 = v78;
  v39 = v71;
  (v26[4])(v71, &v78[v35], v32);
  v40 = v75;
  LODWORD(v74) = static UUID.== infix(_:_:)();
  v41 = v26[1];
  v41(v39, v32);
  v42 = *(v76 + 8);
  v42(v17, v24);
  v42(v20, v24);
  v41(v40, v32);
  v28 = v42;
  result = (v42)(v38, v24);
  if (v74)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t static OptimisticValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v12 = type metadata accessor for OptimisticValue(0, v10, v10, v11);
  OptimisticValue.value.getter(v12, v13, v14, v9);
  OptimisticValue.value.getter(v12, v15, v16, v7);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v5 + 8);
  v18(v7, a3);
  v18(v9, a3);
  return v17 & 1;
}

uint64_t sub_100AEEC08()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011B01F0);
  sub_1000060E4(v0, qword_1011B01F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100AEEC8C(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_100AECF20(a2);
}

uint64_t sub_100AEECF4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for OptimisticValue.Transaction(255, result, v2, v3);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100AEED8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v7 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 64);
  if (v11)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 80) | *(v9 + 80);
  v19 = v14 + v18;
  v20 = v15 + v17;
  v21 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v22 = v16 + ((v14 + v17 + (v20 & ~v17)) & ~v17) + (v19 & ~v18);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((v21 + ~(-1 << v23)) >> v23) + 1;
  v21 = HIWORD(v25);
  if (v21)
  {
    v24 = *(a1 + v22);
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 >= 2)
  {
LABEL_16:
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

LABEL_23:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v13 + (v28 | v26) + 1;
  }

LABEL_36:
  if (!v13)
  {
    return 0;
  }

LABEL_37:
  if (v7 >= v12)
  {
    v33 = *(v6 + 48);

    return v33(a1, v7, v5);
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (a1 + v19) & ~v18;
    if (v10 >= v7)
    {
      v34 = (*(v9 + 48))(v29);
      v31 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v31)
      {
        return result;
      }

      return 0;
    }

    v30 = (*(v6 + 48))((v20 + v29) & ~v17, v7, v5, v21);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  return result;
}

void sub_100AEF050(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for UUID();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v8 + 64);
  if (v9 <= v15)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 80) | *(v13 + 80);
  v22 = *(v13 + 64) + v20;
  v23 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  if (v17)
  {
    v24 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v24 + ((v16 + v21) & ~v21);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v12 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v19 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v12)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v28;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v12)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v18)
  {
    v35 = *(v11 + 56);
    v36 = a1;
    v37 = a2;
    goto LABEL_53;
  }

  v30 = (&a1[v16 + v21] & ~v21);
  if (v18 < a2)
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v18 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_46:
          *v30 = v32;
          return;
        }

LABEL_80:
        *v30 = v32;
        return;
      }

LABEL_81:
      if (v33 == 3)
      {
        *v30 = v32;
        v30[2] = BYTE2(v32);
      }

      else
      {
        *v30 = v32;
      }

      return;
    }

    return;
  }

  if (a2 < v17)
  {
    if (v15 >= v9)
    {
      v39 = *(v14 + 56);

      v39(v30, (a2 + 1));
      return;
    }

    v35 = *(v11 + 56);
    v36 = (&v30[v22] & ~v20);
    v37 = (a2 + 1);
LABEL_53:

    v35(v36, v37, v9, v7);
    return;
  }

  if (v23 <= 3)
  {
    v38 = ~(-1 << (8 * v23));
  }

  else
  {
    v38 = -1;
  }

  if (v23)
  {
    v32 = v38 & (a2 - v17);
    if (v23 <= 3)
    {
      v33 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
    }

    else
    {
      v33 = 4;
    }

    bzero(v30, v23);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_80;
    }

    goto LABEL_81;
  }
}

uint64_t sub_100AEF478(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100AEF500(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100AEF74C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_100AEFA2C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PlayActivityFeatureIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlayActivityFeatureIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100AEFAB4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100AEFB18(uint64_t a1)
{
  PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_100AEFB6C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PlayActivityFeatureIdentifier.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100AEFBCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100AEFC54()
{
  result = qword_1011B0308;
  if (!qword_1011B0308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B0308);
  }

  return result;
}

uint64_t PlaylistSortingController.trackListSortDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1, v1[1]);
  return v2;
}

uint64_t PlaylistSortingController.trackListSortDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6, v7);
}

uint64_t sub_100AEFDD8(__int16 a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v5 = v4[1];
  result = sub_1008F7FCC();
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v5) & 1) == 0)
  {
    v7 = v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange;
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);
      v10 = *v4;
      if (v4[1])
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }

      v8(v11 | v10);
      sub_100020438(v8, v9);
    }

    v12 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate;
    *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 1;
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = *v4;
    v15 = v4[1];
    v21[3] = &type metadata for Actions.SortPlaylist.TrackListSort;
    v21[4] = sub_100A0EB14();
    v21[5] = sub_100A0EB68();
    LOBYTE(v21[0]) = v14;
    BYTE1(v21[0]) = v15;
    Playlist.catalogID.getter();
    if (!v16)
    {
      Playlist.id.getter();
    }

    sub_10000988C();
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    NSUserDefaults.encodeValue(_:forKey:)(v21);

    result = sub_10000959C(v21);
    *(v2 + v12) = 0;
  }

  return result;
}

uint64_t PlaylistSortingController.currentTrackListSort.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | *v1;
}

uint64_t PlaylistSortingController.currentTrackListSort.setter(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_100AEFDD8(v6 | v4);
}

void (*PlaylistSortingController.currentTrackListSort.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 40) = *v6;
  *(v4 + 41) = v7;
  return sub_100AF016C;
}

void sub_100AF016C(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 41);
  v4 = *v2;
  v5 = v2[1];
  *v2 = *(*a1 + 40);
  v2[1] = v3;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_100AEFDD8(v6 | v4);

  free(v1);
}

void *PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011AA6C0, &qword_100EEF960);
  __chkstk_darwin();
  v5 = &v41 - v4;
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort) = 256;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = 0;
  sub_1000089F8(a1, v5, &qword_1011AA6C0, &qword_100EEF960);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(a1, &qword_1011AA6C0, &qword_100EEF960);
    sub_1000095E8(v5, &qword_1011AA6C0, &qword_100EEF960);
LABEL_15:
    sub_100020438(*(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.state<A>(for:)();

  v11 = dispatch thunk of MusicLibrary.ItemState.isAdded.getter();

  if ((v11 & 1) == 0)
  {
    sub_1000095E8(a1, &qword_1011AA6C0, &qword_100EEF960);
    (*(v7 + 8))(v9, v6);
    goto LABEL_15;
  }

  (*(v7 + 16))(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist, v9, v6);
  v41 = objc_opt_self();
  v12 = [v41 standardUserDefaults];
  v45 = 0x2D74726F53;
  v46 = 0xE500000000000000;
  v13 = Playlist.catalogID.getter();
  v42 = a1;
  if (!v14)
  {
    v13 = Playlist.id.getter();
  }

  v51 = v13;
  v52 = v14;
  v49 = 46;
  v50 = 0xE100000000000000;
  v47 = 45;
  v48 = 0xE100000000000000;
  v15 = sub_10000988C();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  sub_100A0EB14();
  sub_100A0EB68();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, &v47);

  if ((v47 & 0xFF00) == 0x200)
  {
    v20 = [v41 standardUserDefaults];
    v21 = Playlist.catalogID.getter();
    if (!v22)
    {
      v21 = Playlist.id.getter();
    }

    v45 = v21;
    v46 = v22;
    v51 = 46;
    v52 = 0xE100000000000000;
    v49 = 45;
    v50 = 0xE100000000000000;
    LOBYTE(v23) = 1;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v25;

    v27 = NSUserDefaults.sortType(for:keyDomain:)(194, v24, v26);

    v28 = 0;
    if (v27 <= 6u)
    {
      switch(v27)
      {
        case 1u:
          v28 = 0;
          LOBYTE(v23) = 0;
          break;
        case 2u:
          v28 = 1;
          break;
        case 6u:
          v28 = 2;
          break;
      }

      goto LABEL_25;
    }

    switch(v27)
    {
      case 7u:
        v28 = 3;
        break;
      case 0xBu:
        goto LABEL_21;
      case 0xCu:
        LOBYTE(v23) = 0;
LABEL_21:
        v28 = 4;
        break;
    }
  }

  else
  {
    v28 = v47;
    v23 = BYTE1(v47) & 1;
  }

LABEL_25:
  v29 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  *v29 = v28;
  v29[1] = v23;
  v51 = 0x2D74726F53;
  v52 = 0xE500000000000000;
  v30 = Playlist.catalogID.getter();
  if (!v31)
  {
    v30 = Playlist.id.getter();
  }

  v32 = v30;
  v33 = v31;
  v41 = sub_100AF0978();
  v49 = v32;
  v50 = v33;
  v47 = 46;
  v48 = 0xE100000000000000;
  v43 = 45;
  v44 = 0xE100000000000000;
  v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v36 = v35;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38 = swift_allocObject();
  swift_weakInit();

  v39 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v51, 0, 0, sub_100AF0DB0, v38, &type metadata for String, v15);

  sub_1000095E8(v42, &qword_1011AA6C0, &qword_100EEF960);

  (*(v7 + 8))(v9, v6);

  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = v39;

  return v2;
}

unint64_t sub_100AF0978()
{
  result = qword_1011B0338;
  if (!qword_1011B0338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B0338);
  }

  return result;
}

double sub_100AF09C4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v4 = v15 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) & 1) == 0)
    {
      v7 = Strong;
      sub_1000089F8(a1, v16, &qword_1011ABB20, &unk_100EF1530);
      if (!v17)
      {

        sub_1000095E8(v16, &qword_1011ABB20, &unk_100EF1530);
        return result;
      }

      if (swift_dynamicCast())
      {
        v9 = v15[1];
        v8 = v15[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100A0EB14();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v10 = v16[0];
        v11 = v16[1];
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
        type metadata accessor for MainActor();

        v13 = static MainActor.shared.getter();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = &protocol witness table for MainActor;
        *(v14 + 32) = v7;
        *(v14 + 40) = v10;
        *(v14 + 41) = v11;
        sub_100969440(0, 0, v4, &unk_100EFD770, v14);

        sub_10002C064(v9, v8);
      }
    }
  }

  return result;
}

uint64_t sub_100AF0DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AF0E54, v7, v6);
}

uint64_t sub_100AF0E54()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_100AEFDD8(v6 | v4);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PlaylistSortingController.actionBuilder.getter()
{
  sub_10010FC20(&qword_1011A8D18, &unk_100EF4780);
  __chkstk_darwin();
  v66 = v52 - v1;
  v65 = type metadata accessor for Actions.SortPlaylist.Context(0);
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v62 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = v52 - v3;
  v63 = v4;
  __chkstk_darwin();
  v57 = v52 - v5;
  v60 = sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50);
  v59 = *(v60 - 8);
  __chkstk_darwin();
  v56 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v52 - v7;
  __chkstk_darwin();
  v54 = v52 - v8;
  v58 = v9;
  __chkstk_darwin();
  v11 = v52 - v10;
  v67 = v0;
  v52[1] = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v53 = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  swift_beginAccess();
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v71 = xmmword_100EBC6B0;
  do
  {
    v70 = v13;
    v69 = v12;
    v14 = *(&off_1010C8F40 + v12 + 32);
    v15 = *v53;
    v16 = v53[1];
    v17 = v66;
    Playlist.variant.getter();
    v18 = v65;
    v19 = *(v65 + 24);
    v20 = type metadata accessor for Playlist.Variant();
    v21 = v57;
    (*(*(v20 - 8) + 56))(&v57[v19], 1, 1, v20);
    *v21 = v14;
    v21[1] = v15;
    v21[2] = v16;
    v22 = v67;

    sub_1008F8EFC(v17, &v21[v19]);
    v23 = &v21[*(v18 + 28)];
    *v23 = sub_100AF1C5C;
    v23[1] = v22;
    v24 = v61;
    sub_1008F92F0(v21, v61);
    v25 = v14 + 14;
    v68 = v14 + 14;
    v26 = v62;
    sub_1008F92F0(v21, v62);
    v27 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v28 = swift_allocObject();
    sub_1008F9510(v26, v28 + v27);
    sub_1008F9510(v24, v11);
    v29 = v60;
    v11[*(v60 + 36)] = v25;
    *&v11[v29[11]] = 0x4014000000000000;
    v30 = &v11[v29[10]];
    *v30 = variable initialization expression of _NSRange.NSRangeIterator.current;
    v30[1] = 0;
    v31 = &v11[v29[12]];
    *v31 = &unk_100EEEBC0;
    *(v31 + 1) = v28;
    v32 = &v11[v29[13]];
    *v32 = &unk_100EEEBC8;
    *(v32 + 1) = 0;
    sub_100AF1C68(v21);
    sub_10010FC20(&qword_1011A7D68, &qword_100EEDB70);
    inited = swift_initStackObject();
    *(inited + 16) = v71;
    v34 = v54;
    sub_1000089F8(v11, v54, &qword_1011A87F0, &unk_100EF4A50);
    v35 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v36 = swift_allocObject();
    sub_100AF1CC4(v34, v36 + v35);
    v37 = v55;
    sub_1000089F8(v11, v55, &qword_1011A87F0, &unk_100EF4A50);
    v38 = swift_allocObject();
    sub_100AF1CC4(v37, v38 + v35);
    v39 = v56;
    sub_1000089F8(v11, v56, &qword_1011A87F0, &unk_100EF4A50);
    v40 = swift_allocObject();
    sub_100AF1CC4(v39, v40 + v35);
    *(inited + 32) = v68;
    *(inited + 40) = sub_100AF1D34;
    *(inited + 48) = v36;
    *(inited + 56) = sub_100AF1DB0;
    *(inited + 64) = v38;
    *(inited + 72) = &unk_100EFD5D8;
    *(inited + 80) = v40;
    v13 = v70;
    sub_1000095E8(v11, &qword_1011A87F0, &unk_100EF4A50);
    sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
    v41 = swift_initStackObject();
    *(v41 + 16) = v71;
    *(v41 + 32) = inited;
    v42 = v41 + 32;
    v43 = sub_1008A7E58();
    swift_setDeallocating();
    sub_1000095E8(v42, &qword_1011A7C78, &unk_100EEDBB0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10089D610(0, v13[2] + 1, 1, v13);
    }

    v45 = v13[2];
    v44 = v13[3];
    v46 = v69;
    if (v45 >= v44 >> 1)
    {
      v13 = sub_10089D610((v44 > 1), v45 + 1, 1, v13);
    }

    v12 = v46 + 1;
    v13[2] = v45 + 1;
    v13[v45 + 4] = v43;
  }

  while (v12 != 5);
  v47 = sub_1008A7E58();

  v48 = swift_initStackObject();
  *(v48 + 16) = v71;
  *(v48 + 32) = v47;
  v49 = v48 + 32;
  v50 = sub_1008A7E58();
  swift_setDeallocating();
  sub_1000095E8(v49, &qword_1011A7C78, &unk_100EEDBB0);
  return v50;
}

uint64_t sub_100AF167C(__int16 a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_100AEFDD8(v6 | v4);
}

double static PlaylistSortingController.apply(for:to:)(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011AA6C0, &qword_100EEF960);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_allocObject();
  if (PlaylistSortingController.init(_:)(v4))
  {
    PlaylistSortingController.apply(to:)();
  }

  return result;
}

double PlaylistSortingController.apply(to:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v2 = *v1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      swift_getKeyPath();
      sub_10010FC20(&qword_1011B0340, &qword_100EFD608);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

      swift_getKeyPath();
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
    }

    else
    {
      if (v2 != 3)
      {
        swift_getKeyPath();
        sub_10010FC20(&qword_1011B0340, &qword_100EFD608);
        MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
        goto LABEL_10;
      }

      swift_getKeyPath();
      sub_10010FC20(&qword_1011B0340, &qword_100EFD608);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
    }

    swift_getKeyPath();
    MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
LABEL_10:

LABEL_12:
    swift_getKeyPath();
    goto LABEL_13;
  }

  if (*v1)
  {
    swift_getKeyPath();
    sub_10010FC20(&qword_1011B0340, &qword_100EFD608);
    MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_10010FC20(&qword_1011B0340, &qword_100EFD608);
LABEL_13:
  MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();

  return result;
}

uint64_t PlaylistSortingController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100020438(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

  return v0;
}

uint64_t PlaylistSortingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100020438(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange), *(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_100AF1BD8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011B0310);
  sub_1000060E4(v0, qword_1011B0310);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100AF1C68(uint64_t a1)
{
  v2 = type metadata accessor for Actions.SortPlaylist.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100AF1CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AF1D34@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1008BE0A4(v4, a1);
}

uint64_t sub_100AF1DB0()
{
  v1 = *(sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1008BE0D8(v2);
}

uint64_t sub_100AF1E1C()
{
  v2 = *(sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002F3F4;

  return sub_1008BE5EC(v0 + v3);
}

uint64_t sub_100AF1EF4@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t type metadata accessor for PlaylistSortingController(uint64_t a1)
{
  result = qword_1011B0370;
  if (!qword_1011B0370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100AF1FA0(uint64_t a1)
{
  result = type metadata accessor for Playlist();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100AF2058(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100AF0DB8(a1, v4, v5, v6, v8 | v7);
}

double QRCode.init(data:errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100AF2B78(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t QRCode.data.getter()
{
  v1 = *(v0 + 8);
  sub_10002BC44(v1, *(v0 + 16));
  return v1;
}

void sub_100AF21D0(void *a1, void *a2, CGImage *a3, uint64_t a4, CGContext *a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  [a1 beginPage];
  v69 = a1;
  v19 = [a1 CGContext];
  if (qword_1011A7158 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v20 = *&qword_1011B0418;
    CGContextSetLineWidth(v19, *&qword_1011B0418);

    v21 = objc_opt_self();
    v22 = [v21 whiteColor];
    [v22 setStroke];

    v23 = [v21 whiteColor];
    [v23 setFill];

    v24 = v20 * a6;
    v72.origin.x = a7;
    v72.origin.y = a8;
    v72.size.width = a9;
    v72.size.height = a10;
    v25 = CGRectGetWidth(v72) - v20 * a6;
    v73.origin.x = a7;
    v73.origin.y = a8;
    v73.size.width = a9;
    a9 = v20;
    v73.size.height = a10;
    v26 = CGRectGetHeight(v73) - v20 * a6;
    sub_10010FC20(&qword_1011AB028, &qword_100EF3BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v24;
    *(inited + 56) = v24;
    v65 = v25;
    *(inited + 64) = v25;
    *(inited + 72) = 0;
    *(inited + 80) = v24;
    *(inited + 88) = v24;
    *(inited + 96) = 0;
    v67 = v26;
    *(inited + 104) = v26;
    *(inited + 112) = v24;
    *(inited + 120) = v24;
    v28 = objc_opt_self();
    v29 = *(inited + 32);
    v30 = *(inited + 40);
    a10 = *(inited + 48);
    v31 = *(inited + 56);
    v74.origin.x = v29;
    v74.origin.y = v30;
    v74.size.width = a10;
    v74.size.height = v31;
    v66 = a9 * 0.5;
    v75 = CGRectInset(v74, a9 * 0.5, a9 * 0.5);
    v32 = [v28 _bezierPathWithPillRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, 10.0}];
    if (v32)
    {
      v33 = v32;
      [v32 setLineWidth:a9];
      [v33 stroke];
      v64 = a9;
      v34 = a9 * a11;
      v76.origin.x = v29;
      v76.origin.y = v30;
      v76.size.width = a10;
      v76.size.height = v31;
      v35 = v34 * 0.5;
      v63 = CGRectGetMidX(v76) - v34 * 0.5;
      v77.origin.x = v29;
      v77.origin.y = v30;
      v77.size.width = a10;
      v77.size.height = v31;
      MidY = CGRectGetMidY(v77);
      v37 = v34;
      v38 = v34;
      a9 = v64;
      v39 = [v28 _bezierPathWithPillRect:v63 cornerRadius:{MidY - v35, v37, v38, 2.0}];
      [v39 fill];
    }

    v78.origin.y = 0.0;
    a8 = v66;
    v78.origin.x = v65;
    v78.size.width = v24;
    v78.size.height = v24;
    v79 = CGRectInset(v78, v66, v66);
    v40 = [v28 _bezierPathWithPillRect:v79.origin.x cornerRadius:{v79.origin.y, v79.size.width, v79.size.height, 10.0}];
    if (v40)
    {
      v41 = v40;
      [v40 setLineWidth:a9];
      [v41 stroke];
      v80.origin.y = 0.0;
      v80.origin.x = v65;
      v80.size.width = v24;
      v80.size.height = v24;
      a10 = CGRectGetMidX(v80) - a9 * a11 * 0.5;
      v81.origin.y = 0.0;
      v81.origin.x = v65;
      v81.size.width = v24;
      v81.size.height = v24;
      v42 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v81) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v42 fill];
    }

    else
    {
    }

    v82.origin.x = 0.0;
    v82.origin.y = v67;
    v82.size.width = v24;
    v82.size.height = v24;
    v83 = CGRectInset(v82, v66, v66);
    v43 = [v28 _bezierPathWithPillRect:v83.origin.x cornerRadius:{v83.origin.y, v83.size.width, v83.size.height, 10.0}];
    if (v43)
    {
      v44 = v43;
      [v43 setLineWidth:a9];
      [v44 stroke];
      v84.origin.x = 0.0;
      v84.origin.y = v67;
      v84.size.width = v24;
      v84.size.height = v24;
      a10 = CGRectGetMidX(v84) - a9 * a11 * 0.5;
      v85.origin.x = 0.0;
      v85.origin.y = v67;
      v85.size.width = v24;
      v85.size.height = v24;
      v45 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v85) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v45 fill];
    }

    [a2 extent];
    Height = CGRectGetHeight(v86);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_69;
    }

    if (Height >= 9.22337204e18)
    {
      goto LABEL_70;
    }

    v47 = Height;
    if (Height < 1)
    {
      goto LABEL_71;
    }

    v19 = a5;
    if (Height == 1)
    {
      return;
    }

    v48 = a6;
    a7 = a9 + -1.0;
    v49 = 1;
    *&a11 = Height;
    while (1)
    {
      if (v49 == v47)
      {
        goto LABEL_62;
      }

      [a2 extent];
      Width = CGRectGetWidth(v87);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_64;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_65;
      }

      v51 = Width;
      if (Width < 1)
      {
        goto LABEL_66;
      }

      if (Width != 1)
      {
        for (i = 1; v51 != i; ++i)
        {
          BytesPerRow = CGImageGetBytesPerRow(a3);
          v55 = BytesPerRow * v49;
          if ((BytesPerRow * v49) >> 64 != (BytesPerRow * v49) >> 63)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
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
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v56 = i * a4;
          if ((i * a4) >> 64 != (i * a4) >> 63)
          {
            goto LABEL_49;
          }

          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_50;
          }

          if (!*(v19 + v58))
          {
            if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_51;
            }

            if (a6 <= -9.22337204e18)
            {
              goto LABEL_52;
            }

            if (a6 >= 9.22337204e18)
            {
              goto LABEL_53;
            }

            [a2 extent];
            v59 = CGRectGetWidth(v89);
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_54;
            }

            if (v59 <= -9.22337204e18)
            {
              goto LABEL_55;
            }

            if (v59 >= 9.22337204e18)
            {
              goto LABEL_56;
            }

            v60 = v59;
            if (v49 <= v48)
            {
              if (i <= v48)
              {
                continue;
              }

              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_60;
              }

              if (__OFSUB__(v61, 1))
              {
                goto LABEL_61;
              }

              if (i >= v61 - 1)
              {
                continue;
              }
            }

            else
            {
              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_57;
              }
            }

            v57 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v57)
            {
              goto LABEL_58;
            }

            if (v49 < v62 || i > v48)
            {
              if (__OFSUB__(i, 1))
              {
                goto LABEL_59;
              }

              a10 = a9 * (i - 1);
              v53 = [v69 CGContext];
              v88.origin.x = a10;
              v88.origin.y = a9 * (v49 - 1);
              v88.size.width = a9 + -1.0;
              v88.size.height = a9 + -1.0;
              CGContextFillEllipseInRect(v53, v88);

              v19 = a5;
            }
          }
        }
      }

      ++v49;
      v47 = *&a11;
      if (v49 == *&a11)
      {
        return;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

double QRCode.with(errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_10002BC44(v6, v5);
  sub_100AF2B78(v6, v5, a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

double QRCode.dotAdjustedWidth(with:scale:)(double a1, double a2)
{
  v3 = *v2;
  UIRoundToScale();
  return v4 * v3;
}

CGMutablePathRef QRCode.dotAlignedPath(with:in:imageBounds:)(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);

  result = CGPathCreateMutable();
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(a1 + 3) >> 1)
    {
      a1 = sub_10089D634(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    }

    sub_10099CF7C(0, 1, 0);
    CGMutablePathRef.move(to:transform:)();
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = a1 + 40;
      do
      {
        CGMutablePathRef.addLine(to:transform:)();
        v19 += 16;
        --v18;
      }

      while (v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100AF2B78(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_opt_self();
  sub_10002BC44(a1, a2);
  v9 = [v8 QRCodeGenerator];
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002C064(a1, a2);
  v11 = String._bridgeToObjectiveC()();
  [v9 setValue:isa forKey:v11];

  v12 = v9;
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();
  [v12 setValue:v13 forKey:v14];

  v15 = [v12 outputImage];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v55 = a3;
  v17 = [objc_allocWithZone(CIContext) init];
  [v16 extent];
  v18 = [v17 createCGImage:v16 fromRect:?];

  if (!v18)
  {

LABEL_18:
LABEL_19:
    v21 = 0;
LABEL_20:
    v31 = 0;
    goto LABEL_21;
  }

  v19 = CGImageGetDataProvider(v18);
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = v19;
  v21 = CGDataProviderCopyData(v19);

  if (!v21)
  {

    goto LABEL_20;
  }

  v53 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  if (BytePtr)
  {
    v23 = BytePtr;
    v24 = CGImageGetBitsPerPixel(v18) / 8;
    v25 = Int.seconds.getter(7);
    v26 = Int.seconds.getter(3);
    [v16 extent];
    v27 = CGRectGetWidth(v57) + -2.0;
    if (qword_1011A7158 != -1)
    {
      swift_once();
    }

    v28 = *&qword_1011B0418;
    v29 = v27 * *&qword_1011B0418;
    [v16 extent];
    v30 = v28 * (CGRectGetHeight(v58) + -2.0);
    v54 = [objc_allocWithZone(UIGraphicsPDFRenderer) initWithBounds:{0.0, 0.0, v29, v30}];
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = v29;
    *(v31 + 48) = v30;
    *(v31 + 56) = v26;
    *(v31 + 64) = v16;
    *(v31 + 72) = v18;
    *(v31 + 80) = v24;
    *(v31 + 88) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_100AF328C;
    *(v32 + 24) = v31;
    aBlock[4] = sub_1002CF914;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10006BD7C;
    aBlock[3] = &unk_1010E0620;
    v33 = _Block_copy(aBlock);

    v52 = v16;
    v51 = v18;

    v34 = [v54 PDFDataWithActions:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
      goto LABEL_31;
    }

    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = Data._bridgeToObjectiveC()().super.isa;
    v39 = CGDataProviderCreateWithCFData(v38);

    if (v39)
    {
      v40 = CGPDFDocumentCreateWithProvider(v39);
      if (v40)
      {
        v41 = v40;
        v42 = CGPDFDocumentGetPage(v40, 1uLL);
        if (v42)
        {
          v50 = v42;
          v43 = [objc_opt_self() _imageWithCGPDFPage:v42];
          if (v43)
          {
            v44 = v43;
            [v52 extent];
            Width = CGRectGetWidth(v59);

            sub_10002C064(v35, v37);
            v46 = Width + -2.0;
            if (COERCE__INT64(fabs(Width + -2.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v47 = v55;
              if (v46 > -9.22337204e18)
              {
                if (v46 < 9.22337204e18)
                {
                  v48 = v46;
                  sub_10002BC44(a1, a2);
                  v49 = v44;
                  sub_10002C064(a1, a2);

LABEL_22:
                  *a4 = v48;
                  a4[1] = a1;
                  a4[2] = a2;
                  a4[3] = v44;
                  a4[4] = v47;
                  return;
                }

                goto LABEL_33;
              }

LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_10002C064(v35, v37);
        }

        else
        {

          sub_10002C064(v35, v37);
        }
      }

      else
      {

        sub_10002C064(v35, v37);
      }
    }

    else
    {

      sub_10002C064(v35, v37);
    }

    v21 = sub_100AF328C;
LABEL_21:
    sub_10002C064(a1, a2);
    sub_100020438(v21, v31);
    v48 = 0;
    a1 = 0;
    a2 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
}

uint64_t *OS_os_log.sharePlay.unsafeMutableAddressor()
{
  if (qword_1011A7170 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sharePlay;
}

uint64_t static OSSignposter.music(_:)(uint64_t a1, uint64_t a2)
{

  return OSSignposter.init(subsystem:category:)();
}

uint64_t static OSSignposter.music(_:)(void *a1)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v2 = a1;
  Logger.init(_:)();
  return OSSignposter.init(logger:)();
}

void sub_100AF3434()
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v0 = type metadata accessor for OSSignposter();
  sub_100006080(v0, static OSSignposter.sharePlay);
  sub_1000060E4(v0, static OSSignposter.sharePlay);
  if (qword_1011A7170 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;
  Logger.init(_:)();
  OSSignposter.init(logger:)();
}

uint64_t sub_100AF354C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSSignposter();
  v7 = sub_1000060E4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100AF35E4()
{
  sub_100005B30();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.sharePlay = result;
  return result;
}

id static OS_os_log.sharePlay.getter()
{
  if (qword_1011A7170 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;

  return v1;
}

uint64_t sub_100AF36A8()
{
  sub_100AF86AC(v0, v8);
  if (v9 == 1)
  {
    v1 = *&v8[0];
    v2 = MPModelObject.mediaKitPlayableKind.getter();

    return *&aSongs_9[8 * v2];
  }

  else
  {
    sub_100188D80(v8, v6);
    v4 = v7;
    sub_10000954C(v6, v7);
    v5 = sub_100AF375C(v4);
    sub_10000959C(v6);
    return v5;
  }
}

uint64_t sub_100AF375C(uint64_t a1)
{
  v97 = type metadata accessor for Playlist.Entry();
  v96 = *(v97 - 8);
  __chkstk_darwin();
  v91 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v87 - v4;
  v101 = type metadata accessor for Track();
  v95 = *(v101 - 8);
  __chkstk_darwin();
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v87 - v6;
  v103 = type metadata accessor for GenericMusicItem();
  v100 = *(v103 - 8);
  __chkstk_darwin();
  v99 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v87 - v8;
  v106 = type metadata accessor for UploadedVideo();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v105 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for UploadedAudio();
  v104 = *(v109 - 8);
  __chkstk_darwin();
  v108 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for TVShow();
  v107 = *(v112 - 8);
  __chkstk_darwin();
  v111 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for TVEpisode();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v114 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Station();
  v113 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Song();
  v116 = *(v120 - 8);
  __chkstk_darwin();
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Playlist();
  v119 = *(v123 - 8);
  __chkstk_darwin();
  v122 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for MusicVideo();
  v121 = *(v125 - 8);
  __chkstk_darwin();
  v133 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for MusicMovie();
  v124 = *(v128 - 8);
  __chkstk_darwin();
  v127 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Album();
  v126 = *(v132 - 8);
  __chkstk_darwin();
  v131 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 - 8);
  __chkstk_darwin();
  v92 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v87 - v22;
  __chkstk_darwin();
  v130 = &v87 - v24;
  __chkstk_darwin();
  v26 = &v87 - v25;
  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_1000060E4(v27, static Logger.capabilityUpsell);
  v30 = v20 + 16;
  v29 = *(v20 + 16);
  v135 = v1;
  v29(v26, v1, a1);
  v90 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v89 = v23;
    v34 = v33;
    v35 = swift_slowAlloc();
    v129 = v20;
    v87 = v35;
    v137 = v35;
    *v34 = 136315138;
    v29(v130, v26, a1);
    v36 = String.init<A>(describing:)();
    v88 = v15;
    v37 = a1;
    v39 = v38;
    v136 = *(v129 + 8);
    v136(v26, v37);
    v40 = sub_100010678(v36, v39, &v137);
    a1 = v37;
    v15 = v88;

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "MusicItem - mediaKind =%s", v34, 0xCu);
    sub_10000959C(v87);

    v23 = v89;
  }

  else
  {

    v136 = *(v20 + 8);
    v136(v26, a1);
  }

  v41 = v132;
  v42 = v135;
  v132 = v30;
  v29(v23, v135, a1);
  v43 = v131;
  v44 = swift_dynamicCast();
  v46 = v133;
  v45 = v134;
  if (!v44)
  {
    v48 = v29;
    v49 = v127;
    v50 = v128;
    if (swift_dynamicCast())
    {
      (*(v124 + 8))(v49, v50);
      v47 = 0x6F6D2D636973756DLL;
      goto LABEL_36;
    }

    v51 = v125;
    if (swift_dynamicCast())
    {
      (*(v121 + 8))(v46, v51);
      v47 = 0x69762D636973756DLL;
      goto LABEL_36;
    }

    v53 = v122;
    v52 = v123;
    if (swift_dynamicCast())
    {
      (*(v119 + 8))(v53, v52);
      v47 = 0x7473696C79616C70;
      goto LABEL_36;
    }

    v54 = v15;
    v55 = v120;
    if (swift_dynamicCast())
    {
      (*(v116 + 8))(v54, v55);
      v47 = 0x73676E6F73;
      goto LABEL_36;
    }

    v56 = v117;
    v57 = v118;
    if (swift_dynamicCast())
    {
      (*(v113 + 8))(v56, v57);
      v47 = 0x736E6F6974617473;
      goto LABEL_36;
    }

    v58 = v114;
    v59 = v115;
    if (swift_dynamicCast())
    {
      (*(v110 + 8))(v58, v59);
      v47 = 0x6F736970652D7674;
      goto LABEL_36;
    }

    v60 = v111;
    v61 = v112;
    if (swift_dynamicCast())
    {
      (*(v107 + 8))(v60, v61);
      v47 = 0x73776F68732D7674;
      goto LABEL_36;
    }

    v62 = v108;
    v63 = v109;
    if (swift_dynamicCast())
    {
      v47 = 0x646564616F6C7075;
      (*(v104 + 8))(v62, v63);
      goto LABEL_36;
    }

    v64 = v105;
    v65 = v106;
    if (swift_dynamicCast())
    {
      v47 = 0x646564616F6C7075;
      (*(v102 + 8))(v64, v65);
      goto LABEL_36;
    }

    v66 = v45;
    v67 = v103;
    if (swift_dynamicCast())
    {
      v68 = v100;
      v69 = v99;
      (*(v100 + 32))(v99, v66, v67);
      sub_100AF6738(&v137);
    }

    else
    {
      v70 = v98;
      v67 = v101;
      if (!swift_dynamicCast())
      {
        v73 = v93;
        if (!swift_dynamicCast())
        {
          v76 = v48;
          v77 = v92;
          v76(v92, v42, a1);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            v137 = v135;
            *v80 = 136315138;
            v76(v130, v77, a1);
            v81 = String.init<A>(describing:)();
            v82 = v77;
            v83 = v81;
            v85 = v84;
            v136(v82, a1);
            v86 = sub_100010678(v83, v85, &v137);

            *(v80 + 4) = v86;
            _os_log_impl(&_mh_execute_header, v78, v79, "Unsupported MusicItem kind=%s", v80, 0xCu);
            sub_10000959C(v135);
          }

          else
          {

            v136(v77, a1);
          }

          goto LABEL_35;
        }

        v74 = v91;
        (*(v96 + 32))(v91, v73, v97);
        sub_100AF5D68(&v137);
        v75 = v138;
        if (v138)
        {
          sub_10000954C(&v137, v138);
          v47 = sub_100AF375C(v75);
          (*(v96 + 8))(v74, v97);
          goto LABEL_32;
        }

        (*(v96 + 8))(v74, v97);
LABEL_34:
        sub_1000095E8(&v137, &qword_1011ACCA0, &qword_100EF7480);
LABEL_35:
        v47 = 0;
        goto LABEL_36;
      }

      v68 = v95;
      v69 = v94;
      (*(v95 + 32))(v94, v70, v67);
      Track.musicItem.getter(&v137);
    }

    v71 = v138;
    if (v138)
    {
      sub_10000954C(&v137, v138);
      v47 = sub_100AF375C(v71);
      (*(v68 + 8))(v69, v67);
LABEL_32:
      sub_10000959C(&v137);
      goto LABEL_36;
    }

    (*(v68 + 8))(v69, v67);
    goto LABEL_34;
  }

  (*(v126 + 8))(v43, v41);
  v47 = 0x736D75626C61;
LABEL_36:
  v136(v23, a1);
  return v47;
}

uint64_t sub_100AF4968(uint64_t a1)
{
  v107 = type metadata accessor for Playlist.Entry();
  v103 = *(v107 - 8);
  __chkstk_darwin();
  v102 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v98 - v3;
  v111 = type metadata accessor for Track();
  v106 = *(v111 - 8);
  __chkstk_darwin();
  v105 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v98 - v5;
  v115 = type metadata accessor for GenericMusicItem();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v109 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v98 - v7;
  v119 = type metadata accessor for UploadedVideo();
  v113 = *(v119 - 8);
  __chkstk_darwin();
  v112 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v98 - v9;
  v123 = type metadata accessor for UploadedAudio();
  v117 = *(v123 - 8);
  __chkstk_darwin();
  v116 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v98 - v11;
  v127 = type metadata accessor for TVShow();
  v121 = *(v127 - 8);
  __chkstk_darwin();
  v120 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v126 = &v98 - v13;
  v131 = type metadata accessor for TVEpisode();
  v125 = *(v131 - 8);
  __chkstk_darwin();
  v124 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v130 = &v98 - v15;
  v135 = type metadata accessor for Station();
  v129 = *(v135 - 8);
  __chkstk_darwin();
  v128 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v98 - v17;
  v139 = type metadata accessor for Song();
  v133 = *(v139 - 8);
  __chkstk_darwin();
  v132 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v98 - v19;
  v143 = type metadata accessor for Playlist();
  v137 = *(v143 - 8);
  __chkstk_darwin();
  v136 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v98 - v21;
  v145 = type metadata accessor for MusicVideo();
  v141 = *(v145 - 8);
  __chkstk_darwin();
  v140 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v98 - v23;
  v25 = type metadata accessor for MusicMovie();
  v144 = *(v25 - 8);
  __chkstk_darwin();
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v98 - v28;
  v30 = type metadata accessor for Album();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v98 - v34;
  v36 = *(a1 - 8);
  __chkstk_darwin();
  v98 = &v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v98 - v38;
  v39 = __chkstk_darwin();
  v41 = &v98 - v40;
  v146 = v36;
  v42 = v36 + 16;
  v43 = *(v36 + 16);
  v45 = v44;
  v100 = v42;
  v99 = v43;
  (v43)(&v98 - v40, v147, v44, v39);
  if (swift_dynamicCast())
  {
    (*(v31 + 32))(v33, v35, v30);
    v46 = Album.catalogID.getter();
    v48 = v47;
    (*(v31 + 8))(v33, v30);
    if (v48)
    {
      v49 = v46;
    }

    else
    {
      v49 = 0;
    }

    v50 = v45;
    v51 = v146;
    goto LABEL_20;
  }

  v50 = v45;
  if (swift_dynamicCast())
  {
    v52 = v144;
    (*(v144 + 32))(v27, v29, v25);
    v49 = MusicMovie.catalogID.getter();
    v54 = v53;
    (*(v52 + 8))(v27, v25);
LABEL_10:
    if (!v54)
    {
      v49 = 0;
    }

    v51 = v146;
    goto LABEL_20;
  }

  v55 = v145;
  if (swift_dynamicCast())
  {
    v57 = v140;
    v56 = v141;
    (*(v141 + 32))(v140, v24, v55);
    v49 = MusicVideo.catalogID.getter();
    v54 = v58;
    (*(v56 + 8))(v57, v55);
    goto LABEL_10;
  }

  v60 = v142;
  v59 = v143;
  v61 = swift_dynamicCast();
  v51 = v146;
  if (v61)
  {
    v63 = v136;
    v62 = v137;
    (*(v137 + 32))(v136, v60, v59);
    v64 = Playlist.catalogID.getter();
LABEL_17:
    v49 = v64;
    v67 = v65;
    (*(v62 + 8))(v63, v59);
    goto LABEL_18;
  }

  v66 = v138;
  v59 = v139;
  if (swift_dynamicCast())
  {
    v63 = v132;
    v62 = v133;
    (*(v133 + 32))(v132, v66, v59);
    v64 = Song.catalogID.getter();
    goto LABEL_17;
  }

  v70 = v134;
  v69 = v135;
  if (swift_dynamicCast())
  {
    v71 = v129;
    v72 = v128;
    (*(v129 + 32))(v128, v70, v69);
    v49 = Station.id.getter();
    (*(v71 + 8))(v72, v69);
    goto LABEL_20;
  }

  v73 = v130;
  v59 = v131;
  if (swift_dynamicCast())
  {
    v62 = v125;
    v63 = v124;
    (*(v125 + 32))(v124, v73, v59);
    v64 = TVEpisode.catalogID.getter();
    goto LABEL_17;
  }

  v74 = v126;
  v59 = v127;
  if (swift_dynamicCast())
  {
    v62 = v121;
    v63 = v120;
    (*(v121 + 32))(v120, v74, v59);
    v64 = TVShow.catalogID.getter();
    goto LABEL_17;
  }

  v75 = v122;
  v59 = v123;
  if (swift_dynamicCast())
  {
    v62 = v117;
    v63 = v116;
    (*(v117 + 32))(v116, v75, v59);
    v64 = UploadedAudio.catalogID.getter();
    goto LABEL_17;
  }

  v76 = v118;
  v77 = v119;
  if (!swift_dynamicCast())
  {
    v81 = v114;
    v82 = v115;
    if (swift_dynamicCast())
    {
      v83 = v110;
      v84 = v109;
      (*(v110 + 32))(v109, v81, v82);
      sub_100AF6738(&v148);
    }

    else
    {
      v85 = v108;
      v82 = v111;
      if (swift_dynamicCast())
      {
        v83 = v106;
        v84 = v105;
        (*(v106 + 32))(v105, v85, v82);
        Track.musicItem.getter(&v148);
      }

      else
      {
        v86 = v104;
        v82 = v107;
        if (!swift_dynamicCast())
        {
          if (qword_1011A7178 != -1)
          {
            swift_once();
          }

          v88 = type metadata accessor for Logger();
          sub_1000060E4(v88, static Logger.capabilityUpsell);
          v89 = v101;
          v90 = v99;
          v99(v101, v147, v50);
          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v148 = v147;
            *v93 = 136315138;
            v90(v98, v89, v50);
            v94 = String.init<A>(describing:)();
            v96 = v95;
            (*(v51 + 8))(v89, v50);
            v97 = sub_100010678(v94, v96, &v148);

            *(v93 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v91, v92, "Unsupported MusicItem catalogID=%s", v93, 0xCu);
            sub_10000959C(v147);
          }

          else
          {

            (*(v51 + 8))(v89, v50);
          }

          goto LABEL_40;
        }

        v83 = v103;
        v84 = v102;
        (*(v103 + 32))(v102, v86, v82);
        sub_100AF5D68(&v148);
      }
    }

    v87 = v149;
    if (v149)
    {
      sub_10000954C(&v148, v149);
      v49 = sub_100AF4968(v87);
      (*(v83 + 8))(v84, v82);
      sub_10000959C(&v148);
      goto LABEL_20;
    }

    (*(v83 + 8))(v84, v82);
    sub_1000095E8(&v148, &qword_1011ACCA0, &qword_100EF7480);
LABEL_40:
    v49 = 0;
    goto LABEL_20;
  }

  v78 = v113;
  v79 = v112;
  (*(v113 + 32))(v112, v76, v77);
  v49 = UploadedVideo.catalogID.getter();
  v67 = v80;
  (*(v78 + 8))(v79, v77);
LABEL_18:
  if (!v67)
  {
    v49 = 0;
  }

LABEL_20:
  (*(v51 + 8))(v41, v50);
  return v49;
}

uint64_t Logger.capabilityUpsell.unsafeMutableAddressor()
{
  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.capabilityUpsell);
}

uint64_t sub_100AF5B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100AF5C34, v6, v5);
}

uint64_t sub_100AF5C34()
{

  v1 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  sub_1008BD18C(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_100AF8714(&qword_1011A79E0, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_100EEB9A4);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100AF5D68@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v2 = type metadata accessor for Playlist.Entry();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin();
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UploadedVideo();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin();
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UploadedAudio();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin();
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVEpisode();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin();
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Song();
  isa = v10[-1].isa;
  v73 = v10;
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicVideo();
  v74 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Playlist.Entry.InternalItem();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v59 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v59 - v23;
  Playlist.Entry.internalItem.getter();
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v21 + 96))(v24, v20);
    v26 = *(v17 + 32);
    v26(v19, v24, v16);
    v27 = v75;
    v75[3] = v16;
    v27[4] = sub_100AF8714(&qword_1011A9360, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v28 = sub_10001C8B8(v27);
    return (v26)(v28, v19, v16);
  }

  v30 = v75;
  if (v25 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v31 = v74[4];
    v31(v15, v24, v13);
    v30[3] = v13;
    v30[4] = &protocol witness table for MusicVideo;
    v32 = sub_10001C8B8(v30);
    return (v31)(v32, v15, v13);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v21 + 96))(v24, v20);
    v33 = v73;
    v34 = *(isa + 4);
    v34(v12, v24, v73);
    v30[3] = v33;
    v30[4] = &protocol witness table for Song;
    v35 = sub_10001C8B8(v30);
    return (v34)(v35, v12, v33);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v69;
    v37 = *(v70 + 32);
    v38 = v71;
    v37(v69, v24, v71);
    v30[3] = v38;
    v39 = &unk_1011A9370;
    v40 = &type metadata accessor for TVEpisode;
    v41 = &protocol conformance descriptor for TVEpisode;
LABEL_13:
    v30[4] = sub_100AF8714(v39, v40, v41);
    v42 = sub_10001C8B8(v30);
    return (v37)(v42, v36, v38);
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v66;
    v37 = *(v67 + 32);
    v38 = v68;
    v37(v66, v24, v68);
    v30[3] = v38;
    v39 = &unk_1011A9388;
    v40 = &type metadata accessor for UploadedAudio;
    v41 = &protocol conformance descriptor for UploadedAudio;
    goto LABEL_13;
  }

  if (v25 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v21 + 96))(v24, v20);
    v36 = v60;
    v37 = *(v61 + 32);
    v38 = v62;
    v37(v60, v24, v62);
    v30[3] = v38;
    v39 = &unk_1011A9390;
    v40 = &type metadata accessor for UploadedVideo;
    v41 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_13;
  }

  v43 = v20;
  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000060E4(v44, static Logger.capabilityUpsell);
  v46 = v63;
  v45 = v64;
  v47 = v65;
  (*(v63 + 16))(v65, v1, v64);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v74 = swift_slowAlloc();
    v76 = v74;
    *v50 = 136315138;
    v73 = v48;
    v51 = v59;
    LODWORD(isa) = v49;
    Playlist.Entry.internalItem.getter();
    sub_100AF8714(&qword_1011A88A8, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v70 = *(v21 + 8);
    (v70)(v51, v43);
    (*(v46 + 8))(v65, v45);
    v55 = sub_100010678(v52, v54, &v76);

    v56 = v71;
    *(v71 + 1) = v55;
    v57 = v73;
    _os_log_impl(&_mh_execute_header, v73, isa, "Unknown Entry internalItem=%s", v56, 0xCu);
    sub_10000959C(v74);

    v58 = v70;
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    v58 = *(v21 + 8);
  }

  v30[4] = 0;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  return v58(v24, v43);
}

uint64_t sub_100AF6738@<X0>(uint64_t *a1@<X8>)
{
  v98 = a1;
  v1 = type metadata accessor for Playlist.Folder();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin();
  v86 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Playlist();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin();
  v89 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicVideo();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin();
  v92 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicMovie();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin();
  v95 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Station();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin();
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UploadedVideo();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UploadedAudio();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TVShow();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TVEpisode();
  v80 = *(v14 - 8);
  v81 = v14;
  __chkstk_darwin();
  v79 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Song();
  v85 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v69 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin();
  v28 = &v68 - v27;
  v29 = *(v24 + 16);
  v29(&v68 - v27, v99, v23, v26);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v28, v23);
    v31 = *(v20 + 32);
    v31(v22, v28, v19);
    v32 = v98;
    v98[3] = v19;
    v32[4] = &protocol witness table for Album;
    v33 = sub_10001C8B8(v32);
    return (v31)(v33, v22, v19);
  }

  v35 = v98;
  if (v30 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v95;
    v37 = *(v96 + 32);
    v38 = v28;
    v39 = v97;
    v37(v95, v38, v97);
    v35[3] = v39;
    v40 = &qword_1011A9360;
    v41 = &type metadata accessor for MusicMovie;
    v42 = &protocol conformance descriptor for MusicMovie;
LABEL_5:
    v35[4] = sub_100AF8714(v40, v41, v42);
    v43 = sub_10001C8B8(v35);
    v44 = v36;
    v45 = v39;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v92;
    v37 = *(v93 + 32);
    v47 = v94;
    v37(v92, v28, v94);
    v48 = &protocol witness table for MusicVideo;
LABEL_10:
    v35[3] = v47;
    v35[4] = v48;
    v43 = sub_10001C8B8(v35);
    v44 = v46;
    v45 = v47;
    return v37(v43, v44, v45);
  }

  if (v30 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v28, v23);
    v46 = v89;
    v37 = *(v90 + 32);
    v47 = v91;
    v37(v89, v28, v91);
    v48 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v30 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v86;
    v37 = *(v87 + 32);
    v49 = v28;
    v39 = v88;
    v37(v86, v49, v88);
    v35[3] = v39;
    v40 = &unk_1011AAD60;
    v41 = &type metadata accessor for Playlist.Folder;
    v42 = &protocol conformance descriptor for Playlist.Folder;
    goto LABEL_5;
  }

  if (v30 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v28, v23);
    v50 = *(v85 + 32);
    v50(v18, v28, v16);
    v35[3] = v16;
    v35[4] = &protocol witness table for Song;
    v51 = sub_10001C8B8(v35);
    return (v50)(v51, v18, v16);
  }

  else
  {
    if (v30 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v28, v23);
      v46 = v82;
      v37 = *(v83 + 32);
      v47 = v84;
      v37(v82, v28, v84);
      v48 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v30 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v80 + 32);
      v36 = v79;
      v52 = v28;
      v39 = v81;
      v37(v79, v52, v81);
      v35[3] = v39;
      v40 = &unk_1011A9370;
      v41 = &type metadata accessor for TVEpisode;
      v42 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v77 + 32);
      v36 = v76;
      v53 = v28;
      v39 = v78;
      v37(v76, v53, v78);
      v35[3] = v39;
      v40 = &unk_1011A9380;
      v41 = &type metadata accessor for TVShow;
      v42 = &protocol conformance descriptor for TVShow;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v74 + 32);
      v36 = v73;
      v54 = v28;
      v39 = v75;
      v37(v73, v54, v75);
      v35[3] = v39;
      v40 = &unk_1011A9388;
      v41 = &type metadata accessor for UploadedAudio;
      v42 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v71 + 32);
      v36 = v70;
      v55 = v28;
      v39 = v72;
      v37(v70, v55, v72);
      v35[3] = v39;
      v40 = &unk_1011A9390;
      v41 = &type metadata accessor for UploadedVideo;
      v42 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_5;
    }

    if (qword_1011A7178 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000060E4(v56, static Logger.capabilityUpsell);
    v57 = v69;
    (v29)(v69, v99, v23);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v97 = v60;
      v99 = swift_slowAlloc();
      v100 = v99;
      *v60 = 136315138;
      sub_100AF8714(&unk_1011B0420, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v57;
      v64 = v63;
      v65 = *(v24 + 8);
      v65(v62, v23);
      v66 = sub_100010678(v61, v64, &v100);

      v67 = v97;
      *(v97 + 1) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unsupported GenericMusicItem kind=%s", v67, 0xCu);
      sub_10000959C(v99);
    }

    else
    {

      v65 = *(v24 + 8);
      v65(v57, v23);
    }

    v35[4] = 0;
    *v35 = 0u;
    *(v35 + 1) = 0u;
    return (v65)(v28, v23);
  }
}

uint64_t sub_100AF7528()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.capabilityUpsell);
  sub_1000060E4(v0, static Logger.capabilityUpsell);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.capabilityUpsell.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.capabilityUpsell);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(uint64_t a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v3 = &v81 - v2;
  v4 = type metadata accessor for URLQueryItem();
  v89 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v81 - v7;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v10 = &v81 - v9;
  v11 = type metadata accessor for URL();
  v91 = *(v11 - 8);
  v12 = *(v91 + 64);
  __chkstk_darwin();
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = &v81 - v13;
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_10000E338);
  v14 = v97;
  if (!v97)
  {
    goto LABEL_8;
  }

  v15 = [v97 stringForBagKey:ICURLBagKeyMarketingItemDynamicUIUrl];
  if (!v15)
  {

    goto LABEL_8;
  }

  v86 = v3;
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v11;
  v18 = v17;
  v20 = v19;

  *&v97 = 0x2F2F3A636973756DLL;
  *(&v97 + 1) = 0xE800000000000000;
  v21._countAndFlagsBits = v18;
  v22 = v87;
  v21._object = v20;
  String.append(_:)(v21);

  URL.init(string:)();

  v23 = v91;
  if ((*(v91 + 48))(v10, 1, v22) == 1)
  {

    sub_1000095E8(v10, &qword_1011A77F0, &unk_100EEAA20);
LABEL_8:
    if (qword_1011A7178 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, static Logger.capabilityUpsell);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Could not build marketingURL", v27, 2u);
    }

    return;
  }

  v28 = *(v23 + 32);
  v84 = v23 + 32;
  v83 = v28;
  v28(v90, v10, v22);
  sub_10010FC20(&qword_1011A7D38, &qword_100EFD9C0);
  v29 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v85 = *(v89 + 72);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBDC20;
  v31 = v30;
  v82 = v29;
  URLQueryItem.init(name:value:)();
  sub_100AF8584(a1, &v97);
  if (v98[24] != 253 && v98[24] != 255 && v98[24] != 254)
  {
    sub_100309980(&v97);
  }

  URLQueryItem.init(name:value:)();

  sub_100AF8584(a1, &v95);
  if (v96[24] < 0xFDu)
  {
    v97 = v95;
    *v98 = *v96;
    *&v98[9] = *&v96[9];
    sub_100AF36A8();
    v34 = v31;
    if (v35)
    {
      URLQueryItem.init(name:value:)();

      v37 = *(v31 + 2);
      v36 = *(v31 + 3);
      if (v37 >= v36 >> 1)
      {
        v34 = sub_10089C958((v36 > 1), v37 + 1, 1, v31);
      }

      v38 = v82;
      *(v34 + 2) = v37 + 1;
      (*(v89 + 32))(&v34[v38 + v37 * v85], v8, v4);
    }

    else
    {
      if (qword_1011A7178 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000060E4(v39, static Logger.capabilityUpsell);
      sub_100AF86AC(&v97, &v95);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v94 = v81;
        *v42 = 136315138;
        sub_100AF86AC(&v95, v92);
        v43 = String.init<A>(describing:)();
        v45 = v44;
        sub_100AF86E4(&v95);
        v46 = sub_100010678(v43, v45, &v94);
        v34 = v31;

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Missing kind for item=%s", v42, 0xCu);
        sub_10000959C(v81);
      }

      else
      {

        sub_100AF86E4(&v95);
      }

      v38 = v82;
    }

    sub_100AF86AC(&v97, &v95);
    if (v96[24] == 1)
    {
      v47 = v95;
      MPModelObject.bestIdentifier(for:)(2, 1u);
      v49 = v48;

      if (v49)
      {
LABEL_34:
        URLQueryItem.init(name:value:)();

        v51 = *(v34 + 2);
        v50 = *(v34 + 3);
        if (v51 >= v50 >> 1)
        {
          v34 = sub_10089C958((v50 > 1), v51 + 1, 1, v34);
        }

        v33 = v90;
        sub_100AF86E4(&v97);
        *(v34 + 2) = v51 + 1;
        (*(v89 + 32))(&v34[v38 + v51 * v85], v6, v4);
        v32 = v86;
        goto LABEL_44;
      }
    }

    else
    {
      sub_100188D80(&v95, v92);
      v52 = v93;
      sub_10000954C(v92, v93);
      sub_100AF4968(v52);
      v54 = v53;
      sub_10000959C(v92);
      if (v54)
      {
        goto LABEL_34;
      }
    }

    if (qword_1011A7178 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000060E4(v55, static Logger.capabilityUpsell);
    sub_100AF86AC(&v97, &v95);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v94 = v59;
      *v58 = 136315138;
      sub_100AF86AC(&v95, v92);
      v60 = String.init<A>(describing:)();
      v62 = v61;
      sub_100AF86E4(&v95);
      v63 = sub_100010678(v60, v62, &v94);

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "Missing id for item=%s", v58, 0xCu);
      sub_10000959C(v59);
    }

    else
    {

      sub_100AF86E4(&v95);
    }

    sub_100AF86E4(&v97);
    v33 = v90;
    v32 = v86;
    goto LABEL_44;
  }

  sub_100309980(&v95);
  v32 = v86;
  v33 = v90;
  v34 = v31;
LABEL_44:
  URL.append(queryItems:)(v34);

  if (qword_1011A7178 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_1000060E4(v64, static Logger.capabilityUpsell);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v97 = v68;
    *v67 = 136446210;
    swift_beginAccess();
    sub_100AF8714(&qword_1011AA648, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v69 = v87;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v33;
    v73 = sub_100010678(v70, v71, &v97);

    *(v67 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v65, v66, "Will present upsell with URL=%{public}s", v67, 0xCu);
    sub_10000959C(v68);
    v32 = v86;
  }

  else
  {

    v69 = v87;
    v72 = v33;
  }

  v74 = v91;
  v75 = type metadata accessor for TaskPriority();
  (*(*(v75 - 8) + 56))(v32, 1, 1, v75);
  swift_beginAccess();
  v76 = v88;
  (*(v74 + 16))(v88, v72, v69);
  type metadata accessor for MainActor();
  v77 = static MainActor.shared.getter();
  v78 = v74;
  v79 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  *(v80 + 24) = &protocol witness table for MainActor;
  v83(v80 + v79, v76, v69);
  sub_100969440(0, 0, v32, &unk_100EFD9D0, v80);

  (*(v78 + 8))(v72, v69);
}

uint64_t sub_100AF8400(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100AF8414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100AF845C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -3 - a2;
    }
  }

  return result;
}

double sub_100AF84AC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t sub_100AF84EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100AF8528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_100AF85BC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100AF5B9C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100AF8714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void variable initialization expression of Artwork.caching(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

id variable initialization expression of Artwork.decoration@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Artwork.Decoration(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v3 = v2[5];
  v4 = type metadata accessor for UIView.Corner();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  result = [objc_opt_self() blackColor];
  *&a1[v5] = result;
  *&a1[v2[7]] = 1;
  return result;
}

id variable initialization expression of Artwork.Decoration.fillColor()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.background()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

uint64_t variable initialization expression of Artwork.Placeholder.tint()
{
  if (qword_1011B0450 != -1)
  {
    swift_once();
  }

  v0 = qword_1011B11A0;
  v1 = qword_1011B11A0;
  return v0;
}

id variable initialization expression of Artwork.Placeholder.symbolConfiguration()
{
  v0 = [objc_opt_self() configurationWithWeight:4];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.View.contentView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of LyricsLoader.operationQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t variable initialization expression of Lyrics.StateManager.state@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  v3 = a1 + *(v2 + 20);
  v4 = enum case for ScenePhase.inactive(_:);
  v5 = type metadata accessor for ScenePhase();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v3 + *(v6 + 20)) = 0;
  *(v3 + *(v6 + 24)) = 0;
  v7 = *(v2 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id variable initialization expression of Lyrics.StateManager.loader()
{
  v0 = objc_allocWithZone(type metadata accessor for LyricsLoader());

  return [v0 init];
}

id variable initialization expression of Lyrics.StateManager.lyricsReportingController()
{
  v0 = objc_allocWithZone(MPCLyricsReportingController);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.StateManager.State.loading()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of Lyrics.StateManager.State.display@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = type metadata accessor for ScenePhase();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t variable initialization expression of Lyrics.StateManager.State.Display.scenePhase@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = type metadata accessor for ScenePhase();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 variable initialization expression of NoticePresenter.configuration()
{
  v1 = swift_unknownObjectWeakInit();
  *(v1 + 8) = 2;
  *(v1 + 16) = 0x4024000000000000;
  result = *&NSDirectionalEdgeInsetsZero.top;
  *(v1 + 40) = *&NSDirectionalEdgeInsetsZero.bottom;
  *(v1 + 24) = result;
  return result;
}

double variable initialization expression of CarouselView.pageIndicatorHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  result = 8.0;
  if (v1 == 6)
  {
    return 10.0;
  }

  return result;
}

id variable initialization expression of CircularProgressView.trackLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

uint64_t variable initialization expression of Collaboration.Management.Model._hasNetworkConnectivity()
{
  static ApplicationCapabilities.shared.getter(v1);
  sub_100014984(v1);
  return v1[1];
}

uint64_t variable initialization expression of Collaboration.Management.Model.$__lazy_storage_$_artworkViewModel@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100AF8F74(uint64_t a1)
{
  sub_10010FC20(&qword_1011B0C18, &qword_100F04980);
  __chkstk_darwin();
  sub_1000089F8(a1, &v4 - v2, &qword_1011B0C18, &qword_100F04980);
  return EnvironmentValues.horizontalSizeClass.setter();
}

double variable initialization expression of JSApplication.SubscriptionFlowConfiguration.source@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double variable initialization expression of ImagePicker.DummyImagePickerViewController.$__lazy_storage_$_presentationSource@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id variable initialization expression of LoadingView.label()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of LoadingView.activityIndicator()
{
  v0 = objc_allocWithZone(UIActivityIndicatorView);

  return [v0 initWithActivityIndicatorStyle:100];
}

uint64_t variable initialization expression of NowPlaying.TrackTitleStackView.metadata@<X0>(uint64_t a1@<X8>)
{
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();

  return sub_100AFA010(v2, a1);
}

double sub_100AF91FC@<D0>(void *a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*a1];
  v6 = [objc_opt_self() *a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  LOBYTE(v16) = 0;
  BYTE8(v16) = 0;
  *&v17 = 0x4040000000000000;
  *(&v17 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v18 = leading;
  *(&v18 + 1) = bottom;
  *&v19 = trailing;
  v20 = 0uLL;
  *(&v19 + 1) = 1;
  v21[0] = v5;
  v21[1] = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v26 = leading;
  v27 = bottom;
  v28 = trailing;
  v30 = 0;
  v31 = 0;
  v29 = 1;
  sub_100AFA074(&v15, &v14);
  sub_100AFA0D0(v21);
  v10 = v18;
  a3[2] = v17;
  a3[3] = v10;
  v11 = v20;
  a3[4] = v19;
  a3[5] = v11;
  result = *&v15;
  v13 = v16;
  *a3 = v15;
  a3[1] = v13;
  return result;
}

__n128 variable initialization expression of Gliss.Transition<>.Output.transform3D@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&CATransform3DIdentity.m33;
  *(a1 + 64) = *&CATransform3DIdentity.m31;
  *(a1 + 80) = v1;
  v2 = *&CATransform3DIdentity.m43;
  *(a1 + 96) = *&CATransform3DIdentity.m41;
  *(a1 + 112) = v2;
  v3 = *&CATransform3DIdentity.m13;
  *a1 = *&CATransform3DIdentity.m11;
  *(a1 + 16) = v3;
  result = *&CATransform3DIdentity.m21;
  v5 = *&CATransform3DIdentity.m23;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.symbol@<D0>(uint64_t a1@<X8>)
{
  sub_100BF5F9C(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

UIFontTextStyle SymbolButton.Title.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = UIFontTextStyleSubheadline;
  *(a1 + 24) = UIFontWeightSemibold;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return UIFontTextStyleSubheadline;
}

double variable initialization expression of SymbolButton.Configuration.material@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.customView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id variable initialization expression of QRCodeOverlayViewController.backgroundView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.qrCodeView()
{
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.logoView()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of QRCodeOverlayViewController.titleLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.subtitleLabelEffectView()
{
  if (qword_1011B0758 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() effectForBlurEffect:qword_10121B948];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  return v1;
}

id variable initialization expression of QRCodeOverlayViewController.scrollView()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.overlayLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

uint64_t sub_100AF9798@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.effectiveForegroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100AF9818@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_10010FC20(a2, a3);

  return swift_storeEnumTagMultiPayload();
}

id sub_100AF9890(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = UIView.forAutolayout.getter();

  return v2;
}

id variable initialization expression of SliderView.feedbackGenerator()
{
  v0 = objc_allocWithZone(UIImpactFeedbackGenerator);

  return [v0 initWithStyle:0];
}

id variable initialization expression of SliderView.trackLayoutGuide()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id variable initialization expression of SyncedLyricsViewController.Specs.glowColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of SliderView.remainingTrackColor()
{
  v0 = [objc_opt_self() systemFillColor];

  return v0;
}

id variable initialization expression of SliderView.trackingColor()
{
  if (qword_1011B04D0 != -1)
  {
    swift_once();
  }

  v1 = static UIColor.MusicTint.normal;

  return v1;
}

id variable initialization expression of SyncedLyricsViewController.contentView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of SymbolButton.materialView()
{
  v4 = 1;
  v0 = type metadata accessor for SymbolButton.MaterialView();
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, "initWithEffect:", 0);
  sub_100BF0E28(&v4);

  return v1;
}

id variable initialization expression of SymbolButton.backgroundView()
{
  if (qword_1011B07B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *&static SymbolButton.Background.clear;
  v1 = qword_10121BAF8;
  v2 = qword_10121BB00;
  v3 = qword_10121BB08;
  v4 = type metadata accessor for SymbolButton.BackgroundView();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v6 = 0;
  *(v6 + 1) = 0x3FF0000000000000;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v1;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100BF12A4(v1, v0, v2, v3);
  sub_100BF1464();

  return v8;
}

uint64_t sub_100AF9C2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of VerticalToggleSlider.packageDefinition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of VerticalToggleSlider.blurEffect()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];

  return v0;
}

void variable initialization expression of VerticalToggleSlider.growTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id variable initialization expression of WaveformPlayIndicator.colorPalette()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent:0.35];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent:0.6];

  return v1;
}

id variable initialization expression of WaveformPlayIndicator.waveform()
{
  v0 = [objc_opt_self() zero];

  return v0;
}

uint64_t variable initialization expression of WaveformPlayIndicator.cannedAnimationAsset()
{
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  return sub_100C0B798();
}

uint64_t sub_100AF9F3C(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100AF9F90(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100AFA010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100AFA138@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Int sub_100AFA1E8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100AFA250(uint64_t a1)
{
  sub_100AFAB8C(&qword_1011B0C08, type metadata accessor for UIContentSizeCategory, &unk_100EFE554);
  sub_100AFAB8C(&qword_1011B0C10, type metadata accessor for UIContentSizeCategory, &unk_100EFE4F4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA30C(uint64_t a1)
{
  sub_100AFAB8C(&qword_1011B0BF8, _s3__C9TextStyleVMa_0, &unk_100EFE6AC);
  sub_100AFAB8C(&qword_1011B0C00, _s3__C9TextStyleVMa_0, &unk_100EFE64C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA3C8(uint64_t a1)
{
  sub_100AFAB8C(&qword_1011B0BE0, type metadata accessor for Weight, &unk_100EFE804);
  sub_100AFAB8C(&qword_1011B0BE8, type metadata accessor for Weight, &unk_100EFE7A4);
  sub_100AFB51C();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA490(uint64_t a1)
{
  sub_100AFAB8C(&qword_1011B0BD0, type metadata accessor for FeatureKey, &unk_100EFEBD0);
  sub_100AFAB8C(&qword_1011B0BD8, type metadata accessor for FeatureKey, &unk_100EFEB70);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA54C(uint64_t a1)
{
  sub_100AFAB8C(&qword_1011B0BC0, _s3__C13AttributeNameVMa_0, &unk_100EFF4C4);
  sub_100AFAB8C(&qword_1011B0BC8, _s3__C13AttributeNameVMa_0, &unk_100EFECC8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA608(uint64_t a1)
{
  sub_100AFAB8C(&qword_1011B0C58, _s3__C4NameVMa_1, &unk_100EFF640);
  sub_100AFAB8C(&unk_1011B0C60, _s3__C4NameVMa_1, &unk_100EFF5E0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA6C4(uint64_t a1)
{
  sub_100AFAB8C(&qword_1011B0BA0, type metadata accessor for CAGradientLayerType, &unk_100EFF128);
  sub_100AFAB8C(&qword_1011B0BA8, type metadata accessor for CAGradientLayerType, &unk_100EFF0C8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA780(uint64_t a1)
{
  sub_100AFAB8C(&qword_1011B0BB0, type metadata accessor for InfoKey, &unk_100EFF480);
  sub_100AFAB8C(&qword_1011B0BB8, type metadata accessor for InfoKey, &unk_100EFEDDC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100AFA83C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

void sub_100AFA8B0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

__n128 sub_100AFA97C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_100AFA9B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GlowModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100AFAB8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100AFB51C()
{
  result = qword_1011B0BF0;
  if (!qword_1011B0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B0BF0);
  }

  return result;
}

id Artwork.content.getter()
{
  v1 = *v0;
  sub_100AFB6F8(*v0, v0[1]);
  return v1;
}

id sub_100AFB6F8(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void Artwork.content.setter(void *a1, void *a2)
{
  sub_10004D23C(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t Artwork.size.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = result;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t Artwork.decoration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Artwork(0) + 28);

  return sub_100557AF8(a1, v3);
}

double Artwork.placeholderViewProvider.getter()
{
  type metadata accessor for Artwork(0);
  swift_unknownObjectRetain();
  return result;
}

void Artwork.placeholderViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Artwork(0) + 36));
  swift_unknownObjectRelease();
  *v5 = a1;
  v5[1] = a2;
}

char *sub_100AFBA6C(uint64_t a1)
{
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A5F0(v1, v3, type metadata accessor for Artwork);
  v4 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v5 = Artwork.View.init(configuration:)(v3);
  sub_100AFE700(&qword_1011B0E98, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  return v5;
}

void Artwork.View.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v4 = 0;
  *(v4 + 8) = -1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall Artwork.View.invalidatePlaceholderView()()
{
  v1 = [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v1)
  {

    goto LABEL_3;
  }

  v3 = [v0 artworkCatalog];
  if (!v3)
  {
LABEL_3:
    v2 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v2])
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_7:
  sub_10004A658();
}

uint64_t Artwork.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  return sub_10004A5F0(v1 + v3, a1, type metadata accessor for Artwork);
}

void (*Artwork.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
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
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Artwork(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_10004A5F0(v1 + v8, v7, type metadata accessor for Artwork);
  return sub_100AFBF5C;
}

void sub_100AFBF5C(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_10004A5F0(*(*a1 + 12), v6, type metadata accessor for Artwork);
    sub_10004A5F0(v7 + v4, v5, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_10004D8C8(v6, v7 + v4);
    swift_endAccess();
    sub_10004D9B8(v5);
    sub_10004BEBC(v5, type metadata accessor for Artwork);
  }

  else
  {
    sub_10004A5F0(v7 + v4, v6, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_10004D8C8(v3, v7 + v4);
    swift_endAccess();
    sub_10004D9B8(v6);
  }

  sub_10004BEBC(v6, type metadata accessor for Artwork);
  sub_10004BEBC(v3, type metadata accessor for Artwork);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Artwork.View.imageDidChangeHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1, v1[1]);
  return v2;
}

uint64_t Artwork.View.imageDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6, v7);
}

void Artwork.View.intrinsicContentSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  if (*(v1 + 48) == 2 && *(v1 + 64) == 2)
  {
    v3.n128_u64[0] = *(v1 + 56);
    v2.n128_u64[0] = *(v1 + 40);
  }

  else
  {
    v2.n128_u64[0] = 0;
    v3.n128_u64[0] = 0;
  }

  Artwork.View.fittingImageSize(in:)(v2, v3);
}

double Artwork.Size.computedSize(in:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  sub_100058300(a5, a6, a1, a2);
  v11 = v10;
  sub_100058300(a5, a6, a3, a4);
  return v11;
}

void sub_100AFC458(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v19 = v6;
  v9 = [a2 imageRepresentation];
  if (v9)
  {
    v18 = v9;
    v10 = [v9 image];
    if (v10)
    {
      v11 = v10;
      if (([v18 isImagePrepared] & 1) == 0)
      {
        v14 = swift_allocObject();
        v14[2] = a3;
        v14[3] = v11;
        v14[4] = v8;
        aBlock[4] = sub_100AFE9F8;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000603D0;
        aBlock[3] = &unk_1010E16C8;
        v15 = _Block_copy(aBlock);
        v16 = v19;
        v17 = v11;

        [v17 prepareForDisplayWithCompletionHandler:v15];

        _Block_release(v15);
        return;
      }

      v12 = v11;
      sub_10004C458(v11);

      [v8 setNeedsLayout];
      v13 = v18;
      goto LABEL_8;
    }
  }

  sub_10004C458(0);
  [v8 setNeedsLayout];
  v13 = v19;
LABEL_8:
}

uint64_t sub_100AFC65C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011B4F00, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_100AFEA04;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010E1718;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a3;
  v18 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100AFE700(&qword_1011B1148, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_1011B1150, &unk_100F0A4B0);
  sub_100024964();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_100AFC944(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [a4 artworkCatalog];
  v9 = v8;
  if (!Strong)
  {
    if (v8)
    {

      return;
    }

LABEL_7:
    if (a2)
    {
      v11 = a2;
      sub_10004C458(a2);
    }

    else
    {
      if (qword_1011B0628 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000060E4(v12, static Logger.artwork);
      v13 = a3;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to prepare image: %@", v16, 0xCu);
        sub_1000095E8(v17, &qword_1011B1160, &qword_100EFFA80);
      }

      sub_10004C458(v13);
    }

    [a4 setNeedsLayout];
    return;
  }

  if (!v8)
  {

    return;
  }

  sub_100009F78(0, &qword_1011B1168, MPArtworkCatalog_ptr);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    goto LABEL_7;
  }
}

void (*sub_100AFCC50(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.View.typedConfiguration.modify(v2);
  return sub_100260668;
}

uint64_t sub_100AFCCC0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Artwork(0);
  a1[4] = sub_100AFE700(&qword_1011B0E48, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v3 = sub_10001C8B8(a1);
  v4 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  return sub_10004A5F0(v1 + v4, v3, type metadata accessor for Artwork);
}

uint64_t sub_100AFCD80(void *a1)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin();
  v6 = v10 - v5 + 40;
  sub_100008FE4(a1, v10);
  sub_10010FC20(&qword_1011B1140, "p.\n");
  swift_dynamicCast();
  v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_10004A5F0(v1 + v7, v4, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_10004D8C8(v6, v1 + v7);
  swift_endAccess();
  sub_10004D9B8(v4);
  sub_10004BEBC(v6, type metadata accessor for Artwork);
  sub_10004BEBC(v4, type metadata accessor for Artwork);
  return sub_10000959C(a1);
}

void (*sub_100AFCEFC(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 104) = v1;
  *(v3 + 24) = type metadata accessor for Artwork(0);
  v4[4] = sub_100AFE700(&qword_1011B0E48, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v5 = sub_10001C8B8(v4);
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_10004A5F0(v1 + v6, v5, type metadata accessor for Artwork);
  return sub_100AFD000;
}

void sub_100AFD000(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100008FE4(*a1, (v2 + 5));
    sub_100AFCD80(v2 + 5);
    sub_10000959C(v2);
  }

  else
  {
    sub_100AFCD80(*a1);
  }

  free(v2);
}