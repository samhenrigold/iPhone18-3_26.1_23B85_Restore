int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100005744(&qword_1000240C8, &qword_10001A800);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_100019934();
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100019944();
  __chkstk_darwin(v9);
  v10 = sub_100018CE4();
  __chkstk_darwin(v10 - 8);
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_100018D54();
  qword_1000242E8 = sub_100018D24();
  qword_1000242F0 = &off_100021128;
  sub_100018CF4();
  qword_1000242F8 = &off_1000211E8;
  sub_100018D04();
  sub_100018DA4();
  sub_10000578C();
  sub_100018D34();
  sub_1000194F4();
  sub_1000057E0();
  sub_100018D34();
  sub_100018E04();
  sub_100005834();
  sub_100018D34();
  sub_100005888();
  sub_100018CD4();
  v19 = &_swiftEmptyArrayStorage;
  sub_100005E48(&qword_1000240F0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100005744(&qword_1000240F8, &qword_10001A808);
  sub_1000058D4();
  sub_1000199F4();
  (*(v17 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v18);
  v11 = sub_100019954();
  v19 = v11;
  sub_100018F24();
  sub_100005980();
  sub_100018D44();

  v12 = sub_100019764();
  sub_1000059D4(v12, qword_100024300);
  v13 = sub_100005A38(v12, qword_100024300);
  v14 = *(v12 - 8);
  (*(v14 + 104))(v13, enum case for SandboxID.blastdoor(_:), v12);
  (*(v14 + 16))(v5, v13, v12);
  (*(v14 + 56))(v5, 0, 1, v12);
  sub_100018D14();
  sub_100005A70(v5);
  return 0;
}

uint64_t sub_100005744(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000578C()
{
  result = qword_1000240D0;
  if (!qword_1000240D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000240D0);
  }

  return result;
}

unint64_t sub_1000057E0()
{
  result = qword_1000240D8;
  if (!qword_1000240D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000240D8);
  }

  return result;
}

unint64_t sub_100005834()
{
  result = qword_1000240E0;
  if (!qword_1000240E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000240E0);
  }

  return result;
}

unint64_t sub_100005888()
{
  result = qword_1000240E8;
  if (!qword_1000240E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000240E8);
  }

  return result;
}

unint64_t sub_1000058D4()
{
  result = qword_100024100;
  if (!qword_100024100)
  {
    sub_100005938(&qword_1000240F8, &qword_10001A808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024100);
  }

  return result;
}

uint64_t sub_100005938(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005980()
{
  result = qword_100024108;
  if (!qword_100024108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024108);
  }

  return result;
}

