uint64_t Optional.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v18 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = v18 - v10;
  __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  if ((*(v2 + 48))(v13, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v11, v13, v1);
  v16 = *(v2 + 16);
  v16(v8, v11, v1);
  sub_100001EEC(&qword_1000ADC10, &qword_100088740);
  if (swift_dynamicCast())
  {
    sub_100001F9C(v18, v20);
    sub_100001FB4(v20, v20[3]);
    v17 = sub_1000879CC();
    (*(v2 + 8))(v11, v1);
    sub_100001FF8(v20);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_100001F34(v18);
    v16(v5, v11, v1);
    v17 = sub_10008716C();
    (*(v2 + 8))(v11, v1);
  }

  return v17;
}

uint64_t sub_100001EEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001F34(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AEE00, &qword_100088748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001F9C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100001FB4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001FF8(void *a1)
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

id variable initialization expression of MainHostViewController.statusInfoViewCtrl()
{
  LOBYTE(v5) = 2;
  v0 = objc_allocWithZone(sub_100001EEC(&qword_1000ADC18, &unk_100088750));
  v1 = sub_100086B5C();
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v4];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ProfileIcon(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProfileIcon(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ProfileIcon(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_1000ADC20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000ADC20);
    }
  }
}

unint64_t sub_100002238()
{
  result = qword_1000ADC30;
  if (!qword_1000ADC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000ADC30);
  }

  return result;
}

uint64_t sub_100002284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1000022A8, v3, 0);
}

uint64_t sub_1000022A8()
{
  v0[6] = *(v0[5] + 120);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100002358;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_100067E20(v4, v2, v3);
}

uint64_t sub_100002358()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10000248C, v3, 0);
}

uint64_t sub_10000248C()
{
  v0[6] = *(v0[5] + 120);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100003248;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_100069A78(v4, v2, v3);
}

uint64_t sub_10000255C()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 32) = v1;

  return _swift_task_switch(sub_1000025D4, v1, 0);
}

uint64_t sub_1000025D4()
{
  v0[2] = *(v0[4] + OBJC_IVAR____TtC16HPSUIViewService30CarrySettingsNetworkingSession_devicesChangedSubject);

  sub_100001EEC(&qword_1000ADCB0, &qword_100088838);
  sub_10000319C();
  v1 = sub_10008680C();

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100002694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002740;

  return sub_100002284(a1, a2, a3);
}

uint64_t sub_100002740()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002854()
{
  v1 = *(*(v0 + 16) + 120);
  *(v0 + 24) = v1;

  return _swift_task_switch(sub_1000028CC, v1, 0);
}

uint64_t sub_1000028CC()
{

  v2 = sub_100074618(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100002968(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100002988, v1, 0);
}

uint64_t sub_100002988()
{
  v0[4] = *(v0[3] + 120);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100002A34;
  v2 = v0[2];

  return sub_100068000(v2);
}

uint64_t sub_100002A34()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_100002B70, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100002B70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000324C;

  return sub_100002468(a1, a2, a3);
}

uint64_t sub_100002C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100002CA4, v3, 0);
}

uint64_t sub_100002CA4()
{
  v0[6] = *(v0[5] + 120);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100002D54;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_10006A544(v4, v2, v3);
}

uint64_t sub_100002D54()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_100002E90, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100002E90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002EF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100002F14, v1, 0);
}

uint64_t sub_100002F14()
{
  v0[4] = *(v0[3] + 120);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100002FC0;
  v2 = v0[2];

  return sub_10006ADD8(v2);
}

uint64_t sub_100002FC0()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_100003250, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000030FC(uint64_t a1)
{
  result = sub_100003154(&qword_1000ADCA8, type metadata accessor for NetworkManager, &unk_100088B90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100003154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000319C()
{
  result = qword_1000ADCB8[0];
  if (!qword_1000ADCB8[0])
  {
    sub_100003200(&qword_1000ADCB0, &qword_100088838);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ADCB8);
  }

  return result;
}

uint64_t sub_100003200(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000864CC();
  v42 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v39 - v10;
  v11 = sub_10008672C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = *(a4 + 72);
  swift_unknownObjectRetain();
  v43 = a3;
  v44 = a2;
  v18(a3, a4);
  (*(v12 + 104))(v15, enum case for BetaEnrollment.State.multiple(_:), v11);
  sub_100005AA0(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  LOBYTE(a2) = sub_10008713C();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v17, v11);
  if (a2 & 1) != 0 || (v20 = a4, v21 = v40, v22 = v43, (*(a4 + 48))(v43, a4), v24 = v41, v23 = v42, (*(v42 + 104))(v41, enum case for BetaEnrollment.Availability.unavailable(_:), v7), sub_100005AA0(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability), v25 = sub_10008713C(), v26 = *(v23 + 8), v26(v24, v7), v26(v21, v7), (v25) || (v27 = (*(v20 + 88))(v22, v20)) == 0)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = v27;
    v29 = (*(v20 + 80))(v22, v20);
    v31 = v30;
    swift_unknownObjectRelease();
    if ((v31 & 1) == 0)
    {
      if (v28 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10008793C())
      {
        v33 = 0;
        while (1)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v34 = sub_10008781C();
          }

          else
          {
            if (v33 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v34 = *(v28 + 8 * v33 + 32);
          }

          v35 = v34;
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (sub_10008648C() == v29)
          {

            v38 = sub_1000864AC();

            return v38;
          }

          ++v33;
          if (v36 == i)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }
    }

LABEL_22:
  }

  return 0;
}

uint64_t sub_1000036C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a2;
  v51 = a1;
  v52 = a5;
  v56 = sub_100003200(&qword_1000ADD40, &qword_100088918);
  v57 = type metadata accessor for BetaProgramsSelectionView(255, a3, a4, v7);
  v58 = sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918, &protocol conformance descriptor for VStack<A>);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1000868DC();
  v48 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v47 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v46 = &v43 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for BetaSettingsMultiSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v18 = swift_getWitnessTable();
  v19 = v49;
  v20 = swift_getAssociatedConformanceWitness();
  v56 = v13;
  v57 = v15;
  v58 = v17;
  WitnessTable = v18;
  v60 = v20;
  v21 = sub_100086FBC();
  v22 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v56 = v8;
  v57 = v21;
  v45 = v21;
  v58 = v22;
  WitnessTable = v23;
  v43 = v23;
  v24 = sub_10008694C();
  v44 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v43 - v28;
  v30 = sub_100086B9C();
  v50 = *(v30 - 8);
  v31 = __chkstk_darwin(v30);
  v33 = &v43 - v32;
  if (sub_100003D64(v31, v19, a3, a4))
  {
    v34 = swift_allocObject();
    v48 = v22;
    v47 = &v43;
    v34[2] = a3;
    v34[3] = a4;
    v34[4] = v51;
    v34[5] = v19;
    __chkstk_darwin(v34);
    *(&v43 - 4) = a3;
    *(&v43 - 3) = a4;
    *(&v43 - 2) = v35;
    *(&v43 - 1) = v19;
    swift_unknownObjectRetain();
    v22 = v48;
    sub_10008693C();
    v36 = swift_getWitnessTable();
    sub_10004EDD8();
    v37 = *(v44 + 8);
    v37(v27, v24);
    sub_10004EDD8();
    sub_10004B338(v27, v24, v8, v36, v22);
    v37(v27, v24);
    v37(v29, v24);
  }

  else
  {
    v38 = v47;
    sub_10000476C(v51, v19, a3, a4);
    v39 = v46;
    sub_10004EDD8();
    v40 = *(v48 + 8);
    v40(v38, v8);
    sub_10004EDD8();
    v41 = swift_getWitnessTable();
    sub_10004B430(v38, v24, v8, v41, v22);
    v40(v38, v8);
    v40(v39, v8);
  }

  v53 = swift_getWitnessTable();
  v54 = v22;
  swift_getWitnessTable();
  sub_10004EDD8();
  return (*(v50 + 8))(v33, v30);
}

uint64_t sub_100003D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = sub_1000864CC();
  v31 = *(v27 - 8);
  v6 = __chkstk_darwin(v27);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v29 = &v26 - v8;
  v9 = sub_10008672C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = *(a4 + 72);
  swift_unknownObjectRetain();
  v28 = a3;
  v16(a3, a4);
  (*(v10 + 104))(v13, enum case for BetaEnrollment.State.multiple(_:), v9);
  sub_100005AA0(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (v33 == v32)
  {
    v18 = v29;
    (*(a4 + 48))(v28, a4);
    swift_unknownObjectRelease();
    v20 = v30;
    v19 = v31;
    v21 = v27;
    (*(v31 + 104))(v30, enum case for BetaEnrollment.Availability.unavailable(_:), v27);
    sub_100005AA0(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability);
    v22 = sub_10008713C();
    v23 = *(v19 + 8);
    v23(v20, v21);
    v23(v18, v21);
    v24 = v22 ^ 1;
  }

  else
  {
    swift_unknownObjectRelease();
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1000040CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v31 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = *(AssociatedConformanceWitness + 24);
  v30 = v9;
  v33 = v9;
  v34 = swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for BetaSettingsMultiSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v27 = v34;
  v35 = v26;
  WitnessTable = swift_getWitnessTable();
  v25[1] = WitnessTable;
  v37 = swift_getAssociatedConformanceWitness();
  v12 = sub_100086FBC();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v25 - v17;
  v19 = *(a4 + 56);
  swift_unknownObjectRetain();
  v20 = v19(a3, a4);
  swift_unknownObjectRelease();
  if (!v20)
  {
    v20 = sub_10008732C();
  }

  v33 = v20;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = v29;
  v21[5] = a2;
  swift_unknownObjectRetain();
  v22 = swift_getWitnessTable();
  sub_100086FAC();
  v32 = v22;
  swift_getWitnessTable();
  sub_10004EDD8();
  v23 = *(v13 + 8);
  v23(v16, v12);
  sub_10004EDD8();
  return (v23)(v18, v12);
}

uint64_t sub_100004404(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_unknownObjectRetain();
  sub_1000868FC();
  type metadata accessor for BetaSettingsMultiSeedingRowView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  swift_getWitnessTable();
  sub_10004EDD8();
  swift_unknownObjectRelease();
  sub_10004EDD8();
  return swift_unknownObjectRelease();
}

uint64_t sub_100004524@<X0>(uint64_t *a4@<X8>)
{
  swift_unknownObjectRetain();
  result = sub_1000868FC();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_100004568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = sub_100003200(&qword_1000ADD40, &qword_100088918);
  v18[1] = type metadata accessor for BetaProgramsSelectionView(255, a3, a4, v8);
  v18[2] = sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918, &protocol conformance descriptor for VStack<A>);
  v18[3] = swift_getWitnessTable();
  v9 = sub_1000868DC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  sub_10000476C(a1, a2, a3, a4);
  swift_getWitnessTable();
  sub_10004EDD8();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_10004EDD8();
  return (v16)(v15, v9);
}

uint64_t sub_10000476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 80);
  swift_unknownObjectRetain();
  v7 = v6(a3, a4);
  sub_100004B34(v7, v8 & 1);
  sub_100001EEC(&qword_1000ADD40, &qword_100088918);
  type metadata accessor for BetaProgramsSelectionView(0, a3, a4, v9);
  sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918, &protocol conformance descriptor for VStack<A>);
  swift_getWitnessTable();
  return sub_1000868CC();
}

uint64_t sub_1000048E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 + 8);
  swift_unknownObjectRetain();
  v22 = v9(a2, v8);
  v11 = v10;
  v12 = (*(a3 + 64))(a2, a3);
  v14 = v13;
  v15 = sub_100003254(v12, a1, a2, a3);
  v17 = v16;
  v18 = (*(v8 + 16))(a2, v8);
  v20 = v19;
  result = swift_unknownObjectRelease();
  *a4 = v18;
  *(a4 + 8) = v20;
  *(a4 + 40) = 1;
  *(a4 + 48) = v12;
  *(a4 + 56) = v14;
  *(a4 + 64) = v22;
  *(a4 + 72) = v11;
  *(a4 + 80) = v15;
  *(a4 + 88) = v17;
  return result;
}

uint64_t sub_100004A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100004A54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100004A9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100004B34(uint64_t a1, char a2)
{
  sub_100001EEC(&qword_1000ADD60, &qword_100088920);
  sub_100086E7C();
  return v3;
}

uint64_t sub_100004B8C(uint64_t a1, char a2, uint64_t a3)
{
  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  sub_100086E8C();
  return v4;
}

uint64_t sub_100004C74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100004CC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a2 & 1;
  sub_100001EEC(&qword_1000ADDF0, &qword_1000889E8);
  sub_100005ED4();
  sub_100086C6C();
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  *(v14 + 32) = a1;
  *(v14 + 40) = v13;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  v15 = (a7 + *(sub_100001EEC(&qword_1000ADE10, &qword_1000889F8) + 36));
  *v15 = 0;
  v15[1] = 0;
  v15[2] = sub_100005F94;
  v15[3] = v14;

  return swift_unknownObjectRetain();
}

uint64_t sub_100004DDC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100001EEC(&qword_1000ADE08, &qword_1000889F0);
  sub_100006454(&qword_1000ADE00, &qword_1000ADE08, &qword_1000889F0, &protocol conformance descriptor for TupleView<A>);
  return sub_100086FEC();
}

uint64_t sub_100004E90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a4;
  v33 = sub_100001EEC(&qword_1000ADE20, &qword_100088A08);
  v14 = *(v33 - 8);
  v15 = __chkstk_darwin(v33);
  v32 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  sub_1000050AC(a1, a2 & 1, a3, a4, a5, a6, v34);
  v19 = v34[1];
  v31 = v34[0];
  v30 = v35;
  v20 = v37;
  v29 = v36;
  sub_1000051F0(a1, a2 & 1, a3, v28, a5, a6);
  v21 = *(v14 + 16);
  v23 = v32;
  v22 = v33;
  v21(v32, v18, v33);
  *a7 = v31;
  *(a7 + 8) = v19;
  *(a7 + 16) = v30;
  *(a7 + 24) = v29;
  *(a7 + 32) = v20;
  v24 = sub_100001EEC(&qword_1000ADE28, &qword_100088A10);
  v21((a7 + *(v24 + 48)), v23, v22);
  v25 = *(v14 + 8);

  v25(v18, v22);
  v25(v23, v22);
}

uint64_t sub_1000050AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = [objc_opt_self() mainBundle];
  v21._countAndFlagsBits = 0xE000000000000000;
  v23._countAndFlagsBits = 4605519;
  v23._object = 0xE300000000000000;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v15.super.isa = v14;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v16 = sub_100085FFC(v23, v24, v15, v25, 0, v21);
  v18 = v17;

  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  sub_100086E8C();
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2 & 1;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;
  *a7 = v16;
  *(a7 + 8) = v18;
  *(a7 + 16) = v22;
  *(a7 + 24) = sub_100006108;
  *(a7 + 32) = v19;

  return swift_unknownObjectRetain();
}

uint64_t sub_1000051F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 88))(a5, a6);
  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2 & 1;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;

  swift_unknownObjectRetain();
  sub_100001EEC(&qword_1000ADE30, &qword_100088A48);
  sub_100006454(&qword_1000ADE38, &qword_1000ADE30, &qword_100088A48, &protocol conformance descriptor for [A]);
  sub_10000600C();
  return sub_100086F9C();
}

uint64_t sub_100005364(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  sub_100086E8C();
  result = (*(a6 + 80))(a5, a6);
  if (v11)
  {
    if (v9)
    {
      return result;
    }

    goto LABEL_6;
  }

  if ((v9 & 1) != 0 || v10 != result)
  {
LABEL_6:
    sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
    sub_100086E8C();
    if (v11 == 1)
    {
      return (*(a6 + 112))(a5, a6);
    }

    else
    {
      return (*(a6 + 128))(v10, a5, a6);
    }
  }

  return result;
}

id sub_1000054B4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = *a1;
  v13 = sub_1000864AC();
  v15 = v14;
  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  sub_100086E8C();
  v16 = (v22 == sub_10008648C()) & ~v23;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3 & 1;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  *(v17 + 64) = v21;
  *a8 = v13;
  *(a8 + 8) = v15;
  *(a8 + 16) = v16;
  *(a8 + 24) = sub_1000060A8;
  *(a8 + 32) = v17;

  swift_unknownObjectRetain();

  return v21;
}

