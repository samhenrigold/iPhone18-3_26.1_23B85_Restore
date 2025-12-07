uint64_t sub_10018DA98()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.07;
  if (byte_1004D4FC9)
  {
    v0 = 0.2;
  }

  dword_1004D5024 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DB10()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.37;
  if (byte_1004D4FC9)
  {
    v0 = 0.55;
  }

  dword_1004D5028 = LODWORD(v0);
  return result;
}

float sub_10018DB98(float result, uint64_t a2, float *a3)
{
  if (qword_1004A0400 == -1)
  {
    *a3 = result;
  }

  else
  {
    v4 = result;
    swift_once();
    result = v4;
    *a3 = v4;
  }

  return result;
}

uint64_t sub_10018DC08()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.3;
  if (byte_1004D4FC9)
  {
    v0 = 0.55;
  }

  dword_1004D5030 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DC80()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.2;
  if (byte_1004D4FC9)
  {
    v0 = 0.3;
  }

  dword_1004D5034 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DCF8()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 0.85;
  if (byte_1004D4FC9)
  {
    v0 = 0.55;
  }

  dword_1004D5038 = LODWORD(v0);
  return result;
}

uint64_t sub_10018DD88(uint64_t a1, float *a2)
{
  if (qword_1004A0400 != -1)
  {
    v3 = a2;
    result = swift_once();
    a2 = v3;
  }

  v2 = 0.85;
  if (byte_1004D4FC9)
  {
    v2 = 0.95;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10018DE0C()
{
  if (qword_1004A0400 != -1)
  {
    result = swift_once();
  }

  v0 = 1.2;
  if (byte_1004D4FC9)
  {
    v0 = 1.3;
  }

  dword_1004D5044 = LODWORD(v0);
  return result;
}

float sub_10018DE84()
{
  if (qword_1004A04C0 != -1)
  {
    swift_once();
  }

  result = *&dword_1004D5044 * 0.5;
  *&dword_1004D5048 = *&dword_1004D5044 * 0.5;
  return result;
}

id sub_10018DEF4()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D5050 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10018DF74@<X0>(void *a1@<X8>)
{
  if (qword_1004A04D0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D5050;
  *a1 = qword_1004D5050;

  return v2;
}

uint64_t sub_10018DFE4(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_10007B080(*a1, *a2) & 1) == 0 || (sub_10007B080(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_10007B080(v3, v5);
}

unint64_t sub_10018E064(uint64_t a1)
{
  result = sub_10018E08C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10018E08C()
{
  result = qword_1004AD3E8;
  if (!qword_1004AD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD3E8);
  }

  return result;
}

void sub_10018E0E0(void *a1)
{
  v3 = OBJC_IVAR____TtC7Measure23CardContainerController_containerView;
  v4 = [*(v1 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) topAnchor];
  v5 = [a1 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  [v6 setActive:1];
  v7 = [*(v1 + v3) trailingAnchor];
  v8 = [a1 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  [v9 setActive:1];
  v10 = [*(v1 + v3) leadingAnchor];
  v11 = [a1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  [v12 setActive:1];
  v13 = [*(v1 + v3) bottomAnchor];
  v14 = [a1 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  [v15 setActive:1];
}

id sub_10018E2F0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC7Measure23CardContainerController_isPanningCard] = 0;
  v1[OBJC_IVAR____TtC7Measure23CardContainerController_isDraggingEnabled] = 1;
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_containerHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_draggingAnimator] = 0;
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_maxHeightSubscription] = 0;
  *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_containerView] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10018E3AC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7Measure23CardContainerController_draggingAnimator;
  v3 = *&v0[OBJC_IVAR____TtC7Measure23CardContainerController_draggingAnimator];
  if (v3)
  {
    [v3 stopAnimation:1];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void *sub_10018E598()
{
  type metadata accessor for State();
  swift_allocObject();
  result = sub_10018E6EC();
  qword_1004D5058 = result;
  return result;
}

void *sub_10018E6EC()
{
  v1 = v0;
  v2 = type metadata accessor for MeasurementsHistory(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for SessionState(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_10008F12C();
  *&v31[0] = OrderedDictionary.init()();
  *(&v31[0] + 1) = v15;
  v31[1] = v16;
  LODWORD(v31[2]) = 1106247680;
  *(&v31[2] + 8) = 0u;
  sub_10000F974(&qword_1004AD608, &qword_1003E0D90);
  swift_allocObject();
  v0[2] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = sub_1001CA4E0();
  *(&v31[0] + 1) = v17;
  *&v31[1] = v18;
  sub_10000F974(&qword_1004AD610, &qword_1003E0D98);
  swift_allocObject();
  v0[3] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = 0x8000000000000000;
  sub_10000F974(&qword_1004AD618, &qword_1003E0DA0);
  swift_allocObject();
  v0[4] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004AD620, &qword_1003E0DA8);
  swift_allocObject();
  v0[5] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  sub_10000F974(&qword_1004AD628, &qword_1003E0DB0);
  swift_allocObject();
  v0[6] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 2;
  *(v31 + 1) = 0;
  sub_10000F974(&qword_1004AD630, &qword_1003E0DB8);
  swift_allocObject();
  v0[7] = PublishedValue.init(wrappedValue:)();
  *v14 = 0;
  v19 = *(v9 + 28);
  v20 = type metadata accessor for ARCamera.TrackingState.Reason();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 2, v20);
  sub_10018F668(v14, v11, type metadata accessor for SessionState);
  sub_10000F974(&qword_1004AD638, &qword_1003E0DC0);
  swift_allocObject();
  v21 = PublishedValue.init(wrappedValue:)();
  sub_10018F6D0(v14, type metadata accessor for SessionState);
  v1[8] = v21;
  memset(v31, 0, 32);
  sub_10000F974(&qword_1004AD640, &qword_1003E0DC8);
  swift_allocObject();
  v1[9] = PublishedValue.init(wrappedValue:)();
  ComputedCameraProperties.init()();
  memcpy(&v34[8], v35, 0x1E0uLL);
  *&v31[0] = 0;
  *(&v31[0] + 1) = 0xBFF0000000000000;
  *&v31[1] = 0;
  memcpy(&v31[1] + 8, v34, 0x1E8uLL);
  sub_10000F974(&qword_1004AD648, &qword_1003E0DD0);
  swift_allocObject();
  v1[10] = PublishedValue.init(wrappedValue:)();
  ComputedCameraProperties.init()();
  v31[0] = 0u;
  *&v31[31] = 0;
  sub_10000F974(&qword_1004AD650, &qword_1003E0DD8);
  swift_allocObject();
  v1[11] = PublishedValue.init(wrappedValue:)();
  v36 = 1;
  LOBYTE(v47[0]) = 1;
  LOBYTE(v60[0]) = 1;
  LOBYTE(v59[0]) = 1;
  memset(v31, 0, 64);
  LOBYTE(v31[4]) = 1;
  *(&v31[4] + 1) = v42;
  BYTE3(v31[4]) = v43;
  DWORD1(v31[4]) = 0;
  BYTE8(v31[4]) = 1;
  *(&v31[4] + 9) = *v41;
  HIDWORD(v31[4]) = *&v41[3];
  v31[5] = 0u;
  LOBYTE(v31[6]) = 1;
  BYTE3(v31[6]) = v40;
  *(&v31[6] + 1) = v39;
  DWORD1(v31[6]) = 0;
  BYTE8(v31[6]) = 1;
  BYTE11(v31[6]) = v38;
  *(&v31[6] + 9) = v37;
  HIDWORD(v31[6]) = 0;
  LOBYTE(v31[7]) = 1;
  sub_10000F974(&qword_1004AD658, &qword_1003E0DE0);
  swift_allocObject();
  v1[12] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = 0;
  sub_10000F974(&qword_1004AD660, &qword_1003E0DE8);
  swift_allocObject();
  v1[13] = PublishedValue.init(wrappedValue:)();
  v31[0] = xmmword_1003E0C50;
  memset(&v31[1], 0, 32);
  sub_10000F974(&qword_1004AD668, &qword_1003E0DF0);
  swift_allocObject();
  v1[14] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  sub_10000F974(&qword_1004AD670, &qword_1003E0DF8);
  swift_allocObject();
  v1[15] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 5;
  sub_10000F974(&qword_1004AD678, &qword_1003E0E00);
  swift_allocObject();
  v1[16] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  sub_10000F974(&qword_1004AD680, &qword_1003E0E08);
  swift_allocObject();
  v1[17] = PublishedValue.init(wrappedValue:)();
  LODWORD(v31[0]) = 0;
  sub_10000F974(&qword_1004AD688, &qword_1003E0E10);
  swift_allocObject();
  v1[18] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 2;
  sub_10000F974(&qword_1004AD690, &qword_1003E0E18);
  swift_allocObject();
  v1[19] = PublishedValue.init(wrappedValue:)();
  sub_10000F974(&qword_1004AD698, &qword_1003E0E20);
  swift_allocObject();
  v1[20] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = 0;
  sub_10000F974(&qword_1004AD6A0, &qword_1003E0E28);
  swift_allocObject();
  v1[21] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  *(v31 + 8) = 0u;
  *(&v31[1] + 8) = 0u;
  BYTE8(v31[2]) = 1;
  sub_10000F974(&qword_1004AD6A8, &qword_1003E0E30);
  swift_allocObject();
  v1[22] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v11) = v36;
  memset(v31, 0, 64);
  LOBYTE(v31[4]) = v36;
  *(&v31[4] + 1) = *v46;
  *(&v31[4] + 1) = *&v46[7];
  memset(&v31[5], 0, 64);
  LOBYTE(v31[9]) = v36;
  *(&v31[9] + 1) = v44;
  BYTE3(v31[9]) = v45;
  DWORD1(v31[9]) = 0;
  BYTE8(v31[9]) = 1;
  sub_10000F974(&qword_1004AD6B0, &qword_1003E0E38);
  swift_allocObject();
  v1[23] = PublishedValue.init(wrappedValue:)();
  v31[0] = 0uLL;
  sub_10000F974(&qword_1004AD6B8, &qword_1003E0E40);
  swift_allocObject();
  v1[24] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = _swiftEmptyArrayStorage;
  *(&v31[0] + 1) = _swiftEmptyArrayStorage;
  *&v31[1] = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004AD6C0, &qword_1003E0E48);
  swift_allocObject();
  v1[25] = PublishedValue.init(wrappedValue:)();
  sub_10004B268(v47);
  v31[6] = v47[6];
  v31[7] = v47[7];
  LOBYTE(v31[8]) = v48;
  v31[2] = v47[2];
  v31[3] = v47[3];
  v31[4] = v47[4];
  v31[5] = v47[5];
  v31[0] = v47[0];
  v31[1] = v47[1];
  *(&v31[8] + 1) = 0;
  *&v31[9] = _swiftEmptyArrayStorage;
  sub_10000F974(&qword_1004AD6C8, &qword_1003E0E50);
  swift_allocObject();
  v1[26] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v60[0]) = 1;
  LOBYTE(v59[0]) = 1;
  v30[0] = 1;
  v65[0] = 1;
  LOBYTE(v64[0]) = 1;
  LOBYTE(v63[0]) = 1;
  LOBYTE(v62[0]) = 1;
  LOBYTE(v61[0]) = 1;
  LOBYTE(v58[0]) = 1;
  LOBYTE(v57[0]) = 1;
  v50[0] = 1;
  LOWORD(v31[0]) = 1;
  BYTE2(v31[0]) = 0;
  *(v31 + 3) = *&v65[11];
  BYTE7(v31[0]) = v65[15];
  *(&v31[0] + 1) = 0;
  *&v31[1] = 0;
  BYTE8(v31[1]) = 1;
  *(&v31[1] + 9) = *v65;
  HIDWORD(v31[1]) = *&v65[3];
  v31[2] = 0uLL;
  LOBYTE(v31[3]) = 1;
  DWORD1(v31[3]) = *(v64 + 3);
  *(&v31[3] + 1) = v64[0];
  *(&v31[3] + 8) = 0u;
  BYTE8(v31[4]) = 1;
  HIDWORD(v31[4]) = *(v63 + 3);
  *(&v31[4] + 9) = v63[0];
  v31[5] = 0u;
  LOBYTE(v31[6]) = 1;
  DWORD1(v31[6]) = *(v62 + 3);
  *(&v31[6] + 1) = v62[0];
  *(&v31[6] + 8) = 0u;
  BYTE8(v31[7]) = 1;
  HIDWORD(v31[7]) = *(v61 + 3);
  *(&v31[7] + 9) = v61[0];
  memset(&v31[8], 0, 64);
  LOBYTE(v31[12]) = v11;
  *(&v31[12] + 1) = *(v60 + 7);
  *(&v31[12] + 1) = v60[0];
  memset(&v31[13], 0, 64);
  LOBYTE(v31[17]) = v11;
  *(&v31[17] + 1) = v59[0];
  *(&v31[17] + 1) = *(v59 + 7);
  memset(&v31[18], 0, 64);
  LOBYTE(v31[22]) = v11;
  *(&v31[22] + 1) = v58[0];
  DWORD1(v31[22]) = *(v58 + 3);
  *(&v31[22] + 8) = 0u;
  *(&v31[23] + 8) = 0u;
  BYTE8(v31[24]) = 1;
  *(&v31[24] + 9) = v57[0];
  HIDWORD(v31[24]) = *(v57 + 3);
  memset(&v31[25], 0, 32);
  LOBYTE(v31[27]) = 1;
  *(&v31[27] + 1) = v55;
  BYTE3(v31[27]) = v56;
  DWORD1(v31[27]) = 0;
  BYTE8(v31[27]) = 1;
  *(&v31[27] + 9) = v53;
  BYTE11(v31[27]) = v54;
  HIDWORD(v31[27]) = 0;
  LOBYTE(v31[28]) = 1;
  *(&v31[28] + 1) = v51;
  BYTE3(v31[28]) = v52;
  DWORD1(v31[28]) = 0;
  BYTE8(v31[28]) = 1;
  *(&v31[28] + 9) = *v50;
  HIDWORD(v31[28]) = *&v50[3];
  v31[29] = 0u;
  LOBYTE(v31[30]) = 1;
  *(&v31[30] + 1) = *v49;
  DWORD1(v31[30]) = *&v49[3];
  *(&v31[30] + 8) = 0u;
  v31[32] = 0u;
  v32 = 1;
  v33 = 2;
  sub_10000F974(&qword_1004AD6D0, &qword_1003E0E58);
  swift_allocObject();
  v1[27] = PublishedValue.init(wrappedValue:)();
  LOBYTE(v31[0]) = 0;
  sub_10000F974(&qword_1004AD6D8, &qword_1003E0E60);
  swift_allocObject();
  v1[28] = PublishedValue.init(wrappedValue:)();
  sub_10004E464(v31);
  sub_10000F974(&qword_1004AD6E0, &qword_1003E0E68);
  swift_allocObject();
  v1[29] = PublishedValue.init(wrappedValue:)();
  *v7 = _swiftEmptyArrayStorage;
  v22 = *(v3 + 28);
  v23 = type metadata accessor for MeasurementHistoryItem(0);
  v24 = *(*(v23 - 8) + 56);
  v24(&v7[v22], 1, 1, v23);
  v24(&v7[*(v3 + 32)], 1, 1, v23);
  sub_10018F668(v7, v29, type metadata accessor for MeasurementsHistory);
  sub_10000F974(&qword_1004AD6E8, &qword_1003E0E70);
  swift_allocObject();
  v25 = PublishedValue.init(wrappedValue:)();
  sub_10018F6D0(v7, type metadata accessor for MeasurementsHistory);
  v1[30] = v25;
  *&v31[0] = 0;
  sub_10000F974(&qword_1004AD6F0, &qword_1003E0E78);
  swift_allocObject();
  v1[31] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = 0;
  WORD4(v31[0]) = 0;
  sub_10000F974(&qword_1004AD6F8, &qword_1003E0E80);
  swift_allocObject();
  v1[32] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = &_swiftEmptySetSingleton;
  sub_10000F974(&qword_1004AD700, &qword_1003E0E88);
  swift_allocObject();
  v1[33] = PublishedValue.init(wrappedValue:)();
  LOWORD(v31[0]) = 0;
  BYTE2(v31[0]) = 0;
  sub_10000F974(&qword_1004AD708, &qword_1003E0E90);
  swift_allocObject();
  v1[34] = PublishedValue.init(wrappedValue:)();
  *&v31[0] = &_swiftEmptySetSingleton;
  sub_10000F974(&qword_1004AD710, &qword_1003E0E98);
  swift_allocObject();
  v1[35] = PublishedValue.init(wrappedValue:)();
  swift_unknownObjectWeakInit();
  sub_10018F730(v31, v30);
  sub_10000F974(&qword_1004AD718, &unk_1003E0EA0);
  swift_allocObject();
  v26 = PublishedValue.init(wrappedValue:)();
  sub_10018F78C(v31);
  v1[36] = v26;
  return v1;
}

void *sub_10018F484()
{

  return v0;
}

uint64_t sub_10018F5B4()
{
  sub_10018F484();

  return swift_deallocClassInstance();
}

double sub_10018F60C()
{
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10018F668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018F6D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10018F830(uint64_t a1)
{
  v3 = qword_1004AD720;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10018F8E8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1004AD728;
  swift_beginAccess();
  return sub_100027DE4(v1 + v3, a1);
}

double sub_10018F940(uint64_t a1)
{
  v3 = qword_1004AD728;
  swift_beginAccess();
  sub_100027D74(a1, v1 + v3);
  swift_endAccess();
  return result;
}

id sub_10018FA5C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_isaMask;
  *(v8 + qword_1004AD720) = _swiftEmptyArrayStorage;
  v15 = v8 + qword_1004AD728;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v16 = type metadata accessor for StateObservingView(0, *((v14 & v13) + 0x50), *((v14 & v13) + 0x58), a8);
  v19.receiver = v8;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  swift_getWitnessTable();
  StateObserving.setup()();

  return v17;
}

void sub_10018FB90()
{
  *(v0 + qword_1004AD720) = _swiftEmptyArrayStorage;
  v1 = v0 + qword_1004AD728;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10018FC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StateObservingView(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10018FCE0(uint64_t a1)
{

  v2 = a1 + qword_1004AD728;

  return sub_100027EDC(v2);
}

uint64_t (*sub_10018FD4C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10018F9A0(v2);
  return sub_100027BEC;
}

double sub_10018FDBC()
{
  sub_10018FE8C();

  return result;
}

uint64_t (*sub_10018FDE8(uint64_t *a1))()
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
  *(v2 + 32) = sub_10018F888(v2);
  return sub_100027F78;
}

uint64_t sub_10018FE8C()
{
  v1 = qword_1004AD720;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10018FED0()
{
  *(v0 + qword_1004AD720) = _swiftEmptyArrayStorage;
  v1 = v0 + qword_1004AD728;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_10018FF58(double a1, double a2, double a3, double a4)
{
  v20.receiver = v4;
  v20.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v10 = String._bridgeToObjectiveC()();
  [v9 setTitle:v10 forState:0];

  v11 = String._bridgeToObjectiveC()();
  [v9 setTitle:v11 forState:1];

  v12 = [v9 titleLabel];
  if (!v12)
  {
    goto LABEL_4;
  }

  if (qword_1004A06F0 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    [v12 setFont:qword_1004D5280];

LABEL_4:
    if (qword_1004A06F8 != -1)
    {
      swift_once();
    }

    [v9 setTitleColor:qword_1004D5288 forState:0];
    [v9 addTarget:v9 action:"stopRecording" forControlEvents:64];
    v13 = v9;
    [v13 sizeToFit];
    [v13 bounds];
    v22 = CGRectInset(v21, -20.0, -20.0);
    [v13 setBounds:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
    v14 = objc_opt_self();
    v9 = swift_allocObject();
    v9[2] = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100190B78;
    *(v15 + 24) = v9;
    v19[4] = sub_100031688;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_1000DC708;
    v19[3] = &unk_1004715D8;
    v16 = _Block_copy(v19);
    v12 = v13;

    [v14 performWithoutAnimation:v16];
    _Block_release(v16);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  v17 = [objc_opt_self() defaultCenter];
  [v17 addObserver:v12 selector:"updateForCurrentOrientation" name:UIDeviceOrientationDidChangeNotification object:0];

  return v12;
}

void sub_1001902EC(void *a1)
{
  v2 = [a1 superview];
  if (v2)
  {
    v9 = v2;
    [v2 bounds];
    Width = CGRectGetWidth(v11);
    [a1 bounds];
    v4 = Width - CGRectGetWidth(v12);
    if (qword_1004A0700 != -1)
    {
      swift_once();
    }

    v5 = v4 - qword_1004D5290;
    [v9 bounds];
    Height = CGRectGetHeight(v13);
    [a1 bounds];
    v7 = Height - CGRectGetHeight(v14);
    if (qword_1004A0708 != -1)
    {
      swift_once();
    }

    v8 = v7 - qword_1004D5298;
    [a1 frame];
    [a1 setFrame:{v5, v8}];
  }
}

void sub_100190458()
{
  v1 = [v0 superview];
  if (v1)
  {
    v8 = v1;
    [v1 bounds];
    Width = CGRectGetWidth(v10);
    [v0 bounds];
    v3 = Width - CGRectGetWidth(v11);
    if (qword_1004A0700 != -1)
    {
      swift_once();
    }

    v4 = v3 - qword_1004D5290;
    [v8 bounds];
    Height = CGRectGetHeight(v12);
    [v0 bounds];
    v6 = Height - CGRectGetHeight(v13);
    if (qword_1004A0708 != -1)
    {
      swift_once();
    }

    v7 = v6 - qword_1004D5298;
    [v0 frame];
    [v0 setFrame:{v4, v7}];
  }
}

void sub_10019068C()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1 forState:2];

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D4AD0;
  if (qword_1004D4AD0)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v2;

    sub_1001815F0(sub_100190B18, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100190780(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v10 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100190B20;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100471560;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1001909F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = String._bridgeToObjectiveC()();
    [v2 setTitle:v3 forState:2];
  }
}

uint64_t sub_100190AE0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

double sub_100190B28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100190B40()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100190BE8(uint64_t a1)
{
  v3 = qword_1004AD840;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100190CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1004AD848;
  swift_beginAccess();
  return sub_100027DE4(v1 + v3, a1);
}

double sub_100190CF8(uint64_t a1)
{
  v3 = qword_1004AD848;
  swift_beginAccess();
  sub_100027D74(a1, v1 + v3);
  swift_endAccess();
  return result;
}

id sub_100190DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = swift_isaMask;
  *(v4 + qword_1004AD840) = _swiftEmptyArrayStorage;
  v8 = v4 + qword_1004AD848;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = type metadata accessor for StateObservingViewController(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), a4);
  v14.receiver = v4;
  v14.super_class = v9;
  v10 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    swift_getWitnessTable();
    StateObserving.setup()();
  }

  return v11;
}

void sub_100190EDC()
{
  *(v0 + qword_1004AD840) = _swiftEmptyArrayStorage;
  v1 = v0 + qword_1004AD848;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100190FE4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1001912EC();
}

id sub_100191054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StateObservingViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1001910C4(uint64_t a1)
{

  v2 = a1 + qword_1004AD848;

  return sub_100027EDC(v2);
}

uint64_t sub_100191128@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t (*sub_100191168(uint64_t *a1))()
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
  *(v2 + 32) = sub_100190D58(v2);
  return sub_100027BEC;
}

double sub_1001911D8()
{
  sub_1001912A8();

  return result;
}

uint64_t (*sub_100191204(uint64_t *a1))()
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
  *(v2 + 32) = sub_100190C40(v2);
  return sub_100027F78;
}

uint64_t sub_1001912A8()
{
  v1 = qword_1004AD840;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_100191320()
{
  result = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{2000.0, 2000.0}];
  qword_1004AD938 = result;
  return result;
}

id sub_100191364()
{
  result = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{400.0, 250.0}];
  qword_1004AD940 = result;
  return result;
}

