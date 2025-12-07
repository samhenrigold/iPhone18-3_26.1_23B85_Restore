uint64_t sub_100040B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OS_dispatch_queue.wallOnce(_:closure:)(double a1)
{
  sub_100041B88();
  v41 = v4;
  v42 = v5;
  sub_100041CEC();
  sub_1000578D0();
  sub_1000068E4();
  __chkstk_darwin(v6);
  sub_100019500();
  v43 = v7;
  sub_10001970C();
  __chkstk_darwin(v8);
  sub_100041C10();
  sub_1000197DC();
  sub_100057950();
  sub_1000068E4();
  __chkstk_darwin(v9);
  sub_100019500();
  sub_100041B78();
  __chkstk_darwin(v10);
  sub_100041B2C(v11, v12, v13, v14, v15, v16, v17, v18, v39);
  sub_1000068E4();
  __chkstk_darwin(v19);
  sub_1000068D4();
  v40 = sub_100041C1C();
  sub_1000068E4();
  __chkstk_darwin(v20);
  sub_1000068D4();
  sub_100041C8C();
  v21 = sub_100057E10();
  sub_1000068E4();
  __chkstk_darwin(v22);
  sub_1000068D4();
  sub_100041DB8();
  sub_100005A1C(0, &unk_10007F1C0, OS_dispatch_source_ptr);
  sub_100041AEC();
  sub_100040B30(v23, v24, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  v25 = sub_100041E64();
  sub_100041E7C(&unk_10007FCF0);
  sub_100041B14();
  sub_100058000();
  sub_100041E24();
  v26 = sub_100041BE4();
  v27(v26, v21);
  swift_getObjectType();
  v28 = swift_allocObject();
  v28[2] = v41;
  v28[3] = v42;
  v28[4] = v21;
  v44[4] = sub_100041AC0;
  v44[5] = v28;
  v44[0] = _NSConcreteStackBlock;
  sub_100041AD4(COERCE_DOUBLE(1107296256));
  v44[2] = v29;
  v44[3] = &unk_100074408;
  v30 = _Block_copy(v44);

  swift_unknownObjectRetain();
  sub_100057900();
  sub_1000399F8();
  sub_100041DE4();
  _Block_release(v30);
  v31 = sub_100041DA0();
  v32(v31);
  sub_100041BA4();
  v33(v1, v40);

  sub_100041D94();
  sub_100057940();
  sub_100041D80();
  sub_100057980();
  v34 = sub_100041C54();
  (v30)(v34);
  v35 = sub_100041C38();
  v36(v35);
  sub_10001472C(v43);
  sub_100041C70();
  sub_100057EB0();
  v37 = *(v1 + 8);
  v37(v25, &qword_10005B788);
  v38 = sub_100041D74();
  (v37)(v38);
  (v30)(v3, v2);
  sub_100057E80();
  sub_100041D40();
  sub_100041BF4();
}

uint64_t sub_100040FD4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100041014()
{
  (*(v0 + 16))();
  swift_getObjectType();
  sub_100057E70();
}

void OS_dispatch_queue.timer(_:interval:closure:)(double a1)
{
  sub_100041B88();
  sub_100041D1C(v2, v3);
  sub_1000068E4();
  __chkstk_darwin(v4);
  sub_100019500();
  v40 = v5;
  sub_10001970C();
  __chkstk_darwin(v6);
  sub_100041C10();
  sub_1000197DC();
  sub_100057930();
  sub_1000068E4();
  __chkstk_darwin(v7);
  sub_100019500();
  sub_100041B78();
  __chkstk_darwin(v8);
  sub_100041B2C(v9, v10, v11, v12, v13, v14, v15, v16, v38);
  sub_1000068E4();
  __chkstk_darwin(v17);
  sub_1000068D4();
  v39 = sub_100041C1C();
  sub_1000068E4();
  __chkstk_darwin(v18);
  sub_1000068D4();
  v21 = (v20 - v19);
  v22 = sub_100057E10();
  sub_1000068E4();
  __chkstk_darwin(v23);
  sub_1000068D4();
  sub_100041DB8();
  v24 = sub_100005A1C(0, &unk_10007F1C0, OS_dispatch_source_ptr);
  v41[0] = &_swiftEmptyArrayStorage;
  sub_100041AEC();
  sub_100040B30(v25, v26, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_100041E64();
  sub_100041E7C(&unk_10007FCF0);
  sub_100041B14();
  sub_100058000();
  sub_100057E20();
  v27 = sub_100041BE4();
  v28(v27, v22);
  swift_getObjectType();
  sub_100041B50();
  sub_100041AD4(COERCE_DOUBLE(1107296256));
  v41[2] = v29;
  v41[3] = &unk_100074430;
  v30 = _Block_copy(v41);

  sub_100057900();
  sub_1000399F8();
  sub_100041E04();
  _Block_release(v30);
  v31 = sub_100041DA0();
  v32(v31);
  sub_100041BA4();
  v33(v21, v39);

  sub_100041D94();
  sub_100057920();
  sub_100041D60();
  sub_100057970();
  v34 = sub_100041D4C();
  v35 = v21(v34);
  sub_100041DC4(v35);
  sub_10001472C(v40);
  sub_100041CD4();
  sub_100057EC0();
  v36 = sub_100041CBC();
  v40(v36);
  v37 = sub_100041D74();
  v40(v37);
  (v21)(v24, v1);
  sub_100057E80();
  sub_100041D40();
  sub_100041BF4();
}

void OS_dispatch_queue.wallTimer(_:interval:closure:)(double a1)
{
  sub_100041B88();
  sub_100041D1C(v2, v3);
  sub_1000068E4();
  __chkstk_darwin(v4);
  sub_100019500();
  v40 = v5;
  sub_10001970C();
  __chkstk_darwin(v6);
  sub_100041C10();
  sub_1000197DC();
  sub_100057950();
  sub_1000068E4();
  __chkstk_darwin(v7);
  sub_100019500();
  sub_100041B78();
  __chkstk_darwin(v8);
  sub_100041B2C(v9, v10, v11, v12, v13, v14, v15, v16, v38);
  sub_1000068E4();
  __chkstk_darwin(v17);
  sub_1000068D4();
  v39 = sub_100041C1C();
  sub_1000068E4();
  __chkstk_darwin(v18);
  sub_1000068D4();
  v21 = (v20 - v19);
  v22 = sub_100057E10();
  sub_1000068E4();
  __chkstk_darwin(v23);
  sub_1000068D4();
  sub_100041DB8();
  v24 = sub_100005A1C(0, &unk_10007F1C0, OS_dispatch_source_ptr);
  v41[0] = &_swiftEmptyArrayStorage;
  sub_100041AEC();
  sub_100040B30(v25, v26, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_100041E64();
  sub_100041E7C(&unk_10007FCF0);
  sub_100041B14();
  sub_100058000();
  sub_100057E20();
  v27 = sub_100041BE4();
  v28(v27, v22);
  swift_getObjectType();
  sub_100041B50();
  sub_100041AD4(COERCE_DOUBLE(1107296256));
  v41[2] = v29;
  v41[3] = &unk_100074458;
  v30 = _Block_copy(v41);

  sub_100057900();
  sub_1000399F8();
  sub_100041E04();
  _Block_release(v30);
  v31 = sub_100041DA0();
  v32(v31);
  sub_100041BA4();
  v33(v21, v39);

  sub_100041D94();
  sub_100057940();
  sub_100041D60();
  sub_100057980();
  v34 = sub_100041D4C();
  v35 = v21(v34);
  sub_100041DC4(v35);
  sub_10001472C(v40);
  sub_100041CD4();
  sub_100057EB0();
  v36 = sub_100041CBC();
  v40(v36);
  v37 = sub_100041D74();
  v40(v37);
  (v21)(v24, v1);
  sub_100057E80();
  sub_100041D40();
  sub_100041BF4();
}

uint64_t OS_dispatch_semaphore.wait(_:)()
{
  sub_100041CEC();
  v0 = sub_100057930();
  sub_1000068E4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100041B04();
  v6 = (v4 - v5);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_100057920();
  sub_100057970();
  v10 = *(v2 + 8);
  v10(v6, v0);
  v11 = sub_100057EA0();
  v10(v9, v0);
  return v11 & 1;
}

uint64_t static OS_dispatch_source.makeSignalSourceIgnored(signal:queue:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1000578C0();
  signal(v2, v3);
  sub_100005A1C(0, &unk_10007F1C0, OS_dispatch_source_ptr);
  return sub_100057E30();
}

void (*OS_dispatch_source_data_replace.doubleData.modify(uint64_t *a1, uint64_t a2))(Swift::UInt *a1)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = sub_100057E60();
  return sub_100041A6C;
}

uint64_t sub_100041B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 216) = &a9 - v9;

  return sub_1000578E0();
}

void sub_100041B50()
{
  v1 = *(v0 - 224);
  *(v0 - 120) = *(v0 - 232);
  *(v0 - 112) = v1;
  *(v0 - 152) = _NSConcreteStackBlock;
}

uint64_t sub_100041BB4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100041C1C()
{

  return sub_100057910();
}

uint64_t sub_100041CF8()
{

  return sub_100057EC0();
}

uint64_t sub_100041D1C(uint64_t a1, uint64_t a2)
{
  *(v3 - 240) = v2;
  *(v3 - 232) = a1;
  *(v3 - 224) = a2;

  return sub_1000578D0();
}

uint64_t sub_100041DC4(uint64_t a1)
{
  v4 = *(v1 - 184);

  return static DispatchTimeInterval.seconds(_:)(v4, v3);
}

uint64_t sub_100041DE4()
{

  return sub_100057E50();
}

uint64_t sub_100041E04()
{

  return sub_100057E50();
}

uint64_t sub_100041E24()
{

  return sub_100057E20();
}

uint64_t sub_100041E44()
{

  return sub_100057930();
}

uint64_t sub_100041E64()
{

  return sub_100005890(v0, v1);
}

uint64_t sub_100041E7C(unint64_t *a1)
{

  return sub_100005968(a1, v1, v2);
}

void HIDEvent.Digitizer.init(timestamp:type:index:identity:mask:buttons:x:y:z:pressure:twist:range:touch:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a3 > 0xFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a4 > 0xFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a5 > 0xFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a3 | a2 | a4 | a5 | a6) < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a6 > 0xFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((a9 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(a9))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  if (IOHIDEventGetType() != 11)
  {
LABEL_19:

    __break(1u);
  }
}

void *HIDEvent.Digitizer.init(ioHIDEvent:)(void *a1)
{
  if (IOHIDEventGetType() != 11)
  {

    return 0;
  }

  return a1;
}

uint64_t HIDEvent.Digitizer.altitude.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return sub_100042CAC();
}

uint64_t HIDEvent.Digitizer.azimuth.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return sub_100042CAC();
}

void HIDEvent.Digitizer.children.getter(uint64_t a1)
{
  v1 = HIDEvent.children.getter();
  v2 = 0;
  v3 = v1[2];
  v4 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= v1[2])
    {
      break;
    }

    v5 = v1[v2 + 4];
    if (IOHIDEventGetType() == 11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100042A2C(0, *(v4 + 2) + 1, 1, v4);
      }

      v7 = *(v4 + 2);
      v6 = *(v4 + 3);
      if (v7 >= v6 >> 1)
      {
        v4 = sub_100042A2C((v6 > 1), v7 + 1, 1, v4);
      }

      ++v2;
      *(v4 + 2) = v7 + 1;
      *&v4[8 * v7 + 32] = v5;
    }

    else
    {

      ++v2;
    }
  }

  __break(1u);
}

uint64_t HIDEvent.Digitizer.didUpdateMask.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return sub_100042CAC();
}

uint64_t HIDEvent.Digitizer.eventMask.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return sub_100042CAC();
}

uint64_t HIDEvent.Digitizer.generationCount.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return sub_100042CAC();
}

uint64_t (*HIDEvent.Digitizer.isCollection.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  sub_100042CE0(a1, a2);
  IntegerValue = IOHIDEventGetIntegerValue();
  sub_100042CB8(IntegerValue);
  return sub_100042374;
}

uint64_t (*HIDEvent.Digitizer.isInRange.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  sub_100042CE0(a1, a2);
  IntegerValue = IOHIDEventGetIntegerValue();
  sub_100042CB8(IntegerValue);
  return sub_100042408;
}

unint64_t HIDEvent.Digitizer.isFinger.getter(uint64_t a1)
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    return result == 2;
  }

  __break(1u);
  return result;
}

unint64_t HIDEvent.Digitizer.type.getter(uint64_t a1)
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t HIDEvent.Digitizer.isPencil.getter(uint64_t a1)
{
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    return result == 0;
  }

  __break(1u);
  return result;
}

uint64_t (*HIDEvent.Digitizer.isTouching.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  sub_100042CE0(a1, a2);
  IntegerValue = IOHIDEventGetIntegerValue();
  sub_100042CB8(IntegerValue);
  return sub_100042548;
}

uint64_t HIDEvent.Digitizer.tiltX.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return sub_100042CAC();
}

uint64_t HIDEvent.Digitizer.tiltY.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return sub_100042CAC();
}

void HIDEvent.Digitizer.touchWithIndex(_:)(uint64_t a1, uint64_t a2)
{
  HIDEvent.Digitizer.children.getter(a2);
  v4 = v3;
  v5 = 0;
  v6 = *(v3 + 16);
  while (1)
  {
    if (v6 == v5)
    {
LABEL_6:

      return;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v7 = *(v4 + 8 * v5 + 32);
    if (IOHIDEventGetIntegerValue() == a1)
    {
      goto LABEL_6;
    }

    ++v5;
  }

  __break(1u);
}

uint64_t HIDEvent.Digitizer.willUpdateMask.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  *v2 = IOHIDEventGetIntegerValue();
  return sub_100042CAC();
}

uint64_t HIDEvent.Digitizer.x.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return sub_100042CAC();
}

uint64_t HIDEvent.Digitizer.y.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return sub_100042CAC();
}

uint64_t HIDEvent.Digitizer.z.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return sub_100042CAC();
}

uint64_t HIDEvent.Digitizer.roll.modify(uint64_t a1, uint64_t a2)
{
  sub_100042C9C(a1, a2);
  IOHIDEventGetDoubleValue();
  *v2 = v3;
  return sub_100042CAC();
}