uint64_t sub_1000055E4(uint64_t a1, char a2, uint64_t a3)
{
  sub_10008648C();
  sub_100001EEC(&qword_1000ADE18, &qword_100088A00);
  return sub_100086E9C();
}

uint64_t sub_1000056A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100086A9C();
  v18 = 1;
  sub_100005878(v1, &v25);
  v21 = v27;
  v22 = v28;
  v19 = v25;
  v20 = v26;
  v24[2] = v27;
  v24[3] = v28;
  v24[4] = v29;
  v24[1] = v26;
  v23 = v29;
  v24[0] = v25;
  sub_100006300(&v19, &v15);
  sub_10000649C(v24, &qword_1000ADE60, &qword_100088AF0);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  *&v16[33] = *&v17[32];
  *&v16[49] = *&v17[48];
  *&v16[65] = *&v17[64];
  *&v16[1] = *v17;
  v15 = v3;
  v16[0] = v18;
  *&v16[80] = *(&v23 + 1);
  *&v16[17] = *&v17[16];
  v16[88] = 0;
  sub_100001EEC(&qword_1000ADE68, &qword_100088AF8);
  sub_100006370();
  sub_100086D4C();
  v29 = *&v16[48];
  v30[0] = *&v16[64];
  *(v30 + 9) = *&v16[73];
  v25 = v15;
  v26 = *v16;
  v27 = *&v16[16];
  v28 = *&v16[32];
  sub_10000649C(&v25, &qword_1000ADE68, &qword_100088AF8);
  v4 = sub_100086BFC();
  sub_10008686C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_100001EEC(&qword_1000ADE98, &qword_100088B10);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_100005878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000064FC();

  v4 = sub_100086CCC();
  v6 = v5;
  v8 = v7;
  sub_100086C0C();
  v9 = sub_100086CAC();
  v11 = v10;
  v22 = v12;
  v14 = v13;

  sub_100006550(v4, v6, v8 & 1);

  v15 = sub_100086E3C();
  v16 = sub_100086DFC();
  KeyPath = swift_getKeyPath();
  v18 = (*(a1 + 16) & 1) == 0;
  v19 = 0.0;
  v20 = v22 & 1;
  if (!v18)
  {
    v19 = 1.0;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v14;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v16;
  *(a2 + 72) = v19;
  sub_100006568(v9, v11, v20);

  sub_100006550(v9, v11, v20);
}

uint64_t sub_100005A40@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  *a1 = sub_100086B4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_1000048E8(v5, v3, v4, a1 + 24);
}

uint64_t sub_100005AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100005B54(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005B60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100005BA8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100005BE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100003200(&qword_1000ADD40, &qword_100088918);
  type metadata accessor for BetaProgramsSelectionView(255, v1, v2, v3);
  sub_100006454(&qword_1000ADD48, &qword_1000ADD40, &qword_100088918, &protocol conformance descriptor for VStack<A>);
  swift_getWitnessTable();
  sub_1000868DC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsMultiSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10008694C();
  sub_100086B9C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100005ED4()
{
  result = qword_1000ADDF8;
  if (!qword_1000ADDF8)
  {
    sub_100003200(&qword_1000ADDF0, &qword_1000889E8);
    sub_100006454(&qword_1000ADE00, &qword_1000ADE08, &qword_1000889F0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADDF8);
  }

  return result;
}

unint64_t sub_10000600C()
{
  result = qword_1000ADE40;
  if (!qword_1000ADE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE40);
  }

  return result;
}

uint64_t sub_100006060()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000060C8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_100006174(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000061D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000622C()
{
  result = qword_1000ADE48;
  if (!qword_1000ADE48)
  {
    sub_100003200(&qword_1000ADE10, &qword_1000889F8);
    sub_100006454(&qword_1000ADE50, &qword_1000ADE58, "||", &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE48);
  }

  return result;
}

uint64_t sub_100006300(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000ADE60, &qword_100088AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100006370()
{
  result = qword_1000ADE70;
  if (!qword_1000ADE70)
  {
    sub_100003200(&qword_1000ADE68, &qword_100088AF8);
    sub_100006454(&qword_1000ADE78, &qword_1000ADE80, &unk_100088B00, &protocol conformance descriptor for HStack<A>);
    sub_100006454(&qword_1000ADE88, &qword_1000ADE90, &unk_10008C320, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADE70);
  }

  return result;
}

uint64_t sub_100006454(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003200(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000649C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EEC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000064FC()
{
  result = qword_1000ADEA0;
  if (!qword_1000ADEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADEA0);
  }

  return result;
}

uint64_t sub_100006550(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100006568(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000657C()
{
  result = qword_1000ADEA8;
  if (!qword_1000ADEA8)
  {
    sub_100003200(&qword_1000ADE98, &qword_100088B10);
    sub_100003200(&qword_1000ADE68, &qword_100088AF8);
    sub_100006370();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADEA8);
  }

  return result;
}

void *sub_100006660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(NSRegularExpression);

  v7 = sub_100006934(a1, a2, 0);
  v8 = sub_10008714C();

  sub_100001EEC(&qword_1000ADEB0, &qword_100088B48);
  sub_100006A10();
  sub_1000064FC();
  v9 = sub_10008765C();
  v11 = [v7 matchesInString:v8 options:0 range:{v9, v10}];

  sub_100006A74();
  v12 = sub_1000872CC();

  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_18;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
    while (1)
    {
      v27 = v7;
      result = sub_10006F608(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        break;
      }

      v16 = 0;
      v17 = v13;
      v29 = v13;
      v30 = v13 & 0xC000000000000001;
      v28 = v13 & 0xFFFFFFFFFFFFFF8;
      v13 = v14;
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v30)
        {
          v19 = sub_10008781C();
        }

        else
        {
          if (v16 >= *(v28 + 16))
          {
            goto LABEL_17;
          }

          v19 = *(v17 + 8 * v16 + 32);
        }

        v20 = v19;
        [v19 range];
        result = sub_1000875FC();
        if (v21)
        {
          goto LABEL_21;
        }

        sub_10008721C();
        v22 = sub_10008718C();
        v24 = v23;

        v7 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v7 >= v25 >> 1)
        {
          sub_10006F608((v25 > 1), v7 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v7 + 1;
        v26 = &_swiftEmptyArrayStorage[2 * v7];
        v26[4] = v22;
        v26[5] = v24;
        ++v16;
        v17 = v29;
        if (v18 == v13)
        {

          return _swiftEmptyArrayStorage;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v14 = sub_10008793C();
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_100006934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10008714C();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10008601C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100006A10()
{
  result = qword_1000ADEB8;
  if (!qword_1000ADEB8)
  {
    sub_100003200(&qword_1000ADEB0, &qword_100088B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADEB8);
  }

  return result;
}

unint64_t sub_100006A74()
{
  result = qword_1000ADEC0;
  if (!qword_1000ADEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000ADEC0);
  }

  return result;
}

uint64_t sub_100006AC0()
{
  result = sub_100086AFC();
  qword_1000B3778 = result;
  unk_1000B3780 = v1;
  byte_1000B3788 = v2 & 1;
  qword_1000B3790 = v3;
  return result;
}

uint64_t sub_100006B04()
{
  result = sub_100086AFC();
  qword_1000B3798 = result;
  unk_1000B37A0 = v1;
  byte_1000B37A8 = v2 & 1;
  qword_1000B37B0 = v3;
  return result;
}

uint64_t sub_100006B54()
{
  result = sub_100086AFC();
  qword_1000B37B8 = result;
  unk_1000B37C0 = v1;
  byte_1000B37C8 = v2 & 1;
  qword_1000B37D0 = v3;
  return result;
}

uint64_t sub_100006B90()
{
  result = sub_100086AFC();
  qword_1000B37D8 = result;
  unk_1000B37E0 = v1;
  byte_1000B37E8 = v2 & 1;
  qword_1000B37F0 = v3;
  return result;
}

uint64_t sub_100006BD4()
{
  result = sub_100086AFC();
  qword_1000B37F8 = result;
  unk_1000B3800 = v1;
  byte_1000B3808 = v2 & 1;
  qword_1000B3810 = v3;
  return result;
}

uint64_t sub_100006C1C()
{
  result = sub_100086AFC();
  qword_1000B3818 = result;
  unk_1000B3820 = v1;
  byte_1000B3828 = v2 & 1;
  qword_1000B3830 = v3;
  return result;
}

uint64_t sub_100006C68()
{
  result = sub_100086AFC();
  qword_1000B3838 = result;
  unk_1000B3840 = v1;
  byte_1000B3848 = v2 & 1;
  qword_1000B3850 = v3;
  return result;
}

uint64_t sub_100006CB8()
{
  result = sub_100086AFC();
  qword_1000B3858 = result;
  unk_1000B3860 = v1;
  byte_1000B3868 = v2 & 1;
  qword_1000B3870 = v3;
  return result;
}

uint64_t sub_100006CF8()
{
  result = sub_100086AFC();
  qword_1000B3878 = result;
  unk_1000B3880 = v1;
  byte_1000B3888 = v2 & 1;
  qword_1000B3890 = v3;
  return result;
}

uint64_t sub_100006D40()
{
  result = sub_100086AFC();
  qword_1000B3898 = result;
  unk_1000B38A0 = v1;
  byte_1000B38A8 = v2 & 1;
  qword_1000B38B0 = v3;
  return result;
}

uint64_t sub_100006D88()
{
  result = sub_100086AFC();
  qword_1000B38B8 = result;
  unk_1000B38C0 = v1;
  byte_1000B38C8 = v2 & 1;
  qword_1000B38D0 = v3;
  return result;
}

uint64_t sub_100006DD0()
{
  result = sub_100086AFC();
  qword_1000B38D8 = result;
  unk_1000B38E0 = v1;
  byte_1000B38E8 = v2 & 1;
  qword_1000B38F0 = v3;
  return result;
}

uint64_t sub_100006E18()
{
  result = sub_100086AFC();
  qword_1000B38F8 = result;
  unk_1000B3900 = v1;
  byte_1000B3908 = v2 & 1;
  qword_1000B3910 = v3;
  return result;
}

uint64_t sub_100006E5C()
{
  result = sub_100086AFC();
  qword_1000B3918 = result;
  unk_1000B3920 = v1;
  byte_1000B3928 = v2 & 1;
  qword_1000B3930 = v3;
  return result;
}

uint64_t sub_100006EA4()
{
  result = sub_100086AFC();
  qword_1000B3938 = result;
  unk_1000B3940 = v1;
  byte_1000B3948 = v2 & 1;
  qword_1000B3950 = v3;
  return result;
}

uint64_t sub_100006EEC()
{
  if (qword_1000ADBE0 != -1)
  {
    swift_once();
  }

  if (byte_1000B3B9B == 1)
  {

    v4._countAndFlagsBits = 0x495041575FLL;
    v4._object = 0xE500000000000000;
    sub_1000871BC(v4);
  }

  result = sub_100086B1C();
  qword_1000B3958 = result;
  unk_1000B3960 = v1;
  byte_1000B3968 = v2 & 1;
  qword_1000B3970 = v3;
  return result;
}

uint64_t sub_100007010()
{
  result = sub_100086AFC();
  qword_1000B3978 = result;
  unk_1000B3980 = v1;
  byte_1000B3988 = v2 & 1;
  qword_1000B3990 = v3;
  return result;
}

uint64_t sub_100007058()
{
  result = sub_100086AFC();
  qword_1000B3998 = result;
  unk_1000B39A0 = v1;
  byte_1000B39A8 = v2 & 1;
  qword_1000B39B0 = v3;
  return result;
}

uint64_t sub_1000070A4()
{
  result = sub_100086AFC();
  qword_1000B39B8 = result;
  unk_1000B39C0 = v1;
  byte_1000B39C8 = v2 & 1;
  qword_1000B39D0 = v3;
  return result;
}

uint64_t sub_1000070EC()
{
  result = sub_100086AFC();
  qword_1000B39D8 = result;
  unk_1000B39E0 = v1;
  byte_1000B39E8 = v2 & 1;
  qword_1000B39F0 = v3;
  return result;
}

uint64_t sub_100007134()
{
  result = sub_100086AFC();
  qword_1000B39F8 = result;
  unk_1000B3A00 = v1;
  byte_1000B3A08 = v2 & 1;
  qword_1000B3A10 = v3;
  return result;
}

uint64_t sub_10000717C()
{
  result = sub_100086AFC();
  qword_1000B3A18 = result;
  unk_1000B3A20 = v1;
  byte_1000B3A28 = v2 & 1;
  qword_1000B3A30 = v3;
  return result;
}

uint64_t sub_1000071C4()
{
  result = sub_100086AFC();
  qword_1000B3A38 = result;
  unk_1000B3A40 = v1;
  byte_1000B3A48 = v2 & 1;
  qword_1000B3A50 = v3;
  return result;
}

uint64_t sub_100007210()
{
  result = sub_100086AFC();
  qword_1000B3A58 = result;
  unk_1000B3A60 = v1;
  byte_1000B3A68 = v2 & 1;
  qword_1000B3A70 = v3;
  return result;
}

uint64_t sub_100007258()
{
  result = sub_100086AFC();
  qword_1000B3A78 = result;
  unk_1000B3A80 = v1;
  byte_1000B3A88 = v2 & 1;
  qword_1000B3A90 = v3;
  return result;
}

uint64_t sub_1000072A0()
{
  if (qword_1000ADBE0 != -1)
  {
    swift_once();
  }

  result = sub_100086B1C();
  qword_1000B3A98 = result;
  unk_1000B3AA0 = v1;
  byte_1000B3AA8 = v2 & 1;
  qword_1000B3AB0 = v3;
  return result;
}

uint64_t sub_100007370()
{
  result = sub_100086AFC();
  qword_1000B3AB8 = result;
  unk_1000B3AC0 = v1;
  byte_1000B3AC8 = v2 & 1;
  qword_1000B3AD0 = v3;
  return result;
}

uint64_t sub_1000073B8()
{
  result = sub_100086AFC();
  qword_1000B3AD8 = result;
  unk_1000B3AE0 = v1;
  byte_1000B3AE8 = v2 & 1;
  qword_1000B3AF0 = v3;
  return result;
}

uint64_t sub_100007400()
{
  result = sub_100086AFC();
  qword_1000B3AF8 = result;
  unk_1000B3B00 = v1;
  byte_1000B3B08 = v2 & 1;
  qword_1000B3B10 = v3;
  return result;
}

uint64_t sub_100007448()
{
  result = sub_100086AFC();
  qword_1000B3B18 = result;
  unk_1000B3B20 = v1;
  byte_1000B3B28 = v2 & 1;
  qword_1000B3B30 = v3;
  return result;
}

uint64_t sub_100007488()
{
  result = sub_100086AFC();
  qword_1000B3B38 = result;
  unk_1000B3B40 = v1;
  byte_1000B3B48 = v2 & 1;
  qword_1000B3B50 = v3;
  return result;
}

uint64_t *sub_1000074C4()
{
  type metadata accessor for NetworkManager();
  swift_allocObject();
  result = sub_100007500();
  qword_1000B3B58 = result;
  return result;
}

uint64_t *sub_100007500()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  type metadata accessor for BetaEnrollmentNetworkingSession();
  swift_allocObject();
  v0[14] = sub_10006020C();
  type metadata accessor for CarrySettingsNetworkingSession(0);
  swift_allocObject();
  v0[15] = sub_10006CC14();
  sub_100059920(0x696C616974696E49, 0xEC000000676E697ALL, v1, &off_1000A69F0);
  return v0;
}

uint64_t sub_1000075CC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_10000763C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_100007680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000076C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100007754()
{
  sub_100001EEC(&qword_1000ADFB8, &qword_10008C6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100088C20;
  *(v21 + 9) = *(v0 + 33);
  v21[0] = *(v0 + 24);
  *(inited + 56) = &type metadata for AnalyticsInteger;
  *(inited + 64) = &off_1000AE268;
  v2 = swift_allocObject();
  *(inited + 32) = v2;
  *(v2 + 25) = *(v0 + 33);
  *(v2 + 16) = *(v0 + 24);
  v20[0] = *(v0 + 64);
  *(v20 + 9) = *(v0 + 73);
  *(inited + 96) = &type metadata for AnalyticsInteger;
  *(inited + 104) = &off_1000AE268;
  v3 = swift_allocObject();
  *(inited + 72) = v3;
  *(v3 + 25) = *(v0 + 73);
  *(v3 + 16) = *(v0 + 64);
  v19[0] = *(v0 + 96);
  v4 = v19[0];
  *(v19 + 13) = *(v0 + 109);
  v5 = *(v19 + 13);
  *(inited + 136) = &type metadata for AnalyticsFloat;
  *(inited + 144) = &off_1000AE228;
  *(inited + 112) = v4;
  *(inited + 125) = v5;
  v18[0] = *(v0 + 120);
  *(v18 + 9) = *(v0 + 129);
  *(inited + 176) = &type metadata for AnalyticsInteger;
  *(inited + 184) = &off_1000AE268;
  v6 = swift_allocObject();
  *(inited + 152) = v6;
  *(v6 + 25) = *(v0 + 129);
  *(v6 + 16) = *(v0 + 120);
  v17[0] = *(v0 + 152);
  v7 = v17[0];
  *(v17 + 13) = *(v0 + 165);
  v8 = *(v17 + 13);
  *(inited + 216) = &type metadata for AnalyticsFloat;
  *(inited + 224) = &off_1000AE228;
  *(inited + 192) = v7;
  *(inited + 205) = v8;
  v16[0] = *(v0 + 176);
  *(v16 + 9) = *(v0 + 185);
  *(inited + 256) = &type metadata for AnalyticsInteger;
  *(inited + 264) = &off_1000AE268;
  v9 = swift_allocObject();
  *(inited + 232) = v9;
  *(v9 + 25) = *(v0 + 185);
  *(v9 + 16) = *(v0 + 176);
  v15[0] = *(v0 + 208);
  v10 = v15[0];
  *(v15 + 13) = *(v0 + 221);
  v11 = *(v15 + 13);
  *(inited + 296) = &type metadata for AnalyticsFloat;
  *(inited + 304) = &off_1000AE228;
  *(inited + 272) = v10;
  *(inited + 285) = v11;
  sub_100008354(v21, v14);
  sub_100008354(v20, v14);
  sub_1000083B0(v19, v14);
  sub_100008354(v18, v14);
  sub_1000083B0(v17, v14);
  sub_100008354(v16, v14);
  sub_1000083B0(v15, v14);
  v12 = sub_100057E00(inited);
  swift_setDeallocating();
  sub_100001EEC(qword_1000ADFC0, &qword_100088D30);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1000079BC(uint64_t result)
{
  v2 = result;
  *v1 = result;
  if (*(v1 + 48))
  {
    if (result < 1)
    {
      return result;
    }
  }

  else if (*(v1 + 40) >= result)
  {
    return result;
  }

  sub_1000877DC(17);

  v3._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v3);

  sub_100016548(0x6320656369766544, 0xEF203D20746E756FLL);

  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  return result;
}

uint64_t sub_100007AA0()
{
  sub_1000877DC(25);

  v2 = *(v0 + 8);
  v3._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v3);

  sub_100016548(0xD000000000000017, 0x800000010008E5A0);

  *(v0 + 192) = v2;
  *(v0 + 200) = 0;
  return result;
}

uint64_t sub_100007B58(unint64_t a1)
{
  v12[0] = 0x6F726E6520646944;
  v12[1] = 0xEB00000000206C6CLL;
  sub_100002238();
  v13._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v13);

  sub_100016548(0x6F726E6520646944, 0xEB00000000206C6CLL);

  if (a1 >> 62)
  {
    result = sub_10008793C();
    v4 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_10008781C();
    }

    else
    {
      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v12[0] = v6;
    __chkstk_darwin(v6);
    v11[2] = v12;
    if ((sub_10006E34C(sub_1000082FC, v11, v8) & 1) == 0)
    {
      v9 = v7;
      sub_1000872AC();
      if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11[4] = *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10008730C();
      }

      sub_10008735C();
    }
  }

LABEL_14:
  v10 = *(v1 + 56);
  if (v10 >> 62)
  {
    result = sub_10008793C();
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 80) = result;
  *(v1 + 88) = 0;
  return result;
}

uint64_t sub_100007D58(unint64_t a1)
{
  strcpy(v12, "Did unenroll ");
  HIWORD(v12[1]) = -4864;
  sub_100002238();
  v13._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v13);

  sub_100016548(v12[0], v12[1]);

  if (a1 >> 62)
  {
    result = sub_10008793C();
    v4 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_10008781C();
    }

    else
    {
      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v12[0] = v6;
    __chkstk_darwin(v6);
    v11[2] = v12;
    if ((sub_10006E34C(sub_10000840C, v11, v8) & 1) == 0)
    {
      v9 = v7;
      sub_1000872AC();
      if (*((*(v1 + 232) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 232) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11[4] = *((*(v1 + 232) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10008730C();
      }

      sub_10008735C();
    }
  }

LABEL_14:
  v10 = *(v1 + 232);
  if (v10 >> 62)
  {
    result = sub_10008793C();
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 136) = result;
  *(v1 + 144) = 0;
  return result;
}

void sub_100007F5C()
{
  if (*(v0 + 16) != 1)
  {
    return;
  }

  sub_100016548(0x676E6970706F7453, 0xE800000000000000);
  *(v0 + 16) = 0;
  if (*(v0 + 48))
  {
    goto LABEL_8;
  }

  v9 = *(v0 + 40);
  if (v9 < 1)
  {
    goto LABEL_8;
  }

  if (*(v0 + 88))
  {
    if (*(v0 + 144))
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v0 + 168) = *(v0 + 136) / v9;
    *(v0 + 172) = 0;
    if (*(v0 + 200))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v0 + 112) = *(v0 + 80) / v9;
  *(v0 + 116) = 0;
  if ((*(v0 + 144) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*(v0 + 200) & 1) == 0)
  {
LABEL_7:
    *(v0 + 224) = *(v0 + 192) / v9;
    *(v0 + 228) = 0;
  }

LABEL_8:
  sub_100058630(v1, v2, v3, v4, v5, v6, v7, v8);

  sub_1000081A4();
}

unint64_t sub_100008128(uint64_t a1)
{
  result = sub_100008150();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100008150()
{
  result = qword_1000ADFB0;
  if (!qword_1000ADFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ADFB0);
  }

  return result;
}

uint64_t sub_1000081A4()
{
  sub_100016548(0x6E69747465736552, 0xE900000000000067);
  *v0 = 0;
  if ((*(v0 + 48) & 1) == 0 && (*(v0 + 40) & 0x8000000000000000) != 0)
  {
    sub_1000877DC(17);

    v2._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v2);

    sub_100016548(0x6320656369766544, 0xEF203D20746E756FLL);

    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
  }

  *(v0 + 8) = 0;
  sub_100007AA0();
  *(v0 + 16) = 0;

  *(v0 + 56) = _swiftEmptyArrayStorage;

  *(v0 + 232) = _swiftEmptyArrayStorage;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 112) = 0;
  *(v0 + 116) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 168) = 0;
  *(v0 + 172) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 224) = 0;
  *(v0 + 228) = 1;
  return result;
}