uint64_t sub_1001913AC()
{
  if (qword_1004A04E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1004AD938;
  v4[4] = sub_10019131C;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1001C5E40;
  v4[3] = &unk_1004716B8;
  v1 = _Block_copy(v4);

  v2 = [v0 imageWithActions:v1];
  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    qword_1004AD948 = v2;
  }

  return result;
}

void sub_1001914CC(void *a1)
{
  v20[0] = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v20[3] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v20[2] = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100191AE0(0, 0);
  v21 = sub_100191AE0(2, 0);
  v8 = 1;
  v20[1] = v7;
  while (1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
    if (qword_1004A0420 != -1)
    {
      swift_once();
    }

    if ((v8 * qword_1004D4FD8) >> 64 != (v8 * qword_1004D4FD8) >> 63)
    {
      break;
    }

    v23 = v8 * qword_1004D4FD8;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = 200 * ((((103 * (10 * ((v8 - 1) / 0xAu))) >> 15) & 1) + ((103 * (10 * ((v8 - 1) / 0xAu))) >> 10));
    v12 = (v11 + 97);
    v13 = (200 * ((v8 - 1) % 0xAu));
    v14 = (v11 + 173);
    v15 = String._bridgeToObjectiveC()();
    sub_100193DDC(v22);
    type metadata accessor for Key(0);
    sub_100191FDC(&qword_1004A72A0, type metadata accessor for Key, &unk_1003D5004);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 drawWithRect:0 options:isa attributes:0 context:{v13, v12, 200.0, 100.0}];

    v17 = String._bridgeToObjectiveC()();

    sub_100193DDC(v21);
    v18 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 drawWithRect:0 options:v18 attributes:0 context:{v13, v14, 200.0, 100.0}];

    if (++v8 == 101)
    {

      v19 = [objc_opt_self() redColor];
      [v19 setStroke];

      [v20[0] strokeRect:{0.0, 0.0, 1.0, 1.0}];
      return;
    }
  }

  __break(1u);
}

void sub_100191910()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100191AE0(0, 1);
  sub_100193DDC(v1);

  type metadata accessor for Key(0);
  sub_100191FDC(&qword_1004A72A0, type metadata accessor for Key, &unk_1003D5004);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 drawWithRect:0 options:isa attributes:0 context:{0.0, 110.0, 400.0, 125.0}];

  v5 = String._bridgeToObjectiveC()();
  v3 = sub_100191AE0(2, 1);
  sub_100193DDC(v3);

  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 drawWithRect:0 options:v4 attributes:0 context:{0.0, 235.0, 400.0, 125.0}];
}

unint64_t sub_100191AE0(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v4 setAlignment:a1];
  sub_10000F974(&qword_1004AD950, &qword_1003E0FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5720;
  *(inited + 32) = NSFontAttributeName;
  v6 = qword_1004A0448;
  v7 = NSFontAttributeName;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1004D4FF8;
  *(inited + 40) = qword_1004D4FF8;
  *(inited + 48) = NSParagraphStyleAttributeName;
  *(inited + 56) = v4;
  *(inited + 64) = NSForegroundColorAttributeName;
  v9 = qword_1004A0450;
  v10 = v8;
  v11 = NSParagraphStyleAttributeName;
  v12 = v4;
  v13 = NSForegroundColorAttributeName;
  if (v9 != -1)
  {
    swift_once();
  }

  v14 = qword_1004D5000;
  *(inited + 72) = qword_1004D5000;
  v15 = v14;
  v16 = sub_10019B1F0(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AD958, &qword_1003E0FC8);
  swift_arrayDestroy();
  if (a2)
  {
    sub_100191CE0();
    v17 = NSBaselineOffsetAttributeName;
    isa = NSNumber.init(floatLiteral:)(12.5).super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BCB60(isa, v17, isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  return v16;
}

unint64_t sub_100191CE0()
{
  result = qword_1004AE140;
  if (!qword_1004AE140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AE140);
  }

  return result;
}

id sub_100191D2C(void *a1)
{
  if (qword_1004A04F0 != -1)
  {
    swift_once();
  }

  v2 = [qword_1004AD948 CGImage];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = v2;
  v4 = CGImageGetColorSpace(v2);
  v5 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
LABEL_14:
      v6 = v4;
      goto LABEL_15;
    }

    type metadata accessor for CGColorSpace(0);
    sub_100191FDC(&qword_1004AD960, type metadata accessor for CGColorSpace, &unk_1003D4ECC);
    v7 = static _CFObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_9:
    v8 = [a1 device];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:v8];
    v14 = 0;
    v10 = [v9 newTextureWithCGImage:v3 options:0 error:&v14];
    v4 = v14;
    if (v10)
    {
      v11 = v10;
      v12 = v14;

      swift_unknownObjectRelease();
      return v11;
    }

    v3 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_15:

LABEL_16:
LABEL_17:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100191FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100192024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

BOOL AppDependencyType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100465610, v2);

  return v3 != 0;
}

unint64_t sub_1001920A4()
{
  result = qword_1004AD968;
  if (!qword_1004AD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AD968);
  }

  return result;
}

Swift::Int sub_1001920F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10019216C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001921C0(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100465648, *a1);

  *a2 = v3 != 0;
}

uint64_t getEnumTagSinglePayload for AppDependencyType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppDependencyType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_10019231C(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = 3.14159265;
      break;
    case 4:
      v1 = -*CGFloat.piDiv2.unsafeMutableAddressor();
      break;
    case 3:
      v1 = *CGFloat.piDiv2.unsafeMutableAddressor();
      break;
    default:
      v1 = 0.0;
      break;
  }

  CGAffineTransformMakeRotation(&v9, v1);
  *&m.a = *&v9.m11;
  *&m.c = *&v9.m13;
  *&m.tx = *&v9.m21;
  CATransform3DMakeAffineTransform(&v9, &m);
  v2 = sub_1001924AC();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 2) = v6;
  v7[3] = v2;
  *(v7 + 4) = v4;
  *&v9.m21 = sub_1001935C0;
  *&v9.m22 = v7;
  *&v9.m11 = _NSConcreteStackBlock;
  *&v9.m12 = 1107296256;
  *&v9.m13 = sub_100041180;
  *&v9.m14 = &unk_1004717E8;
  v8 = _Block_copy(&v9);

  [v5 animateWithDuration:0 delay:v8 options:0 animations:0.25 completion:0.25];
  _Block_release(v8);
}

double sub_1001924AC()
{
  v1 = *&v0[qword_1004A4F38];
  v2 = 0.0;
  if (v1)
  {
    v3 = *&v1[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = v1;
      v6 = v3;
      v7 = [v4 sharedApplication];
      v8 = [v7 userInterfaceLayoutDirection];

      if (v8 == 1)
      {
        [v0 frame];
        v10 = v9;
        [v6 frame];
        v11 = v10 - CGRectGetWidth(v13);
        if (qword_1004A0520 != -1)
        {
          swift_once();
        }

        v2 = v11 - *&qword_1004D5090;
      }

      else
      {
        if (qword_1004A0520 != -1)
        {
          swift_once();
        }

        v2 = *&qword_1004D5090;
      }

      [v0 frame];
      CGRectGetHeight(v14);
      if (qword_1004A0510 != -1)
      {
        swift_once();
      }

      [v6 frame];
      CGRectGetHeight(v15);
    }
  }

  return v2;
}

void sub_100192698(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[qword_1004A4F38];
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
      if (v7)
      {
        v8 = Strong;
        v9 = v7;
        [v9 frame];
        [v9 setFrame:{a2, a3}];

        Strong = v8;
      }
    }
  }
}

void sub_100192754()
{
  v3[0] = xmmword_1003E10D0;
  v3[1] = xmmword_1003E10E0;
  v4 = 0x4000000000000000;
  v1 = [objc_opt_self() shutterButtonWithSpec:v3];
  v2 = *(v0 + qword_1004A4F58);
  *(v0 + qword_1004A4F58) = v1;
}

uint64_t sub_1001927C4()
{
  v1 = sub_1001924AC();
  v3 = v2;
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  v4 = *&qword_1004D50A8;
  v5 = objc_allocWithZone(type metadata accessor for UndoButtonSolarium());
  v6 = sub_1001B2FB4(v1, v3, v4, v4);
  v7 = *(v0 + qword_1004A4F38);
  *(v0 + qword_1004A4F38) = v6;

  return _objc_release_x1(v6, v7);
}

void sub_100192880()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(type metadata accessor for HistoryButtonSolarium());
  v3 = v0;
  v4 = sub_10008A4A4(sub_100193548, v1, 0.0, 0.0, 0.0, 0.0);

  v5 = *&v3[qword_1004A4F48];
  *&v3[qword_1004A4F48] = v4;
}

void sub_100192938(uint64_t a1)
{

  StateValue.wrappedValue.getter();

  v1 = *(v2 + 16);

  if (!v1)
  {
    sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
    sub_1000EA7DC();
    Subject<>.send()();
  }
}

void sub_1001929C8()
{
  v1 = *(**(v0 + qword_1004AD970) + 144);

  v1(&v9, v2);

  v3 = *(v0 + qword_1004A4F48);
  if (v3)
  {
    v4 = v9;
    v5 = *&v3[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone];
    v6 = v3;
    if (v5)
    {
      [v5 setEnabled:v4 > 0];
    }

    v7 = *&v3[OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPad];
    if (v7)
    {
      v8 = v7;
      [v8 setEnabled:v4 > 0];
    }
  }
}

double sub_100192AD0()
{
  v1 = qword_1004AD970;
  v2 = *(**(v0 + qword_1004AD970) + 144);

  v2(&v14, v3);

  if (v15 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(**(Strong + 80) + 200);
      v7 = Strong;

      v9 = v6(v8);

      v10 = *(*v9 + 280);
      swift_unknownObjectRetain();
      v10(sub_1000889E4, v7);
    }

    v11 = *(**(v0 + v1) + 400);

    v12 = v11(&v14);
    *(v13 + 8) = 0;
    v12(&v14, 0);
  }

  return result;
}

double sub_100192C8C()
{
  v9 = v0;

  StateValue.ifUpdated(_:)();

  v8 = v0;

  StateValue.ifUpdated(_:)();

  v7 = v0;

  StateValue.ifUpdated(_:)();

  v1 = *(**(v0 + qword_1004AD970) + 200);

  v3 = v1(v2);

  v6 = v0;
  (*(*v3 + 296))(sub_1001934C4, v5);

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  return result;
}