uint64_t *sub_1000059D4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100005A38(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005A70(uint64_t a1)
{
  v2 = sub_100005744(&qword_1000240C8, &qword_10001A800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100005ADC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100005AF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005B10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 sub_100005B5C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005B68(uint64_t a1, int a2)
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

uint64_t sub_100005B88(uint64_t result, int a2, int a3)
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

__n128 sub_100005BC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100005BD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005BF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

Swift::Int sub_100005D2C(uint64_t a1, uint64_t a2)
{
  sub_100019AC4();
  swift_getWitnessTable();
  sub_100018C94();
  return sub_100019AD4();
}

uint64_t sub_100005D94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_100018C84();
}

uint64_t sub_100005E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100005EEC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100005F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64[4] = a1;
  v64[3] = a2;
  v2 = sub_100005744(&qword_100024168, &qword_10001AA70);
  __chkstk_darwin(v2 - 8);
  v74 = v64 - v3;
  v4 = sub_100019714();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v77 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100019554();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v68 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019534();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v65 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000194F4();
  __chkstk_darwin(v10 - 8);
  v64[2] = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100019594();
  v73 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v64[1] = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v71 = v64 - v17;
  __chkstk_darwin(v16);
  v19 = v64 - v18;
  v20 = sub_1000196F4();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v64 - v25;
  sub_100018D84();
  sub_100018D74();
  v79 = v26;
  v80 = v21;
  (*(v21 + 16))(v24, v26, v20);
  sub_100019754();
  swift_allocObject();
  v27 = v78;
  sub_100019744();
  if (v27)
  {
    v84 = v27;
    swift_errorRetain();
    sub_100005744(&qword_100024170, &qword_10001AA78);
    v28 = swift_dynamicCast();
    v72 = v20;
    if (v28)
    {

      v29 = *(v73 + 32);
      v78 = v12;
      v29(v71, v19, v12);
      v30 = v65;
      sub_100019574();
      v31 = sub_100019524();
      v33 = v32;
      (*(v66 + 8))(v30, v67);
      v82 = v31;
      v83 = v33;
      v85._countAndFlagsBits = 8250;
      v85._object = 0xE200000000000000;
      sub_100019804(v85);
      v34 = v68;
      sub_100019564();
      v35 = sub_100019544();
      v37 = v36;
      (*(v69 + 8))(v34, v70);
      v86._countAndFlagsBits = v35;
      v86._object = v37;
      sub_100019804(v86);

      if (sub_100019584())
      {
        v81._countAndFlagsBits = 0;
        v81._object = 0xE000000000000000;
        sub_100019A14(16);

        strcpy(&v81, ". Extra Info: ");
        HIBYTE(v81._object) = -18;
        v38 = sub_1000197A4();
        v40 = v39;

        v87._countAndFlagsBits = v38;
        v87._object = v40;
        sub_100019804(v87);

        sub_100019804(v81);
      }

      v41 = v77;
      sub_100019704();
      sub_100006FE0();
      v42 = sub_1000199B4();
      sub_100005744(&qword_100024180, qword_10001AA80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_10001A9F0;
      v44 = v74;
      v45 = v75;
      v70 = *(v75 + 16);
      v46 = v76;
      v70(v74, v41, v76);
      (*(v45 + 56))(v44, 0, 1, v46);
      v47 = sub_100019614();
      v49 = v48;
      sub_10000702C(v44);
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = sub_100007094();
      *(v43 + 32) = v47;
      *(v43 + 40) = v49;
      v50 = sub_1000198F4();
      sub_100018CB4("LargeImage explosion: %{public}@", 32, 2, &_mh_execute_header, v42, v50, v43);

      sub_1000070E8(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v70(v51, v41, v46);
      swift_willThrow();
      (*(v45 + 8))(v41, v46);
      (*(v73 + 8))(v71, v78);
      (*(v80 + 8))(v79, v72);
    }

    else
    {

      v53 = v77;
      sub_100019704();
      sub_100006FE0();
      v73 = sub_1000199B4();
      sub_100005744(&qword_100024180, qword_10001AA80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10001A9F0;
      v55 = v74;
      v56 = v75;
      v78 = *(v75 + 16);
      v57 = v76;
      v78(v74, v53, v76);
      (*(v56 + 56))(v55, 0, 1, v57);
      v58 = sub_100019614();
      v60 = v59;
      sub_10000702C(v55);
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = sub_100007094();
      *(v54 + 32) = v58;
      *(v54 + 40) = v60;
      v61 = sub_1000198F4();
      v62 = v73;
      sub_100018CB4("LargeImage explosion: %{public}@", 32, 2, &_mh_execute_header, v73, v61, v54);

      sub_1000070E8(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v78(v63, v53, v57);
      swift_willThrow();

      (*(v56 + 8))(v53, v57);
      return (*(v80 + 8))(v79, v72);
    }
  }

  else
  {
    v78 = v12;

    sub_100019724();

    sub_100018D94();
    sub_100018D64();
    return (*(v80 + 8))(v79, v20);
  }
}

unint64_t sub_100006FE0()
{
  result = qword_100024178;
  if (!qword_100024178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100024178);
  }

  return result;
}

uint64_t sub_10000702C(uint64_t a1)
{
  v2 = sub_100005744(&qword_100024168, &qword_10001AA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100007094()
{
  result = qword_100024188;
  if (!qword_100024188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024188);
  }

  return result;
}

uint64_t sub_1000070E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007130(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100007470(*a1);
  v5 = v4;
  if (v3 == sub_100007470(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100019AA4();
  }

  return v8 & 1;
}

Swift::Int sub_1000071B8()
{
  v1 = *v0;
  sub_100019AC4();
  sub_100007470(v1);
  sub_1000197F4();

  return sub_100019AD4();
}

uint64_t sub_10000721C(uint64_t a1)
{
  sub_100007470(*v1);
  sub_1000197F4();
}

Swift::Int sub_100007270()
{
  v1 = *v0;
  sub_100019AC4();
  sub_100007470(v1);
  sub_1000197F4();

  return sub_100019AD4();
}

unint64_t sub_1000072E0()
{
  v0 = &stru_100000020;
  while (1)
  {
    v3 = *(&off_100021220 + v0);
    v4 = sub_100007470(v3);
    v6 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_10000C264(v4, v6);
    v9 = _swiftEmptyDictionarySingleton[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      break;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_10000A808(v12, isUniquelyReferenced_nonNull_native);
      result = sub_10000C264(v4, v6);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v13)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v18 = result;
    sub_10000AD60();
    result = v18;
    if (v13)
    {
LABEL_2:
      v1 = result;

      *(_swiftEmptyDictionarySingleton[7] + v1) = v3;
      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    v15 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
    *v15 = v4;
    v15[1] = v6;
    *(_swiftEmptyDictionarySingleton[7] + result) = v3;
    v16 = _swiftEmptyDictionarySingleton[2];
    v11 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v11)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v17;
LABEL_3:
    if (++v0 == 118)
    {
      off_100024198 = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_100019AB4();
  __break(1u);
  return result;
}

uint64_t sub_100007470(char a1)
{
  result = 0x6974617275447661;
  switch(a1)
  {
    case 1:
      if (kPFMediaPropertyTimeZoneOffsetSeconds)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 29:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 50:
    case 51:
    case 52:
    case 58:
    case 79:
    case 85:
      goto LABEL_100;
    case 9:
      if (!kPFImagePropertyCustomPhotoProcessingFlags)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 24:
      if (!kPFVideoPropertyVideoDynamicRange)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 25:
      goto LABEL_88;
    case 26:
      goto LABEL_33;
    case 27:
      if (kPFVideoPropertyVideoContainsCinematicData)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_84:
      if (!kPFMediaPropertyLivePhotoPairingIdentifier)
      {
        __break(1u);
LABEL_86:
        if (!kPFVideoPropertyCaptureMode)
        {
          __break(1u);
LABEL_88:
          if (!kPFImagePropertyHDRGain)
          {
            __break(1u);
LABEL_90:
            if (!kPFFilePropertyUniformTypeIdentifier)
            {
              __break(1u);
LABEL_92:
              if (!kPFImagePropertySmartStyleVideoCastValue)
              {
                __break(1u);
LABEL_94:
                if (!kPFFilePropertyOriginalFilename)
                {
                  goto LABEL_99;
                }
              }
            }
          }
        }
      }

      goto LABEL_100;
    case 28:
      goto LABEL_84;
    case 30:
      if (!kPFVideoPropertyPlaybackVariationIdentifier)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 31:
      if (!kPFVideoPropertyVideoComplVideoDurationValue)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 32:
      if (!kPFVideoPropertyVideoComplVideoDurationTimescale)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 33:
      goto LABEL_35;
    case 34:
      goto LABEL_27;
    case 35:
      return result;
    case 36:
      goto LABEL_29;
    case 37:
      goto LABEL_20;
    case 38:
      goto LABEL_86;
    case 39:
      if (!kPFVideoPropertyVideoIsMontage)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 40:
      if (kPFVideoPropertyIsProRes)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_48:
      if (!kPFImagePropertySpatialOverCaptureIdentifier)
      {
        __break(1u);
LABEL_50:
        if (!kPFImagePropertySemanticStylePreset)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_100;
    case 41:
      if (kPFVideoPropertyVideoDurationValue)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_62:
      if (!kPFImagePropertyStillImageCaptureFlags)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 42:
      goto LABEL_78;
    case 43:
      if (kPFMediaPropertyOriginatingAssetIdentifier)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_14:
      if (kPFImagePropertySmartStyleToneBias)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_16:
      if (kPFVideoPropertyCaptureModeTimelapse)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_18:
      if (kPFImagePropertySmartStyleIsReversible)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_20:
      if (kPFVideoPropertyCustomCodecFourCharCode)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_22:
      result = 0x6953656C6946534ELL;
      break;
    case 49:
      return 0x5465746144737067;
    case 53:
      goto LABEL_22;
    case 54:
      goto LABEL_90;
    case 55:
      goto LABEL_94;
    case 56:
      if (kPFImagePropertyIsPhotoBooth)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_25:
      if (!kPFImagePropertyIsAnimatedImage)
      {
        __break(1u);
LABEL_27:
        if (!kPFVideoPropertyVideoComplVideoImageDisplayTimescale)
        {
          __break(1u);
LABEL_29:
          if (!kPFVideoPropertyAVFPS)
          {
            __break(1u);
LABEL_31:
            if (!kPFImagePropertySmartStyleCast)
            {
              __break(1u);
LABEL_33:
              if (!kPFImagePropertyHasHDRGainMap)
              {
                __break(1u);
LABEL_35:
                if (!kPFVideoPropertyVideoComplVideoImageDisplayValue)
                {
                  goto LABEL_99;
                }
              }
            }
          }
        }
      }

      goto LABEL_100;
    case 57:
      if (kPFImagePropertyBurstUuid)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_78:
      if (!kPFVideoPropertyVideoDurationTimescale)
      {
        __break(1u);
LABEL_80:
        if (!kPFImagePropertyFrontFacingCamera)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_100;
    case 59:
      goto LABEL_80;
    case 60:
      goto LABEL_48;
    case 61:
      if (!kPFImagePropertySemanticStyleSceneBias)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 62:
      goto LABEL_68;
    case 63:
      if (!kPFImagePropertySemanticStyleRenderingVersion)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 64:
      goto LABEL_50;
    case 65:
      if (kPFImagePropertySmartStyleHasSmartStyle)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_68:
      if (!kPFImagePropertySemanticStyleWarmthBias)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 66:
      goto LABEL_14;
    case 67:
      if (!kPFImagePropertySmartStyleColorBias)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 68:
      goto LABEL_103;
    case 69:
      goto LABEL_31;
    case 70:
      if (kPFImagePropertySmartStyleRenderingVersion)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_10:
      if (!kPFImagePropertyCameraUsedForCapture)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 71:
      goto LABEL_18;
    case 72:
      goto LABEL_92;
    case 73:
      if (kPFImagePropertyIsHDR)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_98:
      if (!kPFImagePropertyHasISOGainMap)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 74:
      goto LABEL_98;
    case 75:
      goto LABEL_25;
    case 76:
      goto LABEL_62;
    case 77:
      goto LABEL_10;
    case 78:
      if (kPFImagePropertyExifFlashFired)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_103:
      if (!kPFImagePropertySmartStyleIntensity)
      {
        __break(1u);
        JUMPOUT(0x100007A84);
      }

      goto LABEL_100;
    case 80:
      goto LABEL_16;
    case 81:
      if (kPFImagePropertyHasSpatialAudio)
      {
        goto LABEL_100;
      }

      __break(1u);
      return 0x5465746144737067;
    case 82:
      if (!kPFImagePropertyIsAlchemist)
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    case 83:
      goto LABEL_6;
    case 84:
      goto LABEL_4;
    default:
      if (kPFMediaPropertyCreationDate)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_4:
      if (!kPFImagePropertyGenerativeAIImageType)
      {
        __break(1u);
LABEL_6:
        if (!kPFImagePropertyIsThreeImageStereoHEIC)
        {
LABEL_99:
          __break(1u);
        }
      }

LABEL_100:
      result = sub_1000197C4();
      break;
  }

  return result;
}

uint64_t sub_100007BDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B06C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100007C0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007470(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_100007C38(void *a1)
{
  v2 = sub_100019234();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005744(&qword_1000241A0, &qword_10001AAC8);
  __chkstk_darwin(v6 - 8);
  v8 = &v113 - v7;
  v9 = sub_100005744(&qword_1000241A8, &qword_10001AAD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v113 - v10;
  v12 = sub_100005744(&qword_1000241B0, &qword_10001AAD8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v113 - v16;
  result = [a1 syndicationProperties];
  if (result)
  {
    v116 = v17;
    v117 = v15;
    v118 = v11;
    v119 = v8;
    v120 = v5;
    v121 = v2;
    v19 = result;
    v20 = sub_100019794();

    v21 = 0;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 64);
    v25 = (v22 + 63) >> 6;
    v115 = enum case for MediaMetadata.AppleMakerNoteCamera.unknown(_:);
    v114 = (v3 + 104);
    v113 = (v3 + 56);
    while (1)
    {
      if (v24)
      {
        v26 = v21;
LABEL_17:
        v29 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v30 = v29 | (v26 << 6);
        v31 = (*(v20 + 48) + 16 * v30);
        v33 = *v31;
        v32 = v31[1];
        sub_10000A704(*(v20 + 56) + 32 * v30, v123);
        *&v124 = v33;
        *(&v124 + 1) = v32;
        sub_10000A760(v123, &v125);
      }

      else
      {
        v27 = v25 <= v21 + 1 ? v21 + 1 : v25;
        v28 = v27 - 1;
        while (1)
        {
          v26 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            JUMPOUT(0x10000A5ACLL);
          }

          if (v26 >= v25)
          {
            break;
          }

          v24 = *(v20 + 64 + 8 * v26);
          ++v21;
          if (v24)
          {
            v21 = v26;
            goto LABEL_17;
          }
        }

        v24 = 0;
        v125 = 0u;
        v126 = 0u;
        v21 = v28;
        v124 = 0u;
      }

      v127 = v124;
      v128[0] = v125;
      v128[1] = v126;
      v34 = *(&v124 + 1);
      if (!*(&v124 + 1))
      {
      }

      v35 = v127;
      sub_10000A760(v128, &v124);
      if (qword_1000240C0 != -1)
      {
        swift_once();
      }

      v36 = off_100024198;
      if (*(off_100024198 + 2))
      {
        v37 = sub_10000C264(v35, v34);
        v39 = v38;

        if (v39)
        {
          switch(*(v36[7] + v37))
          {
            case 1:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v83 = v122;
                [v122 integerValue];
              }

              sub_100019104();
              break;
            case 2:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v76 = v122;
                [v122 doubleValue];
              }

              sub_1000191B4();
              break;
            case 3:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v79 = v122;
                [v122 integerValue];
              }

              sub_1000190D4();
              break;
            case 4:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v69 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_100019084();
              break;
            case 5:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v89 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_1000190E4();
              break;
            case 6:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_1000194D4();
              break;
            case 7:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_1000194A4();
              break;
            case 8:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100018FC4();
              break;
            case 9:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v73 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_100019124();
              break;
            case 0xA:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v95 = v122;
                [v122 BOOLValue];
              }

              sub_100019134();
              break;
            case 0xB:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v64 = v122;
                [v122 doubleValue];
              }

              sub_100019044();
              break;
            case 0xC:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v72 = v122;
                [v122 integerValue];
              }

              sub_100019164();
              break;
            case 0xD:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v93 = v122;
                [v122 integerValue];
              }

              sub_100019404();
              break;
            case 0xE:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v61 = v122;
                [v122 doubleValue];
              }

              sub_100018F84();
              break;
            case 0xF:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v77 = v122;
                [v122 doubleValue];
              }

              sub_100019194();
              break;
            case 0x10:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v58 = v122;
                [v122 integerValue];
              }

              sub_1000190C4();
              break;
            case 0x11:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v85 = v122;
                [v122 integerValue];
              }

              sub_100019014();
              break;
            case 0x12:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v94 = v122;
                [v122 doubleValue];
              }

              sub_100019024();
              break;
            case 0x13:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100019424();
              break;
            case 0x14:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_1000193E4();
              break;
            case 0x15:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v92 = v122;
                [v122 integerValue];
              }

              sub_100019034();
              break;
            case 0x16:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v99 = v122;
                [v122 integerValue];
              }

              sub_100018FB4();
              break;
            case 0x17:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v102 = v122;
                [v122 integerValue];
              }

              sub_100019274();
              break;
            case 0x18:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v75 = v122;
                [v122 integerValue];
              }

              sub_100019184();
              break;
            case 0x19:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v74 = v122;
                [v122 doubleValue];
              }

              sub_100019444();
              break;
            case 0x1A:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v104 = v122;
                [v122 BOOLValue];
              }

              sub_100019054();
              break;
            case 0x1B:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v56 = v122;
                [v122 BOOLValue];
              }

              sub_100019374();
              break;
            case 0x1C:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100018F44();
              break;
            case 0x1D:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v103 = v122;
                [v122 doubleValue];
              }

              sub_100018FE4();
              break;
            case 0x1E:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v96 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_100019214();
              break;
            case 0x1F:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v84 = v122;
                [v122 doubleValue];
              }

              sub_100019394();
              break;
            case 0x20:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v97 = v122;
                [v122 doubleValue];
              }

              sub_1000193B4();
              break;
            case 0x21:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v62 = v122;
                [v122 doubleValue];
              }

              sub_1000193C4();
              break;
            case 0x22:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v57 = v122;
                [v122 doubleValue];
              }

              sub_1000193D4();
              break;
            case 0x23:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v53 = v122;
                [v122 doubleValue];
              }

              sub_100018F64();
              break;
            case 0x24:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v54 = v122;
                [v122 doubleValue];
              }

              sub_1000193F4();
              break;
            case 0x25:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100019154();
              break;
            case 0x26:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100018F74();
              break;
            case 0x27:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_1000190B4();
              break;
            case 0x28:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v70 = v122;
                [v122 BOOLValue];
              }

              sub_100019484();
              break;
            case 0x29:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v86 = v122;
                [v122 doubleValue];
              }

              sub_1000191C4();
              break;
            case 0x2A:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v100 = v122;
                [v122 doubleValue];
              }

              sub_1000192E4();
              break;
            case 0x2B:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100019354();
              break;
            case 0x2C:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v60 = v122;
                [v122 doubleValue];
              }

              sub_1000194E4();
              break;
            case 0x2D:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v98 = v122;
                [v122 doubleValue];
              }

              sub_100019494();
              break;
            case 0x2E:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v106 = v122;
                [v122 doubleValue];
              }

              sub_100019454();
              break;
            case 0x2F:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v51 = v122;
                [v122 doubleValue];
              }

              sub_100019474();
              break;
            case 0x30:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100018F94();
              break;
            case 0x31:
              sub_10000A704(&v124, v123);
              v66 = sub_100018C14();
              v67 = v117;
              v68 = swift_dynamicCast();
              (*(*(v66 - 8) + 56))(v67, v68 ^ 1u, 1, v66);
              sub_100018FF4();
              break;
            case 0x32:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v46 = v122;
                [v122 doubleValue];
              }

              sub_100019264();
              break;
            case 0x33:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v108 = v122;
                [v122 doubleValue];
              }

              sub_1000190A4();
              break;
            case 0x34:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100019174();
              break;
            case 0x35:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v50 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_100019464();
              break;
            case 0x36:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100019294();
              break;
            case 0x37:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100019144();
              break;
            case 0x38:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v52 = v122;
                [v122 BOOLValue];
              }

              sub_100019004();
              break;
            case 0x39:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100018C24();

              sub_1000194B4();
              break;
            case 0x3A:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100018FD4();
              break;
            case 0x3B:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v101 = v122;
                [v122 BOOLValue];
              }

              sub_1000191D4();
              break;
            case 0x3C:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100019384();
              break;
            case 0x3D:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v88 = v122;
                [v122 doubleValue];
              }

              sub_1000192B4();
              break;
            case 0x3E:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v91 = v122;
                [v122 doubleValue];
              }

              sub_1000192F4();
              break;
            case 0x3F:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v78 = v122;
                [v122 integerValue];
              }

              sub_1000193A4();
              break;
            case 0x40:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v71 = v122;
                [v122 integerValue];
              }

              sub_1000191E4();
              break;
            case 0x41:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v90 = v122;
                [v122 BOOLValue];
              }

              sub_100019074();
              break;
            case 0x42:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v47 = v122;
                [v122 doubleValue];
              }

              sub_1000191A4();
              break;
            case 0x43:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v59 = v122;
                [v122 doubleValue];
              }

              sub_1000191F4();
              break;
            case 0x44:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v110 = v122;
                [v122 doubleValue];
              }

              sub_100019204();
              break;
            case 0x45:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v55 = v122;
                [v122 doubleValue];
              }

              sub_1000190F4();
              break;
            case 0x46:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v44 = v122;
                [v122 integerValue];
              }

              sub_100019364();
              break;
            case 0x47:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v49 = v122;
                [v122 BOOLValue];
              }

              sub_1000192C4();
              break;
            case 0x48:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v105 = v122;
                [v122 doubleValue];
              }

              sub_100019344();
              break;
            case 0x49:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v107 = v122;
                [v122 BOOLValue];
              }

              sub_100019414();
              break;
            case 0x4A:
            case 0x4B:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v40 = v122;
                [v122 BOOLValue];
              }

              sub_100019064();
              break;
            case 0x4C:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v87 = v122;
                [v122 unsignedIntegerValue];
              }

              sub_1000192D4();
              break;
            case 0x4D:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v45 = v122;
                [v122 integerValue];
              }

              v111 = v121;
              (*v114)(v120, v115, v121);
              v112 = v119;
              sub_100019224();
              (*v113)(v112, 0, 1, v111);
              sub_100019244();
              break;
            case 0x4E:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v109 = v122;
                [v122 BOOLValue];
              }

              sub_100019094();
              break;
            case 0x4F:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v43 = v122;
                [v122 doubleValue];
              }

              sub_100019324();
              break;
            case 0x50:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v48 = v122;
                [v122 BOOLValue];
              }

              sub_100019254();
              break;
            case 0x51:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v65 = v122;
                [v122 BOOLValue];
              }

              sub_100019114();
              break;
            case 0x52:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v63 = v122;
                [v122 BOOLValue];
              }

              sub_100018FA4();
              break;
            case 0x53:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v42 = v122;
                [v122 BOOLValue];
              }

              sub_1000192A4();
              break;
            case 0x54:
              sub_10000A704(&v124, v123);
              sub_10000A7BC();
              if (swift_dynamicCast())
              {
                v41 = v122;
                [v122 doubleValue];
              }

              sub_100019284();
              break;
            case 0x55:
              sub_10000A704(&v124, v123);
              swift_dynamicCast();
              sub_100018F54();
              break;
            default:
              sub_10000A704(&v124, v123);
              v80 = sub_100018C14();
              v81 = v116;
              v82 = swift_dynamicCast();
              (*(*(v80 - 8) + 56))(v81, v82 ^ 1u, 1, v80);
              sub_1000194C4();
              break;
          }
        }
      }

      else
      {
      }

      sub_10000A770(&v124);
    }
  }

  return result;
}