uint64_t sub_10000831C()
{

  return swift_deallocObject();
}

uint64_t sub_100008428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100008464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000084AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100008504(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
  sub_100086E8C();
  return v5;
}

BOOL sub_1000085A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000864CC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 48);
  v12 = swift_checkMetadataState();
  v11(v12, AssociatedConformanceWitness);
  (*(v4 + 104))(v7, enum case for BetaEnrollment.Availability.unavailable(_:), v3);
  sub_10000E52C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability);
  v13 = sub_10008713C();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v14(v9, v3);
  return (v13 & 1) == 0;
}

unint64_t sub_1000087B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000864CC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  v11 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 48);
  v14 = swift_checkMetadataState();
  v18[1] = v11;
  v13(v14, AssociatedConformanceWitness);
  (*(v5 + 104))(v8, enum case for BetaEnrollment.Availability.unavailable(_:), v4);
  sub_10000E52C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability);
  LOBYTE(v11) = sub_10008713C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if (v11)
  {
    return 0;
  }

  result = (*(AssociatedConformanceWitness + 88))(v14, AssociatedConformanceWitness);
  if (result)
  {
    if (result >> 62)
    {
      v17 = sub_10008793C();
    }

    else
    {
      v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v17 > 0;
  }

  return result;
}

uint64_t sub_100008A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a6 + 48);
  swift_unknownObjectRetain();
  v9(a5, a6);
  swift_unknownObjectRelease();
  swift_getAssociatedTypeWitness();
  sub_10008739C();
  swift_getWitnessTable();
  return sub_10008783C();
}

BOOL sub_100008B14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000864CC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  v11 = *a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 48);
  v14 = swift_checkMetadataState();
  v19[1] = v11;
  v13(v14, AssociatedConformanceWitness);
  (*(v5 + 104))(v8, enum case for BetaEnrollment.Availability.unavailable(_:), v4);
  sub_10000E52C(&qword_1000ADD58, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability);
  LOBYTE(v11) = sub_10008713C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if (v11)
  {
    return 0;
  }

  v17 = (*(AssociatedConformanceWitness + 88))(v14, AssociatedConformanceWitness);
  if (!v17)
  {
    return 1;
  }

  if (v17 >> 62)
  {
    v18 = sub_10008793C();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v18 == 0;
}

uint64_t sub_100008D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v105 = a4;
  v96 = a3;
  v95 = a2;
  v103 = a7;
  v104 = a1;
  v9 = sub_100086A8C();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10008742C();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a6;
  v93 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for BetaSettingsSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getAssociatedConformanceWitness();
  v116 = v13;
  v117 = v15;
  v118 = v17;
  v119 = WitnessTable;
  v120 = v19;
  sub_100086FBC();
  sub_10008767C();
  v21 = type metadata accessor for BetaSettingsMultiSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  v116 = v13;
  v117 = v15;
  v118 = v21;
  v119 = WitnessTable;
  v120 = v19;
  sub_100086FBC();
  sub_10008767C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata3();
  v22 = sub_10008705C();
  v23 = swift_getWitnessTable();
  v116 = &type metadata for Never;
  v117 = v22;
  v118 = &protocol witness table for Never;
  v119 = v23;
  v85 = sub_100086C7C();
  sub_100086B9C();
  v25 = type metadata accessor for BetaSettingsToggleRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
  v116 = v13;
  v117 = v15;
  v118 = v25;
  v119 = WitnessTable;
  v120 = v19;
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  v26 = sub_10008705C();
  v27 = swift_getWitnessTable();
  v116 = &type metadata for Never;
  v117 = v26;
  v118 = &protocol witness table for Never;
  v119 = v27;
  sub_100086C7C();
  v28 = sub_100086B9C();
  v89 = *(v28 - 8);
  __chkstk_darwin(v28);
  v80 = &v72 - v29;
  v30 = sub_10008695C();
  v90 = *(v30 - 8);
  __chkstk_darwin(v30);
  v86 = &v72 - v31;
  v75 = v30;
  v32 = sub_10008695C();
  v91 = *(v32 - 8);
  __chkstk_darwin(v32);
  v87 = &v72 - v33;
  sub_1000868BC();
  v78 = v32;
  v34 = sub_10008695C();
  v92 = *(v34 - 8);
  __chkstk_darwin(v34);
  v88 = &v72 - v35;
  v36 = sub_10000DAF0();
  v37 = swift_getWitnessTable();
  v114 = v36;
  v115 = v37;
  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v112 = v38;
  v113 = v39;
  v73 = swift_getWitnessTable();
  v110 = v73;
  v111 = &protocol witness table for _AppearanceActionModifier;
  v74 = swift_getWitnessTable();
  v108 = v74;
  v109 = &protocol witness table for _AppearanceActionModifier;
  v40 = swift_getWitnessTable();
  v76 = v40;
  v41 = sub_10000E52C(&qword_1000AE060, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  v106 = v40;
  v107 = v41;
  v82 = v34;
  v81 = swift_getWitnessTable();
  v116 = v34;
  v117 = v81;
  v83 = &opaque type descriptor for <<opaque return type of View.navigationBarTitleDisplayMode(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  v42 = __chkstk_darwin(OpaqueTypeMetadata2);
  v77 = &v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v79 = &v72 - v44;
  v45 = v80;
  v47 = v104;
  v46 = v105;
  v48 = v95;
  LOBYTE(v17) = v96;
  v49 = v93;
  v50 = v94;
  sub_100009990(v104, v95, v96, v105, v93, v94, v80);
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(v51 + 24) = v50;
  *(v51 + 32) = v47;
  *(v51 + 40) = v48;
  *(v51 + 48) = v17;
  *(v51 + 56) = v46;

  swift_unknownObjectRetain();
  v52 = v86;
  sub_100086DEC();

  (*(v89 + 8))(v45, v28);
  v53 = swift_allocObject();
  *(v53 + 16) = v49;
  *(v53 + 24) = v50;
  *(v53 + 32) = v47;
  *(v53 + 40) = v48;
  *(v53 + 48) = v17;
  LOBYTE(v47) = v17;
  v54 = v105;
  *(v53 + 56) = v105;
  v55 = v48;
  swift_unknownObjectRetain();

  v56 = v87;
  v57 = v75;
  sub_100086D2C();

  (*(v90 + 8))(v52, v57);
  v58 = swift_allocObject();
  *(v58 + 16) = v49;
  *(v58 + 24) = v50;
  *(v58 + 32) = v104;
  *(v58 + 40) = v55;
  *(v58 + 48) = v47;
  *(v58 + 56) = v54;
  swift_unknownObjectRetain();

  v59 = v97;
  v60 = v78;
  sub_10004B6F8(v78, v76);
  v61 = v88;
  sub_100086DAC();

  (*(v98 + 8))(v59, v99);
  (*(v91 + 8))(v56, v60);
  v63 = v100;
  v62 = v101;
  v64 = v102;
  (*(v101 + 104))(v100, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v102);
  v65 = v77;
  v66 = v82;
  v67 = v81;
  sub_100086D9C();
  (*(v62 + 8))(v63, v64);
  (*(v92 + 8))(v61, v66);
  v116 = v66;
  v117 = v67;
  swift_getOpaqueTypeConformance2();
  v68 = v79;
  v69 = OpaqueTypeMetadata2;
  sub_10004EDD8();
  v70 = *(v85 + 8);
  v70(v65, v69);
  sub_10004EDD8();
  return (v70)(v68, v69);
}

uint64_t sub_100009990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v100 = a4;
  v99 = a3;
  v97 = a1;
  v98 = a2;
  v106 = a7;
  v107 = a5;
  v108 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsToggleRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getAssociatedConformanceWitness();
  *&v122 = v13;
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  sub_10008700C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata2();
  *&v120 = &type metadata for Never;
  *(&v120 + 1) = sub_10008705C();
  *&v121 = &protocol witness table for Never;
  *(&v121 + 1) = swift_getWitnessTable();
  v109 = sub_100086C7C();
  v92 = *(v109 - 8);
  v14 = __chkstk_darwin(v109);
  v91 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v94 = &v88 - v16;
  v18 = type metadata accessor for BetaSettingsSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  *&v120 = v8;
  *(&v120 + 1) = v10;
  *&v121 = v18;
  *(&v121 + 1) = WitnessTable;
  *&v122 = v13;
  sub_100086FBC();
  sub_10008767C();
  v20 = type metadata accessor for BetaSettingsMultiSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  *&v120 = v8;
  *(&v120 + 1) = v10;
  *&v121 = v20;
  *(&v121 + 1) = WitnessTable;
  *&v122 = v13;
  sub_100086FBC();
  sub_10008767C();
  swift_getTupleTypeMetadata3();
  v21 = sub_10008705C();
  v22 = swift_getWitnessTable();
  *&v120 = &type metadata for Never;
  *(&v120 + 1) = v21;
  *&v121 = &protocol witness table for Never;
  *(&v121 + 1) = v22;
  v23 = sub_100086C7C();
  v90 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v89 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v93 = &v88 - v26;
  v101 = v27;
  v28 = sub_100086B9C();
  v96 = *(v28 - 8);
  __chkstk_darwin(v28);
  v95 = &v88 - v29;
  v102 = v30;
  v31 = sub_100086B9C();
  v104 = *(v31 - 8);
  v105 = v31;
  __chkstk_darwin(v31);
  v33 = &v88 - v32;
  v34 = v97;
  v35 = v98;
  v36 = v99;
  v37 = v100;
  *&v120 = sub_100008A30(v97, v98, v99, v100, v107, v108, sub_10000E638);
  swift_getWitnessTable();
  LOBYTE(v21) = sub_1000875DC();

  v103 = v33;
  if (v21)
  {
    LOBYTE(v118[0]) = v36 & 1;
    *(&v118[0] + 1) = v37;
    sub_100001EEC(&qword_1000AE068, &qword_10008AD10);
    sub_100086E8C();
    if (v112 == 1)
    {
      v38 = v101;
      v39 = v102;
      if (qword_1000ADB50 != -1)
      {
        swift_once();
      }

      v107 = &v124;
      v108 = (&v124 + 8);
      v100 = (&v123 + 8);
      v40 = &v123;
      v42 = qword_1000B3938;
      v41 = unk_1000B3940;
      v43 = byte_1000B3948;
      v44 = qword_1000B3950;
      v45 = qword_1000ADB58;

      if (v45 != -1)
      {
        swift_once();
      }

      v46 = unk_1000B3960;
      v47 = byte_1000B3968;
      v48 = qword_1000B3970;
      *&v120 = v42;
      *(&v120 + 1) = v41;
      *&v121 = v43;
      *(&v121 + 1) = v44;
      *&v122 = 0;
      *(&v122 + 1) = qword_1000B3958;
      v49 = 1;
      v51 = v107;
      v50 = v108;
      v52 = v100;
    }

    else
    {
      v50 = &v122;
      v51 = &v121 + 1;
      v52 = &v121;
      v40 = (&v120 + 8);
      v38 = v101;
      v39 = v102;
      if (qword_1000ADB40 != -1)
      {
        swift_once();
      }

      v49 = 0;
      v46 = unk_1000B3900;
      v47 = byte_1000B3908;
      v48 = qword_1000B3910;
      *&v120 = qword_1000B38F8;
    }

    *v40 = v46;
    *v52 = v47;
    *v51 = v48;
    *v50 = 0;
    v125 = v49;

    v114 = v122;
    v115 = v123;
    v116 = v124;
    v117 = v125;
    v112 = v120;
    v113 = v121;
    sub_10000DFBC(&v120, v118);
    sub_10000DFBC(&v120, v118);
    v67 = sub_10000DAF0();
    v68 = swift_getWitnessTable();
    v69 = v95;
    sub_10004B338(&v112, &type metadata for StatusInfoView, v38, v67, v68);
    v118[2] = v114;
    v118[3] = v115;
    v118[4] = v116;
    v119 = v117;
    v118[0] = v112;
    v118[1] = v113;
    sub_10000E018(v118);
    v110 = v67;
    v111 = v68;
    v70 = swift_getWitnessTable();
    v71 = v109;
    v72 = swift_getWitnessTable();
    v66 = v103;
    sub_10004B338(v69, v39, v71, v70, v72);
    sub_10000E06C(&v120);
    sub_10000E06C(&v120);
    (*(v96 + 8))(v69, v39);
  }

  else
  {
    v53 = v37;
    *(&v121 + 1) = &type metadata for Feature;
    *&v122 = sub_10000DF68();
    v54 = sub_1000860AC();
    sub_100001FF8(&v120);
    v55 = v36 & 1;
    if (v54)
    {
      v56 = v89;
      sub_10000B100(v34, v35, v55, v53, v107, v108);
      v57 = v101;
      v58 = swift_getWitnessTable();
      sub_10004EDD8();
      v59 = *(v90 + 8);
      v59(v56, v57);
      sub_10004EDD8();
      v60 = sub_10000DAF0();
      v61 = v95;
      sub_10004B430(v56, &type metadata for StatusInfoView, v57, v60, v58);
      v126 = v60;
      v127 = v58;
      v62 = v102;
      v63 = swift_getWitnessTable();
      v64 = v109;
      v65 = swift_getWitnessTable();
      v66 = v103;
      sub_10004B338(v61, v62, v64, v63, v65);
      (*(v96 + 8))(v61, v62);
      v59(v56, v57);
      v59(v93, v57);
    }

    else
    {
      v73 = v91;
      sub_10000B31C(v34, v35, v55, v37, v107, v108);
      v74 = v109;
      v75 = swift_getWitnessTable();
      sub_10004EDD8();
      v76 = *(v92 + 8);
      v76(v73, v74);
      sub_10004EDD8();
      v77 = sub_10000DAF0();
      v78 = swift_getWitnessTable();
      v132 = v77;
      v133 = v78;
      v79 = v102;
      v80 = swift_getWitnessTable();
      v81 = v103;
      sub_10004B430(v73, v79, v74, v80, v75);
      v76(v73, v74);
      v76(v94, v74);
      v66 = v81;
    }
  }

  v82 = sub_10000DAF0();
  v83 = swift_getWitnessTable();
  v130 = v82;
  v131 = v83;
  v84 = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v128 = v84;
  v129 = v85;
  v86 = v105;
  swift_getWitnessTable();
  sub_10004EDD8();
  return (*(v104 + 8))(v66, v86);
}

