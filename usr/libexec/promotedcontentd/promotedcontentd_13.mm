uint64_t DevicePipelinesModule.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DevicePipelinesModule.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_10025DC08(void *a1, uint64_t a2)
{
  v3 = v2;
  v3[3] = a2;
  v3[4] = a1;
  sub_1003983A8();
  swift_unknownObjectRetain();
  v6 = a1;
  if (sub_100398368())
  {
    v7 = type metadata accessor for OnDeviceAttributionCoordinatorProvider();
    swift_allocObject();
    swift_unknownObjectRetain();
    v8 = sub_100251AF4(v6, a2);
    v3[6] = v8;
    v21[3] = v7;
    v21[4] = &off_10047AED0;
    v21[0] = v8;
    v9 = type metadata accessor for OnDeviceAttributionObjCBridge();
    v10 = objc_allocWithZone(v9);
    v11 = sub_1001F54B4(v21, v7);
    __chkstk_darwin(v11);
    v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v20[3] = v7;
    v20[4] = &off_10047AED0;
    v20[0] = v15;
    sub_100003554(v20, v10 + OBJC_IVAR___APOnDeviceAttributionObjCBridge_coordinatorProvider);
    v19.receiver = v10;
    v19.super_class = v9;

    v16 = objc_msgSendSuper2(&v19, "init");
    sub_100003894(v20);
    sub_100003894(v21);
    v17 = v3[6];
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v3[6] = 0;
  }

  v3[2] = v16;
  type metadata accessor for OdcaMessageQueue();
  swift_allocObject();

  swift_unknownObjectRetain();
  v3[5] = sub_100277510(v6, a2, v17);
  if (qword_1004D6140 != -1)
  {
    swift_once();
  }

  if (qword_1004D6138 != -1)
  {
    swift_once();
  }

  swift_weakAssign();
  return v3;
}

_UNKNOWN **sub_10025DEC0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = objc_opt_self();
    sub_100004218(0, &qword_1004D7E48, APOnDeviceConversionConfig_ptr);
    v3 = [v2 configurationForClass:swift_getObjCClassFromMetadata()];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (v5 = [v4 reengagementSources]) != 0)
    {
      v6 = v5;
      v1 = sub_100399198();
    }

    else
    {
      v1 = &off_100479E60;
    }

    swift_unknownObjectRelease();
    *(v0 + 16) = v1;
  }

  return v1;
}

_UNKNOWN **sub_10025DFC4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_10025F1EC();
    *(v0 + 24) = v1;
  }

  return v1;
}

char *sub_10025E020()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_10025F2F0();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_10025E07C()
{
  v0 = sub_10025DFC4();
  v1 = sub_1003988F8();
  v2 = sub_100398938();
  v3 = sub_100398928();
  v4 = sub_100398948();
  v5 = (v0 + 4);
  v6 = v0[2] + 1;
  while (--v6)
  {
    v7 = v5 + 8;
    v8 = *v5;
    v5 += 8;
    if (v8 == v1)
    {
      v10 = *(v7 - 3);
      v9 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *(v10 + 16);
      v13 = (v10 + 32);
      while (v12)
      {
        v14 = *v13++;
        --v12;
        if (v14 == v2)
        {
          v15 = *(v9 + 16);
          v16 = (v9 + 32);
          while (v15)
          {
            v17 = *v16++;
            --v15;
            if (v17 == v3)
            {
              v18 = *(v11 + 16);
              v19 = (v11 + 32);
              while (v18)
              {
                v20 = *v19++;
                --v18;
                if (v20 == v4)
                {

                  return 1;
                }
              }

              goto LABEL_14;
            }
          }

          goto LABEL_14;
        }
      }

      break;
    }
  }

LABEL_14:

  return 0;
}

uint64_t sub_10025E178()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10025E1F4()
{
  v1 = *v0;
  sub_100399B58();
  sub_100399B78(v1 + 1);
  return sub_100399B88();
}

Swift::Int sub_10025E26C(uint64_t a1)
{
  v2 = *v1;
  sub_100399B58();
  sub_100399B78(v2 + 1);
  return sub_100399B88();
}

uint64_t sub_10025E2B0@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10025F540(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10025E2EC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1003986D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100398968();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) != enum case for ConversionSignal.appStoreInstallationSignal(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  (*(v9 + 32))(v11, v7, v8);
  v12 = sub_100398918();
  if ((v12 & 0x100000000) == 0)
  {
    v13 = v12;
    sub_1001E27A8(&unk_1004DB000, &qword_1003EE2A0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656D6F6374754FLL;
    *(inited + 16) = xmmword_1003EB210;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInt:a1 + 1];
    *(inited + 56) = 0x79546C616E676953;
    *(inited + 64) = 0xEA00000000006570;
    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInt:v13];
    v15 = sub_10025F0F0(inited, &qword_1004DAFF0, &qword_1003EE2B8);
    swift_setDeallocating();
    sub_1001E27A8(&unk_1004D7E60, &qword_1003EE2A8);
    swift_arrayDestroy();
    v16 = objc_opt_self();
    v17 = sub_100398F28();
    sub_10025EB3C(v15);

    sub_100004218(0, &qword_1004D5DC0, NSObject_ptr);
    isa = sub_100398E48().super.isa;

    [v16 sendEvent:v17 customPayload:isa];
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10025E688()
{
  v1 = v0;
  v2 = sub_100398968();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003986D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for ConversionSignal.appStoreInstallationSignal(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = sub_100398918();
    (*(v3 + 8))(v5, v2);
    if ((v11 & 0x100000000) != 0)
    {
      return 404;
    }

    v12 = v11 - 1;
    if (v12 > 3)
    {
      return 404;
    }

    else
    {
      return qword_1003EE390[v12];
    }
  }

  else
  {
    v14 = v10;
    v15 = enum case for ConversionSignal.standaloneAppOpenSignal(_:);
    (*(v7 + 8))(v9, v6);
    if (v14 == v15)
    {
      return 3;
    }

    else
    {
      return 404;
    }
  }
}

unint64_t sub_10025E8D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001E27A8(&unk_1004D5DE0, &unk_1003EC4C0);
    v2 = sub_100399828();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_100004218(0, &qword_1004D5DC0, NSObject_ptr);

        v19 = v18;
        swift_dynamicCast();
        sub_10021243C(&v25, v27);
        sub_10021243C(v27, v28);
        sub_10021243C(v28, &v26);
        result = sub_1001EC1DC(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100003894(v11);
          result = sub_10021243C(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_10021243C(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10025EB3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001E27A8(&unk_1004D7E70, &qword_1003EE2B0);
    v2 = sub_100399828();
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

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1001EC1DC(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10025ED1C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_10025EDC8(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004D7EA0, &unk_1003EE2C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001E27A8(&qword_1004D68F8, &qword_1003EC4B0);
    v7 = sub_100399828();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000ADB4(v9, v5, &unk_1004D7EA0, &unk_1003EE2C0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1001EC1DC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_100397748();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10025EFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&unk_1004D7E80, &qword_1003EB570);
    v3 = sub_100399828();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000ADB4(v4, v13, &unk_1004D7E90, &qword_1003ED8C8);
      result = sub_10023DBC4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10021243C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10025F0F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1001E27A8(a2, a3);
    v5 = sub_100399828();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1001EC1DC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

_UNKNOWN **sub_10025F1EC()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D7E48, APOnDeviceConversionConfig_ptr);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && (v3 = [v2 installSignals]) != 0)
  {
    v4 = v3;
    sub_1001E27A8(&unk_1004D6930, &unk_1003EC4F0);
    v5 = sub_100399198();

    sub_1002819A4(v5);
    v7 = v6;
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    swift_unknownObjectRelease();
    return &off_100479DE0;
  }
}

char *sub_10025F2F0()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D7E48, APOnDeviceConversionConfig_ptr);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 incorporateJourneyMetrics]) == 0)
  {
    swift_unknownObjectRelease();
    sub_1001E27A8(&qword_1004D41E0, &qword_1003EB460);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1003EB210;
    *(v9 + 2) = xmmword_1003ED150;
    return v9;
  }

  v4 = v3;
  sub_100004218(0, &qword_1004D43F0, NSNumber_ptr);
  v5 = sub_100399198();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v6 = sub_1003997F8();
  if (!v6)
  {
LABEL_16:
    swift_unknownObjectRelease();

    return _swiftEmptyArrayStorage;
  }

LABEL_5:
  result = sub_100211EA4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_100399708();
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 integerValue];

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100211EA4((v13 > 1), v14 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v12;
    }

    while (v6 != v8);

    swift_unknownObjectRelease();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10025F540(int a1)
{
  if ((a1 - 1) >= 0xC)
  {
    return 12;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t sub_10025F554(uint64_t a1)
{
  v2 = sub_100398898();
  v54 = *(v2 - 1);
  v55 = v2;
  v3 = __chkstk_darwin(v2);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v49 - v5;
  v7 = sub_100398968();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = sub_1003986D8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v50 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v49 - v18;
  v51 = sub_1001E27A8(&qword_1004D6878, &unk_1003EE290);
  v53 = a1;
  sub_100397B18();
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == enum case for ConversionSignal.appStoreInstallationSignal(_:))
  {
    (*(v15 + 96))(v19, v14);
    (*(v8 + 32))(v13, v19, v7);
    if (sub_10025E07C())
    {
      (*(v8 + 8))(v13, v7);
      return 1;
    }

    v27 = sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v28 = sub_1003995A8();
    (*(v8 + 16))(v11, v13, v7);
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v54 = v29;
      v55 = swift_slowAlloc();
      v56[0] = v55;
      *v29 = 136315138;
      v49 = sub_100398908();
      v31 = v30;
      v32 = *(v8 + 8);
      LODWORD(v52) = v27;
      v32(v11, v7);
      v33 = sub_100005700(v49, v31, v56);

      v34 = v54;
      *(v54 + 1) = v33;
      _os_log_impl(&_mh_execute_header, v28, v52, "Ignore %s", v34, 0xCu);
      sub_100003894(v55);
    }

    else
    {

      v32 = *(v8 + 8);
      v32(v11, v7);
    }

    v46 = v50;
    sub_100397B18();
    sub_10025E2EC(2u);
    (*(v15 + 8))(v46, v14);
    v32(v13, v7);
  }

  else
  {
    if (v20 != enum case for ConversionSignal.standaloneAppOpenSignal(_:))
    {
      result = sub_1003997E8();
      __break(1u);
      return result;
    }

    (*(v15 + 96))(v19, v14);
    v22 = v54;
    v21 = v55;
    (*(v54 + 4))(v6, v19, v55);
    v23 = sub_10025DEC0();
    v56[0] = sub_100398878();
    v56[1] = v24;
    __chkstk_darwin(v56[0]);
    v48 = v56;
    v25 = sub_10025ED1C(sub_100260A34, (&v49 - 4), v23);

    if (v25)
    {
      (*(v22 + 1))(v6, v21);
      return 1;
    }

    v35 = sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v36 = sub_1003995A8();
    v37 = v52;
    (*(v22 + 2))(v52, v6, v21);
    if (os_log_type_enabled(v36, v35))
    {
      v38 = swift_slowAlloc();
      LODWORD(v53) = v35;
      v39 = v38;
      v40 = swift_slowAlloc();
      v56[0] = v40;
      *v39 = 136315138;
      v41 = sub_100398868();
      v43 = v42;
      v44 = *(v22 + 1);
      v44(v37, v21);
      v45 = sub_100005700(v41, v43, v56);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v53, "Ignore %s", v39, 0xCu);
      sub_100003894(v40);

      v44(v6, v21);
    }

    else
    {

      v47 = *(v22 + 1);
      v47(v37, v21);
      v47(v6, v21);
    }
  }

  return 0;
}

uint64_t sub_10025FD00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v87 = a5;
  v102 = a4;
  v99 = a2;
  v100 = a3;
  v6 = type metadata accessor for SignpostInterval(0);
  v96 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v97 = v8;
  v98 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v84 - v9;
  v92 = sub_100398BD8();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100398C18();
  v93 = *(v11 - 8);
  v94 = v11;
  __chkstk_darwin(v11);
  v101 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001E27A8(&qword_1004D7E40, &qword_1003EE288);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v84 - v17;
  v88 = type metadata accessor for ConversionSignposts(0);
  v18 = __chkstk_darwin(v88);
  v95 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v103 = &v84 - v20;
  v105 = sub_1003986D8();
  v21 = *(v105 - 8);
  v22 = __chkstk_darwin(v105);
  v85 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v84 - v24;
  v26 = sub_1001E27A8(&qword_1004D6878, &unk_1003EE290);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v84 - v28;
  v30 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v31 = sub_1003995A8();
  (*(v27 + 16))(v29, a1, v26);
  v32 = os_log_type_enabled(v31, v30);
  v106 = a1;
  v107 = v26;
  v89 = v16;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v108[0] = v34;
    *v33 = 136446210;
    sub_100397B18();
    v35 = sub_1003986A8();
    v37 = v36;
    (*(v21 + 8))(v25, v105);
    (*(v27 + 8))(v29, v107);
    v38 = sub_100005700(v35, v37, v108);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v30, "Delivered conversion signal %{public}s", v33, 0xCu);
    sub_100003894(v34);
  }

  else
  {

    (*(v27 + 8))(v29, v26);
  }

  v39 = v102;

  sub_100397B18();
  v40 = sub_100398678();
  v42 = v41;
  v43 = *(v21 + 8);
  v86 = v25;
  v44 = v105;
  v43(v25, v105);
  v45 = sub_10025E020();
  v46 = type metadata accessor for DatabaseActionStoreDataProvider();
  v47 = swift_allocObject();
  v47[2] = v39;
  v47[3] = v40;
  v47[4] = v42;
  v47[5] = v45;
  v48 = v85;
  sub_100397B18();
  v49 = sub_100398688();
  LOBYTE(v45) = v50;
  v102 = v43;
  v43(v48, v44);
  v51 = (v21 + 8);
  v52 = v101;
  if (v45)
  {
    v87 = mach_continuous_time();
  }

  else
  {
    v87 = v49;
  }

  v53 = v92;
  v54 = v90;
  v55 = v91;
  (*(v91 + 56))(v90, 1, 1, v92);
  v56 = APPerfLogForCategory();
  sub_100398BF8();
  v57 = v89;
  sub_10000ADB4(v54, v89, &qword_1004D7E40, &qword_1003EE288);
  v58 = (*(v55 + 48))(v57, 1, v53);
  v59 = v86;
  if (v58 == 1)
  {
    sub_1002607FC(v57);
    sub_100398C08();
    v60 = v103;
    v44 = v105;
    sub_100398BA8();
    sub_1002607FC(v54);
  }

  else
  {
    sub_1002607FC(v54);
    v61 = *(v55 + 32);
    v62 = v84;
    v61(v84, v57, v53);
    v63 = v53;
    v60 = v103;
    v61((v103 + *(v88 + 20)), v62, v63);
    v52 = v101;
  }

  (*(v93 + 32))(v60, v52, v94);
  sub_100397B18();
  v64 = sub_10025E688();
  v101 = v51;
  v102(v59, v44);
  sub_1002395D8(v64, v87, v104);
  v65 = objc_opt_self();
  sub_100004218(0, &qword_1004D7E48, APOnDeviceConversionConfig_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v67 = [v65 configurationForClass:ObjCClassFromMetadata];
  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  if (!v68)
  {
    swift_unknownObjectRelease();
  }

  v69 = v95;
  sub_100260864(v60, v95, type metadata accessor for ConversionSignposts);
  v108[3] = v46;
  v108[4] = &off_10047C340;
  v108[0] = v47;
  type metadata accessor for ConversionProcessor(0);
  v70 = swift_allocObject();
  v71 = sub_1001F54B4(v108, v46);
  __chkstk_darwin(v71);
  v73 = (&v84 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = *v73;
  v70[5] = v46;
  v70[6] = &off_10047C340;
  v70[2] = v75;
  v70[7] = v68;
  sub_1002608CC(v69, v70 + OBJC_IVAR____TtC11Attribution19ConversionProcessor_conversionSignposts, type metadata accessor for ConversionSignposts);
  sub_100003894(v108);
  sub_100397B18();
  v76 = v104;
  v77 = v98;
  sub_100260864(v104, v98, type metadata accessor for SignpostInterval);
  v78 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v79 = (v97 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  sub_1002608CC(v77, v80 + v78, type metadata accessor for SignpostInterval);
  v81 = (v80 + v79);
  v82 = v100;
  *v81 = v99;
  v81[1] = v82;

  sub_100271D68(v59, sub_100260934, v80);

  v102(v59, v105);
  sub_1002609D4(v76, type metadata accessor for SignpostInterval);
  return sub_1002609D4(v103, type metadata accessor for ConversionSignposts);
}

uint64_t sub_1002607FC(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D7E40, &qword_1003EE288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100260864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002608CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100260934()
{
  v1 = *(type metadata accessor for SignpostInterval(0) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = sub_10027C30C();
  return v2(v3);
}

uint64_t sub_1002609D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100260A34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1003999B8() & 1;
  }
}

uint64_t getEnumTagSinglePayload for ConversionMetricResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversionMetricResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100260BE0()
{
  result = qword_1004D7EB0;
  if (!qword_1004D7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7EB0);
  }

  return result;
}

uint64_t sub_100260C34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v5 = sub_100398B58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v70 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001E27A8(&qword_1004D8640, &qword_1003ED200);
  v9 = __chkstk_darwin(v8 - 8);
  v65 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v71 = v62 - v12;
  __chkstk_darwin(v11);
  v14 = (v62 - v13);
  v78 = *(a2 + 16);
  if (!v78)
  {

    v57 = _swiftEmptyDictionarySingleton;
    if (_swiftEmptyDictionarySingleton[2])
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  v75 = 0;
  v76 = 0;
  v15 = 0;
  v16 = 0;
  v66 = (v6 + 32);
  v67 = (v6 + 48);
  v62[1] = v6 + 40;
  v63 = v62 - v13;
  v69 = v6;
  v64 = (v6 + 56);
  v17 = 0;
  v18 = (a2 + 40);
  v73 = v5;
  v74 = _swiftEmptyDictionarySingleton;
  do
  {
    if (v16 >= *(a2 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      result = sub_100399A98();
      __break(1u);
      return result;
    }

    v19 = *(v18 - 1);
    v20 = *v18;
    v21 = v19 == 0x6973736572706D69 && v20 == 0xEC00000064496E6FLL;
    if (v21 || (sub_1003999B8() & 1) != 0)
    {

      sub_1000035B8(a1, a1[3]);
      v17 = sub_100397B98();
      v15 = v22;
      goto LABEL_15;
    }

    v77 = v17;
    if (v19 == 0x61646174654D6461 && v20 == 0xEA00000000006174 || (sub_1003999B8() & 1) != 0)
    {

      sub_1000035B8(a1, a1[3]);
      v75 = sub_100397B98();
      v76 = v23;
LABEL_14:
      v17 = v77;
      goto LABEL_15;
    }

    v72 = v15;
    v24 = a1[3];
    v25 = a1[4];
    sub_1000035B8(a1, v24);

    v26 = v71;
    v5 = v73;
    sub_10024E888(v16, v24, v25);
    v27 = v26;
    if ((*v67)(v26, 1, v5) == 1)
    {
      sub_10026132C(v26);
      v28 = v74;
      v29 = sub_1001EC1DC(v19, v20);
      v31 = v30;

      if (v31)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v28;
        v33 = v28;
        v15 = v72;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10023CBD0();
          v33 = v79;
        }

        v34 = v65;
        (*(v69 + 32))(v65, *(v33 + 56) + *(v69 + 72) * v29, v5);
        v74 = v33;
        sub_10023C264(v29, v33);
        v35 = 0;
      }

      else
      {
        v35 = 1;
        v34 = v65;
        v15 = v72;
      }

      (*v64)(v34, v35, 1, v5);
      sub_10026132C(v34);
      goto LABEL_14;
    }

    v36 = *v66;
    (*v66)(v70, v27, v5);
    v37 = v74;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v37;
    v40 = sub_1001EC1DC(v19, v20);
    v41 = v37[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_43;
    }

    v62[0] = v36;
    if (v37[3] < v43)
    {
      v44 = v39;
      sub_10023B554(v43, v38);
      v45 = sub_1001EC1DC(v19, v20);
      v47 = v46 & 1;
      v39 = v44;
      v48 = v44 & 1;
      v15 = v72;
      if (v48 != v47)
      {
        goto LABEL_45;
      }

      v40 = v45;
      goto LABEL_27;
    }

    v17 = v77;
    v15 = v72;
    if ((v38 & 1) == 0)
    {
      v56 = v39;
      sub_10023CBD0();
      v39 = v56;
LABEL_27:
      v17 = v77;
    }

    if (v39)
    {

      v74 = v79;
      v49 = v79[7] + *(v69 + 72) * v40;
      v5 = v73;
      (*(v69 + 40))(v49, v70, v73);
    }

    else
    {
      v50 = v79;
      v79[(v40 >> 6) + 8] |= 1 << v40;
      v51 = (v50[6] + 16 * v40);
      *v51 = v19;
      v51[1] = v20;
      v52 = v50[7] + *(v69 + 72) * v40;
      v5 = v73;
      (v62[0])(v52, v70, v73);
      v53 = v50[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_44;
      }

      v74 = v50;
      v50[2] = v55;
    }

LABEL_15:
    if (v16 == 0x7FFFFFFF)
    {
      goto LABEL_42;
    }

    ++v16;
    v18 += 2;
  }

  while (v78 != v16);

  v6 = v69;
  v14 = v63;
  v57 = v74;
  if (!v74[2])
  {
LABEL_39:

    v58 = 1;
    goto LABEL_40;
  }

LABEL_37:
  *v14 = v57;
  (*(v6 + 104))(v14, enum case for APJSValue.dictionary(_:), v5);
  v58 = 0;
LABEL_40:
  (*(v6 + 56))(v14, v58, 1, v5);
  v59 = v68;
  sub_100398798();
  v60 = sub_1003987C8();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  return sub_100003894(a1);
}