id sub_100192E8C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = qword_1004AD970;
  sub_10000F974(&qword_1004A8DE8, &qword_1003E1110);
  swift_getKeyPath();
  type metadata accessor for EditViewSpatial(0);
  *&v4[v11] = MutableStateBinding.__allocating_init(_:_:)();
  v12 = qword_1004AD978;
  v13 = sub_10000F974(&qword_1004A2C80, &qword_1003E1140);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1004D5058;
  v16 = *(v13 + 272);
  swift_retain_n();
  *&v5[v12] = v16(KeyPath, v15);
  v17 = qword_1004AD980;
  v18 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v19 = swift_getKeyPath();
  *&v5[v17] = (*(v18 + 272))(v19, v15);
  v20 = qword_1004AD988;
  v21 = sub_10000F974(&qword_1004A8DF0, &qword_1003E11A0);
  v22 = swift_getKeyPath();
  *&v5[v20] = (*(v21 + 272))(v22, v15);
  v23 = qword_1004AD990;
  sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
  swift_allocObject();
  *&v5[v23] = PassthroughSubject.init()();
  v25.receiver = v5;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1001930E0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = qword_1004AD970;
  sub_10000F974(&qword_1004A8DE8, &qword_1003E1110);
  swift_getKeyPath();
  type metadata accessor for EditViewSpatial(0);
  *&v1[v5] = MutableStateBinding.__allocating_init(_:_:)();
  v6 = qword_1004AD978;
  v7 = sub_10000F974(&qword_1004A2C80, &qword_1003E1140);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1004D5058;
  v10 = *(v7 + 272);
  swift_retain_n();
  *&v2[v6] = v10(KeyPath, v9);
  v11 = qword_1004AD980;
  v12 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v13 = swift_getKeyPath();
  *&v2[v11] = (*(v12 + 272))(v13, v9);
  v14 = qword_1004AD988;
  v15 = sub_10000F974(&qword_1004A8DF0, &qword_1003E11A0);
  v16 = swift_getKeyPath();
  *&v2[v14] = (*(v15 + 272))(v16, v9);
  v17 = qword_1004AD990;
  sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
  swift_allocObject();
  *&v2[v17] = PassthroughSubject.init()();
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, "initWithCoder:", a1);

  if (v18)
  {
  }

  return v18;
}

double sub_100193334()
{

  return result;
}