void sub_10000A548(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v12 - 8);
  v14 = aBlock - v13;
  v15 = sub_10008742C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1000873FC();

  swift_unknownObjectRetain();
  v16 = sub_1000873EC();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 64) = a3;
  *(v17 + 72) = a4;
  sub_100016C64(0, 0, v14, &unk_100088E60, v17);

  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;
  aBlock[4] = sub_10000DEF0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023E30;
  aBlock[3] = &unk_1000A6EC0;
  v20 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v21 = [v18 scheduledTimerWithTimeInterval:0 repeats:v20 block:5.0];
  _Block_release(v20);
}

uint64_t sub_10000A790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_10000A834, v10, v9);
}

uint64_t sub_10000A834()
{
  v1 = *(v0[4] + 88);
  swift_unknownObjectRetain();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10000A94C;
  v3 = v0[3];
  v4 = v0[4];

  return v6(1, v3, v4);
}

uint64_t sub_10000A94C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10000EAF0, v3, v2);
}

uint64_t sub_10000AA90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_10008742C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1000873FC();

  swift_unknownObjectRetain();
  v16 = sub_1000873EC();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 64) = a3;
  *(v17 + 72) = a4;
  sub_100016C64(0, 0, v14, &unk_100088E50, v17);
}

uint64_t sub_10000ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a8;
  v8[4] = v13;
  v8[2] = a5;
  sub_1000873FC();
  v8[5] = sub_1000873EC();
  v10 = sub_1000873DC();
  v8[6] = v10;
  v8[7] = v9;

  return _swift_task_switch(sub_10000AC90, v10, v9);
}

uint64_t sub_10000AC90()
{
  v1 = *(v0[4] + 88);
  swift_unknownObjectRetain();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10000A94C;
  v3 = v0[3];
  v4 = v0[4];

  return (v6)(0, v3, v4);
}

uint64_t sub_10000ADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a2;
  sub_1000873FC();
  v6[5] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_10000AE44, v8, v7);
}

uint64_t sub_10000AE44()
{
  v1 = *(v0[4] + 64);
  swift_unknownObjectRetain();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10000AF5C;
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v3);
}

uint64_t sub_10000AF5C()
{
  v2 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_10000EAF0;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_10000B0A0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10000B0A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B100(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  sub_10008767C();
  type metadata accessor for BetaSettingsMultiSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  sub_100086FBC();
  sub_10008767C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  return sub_100086C6C();
}

uint64_t sub_10000B31C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsToggleRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  sub_10008700C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  return sub_100086C6C();
}

uint64_t sub_10000B524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = a4;
  v56 = a3;
  v66 = a2;
  v67 = a1;
  v64 = a7;
  v61 = sub_100001EEC(&qword_1000AE078, &qword_100088E70);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v52 = &v52 - v9;
  v62 = sub_100001EEC(&qword_1000AE048, &qword_100088E20);
  v10 = __chkstk_darwin(v62);
  v63 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v52 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_10008739C();
  v54 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for BetaSettingsToggleRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getAssociatedConformanceWitness();
  v77 = v14;
  v78 = v16;
  v79 = v18;
  v80 = WitnessTable;
  v81 = v20;
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  v21 = sub_10008700C();
  v65 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v52 - v25;
  v68 = a5;
  v69 = a6;
  v27 = a6;
  v70 = v67;
  v71 = v66;
  v28 = v56;
  v72 = v56;
  v29 = v57;
  v73 = v57;
  v76[7] = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v31 = sub_100006454(&qword_1000AE0B8, &qword_1000AE050, &qword_100088E28, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v76[5] = v30;
  v76[6] = v31;
  v32 = swift_getWitnessTable();
  sub_100086FEC();
  v76[2] = &protocol witness table for EmptyView;
  v76[3] = v32;
  v76[4] = &protocol witness table for EmptyView;
  v33 = swift_getWitnessTable();
  v58 = v26;
  v53 = v33;
  sub_10004EDD8();
  v55 = *(v65 + 8);
  v55(v24, v21);
  v34 = v66;
  v35 = v29;
  v36 = v29;
  v37 = v54;
  sub_100008A30(v67, v66, v28, v35, v54, v27, sub_10000E638);
  v38 = sub_10008736C();

  if (v38 < 3)
  {
    v44 = 1;
    v45 = v61;
    v41 = v59;
    v46 = v60;
  }

  else
  {
    v39 = v52;
    sub_10000C108(v67, v34, v28 & 1, v36, v37, v27);
    v40 = v60;
    v41 = v59;
    v42 = v39;
    v43 = v61;
    (*(v60 + 32))(v59, v42, v61);
    v44 = 0;
    v45 = v43;
    v46 = v40;
  }

  (*(v46 + 56))(v41, v44, 1, v45);
  v47 = v58;
  (*(v65 + 16))(v24, v58, v21);
  v77 = v24;
  v48 = v63;
  sub_10000E4A4(v41, v63, &qword_1000AE048, &qword_100088E20);
  v78 = v48;
  v76[0] = v21;
  v76[1] = v62;
  v74 = v53;
  v75 = sub_10000E0D8();
  sub_10004B528(&v77, 2uLL, v76);
  sub_10000649C(v41, &qword_1000AE048, &qword_100088E20);
  v49 = v47;
  v50 = v55;
  v55(v49, v21);
  sub_10000649C(v48, &qword_1000AE048, &qword_100088E20);
  return v50(v24, v21);
}

uint64_t sub_10000BBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a3;
  v35 = a1;
  v36 = a2;
  v40 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for BetaSettingsToggleRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v34 = v11;
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getAssociatedConformanceWitness();
  v46 = v11;
  v47 = v13;
  v48 = v15;
  v49 = WitnessTable;
  v50 = v32;
  v16 = sub_100086FBC();
  v38 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  v19 = sub_10008695C();
  v39 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v31 - v23;
  v46 = sub_100008A30(v35, v36, v37, a4, a5, a6, sub_10000E638);
  v41 = a5;
  v42 = a6;
  swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v30 = swift_getWitnessTable();
  sub_100086F9C();
  sub_10008689C();
  sub_10008703C();
  sub_1000868AC();

  v45 = v30;
  v26 = swift_getWitnessTable();
  sub_100086D0C();

  (*(v38 + 8))(v18, v16);
  v27 = sub_100006454(&qword_1000AE0B8, &qword_1000AE050, &qword_100088E28, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v43 = v26;
  v44 = v27;
  swift_getWitnessTable();
  sub_10004EDD8();
  v28 = *(v39 + 8);
  v28(v22, v19);
  sub_10004EDD8();
  return (v28)(v24, v19);
}

uint64_t sub_10000C068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1000877EC();
}

uint64_t sub_10000C108(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100001EEC(&qword_1000AE098, &qword_100088E78);
  sub_100006454(&qword_1000AE090, &qword_1000AE098, &qword_100088E78, &protocol conformance descriptor for TupleView<A>);
  return sub_100086FEC();
}

uint64_t sub_10000C1B8@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v118 = a5;
  v122 = a3;
  v119 = a2;
  v123 = a1;
  v106 = a7;
  v102 = sub_100001EEC(&qword_1000AE078, &qword_100088E70);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v92 = &v91 - v9;
  v103 = sub_100001EEC(&qword_1000AE048, &qword_100088E20);
  v10 = __chkstk_darwin(v103);
  v105 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v104 = &v91 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for BetaSettingsMultiSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getAssociatedConformanceWitness();
  v135 = v14;
  v136 = v16;
  v115 = v18;
  v137 = v18;
  v138 = WitnessTable;
  v139 = v20;
  v21 = sub_100086FBC();
  v98 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v94 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v93 = &v91 - v24;
  v113 = v25;
  v117 = sub_10008767C();
  v124 = *(v117 - 8);
  v26 = __chkstk_darwin(v117);
  v114 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = &v91 - v28;
  v30 = type metadata accessor for BetaSettingsSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v29);
  v109 = v14;
  v135 = v14;
  v136 = v16;
  v137 = v30;
  v138 = WitnessTable;
  v108 = WitnessTable;
  v107 = v20;
  v139 = v20;
  v31 = sub_100086FBC();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v91 - v36;
  v111 = sub_10008767C();
  v121 = *(v111 - 8);
  v38 = __chkstk_darwin(v111);
  v40 = &v91 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v120 = &v91 - v41;
  v42 = v118;
  v116 = a4;
  v43 = sub_100008A30(v123, v119, v122, a4, v118, a6, sub_10000E574);
  v44 = sub_10008736C();
  v100 = v31;
  v99 = v30;
  if (v44 < 1)
  {

    (*(v32 + 56))(v40, 1, 1, v31);
    v134[4] = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  else
  {
    v97 = AssociatedTypeWitness;
    v135 = v43;
    __chkstk_darwin(v44);
    swift_getKeyPath();
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = a6;
    v89 = swift_getWitnessTable();
    sub_100086F9C();
    v125 = v89;
    swift_getWitnessTable();
    sub_10004EDD8();
    v46 = *(v32 + 8);
    v46(v35, v31);
    sub_10004EDD8();
    v46(v37, v31);
    v42 = v118;
    (*(v32 + 32))(v40, v35, v31);
    (*(v32 + 56))(v40, 0, 1, v31);
  }

  v47 = v121;
  v48 = *(v121 + 16);
  v49 = v111;
  v96 = v121 + 16;
  v95 = v48;
  v48(v120, v40, v111);
  v50 = *(v47 + 8);
  v110 = v40;
  v121 = v47 + 8;
  v97 = v50;
  v50(v40, v49);
  v51 = v119;
  v52 = sub_100008A30(v123, v119, v122 & 1, v116, v42, a6, sub_10000E50C);
  v53 = sub_10008736C();
  v54 = v42;
  v55 = v114;
  if (v53 < 1)
  {

    (*(v98 + 56))(v55, 1, 1, v113);
    v134[3] = swift_getWitnessTable();
    swift_getWitnessTable();
    v63 = v54;
  }

  else
  {
    v135 = v52;
    __chkstk_darwin(v53);
    swift_getKeyPath();
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    *(v56 + 24) = a6;
    v90 = swift_getWitnessTable();
    v57 = v94;
    sub_100086F9C();
    v126 = v90;
    v58 = v113;
    swift_getWitnessTable();
    v59 = v93;
    sub_10004EDD8();
    v60 = v98;
    v61 = *(v98 + 8);
    v61(v57, v58);
    sub_10004EDD8();
    v61(v59, v58);
    v51 = v119;
    (*(v60 + 32))(v55, v57, v58);
    v62 = v58;
    v63 = v118;
    (*(v60 + 56))(v55, 0, 1, v62);
  }

  v64 = v124;
  v65 = *(v124 + 16);
  v66 = v117;
  v65(v112, v55, v117);
  v67 = *(v64 + 8);
  v124 = v64 + 8;
  v119 = v67;
  v67(v55, v66);
  v68 = v122;
  v69 = v123;
  v70 = v116;
  sub_100008A30(v123, v51, v122 & 1, v116, v63, a6, sub_10000E638);
  v71 = v51;
  v72 = sub_10008736C();

  if (v72 < 3)
  {
    v78 = 1;
    v75 = v104;
    v77 = v102;
    v74 = v101;
  }

  else
  {
    v73 = v92;
    sub_10000C108(v69, v71, v68 & 1, v70, v63, a6);
    v74 = v101;
    v75 = v104;
    v76 = v73;
    v77 = v102;
    (*(v101 + 32))(v104, v76, v102);
    v78 = 0;
  }

  (*(v74 + 56))(v75, v78, 1, v77);
  v79 = v110;
  v80 = v111;
  v95(v110, v120, v111);
  v135 = v79;
  v81 = v114;
  v82 = v112;
  v83 = v117;
  v65(v114, v112, v117);
  v136 = v81;
  v84 = v105;
  sub_10000E4A4(v75, v105, &qword_1000AE048, &qword_100088E20);
  v137 = v84;
  v134[0] = v80;
  v134[1] = v83;
  v134[2] = v103;
  v130 = swift_getWitnessTable();
  v129 = swift_getWitnessTable();
  v131 = swift_getWitnessTable();
  v128 = swift_getWitnessTable();
  v127 = swift_getWitnessTable();
  v132 = swift_getWitnessTable();
  v133 = sub_10000E0D8();
  sub_10004B528(&v135, 3uLL, v134);
  sub_10000649C(v75, &qword_1000AE048, &qword_100088E20);
  v85 = v82;
  v86 = v119;
  v119(v85, v83);
  v87 = v97;
  v97(v120, v80);
  sub_10000649C(v84, &qword_1000AE048, &qword_100088E20);
  v86(v81, v83);
  return v87(v110, v80);
}