uint64_t sub_10026132C(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D8640, &qword_1003ED200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1003981B8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002614B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100261500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100261554(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10026156C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10026159C()
{
  if (*v0)
  {
    return 0x69746375646F7270;
  }

  else
  {
    return 0x6D706F6C65766564;
  }
}

void sub_1002615E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65;
  if (v6 || (sub_1003999B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1003999B8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1002616CC(uint64_t a1)
{
  v2 = sub_100263354();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100261708(uint64_t a1)
{
  v2 = sub_100263354();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100261744(uint64_t a1)
{
  v2 = sub_100263450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100261780(uint64_t a1)
{
  v2 = sub_100263450();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002617D0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7465737361 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1003999B8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_100261854(uint64_t a1)
{
  v2 = sub_1002633A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100261890(uint64_t a1)
{
  v2 = sub_1002633A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002618CC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1003999B8();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_100261910(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v19 = a2;
  v4 = sub_1001E27A8(&qword_1004D8020, &qword_1003EE618);
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_1001E27A8(&qword_1004D8028, &qword_1003EE620);
  v17 = *(v7 - 8);
  v18 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_1001E27A8(&qword_1004D8030, &qword_1003EE628);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_1000035B8(a1, a1[3]);
  sub_100263354();
  v14 = v21;
  sub_100399BF8();
  if (v14)
  {
    LOBYTE(v22) = 1;
    sub_1002633A8();
    sub_100399908();
    v22 = v19;
    v23 = v14;
    sub_1002634A4();
    sub_100399978();
    (*(v20 + 8))(v6, v4);
  }

  else
  {
    LOBYTE(v22) = 0;
    sub_100263450();
    sub_100399908();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100261C1C(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D8060, &qword_1003EE638);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_1002634F8();
  sub_100399BF8();
  v11 = *v3;
  v10[15] = 0;
  sub_1002635E8();
  sub_100399978();
  if (!v2)
  {
    type metadata accessor for AppSpecifier(0);
    LOBYTE(v11) = 1;
    sub_1003981B8();
    sub_1002635A0(&qword_1004D8070, &type metadata accessor for BundleID, &protocol conformance descriptor for BundleID);
    sub_100399978();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100261DEC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_1003981B8();
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1001E27A8(&qword_1004D8040, &qword_1003EE630);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v18 - v6;
  v8 = type metadata accessor for AppSpecifier(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_1002634F8();
  sub_100399BC8();
  if (v2)
  {
    sub_100003894(a1);
  }

  else
  {
    v19 = v8;
    v20 = v5;
    v11 = v10;
    v13 = v23;
    v12 = v24;
    v28 = 0;
    sub_10026354C();
    v14 = v25;
    sub_1003998D8();
    v15 = v27;
    v16 = v11;
    *v11 = v26;
    v11[1] = v15;
    v18 = v15;
    LOBYTE(v26) = 1;
    sub_1002635A0(&qword_1004D8058, &type metadata accessor for BundleID, &protocol conformance descriptor for BundleID);
    v17 = v20;
    sub_1003998D8();
    (*(v13 + 8))(v7, v14);
    (*(v21 + 32))(v16 + *(v19 + 20), v17, v12);
    sub_100263690(v16, v22, type metadata accessor for AppSpecifier);
    sub_100003894(a1);
    sub_1002636F8(v16, type metadata accessor for AppSpecifier);
  }
}

uint64_t sub_10026213C(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D8088, &qword_1003EE648);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_10026363C();
  sub_100399BF8();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1002634A4();
  sub_100399978();
  if (!v2)
  {
    type metadata accessor for ProductionAppSpecifier(0);
    LOBYTE(v12) = 1;
    sub_1003981B8();
    sub_1002635A0(&qword_1004D8070, &type metadata accessor for BundleID, &protocol conformance descriptor for BundleID);
    sub_100399978();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10026230C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_1003981B8();
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1001E27A8(&qword_1004D8078, &qword_1003EE640);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ProductionAppSpecifier(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_10026363C();
  sub_100399BC8();
  if (v2)
  {
    sub_100003894(a1);
  }

  else
  {
    v19 = v8;
    v20 = v5;
    v11 = v10;
    v13 = v23;
    v12 = v24;
    v28 = 0;
    sub_1002633FC();
    v14 = v25;
    sub_1003998D8();
    v15 = v27;
    v16 = v11;
    *v11 = v26;
    v11[1] = v15;
    v18 = v15;
    LOBYTE(v26) = 1;
    sub_1002635A0(&qword_1004D8058, &type metadata accessor for BundleID, &protocol conformance descriptor for BundleID);
    v17 = v20;
    sub_1003998D8();
    (*(v13 + 8))(v7, v14);
    (*(v21 + 32))(v16 + *(v19 + 20), v17, v12);
    sub_100263690(v16, v22, type metadata accessor for ProductionAppSpecifier);
    sub_100003894(a1);
    sub_1002636F8(v16, type metadata accessor for ProductionAppSpecifier);
  }
}

uint64_t sub_10026265C()
{
  if (*v0)
  {
    return 0x656C646E7562;
  }

  else
  {
    return 0x6962616C69617661;
  }
}

void sub_10026269C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL;
  if (v6 || (sub_1003999B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1003999B8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100262778(uint64_t a1)
{
  v2 = sub_1002634F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002627B4(uint64_t a1)
{
  v2 = sub_1002634F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002627F0(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      v6 = *a1 == *a2 && v4 == v5;
      if (v6 || (sub_1003999B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_100398188();
}

void *sub_100262894@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100262E98(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10026290C()
{
  if (*v0)
  {
    return 0x656C646E7562;
  }

  else
  {
    return 0x7465737361;
  }
}

void sub_100262940(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v6 || (sub_1003999B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1003999B8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100262A14(uint64_t a1)
{
  v2 = sub_10026363C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100262A50(uint64_t a1)
{
  v2 = sub_10026363C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100262A8C()
{
  sub_100399B58();
  sub_100399018();
  sub_1003981B8();
  sub_1002635A0(&qword_1004D8090, &type metadata accessor for BundleID, &protocol conformance descriptor for BundleID);
  sub_100398EC8();
  return sub_100399B88();
}

uint64_t sub_100262B34(uint64_t a1)
{
  sub_100399018();
  sub_1003981B8();
  sub_1002635A0(&qword_1004D8090, &type metadata accessor for BundleID, &protocol conformance descriptor for BundleID);
  return sub_100398EC8();
}

Swift::Int sub_100262BC0(uint64_t a1)
{
  sub_100399B58();
  sub_100399018();
  sub_1003981B8();
  sub_1002635A0(&qword_1004D8090, &type metadata accessor for BundleID, &protocol conformance descriptor for BundleID);
  sub_100398EC8();
  return sub_100399B88();
}

uint64_t sub_100262C64(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1003999B8() & 1) == 0)
  {
    return 0;
  }

  return sub_100398188();
}

uint64_t sub_100262D60(uint64_t a1)
{
  v2._countAndFlagsBits = 40;
  v2._object = 0xE100000000000000;
  sub_100399068(v2);
  sub_1003997C8();
  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  sub_100399068(v3);
  sub_1003981B8();
  sub_1003997C8();
  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  sub_100399068(v4);
  return 0;
}

uint64_t sub_100262E30()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100262E64()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100262E98(void *a1)
{
  v25 = sub_1001E27A8(&qword_1004D7FE8, &qword_1003EE5F8);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v25 - v2;
  v4 = sub_1001E27A8(&qword_1004D7FF0, &qword_1003EE600);
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_1001E27A8(&qword_1004D7FF8, &qword_1003EE608);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = a1[3];
  v30 = a1;
  v12 = sub_1000035B8(a1, v11);
  sub_100263354();
  v13 = v28;
  sub_100399BC8();
  if (!v13)
  {
    v28 = v8;
    v14 = sub_1003998F8();
    v15 = v7;
    if (*(v14 + 16) == 1)
    {
      if (*(v14 + 32))
      {
        LOBYTE(v29) = 1;
        sub_1002633A8();
        v16 = v3;
        sub_100399858();
        v17 = v28;
        sub_1002633FC();
        v24 = v25;
        sub_1003998D8();
        (*(v27 + 8))(v16, v24);
        (*(v17 + 8))(v10, v15);
        swift_unknownObjectRelease();
        v12 = v29;
      }

      else
      {
        LOBYTE(v29) = 0;
        sub_100263450();
        v21 = v10;
        sub_100399858();
        v22 = v28;
        (*(v26 + 8))(v6, v4);
        (*(v22 + 8))(v21, v7);
        swift_unknownObjectRelease();
        v12 = 0;
      }
    }

    else
    {
      v18 = sub_100399738();
      swift_allocError();
      v20 = v19;
      sub_1001E27A8(&qword_1004D63C0, &qword_1003EE610);
      *v20 = &type metadata for AppSpecifier.Availability;
      v12 = v10;
      sub_100399868();
      sub_100399728();
      (*(*(v18 - 8) + 104))(v20, enum case for DecodingError.typeMismatch(_:), v18);
      swift_willThrow();
      (*(v28 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }
  }

  sub_100003894(v30);
  return v12;
}

unint64_t sub_100263354()
{
  result = qword_1004D8000;
  if (!qword_1004D8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8000);
  }

  return result;
}

unint64_t sub_1002633A8()
{
  result = qword_1004D8008;
  if (!qword_1004D8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8008);
  }

  return result;
}

unint64_t sub_1002633FC()
{
  result = qword_1004D8010;
  if (!qword_1004D8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8010);
  }

  return result;
}

unint64_t sub_100263450()
{
  result = qword_1004D8018;
  if (!qword_1004D8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8018);
  }

  return result;
}

unint64_t sub_1002634A4()
{
  result = qword_1004D8038;
  if (!qword_1004D8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8038);
  }

  return result;
}

unint64_t sub_1002634F8()
{
  result = qword_1004D8048;
  if (!qword_1004D8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8048);
  }

  return result;
}

unint64_t sub_10026354C()
{
  result = qword_1004D8050;
  if (!qword_1004D8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8050);
  }

  return result;
}

uint64_t sub_1002635A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002635E8()
{
  result = qword_1004D8068;
  if (!qword_1004D8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8068);
  }

  return result;
}

unint64_t sub_10026363C()
{
  result = qword_1004D8080;
  if (!qword_1004D8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8080);
  }

  return result;
}

uint64_t sub_100263690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002636F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002637AC()
{
  result = qword_1004D8098;
  if (!qword_1004D8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8098);
  }

  return result;
}

unint64_t sub_100263804()
{
  result = qword_1004D80A0;
  if (!qword_1004D80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80A0);
  }

  return result;
}

unint64_t sub_10026385C()
{
  result = qword_1004D80A8;
  if (!qword_1004D80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80A8);
  }

  return result;
}

unint64_t sub_1002638B4()
{
  result = qword_1004D80B0;
  if (!qword_1004D80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80B0);
  }

  return result;
}

unint64_t sub_10026390C()
{
  result = qword_1004D80B8;
  if (!qword_1004D80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80B8);
  }

  return result;
}

unint64_t sub_100263964()
{
  result = qword_1004D80C0;
  if (!qword_1004D80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80C0);
  }

  return result;
}

unint64_t sub_1002639BC()
{
  result = qword_1004D80C8;
  if (!qword_1004D80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80C8);
  }

  return result;
}

unint64_t sub_100263A14()
{
  result = qword_1004D80D0;
  if (!qword_1004D80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80D0);
  }

  return result;
}

unint64_t sub_100263A6C()
{
  result = qword_1004D80D8;
  if (!qword_1004D80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80D8);
  }

  return result;
}

unint64_t sub_100263AC4()
{
  result = qword_1004D80E0;
  if (!qword_1004D80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80E0);
  }

  return result;
}

unint64_t sub_100263B1C()
{
  result = qword_1004D80E8;
  if (!qword_1004D80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80E8);
  }

  return result;
}

unint64_t sub_100263B74()
{
  result = qword_1004D80F0;
  if (!qword_1004D80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80F0);
  }

  return result;
}

unint64_t sub_100263BCC()
{
  result = qword_1004D80F8;
  if (!qword_1004D80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D80F8);
  }

  return result;
}

unint64_t sub_100263C24()
{
  result = qword_1004D8100;
  if (!qword_1004D8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8100);
  }

  return result;
}

uint64_t sub_100263C7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100263CC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100263DF8(uint64_t a1)
{
  sub_100397438(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() metadataForBundleContainerURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_1003974E8();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1003973E8();

    swift_willThrow();
    v10 = sub_1003974E8();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

id ItunesAppMetaData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ItunesAppMetaData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100264018(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100398F28();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1003973E8();

    swift_willThrow();
  }

  return v6;
}

char *sub_1002640F4(char *a1)
{
  v41 = a1;
  if ([objc_opt_self() isAppleInternalInstall] && (v1 = objc_msgSend(objc_opt_self(), "processInfo"), v2 = objc_msgSend(v1, "isRunningTests"), v1, (v2 & 1) == 0) && (v3 = objc_msgSend(objc_allocWithZone(NSUserDefaults), "initWithSuiteName:", APDefaultsBundleID)) != 0)
  {
    v4 = v3;
    v5 = sub_100398F28();
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      sub_100399648();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      v8 = swift_dynamicCast();
      if (v8)
      {
        v9 = v42;
      }

      else
      {
        v9 = 0;
      }

      v10 = v8 ^ 1;
    }

    else
    {
      sub_1001ED244(&v46, &qword_1004D5D40, &unk_1003C9610);
      v9 = 0;
      v10 = 1;
    }

    v11 = sub_100398F28();
    v12 = [v4 objectForKey:v11];

    if (v12)
    {
      sub_100399648();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = v42;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      sub_1001ED244(&v46, &qword_1004D5D40, &unk_1003C9610);
      v13 = 2;
    }

    v14 = sub_100398F28();
    v15 = [v4 objectForKey:v14];

    if (v15)
    {
      sub_100399648();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      if (swift_dynamicCast())
      {
        v16 = v42;
      }

      else
      {
        v16 = 2;
      }
    }

    else
    {
      sub_1001ED244(&v46, &qword_1004D5D40, &unk_1003C9610);
      v16 = 2;
    }

    if (v13 == 2)
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    if (v17 == 1 && v16 == 2)
    {
      v18 = v41;
    }

    else
    {
      v19 = v41[OBJC_IVAR___APItunesAppMetaData_installedByAppStore];
      v20 = v41[OBJC_IVAR___APItunesAppMetaData_testApp];
      if (v10)
      {
        v21 = *&v41[OBJC_IVAR___APItunesAppMetaData_adamId];
        v22 = v21;
      }

      else
      {
        v21 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
        v23 = sub_1003993F8();
        sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
        v24 = sub_1003995A8();
        if (os_log_type_enabled(v24, v23))
        {
          v25 = swift_slowAlloc();
          *v25 = 134349056;
          *(v25 + 4) = v9;
          _os_log_impl(&_mh_execute_header, v24, v23, "Overriding itunesMetaData adamId: %{public}ld", v25, 0xCu);
        }
      }

      if (v13 != 2)
      {
        v26 = sub_1003993F8();
        sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
        v27 = sub_1003995A8();
        sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1003C9930;
        v29 = sub_100206BA0();
        v30 = 0x65736C6166;
        if (v13)
        {
          v30 = 1702195828;
        }

        v31 = 0xE500000000000000;
        *(v28 + 56) = &type metadata for String;
        *(v28 + 64) = v29;
        if (v13)
        {
          v31 = 0xE400000000000000;
        }

        *(v28 + 32) = v30;
        *(v28 + 40) = v31;
        sub_100398B98(v26, &_mh_execute_header, v27, "Overriding itunesMetaData testapp: %{public}@", 45, 2, v28, v41);

        v20 = v13;
      }

      if (v16 != 2)
      {
        v32 = sub_1003993F8();
        sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
        v33 = sub_1003995A8();
        sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1003C9930;
        v35 = sub_100206BA0();
        v36 = 0x65736C6166;
        if (v16)
        {
          v36 = 1702195828;
        }

        v37 = 0xE500000000000000;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = v35;
        if (v16)
        {
          v37 = 0xE400000000000000;
        }

        *(v34 + 32) = v36;
        *(v34 + 40) = v37;
        sub_100398B98(v32, &_mh_execute_header, v33, "Overriding itunesMetaData installedByAppStore: %{public}@", 57, 2, v34, v41);

        v19 = v16;
      }

      v38 = type metadata accessor for ItunesAppMetaData();
      v39 = objc_allocWithZone(v38);
      *&v39[OBJC_IVAR___APItunesAppMetaData_adamId] = v21;
      v39[OBJC_IVAR___APItunesAppMetaData_installedByAppStore] = v19 & 1;
      v39[OBJC_IVAR___APItunesAppMetaData_testApp] = v20 & 1;
      v43.receiver = v39;
      v43.super_class = v38;
      v40 = v21;
      v18 = objc_msgSendSuper2(&v43, "init");
    }

    return v18;
  }

  else
  {

    return v41;
  }
}

NSObject *sub_100264804(void *a1)
{
  v3 = sub_1003974E8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = [a1 bundleContainerURL];
  if (v10)
  {
    v11 = v10;
    sub_100397478();

    sub_100004218(0, &qword_1004D8150, MIStoreMetadata_ptr);
    (*(v4 + 16))(v7, v9, v3);
    v12 = sub_100263DF8(v7);
    if (v1)
    {
      v13 = sub_1003993E8();
      sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
      v14 = sub_1003995A8();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543362;
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&_mh_execute_header, v14, v13, "Failed to load Store Metadata. %{public}@", v15, 0xCu);
        sub_1001ED244(v16, &qword_1004D8610, &qword_1003C9240);
      }

      swift_willThrow();
      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v19 = v12;
      v14 = [v12 itemID];

      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    v18 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v14 = sub_1003995A8();
    sub_100398B98(v18, &_mh_execute_header, v14, "bundleContainerURL is nil", 25, 2, _swiftEmptyArrayStorage);

    sub_100264E28();
    swift_allocError();
    swift_willThrow();
  }

  return v14;
}

char *sub_100264B8C(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(LSApplicationRecord);

  v5 = sub_100264018(a1, a2, 0);
  if (!v2)
  {
    v10 = v5;
    v11 = [v5 iTunesMetadata];
    v12 = [v11 distributorInfo];

    v13 = [v12 distributorID];
    if (!v13)
    {
      v20 = 0;
      v21 = 0;
      v18 = 1;
LABEL_19:
      v24 = type metadata accessor for ItunesAppMetaData();
      v25 = objc_allocWithZone(v24);
      *&v25[OBJC_IVAR___APItunesAppMetaData_adamId] = v21;
      v25[OBJC_IVAR___APItunesAppMetaData_installedByAppStore] = v20;
      v25[OBJC_IVAR___APItunesAppMetaData_testApp] = v18 & 1;
      v28.receiver = v25;
      v28.super_class = v24;
      v26 = objc_msgSendSuper2(&v28, "init");
      v9 = sub_1002640F4(v26);

      return v9;
    }

    v14 = sub_100398F58();
    v16 = v15;

    if (v14 == 0xD000000000000014 && 0x800000010042F900 == v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1003999B8();
      if (v14 == 0xD000000000000012 && 0x800000010042DFD0 == v16)
      {

LABEL_17:
        v21 = sub_100264804(v10);
        v23 = v21;
        v20 = 1;
        goto LABEL_19;
      }
    }

    v22 = sub_1003999B8();

    if ((v22 & 1) == 0)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v6 = type metadata accessor for ItunesAppMetaData();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___APItunesAppMetaData_adamId] = 0;
  v7[OBJC_IVAR___APItunesAppMetaData_installedByAppStore] = 0;
  v7[OBJC_IVAR___APItunesAppMetaData_testApp] = 1;
  v29.receiver = v7;
  v29.super_class = v6;
  v8 = objc_msgSendSuper2(&v29, "init");
  v9 = sub_1002640F4(v8);

  return v9;
}

unint64_t sub_100264E28()
{
  result = qword_1004D8148;
  if (!qword_1004D8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8148);
  }

  return result;
}

unint64_t sub_100264E90()
{
  result = qword_1004D8158;
  if (!qword_1004D8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8158);
  }

  return result;
}

double sub_100264F44(void *a1, uint64_t a2, uint64_t a3)
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    if (qword_1004D6138 != -1)
    {
      swift_once();
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + 32);

      sub_100206B54();
      sub_1003995A8();
      sub_100397D38();
      swift_allocObject();
      v7 = sub_100397D28();
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_100240180(v7);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      sub_1001E27A8(&unk_1004D5A30, &qword_1003EB2B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003EB210;
      *(inited + 32) = 0x726F7272457061;
      *(inited + 40) = 0xE700000000000000;
      v29 = a1;
      sub_1001E27A8(&qword_1004D8288, &qword_1003EED68);
      v13 = sub_1003995D8();
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v13;
      *(inited + 56) = v14;
      *(inited + 80) = sub_100398F58();
      *(inited + 88) = v15;
      sub_1001E27A8(&unk_1004DCD10, &unk_1003F3360);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1003C9930;
      *(v16 + 32) = v10;
      *(v16 + 40) = v11;
      *(inited + 120) = sub_1001E27A8(&unk_1004D9A20, &qword_1003EED70);
      *(inited + 96) = v16;

      v17 = sub_1002142A8(inited);
      swift_setDeallocating();
      sub_1001E27A8(&unk_1004D5DD0, &qword_1003EB1C0);
      swift_arrayDestroy();
      v18 = sub_1003993D8();
      sub_100206B54();
      v19 = sub_1003995A8();
      if (os_log_type_enabled(v19, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = 136315138;
        v22 = sub_100005700(v10, v11, &v29);

        *(v20 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v19, v18, "Captured debug data into %s", v20, 0xCu);
        sub_100003894(v21);
      }

      else
      {
      }
    }

    else
    {
      sub_1001E27A8(&unk_1004D5A30, &qword_1003EB2B0);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1003C9930;
      *(v23 + 32) = 0x726F7272457061;
      *(v23 + 40) = 0xE700000000000000;
      v29 = a1;
      sub_1001E27A8(&qword_1004D8288, &qword_1003EED68);
      v24 = sub_1003995D8();
      *(v23 + 72) = &type metadata for String;
      *(v23 + 48) = v24;
      *(v23 + 56) = v25;
      v17 = sub_1002142A8(v23);
      swift_setDeallocating();
      sub_100266884(v23 + 32);
    }

    v26 = sub_100398F28();
    sub_10021324C(v17);

    isa = sub_100398E48().super.isa;

    v28 = sub_100398F28();
    CreateDiagnosticReport();
  }

  return result;
}