uint64_t variable initialization expression of TouchTrackerLog.tracker()
{
  type metadata accessor for TouchTracker();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

char *sub_100042A2C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100005890(&qword_1000800A0, &qword_10005CB88);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10005078C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100042B78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100005890(&qword_100080098, &qword_10005CB80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1000507AC(a4 + 32, v8, v10 + 32);
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, a4 + 32, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t static HIDDescriptor.dataWithReportDescriptor(_:)(uint64_t a1)
{
  result = sub_100057750();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!(result >> 16))
    {
      sub_100005890(&qword_10007EED0, qword_10005B4E0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_10005CB90;
      *(v3 + 32) = 16851209;
      *(v3 + 36) = 256;
      *(v3 + 38) = 34;
      *(v3 + 39) = v2;
      v4 = sub_100042DB0(v3);
      sub_100057760();
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100042DB0(uint64_t a1)
{
  v7 = sub_100005890(&qword_1000800A8, &qword_10005CBC8);
  v8 = sub_100042E90(&qword_1000800B0, &qword_1000800A8, &qword_10005CBC8, &protocol conformance descriptor for <A> [A]);
  v6[0] = a1;
  v2 = sub_10000AAF4(v6, v7);
  sub_10001DEEC(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_10000904C(v6);
  return v3;
}

uint64_t sub_100042E90(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000058D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t *HIDEvent.children.getter()
{
  v0 = IOHIDEventGetChildren();
  if (v0)
  {
    v1 = v0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for IOHIDEvent(0);
      sub_100057BE0();
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100043048(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_100058190();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

SidecarHID::HIDEvent::Phase_optional __swiftcall HIDEvent.Phase.init(rawValue:)(Swift::UInt16 rawValue)
{
  if ((rawValue & 8) != 0)
  {
    LOBYTE(v1) = 4;
  }

  else
  {
    v1 = (rawValue << 24 >> 31) & 5;
  }

  if ((rawValue & 4) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if ((rawValue & 2) != 0)
  {
    v3.value = SidecarHID_HIDEvent_Phase_changed;
  }

  else
  {
    v3.value = v2;
  }

  if (rawValue)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

SidecarHID::HIDEvent::Phase_optional sub_1000430E8@<W0>(Swift::UInt16 *a1@<X0>, SidecarHID::HIDEvent::Phase_optional *a2@<X8>)
{
  result.value = HIDEvent.Phase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100043114@<X0>(_WORD *a1@<X8>)
{
  result = HIDEvent.Phase.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void sub_100043170(void *a1, uint64_t a2, void (*a3)(uint64_t, id, void))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000AAF4(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  a3(a2, v7, 0);
}

uint64_t (*HIDEvent.flags.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  sub_100042CE0(a1, a2);
  *(v2 + 8) = IOHIDEventGetEventFlags();
  return sub_10004325C;
}

uint64_t HIDEvent.isRepeat.setter(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return _IOHIDEventSetRepeat(a2);
  }

  return result;
}

uint64_t (*HIDEvent.isRepeat.modify(void *a1, uint64_t a2))(uint64_t result)
{
  sub_100042CE0(a1, a2);
  *(v2 + 8) = IOHIDEventIsRepeat() != 0;
  return sub_100043308;
}

uint64_t sub_100043308(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    return _IOHIDEventSetRepeat(*result);
  }

  return result;
}

uint64_t (*HIDEvent.momentum.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  sub_100042CE0(a1, a2);
  *(v2 + 8) = IOHIDEventGetScrollMomentum();
  return sub_100043390;
}

uint64_t HIDEvent.phase.getter()
{
  Phase = IOHIDEventGetPhase();
  if ((Phase & 8) != 0)
  {
    v1 = 4;
  }

  else
  {
    v1 = (Phase >> 7) & 5;
  }

  if ((Phase & 4) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if ((Phase & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  if (Phase)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t (*HIDEvent.phase.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  sub_100042CE0(a1, a2);
  *(v2 + 8) = HIDEvent.phase.getter();
  return sub_100043450;
}

uint64_t (*HIDEvent.sender.modify(uint64_t a1, uint64_t a2))()
{
  sub_100042C9C(a1, a2);
  *v2 = IOHIDEventGetSenderID();
  return sub_1000434C0;
}

uint64_t (*HIDEvent.timestamp.modify(uint64_t a1, uint64_t a2))()
{
  sub_100042C9C(a1, a2);
  *v2 = IOHIDEventGetTimeStamp();
  return sub_100043524;
}

double HIDEvent.timestampSeconds.getter(uint64_t a1)
{
  TimeStamp = IOHIDEventGetTimeStamp();
  HostTime.nanoseconds.getter(TimeStamp);
  return v2 * 0.000000001;
}

void HostTime.seconds.getter(unint64_t a1)
{
  if (qword_100080010 != -1)
  {
    sub_1000442C4(&qword_100080010);
  }

  sub_1000442E4();
  if (!(!v2 & v1))
  {
    sub_1000442F4();
    if (!(v3 ^ v4 | v2))
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    sub_100044310();
    if (v3 ^ v4 | v2)
    {
      goto LABEL_12;
    }

    sub_1000442E4();
    if (!v3)
    {
      goto LABEL_13;
    }
  }
}

uint64_t HIDEvent.timestampSeconds.setter(uint64_t a1, double a2)
{
  v3.rawValue = HostTime.init(nanoseconds:)(a2 * 1000000000.0).rawValue;

  return _IOHIDEventSetTimeStamp(a1, v3.rawValue);
}

SidecarHID::HostTime __swiftcall HostTime.init(seconds:)(Swift::Double seconds)
{
  if (qword_100080010 != -1)
  {
    sub_1000442C4(&qword_100080010);
  }

  sub_1000442E4();
  if (!v2 & v1)
  {
    return -1;
  }

  sub_1000442F4();
  if (!(v3 ^ v4 | v2))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_100044310();
  if (v3 ^ v4 | v2)
  {
    goto LABEL_12;
  }

  sub_1000442E4();
  if (v3)
  {
    return v6;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t (*HIDEvent.timestampSeconds.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  sub_100042C9C(a1, a2);
  TimeStamp = IOHIDEventGetTimeStamp();
  HostTime.nanoseconds.getter(TimeStamp);
  *v2 = v4 * 0.000000001;
  return sub_100043748;
}

uint64_t sub_100043748(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2.rawValue = HostTime.init(nanoseconds:)(*a1 * 1000000000.0).rawValue;

  return _IOHIDEventSetTimeStamp(v1, v2.rawValue);
}

float sub_100043804()
{
  v2 = 0;
  mach_timebase_info(&v2);
  *&v0 = v2.numer;
  *(&v0 + 1) = v2.denom;
  result = *&v2.numer;
  static HostTime.timebase = v0;
  return result;
}

__int128 *HostTime.timebase.unsafeMutableAddressor()
{
  if (qword_100080010 != -1)
  {
    sub_1000442C4(&qword_100080010);
  }

  return &static HostTime.timebase;
}

uint64_t static HostTime.timebase.getter()
{
  if (qword_100080010 != -1)
  {
    sub_1000442C4(&qword_100080010);
  }

  return static HostTime.timebase;
}

SidecarHID::HostTime __swiftcall HostTime.init(nanoseconds:)(Swift::Double nanoseconds)
{
  if (qword_100080010 != -1)
  {
    sub_1000442C4(&qword_100080010);
  }

  sub_1000442E4();
  if (!v2 & v1)
  {
    return -1;
  }

  sub_1000442F4();
  if (!(v3 ^ v4 | v2))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_100044310();
  if (v3 ^ v4 | v2)
  {
    goto LABEL_12;
  }

  sub_1000442E4();
  if (v3)
  {
    return v6;
  }

LABEL_13:
  __break(1u);
  return result;
}

SidecarHID::HostTime __swiftcall HostTime.init(nanoseconds:)(Swift::UInt64 nanoseconds)
{
  if (qword_100080010 != -1)
  {
    sub_1000442C4(&qword_100080010);
  }

  sub_1000442E4();
  if (!v2 & v1)
  {
    return -1;
  }

  sub_1000442F4();
  if (!(v3 ^ v4 | v2))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_100044310();
  if (v3 ^ v4 | v2)
  {
    goto LABEL_12;
  }

  sub_1000442E4();
  if (v3)
  {
    return v6;
  }

LABEL_13:
  __break(1u);
  return result;
}

void HostTime.nanoseconds.getter(unint64_t a1)
{
  if (qword_100080010 != -1)
  {
    sub_1000442C4(&qword_100080010);
  }

  sub_1000442E4();
  if (!(!v2 & v1))
  {
    sub_1000442F4();
    if (!(v3 ^ v4 | v2))
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    sub_100044310();
    if (v3 ^ v4 | v2)
    {
      goto LABEL_12;
    }

    sub_1000442E4();
    if (!v3)
    {
      goto LABEL_13;
    }
  }
}

uint64_t static HostTime.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __CFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

SidecarHID::HostTime static HostTime.+ infix(_:_:)(unint64_t a1, double a2)
{
  HostTime.nanoseconds.getter(a1);

  return HostTime.init(nanoseconds:)((v3 * 0.000000001 + a2) * 1000000000.0);
}

unint64_t static HostTime.- infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 >= a2)
  {
    return a1 - a2;
  }

  else
  {
    return 0;
  }
}

void static HostTime.- infix(_:_:)(unint64_t a1, double a2)
{
  if (qword_100080010 != -1)
  {
    sub_1000442C4(&qword_100080010);
  }

  sub_1000442E4();
  if (!v5 & v3)
  {
    v4 = 1.84467441e10;
  }

  else
  {
    sub_1000442F4();
    if (!(v6 ^ v7 | v5))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    sub_100044310();
    if (v6 ^ v7 | v5)
    {
      goto LABEL_17;
    }

    sub_1000442E4();
    if (!v6)
    {
      goto LABEL_18;
    }

    v4 = v8 * 0.000000001;
  }

  if (v4 > a2)
  {
    v9 = (v4 - a2) * 1000000000.0;

    HostTime.init(nanoseconds:)(v9);
  }
}

char *sub_100043C88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043CC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100043CA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100043DC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100043CC8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100005890(&qword_1000800C8, &qword_10005CD88);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10005078C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100043DC8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100005890(&qword_10007ED68, &qword_10005B400);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1000507AC((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100043EC8(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_1000581A0();
    type metadata accessor for IOHIDEvent(0);
    if (swift_dynamicCastUnknownClass())
    {
      return v2;
    }

LABEL_10:
    sub_100058070(85);
    v3._countAndFlagsBits = 0xD000000000000046;
    v3._object = 0x8000000100060320;
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
  type metadata accessor for IOHIDEvent(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastUnknownClass())
  {
    return v2;
  }

  sub_100058070(82);
  v3._object = 0x80000001000602D0;
  v3._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  sub_100057AF0(v3);
  v5._countAndFlagsBits = 0x6576454449484F49;
  v5._object = 0xED0000666552746ELL;
  sub_100057AF0(v5);
  v6._countAndFlagsBits = 0x756F662074756220;
  v6._object = 0xEB0000000020646ELL;
  sub_100057AF0(v6);
  swift_getObjectType();
  v7._countAndFlagsBits = sub_100058310();
  sub_100057AF0(v7);

  result = sub_100058170();
  __break(1u);
  return result;
}

unint64_t sub_100044078()
{
  result = qword_1000800B8;
  if (!qword_1000800B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000800B8);
  }

  return result;
}

unint64_t sub_1000440D0()
{
  result = qword_1000800C0;
  if (!qword_1000800C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000800C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDEvent.Phase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HIDEvent.Phase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100044284);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000442C4(uint64_t a1)
{

  return swift_once();
}

void *HIDReport.__allocating_init(count:)(int64_t a1)
{
  v2 = swift_allocObject();
  result = swift_slowAlloc();
  *(v2 + 16) = result;
  *(v2 + 24) = a1;
  if (!a1)
  {
    return v2;
  }

  if (a1 >= 1)
  {
    bzero(result, a1);
    return v2;
  }

  __break(1u);
  return result;
}

void *HIDReport.init(count:)(int64_t a1)
{
  result = swift_slowAlloc();
  *(v1 + 16) = result;
  *(v1 + 24) = a1;
  if (!a1)
  {
    return v1;
  }

  if (a1 >= 1)
  {
    bzero(result, a1);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t HIDReport.deinit()
{
  if (*(v0 + 16))
  {
  }

  return v0;
}

uint64_t HIDReport.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocClassInstance(v0, 32, 7);
}

const void *static HIDReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 24))
  {
    return 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      return (memcmp(result, v4, v2) == 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*HIDReport.subscript.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(*(v2 + 16) + a2);
  return sub_1000444C8;
}

Swift::Void __swiftcall HIDReport.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 != a2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v3 + a1);
      *(v3 + a1) = *(v3 + a2);
      *(v3 + a2) = v4;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t HIDReport.baseAddress.getter()
{
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall HIDReport.fill(with:)(Swift::UInt8 with)
{
  v2 = with;
  v3 = *(v1 + 16);
  if (v3)
  {
    memset(v3, v2, *(v1 + 24));
  }

  else
  {
    __break(1u);
  }
}

void HIDReport.copy(from:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v2 >= v4)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    v5 = *(a1 + 24);
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_14:
    __break(1u);
    return;
  }

  memcpy(v3, v6, v5);
  if (v2 >= v4)
  {
    return;
  }

  if (__OFSUB__(v4, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  bzero(&v3[v5], v4 - v5);
}

void *HIDReport.copy()()
{
  v1 = v0;
  v2 = HIDReport.__allocating_init(count:)(*(v0 + 24));
  HIDReport.copy(from:)(v1);
  return v2;
}

char *HIDReport.description.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
LABEL_9:
    sub_100005890(&unk_10007F1E0, &unk_10005B790);
    sub_100047430(&qword_10007F518);
    v10 = sub_1000579D0();

    return v10;
  }

  v2 = *(v0 + 16);
  result = sub_100043CA8(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    sub_100046F60();
    do
    {
      ++v2;
      v4 = sub_100057B70();
      v6 = v5;
      if (sub_100057AC0() <= 1)
      {
        v11._countAndFlagsBits = v4;
        v11._object = v6;
        sub_100057AF0(v11);

        v4 = 48;
        v6 = 0xE100000000000000;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_100043CA8((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      *(v9 + 4) = v4;
      *(v9 + 5) = v6;
      --v1;
    }

    while (v1);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004482C(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result < 0 || *(v2 + 24) < result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100044850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000448C0(a1, a3);
  if (a2 < 1)
  {
    if (v5 <= 0 && v5 > a2)
    {
      return 0;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && v5 < a2)
  {
    return 0;
  }

  return sub_10004482C(a1, a2);
}

uint64_t sub_1000448C0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 >= a2 && ((a2 | result) & 0x8000000000000000) == 0 && v3 >= result)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000448E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100044918(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100044918(uint64_t a1)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result < 0 || result >= *(v1 + 24))
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10004493C(uint64_t *a1)
{
  result = sub_100044918(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_10004496C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10004482C(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000449D4@<X0>(uint64_t *a1@<X8>)
{
  result = Clock.clockIdentifier.getter();
  *a1 = result;
  return result;
}

void sub_100044A4C(void *a1@<X8>)
{
  HIDReport.subscript.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_100044A84@<X0>(void *a1@<X8>)
{
  result = HIDReport.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

uint64_t sub_100044B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100044850(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100044B88(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100044BCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100044C14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100044C28@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = HIDReport.index(after:)(*a1);
  *a2 = result;
  return result;
}

void *sub_100044C9C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_100027E10(*(v0 + 24), 0);
  v3 = sub_10004C168(&v5, (v2 + 4), v1);

  if (v3 != v1)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

BOOL HIDReport.getValue(_:at:bit:)(_BOOL8 result, unint64_t a2)
{
  if (a2 > 0x3F)
  {
    LOBYTE(v3) = 0;
    return (v3 & *(*(v2 + 16) + result)) != 0;
  }

  if (a2 == 63)
  {
    __break(1u);
  }

  else if (a2 <= 7)
  {
    v3 = 1 << a2;
    return (v3 & *(*(v2 + 16) + result)) != 0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall HIDReport.setValue(_:at:bit:)(Swift::Bool _, Swift::Int at, Swift::Int bit)
{
  if (bit <= 0x3F)
  {
    if (bit == 63)
    {
      __break(1u);
    }

    else if (bit <= 7)
    {
      v4 = 1 << bit;
      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  LOBYTE(v4) = 0;
LABEL_6:
  v5 = *(v3 + 16);
  if (_)
  {
    v6 = *(v5 + at) | v4;
  }

  else
  {
    v6 = *(v5 + at) & ~v4;
  }

  *(v5 + at) = v6;
}

unint64_t HIDReport.getValue(_:at:)(unint64_t result)
{
  if (__OFADD__(result, 7))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    return *(v2 + result) | (*(v2 + result + 4) << 32) | (*(v2 + result + 5) << 40) | (*(v2 + result + 6) << 48) | (*(v2 + result + 7) << 56);
  }

  return result;
}

Swift::Void __swiftcall HIDReport.setValue(_:at:)(Swift::UInt64 _, Swift::Int at)
{
  v3 = *(v2 + 16);
  *(v3 + at) = _;
  if (__OFADD__(at, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v3 + at + 1) = BYTE1(_);
  if (__OFADD__(at, 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v3 + at + 2) = BYTE2(_);
  if (__OFADD__(at, 3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v3 + at + 3) = BYTE3(_);
  if (__OFADD__(at, 4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + at + 4) = BYTE4(_);
  if (__OFADD__(at, 5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v3 + at + 5) = BYTE5(_);
  if (__OFADD__(at, 6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v3 + at + 6) = BYTE6(_);
  if (!__OFADD__(at, 7))
  {
    *(v3 + at + 7) = HIBYTE(_);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100044EE4(uint64_t result)
{
  if (!__OFADD__(result, 1))
  {
    return *(*(v1 + 16) + result) | (*(*(v1 + 16) + result + 1) << 8);
  }

  __break(1u);
  return result;
}

void sub_100044F08(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v3 + a2) = result;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1000476F0(v3);
  }
}

uint64_t sub_100044F28(uint64_t result)
{
  if (!__OFADD__(result, 3))
  {
    return *(*(v1 + 16) + result) | (*(*(v1 + 16) + result + 2) << 16) | (*(*(v1 + 16) + result + 3) << 24);
  }

  __break(1u);
  return result;
}

void sub_100044F58(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v3 + a2) = result;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v3 + a2 + 1) = BYTE1(result);
  if (__OFADD__(a2, 2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v3 + a2 + 2) = BYTE2(result);
  if (!__OFADD__(a2, 3))
  {
    sub_1000476F0(v3);
    return;
  }

LABEL_7:
  __break(1u);
}

double HIDReport.scaleValue<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a2;
  v66 = a1;
  sub_1000474A0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100041B04();
  v67 = v10 - v11;
  __chkstk_darwin(v12);
  sub_10004770C();
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v17 = __chkstk_darwin(v16);
  v18 = *(v8 + 16);
  v18(&v65 - v19, v20, v21, v17);
  sub_1000475B4();
  v22 = sub_100057FA0();
  v68 = v18;
  if (v22 < 65)
  {
    sub_10004757C();
    sub_100057FB0();
    sub_1000475B4();
    sub_100057F90();
    v30 = sub_1000476D8();
    (v8)(v30);
    v31 = sub_1000476BC();
    v18 = v68;
    if (v33)
    {
      v29 = v32;
    }

    else
    {
      v29 = v31;
    }
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000475A8();
    sub_100047740(v23, v24, v25, v26, v27);
    v28 = sub_1000476D8();
    (v8)(v28);
    v29 = v70;
  }

  (v18)(v15, v69, a4);
  sub_1000475B4();
  if (sub_100057FA0() <= 64)
  {
    sub_10004757C();
    sub_100057FB0();
    sub_1000475B4();
    sub_100057F90();
    v41 = sub_100047720();
    (v8)(v41);
    v42 = sub_1000476BC();
    v18 = v68;
    if (v33)
    {
      v40 = v43;
    }

    else
    {
      v40 = v42;
    }
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000475A8();
    sub_100047740(v34, v35, v36, v37, v38);
    v39 = sub_100047720();
    (v8)(v39);
    v40 = v70;
  }

  (v18)(v5, v66, a4);
  sub_1000475B4();
  if (sub_100057FA0() <= 64)
  {
    sub_10004757C();
    sub_100057FB0();
    sub_1000475B4();
    sub_100057F90();
    v51 = sub_1000475EC();
    (v8)(v51);
    v52 = sub_1000476BC();
    v18 = v68;
    if (v33)
    {
      v50 = v53;
    }

    else
    {
      v50 = v52;
    }
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000475A8();
    sub_100047740(v44, v45, v46, v47, v48);
    v49 = sub_1000475EC();
    (v8)(v49);
    v50 = v70;
  }

  (v18)(v67, v69, a4);
  sub_1000475B4();
  if (sub_100057FA0() <= 64)
  {
    sub_10004757C();
    v61 = sub_100057FB0();
    sub_1000475B4();
    v62 = sub_100057F90();
    v63 = sub_1000475EC();
    (v8)(v63);
    if (v61)
    {
      v60 = v62;
    }

    else
    {
      v60 = v62;
    }
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000475A8();
    sub_100047740(v54, v55, v56, v57, v58);
    v59 = sub_1000475EC();
    (v8)(v59);
    v60 = v70;
  }

  return (v50 - v60) / (v29 - v40);
}

void HIDReport.scaleValue<A>(_:_:_:)()
{
  sub_100041B88();
  v2 = v1;
  v4 = v3;
  v27 = v5;
  sub_1000474A0();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100041B04();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_1000476AC();
  v14 = __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = *(v7 + 16);
  v17(&v26 - v15, v14);
  sub_1000474F4();
  v18 = sub_100057FA0();
  v28 = v7;
  if (v18 < 65)
  {
    v26 = v4;
    sub_1000474F4();
    v21 = sub_100057FB0();
    sub_1000474F4();
    v22 = sub_100057F90();
    v23 = sub_1000476F8();
    (v7)(v23);
    if ((v21 & 1) == 0)
    {
      v4 = v26;
      goto LABEL_9;
    }

    v20 = v22;
    v4 = v26;
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000474C4(&v29, v16, &type metadata for Double);
    v19 = sub_1000476F8();
    (v7)(v19);
    v20 = v29;
  }

  if (v20 < 0.0)
  {
    (v17)(v0, v27, v2);
    sub_1000474E4();
    if (sub_100057FA0() < 65)
    {
      sub_1000474F4();
      sub_100057FB0();
      sub_1000474E4();
      sub_100057F90();
      v25 = sub_1000474B0();
      (v7)(v25);
      goto LABEL_14;
    }

    sub_100046FB4();
    sub_100005BA4();
    sub_1000474C4(&v29, v0, &type metadata for Double);
    v24 = v0;
    goto LABEL_11;
  }

LABEL_9:
  (v17)(v11, v4, v2);
  sub_1000474F4();
  if (sub_100057FA0() < 65)
  {
    sub_1000474F4();
    sub_100057FB0();
    sub_1000474F4();
    sub_100057F90();
    (v7)(v11, v2);
    goto LABEL_14;
  }

  sub_100046FB4();
  sub_100005BA4();
  sub_1000474C4(&v29, v11, &type metadata for Double);
  v24 = v11;
LABEL_11:
  (v7)(v24, v2);
LABEL_14:
  sub_100041BF4();
}

{
  sub_100041B88();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1000474A0();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100041B04();
  sub_1000476AC();
  __chkstk_darwin(v12);
  v21 = sub_100047690(v13, v14, v15, v16, v17, v18, v19, v20, v33);
  v0(v21);
  sub_1000474F4();
  if (sub_100057FA0() < 65)
  {
    sub_1000474F4();
    v24 = sub_100057FB0();
    sub_1000474F4();
    v25 = sub_100057F90();
    v26 = sub_100047500();
    v10(v26);
    if (v24)
    {
      v23 = v25;
    }

    else
    {
      v23 = v25;
    }
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000474C4(&v34, v2, &type metadata for Double);
    v22 = sub_100047500();
    v10(v22);
    v23 = v34;
  }

  (v0)(v1, v6, v4);
  sub_1000474E4();
  if (sub_100057FA0() <= 64)
  {
    sub_1000474F4();
    v29 = sub_100057FB0();
    sub_1000474E4();
    v30 = sub_100057F90();
    v31 = sub_1000474B0();
    v10(v31);
    if (v29)
    {
      v28 = v30;
    }

    else
    {
      v28 = v30;
    }
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000474C4(&v34, v1, &type metadata for Double);
    v27 = sub_1000474B0();
    v10(v27);
    v28 = v34;
  }

  v32 = v23 + (v28 - v23) * v8;
  if (v32 <= v23)
  {
    v32 = v23;
  }

  if (v28 >= v32)
  {
    v28 = v32;
  }

  v34 = v28;
  sub_100046FB4();
  sub_1000476CC();
  sub_100057FC0();
  sub_100041BF4();
}

{
  sub_100041B88();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1000474A0();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100041B04();
  sub_1000476AC();
  __chkstk_darwin(v12);
  v21 = sub_100047690(v13, v14, v15, v16, v17, v18, v19, v20, v34);
  v0(v21);
  sub_1000474F4();
  if (sub_100057FA0() < 65)
  {
    sub_1000474F4();
    v24 = sub_100057FB0();
    sub_1000474F4();
    v25 = sub_100057F90();
    v26 = sub_100047500();
    v10(v26);
    if (v24)
    {
      v23 = v25;
    }

    else
    {
      v23 = v25;
    }
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000474C4(&v35, v2, &type metadata for Double);
    v22 = sub_100047500();
    v10(v22);
    v23 = v35;
  }

  (v0)(v1, v6, v4);
  sub_1000474E4();
  if (sub_100057FA0() <= 64)
  {
    sub_1000474F4();
    v29 = sub_100057FB0();
    sub_1000474E4();
    v30 = sub_100057F90();
    v31 = sub_1000474B0();
    v10(v31);
    if (v29)
    {
      v28 = v30;
    }

    else
    {
      v28 = v30;
    }
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000474C4(&v35, v1, &type metadata for Double);
    v27 = sub_1000474B0();
    v10(v27);
    v28 = v35;
  }

  if (v8 >= 0.0)
  {
    v32 = v28;
  }

  else
  {
    v32 = v23;
  }

  v33 = fabs(v32) * v8;
  if (v33 <= v23)
  {
    v33 = v23;
  }

  if (v28 >= v33)
  {
    v28 = v33;
  }

  v35 = v28;
  sub_100046FB4();
  sub_1000476CC();
  sub_100057FC0();
  sub_100041BF4();
}

double HIDReport.getScaledValue(_:at:logicalMinimum:logicalMaximum:)(uint64_t a1, __int16 a2, __int16 a3)
{
  v5 = HIDReport.getValue(_:at:)();
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  return v5 / fabs(v6);
}

double HIDReport.getScaledValue(_:at:logicalMinimum:logicalMaximum:)(uint64_t a1, int a2, int a3)
{
  v5 = HIDReport.getValue(_:at:)();
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  return v5 / fabs(v6);
}

uint64_t sub_100045804(double a1, uint64_t a2, unsigned __int8 a3)
{
  sub_100047610(a3, a1);
  sub_10004B8F8();
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  sub_100047630();
  sub_100047514();
  sub_100047540(" value cannot be converted to ");
  v14._countAndFlagsBits = 0x38746E4955;
  v14._object = 0xE500000000000000;
  sub_100057AF0(v14);
  sub_100047670(" because it is outside the representable range");
  sub_1000475FC();
  result = sub_100047650("Fatal error", v4, v5, v6, v7, "Swift/Integers.swift", v8, v9, v10, v11);
  __break(1u);
  return result;
}

uint64_t sub_1000458A4(double a1, uint64_t a2, unsigned __int16 a3)
{
  sub_100047610(a3, a1);
  sub_10004BA0C();
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  sub_100047630();
  sub_100047514();
  sub_100047540(" value cannot be converted to ");
  v14._countAndFlagsBits = 0x3631746E4955;
  v14._object = 0xE600000000000000;
  sub_100057AF0(v14);
  sub_100047670(" because it is outside the representable range");
  sub_1000475FC();
  result = sub_100047650("Fatal error", v4, v5, v6, v7, "Swift/Integers.swift", v8, v9, v10, v11);
  __break(1u);
  return result;
}

uint64_t sub_100045944(unsigned int a1, unsigned int a2, __n128 a3)
{
  sub_10004BB20();
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  sub_100058070(80);
  v6._countAndFlagsBits = 0x656C62756F44;
  v6._object = 0xE600000000000000;
  sub_100057AF0(v6);
  v7._object = 0x8000000100060420;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100057AF0(v7);
  v8._countAndFlagsBits = 0x3233746E4955;
  v8._object = 0xE600000000000000;
  sub_100057AF0(v8);
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  v9._object = 0x8000000100060440;
  sub_100057AF0(v9);
  result = sub_100058160();
  __break(1u);
  return result;
}

uint64_t HIDReport.setScaledValue(_:_:at:logicalMinimum:logicalMaximum:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004756C(a1, a2);
  result = sub_100045804(v6, v4, v5);
  *(*(v3 + 16) + v2) = result;
  return result;
}

{
  v4 = sub_10004756C(a1, a2);
  result = sub_100045D34(v4, v5, v6);
  *(*(v3 + 16) + v2) = result;
  return result;
}

uint64_t HIDReport.setScaledValue(_:_:at:logicalMinimum:logicalMaximum:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1000462DC(a1, a2);
}

{
  return sub_1000462DC(a1, a2);
}

void HIDReport.setScaledValue(_:_:at:logicalMinimum:logicalMaximum:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004756C(a1, a2);
  v6 = sub_100045944(v3, v4, v5);

  HIDReport.setValue(_:at:)(v6, v2);
}

{
  v3 = sub_10004756C(a1, a2);
  v6 = sub_100045F1C(v3, v4, v5);

  HIDReport.setValue(_:at:)(v6, v2);
}

uint64_t sub_100045D34(char a1, char a2, __n128 a3)
{
  sub_10004BC30();
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  sub_100047630();
  sub_100047514();
  sub_100047540(" value cannot be converted to ");
  v14._countAndFlagsBits = 947154505;
  v14._object = 0xE400000000000000;
  sub_100057AF0(v14);
  sub_100047670(" because it is outside the representable range");
  sub_1000475FC();
  result = sub_100047650("Fatal error", v4, v5, v6, v7, "Swift/Integers.swift", v8, v9, v10, v11);
  __break(1u);
  return result;
}

uint64_t sub_100045DEC(__int16 a1, __int16 a2, __n128 a3)
{
  sub_10004BD94();
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  sub_100058070(80);
  v6._countAndFlagsBits = 0x656C62756F44;
  v6._object = 0xE600000000000000;
  sub_100057AF0(v6);
  v7._object = 0x8000000100060420;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100057AF0(v7);
  v8._countAndFlagsBits = 0x3631746E49;
  v8._object = 0xE500000000000000;
  sub_100057AF0(v8);
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  v9._object = 0x8000000100060440;
  sub_100057AF0(v9);
  result = sub_100058160();
  __break(1u);
  return result;
}

uint64_t sub_100045F1C(int a1, int a2, __n128 a3)
{
  sub_10004BEF8();
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  sub_100058070(80);
  v6._countAndFlagsBits = 0x656C62756F44;
  v6._object = 0xE600000000000000;
  sub_100057AF0(v6);
  v7._object = 0x8000000100060420;
  v7._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100057AF0(v7);
  v8._countAndFlagsBits = 0x3233746E49;
  v8._object = 0xE500000000000000;
  sub_100057AF0(v8);
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  v9._object = 0x8000000100060440;
  sub_100057AF0(v9);
  result = sub_100058160();
  __break(1u);
  return result;
}

uint64_t sub_1000462DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004756C(a1, a2);
  result = v5(v4);
  v7 = *(v3 + 16);
  *(v7 + v2) = result;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v7 + v2 + 1) = BYTE1(result);
  }

  return result;
}

Swift::Double __swiftcall HIDReport.resolution(logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(Swift::Double logicalMinimum, Swift::Double logicalMaximum, Swift::Double_optional physicalMinimum, Swift::Double_optional physicalMaximum, Swift::Double_optional exponent)
{
  v10 = logicalMaximum;
  v11 = logicalMinimum;
  if (!physicalMaximum.is_nil)
  {
    v10 = logicalMaximum;
    v11 = logicalMinimum;
    if ((v5 & 1) == 0)
    {
      v11 = *&physicalMinimum.is_nil;
      if (*&physicalMinimum.is_nil == 0.0)
      {
        if ((*&exponent.is_nil & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = *&exponent.is_nil;
        }

        else
        {
          v10 = logicalMaximum;
        }

        if ((*&exponent.is_nil & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v11 = logicalMinimum;
        }
      }

      else
      {
        v10 = *&exponent.is_nil;
      }
    }
  }

  v12 = 1.0;
  if ((v7 & 1) == 0 && v6 != 0.0)
  {
    v12 = __exp10(v6);
  }

  return (logicalMaximum - logicalMinimum) / ((v10 - v11) * v12);
}

uint64_t HIDReport.loadValue<A>(from:at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  sub_1000474A0();
  v26 = v8;
  __chkstk_darwin(v9);
  sub_100041B04();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  sub_10004770C();
  __chkstk_darwin(v14);
  v16 = v25 - v15;
  swift_getAssociatedConformanceWitness();
  sub_100058260();
  v29 = v16;
  sub_100058210();
  result = sub_100058110();
  if (result >= -7)
  {
    v25[1] = a4;
    if ((result + 7) < 0xF)
    {
LABEL_7:
      v23 = v26;
      v24 = v29;
      (*(v26 + 16))(v4, v29, a2);
      sub_1000476CC();
      sub_100057FD0();
      return (*(v23 + 8))(v24, a2);
    }

    v18 = 0;
    v19 = 0;
    v27 = *(v27 + 16);
    v20 = (v26 + 8);
    v21 = result / 8;
    while (!__OFADD__(v28, v19))
    {
      v31 = *(v27 + v28 + v19);
      sub_100046F60();
      sub_1000476CC();
      result = sub_100057FD0();
      if (v19 == 0x1000000000000000)
      {
        goto LABEL_9;
      }

      ++v19;
      v30 = v18;
      sub_10000DE9C();
      sub_100057F70();
      v22 = *v20;
      (*v20)(v12, a2);
      sub_100057F80();
      result = (v22)(v4, a2);
      v18 += 8;
      if (v21 == v19)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  sub_1000474A0();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000068D4();
  v19 = v18 - v17;
  HIDReport.loadValue<A>(from:at:)(v20, v21, v18 - v17);
  sub_1000474F4();
  if (sub_100057FA0() < 65)
  {
    sub_1000474F4();
    v23 = sub_100057FB0();
    sub_1000474F4();
    v24 = sub_100057F90();
    (*(v15 + 8))(v19, a3);
    if (v23)
    {
      v22 = v24;
    }

    else
    {
      v22 = v24;
    }
  }

  else
  {
    sub_100046FB4();
    sub_100005BA4();
    sub_1000474C4(&v33, v19, &type metadata for Double);
    (*(v15 + 8))(v19, a3);
    v22 = v33;
  }

  if (v22 > a5 || v22 < a4)
  {
    *&result = 0.0;
  }

  else
  {
    v27 = a6 == 0.0;
    v28 = a7 == 0.0;
    if (v27 && v28)
    {
      v29 = a5;
    }

    else
    {
      v29 = a7;
    }

    if (v27 && v28)
    {
      v30 = a4;
    }

    else
    {
      v30 = a6;
    }

    v31 = v29 - v30;
    v32 = __exp10(a8);
    if (a8 == 0.0)
    {
      v32 = 1.0;
    }

    *&result = v22 / ((a5 - a4) / (v32 * v31));
  }

  return result;
}

uint64_t HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  return HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(a1, a2, a3, a4, a5, -1.0, 1.0, 0.0);
}

{
  return HIDReport.loadValue<A>(from:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(a1, a2, a3, a4, a5, 0.0, 1.0, 0.0);
}

uint64_t HIDReport.storeValue<A>(_:to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000474A0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000068D4();
  v12 = v11 - v10;
  result = sub_100058110();
  if (result < -7)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if ((result + 7) >= 0xF)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(v5 + 16);
    v17 = result / 8;
    while (1)
    {
      v18 = a3 + v15;
      if (__OFADD__(a3, v15))
      {
        break;
      }

      if (v15 == 0x1000000000000000)
      {
        goto LABEL_9;
      }

      ++v15;
      sub_10000DE9C();
      sub_100057F60();
      v19 = sub_100057F90();
      result = (*(v8 + 8))(v12, a4);
      *(v16 + v18) = v19;
      v14 += 8;
      if (v17 == v15)
      {
        return result;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1000474A0();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000068D4();
  v21 = v20 - v19;
  if ((v22 & 1) != 0 || (v18 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v24 = sub_1000474F4();
    sub_100046C64(v24, v25, v26);
  }

  else
  {
    __exp10(a7);
    sub_100046FB4();
    sub_1000476CC();
    sub_100057FC0();
  }

  HIDReport.storeValue<A>(_:to:at:)(v21, v23, a9, a10, a11);
  return (*(v16 + 8))(v21, a10);
}

uint64_t sub_100046C64@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, double a5@<D1>)
{
  v18[1] = a3;
  v7 = *(a1 - 8);
  __chkstk_darwin(a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = v18 - v12;
  v19 = v11;
  sub_100046FB4();
  sub_100057FC0();
  sub_100058130();
  v14 = sub_1000579E0();
  v15 = *(v7 + 8);
  v15(v9, a1);
  v15(v13, a1);
  if (v14)
  {
    return sub_100058130();
  }

  v19 = a5;
  sub_100057FC0();
  sub_100058120();
  v17 = sub_1000579F0();
  v15(v9, a1);
  v15(v13, a1);
  if (v17)
  {
    return sub_100058120();
  }

  v19 = 0.0;
  v20 = 0xE000000000000000;
  sub_100058070(54);
  v21._object = 0x80000001000603C0;
  v21._countAndFlagsBits = 0xD000000000000031;
  sub_100057AF0(v21);
  sub_100057D10();
  v22._countAndFlagsBits = 45;
  v22._object = 0xE100000000000000;
  sub_100057AF0(v22);
  sub_100057D10();
  result = sub_100058160();
  __break(1u);
  return result;
}

uint64_t HIDReport.storeValue<A>(_:to:at:logicalMinimum:logicalMaximum:)(__n128 a1, __n128 a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1000475C0(a3, a4, a5, a6, a7, a8, a1.n128_f64[0], a2.n128_f64[0], -1.0);
}

{
  return sub_1000475C0(a3, a4, a5, a6, a7, a8, a1.n128_f64[0], a2.n128_f64[0], 0.0);
}

double Double.clamped(to:)(double result, double a2, double a3)
{
  if (a3 > result)
  {
    result = a3;
  }

  if (result > a2)
  {
    return a2;
  }

  return result;
}

unint64_t sub_100046F60()
{
  result = qword_1000800D0;
  if (!qword_1000800D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000800D0);
  }

  return result;
}

unint64_t sub_100046FB4()
{
  result = qword_1000800D8;
  if (!qword_1000800D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000800D8);
  }

  return result;
}

unint64_t sub_100047094()
{
  result = qword_1000800F8;
  if (!qword_1000800F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000800F8);
  }

  return result;
}

unint64_t sub_1000471F0(uint64_t a1)
{
  result = sub_100047734(a1);
  if (!result)
  {
    v4 = v3;
    sub_1000058D8(&qword_100080108, &qword_10005CDF8);
    sub_100047430(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000472B8(uint64_t a1)
{
  result = sub_100047734(a1);
  if (!result)
  {
    type metadata accessor for HIDReport();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100047334(uint64_t a1)
{
  result = sub_100047734(a1);
  if (!result)
  {
    sub_1000058D8(&qword_1000800F0, &qword_10005CDF0);
    sub_100047094();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100047430(uint64_t a1)
{
  result = sub_100047734(a1);
  if (!result)
  {
    sub_1000058D8(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000474C4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return static BinaryFloatingPoint<>._convert<A>(from:)(a1, a2, a3, v3, v4, v5);
}

void sub_100047514()
{
  v1._countAndFlagsBits = 0x656C62756F44;
  v1._object = 0xE600000000000000;

  sub_100057AF0(v1);
}

void sub_100047540(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD00000000000001ELL;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_100057AF0(v2);
}

double sub_100047588@<D0>(char a1@<W1>, char a2@<W2>, int a3@<W8>)
{
  v3 = a3;
  if (a3 >= 0)
  {
    a1 = a2;
  }

  return v3 / fabs(a1);
}

double sub_100047610@<D0>(unsigned int a1@<W8>, double a2@<D0>)
{
  result = (a1 - v2) * a2 + v2;
  if (result <= v2)
  {
    return v2;
  }

  return result;
}

void sub_100047630()
{

  sub_100058070(80);
}

uint64_t sub_100047650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_100058160();
}

void sub_100047670(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 16;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_100057AF0(v3);
}

uint64_t sub_100047740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return static BinaryFloatingPoint<>._convert<A>(from:)(a1, a2, a3, a4, a5, v5);
}

uint64_t sub_100047758(unsigned int a1, unsigned __int8 a2)
{
  v2 = a1 & 0x60;
  v3 = (a1 >> 5) & 3;
  result = 14;
  switch(v3)
  {
    case 1:
      if ((a2 - 1) < 0xBu)
      {
        v5 = &unk_10005D15A + (a2 - 1);
        goto LABEL_6;
      }

      break;
    case 2:
      return result;
    case 3:
      if (v2 != 96)
      {
        __break(1u);
        JUMPOUT(0x1000477D4);
      }

      return result;
    default:
      if (a2 < 0xAu)
      {
        v5 = &unk_10005D150 + a2;
LABEL_6:
        result = *v5;
      }

      break;
  }

  return result;
}

Swift::Int sub_1000477E4(uint64_t a1)
{
  v2 = *v1;
  sub_1000582B0();
  HIDRequest.Request.hash(into:)(v4, v2);
  return sub_1000582F0();
}

uint64_t HIDRequest.data.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = BYTE6(a3);
  v4 = a3 >> 62;
  result = 0;
  v7 = HIDWORD(a2);
  v8 = v3;
  switch(v4)
  {
    case 1uLL:
      LODWORD(v9) = v7 - a2;
      if (__OFSUB__(v7, a2))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v9 = v9;
LABEL_6:
      if (v9 < 9)
      {
        return 0;
      }

      if (v4 != 2)
      {
        if (v4 != 1)
        {
          goto LABEL_13;
        }

        if (!__OFSUB__(v7, a2))
        {
          v8 = v7 - a2;
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      v14 = *(a2 + 16);
      v13 = *(a2 + 24);
      v8 = v13 - v14;
      if (__OFSUB__(v13, v14))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_13:
      if (v8 < 8)
      {
LABEL_20:
        __break(1u);
        JUMPOUT(0x1000479BCLL);
      }

      return sub_100057770();
    case 2uLL:
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      v12 = __OFSUB__(v10, v11);
      v9 = v10 - v11;
      if (!v12)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    case 3uLL:
      return result;
    default:
      v9 = v3;
      goto LABEL_6;
  }
}

uint64_t HIDRequest.init(_:wValue:wIndex:data:)(uint64_t a1, __int16 a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v8 = a5 >> 60;
  if (a5 >> 60 != 15)
  {
    v10 = sub_100047F20();
    sub_100018F90(v10, v11);
    sub_100047F20();
    v9 = sub_100057750();
    v12 = sub_100047F20();
    result = sub_1000190FC(v12, v13);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v9 >> 16))
    {
      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

  LOWORD(v9) = 0;
LABEL_5:
  sub_100005890(&qword_10007EED0, qword_10005B4E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10005D030;
  *(v15 + 32) = byte_10005D165[a1];
  *(v15 + 33) = byte_10005D173[a1];
  *(v15 + 34) = a2;
  *(v15 + 36) = a3;
  *(v15 + 38) = v9;
  sub_100042DB0(v15);
  if (v8 <= 0xE)
  {
    sub_100047F20();
    sub_100057760();
    v16 = sub_100047F20();
    sub_1000190FC(v16, v17);
  }

  return a1;
}

uint64_t HIDRequest.init(rawData:)(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v2) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v2 = v2;
LABEL_6:
      if (v2 >= 8)
      {
        v6 = sub_100047F2C(0);
        v7 = sub_100047F2C(1);
        if (sub_100047758(v6, v7) != 14)
        {
          v8 = sub_100047F14();
          sub_100018F90(v8, v9);
          v10 = sub_100047F2C(6);
          v11 = (v10 | (sub_100047F2C(7) << 8)) + 8;
          if ((v11 & 0x10000) == 0)
          {
            sub_100047F14();
            v12 = sub_100057750();
            v13 = sub_100047F14();
            sub_10000686C(v13, v14);
            if (v12 == v11)
            {
              v15 = sub_100047F14();
              sub_100018F90(v15, v16);
            }

            goto LABEL_11;
          }

LABEL_14:
          __break(1u);
          JUMPOUT(0x100047C60);
        }
      }

LABEL_11:
      v17 = sub_100047F14();
      sub_10000686C(v17, v18);
      return sub_100047F20();
    case 2uLL:
      v4 = *(a1 + 16);
      v3 = *(a1 + 24);
      v5 = __OFSUB__(v3, v4);
      v2 = v3 - v4;
      if (!v5)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 3uLL:
      goto LABEL_11;
    default:
      v2 = BYTE6(a2);
      goto LABEL_6;
  }
}

unint64_t sub_100047C74()
{
  result = qword_100080200;
  if (!qword_100080200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080200);
  }

  return result;
}

uint64_t sub_100047CC8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_100047CE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100047CF8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF3 && a1[24])
    {
      v2 = *a1 + 242;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0xE;
      v2 = v3 - 14;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100047D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDRequest.Request(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HIDRequest.Request(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100047EDCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100047F2C(uint64_t a1)
{

  return sub_100057710();
}

SidecarHID::HIDFixed_optional __swiftcall HIDFixed.init(doubleValue:)(Swift::Double doubleValue)
{
  sub_100048E2C(doubleValue);
  if (v5 ^ v6 | v4)
  {
    v8 = round(v3 * 65536.0);
    if (v8 > 2147483650.0)
    {
      v9 = 2147483650.0;
    }

    else
    {
      v9 = v8;
    }

    if (v8 > -2147483650.0)
    {
      if (v8 <= 2147483650.0 && (*&v8 & 0x7FFFFFFFFFFFFFFFLL) > v2)
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      v9 = -2147483650.0;
    }

    if (v9 > -2147483650.0)
    {
      if (v9 < 2147483650.0)
      {
        v7 = v9;
        return (v7 | (((*&v3 & 0x7FFFFFFFFFFFFFFFLL) > v2) << 32));
      }

LABEL_16:
      __break(1u);
      return v1;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = 0;
  return (v7 | (((*&v3 & 0x7FFFFFFFFFFFFFFFLL) > v2) << 32));
}

uint64_t static HIDFixed.+ infix(_:_:)(int a1, int a2)
{
  v2 = __OFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

_DWORD *static HIDFixed.+= infix(_:_:)(_DWORD *result, int a2)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

uint64_t static HIDFixed.- infix(_:_:)(int a1, int a2)
{
  v2 = __OFSUB__(a1, a2);
  result = (a1 - a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

_DWORD *static HIDFixed.-= infix(_:_:)(_DWORD *result, int a2)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

uint64_t sub_1000480B0@<X0>(int *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  result = static HIDFixed.+ infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000480E8@<X0>(int *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  result = static HIDFixed.- infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_100048124(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return (result << 16);
  }

  __break(1u);
  return result;
}

SidecarHID::HIDFixed sub_10004814C@<W0>(Swift::Int *a1@<X0>, SidecarHID::HIDFixed *a2@<X8>)
{
  result.rawValue = HIDFixed.init(integerLiteral:)(*a1).rawValue;
  a2->rawValue = result.rawValue;
  return result;
}

SidecarHID::HIDFixed __swiftcall HIDFixed.init(floatLiteral:)(Swift::Double floatLiteral)
{
  sub_100048E2C(floatLiteral);
  if (!(v3 ^ v4 | v2))
  {
    return variable initialization expression of Clock.heartbeat();
  }

  v6 = sub_100048DE8(v1);
  v9 = sub_100048DA4(v6, v7, 2147483650.0);
  if (!v2 & v13)
  {
    if (v10 <= v11 && (v8 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v12;
  }

  if (v9 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < 2147483650.0)
  {
    return sub_100048DD4(v9);
  }

LABEL_12:
  __break(1u);
  return result;
}

SidecarHID::HIDFixed sub_100048208@<W0>(Swift::Double *a1@<X0>, SidecarHID::HIDFixed *a2@<X8>)
{
  result.rawValue = HIDFixed.init(floatLiteral:)(*a1).rawValue;
  a2->rawValue = result.rawValue;
  return result;
}

unint64_t HIDFixed.init<A>(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v66[2] = v66 - v7;
  v8 = *(a2 - 8);
  __chkstk_darwin(v9);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  sub_1000474F4();
  v13 = sub_100057FB0();
  v66[1] = AssociatedTypeWitness;
  if ((v13 & 1) == 0)
  {
    sub_1000474F4();
    v14 = sub_100057FB0();
    sub_1000474F4();
    v15 = sub_100057FA0();
    if ((v14 & 1) == 0)
    {
      if (v15 >= 32)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v15 <= 32)
    {
      swift_getAssociatedConformanceWitness();
      sub_100058260();
      sub_100048E00();
      v66[0] = v5;
      sub_100058210();
      sub_100048DDC();
      v40 = sub_100048E14(a1, v37, v38, v39);
      AssociatedTypeWitness = *(v8 + 8);
      v41 = sub_100048DC8();
      AssociatedTypeWitness(v41);
      if (v40)
      {
        goto LABEL_20;
      }

      v42 = sub_100048D8C();
      v43(v42);
      sub_1000474F4();
      v44 = sub_100057F90();
      v45 = sub_100048DC8();
      AssociatedTypeWitness(v45);
      if (v44 < -32768)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

LABEL_6:
    v67 = -32768;
    v16 = sub_100048844();
    sub_100048D68(v16, &type metadata for Int32, v16);
    sub_100048DDC();
    v20 = sub_100048E14(a1, v17, v18, v19);
    v21 = sub_100048D54();
    AssociatedTypeWitness(v21);
    if (v20)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  sub_1000474F4();
  if (sub_100057FA0() >= 32)
  {
    goto LABEL_6;
  }

LABEL_9:
  v22 = sub_100048D8C();
  v23(v22);
  sub_1000474F4();
  v24 = sub_100057F90();
  v25 = sub_100048D54();
  AssociatedTypeWitness(v25);
  if (v24 < -32768)
  {
    goto LABEL_20;
  }

LABEL_10:
  sub_1000474F4();
  v26 = sub_100057FB0();
  sub_1000474F4();
  v27 = sub_100057FA0();
  if (v26)
  {
    if (v27 > 32)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (v27 <= 31)
  {
LABEL_19:
    v31 = sub_100048D8C();
    v32(v31);
    sub_1000474F4();
    v33 = sub_100057F90();
    v34 = sub_100048D54();
    AssociatedTypeWitness(v34);
    if (v33 < 0x8000)
    {
      goto LABEL_13;
    }

LABEL_20:
    (AssociatedTypeWitness)(a1, a2);
    v35 = 0;
    v36 = 1;
    goto LABEL_43;
  }

LABEL_12:
  v67 = 0x7FFF;
  v28 = sub_100048844();
  sub_100048D68(v28, &type metadata for Int32, v28);
  sub_100048DDC();
  v29 = sub_1000579F0();
  v30 = sub_100048D54();
  AssociatedTypeWitness(v30);
  if (v29)
  {
    goto LABEL_20;
  }

LABEL_13:
  (*(v8 + 16))(v11, a1, a2);
  sub_1000474F4();
  if (sub_100057FB0())
  {
    sub_1000474E4();
    if (sub_100057FA0() > 32)
    {
      v67 = 0x80000000;
      sub_1000474F4();
      if (sub_100057FB0())
      {
        sub_1000474E4();
        if (sub_100057FA0() < 32)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      sub_1000474F4();
      v46 = sub_100057FB0();
      sub_1000474E4();
      v47 = sub_100057FA0();
      if (v46)
      {
        if (v47 > 32)
        {
LABEL_26:
          v48 = sub_100048844();
          sub_100048D68(v48, &type metadata for Int32, v48);
          sub_100048DDC();
          v52 = sub_100048E14(v11, v49, v50, v51);
          v53 = sub_100048DC8();
          result = (AssociatedTypeWitness)(v53);
          if ((v52 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_44:
          __break(1u);
          return result;
        }

        swift_getAssociatedConformanceWitness();
        sub_100058260();
        sub_100048E00();
        sub_100058210();
        sub_100048DDC();
        v58 = sub_100048E14(v11, v55, v56, v57);
        v59 = sub_100048DC8();
        result = (AssociatedTypeWitness)(v59);
        if (v58)
        {
          goto LABEL_44;
        }

LABEL_31:
        sub_1000474E4();
        sub_100057F90();
        goto LABEL_32;
      }

      if (v47 < 32)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_32:
  sub_1000474E4();
  if (sub_100057FA0() <= 32)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v67 = 0x7FFFFFFF;
    sub_1000474F4();
    v60 = sub_100057FB0();
    sub_1000474E4();
    v61 = sub_100057FA0();
    if ((v60 & 1) == 0)
    {
      break;
    }

    if (v61 < 33)
    {
      goto LABEL_41;
    }

LABEL_35:
    v62 = sub_100048844();
    sub_100048D68(v62, &type metadata for Int32, v62);
    sub_100048DDC();
    v63 = sub_1000579F0();
    v64 = sub_100048DC8();
    AssociatedTypeWitness(v64);
    if (v63)
    {
      __break(1u);
LABEL_37:
      sub_1000474E4();
      if (sub_100057FA0() == 32)
      {
        sub_1000474F4();
        if ((sub_100057FB0() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_42;
  }

  if (v61 >= 32)
  {
    goto LABEL_35;
  }

LABEL_41:
  sub_1000474E4();
  sub_100057F90();
LABEL_42:
  sub_1000474E4();
  v65 = sub_100057F90();
  (AssociatedTypeWitness)(a1, a2);
  (AssociatedTypeWitness)(v11, a2);
  v36 = 0;
  v35 = v65 << 16;
LABEL_43:
  LOBYTE(v67) = v36;
  return v35 | (v36 << 32);
}

unint64_t sub_100048844()
{
  result = qword_100080208;
  if (!qword_100080208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080208);
  }

  return result;
}

uint64_t HIDFixed.magnitude.getter(uint64_t result)
{
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

unint64_t sub_1000488A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = HIDFixed.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1000488D4@<X0>(_DWORD *a1@<X8>)
{
  result = HIDFixed.magnitude.getter(*v1);
  *a1 = result;
  return result;
}

void static HIDFixed.* infix(_:_:)(unsigned int a1, unsigned int a2)
{
  sub_100048E2C(vcvtd_n_f64_s32(a1, 0x10uLL) * vcvtd_n_f64_s32(a2, 0x10uLL));
  if (!(v4 ^ v5 | v3))
  {
    variable initialization expression of Clock.heartbeat();
    return;
  }

  v6 = sub_100048DE8(v2);
  v9 = sub_100048DA4(v6, v7, 2147483650.0);
  if (!v3 & v13)
  {
    if (v10 <= v11 && (v8 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v12;
  }

  if (v9 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < 2147483650.0)
  {
    sub_100048DD4(v9);
    return;
  }

LABEL_12:
  __break(1u);
}

void static HIDFixed.* infix(_:_:)(unsigned int a1, double a2)
{
  sub_100048E2C(vcvtd_n_f64_s32(a1, 0x10uLL) * a2);
  if (!(v4 ^ v5 | v3))
  {
    variable initialization expression of Clock.heartbeat();
    return;
  }

  v6 = sub_100048DE8(v2);
  v9 = sub_100048DA4(v6, v7, 2147483650.0);
  if (!v3 & v13)
  {
    if (v10 <= v11 && (v8 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v12;
  }

  if (v9 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < 2147483650.0)
  {
    sub_100048DD4(v9);
    return;
  }

LABEL_12:
  __break(1u);
}

void static HIDFixed./ infix(_:_:)(unsigned int a1, unsigned int a2)
{
  sub_100048E2C(vcvtd_n_f64_s32(a1, 0x10uLL) / vcvtd_n_f64_s32(a2, 0x10uLL));
  if (!(v4 ^ v5 | v3))
  {
    variable initialization expression of Clock.heartbeat();
    return;
  }

  v6 = sub_100048DE8(v2);
  v9 = sub_100048DA4(v6, v7, 2147483650.0);
  if (!v3 & v13)
  {
    if (v10 <= v11 && (v8 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v12;
  }

  if (v9 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < 2147483650.0)
  {
    sub_100048DD4(v9);
    return;
  }

LABEL_12:
  __break(1u);
}

void static HIDFixed./ infix(_:_:)(unsigned int a1, double a2)
{
  sub_100048E2C(vcvtd_n_f64_s32(a1, 0x10uLL) / a2);
  if (!(v4 ^ v5 | v3))
  {
    variable initialization expression of Clock.heartbeat();
    return;
  }

  v6 = sub_100048DE8(v2);
  v9 = sub_100048DA4(v6, v7, 2147483650.0);
  if (!v3 & v13)
  {
    if (v10 <= v11 && (v8 & 1) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v12;
  }

  if (v9 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < 2147483650.0)
  {
    sub_100048DD4(v9);
    return;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_100048C04()
{
  result = qword_100080210;
  if (!qword_100080210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080210);
  }

  return result;
}

unint64_t sub_100048C74()
{
  result = qword_100080218;
  if (!qword_100080218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080218);
  }

  return result;
}

unint64_t sub_100048CCC()
{
  result = qword_100080220;
  if (!qword_100080220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080220);
  }

  return result;
}

uint64_t sub_100048D68(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)(v5 - 84, a2, a3, v3, v4);
}

double sub_100048DA4(double a1, double a2, double a3)
{
  if (a2 > a3)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_100048E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1000579F0();
}

void HIDUsage.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = WORD1(a2);
  sub_1000582D0(a2);
  sub_1000582D0(v2);
}

Swift::Int HIDUsage.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  v2 = WORD1(a1);
  sub_1000582B0();
  sub_1000582D0(v1);
  sub_1000582D0(v2);
  return sub_1000582F0();
}

Swift::Int sub_100048EFC(uint64_t a1)
{
  v2 = *v1;
  sub_1000582B0();
  HIDUsage.hash(into:)(v4, v2);
  return sub_1000582F0();
}

uint64_t HIDUsage.description.getter(unsigned int a1)
{
  v1 = HIWORD(a1);
  v22 = a1;
  v2 = sub_10000DE9C();
  v10 = sub_100049144(v2, v3, v4, v5, v6, v7, v8, v9, v22);
  v18 = sub_100049144(v10, v11, v12, v13, v14, v15, v16, v17, v1);
  v20 = v19;
  v23._countAndFlagsBits = 58;
  v23._object = 0xE100000000000000;
  sub_100057AF0(v23);
  v24._countAndFlagsBits = v18;
  v24._object = v20;
  sub_100057AF0(v24);

  return v10;
}

unint64_t sub_100049058()
{
  result = qword_100080228;
  if (!qword_100080228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080228);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HIDUsage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100049144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100057B70();
}

uint64_t HIDEvent.Keyboard.init(timestamp:usage:down:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  a6 = a4;
  if (HIDWORD(a4))
  {
LABEL_5:
    __break(1u);
    return _IOHIDEventCreateKeyboardEvent(a1, a2, a3, a4, a5, a6);
  }

  v6 = a3;
  v7 = a1;
  a4 = WORD1(a2);
  a3 = a2;
  a5 = v6 & 1;
  a1 = 0;
  a2 = v7;
  return _IOHIDEventCreateKeyboardEvent(a1, a2, a3, a4, a5, a6);
}

void *HIDEvent.Keyboard.init(ioHIDEvent:)(void *a1)
{
  if (IOHIDEventGetType() != 3)
  {

    return 0;
  }

  return a1;
}

uint64_t (*HIDEvent.Keyboard.down.modify(uint64_t a1, uint64_t a2))(uint64_t *a1)
{
  *a1 = a2;
  *(a1 + 8) = IOHIDEventGetIntegerValue() != 0;
  return sub_10004926C;
}

uint64_t (*HIDEvent.Keyboard.pressCount.modify(uint64_t *a1, uint64_t a2))()
{
  a1[1] = a2;
  *a1 = IOHIDEventGetIntegerValue();
  return sub_100049334;
}

char *KeyboardReport.reportID.unsafeMutableAddressor()
{
  if (qword_100080018 != -1)
  {
    sub_100049D9C(&qword_100080018);
  }

  return &static KeyboardReport.reportID;
}

uint64_t static KeyboardReport.reportID.getter()
{
  if (qword_100080018 != -1)
  {
    sub_100049D9C(&qword_100080018);
  }

  return static KeyboardReport.reportID;
}

uint64_t sub_1000493F4()
{
  sub_100005890(&qword_10007EED0, qword_10005B4E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10005D4D0;
  *(v0 + 32) = 101253381;
  *(v0 + 36) = 417;
  *(v0 + 38) = -123;
  if (qword_100080018 != -1)
  {
    swift_once();
  }

  *(v0 + 39) = static KeyboardReport.reportID;
  *(v0 + 40) = xmmword_10005D4E0;
  *(v0 + 56) = xmmword_10005D4F0;
  *(v0 + 72) = -16384;
  result = sub_100042DB0(v0);
  static KeyboardReport.reportDescriptor = result;
  unk_100083D20 = v2;
  return result;
}

uint64_t *KeyboardReport.reportDescriptor.unsafeMutableAddressor()
{
  if (qword_100080020 != -1)
  {
    sub_100049DBC(&qword_100080020);
  }

  return &static KeyboardReport.reportDescriptor;
}

uint64_t static KeyboardReport.reportDescriptor.getter()
{
  if (qword_100080020 != -1)
  {
    sub_100049DBC(&qword_100080020);
  }

  v0 = static KeyboardReport.reportDescriptor;
  sub_100018F90(static KeyboardReport.reportDescriptor, unk_100083D20);
  return v0;
}

void *KeyboardReport.init()()
{
  type metadata accessor for HIDReport();
  v0 = HIDReport.__allocating_init(count:)(8);
  v1 = qword_100080018;

  if (v1 != -1)
  {
    sub_100049D9C(&qword_100080018);
  }

  HIDReport.subscript.setter(static KeyboardReport.reportID, 0);

  return v0;
}

void *KeyboardReport.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_100057780();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HIDReport();
  v8 = HIDReport.__allocating_init(count:)(8);
  v9 = sub_100057710();
  if (qword_100080018 != -1)
  {
    sub_100049D9C(&qword_100080018);
  }

  if (static KeyboardReport.reportID == v9 && sub_100057750() >= v8[3])
  {
    sub_1000576E0();
    sub_10000686C(a1, a2);
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    sub_10000686C(a1, a2);
    return 0;
  }

  return v8;
}

uint64_t sub_100049760(uint64_t result, char a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = 1;
  v7 = 1;
  while ((v7 & 1) != 0)
  {
    v5 = 7;
LABEL_6:
    result = HIDReport.subscript.getter(v5);
    if (result == v3)
    {
      return v5;
    }

    v7 = 0;
    if (!result)
    {
      v4 = v5;
    }

    v6 &= result != 0;
    if (v5 == 2)
    {
      if (a2)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }
  }

  if (v5 >= 3)
  {
    --v5;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall KeyboardReport.addUsage(_:)(SidecarHID::HIDUsage a1)
{
  if ((*&a1 & 0xFF00FFFF) == 7)
  {
    usage = a1._usage;
    if ((LOBYTE(a1._usage) + 24) >= 0xF8u)
    {
      v5 = sub_100049DDC() | LOBYTE(a1._usage);
      v6 = 1;
    }

    else
    {
      v2 = sub_100049760(a1._usage, 1);
      if (v3)
      {
        return;
      }

      v4 = v2;
      v5 = usage;
      v6 = v4;
    }

    HIDReport.subscript.setter(v5, v6);
  }
}

Swift::Void __swiftcall KeyboardReport.removeUsage(_:)(SidecarHID::HIDUsage a1)
{
  if ((*&a1 & 0xFF00FFFF) == 7)
  {
    if ((LOBYTE(a1._usage) + 24) >= 0xF8u)
    {
      v5 = sub_100049DDC() & ~v1;
      v6 = 1;
    }

    else
    {
      v2 = sub_100049760(a1._usage, 0);
      if (v3)
      {
        return;
      }

      v4 = v2;
      v5 = 0;
      v6 = v4;
    }

    HIDReport.subscript.setter(v5, v6);
  }
}

SidecarHID::HIDUsage_optional __swiftcall KeyboardReport.Iterator.next()()
{
  v2 = *(v1 + 8);
  if (v2 >= -1)
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v4 <= 7)
      {
        v0 = HIDReport.subscript.getter(1);
        if ((v0 & (1 << v4)) != 0)
        {
          v5 = 0;
          *(v1 + 8) = v4;
          v3 = (v4 << 16) | 0xE00007;
          return (v3 + (v5 << 32));
        }
      }

      else
      {
        if ((v2 - 7) > 5)
        {
          v3 = 0;
          *(v1 + 8) = -2;
          goto LABEL_11;
        }

        v0 = HIDReport.subscript.getter(v2 - 5);
        if (v0)
        {
          v5 = 0;
          *(v1 + 8) = v4;
          v3 = (v0 << 16) | 7;
          return (v3 + (v5 << 32));
        }
      }

      ++v2;
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
LABEL_11:
    v5 = 1;
    return (v3 + (v5 << 32));
  }

  return v0;
}

uint64_t sub_100049A1C@<X0>(uint64_t a1@<X8>)
{
  *&result = KeyboardReport.Iterator.next()();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_100049A54(void *a1@<X8>)
{
  KeyboardReport.makeIterator()();
  *a1 = v2;
  a1[1] = -1;
}

void *sub_100049A94(uint64_t a1)
{
  v1 = sub_100049AD0(a1);

  return v1;
}

void *sub_100049AD0(uint64_t a1)
{

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = &_swiftEmptyArrayStorage[4];
  v4 = -1;
LABEL_2:
  for (i = v4 - 7; i < 0xFFFFFFFFFFFFFFF8; ++i)
  {
    if (i > 5)
    {

      v18 = v2[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v1);
        v20 = v19 - v1;
        if (v17)
        {
          goto LABEL_33;
        }

        v2[2] = v20;
      }

      return v2;
    }

    result = HIDReport.subscript.getter(i + 2);
    if (result)
    {
      v7 = result;
      if (!v1)
      {
        goto LABEL_12;
      }

LABEL_25:
      v17 = __OFSUB__(v1--, 1);
      if (!v17)
      {
        v4 = i + 8;
        *v3 = 7;
        v3[1] = v7;
        v3 += 2;
        goto LABEL_2;
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_8:
    ;
  }

  result = HIDReport.subscript.getter(1);
  if ((result & (1 << (i + 8))) == 0)
  {
    goto LABEL_8;
  }

  v7 = (i + 8) | 0xE0;
  if (v1)
  {
    goto LABEL_25;
  }

LABEL_12:
  v8 = v2[3];
  if (((v8 >> 1) + 0x4000000000000000) >= 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    sub_100005890(&qword_100080238, &qword_10005D638);
    v11 = swift_allocObject();
    v12 = (j__malloc_size(v11) - 32) / 4;
    v11[2] = v10;
    v11[3] = 2 * v12;
    v13 = (v11 + 4);
    v14 = v2[3];
    v15 = v14 >> 1;
    if (v2[2])
    {
      if (v11 != v2 || v13 >= v2 + 4 * v15 + 32)
      {
        memmove(v11 + 4, v2 + 4, 4 * v15);
      }

      v2[2] = 0;
    }

    v3 = (v13 + 4 * v15);
    v1 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

    v2 = v11;
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_100049CAC()
{
  result = qword_100080230;
  if (!qword_100080230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080230);
  }

  return result;
}

uint64_t sub_100049D10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100049D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100049D9C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100049DBC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100049DDC()
{

  return HIDReport.subscript.getter(1);
}

uint64_t sub_100049E04(uint64_t a1)
{
  v3 = 0;
  result = 0;
  v5 = *(v1 + 16);
  while (2)
  {
    for (i = 8 * v3++; ; i += 8)
    {
      v7 = a1 + v3 - 1;
      if (__OFADD__(a1, v3 - 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      if (v3 == 0x1000000000000001)
      {
        goto LABEL_17;
      }

      if (i < -16 || i > 16)
      {
        goto LABEL_7;
      }

      if (i < 0)
      {
        break;
      }

      if (i != 16)
      {
        v8 = *(v5 + v7) << (i & 8);
        goto LABEL_12;
      }

LABEL_7:
      if (v3 == 2)
      {
        return result;
      }

      ++v3;
    }

    v8 = *(v5 + v7) >> (-i & 8);
LABEL_12:
    result = v8 | result;
    if (v3 != 2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_100049EA4(uint64_t a1)
{
  v3 = 0;
  result = 0;
  v5 = *(v1 + 16);
  while (2)
  {
    for (i = 8 * v3++; ; i += 8)
    {
      v7 = a1 + v3 - 1;
      if (__OFADD__(a1, v3 - 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      if (v3 == 0x1000000000000001)
      {
        goto LABEL_17;
      }

      if (i < -16)
      {
        v8 = 0;
        goto LABEL_12;
      }

      if (i <= 16)
      {
        break;
      }

LABEL_7:
      if (++v3 == 3)
      {
        return result;
      }
    }

    if ((i & 0x8000000000000000) == 0)
    {
      if (i != 16)
      {
        v8 = *(v5 + v7) << (i & 8);
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    v8 = *(v5 + v7) >> (-i & 8);
LABEL_12:
    result = v8 | result;
    if (v3 != 2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_100049F4C(uint64_t a1)
{
  v3 = 0;
  result = 0;
  v5 = *(v1 + 16);
  while (2)
  {
    for (i = 8 * v3++; ; i += 8)
    {
      v7 = a1 + v3 - 1;
      if (__OFADD__(a1, v3 - 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      if (v3 == 0x1000000000000001)
      {
        goto LABEL_17;
      }

      if (i <= -65 || i > 64)
      {
        goto LABEL_7;
      }

      if (i < 0)
      {
        break;
      }

      if (i != 64)
      {
        v8 = *(v5 + v7) << (i & 0x38);
        goto LABEL_12;
      }

LABEL_7:
      if (v3 == 8)
      {
        return result;
      }

      ++v3;
    }

    v8 = *(v5 + v7) >> (-i & 0x38);
LABEL_12:
    result |= v8;
    if (v3 != 8)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_100049FEC(uint64_t a1)
{
  v3 = 0;
  result = 0;
  v5 = *(v1 + 16);
  while (2)
  {
    for (i = 8 * v3++; ; i += 8)
    {
      v7 = a1 + v3 - 1;
      if (__OFADD__(a1, v3 - 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      if (v3 == 0x1000000000000001)
      {
        goto LABEL_17;
      }

      if (i < -32 || i > 32)
      {
        goto LABEL_7;
      }

      if (i < 0)
      {
        break;
      }

      if (i != 32)
      {
        v8 = *(v5 + v7) << (i & 0x18);
        goto LABEL_12;
      }

LABEL_7:
      if (v3 == 4)
      {
        return result;
      }

      ++v3;
    }

    v8 = *(v5 + v7) >> (-i & 0x18);
LABEL_12:
    result = v8 | result;
    if (v3 != 4)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10004A08C(uint64_t a1)
{
  v3 = 0;
  result = 0;
  v5 = *(v1 + 16);
  while (2)
  {
    for (i = 8 * v3++; ; i += 8)
    {
      v7 = a1 + v3 - 1;
      if (__OFADD__(a1, v3 - 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      if (v3 == 0x1000000000000001)
      {
        goto LABEL_17;
      }

      if (i < -32)
      {
        v8 = 0;
        goto LABEL_12;
      }

      if (i <= 32)
      {
        break;
      }

LABEL_7:
      if (++v3 == 5)
      {
        return result;
      }
    }

    if ((i & 0x8000000000000000) == 0)
    {
      if (i != 32)
      {
        v8 = *(v5 + v7) << (i & 0x18);
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    v8 = *(v5 + v7) >> (-i & 0x18);
LABEL_12:
    result = v8 | result;
    if (v3 != 4)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10004A134()
{
  sub_10004C3C0();
  v3 = sub_100049E04(v2);
  v9 = sub_10004C330(v4, v5, v6, v7, v8);
  if (v3 > v0 || v3 < v1)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v3 / v9;
  }

  return result;
}

uint64_t sub_10004A198(uint64_t a1, Swift::Double a2, Swift::Double a3, __n128 a4, __n128 a5)
{
  v5 = a5.n128_u8[0];
  v6 = a4.n128_u8[0];
  v9 = sub_100049EA4(a1);
  v13.is_nil = v6;
  v15.is_nil = v5;
  v14.is_nil = 0;
  v10 = HIDReport.resolution(logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(a2, a3, v13, v14, v15);
  if (v9 > a3 || v9 < a2)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v9 / v10;
  }

  return result;
}

uint64_t sub_10004A22C()
{
  sub_10004C3C0();
  v3 = sub_100049FEC(v2);
  v9 = sub_10004C330(v4, v5, v6, v7, v8);
  if (v3 > v0 || v3 < v1)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = v3 / v9;
  }

  return result;
}

uint64_t sub_10004A28C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v3 + a2) = result;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + a2 + 1) = BYTE1(result);
  }

  return result;
}

uint64_t sub_10004A2B0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v3 + a2) = result;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v3 + a2 + 1) = BYTE1(result);
  if (__OFADD__(a2, 2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v3 + a2 + 2) = BYTE2(result);
  if (!__OFADD__(a2, 3))
  {
    *(v3 + a2 + 3) = BYTE3(result);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10004A33C(uint64_t a1, char a2, uint64_t a3, void (*a4)(unsigned __int16 *, double), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), Swift::Double a8, Swift::Double a9, double a10, double a11, double a12)
{
  if ((a2 & 1) != 0 || (a1 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    result = a7(a1);
  }

  else
  {
    v16 = sub_10004C384(a8, a9, a10, a11, a12);
    a4(&v27, round(v16 * v13));
    if (v28)
    {
      goto LABEL_9;
    }

    result = v27;
  }

  v18 = *(v12 + 16);
  *(v18 + a3) = result;
  if (!__OFADD__(a3, 1))
  {
    *(v18 + a3 + 1) = BYTE1(result);
    return result;
  }

  __break(1u);
LABEL_9:
  sub_100047630();
  sub_100047514();
  sub_10004C42C();
  v29._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100057AF0(v29);
  v30._countAndFlagsBits = sub_10004C420();
  sub_100057AF0(v30);
  sub_10004C42C();
  sub_100057AF0(v31);
  sub_1000475FC();
  result = sub_100047650("Fatal error", v19, v20, v21, v22, "Swift/Integers.swift", v23, v24, v25, v26);
  __break(1u);
  return result;
}

uint64_t sub_10004A454(uint64_t a1, char a2, uint64_t a3, __n128 a4, double a5, double a6, double a7, double a8)
{
  if ((a2 & 1) != 0 || (a1 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v9 = sub_10004A940(a4, a5);
    return sub_10004A2B0(v9, a3);
  }

  sub_10004C384(a4.n128_f64[0], a5, a6, a7, a8);
  sub_10004BB20();
  if ((v20 & 1) == 0)
  {
    v9 = v19;
    return sub_10004A2B0(v9, a3);
  }

  sub_100047630();
  sub_100047514();
  sub_10004C42C();
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100057AF0(v21);
  v22._countAndFlagsBits = 0x3233746E4955;
  v22._object = 0xE600000000000000;
  sub_100057AF0(v22);
  sub_10004C42C();
  sub_100057AF0(v23);
  sub_1000475FC();
  result = sub_100047650("Fatal error", v11, v12, v13, v14, "Swift/Integers.swift", v15, v16, v17, v18);
  __break(1u);
  return result;
}

uint64_t sub_10004A540(__n128 a1, double a2)
{
  sub_10004BA0C();
  if (v4)
  {
    goto LABEL_6;
  }

  if (v3)
  {
    return 0;
  }

  sub_10004BA0C();
  if ((v4 & 1) == 0)
  {
    return 0xFFFFLL;
  }

LABEL_6:
  sub_100058070(80);
  v5._countAndFlagsBits = 0x656C62756F44;
  v5._object = 0xE600000000000000;
  sub_100057AF0(v5);
  v6._object = 0x8000000100060420;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100057AF0(v6);
  v7._countAndFlagsBits = 0x3631746E4955;
  v7._object = 0xE600000000000000;
  sub_100057AF0(v7);
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x8000000100060440;
  sub_100057AF0(v8);
  result = sub_100058160();
  __break(1u);
  return result;
}

uint64_t sub_10004A740(__n128 a1, double a2)
{
  sub_10004BD94();
  if (v4)
  {
    goto LABEL_8;
  }

  if (v3 != -32768)
  {
    return 0x8000;
  }

  sub_10004BD94();
  if (v4)
  {
LABEL_8:
    sub_100058070(80);
    v7._countAndFlagsBits = 0x656C62756F44;
    v7._object = 0xE600000000000000;
    sub_100057AF0(v7);
    v8._object = 0x8000000100060420;
    v8._countAndFlagsBits = 0xD00000000000001ELL;
    sub_100057AF0(v8);
    v9._countAndFlagsBits = 0x3631746E49;
    v9._object = 0xE500000000000000;
    sub_100057AF0(v9);
    v10._countAndFlagsBits = 0xD00000000000002ELL;
    v10._object = 0x8000000100060440;
    sub_100057AF0(v10);
    goto LABEL_9;
  }

  result = 0x7FFFLL;
  if (v3 == 0x7FFF)
  {
    sub_100058070(54);
    v5._countAndFlagsBits = 0xD000000000000031;
    v5._object = 0x80000001000603C0;
    sub_100057AF0(v5);
    sub_100057D10();
    v6._countAndFlagsBits = 45;
    v6._object = 0xE100000000000000;
    sub_100057AF0(v6);
    sub_100057D10();
LABEL_9:
    result = sub_100058160();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A940(__n128 a1, double a2)
{
  sub_10004BB20();
  if (v4)
  {
    goto LABEL_6;
  }

  if (v3)
  {
    return 0;
  }

  sub_10004BB20();
  if ((v4 & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_6:
  sub_100058070(80);
  v5._countAndFlagsBits = 0x656C62756F44;
  v5._object = 0xE600000000000000;
  sub_100057AF0(v5);
  v6._object = 0x8000000100060420;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100057AF0(v6);
  v7._countAndFlagsBits = 0x3233746E4955;
  v7._object = 0xE600000000000000;
  sub_100057AF0(v7);
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x8000000100060440;
  sub_100057AF0(v8);
  result = sub_100058160();
  __break(1u);
  return result;
}

char *MultitouchReport.reportID.unsafeMutableAddressor()
{
  if (qword_100080028 != -1)
  {
    sub_10004C23C(&qword_100080028);
  }

  return &static MultitouchReport.reportID;
}

uint64_t static MultitouchReport.reportID.getter()
{
  if (qword_100080028 != -1)
  {
    sub_10004C23C(&qword_100080028);
  }

  return static MultitouchReport.reportID;
}

uint64_t sub_10004ABD0()
{
  sub_100005890(&qword_10007EED0, qword_10005B4E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10005D640;
  *(v0 + 32) = 0x8501A12109FF1A06;
  if (qword_100080028 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = static MultitouchReport.reportID;
  *(v0 + 41) = xmmword_10005D650;
  *(v0 + 57) = xmmword_10005D660;
  *(v0 + 73) = xmmword_10005D670;
  *(v0 + 89) = xmmword_10005D680;
  *(v0 + 105) = xmmword_10005D690;
  *(v0 + 121) = xmmword_10005D6A0;
  *(v0 + 137) = xmmword_10005D6B0;
  *(v0 + 153) = -64;
  result = sub_100042DB0(v0);
  static MultitouchReport.reportDescriptor = result;
  *algn_100083D38 = v2;
  return result;
}

uint64_t *MultitouchReport.reportDescriptor.unsafeMutableAddressor()
{
  if (qword_100080030 != -1)
  {
    sub_10004C300(&qword_100080030);
  }

  return &static MultitouchReport.reportDescriptor;
}

uint64_t static MultitouchReport.reportDescriptor.getter()
{
  if (qword_100080030 != -1)
  {
    sub_10004C300(&qword_100080030);
  }

  v0 = static MultitouchReport.reportDescriptor;
  sub_100018F90(static MultitouchReport.reportDescriptor, *algn_100083D38);
  return v0;
}

void *MultitouchReport.init()()
{
  type metadata accessor for HIDReport();
  v0 = HIDReport.__allocating_init(count:)(23);
  v1 = qword_100080028;

  if (v1 != -1)
  {
    sub_10004C23C(&qword_100080028);
  }

  HIDReport.subscript.setter(static MultitouchReport.reportID, 0);

  return v0;
}

void *MultitouchReport.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_100057780();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HIDReport();
  v6 = HIDReport.__allocating_init(count:)(23);
  v7 = sub_100057710();
  if (qword_100080028 != -1)
  {
    sub_10004C23C(&qword_100080028);
  }

  if (static MultitouchReport.reportID == v7 && (sub_10004C420(), sub_100057750() >= v6[3]))
  {
    sub_1000576E0();
    v10 = sub_10004C420();
    sub_10000686C(v10, v11);
    (*(v3 + 8))(v5, v2);
  }

  else
  {

    v8 = sub_10004C420();
    sub_10000686C(v8, v9);
    return 0;
  }

  return v6;
}

void *MultitouchReport.init(report:)(uint64_t a1)
{
  type metadata accessor for HIDReport();
  v2 = HIDReport.__allocating_init(count:)(23);
  v3 = HIDReport.subscript.getter(0);
  if (qword_100080028 != -1)
  {
    sub_10004C23C(&qword_100080028);
  }

  if (static MultitouchReport.reportID == v3 && (v4 = v2[3], *(a1 + 24) >= v4))
  {
    sub_10004C168(&v6, v2[2], v4);
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t MultitouchReport.x.setter(__n128 a1)
{
  if (a1.n128_f64[0] <= 0.0)
  {
    a1.n128_f64[0] = 0.0;
  }

  sub_10004C25C(a1.n128_f64[0]);
  sub_10004C3D8();
  v1 = sub_10003C7F0();
  return sub_10004A33C(v2, 0, 1, v3, v4, 0xE600000000000000, v5, v1, v6, v7, v8, v9);
}

uint64_t MultitouchReport.x.modify(uint64_t *a1, uint64_t a2)
{
  a1[1] = a2;
  sub_10003C7F0();
  result = sub_10004A134();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_100042CAC();
  }

  return result;
}

uint64_t sub_10004B104()
{
  sub_10003C7F0();
  result = sub_10004A134();
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t MultitouchReport.y.setter(__n128 a1)
{
  if (a1.n128_f64[0] <= 0.0)
  {
    a1.n128_f64[0] = 0.0;
  }

  sub_10004C25C(a1.n128_f64[0]);
  sub_10004C3D8();
  v1 = sub_10003C7F0();
  return sub_10004A33C(v2, 0, 3, v3, v4, 0xE600000000000000, v5, v1, v6, v7, v8, v9);
}

uint64_t MultitouchReport.y.modify(uint64_t *a1, uint64_t a2)
{
  a1[1] = a2;
  sub_10003C7F0();
  result = sub_10004A134();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_100042CAC();
  }

  return result;
}

uint64_t sub_10004B210(double *a1, __n128 a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v2 = 0.0;
  }

  sub_10004C25C(v2);
  sub_10004C3D8();
  v3 = sub_10003C7F0();
  return sub_10004A33C(v4, 0, v5, v6, v7, 0xE600000000000000, v8, v3, v9, v10, v11, v12);
}

uint64_t MultitouchReport.rotation.getter(double a1, double a2, __n128 a3, __n128 a4)
{
  a3.n128_u64[0] = 0xC0EEADE000000000;
  a4.n128_u64[0] = 0x40EEADE000000000;
  return sub_10004A198(5, -32767.0, 32767.0, a3, a4);
}

uint64_t MultitouchReport.rotation.setter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    remainder(*&a1, 6.28318531);
  }

  sub_10004C284();
  sub_10004C2F0();
  return sub_10004A33C(v3, a2 & 1, 5, v4, v5, 0xE500000000000000, v6, v7, v8, v9, v10, -4.0);
}

uint64_t MultitouchReport.rotation.modify(uint64_t a1, uint64_t a2)
{
  sub_10004C438(a1, a2);
  v2.n128_u64[0] = 0xC0EEADE000000000;
  v3.n128_u64[0] = 0x40EEADE000000000;
  v4 = sub_10004A198(5, -32767.0, 32767.0, v2, v3);
  sub_10004C320(v4, v5);
  return sub_100042CAC();
}

uint64_t sub_10004B3BC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if ((v3 & 1) == 0)
  {
    remainder(v2, 6.28318531);
  }

  sub_10004C284();
  sub_10004C2F0();
  return sub_10004A33C(v4, v3, 5, v5, v6, 0xE500000000000000, v7, v8, v9, v10, v11, -4.0);
}

uint64_t MultitouchReport.scale.modify(uint64_t a1, uint64_t a2)
{
  sub_10004C438(a1, a2);
  sub_10003C798();
  v6 = sub_10004A198(7, v2, v3, v4, v5);
  sub_10004C320(v6, v7);
  return sub_100042CAC();
}

uint64_t sub_10004B544(double a1, double a2, double a3, double a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_10004C400(a5);
  }

  sub_10004C2F0();
  sub_10003C798();
  return sub_10004A33C(v6, v7, v11, v8, v9, 0xE500000000000000, v10, v12, v13, v14, v15, v16);
}

uint64_t MultitouchReport.tx.modify(uint64_t a1, uint64_t a2)
{
  sub_10004C438(a1, a2);
  sub_10003C798();
  v6 = sub_10004A198(11, v2, v3, v4, v5);
  sub_10004C320(v6, v7);
  return sub_100042CAC();
}

uint64_t sub_10004B628(uint64_t a1)
{
  v2 = *a1;
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_10004C400(v2);
  }

  sub_10004C284();
  sub_10004C2F0();
  sub_10003C798();
  return sub_10004A33C(v3, v4, v5, v6, v7, 0xE500000000000000, v8, v9, v10, v11, v12, v13);
}

uint64_t MultitouchReport.ty.modify(uint64_t a1, uint64_t a2)
{
  sub_10004C438(a1, a2);
  sub_10003C798();
  v6 = sub_10004A198(9, v2, v3, v4, v5);
  sub_10004C320(v6, v7);
  return sub_100042CAC();
}

uint64_t (*MultitouchReport.scanTime.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = sub_100049E04(13);
  return sub_10004B7D0;
}

uint64_t MultitouchReport.hostTime.modify(uint64_t *a1, uint64_t a2)
{
  a1[1] = a2;
  *a1 = sub_100049F4C(15);
  return sub_100042CAC();
}

uint64_t sub_10004B8F8()
{
  sub_10004C220();
  if (!v3)
  {
    result = sub_10004C378();
    goto LABEL_18;
  }

  v4 = v2 == 2047 || v1 <= -1.0;
  if (v4 || (v8 = sub_100057D20(), v8 > 7))
  {
    result = sub_10004C2BC();
    goto LABEL_18;
  }

  sub_10004C3E8(v9);
  sub_10004C2DC();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v10 <= 7)
    {
      goto LABEL_15;
    }

    sub_10004C36C();
    if (!(!v14 & v13))
    {
      goto LABEL_15;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      sub_10004C360();
      goto LABEL_15;
    }
  }

  sub_10004C2CC();
LABEL_15:
  sub_10004C3B0();
  result = v15 == v11;
LABEL_18:
  *v0 = v6;
  v0[1] = v7;
  return result;
}

uint64_t sub_10004BA0C()
{
  sub_10004C220();
  if (!v3)
  {
    result = sub_10004C378();
    goto LABEL_18;
  }

  v4 = v2 == 2047 || v1 <= -1.0;
  if (v4 || (v8 = sub_100057D20(), v8 > 15))
  {
    result = sub_10004C2BC();
    goto LABEL_18;
  }

  sub_10004C3E8(v9);
  sub_10004C2DC();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v10 <= 15)
    {
      goto LABEL_15;
    }

    sub_10004C36C();
    if (!(!v14 & v13))
    {
      goto LABEL_15;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      sub_10004C360();
      goto LABEL_15;
    }
  }

  sub_10004C2CC();
LABEL_15:
  sub_10004C3B0();
  result = v15 == v11;
LABEL_18:
  *v0 = v6;
  *(v0 + 2) = v7;
  return result;
}

uint64_t sub_10004BB20()
{
  sub_10004C220();
  if (!v3)
  {
    result = sub_10004C378();
    goto LABEL_18;
  }

  v4 = v2 == 2047 || v1 <= -1.0;
  if (v4 || (v8 = sub_100057D20(), v8 > 31))
  {
    result = sub_10004C2BC();
    goto LABEL_18;
  }

  sub_10004C3E8(v9);
  sub_10004C2DC();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v10 <= 31)
    {
      goto LABEL_15;
    }

    sub_10004C36C();
    if (!(!v14 & v13))
    {
      goto LABEL_15;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      sub_10004C360();
      goto LABEL_15;
    }
  }

  sub_10004C2CC();
LABEL_15:
  sub_10004C3B0();
  result = v15 == v11;
LABEL_18:
  *v0 = v6;
  *(v0 + 4) = v7;
  return result;
}

void sub_10004BC30()
{
  sub_10004C220();
  if (!v5)
  {
    sub_10004C378();
    goto LABEL_29;
  }

  if (v4 == 2047 || sub_100057D20() > 7)
  {
LABEL_38:
    sub_10004C2BC();
    goto LABEL_29;
  }

  v7 = sub_10004C3E8(v6);
  sub_10004C29C(v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v9 > 7)
  {
    sub_10004C36C();
    if (!v14 & v13)
    {
      if (v12 < 0)
      {
        sub_10004C2CC();
        if (!(!v14 & v13))
        {
          LODWORD(v9) = 0;
        }
      }

      else
      {
        sub_10004C360();
        if (v13)
        {
          LODWORD(v9) = 0;
        }
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }

LABEL_20:
    if (v1 != 7)
    {
      if (v1 < 0)
      {
        v11 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (v3 >= 0.0 || v9)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v8 >= -8 && v8 <= 8)
  {
    if (v8 < 0)
    {
      if (v8 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v9) = v2 >> -v8;
    }

    else
    {
      if (v8 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v9) = v2 << v8;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v1 == 7)
  {
    goto LABEL_37;
  }

  v11 = 0;
  LODWORD(v9) = 0;
  if ((v1 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v11 = 1 << v1;
  }

LABEL_24:
  v15 = v9 | v11;
  if (v3 >= 0.0)
  {
    if ((v9 & 0x80) == 0)
    {
      v16 = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v9 & 0x80) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (v3 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    v16 = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_29;
  }

  v16 = 0;
  v15 = -v15;
LABEL_29:
  *v0 = v15;
  v0[1] = v16;
}

void sub_10004BD94()
{
  sub_10004C220();
  if (!v5)
  {
    sub_10004C378();
    goto LABEL_29;
  }

  if (v4 == 2047 || sub_100057D20() > 15)
  {
LABEL_38:
    sub_10004C2BC();
    goto LABEL_29;
  }

  v7 = sub_10004C3E8(v6);
  sub_10004C29C(v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v9 > 15)
  {
    sub_10004C36C();
    if (!v14 & v13)
    {
      if (v12 < 0)
      {
        sub_10004C2CC();
        if (!(!v14 & v13))
        {
          LODWORD(v9) = 0;
        }
      }

      else
      {
        sub_10004C360();
        if (v13)
        {
          LODWORD(v9) = 0;
        }
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }

LABEL_20:
    if (v1 != 15)
    {
      if (v1 < 0)
      {
        v11 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (v3 >= 0.0 || v9)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v8 >= -16 && v8 <= 16)
  {
    if (v8 < 0)
    {
      if (v8 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v9) = v2 >> -v8;
    }

    else
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v9) = v2 << v8;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v1 == 15)
  {
    goto LABEL_37;
  }

  v11 = 0;
  LODWORD(v9) = 0;
  if ((v1 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v11 = 1 << v1;
  }

LABEL_24:
  v15 = v9 | v11;
  if (v3 >= 0.0)
  {
    if ((v9 & 0x8000) == 0)
    {
      v16 = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v9 & 0x8000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (v3 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    v16 = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_29;
  }

  v16 = 0;
  v15 = -v15;
LABEL_29:
  *v0 = v15;
  *(v0 + 2) = v16;
}

void sub_10004BEF8()
{
  sub_10004C220();
  if (!v5)
  {
    sub_10004C378();
    goto LABEL_29;
  }

  if (v4 == 2047 || sub_100057D20() > 31)
  {
    goto LABEL_40;
  }

  v7 = sub_10004C3E8(v6);
  sub_10004C29C(v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v9 > 31)
  {
    sub_10004C36C();
    if (!v14 & v13)
    {
      if (v12 < 0)
      {
        sub_10004C2CC();
        if (!(!v14 & v13))
        {
          LODWORD(v9) = 0;
        }
      }

      else
      {
        sub_10004C360();
        if (v13)
        {
          LODWORD(v9) = 0;
        }
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }

LABEL_20:
    if (v1 != 31)
    {
      if (v1 < 0)
      {
        v11 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (v3 < 0.0 && !v9)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (v8 >= -32 && v8 <= 32)
  {
    if (v8 < 0)
    {
      if (v8 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v9) = v2 >> -v8;
    }

    else
    {
      if (v8 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v9) = v2 << v8;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v1 == 31)
  {
    goto LABEL_37;
  }

  v11 = 0;
  LODWORD(v9) = 0;
  if ((v1 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v11 = 1 << v1;
  }

LABEL_24:
  v15 = v9 | v11;
  if (v3 >= 0.0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      LOBYTE(v9) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v9 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (v3 < 0.0)
    {
      LOBYTE(v9) = 0;
LABEL_39:
      v15 = 0x80000000;
      goto LABEL_29;
    }

LABEL_40:
    sub_10004C2BC();
    goto LABEL_29;
  }

  LOBYTE(v9) = 0;
  v15 = -v15;
LABEL_29:
  *v0 = v15;
  *(v0 + 4) = v9;
}

void *sub_10004C058(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_17:
    v9 = -1;
    goto LABEL_19;
  }

  if (a3 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v7 = a2;
  v8 = 0;
  v9 = -1;
  while (2)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    for (i = v9 - 7; i < 0xFFFFFFFFFFFFFFF8; ++i)
    {
      if (i > 5)
      {
        v9 = -2;
        v6 = v8;
        goto LABEL_19;
      }

      result = HIDReport.subscript.getter(i + 2);
      if (result)
      {
        v12 = result;
        goto LABEL_14;
      }

LABEL_12:
      ;
    }

    result = HIDReport.subscript.getter(1);
    if ((result & (1 << (i + 8))) == 0)
    {
      goto LABEL_12;
    }

    v12 = (i + 8) | 0xE0;
LABEL_14:
    *v7 = 7;
    v7[1] = v12;
    v7 += 2;
    v9 = i + 8;
    ++v8;
    if (v10 != v6)
    {
      continue;
    }

    break;
  }

LABEL_19:
  *v5 = a4;
  v5[1] = v9;
  return v6;
}

void *sub_10004C168(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_11:
    *v4 = v3;
    v4[1] = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = *(v3 + 24);
    while (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v8 == v7)
      {
        v5 = v8;
        goto LABEL_11;
      }

      result = HIDReport.subscript.getter(v7);
      *(a2 + v7++) = result;
      if (v5 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C23C(uint64_t a1)
{

  return swift_once();
}

double sub_10004C25C(double result)
{
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_10004C300(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004C320(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

Swift::Double sub_10004C330(double a1, double a2, double a3, double a4, double a5)
{
  v10 = v7;
  v11 = v6;
  v12 = 0;

  return HIDReport.resolution(logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(v9, v8, *&a3, *&a4, *&a5);
}

Swift::Double sub_10004C384(Swift::Double a1, Swift::Double a2, double a3, double a4, double a5)
{
  v6 = LOBYTE(a3);
  v7 = LOBYTE(a4);
  v8 = 0;

  return HIDReport.resolution(logicalMinimum:logicalMaximum:physicalMinimum:physicalMaximum:exponent:)(a1, a2, *&a3, *&a4, *&a5);
}

uint64_t sub_10004C3E8(__n128 a1)
{
  a1.n128_u64[0] = v2;

  return Double.significandWidth.getter(a1);
}

double sub_10004C400(uint64_t a1)
{
  result = *&a1;
  if (*&a1 <= -1.0)
  {
    result = -1.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t PencilReport.report.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

char *PencilReport.reportID.unsafeMutableAddressor()
{
  if (qword_100080038 != -1)
  {
    sub_10004DC00(&qword_100080038);
  }

  return &static PencilReport.reportID;
}

uint64_t static PencilReport.reportID.getter()
{
  if (qword_100080038 != -1)
  {
    sub_10004DC00(&qword_100080038);
  }

  return static PencilReport.reportID;
}

uint64_t sub_10004C528()
{
  sub_100005890(&qword_10007EED0, qword_10005B4E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10005D770;
  *(v0 + 32) = 34147589;
  *(v0 + 36) = 417;
  *(v0 + 38) = -123;
  if (qword_100080038 != -1)
  {
    swift_once();
  }

  *(v0 + 39) = static PencilReport.reportID;
  *(v0 + 40) = xmmword_10005D780;
  *(v0 + 56) = xmmword_10005D790;
  *(v0 + 72) = xmmword_10005D7A0;
  *(v0 + 88) = xmmword_10005D7B0;
  *(v0 + 104) = xmmword_10005D7C0;
  *(v0 + 120) = xmmword_10005D7D0;
  *(v0 + 136) = xmmword_10005D7E0;
  *(v0 + 152) = xmmword_10005D7F0;
  *(v0 + 168) = xmmword_10005D800;
  result = sub_100042DB0(v0);
  static PencilReport.reportDescriptor = result;
  unk_100083D50 = v2;
  return result;
}

uint64_t *PencilReport.reportDescriptor.unsafeMutableAddressor()
{
  if (qword_100080040 != -1)
  {
    sub_10004DC50(&qword_100080040);
  }

  return &static PencilReport.reportDescriptor;
}

uint64_t static PencilReport.reportDescriptor.getter()
{
  if (qword_100080040 != -1)
  {
    sub_10004DC50(&qword_100080040);
  }

  v0 = static PencilReport.reportDescriptor;
  sub_100018F90(static PencilReport.reportDescriptor, unk_100083D50);
  return v0;
}

void *PencilReport.init()()
{
  type metadata accessor for HIDReport();
  v0 = sub_10004DCC0();
  v1 = qword_100080038;

  if (v1 != -1)
  {
    sub_10004DC00(&qword_100080038);
  }

  HIDReport.subscript.setter(static PencilReport.reportID, 0);

  return v0;
}

void *PencilReport.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_100057780();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HIDReport();
  v8 = sub_10004DCC0();
  v9 = sub_100057710();
  if (qword_100080038 != -1)
  {
    sub_10004DC00(&qword_100080038);
  }

  if (static PencilReport.reportID == v9 && sub_100057750() >= 19)
  {
    sub_1000576E0();
    sub_10000686C(a1, a2);
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    sub_10000686C(a1, a2);
    return 0;
  }

  return v8;
}

uint64_t PencilReport.init(report:)(uint64_t a1)
{
  type metadata accessor for HIDReport();
  sub_10004DCC0();
  v3 = sub_10004DCD8();
  v4 = HIDReport.subscript.getter(v3);
  if (qword_100080038 != -1)
  {
    sub_10004DC00(&qword_100080038);
  }

  if (static PencilReport.reportID == v4 && (v5 = *(v1 + 24), *(a1 + 24) >= v5))
  {
    sub_10004C168(&v7, *(v1 + 16), v5);
  }

  else
  {

    return 0;
  }

  return v1;
}

Swift::Void __swiftcall PencilReport.copyOnWrite()()
{
  v1 = v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = *v0;
    type metadata accessor for HIDReport();
    v3 = HIDReport.__allocating_init(count:)(*(v2 + 24));
    HIDReport.copy(from:)(v2);

    *v1 = v3;
  }
}

void PencilReport.x.getter()
{
  sub_10003C7F0();
  v0 = sub_10004A134();
  sub_10004DC70(v0, v1);
}

uint64_t PencilReport.x.modify(uint64_t a1)
{
  sub_10004DC20(a1);
  sub_10003C7F0();
  v2 = sub_10004A134();
  *v1 = sub_10004DC70(v2, v3);
  return sub_100042CAC();
}

void PencilReport.y.getter()
{
  sub_10003C7F0();
  v0 = sub_10004A134();
  sub_10004DC70(v0, v1);
}

uint64_t sub_10004CAF0(uint64_t a1)
{
  v3 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for HIDReport();
    v6 = HIDReport.__allocating_init(count:)(*(v5 + 24));
    HIDReport.copy(from:)(v5);

    *v3 = v6;
  }

  sub_10003C7F0();
  return sub_10004A2F8(v7, 0, a1, v8, v9);
}

uint64_t PencilReport.y.modify(uint64_t a1)
{
  sub_10004DC20(a1);
  sub_10003C7F0();
  v2 = sub_10004A134();
  *v1 = sub_10004DC70(v2, v3);
  return sub_100042CAC();
}

uint64_t sub_10004CC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PencilReport.copyOnWrite()();
  sub_10003C7F0();
  return sub_10004A2F8(v4, 0, a3, v5, v6);
}

void (*PencilReport.isInRange.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  sub_10004DC80(a1);
  v1 = HIDReport.getValue(_:at:bit:)(5, 0);
  sub_10004DC90(v1);
  return sub_10004CCF4;
}

void (*PencilReport.tipSwitch.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  sub_10004DC80(a1);
  v1 = HIDReport.getValue(_:at:bit:)(5, 1uLL);
  sub_10004DC90(v1);
  return sub_10004CD7C;
}

void sub_10004CDBC(char a1, Swift::Int a2)
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for HIDReport();
    sub_10004DD50();
    sub_10004DD08();

    *v2 = v2;
  }

  HIDReport.setValue(_:at:bit:)(a1 & 1, 5, a2);
}

void (*PencilReport.barrelSwitch.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  sub_10004DC80(a1);
  v1 = HIDReport.getValue(_:at:bit:)(5, 2uLL);
  sub_10004DC90(v1);
  return sub_10004CE80;
}

void sub_10004CE88(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  v4 = *(a1 + 8);
  PencilReport.copyOnWrite()();
  HIDReport.setValue(_:at:bit:)(v4, 5, a3);
}

void PencilReport.tipPressure.setter()
{
  PencilReport.copyOnWrite()();
  v0 = sub_10004DCA0();
  v3 = sub_100045804(v2, v0, v1);
  HIDReport.subscript.setter(v3, 6);
}

uint64_t PencilReport.tipPressure.modify(uint64_t a1)
{
  sub_10004DC20(a1);
  v2 = HIDReport.subscript.getter(6);
  *v1 = sub_100044F9C(v2);
  return sub_100042CAC();
}

void sub_10004CF94()
{
  PencilReport.copyOnWrite()();
  v0 = sub_10004DCA0();
  v3 = sub_100045804(v2, v0, v1);
  HIDReport.subscript.setter(v3, 6);
}

void sub_10004D00C(Swift::Int a1)
{
  PencilReport.copyOnWrite()();
  v2 = sub_10004DCB0();
  v5 = sub_100045D34(v2, v3, v4);
  HIDReport.setValue(_:at:)(v5, a1);
}

uint64_t PencilReport.tiltX.modify(uint64_t a1)
{
  sub_10004DC20(a1);
  v2 = HIDReport.getValue(_:at:)(7);
  *v1 = sub_10004DCF0(v2);
  return sub_100042CAC();
}

void sub_10004D0A0(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  PencilReport.copyOnWrite()();
  v4 = sub_10004DCB0();
  v7 = sub_100045D34(v4, v5, v6);
  HIDReport.setValue(_:at:)(v7, a3);
}

uint64_t PencilReport.tiltY.modify(uint64_t a1)
{
  sub_10004DC20(a1);
  v2 = HIDReport.getValue(_:at:)(8);
  *v1 = sub_10004DCF0(v2);
  return sub_100042CAC();
}

void PencilReport.scanTime.setter(Swift::UInt16 a1)
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for HIDReport();
    sub_10004DD50();
    sub_10004DD08();

    *v1 = v1;
  }

  HIDReport.setValue(_:at:)(a1, 9);
}

void (*PencilReport.scanTime.modify(void *a1))(uint64_t a1)
{
  sub_10004DC80(a1);
  *(v1 + 8) = HIDReport.getValue(_:at:)();
  return sub_10004D248;
}

void sub_10004D248(uint64_t a1)
{
  v1 = *(a1 + 8);
  PencilReport.copyOnWrite()();
  HIDReport.setValue(_:at:)(v1, 9);
}

uint64_t PencilReport.hostTime.modify(uint64_t a1)
{
  sub_10004DC20(a1);
  *v1 = HIDReport.getValue(_:at:)(0xBuLL);
  return sub_100042CAC();
}

void sub_10004D320(Swift::UInt64 *a1)
{
  v1 = *a1;
  PencilReport.copyOnWrite()();
  HIDReport.setValue(_:at:)(v1, 11);
}

double PencilReport.roll.getter(uint64_t a1)
{
  if (*(a1 + 24) >= 21)
  {
    v1 = HIDReport.getValue(_:at:)();
    return sub_100044FAC(v1);
  }

  return result;
}

void PencilReport.roll.setter(uint64_t a1, char a2)
{
  if (*(*v2 + 24) >= 21)
  {
    PencilReport.copyOnWrite()();
    v5 = *&a1;
    if (a2)
    {
      v5 = 0.0;
    }

    v6 = sub_1000458A4(v5, 0, 0x168u);
    HIDReport.setValue(_:at:)(v6, 19);
  }
}

uint64_t PencilReport.roll.modify(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  v5 = *(v4 + 24);
  v6 = 0.0;
  if (v5 >= 21)
  {
    v7 = HIDReport.getValue(_:at:)();
    v6 = sub_100044FAC(v7);
  }

  *a1 = v6;
  *(a1 + 8) = v5 < 21;
  return sub_100042CAC();
}

void sub_10004D490(uint64_t a1, char a2)
{
  if (a2)
  {
    PencilReport.roll.setter(*a1, *(a1 + 8));
  }

  else if (*(*(a1 + 24) + 24) >= 21)
  {
    v2 = *(a1 + 8);
    v3 = *a1;
    PencilReport.copyOnWrite()();
    v4 = 0.0;
    if (!v2)
    {
      v4 = v3;
    }

    v5 = sub_1000458A4(v4, 0, 0x168u);
    HIDReport.setValue(_:at:)(v5, 19);
  }
}

void *PencilReport.version1Report.getter(uint64_t a1)
{
  sub_10004DCD8();
  type metadata accessor for HIDReport();
  v2 = HIDReport.__allocating_init(count:)(19);
  HIDReport.copy(from:)(v1);
  return v2;
}

unint64_t *sub_10004D554()
{
  v0 = swift_slowAlloc();
  result = sub_10004DBD8(v0, 0.0);
  qword_100080240 = v0;
  return result;
}

unint64_t *static PencilReport.setInterfaceOrientation(_:)(unint64_t *result)
{
  if (result - 1 <= 3)
  {
    v2 = dbl_10005D8C0[result - 1];
    if (qword_100080048 != -1)
    {
      sub_10004DC30(&qword_100080048);
    }

    v3 = qword_100080240;

    return sub_10004DBD8(v3, v2);
  }

  return result;
}

void sub_10004D604(uint64_t a1)
{
  v2 = v1;
  if (qword_100080038 != -1)
  {
    sub_10004DC00(&qword_100080038);
  }

  HIDReport.subscript.setter(static PencilReport.reportID, 0);
  TimeStamp = IOHIDEventGetTimeStamp();
  IOHIDEventGetDoubleValue();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for HIDReport();
    sub_10004DD38();
    sub_10004DD20();

    sub_10004DCE4();
  }

  sub_10003C7F0();
  sub_10004A2F8(v4, 0, 1, v5, v6);
  IOHIDEventGetDoubleValue();
  v8 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for HIDReport();
    sub_10004DD38();
    sub_10004DD20();

    sub_10004DCE4();
  }

  sub_10003C7F0();
  sub_10004A2F8(v9, 0, 3, v10, v11);
  IntegerValue = IOHIDEventGetIntegerValue();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for HIDReport();
    v15 = HIDReport.__allocating_init(count:)(*(v14 + 24));
    HIDReport.copy(from:)(v14);

    *v2 = v15;
  }

  HIDReport.setValue(_:at:bit:)(IntegerValue != 0, 5, 0);
  v16 = IOHIDEventGetIntegerValue();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v2;
  if ((v17 & 1) == 0)
  {
    type metadata accessor for HIDReport();
    v19 = HIDReport.__allocating_init(count:)(*(v18 + 24));
    HIDReport.copy(from:)(v18);

    *v2 = v19;
  }

  HIDReport.setValue(_:at:bit:)(v16 != 0, 5, 1);
  IOHIDEventGetDoubleValue();
  v21 = v20 / 500.0;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v2;
  if ((v22 & 1) == 0)
  {
    type metadata accessor for HIDReport();
    sub_10004DD38();
    sub_10004DD20();

    sub_10004DCE4();
  }

  v24 = sub_10004DCA0();
  v25 = v23;
  v28 = sub_100045804(v27, v24, v26);
  HIDReport.subscript.setter(v28, 6);
  HostTime.nanoseconds.getter(TimeStamp);
  v30 = v29 * 0.00001;
  if (v30 == INFINITY)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    sub_10004DC30(&qword_100080048);
    goto LABEL_21;
  }

  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v2;
  if ((v32 & 1) == 0)
  {
    type metadata accessor for HIDReport();
    v34 = HIDReport.__allocating_init(count:)(*(v33 + 24));
    HIDReport.copy(from:)(v33);

    *v2 = v34;
  }

  HIDReport.setValue(_:at:)(v31, 9);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v2;
  if ((v35 & 1) == 0)
  {
    type metadata accessor for HIDReport();
    sub_10004DD38();
    sub_10004DD20();

    sub_10004DCE4();
  }

  v25 = v36;
  HIDReport.setValue(_:at:)(TimeStamp, 11);
  IOHIDEventGetDoubleValue();
  v8 = v37;
  IOHIDEventGetDoubleValue();
  v21 = v38;
  if (qword_100080048 != -1)
  {
    goto LABEL_36;
  }

LABEL_21:
  v39 = v21 + sub_10004DBF4(qword_100080240);
  v40 = sin(v8);
  v41 = v40 * cos(v39);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v2;
  if ((v42 & 1) == 0)
  {
    type metadata accessor for HIDReport();
    sub_10004DD50();
    sub_10004DD08();

    *v2 = v25;
    v44 = v25;
  }

  v43.n128_f64[0] = v41;
  v45 = v44;
  v46 = sub_100045D34(166, 90, v43);
  HIDReport.setValue(_:at:)(v46, 7);
  sin(v39);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v2;
  if ((v47 & 1) == 0)
  {
    type metadata accessor for HIDReport();
    sub_10004DD50();
    sub_10004DD08();

    *v2 = v45;
    v48 = v45;
  }

  v49 = sub_10004DCB0();
  v52 = sub_100045D34(v49, v50, v51);
  HIDReport.setValue(_:at:)(v52, 8);
  IOHIDEventGetDoubleValue();
  v54 = v53 / 3.14159265;
  if (v54 >= 0.0)
  {
    v55 = v54;
  }

  else
  {
    v55 = v54 + 1.0;
  }

  if (*(v48 + 24) > 20)
  {
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *v2;
    if ((v56 & 1) == 0)
    {
      type metadata accessor for HIDReport();
      v58 = HIDReport.__allocating_init(count:)(*(v57 + 24));
      HIDReport.copy(from:)(v57);

      *v2 = v58;
    }

    v59 = sub_1000458A4(v55, 0, 0x168u);
    HIDReport.setValue(_:at:)(v59, 19);
  }
}

void *PencilReport.init(digitizerEvent:)(uint64_t a1)
{
  sub_10004DCD8();
  type metadata accessor for HIDReport();
  v3 = sub_10004DCC0();
  sub_10004D604(v1);

  return v3;
}

void *PencilReport.init(hidEvent:)(uint64_t a1)
{
  sub_10004DCD8();
  type metadata accessor for HIDReport();
  v3 = sub_10004DCC0();
  if (IOHIDEventGetType() == 11)
  {
    sub_10004D604(v1);

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10004DC00(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004DC30(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004DC50(uint64_t a1)
{

  return swift_once();
}

double sub_10004DC70(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return v2;
  }

  return result;
}

void *sub_10004DCC0()
{

  return HIDReport.__allocating_init(count:)(21);
}

double sub_10004DCF0(char a1)
{

  return sub_100045458(a1, 166, 90);
}

void sub_10004DD08()
{

  HIDReport.copy(from:)(v0);
}

void sub_10004DD20()
{

  HIDReport.copy(from:)(v0);
}

void *sub_10004DD38()
{
  v2 = *(v0 + 24);

  return HIDReport.__allocating_init(count:)(v2);
}

void *sub_10004DD50()
{
  v2 = *(v0 + 24);

  return HIDReport.__allocating_init(count:)(v2);
}

char *SqueezeGestureReport.reportID.unsafeMutableAddressor()
{
  if (qword_100080050 != -1)
  {
    sub_10004EB28(&qword_100080050);
  }

  return &static SqueezeGestureReport.reportID;
}

uint64_t static SqueezeGestureReport.reportID.getter()
{
  if (qword_100080050 != -1)
  {
    sub_10004EB28(&qword_100080050);
  }

  return static SqueezeGestureReport.reportID;
}

uint64_t sub_10004DDF8()
{
  sub_100005890(&qword_10007EED0, qword_10005B4E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10005D8E0;
  *(v0 + 32) = 0x8501A14109FF1A06;
  if (qword_100080050 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = static SqueezeGestureReport.reportID;
  *(v0 + 41) = xmmword_10005D8F0;
  *(v0 + 57) = xmmword_10005D900;
  *(v0 + 73) = xmmword_10005D910;
  *(v0 + 89) = xmmword_10005D920;
  *(v0 + 105) = 0x2811495087500FFLL;
  *(v0 + 113) = -16192;
  result = sub_100042DB0(v0);
  static SqueezeGestureReport.reportDescriptor = result;
  *algn_100083D68 = v2;
  return result;
}

uint64_t *SqueezeGestureReport.reportDescriptor.unsafeMutableAddressor()
{
  if (qword_100080058 != -1)
  {
    sub_10004EB6C(&qword_100080058);
  }

  return &static SqueezeGestureReport.reportDescriptor;
}

uint64_t static SqueezeGestureReport.reportDescriptor.getter()
{
  if (qword_100080058 != -1)
  {
    sub_10004EB6C(&qword_100080058);
  }

  v0 = static SqueezeGestureReport.reportDescriptor;
  sub_100018F90(static SqueezeGestureReport.reportDescriptor, *algn_100083D68);
  return v0;
}

void *SqueezeGestureReport.init()()
{
  type metadata accessor for HIDReport();
  v0 = HIDReport.__allocating_init(count:)(32);
  v1 = qword_100080050;

  if (v1 != -1)
  {
    sub_10004EB28(&qword_100080050);
  }

  HIDReport.subscript.setter(static SqueezeGestureReport.reportID, 0);

  return v0;
}

void *SqueezeGestureReport.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_100057780();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HIDReport();
  v8 = HIDReport.__allocating_init(count:)(32);
  v9 = sub_100057710();
  if (qword_100080050 != -1)
  {
    sub_10004EB28(&qword_100080050);
  }

  if (static SqueezeGestureReport.reportID == v9 && sub_100057750() >= v8[3])
  {
    sub_1000576E0();
    sub_10000686C(a1, a2);
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    sub_10000686C(a1, a2);
    return 0;
  }

  return v8;
}

void *SqueezeGestureReport.init(report:)(uint64_t a1)
{
  type metadata accessor for HIDReport();
  v2 = HIDReport.__allocating_init(count:)(32);
  v3 = HIDReport.subscript.getter(0);
  if (qword_100080050 != -1)
  {
    sub_10004EB28(&qword_100080050);
  }

  if (static SqueezeGestureReport.reportID == v3 && (v4 = v2[3], *(a1 + 24) >= v4))
  {
    sub_10004C168(&v6, v2[2], v4);
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t SqueezeGestureReport.phase.getter()
{
  v0 = sub_100049E04(1);
  LOBYTE(result) = HIDEvent.Phase.init(rawValue:)(v0);
  if (result == 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t (*SqueezeGestureReport.phase.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  v3 = sub_100049E04(1);
  v4.value = HIDEvent.Phase.init(rawValue:)(v3).value;
  if (v4.value == SidecarHID_HIDEvent_Phase_unknownDefault)
  {
    value = SidecarHID_HIDEvent_Phase_none;
  }

  else
  {
    value = v4.value;
  }

  *(a1 + 8) = value;
  return sub_10004E314;
}

uint64_t SqueezeGestureReport.hostTime.modify(uint64_t a1, uint64_t a2)
{
  sub_10004EB8C(a1, a2);
  *v2 = sub_100049F4C(2);
  return sub_100042CAC();
}

void (*SqueezeGestureReport.stage.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = HIDReport.getValue(_:at:)(10);
  return sub_10004E4AC;
}

void (*SqueezeGestureReport.transition.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = HIDReport.getValue(_:at:)(11);
  return sub_10004E578;
}

void SqueezeGestureReport.nextThreshold.getter()
{
  sub_10003C7F0();
  v0 = sub_10004A22C();
  sub_10004DC70(v0, v1);
}

uint64_t SqueezeGestureReport.nextThreshold.setter()
{
  sub_10004EB5C();
  if (!(!v3 & v2))
  {
    v0 = v1;
  }

  sub_10004EB48(v0);
  v4.n128_f64[0] = sub_10003C7F0();
  return sub_10004A454(v5, 0, 12, v4, v6, v7, v8, v9);
}

uint64_t SqueezeGestureReport.nextThreshold.modify(uint64_t a1, uint64_t a2)
{
  sub_10004EB8C(a1, a2);
  sub_10003C7F0();
  v3 = sub_10004A22C();
  *v2 = sub_10004DC70(v3, v4);
  return sub_100042CAC();
}

void SqueezeGestureReport.pressedThreshold.getter()
{
  sub_10003C7F0();
  v0 = sub_10004A22C();
  sub_10004DC70(v0, v1);
}

uint64_t SqueezeGestureReport.pressedThreshold.setter()
{
  sub_10004EB5C();
  if (!(!v3 & v2))
  {
    v0 = v1;
  }

  sub_10004EB48(v0);
  v4.n128_f64[0] = sub_10003C7F0();
  return sub_10004A454(v5, 0, 16, v4, v6, v7, v8, v9);
}

uint64_t SqueezeGestureReport.pressedThreshold.modify(uint64_t a1, uint64_t a2)
{
  sub_10004EB8C(a1, a2);
  sub_10003C7F0();
  v3 = sub_10004A22C();
  *v2 = sub_10004DC70(v3, v4);
  return sub_100042CAC();
}

void SqueezeGestureReport.releasedThreshold.getter()
{
  sub_10003C7F0();
  v0 = sub_10004A22C();
  sub_10004DC70(v0, v1);
}

uint64_t SqueezeGestureReport.releasedThreshold.setter()
{
  sub_10004EB5C();
  if (!(!v3 & v2))
  {
    v0 = v1;
  }

  sub_10004EB48(v0);
  v4.n128_f64[0] = sub_10003C7F0();
  return sub_10004A454(v5, 0, 20, v4, v6, v7, v8, v9);
}

uint64_t SqueezeGestureReport.releasedThreshold.modify(uint64_t a1, uint64_t a2)
{
  sub_10004EB8C(a1, a2);
  sub_10003C7F0();
  v3 = sub_10004A22C();
  *v2 = sub_10004DC70(v3, v4);
  return sub_100042CAC();
}

void SqueezeGestureReport.normalizedForce.getter()
{
  sub_10003C7F0();
  v0 = sub_10004A22C();
  sub_10004DC70(v0, v1);
}

uint64_t SqueezeGestureReport.normalizedForce.setter()
{
  sub_10004EB5C();
  if (!(!v3 & v2))
  {
    v0 = v1;
  }

  sub_10004EB48(v0);
  v4.n128_f64[0] = sub_10003C7F0();
  return sub_10004A454(v5, 0, 24, v4, v6, v7, v8, v9);
}

uint64_t SqueezeGestureReport.normalizedForce.modify(uint64_t a1, uint64_t a2)
{
  sub_10004EB8C(a1, a2);
  sub_10003C7F0();
  v3 = sub_10004A22C();
  *v2 = sub_10004DC70(v3, v4);
  return sub_100042CAC();
}

uint64_t sub_10004E964(double *a1, __n128 a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v2 = 0.0;
  }

  sub_10004EB48(v2);
  v3.n128_f64[0] = sub_10003C7F0();
  return sub_10004A454(v4, 0, v5, v3, v6, v7, v8, v9);
}

uint64_t SqueezeGestureReport.normalizedForceVelocity.setter(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v1 = round(a1 * 65536.0);
    if (v1 > 2147483650.0)
    {
      v2 = 2147483650.0;
    }

    else
    {
      v2 = v1;
    }

    if (v1 > -2147483650.0)
    {
      if (v1 <= 2147483650.0 && (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      v2 = -2147483650.0;
    }

    if (v2 > -2147483650.0)
    {
      if (v2 < 2147483650.0)
      {
        return sub_10004C21C();
      }

LABEL_15:
      __break(1u);
      return result;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t SqueezeGestureReport.normalizedForceVelocity.modify(uint64_t a1, uint64_t a2)
{
  sub_10004EB8C(a1, a2);
  *v2 = vcvtd_n_f64_s32(sub_10004A08C(28), 0x10uLL);
  return sub_100042CAC();
}

uint64_t sub_10004EAE0(Swift::Double *a1)
{
  *&result = HIDFixed.init(doubleValue:)(*a1);
  if ((result & 0x100000000) == 0)
  {
    return sub_10004C21C();
  }

  return result;
}

uint64_t sub_10004EB28(uint64_t a1)
{

  return swift_once();
}

double sub_10004EB48(double result)
{
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_10004EB6C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004EB98()
{
  sub_10004EE4C();
  result = sub_100057F10();
  qword_100080248 = result;
  return result;
}

uint64_t sub_10004EBF0()
{
  v0 = sub_100057880();
  sub_100026FF4(v0, qword_100080250);
  sub_100026CEC(v0, qword_100080250);
  if (qword_100080060 != -1)
  {
    sub_10004EE90(&qword_100080060);
  }

  v1 = qword_100080248;
  return sub_100057890();
}

void SidecarHIDDebugLog(_:)(uint64_t (*a1)(void))
{
  if (qword_100080060 != -1)
  {
    sub_10004EE90(&qword_100080060);
  }

  v2 = qword_100080248;
  v3 = sub_100057D60();
  if (os_log_type_enabled(v2, v3) && sub_100038B68())
  {
    v4 = a1();
    v6 = v5;
    if (qword_100080068 != -1)
    {
      swift_once();
    }

    v7 = sub_100057880();
    sub_100026CEC(v7, qword_100080250);

    oslog = sub_100057850();
    v8 = sub_100057D60();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      v11 = sub_10000D850(v4, v6, &v13);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, oslog, v8, "%{public}s", v9, 0xCu);
      sub_10000904C(v10);
    }

    else
    {
    }
  }
}

unint64_t sub_10004EE4C()
{
  result = qword_100080268;
  if (!qword_100080268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100080268);
  }

  return result;
}

uint64_t sub_10004EE90(uint64_t a1)
{

  return swift_once();
}

char *TouchReport.reportID.unsafeMutableAddressor()
{
  if (qword_100080070 != -1)
  {
    sub_10004FD8C(&qword_100080070);
  }

  return &static TouchReport.reportID;
}

uint64_t static TouchReport.reportID.getter()
{
  if (qword_100080070 != -1)
  {
    sub_10004FD8C(&qword_100080070);
  }

  return static TouchReport.reportID;
}

uint64_t sub_10004EF40()
{
  sub_100005890(&qword_10007EED0, qword_10005B4E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10005D9F0;
  *(v0 + 32) = 67702021;
  *(v0 + 36) = 417;
  *(v0 + 38) = -123;
  if (qword_100080070 != -1)
  {
    swift_once();
  }

  *(v0 + 39) = static TouchReport.reportID;
  *(v0 + 40) = xmmword_10005DA00;
  *(v0 + 56) = xmmword_10005DA10;
  *(v0 + 72) = xmmword_10005DA20;
  *(v0 + 88) = xmmword_10005DA30;
  *(v0 + 104) = xmmword_10005DA40;
  *(v0 + 120) = xmmword_10005DA50;
  *(v0 + 136) = xmmword_10005DA60;
  *(v0 + 152) = xmmword_10005DA70;
  *(v0 + 168) = xmmword_10005DA80;
  *(v0 + 184) = 0x7500FF2600151109;
  *(v0 + 192) = -2126539512;
  *(v0 + 196) = -16350;
  result = sub_100042DB0(v0);
  static TouchReport.reportDescriptor = result;
  unk_100083D80 = v2;
  return result;
}

uint64_t *TouchReport.reportDescriptor.unsafeMutableAddressor()
{
  if (qword_100080078 != -1)
  {
    sub_10004FDAC(&qword_100080078);
  }

  return &static TouchReport.reportDescriptor;
}

uint64_t static TouchReport.reportDescriptor.getter()
{
  if (qword_100080078 != -1)
  {
    sub_10004FDAC(&qword_100080078);
  }

  v0 = static TouchReport.reportDescriptor;
  sub_100018F90(static TouchReport.reportDescriptor, unk_100083D80);
  return v0;
}

void *TouchReport.init()()
{
  type metadata accessor for HIDReport();
  v0 = HIDReport.__allocating_init(count:)(23);
  v1 = qword_100080070;

  if (v1 != -1)
  {
    sub_10004FD8C(&qword_100080070);
  }

  HIDReport.subscript.setter(static TouchReport.reportID, 0);

  return v0;
}

void *TouchReport.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_100057780();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HIDReport();
  v8 = HIDReport.__allocating_init(count:)(23);
  v9 = sub_100057710();
  if (qword_100080070 != -1)
  {
    sub_10004FD8C(&qword_100080070);
  }

  if (static TouchReport.reportID == v9 && sub_100057750() >= v8[3])
  {
    sub_1000576E0();
    sub_10000686C(a1, a2);
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    sub_10000686C(a1, a2);
    return 0;
  }

  return v8;
}

void *TouchReport.init(report:)(uint64_t a1)
{
  type metadata accessor for HIDReport();
  v2 = HIDReport.__allocating_init(count:)(23);
  v3 = HIDReport.subscript.getter(0);
  if (qword_100080070 != -1)
  {
    sub_10004FD8C(&qword_100080070);
  }

  if (static TouchReport.reportID == v3 && (v4 = v2[3], *(a1 + 24) >= v4))
  {
    sub_10004C168(&v6, v2[2], v4);
  }

  else
  {

    return 0;
  }

  return v2;
}

void TouchReport.Contact.init(report:offset:mutable:)(uint64_t a1, uint64_t a2)
{
  v2 = 5 * a2;
  if ((a2 * 5) >> 64 != (5 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 < -1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v2 + 1) > 0xFF)
  {
LABEL_7:
    __break(1u);
  }
}

Swift::Void __swiftcall TouchReport.Contact.copyOnWrite()()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    v1 = v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = *v0;
      type metadata accessor for HIDReport();
      v3 = HIDReport.__allocating_init(count:)(*(v2 + 24));
      HIDReport.copy(from:)(v2);

      *v1 = v3;
    }
  }
}

uint64_t TouchReport.Contact.x.getter()
{
  sub_10003C7F0();
  result = sub_10004A134();
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t TouchReport.Contact.x.setter(double a1)
{
  TouchReport.Contact.copyOnWrite()();
  v2 = 0.0;
  if (a1 > 0.0)
  {
    v2 = a1;
  }

  sub_10004FDEC(v2);
  sub_10003C7F0();
  return sub_10004A2F8(v3, 0, v4, v5, v6);
}

uint64_t TouchReport.Contact.x.modify(uint64_t a1)
{
  sub_10004FE34(a1);
  sub_10003C7F0();
  result = sub_10004A134();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
    return sub_100042CAC();
  }

  return result;
}

uint64_t TouchReport.Contact.y.getter()
{
  sub_10003C7F0();
  result = sub_10004A134();
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t TouchReport.Contact.y.setter(double a1)
{
  TouchReport.Contact.copyOnWrite()();
  v2 = 0.0;
  if (a1 > 0.0)
  {
    v2 = a1;
  }

  sub_10004FDEC(v2);
  sub_10003C7F0();
  return sub_10004A2F8(v3, 0, v4, v5, v6);
}

uint64_t TouchReport.Contact.y.modify(uint64_t a1)
{
  sub_10004FE34(a1);
  sub_10003C7F0();
  result = sub_10004A134();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
    return sub_100042CAC();
  }

  return result;
}

void TouchReport.Contact.index.setter(char a1)
{
  TouchReport.Contact.copyOnWrite()();
  v3 = sub_10004FDCC();
  HIDReport.setValue(_:at:)(v3 & 0xE0 | a1 & 0x1F, v1);
}

uint64_t TouchReport.Contact.index.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10004FE04() & 0x1F;
  return sub_100042CAC();
}

void TouchReport.Contact.isInRange.setter(char a1)
{
  TouchReport.Contact.copyOnWrite()();
  v3 = sub_10004FDCC();
  if (a1)
  {
    v4 = 0x80;
  }

  else
  {
    v4 = 0;
  }

  HIDReport.setValue(_:at:)(v4 & 0x80 | v3 & 0x7F, v1);
}

void (*TouchReport.Contact.isInRange.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (sub_10004FE04() & 0x80) != 0;
  return sub_10004F894;
}

void TouchReport.Contact.isTouching.setter(char a1)
{
  TouchReport.Contact.copyOnWrite()();
  v3 = sub_10004FDCC();
  if (a1)
  {
    v4 = 64;
  }

  else
  {
    v4 = 0;
  }

  HIDReport.setValue(_:at:)(v3 & 0xBF | v4, v1);
}

void (*TouchReport.Contact.isTouching.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (sub_10004FE04() & 0x40) != 0;
  return sub_10004F980;
}

void TouchReport.mutableContact(at:)()
{
  sub_10004FE20();
  if (!v1)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 < -1)
  {
    goto LABEL_6;
  }

  if ((v0 + 1) <= 0xFF)
  {

    return;
  }

LABEL_7:
  __break(1u);
}

void TouchReport.contact(at:)()
{
  sub_10004FE20();
  if (!v1)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 < -1)
  {
    goto LABEL_6;
  }

  if ((v0 + 1) <= 0xFF)
  {

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t TouchReport.contacts.getter(uint64_t a1)
{
  sub_100005890(&qword_100080270, &qword_10005DAB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10005B5A0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 1;
  *(v2 + 48) = a1;
  *(v2 + 56) = 6;
  swift_retain_n();
  return v2;
}

void TouchReport.contactCount.setter(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (a1 <= 0xFF)
  {
    HIDReport.setValue(_:at:)(a1, 11);
    return;
  }

  __break(1u);
}

uint64_t TouchReport.contactCount.modify(void *a1, uint64_t a2)
{
  a1[1] = a2;
  *a1 = HIDReport.getValue(_:at:)(11);
  return sub_100042CAC();
}

void sub_10004FB78(unint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (v2 <= 0xFF)
    {
LABEL_7:
      HIDReport.setValue(_:at:)(v2, 11);
      return;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= 0xFF)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t (*TouchReport.scanTime.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = sub_100049E04(13);
  return sub_10004FC4C;
}

uint64_t sub_10004FCE8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10004FCFC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004FD3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004FD8C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004FDAC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10004FDCC()
{
  v2 = *(v0 + 8);

  return HIDReport.getValue(_:at:)(v2);
}

double sub_10004FDEC(double result)
{
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_10004FE04()
{
  v2 = *(v0 + 8);

  return HIDReport.getValue(_:at:)(v2);
}

Swift::Int sub_10004FE6C(char a1)
{
  sub_1000582B0();
  sub_1000582D0(word_10005DDFE[a1]);
  return sub_1000582F0();
}

Swift::Int sub_10004FEF4(uint64_t a1, char a2)
{
  sub_1000582B0();
  sub_1000582D0(word_10005DDFE[a2]);
  return sub_1000582F0();
}

uint64_t sub_10004FFA0@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of Clock.heartbeatTimer();
  *a1 = result;
  return result;
}

uint64_t sub_10004FFC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100018634(*a1, *v2);
  *a2 = result;
  return result;
}

void sub_10005002C(uint64_t a1@<X8>)
{
  VideoStream.qosMonitorServerDidDie(_:)();
  *a1 = v2;
  *(a1 + 8) = 0;
}

uint64_t TouchTracker.__allocating_init()()
{
  sub_1000196EC();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t TouchTracker.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t TouchTracker.track<A>(_:where:)(Swift::Int a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v45 = a3;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v16 = *(v5 + 16);
  v15 = *(v5 + 24);
  v52 = v5;
  v43 = v16 & v15;
  v55 = v16 & v15;
  v17 = sub_100057C00();
  v54 = v17;
  v18 = sub_100057C60();
  if (v17 == v18)
  {
LABEL_2:
    *(v52 + 24) = v43;
    v54 = a1;
    __chkstk_darwin(v18);
    *(&v41 - 4) = a4;
    *(&v41 - 3) = v19;
    *(&v41 - 2) = &v55;
    sub_100057C80();

    swift_getWitnessTable();
    return sub_1000580B0();
  }

  v42 = v10;
  v22 = a5 + 8;
  v21 = *(a5 + 8);
  v50 = *(a5 + 24);
  v51 = a5 + 24;
  v48 = (v9 + 32);
  v49 = (v9 + 16);
  v46 = v21;
  v47 = v9 + 8;
  while (1)
  {
    v23 = sub_100057C40();
    sub_100057C10();
    if (v23)
    {
      (*(v9 + 16))(v14, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, a4);
      goto LABEL_6;
    }

    result = sub_100058080();
    if (v42 != 8)
    {
      break;
    }

    v53 = result;
    (*v49)(v14, &v53, a4);
    swift_unknownObjectRelease();
LABEL_6:
    sub_100057C70(&v54);
    (*v48)(v11, v14, a4);
    v24 = v21(a4, a5);
    if ((v50(a4, a5) & 1) == 0)
    {
      v33 = sub_100050C80();
      v34(v33);
      v35 = 1 << v24;
      if (v24 >= 0x40)
      {
        v35 = 0;
      }

      if (v24 > 0x40)
      {
        v35 = 0;
      }

      v36 = *(v52 + 16);
      if ((v36 & v35) != 0)
      {
        *(v52 + 16) = v36 & ~v35;
      }

      goto LABEL_21;
    }

    v25 = v22;
    v26 = v14;
    v27 = a5;
    v28 = 1 << v24;
    if (v24 >= 0x40)
    {
      v29 = 0;
    }

    else
    {
      v29 = 1 << v24;
    }

    if (v24 > 0x40)
    {
      v29 = 0;
    }

    v30 = *(v52 + 16);
    if ((v29 & ~v30) != 0)
    {
      *(v52 + 16) = v30 | v29;
      v37 = v44(v11);
      v38 = sub_100050C80();
      v39(v38);
      if (v24 + 64 > 0x80 || (v37 & 1) == 0)
      {
        goto LABEL_14;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        v40 = v43;
        if (v24 > 0xFFFFFFFFFFFFFFC0)
        {
          v28 = 0;
LABEL_27:
          if ((v28 & ~v40) != 0)
          {
            v43 = v28 | v40;
            v55 = v28 | v40;
          }
        }
      }

      else
      {
        v40 = v43;
        if (v24 < 0x40)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v31 = sub_100050C80();
      v32(v31);
    }

LABEL_14:
    a5 = v27;
    v14 = v26;
    v22 = v25;
    v21 = v46;
LABEL_21:
    v18 = sub_100057C60();
    v17 = v54;
    if (v54 == v18)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1000504B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = (*(a4 + 8))(a3, a4);
  v6 = 1 << v5;
  if (v5 >= 0x40)
  {
    v6 = 0;
  }

  if (v5 > 0x40)
  {
    v6 = 0;
  }

  return (v6 & ~v4) == 0;
}

uint64_t TouchTrackerLog.__allocating_init()()
{
  sub_1000196EC();
  v0 = swift_allocObject();
  TouchTrackerLog.init()(v0);
  return v0;
}

uint64_t TouchTrackerLog.init()(uint64_t a1)
{
  *(v1 + 16) = &_swiftEmptyArrayStorage;
  type metadata accessor for TouchTracker();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t TouchTrackerLog.track<A>(_:timestamp:where:)(Swift::Int a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v6 + 16);
  v8 = *(v6 + 16);
  if (v8[2])
  {
    v11 = v8[4];
    v10 = v8[5];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = *(v6 + 24);
  v13 = TouchTracker.track<A>(_:where:)(a1, a3, a4, a5, a6);
  v14 = *(v12 + 24);
  if ((v10 & ~v14) != 0 || (v15 = *v9, !*(*v9 + 16)))
  {
    sub_1000507CC(0, 0, a2, v14);
    return v13;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v15;
  if ((result & 1) == 0)
  {
    result = sub_100050A68(v15);
    v15 = result;
  }

  if (*(v15 + 16))
  {
    *(v15 + 32) = v11;
    *(v15 + 40) = v14;
    *v9 = v15;
    return v13;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall TouchTrackerLog.find(index:timestamp:)(Swift::Int index, Swift::UInt64 timestamp)
{
  v5 = 0;
  v6 = 0;
  v9 = *(v2 + 16);
  v8 = (v2 + 16);
  v7 = v9;
  v10 = *(v9 + 16);
  while (1)
  {
    if (v10 == v6)
    {
      LOBYTE(v11) = 0;
      return v11;
    }

    if (*(v7 + v5 + 32) <= timestamp)
    {
      break;
    }

    ++v6;
    v5 += 16;
  }

  v11 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return v11;
  }

  if (v11 < v10)
  {
    LOBYTE(v11) = sub_100050878(v11, v10);
    v7 = *v8;
    v10 = *(*v8 + 16);
  }

  if (v6 >= v10)
  {
    goto LABEL_16;
  }

  v12 = *(v7 + v5 + 40);
  v13 = 1 << index;
  if (index >= 0x40)
  {
    v13 = 0;
  }

  if (index > 0x40)
  {
    v13 = 0;
  }

  LOBYTE(v11) = (v13 & ~v12) == 0;
  return v11;
}

uint64_t TouchTrackerLog.deinit()
{

  return v0;
}

uint64_t TouchTrackerLog.__deallocating_deinit()
{
  TouchTrackerLog.deinit();
  v0 = sub_1000196EC();

  return _swift_deallocClassInstance(v0, v1, v2);
}

char *sub_10005078C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100050C70(a3, result);
  }

  return result;
}

char *sub_1000507AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100050C70(a3, result);
  }

  return result;
}

unint64_t sub_1000507CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_100050948(result, 1);

  return sub_1000509B0(v7, a2, 1, a3, a4);
}

unint64_t sub_100050878(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_100050948(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  v10 = v9 - a2;
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_21;
  }

  v11 = (v8 + 32 + 16 * a2);
  result = v8 + 32 + 16 * v5;
  if (v5 != a2 || v11 + 16 * v10 <= result)
  {
    result = memmove(result, v11, 16 * v10);
    v9 = *(v8 + 16);
  }

  v13 = __OFADD__(v9, v7);
  v14 = v9 + v7;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_100050948(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_100042B78(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

unint64_t sub_1000509B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 16 * result);
  if (v8)
  {
    v14 = *(v11 + 16);
    v15 = v14 - a2;
    if (!__OFSUB__(v14, a2))
    {
      result = &v13[2 * a3];
      v16 = (v12 + 16 * a2);
      if (result != v16 || v16 + 16 * v15 <= result)
      {
        result = memmove(result, v16, 16 * v15);
        v14 = *(v11 + 16);
      }

      v18 = __OFADD__(v14, v8);
      v19 = v14 + v8;
      if (!v18)
      {
        *(v11 + 16) = v19;
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  if (a3 >= 1)
  {
    *v13 = a4;
    v13[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_19;
    }
  }

  return result;
}

unint64_t sub_100050B08()
{
  result = qword_100080428;
  if (!qword_100080428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080428);
  }

  return result;
}

unint64_t sub_100050B60()
{
  result = qword_100080430;
  if (!qword_100080430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080430);
  }

  return result;
}