uint64_t sub_10000D048(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_unknownObjectRetain();
  a4(v10, 0, AssociatedTypeWitness, AssociatedConformanceWitness);
  a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getWitnessTable();
  sub_10004EDD8();
  swift_unknownObjectRelease();

  sub_10004EDD8();
  swift_unknownObjectRelease();
}

uint64_t sub_10000D1AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = swift_unknownObjectRetain();
  sub_100004A04(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  type metadata accessor for BetaSettingsMultiSeedingRowView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  swift_getWitnessTable();
  sub_10004EDD8();
  swift_unknownObjectRelease();
  sub_10004EDD8();
  return swift_unknownObjectRelease();
}

uint64_t sub_10000D2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a7;
  v13 = sub_100001EEC(&qword_1000AE0A0, &qword_100088EB0);
  __chkstk_darwin(v13 - 8);
  v45 = &v43 - v14;
  v53 = sub_100001EEC(&qword_1000AE0A8, &qword_100088EB8);
  v15 = __chkstk_darwin(v53);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v48 = &v43 - v18;
  v19 = __chkstk_darwin(v17);
  v47 = &v43 - v20;
  __chkstk_darwin(v19);
  v22 = &v43 - v21;
  v23 = sub_100008A30(a1, a2, a3, a4, a5, a6, sub_10000E638);
  v58 = a5;
  v59 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = sub_100012190(sub_10000E2BC, v57, v23, AssociatedTypeWitness);

  v51 = a1;
  v52 = a4;
  v25 = sub_100008A30(a1, a2, a3, a4, a5, a6, sub_10000E638);
  v55 = a5;
  v56 = a6;
  v46 = sub_100012190(sub_10000E2E4, v54, v25, AssociatedTypeWitness);

  if (qword_1000ADB48 != -1)
  {
    swift_once();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  *(v26 + 32) = v51;
  *(v26 + 40) = a2;
  v44 = a3 & 1;
  *(v26 + 48) = a3 & 1;
  *(v26 + 56) = v52;

  swift_unknownObjectRetain();
  sub_100086EEC();
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = v43 & 1;
  v29 = &v22[*(v53 + 36)];
  *v29 = KeyPath;
  v29[1] = sub_10000E3E0;
  v29[2] = v28;
  if (qword_1000ADB60 != -1)
  {
    swift_once();
  }

  v30 = v45;
  sub_10008683C();
  v31 = sub_10008685C();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = swift_allocObject();
  *(v32 + 16) = a5;
  *(v32 + 24) = a6;
  v33 = v52;
  *(v32 + 32) = v51;
  *(v32 + 40) = a2;
  *(v32 + 48) = v44;
  *(v32 + 56) = v33;
  swift_unknownObjectRetain();

  v34 = v47;
  sub_100086EDC();
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v46 & 1;
  v37 = (v34 + *(v53 + 36));
  *v37 = v35;
  v37[1] = sub_10000EAEC;
  v37[2] = v36;
  v38 = v48;
  sub_10000E4A4(v22, v48, &qword_1000AE0A8, &qword_100088EB8);
  v39 = v49;
  sub_10000E4A4(v34, v49, &qword_1000AE0A8, &qword_100088EB8);
  v40 = v50;
  sub_10000E4A4(v38, v50, &qword_1000AE0A8, &qword_100088EB8);
  v41 = sub_100001EEC(&qword_1000AE0B0, qword_100088EF0);
  sub_10000E4A4(v39, v40 + *(v41 + 48), &qword_1000AE0A8, &qword_100088EB8);
  sub_10000649C(v34, &qword_1000AE0A8, &qword_100088EB8);
  sub_10000649C(v22, &qword_1000AE0A8, &qword_100088EB8);
  sub_10000649C(v39, &qword_1000AE0A8, &qword_100088EB8);
  return sub_10000649C(v38, &qword_1000AE0A8, &qword_100088EB8);
}

BOOL sub_10000D87C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = sub_10008672C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v17 - v10;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 72);
  v14 = swift_checkMetadataState();
  v13(v14, AssociatedConformanceWitness);
  (*(v6 + 104))(v9, *a4, v5);
  sub_10000E52C(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v11, v5);
  return v17[1] == v17[0];
}

unint64_t sub_10000DAF0()
{
  result = qword_1000AE058;
  if (!qword_1000AE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE058);
  }

  return result;
}

uint64_t sub_10000DB94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100002740;

  return sub_10000ADA8(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_10000DC58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100086A4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000DCC8(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000324C;

  return sub_10000ABEC(a1, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t sub_10000DDB8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10000DE00(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000324C;

  return sub_10000A790(a1, v5, v6, v7, v8, v9, v10, v4);
}

uint64_t sub_10000DF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000DF68()
{
  result = qword_1000AE070;
  if (!qword_1000AE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE070);
  }

  return result;
}

unint64_t sub_10000E0D8()
{
  result = qword_1000AE080;
  if (!qword_1000AE080)
  {
    sub_100003200(&qword_1000AE048, &qword_100088E20);
    sub_10000E15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE080);
  }

  return result;
}

unint64_t sub_10000E15C()
{
  result = qword_1000AE088;
  if (!qword_1000AE088)
  {
    sub_100003200(&qword_1000AE078, &qword_100088E70);
    sub_100006454(&qword_1000AE090, &qword_1000AE098, &qword_100088E78, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE088);
  }

  return result;
}

__n128 sub_10000E228(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10000E30C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 72);
  swift_unknownObjectRetain();
  v3(v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000E378@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100086A4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000E3F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10000E438()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 80);
  swift_unknownObjectRetain();
  v3(v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000E4A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000E658(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10008739C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for BetaSettingsSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_100086FBC();
  sub_10008767C();
  type metadata accessor for BetaSettingsMultiSeedingRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  sub_100086FBC();
  sub_10008767C();
  sub_100003200(&qword_1000AE048, &qword_100088E20);
  swift_getTupleTypeMetadata3();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C7C();
  sub_100086B9C();
  type metadata accessor for BetaSettingsToggleRowView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  sub_100086FBC();
  sub_100003200(&qword_1000AE050, &qword_100088E28);
  sub_10008695C();
  sub_10008700C();
  swift_getTupleTypeMetadata2();
  sub_10008705C();
  swift_getWitnessTable();
  sub_100086C7C();
  sub_100086B9C();
  sub_10008695C();
  sub_10008695C();
  sub_1000868BC();
  sub_10008695C();
  sub_10000DAF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000E52C(&qword_1000AE060, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_allocWithZone(NSMutableSet) init];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      v7 += 8;
      sub_100001EEC(qword_1000AE0C0, &qword_100089AE0);
      [v5 addObject:sub_100087A3C()];
      swift_unknownObjectRelease();
      --v6;
    }

    while (v6);
  }

  v8 = v5;
  sub_1000874AC();

  sub_10008792C();
  __break(1u);
}

uint64_t sub_10000EC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10000ECD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000ECF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000EEA4()
{
  result = qword_1000AE148;
  if (!qword_1000AE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE148);
  }

  return result;
}

Swift::Int sub_10000EF0C()
{
  v1 = *v0;
  sub_100087ADC();
  sub_100087AEC(v1);
  return sub_100087AFC();
}

Swift::Int sub_10000EF80(uint64_t a1)
{
  v2 = *v1;
  sub_100087ADC();
  sub_100087AEC(v2);
  return sub_100087AFC();
}

unint64_t sub_10000EFC4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000F298(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10000F040()
{
  result = qword_1000AE150;
  if (!qword_1000AE150)
  {
    sub_100003200(&qword_1000AE158, qword_1000890C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE150);
  }

  return result;
}

unint64_t sub_10000F0A8()
{
  result = qword_1000AE160;
  if (!qword_1000AE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE160);
  }

  return result;
}

uint64_t sub_10000F0FC(uint64_t a1)
{
  v2 = sub_10000F19C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000F138(uint64_t a1)
{
  v2 = sub_10000F19C();
  v3 = sub_10000F1F0();
  v4 = sub_10000F244();

  return Error<>._code.getter(a1, v2, v3, v4);
}

unint64_t sub_10000F19C()
{
  result = qword_1000AE168;
  if (!qword_1000AE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE168);
  }

  return result;
}

unint64_t sub_10000F1F0()
{
  result = qword_1000AE170;
  if (!qword_1000AE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE170);
  }

  return result;
}

unint64_t sub_10000F244()
{
  result = qword_1000AE178;
  if (!qword_1000AE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE178);
  }

  return result;
}

unint64_t sub_10000F298(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

__n128 sub_10000F2A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10000F2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t sub_10000F30C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10000F36C()
{
  sub_10000F3B0(v1);
  xmmword_1000B3B60 = v1[0];
  *algn_1000B3B70 = v1[1];
  xmmword_1000B3B80 = v2[0];
  result = *(v2 + 12);
  *(&xmmword_1000B3B80 + 12) = *(v2 + 12);
  return result;
}

double sub_10000F3B0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10008714C();
  v3 = MGGetSInt32Answer();

  v4 = sub_10008714C();
  v5 = MGGetStringAnswer();

  if (v5)
  {
    v6 = sub_10008715C();
    v8 = v7;
  }

  else
  {
    v8 = 0xE600000000000000;
    v6 = 0x4E574F4B4E55;
  }

  sub_10001092C(v6, v8, &v17);
  v9 = sub_10008714C();
  v10 = MGGetBoolAnswer();

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = sub_10008714C();
    v11 = MGGetBoolAnswer();
  }

  v13 = sub_100010D44(v3);
  v14 = sub_100010D68(v18, *(&v18 + 1), *v19, v19[8], *&v19[16], v19[24]);
  sub_1000877DC(18);
  v20._object = 0x800000010008E750;
  v20._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v20);
  sub_1000878DC();
  sub_100058430(0, 0xE000000000000000);

  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = *v19;
  result = *&v19[9];
  *(a1 + 41) = *&v19[9];
  *(a1 + 57) = v13;
  *(a1 + 58) = v14;
  *(a1 + 59) = v11;
  return result;
}