uint64_t sub_1002653E0(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D8270, &unk_1003EED58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_1002666E4();
  sub_100399BF8();
  v11[15] = 0;
  type metadata accessor for SignedAttributionPayloadDTO(0);
  sub_1002667EC(&qword_1004D8278, &unk_1003EDB7C);
  sub_100399978();
  if (!v2)
  {
    v9 = type metadata accessor for AttributionDeliveryWorkerTask(0);
    v11[14] = 1;
    sub_100399988();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_100266830();
    sub_100399948();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002655CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for SignedAttributionPayloadDTO(0);
  __chkstk_darwin(v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001E27A8(&qword_1004D8250, &qword_1003EED50);
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AttributionDeliveryWorkerTask(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_1002666E4();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  v12 = v17;
  v13 = v11;
  v23 = 0;
  sub_1002667EC(&qword_1004D8260, &unk_1003EDBA4);
  v14 = v18;
  sub_1003998D8();
  sub_1002668EC(v19, v13, type metadata accessor for SignedAttributionPayloadDTO);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_1003998E8();
  v20 = 2;
  sub_100266738();
  sub_1003998A8();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v21;
  sub_100266A00(v13, v16, type metadata accessor for AttributionDeliveryWorkerTask);
  sub_100003894(a1);
  return sub_10026678C(v13, type metadata accessor for AttributionDeliveryWorkerTask);
}

uint64_t sub_100265924()
{
  v1 = 0x74736F706E676973;
  if (*v0 != 1)
  {
    v1 = 0x656D656761676E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_100265988@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100266A68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002659B0(uint64_t a1)
{
  v2 = sub_1002666E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002659EC(uint64_t a1)
{
  v2 = sub_1002666E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100265A74(uint64_t a1)
{
  v2 = sub_100397A48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WorkerError.failedToDeserializeTask(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = sub_1003993E8();
    sub_100206B54();
    v9 = sub_1003995A8();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v7;
      v24 = v11;
      *v10 = 136446210;
      sub_1001E27A8(&qword_1004D8288, &qword_1003EED68);
      v12 = sub_1003995D8();
      v14 = sub_100005700(v12, v13, &v24);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v9, v8, "Attribution Delivery: Failed to deserialize task. %{public}s", v10, 0xCu);
      sub_100003894(v11);
    }

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(7);
    sub_100264F44(v7, 0xD000000000000025, 0x800000010042FAC0);
  }

  else
  {
    v15 = v6;
    v16 = enum case for WorkerError.failedToSerializeTask(_:);
    v17 = sub_1003993E8();
    sub_100206B54();
    v18 = sub_1003995A8();
    if (v15 == v16)
    {
      sub_100398B98(v17, &_mh_execute_header, v18, "Failed to serialize task.", 25, 2, _swiftEmptyArrayStorage);

      v19 = sub_100398F28();
      v20 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(15);
    }

    else
    {
      sub_100398B98(v17, &_mh_execute_header, v18, "Unknown error.", 14, 2, _swiftEmptyArrayStorage);

      v21 = sub_100398F28();
      v22 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(21);
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_100265E60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v44 = a5;
  v42 = a4;
  v7 = type metadata accessor for AttributionDeliveryWorkerTask(0);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100397748();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1003993D8();
  sub_100206B54();
  v14 = sub_1003995A8();
  sub_100398B98(v13, &_mh_execute_header, v14, "Sending payload...", 18, 2, _swiftEmptyArrayStorage);

  v15 = [objc_opt_self() sharedAPNetworkClient];
  v45 = [v15 temporarySessionForDaemon];

  v16 = [objc_opt_self() apDefaultSharedFormatter];
  sub_100397738();
  isa = sub_100397688().super.isa;
  (*(v10 + 8))(v12, v9);
  v18 = [v16 stringFromDate:isa];

  if (!v18)
  {
    sub_100398F58();
    v18 = sub_100398F28();
  }

  v40 = v18;
  sub_100266A00(a1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttributionDeliveryWorkerTask);
  v19 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v20 = swift_allocObject();
  sub_1002668EC(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AttributionDeliveryWorkerTask);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v44;
  *v21 = v42;
  v21[1] = v22;
  v23 = swift_allocObject();
  v23[2] = v43;
  v23[3] = a3;
  v23[4] = sub_100266954;
  v23[5] = v20;
  type metadata accessor for SignedAttributionPayloadDTO(0);
  v24 = a1[1];
  v25 = a1[2];
  v26 = objc_allocWithZone(APHTTPRequest);

  sub_1001EF9F4(v24, v25);

  sub_100397438(v27);
  v29 = v28;
  v30 = sub_100398E48().super.isa;
  v31 = sub_100397538().super.isa;
  sub_1001EFA90(v24, v25);
  aBlock[4] = sub_1002669F4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100284FEC;
  aBlock[3] = &unk_10047BC78;
  v32 = _Block_copy(aBlock);

  v33 = [v26 initWithURL:v29 HTTPMethod:2 HTTPHeaders:v30 HTTPBody:v31 serviceName:0 completionHandler:v32];
  _Block_release(v32);

  v34 = sub_100398F28();
  v35 = sub_100398F28();
  [v33 setRequestHeader:v34 withValue:v35];

  v36 = sub_100398F28();
  v37 = v40;
  [v33 setRequestHeader:v36 withValue:v40];

  sub_100254FDC(v33);
  sub_100255240(v33);
  v38 = v45;
  v39 = [v45 sendRequest:v33];
}

uint64_t sub_1002663EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1003979F8();
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + *(type metadata accessor for AttributionDeliveryWorkerTask(0) + 24)))
  {
    sub_100266A00(a1, v8, &type metadata accessor for WorkResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *v8;
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 5607;
      }

      v11 = [objc_allocWithZone(type metadata accessor for ODAttributionAnalytics()) init];
      sub_10027D344(v10, v9);
    }

    else
    {
      sub_10026678C(v8, &type metadata accessor for WorkResult);
    }
  }

  return a3(a1);
}

uint64_t sub_100266528(void *a1)
{
  swift_allocObject();
  sub_100003554(a1, v4);
  v2 = sub_100398148();
  sub_100003894(a1);
  return v2;
}

uint64_t sub_100266588()
{
  sub_100398168();

  return swift_deallocClassInstance();
}

void sub_100266608(uint64_t a1)
{
  type metadata accessor for SignedAttributionPayloadDTO(319);
  if (v1 <= 0x3F)
  {
    sub_100266694();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100266694()
{
  if (!qword_1004D8218)
  {
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D8218);
    }
  }
}

unint64_t sub_1002666E4()
{
  result = qword_1004D8258;
  if (!qword_1004D8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8258);
  }

  return result;
}

unint64_t sub_100266738()
{
  result = qword_1004D8268;
  if (!qword_1004D8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8268);
  }

  return result;
}

uint64_t sub_10026678C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002667EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SignedAttributionPayloadDTO(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100266830()
{
  result = qword_1004D8280;
  if (!qword_1004D8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8280);
  }

  return result;
}

uint64_t sub_100266884(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004D5DD0, &qword_1003EB1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002668EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100266954(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionDeliveryWorkerTask(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002663EC(a1, v1 + v4, v5);
}

uint64_t sub_100266A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100266A68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736F706E676973 && a2 == 0xEA00000000004449 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_100266BA4()
{
  result = qword_1004D8290;
  if (!qword_1004D8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8290);
  }

  return result;
}

unint64_t sub_100266BFC()
{
  result = qword_1004D8298;
  if (!qword_1004D8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8298);
  }

  return result;
}

unint64_t sub_100266C54()
{
  result = qword_1004D82A0;
  if (!qword_1004D82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D82A0);
  }

  return result;
}