uint64_t sub_10000A704(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000A760(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000A770(void *a1)
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

unint64_t sub_10000A7BC()
{
  result = qword_1000241B8;
  if (!qword_1000241B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000241B8);
  }

  return result;
}

uint64_t sub_10000A808(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005744(&qword_1000241C0, &qword_10001AAE0);
  v34 = v4;
  result = sub_100019A64();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100019AC4();
      sub_1000197F4();
      result = sub_100019AD4();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_10000AAA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005744(&qword_1000241C8, &qword_10001AC30);
  v33 = v4;
  result = sub_100019A64();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000A760(v24, v34);
      }

      else
      {
        sub_10000A704(v24, v34);
      }

      sub_100019AC4();
      sub_1000197F4();
      result = sub_100019AD4();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000A760(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_10000AD60()
{
  v1 = v0;
  sub_100005744(&qword_1000241C0, &qword_10001AAE0);
  v2 = *v0;
  v3 = sub_100019A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

  return result;
}

void *sub_10000AEC8()
{
  v1 = v0;
  sub_100005744(&qword_1000241C8, &qword_10001AC30);
  v2 = *v0;
  v3 = sub_100019A54();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000A704(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000A760(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000B06C(uint64_t a1, uint64_t a2)
{
  if (qword_1000240C0 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v2 = off_100024198;
  if (*(off_100024198 + 2))
  {
    v3 = sub_10000C264(a1, a2);
    v5 = v4;

    if (v5)
    {
      return *(v2[7] + v3);
    }
  }

  else
  {
  }

  return 86;
}

uint64_t getEnumTagSinglePayload for MetadataKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 85 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 85) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 85;
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

      return (*a1 | (v4 << 8)) - 85;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 85;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 85 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 85) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 8) + 1;
    *result = a2 + 85;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000B28C()
{
  result = qword_1000241D0;
  if (!qword_1000241D0)
  {
    sub_100005938(&qword_1000241D8, qword_10001AB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000241D0);
  }

  return result;
}

unint64_t sub_10000B2F4()
{
  result = qword_1000241E0;
  if (!qword_1000241E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000241E0);
  }

  return result;
}

void sub_10000B3A0(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X8>)
{
  v80 = a2;
  v4 = sub_100005744(&qword_100024168, &qword_10001AA70);
  __chkstk_darwin(v4 - 8);
  v77 = &v69 - v5;
  v6 = sub_100019714();
  v79 = *(v6 - 8);
  __chkstk_darwin(v6);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005744(&qword_1000241F0, &unk_10001AC08);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v69 - v12;
  v14 = sub_100019314();
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  if ((sub_100019434() & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_100019654();
  type metadata accessor for CGImageSource(0);
  sub_100018F34();
  if (v2)
  {
    sub_10000C67C(v13, &qword_1000241F0, &unk_10001AC08);
    return;
  }

  v76 = v13;
  if (!v81)
  {
    v37 = v78;
    sub_100019704();
    sub_100006FE0();
    v38 = sub_1000199D4();
    sub_100005744(&qword_100024180, qword_10001AA80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10001A9F0;
    v40 = v79;
    v80 = v79[2];
    v41 = v77;
    v80(v77, v37, v6);
    (v40[7])(v41, 0, 1, v6);
    v42 = v6;
    v43 = sub_100019614();
    v45 = v44;
    sub_10000C67C(v41, &qword_100024168, &qword_10001AA70);
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_100007094();
    *(v39 + 32) = v43;
    *(v39 + 40) = v45;
    v46 = sub_1000198F4();
    sub_100018CB4("MediaMetadata explosion: %{public}@", 35, 2, &_mh_execute_header, v38, v46, v39);

    sub_10000C74C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v80(v47, v37, v42);
    swift_willThrow();
LABEL_18:
    (v40[1])(v37, v42);
    sub_10000C67C(v76, &qword_1000241F0, &unk_10001AC08);
    return;
  }

  v75 = v81;
  sub_100005744(&qword_1000241F8, &qword_10001AC18);
  inited = swift_initStackObject();
  v73 = xmmword_10001A9F0;
  *(inited + 16) = xmmword_10001A9F0;
  *(inited + 32) = kCGImageSourceShouldCache;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 0;
  v17 = kCGImageSourceShouldCache;
  sub_10000C554(inited);
  v74 = v6;
  swift_setDeallocating();
  sub_10000C67C(inited + 32, &qword_100024200, &qword_10001AC20);
  type metadata accessor for CFString(0);
  sub_10000C74C(&qword_100024148, type metadata accessor for CFString, &unk_10001A97C);
  isa = sub_100019774().super.isa;
  v19 = v74;

  v20 = CGImageSourceCopyPropertiesAtIndex(v75, 0, isa);

  if (!v20)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_15;
  }

  v81 = 0;
  type metadata accessor for CFNumber(0);
  sub_100019784();

  v21 = v81;
  if (!v81)
  {
LABEL_15:
    v37 = v78;
    sub_100019704();
    sub_100006FE0();
    v48 = sub_1000199D4();
    sub_100005744(&qword_100024180, qword_10001AA80);
    v49 = swift_allocObject();
    *(v49 + 16) = v73;
    v40 = v79;
    v80 = v79[2];
    v50 = v77;
    v80(v77, v37, v19);
    (v40[7])(v50, 0, 1, v19);
    v51 = sub_100019614();
    v42 = v19;
LABEL_16:
    v53 = v51;
    v54 = v52;
    sub_10000C67C(v50, &qword_100024168, &qword_10001AA70);
    *(v49 + 56) = &type metadata for String;
    *(v49 + 64) = sub_100007094();
    *(v49 + 32) = v53;
    *(v49 + 40) = v54;
    v55 = sub_1000198F4();
    sub_100018CB4("MediaMetadata explosion: %{public}@", 35, 2, &_mh_execute_header, v48, v55, v49);

    sub_10000C74C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v80(v56, v37, v42);
    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v22 = sub_1000197C4();
  if (!*(v21 + 2))
  {

    goto LABEL_20;
  }

  v72 = sub_10000C264(v22, v23);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_20:

    v37 = v78;
    sub_100019704();
    sub_100006FE0();
    v48 = sub_1000199D4();
    sub_100005744(&qword_100024180, qword_10001AA80);
    v49 = swift_allocObject();
    *(v49 + 16) = v73;
    v40 = v79;
    v80 = v79[2];
    v50 = v77;
    v42 = v74;
    v80(v77, v37, v74);
    (v40[7])(v50, 0, 1, v42);
    v51 = sub_100019614();
    goto LABEL_16;
  }

  v26 = *(*(v21 + 7) + 8 * v72);
  v27 = sub_1000197C4();
  v29 = v28;
  v30 = *(v21 + 2);
  v72 = v26;
  if (!v30)
  {
    v57 = v26;

    goto LABEL_22;
  }

  v71 = v27;
  v70 = v26;
  v71 = sub_10000C264(v71, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_22:

    v37 = v78;
    sub_100019704();
    sub_100006FE0();
    v58 = sub_1000199D4();
    sub_100005744(&qword_100024180, qword_10001AA80);
    v59 = swift_allocObject();
    *(v59 + 16) = v73;
    v40 = v79;
    v80 = v79[2];
    v60 = v77;
    v42 = v74;
    v80(v77, v37, v74);
    (v40[7])(v60, 0, 1, v42);
    v61 = sub_100019614();
    v63 = v62;
    sub_10000C67C(v60, &qword_100024168, &qword_10001AA70);
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_100007094();
    *(v59 + 32) = v61;
    *(v59 + 40) = v63;
    v64 = sub_1000198F4();
    sub_100018CB4("MediaMetadata explosion: %{public}@", 35, 2, &_mh_execute_header, v58, v64, v59);

    sub_10000C74C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v80(v65, v37, v42);
    swift_willThrow();

    goto LABEL_17;
  }

  v33 = *(*(v21 + 7) + 8 * v71);

  v34 = v70;
  v35 = sub_100019894();
  v79 = v34;

  v36 = v33;
  sub_100019894();
  v78 = v36;

  sub_100019754();
  v77 = v35;
  sub_100019734();
  sub_100019304();

  v13 = v76;
  sub_10000C67C(v76, &qword_1000241F0, &unk_10001AC08);
  v15(v11, 0, 1, v14);
  sub_10000C6DC(v11, v13);
LABEL_23:
  sub_10000C8C4(v13, v11, &qword_1000241F0, &unk_10001AC08);
  v66 = v80;
  v67 = sub_100019334();
  __chkstk_darwin(v67);
  *(&v69 - 2) = a1;
  *(&v69 - 1) = v66;
  sub_100019624();
  sub_10000C67C(v13, &qword_1000241F0, &unk_10001AC08);
  if (v2)
  {
    v68 = sub_1000194F4();
    (*(*(v68 - 8) + 8))(v66, v68);
  }
}

void sub_10000C0E8()
{
  v0 = sub_100019684();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019644();
  sub_100019664();
  (*(v1 + 8))(v3, v0);
  v4 = objc_allocWithZone(PFMetadata);
  v5 = sub_1000197B4();

  v6 = [v4 initForLimitedPropertiesWithPath:v5];

  if (v6)
  {
    sub_100007C38(v6);
  }
}

unint64_t sub_10000C264(uint64_t a1, uint64_t a2)
{
  sub_100019AC4();
  sub_1000197F4();
  v4 = sub_100019AD4();

  return sub_10000C390(a1, a2, v4);
}

unint64_t sub_10000C2DC(uint64_t a1)
{
  sub_100019AC4();
  type metadata accessor for CFString(0);
  sub_10000C74C(&qword_100024210, type metadata accessor for CFString, &unk_10001A950);
  sub_100018C94();
  v2 = sub_100019AD4();

  return sub_10000C448(a1, v2);
}

unint64_t sub_10000C390(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100019AA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000C448(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10000C74C(&qword_100024210, type metadata accessor for CFString, &unk_10001A950);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100018C84();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000C554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005744(&qword_100024208, &qword_10001AC28);
    v3 = sub_100019A74();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C8C4(v4, &v11, &qword_100024200, &qword_10001AC20);
      v5 = v11;
      result = sub_10000C2DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000A760(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000C67C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005744(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005744(&qword_1000241F0, &unk_10001AC08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C74C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000C794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005744(&qword_1000241C8, &qword_10001AC30);
    v3 = sub_100019A74();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C8C4(v4, &v13, &qword_100024218, qword_10001AC38);
      v5 = v13;
      v6 = v14;
      result = sub_10000C264(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000A760(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000C8C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005744(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v101 = a3;
  v96 = sub_100019514();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v104 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005744(&qword_100024228, &qword_10001ACA0);
  __chkstk_darwin(v5 - 8);
  v107 = &v89 - v6;
  v111 = sub_1000195F4();
  v105 = *(v111 - 8);
  __chkstk_darwin(v111);
  v103 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005744(&qword_100024230, &qword_10001ACA8);
  v9 = __chkstk_darwin(v8 - 8);
  v100 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v93 = &v89 - v12;
  v13 = __chkstk_darwin(v11);
  v99 = &v89 - v14;
  __chkstk_darwin(v13);
  v112 = &v89 - v15;
  v16 = sub_100005744(&qword_100024238, &qword_10001ACB0);
  __chkstk_darwin(v16 - 8);
  v106 = &v89 - v17;
  v18 = sub_1000196E4();
  v19 = *(v18 - 8);
  v109 = v18;
  v110 = v19;
  v20 = __chkstk_darwin(v18);
  v94 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v98 = &v89 - v23;
  v24 = __chkstk_darwin(v22);
  v97 = &v89 - v25;
  __chkstk_darwin(v24);
  v27 = &v89 - v26;
  v28 = sub_100019684();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100006FE0();
  v32 = sub_1000199E4();
  sub_100005744(&qword_100024180, qword_10001AA80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10001A9F0;
  sub_100019644();
  v34 = sub_100019664();
  v36 = v35;
  (*(v29 + 8))(v31, v28);
  v113 = v34;
  v114 = v36;
  v37 = sub_100019614();
  v39 = v38;

  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100007094();
  *(v33 + 32) = v37;
  *(v33 + 40) = v39;
  v40 = v112;
  v41 = sub_1000198F4();
  sub_100018CB4("Unpacking image at path %{public}@", 34, 2, &_mh_execute_header, v32, v41, v33);

  v42 = sub_100019654();
  v115 = v42;
  v116 = &protocol witness table for File;
  v43 = sub_10000DBC4(&v113);
  (*(*(v42 - 8) + 16))(v43, a1, v42);
  sub_100018DC4();
  v44 = sub_1000196B4();
  (*(*(v44 - 8) + 56))(v106, 1, 1, v44);
  sub_1000196C4();
  v45 = sub_100018E04();
  v46 = *(v45 - 8);
  v47 = *(v46 + 7);
  v47(v40, 1, 1, v45);
  sub_1000196D4();
  sub_10000DC28(&v113, v115);
  v48 = v108;
  v49 = v107;
  v50 = v111;
  sub_100018F34();
  if (v48)
  {
    sub_10000C67C(v40, &qword_100024230, &qword_10001ACA8);
    (*(v110 + 8))(v27, v109);
    return sub_10000A770(&v113);
  }

  v92 = 0;
  v91 = v46 + 56;
  v108 = v45;
  v90 = v47;
  v106 = v46;
  v53 = v104;
  v52 = v105;
  v54 = v49;
  if ((*(v105 + 48))(v49, 1, v50) == 1)
  {
    sub_10000C67C(v49, &qword_100024228, &qword_10001ACA0);
    sub_10000A770(&v113);
    v55 = v101;
    v56 = v106;
    v57 = v40;
  }

  else
  {
    v89 = v27;
    v58 = v103;
    (*(v52 + 32))(v103, v54, v50);
    sub_10000A770(&v113);
    v59 = sub_1000195C4();
    if (!v60)
    {
      sub_100019714();
      sub_10000DCDC(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_100019704();
      swift_willThrow();
      (*(v52 + 8))(v58, v50);
      sub_10000C67C(v40, &qword_100024230, &qword_10001ACA8);
      return (*(v110 + 8))(v89, v109);
    }

    v61 = v59;
    v62 = v60;
    if (sub_100018DB4())
    {
      v63 = v61 == 0x682E63696C627570;
      v64 = v110;
      v65 = v53;
      if ((!v63 || v62 != 0xEB00000000636965) && (sub_100019AA4() & 1) == 0)
      {

        sub_100019714();
        sub_10000DCDC(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_100019704();
        swift_willThrow();
        (*(v105 + 8))(v103, v111);
        sub_10000C67C(v112, &qword_100024230, &qword_10001ACA8);
        return (*(v64 + 8))(v89, v109);
      }

      sub_100018DD4();
      sub_100018DC4();
      v113 = 0;
      v114 = 0;
      v66 = v97;
      v67 = v89;
      v68 = v92;
      sub_100019694();
      if (v68)
      {

        (*(v105 + 8))(v103, v111);
        sub_10000C67C(v112, &qword_100024230, &qword_10001ACA8);
        return (*(v64 + 8))(v67, v109);
      }

      v82 = v109;
      (*(v64 + 16))(v98, v66, v109);
      (*(v95 + 104))(v65, enum case for StickerEffect.none(_:), v96);
      v83 = v99;
      sub_100018DF4();
      (*(v64 + 8))(v66, v82);
      (*(v105 + 8))(v103, v111);
      v57 = v112;
      sub_10000C67C(v112, &qword_100024230, &qword_10001ACA8);
      v90(v83, 0, 1, v108);
      sub_10000DD24(v83, v57);
      v27 = v67;
      v55 = v101;
      v92 = 0;
    }

    else
    {
      v107 = v61;
      v69 = sub_10000DEE8(v61, v62);
      v70 = v110;
      if ((v69 & 1) != 0 && sub_1000195A4() > 1)
      {
        v71 = sub_1000199E4();
        v72 = sub_1000198F4();
        sub_100018CB4("Unpacking image with thumbnailer because it is animated", 55, 2, &_mh_execute_header, v71, v72, &_swiftEmptyArrayStorage);

        v73 = sub_100018DD4();
        v74 = v103;
        v75 = sub_1000195A4();
        v76 = sub_100018DE4();
        v77 = v92;
        sub_10000DD94(v73, v75, v76);
        v56 = v106;
        if (v77)
        {

          (*(v105 + 8))(v74, v111);
          sub_10000C67C(v112, &qword_100024230, &qword_10001ACA8);
          return (*(v110 + 8))(v89, v109);
        }

        sub_100018DC4();
        sub_1000196A4();
        v57 = v112;
        v92 = 0;
        sub_1000195A4();
        sub_1000195E4();
        (*(v95 + 104))(v104, enum case for StickerEffect.none(_:), v96);
        v88 = v93;
        sub_100018DF4();
        (*(v105 + 8))(v74, v111);
        sub_10000C67C(v57, &qword_100024230, &qword_10001ACA8);
        v90(v88, 0, 1, v108);
        sub_10000DD24(v88, v57);
        v27 = v89;
        v55 = v101;
        goto LABEL_21;
      }

      v78 = sub_1000199E4();
      v79 = sub_1000198F4();
      sub_100018CB4("Unpacking image with software HEIF->ASTC decoder", 48, 2, &_mh_execute_header, v78, v79, &_swiftEmptyArrayStorage);

      v27 = v89;
      (*(v70 + 16))(v98, v89, v109);
      v80 = v103;
      sub_1000195A4();
      sub_1000195B4();
      sub_1000195D4();
      sub_100019504();
      sub_1000195E4();
      v81 = v99;
      sub_100018DF4();
      (*(v105 + 8))(v80, v111);
      v57 = v112;
      sub_10000C67C(v112, &qword_100024230, &qword_10001ACA8);
      v90(v81, 0, 1, v108);
      sub_10000DD24(v81, v57);
      v55 = v101;
    }

    v56 = v106;
  }

LABEL_21:
  v84 = v100;
  sub_10000DC6C(v57, v100);
  v85 = v108;
  if ((*(v56 + 6))(v84, 1, v108) == 1)
  {
    sub_10000C67C(v84, &qword_100024230, &qword_10001ACA8);
    v86 = sub_1000199E4();
    v87 = sub_1000198F4();
    sub_100018CB4("Failed to generate astc image", 29, 2, &_mh_execute_header, v86, v87, &_swiftEmptyArrayStorage);

    sub_100019714();
    sub_10000DCDC(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_100019704();
    swift_willThrow();
    sub_10000C67C(v57, &qword_100024230, &qword_10001ACA8);
    return (*(v110 + 8))(v27, v109);
  }

  else
  {
    sub_10000C67C(v57, &qword_100024230, &qword_10001ACA8);
    (*(v110 + 8))(v27, v109);
    return (*(v56 + 4))(v55, v84, v85);
  }
}

uint64_t sub_10000DB34@<X0>(uint64_t a1@<X8>)
{
  sub_100019904();
  v2 = sub_1000195F4();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t *sub_10000DBC4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_10000DC28(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000DC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005744(&qword_100024230, &qword_10001ACA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DCDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DD24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005744(&qword_100024230, &qword_10001ACA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DD94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a3)
  {
    sub_100019714();
    sub_10000DCDC(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_100019704();
    return swift_willThrow();
  }

  if (a3 < a2)
  {
    v3 = a2 / a3 * result;
    if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        return v3;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10000DEE8(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000012 && 0x8000000100019FE0 == a2;
  if (v2 || (sub_100019AA4() & 1) != 0 || a1 == 0x702E63696C627570 && a2 == 0xEA0000000000676ELL)
  {
    return 1;
  }

  if ((sub_100019AA4() & 1) != 0 || a1 == 0xD000000000000014 && 0x8000000100019FA0 == a2)
  {
    return 1;
  }

  if ((sub_100019AA4() & 1) != 0 || a1 == 0x682E63696C627570 && a2 == 0xEB00000000666965)
  {
    return 1;
  }

  v6 = sub_100019AA4();
  v7 = a1 == 0x682E63696C627570 && a2 == 0xEB00000000636965;
  v8 = v7;
  if ((v6 & 1) != 0 || v8)
  {
    return 1;
  }

  v9 = sub_100019AA4();
  v10 = a1 == 0x682E63696C627570 && a2 == 0xEC00000073636965;
  v11 = v10;
  if ((v9 & 1) != 0 || v11 || (sub_100019AA4() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000010001A310 == a2)
  {
    return 1;
  }

  return sub_100019AA4();
}

uint64_t sub_10000E130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a3;
  v41 = a2;
  v42 = a4;
  v5 = sub_100005744(&qword_100024248, &qword_10001AD90);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v30 - v6;
  v36 = sub_100019684();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100018C04();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100019654();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000198D4();
  sub_100018B94(0, &qword_100024178, OS_os_log_ptr);
  v16 = sub_1000199C4();
  v17 = *(v12 + 16);
  v37 = a1;
  v17(v14, a1, v11);
  v33 = v15;
  if (os_log_type_enabled(v16, v15))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v5;
    v20 = v19;
    v43 = v19;
    *v18 = 136446210;
    sub_100019644();
    sub_100019674();
    (*(v34 + 8))(v8, v36);
    sub_100017E7C(&qword_100024258, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = v32;
    v22 = sub_100019A84();
    v24 = v23;
    (*(v35 + 8))(v10, v21);
    (*(v12 + 8))(v14, v11);
    v25 = sub_1000178D4(v22, v24, &v43);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v33, "BlastDoor processing thumbnail for video: %{public}s", v18, 0xCu);
    sub_10000A770(v20);
    v5 = v31;
  }

  else
  {

    v26 = (*(v12 + 8))(v14, v11);
  }

  __chkstk_darwin(v26);
  v28 = v40;
  v27 = v41;
  *(&v30 - 4) = v37;
  *(&v30 - 3) = v28;
  *(&v30 - 2) = v27;
  sub_100005744(&qword_100024250, &qword_10001AD98);
  (*(v39 + 104))(v38, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v5);
  return sub_100019884();
}

uint64_t sub_10000E5F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a2;
  v35 = a4;
  v37 = a3;
  v33 = a1;
  v38 = sub_100005744(&qword_100024268, &qword_10001ADA8);
  v4 = *(v38 - 8);
  v36 = *(v4 + 64);
  __chkstk_darwin(v38);
  v6 = &v27 - v5;
  v30 = &v27 - v5;
  v31 = sub_100018E64();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100019654();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005744(&qword_100024270, &qword_10001ADB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v32 = &v27 - v14;
  v16 = sub_100019854();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, v34, v9);
  v17 = v31;
  (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v31);
  v18 = v4;
  (*(v4 + 16))(v6, v33, v38);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v7 + 80) + v20 + 8) & ~*(v7 + 80);
  v22 = (v8 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v10 + 32))(v23 + v19, v12, v28);
  v24 = v37;
  *(v23 + v20) = v37;
  (*(v7 + 32))(v23 + v21, v29, v17);
  (*(v18 + 32))(v23 + v22, v30, v38);
  v25 = v24;
  sub_1000173E0(0, 0, v32, &unk_10001ADC0, v23);
}

uint64_t sub_10000E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_100005744(&qword_100024268, &qword_10001ADA8);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v10 = sub_100018E64();
  v7[11] = v10;
  v11 = *(v10 - 8);
  v7[12] = v11;
  v7[13] = *(v11 + 64);
  v7[14] = swift_task_alloc();
  v12 = sub_100019684();
  v7[15] = v12;
  v7[16] = *(v12 - 8);
  v7[17] = swift_task_alloc();
  v13 = sub_100018C04();
  v7[18] = v13;
  v7[19] = *(v13 - 8);
  v7[20] = swift_task_alloc();
  v14 = sub_100019654();
  v7[21] = v14;
  v15 = *(v14 - 8);
  v7[22] = v15;
  v7[23] = *(v15 + 64);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_10000EC10, 0, 0);
}

uint64_t sub_10000EC10(uint64_t a1)
{
  v51 = v1;
  v2 = v1[25];
  v3 = v1[21];
  v4 = v1[22];
  v5 = v1[3];
  v6 = sub_1000198D4();
  v1[26] = sub_100018B94(0, &qword_100024178, OS_os_log_ptr);
  v7 = sub_1000199C4();
  v47 = *(v4 + 16);
  (v47)(v2, v5, v3);
  v8 = os_log_type_enabled(v7, v6);
  v9 = v1[25];
  v10 = v1[21];
  v11 = v1[22];
  if (v8)
  {
    v13 = v1[19];
    v12 = v1[20];
    v14 = v1[17];
    v41 = v1[18];
    v48 = v6;
    v15 = v1[16];
    v38 = v1[15];
    buf = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50 = v45;
    *buf = 136446210;
    v39 = v10;
    sub_100019644();
    sub_100019674();
    (*(v15 + 8))(v14, v38);
    sub_100017E7C(&qword_100024258, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = sub_100019A84();
    v18 = v17;
    (*(v13 + 8))(v12, v41);
    (*(v11 + 8))(v9, v39);
    v19 = sub_1000178D4(v16, v18, &v50);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v48, "Task running for video: %{public}s)", buf, 0xCu);
    sub_10000A770(v45);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v20 = v1[22];
  v40 = v1[21];
  v42 = v1[24];
  v21 = v1[14];
  v36 = v1[23];
  v37 = v1[13];
  v23 = v1[11];
  v22 = v1[12];
  v24 = v1[10];
  bufa = v21;
  v46 = v24;
  v25 = v1[7];
  v26 = v1[8];
  v28 = v1[5];
  v27 = v1[6];
  v49 = v1[4];
  v47();
  (*(v22 + 16))(v21, v28, v23);
  (*(v26 + 16))(v24, v27, v25);
  v29 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v30 = (v36 + *(v22 + 80) + v29) & ~*(v22 + 80);
  v31 = (v37 + *(v26 + 80) + v30) & ~*(v26 + 80);
  v32 = swift_allocObject();
  v1[27] = v32;
  *(v32 + 16) = v49;
  (*(v20 + 32))(v32 + v29, v42, v40);
  (*(v22 + 32))(v32 + v30, bufa, v23);
  (*(v26 + 32))(v32 + v31, v46, v25);
  v33 = v49;
  v34 = swift_task_alloc();
  v1[28] = v34;
  *v34 = v1;
  v34[1] = sub_10000F038;

  return File.withResource<A>(_:)();
}

uint64_t sub_10000F038()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10000F1FC;
  }

  else
  {

    v2 = sub_10000F154;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000F154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F1FC()
{

  v1 = sub_1000198E4();
  v2 = sub_1000199C4();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Caught error: %@", v3, 0xCu);
    sub_10000C67C(v4, &qword_100024278, &qword_10001ADF0);
  }

  v6 = v0[29];

  v0[2] = v6;
  sub_100019874();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000F388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10000F3B0, 0, 0);
}

uint64_t sub_10000F3B0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = sub_100018890();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  sub_100005744(&qword_100024170, &qword_10001AA78);
  *v5 = v0;
  v5[1] = sub_10000F4EC;
  v6 = *(v0 + 24);

  return _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v6, v2, v3, 0, 0, &unk_10001AE00, v4, &type metadata for () + 8);
}

uint64_t sub_10000F4EC()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_10000F624, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10000F624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a5;
  v6[58] = a6;
  v6[55] = a2;
  v6[56] = a3;
  sub_100005744(&qword_100024250, &qword_10001AD98);
  v6[59] = swift_task_alloc();
  v7 = sub_100005744(&qword_100024288, &unk_10001AE10);
  v6[60] = v7;
  v6[61] = *(v7 - 8);
  v6[62] = swift_task_alloc();
  v8 = sub_100018F24();
  v6[63] = v8;
  v6[64] = *(v8 - 8);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v9 = sub_100018E44();
  v6[67] = v9;
  v6[68] = *(v9 - 8);
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v10 = sub_100018E24();
  v6[71] = v10;
  v6[72] = *(v10 - 8);
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  sub_100005744(&qword_100024238, &qword_10001ACB0);
  v6[75] = swift_task_alloc();
  v11 = sub_1000196E4();
  v6[76] = v11;
  v6[77] = *(v11 - 8);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v12 = sub_1000198B4();
  v6[80] = v12;
  v6[81] = *(v12 - 8);
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v13 = sub_100018EE4();
  v6[84] = v13;
  v6[85] = *(v13 - 8);
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v14 = sub_100018F04();
  v6[89] = v14;
  v6[90] = *(v14 - 8);
  v6[91] = swift_task_alloc();
  v15 = sub_100018E74();
  v6[92] = v15;
  v6[93] = *(v15 - 8);
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v16 = sub_100018C04();
  v6[99] = v16;
  v6[100] = *(v16 - 8);
  v6[101] = swift_task_alloc();
  v17 = sub_100019684();
  v6[102] = v17;
  v6[103] = *(v17 - 8);
  v6[104] = swift_task_alloc();

  return _swift_task_switch(sub_10000FC10, 0, 0);
}

uint64_t sub_10000FC10(uint64_t a1)
{
  v2 = v1[104];
  v3 = v1[103];
  v4 = v1[102];
  v5 = v1[101];
  v6 = v1[100];
  v7 = v1[99];
  sub_100019644();
  sub_100019674();
  (*(v3 + 8))(v2, v4);
  v1[105] = sub_100005744(&qword_100024290, &unk_10001AE20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10001A9F0;
  *(v8 + 32) = sub_1000197C4();
  *(v8 + 40) = v9;
  *(v8 + 72) = &type metadata for Bool;
  *(v8 + 48) = 1;
  sub_10000C794(v8);
  swift_setDeallocating();
  sub_10000C67C(v8 + 32, &qword_100024218, qword_10001AC38);
  swift_deallocClassInstance();
  v10 = objc_allocWithZone(AVURLAsset);
  sub_100018BF4(v11);
  v13 = v12;
  isa = sub_100019774().super.isa;

  v15 = [v10 initWithURL:v13 options:isa];
  v1[106] = v15;

  (*(v6 + 8))(v5, v7);
  v16 = sub_1000198D4();
  v1[107] = sub_100018B94(0, &qword_100024178, OS_os_log_ptr);
  v17 = sub_1000199C4();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v17, v16, "Created asset: %{public}@", v18, 0xCu);
    sub_10000C67C(v19, &qword_100024278, &qword_10001ADF0);
  }

  sub_1000198D4();
  v21 = sub_1000199C4();
  sub_100018CC4();

  v1[2] = v1;
  v1[7] = v1 + 50;
  v1[3] = sub_10000FFFC;
  v22 = swift_continuation_init();
  v1[17] = sub_100005744(&qword_100024298, &qword_10001AE30);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000172F0;
  v1[13] = &unk_100021728;
  v1[14] = v22;
  [v15 loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10000FFFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 864) = v2;
  if (v2)
  {
    v3 = *(v1 + 848);

    v4 = sub_10001555C;
  }

  else
  {
    v4 = sub_100010144;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100010144(uint64_t a1)
{
  v2 = *(v1 + 400);
  sub_1000198D4();
  v3 = sub_1000199C4();
  sub_100018CC4();

  if (v2 >> 62)
  {
    v5 = sub_100019A44();
    v4 = sub_100019A44();
    *(v1 + 872) = v5;
    if (v4)
    {
LABEL_3:
      v6 = __OFSUB__(v4, 1);
      v7 = v4 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v2 + 8 * v7 + 32);
LABEL_8:
          v9 = v8;

          goto LABEL_11;
        }

        __break(1u);
      }

      v8 = sub_100019A24();
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4;
    *(v1 + 872) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_11:
  *(v1 + 880) = v9;
  v10 = sub_1000198D4();
  v11 = sub_1000199C4();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v11, v10, "Tracks found: %{public}ld)", v12, 0xCu);
  }

  v13 = *(v1 + 848);
  if (v9)
  {
    v14 = *(v1 + 784);
    v15 = *(v1 + 744);
    v16 = *(v1 + 736);
    v17 = objc_opt_self();
    v18 = v9;
    *(v1 + 1484) = [v17 videoAssetIsSpatial:v13];
    sub_100018E54();
    v19 = *(v15 + 88);
    *(v1 + 888) = v19;
    *(v1 + 896) = (v15 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v20 = v19(v14, v16);
    *(v1 + 1460) = v20;
    v21 = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    *(v1 + 1464) = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    if (v20 == v21)
    {
      v22 = *(v1 + 784);
      v23 = *(v1 + 736);
      v24 = *(v1 + 728);
      v25 = *(v1 + 720);
      v26 = *(v1 + 712);
      v27 = *(*(v1 + 744) + 96);
      *(v1 + 904) = v27;
      v27(v22, v23);
      (*(v25 + 32))(v24, v22, v26);
      sub_100005744(&qword_1000242D0, &qword_10001AE58);
      v28 = sub_100018C34();
      *(v1 + 912) = v28;
      v29 = swift_task_alloc();
      *(v1 + 920) = v29;
      *v29 = v1;
      v29[1] = sub_100010A50;

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v1 + 368, v28, 0, 0);
    }

    if (v20 == enum case for VideoPreview.FrameConstraints.multiFrame(_:))
    {
      v31 = *(v1 + 784);
      v32 = *(v1 + 704);
      v33 = *(v1 + 680);
      v34 = *(v1 + 672);
      v35 = *(*(v1 + 744) + 96);
      v35(v31, *(v1 + 736));
      (*(v33 + 32))(v32, v31, v34);
      if (sub_100018EB4() >= 1 && sub_100018EC4() >= 1)
      {
        v36 = *(v1 + 704);
        v37 = *(v1 + 680);
        v38 = *(v1 + 672);
        v39 = sub_100018EB4();
        v40 = sub_100018EC4();
        v41 = sub_100018E84();
        (*(v37 + 8))(v36, v38);
        *(v1 + 1000) = v40;
        *(v1 + 992) = v39;
        *(v1 + 984) = v41;
        *(v1 + 976) = v35;
        v42 = swift_task_alloc();
        *(v1 + 1008) = v42;
        *v42 = v1;
        v42[1] = sub_100011118;
        v43 = *(v1 + 664);

        return AVAssetTrack.info.getter(v43);
      }

      v44 = *(v1 + 848);
      v45 = *(v1 + 704);
      v46 = *(v1 + 680);
      v47 = *(v1 + 672);

      sub_100019714();
      sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v49 = swift_allocError();
      sub_100019704();
      v52 = v49;
      swift_willThrow();
    }

    else
    {
      v44 = *(v1 + 848);
      v45 = *(v1 + 784);
      v46 = *(v1 + 744);
      v47 = *(v1 + 736);

      sub_100019714();
      sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v48 = swift_allocError();
      sub_100019704();
      v52 = v48;
      swift_willThrow();
    }

    (*(v46 + 8))(v45, v47);
  }

  else
  {

    sub_100019714();
    sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v30 = swift_allocError();
    sub_100019704();
    v52 = v30;
    swift_willThrow();
  }

  **(v1 + 464) = v52;

  v50 = *(v1 + 8);

  return v50();
}

uint64_t sub_100010A50()
{
  v2 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = *(v2 + 848);

    v4 = sub_100015758;
  }

  else
  {

    v4 = sub_100010BD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100010BD0()
{
  *(v0 + 936) = *(v0 + 368);
  sub_100005744(&qword_1000242D8, &qword_10001AE60);
  v1 = sub_100018C54();
  *(v0 + 952) = v1;
  v2 = swift_task_alloc();
  *(v0 + 960) = v2;
  *v2 = v0;
  v2[1] = sub_100010CE0;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 144, v1, 0, 0);
}

uint64_t sub_100010CE0()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v3 = *(v2 + 848);

    v4 = sub_10001597C;
  }

  else
  {

    v4 = sub_100010E60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100010E60()
{
  v28 = v0;
  *(v0 + 192) = *(v0 + 144);
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 176);
  *(v0 + 208) = *(v0 + 160);
  *(v0 + 224) = v3;
  v4 = 0;
  *&v3 = 0;
  v30 = CGRectApplyAffineTransform(*(&v1 - 3), (v0 + 192));
  width = v30.size.width;
  height = v30.size.height;
  v7 = sub_100018EF4();
  v8 = fmin(width / height, 1.77777778);
  if (width / height < 0.75)
  {
    v9 = 0.75;
  }

  else
  {
    v9 = v8;
  }

  v10 = ceil(v7 / v9);
  if (height == 0.0 || width == 0.0)
  {
    v12 = sub_1000198D4();
    v13 = sub_1000199C4();
    v14 = os_log_type_enabled(v13, v12);
    v15 = *(v0 + 728);
    v16 = *(v0 + 720);
    v17 = *(v0 + 712);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      *(v0 + 384) = v7;
      *(v0 + 392) = v10;
      type metadata accessor for CGSize(0);
      v20 = sub_1000197D4();
      v22 = sub_1000178D4(v20, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v12, "video size is zero, falling back to maxPtSize: %s", v18, 0xCu);
      sub_10000A770(v19);
    }

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    v11 = v7 / width;
    if (v7 / width <= v10 / height)
    {
      v11 = v10 / height;
    }

    v7 = ceil(width * v11);
    v10 = ceil(height * v11);
    (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
  }

  v23 = *(v0 + 904);
  *(v0 + 1000) = v10;
  *(v0 + 992) = v7;
  *(v0 + 984) = 0;
  *(v0 + 976) = v23;
  v24 = swift_task_alloc();
  *(v0 + 1008) = v24;
  *v24 = v0;
  v24[1] = sub_100011118;
  v25 = *(v0 + 664);

  return AVAssetTrack.info.getter(v25);
}

uint64_t sub_100011118()
{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v3 = *(v2 + 880);
    v4 = *(v2 + 848);

    v5 = sub_100015BA0;
  }

  else
  {
    v5 = sub_100011274;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100011274(uint64_t a1)
{
  v2 = sub_1000198D4();
  v3 = sub_1000199C4();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v1[125];
    v5 = v1[124];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v3, v2, "thumbnailFitPxSize: %f x %f", v6, 0x16u);
  }

  v7 = swift_task_alloc();
  v1[128] = v7;
  *v7 = v1;
  v7[1] = sub_1000113D0;

  return AVAsset.isAutoLoop.getter();
}

uint64_t sub_1000113D0(char a1)
{
  v3 = *v2;
  *(v3 + 1485) = a1;
  *(v3 + 1032) = v1;

  if (v1)
  {
    v4 = *(v3 + 848);

    v5 = sub_100015D9C;
  }

  else
  {
    v5 = sub_100011528;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100011528()
{
  v1 = *(v0 + 848);

  v2 = objc_allocWithZone(AVAssetReader);
  *(v0 + 408) = 0;
  v3 = [v2 initWithAsset:v1 error:v0 + 408];
  *(v0 + 1040) = v3;
  v4 = *(v0 + 408);
  v5 = *(v0 + 848);
  if (!v3)
  {
    v37 = *(v0 + 880);
    v38 = *(v0 + 664);
    v39 = *(v0 + 648);
    v40 = *(v0 + 640);
    v41 = v4;
    v42 = sub_100018BE4();

    v178 = v42;
    swift_willThrow();

    (*(v39 + 8))(v38, v40);
    goto LABEL_32;
  }

  v6 = *(v0 + 992);
  v7 = v4;

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10001AD10;
  *(v8 + 32) = sub_1000197C4();
  *(v8 + 40) = v9;
  *(v8 + 72) = sub_100005744(&qword_1000242A0, &qword_10001AE38);
  *(v8 + 48) = &off_1000212C0;
  *(v8 + 80) = sub_1000197C4();
  *(v8 + 88) = v10;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  v11 = *(v0 + 992);
  if (v11 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v12 = *(v0 + 1000);
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 96) = v11;
  *(v8 + 128) = sub_1000197C4();
  *(v8 + 136) = v13;
  if ((v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v14 = *(v0 + 1000);
  if (v14 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  if (v14 >= 9.22337204e18)
  {
    goto LABEL_67;
  }

  v15 = *(v0 + 888);
  v16 = *(v0 + 776);
  v17 = *(v0 + 736);
  *(v8 + 168) = &type metadata for Int;
  *(v8 + 144) = v14;
  v18 = sub_10000C794(v8);
  swift_setDeallocating();
  sub_100005744(&qword_100024218, qword_10001AC38);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100018E54();
  v19 = v15(v16, v17);
  v20 = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  *(v0 + 1468) = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  if (v19 == v20)
  {
    v21 = *(v0 + 776);
    v22 = *(v0 + 696);
    v23 = v0 + 680;
    v24 = *(v0 + 680);
    v25 = (v0 + 672);
    v26 = *(v0 + 672);
    (*(v0 + 976))(v21, *(v0 + 736));
    (*(v24 + 32))(v22, v21, v26);
    if (sub_100018E94() >= 1)
    {
      v27 = sub_1000197C4();
      v29 = v28;
      v30 = sub_100018E94();
      *(v0 + 328) = &type metadata for Int;
      *(v0 + 304) = v30;
      sub_10000A760((v0 + 304), (v0 + 336));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000189C0((v0 + 336), v27, v29, isUniquelyReferenced_nonNull_native);
    }

    v32 = (v0 + 696);
    *(v0 + 1048) = v18;
    if (sub_100018E84() >= 1 && (sub_100018EA4() & 1) != 0)
    {
      sub_100005744(&qword_1000242C0, &qword_10001AE50);
      v33 = sub_100018C74();
      *(v0 + 1056) = v33;
      v34 = swift_task_alloc();
      *(v0 + 1064) = v34;
      *v34 = v0;
      v34[1] = sub_100012A68;
      v35 = v0 + 1384;
      v36 = v33;
LABEL_23:

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v35, v36, 0, 0);
    }
  }

  else
  {
    v32 = (v0 + 776);
    v25 = (v0 + 736);
    v23 = v0 + 744;
  }

  (*(*v23 + 8))(*v32, *v25);
  v179 = *(v0 + 1468);
  v43 = *(v0 + 888);
  v44 = *(v0 + 880);
  v45 = *(v0 + 768);
  v46 = *(v0 + 736);
  v47 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v48 = v44;
  isa = sub_100019774().super.isa;

  v50 = [v47 initWithTrack:v48 outputSettings:isa];
  *(v0 + 1080) = v50;

  sub_100018E54();
  if (v43(v45, v46) == v179)
  {
    v51 = *(v0 + 768);
    v52 = *(v0 + 688);
    v53 = *(v0 + 680);
    v54 = *(v0 + 672);
    (*(v0 + 976))(v51, *(v0 + 736));
    (*(v53 + 32))(v52, v51, v54);
    [v50 setAppliesPreferredTrackTransform:sub_100018ED4() & 1];
    if (sub_100018E94() == 1)
    {
      [v50 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v50 setAppliesPreferredTrackTransform:1];
  }

  v55 = *(v0 + 1040);
  v56 = *(v0 + 1464);
  v57 = *(v0 + 888);
  v58 = *(v0 + 760);
  v59 = *(v0 + 744);
  v60 = *(v0 + 736);
  [v50 setAlwaysCopiesSampleData:0];
  [v55 addOutput:v50];
  sub_100018E54();
  v61 = v57(v58, v60);
  (*(v59 + 8))(v58, v60);
  if (v61 == v56)
  {
    sub_100005744(&qword_1000242B0, &qword_10001AE40);
    v62 = sub_100018C44();
    *(v0 + 1088) = v62;
    v63 = swift_task_alloc();
    *(v0 + 1096) = v63;
    *v63 = v0;
    v63[1] = sub_100013F8C;
    v35 = v0 + 1456;
    v36 = v62;
    goto LABEL_23;
  }

  v64 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v65 = [v64 copyNextSampleBuffer];
  if (v65)
  {
    v66 = *(v0 + 984);
    v67 = *(v0 + 1464);
    v68 = *(v0 + 1460);
    v69 = v65;
    v70 = v69;
    if (v68 != v67 && !v66)
    {
LABEL_29:
      v71 = *(v0 + 1080);
      v72 = *(v0 + 880);
      v73 = *(v0 + 848);
      v74 = *(v0 + 664);
      v75 = *(v0 + 648);
      v76 = *(v0 + 640);

      (*(v75 + 8))(v74, v76);
      goto LABEL_30;
    }

    v85 = 0;
    v86 = *(v0 + 616);
    v144 = (v86 + 16);
    v145 = (*(v0 + 648) + 16);
    v87 = *(v0 + 576);
    v88 = *(v0 + 544);
    v89 = *(v0 + 512);
    v142 = (v88 + 16);
    v143 = (v87 + 16);
    v146 = (*(v0 + 744) + 8);
    v136 = (v89 + 16);
    v137 = (*(v0 + 488) + 8);
    v138 = (v89 + 8);
    v139 = (v88 + 8);
    v140 = (v87 + 8);
    v141 = (v86 + 8);
    if (CMSampleBufferGetNumSamples(v69))
    {
      goto LABEL_38;
    }

    do
    {
LABEL_37:
    }

    while (!CMSampleBufferGetNumSamples(v70));
    while (1)
    {
LABEL_38:

      v90 = sub_100019914();
      if (!v90)
      {
        v120 = *(v0 + 1080);
        v121 = *(v0 + 1040);
        v122 = *(v0 + 880);
        v176 = *(v0 + 848);
        v170 = *(v0 + 664);
        v123 = *(v0 + 648);
        v124 = *(v0 + 640);
        sub_100019714();
        sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        v125 = swift_allocError();
        sub_100019704();
        v178 = v125;
        swift_willThrow();

        (*(v123 + 8))(v170, v124);
        goto LABEL_32;
      }

      v91 = v90;
      v92 = sub_1000198D4();
      v93 = sub_1000199C4();
      if (os_log_type_enabled(v93, v92))
      {
        v94 = swift_slowAlloc();
        *v94 = 134217984;
        *(v94 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v93, v92, "BlastDoor processing thumbnail %ld", v94, 0xCu);
      }

      v173 = *(v0 + 1464);
      v166 = *(v0 + 888);
      v162 = *(v0 + 752);
      v164 = *(v0 + 736);
      v95 = *(v0 + 664);
      v96 = *(v0 + 656);
      v97 = *(v0 + 640);
      v98 = *(v0 + 632);
      v149 = *(v0 + 624);
      v150 = *(v0 + 608);
      v180 = v85;
      v99 = *(v0 + 600);
      v100 = *(v0 + 592);
      v151 = *(v0 + 584);
      v152 = *(v0 + 568);
      v148 = *(v0 + 560);
      v153 = *(v0 + 552);
      v155 = *(v0 + 536);

      sub_100019924();
      sub_100019994();
      type metadata accessor for CVBuffer(0);
      v101 = sub_1000196B4();
      (*(*(v101 - 8) + 56))(v99, 1, 1, v101);
      v147 = v91;
      sub_1000196C4();
      v102 = *v145;
      (*v145)(v96, v95, v97);
      sub_100018E14();
      v102(v96, v95, v97);
      sub_100018E34();
      (*v144)(v149, v98, v150);
      (*v143)(v151, v100, v152);
      (*v142)(v153, v148, v155);
      sub_100018F14();
      sub_100018E54();
      v103 = v166(v162, v164);
      v104 = *(v0 + 1080);
      if (v103 == v173)
      {
        v156 = *(v0 + 1040);
        v157 = *(v0 + 880);
        v160 = *(v0 + 848);
        v177 = *(v0 + 640);
        v182 = *(v0 + 664);
        v168 = *(v0 + 632);
        v171 = *(v0 + 648);
        v163 = *(v0 + 592);
        v165 = *(v0 + 608);
        v161 = *(v0 + 568);
        v158 = *(v0 + 536);
        v159 = *(v0 + 560);
        v126 = *(v0 + 528);
        v127 = *(v0 + 520);
        v129 = *(v0 + 496);
        v128 = *(v0 + 504);
        v154 = *(v0 + 480);
        (*v146)(*(v0 + 752), *(v0 + 736));
        sub_1000198D4();
        v130 = sub_1000199C4();
        sub_100018CC4();

        (*v136)(v127, v126, v128);
        sub_100017E7C(&qword_1000242A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_100019604();
        sub_100005744(&qword_100024268, &qword_10001ADA8);
        sub_100019864();
        (*v137)(v129, v154);
        *(v0 + 424) = 0;
        sub_100019874();

        (*v138)(v126, v128);
        (*v139)(v159, v158);
        (*v140)(v163, v161);
        (*v141)(v168, v165);
        (*(v171 + 8))(v182, v177);
        goto LABEL_30;
      }

      (*v146)(*(v0 + 752), *(v0 + 736));
      v105 = [v104 copyNextSampleBuffer];
      v106 = v180 + 1;
      if (__OFADD__(v180, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v107 = v105;
      v181 = v180 + 1;
      if (v105)
      {
        v108 = *(v0 + 1460) != *(v0 + 1464) && v106 == *(v0 + 984);
        v109 = v108;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(v0 + 496);
      v174 = *(v0 + 480);
      (*v136)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
      sub_100017E7C(&qword_1000242A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
      sub_100019604();
      sub_100005744(&qword_100024268, &qword_10001ADA8);
      sub_100019864();
      (*v137)(v110, v174);
      v111 = *(v0 + 632);
      v169 = *(v0 + 592);
      v175 = *(v0 + 608);
      v167 = *(v0 + 568);
      v112 = *(v0 + 560);
      v113 = *(v0 + 536);
      v114 = *(v0 + 528);
      v115 = *(v0 + 504);
      if (v109)
      {
        *(v0 + 416) = 0;
        sub_100019874();
      }

      (*v138)(v114, v115);
      (*v139)(v112, v113);
      (*v140)(v169, v167);
      (*v141)(v111, v175);
      if (!v107)
      {
        break;
      }

      v116 = *(v0 + 984);
      v117 = *(v0 + 1464);
      v118 = *(v0 + 1460);
      v119 = v107;
      v70 = v119;
      v108 = v118 == v117;
      v85 = v181;
      if (!v108 && v181 == v116)
      {
        goto LABEL_29;
      }

      if (!CMSampleBufferGetNumSamples(v119))
      {
        goto LABEL_37;
      }
    }

    v131 = *(v0 + 1080);
    v132 = *(v0 + 1040);
    v133 = *(v0 + 880);
    v134 = *(v0 + 848);
    (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));

LABEL_30:

    v77 = *(v0 + 8);
    goto LABEL_33;
  }

  v78 = *(v0 + 1080);
  v79 = *(v0 + 1040);
  v80 = *(v0 + 880);
  v172 = *(v0 + 848);
  v81 = *(v0 + 664);
  v82 = *(v0 + 648);
  v83 = *(v0 + 640);
  sub_100019714();
  sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  v84 = swift_allocError();
  sub_100019704();
  v178 = v84;
  swift_willThrow();

  (*(v82 + 8))(v81, v83);
LABEL_32:
  **(v0 + 464) = v178;

  v77 = *(v0 + 8);
LABEL_33:

  return v77();
}

uint64_t sub_100012A68()
{
  *(*v1 + 1072) = v0;

  if (v0)
  {

    v2 = sub_100015FC0;
  }

  else
  {

    v2 = sub_100012BE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100012BE4()
{
  v173 = v0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  *(v0 + 1408) = *(v0 + 1384);
  *(v0 + 1416) = v2;
  *(v0 + 1424) = v1;
  Seconds = CMTimeGetSeconds((v0 + 1408));
  v4 = sub_100018E84();
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_52:
    __break(1u);
  }

  v5 = Seconds / ((v4 - 1) + 0.1);
  if (v5 <= 0.0)
  {
    (*(*(v0 + 680) + 8))(*(v0 + 696), *(v0 + 672));
  }

  else
  {
    v6 = *(v0 + 680);
    CMTimeMakeWithSeconds(&v170, v5, 1000);
    epoch = v170.epoch;
    v8 = *&v170.timescale;
    *(v0 + 1432) = v170.value;
    *(v0 + 1440) = v8;
    *(v0 + 1448) = epoch;
    v9 = CMTimeCopyAsDictionary((v0 + 1432), kCFAllocatorDefault);
    v10 = (v6 + 8);
    v11 = *(v0 + 1048);
    if (!v9)
    {
      v55 = *(v0 + 1040);
      v56 = *(v0 + 880);
      v57 = *(v0 + 848);
      v147 = *(v0 + 672);
      v150 = *(v0 + 696);
      v58 = *(v0 + 648);
      v154 = *(v0 + 640);
      v158 = *(v0 + 664);

      sub_100019714();
      sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v59 = swift_allocError();
      sub_100019704();
      v166 = v59;
      swift_willThrow();

      (*v10)(v150, v147);
      (*(v58 + 8))(v158, v154);
      goto LABEL_22;
    }

    v12 = v9;
    v13 = *(v0 + 696);
    v14 = *(v0 + 672);
    v15 = sub_1000197C4();
    v17 = v16;
    *(v0 + 264) = sub_100018B94(0, &qword_1000242C8, NSDictionary_ptr);
    *(v0 + 240) = v12;
    sub_10000A760((v0 + 240), (v0 + 272));
    v18 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170.value = v11;
    sub_1000189C0((v0 + 272), v15, v17, isUniquelyReferenced_nonNull_native);

    (*v10)(v13, v14);
  }

  v165 = *(v0 + 1468);
  v20 = *(v0 + 888);
  v21 = *(v0 + 880);
  v22 = *(v0 + 768);
  v23 = *(v0 + 736);
  v24 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v25 = v21;
  isa = sub_100019774().super.isa;

  v27 = [v24 initWithTrack:v25 outputSettings:isa];
  *(v0 + 1080) = v27;

  sub_100018E54();
  if (v20(v22, v23) == v165)
  {
    v28 = *(v0 + 768);
    v29 = *(v0 + 688);
    v30 = *(v0 + 680);
    v31 = *(v0 + 672);
    (*(v0 + 976))(v28, *(v0 + 736));
    (*(v30 + 32))(v29, v28, v31);
    [v27 setAppliesPreferredTrackTransform:sub_100018ED4() & 1];
    if (sub_100018E94() == 1)
    {
      [v27 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v27 setAppliesPreferredTrackTransform:1];
  }

  v32 = *(v0 + 1040);
  v33 = *(v0 + 1464);
  v34 = *(v0 + 888);
  v35 = *(v0 + 760);
  v36 = *(v0 + 744);
  v37 = *(v0 + 736);
  [v27 setAlwaysCopiesSampleData:0];
  [v32 addOutput:v27];
  sub_100018E54();
  v38 = v34(v35, v37);
  (*(v36 + 8))(v35, v37);
  if (v38 == v33)
  {
    sub_100005744(&qword_1000242B0, &qword_10001AE40);
    v39 = sub_100018C44();
    *(v0 + 1088) = v39;
    v40 = swift_task_alloc();
    *(v0 + 1096) = v40;
    *v40 = v0;
    v40[1] = sub_100013F8C;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 1456, v39, 0, 0);
  }

  v41 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v42 = [v41 copyNextSampleBuffer];
  if (v42)
  {
    v43 = *(v0 + 984);
    v44 = *(v0 + 1464);
    v45 = *(v0 + 1460);
    v46 = v42;
    v47 = v46;
    if (v45 == v44 || v43)
    {
      v67 = 0;
      v68 = *(v0 + 616);
      v127 = (v68 + 16);
      v128 = (*(v0 + 648) + 16);
      v69 = *(v0 + 576);
      v70 = *(v0 + 544);
      v71 = *(v0 + 512);
      v125 = (v70 + 16);
      v126 = (v69 + 16);
      v129 = (*(v0 + 744) + 8);
      v119 = (v71 + 16);
      v120 = (*(v0 + 488) + 8);
      v121 = (v71 + 8);
      v122 = (v70 + 8);
      v123 = (v69 + 8);
      v124 = (v68 + 8);
      if (CMSampleBufferGetNumSamples(v46))
      {
        goto LABEL_28;
      }

      do
      {
LABEL_27:
      }

      while (!CMSampleBufferGetNumSamples(v47));
      while (1)
      {
LABEL_28:

        v72 = sub_100019914();
        if (!v72)
        {
          v103 = *(v0 + 1080);
          v104 = *(v0 + 1040);
          v105 = *(v0 + 880);
          v163 = *(v0 + 848);
          v156 = *(v0 + 664);
          v106 = *(v0 + 648);
          v107 = *(v0 + 640);
          sub_100019714();
          sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          v108 = swift_allocError();
          sub_100019704();
          v166 = v108;
          swift_willThrow();

          (*(v106 + 8))(v156, v107);
          goto LABEL_22;
        }

        v73 = v72;
        v74 = sub_1000198D4();
        v75 = sub_1000199C4();
        if (os_log_type_enabled(v75, v74))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          *(v76 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v75, v74, "BlastDoor processing thumbnail %ld", v76, 0xCu);
        }

        v160 = *(v0 + 1464);
        v151 = *(v0 + 888);
        v145 = *(v0 + 752);
        v148 = *(v0 + 736);
        v77 = *(v0 + 664);
        v78 = *(v0 + 656);
        v79 = *(v0 + 640);
        v80 = *(v0 + 632);
        v132 = *(v0 + 624);
        v133 = *(v0 + 608);
        v167 = v67;
        v81 = *(v0 + 600);
        v82 = *(v0 + 592);
        v134 = *(v0 + 584);
        v135 = *(v0 + 568);
        v131 = *(v0 + 560);
        v136 = *(v0 + 552);
        v138 = *(v0 + 536);

        sub_100019924();
        sub_100019994();
        type metadata accessor for CVBuffer(0);
        v171 = v83;
        v172 = &protocol witness table for CVBufferRef;
        v170.value = v73;
        v84 = sub_1000196B4();
        (*(*(v84 - 8) + 56))(v81, 1, 1, v84);
        v130 = v73;
        sub_1000196C4();
        v85 = *v128;
        (*v128)(v78, v77, v79);
        sub_100018E14();
        v85(v78, v77, v79);
        sub_100018E34();
        (*v127)(v132, v80, v133);
        (*v126)(v134, v82, v135);
        (*v125)(v136, v131, v138);
        sub_100018F14();
        sub_100018E54();
        v86 = v151(v145, v148);
        v87 = *(v0 + 1080);
        if (v86 == v160)
        {
          v139 = *(v0 + 1040);
          v140 = *(v0 + 880);
          v143 = *(v0 + 848);
          v164 = *(v0 + 640);
          v169 = *(v0 + 664);
          v153 = *(v0 + 632);
          v157 = *(v0 + 648);
          v146 = *(v0 + 592);
          v149 = *(v0 + 608);
          v144 = *(v0 + 568);
          v141 = *(v0 + 536);
          v142 = *(v0 + 560);
          v109 = *(v0 + 528);
          v110 = *(v0 + 520);
          v112 = *(v0 + 496);
          v111 = *(v0 + 504);
          v137 = *(v0 + 480);
          (*v129)(*(v0 + 752), *(v0 + 736));
          sub_1000198D4();
          v113 = sub_1000199C4();
          sub_100018CC4();

          (*v119)(v110, v109, v111);
          sub_100017E7C(&qword_1000242A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_100019604();
          sub_100005744(&qword_100024268, &qword_10001ADA8);
          sub_100019864();
          (*v120)(v112, v137);
          *(v0 + 424) = 0;
          sub_100019874();

          (*v121)(v109, v111);
          (*v122)(v142, v141);
          (*v123)(v146, v144);
          (*v124)(v153, v149);
          (*(v157 + 8))(v169, v164);
          goto LABEL_19;
        }

        (*v129)(*(v0 + 752), *(v0 + 736));
        v88 = [v87 copyNextSampleBuffer];
        v89 = v167 + 1;
        if (__OFADD__(v167, 1))
        {
          goto LABEL_52;
        }

        v90 = v88;
        v168 = v167 + 1;
        if (v88)
        {
          v91 = *(v0 + 1460) != *(v0 + 1464) && v89 == *(v0 + 984);
          v92 = v91;
        }

        else
        {
          v92 = 1;
        }

        v93 = *(v0 + 496);
        v161 = *(v0 + 480);
        (*v119)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_100017E7C(&qword_1000242A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_100019604();
        sub_100005744(&qword_100024268, &qword_10001ADA8);
        sub_100019864();
        (*v120)(v93, v161);
        v94 = *(v0 + 632);
        v155 = *(v0 + 592);
        v162 = *(v0 + 608);
        v152 = *(v0 + 568);
        v95 = *(v0 + 560);
        v96 = *(v0 + 536);
        v97 = *(v0 + 528);
        v98 = *(v0 + 504);
        if (v92)
        {
          *(v0 + 416) = 0;
          sub_100019874();
        }

        (*v121)(v97, v98);
        (*v122)(v95, v96);
        (*v123)(v155, v152);
        (*v124)(v94, v162);
        if (!v90)
        {
          break;
        }

        v99 = *(v0 + 984);
        v100 = *(v0 + 1464);
        v101 = *(v0 + 1460);
        v102 = v90;
        v47 = v102;
        v91 = v101 == v100;
        v67 = v168;
        if (!v91 && v168 == v99)
        {
          goto LABEL_18;
        }

        if (!CMSampleBufferGetNumSamples(v102))
        {
          goto LABEL_27;
        }
      }

      v114 = *(v0 + 1080);
      v115 = *(v0 + 1040);
      v116 = *(v0 + 880);
      v117 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_18:
      v48 = *(v0 + 1080);
      v49 = *(v0 + 880);
      v50 = *(v0 + 848);
      v51 = *(v0 + 664);
      v52 = *(v0 + 648);
      v53 = *(v0 + 640);

      (*(v52 + 8))(v51, v53);
    }

LABEL_19:

    v54 = *(v0 + 8);
    goto LABEL_23;
  }

  v60 = *(v0 + 1080);
  v61 = *(v0 + 1040);
  v62 = *(v0 + 880);
  v159 = *(v0 + 848);
  v63 = *(v0 + 664);
  v64 = *(v0 + 648);
  v65 = *(v0 + 640);
  sub_100019714();
  sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  v66 = swift_allocError();
  sub_100019704();
  v166 = v66;
  swift_willThrow();

  (*(v64 + 8))(v63, v65);
LABEL_22:
  **(v0 + 464) = v166;

  v54 = *(v0 + 8);
LABEL_23:

  return v54();
}

uint64_t sub_100013F8C()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_100016210;
  }

  else
  {
    v2 = sub_1000140EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000140EC()
{
  v1 = ceilf(*(v0 + 1456));
  *(v0 + 1472) = v1;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v1 >= 2147500000.0)
  {
    goto LABEL_9;
  }

  *(v0 + 1112) = kCMTimeZero.value;
  *(v0 + 1476) = *&kCMTimeZero.timescale;
  *(v0 + 1120) = kCMTimeZero.epoch;
  sub_100005744(&qword_1000242B8, &qword_10001AE48);
  v2 = sub_100018C64();
  *(v0 + 1128) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1136) = v3;
  *v3 = v0;
  v3[1] = sub_100014260;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 432, v2, 0, 0);
}

uint64_t sub_100014260()
{

  if (v0)
  {

    v1 = sub_100016444;
  }

  else
  {

    v1 = sub_1000143D4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000143D4()
{
  v166 = v0;
  v1 = *(v0 + 432);
  if (v1 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100019A44())
  {
    v3 = v0 + 1304;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = &selRef_syndicationProperties;
    v144 = i;
    while (1)
    {
      if (v5)
      {
        v7 = sub_100019A24();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v7 = *(v1 + 32 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (([v7 v6[17]] & 1) == 0)
      {
        v10 = *(v0 + 880);
        [v8 timeMapping];
        v11 = v159;
        v12 = *(&v158 + 1);
        *(v0 + 1336) = v158;
        *(v0 + 1344) = v12;
        *(v0 + 1352) = v11;
        v13 = [v10 makeSampleCursorWithPresentationTimeStamp:v0 + 1336];
        if (v13)
        {
          v14 = v13;
          do
          {
            if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
            {
              break;
            }

            if ([v14 stepInPresentationOrderByCount:1] != 1)
            {
              break;
            }

            [v14 presentationTimeStamp];
            [v8 timeMapping];
            v15 = v159;
            *(v0 + 1144) = v158;
            *(v0 + 1160) = v15;
            *(v0 + 1176) = v160;
            sub_1000198A4();
          }

          while ((sub_100019974() & 1) == 0);
          if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
          {

            [v14 presentationTimeStamp];
            v83 = v158;
            v84 = v159;
            v85 = *(&v158 + 1);
            [v8 timeMapping];
            v86 = v158;
            v87 = v159;
            v88 = *(&v160 + 1);
            v89 = v160;
            v90 = *(&v158 + 1);
            [v8 timeMapping];
            v91 = v161;
            v92 = v165;
            v93 = v164;
            v94 = v163;
            v95 = v162;
            *(v0 + 1360) = v83;
            *(v0 + 1368) = v85;
            *(v0 + 1376) = v84;
            *(v0 + 1240) = v86;
            *(v0 + 1248) = v90;
            *(v0 + 1256) = v87;
            *(v0 + 1272) = v89;
            *(v0 + 1280) = v88;
            *(v0 + 1288) = v91;
            *(v0 + 1296) = v95;
            *(v0 + 1304) = v94;
            *(v0 + 1320) = v93;
            *(v0 + 1328) = v92;
            CMTimeMapTimeFromRangeToRange(&v158, (v0 + 1360), (v0 + 1240), (v0 + 1288));
            v17 = *(&v158 + 1);
            v18 = v158;
            v16 = v159;

            goto LABEL_22;
          }

          i = v144;
          v5 = v1 & 0xC000000000000001;
          v6 = &selRef_syndicationProperties;
        }
      }

      if (v4 == i)
      {

        v16 = *(v0 + 1120);
        v3 = v0 + 1304;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v16 = *(v0 + 1120);
LABEL_21:
  v17 = *(v3 + 172);
  v18 = *(v0 + 1112);
LABEL_22:
  v19 = *(v0 + 1040);
  v20 = sub_100019984(1, *(v0 + 1472));
  *(v0 + 1192) = v18;
  *(v0 + 1200) = v17;
  *(v0 + 1208) = v16;
  *(v0 + 1216) = v20;
  *(v0 + 1224) = v21;
  *(v0 + 1228) = v22;
  *(v0 + 1232) = v23;
  [v19 setTimeRange:v0 + 1192];
  v24 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v25 = [v24 copyNextSampleBuffer];
  if (v25)
  {
    v26 = *(v0 + 984);
    v27 = *(v0 + 1464);
    v28 = *(v0 + 1460);
    v29 = v25;
    v30 = v29;
    if (v28 == v27 || v26)
    {
      v46 = 0;
      v47 = *(v0 + 616);
      v119 = (v47 + 16);
      v120 = (*(v0 + 648) + 16);
      v48 = *(v0 + 576);
      v49 = *(v0 + 544);
      v50 = *(v0 + 512);
      v117 = (v49 + 16);
      v118 = (v48 + 16);
      v121 = (*(v0 + 744) + 8);
      v111 = (v50 + 16);
      v112 = (*(v0 + 488) + 8);
      v113 = (v50 + 8);
      v114 = (v49 + 8);
      v115 = (v48 + 8);
      v116 = (v47 + 8);
      if (CMSampleBufferGetNumSamples(v29))
      {
        goto LABEL_34;
      }

      do
      {
LABEL_33:
      }

      while (!CMSampleBufferGetNumSamples(v30));
      while (1)
      {
LABEL_34:

        v51 = sub_100019914();
        if (!v51)
        {
          v96 = *(v0 + 1080);
          v97 = *(v0 + 1040);
          v98 = *(v0 + 880);
          v152 = *(v0 + 848);
          v146 = *(v0 + 664);
          v99 = *(v0 + 648);
          v100 = *(v0 + 640);
          sub_100019714();
          sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          v101 = swift_allocError();
          sub_100019704();
          v154 = v101;
          swift_willThrow();

          (*(v99 + 8))(v146, v100);
          goto LABEL_28;
        }

        v52 = v51;
        v53 = sub_1000198D4();
        v54 = sub_1000199C4();
        if (os_log_type_enabled(v54, v53))
        {
          v55 = swift_slowAlloc();
          *v55 = 134217984;
          *(v55 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v54, v53, "BlastDoor processing thumbnail %ld", v55, 0xCu);
        }

        v149 = *(v0 + 1464);
        v137 = *(v0 + 752);
        v139 = *(v0 + 736);
        v141 = *(v0 + 888);
        v56 = *(v0 + 664);
        v155 = v46;
        v57 = *(v0 + 656);
        v58 = *(v0 + 640);
        v59 = *(v0 + 632);
        v124 = *(v0 + 624);
        v125 = *(v0 + 608);
        v60 = *(v0 + 600);
        v61 = *(v0 + 592);
        v126 = *(v0 + 584);
        v127 = *(v0 + 568);
        v123 = *(v0 + 560);
        v128 = *(v0 + 552);
        v130 = *(v0 + 536);

        sub_100019924();
        sub_100019994();
        type metadata accessor for CVBuffer(0);
        *(&v159 + 1) = v62;
        *&v160 = &protocol witness table for CVBufferRef;
        *&v158 = v52;
        v63 = sub_1000196B4();
        (*(*(v63 - 8) + 56))(v60, 1, 1, v63);
        v64 = v52;
        sub_1000196C4();
        v65 = *v120;
        (*v120)(v57, v56, v58);
        sub_100018E14();
        v65(v57, v56, v58);
        v1 = v123;
        sub_100018E34();
        (*v119)(v124, v59, v125);
        (*v118)(v126, v61, v127);
        (*v117)(v128, v123, v130);
        sub_100018F14();
        sub_100018E54();
        v66 = v141(v137, v139);
        v67 = *(v0 + 1080);
        v122 = v64;
        if (v66 == v149)
        {
          v131 = *(v0 + 1040);
          v132 = *(v0 + 880);
          v135 = *(v0 + 848);
          v147 = *(v0 + 648);
          v153 = *(v0 + 640);
          v157 = *(v0 + 664);
          v140 = *(v0 + 608);
          v143 = *(v0 + 632);
          v136 = *(v0 + 568);
          v138 = *(v0 + 592);
          v133 = *(v0 + 536);
          v134 = *(v0 + 560);
          v102 = *(v0 + 528);
          v103 = *(v0 + 520);
          v105 = *(v0 + 496);
          v104 = *(v0 + 504);
          v129 = *(v0 + 480);
          (*v121)(*(v0 + 752), *(v0 + 736));
          sub_1000198D4();
          v106 = sub_1000199C4();
          sub_100018CC4();

          (*v111)(v103, v102, v104);
          sub_100017E7C(&qword_1000242A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_100019604();
          sub_100005744(&qword_100024268, &qword_10001ADA8);
          sub_100019864();
          (*v112)(v105, v129);
          *(v0 + 424) = 0;
          sub_100019874();

          (*v113)(v102, v104);
          (*v114)(v134, v133);
          (*v115)(v138, v136);
          (*v116)(v143, v140);
          (*(v147 + 8))(v157, v153);
          goto LABEL_26;
        }

        (*v121)(*(v0 + 752), *(v0 + 736));
        v68 = [v67 copyNextSampleBuffer];
        v69 = v155 + 1;
        if (__OFADD__(v155, 1))
        {
          goto LABEL_60;
        }

        v70 = v68;
        v156 = v155 + 1;
        if (v68)
        {
          v72 = *(v0 + 1460) != *(v0 + 1464) && v69 == *(v0 + 984);
        }

        else
        {
          v72 = 1;
        }

        v73 = *(v0 + 496);
        v150 = *(v0 + 480);
        (*v111)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_100017E7C(&qword_1000242A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_100019604();
        sub_100005744(&qword_100024268, &qword_10001ADA8);
        sub_100019864();
        (*v112)(v73, v150);
        v74 = *(v0 + 632);
        v145 = *(v0 + 592);
        v151 = *(v0 + 608);
        v142 = *(v0 + 568);
        v75 = *(v0 + 560);
        v76 = *(v0 + 536);
        v77 = *(v0 + 528);
        v78 = *(v0 + 504);
        if (v72)
        {
          *(v0 + 416) = 0;
          sub_100019874();
        }

        (*v113)(v77, v78);
        (*v114)(v75, v76);
        (*v115)(v145, v142);
        (*v116)(v74, v151);
        v46 = v69;
        if (!v70)
        {
          break;
        }

        v79 = *(v0 + 984);
        v80 = *(v0 + 1464);
        v81 = *(v0 + 1460);
        v82 = v70;
        v30 = v82;
        if (v81 != v80 && v156 == v79)
        {
          goto LABEL_25;
        }

        if (!CMSampleBufferGetNumSamples(v82))
        {
          goto LABEL_33;
        }
      }

      v107 = *(v0 + 1080);
      v108 = *(v0 + 1040);
      v109 = *(v0 + 880);
      v110 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_25:
      v31 = *(v0 + 1080);
      v32 = *(v0 + 880);
      v33 = *(v0 + 848);
      v34 = *(v0 + 664);
      v35 = *(v0 + 648);
      v36 = *(v0 + 640);

      (*(v35 + 8))(v34, v36);
    }

LABEL_26:

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 1080);
    v39 = *(v0 + 1040);
    v40 = *(v0 + 880);
    v148 = *(v0 + 848);
    v41 = *(v0 + 664);
    v42 = *(v0 + 648);
    v43 = *(v0 + 640);
    sub_100019714();
    sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v44 = swift_allocError();
    sub_100019704();
    v154 = v44;
    swift_willThrow();

    (*(v42 + 8))(v41, v43);
LABEL_28:
    **(v0 + 464) = v154;

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_10001555C(uint64_t a1)
{
  v2 = *(v1 + 848);
  swift_willThrow();

  **(v1 + 464) = *(v1 + 864);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100015758()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  **(v0 + 464) = *(v0 + 928);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001597C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  **(v0 + 464) = *(v0 + 968);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100015BA0()
{
  v1 = *(v0 + 880);

  **(v0 + 464) = *(v0 + 1016);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100015D9C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 664);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);

  (*(v3 + 8))(v2, v4);
  **(v0 + 464) = *(v0 + 1032);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100015FC0()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 848);
  v3 = *(v0 + 696);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  **(v0 + 464) = *(v0 + 1072);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100016210()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 880);
  v3 = *(v0 + 848);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);

  (*(v5 + 8))(v4, v6);
  **(v0 + 464) = *(v0 + 1104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100016444()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1476);
  v5 = sub_100019984(1, *(v0 + 1472));
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v4;
  *(v0 + 1208) = v1;
  *(v0 + 1216) = v5;
  *(v0 + 1224) = v6;
  *(v0 + 1228) = v7;
  *(v0 + 1232) = v8;
  [v3 setTimeRange:v0 + 1192];
  v9 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v10 = [v9 copyNextSampleBuffer];
  if (v10)
  {
    v11 = *(v0 + 984);
    v12 = *(v0 + 1464);
    v13 = *(v0 + 1460);
    v14 = v10;
    v15 = v14;
    if (v13 == v12 || v11)
    {
      v31 = 0;
      v32 = *(v0 + 616);
      v89 = (v32 + 16);
      v90 = (*(v0 + 648) + 16);
      v33 = *(v0 + 576);
      v34 = *(v0 + 544);
      v35 = *(v0 + 512);
      v87 = (v34 + 16);
      v88 = (v33 + 16);
      v91 = (*(v0 + 744) + 8);
      v81 = (v35 + 16);
      v82 = (*(v0 + 488) + 8);
      v83 = (v35 + 8);
      v84 = (v34 + 8);
      v85 = (v33 + 8);
      v86 = (v32 + 8);
      if (CMSampleBufferGetNumSamples(v14))
      {
        goto LABEL_13;
      }

      do
      {
LABEL_12:
      }

      while (!CMSampleBufferGetNumSamples(v15));
      while (1)
      {
LABEL_13:

        v36 = sub_100019914();
        if (!v36)
        {
          v66 = *(v0 + 1080);
          v67 = *(v0 + 1040);
          v68 = *(v0 + 880);
          v121 = *(v0 + 848);
          v115 = *(v0 + 664);
          v69 = *(v0 + 648);
          v70 = *(v0 + 640);
          sub_100019714();
          sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          v71 = swift_allocError();
          sub_100019704();
          v123 = v71;
          swift_willThrow();

          (*(v69 + 8))(v115, v70);
          goto LABEL_7;
        }

        v37 = v36;
        v38 = sub_1000198D4();
        v39 = sub_1000199C4();
        if (os_log_type_enabled(v39, v38))
        {
          v40 = swift_slowAlloc();
          *v40 = 134217984;
          *(v40 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v39, v38, "BlastDoor processing thumbnail %ld", v40, 0xCu);
        }

        v118 = *(v0 + 1464);
        v111 = *(v0 + 888);
        v107 = *(v0 + 752);
        v109 = *(v0 + 736);
        v41 = *(v0 + 664);
        v42 = *(v0 + 656);
        v43 = *(v0 + 640);
        v44 = *(v0 + 632);
        v94 = *(v0 + 624);
        v95 = *(v0 + 608);
        v124 = v31;
        v45 = *(v0 + 600);
        v46 = *(v0 + 592);
        v96 = *(v0 + 584);
        v97 = *(v0 + 568);
        v93 = *(v0 + 560);
        v98 = *(v0 + 552);
        v100 = *(v0 + 536);

        sub_100019924();
        sub_100019994();
        type metadata accessor for CVBuffer(0);
        v47 = sub_1000196B4();
        (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
        v92 = v37;
        sub_1000196C4();
        v48 = *v90;
        (*v90)(v42, v41, v43);
        sub_100018E14();
        v48(v42, v41, v43);
        sub_100018E34();
        (*v89)(v94, v44, v95);
        (*v88)(v96, v46, v97);
        (*v87)(v98, v93, v100);
        sub_100018F14();
        sub_100018E54();
        v49 = v111(v107, v109);
        v50 = *(v0 + 1080);
        if (v49 == v118)
        {
          v101 = *(v0 + 1040);
          v102 = *(v0 + 880);
          v122 = *(v0 + 640);
          v126 = *(v0 + 664);
          v113 = *(v0 + 632);
          v116 = *(v0 + 648);
          v108 = *(v0 + 592);
          v110 = *(v0 + 608);
          v105 = *(v0 + 848);
          v106 = *(v0 + 568);
          v103 = *(v0 + 536);
          v104 = *(v0 + 560);
          v72 = *(v0 + 528);
          v73 = *(v0 + 520);
          v75 = *(v0 + 496);
          v74 = *(v0 + 504);
          v99 = *(v0 + 480);
          (*v91)(*(v0 + 752), *(v0 + 736));
          sub_1000198D4();
          v76 = sub_1000199C4();
          sub_100018CC4();

          (*v81)(v73, v72, v74);
          sub_100017E7C(&qword_1000242A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_100019604();
          sub_100005744(&qword_100024268, &qword_10001ADA8);
          sub_100019864();
          (*v82)(v75, v99);
          *(v0 + 424) = 0;
          sub_100019874();

          (*v83)(v72, v74);
          (*v84)(v104, v103);
          (*v85)(v108, v106);
          (*v86)(v113, v110);
          (*(v116 + 8))(v126, v122);
          goto LABEL_5;
        }

        (*v91)(*(v0 + 752), *(v0 + 736));
        v51 = [v50 copyNextSampleBuffer];
        v52 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          __break(1u);
        }

        v53 = v51;
        v125 = v124 + 1;
        if (v51)
        {
          v54 = *(v0 + 1460) != *(v0 + 1464) && v52 == *(v0 + 984);
          v55 = v54;
        }

        else
        {
          v55 = 1;
        }

        v56 = *(v0 + 496);
        v119 = *(v0 + 480);
        (*v81)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_100017E7C(&qword_1000242A8, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_100019604();
        sub_100005744(&qword_100024268, &qword_10001ADA8);
        sub_100019864();
        (*v82)(v56, v119);
        v57 = *(v0 + 632);
        v114 = *(v0 + 592);
        v120 = *(v0 + 608);
        v112 = *(v0 + 568);
        v58 = *(v0 + 560);
        v59 = *(v0 + 536);
        v60 = *(v0 + 528);
        v61 = *(v0 + 504);
        if (v55)
        {
          *(v0 + 416) = 0;
          sub_100019874();
        }

        (*v83)(v60, v61);
        (*v84)(v58, v59);
        (*v85)(v114, v112);
        (*v86)(v57, v120);
        if (!v53)
        {
          break;
        }

        v62 = *(v0 + 984);
        v63 = *(v0 + 1464);
        v64 = *(v0 + 1460);
        v65 = v53;
        v15 = v65;
        v54 = v64 == v63;
        v31 = v125;
        if (!v54 && v125 == v62)
        {
          goto LABEL_4;
        }

        if (!CMSampleBufferGetNumSamples(v65))
        {
          goto LABEL_12;
        }
      }

      v77 = *(v0 + 1080);
      v78 = *(v0 + 1040);
      v79 = *(v0 + 880);
      v80 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_4:
      v16 = *(v0 + 1080);
      v17 = *(v0 + 880);
      v18 = *(v0 + 848);
      v19 = *(v0 + 664);
      v20 = *(v0 + 648);
      v21 = *(v0 + 640);

      (*(v20 + 8))(v19, v21);
    }

LABEL_5:

    v22 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 1080);
    v24 = *(v0 + 1040);
    v25 = *(v0 + 880);
    v117 = *(v0 + 848);
    v26 = *(v0 + 664);
    v27 = *(v0 + 648);
    v28 = *(v0 + 640);
    sub_100019714();
    sub_100017E7C(&qword_100024190, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v29 = swift_allocError();
    sub_100019704();
    v123 = v29;
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
LABEL_7:
    **(v0 + 464) = v123;

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_1000172F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000DC28((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005744(&qword_100024170, &qword_10001AA78);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100018B94(0, &qword_1000242E0, AVAssetTrack_ptr);
    **(*(v4 + 64) + 40) = sub_100019824();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000173E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005744(&qword_100024270, &qword_10001ADB0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100018394(a3, v25 - v10);
  v12 = sub_100019854();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000C67C(v11, &qword_100024270, &qword_10001ADB0);
  }

  else
  {
    sub_100019844();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100019834();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000197E4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000C67C(a3, &qword_100024270, &qword_10001ADB0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000C67C(a3, &qword_100024270, &qword_10001ADB0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000176D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000177D0;

  return v6(a1);
}

uint64_t sub_1000177D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000178D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000179A0(v11, 0, 0, 1, a1, a2);
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
    sub_10000A704(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A770(v11);
  return v7;
}

unint64_t sub_1000179A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100017AAC(a5, a6);
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
    result = sub_100019A34();
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

char *sub_100017AAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100017AF8(a1, a2);
  sub_100017C28(&off_100021298);
  return v3;
}

char *sub_100017AF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100017D14(v5, 0);
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

  result = sub_100019A34();
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
        v10 = sub_100019814();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100017D14(v10, 0);
        result = sub_100019A04();
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

uint64_t sub_100017C28(uint64_t result)
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

  result = sub_100017D88(result, v11, 1, v3);
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

void *sub_100017D14(uint64_t a1, uint64_t a2)
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

  sub_100005744(&qword_100024260, &qword_10001ADA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100017D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005744(&qword_100024260, &qword_10001ADA0);
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

uint64_t sub_100017E7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017EC8()
{
  v17 = sub_100019654();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 32) & ~v2;
  v3 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_100018E64();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_100005744(&qword_100024268, &qword_10001ADA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v15, v17);

  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v14, v12 | 7);
}

uint64_t sub_1000180CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100019654() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100018E64() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100005744(&qword_100024268, &qword_10001ADA8) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1000182A0;

  return sub_10000E9AC(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t sub_1000182A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100018394(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005744(&qword_100024270, &qword_10001ADB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018404()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001843C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100018BE0;

  return sub_1000176D8(a1, v4);
}

uint64_t sub_1000184F4()
{
  v17 = sub_100019654();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_100018E64();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_100005744(&qword_100024268, &qword_10001ADA8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_1000186DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100019654() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100018E64() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100005744(&qword_100024268, &qword_10001ADA8) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000182A0;

  return sub_10000F388(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_100018890()
{
  result = qword_100024280;
  if (!qword_100024280)
  {
    sub_100018B94(255, &qword_1000240E8, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024280);
  }

  return result;
}

uint64_t sub_1000188F8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100018BE0;

  return sub_10000F688(a1, v6, v7, v9, v8, a2);
}

_OWORD *sub_1000189C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000C264(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000AEC8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000AAA8(v16, a4 & 1);
    v11 = sub_10000C264(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_100019AB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000A770(v22);

    return sub_10000A760(a1, v22);
  }

  else
  {
    sub_100018B10(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100018B10(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000A760(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100018B94(uint64_t a1, unint64_t *a2, void *a3)
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