unint64_t sub_10000F5C4(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_10008782C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10000FEB8(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10000F8C4(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4 == 0;
      if (v4)
      {
        v6 = 0x6C6C69662ELL;
      }

      else
      {
        v6 = 0x616373646E616C2ELL;
      }

      if (v5)
      {
        v7 = 0xEA00000000006570;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      v11._countAndFlagsBits = v6;
      v11._object = v7;
      sub_1000871BC(v11);

      --v2;
    }

    while (v2);
  }

  v10 = sub_10000F9D8(a2);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000871BC(v12);

  return v10;
}

unint64_t sub_10000F9D8(char a1)
{
  result = 0x6F6C2E656C707061;
  switch(a1)
  {
    case 1:
      result = 0x7674656C707061;
      break;
    case 2:
      result = 0x63756F74646F7069;
      break;
    case 3:
      result = 0x656E6F687069;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 1684107369;
      break;
    case 6:
      result = 0x6D6F682E64617069;
      break;
    case 7:
      result = 0x63706F746B736564;
      break;
    case 8:
      result = 0x696E696D63616DLL;
      break;
    case 9:
      result = 0x696475747363616DLL;
      break;
    case 10:
      result = 0x672E6F727063616DLL;
      break;
    case 11:
      result = 0x672E6F727063616DLL;
      break;
    case 12:
      result = 0x672E6F727063616DLL;
      break;
    case 13:
      result = 0x6F63706F7470616CLL;
      break;
    case 14:
      result = 0x746177656C707061;
      break;
    case 15:
      result = 0x646F70656D6F68;
      break;
    case 16:
      result = 0x2E646F70656D6F68;
      break;
    case 17:
    case 18:
      result = 0x6D646F70656D6F68;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0x6165707369666968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000FCBC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000F9D8(*a1);
  v5 = v4;
  if (v3 == sub_10000F9D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100087A1C();
  }

  return v8 & 1;
}

Swift::Int sub_10000FD44()
{
  v1 = *v0;
  sub_100087ADC();
  sub_10000F9D8(v1);
  sub_1000871AC();

  return sub_100087AFC();
}

uint64_t sub_10000FDA8(uint64_t a1)
{
  sub_10000F9D8(*v1);
  sub_1000871AC();
}

Swift::Int sub_10000FDFC(uint64_t a1)
{
  v2 = *v1;
  sub_100087ADC();
  sub_10000F9D8(v2);
  sub_1000871AC();

  return sub_100087AFC();
}

unint64_t sub_10000FE5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100012134(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10000FE8C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000F9D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unsigned __int8 *sub_10000FEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10008720C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100010444();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10008782C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100010444()
{
  v0 = sub_10008721C();
  v4 = sub_1000104C4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000104C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_10008768C();
    if (!v9 || (v10 = v9, v11 = sub_10001061C(v9, 0), v12 = sub_100010690(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_10008719C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10008719C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_10008782C();
LABEL_4:

  return sub_10008719C();
}

void *sub_10001061C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001EEC(&qword_1000AE180, &qword_100089240);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100010690(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000108B0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000871EC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_10008782C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000108B0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000871CC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000108B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000871FC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000871DC();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_10001092C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100006660(0xD000000000000014, 0x800000010008E770, a1, a2);
  v7 = v6[2];
  if (!v7)
  {
    v11 = 0;
    v8 = 0xE600000000000000;
    v9 = 0x6E776F6B6E55;
    v12 = 1;
    goto LABEL_74;
  }

  v9 = v6[4];
  v8 = v6[5];
  v10 = v6;

  if (v7 == 1)
  {
    v11 = 0;
    v12 = 1;
    goto LABEL_74;
  }

  result = v10;
  v14 = v10[6];
  v15 = v10[7];
  v16 = HIBYTE(v15) & 0xF;
  v17 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    v11 = 0;
    v12 = 1;
    if (v7 >= 3)
    {
      goto LABEL_71;
    }

LABEL_74:

    result = 0;
    v43 = 1;
LABEL_75:
    LOBYTE(v45[0]) = v12 & 1;
    v46 = v43 & 1;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v9;
    *(a3 + 24) = v8;
    *(a3 + 32) = v11;
    *(a3 + 40) = v12 & 1;
    *(a3 + 48) = result;
    *(a3 + 56) = v43 & 1;
    return result;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {

    v22 = sub_10000FEB8(v14, v15, 10);
    v12 = v44;

    result = v10;
    goto LABEL_67;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_78;
    }

    v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    while (1)
    {
      v20 = *v19;
      if (v20 == 43)
      {
        if (v17 < 1)
        {
          goto LABEL_81;
        }

        v29 = v17 - 1;
        if (v17 == 1)
        {
          goto LABEL_65;
        }

        v22 = 0;
        if (v19)
        {
          v30 = v19 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_65;
            }

            v32 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_65;
            }

            v22 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_65;
            }

            ++v30;
            if (!--v29)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v20 == 45)
      {
        if (v17 < 1)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v21 = v17 - 1;
        if (v17 == 1)
        {
          goto LABEL_65;
        }

        v22 = 0;
        if (v19)
        {
          v23 = v19 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_64;
            }
          }

LABEL_65:
          v22 = 0;
          LOBYTE(v19) = 1;
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_65;
        }

        v22 = 0;
        if (v19)
        {
          while (1)
          {
            v36 = *v19 - 48;
            if (v36 > 9)
            {
              goto LABEL_65;
            }

            v37 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_65;
            }

            v22 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              goto LABEL_65;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_64;
            }
          }
        }
      }

LABEL_66:
      v46 = v19;
      v12 = v19;
LABEL_67:
      if (v12)
      {
        v11 = 0;
      }

      else
      {
        v11 = v22;
      }

      if (v7 < 3)
      {
        goto LABEL_74;
      }

LABEL_71:
      if (result[2] >= 3uLL)
      {
        v41 = result[8];
        v42 = result[9];

        result = sub_10000F5C4(v41, v42);
        goto LABEL_75;
      }

      __break(1u);
LABEL_78:
      v19 = sub_10008782C();
      result = v10;
    }
  }

  v45[0] = v10[6];
  v45[1] = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v14 != 43)
  {
    if (v14 != 45)
    {
      if (v16)
      {
        v22 = 0;
        v38 = v45;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v16)
          {
LABEL_64:
            LOBYTE(v19) = 0;
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v16)
    {
      v19 = (v16 - 1);
      if (v16 != 1)
      {
        v22 = 0;
        v26 = v45 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v19)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_80;
  }

  if (v16)
  {
    v19 = (v16 - 1);
    if (v16 != 1)
    {
      v22 = 0;
      v33 = v45 + 1;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        v35 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v35 + v34;
        if (__OFADD__(v35, v34))
        {
          break;
        }

        ++v33;
        if (!--v19)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_100010D44(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return byte_1000893B2[a1 - 1];
  }
}

uint64_t sub_100010D68(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned __int8 a6)
{
  v12 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
  v13 = v12;
  if (v12)
  {
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 4;
    }
  }

  else
  {
    v14 = sub_100087A1C();
    if ((v14 & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
    {
      return 4;
    }
  }

  if (v13)
  {
    if ((a4 & 1) != 0 || (a3 - 10) < 0xFFFFFFFFFFFFFFF8)
    {
      v15 = (a5 - 3) >= 0xFFFFFFFFFFFFFFFELL || (a5 - 6) >= 0xFFFFFFFFFFFFFFFELL;
      v16 = !v15;
      if (((a4 | a6) & 1 | (a3 != 10) || v16) && (a4 & 1 | (a3 != 12) || (a6 & 1) != 0 || a5 != 8) && (a4 & 1 | (a3 != 14) || (a6 & 1) != 0 || a5 != 6))
      {
        if ((a4 | a6) & 1 | (a3 != 10) | (a5 != 3))
        {
          result = 3;
          if ((((a4 | a6 | (a3 != 10) | (a5 != 6)) & (a4 | (a3 != 11)) & (a4 | (a3 != 12))) & ((a4 | (a3 != 13)) & (a4 | (a3 != 14))) & 1) == 0 || !(a4 & 1 | (a3 != 15)))
          {
            return result;
          }

          v18 = 0;
          goto LABEL_36;
        }

        return 3;
      }
    }

    return 4;
  }

  v23 = a4 ^ 1;
  if ((sub_100087A1C() & 1) != 0 && (v23 & 1) != 0 && a3 == 2 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 3 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 4 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 5 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 6 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 7 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 8 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 9 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 1 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 2 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 4 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 5 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 12 && (a6 & 1) == 0 && a5 == 8 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 14 && (a6 & 1) == 0 && a5 == 6)
  {
    return 4;
  }

  if ((sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 3 || (sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 10 && (a6 & 1) == 0 && a5 == 6 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 11 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 12 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 13 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 14 || (sub_100087A1C() & v23 & 1) != 0 && a3 == 15)
  {
    return 3;
  }

  v18 = a1 == 0x6363416F69647541;
  if (a1 == 0x6363416F69647541 && a2 == 0xEE0079726F737365)
  {
    v18 = 1;
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 15;
    }

    goto LABEL_39;
  }

LABEL_36:
  if ((sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
  {
    return 15;
  }

LABEL_39:
  if (v18 && a2 == 0xEE0079726F737365)
  {
    if ((a4 & 1) != 0 || a3 != 6)
    {
      if ((a4 & 1) != 0 || a3 != 5)
      {
        v19 = 0;
        v20 = a1 == 1684099177;
        goto LABEL_46;
      }

      return 17;
    }

    return 15;
  }

  v24 = a4 ^ 1;
  if ((sub_100087A1C() & 1) != 0 && (v24 & 1) != 0 && a3 == 6)
  {
    return 15;
  }

  if ((sub_100087A1C() & v24 & 1) != 0 && a3 == 5)
  {
    return 17;
  }

  v19 = a2 == 0xE400000000000000;
  v20 = a1 == 1684099177;
  if (a1 == 1684099177 && a2 == 0xE400000000000000)
  {
    v22 = 1;
    v19 = 1;
    v20 = 1;
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 6;
    }

    goto LABEL_110;
  }

LABEL_46:
  v21 = sub_100087A1C();
  v22 = 0;
  if ((v21 & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
  {
    return 6;
  }

LABEL_110:
  if (!v20 || a2 != 0xE400000000000000)
  {
    v39 = v22;
    v29 = a4 ^ 1;
    if (((sub_100087A1C() & 1) == 0 || (v29 & 1) == 0 || a3 != 2) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 3) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 4) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 5) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 6) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 7) && ((sub_100087A1C() & v29 & 1) == 0 || a3 != 11) && ((sub_100087A1C() & 1) == 0 || (a4 & 1) != 0 || a3 != 12 || (a6 & 1) != 0 || a5 != 1) && ((sub_100087A1C() & 1) == 0 || (a4 & 1) != 0 || a3 != 12 || (a6 & 1) != 0 || a5 != 2))
    {
      if ((sub_100087A1C() & v29 & 1) != 0 && a3 == 8 || (sub_100087A1C() & v29 & 1) != 0 && a3 == 13 || (sub_100087A1C() & v29 & 1) != 0 && a3 == 14 || (sub_100087A1C() & v29 & 1) != 0 && a3 == 12)
      {
        return 5;
      }

      goto LABEL_188;
    }

    return 6;
  }

  v26 = (a3 - 8) < 0xFFFFFFFFFFFFFFFALL && a3 != 11;
  if ((a4 & 1) == 0 && !v26)
  {
    return 6;
  }

  v39 = v22;
  if ((a4 & 1) == 0 && a3 == 12 && (a6 & 1) == 0 && (a5 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    return 6;
  }

  v28 = (a3 & 0xFFFFFFFFFFFFFFFBLL) != 8 && (a3 - 15) < 0xFFFFFFFFFFFFFFFELL;
  if ((a4 & 1) == 0 && !v28)
  {
    return 5;
  }

LABEL_188:
  if (a1 == 1685016681 && v19)
  {
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 2;
    }
  }

  else if ((sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
  {
    return 2;
  }

  if (a1 == 1685016681 && a2 == 0xE400000000000000)
  {
    v30 = 0;
    v32 = (a3 - 7) < 0xFFFFFFFFFFFFFFFBLL && a3 != 9;
    if ((a4 & 1) != 0 || v32)
    {
      goto LABEL_205;
    }

    return 2;
  }

  v33 = a4 ^ 1;
  if ((sub_100087A1C() & 1) != 0 && (v33 & 1) != 0 && a3 == 2 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 3 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 4 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 5 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 6 || (sub_100087A1C() & v33 & 1) != 0 && a3 == 9)
  {
    return 2;
  }

  v30 = a1 == 0x6F725063614DLL;
  if (a1 == 0x6F725063614DLL && a2 == 0xE600000000000000)
  {
    v30 = 1;
    if ((a4 & 1) == 0 && a3 == 1)
    {
      return 10;
    }

    goto LABEL_208;
  }

LABEL_205:
  if ((sub_100087A1C() & 1) != 0 && (a4 & 1) == 0 && a3 == 1)
  {
    return 10;
  }

LABEL_208:
  if (v30 && a2 == 0xE600000000000000)
  {
    if ((a4 & 1) != 0 || (a3 - 7) < 0xFFFFFFFFFFFFFFFBLL)
    {
      if ((a4 & 1) == 0 && a3 == 6)
      {
        return 11;
      }

      if ((a4 & 1) == 0 && a3 == 7)
      {
        return 12;
      }

      if ((a4 & 1) == 0 && a3 == 13)
      {
        return 9;
      }

      goto LABEL_263;
    }

    return 10;
  }

  v34 = a4 ^ 1;
  if ((sub_100087A1C() & 1) != 0 && (v34 & 1) != 0 && a3 == 2 || (sub_100087A1C() & v34 & 1) != 0 && a3 == 3 || (sub_100087A1C() & v34 & 1) != 0 && a3 == 4 || (sub_100087A1C() & v34 & 1) != 0 && a3 == 5 || (sub_100087A1C() & v34 & 1) != 0 && a3 == 6)
  {
    return 10;
  }

  if ((sub_100087A1C() & v34 & 1) != 0 && a3 == 6)
  {
    return 11;
  }

  if ((sub_100087A1C() & v34 & 1) != 0 && a3 == 7)
  {
    return 12;
  }

  if ((sub_100087A1C() & v34 & 1) != 0 && a3 == 13)
  {
    return 9;
  }

LABEL_263:
  if (a1 == 1667321193 && v19 || (sub_100087A1C() & 1) != 0 || a1 == 0x6F725063614D69 && a2 == 0xE700000000000000 || (sub_100087A1C() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x696E694D63614DLL && a2 == 0xE700000000000000 || (sub_100087A1C() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x416B6F6F4263614DLL && a2 == 0xEA00000000007269 || (sub_100087A1C() & 1) != 0)
  {
    return 13;
  }

  result = 13;
  if (a1 != 0x506B6F6F4263614DLL || a2 != 0xEA00000000006F72)
  {
    v35 = sub_100087A1C();
    v36 = v13 | v35;
    result = (v35 & 1) != 0 ? 13 : 3;
    if ((v36 & 1) == 0)
    {
      v37 = sub_100087A1C();
      v38 = v39 | v37;
      result = (v37 & 1) != 0 ? 3 : 5;
      if ((v38 & 1) == 0)
      {
        if (sub_100087A1C())
        {
          return 5;
        }

        if (a1 == 0x5654656C707041 && a2 == 0xE700000000000000 || (sub_100087A1C() & 1) != 0)
        {
          return 1;
        }

        else
        {
          result = 14;
          if (a1 != 0x6863746157 || a2 != 0xE500000000000000)
          {
            if (sub_100087A1C())
            {
              return 14;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceIcon(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceIcon(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100011FC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100011FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100012024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100012088()
{
  result = qword_1000AE188;
  if (!qword_1000AE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE188);
  }

  return result;
}

unint64_t sub_1000120E0()
{
  result = qword_1000AE190;
  if (!qword_1000AE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE190);
  }

  return result;
}

unint64_t sub_100012134(uint64_t a1, uint64_t a2)
{
  v2 = sub_100087A2C();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100012190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10008739C();
  swift_getWitnessTable();
  sub_10008723C();
  return v5;
}

uint64_t sub_10001223C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*a1 == 1)
  {
    result = (*(v3 + 24))(a2);
  }

  else
  {
    result = 0;
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_100012298(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (result + 32);
  LOBYTE(result) = 1;
  do
  {
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      if (result)
      {
        if (*(a2 + 16))
        {
          break;
        }
      }

      result = 0;
      if (!--v2)
      {
        return result;
      }
    }

    result = v4 == *(a2 + 32);
    --v2;
  }

  while (v2);
  return result;
}

__n128 sub_1000122E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000122FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100012344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100012394(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000123A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000123F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_100012440(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_100012454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_10001249C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000124F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100012504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10001254C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000125AC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (v2 == 2)
  {
    sub_100012B4C();
    swift_allocError();
    *v3 = xmmword_1000893C0;
    return swift_willThrow();
  }

  else
  {
    v7 = *v1;
    v6 = *(v1 + 8);
    v8 = objc_allocWithZone(NSNumber);

    v9 = [v8 initWithBool:v2 & 1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    sub_100072DE8(v9, v7, v6, isUniquelyReferenced_nonNull_native);

    *a1 = v11;
  }

  return result;
}

unint64_t sub_1000126A0()
{
  result = qword_1000AE1D8;
  if (!qword_1000AE1D8)
  {
    sub_1000126F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE1D8);
  }

  return result;
}

unint64_t sub_1000126F8()
{
  result = qword_1000AE1E0;
  if (!qword_1000AE1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AE1E0);
  }

  return result;
}

uint64_t sub_100012744(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {

    v8 = a4;
    v21._countAndFlagsBits = 0x6E69616D6F44;
    v21._object = 0xE600000000000000;
    sub_1000871BC(v21);
    v9 = a2;
    v10 = [v8 domain];
    if (!v10)
    {
      sub_10008715C();
      v10 = sub_10008714C();
    }

    v11 = [objc_allocWithZone(NSString) initWithString:v10];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *a1;
    sub_100072DE8(v11, v9, a3, isUniquelyReferenced_nonNull_native);

    *a1 = v18;

    v22._countAndFlagsBits = 1701080899;
    v22._object = 0xE400000000000000;
    sub_1000871BC(v22);
    v13 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v8, "code")}];
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a1;
    sub_100072DE8(v13, a2, a3, v14);

    *a1 = v19;
  }

  else
  {
    sub_100012B4C();
    swift_allocError();
    *v16 = xmmword_1000893C0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100012960(uint64_t *a1)
{
  if (*(v1 + 24))
  {
    sub_100012B4C();
    swift_allocError();
    *v2 = xmmword_1000893C0;
    return swift_willThrow();
  }

  else
  {
    v6 = *(v1 + 8);
    v5 = *(v1 + 16);
    v7 = *v1;
    v8 = objc_allocWithZone(NSNumber);

    v9 = [v8 initWithInteger:v5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    sub_100072DE8(v9, v7, v6, isUniquelyReferenced_nonNull_native);

    *a1 = v11;
  }

  return result;
}

uint64_t sub_100012A50(uint64_t *a1)
{
  if (*(v1 + 20))
  {
    sub_100012B4C();
    swift_allocError();
    *v2 = xmmword_1000893C0;
    return swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 16);
    v7 = *v1;
    v6 = *(v1 + 8);
    v8 = objc_allocWithZone(NSNumber);

    LODWORD(v9) = v5;
    v10 = [v8 initWithFloat:v9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    sub_100072DE8(v10, v7, v6, isUniquelyReferenced_nonNull_native);

    *a1 = v12;
  }

  return result;
}

unint64_t sub_100012B4C()
{
  result = qword_1000AE2A8;
  if (!qword_1000AE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE2A8);
  }

  return result;
}

uint64_t sub_100012BA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100012BB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100012BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100012C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100012C94()
{
  sub_1000871BC(v0[2]);
  v25._countAndFlagsBits = 34;
  v25._object = 0xE100000000000000;
  sub_1000871BC(v25);
  v1 = sub_10006EC0C(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_10006EC0C((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[16 * v3];
  *(v4 + 4) = 574451054;
  *(v4 + 5) = 0xE400000000000000;
  object = v0->_object;
  if (object)
  {
    countAndFlagsBits = v0->_countAndFlagsBits;
    sub_1000871BC(v0[1]);
    v26._countAndFlagsBits = 2629666;
    v26._object = 0xE300000000000000;
    sub_1000871BC(v26);
    v27._countAndFlagsBits = countAndFlagsBits;
    v27._object = object;
    sub_1000871BC(v27);
    v28._countAndFlagsBits = 41;
    v28._object = 0xE100000000000000;
    sub_1000871BC(v28);
    v8 = *(v1 + 2);
    v7 = *(v1 + 3);
    if (v8 >= v7 >> 1)
    {
      v1 = sub_10006EC0C((v7 > 1), v8 + 1, 1, v1);
    }

    *(v1 + 2) = v8 + 1;
    v9 = &v1[16 * v8];
    *(v9 + 4) = 0x223D70756F7267;
    *(v9 + 5) = 0xE700000000000000;
  }

  v10 = v0[4]._object;
  if (v10)
  {
    v11 = v0[4]._countAndFlagsBits;
    sub_1000871BC(v0[5]);
    v29._countAndFlagsBits = 2629666;
    v29._object = 0xE300000000000000;
    sub_1000871BC(v29);
    v30._countAndFlagsBits = v11;
    v30._object = v10;
    sub_1000871BC(v30);
    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    sub_1000871BC(v31);
    v13 = *(v1 + 2);
    v12 = *(v1 + 3);
    if (v13 >= v12 >> 1)
    {
      v1 = sub_10006EC0C((v12 > 1), v13 + 1, 1, v1);
    }

    *(v1 + 2) = v13 + 1;
    v14 = &v1[16 * v13];
    *(v14 + 4) = 0x223D72696170;
    *(v14 + 5) = 0xE600000000000000;
  }

  v15 = v0[6]._object;
  if (v15)
  {
    v16 = v0[6]._countAndFlagsBits;
    sub_1000871BC(v0[7]);
    v32._countAndFlagsBits = 2629666;
    v32._object = 0xE300000000000000;
    sub_1000871BC(v32);
    v33._countAndFlagsBits = v16;
    v33._object = v15;
    sub_1000871BC(v33);
    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    sub_1000871BC(v34);
    v18 = *(v1 + 2);
    v17 = *(v1 + 3);
    if (v18 >= v17 >> 1)
    {
      v1 = sub_10006EC0C((v17 > 1), v18 + 1, 1, v1);
    }

    *(v1 + 2) = v18 + 1;
    v19 = &v1[16 * v18];
    *(v19 + 4) = 0x223D6D6F6F72;
    *(v19 + 5) = 0xE600000000000000;
  }

  sub_1000871BC(v0[3]);
  v21 = *(v1 + 2);
  v20 = *(v1 + 3);
  if (v21 >= v20 >> 1)
  {
    v1 = sub_10006EC0C((v20 > 1), v21 + 1, 1, v1);
  }

  *(v1 + 2) = v21 + 1;
  v22 = &v1[16 * v21];
  *(v22 + 4) = 1030513773;
  *(v22 + 5) = 0xE400000000000000;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  sub_100012FE8();
  v23 = sub_10008712C();

  return v23;
}

unint64_t sub_100012FE8()
{
  result = qword_1000AE2B8[0];
  if (!qword_1000AE2B8[0])
  {
    sub_100003200(&qword_1000AE2B0, &qword_10008D800);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE2B8);
  }

  return result;
}

void sub_100013050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CarrySettingsDetailViewModel(255, *(a1 + 80), *(a1 + 88), a4);
  swift_getWitnessTable();
  sub_10008756C();
  sub_1000867FC();
  if (v4 <= 0x3F)
  {
    sub_10008767C();
    sub_1000867FC();
    if (v5 <= 0x3F)
    {
      sub_100015600();
      if (v6 <= 0x3F)
      {
        sub_100015650(319);
        if (v7 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100013210(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_1000875AC();
  if (!v19)
  {
    return sub_10008732C();
  }

  v41 = v19;
  v45 = sub_1000878BC();
  v32 = sub_1000878CC();
  sub_10008786C(v41);
  result = sub_10008759C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1000875EC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1000878AC();
      result = sub_1000875BC();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100013670(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100013728()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_1000137DC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100013894()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_100013948(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100013A00()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1000877DC(43);
  v38._object = 0x800000010008E860;
  v38._countAndFlagsBits = 0xD000000000000029;
  sub_1000871BC(v38);
  v37 = sub_100013EC0();
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  type metadata accessor for CarrySettingsDetailViewModel(255, v7, v8, v9);
  swift_getWitnessTable();
  v10 = sub_10008756C();
  swift_getWitnessTable();
  sub_1000879FC();

  sub_100059B74(v35, v36, v3, &off_1000A7690);

  sub_100013EC0();
  v11 = sub_10008752C();

  if (v11)
  {
    return sub_1000137DC(0);
  }

  v34 = v6;
  v35 = sub_100013EC0();
  __chkstk_darwin(v35);
  *(&v34 - 2) = v7;
  *(&v34 - 1) = v8;
  KeyPath = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v17 = sub_10008739C();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_100013210(sub_1000160A8, KeyPath, v10, v17, &type metadata for Never, WitnessTable, &protocol witness table for Never, v19);

  v35 = v20;
  __chkstk_darwin(v21);
  *(&v34 - 2) = v7;
  *(&v34 - 1) = v8;
  sub_10008739C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v22 = sub_10008724C();

  v23 = *(v1 + *(*v1 + 160));
  swift_unknownObjectRetain();
  sub_10008428C(v22, v23, v24, v25);
  swift_unknownObjectRelease();
  v26 = (v1 + *(*v1 + 144));
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26;

    sub_1000783F8(v28, v27);
  }

  v29 = sub_100013894();
  sub_100079618(v29 & 1);
  v30 = *(*v1 + 136);
  swift_beginAccess();
  v31 = v1 + v30;
  v32 = v34;
  sub_100016120(v31, v34);
  sub_100077A98(v32);

  sub_1000137DC(v33);
}

uint64_t sub_100013ED4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v3;
}

uint64_t sub_100013F88(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000867EC();
  return sub_100013A00();
}

uint64_t sub_100014044(uint64_t a1)
{
  v2 = *v1;
  sub_100014190(a1);
  type metadata accessor for CarrySettingsDetailViewModel(0, *(v2 + 80), *(v2 + 88), v3);
  sub_10008739C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_10008757C();
  sub_100013670(v4);
  swift_getWitnessTable();
  sub_10008676C();
  sub_10008679C();

  return sub_1000143F8();
}

uint64_t sub_100014190(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1000485E8(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  sub_10008739C();
  type metadata accessor for CarrySettingsDetailViewModel(0, v5, v4, v10);
  swift_getWitnessTable();
  v11 = sub_10008722C();

  v13 = 0;
  v25 = v11;
  v14 = 1 << *(v8 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v8 + 64);
  v17 = *(*v2 + 160);
  for (i = (v14 + 63) >> 6; v16; result = sub_10008737C())
  {
    v19 = v13;
LABEL_9:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = *(*(v8 + 56) + ((v19 << 9) | (8 * v20)));
    v22 = *(v2 + v17);

    swift_unknownObjectRetain();
    sub_10008428C(v21, v22, v23, v24);
    swift_unknownObjectRelease();
    sub_10008739C();
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v25;
    }

    v16 = *(v8 + 64 + 8 * v19);
    ++v13;
    if (v16)
    {
      v13 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000143F8()
{
  v1 = *v0;
  sub_100059B74(0xD000000000000019, 0x800000010008E840, *v0, &off_1000A7690);
  sub_100013EC0();
  type metadata accessor for CarrySettingsDetailViewModel(0, *(v1 + 80), *(v1 + 88), v2);
  swift_getWitnessTable();
  sub_10008756C();
  swift_getWitnessTable();
  sub_1000873BC();
  sub_10001365C();
  v3 = sub_10008751C();

  return sub_100013F88(v3);
}

uint64_t sub_100014574()
{
  v1[2] = v0;
  v1[3] = sub_1000873FC();
  v1[4] = sub_1000873EC();
  v3 = sub_1000873DC();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100014610, v3, v2);
}

uint64_t sub_100014610()
{
  v1 = sub_100013728();
  v0[7] = v1;
  if (v1)
  {
    v0[8] = sub_1000873EC();
    v3 = sub_1000873DC();

    return _swift_task_switch(sub_1000146E8, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000146E8()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100014754, v1, v2);
}

uint64_t sub_100014754()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000147B8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 120) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 32) = *v1;
  sub_1000873FC();
  *(v2 + 40) = sub_1000873EC();
  v4 = sub_1000873DC();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return _swift_task_switch(sub_1000148A4, v4, v3);
}

uint64_t sub_1000148A4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 120);
  *(v0 + 64) = *(*(v0 + 16) + *(**(v0 + 16) + 160));
  v4 = *(v1 + 88);
  *(v0 + 72) = v4;
  v5 = *(v1 + 80);
  *(v0 + 80) = v5;
  if (v3 == 1)
  {
    v15 = (*(v4 + 40) + **(v4 + 40));
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v0;
    v6[1] = sub_100014B38;
    v8 = *(v0 + 16);
    v9 = v2;
    v10 = v5;
    v11 = v4;
    v12 = v15;
  }

  else
  {
    v16 = (*(v4 + 72) + **(v4 + 72));
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    WitnessTable = swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_100014EC4;
    v8 = *(v0 + 16);
    v9 = v2;
    v10 = v5;
    v11 = v4;
    v12 = v16;
  }

  return v12(v8, v9, WitnessTable, v10, v11);
}

uint64_t sub_100014B38()
{
  v1 = *v0;
  v8 = *(*v0 + 72);
  v2 = *v0;

  v7 = (*(v8 + 48) + **(v8 + 48));
  v3 = swift_task_alloc();
  v1[12] = v3;
  *v3 = v2;
  v3[1] = sub_100014D20;
  v4 = v1[10];
  v5 = v1[9];

  return v7(v4, v5);
}

uint64_t sub_100014D20(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_10000EAF0;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_100014E4C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100014E4C()
{
  v1 = *(v0 + 104);

  sub_100014044(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100014EC4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10000B0A0, v3, v2);
}

uint64_t sub_100014FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for CarrySettingsDetailViewModel(0, *(*a2 + 80), *(*a2 + 88), a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = _s11DeviceModelVMa_0(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  sub_1000879DC();
  v11 = *(v10 - 8);
  swift_allocObject();
  v12 = sub_1000872EC();
  (*(v11 + 16))(v13, a1, v10);
  sub_10008739C();
  v14 = *(a2 + *(*a2 + 160));
  swift_unknownObjectRetain();
  v17 = sub_10008428C(v12, v14, v15, v16);
  result = swift_unknownObjectRelease();
  *a3 = v17;
  return result;
}

uint64_t sub_1000151A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1000B3C40;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100015208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1000B3C40;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_100015274(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CarrySettingsDetailViewModel(255, a3, a4, a4);
  sub_10008739C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_10008727C() & 1;
}

uint64_t sub_10001532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  type metadata accessor for CarrySettingsDetailViewModel(255, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  sub_10008756C();
  v6 = sub_1000867FC();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v8 = *(*v4 + 104);
  sub_10008767C();
  v9 = sub_1000867FC();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = *(*v4 + 112);
  v11 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  (*(*(v11 - 8) + 8))(v4 + v10, v11);

  v7(v4 + *(*v4 + 128), v6);
  sub_100016368(v4 + *(*v4 + 136));

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100015590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10001532C(a1, a2, a3, a4);
  v5 = *(*v4 + 48);
  v6 = *(*v4 + 52);

  return _swift_deallocClassInstance(v4, v5, v6);
}

void sub_100015600()
{
  if (!qword_1000AE340)
  {
    v0 = sub_1000867FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AE340);
    }
  }
}

void sub_100015650(uint64_t a1)
{
  if (!qword_1000AE348)
  {
    sub_10008642C();
    v1 = sub_10008767C();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AE348);
    }
  }
}

uint64_t sub_1000156BC()
{
  v1 = *(v0 + *(*v0 + 120));

  return v1;
}

uint64_t sub_10001572C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_100014574();
}

uint64_t sub_1000157B8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000324C;

  return sub_1000147B8(a1);
}

uint64_t sub_10001584C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10008676C();
  *a2 = result;
  return result;
}

uint64_t sub_10001589C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v2[8] = swift_task_alloc();
  sub_1000873FC();
  v2[9] = sub_1000873EC();
  v4 = sub_1000873DC();

  return _swift_task_switch(sub_100015994, v4, v3);
}

uint64_t sub_100015994()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  sub_1000877DC(22);
  v14._object = 0x800000010008E8C0;
  v14._countAndFlagsBits = 0xD000000000000014;
  sub_1000871BC(v14);
  v5 = sub_10008642C();
  sub_1000879EC();
  sub_100059B74(0, 0xE000000000000000, v3, &off_1000A7690);

  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(v1, v4, v5);
  v8 = *(v6 + 56);
  v8(v1, 0, 1, v5);
  v9 = *(*v2 + 136);
  swift_beginAccess();
  sub_1000162F8(v1, v2 + v9);
  swift_endAccess();
  if (sub_100013728())
  {
    v10 = v0[8];
    v7(v10, v0[5], v5);
    v8(v10, 0, 1, v5);
    sub_100077A98(v10);
  }

  sub_100013948(1);
  if (sub_100013728())
  {
    sub_100079618(1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100015BC0(uint64_t a1)
{
  v2 = *v1;
  sub_1000877DC(37);
  v4._object = 0x800000010008E890;
  v4._countAndFlagsBits = 0xD000000000000023;
  sub_1000871BC(v4);
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  sub_100059B74(0, 0xE000000000000000, v2, &off_1000A7690);

  sub_100013948(0);
  result = sub_100013728();
  if (result)
  {
    sub_100079618(0);
  }

  return result;
}

uint64_t sub_100015CD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002740;

  return sub_10001589C(a1);
}

uint64_t sub_100015D70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000877FC();
  *a1 = result;
  return result;
}

uint64_t sub_100015DB8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100015E1C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100015E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001365C();
  *a1 = result;
  return result;
}

uint64_t sub_100015EB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100013728();
  *a1 = result;
  return result;
}

uint64_t sub_100015F08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100013EC0();
  *a1 = result;
  return result;
}

uint64_t sub_100015F60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100013894();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100015FDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100013EC0();
  *a1 = result;
  return result;
}

__n128 sub_10001602C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100016038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1000B3C40;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000160A8(uint64_t *a1)
{

  swift_getAtKeyPath();
}

uint64_t sub_100016120(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016190@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100013728();
  *a1 = result;
  return result;
}

uint64_t sub_1000161F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100013894();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100016258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001365C();
  *a1 = result;
  return result;
}

uint64_t sub_1000162F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016368(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100016438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t *a5, uint64_t *a6)
{
  a4(a3);
  sub_100001EEC(a5, a6);
  sub_10008716C();
  v8 = objc_allocWithZone(CULogHandle);
  v9 = sub_10008714C();
  v10 = sub_10008714C();

  v11 = [v8 initWithSubsystem:v9 category:v10];

  v12 = sub_10008714C();
  [v11 ulog:40 message:v12];
}

void sub_1000165B4(uint64_t a1, uint64_t a2)
{
  sub_100023B40(0, &qword_1000AE648, NSXPCConnection_ptr);
  sub_100001EEC(&qword_1000AE650, &qword_10008A0D8);
  sub_10008716C();
  v2 = objc_allocWithZone(CULogHandle);
  v3 = sub_10008714C();
  v4 = sub_10008714C();

  v5 = [v2 initWithSubsystem:v3 category:v4];

  v6 = sub_10008714C();
  [v5 ulog:40 message:v6];
}

void sub_1000166D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_100001EEC(a3, a4);
  sub_100001EEC(a5, a6);
  sub_10008716C();
  v8 = objc_allocWithZone(CULogHandle);
  v9 = sub_10008714C();
  v10 = sub_10008714C();

  v11 = [v8 initWithSubsystem:v9 category:v10];

  v12 = sub_10008714C();
  [v11 ulog:40 message:v12];
}

void sub_1000167FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100001EEC(a4, a5);
  sub_10008716C();
  v5 = objc_allocWithZone(CULogHandle);
  v6 = sub_10008714C();
  v7 = sub_10008714C();

  v8 = [v5 initWithSubsystem:v6 category:v7];

  v9 = sub_10008714C();
  [v8 ulog:40 message:v9];
}

uint64_t sub_100016950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E4A4(a3, v25 - v10, &qword_1000AEDC0, &qword_100088E40);
  v12 = sub_10008742C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000649C(v11, &qword_1000AEDC0, &qword_100088E40);
  }

  else
  {
    sub_10008741C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000873DC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10008717C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100001EEC(&qword_1000AE510, &qword_100089C68);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

      return v22;
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

  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100001EEC(&qword_1000AE510, &qword_100089C68);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100016C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000E4A4(a3, v25 - v10, &qword_1000AEDC0, &qword_100088E40);
  v12 = sub_10008742C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000649C(v11, &qword_1000AEDC0, &qword_100088E40);
  }

  else
  {
    sub_10008741C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000873DC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10008717C() + 32;
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

      sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);

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

  sub_10000649C(a3, &qword_1000AEDC0, &qword_100088E40);
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

uint64_t sub_100016F64()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v4 = __chkstk_darwin(v3 - 8);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v60 - v6;
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1000877DC(43);

  v74 = 0xD000000000000029;
  v75 = 0x800000010008E860;
  v7 = type metadata accessor for NetworkManager();
  v72 = v7;
  v8 = sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager, &unk_100088808);
  v73 = v8;
  swift_getKeyPath();
  v70 = v7;
  v71 = v8;
  swift_getKeyPath();
  sub_1000867DC();

  v9 = sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
  sub_100006454(&qword_1000AE5C0, &qword_1000AE5B8, &unk_10008DD20, &unk_10008D604);
  v63 = v9;
  v10 = sub_1000874CC();
  v12 = v11;

  v77._countAndFlagsBits = v10;
  v77._object = v12;
  sub_1000871BC(v77);

  v74 = v2;
  sub_100001EEC(&qword_1000AE5C8, &qword_100089E70);
  sub_10008716C();
  v13 = objc_allocWithZone(CULogHandle);
  v14 = sub_10008714C();
  v15 = sub_10008714C();

  v16 = [v13 initWithSubsystem:v14 category:v15];

  v17 = sub_10008714C();

  [v16 ulog:40 message:v17];

  v68 = v7;
  v69 = v8;
  swift_getKeyPath();
  v66 = v7;
  v67 = v8;
  swift_getKeyPath();
  sub_1000867DC();

  if ((v74 & 0xC000000000000001) != 0)
  {
    v18 = sub_10008772C();
  }

  else
  {
    v18 = *(v74 + 16);
  }

  __chkstk_darwin(v19);
  *(&v60 - 2) = v7;
  *(&v60 - 1) = v8;
  if (!v18)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v60 - 2) = v7;
    *(&v60 - 1) = v8;
    swift_getKeyPath();
    v74 = 0;

    return sub_1000867EC();
  }

  v20 = swift_getKeyPath();
  __chkstk_darwin(v20);
  *(&v60 - 2) = v7;
  *(&v60 - 1) = v8;
  swift_getKeyPath();
  v62 = v1;
  sub_1000867DC();

  v22 = v74;
  __chkstk_darwin(v21);
  v60 = v8;
  v61 = v7;
  *(&v60 - 2) = v7;
  *(&v60 - 1) = v8;
  v23 = swift_getKeyPath();

  v24 = sub_10001FEF4(v22, v23);

  v26 = v24[2];
  if (!v26)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_25:

    v40 = v62;
    v41 = *(v62 + *(*v62 + 160));
    swift_allocObject();

    v42 = sub_10002024C(v28, v41);

    v44 = (v40 + *(*v40 + 144));
    v45 = v44[1];
    v47 = v60;
    v46 = v61;
    if (v45)
    {
      v48 = *v44;
      __chkstk_darwin(v43);
      *(&v60 - 2) = v46;
      *(&v60 - 1) = v47;
      v49 = swift_getKeyPath();
      __chkstk_darwin(v49);
      *(&v60 - 2) = v46;
      *(&v60 - 1) = v47;
      swift_getKeyPath();
      v74 = v48;
      v75 = v45;

      v43 = sub_1000867EC();
    }

    __chkstk_darwin(v43);
    *(&v60 - 2) = v46;
    *(&v60 - 1) = v47;
    v50 = swift_getKeyPath();
    __chkstk_darwin(v50);
    *(&v60 - 2) = v46;
    *(&v60 - 1) = v47;
    swift_getKeyPath();
    sub_1000867DC();

    v52 = v74;
    __chkstk_darwin(v51);
    *(&v60 - 2) = v46;
    *(&v60 - 1) = v47;
    v53 = swift_getKeyPath();
    __chkstk_darwin(v53);
    *(&v60 - 2) = v46;
    *(&v60 - 1) = v47;
    swift_getKeyPath();
    LOBYTE(v74) = v52;

    sub_1000867EC();
    v54 = *(*v40 + 136);
    swift_beginAccess();
    v55 = v64;
    v56 = sub_10000E4A4(v40 + v54, v64, &qword_1000AE3E0, &unk_100089E60);
    __chkstk_darwin(v56);
    *(&v60 - 2) = v46;
    *(&v60 - 1) = v47;
    v57 = swift_getKeyPath();
    __chkstk_darwin(v57);
    *(&v60 - 2) = v46;
    *(&v60 - 1) = v47;
    swift_getKeyPath();
    sub_10000E4A4(v55, v65, &qword_1000AE3E0, &unk_100089E60);

    sub_1000867EC();
    v58 = sub_10000649C(v55, &qword_1000AE3E0, &unk_100089E60);
    __chkstk_darwin(v58);
    *(&v60 - 2) = v46;
    *(&v60 - 1) = v47;
    v59 = swift_getKeyPath();
    __chkstk_darwin(v59);
    *(&v60 - 2) = v46;
    *(&v60 - 1) = v47;
    swift_getKeyPath();
    v76 = v42;

    return sub_1000867EC();
  }

  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  while (v27 < v24[2])
  {
    v29 = v24[v27 + 4];
    v30 = *(v29 + 16);
    v31 = v28[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v32 <= v28[3] >> 1)
    {
      if (*(v29 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      v28 = sub_10006EE1C(isUniquelyReferenced_nonNull_native, v34, 1, v28);
      if (*(v29 + 16))
      {
LABEL_19:
        v35 = (v28[3] >> 1) - v28[2];
        result = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
        if (v35 < v30)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v36 = v28[2];
          v37 = __OFADD__(v36, v30);
          v38 = v36 + v30;
          if (v37)
          {
            goto LABEL_33;
          }

          v28[2] = v38;
        }

        goto LABEL_8;
      }
    }

    if (v30)
    {
      goto LABEL_31;
    }

LABEL_8:
    if (v26 == ++v27)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1000179E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  sub_1000873FC();
  v6[16] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[17] = v8;
  v6[18] = v7;

  return _swift_task_switch(sub_100017A7C, v8, v7);
}

uint64_t sub_100017A7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager, &unk_100088808);
    v3 = *(v2 + 32);
    v4 = type metadata accessor for NetworkManager();
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_100017C38;

    return v8(v4, v2);
  }

  else
  {
    v7 = v0[14];

    return _swift_task_switch(sub_100017F04, v7, 0);
  }
}