uint64_t AttributionTokenProvider.getTokenGroup(telemetry:completion:)(void *a1, void (*a2)(__int128 *), uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v7 = type metadata accessor for TokenSignpostInterval(0);
  v48 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v49 = v9;
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  sub_1000035B8(a1, v15);
  (*(v16 + 8))(v15, v16);
  AttributionSignposts.generateToken()(v11);
  v51 = [*(v4 + 56) isReady];
  sub_1000035B8((v4 + 16), *(v4 + 40));
  sub_100397CF8();
  v32 = *(&v61 + 1);
  if (*(&v61 + 1))
  {
    v46 = v11;
    v47 = v60;
    v43 = v61;
    v44 = v62;
    *&v45 = v4;
    sub_1000035B8((v4 + 16), *(v4 + 40));
    sub_1001E27A8(&unk_1004DCD00, &unk_1003ECC20);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1003C9930;
    v34 = v47;
    v35 = sub_100397548(0);
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = &protocol witness table for String;
    *(v33 + 32) = v35;
    *(v33 + 40) = v36;
    v37 = sub_100397CD8();

    if (v37)
    {
      sub_1001EF9F4(v34, *(&v34 + 1));
      sub_1001EF9F4(v34, *(&v34 + 1));
      sub_1001EF9F4(v34, *(&v34 + 1));
      v38 = *(&v44 + 1);

      v40 = v43;
      v39 = v44;
      sub_10026945C(v34, *(&v34 + 1), v43, v32, v44, v38);
      v41 = 0;
      LOBYTE(v60) = 0;
      v68 = v47;
      v67 = v47;
      LOBYTE(v69) = 0;
      *(&v69 + 1) = v40;
      *v70 = v32;
      *&v70[8] = v47;
      v70[24] = 1;
      *&v71 = v39;
      *(&v71 + 1) = v38;
      v72 = 0;
    }

    else
    {
      sub_10026945C(v34, *(&v34 + 1), v43, v32, v44, *(&v44 + 1));
      v41 = 1;
      LOBYTE(v60) = 1;
      LOBYTE(v67) = 1;
      v72 = 1;
    }

    v11 = v46;
  }

  else
  {
    v41 = 1;
    LOBYTE(v60) = 1;
    LOBYTE(v67) = 0;
    v72 = 1;
  }

  v17 = sub_10024D8E8();
  if ((v18 & 1) == 0)
  {
    v19 = v17;
    DWORD2(v44) = sub_1003993D8();
    sub_100206B54();
    v46 = "";
    *&v47 = a3;
    v20 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v21 = swift_allocObject();
    v45 = xmmword_1003C9930;
    *(v21 + 16) = xmmword_1003C9930;
    *(v21 + 56) = &type metadata for Int;
    *(v21 + 64) = &protocol witness table for Int;
    *(v21 + 32) = v19;
    sub_100398B98(DWORD2(v44), &_mh_execute_header, v20, "simulate delay %d", v42);

    [objc_opt_self() sleepForTimeInterval:v19];
    v22 = sub_1003993D8();
    a3 = v47;
    v23 = sub_1003995A8();
    v24 = swift_allocObject();
    *(v24 + 16) = v45;
    *(v24 + 56) = &type metadata for Int;
    *(v24 + 64) = &protocol witness table for Int;
    *(v24 + 32) = v19;
    sub_100398B98(v22, &_mh_execute_header, v23, "end delay %d", v42);

    v56 = v69;
    v57 = *v70;
    v58 = *&v70[16];
    v59 = v71;
    v54 = v67;
    v55 = v68;
    if ((v72 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v25 = v50;
    sub_10026922C(v11, v50);
    v26 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v27 = v26 + v49;
    v28 = (v26 + v49) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    sub_100269290(v25, v29 + v26);
    *(v29 + v27) = v51;
    v30 = v29 + v28;
    *(v30 + 8) = v52;
    *(v30 + 16) = a3;

    sub_1002686FC(sub_1002692F4);

    goto LABEL_7;
  }

  v56 = v69;
  v57 = *v70;
  v58 = *&v70[16];
  v59 = v71;
  v54 = v67;
  v55 = v68;
  if (v41)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_100279F1C(1, v51);
  v63 = v57;
  v64 = v58;
  v65 = v59;
  v60 = v54;
  v61 = v55;
  v62 = v56;
  v53 = 0;
  v66 = 0;
  v52(&v60);
  sub_1002693F4(&v67);
LABEL_7:
  sub_100269394(v11, type metadata accessor for TokenSignpostInterval);
  return sub_100269394(v14, type metadata accessor for AttributionSignposts);
}

uint64_t sub_100267384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  sub_100279F1C(0, a3);
  if (*(a1 + 96))
  {
    v8 = 1;
    v14 = 1;
  }

  else
  {
    v6 = *a1;
    v11 = *(a1 + 33);
    v12 = *(a1 + 49);
    *v13 = *(a1 + 65);
    *&v13[15] = *(a1 + 80);
    v9 = *(a1 + 1);
    v10 = *(a1 + 17);
    v8 = v6;
    v14 = 0;
  }

  return a4(&v8);
}

uint64_t sub_100267458(uint64_t a1)
{
  v2 = *(v1 + 256);
  v3 = sub_1003993D8();
  *(v1 + 264) = sub_100206B54();
  v4 = sub_1003995A8();
  sub_100398B98(v3, &_mh_execute_header, v4, "Started token refill.", 21, 2, _swiftEmptyArrayStorage);

  sub_1000035B8((v2 + 16), *(v2 + 40));
  v5 = sub_100397CF8();
  if (*(v1 + 152))
  {
    v6 = 0;
    goto LABEL_4;
  }

  v6 = *(v1 + 144);
  if (v6 <= 4)
  {
LABEL_4:
    v7 = __OFSUB__(5, v6);
    v8 = 5 - v6;
    *(v1 + 272) = v8;
    if (v7)
    {
      __break(1u);
    }

    else if ((v8 & 0x8000000000000000) == 0)
    {
      v20 = *(*(v1 + 256) + 56);
      *(v1 + 280) = v20;
      *(v1 + 288) = 0;
      sub_1002898B0(v1 + 144);
      v9 = *(v1 + 144);
      v10 = *(v1 + 152);
      *(v1 + 312) = v9;
      *(v1 + 320) = v10;
      v11 = *(v1 + 160);
      v12 = *(v1 + 168);
      v13 = *(v1 + 176);
      *(v1 + 328) = v11;
      *(v1 + 336) = v12;
      v14 = *(v1 + 184);
      *(v1 + 344) = v13;
      *(v1 + 352) = v14;
      sub_1001EF9F4(v9, v10);
      sub_1001EF9F4(v11, v12);
      sub_1001EF9F4(v13, v14);
      sub_1001EFA90(v11, v12);
      sub_1001EFA90(v9, v10);
      isa = sub_100397538().super.isa;
      *(v1 + 360) = isa;
      sub_1001EFA90(v13, v14);
      *(v1 + 16) = v1;
      *(v1 + 56) = v1 + 232;
      *(v1 + 24) = sub_100267790;
      v16 = swift_continuation_init();
      v17 = sub_1001E27A8(&qword_1004D82B0, &qword_1003EEEA0);
      *(v1 + 368) = v17;
      *(v1 + 200) = v17;
      *(v1 + 144) = _NSConcreteStackBlock;
      *(v1 + 152) = 1107296256;
      *(v1 + 160) = sub_100268614;
      *(v1 + 168) = &unk_10047BD58;
      *(v1 + 176) = v16;
      [v20 signatureForData:isa completion:v1 + 144];
      v5 = v1 + 16;

      return _swift_continuation_await(v5);
    }

    __break(1u);
    return _swift_continuation_await(v5);
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_100267790()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_100267F48;
  }

  else
  {
    v2 = sub_1002678A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002678A0()
{
  v1 = *(v0 + 360);
  v11 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v12 = *(v0 + 280);
  *(v0 + 384) = *(v0 + 232);

  sub_1001EF9F4(v7, v6);
  sub_1001EF9F4(v5, v4);
  sub_1001EF9F4(v3, v2);
  sub_1001EFA90(v3, v2);
  sub_1001EFA90(v7, v6);
  isa = sub_100397538().super.isa;
  *(v0 + 400) = isa;
  sub_1001EFA90(v5, v4);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 232;
  *(v0 + 88) = sub_100267A40;
  v9 = swift_continuation_init();
  *(v0 + 200) = v11;
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_100268614;
  *(v0 + 168) = &unk_10047BD80;
  *(v0 + 176) = v9;
  [v12 signatureForData:isa completion:?];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100267A40()
{
  v1 = *(*v0 + 112);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_1002682AC;
  }

  else
  {
    v2 = sub_100267B50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100267B50()
{
  v1 = v0;
  v3 = *(v0 + 232);
  v2 = v0 + 232;
  v35 = *(v2 + 152);
  v36 = *(v2 + 160);
  v5 = *(v2 + 112);
  v4 = *(v2 + 120);
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);
  v8 = *(v2 + 80);
  v9 = *(v2 + 88);
  v33 = v9;
  v30 = *(v2 + 24);
  v10 = *(v2 + 8);

  sub_1001EF9F4(v8, v9);
  v34 = v6;
  sub_1001EF9F4(v6, v7);
  sub_1001EF9F4(v5, v4);
  sub_1001EFA90(v5, v4);
  sub_1001EFA90(v6, v7);
  v32 = sub_100397548(0);
  v12 = v11;
  v31 = sub_100397548(0);
  v14 = v13;
  sub_1000035B8((v30 + 16), *(v30 + 40));
  sub_1001E27A8(&unk_1004DCD00, &unk_1003ECC20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003C9260;

  v16 = sub_100397548(0);
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = &protocol witness table for String;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = &protocol witness table for String;
  *(v15 + 72) = v32;
  *(v15 + 80) = v12;
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = &protocol witness table for String;
  *(v15 + 112) = v31;
  *(v15 + 120) = v14;
  sub_100397CD8();

  sub_1001EFA90(v8, v33);
  sub_1001EFA90(v34, v7);
  sub_1001EFA90(v5, v4);
  sub_1001EFA90(v8, v33);

  sub_1001EFA90(v3, v10);
  sub_1001EFA90(v35, v36);
  v18 = *(v2 + 56) + 1;
  if (v18 == *(v2 + 40))
  {
    v19 = *(v1 + 8);

    return v19();
  }

  else
  {
    *(v1 + 296) = *(v1 + 384);
    *(v1 + 288) = v18;
    v37 = *(v1 + 280);
    sub_1002898B0(v1 + 144);
    v21 = *(v1 + 144);
    v22 = *(v1 + 152);
    *(v1 + 312) = v21;
    *(v1 + 320) = v22;
    v23 = *(v1 + 160);
    v24 = *(v1 + 168);
    v25 = *(v1 + 176);
    *(v1 + 328) = v23;
    *(v1 + 336) = v24;
    v26 = *(v1 + 184);
    *(v1 + 344) = v25;
    *(v1 + 352) = v26;
    sub_1001EF9F4(v21, v22);
    sub_1001EF9F4(v23, v24);
    sub_1001EF9F4(v25, v26);
    sub_1001EFA90(v23, v24);
    sub_1001EFA90(v21, v22);
    isa = sub_100397538().super.isa;
    *(v1 + 360) = isa;
    sub_1001EFA90(v25, v26);
    *(v1 + 16) = v1;
    *(v1 + 56) = v2;
    *(v1 + 24) = sub_100267790;
    v28 = swift_continuation_init();
    v29 = sub_1001E27A8(&qword_1004D82B0, &qword_1003EEEA0);
    *(v1 + 368) = v29;
    *(v1 + 200) = v29;
    *(v1 + 144) = _NSConcreteStackBlock;
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_100268614;
    *(v1 + 168) = &unk_10047BD58;
    *(v1 + 176) = v28;
    [v37 signatureForData:isa completion:v1 + 144];

    return _swift_continuation_await(v1 + 16);
  }
}

uint64_t sub_100267F48(uint64_t a1)
{
  v2 = v1[45];
  swift_willThrow();

  v3 = v1[47];
  v25 = v1[37];
  v26 = v1[38];
  v28 = v1[43];
  v29 = v1[44];
  v4 = v1[41];
  v27 = v1[42];
  v5 = v1[39];
  v6 = v1[40];
  v7 = sub_1003993E8();
  v8 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1003C9930;
  swift_getErrorValue();
  v10 = sub_100399AC8();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100206BA0();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_100398B98(v7, &_mh_execute_header, v8, "Unable to sign a token %@", 25, 2, v9);
  sub_1001EFA90(v5, v6);
  sub_1001EFA90(v4, v27);
  sub_1001EFA90(v28, v29);

  if (!v3)
  {
    sub_1001EFA90(v25, v26);
  }

  v13 = v1[36] + 1;
  if (v13 == v1[34])
  {
    v14 = v1[1];

    return v14();
  }

  else
  {
    v1[37] = v25;
    v1[38] = v26;
    v1[36] = v13;
    v30 = v1[35];
    sub_1002898B0((v1 + 18));
    v16 = v1[18];
    v17 = v1[19];
    v1[39] = v16;
    v1[40] = v17;
    v18 = v1[20];
    v19 = v1[21];
    v20 = v1[22];
    v1[41] = v18;
    v1[42] = v19;
    v21 = v1[23];
    v1[43] = v20;
    v1[44] = v21;
    sub_1001EF9F4(v16, v17);
    sub_1001EF9F4(v18, v19);
    sub_1001EF9F4(v20, v21);
    sub_1001EFA90(v18, v19);
    sub_1001EFA90(v16, v17);
    isa = sub_100397538().super.isa;
    v1[45] = isa;
    sub_1001EFA90(v20, v21);
    v1[2] = v1;
    v1[7] = v1 + 29;
    v1[3] = sub_100267790;
    v23 = swift_continuation_init();
    v24 = sub_1001E27A8(&qword_1004D82B0, &qword_1003EEEA0);
    v1[46] = v24;
    v1[25] = v24;
    v1[18] = _NSConcreteStackBlock;
    v1[19] = 1107296256;
    v1[20] = sub_100268614;
    v1[21] = &unk_10047BD58;
    v1[22] = v23;
    [v30 signatureForData:isa completion:v1 + 18];

    return _swift_continuation_await(v1 + 2);
  }
}

uint64_t sub_1002682AC(uint64_t a1)
{
  v2 = v1[50];
  swift_willThrow();

  v24 = v1[48];
  v25 = v1[49];
  v28 = v1[44];
  v29 = v1[47];
  v3 = v1[41];
  v26 = v1[42];
  v27 = v1[43];
  v4 = v1[39];
  v5 = v1[40];
  v6 = sub_1003993E8();
  v7 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1003C9930;
  swift_getErrorValue();
  v9 = sub_100399AC8();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100206BA0();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_100398B98(v6, &_mh_execute_header, v7, "Unable to sign a token %@", 25, 2, v8);
  sub_1001EFA90(v4, v5);
  sub_1001EFA90(v3, v26);
  sub_1001EFA90(v27, v28);

  if (!v29)
  {
    sub_1001EFA90(v24, v25);
  }

  v12 = v1[36] + 1;
  if (v12 == v1[34])
  {
    v13 = v1[1];

    return v13();
  }

  else
  {
    v1[37] = v24;
    v1[38] = v25;
    v1[36] = v12;
    v30 = v1[35];
    sub_1002898B0((v1 + 18));
    v15 = v1[18];
    v16 = v1[19];
    v1[39] = v15;
    v1[40] = v16;
    v17 = v1[20];
    v18 = v1[21];
    v19 = v1[22];
    v1[41] = v17;
    v1[42] = v18;
    v20 = v1[23];
    v1[43] = v19;
    v1[44] = v20;
    sub_1001EF9F4(v15, v16);
    sub_1001EF9F4(v17, v18);
    sub_1001EF9F4(v19, v20);
    sub_1001EFA90(v17, v18);
    sub_1001EFA90(v15, v16);
    isa = sub_100397538().super.isa;
    v1[45] = isa;
    sub_1001EFA90(v19, v20);
    v1[2] = v1;
    v1[7] = v1 + 29;
    v1[3] = sub_100267790;
    v22 = swift_continuation_init();
    v23 = sub_1001E27A8(&qword_1004D82B0, &qword_1003EEEA0);
    v1[46] = v23;
    v1[25] = v23;
    v1[18] = _NSConcreteStackBlock;
    v1[19] = 1107296256;
    v1[20] = sub_100268614;
    v1[21] = &unk_10047BD58;
    v1[22] = v22;
    [v30 signatureForData:isa completion:v1 + 18];

    return _swift_continuation_await(v1 + 2);
  }
}

uint64_t sub_100268614(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000035B8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_100397558();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1002686FC(void (*a1)(_BYTE *))
{
  v2 = v1;
  sub_1002898B0(v68);
  v62 = *v68;
  v3 = *&v68[16];
  v4 = *&v68[32];
  if (sub_10024DA5C())
  {
    v5 = sub_1003993D8();
    sub_100206B54();
    v6 = sub_1003995A8();
    sub_100398B98(v5, &_mh_execute_header, v6, "simulate failure Unable to sign a token", 39, 2, _swiftEmptyArrayStorage);

    sub_100269534();
    swift_allocError();
    *v7 = 0;
    goto LABEL_7;
  }

  v8 = *(v1 + 56);
  sub_1001EF9F4(v62, *(&v62 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  sub_1001EFA90(v62, *(&v62 + 1));
  isa = sub_100397538().super.isa;
  sub_1001EFA90(v4, *(&v4 + 1));
  *v68 = 0;
  v10 = [v8 signatureForData:isa error:v68];

  v11 = *v68;
  if (!v10)
  {
    v36 = v11;
    sub_1003973E8();

LABEL_7:
    swift_willThrow();
    v60 = 0;
    if (*(v2 + 64))
    {
      goto LABEL_8;
    }

LABEL_11:
    v48 = sub_1003993E8();
    sub_100206B54();
    v49 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1003C9930;
    swift_getErrorValue();
    v51 = sub_100399AC8();
    v53 = v52;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100206BA0();
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    sub_100398B98(v48, &_mh_execute_header, v49, "Unable to sign a token %@", 25, 2, v50);

    *&v68[33] = v66;
    *&v68[49] = *v67;
    *&v68[65] = *&v67[16];
    *&v68[80] = *&v67[31];
    *&v68[1] = v64;
    v63[0] = 1;
    v68[0] = 1;
    *&v68[17] = v65;
    v69 = 1;
    a1(v68);

    sub_1001EFA90(v62, *(&v62 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    sub_1001EFA90(v4, *(&v4 + 1));
    if ((v60 & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v12 = sub_100397558();
  v57 = v13;
  v58 = v12;

  sub_1001EF9F4(v62, *(&v62 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_1001EFA90(v62, *(&v62 + 1));
  v14 = sub_100397538().super.isa;
  sub_1001EFA90(v3, *(&v3 + 1));
  *v68 = 0;
  v15 = [v8 signatureForData:v14 error:v68];

  if (v15)
  {
    v16 = *v68;
    v17 = sub_100397558();
    v19 = v18;

    sub_1001EF9F4(v62, *(&v62 + 1));
    sub_1001EF9F4(v3, *(&v3 + 1));
    sub_1001EF9F4(v4, *(&v4 + 1));
    sub_1001EFA90(v4, *(&v4 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    v64 = v3;
    *&v68[24] = &type metadata for Data;
    *&v68[32] = &protocol witness table for Data;
    v59 = v17;
    *v68 = v17;
    *&v68[8] = v19;
    v20 = v19;
    v56 = v19;
    v21 = sub_1000035B8(v68, &type metadata for Data);
    v22 = *v21;
    v23 = v21[1];
    sub_1001EF9F4(v3, *(&v3 + 1));
    sub_1001EF9F4(v17, v20);
    sub_10025984C(v22, v23, &v64);
    sub_100003894(v68);
    v24 = v64;
    v25 = sub_100397548(0);
    v54 = v26;
    v55 = v25;
    sub_1001EFA90(v24, *(&v24 + 1));
    sub_1001EF9F4(v62, *(&v62 + 1));
    sub_1001EF9F4(v3, *(&v3 + 1));
    sub_1001EF9F4(v4, *(&v4 + 1));
    sub_1001EFA90(v4, *(&v4 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    v64 = v4;
    *&v68[24] = &type metadata for Data;
    *&v68[32] = &protocol witness table for Data;
    *v68 = v58;
    *&v68[8] = v57;
    v27 = sub_1000035B8(v68, &type metadata for Data);
    v28 = *v27;
    v29 = v27[1];
    sub_1001EF9F4(v4, *(&v4 + 1));
    sub_1001EF9F4(v58, v57);
    sub_10025984C(v28, v29, &v64);
    sub_100003894(v68);
    v30 = v64;
    v31 = sub_100397548(0);
    v33 = v32;
    sub_1001EFA90(v30, *(&v30 + 1));
    sub_1001EF9F4(v62, *(&v62 + 1));
    sub_1001EF9F4(v3, *(&v3 + 1));
    sub_1001EF9F4(v4, *(&v4 + 1));
    sub_1001EFA90(v4, *(&v4 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    v64 = v62;
    v65 = v62;
    LOBYTE(v66) = 0;
    *(&v66 + 1) = v31;
    *v67 = v33;
    *&v67[8] = v62;
    v67[24] = 1;
    *&v67[32] = v55;
    *&v67[40] = v54;
    *&v68[32] = v66;
    *&v68[48] = *v67;
    *&v68[64] = *&v67[16];
    *&v68[80] = *&v67[32];
    *v68 = v62;
    *&v68[16] = v62;
    v69 = 0;
    sub_100245FC8(&v64, v63);
    a1(v68);
    sub_100245D8C(&v64);
    sub_100245D8C(&v64);
    sub_1001EFA90(v62, *(&v62 + 1));
    sub_1001EFA90(v3, *(&v3 + 1));
    sub_1001EFA90(v4, *(&v4 + 1));
    sub_1001EFA90(v59, v56);
    v34 = v58;
    v35 = v57;
LABEL_13:
    sub_1001EFA90(v34, v35);
    return;
  }

  v47 = *v68;
  sub_1003973E8();

  swift_willThrow();
  v60 = 1;
  if ((*(v2 + 64) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v37 = sub_1003993E8();
  sub_100206B54();
  v38 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1003C9930;
  swift_getErrorValue();
  v40 = sub_100399AC8();
  v42 = v41;
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_100206BA0();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  sub_100398B98(v37, &_mh_execute_header, v38, "Unable to sign a token returning unsigned token. %@", 51, 2, v39);

  sub_1001EF9F4(v62, *(&v62 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  sub_1001EF9F4(v62, *(&v62 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  sub_1001EF9F4(v62, *(&v62 + 1));
  sub_1001EF9F4(v3, *(&v3 + 1));
  sub_1001EF9F4(v4, *(&v4 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  v64 = v62;
  v65 = v62;
  LOBYTE(v66) = 0;
  *(&v66 + 1) = 0x4F64555354355556;
  *v67 = 0xEC0000003D515552;
  *&v67[8] = v62;
  v67[24] = 1;
  strcpy(&v67[32], "VU5TSUdORUQ=");
  v67[45] = 0;
  *&v67[46] = -5120;
  v43 = objc_allocWithZone(type metadata accessor for ODAttributionAnalytics());
  sub_1001EF9F4(v62, *(&v62 + 1));

  sub_1001EF9F4(v62, *(&v62 + 1));

  v44 = [v43 init];
  sub_10024BCE8();
  v45 = swift_allocError();
  *v46 = 5600;
  sub_10027CFC0(v45);

  *&v68[32] = v66;
  *&v68[48] = *v67;
  *&v68[64] = *&v67[16];
  *&v68[80] = *&v67[32];
  *v68 = v64;
  *&v68[16] = v65;
  v69 = 0;
  sub_100245FC8(&v64, v63);
  a1(v68);

  sub_1001EFA90(v62, *(&v62 + 1));
  sub_1001EFA90(v3, *(&v3 + 1));
  sub_1001EFA90(v4, *(&v4 + 1));
  sub_100245D8C(&v64);
  sub_100245D8C(&v64);
  sub_1001EFA90(v62, *(&v62 + 1));

  sub_1001EFA90(v62, *(&v62 + 1));

  if (v60)
  {
LABEL_12:
    v35 = v57;
    v34 = v58;
    goto LABEL_13;
  }
}

uint64_t AttributionTokenProvider.deinit()
{
  sub_100003894((v0 + 16));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AttributionTokenProvider.__deallocating_deinit()
{
  sub_100003894((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100269180()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C50;

  return AttributionTokenProvider.refillTokenGroups()();
}

uint64_t sub_10026922C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenSignpostInterval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100269290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenSignpostInterval(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002692F4(uint64_t a1)
{
  v3 = *(type metadata accessor for TokenSignpostInterval(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_100267384(a1, v1 + v4, v6, v7);
}

uint64_t sub_100269394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002693F4(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D82A8, &qword_1003EEE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10026945C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_1001EFA90(a1, a2);
  }

  return result;
}

unint64_t sub_1002694E0()
{
  result = qword_1004D8388;
  if (!qword_1004D8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8388);
  }

  return result;
}

unint64_t sub_100269534()
{
  result = qword_1004D8390;
  if (!qword_1004D8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8390);
  }

  return result;
}

unint64_t sub_10026959C()
{
  result = qword_1004D8398;
  if (!qword_1004D8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8398);
  }

  return result;
}

unint64_t sub_100269608(uint64_t a1, unint64_t a2)
{
  v2 = 48;
  if (a2)
  {
    v2 = a1;
    result = a2;
  }

  else
  {
    result = 0xE100000000000000;
  }

  v4 = HIBYTE(result) & 0xF;
  v5 = v2 & 0xFFFFFFFFFFFFLL;
  if ((result & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(result) & 0xF;
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    sub_100246BA8(v2, result, 10);
    v10 = v25;
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      return v10;
    }

    return 0;
  }

  if ((result & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v7 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v28 = result;
      v7 = sub_100399768();
      result = v28;
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        v16 = v5 - 1;
        if (v5 != 1)
        {
          v10 = 0;
          if (!v7)
          {
            goto LABEL_67;
          }

          v17 = v7 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v10, 0xAuLL))
            {
              break;
            }

            v13 = __CFADD__(10 * v10, v18);
            v10 = 10 * v10 + v18;
            if (v13)
            {
              break;
            }

            ++v17;
            if (!--v16)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      goto LABEL_76;
    }

    if (v8 == 45)
    {
      if (v5 >= 1)
      {
        v9 = v5 - 1;
        if (v5 != 1)
        {
          v10 = 0;
          if (!v7)
          {
            goto LABEL_67;
          }

          v11 = v7 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v10, 0xAuLL))
            {
              break;
            }

            v13 = 10 * v10 >= v12;
            v10 = 10 * v10 - v12;
            if (!v13)
            {
              break;
            }

            ++v11;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_75;
    }

    if (v5)
    {
      v10 = 0;
      if (!v7)
      {
        goto LABEL_67;
      }

      while (1)
      {
        v21 = *v7 - 48;
        if (v21 > 9)
        {
          break;
        }

        if (!is_mul_ok(v10, 0xAuLL))
        {
          break;
        }

        v13 = __CFADD__(10 * v10, v21);
        v10 = 10 * v10 + v21;
        if (v13)
        {
          break;
        }

        ++v7;
        if (!--v5)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_66;
  }

  v29[0] = v2;
  v29[1] = result & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 == 45)
    {
      if (!v4)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v7 = (v4 - 1);
      if (v4 != 1)
      {
        v10 = 0;
        v14 = v29 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          if (!is_mul_ok(v10, 0xAuLL))
          {
            break;
          }

          v13 = 10 * v10 >= v15;
          v10 = 10 * v10 - v15;
          if (!v13)
          {
            break;
          }

          ++v14;
          if (!--v7)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v4)
    {
      v10 = 0;
      v22 = v29;
      while (1)
      {
        v23 = *v22 - 48;
        if (v23 > 9)
        {
          break;
        }

        if (!is_mul_ok(v10, 0xAuLL))
        {
          break;
        }

        v13 = __CFADD__(10 * v10, v23);
        v10 = 10 * v10 + v23;
        if (v13)
        {
          break;
        }

        ++v22;
        if (!--v4)
        {
LABEL_65:
          LOBYTE(v7) = 0;
          goto LABEL_67;
        }
      }
    }

LABEL_66:
    v10 = 0;
    LOBYTE(v7) = 1;
LABEL_67:
    v30 = v7;
    v24 = v7;

    if ((v24 & 1) == 0)
    {
      return v10;
    }

    return 0;
  }

  if (v4)
  {
    v7 = (v4 - 1);
    if (v4 != 1)
    {
      v10 = 0;
      v19 = v29 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        if (!is_mul_ok(v10, 0xAuLL))
        {
          break;
        }

        v13 = __CFADD__(10 * v10, v20);
        v10 = 10 * v10 + v20;
        if (v13)
        {
          break;
        }

        ++v19;
        if (!--v7)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_100269924(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v18 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v19 = sub_1003995A8();
    sub_100398B98(v18, &_mh_execute_header, v19, "Upload: Broken payload.", 23, 2, _swiftEmptyArrayStorage);

    v20 = sub_100398F28();
    v21 = sub_100398F28();
    CreateDiagnosticReport();

    [a3 uploadFailedWithStatusCode:-1 retryCount:a2];
    return 0;
  }

  v5 = a1;
  v6 = [v5 responseStatusCode];
  v7 = [v5 responseError];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100399408();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v10 = sub_1003995A8();
    v11 = 2;
    sub_100398B98(v9, &_mh_execute_header, v10, "Upload: Network error.", 22, 2, _swiftEmptyArrayStorage);

    v12 = sub_1003993E8();
    v13 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1003C9930;
    swift_getErrorValue();
    v15 = sub_100399AC8();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100206BA0();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_100398B98(v12, &_mh_execute_header, v13, "Error received from server %{public}@", 37, 2, v14);

    return v11;
  }

  if (v6 == 204)
  {
    v22 = sub_100399408();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v23 = sub_1003995A8();
    sub_100398B98(v22, &_mh_execute_header, v23, "Upload: Success.", 16, 2, _swiftEmptyArrayStorage);

    v24 = sub_1003993C8();
    v25 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1003C9930;
    v27 = [v5 responseStatusCode];
    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v27;
    sub_100398B98(v24, &_mh_execute_header, v25, "server responded with %ld success", v51);

    [a3 uploadSucceededWithRetryCount:a2];

    return 1;
  }

  if ((v6 - 400) <= 0x63)
  {
    v29 = sub_100399408();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v30 = sub_1003995A8();
    sub_100398B98(v29, &_mh_execute_header, v30, "Upload: 4xx", 11, 2, _swiftEmptyArrayStorage);

    v31 = sub_100398F28();
    v32 = sub_100398F28();
    CreateDiagnosticReport();

    v33 = sub_1003993E8();
    v34 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1003C9930;
    v36 = [v5 responseStatusCode];
    *(v35 + 56) = &type metadata for Int;
    *(v35 + 64) = &protocol witness table for Int;
    *(v35 + 32) = v36;
    sub_100398B98(v33, &_mh_execute_header, v34, "Unsupported format server response with status code: %lu", v51);

    [a3 uploadFailedWithStatusCode:objc_msgSend(v5 retryCount:{"responseStatusCode"), a2}];

    return 0;
  }

  v37 = sub_100399408();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v38 = sub_1003995A8();
  v11 = 2;
  if ((v6 - 500) > 0x63)
  {
    sub_100398B98(v37, &_mh_execute_header, v38, "Upload: Unknown", 15, 2, _swiftEmptyArrayStorage);

    v45 = sub_1003993E8();
    v46 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1003C9930;
    v48 = [v5 responseStatusCode];
    *(v47 + 56) = &type metadata for Int;
    *(v47 + 64) = &protocol witness table for Int;
    *(v47 + 32) = v48;
    sub_100398B98(v45, &_mh_execute_header, v46, "Unexpected server response with status code: %lu", v51);

    v49 = sub_100398F28();
    v50 = sub_100398F28();
    CreateDiagnosticReport();
  }

  else
  {
    sub_100398B98(v37, &_mh_execute_header, v38, "Upload: 5xx", 11, 2, _swiftEmptyArrayStorage);

    v39 = sub_100398F28();
    v40 = sub_100398F28();
    CreateDiagnosticReport();

    v41 = sub_1003993E8();
    v42 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1003C9930;
    v44 = [v5 responseStatusCode];
    *(v43 + 56) = &type metadata for Int;
    *(v43 + 64) = &protocol witness table for Int;
    *(v43 + 32) = v44;
    sub_100398B98(v41, &_mh_execute_header, v42, "Unsupported format server response with status code: %lu", v51);
  }

  return v11;
}

uint64_t sub_10026A1D4(int64_t a1)
{
  v2 = objc_opt_self();
  sub_100004218(0, &qword_1004D83A0, APAttributionConfig_ptr);
  [v2 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    v11 = &off_100479EA0;
    goto LABEL_24;
  }

  v4 = v3;
  v5 = [v3 uploadBackoffSchedule];
  if (v5)
  {
    v6 = v5;
    sub_100004218(0, &qword_1004D43F0, NSNumber_ptr);
    v7 = sub_100399198();

    if (v7 >> 62)
    {
      v8 = sub_1003997F8();
      if (v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_5:
        result = sub_1002373D4(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          goto LABEL_37;
        }

        v10 = 0;
        v11 = _swiftEmptyArrayStorage;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v12 = sub_100399708();
          }

          else
          {
            v12 = *(v7 + 8 * v10 + 32);
          }

          v13 = v12;
          [v12 doubleValue];
          v15 = v14;

          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          if (v17 >= v16 >> 1)
          {
            sub_1002373D4((v16 > 1), v17 + 1, 1);
          }

          ++v10;
          _swiftEmptyArrayStorage[2] = v17 + 1;
          _swiftEmptyArrayStorage[v17 + 4] = v15;
        }

        while (v8 != v10);

        goto LABEL_18;
      }
    }

    v11 = _swiftEmptyArrayStorage;
  }

  else
  {
    v11 = &off_100479EA0;
  }

LABEL_18:
  v18 = [v4 holdTransactionLimit];
  if (v18)
  {
    v19 = v18;
    [v18 doubleValue];
    if (v20 > 0.0)
    {
      [v19 doubleValue];
      swift_unknownObjectRelease();

      v21 = v11[2];
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  swift_unknownObjectRelease();
LABEL_24:
  v21 = v11[2];
  if (!v21)
  {
LABEL_28:

    return 0;
  }

LABEL_25:
  if (v21 <= a1)
  {
    goto LABEL_28;
  }

  v22 = a1 + 1;
  if ((a1 + 1) > 3)
  {
    v23 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = (v11 + 6);
    v24 = 0.0;
    v26 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v24 = v24 + *(v25 - 2) + *(v25 - 1) + *v25 + v25[1];
      v25 += 4;
      v26 -= 4;
    }

    while (v26);
    if (v22 == v23)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0.0;
  }

  v27 = a1 - v23 + 1;
  v28 = &v11[v23 + 4];
  do
  {
    v29 = *v28++;
    v24 = v24 + v29;
    --v27;
  }

  while (v27);
LABEL_34:
  result = sub_100399998();
  if (v11[2] > a1)
  {
    v30 = result;

    return v30;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_10026A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 240) = v23;
  *(v8 + 248) = v24;
  *(v8 + 1088) = a7;
  *(v8 + 224) = a6;
  *(v8 + 232) = a8;
  *(v8 + 208) = a4;
  *(v8 + 216) = a5;
  *(v8 + 256) = sub_1001E27A8(&unk_1004D70E0, &unk_1003ECE20);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  v9 = type metadata accessor for AttributionCandidate(0);
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  sub_1001E27A8(&qword_1004D84C0, &qword_1003EF140);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = type metadata accessor for ComputedAttributions(0);
  *(v8 + 320) = swift_task_alloc();
  v10 = sub_100398AF8();
  *(v8 + 328) = v10;
  *(v8 + 336) = *(v10 - 8);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v11 = sub_1003989A8();
  *(v8 + 360) = v11;
  *(v8 + 368) = *(v11 - 8);
  *(v8 + 376) = swift_task_alloc();
  v12 = sub_100398988();
  *(v8 + 384) = v12;
  *(v8 + 392) = *(v12 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v13 = sub_100398848();
  *(v8 + 416) = v13;
  *(v8 + 424) = *(v13 - 8);
  *(v8 + 432) = swift_task_alloc();
  sub_1001E27A8(&qword_1004D84C8, &qword_1003EF148);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  v14 = sub_100398828();
  *(v8 + 464) = v14;
  *(v8 + 472) = *(v14 - 8);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  v15 = sub_100398628();
  *(v8 + 512) = v15;
  *(v8 + 520) = *(v15 - 8);
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  v16 = sub_100398768();
  *(v8 + 552) = v16;
  *(v8 + 560) = *(v16 - 8);
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v17 = sub_100397748();
  *(v8 + 616) = v17;
  *(v8 + 624) = *(v17 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  v18 = sub_1003988E8();
  *(v8 + 672) = v18;
  *(v8 + 680) = *(v18 - 8);
  *(v8 + 688) = swift_task_alloc();
  type metadata accessor for SignpostInterval(0);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  v19 = sub_1003988C8();
  *(v8 + 728) = v19;
  *(v8 + 736) = *(v19 - 8);
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = type metadata accessor for AttributionSignposts(0);
  *(v8 + 776) = swift_task_alloc();
  v20 = sub_100398728();
  *(v8 + 784) = v20;
  *(v8 + 792) = *(v20 - 8);
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();

  return _swift_task_switch(sub_10026ACBC, 0, 0);
}

uint64_t sub_10026ACBC(uint64_t a1)
{
  v62 = v1;
  v2 = sub_1003993C8();
  *(v1 + 832) = sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v3 = sub_1003995A8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v1 + 824);
    v5 = *(v1 + 792);
    v6 = *(v1 + 784);
    v7 = *(v1 + 208);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v61 = v9;
    *v8 = 136315138;
    (*(v5 + 16))(v4, v7 + OBJC_IVAR____TtC11Attribution19JetEngineAttributor_config, v6);
    v10 = sub_100398FC8();
    v12 = sub_100005700(v10, v11, &v61);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v2, "Using config parameters %s", v8, 0xCu);
    sub_100003894(v9);
  }

  v13 = *(v1 + 792);
  v48 = *(v1 + 784);
  v49 = *(v1 + 816);
  v60 = *(v1 + 768);
  v45 = *(v1 + 720);
  v14 = *(v1 + 664);
  v15 = *(v1 + 624);
  v47 = *(v1 + 616);
  v53 = *(v1 + 608);
  v54 = *(v1 + 688);
  v52 = *(v1 + 600);
  v16 = *(v1 + 560);
  v51 = *(v1 + 552);
  v55 = *(v1 + 544);
  v56 = *(v1 + 680);
  v57 = *(v1 + 520);
  v58 = *(v1 + 672);
  v59 = *(v1 + 512);
  v50 = *(v1 + 1088);
  v17 = *(v1 + 224);
  v44 = *(v1 + 232);
  v18 = *(v1 + 216);
  v46 = *(v1 + 208);
  v20 = v18[3];
  v19 = v18[4];
  sub_1000035B8(v18, v20);
  (*(v19 + 8))(v20, v19);
  AttributionSignposts.preMatch()(v45);
  v21 = *(v15 + 16);
  *(v1 + 840) = v21;
  *(v1 + 848) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v14, v44, v47);
  v22 = OBJC_IVAR____TtC11Attribution19JetEngineAttributor_config;
  *(v1 + 856) = OBJC_IVAR____TtC11Attribution19JetEngineAttributor_config;
  v23 = *(v13 + 16);
  *(v1 + 864) = v23;
  *(v1 + 872) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v49, &v46[v22], v48);
  v24 = *v17;
  *(v1 + 880) = *v17;
  v25 = v17[1];
  *(v1 + 888) = v25;
  *(v1 + 112) = v24;
  *(v1 + 120) = v25;

  sub_1003990F8();
  *(v1 + 1080) = *(type metadata accessor for ProductionAppSpecifier(0) + 20);
  sub_1003981A8();
  v26 = *(v16 + 104);
  v27 = &enum case for AttributionCallType.open(_:);
  *(v1 + 896) = v26;
  if ((v50 & 1) == 0)
  {
    v27 = &enum case for AttributionCallType.install(_:);
  }

  v26(v52, *v27, v51);
  v28 = *(v16 + 32);
  *(v1 + 904) = v28;
  *(v1 + 912) = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v28(v53, v52, v51);
  v29 = &v46[OBJC_IVAR____TtC11Attribution19JetEngineAttributor_accountToken];
  *(v1 + 920) = *&v46[OBJC_IVAR____TtC11Attribution19JetEngineAttributor_accountToken];
  *(v1 + 928) = *(v29 + 1);

  sub_1003988D8();
  v30 = sub_1003993D8();
  v31 = sub_1003995A8();
  sub_100398B98(v30, &_mh_execute_header, v31, "prematch intent", 15, 2, _swiftEmptyArrayStorage, v43);

  v32 = *(v46 + 5);
  v33 = *(v46 + 6);
  sub_1000035B8(v46 + 2, v32);
  (*(v56 + 16))(v55, v54, v58);
  v34 = enum case for IntentMessage.attributionPreMatch(_:);
  v35 = *(v57 + 104);
  *(v1 + 936) = v35;
  *(v1 + 944) = (v57 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v35(v55, v34, v59);
  *(v1 + 952) = sub_100398708();
  *(v1 + 1084) = *(v60 + 20);
  v36 = sub_1003986E8();
  *(v1 + 960) = v36;
  v37 = swift_task_alloc();
  *(v1 + 968) = v37;
  v38 = sub_1002717C8(&qword_1004D84D0, &type metadata accessor for AttributionPreMatchIntent.ReturnType, &protocol conformance descriptor for AttributionPreMatchIntent.ReturnType);
  *v37 = v1;
  v37[1] = sub_10026B280;
  v39 = *(v1 + 744);
  v40 = *(v1 + 728);
  v41 = *(v1 + 544);

  return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v39, v41, v36, v40, v38, v32, v33);
}

uint64_t sub_10026B280()
{
  v2 = *v1;
  v2[122] = v0;

  v3 = v2[68];
  v4 = v2[65];
  v5 = v2[64];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_10026C0FC;
  }

  else
  {
    v2[123] = v7;
    v2[124] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_10026B430;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10026B430()
{
  v95 = v0;
  (*(*(v0 + 736) + 32))(*(v0 + 752), *(v0 + 744), *(v0 + 728));
  v1 = sub_1003993D8();
  v2 = sub_1003995A8();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 688);
    v4 = *(v0 + 680);
    v5 = *(v0 + 672);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v93 = v7;
    *v6 = 136446210;
    swift_beginAccess();
    sub_1002717C8(&qword_1004D84F0, &type metadata accessor for AttributionPreMatchIntent.ReturnType, &protocol conformance descriptor for AttributionPreMatchIntent.ReturnType);
    v8 = sub_100399998();
    v10 = sub_100005700(v8, v9, &v93);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v1, "prematch response %{public}s", v6, 0xCu);
    sub_100003894(v7);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v11 = *(v0 + 688);
    v12 = *(v0 + 680);
    v13 = *(v0 + 672);

    (*(v12 + 8))(v11, v13);
  }

  v14 = *(v0 + 976);
  v15 = *(v0 + 760);
  v16 = *(v0 + 752);
  v17 = *(v0 + 736);
  v18 = *(v0 + 728);
  v19 = *(v0 + 720);
  swift_beginAccess();
  (*(v17 + 16))(v15, v16, v18);
  v20 = *(v17 + 8);
  *(v0 + 1000) = v20;
  *(v0 + 1008) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v18);
  sub_10027C30C();
  sub_100270468(v19, type metadata accessor for SignpostInterval);
  v21 = sub_1003988B8();
  v22 = sub_10026EC74(v21);
  v23 = *(v0 + 760);
  if (!v14)
  {
    v40 = v22;

    sub_1003988A8();
    swift_getKeyPath();
    v41 = v40[2];

    v49 = v40;
    if (v41)
    {
      v50 = 0;
      v51 = _swiftEmptyArrayStorage;
      while (v50 < v49[2])
      {
        *(v0 + 184) = v49[v50 + 4];

        swift_getAtKeyPath();

        v52 = *(v0 + 192);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1001E3A58(0, v51[2] + 1, 1, v51);
          v51 = isUniquelyReferenced_nonNull_native;
        }

        v54 = v51[2];
        v53 = v51[3];
        if (v54 >= v53 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1001E3A58((v53 > 1), v54 + 1, 1, v51);
          v51 = isUniquelyReferenced_nonNull_native;
        }

        ++v50;
        v51[2] = v54 + 1;
        v51[v54 + 4] = v52;
        if (v41 == v50)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v51 = _swiftEmptyArrayStorage;
LABEL_20:

      v55 = v51[2];
      if (!v55)
      {
        v56 = 0;
LABEL_26:
        v92 = *(v0 + 936);
        v87 = *(v0 + 904);
        v85 = *(v0 + 896);
        v79 = *(v0 + 888);
        v77 = *(v0 + 880);
        v76 = *(v0 + 864);
        v73 = *(v0 + 840);
        v60 = *(v0 + 808);
        v74 = *(v0 + 784);
        v75 = *(v0 + 856);
        v61 = *(v0 + 712);
        v62 = *(v0 + 656);
        v72 = *(v0 + 616);
        v82 = *(v0 + 592);
        v80 = *(v0 + 552);
        v81 = *(v0 + 584);
        v90 = *(v0 + 536);
        v91 = *(v0 + 512);
        v83 = *(v0 + 448);
        v84 = *(v0 + 456);
        v86 = *(v0 + 432);
        v88 = *(v0 + 424);
        v89 = *(v0 + 416);
        v78 = *(v0 + 1088);
        v63 = *(v0 + 232);
        v64 = *(v0 + 208);

        sub_1002701FC(v56);
        AttributionSignposts.match(_:)(v56, v61);
        v65 = sub_1003993D8();
        v66 = sub_1003995A8();
        sub_100398B98(v65, &_mh_execute_header, v66, "Sending match", 13, 2, _swiftEmptyArrayStorage);

        v73(v62, v63, v72);
        v76(v60, &v64[v75], v74);
        *(v0 + 144) = v77;
        *(v0 + 152) = v79;

        sub_1003990F8();
        sub_1003981A8();
        v67 = &enum case for AttributionCallType.open(_:);
        if ((v78 & 1) == 0)
        {
          v67 = &enum case for AttributionCallType.install(_:);
        }

        v85(v81, *v67, v80);
        v87(v82, v81, v80);
        sub_10000ADB4(v84, v83, &qword_1004D84C8, &qword_1003EF148);

        sub_100398838();
        v68 = *(v64 + 5);
        v69 = *(v64 + 6);
        sub_1000035B8(v64 + 2, v68);
        (*(v88 + 16))(v90, v86, v89);
        v92(v90, enum case for IntentMessage.attributionMatch(_:), v91);
        v70 = sub_1003986E8();
        *(v0 + 1016) = v70;
        v71 = swift_task_alloc();
        *(v0 + 1024) = v71;
        v46 = sub_1002717C8(&qword_1004D84D8, &type metadata accessor for AttributionMatchIntent.ReturnType, &protocol conformance descriptor for AttributionMatchIntent.ReturnType);
        *v71 = v0;
        v71[1] = sub_10026C654;
        v43 = *(v0 + 536);
        isUniquelyReferenced_nonNull_native = *(v0 + 488);
        v45 = *(v0 + 464);
        v44 = v70;
        v47 = v68;
        v48 = v69;

        return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(isUniquelyReferenced_nonNull_native, v43, v44, v45, v46, v47, v48);
      }

      v56 = 0;
      v57 = v51 + 4;
      while (1)
      {
        v58 = *v57++;
        v59 = __OFADD__(v56, v58);
        v56 += v58;
        if (v59)
        {
          break;
        }

        if (!--v55)
        {
          goto LABEL_26;
        }
      }
    }

    __break(1u);
    return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(isUniquelyReferenced_nonNull_native, v43, v44, v45, v46, v47, v48);
  }

  v24 = *(v0 + 728);

  v20(v23, v24);
  sub_100270468(*(v0 + 776), type metadata accessor for AttributionSignposts);
  v25 = sub_1003993E8();
  v26 = sub_1003995A8();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v26, v25, "Caught error in business logic %{public}@", v27, 0xCu);
    sub_1001ED244(v28, &qword_1004D8610, &qword_1003C9240);
  }

  v31 = *(v0 + 312);
  v30 = *(v0 + 320);
  v32 = *(v0 + 240);

  v93 = 0;
  v94 = 0xE000000000000000;
  sub_1003996F8(33);
  v33 = v94;
  *(v0 + 128) = v93;
  *(v0 + 136) = v33;
  v97._countAndFlagsBits = 0xD00000000000001FLL;
  v97._object = 0x800000010042FFB0;
  sub_100399068(v97);
  *(v0 + 176) = v14;
  sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
  sub_1003997C8();
  v34 = sub_100398F28();

  v35 = sub_100398F28();
  CreateDiagnosticReport();

  sub_100397738();
  *(v30 + *(v31 + 20)) = _swiftEmptyArrayStorage;
  sub_10024BCE8();
  v36 = swift_allocError();
  *v37 = 5601;
  v32(v30, v36);

  sub_100270468(v30, type metadata accessor for ComputedAttributions);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10026C0FC()
{
  v1 = v0[90];
  (*(v0[85] + 8))(v0[86], v0[84]);
  sub_10027C30C();
  sub_100270468(v1, type metadata accessor for SignpostInterval);
  v2 = v0[122];
  sub_100270468(v0[97], type metadata accessor for AttributionSignposts);
  v3 = sub_1003993E8();
  v4 = sub_1003995A8();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v4, v3, "Caught error in business logic %{public}@", v5, 0xCu);
    sub_1001ED244(v6, &qword_1004D8610, &qword_1003C9240);
  }

  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[30];

  sub_1003996F8(33);
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v18._countAndFlagsBits = 0xD00000000000001FLL;
  v18._object = 0x800000010042FFB0;
  sub_100399068(v18);
  v0[22] = v2;
  sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
  sub_1003997C8();
  v11 = sub_100398F28();

  v12 = sub_100398F28();
  CreateDiagnosticReport();

  sub_100397738();
  *(v8 + *(v9 + 20)) = _swiftEmptyArrayStorage;
  sub_10024BCE8();
  v13 = swift_allocError();
  *v14 = 5601;
  v10(v8, v13);

  sub_100270468(v8, type metadata accessor for ComputedAttributions);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10026C654()
{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  (*(v2 + 984))(*(v2 + 536), *(v2 + 512));

  if (v0)
  {
    v3 = sub_10026D908;
  }

  else
  {
    v3 = sub_10026C7E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026C7E0()
{
  v147 = v0;
  (*(*(v0 + 472) + 32))(*(v0 + 496), *(v0 + 488), *(v0 + 464));
  v1 = sub_1003993D8();
  v2 = sub_1003995A8();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 496);
    v4 = *(v0 + 472);
    v5 = *(v0 + 480);
    v6 = *(v0 + 464);
    v7 = *(v0 + 424);
    v143 = *(v0 + 432);
    v138 = *(v0 + 416);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v145 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    (*(v4 + 16))(v5, v3, v6);
    v10 = sub_100398FB8();
    v12 = sub_100005700(v10, v11, &v145);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v1, "%s", v8, 0xCu);
    sub_100003894(v9);

    (*(v7 + 8))(v143, v138);
  }

  else
  {
    v14 = *(v0 + 424);
    v13 = *(v0 + 432);
    v15 = *(v0 + 416);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 712);
  v18 = *(v0 + 496);
  v17 = *(v0 + 504);
  v19 = *(v0 + 464);
  v20 = *(v0 + 472);
  v21 = *(v0 + 456);
  swift_beginAccess();
  (*(v20 + 16))(v17, v18, v19);
  v22 = *(v20 + 8);
  *(v0 + 1040) = v22;
  *(v0 + 1048) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v18, v19);
  sub_10027C30C();
  sub_100270468(v16, type metadata accessor for SignpostInterval);
  sub_1001ED244(v21, &qword_1004D84C8, &qword_1003EF148);
  v144 = v22;
  if (sub_1003987D8())
  {
    v23 = *(v0 + 1032);
    v25 = *(v0 + 224);
    v24 = *(v0 + 232);
    v26 = sub_1003987E8();
    v27 = sub_1003987F8();
    sub_1002704C8(v25, v24, v26, v27);
    v139 = v23;
    if (v23)
    {
      v28 = *(v0 + 1000);
      v29 = *(v0 + 760);
      v30 = *(v0 + 728);
      v31 = *(v0 + 504);
      v32 = *(v0 + 464);

      v144(v31, v32);
      v28(v29, v30);
      sub_100270468(*(v0 + 776), type metadata accessor for AttributionSignposts);
      v33 = sub_1003993E8();
      v34 = sub_1003995A8();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138543362;
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&_mh_execute_header, v34, v33, "Caught error in business logic %{public}@", v35, 0xCu);
        sub_1001ED244(v36, &qword_1004D8610, &qword_1003C9240);
      }

      v39 = *(v0 + 312);
      v38 = *(v0 + 320);
      v40 = *(v0 + 240);

      v145 = 0;
      v146 = 0xE000000000000000;
      sub_1003996F8(33);
      v41 = v146;
      *(v0 + 128) = v145;
      *(v0 + 136) = v41;
      v149._countAndFlagsBits = 0xD00000000000001FLL;
      v149._object = 0x800000010042FFB0;
      sub_100399068(v149);
      *(v0 + 176) = v139;
      sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
      sub_1003997C8();
      v42 = sub_100398F28();

      v43 = sub_100398F28();
      CreateDiagnosticReport();

      sub_100397738();
      *(v38 + *(v39 + 20)) = _swiftEmptyArrayStorage;
      sub_10024BCE8();
      v44 = swift_allocError();
      *v45 = 5601;
      v40(v38, v44);

      v46 = type metadata accessor for ComputedAttributions;
      v47 = v38;
      goto LABEL_13;
    }

    v136 = *(v0 + 936);
    v121 = *(v0 + 904);
    v119 = *(v0 + 896);
    v101 = *(v0 + 880);
    v102 = *(v0 + 888);
    v100 = *(v0 + 864);
    v99 = *(v0 + 856);
    v96 = *(v0 + 840);
    v97 = *(v0 + 800);
    v98 = *(v0 + 784);
    v84 = *(v0 + 704);
    v94 = *(v0 + 648);
    v95 = *(v0 + 616);
    v113 = *(v0 + 576);
    v108 = *(v0 + 552);
    v110 = *(v0 + 568);
    v130 = *(v0 + 528);
    v133 = *(v0 + 512);
    v105 = *(v0 + 440);
    v115 = *(v0 + 448);
    v117 = *(v0 + 376);
    v124 = *(v0 + 368);
    v127 = *(v0 + 360);
    v103 = *(v0 + 1088);
    v85 = *(v0 + 232);
    v86 = *(v0 + 208);

    sub_100398808();
    AttributionSignposts.postMatch()(v84);
    v87 = sub_1003993D8();
    v88 = sub_1003995A8();
    sub_100398B98(v87, &_mh_execute_header, v88, "sending postmatch", 17, 2, _swiftEmptyArrayStorage);

    v96(v94, v85, v95);
    v100(v97, &v86[v99], v98);
    *(v0 + 160) = v101;
    *(v0 + 168) = v102;

    sub_1003990F8();
    sub_1003981A8();
    v89 = &enum case for AttributionCallType.open(_:);
    if ((v103 & 1) == 0)
    {
      v89 = &enum case for AttributionCallType.install(_:);
    }

    v119(v110, *v89, v108);
    v121(v113, v110, v108);
    sub_10000ADB4(v105, v115, &qword_1004D84C8, &qword_1003EF148);
    sub_100398998();
    v90 = *(v86 + 5);
    v91 = *(v86 + 6);
    sub_1000035B8(v86 + 2, v90);
    (*(v124 + 16))(v130, v117, v127);
    v136(v130, enum case for IntentMessage.attributionPostMatch(_:), v133);
    v92 = sub_1003986E8();
    *(v0 + 1056) = v92;
    v93 = swift_task_alloc();
    *(v0 + 1064) = v93;
    v63 = sub_1002717C8(&qword_1004D84E8, &type metadata accessor for AttributionPostMatchIntent.ReturnType, &protocol conformance descriptor for AttributionPostMatchIntent.ReturnType);
    *v93 = v0;
    v93[1] = sub_10026DE94;
    v60 = *(v0 + 528);
    v59 = *(v0 + 400);
    v62 = *(v0 + 384);
    v61 = v92;
    v64 = v90;
    v65 = v91;

    return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v59, v60, v61, v62, v63, v64, v65);
  }

  v48 = *(v0 + 328);
  v49 = *(v0 + 336);
  v50 = *(v0 + 304);
  sub_100398818();
  if ((*(v49 + 48))(v50, 1, v48) == 1)
  {
    v134 = *(v0 + 1000);
    v140 = *(v0 + 776);
    v128 = *(v0 + 728);
    v131 = *(v0 + 760);
    v125 = *(v0 + 504);
    v51 = *(v0 + 464);
    v53 = *(v0 + 312);
    v52 = *(v0 + 320);
    v54 = *(v0 + 240);
    sub_1001ED244(*(v0 + 304), &qword_1004D84C0, &qword_1003EF140);
    v55 = sub_1003993E8();
    v56 = sub_1003995A8();
    sub_100398B98(v55, &_mh_execute_header, v56, "Expected candidate passthrough data for no match", 48, 2, _swiftEmptyArrayStorage);

    sub_100397738();
    *(v52 + *(v53 + 20)) = _swiftEmptyArrayStorage;
    sub_10024BCE8();
    v57 = swift_allocError();
    *v58 = 5602;
    v54(v52, v57);

    sub_100270468(v52, type metadata accessor for ComputedAttributions);
    v144(v125, v51);
    v134(v131, v128);
    v46 = type metadata accessor for AttributionSignposts;
    v47 = v140;
  }

  else
  {
    (*(*(v0 + 336) + 32))(*(v0 + 344), *(v0 + 304), *(v0 + 328));
    sub_100398AE8();
    sub_100398AC8();
    sub_1002717C8(&qword_1004D62C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v59 = sub_100398EF8();
    if ((v59 & 1) == 0)
    {
      __break(1u);
      return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v59, v60, v61, v62, v63, v64, v65);
    }

    v137 = *(v0 + 1000);
    v116 = *(v0 + 888);
    v111 = *(v0 + 1080);
    v112 = *(v0 + 880);
    v141 = *(v0 + 776);
    v132 = *(v0 + 728);
    v135 = *(v0 + 760);
    v66 = *(v0 + 632);
    v67 = *(v0 + 624);
    v68 = *(v0 + 616);
    v126 = *(v0 + 464);
    v129 = *(v0 + 504);
    v106 = *(v0 + 344);
    v122 = *(v0 + 336);
    v123 = *(v0 + 328);
    v109 = *(v0 + 320);
    v120 = *(v0 + 312);
    v142 = *(v0 + 296);
    v114 = *(v0 + 288);
    v69 = *(v0 + 272);
    v104 = *(v0 + 280);
    v71 = *(v0 + 256);
    v70 = *(v0 + 264);
    v118 = *(v0 + 240);
    v107 = *(v0 + 224);
    v72 = *(v67 + 32);
    v72(v69, *(v0 + 640), v68);
    v72(v69 + *(v71 + 48), v66, v68);
    sub_10000ADB4(v69, v70, &unk_1004D70E0, &unk_1003ECE20);
    v73 = *(v71 + 48);
    v72(v142, v70, v68);
    v74 = *(v67 + 8);
    v74(v70 + v73, v68);
    sub_100270394(v69, v70);
    v75 = *(v71 + 48);
    v76 = sub_1001E27A8(&qword_1004D6250, &unk_1003EF180);
    v72(v142 + *(v76 + 36), v70 + v75, v68);
    v74(v70, v68);
    *(v0 + 200) = sub_10026F370();
    sub_1001E27A8(&qword_1004D5D38, &unk_1003EB440);
    sub_100397A08();
    type metadata accessor for AttributionCandidate.Provenance(0);
    swift_storeEnumTagMultiPayload();
    v77 = (v142 + *(v104 + 24));
    v78 = *(type metadata accessor for AppSpecifier(0) + 20);
    v79 = sub_1003981B8();
    (*(*(v79 - 8) + 16))(&v77[v78], v107 + v111, v79);
    *v77 = v112;
    *(v77 + 1) = v116;

    sub_100397738();
    sub_1001E27A8(&qword_1004D84E0, &qword_1003EF190);
    v80 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1003C9930;
    sub_100270404(v142, v81 + v80);
    *(v109 + *(v120 + 20)) = v81;
    v118(v109, 0);
    sub_100270468(v109, type metadata accessor for ComputedAttributions);
    sub_100270468(v142, type metadata accessor for AttributionCandidate);
    (*(v122 + 8))(v106, v123);
    v144(v129, v126);
    v137(v135, v132);
    v46 = type metadata accessor for AttributionSignposts;
    v47 = v141;
  }

LABEL_13:
  sub_100270468(v47, v46);

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_10026D908()
{
  v1 = v0[125];
  v2 = v0[95];
  v3 = v0[91];
  v4 = v0[89];
  v5 = v0[57];
  (*(v0[53] + 8))(v0[54], v0[52]);
  sub_10027C30C();
  sub_100270468(v4, type metadata accessor for SignpostInterval);
  sub_1001ED244(v5, &qword_1004D84C8, &qword_1003EF148);
  v1(v2, v3);
  v6 = v0[129];
  sub_100270468(v0[97], type metadata accessor for AttributionSignposts);
  v7 = sub_1003993E8();
  v8 = sub_1003995A8();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v8, v7, "Caught error in business logic %{public}@", v9, 0xCu);
    sub_1001ED244(v10, &qword_1004D8610, &qword_1003C9240);
  }

  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[30];

  sub_1003996F8(33);
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD00000000000001FLL;
  v22._object = 0x800000010042FFB0;
  sub_100399068(v22);
  v0[22] = v6;
  sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
  sub_1003997C8();
  v15 = sub_100398F28();

  v16 = sub_100398F28();
  CreateDiagnosticReport();

  sub_100397738();
  *(v12 + *(v13 + 20)) = _swiftEmptyArrayStorage;
  sub_10024BCE8();
  v17 = swift_allocError();
  *v18 = 5601;
  v14(v12, v17);

  sub_100270468(v12, type metadata accessor for ComputedAttributions);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10026DE94()
{
  v2 = *v1;
  *(*v1 + 1072) = v0;

  (*(v2 + 984))(*(v2 + 528), *(v2 + 512));

  if (v0)
  {
    v3 = sub_10026E6C4;
  }

  else
  {
    v3 = sub_10026E020;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026E020()
{
  v49 = v0;
  v1 = v0[88];
  v44 = v0[87];
  v42 = v0[55];
  v2 = v0[46];
  v40 = v0[47];
  v3 = v0[45];
  (*(v0[49] + 32))(v0[51], v0[50], v0[48]);
  v4 = sub_1003993D8();
  v5 = sub_1003995A8();
  v6 = _swiftEmptyArrayStorage;
  sub_100398B98(v4, &_mh_execute_header, v5, "got postmatch", 13, 2, _swiftEmptyArrayStorage);

  (*(v2 + 8))(v40, v3);
  sub_10027C30C();
  sub_100270468(v1, type metadata accessor for SignpostInterval);
  sub_1001ED244(v42, &qword_1004D84C8, &qword_1003EF148);
  v7 = sub_100398978();
  AttributionSignposts.processPostMatch()(v44);
  v48[0] = _swiftEmptyArrayStorage;
  v8 = sub_1003993D8();
  v9 = sub_1003995A8();
  sub_100398B98(v8, &_mh_execute_header, v9, "building candidates", 19, 2, _swiftEmptyArrayStorage);

  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v0[42];
  v13 = *(v11 + 16);
  v11 += 16;
  v12 = v13;
  v46 = (v11 - 8);
  v14 = v0[134];
  v15 = v0[44];
  v16 = v0[28];
  v17 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v18 = *(v11 + 56);
  v13(v15, v7 + v17, v0[41]);
  sub_10026F8B4(v15, v16, v48);
  if (v14)
  {
    v19 = v0[44];
    v20 = v0[41];

    v21 = *v46;

    return v21(v19, v20);
  }

  v45 = v18;
  v23 = *v46;
  result = (*v46)(v0[44], v0[41]);
  if (v10 == 1)
  {
LABEL_10:
    v6 = v48[0];
LABEL_11:
    v41 = v0[130];
    v43 = v0[125];
    v47 = v0[97];
    v38 = v0[91];
    v39 = v0[95];
    v28 = v0[87];
    v36 = v0[58];
    v37 = v0[63];
    v35 = v0[51];
    v29 = v0[48];
    v30 = v0[49];
    v32 = v0[39];
    v31 = v0[40];
    v33 = v0[30];

    sub_10027C30C();
    sub_100270468(v28, type metadata accessor for SignpostInterval);
    sub_100397738();
    *(v31 + *(v32 + 20)) = v6;
    v33(v31, 0);
    sub_100270468(v31, type metadata accessor for ComputedAttributions);
    (*(v30 + 8))(v35, v29);
    v41(v37, v36);
    v43(v39, v38);
    sub_100270468(v47, type metadata accessor for AttributionSignposts);

    v34 = v0[1];

    return v34();
  }

  v24 = v7 + v45 + v17;
  v25 = 1;
  while (v25 < *(v7 + 16))
  {
    v26 = v0[44];
    v27 = v0[28];
    v12(v26, v24, v0[41]);
    sub_10026F8B4(v26, v27, v48);
    ++v25;
    result = v23(v0[44], v0[41]);
    v24 += v45;
    if (v10 == v25)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10026E6C4()
{
  v1 = v0[130];
  v2 = v0[125];
  v3 = v0[95];
  v4 = v0[91];
  v5 = v0[88];
  v6 = v0[63];
  v7 = v0[58];
  v8 = v0[55];
  (*(v0[46] + 8))(v0[47], v0[45]);
  sub_10027C30C();
  sub_100270468(v5, type metadata accessor for SignpostInterval);
  sub_1001ED244(v8, &qword_1004D84C8, &qword_1003EF148);
  v1(v6, v7);
  v2(v3, v4);
  v9 = v0[134];
  sub_100270468(v0[97], type metadata accessor for AttributionSignposts);
  v10 = sub_1003993E8();
  v11 = sub_1003995A8();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v11, v10, "Caught error in business logic %{public}@", v12, 0xCu);
    sub_1001ED244(v13, &qword_1004D8610, &qword_1003C9240);
  }

  v16 = v0[39];
  v15 = v0[40];
  v17 = v0[30];

  sub_1003996F8(33);
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  v25._object = 0x800000010042FFB0;
  sub_100399068(v25);
  v0[22] = v9;
  sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
  sub_1003997C8();
  v18 = sub_100398F28();

  v19 = sub_100398F28();
  CreateDiagnosticReport();

  sub_100397738();
  *(v15 + *(v16 + 20)) = _swiftEmptyArrayStorage;
  sub_10024BCE8();
  v20 = swift_allocError();
  *v21 = 5601;
  v17(v15, v20);

  sub_100270468(v15, type metadata accessor for ComputedAttributions);

  v22 = v0[1];

  return v22();
}

void *sub_10026EC74(uint64_t a1)
{
  v3 = type metadata accessor for SignpostInterval(0);
  __chkstk_darwin(v3 - 8);
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributionSignposts.processPreMatch()(v39);
  v5 = sub_1003993D8();
  v6 = sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v38[1] = "";
  v38[3] = "$_supportedInstallSignals";
  v38[2] = v6;
  v7 = sub_1003995A8();
  v8 = _swiftEmptyArrayStorage;
  sub_100398B98(v5, &_mh_execute_header, v7, "processing prematch", 19, 2, _swiftEmptyArrayStorage);

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 40);
    while (1)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      sub_1000035B8((v40 + 56), *(v40 + 80));
      sub_100398748();

      sub_100397D08();
      if (v1)
      {
        break;
      }

      sub_100004A68(&v41, v42);
      v13 = sub_1000035B8(v42, v42[3]);
      __chkstk_darwin(v13);
      (*(v15 + 16))(v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v16 = sub_100399208();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10028122C(0, v8[2] + 1, 1, v8);
      }

      v18 = v8[2];
      v17 = v8[3];
      if (v18 >= v17 >> 1)
      {
        v8 = sub_10028122C((v17 > 1), v18 + 1, 1, v8);
      }

      v8[2] = v18 + 1;
      v8[v18 + 4] = v16;
      sub_100003894(v42);
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v27 = sub_1003993E8();
    v28 = sub_1003995A8();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v28, v27, "failed to query metrics from DB %{public}@", v29, 0xCu);
      sub_1001ED244(v30, &qword_1004D8610, &qword_1003C9240);
    }

    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    sub_1003996F8(34);
    v43._countAndFlagsBits = 0xD000000000000020;
    v43._object = 0x800000010042FF70;
    sub_100399068(v43);
    v42[7] = v1;
    sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
    sub_1003997C8();
    v32 = sub_100398F28();

    sub_1001E27A8(&qword_1004D7920, &qword_1003ED8C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *&v41 = 0x7972657571;
    *(&v41 + 1) = 0xE500000000000000;
    sub_1003996A8();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v12;
    *(inited + 80) = v11;
    sub_10025EFB4(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &unk_1004D7E90, &qword_1003ED8C8);
    isa = sub_100398E48().super.isa;

    v35 = sub_100398F28();
    CreateDiagnosticReport();

    swift_willThrow();
  }

  else
  {
LABEL_9:
    v19 = sub_1003993D8();
    v20 = sub_1003995A8();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42[0] = v22;
      *v21 = 136315138;

      sub_1001E27A8(&qword_1004D84B8, &qword_1003EFB90);
      v23 = sub_1003991A8();
      v25 = v24;

      v26 = sub_100005700(v23, v25, v42);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v19, "found events %s", v21, 0xCu);
      sub_100003894(v22);
    }
  }

  v36 = v39;
  sub_10027C30C();
  sub_100270468(v36, type metadata accessor for SignpostInterval);
  return v8;
}

unint64_t sub_10026F370()
{
  v0 = sub_100398FA8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100398AD8();
  sub_100398F98();
  v4 = sub_100398F68();
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    v7 = sub_100398F28();
    v8 = sub_100398F28();
    CreateDiagnosticReport();

    v9 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v10 = sub_1003995A8();
    sub_100398B98(v9, &_mh_execute_header, v10, "Error unwrapping passthrough data", 33, 2, _swiftEmptyArrayStorage);

    return sub_1002142A8(_swiftEmptyArrayStorage);
  }

  v11 = objc_opt_self();
  isa = sub_100397538().super.isa;
  v30[0] = 0;
  v13 = [v11 JSONObjectWithData:isa options:0 error:v30];

  if (!v13)
  {
    v16 = v30[0];
    sub_1003973E8();

    swift_willThrow();
    sub_1001DDE50(v4, v6);
    v17 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v18 = sub_1003995A8();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = sub_100399AC8();
      v23 = sub_100005700(v21, v22, v30);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v18, v17, "Error serializing the candidate properties to json dictionary %s", v19, 0xCu);
      sub_100003894(v20);
    }

    else
    {
    }

    return sub_1002142A8(_swiftEmptyArrayStorage);
  }

  v14 = v30[0];
  sub_100399648();
  swift_unknownObjectRelease();
  sub_1001E27A8(&qword_1004D5D38, &unk_1003EB440);
  if (swift_dynamicCast())
  {
    sub_1001DDE50(v4, v6);
    return v29[1];
  }

  else
  {
    v24 = sub_100398F28();
    v25 = sub_100398F28();
    CreateDiagnosticReport();

    v26 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v27 = sub_1003995A8();
    sub_100398B98(v26, &_mh_execute_header, v27, "Nothing in the candidate to serialize", 37, 2, _swiftEmptyArrayStorage);

    v28 = sub_1002142A8(_swiftEmptyArrayStorage);
    sub_1001DDE50(v4, v6);
    return v28;
  }
}

uint64_t sub_10026F8B4(uint64_t a1, char *a2, uint64_t *a3)
{
  v58 = a2;
  v59 = a3;
  v53 = sub_1001E27A8(&unk_1004D70E0, &unk_1003ECE20);
  v4 = __chkstk_darwin(v53);
  v54 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = v50 - v6;
  v55 = type metadata accessor for AttributionCandidate(0);
  v60 = *(v55 - 8);
  v7 = __chkstk_darwin(v55);
  v57 = (v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v56 = v50 - v9;
  v10 = sub_100397748();
  v11 = *(v10 - 1);
  v12 = __chkstk_darwin(v10);
  v64 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v50 - v14;
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1003996F8(122);
  v65._countAndFlagsBits = 0xD00000000000001BLL;
  v65._object = 0x8000000100430060;
  sub_100399068(v65);
  v66._countAndFlagsBits = sub_100398AD8();
  sub_100399068(v66);

  v67._countAndFlagsBits = 0xD00000000000001ELL;
  v67._object = 0x8000000100430080;
  sub_100399068(v67);
  sub_100398AE8();
  v61 = &type metadata accessor for Date;
  sub_1002717C8(&qword_1004D5AC0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v68._countAndFlagsBits = sub_100399998();
  sub_100399068(v68);

  v51 = v11;
  v17 = *(v11 + 8);
  v16 = (v11 + 8);
  v17(v15, v10);
  v69._countAndFlagsBits = 0xD00000000000001CLL;
  v69._object = 0x80000001004300A0;
  sub_100399068(v69);
  sub_100398AC8();
  v70._countAndFlagsBits = sub_100399998();
  sub_100399068(v70);

  v50[0] = v17;
  v17(v15, v10);
  v71._countAndFlagsBits = 0xD00000000000001DLL;
  v71._object = 0x80000001004300C0;
  sub_100399068(v71);
  v18 = sub_100398AB8();
  v19 = (v18 & 1) == 0;
  if (v18)
  {
    v20._countAndFlagsBits = 1702195828;
  }

  else
  {
    v20._countAndFlagsBits = 0x65736C6166;
  }

  if (v19)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  v20._object = v21;
  sub_100399068(v20);

  v23 = v62;
  v22 = v63;
  v24 = sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v25 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1003C9930;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100206BA0();
  *(v26 + 32) = v23;
  *(v26 + 40) = v22;
  v27 = v64;
  sub_100398B98(v24, &_mh_execute_header, v25, "%{public}@", 10, 2, v26);

  sub_100398AE8();
  v50[1] = a1;
  sub_100398AC8();
  sub_1002717C8(&qword_1004D62C8, v61, &protocol conformance descriptor for Date);
  if (sub_100398EF8())
  {
    v28 = *(v51 + 32);
    v61 = v16;
    v29 = v52;
    v28(v52, v15, v10);
    v30 = v53;
    v28((v29 + *(v53 + 48)), v27, v10);
    v31 = v54;
    sub_10000ADB4(v29, v54, &unk_1004D70E0, &unk_1003ECE20);
    v32 = *(v30 + 48);
    v15 = v56;
    v28(v56, v31, v10);
    v33 = v50[0];
    (v50[0])(v31 + v32, v10);
    sub_100270394(v29, v31);
    v34 = *(v30 + 48);
    v35 = sub_1001E27A8(&qword_1004D6250, &unk_1003EF180);
    v28(&v15[*(v35 + 36)], (v31 + v34), v10);
    v33(v31, v10);
    v36 = v55;
    v62 = sub_10026F370();
    sub_1001E27A8(&qword_1004D5D38, &unk_1003EB440);
    sub_100397A08();
    type metadata accessor for AttributionCandidate.Provenance(0);
    swift_storeEnumTagMultiPayload();
    v37 = v58;
    v38 = *v58;
    v39 = *(v58 + 1);
    v40 = *(type metadata accessor for ProductionAppSpecifier(0) + 20);
    v41 = &v15[*(v36 + 24)];
    v42 = *(type metadata accessor for AppSpecifier(0) + 20);
    v43 = sub_1003981B8();
    (*(*(v43 - 8) + 16))(&v41[v42], &v37[v40], v43);
    *v41 = v38;
    *(v41 + 1) = v39;
    v16 = v57;
    sub_100270404(v15, v57);
    v10 = v59;
    v27 = *v59;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v27;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_100281388(0, *(v27 + 2) + 1, 1, v27);
  *v10 = v27;
LABEL_9:
  v45 = v60;
  v47 = *(v27 + 2);
  v46 = *(v27 + 3);
  if (v47 >= v46 >> 1)
  {
    *v10 = sub_100281388((v46 > 1), v47 + 1, 1, v27);
  }

  sub_100270468(v15, type metadata accessor for AttributionCandidate);
  v48 = *v10;
  *(v48 + 16) = v47 + 1;
  return sub_100271810(v16, v48 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v47);
}

uint64_t sub_100270044()
{
  sub_100003894((v0 + 16));
  sub_100003894((v0 + 56));
  v1 = OBJC_IVAR____TtC11Attribution19JetEngineAttributor_config;
  v2 = sub_100398728();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JetEngineAttributor(uint64_t a1)
{
  result = qword_1004D83D0;
  if (!qword_1004D83D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100270158(uint64_t a1)
{
  result = sub_100398728();
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

void sub_1002701FC(uint64_t a1)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isRunningTests];

  if ((v3 & 1) == 0)
  {
    v4 = objc_opt_self();
    v5 = sub_100398F28();
    sub_1001E27A8(&unk_1004D5DB0, &unk_1003ECC30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *(inited + 32) = 0x73746E657665;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    sub_1002143B8(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &qword_1004D5A28, &unk_1003EB1B0);
    sub_100004218(0, &qword_1004D5DC0, NSObject_ptr);
    isa = sub_100398E48().super.isa;

    [v4 sendEvent:v5 customPayload:isa];
  }
}

uint64_t sub_100270394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&unk_1004D70E0, &unk_1003ECE20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100270404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100270468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1002704C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v137 = sub_1003989C8();
  v127 = *(v137 - 8);
  v6 = __chkstk_darwin(v137);
  v136 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v135 = &v101 - v8;
  v9 = sub_100398858();
  __chkstk_darwin(v9 - 8);
  v123 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100398778();
  __chkstk_darwin(v11 - 8);
  v122 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100397748();
  __chkstk_darwin(v13 - 8);
  v121 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_100398B48();
  v126 = *(v134 - 8);
  v15 = __chkstk_darwin(v134);
  v120 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v133 = &v101 - v17;
  *&v140 = sub_1003987C8();
  v128 = *(v140 - 8);
  v18 = __chkstk_darwin(v140);
  v119 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v139 = &v101 - v20;
  v21 = type metadata accessor for SignpostInterval(0);
  __chkstk_darwin(v21 - 8);
  v108 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributionSignposts.processMatch()(v108);
  v144 = _swiftEmptyArrayStorage;
  v23 = sub_1003993D8();
  v24 = sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v25 = sub_1003995A8();
  v26 = v23;
  v27 = a3;
  sub_100398B98(v26, &_mh_execute_header, v25, "sending query", 13, 2, _swiftEmptyArrayStorage);

  v28 = *(a3 + 16);
  v124 = a4;
  v29 = *(a4 + 16);
  if (v28 == v29)
  {
    v104 = "";
    v105 = v24;
    v106 = "$_supportedInstallSignals";
    swift_beginAccess();
    if (v28)
    {
      v31 = 0;
      v32 = 0;
      v33 = v27 + 32;
      v132 = v128 + 16;
      v114 = v126 + 16;
      v113 = (v127 + 16);
      v111 = (v126 + 8);
      v112 = v127 + 8;
      v115 = (v128 + 8);
      v110 = v127 + 32;
      v34 = _swiftEmptyArrayStorage;
      *&v30 = 136315138;
      v101 = v30;
      v138 = _swiftEmptyArrayStorage;
      v118 = v28;
      v102 = v27 + 32;
      do
      {
        v131 = v34;
        v125 = v31;
        v35 = (v33 + 16 * v31);
        v36 = *v35;
        v37 = v35[1];
        sub_1000035B8((v107 + 56), *(v107 + 80));

        v103._countAndFlagsBits = v36;
        v38 = v109;
        sub_100397D08();
        v109 = v38;
        if (v38)
        {

          v87 = sub_1003993E8();
          v88 = sub_1003995A8();
          v89 = os_log_type_enabled(v88, v87);
          v69 = v108;
          if (v89)
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            *v90 = 138543362;
            swift_errorRetain();
            v92 = _swift_stdlib_bridgeErrorToNSError();
            *(v90 + 4) = v92;
            *v91 = v92;
            _os_log_impl(&_mh_execute_header, v88, v87, "failed to query metrics from DB %{public}@", v90, 0xCu);
            sub_1001ED244(v91, &qword_1004D8610, &qword_1003C9240);
          }

          *&v142[0] = 0;
          *(&v142[0] + 1) = 0xE000000000000000;
          sub_1003996F8(34);
          v145._countAndFlagsBits = 0xD000000000000020;
          v145._object = 0x800000010042FF70;
          sub_100399068(v145);
          v141 = v109;
          sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
          sub_1003997C8();
          v93 = sub_100398F28();

          sub_1001E27A8(&qword_1004D7920, &qword_1003ED8C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1003C9930;
          *&v142[0] = 0x7972657571;
          *(&v142[0] + 1) = 0xE500000000000000;
          sub_1003996A8();
          *(inited + 96) = &type metadata for String;
          *(inited + 72) = v103._countAndFlagsBits;
          *(inited + 80) = v37;
          sub_10025EFB4(inited);
          swift_setDeallocating();
          sub_1001ED244(inited + 32, &unk_1004D7E90, &qword_1003ED8C8);
          isa = sub_100398E48().super.isa;

          v96 = sub_100398F28();
          CreateDiagnosticReport();

          swift_willThrow();
          if (v32)
          {
            sub_100003894(v143);
          }

          goto LABEL_38;
        }

        if (v32)
        {
          sub_100003894(v143);
        }

        sub_100004A68(v142, v143);
        v39 = sub_1000035B8(v143, v143[3]);
        __chkstk_darwin(v39);
        (*(v41 + 16))(&v101 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
        v42 = v140;
        v43 = sub_100399208();
        v144 = v43;

        v44 = sub_1003993D8();
        v45 = sub_1003995A8();
        if (os_log_type_enabled(v45, v44))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v142[0] = v47;
          *v46 = v101;

          v48 = sub_1003991A8();
          v50 = v49;

          v51 = sub_100005700(v48, v50, v142);

          *(v46 + 4) = v51;
          v42 = v140;
          _os_log_impl(&_mh_execute_header, v45, v44, "found ad %s", v46, 0xCu);
          sub_100003894(v47);
        }

        v52 = v139;
        v103._object = v37;
        v53 = *(v43 + 16);

        v116 = v53;
        if (v53)
        {
          v55 = 0;
          v56 = v138;
          v117 = v43;
          while (v55 < *(v43 + 16))
          {
            v57 = v43 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
            v58 = *(v128 + 72);
            v131 = v55;
            v59 = *(v128 + 16);
            v59(v52, v57 + v58 * v55, v42);
            sub_1003987A8();
            if (!v60)
            {

              v79 = sub_1003993E8();
              v80 = sub_1003995A8();
              sub_100398B98(v79, &_mh_execute_header, v80, "missing impressionId", 20, 2, _swiftEmptyArrayStorage);

              *&v142[0] = 0;
              *(&v142[0] + 1) = 0xE000000000000000;
              sub_1003996F8(35);

              *&v142[0] = 0xD000000000000021;
              *(&v142[0] + 1) = 0x80000001004301D0;
              sub_100399068(v103);

              v81 = v142[0];
              sub_100271874();
              swift_allocError();
              *v82 = 5101;
              *(v82 + 8) = v81;
              swift_willThrow();
              (*v115)(v52, v42);
              sub_100003894(v143);
LABEL_30:

              v69 = v108;
              goto LABEL_39;
            }

            result = sub_100398788();
            if (!v61)
            {

              v83 = sub_1003993E8();
              v84 = sub_1003995A8();
              sub_100398B98(v83, &_mh_execute_header, v84, "missing metaData", 16, 2, _swiftEmptyArrayStorage);

              *&v142[0] = 0;
              *(&v142[0] + 1) = 0xE000000000000000;
              sub_1003996F8(31);

              *&v142[0] = 0xD00000000000001DLL;
              *(&v142[0] + 1) = 0x8000000100430220;
              sub_100399068(v103);

              v85 = v142[0];
              sub_100271874();
              swift_allocError();
              *v86 = 5102;
              *(v86 + 8) = v85;
              swift_willThrow();
              (*v115)(v139, v140);
              sub_100003894(v143);
              goto LABEL_30;
            }

            if (v125 >= v118)
            {
              goto LABEL_41;
            }

            v129 = result;
            v130 = v59;
            v62 = v126;

            sub_100398B38();
            v138 = v56;
            sub_100398B28();
            sub_100398B18();
            v63 = v133;
            v56 = v138;
            sub_100398B08();
            (*(v62 + 16))(v120, v63, v134);
            v130(v119, v139, v140);
            v64 = v135;
            sub_1003989B8();
            (*v113)(v136, v64, v137);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_100281360(0, v56[2] + 1, 1, v56);
            }

            v66 = v56[2];
            v65 = v56[3];
            v52 = v139;
            v42 = v140;
            if (v66 >= v65 >> 1)
            {
              v56 = sub_100281360((v65 > 1), v66 + 1, 1, v56);
            }

            v55 = v131 + 1;
            v67 = v127;
            v68 = v137;
            (*(v127 + 8))(v135, v137);
            (*v111)(v133, v134);
            (*v115)(v52, v42);
            v56[2] = v66 + 1;
            result = (*(v67 + 32))(v56 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v66, v136, v68);
            v43 = v117;
            if (v116 == v55)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
          return result;
        }

        v56 = v138;
LABEL_22:
        v138 = v56;
        v31 = v125 + 1;

        v32 = 1;
        v34 = v43;
        v28 = v118;
        v33 = v102;
      }

      while (v31 != v118);
      v69 = v108;
      if (v138[2] != v118)
      {
        goto LABEL_36;
      }

      sub_100003894(v143);
      v70 = v138;
      goto LABEL_27;
    }

    v70 = _swiftEmptyArrayStorage;
    v69 = v108;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_27:

      sub_10027C30C();
      sub_100270468(v69, type metadata accessor for SignpostInterval);
      return v70;
    }

LABEL_36:

    v97 = sub_1003993E8();
    v98 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1003EB210;
    *(v99 + 56) = &type metadata for Int;
    *(v99 + 64) = &protocol witness table for Int;
    *(v99 + 32) = v28;
    *(v99 + 96) = &type metadata for Int;
    *(v99 + 104) = &protocol witness table for Int;
    *(v99 + 72) = v28;
    sub_100398B98(v97, &_mh_execute_header, v98, "expected numbers of ads to match candidates - ads:%{public}d candidates:%{public}d", 82, 2, v99);

    sub_100271874();
    swift_allocError();
    *v100 = xmmword_1003EF0B0;
    *(v100 + 16) = 0x8000000100430180;
    swift_willThrow();
    if (v28)
    {
      sub_100003894(v143);
    }

LABEL_38:
  }

  else
  {
    v71 = sub_1003993E8();
    v72 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v73 = swift_allocObject();
    v140 = xmmword_1003EB210;
    *(v73 + 16) = xmmword_1003EB210;
    *(v73 + 56) = &type metadata for Int;
    *(v73 + 64) = &protocol witness table for Int;
    *(v73 + 32) = v28;
    *(v73 + 96) = &type metadata for Int;
    *(v73 + 104) = &protocol witness table for Int;
    *(v73 + 72) = v29;
    sub_100398B98(v71, &_mh_execute_header, v72, "expected queries to match - queries:%{public}d candidates:%{public}d", 68, 2, v73);

    v74 = sub_100398F28();
    sub_1001E27A8(&qword_1004D7920, &qword_1003ED8C0);
    v75 = swift_initStackObject();
    *(v75 + 16) = v140;
    *&v142[0] = 0x7972657571;
    *(&v142[0] + 1) = 0xE500000000000000;
    sub_1003996A8();
    *(v75 + 96) = &type metadata for Int;
    *(v75 + 72) = v28;
    *&v142[0] = 0x74616469646E6163;
    *(&v142[0] + 1) = 0xEA00000000007365;
    sub_1003996A8();
    *(v75 + 168) = &type metadata for Int;
    *(v75 + 144) = v29;
    sub_10025EFB4(v75);
    swift_setDeallocating();
    sub_1001E27A8(&unk_1004D7E90, &qword_1003ED8C8);
    swift_arrayDestroy();
    v76 = sub_100398E48().super.isa;

    v77 = sub_100398F28();
    CreateDiagnosticReport();

    sub_100271874();
    swift_allocError();
    *v78 = xmmword_1003EF0A0;
    *(v78 + 16) = 0x8000000100430180;
    swift_willThrow();
    v69 = v108;
  }

LABEL_39:
  sub_10027C30C();
  return sub_100270468(v69, type metadata accessor for SignpostInterval);
}

uint64_t sub_1002717C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100271810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionCandidate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100271874()
{
  result = qword_1004D84F8;
  if (!qword_1004D84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D84F8);
  }

  return result;
}

uint64_t sub_1002718C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100398FA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100398F98();
  v6 = sub_100398F68();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    v9 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v10 = sub_1003995A8();
    sub_100398B98(v9, &_mh_execute_header, v10, "Can't convert conversion metric json string to data.", 52, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v11 = objc_opt_self();
    isa = sub_100397538().super.isa;
    v27[0] = 0;
    v13 = [v11 JSONObjectWithData:isa options:0 error:v27];

    if (v13)
    {
      v14 = v27[0];
      sub_100399648();
      swift_unknownObjectRelease();
      sub_1001E27A8(&qword_1004D5E00, &qword_1003EAF20);
      if (swift_dynamicCast())
      {
        sub_1001DDE50(v6, v8);
        return v26[1];
      }

      v24 = sub_1003993E8();
      sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
      v25 = sub_1003995A8();
      sub_100398B98(v24, &_mh_execute_header, v25, "Conversion metric has unsupported type.", 39, 2, _swiftEmptyArrayStorage);

      sub_1001DDE50(v6, v8);
    }

    else
    {
      v16 = v27[0];
      sub_1003973E8();

      swift_willThrow();
      v17 = sub_1003993E8();
      sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
      v18 = sub_1003995A8();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v27[0] = v20;
        *v19 = 136446210;
        swift_getErrorValue();
        v21 = sub_100399AC8();
        v23 = sub_100005700(v21, v22, v27);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v18, v17, "Can't deserialize conversion metric: %{public}s.", v19, 0xCu);
        sub_100003894(v20);

        sub_1001DDE50(v6, v8);
      }

      else
      {
        sub_1001DDE50(v6, v8);
      }
    }
  }

  return 0;
}

uint64_t sub_100271D68(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v21 = a3;
  v7 = sub_100397748();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100398BD8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4 + OBJC_IVAR____TtC11Attribution19ConversionProcessor_conversionSignposts;
  v16 = type metadata accessor for ConversionSignposts(0);
  (*(v12 + 16))(v14, v15 + *(v16 + 20), v11);
  sub_100397DF8();
  swift_allocObject();
  sub_100397DE8();
  sub_1003983A8();
  sub_100398358();
  sub_1003985B8();
  swift_allocObject();

  v17 = sub_1003985A8();
  type metadata accessor for OnDeviceConversionTransmitter();
  v18 = swift_allocObject();
  sub_100397738();
  sub_100275748(a1, v17, v18, v10, a2, v21, v4);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100271FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(sub_100271FF0, 0, 0);
}

uint64_t sub_100271FF0()
{
  v1 = *sub_1000035B8(*(v0 + 40), *(*(v0 + 40) + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1002720B0;
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_1002761B0(v4, v3, v1, v5);
}

uint64_t sub_1002720B0()
{

  return _swift_task_switch(sub_1002721AC, 0, 0);
}

uint64_t sub_1002721AC()
{
  (*(v0 + 48))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100272210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100398628();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1003989E8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_100398668();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_100398A08();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for SignpostInterval(0);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10027242C, 0, 0);
}

uint64_t sub_10027242C()
{
  v1 = v0[19];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[7];
  v18 = v0[8];
  v19 = v0[17];
  v20 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  sub_100239A5C(v0[20]);
  (*(v4 + 16))(v3, v8, v5);
  sub_1003989F8();
  v9 = v7[3];
  v10 = v7[4];
  sub_1000035B8(v7, v9);
  (*(v2 + 16))(v18, v1, v19);
  (*(v6 + 104))(v18, enum case for IntentMessage.conversionMatchingStep1(_:), v20);
  sub_100398708();
  type metadata accessor for ConversionSignposts(0);
  v11 = sub_1003986E8();
  v0[21] = v11;
  v12 = swift_task_alloc();
  v0[22] = v12;
  v13 = sub_10027717C(&unk_1004D8630, &type metadata accessor for ConversionMatchingStep1Intent.ReturnType, &protocol conformance descriptor for ConversionMatchingStep1Intent.ReturnType);
  *v12 = v0;
  v12[1] = sub_10027260C;
  v14 = v0[12];
  v15 = v0[8];
  v16 = v0[9];

  return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v14, v15, v11, v16, v13, v9, v10);
}

uint64_t sub_10027260C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_100272A94;
  }

  else
  {
    v3 = sub_100272790;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100272790()
{
  v28 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v26 = *(v3 + 32);
  v26(v1, v0[12], v4);
  v5 = sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v6 = sub_1003995A8();
  (*(v3 + 16))(v2, v1, v4);
  v25 = v5;
  v7 = os_log_type_enabled(v6, v5);
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  if (v7)
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v14 = 136380675;
    sub_1003989D8();
    v23 = v10;
    v24 = v8;
    v15 = sub_1003991A8();
    v17 = v16;

    (*(v12 + 8))(v11, v13);
    v18 = sub_100005700(v15, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v25, "Completed step 1. Got the query: %{private}s", v14, 0xCu);
    sub_100003894(v22);

    (*(v9 + 8))(v24, v23);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[20];
  v26(v0[2], v0[13], v0[9]);
  sub_10027C30C();
  sub_1002609D4(v19, type metadata accessor for SignpostInterval);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100272A94(uint64_t a1)
{
  v2 = sub_1003993E8();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v3 = sub_1003995A8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v3, v2, "Step 1 failed: %{public}@", v4, 0xCu);
    sub_1001ED244(v5, &qword_1004D8610, &qword_1003C9240);
  }

  v8 = v1[19];
  v7 = v1[20];
  v9 = v1[17];
  v10 = v1[18];

  sub_1002756F4();
  swift_allocError();
  *v11 = 3;
  swift_willThrow();

  (*(v10 + 8))(v8, v9);
  sub_10027C30C();
  sub_1002609D4(v7, type metadata accessor for SignpostInterval);

  v12 = v1[1];

  return v12();
}

uint64_t sub_100272CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_100398628();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_100398A38();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = sub_100398668();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = sub_100398A58();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  type metadata accessor for SignpostInterval(0);
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_100272EF8, 0, 0);
}

uint64_t sub_100272EF8()
{
  sub_100239A6C(v0[24]);
  v1 = *(sub_1003989D8() + 16);

  if (v1)
  {
    v41 = v0[11];
    v2 = sub_1003989D8();
    v39 = *(v2 + 16);
    if (v39)
    {
      v9 = 0;
      v37 = v0[11];
      v10 = v2 + 40;
      v11 = _swiftEmptyArrayStorage;
      v38 = v2;
      while (v9 < *(v2 + 16))
      {

        v12 = objc_autoreleasePoolPush();
        sub_1000035B8((v41 + 16), *(v37 + 40));
        sub_100398748();
        sub_100397D08();

        v43 = v12;
        v13 = v0[5];
        sub_1000035B8(v0 + 2, v13);
        v14 = v11;
        v15 = *(v13 - 8);
        swift_task_alloc();
        (*(v15 + 16))();
        v11 = v14;
        v16 = sub_100399208();

        sub_100003894(v0 + 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10028122C(0, v14[2] + 1, 1, v14);
        }

        v18 = v11[2];
        v17 = v11[3];
        v19 = v43;
        if (v18 >= v17 >> 1)
        {
          v11 = sub_10028122C((v17 > 1), v18 + 1, 1, v11);
          v19 = v43;
        }

        ++v9;
        v11[2] = v18 + 1;
        v11[v18 + 4] = v16;
        objc_autoreleasePoolPop(v19);
        v10 += 16;
        v2 = v38;
        if (v39 == v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
LABEL_13:
      v0[25] = v11;
      v24 = v0[22];
      v23 = v0[23];
      v25 = v0[20];
      v27 = v0[18];
      v26 = v0[19];
      v28 = v0[13];
      v40 = v0[14];
      v42 = v0[21];
      v44 = v0[12];
      v30 = v0[8];
      v29 = v0[9];

      (*(v26 + 16))(v25, v30, v27);

      sub_100398A48();
      v31 = v29[3];
      v32 = v29[4];
      sub_1000035B8(v29, v31);
      (*(v24 + 16))(v40, v23, v42);
      (*(v28 + 104))(v40, enum case for IntentMessage.conversionMatchingStep2(_:), v44);
      sub_100398708();
      type metadata accessor for ConversionSignposts(0);
      v33 = sub_1003986E8();
      v0[26] = v33;
      v34 = swift_task_alloc();
      v0[27] = v34;
      v6 = sub_10027717C(&qword_1004D8628, &type metadata accessor for ConversionMatchingStep2Intent.ReturnType, &protocol conformance descriptor for ConversionMatchingStep2Intent.ReturnType);
      *v34 = v0;
      v34[1] = sub_1002735EC;
      v2 = v0[17];
      v3 = v0[14];
      v5 = v0[15];
      v4 = v33;
      v7 = v31;
      v8 = v32;
    }

    return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v20 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
    v21 = sub_1003995A8();
    sub_100398B98(v20, &_mh_execute_header, v21, "Step 1 failed, no query found", 29, 2, _swiftEmptyArrayStorage);

    sub_1002756F4();
    swift_allocError();
    *v22 = 4;
    swift_willThrow();
    sub_10027C30C();
    sub_1002609D4(v0[24], type metadata accessor for SignpostInterval);

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_1002735EC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);

  if (v0)
  {
    v3 = sub_100273888;
  }

  else
  {
    v3 = sub_100273770;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100273770()
{
  v1 = v0[24];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[7];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v3 + 32))(v5, v2, v4);

  sub_10027C30C();
  sub_1002609D4(v1, type metadata accessor for SignpostInterval);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100273888(uint64_t a1)
{
  v2 = sub_1003993E8();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v3 = sub_1003995A8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v3, v2, "Step 2 failed: %{public}@", v4, 0xCu);
    sub_1001ED244(v5, &qword_1004D8610, &qword_1003C9240);
  }

  v8 = v1[22];
  v7 = v1[23];
  v9 = v1[21];

  sub_1002756F4();
  swift_allocError();
  *v10 = 6;
  swift_willThrow();

  (*(v8 + 8))(v7, v9);

  sub_10027C30C();
  sub_1002609D4(v1[24], type metadata accessor for SignpostInterval);

  v11 = v1[1];

  return v11();
}

uint64_t sub_100273AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_1003986D8();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_100398628();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_100398A88();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v8 = sub_100398668();
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v9 = sub_100398AA8();
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();
  sub_1001E27A8(&unk_1004D85F8, &qword_1003EF220);
  v4[39] = swift_task_alloc();
  v10 = sub_1003987C8();
  v4[40] = v10;
  v4[41] = *(v10 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  type metadata accessor for SignpostInterval(0);
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_100273E08, 0, 0);
}

uint64_t sub_100273E08()
{
  v83 = v0;
  sub_100239A7C(*(v0 + 360));
  sub_100398A18();
  if (v1)
  {
    sub_100398A28();
    if (v2)
    {
      v3 = *(v0 + 160);
      v4 = sub_1003993D8();
      *(v0 + 368) = sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
      v5 = sub_1003995A8();
      sub_100398B98(v4, &_mh_execute_header, v5, "Completed step 2. Found conversion.", 35, 2, _swiftEmptyArrayStorage);

      sub_1000035B8((v3 + 16), *(v3 + 40));
      sub_100397D08();
      v25 = *(v0 + 328);
      v76 = *(v0 + 312);
      v78 = *(v0 + 320);

      sub_100004A68((v0 + 56), v0 + 16);
      v26 = *(v0 + 40);
      sub_1000035B8((v0 + 16), v26);
      v27 = *(v26 - 8);
      swift_task_alloc();
      (*(v27 + 16))();
      *(v0 + 120) = swift_getAssociatedTypeWitness();
      *(v0 + 128) = swift_getAssociatedConformanceWitness();
      sub_1001E6B7C((v0 + 96));
      sub_100399118();

      sub_1001F54B4(v0 + 96, *(v0 + 120));
      sub_100399618();
      if ((*(v25 + 48))(v76, 1, v78) == 1)
      {
        v28 = *(v0 + 312);

        sub_1001ED244(v28, &unk_1004D85F8, &qword_1003EF220);
        v29 = sub_1003993E8();
        v30 = sub_1003995A8();
        sub_100398B98(v29, &_mh_execute_header, v30, "Step 2 failed. Can't load enrichment data.", 42, 2, _swiftEmptyArrayStorage);

        sub_1002756F4();
        swift_allocError();
        *v31 = 7;
        swift_willThrow();
        sub_100003894((v0 + 16));
        sub_100003894((v0 + 96));
        sub_10027C30C();
        sub_1002609D4(*(v0 + 360), type metadata accessor for SignpostInterval);

        v32 = *(v0 + 8);

        return v32();
      }

      else
      {
        v34 = *(v0 + 344);
        v33 = *(v0 + 352);
        v36 = *(v0 + 320);
        v35 = *(v0 + 328);
        (*(v35 + 32))(v33, *(v0 + 312), v36);
        v37 = sub_1003993D8();
        v38 = sub_1003995A8();
        v77 = *(v35 + 16);
        v77(v34, v33, v36);
        v74 = v37;
        v39 = v37;
        v40 = v38;
        v41 = os_log_type_enabled(v38, v39);
        v42 = *(v0 + 344);
        v44 = *(v0 + 320);
        v43 = *(v0 + 328);
        if (v41)
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v82[0] = v46;
          *v45 = 136315138;
          v47 = sub_1003987B8();
          v49 = v48;
          v50 = *(v43 + 8);
          v50(v42, v44);
          v51 = sub_100005700(v47, v49, v82);

          *(v45 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v40, v74, "Step 2 Ad: %s", v45, 0xCu);
          sub_100003894(v46);
        }

        else
        {

          v50 = *(v43 + 8);
          v50(v42, v44);
        }

        *(v0 + 376) = v50;
        v52 = *(v0 + 352);
        v53 = *(v0 + 336);
        v54 = *(v0 + 320);
        v55 = *(v0 + 296);
        v56 = *(v0 + 304);
        v57 = *(v0 + 280);
        v58 = *(v0 + 248);
        v59 = *(v0 + 256);
        v60 = *(v0 + 200);
        v61 = *(v0 + 208);
        v73 = *(v0 + 288);
        v75 = *(v0 + 192);
        v62 = *(v0 + 136);
        v63 = *(v0 + 144);
        v64 = *(v59 + 16);
        *(v0 + 384) = v64;
        *(v0 + 392) = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v64(v57, v62, v58);
        v77(v53, v52, v54);
        sub_100398A98();
        v65 = v63[3];
        v66 = v63[4];
        sub_1000035B8(v63, v65);
        (*(v55 + 16))(v61, v56, v73);
        (*(v60 + 104))(v61, enum case for IntentMessage.conversionMatchingStep3(_:), v75);
        sub_100398708();
        type metadata accessor for ConversionSignposts(0);
        v67 = sub_1003986E8();
        *(v0 + 400) = v67;
        v68 = swift_task_alloc();
        *(v0 + 408) = v68;
        v69 = sub_10027717C(&unk_1004D8618, &type metadata accessor for ConversionMatchingStep3Intent.ReturnType, &protocol conformance descriptor for ConversionMatchingStep3Intent.ReturnType);
        *v68 = v0;
        v68[1] = sub_1002749D4;
        v70 = *(v0 + 232);
        v71 = *(v0 + 208);
        v72 = *(v0 + 216);

        return dispatch thunk of JetServiceRequesting.dispatch<A>(message:options:)(v70, v71, v67, v72, v69, v65, v66);
      }
    }
  }

  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 248);
  v9 = *(v0 + 136);
  v10 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v11 = sub_1003995A8();
  (*(v7 + 16))(v6, v9, v8);
  v81 = v10;
  v12 = os_log_type_enabled(v11, v10);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v15 = *(v0 + 248);
  if (v12)
  {
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v79 = *(v0 + 168);
    v18 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v82[0] = v80;
    *v18 = 136446210;
    sub_100398648();
    v19 = sub_100398698();
    v21 = v20;
    (*(v16 + 8))(v17, v79);
    (*(v13 + 8))(v14, v15);
    v22 = sub_100005700(v19, v21, v82);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v81, "No conversion for: %{public}s", v18, 0xCu);
    sub_100003894(v80);
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  sub_10027C30C();
  sub_1002609D4(*(v0 + 360), type metadata accessor for SignpostInterval);

  v23 = *(v0 + 8);

  return v23(0, 0, 0, 0);
}

uint64_t sub_1002749D4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[25] + 8))(v2[26], v2[24]);

  if (v0)
  {
    v3 = sub_1002752B4;
  }

  else
  {
    v3 = sub_100274B58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100274B58()
{
  v72 = v0;
  (*(v0[28] + 32))(v0[30], v0[29], v0[27]);
  v1 = sub_1003993D8();
  v2 = sub_1003995A8();
  sub_100398B98(v1, &_mh_execute_header, v2, "Completed step 3.", 17, 2, _swiftEmptyArrayStorage);

  v3 = sub_100398A78();
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = v3;
  v7 = sub_100398A68();
  if (!v8)
  {

LABEL_7:
    v63 = v0[44];
    v66 = v0[47];
    v60 = v0[40];
    v32 = v0[37];
    v55 = v0[36];
    v57 = v0[38];
    v33 = v0[30];
    v34 = v0[27];
    v35 = v0[28];
    v36 = sub_1003993E8();
    v37 = sub_1003995A8();
    sub_100398B98(v36, &_mh_execute_header, v37, "Step 3 failed, can't enrich conversion event.", 45, 2, _swiftEmptyArrayStorage);

    sub_1002756F4();
    swift_allocError();
    v39 = 9;
    goto LABEL_8;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1002718C8(v6, v5);

  if (v11)
  {
    v65 = v10;
    v68 = v11;
    v69 = v9;
    v12 = v0[48];
    v13 = v0[34];
    v14 = v0[31];
    v15 = v0[17];
    v16 = sub_1003993F8();
    v17 = sub_1003995A8();
    v12(v13, v15, v14);
    v62 = v16;
    v18 = os_log_type_enabled(v17, v16);
    v19 = v0[34];
    v20 = v0[31];
    v21 = v0[32];
    if (v18)
    {
      v22 = v0[22];
      v23 = v0[23];
      v24 = v0[21];
      v25 = swift_slowAlloc();
      v71[0] = swift_slowAlloc();
      *v25 = 136446466;
      log = v17;
      sub_100398648();
      v26 = sub_100398698();
      v28 = v27;
      (*(v22 + 8))(v23, v24);
      (*(v21 + 8))(v19, v20);
      v29 = sub_100005700(v26, v28, v71);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      v30 = v65;
      *(v25 + 14) = sub_100005700(v69, v65, v71);
      _os_log_impl(&_mh_execute_header, log, v62, "Completed conversion matching for: %{public}s. The winning impressionId: %{public}s.", v25, 0x16u);
      swift_arrayDestroy();

      v31 = v69;
    }

    else
    {

      (*(v21 + 8))(v19, v20);
      v31 = v69;
      v30 = v65;
    }

    v58 = v0[47];
    v54 = v0[40];
    v56 = v0[44];
    v44 = v0[37];
    v45 = v0[38];
    v46 = v0[36];
    v47 = v0[30];
    v48 = v0[27];
    v49 = v0[28];
    v70 = sub_100276E18(v68, v31, v30);
    v64 = v51;
    v67 = v50;
    v61 = v52;

    (*(v49 + 8))(v47, v48);
    (*(v44 + 8))(v45, v46);
    v58(v56, v54);
    sub_100003894(v0 + 2);
    sub_100003894(v0 + 12);
    sub_10027C30C();
    sub_1002609D4(v0[45], type metadata accessor for SignpostInterval);

    v53 = v0[1];

    return v53(v70, v67, v64, v61);
  }

  v63 = v0[44];
  v66 = v0[47];
  v60 = v0[40];
  v32 = v0[37];
  v55 = v0[36];
  v57 = v0[38];
  v33 = v0[30];
  v34 = v0[27];
  v35 = v0[28];

  v42 = sub_1003993E8();
  v43 = sub_1003995A8();
  sub_100398B98(v42, &_mh_execute_header, v43, "Step 3 failed. Can't read conversion metric.", 44, 2, _swiftEmptyArrayStorage);

  sub_1002756F4();
  swift_allocError();
  v39 = 10;
LABEL_8:
  *v38 = v39;
  swift_willThrow();
  (*(v35 + 8))(v33, v34);
  (*(v32 + 8))(v57, v55);
  v66(v63, v60);
  sub_100003894(v0 + 2);
  sub_100003894(v0 + 12);
  sub_10027C30C();
  sub_1002609D4(v0[45], type metadata accessor for SignpostInterval);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1002752B4(uint64_t a1)
{
  v2 = sub_1003993E8();
  v3 = sub_1003995A8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v3, v2, "Step 3 failed: %{public}@", v4, 0xCu);
    sub_1001ED244(v5, &qword_1004D8610, &qword_1003C9240);
  }

  v7 = v1[47];
  v8 = v1[44];
  v9 = v1[40];
  v10 = v1[37];
  v11 = v1[38];
  v12 = v1[36];

  sub_1002756F4();
  swift_allocError();
  *v13 = 8;
  swift_willThrow();

  (*(v10 + 8))(v11, v12);
  v7(v8, v9);
  sub_100003894(v1 + 2);
  sub_100003894(v1 + 12);
  sub_10027C30C();
  sub_1002609D4(v1[45], type metadata accessor for SignpostInterval);

  v14 = v1[1];

  return v14();
}

uint64_t sub_100275574()
{
  sub_100003894((v0 + 16));

  sub_1002609D4(v0 + OBJC_IVAR____TtC11Attribution19ConversionProcessor_conversionSignposts, type metadata accessor for ConversionSignposts);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConversionProcessor(uint64_t a1)
{
  result = qword_1004D8530;
  if (!qword_1004D8530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100275650(uint64_t a1)
{
  result = type metadata accessor for ConversionSignposts(319);
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

unint64_t sub_1002756F4()
{
  result = qword_1004D8608;
  if (!qword_1004D8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8608);
  }

  return result;
}

uint64_t sub_100275748(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v96 = a6;
  v95 = a5;
  v87 = a4;
  v11 = sub_1001E27A8(&qword_1004D70F0, &qword_1003C9960);
  __chkstk_darwin(v11 - 8);
  v93 = &v79 - v12;
  v13 = sub_100397748();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v83 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100398668();
  v90 = *(v91 - 8);
  v16 = __chkstk_darwin(v91);
  v88 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v17;
  __chkstk_darwin(v16);
  v89 = &v79 - v18;
  v19 = sub_1001E27A8(&qword_1004D8640, &qword_1003ED200);
  v20 = __chkstk_darwin(v19 - 8);
  v82 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = &v79 - v22;
  v97 = sub_1003986D8();
  v23 = *(v97 - 8);
  v24 = __chkstk_darwin(v97);
  v81 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v80 = &v79 - v27;
  __chkstk_darwin(v26);
  v29 = &v79 - v28;
  v30 = sub_1001E27A8(&qword_1004D4CE0, &unk_1003C8E30);
  __chkstk_darwin(v30 - 8);
  v32 = &v79 - v31;
  v101[3] = sub_1003985B8();
  v101[4] = &protocol witness table for JetServiceRequester;
  v101[0] = a2;
  v100[3] = type metadata accessor for OnDeviceConversionTransmitter();
  v100[4] = &off_10047C178;
  v100[0] = a3;

  v33 = a1;
  v34 = sub_1003986B8();
  v36 = v35;
  v37 = *(a7 + 40);
  v94 = a7;
  sub_1000035B8((a7 + 16), v37);
  v84 = v14;
  v38 = *(v14 + 56);
  v85 = v13;
  v38(v32, 1, 1, v13);
  LOBYTE(v34) = sub_100280684(v34, v36, v32);

  sub_1001ED244(v32, &qword_1004D4CE0, &unk_1003C8E30);
  v39 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v40 = sub_1003995A8();
  v41 = *(v23 + 16);
  if (v34)
  {
    v80 = v33;
    v41(v29, v33, v97);
    if (os_log_type_enabled(v40, v39))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v99[0] = v43;
      *v42 = 136315138;
      v44 = sub_100398698();
      v46 = v45;
      v47 = v29;
      v48 = v97;
      (*(v23 + 8))(v47, v97);
      v49 = sub_100005700(v44, v46, v99);

      *(v42 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v39, "Found actions for %s. Started matching.", v42, 0xCu);
      sub_100003894(v43);
    }

    else
    {

      v59 = v29;
      v48 = v97;
      (*(v23 + 8))(v59, v97);
    }

    v60 = *(v94 + 56);
    v61 = v80;
    if (v60 && (v62 = [v60 dictionary]) != 0)
    {
      v63 = v62;
      sub_100004218(0, &qword_1004D5DC0, NSObject_ptr);
      sub_100398E68();

      v64 = v92;
      sub_100398EA8();
    }

    else
    {
      v65 = sub_100398B58();
      v64 = v92;
      (*(*(v65 - 8) + 56))(v92, 1, 1, v65);
    }

    sub_10000ADB4(v64, v82, &qword_1004D8640, &qword_1003ED200);
    v41(v81, v61, v48);
    (*(v84 + 16))(v83, v87, v85);
    v66 = v89;
    sub_100398658();
    v67 = sub_100399268();
    (*(*(v67 - 8) + 56))(v93, 1, 1, v67);
    v68 = v90;
    v69 = v88;
    v70 = v91;
    (*(v90 + 16))(v88, v66, v91);
    sub_100003554(v101, v99);
    sub_100003554(v100, v98);
    v71 = (*(v68 + 80) + 40) & ~*(v68 + 80);
    v72 = (v86 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v72 + 47) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 2) = 0;
    *(v74 + 3) = 0;
    *(v74 + 4) = v94;
    (*(v68 + 32))(&v74[v71], v69, v70);
    sub_100004A68(v99, &v74[v72]);
    sub_100004A68(v98, &v74[v73]);
    v75 = &v74[(v73 + 47) & 0xFFFFFFFFFFFFFFF8];
    v76 = v96;
    *v75 = v95;
    v75[1] = v76;

    sub_1001F0F40(0, 0, v93, &unk_1003EF230, v74);

    (*(v68 + 8))(v66, v70);
    sub_1001ED244(v92, &qword_1004D8640, &qword_1003ED200);
  }

  else
  {
    v50 = v80;
    v51 = v97;
    v41(v80, v33, v97);
    if (os_log_type_enabled(v40, v39))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v99[0] = v53;
      *v52 = 136315138;
      v54 = v50;
      v55 = sub_1003986A8();
      v57 = v56;
      (*(v23 + 8))(v54, v51);
      v58 = sub_100005700(v55, v57, v99);

      *(v52 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v40, v39, "No stored actions for %s, aborting.", v52, 0xCu);
      sub_100003894(v53);
    }

    else
    {

      (*(v23 + 8))(v50, v51);
    }

    v77 = sub_10025E2EC(1u);
    v95(v77);
  }

  sub_100003894(v101);
  return sub_100003894(v100);
}

uint64_t sub_1002761B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v7 = sub_1003986D8();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v8 = sub_100398A38();
  v4[10] = v8;
  v4[11] = *(v8 - 8);
  v4[12] = swift_task_alloc();
  v9 = sub_1003989E8();
  v4[13] = v9;
  v4[14] = *(v9 - 8);
  v10 = swift_task_alloc();
  v4[15] = v10;

  v11 = swift_task_alloc();
  v4[16] = v11;
  *v11 = v4;
  v11[1] = sub_100276398;

  return sub_100272210(v10, a1, a2);
}

uint64_t sub_100276398()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10027668C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[18] = v3;
    *v3 = v2;
    v3[1] = sub_100276514;
    v4 = v2[15];
    v5 = v2[12];
    v6 = v2[3];
    v7 = v2[4];

    return sub_100272CF0(v5, v6, v7, v4);
  }
}

uint64_t sub_100276514()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100276918, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_1002767FC;
    v4 = v2[12];
    v5 = v2[4];
    v6 = v2[3];

    return sub_100273AD8(v6, v5, v4);
  }
}

uint64_t sub_10027668C()
{
  *(v0 + 16) = *(v0 + 136);
  swift_errorRetain();
  sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
  v1 = swift_dynamicCast();
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  if (v1)
  {

    v5 = *(v0 + 208);
    sub_100398648();
    sub_10025E2EC(v5);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    sub_100398648();
    sub_10025E2EC(2u);

    (*(v3 + 8))(v2, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002767FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[21] = a1;
  v6[22] = a2;
  v6[23] = a3;
  v6[24] = a4;
  v6[25] = v4;

  if (v4)
  {
    v7 = sub_100276C74;
  }

  else
  {
    v7 = sub_100276AA0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100276918()
{
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  *(v0 + 16) = *(v0 + 152);
  swift_errorRetain();
  sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
  v1 = swift_dynamicCast();
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  if (v1)
  {

    v5 = *(v0 + 208);
    sub_100398648();
    sub_10025E2EC(v5);
    (*(v3 + 8))(v2, v4);
  }

  else
  {

    sub_100398648();
    sub_10025E2EC(2u);

    (*(v3 + 8))(v2, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100276AA0(uint64_t a1)
{
  v2 = (*(v1 + 112) + 8);
  v3 = *(v1 + 88);
  if (*(v1 + 176))
  {
    v4 = *(v1 + 64);
    v5 = sub_10027C5D4(*(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192));

    sub_100398648();
    v6 = (v4 + 8);
    v7 = (v3 + 8);
    v8 = *(v1 + 96);
    v20 = *(v1 + 104);
    v21 = *(v1 + 120);
    v9 = *(v1 + 72);
    v10 = *(v1 + 80);
    v11 = *(v1 + 56);
    if (v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = 11;
    }

    sub_10025E2EC(v12);
    (*v6)(v9, v11);
    (*v7)(v8, v10);
  }

  else
  {
    v13 = *(v1 + 96);
    v20 = *(v1 + 104);
    v21 = *(v1 + 120);
    v15 = *(v1 + 72);
    v14 = *(v1 + 80);
    v17 = *(v1 + 56);
    v16 = *(v1 + 64);
    sub_100398648();
    sub_10025E2EC(1u);
    (*(v16 + 8))(v15, v17);
    (*(v3 + 8))(v13, v14);
  }

  (*v2)(v21, v20);

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_100276C74()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  (*(v2 + 8))(v1, v3);
  *(v0 + 16) = *(v0 + 200);
  swift_errorRetain();
  sub_1001E27A8(&qword_1004D4818, &unk_1003EC570);
  v4 = swift_dynamicCast();
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  if (v4)
  {

    v8 = *(v0 + 208);
    sub_100398648();
    sub_10025E2EC(v8);
    (*(v6 + 8))(v5, v7);
  }

  else
  {

    sub_100398648();
    sub_10025E2EC(2u);

    (*(v6 + 8))(v5, v7);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100276E18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_1001EC30C(_swiftEmptyArrayStorage);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v41 = a1;
  if (!v8)
  {
    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(a1 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    if (!v5[2])
    {
    }

    return a2;
  }

  while (1)
  {
LABEL_10:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + 16 * (v12 | (v10 << 6)));
      v15 = *v13;
      v14 = v13[1];

      swift_unknownObjectRetain();
      v43._countAndFlagsBits = 24415;
      v43._object = 0xE200000000000000;
      if (sub_1003990D8(v43))
      {
        v16 = swift_dynamicCastObjCProtocolConditional();
        if (v16)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v36 = a3;
    v39 = v16;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v5;
    v17 = sub_1001EC1DC(v15, v14);
    v19 = v5[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    if (v5[3] >= v22)
    {
      v26 = v39;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v27 = v17;
        v38 = v18;
        sub_10023CFF8();
        v17 = v27;
        v26 = v39;
        v5 = v42;
        if (v38)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v23 = v18;
      sub_10023BBC0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1001EC1DC(v15, v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_35;
      }

      v25 = v23;
      v26 = v39;
      v5 = v42;
      if (v25)
      {
LABEL_19:
        *(v5[7] + 8 * v17) = v26;
        swift_unknownObjectRelease();
        goto LABEL_23;
      }
    }

    v5[(v17 >> 6) + 8] |= 1 << v17;
    v28 = (v5[6] + 16 * v17);
    *v28 = v15;
    v28[1] = v14;
    *(v5[7] + 8 * v17) = v26;
    v29 = v5[2];
    v21 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v21)
    {
      goto LABEL_34;
    }

    v5[2] = v30;

LABEL_23:
    v31 = sub_1001EC1DC(v15, v14);
    v33 = v32;

    if (v33)
    {
      v34 = v41;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_10020D00C();
        v34 = v41;
      }

      swift_unknownObjectRelease();
      v41 = v34;
      sub_1001F734C(v31, v34);
    }

    swift_unknownObjectRelease();
    a3 = v36;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_100399A98();
  __break(1u);
  return result;
}

uint64_t sub_10027717C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002771C4(uint64_t a1)
{
  v3 = *(sub_100398668() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005C50;

  return sub_100271FC0(a1, v7, v8, v9, v1 + v4, v1 + v5, v1 + v6, v10);
}

uint64_t sub_100277324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F3474;

  return sub_1001F2BE4(a1, v4);
}

void sub_1002773EC(void *a1)
{
  sub_100397AF8();
  sub_10027856C((v1 + 4), v6);
  if (!*(&v6[0] + 1))
  {
    sub_1001ED244(v6, &qword_1004D8728, &unk_1003EF320);
    v3 = v1[13];
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = v6[0];
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  sub_100278630();
  sub_100397AC8();
  sub_100278684(&v7);
  v3 = v1[13];
  if (v3)
  {
LABEL_3:
    v5 = v1[14];
    v4 = v1[15];
    *&v7 = v1[12];
    *(&v7 + 1) = v3;
    *&v8 = v5;
    *(&v8 + 1) = v4;
    sub_1002785DC();

    sub_100397AC8();
  }

LABEL_4:
  sub_100277AA4(a1);
}

uint64_t sub_100277510(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v31 = a3;
  v35 = a2;
  v34 = sub_100399468();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100399438();
  __chkstk_darwin(v8);
  v9 = sub_100398DD8();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100004218(0, &qword_1004D5D30, OS_os_log_ptr);
  v29[2] = &OBJC_IVAR____TtC11Attribution16OdcaMessageQueue_messageQueue;
  v32 = "";
  v33 = v10;
  *(v3 + 24) = sub_1003995A8();
  v11 = sub_100004218(0, &qword_1004D40C0, OS_dispatch_queue_ptr);
  v29[0] = "Installation Conversion Signal";
  v29[1] = v11;
  sub_100398DC8();
  v36 = _swiftEmptyArrayStorage;
  sub_1002786D8(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0, &qword_1003C9160);
  sub_1001E6C28(&qword_1004D40D8, &qword_1004D40D0, &qword_1003C9160, &protocol conformance descriptor for [A]);
  sub_100399658();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v34 = sub_100399488();
  v12 = *(v3 + 24);
  sub_1001E27A8(&qword_1004D8740, &qword_1003EF330);
  swift_allocObject();
  v13 = v30;
  v14 = v12;
  v36 = sub_100397E38();
  sub_1001E27A8(&qword_1004D8748, &qword_1003EF338);
  swift_allocObject();
  v15 = v31;
  sub_1001E6C28(&qword_1004D8750, &qword_1004D8740, &qword_1003EF330, &protocol conformance descriptor for DatabaseQueueStore<A>);

  v16 = sub_100397EE8();
  if (v15)
  {
    v17 = type metadata accessor for OnDeviceAttributionCoordinatorProvider();
    type metadata accessor for OdcaAttributionListenerConfig();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v4 + 32) = 0x7475626972747461;
    v19 = &off_10047AED0;
    v20 = 0xEB000000006E6F69;
    v21 = v15;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v17 = 0;
    v19 = 0;
    v18 = 0;
    *(v4 + 32) = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 40) = v20;
  *(v4 + 48) = v21;
  *(v4 + 72) = v17;
  *(v4 + 80) = v19;
  *(v4 + 88) = v18;
  v22 = v13;

  sub_1003995A8();
  sub_100397D38();
  swift_allocObject();
  v23 = sub_100397D28();
  type metadata accessor for OdcaConversionConfig();
  v24 = swift_allocObject();
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = 0;
  *(v4 + 96) = xmmword_1003EF2C0;
  *(v4 + 112) = v23;
  *(v4 + 120) = v24;
  v25 = *(v4 + 24);
  v36 = v16;
  sub_1001E27A8(&qword_1004D8758, &qword_1003EF340);
  swift_allocObject();
  sub_1001E6C28(&qword_1004D8760, &qword_1004D8748, &qword_1003EF338, &protocol conformance descriptor for PersistentCachedStore<A>);

  v26 = v25;
  v27 = sub_100397AB8();

  swift_unknownObjectRelease();
  *(v4 + 16) = v27;
  return v4;
}

void sub_100277AA4(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v10 = sub_100278514;
  v11 = v2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000067D0;
  v9 = &unk_10047BFD0;
  v3 = _Block_copy(&v6);

  [a1 registerHandlerForPurpose:-9000 closure:v3];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v10 = sub_100006D98;
  v11 = v4;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1000067D0;
  v9 = &unk_10047BFF8;
  v5 = _Block_copy(&v6);

  [a1 registerHandlerForPurpose:100 closure:v5];
  _Block_release(v5);
}

double sub_100277C38(void *a1, uint64_t a2)
{
  v3 = sub_1001E27A8(&qword_1004D6878, &unk_1003EE290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = v57 - v5;
  v6 = sub_1003986D8();
  v62 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v61 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v57 - v9;
  v11 = sub_1001E27A8(&qword_1004D8720, &qword_1003EF318);
  __chkstk_darwin(v11 - 8);
  v13 = v57 - v12;
  v14 = sub_100398968();
  v64 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if ([a1 metric] != 9100)
    {
      v25 = sub_1003993D8();
      v26 = *(v19 + 24);
      if (os_log_type_enabled(v26, v25))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v65 = v28;
        *v27 = 136315138;
        if ([a1 respondsToSelector:"debugDescription"])
        {
          v29 = [a1 debugDescription];
          v30 = sub_100398F58();
          v32 = v31;

          v33 = v30;
        }

        else
        {
          v33 = 7104878;
          v32 = 0xE300000000000000;
        }

        v49 = sub_100005700(v33, v32, &v65);

        *(v27 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v26, v25, "Unexpected metric %s was received.", v27, 0xCu);
        sub_100003894(v28);
      }

      goto LABEL_25;
    }

    v58 = v4;
    v59 = v3;
    v60 = a1;
    v20 = [objc_msgSend(objc_opt_self() "privateUserAccount")];
    swift_unknownObjectRelease();
    v21 = sub_100398F58();
    v23 = v22;

    if (v21 == sub_100398F58() && v23 == v24)
    {
    }

    else
    {
      v34 = sub_1003999B8();

      if ((v34 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(500);
LABEL_11:
    sub_10023E140(v60, v21, v23, v13);

    v35 = v64;
    if ((*(v64 + 48))(v13, 1, v14) == 1)
    {
      v36 = 7104878;
      sub_1001ED244(v13, &qword_1004D8720, &qword_1003EF318);
      v37 = sub_1003993E8();
      v38 = *(v19 + 24);
      if (os_log_type_enabled(v38, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v65 = v40;
        *v39 = 136315138;
        v41 = v60;
        if ([v60 respondsToSelector:"debugDescription"])
        {
          v42 = [v41 debugDescription];
          v43 = sub_100398F58();
          v45 = v44;

          v46 = v43;
        }

        else
        {
          v45 = 0xE300000000000000;
          v46 = 7104878;
        }

        v50 = sub_100005700(v46, v45, &v65);

        *(v39 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v38, v37, "Unsupported metric %s", v39, 0xCu);
        sub_100003894(v40);
      }

      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1003996F8(21);

      v65 = 0xD000000000000013;
      v66 = 0x8000000100430620;
      v51 = v60;
      if ([v60 respondsToSelector:"debugDescription"])
      {
        v52 = [v51 debugDescription];
        v36 = sub_100398F58();
        v54 = v53;
      }

      else
      {
        v54 = 0xE300000000000000;
      }

      v67._countAndFlagsBits = v36;
      v67._object = v54;
      sub_100399068(v67);

      v55 = sub_100398F28();

      v56 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(22);
    }

    else
    {
      (*(v35 + 32))(v16, v13, v14);
      (*(v35 + 16))(v10, v16, v14);
      v47 = v62;
      (*(v62 + 104))(v10, enum case for ConversionSignal.appStoreInstallationSignal(_:), v6);
      v57[1] = v19;
      v60 = *(v19 + 16);
      (*(v47 + 16))(v61, v10, v6);
      sub_1002786D8(&qword_1004D6860, &type metadata accessor for ConversionSignal, &protocol conformance descriptor for ConversionSignal);
      sub_1002786D8(&unk_1004D6868, &type metadata accessor for ConversionSignal, &protocol conformance descriptor for ConversionSignal);
      v48 = v63;
      sub_100397B08();
      sub_100397AD8();
      (*(v58 + 8))(v48, v59);
      (*(v47 + 8))(v10, v6);
      (*(v35 + 8))(v16, v14);
    }

LABEL_25:
  }

  return result;
}

uint64_t sub_10027848C()
{

  sub_1001ED244(v0 + 32, &qword_1004D8728, &unk_1003EF320);
  sub_10027851C(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return swift_deallocClassInstance();
}

double sub_10027851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10027856C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D8728, &unk_1003EF320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002785DC()
{
  result = qword_1004D8730;
  if (!qword_1004D8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8730);
  }

  return result;
}

unint64_t sub_100278630()
{
  result = qword_1004D8738;
  if (!qword_1004D8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8738);
  }

  return result;
}