double sub_1001933A4(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for EditViewCompactSpatial(uint64_t a1)
{
  result = qword_1004AD9C0;
  if (!qword_1004AD9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100193510()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100193550(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100193588()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1001935CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1001935F8()
{
  sub_10000F974(&qword_1004ABAE8, &unk_1003DF420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = NSFontAttributeName;
  v1 = objc_opt_self();
  v2 = NSFontAttributeName;
  [v1 systemFontSize];
  *(inited + 40) = [v1 systemFontOfSize:? weight:?];
  v3 = sub_10019B204(inited, &qword_1004AE090, &qword_1003E12C0);
  swift_setDeallocating();
  sub_100018F04(inited + 32, &unk_1004ABAF0, &unk_1003E12B0);
  sub_100193DF0(v3, &qword_1004A7290, UIFont_ptr);

  v4 = objc_allocWithZone(NSAttributedString);
  v5 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10019C21C(&qword_1004A72A0, type metadata accessor for Key, &unk_1003D5004);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithString:v5 attributes:isa];

  return v7;
}

void sub_1001937D8(void *a1)
{
  v3 = [a1 navigationItem];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"closePlatter"];
  [v3 setRightBarButtonItem:v4];

  v5 = [a1 navigationItem];
  v6 = *(v1 + qword_1004ADDB8);
  if (v6)
  {
    v7 = v5;
    [v5 setTitleView:*(*(*(v6 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_title)];
  }

  else
  {
    __break(1u);
  }
}

double sub_1001938F0(char a1)
{
  v3 = qword_1004ADE30;
  v4 = *(**(v1 + qword_1004ADE30) + 144);

  v4(v17, v5);

  v6 = *(v1 + qword_1004ADDB0);
  v7 = *(v1 + qword_1004ADDB0 + 8);
  v8 = sub_10009F2F8(v6, v7, v17[0]);

  if ((v8 & 1) == 0)
  {
    v9 = *(**(v1 + v3) + 400);

    v10 = v9(v17);
    sub_100199990(&v18, v6, v7);

    v10(v17, 0);
  }

  if (a1)
  {
    Strong = 0;
  }

  else
  {
    v12 = *(**(v1 + qword_1004ADE38) + 144);

    v12(v17, v13);

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10018F78C(v17);
  }

  v14 = *(**(v1 + qword_1004ADE38) + 400);

  v15 = v14(v17);
  swift_unknownObjectWeakAssign();

  v15(v17, 0);

  return result;
}

void sub_100193B14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000F974(&qword_1004AE098, &qword_1003E12C8);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;

    sub_10000F974(&qword_1004AE0A0, &qword_1003E12D0);
    swift_dynamicCast();
    sub_1000C0FAC((v24 + 8), v22);
    sub_1000C0FAC(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v6[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v6[v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~v6[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v8) = v12;
    sub_1000C0FAC(v24, (v1[7] + 32 * v8));
    ++v1[2];
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100193DF0(uint64_t a1, unint64_t *a2, void *a3)
{
  if (*(a1 + 16))
  {
    sub_10000F974(&unk_1004A72B0, &qword_1003DAD38);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v3 + 8;

  v9 = 0;
  while (v6)
  {
LABEL_15:
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
    v13 = *(*(a1 + 48) + v12);
    v29 = *(*(a1 + 56) + v12);
    v14 = v29;
    sub_100018630(0, a2, a3);
    v15 = v13;
    v16 = v14;
    swift_dynamicCast();
    sub_1000C0FAC((v30 + 8), v28);
    sub_1000C0FAC(v28, v30);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v3 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~v8[v19 >> 6]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = v8[v20];
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~v8[v19 >> 6])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v8 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v6 &= v6 - 1;
    *(v3[6] + 8 * v10) = v15;
    sub_1000C0FAC(v30, (v3[7] + 32 * v10));
    ++v3[2];
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1001940A0(char a1)
{
  v2 = qword_1004ADDB8;
  v3 = *&v1[qword_1004ADDB8];
  if (!v3)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = v1;
  [v1 addSubview:*(v3 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView)];
  v6 = *&v1[v2];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(*(*(v6 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_title);
  v8 = &v1[qword_1004ADDC0];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = Strong;
  v11 = *(v8 + 1);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 64);
  v14 = v7;
  v13(ObjectType, v11);

  v15 = String._bridgeToObjectiveC()();

  [v14 setText:v15];

  v16 = *&v4[v2];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [*(*(v16 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_copyButton) addTarget:v4 action:"copyToPasteboard" forControlEvents:64];
  if (a1)
  {
    v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v4 action:"beginEditingTitleWithSender:"];
    v18 = *&v4[v2];
    if (v18)
    {
      v19 = v17;
      [*(*(v18 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) addGestureRecognizer:v17];
      swift_unknownObjectWeakAssign();

      goto LABEL_8;
    }

LABEL_22:
    __break(1u);
    return;
  }

LABEL_8:
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    [v20 setDataSource:v4];
    [v21 setDelegate:v4];
    [v21 setRowHeight:UITableViewAutomaticDimension];
    [v21 setEstimatedRowHeight:88.0];
    [v21 setScrollEnabled:0];
    [v21 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 clearColor];
    [v23 setBackgroundColor:v24];

    type metadata accessor for DetailedPlatterCellTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = String._bridgeToObjectiveC()();
    [v23 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v26];

    if (qword_1004A0070 != -1)
    {
      swift_once();
    }

    v27 = *&qword_1004D49B0;
    [v4 bounds];
    v28 = [objc_allocWithZone(UIView) initWithFrame:{v27, 0.0, CGRectGetWidth(v31) - (v27 + v27), 0.5}];
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v28 setBackgroundColor:qword_1004D50C8];
    [v23 addSubview:v28];
  }

  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if ((static UIDevice.isIPad()() & 1) == 0)
  {
    v29 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v4 action:"closePlatter"];
    [v29 setDelegate:v4];
    [v4 addGestureRecognizer:v29];
  }
}

uint64_t sub_100194570()
{

  sub_10001B9D0(v0 + qword_1004ADDC0);
  sub_10001B9D0(v0 + qword_1004ADDC8);
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_unknownObjectWeakDestroy();
}

id sub_100194694()
{
  ObjectType = swift_getObjectType();
  sub_1001946DC();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001946DC()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 removeObserver:v1 name:UIKeyboardWillShowNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 removeObserver:v1 name:UIKeyboardWillHideNotification object:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong removeTarget:v1 action:"dismissKeyboard:"];
    [v1 removeGestureRecognizer:v6];
  }

  swift_unknownObjectWeakAssign();
  v7 = *(**&v1[qword_1004ADE18] + 400);

  v8 = v7(v19);
  *v9 = 0;
  v8(v19, 0);

  v10 = qword_1004ADDB8;
  v11 = *&v1[qword_1004ADDB8];
  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v11 + OBJC_IVAR____TtC7Measure23CardContainerController_isDraggingEnabled) = 1;
  v1[qword_1004ADE08] = 0;
  [*(*(*(v11 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView) setDelegate:0];
  v12 = *&v1[v10];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [*(*(v12 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_copyButton) removeTarget:v1 action:"copyToPasteboard" forControlEvents:64];
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = *&v1[v10];
    if (v14)
    {
      v15 = v13;
      [*(*(v14 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) removeGestureRecognizer:v13];

      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_8:
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    [v16 setDelegate:0];
    [v17 setDataSource:0];
  }

  v18 = *&v1[v10];
  *&v1[v10] = 0;
}

id sub_1001949AC(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = a1;
  sub_1001946DC();
  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100194A04(uint64_t a1)
{

  sub_10001B9D0(a1 + qword_1004ADDC0);
  sub_10001B9D0(a1 + qword_1004ADDC8);
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_unknownObjectWeakDestroy();
}

void sub_100194B5C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[qword_1004ADDB8];
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC7Measure23CardContainerController_containerView];
    v3 = v1;
    v4 = [v2 superview];
    [v4 setNeedsLayout];
    [v4 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_100194C08(void *a1)
{
  v1 = a1;
  sub_100194B5C();
}

void sub_100194C50()
{
  v1 = v0;
  v95 = type metadata accessor for MeasurementHistoryItem(0);
  v105 = *(v95 - 8);
  __chkstk_darwin(v95);
  v89 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v93 = &v88 - v4;
  __chkstk_darwin(v5);
  v7 = &v88 - v6;
  v90 = v8;
  __chkstk_darwin(v9);
  v11 = (&v88 - v10);
  v12 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v12 - 8);
  v92 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = &v88 - v15;
  __chkstk_darwin(v16);
  v18 = (&v88 - v17);
  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  [v20 removeObserver:v1 name:UIKeyboardWillShowNotification object:0];

  v21 = [v19 defaultCenter];
  [v21 removeObserver:v1 name:UIKeyboardWillHideNotification object:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong removeTarget:v1 action:"dismissKeyboard:"];
    [v1 removeGestureRecognizer:v23];
  }

  swift_unknownObjectWeakAssign();
  v24 = *(**&v1[qword_1004ADE18] + 400);

  v25 = v24(v107);
  *v26 = 0;
  v25(v107, 0);

  v96 = qword_1004ADDB8;
  v27 = *&v1[qword_1004ADDB8];
  if (!v27)
  {
    goto LABEL_43;
  }

  *(v27 + OBJC_IVAR____TtC7Measure23CardContainerController_isDraggingEnabled) = 1;
  v1[qword_1004ADE08] = 0;
  v28 = *(v27 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView);
  v29 = *&v28[OBJC_IVAR____TtC7Measure17CardContainerView_titleView];
  v30 = *&v29[OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView];
  v99 = v28;
  v31 = v29;
  v100 = v30;
  v32 = [v100 text];
  if (v32)
  {
    v33 = v32;
    if (static String._unconditionallyBridgeFromObjectiveC(_:)())
    {
      v35 = 0;
    }

    else
    {
      v35 = v34 == 0xE000000000000000;
    }

    if (v35)
    {
    }

    else
    {
      v36 = v11;
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        goto LABEL_17;
      }

      v11 = v36;
    }
  }

  v38 = [v100 placeholder];
  if (v38)
  {
    v33 = v38;
    if (!static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == 0xE000000000000000)
    {

      goto LABEL_19;
    }

    v36 = v11;
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
LABEL_18:

      v11 = v36;
      goto LABEL_19;
    }

LABEL_17:
    v41 = *&v31[OBJC_IVAR____TtC7Measure13CardTitleView_title];
    [v41 setText:v33];

    goto LABEL_18;
  }

LABEL_19:
  v98 = v31;
  v91 = v7;
  [v100 setDelegate:0];
  v101 = v1;
  v97 = qword_1004ADE10;

  StateValue.wrappedValue.getter();

  v42 = *v18;

  sub_10009FD64(v18, type metadata accessor for MeasurementsHistory);
  v104 = *(v42 + 16);
  if (!v104)
  {
LABEL_28:

    v52 = v101;
LABEL_38:
    v84 = objc_opt_self();
    v85 = swift_allocObject();
    *(v85 + 16) = v52;
    v107[4] = sub_10019B8BC;
    v107[5] = v85;
    v107[0] = _NSConcreteStackBlock;
    v107[1] = 1107296256;
    v107[2] = sub_100041180;
    v107[3] = &unk_100471860;
    v86 = _Block_copy(v107);
    v87 = v52;

    [v84 animateWithDuration:458754 delay:v86 options:0 animations:0.25 completion:0.0];
    _Block_release(v86);

    return;
  }

  v43 = 0;
  v44 = &v101[qword_1004ADDB0];
  while (1)
  {
    if (v43 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v45 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v46 = v42;
    v47 = *(v105 + 72) * v43;
    v102 = *(v105 + 80);
    v103 = v47;
    sub_100023338(v42 + v45 + v47, v11);
    v48 = *v11;
    v49 = *(v44 + 1);
    if (*v11 == *v44 && v11[1] == v49)
    {
      break;
    }

    v48 = *v44;
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10009FD64(v11, type metadata accessor for MeasurementHistoryItem);
    if (v51)
    {
      goto LABEL_30;
    }

    ++v43;
    v42 = v46;
    if (v104 == v43)
    {
      goto LABEL_28;
    }
  }

  sub_10009FD64(v11, type metadata accessor for MeasurementHistoryItem);
LABEL_30:
  v105 = v48;
  v88 = v49;

  v53 = *&v101[v96];
  if (!v53)
  {
    goto LABEL_44;
  }

  v54 = *(*(*(v53 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_title);

  v55 = [v54 text];
  v56 = v95;
  v57 = v45;
  if (v55)
  {
    v58 = v55;
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v59;

    v60 = v93;
    v61 = v94;
    v62 = v103;
  }

  else
  {

    v61 = v94;
    StateValue.wrappedValue.getter();

    v63 = *v61;

    sub_10009FD64(v61, type metadata accessor for MeasurementsHistory);
    v62 = v103;
    if (v43 >= *(v63 + 16))
    {
      goto LABEL_42;
    }

    v64 = v63 + v45 + v103;
    v65 = v93;
    sub_100023338(v64, v93);

    v66 = *(v65 + 24);
    v104 = *(v65 + 16);
    v96 = v66;

    v60 = v65;
    sub_10009FD64(v65, type metadata accessor for MeasurementHistoryItem);
  }

  StateValue.wrappedValue.getter();

  v67 = *v61;

  sub_10009FD64(v61, type metadata accessor for MeasurementsHistory);
  if (v43 >= *(v67 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v68 = v60;
  sub_100023338(v67 + v57 + v62, v60);

  v69 = *(v56 + 24);
  v70 = v60 + v69;
  v71 = v56;
  v72 = v91;
  sub_10006C92C(v70, v91 + v69, &unk_1004ABAD0, &qword_1003D7070);
  sub_10009FD64(v68, type metadata accessor for MeasurementHistoryItem);

  v73 = v92;
  StateValue.wrappedValue.getter();

  v74 = *v73;

  sub_10009FD64(v73, type metadata accessor for MeasurementsHistory);
  if (v43 < *(v74 + 16))
  {
    v75 = v68;
    v76 = v102;
    v103 = ~v102;
    v77 = v74 + v57 + v62;
    v78 = v89;
    sub_100023338(v77, v89);

    memcpy(v107, (v78 + *(v71 + 28)), 0x346uLL);
    sub_10019B4E8(v107, &v106);
    sub_10009FD64(v78, type metadata accessor for MeasurementHistoryItem);
    v79 = v88;
    *v72 = v105;
    v72[1] = v79;
    v80 = v96;
    v72[2] = v104;
    v72[3] = v80;
    memcpy(v72 + *(v71 + 28), v107, 0x346uLL);
    *(v72 + *(v71 + 32)) = 1;
    v81 = v101;
    sub_100023338(v72, v75);
    v82 = (v76 + 24) & v103;
    v83 = swift_allocObject();
    *(v83 + 16) = v43;
    sub_10008C998(v75, v83 + v82);

    StateValue.mutateImmediatelyNotifyAsync(_:)();

    sub_10009FD64(v72, type metadata accessor for MeasurementHistoryItem);
    v52 = v81;
    goto LABEL_38;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1001956E4(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_10006B7A4(v6);
  v6 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = type metadata accessor for MeasurementHistoryItem(0);
  v11 = *(v8 - 8);
  sub_1000A4EEC(a3, v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a2);
  *a1 = v6;
  v9 = *(type metadata accessor for MeasurementsHistory(0) + 24);
  sub_100018F04(a1 + v9, &qword_1004A28C0, &qword_1003D7080);
  sub_100023338(a3, a1 + v9);
  v10 = *(v11 + 56);

  return v10(a1 + v9, 0, 1, v8);
}

void sub_100195830(void *a1)
{
  v2 = v1;
  if ([a1 state] == 3)
  {
    v3 = qword_1004ADE18;
    v4 = *(**&v1[qword_1004ADE18] + 144);

    v4(aBlock, v5);

    if ((aBlock[0] & 0x10000) == 0)
    {
      v6 = objc_opt_self();
      v7 = [v6 defaultCenter];
      [v7 addObserver:v2 selector:"keyboardWillShowWithNotification:" name:UIKeyboardWillShowNotification object:0];

      v8 = [v6 defaultCenter];
      [v8 addObserver:v2 selector:"keyboardWillHideWithNotification:" name:UIKeyboardWillHideNotification object:0];

      v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"dismissKeyboard:"];
      [v2 addGestureRecognizer:v9];
      swift_unknownObjectWeakAssign();
      v10 = qword_1004ADDB8;
      v11 = *&v2[qword_1004ADDB8];
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView);
        v13 = *&v12[OBJC_IVAR____TtC7Measure17CardContainerView_titleView];
        v14 = *&v13[OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView];
        v26 = v12;
        v15 = v13;
        v16 = v14;
        [v16 setDelegate:v2];
        [v16 setUserInteractionEnabled:1];
        v17 = [*&v15[OBJC_IVAR____TtC7Measure13CardTitleView_title] text];
        [v16 setText:v17];

        [v16 becomeFirstResponder];
        v18 = *(**&v2[v3] + 400);

        v19 = v18(aBlock);
        *v20 = 1;
        v19(aBlock, 0);

        v21 = *&v2[v10];
        if (v21)
        {
          *(v21 + OBJC_IVAR____TtC7Measure23CardContainerController_isDraggingEnabled) = 0;
          v2[qword_1004ADE08] = 1;
          v22 = objc_opt_self();
          v23 = swift_allocObject();
          *(v23 + 16) = v2;
          aBlock[4] = sub_10019C1E4;
          aBlock[5] = v23;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100041180;
          aBlock[3] = &unk_1004719F0;
          v24 = _Block_copy(aBlock);
          v25 = v2;

          [v22 animateWithDuration:458754 delay:v24 options:0 animations:0.25 completion:0.0];
          _Block_release(v24);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

char *sub_100195C08(char *result)
{
  v1 = *&result[qword_1004ADDB8];
  if (v1)
  {
    return [*(*(*(v1 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView) setAlpha:?];
  }

  __break(1u);
  return result;
}

void sub_100195C58(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100195830(v4);
}

void sub_100195CC0(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v6;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v7 = sub_10019863C(v28), (v8 & 1) == 0))
  {

    sub_10017AF68(v28);
    return;
  }

  sub_10000FE60(*(v5 + 56) + 32 * v7, v31);
  sub_10017AF68(v28);
  sub_100018630(0, &qword_1004AE148, NSValue_ptr);
  if ((swift_dynamicCast() & 1) == 0 || (v9 = v29, [v29 CGRectValue], v11 = v10, v9, v12 = sub_10019BCB0(v5), v14 = v13, v2[qword_1004ADDD0] = 0, sub_100018630(0, &qword_1004A1930, UIDevice_ptr), (static UIDevice.isIPad()() & 1) == 0))
  {

    return;
  }

  v15 = *&v2[qword_1004ADDF0];
  if (!v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v15 setConstant:-(v11 + 20.0)];
  v16 = *&v2[qword_1004ADDB8];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;

  v18 = OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint;
  v19 = *&v17[OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint];
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v19 setActive:0];
  v21 = *&v17[v18];
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LODWORD(v20) = 1148846080;
  [v21 setPriority:v20];
  v22 = *&v17[v18];
  if (!v22)
  {
LABEL_24:
    __break(1u);
    return;
  }

  [v22 setActive:1];

  if (v12 <= 0.0)
  {
    v23 = 458754;
  }

  else
  {
    v23 = v14;
  }

  if (v12 <= 0.0)
  {
    v12 = 0.25;
  }

  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  v28[4] = sub_10019C340;
  v28[5] = v25;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  v28[2] = sub_100041180;
  v28[3] = &unk_1004719A0;
  v26 = _Block_copy(v28);
  v27 = v2;

  [v24 animateWithDuration:v23 delay:v26 options:0 animations:v12 completion:0.0];
  _Block_release(v26);
}

void sub_100195FE4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100195CC0(v4);
}

void sub_10019604C(void *a1)
{
  if (v1[qword_1004ADDD0])
  {
    v1[qword_1004ADDD0] = 0;
    return;
  }

  if (v1[qword_1004ADE08] == 1)
  {
    v2 = [a1 userInfo];
    if (v2)
    {
      v3 = v2;
      v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
      if (static UIDevice.isIPad()())
      {
        v5 = qword_1004ADDF0;
        v6 = *&v1[qword_1004ADDF0];
        if (v6)
        {
          v7 = v1;
          [v6 constant];
          v9 = *&v1[v5];
          if (v9)
          {
            v10 = v8;
            [v9 setConstant:-20.0];
            [v1 setNeedsLayout];
            [v1 layoutIfNeeded];
            v11 = *&v1[qword_1004ADDB8];
            if (v11)
            {
              v12 = OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint;
              v13 = *&v11[OBJC_IVAR____TtC7Measure23CardContainerController_cardTopConstraint];
              if (v13)
              {
                v14 = v11;
                [v13 setActive:0];
                v15 = *&v11[v12];
                if (v15)
                {
                  [v15 setActive:1];

                  v16 = *&v7[v5];
                  if (v16)
                  {
                    [v16 setConstant:v10];
                    [v7 setNeedsLayout];
                    [v7 layoutIfNeeded];
                    v17 = *&v7[v5];
                    if (v17)
                    {
                      [v17 setConstant:-20.0];
                      v18 = sub_10019BCB0(v4);
                      v20 = v19;

                      if (v18 <= 0.0)
                      {
                        v20 = 458754;
                        v18 = 0.25;
                      }

                      v21 = objc_opt_self();
                      v22 = swift_allocObject();
                      *(v22 + 16) = v7;
                      v25[4] = sub_10019C178;
                      v25[5] = v22;
                      v25[0] = _NSConcreteStackBlock;
                      v25[1] = 1107296256;
                      v25[2] = sub_100041180;
                      v25[3] = &unk_100471950;
                      v23 = _Block_copy(v25);
                      v24 = v7;

                      [v21 animateWithDuration:v20 delay:v23 options:0 animations:v18 completion:0.0];
                      _Block_release(v23);
                      return;
                    }

LABEL_26:
                    __break(1u);
                    return;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_22;
      }
    }
  }
}

void sub_100196370(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10019604C(v4);
}

char *sub_1001963D8(char *result)
{
  v1 = *&result[qword_1004ADDB8];
  if (v1)
  {
    return [*(*(*(v1 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView) resignFirstResponder];
  }

  __break(1u);
  return result;
}

void sub_100196428(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10019BE74();
}

void *sub_100196488()
{
  v1 = v0;
  v2 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for MeasurementHistoryItem(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v37 - v13;

  StateValue.wrappedValue.getter();

  v15 = *v4;

  sub_10009FD64(v4, type metadata accessor for MeasurementsHistory);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (v1 + qword_1004ADDB0);
    while (v17 < *(v15 + 16))
    {
      sub_100023338(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v11);
      v19 = *v11 == *v18 && v11[1] == v18[1];
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_10008C998(v11, v7);
        v20 = 0;
        goto LABEL_12;
      }

      ++v17;
      sub_10009FD64(v11, type metadata accessor for MeasurementHistoryItem);
      if (v16 == v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
LABEL_21:
    v35 = qword_1004D4F08;

    sub_10009FD64(v14, type metadata accessor for MeasurementHistoryItem);
    v36 = v35 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
    result = swift_beginAccess();
    *(v36 + 56) = *(v36 + 56) + 1.0;
    return result;
  }

LABEL_10:

  v20 = 1;
LABEL_12:
  (*(v9 + 56))(v7, v20, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100018F04(v7, &qword_1004A28C0, &qword_1003D7080);
  }

  sub_10008C998(v7, v14);
  v22 = v1 + qword_1004ADDC0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v24 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    v26 = (*(v24 + 56))(v14, ObjectType, v24);

    if (v26)
    {
      v27 = [objc_opt_self() generalPasteboard];
      v7 = v26;
      sub_1000C9270(v7);
      if (v28)
      {
        v29 = v28;
        sub_10000F974(&unk_1004A3E40, &qword_1003D7FA8);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1003D5360;
        *(v30 + 32) = v29;
        sub_10000F974(&unk_1004ABAC0, &qword_1003D7FB0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v27 setItems:isa];
      }

      v32 = v1 + qword_1004ADDC8;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v33 = *(v32 + 8);
        v34 = swift_getObjectType();
        (*(v33 + 32))(v34, v33);
        swift_unknownObjectRelease();
      }

      if (qword_1004A0350 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    return sub_10009FD64(v14, type metadata accessor for MeasurementHistoryItem);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100196968(void *a1)
{
  v1 = a1;
  sub_100196488();
}

void sub_1001969B0(char *a1)
{
  v2 = &a1[qword_1004ADDC8];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v6 = a1;
    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

void sub_100196A68()
{
  v1 = v0;

  StateValue.wrappedValue.getter();

  if (BYTE3(v12[0]) == 1)
  {
    v2 = *&v0[qword_1004ADDB8];
    if (!v2)
    {
      __break(1u);
      return;
    }

    [*(*(*(v2 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) + OBJC_IVAR____TtC7Measure17CardContainerView_titleView) + OBJC_IVAR____TtC7Measure13CardTitleView_editableTitleView) resignFirstResponder];
  }

  StateValue.wrappedValue.getter();

  if (BYTE3(v12[0]))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [v0 alpha];
  if (v4 != v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v3;
    v6 = objc_allocWithZone(UIViewPropertyAnimator);
    v12[4] = sub_10019B978;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100041180;
    v12[3] = &unk_1004718B0;
    v7 = _Block_copy(v12);
    v8 = v1;

    v9 = [v6 initWithDuration:v7 dampingRatio:0.5 animations:0.6];
    _Block_release(v7);
    [v9 setInterruptible:0];
    [v9 startAnimation];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];

      v9 = v11;
    }
  }
}

void sub_100196CA4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    StateValue.wrappedValue.getter();

    if (v3 == 2 || (, StateValue.wrappedValue.getter(), , v2 == 1))
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

double sub_100196D60()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_100196E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for IndexPath();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for MeasurementHistoryItem(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v20 = v2 + qword_1004ADDC0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    v44 = *(v20 + 8);
    v47 = swift_unknownObjectWeakLoadStrong();
    if (v47)
    {
      v42 = v19;
      v43 = v4;

      StateValue.wrappedValue.getter();

      v22 = *v9;

      sub_10009FD64(v9, type metadata accessor for MeasurementsHistory);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = 0;
        v25 = (v3 + qword_1004ADDB0);
        while (v24 < *(v22 + 16))
        {
          sub_100023338(v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v24, v16);
          v26 = *v16 == *v25 && v16[1] == v25[1];
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_10008C998(v16, v12);
            v27 = 0;
            goto LABEL_17;
          }

          ++v24;
          sub_10009FD64(v16, type metadata accessor for MeasurementHistoryItem);
          if (v23 == v24)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

LABEL_12:

      v27 = 1;
LABEL_17:
      (*(v14 + 56))(v12, v27, 1, v13);
      v29 = (*(v14 + 48))(v12, 1, v13);
      v31 = v42;
      v30 = v43;
      if (v29 == 1)
      {

        sub_100018F04(v12, &qword_1004A28C0, &qword_1003D7080);
        return;
      }

      sub_10008C998(v12, v42);
      ObjectType = swift_getObjectType();
      v33 = v44;
      (*(v44 + 96))(v31, ObjectType, v44);
      v34 = (*(v33 + 16))(ObjectType, v33);
      if (v34 < 0)
      {
        goto LABEL_31;
      }

      v35 = v34;
      if (v34)
      {
        v36 = 0;
        v37 = (v45 + 8);
        while (1)
        {
          IndexPath.init(row:section:)();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v39 = [v47 cellForRowAtIndexPath:isa];

          if (!v39)
          {
            v41 = v46;
            v39 = v47;
            goto LABEL_28;
          }

          type metadata accessor for DetailedPlatterCellTableViewCell();
          v40 = swift_dynamicCastClass();
          if (!v40)
          {
            break;
          }

          ++v36;
          sub_100197364(v40, v6, v31);

          (*v37)(v6, v30);
          if (v35 == v36)
          {
            goto LABEL_25;
          }
        }

        v41 = v47;
LABEL_28:

        (*v37)(v6, v30);
        sub_10009FD64(v31, type metadata accessor for MeasurementHistoryItem);
      }

      else
      {
LABEL_25:
        sub_10009FD64(v31, type metadata accessor for MeasurementHistoryItem);
      }
    }

    else
    {
      v28 = v46;
    }
  }
}

void *sub_100197364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + qword_1004ADDC0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v35, a2, a3, ObjectType, v10);

    v12 = *(a1 + OBJC_IVAR____TtC7Measure32DetailedPlatterCellTableViewCell_measureContent);
    v13 = *(v12 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
    v14 = String._bridgeToObjectiveC()();
    [v13 setText:v14];

    v15 = *(v12 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
    v16 = v35[2];
    v17 = v35[3];
    v18 = String._bridgeToObjectiveC()();
    [v15 setText:v18];

    v19 = *(v12 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
    if (v16 == v35[6] && v17 == v35[7])
    {
      v20 = 1;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v21 = v35[5];
    v22 = v35[13];
    v23 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
    v24 = *&v19[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
    v25 = v19;
    [v24 setHidden:v20 & 1];
    if ((v20 & 1) == 0)
    {
      v26 = *(*&v19[v23] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v27 = String._bridgeToObjectiveC()();
      [v26 setText:v27];

      v28 = *&v19[v23];
      if (v21)
      {
        v29 = String._bridgeToObjectiveC()();
      }

      else
      {
        v29 = 0;
      }

      [v28 setAccessibilityLabel:v29];
    }

    v30 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
    v31 = *(*&v25[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
    v32 = String._bridgeToObjectiveC()();
    [v31 setText:v32];

    v33 = *&v25[v30];
    if (v22)
    {
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v34 = 0;
    }

    [v33 setAccessibilityLabel:v34];

    return sub_100080320(v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10019762C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v14.receiver = v4;
  v14.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v14, "hitTest:withEvent:", a1, a2, a3);
  if (result)
  {
    v9 = result;
    v10 = *(**&v4[qword_1004ADE18] + 144);

    v10(v13, v11);

    if (v13[0])
    {
      return v9;
    }

    sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
    if (static UIDevice.isIPhone()())
    {
      return v9;
    }

    else
    {
      result = v9;
      if (v9 == v4)
      {
        goto LABEL_9;
      }

      v12 = *&v4[qword_1004ADDB8];
      if (!v12)
      {
        __break(1u);
        return result;
      }

      if (v9 == *(v12 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView))
      {
LABEL_9:

        return 0;
      }
    }
  }

  return result;
}

char *sub_100197768(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = sub_10019762C(a5, a2, a3);

  return v11;
}

uint64_t type metadata accessor for SpatialGenericPlatter(uint64_t a1)
{
  result = qword_1004ADE80;
  if (!qword_1004ADE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100197908(void *a1, id a2)
{
  v5 = [a2 view];
  v6 = [a1 view];
  if (!v5)
  {
    if (!v6)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
    v6 = v5;
LABEL_8:

    goto LABEL_9;
  }

  v7 = v6;

  if (v5 == v7)
  {
    return 1;
  }

LABEL_9:
  result = [a2 view];
  v9 = *(v2 + qword_1004ADDB8);
  if (v9)
  {
    if (result)
    {
      v10 = *(v9 + OBJC_IVAR____TtC7Measure23CardContainerController_containerView);
      v11 = result;

      return v11 == v10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100197AEC(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v5 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for MeasurementHistoryItem(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = &v2[qword_1004ADDC0];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = *(v18 + 1);
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);

    if (IndexPath.row.getter() < v23)
    {
      v47 = v17;
      v48 = a2;

      StateValue.wrappedValue.getter();

      v24 = *v7;

      sub_10009FD64(v7, type metadata accessor for MeasurementsHistory);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = 0;
        v27 = &v3[qword_1004ADDB0];
        while (v26 < *(v24 + 16))
        {
          sub_100023338(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + v12[9] * v26, v14);
          v28 = *v14 == *v27 && v14[1] == *(v27 + 1);
          if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_10008C998(v14, v10);
            v29 = 0;
            goto LABEL_14;
          }

          ++v26;
          sub_10009FD64(v14, type metadata accessor for MeasurementHistoryItem);
          if (v25 == v26)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

LABEL_12:

      v29 = 1;
LABEL_14:
      (v12[7])(v10, v29, 1, v11);
      v30 = (v12[6])(v10, 1, v11);
      v31 = v48;
      if (v30 != 1)
      {
        v32 = v47;
        sub_10008C998(v10, v47);
        v33 = String._bridgeToObjectiveC()();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v12 = [v49 dequeueReusableCellWithIdentifier:v33 forIndexPath:isa];

        type metadata accessor for DetailedPlatterCellTableViewCell();
        v10 = swift_dynamicCastClassUnconditional();
        sub_100197364(v10, v31, v32);
        if (IndexPath.row.getter() == v23 - 1)
        {
          v35 = v12;
          [v3 bounds];
          [v10 setSeparatorInset:{0.0, CGRectGetWidth(v53), 0.0, 0.0}];
LABEL_21:

          v38 = objc_opt_self();
          v39 = v12;
          v40 = [v38 clearColor];
          [v10 setBackgroundColor:v40];

          v41 = v39;
          [v10 setSelectionStyle:0];
          swift_getObjectType();
          v42 = v41;
          v51 = _typeName(_:qualified:)();
          v52 = v43;
          v44._countAndFlagsBits = 45;
          v44._object = 0xE100000000000000;
          String.append(_:)(v44);
          v50 = IndexPath.row.getter();
          v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v45);

          v46 = String._bridgeToObjectiveC()();

          [v10 setAccessibilityIdentifier:v46];

          sub_10009FD64(v47, type metadata accessor for MeasurementHistoryItem);
          return v10;
        }

        v36 = qword_1004A0068;
        v37 = v12;
        if (v36 == -1)
        {
LABEL_20:
          [v10 setSeparatorInset:{xmmword_1004D4990, *&qword_1004D49A0, *&qword_1004D49A8}];
          goto LABEL_21;
        }

LABEL_23:
        swift_once();
        goto LABEL_20;
      }

      sub_100018F04(v10, &qword_1004A28C0, &qword_1003D7080);
    }

    return [objc_allocWithZone(UITableViewCell) init];
  }

  __break(1u);
  return result;
}

unint64_t sub_100198230(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100198964(a1, a2, v4);
}

unint64_t sub_1001982AC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1001992CC(a1, v2);
}

unint64_t sub_100198340(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return sub_100198FF4(v1, v2);
}

unint64_t sub_1001983A8(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  v2 = v1 - 3;
  if ((v1 - 3) >= 7u)
  {
    Hasher._combine(_:)(7uLL);
    v2 = v1;
  }

  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return sub_100198A1C(v1, v3);
}

unint64_t sub_100198434(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100198B34(a1 & 1, v2);
}

unint64_t sub_1001984D8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100198C78(a1, v4);
}

unint64_t sub_10019851C(double a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100198D4C(v2, a1);
}

unint64_t sub_100198568(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10019C21C(&qword_1004A7420, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100199064(a1, v2, &type metadata accessor for UUID, &unk_1004AE160, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10019863C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100198DB4(a1, v4);
}

unint64_t sub_100198680(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10019C21C(&unk_1004AE188, type metadata accessor for CFString, &unk_1003D4C98);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100198E7C(a1, v2);
}

unint64_t sub_100198770(uint64_t a1)
{
  type metadata accessor for URL();
  sub_10019C21C(&unk_1004A73B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100199064(a1, v2, &type metadata accessor for URL, &unk_1004AE108, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100198844(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 184))(v4);
  v2 = Hasher._finalize()();

  return sub_100199204(a1, v2);
}

unint64_t sub_1001988D0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for AnyKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  v4 = Hasher._finalize()();
  return sub_1001993D0(a1, a2, v4);
}

unint64_t sub_100198964(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100198A1C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      v8 = *(v7 + result);
      if (v8 <= 5)
      {
        switch(v8)
        {
          case 3u:
            if (a1 == 3)
            {
              return result;
            }

            goto LABEL_4;
          case 4u:
            if (a1 == 4)
            {
              return result;
            }

            goto LABEL_4;
          case 5u:
            if (a1 == 5)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      else if (*(v7 + result) > 7u)
      {
        if (v8 == 8)
        {
          if (a1 == 8)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v8 == 9)
        {
          if (a1 == 9)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v8 == 6)
        {
          if (a1 == 6)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v8 == 7)
        {
          if (a1 == 7)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      if (a1 - 10 <= 0xFFFFFFF8 && v8 == a1)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100198B34(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6C6576656CLL;
    }

    else
    {
      v6 = 0x6572757361656DLL;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6C6576656CLL : 0x6572757361656DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100198C78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100018630(0, &qword_1004ABAB0, NSString_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

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

unint64_t sub_100198D4C(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100198DB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10019C188(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10017AF68(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100198E7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10019C21C(&unk_1004AE188, type metadata accessor for CFString, &unk_1003D4C98);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

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

unint64_t sub_100198F88(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100198FF4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100199064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_10019C21C(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100199204(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for WorldPlane();
    do
    {

      v6 = static WorldPlane.== infix(_:_:)();

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1001992CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1001993D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = ~v5;
    type metadata accessor for AnyKeyPath();
    do
    {
      v9 = *(*(v7 + 48) + 16 * v6 + 8);

      v10 = v9;
      if (static AnyKeyPath.== infix(_:_:)())
      {
        sub_100018630(0, &qword_1004AE0D0, NSObject_ptr);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          return v6;
        }
      }

      else
      {
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_1001994F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000F974(&unk_1004A6910, &unk_1003DA2F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_100199730(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000F974(&unk_1004A6910, &unk_1003DA2F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t sub_100199990(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100199AE0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_100199AE0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100199730(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10009F52C();
      goto LABEL_16;
    }

    sub_1001994F8(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t sub_100199C60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE1B8, &unk_1003E14D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1001982AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100199D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&unk_1004AE0B0, &unk_1003E12E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1001982AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100199E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE0A8, &qword_1003E12D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1001982AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100199F58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE0C8, &qword_1003E12F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1001982AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10019A06C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AE1C0, &qword_1003D5E30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000F974(&qword_1004AE1C8, &qword_1003E14E0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10006C92C(v9, v5, &qword_1004AE1C0, &qword_1003D5E30);
      v11 = *v5;
      result = sub_100198434(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_10019A254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE0D8, &unk_1003E1308);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10006C92C(v4, &v13, &qword_1004AE0E0, &qword_1003D5F80);
      v5 = v13;
      v6 = v14;
      result = sub_100198230(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001D95C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10019A39C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE1B0, &qword_1003DAF98);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 8)
    {
      v21 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];

      v13 = v12;
      result = sub_100198230(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = (v3[7] + 48 * result);
      *v17 = v7;
      v17[1] = v8;
      v17[2] = v9;
      v17[3] = v10;
      v17[4] = v11;
      v17[5] = v13;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      v1 = v21 - 1;
      if (v21 == 1)
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

void *sub_10019A4F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000F974(&qword_1004AE198, &qword_1003E14B0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100198340(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100198340(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019A62C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE178, &qword_1003E1498);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10006C92C(v4, &v11, &qword_1004AE180, &unk_1003E14A0);
      v5 = v11;
      result = sub_100198680(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000C0FAC(&v12, (v3[7] + 32 * result));
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

void *sub_10019A778(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000F974(&qword_1004A73A0, &qword_1003E1350);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_100198734(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100198734(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019A8A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004A7398, &unk_1003DAF10);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_100198734(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10019A990(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000F974(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = a1[5];
  result = sub_100198734(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v7;
    return v5;
  }

  v10 = (a1 + 7);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 8 * result) = v7;
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v5[2] = v13;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v6 = *(v10 - 1);
    v15 = *v10;
    v16 = v7;
    result = sub_100198734(v6);
    v10 = v14;
    v7 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019AA84(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A6F48, &unk_1003DA830);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000F974(&qword_1004AE170, &qword_1003E1490);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10006C92C(v9, v5, &qword_1004A6F48, &unk_1003DA830);
      result = sub_100198568(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_10019AC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE100, &unk_1003DF410);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10006C92C(v4, &v13, &qword_1004A7560, &unk_1003DF400);
      v5 = v13;
      v6 = v14;
      result = sub_100198230(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000C0FAC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10019ADC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004A7430, &qword_1003DAFC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100198340(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10019AEC4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_10000F974(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      sub_10006C92C(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1001982AC(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_1000C0FAC(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

void *sub_10019AFDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000F974(&unk_1004AE150, &unk_1003E1480);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_100198340(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100198340(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10019B0F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F974(&qword_1004AE118, &unk_1003E1340);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1001982AC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10019B204(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000F974(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;
      result = sub_1001982AC(v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v9;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
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

id sub_10019B2F4(uint64_t *a1)
{
  v2 = *(type metadata accessor for MeasurementHistoryItem(0) + 28);
  memcpy(__dst, a1 + v2, 0x346uLL);
  memcpy(v22, a1 + v2, 0x346uLL);
  v3 = sub_1000218D8(v22);
  v4 = sub_1000218E4(v22);
  if (v3)
  {
    if (v3 == 1)
    {
      memcpy(v19, v4, 0x1DEuLL);
      v5 = *a1;
      v6 = a1[1];
      v8 = a1[2];
      v7 = a1[3];
      objc_allocWithZone(type metadata accessor for RectanglePlatterSpatial());
      sub_10019B4E8(__dst, v20);

      v9 = sub_10001FE2C(v5, v6, v19, v8, v7);
    }

    else
    {
      memcpy(v20, v4, 0x346uLL);
      v14 = *a1;
      v15 = a1[1];
      v17 = a1[2];
      v16 = a1[3];
      objc_allocWithZone(type metadata accessor for ObjectPlatterSpatial());
      sub_10019B4E8(__dst, v19);

      v9 = sub_1001A26EC(v14, v15, v20, v17, v16);
    }
  }

  else
  {
    memcpy(v19, v4, 0x10DuLL);
    v10 = *a1;
    v11 = a1[1];
    v13 = a1[2];
    v12 = a1[3];
    objc_allocWithZone(type metadata accessor for LinePlatterSpatial());
    sub_10019B4E8(__dst, v20);

    v9 = sub_10007DD68(v10, v11, v19, v13, v12);
  }

  objc_allocWithZone(type metadata accessor for CardContainerView());
  return sub_100172FE8(v9, 0);
}

uint64_t sub_10019B544()
{
  v1 = type metadata accessor for MeasurementHistoryItem(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + *(v1 + 24);
  v7 = type metadata accessor for MeasurementCapture(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = v0;
    v9 = v4;
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v11(v6, v10);
    v12 = v10;
    v4 = v9;
    v0 = v8;
    v3 = (v2 + 24) & ~v2;
    v11(v6 + *(v7 + 20), v12);
  }

  v13 = v5 + *(v1 + 28);
  v29 = *(v13 + 464);
  v30 = *(v13 + 480);
  v27 = *(v13 + 432);
  v28 = *(v13 + 448);
  v25 = *(v13 + 400);
  v26 = *(v13 + 416);
  v23 = *(v13 + 368);
  v24 = *(v13 + 384);
  v21 = *(v13 + 336);
  v22 = *(v13 + 352);
  v19 = *(v13 + 304);
  v20 = *(v13 + 320);
  v17 = *(v13 + 272);
  v18 = *(v13 + 288);
  v15 = *(v13 + 240);
  v16 = *(v13 + 256);
  sub_100159AC8(*(v13 + 64), *v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 72), *(v13 + 80), *(v13 + 88), *(v13 + 96), *(v13 + 104), *(v13 + 112), *(v13 + 120), *(v13 + 128), *(v13 + 136), *(v13 + 144), *(v13 + 152), *(v13 + 160), *(v13 + 168), *(v13 + 176), *(v13 + 184), *(v13 + 192), *(v13 + 200), *(v13 + 208), *(v13 + 216), *(v13 + 224), *(v13 + 232), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10019B848(unint64_t *a1)
{
  v3 = *(type metadata accessor for MeasurementHistoryItem(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1001956E4(a1, v4, v5);
}

double sub_10019B8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10019B940()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10019B98C()
{
  v1 = v0;
  swift_getObjectType();
  *(v0 + qword_1004ADDB8) = 0;
  *(v0 + qword_1004ADDC0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004ADDC8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004ADDD0) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004ADDF0) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + qword_1004ADE08) = 0;
  v2 = qword_1004ADE10;
  v3 = sub_10000F974(&unk_1004A6940, &qword_1003DF430);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D5058;
  v6 = *(v3 + 272);
  swift_retain_n();
  *(v1 + v2) = v6(KeyPath, v5);
  v7 = qword_1004ADE18;
  sub_10000F974(&unk_1004ABB10, &qword_1003DF460);
  swift_getKeyPath();
  *(v1 + v7) = MutableStateValue.__allocating_init(_:_:)();
  v8 = qword_1004ADE20;
  v9 = sub_10000F974(&unk_1004A6950, &qword_1003DAF60);
  v10 = swift_getKeyPath();
  *(v1 + v8) = (*(v9 + 272))(v10, v5);
  v11 = qword_1004ADE28;
  v12 = sub_10000F974(&qword_1004A3F50, &qword_1003D8110);
  v13 = swift_getKeyPath();
  *(v1 + v11) = (*(v12 + 272))(v13, v5);
  v14 = qword_1004ADE30;
  sub_10000F974(&unk_1004A6960, &qword_1003DF4F0);
  swift_getKeyPath();
  *(v1 + v14) = MutableStateValue.__allocating_init(_:_:)();
  v15 = qword_1004ADE38;
  sub_10000F974(&qword_1004ABB20, &qword_1003DF520);
  swift_getKeyPath();
  *(v1 + v15) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + qword_1004ADE40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1004ADE50) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10019BCB0(uint64_t a1)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v2 = sub_10019863C(v11), (v3 & 1) == 0))
  {
    sub_10017AF68(v11);
    goto LABEL_6;
  }

  sub_10000FE60(*(a1 + 56) + 32 * v2, v12);
  sub_10017AF68(v11);
  sub_100018630(0, &qword_1004AE140, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v5 = 0.0;
    goto LABEL_7;
  }

  [v9 doubleValue];
  v5 = v4;

LABEL_7:
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v6 = sub_10019863C(v11), (v7 & 1) != 0))
  {
    sub_10000FE60(*(a1 + 56) + 32 * v6, v12);
    sub_10017AF68(v11);
    sub_100018630(0, &qword_1004AE140, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      [v10 unsignedIntegerValue];
    }
  }

  else
  {
    sub_10017AF68(v11);
  }

  return v5;
}

uint64_t sub_10019BE74()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_10019C170;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100471900;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10019C21C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10019C138()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10019C21C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10019C264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10019C2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10019C360()
{
  v1 = v0;
  v0[9] = 0;
  swift_unknownObjectWeakInit();
  v2 = sub_10000F974(&qword_1004A2C60, &qword_1003E1620);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  v1[10] = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A11E0, &qword_1003E1650);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  v1[11] = v8(v7, v4);
  v9 = swift_getKeyPath();
  v10 = *(sub_10000F974(&unk_1004A72E0, &qword_1003DCDF0) + 272);

  v1[12] = v10(v9, v4);
  v11 = sub_10000F974(&unk_1004AFC00, &qword_1003DCE40);
  v12 = swift_getKeyPath();
  v1[13] = (*(v11 + 272))(v12, v4);
  v13 = sub_10000F974(&qword_1004AE3C8, &qword_1003E16D0);
  v14 = swift_getKeyPath();
  v1[14] = (*(v13 + 272))(v14, v4);
  return StateObserver.init(configuration:)();
}

uint64_t sub_10019C5B4(void *a1)
{
  v2 = v1;
  v1[9] = 0;
  swift_unknownObjectWeakInit();
  v4 = sub_10000F974(&qword_1004A2C60, &qword_1003E1620);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);
  swift_retain_n();
  v2[10] = v7(KeyPath, v6);
  v8 = sub_10000F974(&qword_1004A11E0, &qword_1003E1650);
  v9 = swift_getKeyPath();
  v10 = *(v8 + 272);

  v2[11] = v10(v9, v6);
  v11 = swift_getKeyPath();
  v12 = *(sub_10000F974(&unk_1004A72E0, &qword_1003DCDF0) + 272);

  v2[12] = v12(v11, v6);
  v13 = sub_10000F974(&unk_1004AFC00, &qword_1003DCE40);
  v14 = swift_getKeyPath();
  v2[13] = (*(v13 + 272))(v14, v6);
  v15 = sub_10000F974(&qword_1004AE3C8, &qword_1003E16D0);
  v16 = swift_getKeyPath();
  v2[14] = (*(v15 + 272))(v16, v6);
  sub_1000336B4(a1, v19);
  v17 = StateObserver.init(configuration:)();
  sub_10000FF00(a1);
  return v17;
}

void *sub_10019C7E0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdate];

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_10019C838()
{
  sub_10001B9D0(v0 + 64);

  return result;
}

uint64_t sub_10019C888(uint64_t a1)
{
  StateObserver.deinit();

  sub_10001B9D0(v1 + 64);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessibilityStateObserverBridge(uint64_t a1)
{
  result = qword_1004AE1F8;
  if (!qword_1004AE1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10019C9AC()
{
  result = [objc_allocWithZone(type metadata accessor for AccessibilityStateObserver()) init];
  qword_1004D5060 = result;
  return result;
}

uint64_t sub_10019CB80()
{

  StateValue.wrappedValue.getter();

  v0 = v5;

  if (!v6)
  {
    return 0;
  }

  v1 = (*((swift_isaMask & *v6) + 0x2F0))();

  return v1;
}

uint64_t sub_10019CC60()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure26AccessibilityStateObserver_implementation);

  StateValue.wrappedValue.getter();

  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v29[2] = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v29[0] = v18;
  v29[1] = v19;
  if (qword_1004A03F8 != -1)
  {
    swift_once();
  }

  if (byte_1004D4FC8 != 1 || BYTE1(v29[0]) != 1 || !v30 || (v35 & 1) != 0)
  {
    sub_1000D1340(v29);
    return 0;
  }

  v3 = *((swift_isaMask & *v30) + 0x250);
  v4 = v30;
  result = v3();
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);
LABEL_11:
    v6 = v5;

    (*((swift_isaMask & *v6) + 0x2B0))(v7);

    simd_float4x4.position.getter();
    v17 = v8;
    simd_float4x4.position.getter();
    v10 = vsubq_f32(v17, v9);
    v11 = vmulq_f32(v10, v10);
    v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
    v13 = *(**(v1 + 96) + 144);

    v13(v14);

    v15 = sub_1000983B8();
    sub_10010DE20(v15, 0, 0, &v18, v12);

    sub_1000D1340(v29);
    v16 = v19;
    v28 = v18;
    sub_1000C1108(&v28);
    return v16;
  }

  __break(1u);
  return result;
}

id sub_10019CF3C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10019CFBC()
{

  StateValue.wrappedValue.getter();

  v22[6] = v18;
  v22[7] = v19;
  v22[8] = v20;
  v23 = v21;
  v22[2] = v14;
  v22[3] = v15;
  v22[4] = v16;
  v22[5] = v17;
  v22[0] = v12;
  v22[1] = v13;
  sub_1000D1340(v22);
  if (BYTE1(v22[0]) != 1)
  {
    return 0;
  }

  StateValue.wrappedValue.getter();

  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v12 = v2;
  v13 = v3;
  v0 = *(&v2 + 1);

  sub_1000D1340(&v12);
  return v0;
}

uint64_t sub_10019D2D4()
{

  StateValue.wrappedValue.getter();

  sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
  sub_10000F974(&qword_1004A28B0, &qword_1003D7068);
  swift_dynamicCast();
  sub_10019D4CC();
  v0 = RangeReplaceableCollection<>.idToObjectMap.getter();

  return v0;
}

id sub_10019D464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilityStateObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10019D4CC()
{
  result = qword_1004AE3C0;
  if (!qword_1004AE3C0)
  {
    sub_100013BB0(&qword_1004A28B0, &qword_1003D7068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE3C0);
  }

  return result;
}

double sub_10019D544()
{
  result = -4294967300.0;
  qword_1004D5070 = 0xC1F0000000000000;
  return result;
}

double sub_10019D558()
{
  result = -16777216.0;
  qword_1004D5078 = 0xC170000000000000;
  return result;
}

double sub_10019D56C()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()())
  {
    v0 = 52.0;
  }

  else
  {
    if (static UIDevice.isIPhone()())
    {
      [objc_opt_self() jasperAvailable];
    }

    v0 = 64.0;
  }

  result = v0;
  qword_1004D5080 = *&v0;
  return result;
}

void sub_10019D5E4()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()())
  {
    v0 = [objc_opt_self() jasperAvailable];
    v1 = 72.0;
    if (v0)
    {
      v1 = 78.0;
    }
  }

  else if (static UIDevice.isIPhone()())
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 _peripheryInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    if (v4 == UIEdgeInsetsZero.top && v6 == UIEdgeInsetsZero.left && v8 == UIEdgeInsetsZero.bottom)
    {
      v1 = 78.0;
      if (v10 == UIEdgeInsetsZero.right)
      {
        v1 = 72.0;
      }
    }

    else
    {
      v1 = 78.0;
    }
  }

  else
  {
    v1 = 72.0;
  }

  qword_1004D5088 = *&v1;
}

void sub_10019D71C()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  v0 = static UIDevice.isIPad()();
  v1 = 16.0;
  if ((v0 & 1) == 0)
  {
    v2 = static UIDevice.isIPhone()();
    v1 = 6.0;
    if (v2)
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 _peripheryInsets];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v1 = 27.0;
      if (v5 == UIEdgeInsetsZero.top && v7 == UIEdgeInsetsZero.left && v9 == UIEdgeInsetsZero.bottom)
      {
        v1 = 27.0;
        if (v11 == UIEdgeInsetsZero.right)
        {
          v1 = 6.0;
        }
      }
    }
  }

  qword_1004D5090 = *&v1;
}

void sub_10019D800()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  v0 = static UIDevice.isIPad()();
  v1 = 16.0;
  if ((v0 & 1) == 0)
  {
    v2 = static UIDevice.isIPhone()();
    v1 = 6.0;
    if (v2)
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 _peripheryInsets];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      if (v5 == UIEdgeInsetsZero.top && v7 == UIEdgeInsetsZero.left && v9 == UIEdgeInsetsZero.bottom)
      {
        v1 = 44.0;
        if (v11 == UIEdgeInsetsZero.right)
        {
          v1 = 6.0;
        }
      }

      else
      {
        v1 = 44.0;
      }
    }
  }

  qword_1004D5098 = *&v1;
}

id sub_10019D8F0()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  qword_1004D50A0 = result;
  return result;
}

uint64_t sub_10019D92C()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  if ((result & 1) != 0 || (result = static UIDevice.isIPhone()(), (result & 1) == 0))
  {
    v1 = 44.0;
  }

  else
  {
    result = [objc_opt_self() jasperAvailable];
    v1 = 44.0;
    if (result)
    {
      v1 = 52.0;
    }
  }

  qword_1004D50A8 = *&v1;
  return result;
}

float sub_10019D9B8()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()())
  {
    v0 = 345.0;
  }

  else
  {
    static UIDevice.isIPhone()();
    v0 = 475.0;
  }

  result = v0;
  dword_1004D50B0 = LODWORD(v0);
  return result;
}

id sub_10019DA58()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.6];
  qword_1004D50D0 = result;
  return result;
}

void sub_10019DA9C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x8000000100403AB0;
  v1._countAndFlagsBits = 0xD000000000000012;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1004D50D8 = v3;
}

void sub_10019DBC0()
{
  if (qword_1004A0590 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5108;
  v1 = [v0 colorWithAlphaComponent:0.7];

  qword_1004D5110 = v1;
}

double sub_10019DC78()
{
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D4970;
  v2 = static UIContentSizeCategory.> infix(_:_:)();

  if (v2)
  {

    v1 = UIContentSizeCategoryAccessibilityLarge;
  }

  v3 = objc_opt_self();
  v4 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v1];

  v5 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v4];
  [v5 pointSize];
  v7 = v6;

  result = fmax(v7 * 0.4, 8.0);
  qword_1004D5120 = *&result;
  return result;
}

double sub_10019DDE4()
{
  if (qword_1004A05A8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5120 * 0.25;
  *&qword_1004D5128 = *&qword_1004D5120 * 0.25;
  return result;
}

double sub_10019DE44()
{
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D4970;
  v2 = static UIContentSizeCategory.> infix(_:_:)();

  if (v2)
  {

    v1 = UIContentSizeCategoryAccessibilityLarge;
  }

  v3 = objc_opt_self();
  v4 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v1];

  v5 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v4];
  [v5 pointSize];
  v7 = v6;

  result = fmax(v7 * 0.9 * 1.4, 20.0);
  qword_1004D5130 = *&result;
  return result;
}

double sub_10019DFC0()
{
  if (qword_1004A05B8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5130 * 0.8;
  *&qword_1004D5138 = *&qword_1004D5130 * 0.8;
  return result;
}

double sub_10019E020()
{
  if (qword_1004A0510 != -1)
  {
    swift_once();
  }

  v0 = *&qword_1004D5080;
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  result = v0 + *&qword_1004D5088 * 0.5;
  *&qword_1004D5140 = result;
  return result;
}

void sub_10019E0C0()
{
  if (qword_1004A07F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5370;
  v1 = *algn_1004D5378;
  if (byte_1004D5380)
  {
    v2 = byte_1004D5390;
    v3 = qword_1004D5388;
    v4 = byte_1004AF8C0;
    v5 = qword_1004D5370;
    v6 = sub_10007836C(v4, v3, v2);
    sub_10009F954(v0, v1, 1);
  }

  else
  {
    if (byte_1004AF8C0)
    {
      v7 = *algn_1004D5378;
    }

    else
    {
      v7 = qword_1004D5370;
    }

    v6 = v7;
  }

  qword_1004D5148 = v6;
}

UIColor sub_10019E2D8()
{
  sub_100018630(0, &qword_1004A2930, UIColor_ptr);
  result.super.isa = UIColor.init(argb:)(0x157D7D7Du).super.isa;
  qword_1004D51B0 = result.super.isa;
  return result;
}

void sub_10019E474()
{
  v0 = objc_opt_self();
  v1 = [v0 systemFontOfSize:20.0 weight:UIFontWeightHeavy];
  v2 = [v1 fontDescriptor];
  v3 = sub_1001C9308();
  v4 = [v0 fontWithDescriptor:v3 size:0.0];

  qword_1004D5218 = v4;
}

double sub_10019E528()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()())
  {
    v0 = 1.4;
  }

  else
  {
    static UIDevice.isIPhone()();
    v0 = 0.95;
  }

  result = v0;
  qword_1004D5220 = *&v0;
  return result;
}

double sub_10019E58C()
{
  if (qword_1004A06A8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5220;
  qword_1004D5228 = qword_1004D5220;
  return result;
}

double sub_10019E5E4()
{
  if (qword_1004A06A8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5220 * 1.55;
  *&qword_1004D5230 = *&qword_1004D5220 * 1.55;
  return result;
}

double sub_10019E644()
{
  if (qword_1004A06B8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5230 * 0.92;
  *&qword_1004D5238 = *&qword_1004D5230 * 0.92;
  return result;
}

uint64_t sub_10019E6A4()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  if (result)
  {
    v1 = xmmword_1003E1720;
  }

  else
  {
    result = static UIDevice.isIPhone()();
    v1 = xmmword_1003E1730;
  }

  xmmword_1004D5240 = v1;
  return result;
}

uint64_t sub_10019E704()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  v1 = -18.0;
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v1 = -12.0;
  }

  qword_1004D5250 = 0;
  qword_1004D5258 = *&v1;
  return result;
}

double sub_10019E760()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()())
  {
    v0 = 267.0;
  }

  else
  {
    static UIDevice.isIPhone()();
    v0 = 149.0;
  }

  result = v0;
  qword_1004D5260 = *&v0;
  qword_1004D5268 = 0;
  return result;
}

double sub_10019E7CC()
{
  if (qword_1004A06D8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5260 + 35.0;
  *&qword_1004D5270 = *&qword_1004D5260 + 35.0;
  return result;
}

uint64_t sub_10019E834()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  v1 = 5.0;
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v1 = 4.0;
  }

  qword_1004D5278 = *&v1;
  return result;
}

id sub_10019E888()
{
  result = [objc_opt_self() systemFontOfSize:26.0 weight:UIFontWeightMedium];
  qword_1004D5280 = result;
  return result;
}

uint64_t sub_10019E8E8()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  if ((result & 1) != 0 || (result = static UIDevice.isIPhone()(), (result & 1) == 0))
  {
    v1 = 20;
  }

  else
  {
    result = [objc_opt_self() jasperAvailable];
    v1 = 20;
    if (result)
    {
      v1 = 18;
    }
  }

  qword_1004D5290 = v1;
  return result;
}

uint64_t sub_10019E968()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  v1 = 0;
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v1 = -15;
    if (result)
    {
      result = [objc_opt_self() jasperAvailable];
      if (result)
      {
        v1 = 70;
      }
    }
  }

  qword_1004D5298 = v1;
  return result;
}

id sub_10019E9E4()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  qword_1004D52A0 = result;
  return result;
}

id sub_10019EA20()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  qword_1004D52A8 = result;
  return result;
}

void sub_10019EA5C()
{
  v0 = [objc_opt_self() systemBackgroundColor];
  v1 = sub_10007836C(0, 1, 1);

  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()() & 1) != 0 || (static UIDevice.isIPhone()())
  {
    v2 = [objc_opt_self() jasperAvailable];
    v3 = 0.4;
    if (v2)
    {
      v3 = 1.0;
    }
  }

  else
  {
    v3 = 0.4;
  }

  v4 = [v1 colorWithAlphaComponent:v3];

  qword_1004D52B0 = v4;
}

id sub_10019EB44()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  qword_1004D52B8 = result;
  return result;
}

void sub_10019EB94(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = sub_10007836C(0, 1, 1);

  *a3 = v5;
}

id sub_10019EC28(uint64_t a1, void *a2, void **a3, void **a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a4;
    v9 = a3;
    swift_once();
    a3 = v9;
    a4 = v8;
  }

  v6 = *a3;
  *a4 = *a3;

  return v6;
}

uint64_t sub_10019EC88()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()())
  {
    v0 = 1066192077;
  }

  else
  {
    result = static UIDevice.isIPhone()();
    if ((result & 1) == 0)
    {
      v3 = 0.55;
      goto LABEL_9;
    }

    v0 = 1060320051;
  }

  v2 = *&v0;
  result = [objc_opt_self() jasperAvailable];
  v3 = 0.55;
  if (result)
  {
    v3 = v2;
  }

LABEL_9:
  dword_1004D52D0 = LODWORD(v3);
  return result;
}

uint64_t sub_10019ED34()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()() & 1) != 0 || (result = static UIDevice.isIPhone()(), (result))
  {
    result = [objc_opt_self() jasperAvailable];
    v1 = 125.0;
    if (result)
    {
      v1 = 130.0;
    }
  }

  else
  {
    v1 = 125.0;
  }

  dword_1004D52D4 = LODWORD(v1);
  return result;
}

float sub_10019EDC0()
{
  if (qword_1004A0748 != -1)
  {
    swift_once();
  }

  v0 = *&dword_1004D52D4;
  if (qword_1004A0740 != -1)
  {
    swift_once();
  }

  result = v0 * *&dword_1004D52D0;
  *&dword_1004D52D8 = v0 * *&dword_1004D52D0;
  return result;
}

float sub_10019EE58()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()() & 1) != 0 || (v0 = 4.0, (static UIDevice.isIPhone()()))
  {
    if ([objc_opt_self() jasperAvailable])
    {
      v0 = 6.0;
    }

    else
    {
      v0 = 4.0;
    }
  }

  if (qword_1004A0740 != -1)
  {
    swift_once();
  }

  result = v0 * *&dword_1004D52D0;
  *&dword_1004D52DC = v0 * *&dword_1004D52D0;
  return result;
}

float sub_10019EF18(float a1)
{
  v1 = a1 < 1.0;
  v2 = 1.0 / a1;
  result = (2.5 - (a1 + a1)) + ((a1 * a1) * 0.5);
  if (!v1)
  {
    return v2;
  }

  return result;
}

id sub_10019EF54()
{
  result = [objc_opt_self() jasperAvailable];
  v1 = sub_10019EF48;
  if (result)
  {
    v1 = sub_10019EF18;
  }

  qword_1004D52E0 = v1;
  *algn_1004D52E8 = 0;
  return result;
}

float sub_10019EFB8()
{
  if (qword_1004A0750 != -1)
  {
    swift_once();
  }

  v0 = *&dword_1004D52D8;
  if (qword_1004A0758 != -1)
  {
    swift_once();
  }

  result = (v0 * 0.5) - (*&dword_1004D52DC * 0.5);
  *&dword_1004D52F0 = result;
  return result;
}

uint64_t sub_10019F05C()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()() & 1) != 0 || (result = static UIDevice.isIPhone()(), v1 = 7.5, (result))
  {
    result = [objc_opt_self() jasperAvailable];
    v1 = 7.5;
    if (result)
    {
      v1 = 13.0;
    }
  }

  qword_1004D52F8 = *&v1;
  return result;
}

uint64_t sub_10019F0D8()
{
  if (qword_1004A0740 != -1)
  {
    swift_once();
  }

  v0 = *&dword_1004D52D0;
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.isIPad()() & 1) != 0 || (result = static UIDevice.isIPhone()(), v2 = 2.0, (result))
  {
    v3 = v0 * 3.0;
    result = [objc_opt_self() jasperAvailable];
    v2 = 2.0;
    if (result)
    {
      v2 = v3;
    }
  }

  dword_1004D5300 = LODWORD(v2);
  return result;
}

void sub_10019F198()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent:0.7];

  qword_1004D5308 = v1;
}

void sub_10019F208()
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  v0 = static UIDevice.isIPad()();
  v1 = 0;
  if ((v0 & 1) == 0)
  {
    if (static UIDevice.isIPhone()())
    {
      v2 = [objc_opt_self() mainScreen];
      [v2 _peripheryInsets];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;

      if (v4 == UIEdgeInsetsZero.top && v6 == UIEdgeInsetsZero.left && v8 == UIEdgeInsetsZero.bottom)
      {
        v1 = 83;
        if (v10 == UIEdgeInsetsZero.right)
        {
          v1 = 49;
        }
      }

      else
      {
        v1 = 83;
      }
    }

    else
    {
      v1 = 49;
    }
  }

  qword_1004AE3D0 = v1;
}

float sub_10019F2F4()
{
  if (qword_1004A0788 != -1)
  {
    swift_once();
  }

  result = ARCoachingResetButtonPortraitVerticalOffset + qword_1004AE3D0;
  *&dword_1004D5310 = result;
  return result;
}

float sub_10019F360()
{
  result = ARCoachingResetButtonLandscapeVerticalOffset;
  dword_1004D5314 = ARCoachingResetButtonLandscapeVerticalOffset;
  return result;
}

uint64_t sub_10019F378()
{
  if (qword_1004A0528 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5098;
  if (qword_1004A0520 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D5090;
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v0 = v1;
  }

  qword_1004D5318 = v0;
  return result;
}

uint64_t sub_10019F440()
{
  if (qword_1004A0528 != -1)
  {
    swift_once();
  }

  v0 = *&qword_1004D5098;
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    v0 = v0 + 47.0 + 18.0;
    result = static UIDevice.isIPhone()();
  }

  qword_1004D5320 = *&v0;
  return result;
}

uint64_t sub_10019F4E4()
{
  if (qword_1004A07E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5358;
  if (qword_1004A07D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D5350;
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v0 = v1;
  }

  qword_1004D5328 = v0;
  return result;
}

uint64_t sub_10019F5AC()
{
  if (qword_1004A07D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5350;
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
  }

  qword_1004D5330 = v0;
  return result;
}

double sub_10019F638()
{
  if (qword_1004A07E8 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5360;
  qword_1004D5338 = qword_1004D5360;
  return result;
}

uint64_t sub_10019F690()
{
  if (qword_1004A07F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5368;
  if (qword_1004A07E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D5360;
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  result = static UIDevice.isIPad()();
  if ((result & 1) == 0)
  {
    result = static UIDevice.isIPhone()();
    v0 = v1;
  }

  qword_1004D5340 = v0;
  return result;
}

double sub_10019F758()
{
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  result = *&qword_1004D5088 * 0.5 + 6.0;
  *&qword_1004D5348 = result;
  return result;
}

double sub_10019F7C0()
{
  result = 0.0078125;
  qword_1004D5350 = 0x3F80000000000000;
  return result;
}

double sub_10019F800()
{
  *&result = 1065353216;
  qword_1004D5360 = 1065353216;
  return result;
}

float32x2_t sub_10019F840(uint64_t a1, void *a2, float32x2_t *a3, float32x2_t *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v6 = a4;
    v7 = a3;
    swift_once();
    a3 = v7;
    a4 = v6;
  }

  result = vsub_f32(0, *a3);
  *a4 = result;
  return result;
}

id sub_10019F89C()
{
  result = [objc_opt_self() systemBackgroundColor];
  qword_1004D5370 = result;
  *algn_1004D5378 = 0;
  byte_1004D5380 = 1;
  qword_1004D5388 = 1;
  byte_1004D5390 = 0;
  return result;
}

id sub_10019F8EC()
{
  result = [objc_opt_self() systemBackgroundColor];
  qword_1004D5398 = result;
  qword_1004D53A0 = 0;
  byte_1004D53A8 = 1;
  qword_1004D53B0 = 0;
  byte_1004D53B8 = 1;
  return result;
}

id sub_10019F93C()
{
  result = [objc_opt_self() labelColor];
  qword_1004D53C0 = result;
  *algn_1004D53C8 = 0;
  byte_1004D53D0 = 1;
  qword_1004D53D8 = 0;
  byte_1004D53E0 = 0;
  return result;
}

id sub_10019F98C()
{
  result = [objc_opt_self() secondaryLabelColor];
  qword_1004D53E8 = result;
  qword_1004D53F0 = 0;
  byte_1004D53F8 = 1;
  qword_1004D5400 = 0;
  byte_1004D5408 = 1;
  return result;
}

void sub_10019F9DC()
{
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D4970;
  v2 = static UIContentSizeCategory.> infix(_:_:)();

  if (v2)
  {

    v1 = UIContentSizeCategoryAccessibilityLarge;
  }

  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = [v4 traitCollectionWithPreferredContentSizeCategory:v1];

  v6 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v5];
  v7 = [v6 fontDescriptor];

  v8 = [v7 fontDescriptorWithSymbolicTraits:2];
  if (v8)
  {
    v9 = qword_1004D4970;
    v10 = static UIContentSizeCategory.> infix(_:_:)();

    if (v10)
    {

      v9 = UIContentSizeCategoryAccessibilityLarge;
    }

    v11 = [v4 traitCollectionWithPreferredContentSizeCategory:v9];

    v12 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v11];
    [v12 pointSize];
    v14 = v13;

    v15 = [objc_opt_self() mainScreen];
    [v15 scale];
    v17 = v16;

    v18 = [v3 fontWithDescriptor:v8 size:v14 * v17];
    v19 = [v18 fontDescriptor];
    v20 = sub_1001C9308();
    [v3 fontWithDescriptor:v20 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10019FCB8()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
  v1 = [v0 fontDescriptor];

  v2 = [v1 fontDescriptorWithSymbolicTraits:2];
  if (v2)
  {
    sub_10000F974(&qword_1004AE3D8, &qword_1003E1740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003D5360;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_10000F974(&qword_1004AE3E0, &qword_1003E1748);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1003D5360;
    *(v4 + 32) = UIFontWeightTrait;
    *(v4 + 40) = UIFontWeightMedium;
    v5 = UIFontDescriptorTraitsAttribute;
    v6 = UIFontWeightTrait;
    v7 = sub_100199F58(v4);
    swift_setDeallocating();
    sub_100018F04(v4 + 32, &qword_1004AE3E8, &qword_1003E1750);
    *(inited + 64) = sub_10000F974(&qword_1004AE3F0, &qword_1003E1758);
    *(inited + 40) = v7;
    sub_10019A048(inited);
    swift_setDeallocating();
    sub_100018F04(inited + 32, &qword_1004AE0C0, &qword_1003E12F0);
    type metadata accessor for AttributeName(0);
    sub_10019FEDC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 fontDescriptorByAddingAttributes:isa];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10019FEDC()
{
  result = qword_1004A0CD8;
  if (!qword_1004A0CD8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0CD8);
  }

  return result;
}

id sub_10019FF34()
{
  if (qword_1004A0570 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D50E8;
  if (qword_1004A0050 != -1)
  {
    swift_once();
  }

  v1 = qword_1004D4970;
  v2 = static UIContentSizeCategory.> infix(_:_:)();

  if (v2)
  {

    v1 = UIContentSizeCategoryAccessibilityLarge;
  }

  v3 = objc_opt_self();
  v4 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v1];

  v5 = [v3 preferredFontForTextStyle:v0 compatibleWithTraitCollection:v4];
  v6 = [v5 fontDescriptor];
  sub_10000F974(&qword_1004AE3D8, &qword_1003E1740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000F974(&qword_1004AE3E0, &qword_1003E1748);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1003D5360;
  *(v8 + 32) = UIFontWeightTrait;
  *(v8 + 40) = UIFontWeightThin;
  v9 = UIFontDescriptorTraitsAttribute;
  v10 = UIFontWeightTrait;
  v11 = sub_100199F58(v8);
  swift_setDeallocating();
  sub_100018F04(v8 + 32, &qword_1004AE3E8, &qword_1003E1750);
  *(inited + 64) = sub_10000F974(&qword_1004AE3F0, &qword_1003E1758);
  *(inited + 40) = v11;
  sub_10019A048(inited);
  swift_setDeallocating();
  sub_100018F04(inited + 32, &qword_1004AE0C0, &qword_1003E12F0);
  type metadata accessor for AttributeName(0);
  sub_10019FEDC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v6 fontDescriptorByAddingAttributes:isa];

  [v5 pointSize];
  v15 = v14;
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  v19 = [v3 fontWithDescriptor:v13 size:v15 * v18 + v15 * v18];
  return v19;
}

id sub_1001A0294@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kPersonHeightCoachingEnabled];
  *a2 = result;
  return result;
}

double sub_1001A02DC()
{

  StateValue.ifUpdated(_:)();

  return result;
}

uint64_t sub_1001A0338()
{
  v1 = v0;
  v2 = sub_10000F974(&unk_1004A3D90, &unk_1003DDD80);
  __chkstk_darwin(v2 - 8);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v60 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  swift_beginAccess();
  sub_10006C92C(v1 + 64, v65, &qword_1004A4038, &qword_1003D8300);
  if (!*&v65[24])
  {
    return sub_100018F04(v65, &qword_1004A4038, &qword_1003D8300);
  }

  sub_10001D95C(v65, v66);
  if (*(v1 + 128) == 1)
  {
    v62 = v4;
    v63 = v9;
    v18 = *(**(*sub_10000FEBC(v66, v67) + qword_1004A3838) + 144);

    v18(v64, v19);

    memcpy(v65, v64, sizeof(v65));
    sub_10006BE28(v65);
    v20 = *(**(v1 + 120) + 144);

    v20(v64, v21);

    if (v64[0] == 0x8000000000000020)
    {
      v22 = *(**(v1 + 104) + 400);

      v23 = v22(v64);
      *v24 = 0;
      v23(v64, 0);
    }

    else
    {
      sub_10001B360(v64[0]);
      v61 = v65[456];
      v29 = *sub_10000FEBC(v66, v67);
      v30 = qword_1004A3900;
      swift_beginAccess();
      sub_10006C92C(v29 + v30, v7, &unk_1004A3D90, &unk_1003DDD80);
      v31 = v63;
      v60 = *(v63 + 48);
      if (v60(v7, 1, v8) == 1)
      {
        sub_100018F04(v7, &unk_1004A3D90, &unk_1003DDD80);
        v32 = v61;
      }

      else
      {
        (*(v31 + 32))(v17, v7, v8);
        Date.init()();
        Date.timeIntervalSince(_:)();
        v34 = v33;
        v35 = *(v31 + 8);
        v35(v14, v8);
        v35(v17, v8);
        v32 = v61;
        if (((v34 < 0.5) & v61) != 0)
        {
          v36 = *(**(v1 + 104) + 400);

          v37 = v36(v64);
          *v38 = 4;
          v37(v64, 0);
          goto LABEL_20;
        }
      }

      sub_10000FEBC(v66, v67);
      if (sub_10005D168() & v32)
      {
        goto LABEL_12;
      }

      sub_10000FEBC(v66, v67);
      sub_10005CEB0(0);
      if (v42 & 1) == 0 || (sub_10000FEBC(v66, v67), ((sub_10005D4C0(0.0) | v32 ^ 1)))
      {
        v43 = *sub_10000FEBC(v66, v67);
        v44 = qword_1004A3908;
        swift_beginAccess();
        v45 = v43 + v44;
        v46 = v62;
        sub_10006C92C(v45, v62, &unk_1004A3D90, &unk_1003DDD80);
        if (v60(v46, 1, v8) == 1)
        {
          sub_100018F04(v46, &unk_1004A3D90, &unk_1003DDD80);
        }

        else
        {
          v47 = v63;
          (*(v63 + 32))(v11, v46, v8);
          Date.init()();
          Date.timeIntervalSince(_:)();
          v49 = v48;
          v50 = *(v47 + 8);
          v50(v14, v8);
          v50(v11, v8);
          if (v49 > 0.5)
          {
            v51 = *(**(v1 + 104) + 400);

            v52 = v51(v64);
            *v53 = 3;
            v52(v64, 0);
            goto LABEL_20;
          }
        }

        v54 = *(**(v1 + 104) + 400);

        v55 = v54(v64);
        *v56 = 0;
        v55(v64, 0);
        goto LABEL_20;
      }

      sub_10000FEBC(v66, v67);
      type metadata accessor for PersonHeightInstrument(0);
      if (sub_10006529C(0.0))
      {
LABEL_12:
        v39 = *(**(v1 + 104) + 400);

        v40 = v39(v64);
        *v41 = 1;
        v40(v64, 0);
      }

      else
      {
        sub_10000FEBC(v66, v67);
        if (!sub_100065320(0.0))
        {
          return sub_10000FF00(v66);
        }

        sub_10000FEBC(v66, v67);
        if (sub_1000653A4())
        {
          return sub_10000FF00(v66);
        }

        v57 = *(**(v1 + 104) + 400);

        v58 = v57(v64);
        *v59 = 2;
        v58(v64, 0);
      }
    }
  }

  else
  {
    v26 = *(**(v1 + 104) + 400);

    v27 = v26(v65);
    *v28 = 0;
    v27(v65, 0);
  }

LABEL_20:

  return sub_10000FF00(v66);
}

uint64_t sub_1001A0B74()
{
  v1 = v0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  sub_10000F974(&qword_1004AE548, &qword_1003E1808);
  swift_getKeyPath();
  *(v0 + 104) = MutableStateValue.__allocating_init(_:_:)();
  v2 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 112) = v5(KeyPath, v4);
  v6 = swift_getKeyPath();
  v7 = sub_10000F974(&unk_1004A2520, &unk_1003D73A0);
  *(v1 + 120) = (*(v7 + 272))(v6, v4);
  *(v1 + 128) = 1;
  v8 = StateObserver.init(configuration:)();
  v9 = objc_opt_self();

  v10 = [v9 standardUserDefaults];
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  sub_10004D9B4();
  v11 = static OS_dispatch_queue.main.getter();
  NSUserDefaults.performOnChange<A>(to:on:action:)();

  return v8;
}

double sub_1001A0DE0(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 128) = v2;
    sub_1001A0338();
  }

  return result;
}

void sub_1001A0E48()
{
  sub_10000F974(&qword_1004AE548, &qword_1003E1808);
  swift_getKeyPath();
  MutableStateValue.__allocating_init(_:_:)();
  v0 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5058;
  v3 = *(v0 + 272);
  swift_retain_n();
  v3(KeyPath, v2);
  v4 = swift_getKeyPath();
  v5 = sub_10000F974(&unk_1004A2520, &unk_1003D73A0);
  (*(v5 + 272))(v4, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1001A0FA8()
{
  sub_100018F04(v0 + 64, &qword_1004A4038, &qword_1003D8300);

  return result;
}

uint64_t sub_1001A0FF8(uint64_t a1)
{
  StateObserver.deinit();

  sub_100018F04(v1 + 64, &qword_1004A4038, &qword_1003D8300);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonHeightCoachingController(uint64_t a1)
{
  result = qword_1004AE420;
  if (!qword_1004AE420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001A1134@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kPersonHeightCoachingEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1001A117C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001A11BC(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100464E18, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_1001A122C(void *a1)
{
  v2 = [a1 type];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000748A4();
  v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (*(v3 + 16))
  {

    v4 = static String._fromSubstring(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = _findStringSwitchCase(cases:string:)(&off_100464E18, v7);

    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1001A1374()
{
  result = qword_1004AE550;
  if (!qword_1004AE550)
  {
    sub_100013BB0(&qword_1004AE558, qword_1003E18E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE550);
  }

  return result;
}

unint64_t sub_1001A13DC()
{
  result = qword_1004AE560;
  if (!qword_1004AE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AE560);
  }

  return result;
}

id sub_1001A1430(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v7(v8, v9, v10);

  return v11;
}

id sub_1001A14D0()
{
  v0 = sub_10000F974(&qword_1004A2968, &unk_1003D7100);
  __chkstk_darwin(v0 - 8);
  v2 = v22 - v1;
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = type metadata accessor for UIButton.Configuration.Size();
  v6 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0060 != -1)
  {
    swift_once();
  }

  v13 = *&qword_1004D4980;
  v14 = [objc_opt_self() mainBundle];
  v27._object = 0xE000000000000000;
  v15._object = 0x8000000100404380;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v27);

  v17 = type metadata accessor for ButtonWithCustomBackgroundColor();
  v26.receiver = v22[1];
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 375.0, v13);
  static UIButton.Configuration.glass()();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.Size.large(_:), v22[0]);
  UIButton.Configuration.buttonSize.setter();
  (*(v23 + 104))(v5, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v24);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.title.setter();
  (*(v10 + 16))(v2, v12, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  UIButton.configuration.setter();
  [v18 setTintColor:0];
  (*(v10 + 8))(v12, v9);
  aBlock[4] = sub_1001A192C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A1430;
  aBlock[3] = &unk_100471B78;
  v19 = _Block_copy(aBlock);
  v20 = v18;
  [v20 setPointerStyleProvider:v19];
  _Block_release(v19);

  return v20;
}

uint64_t sub_1001A192C(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A2D60, &unk_1003DEA40);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_10000F974(&qword_1004AC3B8, &qword_1003DFCF8);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  *v11 = [objc_allocWithZone(UITargetedPreview) initWithView:a1];
  v16 = enum case for UIPointerEffect.TintMode.overlay(_:);
  v17 = type metadata accessor for UIPointerEffect.TintMode();
  (*(*(v17 - 8) + 104))(&v11[v13], v16, v17);
  v11[v14] = 0;
  v11[v15] = 0;
  (*(v6 + 104))(v11, enum case for UIPointerEffect.hover(_:), v5);
  sub_100040E00();
  (*(v6 + 16))(v8, v11, v5);
  v18 = type metadata accessor for UIPointerShape();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = UIPointerStyle.init(effect:shape:)();
  (*(v6 + 8))(v11, v5);
  return v19;
}

double sub_1001A1C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1001A1CA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v117 = a1[8];
  v5 = a1[11];
  v120 = a1[10];
  v114 = a1[12];
  v115 = a1[13];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_101;
  }

  v7 = Strong;
  v8 = swift_unknownObjectWeakLoadStrong();

  if (!v8)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v9 = String._bridgeToObjectiveC()();
  [v8 setText:v9];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v11 = v10;
  v12 = swift_unknownObjectWeakLoadStrong();

  if (!v12)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v4)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v12 setAccessibilityLabel:{v13, v114}];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    goto LABEL_104;
  }

  v15 = v14;
  v16 = swift_unknownObjectWeakLoadStrong();

  if (!v16)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if ((v2 != v120 || v3 != v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v22 = swift_unknownObjectWeakLoadStrong();
    if (!v22)
    {
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v23 = v22;
    v24 = [v22 isHidden];

    if (v24)
    {
      v25 = swift_unknownObjectWeakLoadStrong();
      if (!v25)
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      v26 = v25;
      [v25 setHidden:0];
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    if (!v27)
    {
      goto LABEL_131;
    }

    v28 = v27;
    v29 = String._bridgeToObjectiveC()();
    [v28 setText:v29];

    v30 = swift_unknownObjectWeakLoadStrong();
    if (!v30)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v31 = v30;
    if (v115)
    {
      v21 = String._bridgeToObjectiveC()();
    }

    else
    {
      v21 = 0;
    }

    [v31 setAccessibilityLabel:v21];

LABEL_27:
    goto LABEL_28;
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v18 = v17;
  v19 = [v17 isHidden];

  if ((v19 & 1) == 0)
  {
    v20 = swift_unknownObjectWeakLoadStrong();
    if (!v20)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v21 = v20;
    [v20 setHidden:1];
    goto LABEL_27;
  }

LABEL_28:
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v33 = v32;
  v34 = String._bridgeToObjectiveC()();
  [v33 setText:v34];

  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v36 = v35;
  if (v117)
  {
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  [v36 setAccessibilityLabel:v37];

  v38 = a1[15];
  v39 = a1[16];
  v40 = a1[18];
  v119 = a1[23];
  v41 = a1[25];
  v42 = a1[26];
  v116 = a1[28];
  v43 = swift_unknownObjectWeakLoadStrong();
  if (!v43)
  {
    goto LABEL_108;
  }

  v44 = v43;
  v45 = swift_unknownObjectWeakLoadStrong();

  if (!v45)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v46 = String._bridgeToObjectiveC()();
  [v45 setText:v46];

  v47 = swift_unknownObjectWeakLoadStrong();
  if (!v47)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v48 = v47;
  v49 = swift_unknownObjectWeakLoadStrong();

  if (!v49)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v40)
  {
    v50 = String._bridgeToObjectiveC()();
  }

  else
  {
    v50 = 0;
  }

  [v49 setAccessibilityLabel:v50];

  v51 = swift_unknownObjectWeakLoadStrong();
  if (!v51)
  {
    goto LABEL_112;
  }

  v52 = v51;
  v53 = swift_unknownObjectWeakLoadStrong();

  if (!v53)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if ((v38 != v41 || v39 != v42) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v59 = swift_unknownObjectWeakLoadStrong();
    if (!v59)
    {
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v60 = v59;
    v61 = [v59 isHidden];

    if (v61)
    {
      v62 = swift_unknownObjectWeakLoadStrong();
      if (!v62)
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v63 = v62;
      [v62 setHidden:0];
    }

    v64 = swift_unknownObjectWeakLoadStrong();
    if (!v64)
    {
      goto LABEL_134;
    }

    v65 = v64;
    v66 = String._bridgeToObjectiveC()();
    [v65 setText:v66];

    v67 = swift_unknownObjectWeakLoadStrong();
    if (!v67)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v68 = v67;
    if (v116)
    {
      v58 = String._bridgeToObjectiveC()();
    }

    else
    {
      v58 = 0;
    }

    [v68 setAccessibilityLabel:v58];

LABEL_59:
    goto LABEL_60;
  }

  v54 = swift_unknownObjectWeakLoadStrong();
  if (!v54)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v55 = v54;
  v56 = [v54 isHidden];

  if ((v56 & 1) == 0)
  {
    v57 = swift_unknownObjectWeakLoadStrong();
    if (!v57)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v58 = v57;
    [v57 setHidden:1];
    goto LABEL_59;
  }

LABEL_60:
  v69 = swift_unknownObjectWeakLoadStrong();
  if (!v69)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v70 = v69;
  v71 = String._bridgeToObjectiveC()();
  [v70 setText:v71];

  v72 = swift_unknownObjectWeakLoadStrong();
  if (!v72)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v73 = v72;
  if (v119)
  {
    v74 = String._bridgeToObjectiveC()();
  }

  else
  {
    v74 = 0;
  }

  [v73 setAccessibilityLabel:v74];

  v76 = a1[30];
  v75 = a1[31];
  v77 = a1[33];
  v78 = a1[38];
  v79 = a1[40];
  v80 = a1[41];
  v118 = a1[43];
  v81 = swift_unknownObjectWeakLoadStrong();
  if (!v81)
  {
    goto LABEL_116;
  }

  v82 = v81;
  v83 = swift_unknownObjectWeakLoadStrong();

  if (!v83)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v84 = String._bridgeToObjectiveC()();
  [v83 setText:v84];

  v85 = swift_unknownObjectWeakLoadStrong();
  if (!v85)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v86 = v85;
  v87 = swift_unknownObjectWeakLoadStrong();

  if (!v87)
  {
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (v77)
  {
    v88 = String._bridgeToObjectiveC()();
  }

  else
  {
    v88 = 0;
  }

  [v87 setAccessibilityLabel:v88];

  v89 = swift_unknownObjectWeakLoadStrong();
  if (!v89)
  {
    goto LABEL_120;
  }

  v90 = v89;
  v91 = swift_unknownObjectWeakLoadStrong();

  if (!v91)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if ((v76 != v79 || v75 != v80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v98 = swift_unknownObjectWeakLoadStrong();
    if (!v98)
    {
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v99 = v98;
    v100 = [v98 isHidden];

    if (v100)
    {
      v101 = swift_unknownObjectWeakLoadStrong();
      if (!v101)
      {
LABEL_141:
        __break(1u);
        return;
      }

      v102 = v101;
      [v101 setHidden:0];
    }

    v103 = swift_unknownObjectWeakLoadStrong();
    if (!v103)
    {
      goto LABEL_137;
    }

    v104 = v103;
    v105 = String._bridgeToObjectiveC()();
    [v104 setText:v105];

    v106 = swift_unknownObjectWeakLoadStrong();
    if (!v106)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v107 = v106;
    v95 = &off_100494000;
    if (v118)
    {
      v97 = String._bridgeToObjectiveC()();
    }

    else
    {
      v97 = 0;
    }

    [v107 setAccessibilityLabel:v97];

LABEL_91:
    goto LABEL_92;
  }

  v92 = swift_unknownObjectWeakLoadStrong();
  if (!v92)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v93 = v92;
  v94 = [v92 isHidden];

  v95 = &off_100494000;
  if ((v94 & 1) == 0)
  {
    v96 = swift_unknownObjectWeakLoadStrong();
    if (!v96)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v97 = v96;
    [v96 setHidden:1];
    goto LABEL_91;
  }

LABEL_92:
  v108 = swift_unknownObjectWeakLoadStrong();
  if (!v108)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v109 = v108;
  v110 = String._bridgeToObjectiveC()();
  [v109 setText:v110];

  v111 = swift_unknownObjectWeakLoadStrong();
  if (!v111)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v112 = v111;
  if (v78)
  {
    v113 = String._bridgeToObjectiveC()();
  }

  else
  {
    v113 = 0;
  }

  v121 = v113;
  [v112 v95[111]];
}

id sub_1001A26EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_fullContentHeight] = 0;
  v10 = &v5[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_numberOfRowsChangedCallback];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v5[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_minContentViewHeight] = 0x407AA00000000000;
  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v13 = 88.0;
  if (v11)
  {
    v13 = 222.0;
  }

  *&v6[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableRowHeight] = v13;
  *&v6[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_numberOfRows] = 4;
  v14 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_sketchView;
  type metadata accessor for SketchObject();
  *&v6[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_labelStrip;
  type metadata accessor for ObjectLabelStrip();
  *&v6[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableView;
  *&v6[v16] = [objc_allocWithZone(UITableView) init];
  v17 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial__historyState;
  v18 = sub_10000F974(&unk_1004A6940, &qword_1003DF430);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v20 = qword_1004D5058;
  v21 = *(v18 + 272);

  *&v6[v17] = v21(KeyPath, v20);
  v22 = &v6[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_measurementID];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v6[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_title];
  *v23 = a4;
  *(v23 + 1) = a5;
  v29.receiver = v6;
  v29.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001A1CA8(a3);
  sub_1001A38BC(a3);
  sub_1001A297C();
  sub_1001A2CD4();

  return v24;
}

void sub_1001A297C()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_labelStrip];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();

  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v24._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x4C5F5443454A424FLL;
  v7._object = 0xED00004854474E45;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v24);

  v9 = String._bridgeToObjectiveC()();

  [v4 setText:v9];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = swift_unknownObjectWeakLoadStrong();

  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = [v5 mainBundle];
  v25._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x575F5443454A424FLL;
  v14._object = 0xEC00000048544449;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v25);

  v16 = String._bridgeToObjectiveC()();

  [v12 setText:v16];

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = swift_unknownObjectWeakLoadStrong();

  if (v19)
  {
    v20 = [v5 mainBundle];
    v26._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x485F5443454A424FLL;
    v21._object = 0xED00005448474945;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v26);

    v23 = String._bridgeToObjectiveC()();

    [v19 setText:v23];

    [v0 setAxis:1];
    [v0 addArrangedSubview:*&v0[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_sketchView]];
    [v0 addArrangedSubview:v1];
    [v0 addArrangedSubview:*&v0[OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableView]];
    sub_1001D2E70(0, 2.0, 1.0, 1.0);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1001A2CD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_sketchView);
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 heightAnchor];
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v5 = 176.0;
  if (v3)
  {
    v5 = 444.0;
  }

  v6 = [v2 constraintEqualToConstant:v5];

  [v6 setActive:1];
}

__n128 sub_1001A2F14@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X1>)
{
  sub_1001A34B4(a2, v6);
  v3 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v3;
  *(a1 + 96) = v6[6];
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001A2F68()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_title);

  return v1;
}

void *sub_1001A2FA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableView);
  v2 = v1;
  return v1;
}

void sub_1001A2FD4(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = (v1 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_title);
  *v5 = v4;
  v5[1] = v3;

  v6 = type metadata accessor for MeasurementHistoryItem(0);
  memcpy(__dst, (a1 + *(v6 + 28)), 0x346uLL);
  if (sub_1000218D8(__dst) == 2)
  {
    v7 = sub_10007CD94(__dst);
    memcpy(v8, v7, 0x346uLL);
    sub_1001A1CA8(v8);
  }
}

id sub_1001A3074(uint64_t a1)
{
  v2 = type metadata accessor for MeasurementHistoryItem(0);
  memcpy(__dst, (a1 + *(v2 + 28)), 0x346uLL);
  v3 = sub_1000218D8(__dst);
  result = 0;
  if (v3 == 2)
  {
    v5 = sub_10007CD94(__dst);
    v6 = sub_1001935F8();
    v52 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];

    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1003E19E0;
    v8 = objc_opt_self();
    v9 = [v8 mainBundle];
    v54._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0x4C5F5443454A424FLL;
    v10._object = 0xED00004854474E45;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v54);

    *(v7 + 56) = &type metadata for String;
    v13 = sub_1000192D0();
    *(v7 + 64) = v13;
    *(v7 + 32) = v12;
    v15 = *v5;
    v14 = v5[1];
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v13;
    *(v7 + 72) = v15;
    *(v7 + 80) = v14;
    v16 = v5[5];
    v17 = v5[6];
    *(v7 + 136) = &type metadata for String;
    *(v7 + 144) = v13;
    *(v7 + 112) = v16;
    *(v7 + 120) = v17;
    v18 = v5[10];
    v19 = v5[11];
    *(v7 + 176) = &type metadata for String;
    *(v7 + 184) = v13;
    *(v7 + 152) = v18;
    *(v7 + 160) = v19;

    v20 = [v8 mainBundle];
    v55._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x575F5443454A424FLL;
    v21._object = 0xEC00000048544449;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0;
    v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v55);

    *(v7 + 216) = &type metadata for String;
    *(v7 + 224) = v13;
    *(v7 + 192) = v23;
    v25 = v5[15];
    v24 = v5[16];
    *(v7 + 256) = &type metadata for String;
    *(v7 + 264) = v13;
    *(v7 + 232) = v25;
    *(v7 + 240) = v24;
    v26 = v5[20];
    v27 = v5[21];
    *(v7 + 296) = &type metadata for String;
    *(v7 + 304) = v13;
    *(v7 + 272) = v26;
    *(v7 + 280) = v27;
    v28 = v5[25];
    v29 = v5[26];
    *(v7 + 336) = &type metadata for String;
    *(v7 + 344) = v13;
    *(v7 + 312) = v28;
    *(v7 + 320) = v29;

    v30 = [v8 mainBundle];
    v56._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0x485F5443454A424FLL;
    v31._object = 0xED00005448474945;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v56);

    *(v7 + 376) = &type metadata for String;
    *(v7 + 384) = v13;
    *(v7 + 352) = v33;
    v35 = v5[30];
    v34 = v5[31];
    *(v7 + 416) = &type metadata for String;
    *(v7 + 424) = v13;
    *(v7 + 392) = v35;
    *(v7 + 400) = v34;
    v36 = v5[35];
    v37 = v5[36];
    *(v7 + 456) = &type metadata for String;
    *(v7 + 464) = v13;
    *(v7 + 432) = v36;
    *(v7 + 440) = v37;
    v38 = v5[40];
    v39 = v5[41];
    *(v7 + 496) = &type metadata for String;
    *(v7 + 504) = v13;
    *(v7 + 472) = v38;
    *(v7 + 480) = v39;

    v40 = [v8 mainBundle];
    v57._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0x454D554C4F56;
    v41._object = 0xE600000000000000;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v57);

    *(v7 + 536) = &type metadata for String;
    *(v7 + 544) = v13;
    *(v7 + 512) = v43;
    v45 = v5[45];
    v44 = v5[46];
    *(v7 + 576) = &type metadata for String;
    *(v7 + 584) = v13;
    *(v7 + 552) = v45;
    *(v7 + 560) = v44;
    v46 = v5[55];
    v47 = v5[56];
    *(v7 + 616) = &type metadata for String;
    *(v7 + 624) = v13;
    *(v7 + 592) = v46;
    *(v7 + 600) = v47;

    v48._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v48);

    v49 = objc_allocWithZone(NSAttributedString);
    v50 = String._bridgeToObjectiveC()();

    v51 = [v49 initWithString:v50];

    [v52 appendAttributedString:v51];
    return v52;
  }

  return result;
}

uint64_t sub_1001A34B4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for MeasurementHistoryItem(0) + 28);
  memcpy(__dst, (a1 + v4), 0x346uLL);
  memcpy(v36, (a1 + v4), 0x346uLL);
  result = sub_1000218D8(v36);
  if (result == 2)
  {
    v6 = sub_10007CD94(v36);
    memcpy(v34, __dst, 0x346uLL);
    v7 = sub_10007CD94(v34);
    sub_1001A385C(v7, v33);
    v8 = IndexPath.item.getter();
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v29 = [objc_opt_self() mainBundle];
        v40._object = 0xE000000000000000;
        v30._countAndFlagsBits = 0xD000000000000016;
        v30._object = 0x800000010040BE10;
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        v40._countAndFlagsBits = 0;
        v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v40);
        countAndFlagsBits = v32._countAndFlagsBits;
        object = v32._object;

        v16 = v6[75];
        v15 = v6[76];
        v17 = v6[80];
        v18 = v6[81];
        v19 = v6[85];
        v20 = v6[86];
        goto LABEL_13;
      }

      if (v8 == 3)
      {
        v21 = [objc_opt_self() mainBundle];
        v38._object = 0xE000000000000000;
        v22._countAndFlagsBits = 0xD000000000000017;
        v22._object = 0x800000010040BDF0;
        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        v38._countAndFlagsBits = 0;
        v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v38);
        countAndFlagsBits = v24._countAndFlagsBits;
        object = v24._object;

        v16 = v6[90];
        v15 = v6[91];
        v17 = v6[95];
        v18 = v6[96];
        v19 = v6[100];
        v20 = v6[101];
        goto LABEL_13;
      }
    }

    else
    {
      if (!v8)
      {
        v25 = [objc_opt_self() mainBundle];
        v39._object = 0xE000000000000000;
        v26._countAndFlagsBits = 0x454D554C4F56;
        v26._object = 0xE600000000000000;
        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        v39._countAndFlagsBits = 0;
        v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v39);
        countAndFlagsBits = v28._countAndFlagsBits;
        object = v28._object;

        v16 = v6[45];
        v15 = v6[46];
        v17 = v6[50];
        v18 = v6[51];
        v19 = v6[55];
        v20 = v6[56];
        goto LABEL_13;
      }

      if (v8 == 1)
      {
        v9 = [objc_opt_self() mainBundle];
        v37._object = 0xE000000000000000;
        v10._object = 0x800000010040BE30;
        v10._countAndFlagsBits = 0xD000000000000010;
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        v37._countAndFlagsBits = 0;
        v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v37);
        countAndFlagsBits = v12._countAndFlagsBits;
        object = v12._object;

        v16 = v6[60];
        v15 = v6[61];
        v17 = v6[65];
        v18 = v6[66];
        v19 = v6[70];
        v20 = v6[71];
LABEL_13:

        result = sub_100022028(__dst);
        goto LABEL_14;
      }
    }

    result = sub_100022028(__dst);
    countAndFlagsBits = 0;
    v16 = 0;
    v17 = 0;
    v19 = 0;
    object = 0xE000000000000000;
    v15 = 0xE000000000000000;
    v18 = 0xE000000000000000;
    v20 = 0xE000000000000000;
  }

  else
  {
    v20 = 0xE800000000000000;
    v19 = 0x7374696E75627573;
    v18 = 0xE700000000000000;
    v17 = 0x65736963657270;
    v15 = 0xEA00000000007374;
    v16 = 0x696E75206E69616DLL;
    object = 0xE500000000000000;
    countAndFlagsBits = 0x656C746954;
  }

LABEL_14:
  *a2 = countAndFlagsBits;
  a2[1] = object;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = v17;
  a2[7] = v18;
  a2[8] = 0;
  a2[9] = 0;
  a2[10] = v19;
  a2[11] = v20;
  a2[12] = 0;
  a2[13] = 0;
  return result;
}

void sub_1001A3910()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_fullContentHeight) = 0;
  v2 = (v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_numberOfRowsChangedCallback);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_minContentViewHeight) = 0x407AA00000000000;
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v5 = 88.0;
  if (v3)
  {
    v5 = 222.0;
  }

  *(v1 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableRowHeight) = v5;
  *(v1 + OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_numberOfRows) = 4;
  v6 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_sketchView;
  type metadata accessor for SketchObject();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_labelStrip;
  type metadata accessor for ObjectLabelStrip();
  *(v1 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial_tableView;
  *(v1 + v8) = [objc_allocWithZone(UITableView) init];
  v9 = OBJC_IVAR____TtC7Measure20ObjectPlatterSpatial__historyState;
  v10 = sub_10000F974(&unk_1004A6940, &qword_1003DF430);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v12 = qword_1004D5058;
  v13 = *(v10 + 272);

  *(v1 + v9) = v13(KeyPath, v12);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001A3B30(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3B78(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3BC0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3C08(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3C50(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3C98(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3CE0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3D28(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3D70(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3DB8(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3E00(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3E48(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

Class sub_1001A3EB4(uint64_t a1)
{
  if (*(a1 + qword_1004AE680))
  {
    sub_100018630(0, &qword_1004A7550, UIView_ptr);

    v1.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  return v1.super.isa;
}

double sub_1001A3F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100018630(0, &qword_1004A7550, UIView_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(a1 + qword_1004AE680) = v4;

  return result;
}

id sub_1001A3FAC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A3FF4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4060(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A40A8(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A40F0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4138(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4180(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}