uint64_t sub_100017C38(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return _swift_task_switch(sub_100017D60, v4, v3);
}

uint64_t sub_100017D60()
{
  v1 = v0[19];
  v2 = v0[15];
  v0[11] = v0[21];
  v3 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_100001EEC(&qword_1000AE5A8, &qword_100089DA8);
  sub_100006454(&qword_1000AE5B0, &qword_1000AE5A8, &qword_100089DA8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v5 = sub_10008682C();

  *(v1 + *(*v1 + 152)) = v5;

  v6 = v0[14];

  return _swift_task_switch(sub_100017F04, v6, 0);
}

uint64_t sub_100017F04()
{
  v1 = *(*(v0 + 112) + 120);
  *(v0 + 176) = v1;

  return _swift_task_switch(sub_100017F7C, v1, 0);
}

uint64_t sub_100017F7C()
{

  v0[23] = sub_100074618(v1);

  v2 = v0[17];
  v3 = v0[18];

  return _swift_task_switch(sub_10001800C, v2, v3);
}

uint64_t sub_10001800C()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_100018470(v0[23]);

    v2 = sub_100082E2C(v1);

    v3 = swift_task_alloc();
    v4 = type metadata accessor for NetworkManager();
    *v3 = v4;
    v5 = sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager, &unk_100088808);
    v3[1] = v5;
    swift_getKeyPath();

    v6 = swift_task_alloc();
    *v6 = v4;
    v6[1] = v5;
    swift_getKeyPath();

    v0[12] = v2;

    sub_1000867EC();
    sub_100006454(&qword_1000AE578, &qword_1000AE570, &qword_100089D58, &unk_10008986C);
    sub_10008676C();
    sub_10008679C();

    sub_100018804();
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100018214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000877DC(18);

  sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v9._countAndFlagsBits = sub_1000872DC();
  sub_1000871BC(v9);

  sub_100059920(0xD000000000000010, 0x800000010008ECC0, a3, &off_1000A7690);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_100018470(a1);
    sub_100082E2C(v6);

    __chkstk_darwin(v7);
    type metadata accessor for NetworkManager();
    sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager, &unk_100088808);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    swift_getKeyPath();

    sub_1000867EC();
    sub_100006454(&qword_1000AE578, &qword_1000AE570, &qword_100089D58, &unk_10008986C);
    sub_10008676C();
    sub_10008679C();

    sub_100018804();
  }

  return result;
}

void *sub_100018470(uint64_t a1)
{
  v3 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  result = sub_1000189F4(a1);
  v27 = result;
  v9 = v8;
  v10 = _swiftEmptyArrayStorage;
  v30 = v1;
  v31 = _swiftEmptyArrayStorage;
  v11 = *(v8 + 16);
  v29 = *(*v1 + 160);
  if (v11)
  {
    v12 = 0;
    v28 = xmmword_100089AB0;
    while (v12 < *(v9 + 16))
    {
      v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      sub_10000E4A4(v9 + v13 + *(v4 + 72) * v12, v6, &qword_1000AE5D0, &qword_100089EB0);
      sub_100001EEC(&qword_1000AE628, &qword_10008A0C0);
      v14 = swift_allocObject();
      *(v14 + 16) = v28;
      sub_10000E4A4(v6, v14 + v13, &qword_1000AE5D0, &qword_100089EB0);
      v15 = *(v30 + v29);
      sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
      swift_allocObject();

      sub_10002024C(v14, v15);

      sub_10000649C(v6, &qword_1000AE5D0, &qword_100089EB0);
      sub_1000872AC();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10008730C();
      }

      ++v12;
      result = sub_10008735C();
      if (v11 == v12)
      {
        v10 = v31;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:

    v16 = 0;
    v31 = v10;
    v18 = v27 + 64;
    v17 = *(v27 + 64);
    v19 = 1 << *(v27 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v17;
    v22 = (v19 + 63) >> 6;
    if ((v20 & v17) != 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v22)
      {

        return v10;
      }

      v21 = *(v18 + 8 * v23);
      ++v16;
      if (v21)
      {
        v16 = v23;
        do
        {
LABEL_15:
          v24 = *(*(v27 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v21)))));
          v25 = *(v30 + v29);
          sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
          swift_allocObject();

          sub_10002024C(v24, v25);

          sub_1000872AC();
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10008730C();
          }

          v21 &= v21 - 1;
          result = sub_10008735C();
          v10 = v31;
        }

        while (v21);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018804()
{
  sub_1000166D0(0xD000000000000019, 0x800000010008E840, &qword_1000AE570, &qword_100089D58, &qword_1000AE5C8, &qword_100089E70);
  type metadata accessor for NetworkManager();
  sub_100023834(&qword_1000AE5A0, type metadata accessor for NetworkManager, &unk_100088808);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  v0 = sub_10001FBA0(v2);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  sub_1000226F0(v2, v0);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000867EC();
  return sub_100016F64();
}

uint64_t *sub_1000189F4(uint64_t a1)
{
  v2 = sub_100001EEC(&qword_1000AE630, &qword_10008A0C8);
  v3 = __chkstk_darwin(v2 - 8);
  v79 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v74 - v5;
  v83 = sub_10008614C();
  v7 = *(v83 - 8);
  __chkstk_darwin(v83);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001EEC(&qword_1000AE638, &qword_10008A0D0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v74 - v15;
  __chkstk_darwin(v14);
  v89 = &v74 - v17;
  v18 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0) - 8;
  v19 = __chkstk_darwin(v18);
  v78 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v84 = &v74 - v22;
  __chkstk_darwin(v21);
  v25 = &v74 - v24;
  result = &_swiftEmptyDictionarySingleton;
  v91 = &_swiftEmptyDictionarySingleton;
  v27 = *(a1 + 16);
  v28 = _swiftEmptyArrayStorage;
  if (!v27)
  {
    return result;
  }

  v76 = v9;
  v77 = v6;
  v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v30 = a1 + v29;
  v31 = *(v23 + 72);
  v80 = v29;
  v81 = v31;
  v82 = (v7 + 8);
  v85 = &v74 - v24;
  v86 = v16;
  v75 = v13;
  while (1)
  {
    v87 = v30;
    v88 = v27;
    sub_10000E4A4(v30, v25, &qword_1000AE5D0, &qword_100089EB0);
    sub_10008645C();
    v33 = v89;
    sub_10008611C();
    (*v82)(v9, v83);
    sub_10000E4A4(v33, v16, &qword_1000AE638, &qword_10008A0D0);
    v34 = sub_10008639C();
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    if (v36(v16, 1, v34) == 1)
    {
      sub_10000649C(v16, &qword_1000AE638, &qword_10008A0D0);
    }

    else
    {
      v37 = v77;
      sub_10008637C();
      (*(v35 + 8))(v16, v34);
      v38 = sub_10008617C();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v37, 1, v38) != 1)
      {
        v46 = sub_10008615C();
        v48 = v47;
        (*(v39 + 8))(v37, v38);
        v13 = v75;
        v9 = v76;
        goto LABEL_20;
      }

      sub_10000649C(v37, &qword_1000AE630, &qword_10008A0C8);
      v13 = v75;
      v9 = v76;
      v16 = v86;
    }

    sub_10000E4A4(v89, v13, &qword_1000AE638, &qword_10008A0D0);
    if (v36(v13, 1, v34) != 1)
    {
      break;
    }

    sub_10000649C(v13, &qword_1000AE638, &qword_10008A0D0);
LABEL_13:
    v25 = v85;
    sub_10000E4A4(v85, v84, &qword_1000AE5D0, &qword_100089EB0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_10006EE1C(0, v28[2] + 1, 1, v28);
    }

    v44 = v28[2];
    v43 = v28[3];
    if (v44 >= v43 >> 1)
    {
      v28 = sub_10006EE1C((v43 > 1), v44 + 1, 1, v28);
    }

    sub_10000649C(v89, &qword_1000AE638, &qword_10008A0D0);
    sub_10000649C(v25, &qword_1000AE5D0, &qword_100089EB0);
    v28[2] = v44 + 1;
    v45 = v28 + v80 + v44 * v81;
    v32 = v81;
    sub_100023AB0(v84, v45);
LABEL_4:
    v30 = v87 + v32;
    v27 = v88 - 1;
    if (v88 == 1)
    {
      return v91;
    }
  }

  v40 = v79;
  sub_10008635C();
  (*(v35 + 8))(v13, v34);
  v41 = sub_10008617C();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_10000649C(v79, &qword_1000AE630, &qword_10008A0C8);
    v16 = v86;
    goto LABEL_13;
  }

  v49 = v79;
  v46 = sub_10008615C();
  v48 = v50;
  (*(v42 + 8))(v49, v41);
LABEL_20:
  v51 = v91;
  v16 = v86;
  if (v91[2])
  {
    sub_10006E5B0(v46, v48);
    if ((v52 & 1) == 0)
    {
      v51 = v91;
      goto LABEL_23;
    }

LABEL_34:
    v68 = sub_1000451D0(v90, v46, v48);
    if (*v67)
    {
      v69 = v67;
      sub_10000E4A4(v85, v78, &qword_1000AE5D0, &qword_100089EB0);
      v70 = *v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v69 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = sub_10006EE1C(0, v70[2] + 1, 1, v70);
        *v69 = v70;
      }

      v73 = v70[2];
      v72 = v70[3];
      if (v73 >= v72 >> 1)
      {
        v70 = sub_10006EE1C((v72 > 1), v73 + 1, 1, v70);
        *v69 = v70;
      }

      v70[2] = v73 + 1;
      v32 = v81;
      sub_100023AB0(v78, v70 + v80 + v73 * v81);
      (v68)(v90, 0);

      sub_10000649C(v89, &qword_1000AE638, &qword_10008A0D0);
      v25 = v85;
      sub_10000649C(v85, &qword_1000AE5D0, &qword_100089EB0);
      v16 = v86;
    }

    else
    {
      (v68)(v90, 0);

      sub_10000649C(v89, &qword_1000AE638, &qword_10008A0D0);
      v25 = v85;
      sub_10000649C(v85, &qword_1000AE5D0, &qword_100089EB0);
      v32 = v81;
    }

    goto LABEL_4;
  }

LABEL_23:

  v53 = swift_isUniquelyReferenced_nonNull_native();
  v90[0] = v51;
  v55 = sub_10006E5B0(v46, v48);
  v56 = v51[2];
  v57 = (v54 & 1) == 0;
  v58 = v56 + v57;
  if (!__OFADD__(v56, v57))
  {
    v59 = v54;
    if (v51[3] >= v58)
    {
      if ((v53 & 1) == 0)
      {
        sub_100073E14();
      }
    }

    else
    {
      sub_100071454(v58, v53);
      v60 = sub_10006E5B0(v46, v48);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_44;
      }

      v55 = v60;
    }

    v62 = v90[0];
    if (v59)
    {
      *(v90[0][7] + 8 * v55) = _swiftEmptyArrayStorage;
    }

    else
    {
      v90[0][(v55 >> 6) + 8] |= 1 << v55;
      v63 = (v62[6] + 16 * v55);
      *v63 = v46;
      v63[1] = v48;
      *(v62[7] + 8 * v55) = _swiftEmptyArrayStorage;
      v64 = v62[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_43;
      }

      v62[2] = v66;
    }

    v91 = v62;
    v16 = v86;
    goto LABEL_34;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_100087A5C();
  __break(1u);
  return result;
}