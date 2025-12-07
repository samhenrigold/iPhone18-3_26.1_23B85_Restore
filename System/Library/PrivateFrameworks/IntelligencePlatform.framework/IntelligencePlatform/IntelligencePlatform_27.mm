uint64_t (*sub_1ABC80410(void *a1))()
{
  v2 = sub_1ABAFDD10(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1ABC7FC30(v2);
  return sub_1ABC80470;
}

void sub_1ABC80470(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1ABC804B8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC804F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void GraphObjectContextProtocol.graphObjects(forUntyped:)()
{
  sub_1ABA9013C();
  v11[1] = v1;
  v3 = v2;
  swift_getAssociatedTypeWitness();
  sub_1ABA7D958();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v11[3] = v3;
  v9 = sub_1ABA8E9C0();
  v10(v9);
  sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
  sub_1ABC809F0();
  swift_getAssociatedConformanceWitness();
  GraphObjectBareContextProtocol.graphObjects<A, B>(forUntyped:mapping:)();
  (*(v5 + 8))(v8, v0);
  sub_1ABA80BF0();
  sub_1ABA94AB0();
}

unint64_t sub_1ABC809F0()
{
  result = qword_1EB4CF810;
  if (!qword_1EB4CF810)
  {
    sub_1ABAE2850(&unk_1EB4DB8E0, &unk_1ABF50A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF810);
  }

  return result;
}

void GraphObjectContextProtocol<>.graphObjects()()
{
  sub_1ABA9013C();
  swift_getAssociatedTypeWitness();
  sub_1ABA7D958();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1ABA8395C();
  v2(v1);
  swift_getAssociatedConformanceWitness();
  sub_1ABA935EC();
  GraphObjectBareContextProtocol<>.graphObjects<A>(mapping:)();
  v3 = sub_1ABA81900();
  v4(v3);
  sub_1ABA80BF0();
  sub_1ABA94AB0();
}

void GraphObjectContextProtocol<>.enumerateGraphObjects(block:)()
{
  sub_1ABA9013C();
  v13[2] = v1;
  v3 = v2;
  v5 = v4;
  v13[1] = v6;
  swift_getAssociatedTypeWitness();
  sub_1ABA7D958();
  v8 = v7;
  sub_1ABA7BB88();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v13 - v11;
  (*(v3 + 32))(v5, v3, v10);
  sub_1ABA935EC();
  swift_getAssociatedConformanceWitness();
  GraphObjectBareContextProtocol<>.enumerateGraphObjects<A>(mapping:block:)();
  (*(v8 + 8))(v12, v0);
  sub_1ABA80BF0();
  sub_1ABA94AB0();
}

void sub_1ABC80EE4(uint64_t a1@<X8>, uint64_t (*a2)(uint64_t (*)(), _BYTE *, double)@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  sub_1ABC81304(a2, a3, a4, a5, &v16);
  if (v17.n128_u64[0])
  {
    sub_1ABA7D970(v17, v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17.n128_i64[0], v17.n128_i64[1], v18, v19, v20);
  }

  else
  {
    sub_1ABA8F524();
    *(a1 + 48) = v14;
  }
}

double sub_1ABC810F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  Entity.init<A, B>(with:)(v14, a2, a3, a4, a5);
  if (!v6)
  {
    result = *&v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    *a6 = v22;
    *(a6 + 16) = v17;
    *(a6 + 32) = v18;
    *(a6 + 40) = v19;
    *(a6 + 48) = v20;
  }

  return result;
}

void sub_1ABC81214(void *(*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(&v13);
  if (v14.n128_u64[0])
  {
    sub_1ABA7D970(v14, v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14.n128_i64[0], v14.n128_i64[1], v15, v16, v17);
  }

  else
  {
    sub_1ABA8F524();
    *(a2 + 48) = v11;
  }
}

double sub_1ABC81304@<D0>(uint64_t (*a1)(uint64_t (*)(), _BYTE *, double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  Entity.init<A>(enumerator:)(a1, a2, a3, a4);
  if (!v5)
  {
    result = *&v8;
    *a5 = v8;
    *(a5 + 16) = v9;
    *(a5 + 32) = v10;
    *(a5 + 40) = v11;
    *(a5 + 48) = v12;
  }

  return result;
}

uint64_t sub_1ABC81354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v27 = a4;
  v28 = a7;
  v25 = a5;
  v26 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v17 = &v25 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a1, a3, v19);
  (*(a10 + 32))(a2, a2, a6, v25, a10);
  v23 = v29;
  result = (*(a6 + 48))(v21, v17, a3, v27, v28, v26, a2, a6);
  if (!v23)
  {
    return sub_1ABA7B9B4(a8, 0, 1, a2);
  }

  return result;
}

uint64_t sub_1ABC81524@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28[3] = a3;
  v31 = a5;
  v29 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABF247E4();
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v28 - v17;
  a2(v16);
  v19 = v29;
  v20 = *(v30 + 32);
  v20(v18, v14, v9);
  v20(v11, v18, v9);
  if (sub_1ABA7E1E0(v11, 1, a4) == 1)
  {
    (*(v30 + 8))(v11, v9);
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v21 = sub_1ABF252B4();
    v22 = v31;
    v23 = 1;
  }

  else
  {
    v24 = *(v19 + 32);
    v24(v8, v11, a4);
    v25 = v31;
    v24(v31, v8, a4);
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v26 = sub_1ABF252B4();
    swift_storeEnumTagMultiPayload();
    v22 = v25;
    v23 = 0;
    v21 = v26;
  }

  return sub_1ABA7B9B4(v22, v23, 1, v21);
}

uint64_t sub_1ABC81988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v21 = a4;
  v22 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v18 = &v21 - v17;
  (*(a9 + 32))(a3, a3, a6, a5, a9, v16);
  v19 = v23;
  result = (*(a6 + 56))(a1, a2, v18, v21, v22, a3, a6);
  if (!v19)
  {
    return sub_1ABA7B9B4(a8, 0, 1, a3);
  }

  return result;
}

uint64_t sub_1ABC81BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    if (a8 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1ABC81C14(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(a1 + 2);
  v17 = *(a1 + 3);
  v18 = *(a1 + 32);
  v25 = *a1;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v19 = *(a14 + 32);
  v24[3] = swift_getAssociatedTypeWitness();
  sub_1ABA93DC0(v24);
  v19(a2, a2, a3, a10, a14);
  (*(a13 + 16))(&v25, a5, v24, a7, a8, a11, a12, a9, a13);
  return sub_1ABA84B54(v24);
}

double sub_1ABC81D4C@<D0>(unint64_t *a1@<X0>, void (*a2)(__int128 *__return_ptr, __int128 *, uint64_t, uint64_t)@<X1>, char a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = *a1;
  EntityClass.init(intValue:)(HIBYTE(*a1), &v43);
  v13 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v23 = sub_1ABF237F4();
    sub_1ABA7AA24(v23, qword_1ED871B40);
    v24 = sub_1ABF237D4();
    v25 = sub_1ABF24674();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v43 = v27;
      *v26 = 136315138;
      *&v40 = v12;
      v28 = EntityIdentifier.stringValue.getter();
      v30 = sub_1ABADD6D8(v28, v29, &v43);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1ABA78000, v24, v25, "untypedId.entityClass for %s is nil in createDynamicGraphObject", v26, 0xCu);
      sub_1ABA84B54(v27);
      MEMORY[0x1AC5AB8B0](v27, -1, -1);
      MEMORY[0x1AC5AB8B0](v26, -1, -1);
    }

    sub_1ABB6DA08();
    v31 = swift_allocError();
    *v32 = 2;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    *(v32 + 33) = 0u;
    *(v32 + 49) = 2;
    swift_willThrow();
    goto LABEL_16;
  }

  v39 = a2;
  v14 = v43;
  v15 = v44;
  v16 = v45;
  v17 = (*(a5 + 8))(&v43, a4, a5);
  if (v17)
  {
    *&v40 = v14;
    *(&v40 + 1) = v13;
    v41 = v15;
    LOBYTE(v42) = v16;
    v39(&v43, &v40, v17, v18);
    v19 = sub_1ABA80BFC();
    sub_1ABAA8FA8(v19, v20, v21, v22);
    v40 = v43;
    v41 = v44;
    *&v42 = v45;
    if (*(&v44 + 1))
    {
      sub_1ABAFF5C4(&v40, &v43);
      sub_1ABAFF5C4(&v43, a6);
      *(a6 + 40) = 0;
    }

    else
    {
      sub_1ABC82344(&v40);
      *(a6 + 32) = 0;
      result = 0.0;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      *(a6 + 40) = -1;
    }

    return result;
  }

  if (a3)
  {
    sub_1ABC8229C();
    v31 = swift_allocError();
    *v34 = v14;
    *(v34 + 8) = v13;
    *(v34 + 16) = v15;
    *(v34 + 32) = v16;
    swift_willThrow();
LABEL_16:
    *a6 = v31;
    *(a6 + 40) = 1;
    return result;
  }

  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 40) = -1;
  v35 = sub_1ABA80BFC();

  sub_1ABAA8FA8(v35, v36, v37, v38);
  return result;
}

uint64_t sub_1ABC8216C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(a1 + 2);
  v16 = *(a1 + 3);
  v17 = *(a1 + 32);
  v24 = *a1;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v18 = *(a13 + 32);
  v23[3] = swift_getAssociatedTypeWitness();
  sub_1ABA93DC0(v23);
  v18(a2, a2, a3, a10, a13);
  (*(a12 + 24))(&v24, a5, a6, v23, a8, a11, a9, a12);
  return sub_1ABA84B54(v23);
}

unint64_t sub_1ABC8229C()
{
  result = qword_1EB4D6510;
  if (!qword_1EB4D6510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6510);
  }

  return result;
}

uint64_t sub_1ABC82344(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D6358, &unk_1ABF50900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC824B4()
{
  if (*(v0 + 57))
  {
    return 2;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v2 == 1702195828 && v3 == 0xE400000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {
    return 1;
  }

  if (v2 == 0x65736C6166 && v3 == 0xE500000000000000)
  {
    return 0;
  }

  if (sub_1ABF25054())
  {
    return 0;
  }

  return 2;
}

uint64_t sub_1ABC82584@<X0>(void (*a1)(uint64_t, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(_BYTE *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v36 = MEMORY[0x1E69E7CD0];
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0;
  v23 = &v32;
  v24 = a2;
  v25 = a3;
  v26 = v14;
  v27 = a4;
  v28 = a5;
  v29 = &v34;
  v30 = &v36;
  a1(a6, v22);
  if (v7)
  {
    goto LABEL_9;
  }

  if (v33)
  {
    v15 = sub_1ABB6DA08();
    sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v15);
    v17 = 1;
LABEL_8:
    *v16 = v17;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 33) = 0u;
    *(v16 + 49) = 2;
    swift_willThrow();
LABEL_9:
  }

  if (!v35)
  {
    v19 = sub_1ABB6DA08();
    sub_1ABA7BD00(&type metadata for BaseEntityConstructionError, v19);
    v17 = 3;
    goto LABEL_8;
  }

  v18 = v32;
  v31 = v32;
  sub_1ABB6C488(&v31, v14, a4, a5);

  *a7 = v18;
}

uint64_t sub_1ABC8282C()
{
  v0 = sub_1ABAA0880();
  v1(v0);
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  return sub_1ABD1BB4C();
}

void sub_1ABC828C4()
{
  v0 = sub_1ABAA0880();
  v2 = v1(v0);
  sub_1ABA89C94(*(v2 + 48));
}

void CustomGraphActivityEvent.endLocation.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphActivityEvent(v0);
  sub_1ABA89C94(*(v1 + 52));
}

void CustomGraphActivityEvent.activityTypeObject.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphActivityEvent(v0);
  sub_1ABA89C94(*(v1 + 56));
}

uint64_t CustomGraphActivityEvent.activityType.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for CustomGraphActivityEvent(v2);
  *v0 = *(v1 + *(result + 60) + 8);
  return result;
}

uint64_t sub_1ABC829C0()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

uint64_t sub_1ABC82A10()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

void sub_1ABC82B10()
{
  v0 = sub_1ABAA0880();
  v2 = v1(v0);
  sub_1ABA89C94(*(v2 + 44));
}

uint64_t sub_1ABC82B8C()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

void sub_1ABC82C2C()
{
  v0 = sub_1ABAA0880();
  v2 = v1(v0);
  sub_1ABA89C94(*(v2 + 40));
}

uint64_t CustomGraphTransportationActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphTransportationActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

void CustomGraphTransportationActivityEvent.modeOfTransportation.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphTransportationActivityEvent(v0);
  sub_1ABA89C94(*(v1 + 60));
}

uint64_t CustomGraphTransportationActivityEvent.transportationType.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for CustomGraphTransportationActivityEvent(v2);
  *v0 = *(v1 + *(result + 64) + 8);
  return result;
}

uint64_t sub_1ABC82D84()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

uint64_t sub_1ABC82E04()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

uint64_t sub_1ABC82E54()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

uint64_t sub_1ABC82EA4()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

uint64_t sub_1ABC82EF4()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

uint64_t sub_1ABC82F44()
{
  v0 = sub_1ABAA0880();
  v1(v0);
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  return sub_1ABD1BB4C();
}

void sub_1ABC82FDC()
{
  v0 = sub_1ABAA0880();
  v2 = v1(v0);
  sub_1ABA89C94(*(v2 + 36));
}

uint64_t CustomGraphWorkingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphWorkingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t sub_1ABC83080()
{
  v0 = sub_1ABA8971C();
  v2 = v1(v0);
  return sub_1ABD1B8D4(*(v2 + 52));
}

uint64_t sub_1ABC830C0()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

uint64_t sub_1ABC83110()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

uint64_t CustomGraphMeetingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphMeetingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphEatingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphEatingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphWatchingTVActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphWatchingTVActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphCommunicatingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphCommunicatingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphShoppingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphShoppingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphMindfulnessActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphMindfulnessActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphSleepingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphSleepingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphTravelingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphTravelingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphReadingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphReadingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphVacationingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphVacationingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphGamingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphGamingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphGamingActivityEvent.software.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphGamingActivityEvent(v0);
  sub_1ABD1B3E8(*(v1 + 56));
}

uint64_t CustomGraphSocializingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphSocializingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphWakingUpActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphWakingUpActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphGoingToBedActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphGoingToBedActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphExercisingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphExercisingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphCommuteActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphCommuteActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphDiningActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphDiningActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphAttendingAPerformanceActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphStationaryActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphStationaryActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphLocationVisitActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphLocationVisitActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphWalkingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphWalkingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphRunningActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphRunningActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphBicyclingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphBicyclingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphHikingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphHikingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphOnThePhoneActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphFacetimeActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphFacetimeActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphDrivingActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphDrivingActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphBehaviorActivityEvent.activityType.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphBehaviorActivityEvent(v0);
  return sub_1ABD1AC58(v1);
}

uint64_t CustomGraphBehaviorActivityEvent.behaviorType.getter()
{
  type metadata accessor for CustomGraphBehaviorActivityEvent(0);
  sub_1ABD1B744();
  return sub_1ABA7D000();
}

uint64_t CustomGraphSongEvent.date.getter()
{
  v0 = sub_1ABAA0880();
  type metadata accessor for CustomGraphSongEvent(v0);
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  return sub_1ABD1BB4C();
}

uint64_t CustomGraphSongEvent.playbackState.getter()
{
  type metadata accessor for CustomGraphSongEvent(0);
  sub_1ABD1B744();
  return sub_1ABA7D000();
}

uint64_t CustomGraphSongEvent.song.getter()
{
  v0 = sub_1ABAA0880();
  v1 = type metadata accessor for CustomGraphSongEvent(v0);
  sub_1ABD1B3E8(*(v1 + 28));
}

uint64_t CustomGraphLocation.latLong.getter@<X0>(_OWORD *a1@<X8>)
{
  v5 = v1[5];
  v2 = v1[6];
  v3 = *(v1 + 105);
  *a1 = v1[4];
  a1[1] = v5;
  a1[2] = v2;
  *(a1 + 41) = v3;
  return sub_1ABAE2EC4();
}

uint64_t CustomGraphLocation.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 136), sizeof(__dst));
  memcpy(a1, (v1 + 136), 0xE8uLL);
  return sub_1ABAE2EC4();
}

uint64_t CustomGraphPerson.birthday.getter()
{
  v0 = sub_1ABAA0880();
  type metadata accessor for CustomGraphPerson(v0);
  sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  return sub_1ABD1BB4C();
}

uint64_t CustomGraphPerson.occupation.getter()
{
  type metadata accessor for CustomGraphPerson(0);
  sub_1ABD1B744();
  return sub_1ABA7D000();
}

uint64_t CustomGraphPerson.contactIdentifier.getter()
{
  type metadata accessor for CustomGraphPerson(0);
  sub_1ABD1B744();
  return sub_1ABA7D000();
}

uint64_t CustomGraphPerson.$birthday.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.$occupation.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.$isFavorite.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.$isCurrentUser.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.$isInferredDeviceUser.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.$contactIdentifier.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphSong.duration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1ABC85DDC(v2, v3, v4);
}

uint64_t sub_1ABC85DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t CustomGraphDateRelationship.startDate.getter()
{
  v0 = sub_1ABAA0880();
  type metadata accessor for CustomGraphDateRelationship(v0);
  sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  return sub_1ABD1BB4C();
}

uint64_t CustomGraphDateRelationship.endDate.getter()
{
  v0 = sub_1ABAA0880();
  type metadata accessor for CustomGraphDateRelationship(v0);
  sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  return sub_1ABD1BB4C();
}

uint64_t CustomGraphDateRelationship.occurrenceDate.getter()
{
  v0 = sub_1ABAA0880();
  type metadata accessor for CustomGraphDateRelationship(v0);
  sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  return sub_1ABD1BB4C();
}

uint64_t sub_1ABC860B4()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

uint64_t sub_1ABC86464@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v63 = a3;
  v55 = a2;
  v56 = a1;
  v54 = a4;
  v4 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = v44 - v5;
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v53 = (v6 + 16);
  v8 = swift_allocObject();
  v61 = v8;
  *(v8 + 16) = v7;
  v45 = (v8 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v46 = v9 + 16;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v47 = (v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v48 = (v11 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v49 = (v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v50 = (v13 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  v51 = (v14 + 16);
  v15 = swift_allocObject();
  v16 = v61;
  v15[2] = v6;
  v15[3] = v16;
  v15[4] = v63;
  v15[5] = v9;
  v15[6] = v10;
  v15[7] = v11;
  v15[8] = v12;
  v15[9] = v13;
  v15[10] = v14;
  v60 = v6;

  v57 = v11;

  v59 = v12;

  v17 = v58;
  v56(&v62, sub_1ABC870C8, 0, sub_1ABD1A554, v15);
  if (v17)
  {
  }

  else
  {
    v18 = v53;
    v58 = v14;
    v19 = v54;

    sub_1ABC6C238(v62, &v62);
    v44[1] = v10;
    v55 = v13;
    v56 = v9;
    *v19 = v62;
    swift_beginAccess();
    v19[1] = *v18;
    v21 = v45;
    swift_beginAccess();
    v22 = *v21;
    v23 = sub_1ABB2B834(*v21);
    v19[2] = v22;
    v19[3] = v23;
    v19[4] = v24;
    swift_beginAccess();
    v25 = v19;
    v26 = type metadata accessor for CustomGraphDateRelationship(0);
    v27 = v52;
    sub_1ABA7B9B4(v52, 1, 1, v26);
    v28 = type metadata accessor for CustomGraphEvent(0);
    v29 = v28[7];

    sub_1ABC8B318(v30, v27, (v19 + v29));
    v31 = v47;
    swift_beginAccess();
    *(v19 + v28[8]) = *v31;
    v32 = v48;
    swift_beginAccess();
    *(v19 + v28[9]) = *v32;
    v33 = v49;
    swift_beginAccess();
    *(v19 + v28[10]) = *v33;
    v34 = v50;
    swift_beginAccess();
    v35 = *v34;
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = *(v35 + 32);
    }

    else
    {
      v37 = 0;
    }

    v38 = v51;
    v39 = v25 + v28[11];
    *v39 = v35;
    *(v39 + 1) = v37;
    v39[16] = v36 == 0;
    swift_beginAccess();
    v40 = *v38;
    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = *(v40 + 32);
    }

    else
    {
      v42 = 0;
    }

    LODWORD(v53) = v41 == 0;

    v43 = v25 + v28[12];
    *v43 = v40;
    *(v43 + 1) = v42;
    v43[16] = v53;
  }
}

void sub_1ABC86ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v87 = v21;
  v79 = v22;
  v78 = v23;
  v24 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v24);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v26);
  sub_1ABA7D028();
  v27 = swift_allocObject();
  sub_1ABD1B184(v27);
  v76 = v28;
  sub_1ABA7D028();
  v80 = swift_allocObject();
  sub_1ABD1B184(v80);
  sub_1ABD1B6E8(v29);
  sub_1ABA7D028();
  v30 = swift_allocObject();
  sub_1ABD1B184(v30);
  sub_1ABD1B3DC(v31);
  sub_1ABA7D028();
  v32 = swift_allocObject();
  sub_1ABD1B184(v32);
  sub_1ABD1B3C4(v33);
  sub_1ABA7D028();
  v34 = swift_allocObject();
  sub_1ABD1B184(v34);
  sub_1ABD1B6DC(v35);
  sub_1ABA7D028();
  v36 = swift_allocObject();
  sub_1ABD1B184(v36);
  sub_1ABD1B6D0(v37);
  sub_1ABA7D028();
  v38 = swift_allocObject();
  sub_1ABD1B184(v38);
  sub_1ABD1BA8C(v39);
  sub_1ABA7D028();
  v40 = swift_allocObject();
  sub_1ABD1B184(v40);
  sub_1ABD1BEE4(v41);
  sub_1ABA88928();
  swift_allocObject();
  sub_1ABD1B884();
  v42[2] = v44;
  v42[3] = v43;
  v42[4] = v27;
  v42[5] = v80;
  v42[6] = v87;
  v42[7] = v30;
  v42[8] = v32;
  v42[9] = v34;
  v42[10] = v36;
  v42[11] = v38;
  v42[12] = v40;

  sub_1ABD1B678();
  v79();
  if (v20)
  {

    sub_1ABAA1668();

    sub_1ABA8D348();

    sub_1ABAA63C4();
  }

  else
  {

    v45 = sub_1ABD1BE7C();
    v47 = sub_1ABC6C238(v45, v46);
    *v78 = v86[0];
    sub_1ABD1B1F4(v47, v86);
    v78[1] = *v76;
    sub_1ABAAD280();
    v48 = *v38;
    v49 = sub_1ABB2B834(*v38);
    v78[2] = v48;
    v78[3] = v49;
    v78[4] = v50;
    sub_1ABAAD280();
    sub_1ABD1AF20();
    v54 = sub_1ABA9DFB8(v75, v51, v52, v53);
    v55 = type metadata accessor for CustomGraphEvent(v54);
    v56 = v55[7];

    v58 = sub_1ABC8B318(v57, v75, (v78 + v56));
    v59 = sub_1ABD1B0E8(v58, &v85);
    *(v78 + v55[8]) = *v70;
    v60 = sub_1ABD1B0E8(v59, &v84);
    *(v78 + v55[9]) = *v71;
    v61 = sub_1ABD1B0E8(v60, &v83);
    *(v78 + v55[10]) = *v72;
    sub_1ABD1B0E8(v61, &v82);
    sub_1ABD1BE24();
    sub_1ABAAFB28();
    v62 = v78 + v55[11];
    *v62 = v73;
    *(v62 + 1) = v63;
    v62[16] = v64;
    sub_1ABD1B080(v65, &v81);
    sub_1ABD1B610();
    if (v66)
    {
      v67 = *(v74 + 32);
    }

    else
    {
      v67 = 0;
    }

    sub_1ABAAFB28();
    v77 = v68;

    sub_1ABAA1668();

    sub_1ABA8D348();

    sub_1ABAA2168();

    sub_1ABAA6420();

    v69 = v78 + v55[12];
    *v69 = v74;
    *(v69 + 1) = v67;
    v69[16] = v77;
    sub_1ABAA63C4();

    sub_1ABD1C2B4();
    sub_1ABA9EA34();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABC870E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v135 = a4;
  v137 = a3;
  v138 = a2;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v129 - v17;
  v19 = type metadata accessor for CustomGraphDateRelationship(0);
  MEMORY[0x1EEE9AC00](v19);
  v136 = 279;
  v132 = v21;
  v133 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = a5;
  v130 = a7;
  v131 = a6;
  v157 = v10;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_118;
  }

  v22 = *a1;
  v23 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v154);
  if (*&v154[0] == v22 && *(&v154[0] + 1) == v23)
  {

LABEL_54:
    *(v153 + 10) = *(a1 + 82);
    v59 = *(a1 + 7);
    v151 = *(a1 + 5);
    v152 = v59;
    v153[0] = *(a1 + 9);
    v60 = v157;
    if (BYTE9(v153[1]) == 1)
    {
      v61 = *(a1 + 7);
      v149 = *(a1 + 5);
      v150[0] = v61;
      v150[1] = *(a1 + 9);
      *(&v150[1] + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v26);
      *(&v129 - 2) = &v149;
      v146 = v151;
      v147 = v152;
      *v148 = v153[0];
      *(&v148[1] + 2) = *(v153 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(&v146, &v139);
      sub_1ABCF8EE8(sub_1ABD1A8C8, v154);
      if (!v60)
      {
        v63 = *&v154[1];
        if (*&v154[1])
        {
          v139 = v149;
          v140 = v150[0];
          v141[0] = v150[1];
          *(v141 + 9) = *(&v150[1] + 9);
          sub_1ABD19208(&v139);
          v64 = v138;
          swift_beginAccess();
          sub_1ABB4DCE0();
          v65 = *(*(v64 + 16) + 16);
          sub_1ABB4E0E4(v65);
          v66 = *(v64 + 16);
          *(v66 + 16) = v65 + 1;
          v67 = v66 + 88 * v65;
          *(v67 + 32) = v154[0];
          *(v67 + 48) = v63;
          *(v67 + 56) = *(&v154[1] + 8);
          *(v67 + 72) = *(&v154[2] + 8);
          *(v67 + 88) = *(&v154[3] + 8);
          *(v67 + 104) = *(&v154[4] + 8);
LABEL_60:
          *(v64 + 16) = v66;
          swift_endAccess();
          goto LABEL_61;
        }
      }

      v139 = v149;
      v140 = v150[0];
      v141[0] = v150[1];
      *(v141 + 9) = *(&v150[1] + 9);
      v62 = &v139;
LABEL_57:
      sub_1ABD19208(v62);
LABEL_61:
      sub_1ABAB480C(&v151, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    goto LABEL_96;
  }

  v129 = a8;
  v25 = sub_1ABF25054();

  if (v25)
  {
    goto LABEL_54;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v154);
  if (*&v154[0] == v22 && *(&v154[0] + 1) == v23)
  {

LABEL_63:
    if (!*(a1 + 97))
    {
      v77 = a1[5];
      v76 = a1[6];
      v78 = v137;
      swift_beginAccess();

      sub_1ABB4DC20();
      v79 = *(*(v78 + 16) + 16);
      sub_1ABB4E024(v79);
      v80 = *(v78 + 16);
      *(v80 + 16) = v79 + 1;
      v81 = v80 + 16 * v79;
      *(v81 + 32) = v77;
      *(v81 + 40) = v76;
      *(v78 + 16) = v80;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v68 = sub_1ABF237F4();
    sub_1ABA7AA24(v68, qword_1ED871B40);
    sub_1ABAE2EC4();
    v69 = sub_1ABF237D4();
    v70 = sub_1ABF24664();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v151 = v72;
      *v71 = 136642819;
      memcpy(v154, a1, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v73 = sub_1ABF23C94();
      v75 = &v151;
LABEL_99:
      v115 = sub_1ABADD6D8(v73, v74, v75);

      *(v71 + 4) = v115;
      _os_log_impl(&dword_1ABA78000, v69, v70, "Failed to parse %{sensitive}s.", v71, 0xCu);
      sub_1ABA84B54(v72);
      MEMORY[0x1AC5AB8B0](v72, -1, -1);
      MEMORY[0x1AC5AB8B0](v71, -1, -1);

      return;
    }

    goto LABEL_100;
  }

  v28 = sub_1ABF25054();

  if (v28)
  {
    goto LABEL_63;
  }

  if (v136 < 0x92)
  {
    __break(1u);
    goto LABEL_109;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
LABEL_114:
    v121 = sub_1ABF237F4();
    sub_1ABA7AA24(v121, qword_1ED871B40);
    sub_1ABAE2EC4();
    v122 = sub_1ABF237D4();
    v123 = sub_1ABF24664();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *&v151 = v125;
      *v124 = 136642819;
      memcpy(v154, a1, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v126 = sub_1ABF23C94();
      v128 = sub_1ABADD6D8(v126, v127, &v151);

      *(v124 + 4) = v128;
      _os_log_impl(&dword_1ABA78000, v122, v123, "Failed to parse %{sensitive}s.", v124, 0xCu);
      sub_1ABA84B54(v125);
      MEMORY[0x1AC5AB8B0](v125, -1, -1);
      MEMORY[0x1AC5AB8B0](v124, -1, -1);
    }

    else
    {

      sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
    }

    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v154);
  if (*&v154[0] == v22 && *(&v154[0] + 1) == v23)
  {

    goto LABEL_70;
  }

  v30 = sub_1ABF25054();

  if (v30)
  {
LABEL_70:
    *(v153 + 10) = *(a1 + 82);
    v82 = *(a1 + 7);
    v151 = *(a1 + 5);
    v152 = v82;
    v153[0] = *(a1 + 9);
    if (BYTE9(v153[1]) != 1)
    {
      if (qword_1ED871B38 == -1)
      {
        goto LABEL_97;
      }

      goto LABEL_74;
    }

    v83 = *(a1 + 7);
    v155[0] = *(a1 + 5);
    v155[1] = v83;
    v156[0] = *(a1 + 9);
    *(v156 + 9) = *(a1 + 81);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v84 = v135;

    v85 = v84;
    v86 = v157;
    sub_1ABC8A96C(v155, v85, v18);
    if (!v86)
    {
      if (sub_1ABA7E1E0(v18, 1, v19) != 1)
      {
        v94 = v133;
        sub_1ABCF9424();
        v95 = v134;
        swift_beginAccess();
        sub_1ABB4DE30();
        v96 = *(*(v95 + 16) + 16);
        sub_1ABB4E234(v96);
        v97 = *(v95 + 16);
        *(v97 + 16) = v96 + 1;
        sub_1ABD0AD58();
        *(v95 + 16) = v97;
        swift_endAccess();
        sub_1ABAB480C(&v151, &qword_1EB4D7E60, &unk_1ABF5E780);
        sub_1ABD0ADB0(v94, type metadata accessor for CustomGraphDateRelationship);
        return;
      }

      sub_1ABAB480C(&v151, &qword_1EB4D7E60, &unk_1ABF5E780);
      v87 = &qword_1EB4D5F20;
      v88 = &qword_1ABF4F358;
      v89 = v18;
      goto LABEL_101;
    }

    goto LABEL_72;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v154);
  if (*&v154[0] == v22 && *(&v154[0] + 1) == v23)
  {

    v34 = v157;
LABEL_78:
    *(v153 + 10) = *(a1 + 82);
    v90 = *(a1 + 7);
    v151 = *(a1 + 5);
    v152 = v90;
    v153[0] = *(a1 + 9);
    if (BYTE9(v153[1]) == 1)
    {
      v91 = *(a1 + 7);
      v139 = *(a1 + 5);
      v140 = v91;
      v141[0] = *(a1 + 9);
      *(v141 + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v33);
      *(&v129 - 2) = &v139;
      v154[0] = v151;
      v154[1] = v152;
      v154[2] = v153[0];
      *(&v154[2] + 10) = *(v153 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v154, &v146);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v129 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v92, v93, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, *(&v139 + 1), v140, SBYTE8(v140), *&v141[0], *(&v141[0] + 1), *&v141[1], *(&v141[1] + 1), v142, v143, v144, v145, v146, *(&v146 + 1));
      if (!v34)
      {
        v98 = *&v150[0];
        if (*&v150[0])
        {
          v146 = v139;
          v147 = v140;
          *v148 = v141[0];
          *(&v148[1] + 1) = *(v141 + 9);
          sub_1ABD19208(&v146);
          v64 = v131;
          swift_beginAccess();
          sub_1ABB4DEA8();
          v99 = *(*(v64 + 16) + 16);
          sub_1ABB4E2AC(v99);
LABEL_84:
          v66 = *(v64 + 16);
          *(v66 + 16) = v99 + 1;
          v100 = v66 + (v99 << 6);
          *(v100 + 32) = v149;
          *(v100 + 48) = v98;
          *(v100 + 56) = *(v150 + 8);
          *(v100 + 72) = *(&v150[1] + 8);
          *(v100 + 88) = BYTE8(v150[2]);
          goto LABEL_60;
        }
      }

      goto LABEL_80;
    }

LABEL_96:
    if (qword_1ED871B38 == -1)
    {
LABEL_97:
      v114 = sub_1ABF237F4();
      sub_1ABA7AA24(v114, qword_1ED871B40);
      sub_1ABAE2EC4();
      v69 = sub_1ABF237D4();
      v70 = sub_1ABF24664();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v146 = v72;
        *v71 = 136642819;
        memcpy(v154, a1, 0x62uLL);
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v73 = sub_1ABF23C94();
        v75 = &v146;
        goto LABEL_99;
      }

LABEL_100:

      v87 = &qword_1EB4D1148;
      v88 = &qword_1ABF332D0;
      v89 = a1;
      goto LABEL_101;
    }

LABEL_74:
    swift_once();
    goto LABEL_97;
  }

  v32 = sub_1ABF25054();

  v34 = v157;
  if (v32)
  {
    goto LABEL_78;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), v154);
  if (*&v154[0] == v22 && *(&v154[0] + 1) == v23)
  {

    goto LABEL_86;
  }

  v36 = sub_1ABF25054();

  if (v36)
  {
LABEL_86:
    *(v153 + 10) = *(a1 + 82);
    v101 = *(a1 + 7);
    v151 = *(a1 + 5);
    v152 = v101;
    v153[0] = *(a1 + 9);
    if (BYTE9(v153[1]) != 1)
    {
      goto LABEL_96;
    }

    v102 = *(a1 + 7);
    v139 = *(a1 + 5);
    v140 = v102;
    v141[0] = *(a1 + 9);
    *(v141 + 9) = *(a1 + 81);
    MEMORY[0x1EEE9AC00](v37);
    *(&v129 - 2) = &v139;
    v154[0] = v151;
    v154[1] = v152;
    v154[2] = v153[0];
    *(&v154[2] + 10) = *(v153 + 10);
    sub_1ABAE2EC4();
    sub_1ABD191AC(v154, &v146);
    sub_1ABD08790(sub_1ABD1A8C8, (&v129 - 4), &unk_1F2099F30, sub_1ABD1AB54, sub_1ABD19310);
    if (v34)
    {
      v146 = v139;
      v147 = v140;
      *v148 = v141[0];
      *(&v148[1] + 1) = *(v141 + 9);
      sub_1ABD19208(&v146);
      sub_1ABAB480C(&v151, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    v103 = *&v150[0];
    if (*&v150[0])
    {
      LODWORD(v157) = LOBYTE(v150[1]);
      v104 = *(&v150[0] + 1);
      v105 = v149;
      v146 = v139;
      v147 = v140;
      *v148 = v141[0];
      *(&v148[1] + 1) = *(v141 + 9);
      sub_1ABD19208(&v146);
      v106 = v130;
      swift_beginAccess();
      sub_1ABB4DE78();
      v107 = *(*(v106 + 16) + 16);
      sub_1ABB4E27C(v107);
      v108 = *(v106 + 16);
      *(v108 + 16) = v107 + 1;
      v109 = v108 + 40 * v107;
      *(v109 + 32) = v105;
      *(v109 + 48) = v103;
      *(v109 + 56) = v104;
      *(v109 + 64) = v157 & 1;
      *(v106 + 16) = v108;
      swift_endAccess();
    }

    else
    {
      v146 = v139;
      v147 = v140;
      *v148 = v141[0];
      *(&v148[1] + 1) = *(v141 + 9);
      sub_1ABD19208(&v146);
    }

LABEL_72:
    v87 = &qword_1EB4D7E60;
    v88 = &unk_1ABF5E780;
    v89 = &v151;
LABEL_101:
    sub_1ABAB480C(v89, v87, v88);
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v154);
  if (*&v154[0] == v22 && *(&v154[0] + 1) == v23)
  {

LABEL_92:
    *(v153 + 10) = *(a1 + 82);
    v110 = *(a1 + 7);
    v151 = *(a1 + 5);
    v152 = v110;
    v153[0] = *(a1 + 9);
    if (BYTE9(v153[1]) == 1)
    {
      v111 = *(a1 + 7);
      v139 = *(a1 + 5);
      v140 = v111;
      v141[0] = *(a1 + 9);
      *(v141 + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v40);
      *(&v129 - 2) = &v139;
      v154[0] = v151;
      v154[1] = v152;
      v154[2] = v153[0];
      *(&v154[2] + 10) = *(v153 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v154, &v146);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v129 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v112, v113, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, *(&v139 + 1), v140, SBYTE8(v140), *&v141[0], *(&v141[0] + 1), *&v141[1], *(&v141[1] + 1), v142, v143, v144, v145, v146, *(&v146 + 1));
      if (!v34)
      {
        v98 = *&v150[0];
        if (*&v150[0])
        {
          v146 = v139;
          v147 = v140;
          *v148 = v141[0];
          *(&v148[1] + 1) = *(v141 + 9);
          sub_1ABD19208(&v146);
          v64 = v129;
          swift_beginAccess();
          sub_1ABB4DD28();
          v99 = *(*(v64 + 16) + 16);
          sub_1ABB4E12C(v99);
          goto LABEL_84;
        }
      }

LABEL_80:
      v146 = v139;
      v147 = v140;
      *v148 = v141[0];
      *(&v148[1] + 1) = *(v141 + 9);
      v62 = &v146;
      goto LABEL_57;
    }

    goto LABEL_96;
  }

  v39 = sub_1ABF25054();

  if (v39)
  {
    goto LABEL_92;
  }

  if (v136 < 0xA1)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v154);
  if (*&v154[0] == v22 && *(&v154[0] + 1) == v23)
  {
  }

  else
  {
    v42 = sub_1ABF25054();

    if ((v42 & 1) == 0)
    {
      if (v136 != 161)
      {
        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v154);
          if (*&v154[0] != v22 || *(&v154[0] + 1) != v23)
          {
            v51 = sub_1ABF25054();

            if ((v51 & 1) == 0)
            {
              return;
            }

LABEL_110:
            if (*(a1 + 97) == 2)
            {
              v120 = v157;
              sub_1ABC4A630(a1[5], v52, v53, v54, v55, v56, v57, v58);
              if (!v120)
              {
                a9 = a10;
                goto LABEL_107;
              }

              return;
            }

LABEL_113:
            if (qword_1ED871B38 == -1)
            {
              goto LABEL_114;
            }

            goto LABEL_121;
          }

LABEL_109:

          goto LABEL_110;
        }

LABEL_127:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_123;
    }
  }

  if (*(a1 + 97) != 2)
  {
    goto LABEL_113;
  }

  sub_1ABC4A630(a1[5], v43, v44, v45, v46, v47, v48, v49);
  if (!v34)
  {
LABEL_107:
    v117 = v151;
    swift_beginAccess();
    sub_1ABB4DD40();
    v118 = *(*(a9 + 16) + 16);
    sub_1ABB4E144(v118);
    v119 = *(a9 + 16);
    *(v119 + 16) = v118 + 1;
    *(v119 + 8 * v118 + 32) = v117;
    *(a9 + 16) = v119;
  }
}

void sub_1ABC88460(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v265 = a8;
  v268 = a7;
  v274 = a6;
  v282 = a5;
  v292 = a4;
  v300 = a3;
  v299 = a2;
  v13 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v293 = &v262 - v14;
  v286 = type metadata accessor for CustomGraphDateRelationship(0);
  v280 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v281 = &v262 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v264 = &v262 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v266 = &v262 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v271 = &v262 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v276 = &v262 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v285 = &v262 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v291 = &v262 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v298 = &v262 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v301 = &v262 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v303 = &v262 - v34;
  v35 = *(a12 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v305 = sub_1ABF247E4();
  v304 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305);
  v273 = &v262 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v279 = &v262 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v288 = &v262 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v295 = &v262 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v262 - v45;
  v312 = swift_checkMetadataState();
  v311 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312);
  v263 = &v262 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v267 = &v262 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v272 = &v262 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v278 = &v262 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v287 = &v262 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v294 = &v262 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v262 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v262 - v62;
  v309 = AssociatedTypeWitness;
  v64 = AssociatedTypeWitness;
  v65 = v35;
  v306 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v269 = &v262 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v270 = &v262 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v275 = &v262 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v277 = &v262 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v283 = &v262 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v284 = &v262 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v289 = &v262 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v290 = &v262 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v262 - v83;
  v86 = MEMORY[0x1EEE9AC00](v85);
  v302 = &v262 - v87;
  v88 = *(v65 + 24);
  v313 = a1;
  v88(v321, a11, v65, v86);
  v297 = 279;
  v307 = v16;
  v310 = a11;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_140:
    swift_once();
LABEL_87:
    v191 = sub_1ABF237F4();
    sub_1ABA7AA24(v191, qword_1ED871B40);
    v136 = v307;
    v137 = *(v307 + 16);
    p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
LABEL_69:
    v138 = *(p_AssociatedConformanceWitness - 32);
    v139 = v138;
    v140 = v63;
LABEL_36:
    v137(v139, v140, v16);
    v102 = sub_1ABF237D4();
    v141 = sub_1ABF24664();
    if (os_log_type_enabled(v102, v141))
    {
      v142 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      *&v314 = v313;
      *v142 = 136642819;
      v137(v301, v138, v16);
      v143 = sub_1ABF23C94();
      v145 = v144;
      (*(v136 + 8))(v138, v16);
      v146 = sub_1ABADD6D8(v143, v145, &v314);

      *(v142 + 4) = v146;
      _os_log_impl(&dword_1ABA78000, v102, v141, "Failed to parse %{sensitive}s.", v142, 0xCu);
      v147 = v313;
      sub_1ABA84B54(v313);
      MEMORY[0x1AC5AB8B0](v147, -1, -1);
      v112 = v142;
      goto LABEL_16;
    }

    (*(v136 + 8))(v138, v16);
    return;
  }

  v89 = v321[0];
  v90 = v321[1];
  v91 = v321[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), &v314);
  v16 = v316;
  if (v314 == v89 && *(&v314 + 1) == v90)
  {

LABEL_9:
    v94 = v309;

    v95 = v313;
    v96 = v310;
    (*(v65 + 32))(v310, v65);
    v97 = v312;
    (*(AssociatedConformanceWitness + 40))(v312, AssociatedConformanceWitness);
    (*(v311 + 8))(v63, v97);
    if (sub_1ABA7E1E0(v46, 1, v94) == 1)
    {
      (*(v304 + 8))(v46, v305);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v98 = sub_1ABF237F4();
      sub_1ABA7AA24(v98, qword_1ED871B40);
      v99 = v307;
      v100 = *(v307 + 16);
      v101 = v303;
      v100(v303, v95, v96);
      v102 = sub_1ABF237D4();
      v103 = sub_1ABF24664();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = v101;
        v105 = swift_slowAlloc();
        v313 = swift_slowAlloc();
        *&v314 = v313;
        *v105 = 136642819;
        v100(v301, v104, v96);
        v106 = sub_1ABF23C94();
        v108 = v107;
        (*(v99 + 8))(v104, v96);
LABEL_14:
        v109 = sub_1ABADD6D8(v106, v108, &v314);

        *(v105 + 4) = v109;
        _os_log_impl(&dword_1ABA78000, v102, v103, "Failed to parse %{sensitive}s.", v105, 0xCu);
        v110 = v313;
        sub_1ABA84B54(v313);
        v111 = v110;
LABEL_15:
        MEMORY[0x1AC5AB8B0](v111, -1, -1);
        v112 = v105;
LABEL_16:
        MEMORY[0x1AC5AB8B0](v112, -1, -1);

        return;
      }

      (*(v99 + 8))(v101, v96);
      return;
    }

    v113 = v306;
    v114 = v302;
    (*(v306 + 32))(v302, v46, v94);
    (*(v113 + 16))(v84, v114, v94);
    swift_getAssociatedConformanceWitness();
    v115 = v322;
    CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
    v322 = v115;
    if (v115 || (v116 = v315) == 0)
    {
LABEL_21:
      (*(v113 + 8))(v114, v94);
      return;
    }

    v117 = v299;
    swift_beginAccess();
    sub_1ABB4DCE0();
    v118 = *(*(v117 + 16) + 16);
    sub_1ABB4E0E4(v118);
    v119 = *(v117 + 16);
    *(v119 + 16) = v118 + 1;
    v120 = v119 + 88 * v118;
    *(v120 + 32) = v314;
    *(v120 + 48) = v116;
    *(v120 + 56) = v316;
    *(v120 + 72) = v317;
    *(v120 + 88) = v318;
    *(v120 + 104) = v319;
LABEL_20:
    *(v117 + 16) = v119;
    swift_endAccess();
    goto LABEL_21;
  }

  v296 = v91;
  v262 = v89;
  v93 = sub_1ABF25054();

  if (v93)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_142:
    swift_once();
LABEL_102:
    v212 = sub_1ABF237F4();
    sub_1ABA7AA24(v212, qword_1ED871B40);
    v136 = v307;
    v137 = *(v307 + 16);
    p_AssociatedConformanceWitness = &v303;
    goto LABEL_69;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v314);
  v121 = *(&v314 + 1);
  v122 = v314 == v262 && *(&v314 + 1) == v90;
  v16 = v310;
  v123 = v296;
  if (v122)
  {

LABEL_31:

    v125 = v313;
    (*(v65 + 32))(v16, v65);
    v126 = v312;
    v127 = swift_getAssociatedConformanceWitness();
    v128 = (*(v127 + 24))(v126, v127);
    v130 = v129;
    (*(v311 + 8))(v60, v126);
    if (v130)
    {
      v131 = v300;
      swift_beginAccess();
      sub_1ABB4DC20();
      v132 = *(*(v131 + 16) + 16);
      sub_1ABB4E024(v132);
      v133 = *(v131 + 16);
      *(v133 + 16) = v132 + 1;
      v134 = v133 + 16 * v132;
      *(v134 + 32) = v128;
      *(v134 + 40) = v130;
      *(v131 + 16) = v133;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v135 = sub_1ABF237F4();
    sub_1ABA7AA24(v135, qword_1ED871B40);
    v136 = v307;
    v137 = *(v307 + 16);
    v138 = v298;
    v139 = v298;
    v140 = v125;
    goto LABEL_36;
  }

  v124 = sub_1ABF25054();

  if (v124)
  {
    goto LABEL_31;
  }

  v148 = v297;
  if (v297 < 0x92)
  {
    __break(1u);
    goto LABEL_131;
  }

  v123 = v65;
  v94 = v309;
  v149 = AssociatedConformanceWitness;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_144;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v314);
  if (v314 == v262 && *(&v314 + 1) == v90)
  {

    goto LABEL_48;
  }

  v151 = sub_1ABF25054();

  if ((v151 & 1) == 0)
  {
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_147;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v314);
    if (v314 == v262 && *(&v314 + 1) == v90)
    {

LABEL_65:

      v167 = v287;
      v63 = v313;
      (*(v123 + 32))(v16, v123);
      v168 = v288;
      v169 = v312;
      (*(v149 + 40))(v312, v149);
      (*(v311 + 8))(v167, v169);
      if (sub_1ABA7E1E0(v168, 1, v94) == 1)
      {
        (*(v304 + 8))(v168, v305);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v170 = sub_1ABF237F4();
        sub_1ABA7AA24(v170, qword_1ED871B40);
        v136 = v307;
        v137 = *(v307 + 16);
        p_AssociatedConformanceWitness = &v316;
        goto LABEL_69;
      }

      v113 = v306;
      v114 = v284;
      (*(v306 + 32))(v284, v168, v94);
      v172 = v283;
      (*(v113 + 16))(v283, v114, v94);
      v173 = type metadata accessor for CustomGraphPerson(0);
      v174 = sub_1ABD09EBC(&unk_1EB4D7E80);
      v175 = swift_getAssociatedConformanceWitness();
      v176 = v322;
      CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v314, v172, v173, v94, v174, v175);
      v322 = v176;
      if (v176)
      {
        goto LABEL_21;
      }

      v177 = v315;
      if (!v315)
      {
        goto LABEL_21;
      }

      v117 = v274;
      swift_beginAccess();
      sub_1ABB4DEA8();
      v178 = *(*(v117 + 16) + 16);
      sub_1ABB4E2AC(v178);
LABEL_73:
      v119 = *(v117 + 16);
      *(v119 + 16) = v178 + 1;
      v179 = v119 + (v178 << 6);
      *(v179 + 32) = v314;
      *(v179 + 48) = v177;
      *(v179 + 56) = v316;
      *(v179 + 72) = v317;
      *(v179 + 88) = v318;
      goto LABEL_20;
    }

    v166 = sub_1ABF25054();

    if (v166)
    {
      goto LABEL_65;
    }

    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), &v314);
      if (v314 == v262 && *(&v314 + 1) == v90)
      {

        goto LABEL_85;
      }

      v185 = sub_1ABF25054();

      if (v185)
      {
LABEL_85:

        v186 = v123;
        v187 = *(v123 + 32);
        v188 = v278;
        v63 = v313;
        v187(v16, v186);
        v189 = v279;
        v190 = v312;
        (*(v149 + 40))(v312, v149);
        (*(v311 + 8))(v188, v190);
        if (sub_1ABA7E1E0(v189, 1, v94) != 1)
        {
          v192 = v306;
          v193 = v277;
          (*(v306 + 32))(v277, v189, v94);
          v194 = v275;
          (*(v192 + 16))(v275, v193, v94);
          v195 = type metadata accessor for CustomGraphEvent(0);
          v196 = sub_1ABD09EBC(&unk_1EB4D7EA0);
          v197 = swift_getAssociatedConformanceWitness();
          v198 = v322;
          CustomGraphEventRelationship.init<A>(from:initializationResources:)(v194, v195, v94, v196, v197);
          v322 = v198;
          if (v198 || (v201 = v315) == 0)
          {
            (*(v192 + 8))(v193, v94);
          }

          else
          {
            v202 = BYTE8(v316);
            v203 = v316;
            v204 = v314;
            v205 = v268;
            swift_beginAccess();
            sub_1ABB4DE78();
            v206 = *(*(v205 + 16) + 16);
            sub_1ABB4E27C(v206);
            v207 = *(v205 + 16);
            *(v207 + 16) = v206 + 1;
            v208 = v207 + 40 * v206;
            *(v208 + 32) = v204;
            *(v208 + 48) = v201;
            *(v208 + 56) = v203;
            *(v208 + 64) = v202 & 1;
            *(v205 + 16) = v207;
            swift_endAccess();
            (*(v192 + 8))(v277, v309);
          }

          return;
        }

        (*(v304 + 8))(v189, v305);
        if (qword_1ED871B38 == -1)
        {
          goto LABEL_87;
        }

        goto LABEL_140;
      }

      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v314);
        v121 = *(&v314 + 1);
        if (v314 == v262 && *(&v314 + 1) == v90)
        {

          goto LABEL_100;
        }

        v200 = sub_1ABF25054();

        if (v200)
        {
LABEL_100:

          v209 = v272;
          v63 = v313;
          (*(v123 + 32))(v16, v123);
          v210 = v273;
          v211 = v312;
          (*(v149 + 40))(v312, v149);
          (*(v311 + 8))(v209, v211);
          if (sub_1ABA7E1E0(v210, 1, v94) != 1)
          {
            v113 = v306;
            v114 = v270;
            (*(v306 + 32))(v270, v210, v94);
            v213 = v269;
            (*(v113 + 16))(v269, v114, v94);
            v214 = sub_1ABD19740();
            v215 = swift_getAssociatedConformanceWitness();
            v216 = v322;
            CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v314, v213, &type metadata for CustomGraphLocation, v94, v214, v215);
            v322 = v216;
            if (v216)
            {
              goto LABEL_21;
            }

            v177 = v315;
            if (!v315)
            {
              goto LABEL_21;
            }

            v117 = v265;
            swift_beginAccess();
            sub_1ABB4DD28();
            v178 = *(*(v117 + 16) + 16);
            sub_1ABB4E12C(v178);
            goto LABEL_73;
          }

          (*(v304 + 8))(v210, v305);
          if (qword_1ED871B38 == -1)
          {
            goto LABEL_102;
          }

          goto LABEL_142;
        }

        if (v148 >= 0xA1)
        {
          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v314);
            if (v314 == v262 && *(&v314 + 1) == v90)
            {

LABEL_115:

              v219 = v267;
              v121 = v313;
              (*(v123 + 32))(v16, v123);
              v220 = v312;
              v221 = swift_getAssociatedConformanceWitness();
              (*(v221 + 32))(&v314, v220, v221);
              (*(v311 + 8))(v219, v220);
              if (BYTE8(v314))
              {
                if (qword_1ED871B38 == -1)
                {
LABEL_117:
                  v229 = sub_1ABF237F4();
                  sub_1ABA7AA24(v229, qword_1ED871B40);
                  v230 = v307;
                  v231 = *(v307 + 16);
                  v232 = v266;
                  v231(v266, v121, v16);
                  v102 = sub_1ABF237D4();
                  v103 = sub_1ABF24664();
                  if (os_log_type_enabled(v102, v103))
                  {
                    v105 = swift_slowAlloc();
                    v313 = swift_slowAlloc();
                    *&v314 = v313;
                    *v105 = 136642819;
                    v231(v301, v232, v16);
                    v106 = sub_1ABF23C94();
                    v108 = v233;
                    (*(v230 + 8))(v232, v16);
                    goto LABEL_14;
                  }

                  (*(v230 + 8))(v232, v16);
                  return;
                }

LABEL_145:
                swift_once();
                goto LABEL_117;
              }

              v234 = v322;
              sub_1ABC4A630(v314, v222, v223, v224, v225, v226, v227, v228);
              v322 = v234;
              if (v234)
              {
                return;
              }

LABEL_120:
              v236 = v320;
              swift_beginAccess();
              sub_1ABB4DD40();
              v237 = *(*(a9 + 16) + 16);
              sub_1ABB4E144(v237);
              v238 = *(a9 + 16);
              *(v238 + 16) = v237 + 1;
              *(v238 + 8 * v237 + 32) = v236;
              *(a9 + 16) = v238;
              return;
            }

            v218 = sub_1ABF25054();

            if (v218)
            {
              goto LABEL_115;
            }

            if (v148 != 161)
            {
              if (_Records_GDEntityPredicate_records)
              {
                sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v314);
                if (v314 != v262 || *(&v314 + 1) != v90)
                {
                  v240 = sub_1ABF25054();

                  if ((v240 & 1) == 0)
                  {
                    return;
                  }

LABEL_132:
                  v241 = v263;
                  (*(v123 + 32))(v310, v123);
                  v242 = v312;
                  v243 = swift_getAssociatedConformanceWitness();
                  (*(v243 + 32))(&v314, v242, v243);
                  (*(v311 + 8))(v241, v242);
                  if ((BYTE8(v314) & 1) == 0)
                  {
                    v261 = v322;
                    sub_1ABC4A630(v314, v244, v245, v246, v247, v248, v249, v250);
                    v322 = v261;
                    if (v261)
                    {
                      return;
                    }

                    a9 = a10;
                    goto LABEL_120;
                  }

                  if (qword_1ED871B38 == -1)
                  {
LABEL_134:
                    v251 = sub_1ABF237F4();
                    sub_1ABA7AA24(v251, qword_1ED871B40);
                    v252 = *(v307 + 16);
                    v252(v264, v313, v310);
                    v102 = sub_1ABF237D4();
                    v253 = sub_1ABF24664();
                    if (os_log_type_enabled(v102, v253))
                    {
                      v105 = swift_slowAlloc();
                      v254 = swift_slowAlloc();
                      *&v314 = v254;
                      *v105 = 136642819;
                      v255 = v264;
                      v256 = v310;
                      v252(v301, v264, v310);
                      v257 = sub_1ABF23C94();
                      v259 = v258;
                      (*(v307 + 8))(v255, v256);
                      v260 = sub_1ABADD6D8(v257, v259, &v314);

                      *(v105 + 4) = v260;
                      _os_log_impl(&dword_1ABA78000, v102, v253, "Failed to parse %{sensitive}s.", v105, 0xCu);
                      sub_1ABA84B54(v254);
                      v111 = v254;
                      goto LABEL_15;
                    }

                    (*(v307 + 8))(v264, v310);
                    return;
                  }

LABEL_148:
                  swift_once();
                  goto LABEL_134;
                }

LABEL_131:

                goto LABEL_132;
              }

LABEL_152:
              __break(1u);
              return;
            }

            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        __break(1u);
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_151;
  }

LABEL_48:

  v152 = v294;
  v153 = v313;
  (*(v123 + 32))(v16, v123);
  v154 = v295;
  v155 = v312;
  (*(v149 + 40))(v312, v149);
  (*(v311 + 8))(v152, v155);
  if (sub_1ABA7E1E0(v154, 1, v94) == 1)
  {
    (*(v304 + 8))(v154, v305);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v156 = sub_1ABF237F4();
    sub_1ABA7AA24(v156, qword_1ED871B40);
    v157 = v307;
    v158 = *(v307 + 16);
    v159 = v291;
    v158(v291, v153, v16);
    v102 = sub_1ABF237D4();
    v103 = sub_1ABF24664();
    if (os_log_type_enabled(v102, v103))
    {
      v105 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      *&v314 = v313;
      *v105 = 136642819;
      v158(v301, v159, v16);
      v106 = sub_1ABF23C94();
      v108 = v160;
      (*(v157 + 8))(v159, v16);
      goto LABEL_14;
    }

    (*(v157 + 8))(v159, v16);
  }

  else
  {
    v161 = v306;
    v162 = v290;
    (*(v306 + 32))(v290, v154, v94);
    (*(v161 + 16))(v289, v162, v94);
    swift_getAssociatedConformanceWitness();

    v163 = v293;
    v164 = v322;
    CustomGraphDateRelationship.init<A>(from:initializationResources:)();
    v322 = v164;
    if (!v164)
    {
      if (sub_1ABA7E1E0(v163, 1, v286) == 1)
      {
        (*(v161 + 8))(v162, v94);
        sub_1ABAB480C(v163, &qword_1EB4D5F20, &qword_1ABF4F358);
        return;
      }

      v180 = v281;
      sub_1ABCF9424();
      v181 = v282;
      swift_beginAccess();
      sub_1ABB4DE30();
      v182 = *(*(v181 + 16) + 16);
      sub_1ABB4E234(v182);
      v183 = *(v181 + 16);
      *(v183 + 16) = v182 + 1;
      sub_1ABD0AD58();
      *(v181 + 16) = v183;
      swift_endAccess();
      sub_1ABD0ADB0(v180, type metadata accessor for CustomGraphDateRelationship);
    }

    (*(v161 + 8))(v162, v94);
  }
}

void CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)()
{
  sub_1ABAA0DEC();
  sub_1ABA8D140();
  swift_getAssociatedTypeWitness();
  sub_1ABA88904();
  swift_getAssociatedConformanceWitness();
  sub_1ABA9DE80();
  sub_1ABCF9198(v2, v3, v4, v5);
  if (v1)
  {
    sub_1ABA97860();
    v6 = sub_1ABA8B14C();
    v7(v6);
  }

  else
  {
    if (v13)
    {
      sub_1ABD1AED4(v12);
      sub_1ABD1BDD8();
      sub_1ABA97860();
      v8 = sub_1ABA8B14C();
      v9(v8);
    }

    else
    {
      sub_1ABA97860();
      v10 = sub_1ABA8B14C();
      v11(v10);
      sub_1ABD1AED4(v12);
      sub_1ABD1BDD8();
    }

    *(v0 + 16) = v13;
  }
}

uint64_t sub_1ABC8A96C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13[-v8];
  v10 = a1[1];
  v18 = *a1;
  v19 = v10;
  v20[0] = a1[2];
  *(v20 + 9) = *(a1 + 41);
  v14 = &v18;
  sub_1ABCF37DC(sub_1ABD192D8, a2, &v13[-v8]);
  if (v3)
  {
    goto LABEL_2;
  }

  v12 = type metadata accessor for CustomGraphDateRelationship(0);
  if (!sub_1ABA7E1E0(v9, 1, v12))
  {
    sub_1ABCF9424();
    sub_1ABA7B9B4(a3, 0, 1, v12);
LABEL_2:
    v15 = v18;
    v16 = v19;
    v17[0] = v20[0];
    *(v17 + 9) = *(v20 + 9);
    return sub_1ABD19208(&v15);
  }

  sub_1ABAB480C(v9, &qword_1EB4D5F20, &qword_1ABF4F358);
  v15 = v18;
  v16 = v19;
  v17[0] = v20[0];
  *(v17 + 9) = *(v20 + 9);
  sub_1ABD19208(&v15);
  return sub_1ABA7B9B4(a3, 1, 1, v12);
}

void CustomGraphDateRelationship.init<A>(from:initializationResources:)()
{
  sub_1ABA8CCF0();
  sub_1ABD1AF7C();
  v3 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v3);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7ED98();
  v5 = sub_1ABAB5F50();
  sub_1ABD1B0B0(v5, v6, v7, &protocol requirements base descriptor for SubentityProtocol, &associated conformance descriptor for SubentityProtocol.BaseEntityProtocol.FactType: SubentityFactProtocol);
  sub_1ABD1B110();
  sub_1ABCF3BF0();
  if (!v0)
  {
    v10 = type metadata accessor for CustomGraphDateRelationship(0);
    if (sub_1ABA7E1E0(v2, 1, v10))
    {
      sub_1ABAB480C(v2, &qword_1EB4D5F20, &qword_1ABF4F358);
      sub_1ABA8AD50();
      v11 = sub_1ABA7EDF8();
      v12(v11);
      sub_1ABA7ED8C();
      sub_1ABA7B9B4(v13, v14, v15, v10);
      goto LABEL_5;
    }

    sub_1ABA9DF34();
    sub_1ABCF9424();
    sub_1ABA7B9B4(v1, 0, 1, v10);
  }

  sub_1ABA8AD50();
  v8 = sub_1ABA7EDF8();
  v9(v8);
LABEL_5:
  sub_1ABA8A720();
  sub_1ABA8CB14();
}

uint64_t sub_1ABC8B078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1ABF21EB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  *a3 = a1;
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v12, 1, v6) == 1)
  {
    if (*(a1 + 16))
    {
      (*(v7 + 16))(v9, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
      (*(v7 + 32))(v15, v9, v6);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    sub_1ABA7B9B4(v15, v16, 1, v6);
    sub_1ABAB480C(a2, &qword_1EB4D9BF0, &qword_1ABF34240);
    if (sub_1ABA7E1E0(v12, 1, v6) != 1)
    {
      sub_1ABAB480C(v12, &qword_1EB4D9BF0, &qword_1ABF34240);
    }
  }

  else
  {
    sub_1ABAB480C(a2, &qword_1EB4D9BF0, &qword_1ABF34240);
    (*(v7 + 32))(v15, v12, v6);
    sub_1ABA7B9B4(v15, 0, 1, v6);
  }

  sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  return sub_1ABAE2F1C();
}

uint64_t sub_1ABC8B318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CustomGraphDateRelationship(0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  *a3 = a1;
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v9, 1, v6) == 1)
  {
    if (*(a1 + 16))
    {
      sub_1ABD0AD58();
      sub_1ABCF9424();
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    sub_1ABA7B9B4(v12, v13, 1, v6);
    sub_1ABAB480C(a2, &qword_1EB4D5F20, &qword_1ABF4F358);
    if (sub_1ABA7E1E0(v9, 1, v6) != 1)
    {
      sub_1ABAB480C(v9, &qword_1EB4D5F20, &qword_1ABF4F358);
    }
  }

  else
  {
    sub_1ABAB480C(a2, &qword_1EB4D5F20, &qword_1ABF4F358);
    sub_1ABCF9424();
    sub_1ABA7B9B4(v12, 0, 1, v6);
  }

  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  return sub_1ABAE2F1C();
}

void CustomGraphEvent.init(typedId:all_eventTypes:all_name:all_date:all_attendees:all_cooccurringEvents:all_locations:all_startLocation:all_endLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABA7E2A8();
  v28 = v27;
  v46 = v29;
  v31 = v30;
  v33 = v32;
  sub_1ABD1B80C();
  sub_1ABD1B3D0();
  v34 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v34);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA9F7AC();
  *v21 = *v25;
  v21[1] = v24;
  v36 = sub_1ABB2B834(v23);
  v21[2] = v23;
  v21[3] = v36;
  v21[4] = v37;
  v38 = sub_1ABA8B2DC();
  v39 = type metadata accessor for CustomGraphEvent(v38);
  sub_1ABC8B318(v22, v26, (v21 + v39[7]));
  *(v21 + v39[8]) = v33;
  *(v21 + v39[9]) = v31;
  *(v21 + v39[10]) = v46;
  sub_1ABAAFB28();
  v40 = v21 + v39[11];
  *v40 = v28;
  *(v40 + 1) = v41;
  v40[16] = v42;
  sub_1ABAAFB28();
  v43 = v21 + v39[12];
  *v43 = a21;
  *(v43 + 1) = v44;
  v43[16] = v45;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC8B6F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954746E657665 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001ABF8D5C0 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1ABF25054();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABC8B9E4(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 0x707954746E657665;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x6565646E65747461;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x636F4C7472617473;
      break;
    case 8:
      result = 0x7461636F4C646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC8BB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC8B6F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC8BB34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABC8B9DC();
  *a1 = result;
  return result;
}

uint64_t sub_1ABC8BB5C(uint64_t a1)
{
  v2 = sub_1ABD09D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC8BB98(uint64_t a1)
{
  v2 = sub_1ABD09D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6580, &qword_1ABF50B30);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v3 = sub_1ABD09D0C();
  sub_1ABA8D27C(&type metadata for CustomGraphEvent.CodingKeys, v4, v3);
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  v8 = sub_1ABAA19EC();
  sub_1ABAA6564(v8, v9, v10);
  if (!v0)
  {
    sub_1ABA8B6EC();
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    v11 = sub_1ABAA2D10();
    sub_1ABAA6564(v11, v12, v13);
    v14 = *(v1 + 16);
    sub_1ABD1B178();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v15 = sub_1ABAA2D10();
    sub_1ABAA6564(v15, v16, v17);
    if (v14)
    {
      sub_1ABAA1210();
    }

    else
    {
      sub_1ABAA1210();

      type metadata accessor for CustomGraphEvent(0);
      sub_1ABAA4C54();
      sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
      sub_1ABA80C14();
      sub_1ABD0A358(v18);
      v19 = sub_1ABA82E78();
      sub_1ABAA6564(v19, v20, v21);
      sub_1ABAA17C0();
      sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
      sub_1ABD09F00();
      v22 = sub_1ABAA2D10();
      sub_1ABAA6564(v22, v23, v24);
      sub_1ABD1AF88(0);
      sub_1ABD1AFDC();
      sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
      sub_1ABD09FB0();
      v25 = sub_1ABAA2D10();
      sub_1ABAA6564(v25, v26, v27);
      sub_1ABD1AF88(348124);
      sub_1ABD1AFD0();
      sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
      sub_1ABD0A060();
      v28 = sub_1ABAA2D10();
      sub_1ABAA6564(v28, v29, v30);
      sub_1ABAA2300(16);
      sub_1ABD1AFC4();

      sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
      sub_1ABD0A110();
      sub_1ABAA1328();
      sub_1ABD1AFA0();

      sub_1ABAA2300(0);
      sub_1ABD1AFB8();

      v33 = sub_1ABD1ABF4();
      sub_1ABD1AF60(v33, v34, v35);
      sub_1ABD1AFA0();
    }
  }

  v31 = sub_1ABA89DE4();
  v32(v31);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8D4BC();
  v3 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA8176C();
  sub_1ABAD219C(&qword_1EB4D6650, &qword_1ABF50B90);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9F7AC();
  v6 = type metadata accessor for CustomGraphEvent(0);
  v7 = sub_1ABAB6924(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C21C();
  v9 = v8;
  v10 = v0[3];
  v11 = v0[4];
  v12 = sub_1ABA7ABE4();
  sub_1ABA88DCC(v12, v13);
  sub_1ABD09D0C();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (!v1)
  {
    v14 = sub_1ABA7ABE4();
    sub_1ABAD219C(v14, v15);
    sub_1ABAAFAF4();
    sub_1ABA8F54C();
    sub_1ABD1044C(v16);
    v17 = sub_1ABD1AC44();
    sub_1ABD1BBF8(v17, v18);
    *v9 = v35;
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABA8B6EC();
    sub_1ABD0A1FC();
    sub_1ABA8B4F0();
    sub_1ABD1C1C4(v19, v20);
    sub_1ABAAFAD4();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD1B178();
    sub_1ABD0A2D4();
    sub_1ABA8B4F0();
    sub_1ABD1B4DC(v21, v22);
    sub_1ABD1B11C();
    sub_1ABA7F460();
    sub_1ABD0A358(v23);
    sub_1ABD1B110();
    sub_1ABF24E64();
    sub_1ABA94EB8();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABA8B908();
    sub_1ABD0A408();
    sub_1ABAA1F98();
    sub_1ABF24E64();
    sub_1ABA897A8();
    sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
    sub_1ABD1AFDC();
    sub_1ABD0A4B8();
    sub_1ABA8B4F0();
    sub_1ABD1B4BC(v24, v25);
    sub_1ABD1B7DC();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD1AFD0();
    sub_1ABD0A568();
    sub_1ABA8B4F0();
    sub_1ABD1B4BC(v26, v27);
    *(v9 + *(v34 + 40)) = v35;
    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD1AFC4();
    sub_1ABD0A618();
    sub_1ABA96FDC();
    sub_1ABD1B030();
    sub_1ABF24E64();
    sub_1ABA898CC();
    sub_1ABA8A644(v28);
    sub_1ABAB65FC(8);
    sub_1ABD1B030();
    sub_1ABF24E64();
    v29 = sub_1ABAB3C1C();
    v30(v29);
    sub_1ABA898CC();
    sub_1ABA8A644(v31);
    sub_1ABD0AD58();
    sub_1ABA84B54(v0);
    v32 = sub_1ABA7D000();
    sub_1ABD0ADB0(v32, v33);
    goto LABEL_12;
  }

  sub_1ABAA0EF8();
  sub_1ABA84B54(v0);
  if (v3)
  {
    sub_1ABAB480C(v9 + *(v34 + 28), &qword_1EB4D5F30, &unk_1ABF50B00);
    if ((v2 & 1) == 0)
    {
LABEL_10:
      if (v11)
      {
LABEL_11:

        if ((v10 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  if (v11)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v10)
  {
LABEL_7:
  }

LABEL_12:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABC8C598()
{
  v0 = sub_1ABA8971C();
  v1(v0);
}

void sub_1ABC8C688()
{
  sub_1ABA7BCA8();
  v86 = v1;
  v87 = v2;
  v3 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v3);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7FBE0();
  v81 = v5;
  v82 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7C21C();
  v83 = v7;
  sub_1ABA7D028();
  v102 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B074(v102);
  v85 = v9;
  sub_1ABA7D028();
  v91 = swift_allocObject();
  sub_1ABD1B074(v91);
  v75 = v10;
  sub_1ABA7D028();
  v90 = swift_allocObject();
  sub_1ABD1B074(v90);
  sub_1ABA7D028();
  v89 = swift_allocObject();
  sub_1ABD1B074(v89);
  v76 = v11;
  sub_1ABA7D028();
  v88 = swift_allocObject();
  sub_1ABD1B074(v88);
  v77 = v12;
  sub_1ABA7D028();
  v13 = swift_allocObject();
  sub_1ABD1B074(v13);
  v78 = v14;
  sub_1ABA7D028();
  v15 = swift_allocObject();
  sub_1ABD1B074(v15);
  v79 = v16;
  sub_1ABA7D028();
  v17 = swift_allocObject();
  sub_1ABD1B074(v17);
  sub_1ABA7D028();
  v18 = swift_allocObject();
  sub_1ABD1B074(v18);
  v80 = v19;
  sub_1ABA7D028();
  v20 = swift_allocObject();
  sub_1ABD1B074(v20);
  v84 = v21;
  sub_1ABA7D028();
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  sub_1ABD1B534();
  v23 = swift_allocObject();
  v23[2] = v102;
  v23[3] = v91;
  v23[4] = v87;
  v23[5] = v90;
  v23[6] = v89;
  v23[7] = v88;
  v23[8] = v13;
  v23[9] = v15;
  v23[10] = v17;
  v23[11] = v18;
  v23[12] = v20;
  v23[13] = v22;

  sub_1ABD1AD3C();
  sub_1ABC82584(v86, v24, 0, v25, v23, v26, &v100);
  if (v0)
  {
  }

  else
  {

    sub_1ABD1C01C();
    sub_1ABA7F2A0(v84, v27);
    v28 = *(v20 + 16);
    v29 = *(v28 + 16);
    if (v29)
    {

      v30 = MEMORY[0x1E69E7CC0];
      v31 = 32;
      do
      {
        sub_1ABD1B924(v28 + v31);
        if (v101)
        {
          sub_1ABAA0AB0(v101);
          sub_1ABD1B9E4();
          v32 = v99[0];
          if (v99[0] != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1ABA7BEF0();
              sub_1ABADADEC(v35, v36, v37, v30);
              v30 = v38;
            }

            v34 = *(v30 + 16);
            v33 = *(v30 + 24);
            if (v34 >= v33 >> 1)
            {
              v39 = sub_1ABA7BBEC(v33);
              sub_1ABADADEC(v39, v34 + 1, 1, v30);
              v30 = v40;
            }

            *(v30 + 16) = v34 + 1;
            *(v30 + v34 + 32) = v32;
          }
        }

        v31 += 8;
        --v29;
      }

      while (v29);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABD1BE5C();
    v41 = sub_1ABC4A730();
    *v83 = v100;
    v42 = sub_1ABD1B0E8(v41, &v100);
    v83[1] = *v85;
    sub_1ABA8A740(v42, v99);
    v43 = *v75;
    v44 = sub_1ABB2B834(*v75);
    v83[2] = v43;
    v83[3] = v44;
    v83[4] = v45;
    sub_1ABA8A740(v44, &v98);
    sub_1ABD1AF20();
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v46, v47, v48, v49);
    v50 = v82[7];

    v52 = sub_1ABC8B318(v51, v81, (v83 + v50));
    v53 = sub_1ABD1B0E8(v52, &v97);
    *(v83 + v82[8]) = *v76;
    v54 = sub_1ABD1B0E8(v53, &v96);
    *(v83 + v82[9]) = *v77;
    v55 = sub_1ABD1B0E8(v54, &v95);
    *(v83 + v82[10]) = *v78;
    v56 = sub_1ABAAA634(v55, &v94);
    *(v83 + v82[11]) = *v79;
    sub_1ABA890D8(v56, &v93);
    sub_1ABAAFB28();
    sub_1ABD1B8E4(v57);
    sub_1ABD1B1F4(v58, v59);
    sub_1ABD1BFD0();
    sub_1ABAAFB28();
    v60 = v83 + v82[13];
    *v60 = v80;
    *(v60 + 1) = v61;
    v60[16] = v62;
    sub_1ABAAFB28();
    v64 = v83 + v82[14];
    *v64 = v28;
    *(v64 + 1) = v65;
    v64[16] = v66;
    if (*(v30 + 16))
    {
      v67 = *(v30 + 32);
    }

    else
    {
      v67 = 25;
    }

    v68 = v83 + v82[15];
    *v68 = v30;
    v68[8] = v67;
    v69 = v63;
    sub_1ABA7F2A0(v63, &v92);
    v70 = *v69;
    v71 = *(*v69 + 16);
    if (v71)
    {
      v72 = *(v70 + 32);
    }

    else
    {
      v72 = 0;
    }

    v73 = v71 == 0;

    v74 = v83 + v82[16];
    *v74 = v70;
    *(v74 + 1) = v72;
    v74[16] = v73;

    sub_1ABCF9424();
  }

  sub_1ABD1C004();
  sub_1ABA7BC90();
}

void sub_1ABC8CE40()
{
  sub_1ABA7BCA8();
  v77 = v1;
  v80 = v2;
  v74 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7FBE0();
  v73 = v6;
  sub_1ABA7D028();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B09C(v7);
  v75 = v9;
  sub_1ABA7D028();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v69 = (v10 + 16);
  sub_1ABA7D028();
  v11 = swift_allocObject();
  sub_1ABD1B09C(v11);
  sub_1ABA7D028();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v70 = (v12 + 16);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  sub_1ABA7D028();
  v78 = swift_allocObject();
  sub_1ABD1B09C(v78);
  v71 = v14;
  sub_1ABA7D028();
  v79 = swift_allocObject();
  sub_1ABD1B09C(v79);
  v72 = v15;
  sub_1ABA7D028();
  v81 = swift_allocObject();
  sub_1ABD1B09C(v81);
  sub_1ABA7D028();
  v82 = swift_allocObject();
  sub_1ABD1B09C(v82);
  sub_1ABA7D028();
  v16 = swift_allocObject();
  sub_1ABD1B09C(v16);
  v76 = v17;
  sub_1ABA7D028();
  v18 = swift_allocObject();
  sub_1ABD1B09C(v18);
  sub_1ABD1B534();
  v19 = swift_allocObject();
  v19[2] = v7;
  v19[3] = v10;
  v19[4] = v80;
  v19[5] = v11;
  v19[6] = v12;
  v19[7] = v13;
  v19[8] = v78;
  v19[9] = v79;
  v19[10] = v81;
  v19[11] = v82;
  v19[12] = v16;
  v19[13] = v18;

  v20 = sub_1ABA89488();
  v77(&v90, v20, 0, sub_1ABD1A0F4, v19);
  if (v0)
  {
  }

  else
  {

    sub_1ABD1B8F4();
    sub_1ABA8A740(v21, v22);
    v23 = *v76;
    v24 = *(*v76 + 16);
    if (v24)
    {

      v25 = MEMORY[0x1E69E7CC0];
      v26 = 32;
      do
      {
        sub_1ABD1B924(v23 + v26);
        if (v91)
        {
          sub_1ABAA0AB0(v91);
          sub_1ABD1B9E4();
          v27 = v89[0];
          if (v89[0] != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_1ABA8A534();
              sub_1ABADADEC(v30, v31, v32, v33);
              v25 = v34;
            }

            v29 = *(v25 + 16);
            v28 = *(v25 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_1ABA7BBEC(v28);
              sub_1ABA9ECC4();
              sub_1ABADADEC(v35, v36, v37, v38);
              v25 = v39;
            }

            *(v25 + 16) = v29 + 1;
            *(v25 + v29 + 32) = v27;
          }
        }

        v26 += 8;
        --v24;
      }

      while (v24);
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABC4A730();
    sub_1ABD1BF7C(v90);
    v42 = sub_1ABA890D8(v40, v41);
    v74[1] = *v75;
    sub_1ABD1B058(v42, v89);
    v43 = *v69;
    v44 = sub_1ABB2B834(*v69);
    v74[2] = v43;
    v74[3] = v44;
    v74[4] = v45;
    sub_1ABD1B1F4(v44, &v88);
    sub_1ABD1AF20();
    v49 = sub_1ABA9DFB8(v73, v46, v47, v48);
    v50 = type metadata accessor for CustomGraphActivityEvent(v49);
    v51 = v50[7];

    v53 = sub_1ABC8B318(v52, v73, (v74 + v51));
    v54 = sub_1ABD1B0E8(v53, &v87);
    *(v74 + v50[8]) = *v70;
    v55 = sub_1ABD1B0E8(v54, &v86);
    *(v74 + v50[9]) = *(v13 + 16);
    v56 = sub_1ABD1B0E8(v55, &v85);
    *(v74 + v50[10]) = *v71;
    v57 = sub_1ABD1B0E8(v56, &v84);
    *(v74 + v50[11]) = *v72;
    sub_1ABD1B0E8(v57, &v83);
    sub_1ABAAFB28();
    sub_1ABD1B8E4(v58);
    sub_1ABD1B080(v59, v60);
    sub_1ABD1B610();
    sub_1ABAAFB28();
    sub_1ABD1BFBC(v61);
    sub_1ABD1BE24();
    sub_1ABAAFB28();
    v62 = (v74 + v50[14]);
    *v62 = v76;
    v62[1] = v63;
    sub_1ABA889F8(v64);
    if (v65)
    {
      v66 = *(v25 + 32);
    }

    else
    {
      v66 = 25;
    }

    sub_1ABD1BAD4(v66);
    sub_1ABA7F2A0(v68, v67);

    sub_1ABD1C1E4(v50[16]);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABC8D554()
{
  sub_1ABA7BCA8();
  v82 = v1;
  v83 = v2;
  v84 = v3;
  v87 = v4;
  v80 = v5;
  v6 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v79 = v8;
  sub_1ABA7D028();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B09C(v9);
  v74 = v11;
  sub_1ABA7D028();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v73 = (v12 + 16);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  sub_1ABD1B09C(v13);
  sub_1ABA7D028();
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v75 = (v14 + 16);
  sub_1ABA7D028();
  v86 = swift_allocObject();
  sub_1ABD1B09C(v86);
  v76 = v15;
  sub_1ABA7D028();
  v85 = swift_allocObject();
  sub_1ABD1B09C(v85);
  v77 = v16;
  sub_1ABA7D028();
  v99 = swift_allocObject();
  sub_1ABD1B09C(v99);
  v78 = v17;
  sub_1ABA7D028();
  v88 = swift_allocObject();
  sub_1ABD1B09C(v88);
  sub_1ABA7D028();
  v89 = swift_allocObject();
  sub_1ABD1B09C(v89);
  sub_1ABA7D028();
  v18 = swift_allocObject();
  sub_1ABD1B09C(v18);
  v81 = v19;
  sub_1ABA7D028();
  v20 = swift_allocObject();
  sub_1ABD1B09C(v20);
  v21 = swift_allocObject();
  v21[2] = v83;
  v21[3] = v84;
  v21[4] = v9;
  v21[5] = v12;
  v21[6] = v87;
  v21[7] = v13;
  v21[8] = v14;
  v21[9] = v86;
  v21[10] = v85;
  v21[11] = v99;
  v21[12] = v88;
  v21[13] = v89;
  v21[14] = v18;
  v21[15] = v20;

  v22 = sub_1ABA89488();
  v82(&v97, v22, 0, sub_1ABD1A0B8, v21);
  if (v0)
  {
  }

  else
  {

    sub_1ABD1B8F4();
    sub_1ABA8A740(v23, v24);
    v25 = *v81;
    v26 = *(*v81 + 16);
    if (v26)
    {

      v27 = MEMORY[0x1E69E7CC0];
      v28 = 32;
      do
      {
        sub_1ABD1B924(v25 + v28);
        if (v98)
        {
          sub_1ABAA0AB0(v98);
          sub_1ABD1B9E4();
          v29 = v96[0];
          if (v96[0] != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_1ABA8A534();
              sub_1ABADADEC(v32, v33, v34, v35);
              v27 = v36;
            }

            v31 = *(v27 + 16);
            v30 = *(v27 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_1ABA7BBEC(v30);
              sub_1ABA9ECC4();
              sub_1ABADADEC(v37, v38, v39, v40);
              v27 = v41;
            }

            *(v27 + 16) = v31 + 1;
            *(v27 + v31 + 32) = v29;
          }
        }

        v28 += 8;
        --v26;
      }

      while (v26);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABC4A730();
    sub_1ABD1BF7C(v97);
    v44 = sub_1ABD1B058(v42, v43);
    v80[1] = *v74;
    sub_1ABD1B058(v44, v96);
    v45 = *v73;
    v46 = sub_1ABB2B834(*v73);
    v80[2] = v45;
    v80[3] = v46;
    v80[4] = v47;
    sub_1ABD1B058(v46, &v95);
    sub_1ABD1AF20();
    v51 = sub_1ABA9DFB8(v79, v48, v49, v50);
    v52 = type metadata accessor for CustomGraphActivityEvent(v51);
    v53 = v52[7];

    v55 = sub_1ABC8B318(v54, v79, (v80 + v53));
    v56 = sub_1ABD1B080(v55, &v94);
    *(v80 + v52[8]) = *v75;
    v57 = sub_1ABD1B080(v56, &v93);
    *(v80 + v52[9]) = *v76;
    v58 = sub_1ABD1B080(v57, &v92);
    *(v80 + v52[10]) = *v77;
    v59 = sub_1ABD1B080(v58, &v91);
    *(v80 + v52[11]) = *v78;
    sub_1ABD1B080(v59, &v90);
    sub_1ABAAFB28();
    sub_1ABD1B8E4(v60);
    sub_1ABD1B080(v61, v62);
    sub_1ABD1B610();
    sub_1ABAAFB28();
    sub_1ABD1BFBC(v63);
    v65 = *v64;
    sub_1ABAAFB28();
    v66 = (v80 + v52[14]);
    *v66 = v65;
    v66[1] = v67;
    sub_1ABA889F8(v68);
    if (v69)
    {
      v70 = *(v27 + 32);
    }

    else
    {
      v70 = 25;
    }

    sub_1ABD1BAD4(v70);
    sub_1ABAAA634(v71, v72);

    sub_1ABD1C1E4(v52[16]);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABC8DCFC(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABC8DF94(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v158 = a7;
  v159 = a6;
  v161 = a5;
  v162 = a4;
  v163 = a2;
  v17 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v155 - v18;
  v20 = type metadata accessor for CustomGraphDateRelationship(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v23;
  v157 = a8;
  v164 = v13;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    __break(1u);
    goto LABEL_151;
  }

  v183 = a1;
  v24 = *a1;
  v25 = *(a1 + 1);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v180);
  if (*&v180[0] == v24 && *(&v180[0] + 1) == v25)
  {

LABEL_69:
    v77 = v183;
    *(v179 + 10) = *(v183 + 82);
    v78 = *(v183 + 56);
    v177 = *(v183 + 40);
    v178 = v78;
    v179[0] = *(v183 + 72);
    v79 = v164;
    if (BYTE9(v179[1]) == 1)
    {
      v80 = *(v183 + 56);
      v175 = *(v183 + 40);
      v176[0] = v80;
      v176[1] = *(v183 + 72);
      *(&v176[1] + 9) = *(v183 + 81);
      MEMORY[0x1EEE9AC00](v28);
      *(&v155 - 2) = &v175;
      v172 = v177;
      v173 = v178;
      *v174 = v179[0];
      *(&v174[1] + 2) = *(v179 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(&v172, &v165);
      sub_1ABCF8EE8(sub_1ABD1A8C8, v180);
      if (v79 || (v82 = *&v180[1]) == 0)
      {
        v165 = v175;
        v166 = v176[0];
        v167[0] = v176[1];
        *(v167 + 9) = *(&v176[1] + 9);
        v81 = &v165;
LABEL_72:
        sub_1ABD19208(v81);
LABEL_77:
        sub_1ABAB480C(&v177, &qword_1EB4D7E60, &unk_1ABF5E780);
        return;
      }

      v165 = v175;
      v166 = v176[0];
      v167[0] = v176[1];
      *(v167 + 9) = *(&v176[1] + 9);
      sub_1ABD19208(&v165);
      v83 = v163;
      swift_beginAccess();
      sub_1ABB4DCE0();
      v84 = *(*(v83 + 16) + 16);
      sub_1ABB4E0E4(v84);
      v85 = *(v83 + 16);
      *(v85 + 16) = v84 + 1;
      v86 = v85 + 88 * v84;
      *(v86 + 32) = v180[0];
      *(v86 + 48) = v82;
      *(v86 + 56) = *(&v180[1] + 8);
      *(v86 + 72) = *(&v180[2] + 8);
      *(v86 + 88) = *(&v180[3] + 8);
      *(v86 + 104) = *(&v180[4] + 8);
LABEL_75:
      *(v83 + 16) = v85;
      goto LABEL_76;
    }

LABEL_111:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v128 = sub_1ABF237F4();
    sub_1ABA7AA24(v128, qword_1ED871B40);
    sub_1ABAE2EC4();
    v88 = sub_1ABF237D4();
    v89 = sub_1ABF24664();
    if (os_log_type_enabled(v88, v89))
    {
LABEL_114:
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v172 = v91;
      *v90 = 136642819;
      memcpy(v180, v77, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v92 = sub_1ABF23C94();
      v94 = &v172;
      goto LABEL_115;
    }

    goto LABEL_116;
  }

  v155 = v25;
  v156 = v24;
  v27 = sub_1ABF25054();

  if (v27)
  {
    goto LABEL_69;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_159;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v180);
  if (*&v180[0] == v156 && *(&v180[0] + 1) == v155)
  {

LABEL_79:
    v77 = v183;
    if (!v183[97])
    {
      v96 = *(v183 + 5);
      v95 = *(v183 + 6);
      swift_beginAccess();

      sub_1ABB4DC20();
      v97 = *(*(a3 + 16) + 16);
      sub_1ABB4E024(v97);
      v98 = *(a3 + 16);
      *(v98 + 16) = v97 + 1;
      v99 = v98 + 16 * v97;
      *(v99 + 32) = v96;
      *(v99 + 40) = v95;
      *(a3 + 16) = v98;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v87 = sub_1ABF237F4();
    sub_1ABA7AA24(v87, qword_1ED871B40);
    sub_1ABAE2EC4();
    v88 = sub_1ABF237D4();
    v89 = sub_1ABF24664();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v177 = v91;
      *v90 = 136642819;
      memcpy(v180, v77, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v92 = sub_1ABF23C94();
      v94 = &v177;
LABEL_115:
      v129 = sub_1ABADD6D8(v92, v93, v94);

      *(v90 + 4) = v129;
      _os_log_impl(&dword_1ABA78000, v88, v89, "Failed to parse %{sensitive}s.", v90, 0xCu);
      sub_1ABA84B54(v91);
      MEMORY[0x1AC5AB8B0](v91, -1, -1);
      MEMORY[0x1AC5AB8B0](v90, -1, -1);

      return;
    }

LABEL_116:

    v103 = &qword_1EB4D1148;
    v104 = &qword_1ABF332D0;
    v105 = v77;
    goto LABEL_117;
  }

  v30 = sub_1ABF25054();

  if (v30)
  {
    goto LABEL_79;
  }

  v31 = v164;
  v32 = v156;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_161:
    swift_once();
LABEL_126:
    v134 = sub_1ABF237F4();
    sub_1ABA7AA24(v134, qword_1ED871B40);
    v77 = v183;
    sub_1ABAE2EC4();
    v88 = sub_1ABF237D4();
    v89 = sub_1ABF24664();
    if (!os_log_type_enabled(v88, v89))
    {

      v135 = v77;
LABEL_157:
      sub_1ABAB480C(v135, &qword_1EB4D1148, &qword_1ABF332D0);
      return;
    }

    goto LABEL_114;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v180);
  if (*&v180[0] == v32 && *(&v180[0] + 1) == v155)
  {

LABEL_86:
    v77 = v183;
    *(v179 + 10) = *(v183 + 82);
    v100 = *(v183 + 56);
    v177 = *(v183 + 40);
    v178 = v100;
    v179[0] = *(v183 + 72);
    if (BYTE9(v179[1]) == 1)
    {
      v101 = *(v183 + 56);
      v181[0] = *(v183 + 40);
      v181[1] = v101;
      v182[0] = *(v183 + 72);
      *(v182 + 9) = *(v183 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v102 = v162;

      sub_1ABC8A96C(v181, v102, v19);
      if (!v31)
      {
        if (sub_1ABA7E1E0(v19, 1, v20) != 1)
        {
          sub_1ABCF9424();
          v110 = v161;
          swift_beginAccess();
          sub_1ABB4DE30();
          v111 = *(*(v110 + 16) + 16);
          sub_1ABB4E234(v111);
          v112 = *(v110 + 16);
          *(v112 + 16) = v111 + 1;
          sub_1ABD0AD58();
          *(v110 + 16) = v112;
          swift_endAccess();
          sub_1ABAB480C(&v177, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v22, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v177, &qword_1EB4D7E60, &unk_1ABF5E780);
        v103 = &qword_1EB4D5F20;
        v104 = &qword_1ABF4F358;
        v105 = v19;
        goto LABEL_117;
      }

      goto LABEL_88;
    }

    goto LABEL_111;
  }

  v34 = sub_1ABF25054();

  if (v34)
  {
    goto LABEL_86;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_163;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v180);
  if (*&v180[0] == v156 && *(&v180[0] + 1) == v155)
  {

LABEL_92:
    v77 = v183;
    *(v179 + 10) = *(v183 + 82);
    v106 = *(v183 + 56);
    v177 = *(v183 + 40);
    v178 = v106;
    v179[0] = *(v183 + 72);
    if (BYTE9(v179[1]) == 1)
    {
      v107 = *(v183 + 56);
      v165 = *(v183 + 40);
      v166 = v107;
      v167[0] = *(v183 + 72);
      *(v167 + 9) = *(v183 + 81);
      MEMORY[0x1EEE9AC00](v37);
      *(&v155 - 2) = &v165;
      v180[0] = v177;
      v180[1] = v178;
      v180[2] = v179[0];
      *(&v180[2] + 10) = *(v179 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v180, &v172);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v155 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v108, v109, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, *(&v165 + 1), v166, SBYTE8(v166), *&v167[0], *(&v167[0] + 1), *&v167[1], *(&v167[1] + 1), v168, v169, v170, v171, v172, *(&v172 + 1));
      if (v31 || (v113 = *&v176[0]) == 0)
      {
        v172 = v165;
        v173 = v166;
        *v174 = v167[0];
        *(&v174[1] + 1) = *(v167 + 9);
LABEL_95:
        v81 = &v172;
        goto LABEL_72;
      }

      v172 = v165;
      v173 = v166;
      *v174 = v167[0];
      *(&v174[1] + 1) = *(v167 + 9);
      sub_1ABD19208(&v172);
      v83 = v159;
      swift_beginAccess();
      sub_1ABB4DEA8();
      v114 = *(*(v83 + 16) + 16);
      sub_1ABB4E2AC(v114);
      v85 = *(v83 + 16);
      *(v85 + 16) = v114 + 1;
      v115 = v85 + (v114 << 6);
      *(v115 + 32) = v175;
      *(v115 + 48) = v113;
      *(v115 + 56) = *(v176 + 8);
      *(v115 + 72) = *(&v176[1] + 8);
      *(v115 + 88) = BYTE8(v176[2]);
      goto LABEL_75;
    }

    goto LABEL_111;
  }

  v36 = sub_1ABF25054();

  if (v36)
  {
    goto LABEL_92;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), v180);
  if (*&v180[0] == v156 && *(&v180[0] + 1) == v155)
  {

LABEL_100:
    v77 = v183;
    *(v179 + 10) = *(v183 + 82);
    v116 = *(v183 + 56);
    v177 = *(v183 + 40);
    v178 = v116;
    v179[0] = *(v183 + 72);
    if (BYTE9(v179[1]) == 1)
    {
      v117 = *(v183 + 56);
      v165 = *(v183 + 40);
      v166 = v117;
      v167[0] = *(v183 + 72);
      *(v167 + 9) = *(v183 + 81);
      MEMORY[0x1EEE9AC00](v40);
      *(&v155 - 2) = &v165;
      v180[0] = v177;
      v180[1] = v178;
      v180[2] = v179[0];
      *(&v180[2] + 10) = *(v179 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v180, &v172);
      sub_1ABD08790(sub_1ABD1A8C8, (&v155 - 4), &unk_1F2099F30, sub_1ABD1AB54, sub_1ABD19310);
      if (!v31)
      {
        v118 = *&v176[0];
        if (*&v176[0])
        {
          LODWORD(v183) = LOBYTE(v176[1]);
          v119 = *(&v176[0] + 1);
          v120 = *(&v175 + 1);
          v121 = v175;
          v172 = v165;
          v173 = v166;
          *v174 = v167[0];
          *(&v174[1] + 1) = *(v167 + 9);
          sub_1ABD19208(&v172);
          v122 = v158;
          swift_beginAccess();
          sub_1ABB4DE78();
          v123 = *(*(v122 + 16) + 16);
          sub_1ABB4E27C(v123);
LABEL_105:
          v124 = *(v122 + 16);
          *(v124 + 16) = v123 + 1;
          v125 = v124 + 40 * v123;
          *(v125 + 32) = v121;
          *(v125 + 40) = v120;
          *(v125 + 48) = v118;
          *(v125 + 56) = v119;
          *(v125 + 64) = v183 & 1;
          *(v122 + 16) = v124;
          swift_endAccess();
LABEL_88:
          v103 = &qword_1EB4D7E60;
          v104 = &unk_1ABF5E780;
          v105 = &v177;
LABEL_117:
          sub_1ABAB480C(v105, v103, v104);
          return;
        }

        v172 = v165;
        v173 = v166;
        *v174 = v167[0];
        *(&v174[1] + 1) = *(v167 + 9);
LABEL_120:
        sub_1ABD19208(&v172);
        goto LABEL_88;
      }

LABEL_102:
      v172 = v165;
      v173 = v166;
      *v174 = v167[0];
      *(&v174[1] + 1) = *(v167 + 9);
      sub_1ABD19208(&v172);
      sub_1ABAB480C(&v177, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    goto LABEL_111;
  }

  v39 = sub_1ABF25054();

  if (v39)
  {
    goto LABEL_100;
  }

  v41 = v156;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    swift_once();
LABEL_155:
    v151 = sub_1ABF237F4();
    sub_1ABA7AA24(v151, qword_1ED871B40);
    sub_1ABAE2EC4();
    v88 = sub_1ABF237D4();
    v89 = sub_1ABF24664();
    if (!os_log_type_enabled(v88, v89))
    {
LABEL_156:

      v135 = v183;
      goto LABEL_157;
    }

    goto LABEL_149;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2544], *(_Records_GDEntityPredicate_records + 637), *(_Records_GDEntityPredicate_records + 638), v180);
  if (*&v180[0] == v41 && *(&v180[0] + 1) == v155)
  {

LABEL_107:
    v77 = v183;
    *(v179 + 10) = *(v183 + 82);
    v126 = *(v183 + 56);
    v177 = *(v183 + 40);
    v178 = v126;
    v179[0] = *(v183 + 72);
    if (BYTE9(v179[1]) == 1)
    {
      v127 = *(v183 + 56);
      v165 = *(v183 + 40);
      v166 = v127;
      v167[0] = *(v183 + 72);
      *(v167 + 9) = *(v183 + 81);
      MEMORY[0x1EEE9AC00](v44);
      *(&v155 - 2) = &v165;
      v180[0] = v177;
      v180[1] = v178;
      v180[2] = v179[0];
      *(&v180[2] + 10) = *(v179 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v180, &v172);
      sub_1ABD08790(sub_1ABD1A8C8, (&v155 - 4), &unk_1F209B3D0, sub_1ABD1AB54, sub_1ABD1A10C);
      if (!v31)
      {
        v118 = *&v176[0];
        if (*&v176[0])
        {
          LODWORD(v183) = LOBYTE(v176[1]);
          v119 = *(&v176[0] + 1);
          v120 = *(&v175 + 1);
          v121 = v175;
          v172 = v165;
          v173 = v166;
          *v174 = v167[0];
          *(&v174[1] + 1) = *(v167 + 9);
          sub_1ABD19208(&v172);
          v122 = v157;
          swift_beginAccess();
          sub_1ABB4DE60();
          v123 = *(*(v122 + 16) + 16);
          sub_1ABB4E264(v123);
          goto LABEL_105;
        }

        v172 = v165;
        v173 = v166;
        *v174 = v167[0];
        *(&v174[1] + 1) = *(v167 + 9);
        goto LABEL_120;
      }

      goto LABEL_102;
    }

    goto LABEL_111;
  }

  v43 = sub_1ABF25054();

  if (v43)
  {
    goto LABEL_107;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_167;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v180);
  if (*&v180[0] == v156 && *(&v180[0] + 1) == v155)
  {

LABEL_122:
    *(v179 + 10) = *(v183 + 82);
    v130 = *(v183 + 56);
    v177 = *(v183 + 40);
    v178 = v130;
    v179[0] = *(v183 + 72);
    if (BYTE9(v179[1]) == 1)
    {
      v131 = *(v183 + 56);
      v165 = *(v183 + 40);
      v166 = v131;
      v167[0] = *(v183 + 72);
      *(v167 + 9) = *(v183 + 81);
      MEMORY[0x1EEE9AC00](v47);
      *(&v155 - 2) = &v165;
      v180[0] = v177;
      v180[1] = v178;
      v180[2] = v179[0];
      *(&v180[2] + 10) = *(v179 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v180, &v172);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v155 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v132, v133, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, *(&v165 + 1), v166, SBYTE8(v166), *&v167[0], *(&v167[0] + 1), *&v167[1], *(&v167[1] + 1), v168, v169, v170, v171, v172, *(&v172 + 1));
      if (v31)
      {
        v172 = v165;
        v173 = v166;
        *v174 = v167[0];
        *(&v174[1] + 1) = *(v167 + 9);
        goto LABEL_95;
      }

      v136 = *&v176[0];
      if (!*&v176[0])
      {
        v172 = v165;
        v173 = v166;
        *v174 = v167[0];
        *(&v174[1] + 1) = *(v167 + 9);
        goto LABEL_95;
      }

      v172 = v165;
      v173 = v166;
      *v174 = v167[0];
      *(&v174[1] + 1) = *(v167 + 9);
      sub_1ABD19208(&v172);
      swift_beginAccess();
      sub_1ABB4DD28();
      v137 = *(*(a9 + 16) + 16);
      sub_1ABB4E12C(v137);
      v138 = *(a9 + 16);
      *(v138 + 16) = v137 + 1;
      v139 = v138 + (v137 << 6);
      *(v139 + 32) = v175;
      *(v139 + 48) = v136;
      *(v139 + 56) = *(v176 + 8);
      *(v139 + 72) = *(&v176[1] + 8);
      *(v139 + 88) = BYTE8(v176[2]);
      *(a9 + 16) = v138;
LABEL_76:
      swift_endAccess();
      goto LABEL_77;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_126;
    }

    goto LABEL_161;
  }

  v46 = sub_1ABF25054();

  if (v46)
  {
    goto LABEL_122;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v180);
  if (*&v180[0] == v156 && *(&v180[0] + 1) == v155)
  {

    goto LABEL_133;
  }

  v49 = sub_1ABF25054();

  if (v49)
  {
LABEL_133:
    if (v183[97] != 2)
    {
      goto LABEL_146;
    }

    v140 = v164;
    sub_1ABC4A630(*(v183 + 5), v50, v51, v52, v53, v54, v55, v56);
    if (v140)
    {
      return;
    }

    goto LABEL_135;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v180);
  if (*&v180[0] == v156 && *(&v180[0] + 1) == v155)
  {

    goto LABEL_139;
  }

  v58 = sub_1ABF25054();

  if (v58)
  {
LABEL_139:
    if (v183[97] != 2)
    {
      goto LABEL_146;
    }

    v145 = v164;
    sub_1ABC4A630(*(v183 + 5), v59, v60, v61, v62, v63, v64, v65);
    if (v145)
    {
      return;
    }

    a10 = a11;
LABEL_135:
    v142 = v177;
    swift_beginAccess();
    sub_1ABB4DD40();
    v143 = *(*(a10 + 16) + 16);
    sub_1ABB4E144(v143);
LABEL_136:
    v144 = *(a10 + 16);
    *(v144 + 16) = v143 + 1;
    *(v144 + 8 * v143 + 32) = v142;
    *(a10 + 16) = v144;
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), v180);
  if (*&v180[0] == v156 && *(&v180[0] + 1) == v155)
  {
  }

  else
  {
    v67 = sub_1ABF25054();

    if ((v67 & 1) == 0)
    {
      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), v180);
        if (*&v180[0] != v156 || *(&v180[0] + 1) != v155)
        {
          v76 = sub_1ABF25054();

          if ((v76 & 1) == 0)
          {
            return;
          }

LABEL_152:
          if (v183[97] || (v148 = *(v183 + 5), v149 = *(v183 + 6), , v28 = sub_1ABB24D04(v148, v149), (v150 & 1) != 0))
          {
            if (qword_1ED871B38 == -1)
            {
              goto LABEL_155;
            }

            goto LABEL_165;
          }

LABEL_159:
          v152 = v28;
          swift_beginAccess();
          sub_1ABB4DCB0();
          v153 = *(*(a13 + 16) + 16);
          sub_1ABB4E0CC(v153);
          v154 = *(a13 + 16);
          *(v154 + 16) = v153 + 1;
          *(v154 + 8 * v153 + 32) = v152;
          *(a13 + 16) = v154;
          return;
        }

LABEL_151:

        goto LABEL_152;
      }

LABEL_170:
      __break(1u);
      return;
    }
  }

  if (v183[97] != 2)
  {
LABEL_146:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v147 = sub_1ABF237F4();
    sub_1ABA7AA24(v147, qword_1ED871B40);
    sub_1ABAE2EC4();
    v88 = sub_1ABF237D4();
    v89 = sub_1ABF24664();
    if (!os_log_type_enabled(v88, v89))
    {
      goto LABEL_156;
    }

LABEL_149:
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&v177 = v91;
    *v90 = 136642819;
    memcpy(v180, v183, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v92 = sub_1ABF23C94();
    v94 = &v177;
    goto LABEL_115;
  }

  v146 = v164;
  sub_1ABC4CBC0(*(v183 + 5), v68, v69, v70, v71, v72, v73, v74, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, *(&v165 + 1), v166, *(&v166 + 1), *&v167[0], *(&v167[0] + 1), *&v167[1], *(&v167[1] + 1), v168, v169, v170, v171, v172, *(&v172 + 1), v173, *(&v173 + 1), v174[0], v174[1]);
  if (!v146)
  {
    a10 = a12;
    v142 = v177;
    swift_beginAccess();
    sub_1ABB4DE48();
    v143 = *(*(a12 + 16) + 16);
    sub_1ABB4E24C(v143);
    goto LABEL_136;
  }
}

void sub_1ABC8F8F8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v341 = a8;
  v347 = a7;
  v354 = a6;
  v361 = a5;
  v370 = a4;
  v378 = a3;
  v377 = a2;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v371 = &v333 - v17;
  v365 = type metadata accessor for CustomGraphDateRelationship(0);
  v359 = *(v365 - 8);
  MEMORY[0x1EEE9AC00](v365);
  v360 = &v333 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = *(a14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v334 = &v333 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v337 = &v333 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v339 = &v333 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v340 = &v333 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v343 = &v333 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v349 = &v333 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v356 = &v333 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v364 = &v333 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v369[1] = &v333 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v376 = &v333 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v380 = &v333 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v381 = &v333 - v42;
  v43 = *(a15 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v383 = sub_1ABF247E4();
  v382 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v346 = &v333 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v352 = &v333 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v358 = &v333 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v367 = &v333 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v373 = &v333 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v333 - v55;
  v391 = swift_checkMetadataState();
  v390 = *(v391 - 8);
  MEMORY[0x1EEE9AC00](v391);
  v335 = &v333 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v336 = &v333 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v338 = &v333 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v333 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v345 = &v333 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v351 = &v333 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v357 = &v333 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v366 = &v333 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v372 = &v333 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v379 = &v333 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v333 - v78;
  v388 = AssociatedTypeWitness;
  v384 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v80);
  v342 = &v333 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v344 = &v333 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v348 = &v333 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v350 = &v333 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v355 = &v333 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v333 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v362 = &v333 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v363 = &v333 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v368 = &v333 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v369[0] = &v333 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v333 - v102;
  v105 = MEMORY[0x1EEE9AC00](v104);
  v385 = &v333 - v106;
  v107 = *(v43 + 24);
  v392 = a1;
  v393 = a14;
  v389 = v43;
  v107(v400, a14, v43, v105);
  v375 = 279;
  v353 = v92;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_177;
  }

  v109 = v400[0];
  v108 = v400[1];
  v110 = v400[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), &v394);
  if (v394 == v109 && *(&v394 + 1) == v108)
  {

    v114 = AssociatedConformanceWitness;
    v113 = v401;
    goto LABEL_9;
  }

  v374 = v110;
  v333 = v64;
  v64 = v108;
  v112 = sub_1ABF25054();

  if ((v112 & 1) == 0)
  {
    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
LABEL_193:
      swift_once();
LABEL_105:
      v230 = sub_1ABF237F4();
      sub_1ABA7AA24(v230, qword_1ED871B40);
      v172 = *(v56 + 2);
      v174 = v349;
      v172(v349, v392, v110);
      goto LABEL_51;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v394);
    v139 = v394 == v109 && *(&v394 + 1) == v64;
    v56 = v386;
    if (v139)
    {

LABEL_30:

      v144 = v379;
      v145 = v392;
      (*(v389 + 32))(v393, v389);
      v146 = v391;
      v147 = swift_getAssociatedConformanceWitness();
      v148 = (*(v147 + 24))(v146, v147);
      v150 = v149;
      (*(v390 + 8))(v144, v146);
      if (v150)
      {
        v151 = v378;
        swift_beginAccess();
        sub_1ABB4DC20();
        v152 = *(*(v151 + 16) + 16);
        sub_1ABB4E024(v152);
        v153 = *(v151 + 16);
        *(v153 + 16) = v152 + 1;
        v154 = v153 + 16 * v152;
        *(v154 + 32) = v148;
        *(v154 + 40) = v150;
        *(v151 + 16) = v153;
        swift_endAccess();
        return;
      }

      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v155 = sub_1ABF237F4();
      sub_1ABA7AA24(v155, qword_1ED871B40);
      v156 = *(v56 + 2);
      v157 = v376;
      v158 = v393;
      v156(v376, v145, v393);
      v122 = sub_1ABF237D4();
      v159 = sub_1ABF24664();
      if (!os_log_type_enabled(v122, v159))
      {

        (*(v56 + 1))(v157, v158);
        return;
      }

      v160 = swift_slowAlloc();
      v392 = swift_slowAlloc();
      *&v394 = v392;
      *v160 = 136642819;
      v156(v380, v157, v158);
      v161 = sub_1ABF23C94();
      v163 = v162;
      (*(v56 + 1))(v157, v158);
      goto LABEL_53;
    }

    v140 = sub_1ABF25054();

    v141 = v401;
    if (v140)
    {
      goto LABEL_30;
    }

    if (v375 < 0x92)
    {
      __break(1u);
    }

    else
    {
      v110 = v393;
      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_196;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v394);
      if (v394 == v109 && *(&v394 + 1) == v64)
      {

LABEL_46:

        v166 = v372;
        v167 = v392;
        (*(v389 + 32))(v110);
        v168 = v373;
        v169 = v391;
        (*(AssociatedConformanceWitness + 40))(v391, AssociatedConformanceWitness);
        (*(v390 + 8))(v166, v169);
        v170 = v388;
        if (sub_1ABA7E1E0(v168, 1, v388) != 1)
        {
          v178 = v384;
          v179 = v369[0];
          (*(v384 + 32))(v369[0], v168, v170);
          (*(v178 + 16))(v368, v179, v170);
          swift_getAssociatedConformanceWitness();

          v180 = v371;
          CustomGraphDateRelationship.init<A>(from:initializationResources:)();
          if (!v141)
          {
            if (sub_1ABA7E1E0(v180, 1, v365) == 1)
            {
              (*(v178 + 8))(v179, v170);
              sub_1ABAB480C(v180, &qword_1EB4D5F20, &qword_1ABF4F358);
              return;
            }

            v200 = v360;
            sub_1ABCF9424();
            v201 = v361;
            swift_beginAccess();
            sub_1ABB4DE30();
            v202 = *(*(v201 + 16) + 16);
            sub_1ABB4E234(v202);
            v203 = *(v201 + 16);
            *(v203 + 16) = v202 + 1;
            sub_1ABD0AD58();
            *(v201 + 16) = v203;
            swift_endAccess();
            sub_1ABD0ADB0(v200, type metadata accessor for CustomGraphDateRelationship);
          }

          (*(v178 + 8))(v179, v170);
          return;
        }

        (*(v382 + 8))(v168, v383);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v171 = sub_1ABF237F4();
        sub_1ABA7AA24(v171, qword_1ED871B40);
        v172 = *(v56 + 2);
        p_AssociatedConformanceWitness = v398;
        goto LABEL_50;
      }

      v165 = sub_1ABF25054();

      if (v165)
      {
        goto LABEL_46;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_198;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v394);
      if (v394 == v109 && *(&v394 + 1) == v64)
      {

LABEL_68:

        v183 = v366;
        v167 = v392;
        (*(v389 + 32))(v110);
        v184 = v367;
        v185 = v391;
        (*(AssociatedConformanceWitness + 40))(v391, AssociatedConformanceWitness);
        (*(v390 + 8))(v183, v185);
        v186 = v388;
        if (sub_1ABA7E1E0(v184, 1, v388) != 1)
        {
          v188 = v184;
          v189 = v384;
          v190 = v363;
          (*(v384 + 32))(v363, v188, v186);
          v191 = v362;
          (*(v189 + 16))(v362, v190, v186);
          v192 = type metadata accessor for CustomGraphPerson(0);
          v193 = sub_1ABD09EBC(&unk_1EB4D7E80);
          v194 = swift_getAssociatedConformanceWitness();
          CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v394, v191, v192, v186, v193, v194);
          if (!v141)
          {
            v195 = v395;
            if (v395)
            {
              v196 = v354;
              swift_beginAccess();
              sub_1ABB4DEA8();
              v197 = *(*(v196 + 16) + 16);
              sub_1ABB4E2AC(v197);
              v198 = *(v196 + 16);
              *(v198 + 16) = v197 + 1;
              v199 = v198 + (v197 << 6);
              *(v199 + 32) = v394;
              *(v199 + 48) = v195;
              *(v199 + 56) = v396;
              *(v199 + 72) = v397;
              *(v199 + 88) = v398[0];
              *(v196 + 16) = v198;
              swift_endAccess();
            }
          }

          (*(v189 + 8))(v190, v186);
          return;
        }

        (*(v382 + 8))(v184, v383);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v187 = sub_1ABF237F4();
        sub_1ABA7AA24(v187, qword_1ED871B40);
        v172 = *(v56 + 2);
        p_AssociatedConformanceWitness = &v394 + 1;
        goto LABEL_50;
      }

      v182 = sub_1ABF25054();

      if (v182)
      {
        goto LABEL_68;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_200;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), &v394);
      if (v394 == v109 && *(&v394 + 1) == v64)
      {

LABEL_86:

        v206 = v357;
        v167 = v392;
        (*(v389 + 32))(v110);
        v207 = v358;
        v208 = v391;
        (*(AssociatedConformanceWitness + 40))(v391, AssociatedConformanceWitness);
        (*(v390 + 8))(v206, v208);
        v209 = v388;
        if (sub_1ABA7E1E0(v207, 1, v388) != 1)
        {
          v211 = v384;
          v212 = v353;
          (*(v384 + 32))(v353, v207, v209);
          v213 = v355;
          (*(v211 + 16))(v355, v212, v209);
          v214 = type metadata accessor for CustomGraphEvent(0);
          v215 = sub_1ABD09EBC(&unk_1EB4D7EA0);
          v216 = swift_getAssociatedConformanceWitness();
          CustomGraphEventRelationship.init<A>(from:initializationResources:)(v213, v214, v209, v215, v216);
          if (v141 || (v219 = v395) == 0)
          {
            (*(v211 + 8))(v212, v209);
          }

          else
          {
            LODWORD(v401) = BYTE8(v396);
            v220 = v396;
            v221 = v394;
            v222 = v347;
            swift_beginAccess();
            sub_1ABB4DE78();
            v223 = *(*(v222 + 16) + 16);
            sub_1ABB4E27C(v223);
            v224 = *(v222 + 16);
            *(v224 + 16) = v223 + 1;
            v225 = v224 + 40 * v223;
            *(v225 + 32) = v221;
            *(v225 + 48) = v219;
            *(v225 + 56) = v220;
            *(v225 + 64) = v401 & 1;
            *(v222 + 16) = v224;
            swift_endAccess();
            (*(v211 + 8))(v353, v388);
          }

          return;
        }

        (*(v382 + 8))(v207, v383);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v210 = sub_1ABF237F4();
        sub_1ABA7AA24(v210, qword_1ED871B40);
        v172 = *(v56 + 2);
        p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
LABEL_50:
        v174 = *(p_AssociatedConformanceWitness - 32);
        v172(v174, v167, v110);
LABEL_51:
        v122 = sub_1ABF237D4();
        v159 = sub_1ABF24664();
        if (!os_log_type_enabled(v122, v159))
        {

          v142 = *(v56 + 1);
          v143 = v174;
          goto LABEL_28;
        }

        v160 = swift_slowAlloc();
        v392 = swift_slowAlloc();
        *&v394 = v392;
        *v160 = 136642819;
        v172(v380, v174, v110);
        v161 = sub_1ABF23C94();
        v163 = v175;
        (*(v56 + 1))(v174, v110);
LABEL_53:
        v176 = sub_1ABADD6D8(v161, v163, &v394);

        *(v160 + 4) = v176;
        _os_log_impl(&dword_1ABA78000, v122, v159, "Failed to parse %{sensitive}s.", v160, 0xCu);
        v177 = v392;
        sub_1ABA84B54(v392);
        MEMORY[0x1AC5AB8B0](v177, -1, -1);
        v131 = v160;
        goto LABEL_54;
      }

      v205 = sub_1ABF25054();

      if (v205)
      {
        goto LABEL_86;
      }

      if (v375 < 0xD5)
      {
        __break(1u);
        goto LABEL_186;
      }

      v385 = v109;
      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_202;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[2544], *(_Records_GDEntityPredicate_records + 637), *(_Records_GDEntityPredicate_records + 638), &v394);
      if (v394 == v385 && *(&v394 + 1) == v64)
      {

        goto LABEL_103;
      }

      v218 = sub_1ABF25054();

      if (v218)
      {
LABEL_103:

        v226 = v351;
        (*(v389 + 32))(v110);
        v227 = v352;
        v228 = v391;
        (*(AssociatedConformanceWitness + 40))(v391, AssociatedConformanceWitness);
        (*(v390 + 8))(v226, v228);
        v229 = v388;
        if (sub_1ABA7E1E0(v227, 1, v388) != 1)
        {
          v231 = v384;
          v232 = v350;
          (*(v384 + 32))(v350, v227, v229);
          v233 = v348;
          (*(v231 + 16))(v348, v232, v229);
          v234 = type metadata accessor for CustomGraphActivityEvent(0);
          v235 = sub_1ABD09EBC(&unk_1EB4D7EA8);
          v236 = swift_getAssociatedConformanceWitness();
          CustomGraphEventRelationship.init<A>(from:initializationResources:)(v233, v234, v229, v235, v236);
          if (v141)
          {
            (*(v231 + 8))(v232, v229);
          }

          else
          {
            v239 = v395;
            if (v395)
            {
              LODWORD(v401) = BYTE8(v396);
              v240 = v396;
              v241 = v394;
              v242 = v341;
              swift_beginAccess();
              sub_1ABB4DE60();
              v243 = *(*(v242 + 16) + 16);
              sub_1ABB4E264(v243);
              v244 = *(v242 + 16);
              *(v244 + 16) = v243 + 1;
              v245 = v244 + 40 * v243;
              *(v245 + 32) = v241;
              *(v245 + 48) = v239;
              *(v245 + 56) = v240;
              *(v245 + 64) = v401 & 1;
              *(v242 + 16) = v244;
              swift_endAccess();
            }

            (*(v231 + 8))(v350, v388);
          }

          return;
        }

        (*(v382 + 8))(v227, v383);
        if (qword_1ED871B38 == -1)
        {
          goto LABEL_105;
        }

        goto LABEL_193;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
LABEL_204:
        swift_once();
LABEL_189:
        v330 = sub_1ABF237F4();
        sub_1ABA7AA24(v330, qword_1ED871B40);
        v279 = *(v386 + 2);
        v279(v334, v392, v393);
        v122 = sub_1ABF237D4();
        v280 = sub_1ABF24664();
        if (!os_log_type_enabled(v122, v280))
        {

          (*(v386 + 1))(v334, v393);
          return;
        }

        v124 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        *&v394 = v281;
        *v124 = 136642819;
        v282 = v380;
        v283 = &v366;
        goto LABEL_142;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v394);
      if (v394 == v385 && *(&v394 + 1) == v64)
      {

        goto LABEL_119;
      }

      v238 = sub_1ABF25054();

      if (v238)
      {
LABEL_119:
        v246 = AssociatedConformanceWitness;
        v247 = v388;

        v248 = v345;
        (*(v389 + 32))(v110);
        v249 = v346;
        v250 = v391;
        (*(v246 + 40))(v391, v246);
        (*(v390 + 8))(v248, v250);
        if (sub_1ABA7E1E0(v249, 1, v247) != 1)
        {
          v256 = v384;
          v257 = v344;
          (*(v384 + 32))(v344, v249, v247);
          v258 = v342;
          (*(v256 + 16))(v342, v257, v247);
          v259 = sub_1ABD19740();
          v260 = swift_getAssociatedConformanceWitness();
          v261 = v401;
          CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v394, v258, &type metadata for CustomGraphLocation, v247, v259, v260);
          if (v261)
          {
            (*(v256 + 8))(v257, v247);
          }

          else
          {
            v264 = v395;
            if (v395)
            {
              swift_beginAccess();
              sub_1ABB4DD28();
              v265 = *(*(a9 + 16) + 16);
              sub_1ABB4E12C(v265);
              v266 = *(a9 + 16);
              *(v266 + 16) = v265 + 1;
              v267 = v266 + (v265 << 6);
              *(v267 + 32) = v394;
              *(v267 + 48) = v264;
              *(v267 + 56) = v396;
              *(v267 + 72) = v397;
              *(v267 + 88) = v398[0];
              *(a9 + 16) = v266;
              swift_endAccess();
            }

            (*(v384 + 8))(v344, v388);
          }

          return;
        }

        (*(v382 + 8))(v249, v383);
        if (qword_1ED871B38 == -1)
        {
LABEL_121:
          v251 = sub_1ABF237F4();
          sub_1ABA7AA24(v251, qword_1ED871B40);
          v252 = v386;
          v253 = *(v386 + 2);
          v254 = v343;
          v253(v343, v392, v110);
          v122 = sub_1ABF237D4();
          v123 = sub_1ABF24664();
          if (!os_log_type_enabled(v122, v123))
          {

            (*(v252 + 1))(v254, v110);
            return;
          }

          v124 = swift_slowAlloc();
          v392 = swift_slowAlloc();
          *&v394 = v392;
          *v124 = 136642819;
          v253(v380, v254, v110);
          v125 = sub_1ABF23C94();
          v127 = v255;
          (*(v252 + 1))(v254, v110);
          goto LABEL_14;
        }

LABEL_196:
        swift_once();
        goto LABEL_121;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_206;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v394);
      if (v394 != v385 || *(&v394 + 1) != v64)
      {
        v263 = sub_1ABF25054();

        if (v263)
        {
          goto LABEL_138;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v394);
          if (v394 == v385 && *(&v394 + 1) == v64)
          {

            goto LABEL_155;
          }

          v296 = sub_1ABF25054();

          if (v296)
          {
LABEL_155:

            v297 = v338;
            (*(v389 + 32))(v393, v389);
            v298 = v391;
            v299 = swift_getAssociatedConformanceWitness();
            (*(v299 + 32))(&v394, v298, v299);
            (*(v390 + 8))(v297, v298);
            if ((BYTE8(v394) & 1) == 0)
            {
              v308 = v401;
              sub_1ABC4A630(v394, v300, v301, v302, v303, v304, v305, v306);
              if (v308)
              {
                return;
              }

              a10 = a11;
LABEL_144:
              v292 = v399;
              swift_beginAccess();
              sub_1ABB4DD40();
              v293 = *(*(a10 + 16) + 16);
              sub_1ABB4E144(v293);
              goto LABEL_145;
            }

            if (qword_1ED871B38 == -1)
            {
LABEL_157:
              v307 = sub_1ABF237F4();
              sub_1ABA7AA24(v307, qword_1ED871B40);
              v279 = *(v386 + 2);
              v279(v339, v392, v393);
              v122 = sub_1ABF237D4();
              v280 = sub_1ABF24664();
              if (!os_log_type_enabled(v122, v280))
              {

                (*(v386 + 1))(v339, v393);
                return;
              }

              v124 = swift_slowAlloc();
              v281 = swift_slowAlloc();
              *&v394 = v281;
              *v124 = 136642819;
              v282 = v380;
              v283 = &v370;
              goto LABEL_142;
            }

LABEL_200:
            swift_once();
            goto LABEL_157;
          }

          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v394);
            if (v394 == v385 && *(&v394 + 1) == v64)
            {

              goto LABEL_170;
            }

            v310 = sub_1ABF25054();

            if (v310)
            {
LABEL_170:

              v311 = v336;
              (*(v389 + 32))(v393, v389);
              v312 = v391;
              v313 = swift_getAssociatedConformanceWitness();
              (*(v313 + 32))(&v394, v312, v313);
              (*(v390 + 8))(v311, v312);
              if ((BYTE8(v394) & 1) == 0)
              {
                v322 = v401;
                sub_1ABC4CBC0(v394, v314, v315, v316, v317, v318, v319, v320, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360);
                if (v322)
                {
                  return;
                }

                a10 = a12;
                v292 = v399;
                swift_beginAccess();
                sub_1ABB4DE48();
                v293 = *(*(a12 + 16) + 16);
                sub_1ABB4E24C(v293);
LABEL_145:
                v294 = *(a10 + 16);
                *(v294 + 16) = v293 + 1;
                *(v294 + 8 * v293 + 32) = v292;
                *(a10 + 16) = v294;
                return;
              }

              if (qword_1ED871B38 == -1)
              {
LABEL_172:
                v321 = sub_1ABF237F4();
                sub_1ABA7AA24(v321, qword_1ED871B40);
                v279 = *(v386 + 2);
                v279(v337, v392, v393);
                v122 = sub_1ABF237D4();
                v280 = sub_1ABF24664();
                if (!os_log_type_enabled(v122, v280))
                {

                  (*(v386 + 1))(v337, v393);
                  return;
                }

                v124 = swift_slowAlloc();
                v281 = swift_slowAlloc();
                *&v394 = v281;
                *v124 = 136642819;
                v282 = v380;
                v283 = v369;
                goto LABEL_142;
              }

LABEL_202:
              swift_once();
              goto LABEL_172;
            }

LABEL_177:
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v394);
              if (v394 != v385 || *(&v394 + 1) != v64)
              {
                v324 = sub_1ABF25054();

                if ((v324 & 1) == 0)
                {
                  return;
                }

LABEL_187:
                v325 = v335;
                (*(v389 + 32))(v393, v389);
                v326 = v391;
                swift_getAssociatedConformanceWitness();
                v327 = BaseEntityFactObjectProtocol.asDouble.getter();
                v329 = v328;
                (*(v390 + 8))(v325, v326);
                if ((v329 & 1) == 0)
                {
                  swift_beginAccess();
                  sub_1ABB4DCB0();
                  v331 = *(*(a13 + 16) + 16);
                  sub_1ABB4E0CC(v331);
                  v332 = *(a13 + 16);
                  *(v332 + 16) = v331 + 1;
                  *(v332 + 8 * v331 + 32) = v327;
                  *(a13 + 16) = v332;
                  return;
                }

                if (qword_1ED871B38 == -1)
                {
                  goto LABEL_189;
                }

                goto LABEL_204;
              }

LABEL_186:

              goto LABEL_187;
            }

LABEL_208:
            __break(1u);
            return;
          }

LABEL_207:
          __break(1u);
          goto LABEL_208;
        }

LABEL_206:
        __break(1u);
        goto LABEL_207;
      }
    }

LABEL_138:

    v268 = v333;
    (*(v389 + 32))(v393, v389);
    v269 = v391;
    v270 = swift_getAssociatedConformanceWitness();
    (*(v270 + 32))(&v394, v269, v270);
    (*(v390 + 8))(v268, v269);
    if (BYTE8(v394))
    {
      if (qword_1ED871B38 == -1)
      {
LABEL_140:
        v278 = sub_1ABF237F4();
        sub_1ABA7AA24(v278, qword_1ED871B40);
        v279 = *(v386 + 2);
        v279(v340, v392, v393);
        v122 = sub_1ABF237D4();
        v280 = sub_1ABF24664();
        if (!os_log_type_enabled(v122, v280))
        {

          (*(v386 + 1))(v340, v393);
          return;
        }

        v124 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        *&v394 = v281;
        *v124 = 136642819;
        v282 = v380;
        v283 = &v371;
LABEL_142:
        v284 = *(v283 - 32);
        v285 = v393;
        v279(v282, v284, v393);
        v286 = sub_1ABF23C94();
        v288 = v287;
        (*(v386 + 1))(v284, v285);
        v289 = sub_1ABADD6D8(v286, v288, &v394);

        *(v124 + 4) = v289;
        _os_log_impl(&dword_1ABA78000, v122, v280, "Failed to parse %{sensitive}s.", v124, 0xCu);
        sub_1ABA84B54(v281);
        v130 = v281;
        goto LABEL_15;
      }

LABEL_198:
      swift_once();
      goto LABEL_140;
    }

    v290 = v401;
    sub_1ABC4A630(v394, v271, v272, v273, v274, v275, v276, v277);
    if (v290)
    {
      return;
    }

    goto LABEL_144;
  }

  v113 = v401;
  v114 = AssociatedConformanceWitness;
LABEL_9:

  v115 = v392;
  v110 = v393;
  (*(v389 + 32))(v393);
  v116 = v391;
  (*(v114 + 40))(v391, v114);
  (*(v390 + 8))(v79, v116);
  v117 = v388;
  if (sub_1ABA7E1E0(v56, 1, v388) == 1)
  {
    (*(v382 + 8))(v56, v383);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v118 = sub_1ABF237F4();
    sub_1ABA7AA24(v118, qword_1ED871B40);
    v119 = v386;
    v120 = *(v386 + 2);
    v121 = v381;
    v120(v381, v115, v110);
    v122 = sub_1ABF237D4();
    v123 = sub_1ABF24664();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v392 = swift_slowAlloc();
      *&v394 = v392;
      *v124 = 136642819;
      v120(v380, v121, v110);
      v125 = sub_1ABF23C94();
      v127 = v126;
      (*(v119 + 1))(v121, v110);
LABEL_14:
      v128 = sub_1ABADD6D8(v125, v127, &v394);

      *(v124 + 4) = v128;
      _os_log_impl(&dword_1ABA78000, v122, v123, "Failed to parse %{sensitive}s.", v124, 0xCu);
      v129 = v392;
      sub_1ABA84B54(v392);
      v130 = v129;
LABEL_15:
      MEMORY[0x1AC5AB8B0](v130, -1, -1);
      v131 = v124;
LABEL_54:
      MEMORY[0x1AC5AB8B0](v131, -1, -1);

      return;
    }

    v142 = *(v119 + 1);
    v143 = v121;
LABEL_28:
    v142(v143, v110);
    return;
  }

  v132 = v384;
  v133 = v385;
  (*(v384 + 32))(v385, v56, v117);
  (*(v132 + 16))(v103, v133, v117);
  swift_getAssociatedConformanceWitness();
  CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
  if (!v113)
  {
    v134 = v395;
    if (v395)
    {
      v135 = v377;
      swift_beginAccess();
      sub_1ABB4DCE0();
      v136 = *(*(v135 + 16) + 16);
      sub_1ABB4E0E4(v136);
      v137 = *(v135 + 16);
      *(v137 + 16) = v136 + 1;
      v138 = v137 + 88 * v136;
      v133 = v385;
      *(v138 + 32) = v394;
      *(v138 + 48) = v134;
      *(v138 + 56) = v396;
      *(v138 + 72) = v397;
      *(v138 + 88) = v398[0];
      *(v138 + 104) = v398[1];
      *(v135 + 16) = v137;
      swift_endAccess();
    }
  }

  (*(v132 + 8))(v133, v117);
}

void CustomGraphActivityEvent.init(typedId:all_eventTypes:all_name:all_date:all_attendees:all_cooccurringEvents:all_subEvents:all_locations:all_startLocation:all_endLocation:all_activityTypeObject:all_activityType:all_confidence:)()
{
  sub_1ABA7E2A8();
  v23 = v3;
  v24 = v4;
  v22 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1ABD1B3D0();
  v14 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v14);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA9F7AC();
  *v0 = *v1;
  v0[1] = v13;
  v16 = sub_1ABB2B834(v11);
  v0[2] = v11;
  v0[3] = v16;
  v0[4] = v17;
  v18 = sub_1ABA8B2DC();
  v19 = type metadata accessor for CustomGraphActivityEvent(v18);
  sub_1ABC8B318(v9, v2, (v0 + v19[7]));
  *(v0 + v19[8]) = v7;
  *(v0 + v19[9]) = v22;
  *(v0 + v19[10]) = v23;
  *(v0 + v19[11]) = v24;
  sub_1ABD1AE28();
  sub_1ABAA2490();
  sub_1ABA89D74();
  sub_1ABAA2490();
  sub_1ABD1BEFC();
  sub_1ABD1B190(v20);
  sub_1ABAAFB28();
  sub_1ABAA2B08(v21);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC929E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954746E657665 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001ABF8D5C0 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746E657645627573 && a2 == 0xE900000000000073;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x80000001ABF8D5E0 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABC92DFC(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 0x707954746E657665;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x6565646E65747461;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x746E657645627573;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0x636F4C7472617473;
      break;
    case 9:
      result = 0x7461636F4C646E65;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x7974697669746361;
      break;
    case 12:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC92F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC929E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC92FA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABC92DF4();
  *a1 = result;
  return result;
}

uint64_t sub_1ABC92FD0(uint64_t a1)
{
  v2 = sub_1ABD0A704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC9300C(uint64_t a1)
{
  v2 = sub_1ABD0A704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D66B8, &qword_1ABF50B98);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v3 = sub_1ABD0A704();
  sub_1ABA8D27C(&type metadata for CustomGraphActivityEvent.CodingKeys, v4, v3);
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  v8 = sub_1ABAA19EC();
  sub_1ABAA6564(v8, v9, v10);
  if (!v0)
  {
    sub_1ABA8B6EC();
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    v11 = sub_1ABAA2D10();
    sub_1ABAA6564(v11, v12, v13);
    v14 = *(v1 + 16);
    sub_1ABD1B178();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v15 = sub_1ABAA2D10();
    sub_1ABAA6564(v15, v16, v17);
    sub_1ABAA1210();
    if (!v14)
    {

      type metadata accessor for CustomGraphActivityEvent(0);
      sub_1ABAA4C54();
      sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
      sub_1ABA80C14();
      sub_1ABD0A358(v18);
      v19 = sub_1ABA82E78();
      sub_1ABAA6564(v19, v20, v21);
      sub_1ABAA17C0();
      sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
      sub_1ABD09F00();
      v22 = sub_1ABAA2D10();
      sub_1ABAA6564(v22, v23, v24);
      sub_1ABD1AF88(12);
      sub_1ABD1AFDC();
      sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
      sub_1ABD09FB0();
      v25 = sub_1ABAA2D10();
      sub_1ABAA6564(v25, v26, v27);
      sub_1ABD1AF88(348184);
      sub_1ABD1AFD0();
      sub_1ABAD219C(&qword_1EB4D66D8, &qword_1ABF50BA8);
      sub_1ABD0A758();
      v28 = sub_1ABAA2D10();
      sub_1ABAA6564(v28, v29, v30);
      sub_1ABD1AF88(12);
      sub_1ABD1AFC4();
      sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
      sub_1ABD0A060();
      v31 = sub_1ABAA2D10();
      sub_1ABAA6564(v31, v32, v33);
      sub_1ABAA2300(348190);
      sub_1ABD1AFB8();

      sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
      sub_1ABD0A110();
      sub_1ABAA1328();

      sub_1ABAA2300(9);
      sub_1ABD1AFE8();

      v36 = sub_1ABD1ABF4();
      sub_1ABD1AF60(v36, v37, v38);

      sub_1ABAA2300(348192);
      sub_1ABAB6330();

      sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
      sub_1ABD0A808();
      v39 = sub_1ABAA2D10();
      sub_1ABAA6564(v39, v40, v41);
      sub_1ABD1AFA0();

      sub_1ABA98014(12);
      sub_1ABD1B69C();

      sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
      sub_1ABD0A8F4();
      v42 = sub_1ABAA2D10();
      sub_1ABAA6564(v42, v43, v44);
      sub_1ABD1AFA0();

      sub_1ABAA2300(348198);
      sub_1ABD1B690();

      sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
      sub_1ABD0AA28();
      v45 = sub_1ABAA2D10();
      sub_1ABAA6564(v45, v46, v47);
    }
  }

  v34 = sub_1ABA89DE4();
  v35(v34);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v6 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6748, &dword_1ABF50BD8);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA8176C();
  v12 = type metadata accessor for CustomGraphActivityEvent(0);
  v13 = sub_1ABAB6924(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C21C();
  v39 = v14;
  sub_1ABA90D04();
  sub_1ABD0A704();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (v1)
  {
    sub_1ABAA6690();
    sub_1ABA9F888();
    sub_1ABA90FE0();
    if (v3)
    {
      sub_1ABAB480C(v39 + v40[7], &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v1 & 1) == 0)
      {
LABEL_15:
        if (v2)
        {
LABEL_16:
          sub_1ABA88814();
          if ((v5 & 1) == 0)
          {
LABEL_17:
            if (v6)
            {
LABEL_18:
              sub_1ABAA1044();
              if ((v36 & 1) == 0)
              {
LABEL_19:
                if (v37)
                {
LABEL_20:

                  if ((v38 & 1) == 0)
                  {
LABEL_21:
                    if (!v10)
                    {
                      goto LABEL_23;
                    }

LABEL_22:

                    goto LABEL_23;
                  }

LABEL_11:

                  if ((v10 & 1) == 0)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_22;
                }

LABEL_10:
                if (!v38)
                {
                  goto LABEL_21;
                }

                goto LABEL_11;
              }

LABEL_9:
              sub_1ABAA20FC();
              if (v37)
              {
                goto LABEL_20;
              }

              goto LABEL_10;
            }

LABEL_8:
            if (!v36)
            {
              goto LABEL_19;
            }

            goto LABEL_9;
          }

LABEL_7:
          sub_1ABD1B2FC();
          if (v6)
          {
            goto LABEL_18;
          }

          goto LABEL_8;
        }

LABEL_6:
        if (!v5)
        {
          goto LABEL_17;
        }

        goto LABEL_7;
      }
    }

    else if (!v1)
    {
      goto LABEL_15;
    }

    sub_1ABD1B314();
    if (v2)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v15 = sub_1ABA7ABE4();
  sub_1ABAD219C(v15, v16);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v17);
  sub_1ABA841C4();
  sub_1ABA81934();
  sub_1ABF24E64();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
  sub_1ABA89A14();
  sub_1ABD0A1FC();
  v18 = sub_1ABA99458();
  sub_1ABD1B51C(v18, v19, v20, v21);
  sub_1ABA88ACC();
  sub_1ABAAFAD4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABD1B178();
  sub_1ABD0A2D4();
  v22 = sub_1ABA99458();
  sub_1ABD1B51C(v22, v23, v24, v25);
  sub_1ABD1B11C();
  sub_1ABA7F460();
  sub_1ABD0A358(v26);
  sub_1ABA9EEBC();
  v27 = sub_1ABD1B014();
  sub_1ABD1B51C(v27, v28, v29, v30);
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9EC10();
  sub_1ABD0A408();
  sub_1ABA99458();
  sub_1ABA81934();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
  sub_1ABD1AFDC();
  sub_1ABD0A4B8();
  sub_1ABA99458();
  sub_1ABA81934();
  sub_1ABF24E64();
  sub_1ABD1B7DC();
  sub_1ABAD219C(&qword_1EB4D66D8, &qword_1ABF50BA8);
  sub_1ABD1AFD0();
  sub_1ABD0AAAC();
  sub_1ABA99458();
  sub_1ABA81934();
  sub_1ABF24E64();
  *(v0 + v40[10]) = v41;
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA893EC();
  sub_1ABD0A568();
  sub_1ABA99458();
  sub_1ABA81934();
  sub_1ABF24E64();
  *(v0 + v40[11]) = v41;
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFB8();
  sub_1ABD0A618();
  sub_1ABA9F1AC();
  sub_1ABD1B014();
  sub_1ABA81934();
  sub_1ABF24E64();
  sub_1ABD1AF54();
  sub_1ABA8A644(v31);
  sub_1ABA8AB1C(9);
  sub_1ABD1B014();
  sub_1ABF24E64();
  sub_1ABA898CC();
  sub_1ABD1AEEC(v32);
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABAB6330();
  sub_1ABD0AB5C();
  sub_1ABAA112C();
  sub_1ABA9F49C();
  sub_1ABF24E64();
  sub_1ABA898CC();
  sub_1ABD1AEEC(v33);
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1B69C();
  sub_1ABD0AC48();
  sub_1ABAA112C();
  sub_1ABA9F49C();
  sub_1ABF24E64();
  sub_1ABD1B104(v41);
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1B690();
  sub_1ABD0ACD4();
  sub_1ABAA112C();
  sub_1ABA9F49C();
  sub_1ABF24E64();
  sub_1ABD1B024();
  v34(v4);
  sub_1ABA898CC();
  sub_1ABA8A644(v35);
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_23:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphSportsGameEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC78), *(_Records_GDEntityClass_records + 0xC80), *(_Records_GDEntityClass_records + 0xC88), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABC93DC4()
{
  sub_1ABA7BCA8();
  v65 = v2;
  v4 = v3;
  sub_1ABD1BAA4(v5);
  v6 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v8);
  v63 = type metadata accessor for CustomGraphSportsGameEvent(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C21C();
  sub_1ABA8147C(v10);
  sub_1ABA7D028();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B210(v11);
  sub_1ABD1BE50(v13);
  sub_1ABA7D028();
  v14 = swift_allocObject();
  sub_1ABD1B210(v14);
  sub_1ABD1BE44(v15);
  sub_1ABA7D028();
  v67 = swift_allocObject();
  sub_1ABD1B210(v67);
  sub_1ABD1BA5C(v16);
  sub_1ABA7D028();
  swift_allocObject();
  sub_1ABA88AB0();
  *(v17 + 16) = v12;
  sub_1ABD1B61C(v17 + 16);
  sub_1ABA7D028();
  v66 = swift_allocObject();
  sub_1ABD1B210(v66);
  sub_1ABD1B6E8(v18);
  sub_1ABA7D028();
  v19 = swift_allocObject();
  sub_1ABD1B210(v19);
  sub_1ABD1B3DC(v20);
  sub_1ABA7D028();
  v21 = swift_allocObject();
  sub_1ABD1B210(v21);
  sub_1ABD1B3C4(v22);
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B210(v23);
  sub_1ABD1B6D0(v24);
  v25 = swift_allocObject();
  v25[2] = v11;
  v25[3] = v14;
  v25[4] = v4;
  v25[5] = v67;
  v25[6] = v1;
  v25[7] = v66;
  v25[8] = v19;
  v25[9] = v21;
  v25[10] = v23;
  v64 = v23;

  sub_1ABC82584(v65, sub_1ABC95088, 0, sub_1ABD18DC8, v25, sub_1ABD1917C, v73);
  if (v0)
  {
  }

  else
  {

    sub_1ABA9EA34();

    v26 = sub_1ABD1BE7C();
    v34 = sub_1ABC4A938(v26, v27, v28, v29, v30, v31, v32, v33);
    *v62 = v73[0];
    v35 = sub_1ABA8A740(v34, v73);
    v62[1] = *v57;
    sub_1ABD1B058(v35, &v72);
    v36 = sub_1ABD1C284();
    v62[2] = v58;
    v62[3] = v36;
    v62[4] = v37;
    sub_1ABD1B080(v36, &v71);
    sub_1ABD1AF20();
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v38, v39, v40, v41);
    v42 = v63[7];

    sub_1ABC8B318(v43, v61, (v62 + v42));
    sub_1ABAAD280();
    *(v62 + v63[8]) = *v61;
    v44 = sub_1ABAAD280();
    *(v62 + v63[9]) = *v61;
    sub_1ABD1B058(v44, &v70);
    v45 = *v59;
    sub_1ABAAFB28();
    v46 = v62 + v63[10];
    *v46 = v45;
    *(v46 + 1) = v47;
    v46[16] = v48;
    sub_1ABD1B0E8(v49, &v69);
    v50 = *v60;
    v51 = *(*v60 + 16);
    if (v51)
    {
      v52 = *(v50 + 32);
    }

    else
    {
      v52 = 0;
    }

    v53 = v51 == 0;

    sub_1ABAA1668();

    v55 = v62 + v63[11];
    *v55 = v50;
    *(v55 + 1) = v52;
    v55[16] = v53;
    sub_1ABA890D8(v54, &v68);
    v56 = *(v64 + 16);

    sub_1ABAA2168();

    sub_1ABAA63C4();

    sub_1ABAA1460();

    sub_1ABA9EA34();

    *(v62 + v63[12]) = v56;
    sub_1ABA8D348();

    sub_1ABD1C2B4();
    sub_1ABA97F40();
    sub_1ABCF9424();
  }

  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC94394@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v70 = a3;
  v64 = a2;
  v65 = a1;
  v63 = a4;
  v4 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = v53 - v5;
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v55 = (v6 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v54 = (v8 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v56 = v9 + 16;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v57 = (v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v58 = (v11 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v59 = v12 + 16;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v60 = v13 + 16;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  v62 = v14 + 16;
  v15 = swift_allocObject();
  v15[2] = v6;
  v15[3] = v8;
  v15[4] = v70;
  v15[5] = v9;
  v15[6] = v10;
  v15[7] = v11;
  v15[8] = v12;
  v15[9] = v13;
  v15[10] = v14;
  v68 = v6;

  v67 = v9;

  v16 = v66;
  (v65)(&v69, sub_1ABC95088, 0, sub_1ABD1AACC, v15);
  if (v16)
  {
  }

  else
  {
    v53[2] = v10;
    v53[3] = v11;
    v64 = v12;
    v65 = v14;
    v66 = v13;
    v17 = v63;

    sub_1ABC4A938(v69, v18, v19, v20, v21, v22, v23, v24);
    v53[1] = 0;
    v53[0] = v8;
    *v17 = v69;
    v26 = v55;
    swift_beginAccess();
    v17[1] = *v26;
    v27 = v54;
    swift_beginAccess();
    v28 = *v27;
    v29 = sub_1ABB2B834(*v27);
    v17[2] = v28;
    v17[3] = v29;
    v17[4] = v30;
    swift_beginAccess();
    v31 = v17;
    v32 = type metadata accessor for CustomGraphDateRelationship(0);
    v33 = v61;
    sub_1ABA7B9B4(v61, 1, 1, v32);
    v34 = type metadata accessor for CustomGraphSportsGameEvent(0);
    v35 = v34[7];

    sub_1ABC8B318(v36, v33, (v31 + v35));
    v37 = v57;
    swift_beginAccess();
    v38 = v34[8];
    v61 = *v37;
    *(v31 + v38) = v61;
    v39 = v58;
    swift_beginAccess();
    *(v31 + v34[9]) = *v39;
    v40 = v59;
    swift_beginAccess();
    v41 = *v40;
    v42 = *(*v40 + 16);
    if (v42)
    {
      v43 = *(v41 + 32);
    }

    else
    {
      v43 = 0;
    }

    v44 = v60;
    v45 = v31 + v34[10];
    *v45 = v41;
    *(v45 + 1) = v43;
    v45[16] = v42 == 0;
    swift_beginAccess();
    v46 = *v44;
    v47 = *(*v44 + 16);
    v48 = v65;
    if (v47)
    {
      v60 = *(v46 + 32);
    }

    else
    {
      v60 = 0;
    }

    v49 = v47 == 0;

    v50 = v31 + v34[11];
    v51 = v60;
    *v50 = v46;
    *(v50 + 1) = v51;
    v50[16] = v49;
    swift_beginAccess();
    v52 = v48[2];

    *(v31 + v34[12]) = v52;
  }
}

void sub_1ABC94A48()
{
  sub_1ABA7BCA8();
  v67 = v1;
  v66 = v2;
  v72 = v3;
  v65 = v4;
  sub_1ABD1B77C(v5);
  v6 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v8);
  sub_1ABA7D028();
  v9 = swift_allocObject();
  sub_1ABD1B074(v9);
  sub_1ABD1B6DC(v10);
  sub_1ABA7D028();
  v11 = swift_allocObject();
  sub_1ABD1B074(v11);
  sub_1ABD1B3C4(v12);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  sub_1ABD1B074(v13);
  sub_1ABD1B6D0(v14);
  sub_1ABA7D028();
  v15 = swift_allocObject();
  sub_1ABD1B074(v15);
  sub_1ABD1BA8C(v16);
  sub_1ABA7D028();
  v17 = swift_allocObject();
  sub_1ABD1B074(v17);
  sub_1ABD1BEE4(v18);
  sub_1ABA7D028();
  v19 = swift_allocObject();
  sub_1ABD1B074(v19);
  sub_1ABD1BAA4(v20);
  sub_1ABA7D028();
  v21 = swift_allocObject();
  sub_1ABD1B074(v21);
  v61 = v22;
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B074(v23);
  sub_1ABA88928();
  v24 = swift_allocObject();
  v24[2] = v66;
  v24[3] = v67;
  v24[4] = v9;
  v24[5] = v11;
  v24[6] = v72;
  v24[7] = v13;
  v24[8] = v15;
  v24[9] = v17;
  v24[10] = v19;
  v24[11] = v21;
  v24[12] = v23;

  sub_1ABD1B678();
  v65();
  if (v0)
  {

    sub_1ABD1C2B4();

    sub_1ABAA63C4();
  }

  else
  {

    v25 = sub_1ABD1BE7C();
    sub_1ABC4A938(v25, v26, v27, v28, v29, v30, v31, v32);
    *v64 = v71[0];
    sub_1ABAAD280();
    v64[1] = *v15;
    sub_1ABAAD280();
    v33 = *v15;
    v34 = sub_1ABB2B834(*v15);
    v64[2] = v33;
    v64[3] = v34;
    v64[4] = v35;
    sub_1ABAAD280();
    sub_1ABD1AF20();
    v39 = sub_1ABA9DFB8(v63, v36, v37, v38);
    v40 = type metadata accessor for CustomGraphSportsGameEvent(v39);
    v41 = v40[7];

    v43 = sub_1ABC8B318(v42, v63, (v64 + v41));
    v44 = sub_1ABA8A740(v43, &v70);
    *(v64 + v40[8]) = *v59;
    sub_1ABA8A740(v44, &v69);
    *(v64 + v40[9]) = *v60;
    sub_1ABD1B628();
    sub_1ABA8A740(v45, v46);
    v47 = *v60;
    sub_1ABAAFB28();
    v48 = v64 + v40[10];
    *v48 = v47;
    *(v48 + 1) = v49;
    v48[16] = v50;
    sub_1ABA8A740(v51, &v68);
    v52 = *v61;
    v53 = *(*v61 + 16);
    if (v53)
    {
      v62 = *(v52 + 32);
    }

    else
    {
      v62 = 0;
    }

    v54 = v53 == 0;
    sub_1ABAA1460();

    v55 = v64 + v40[11];
    *v55 = v52;
    *(v55 + 1) = v62;
    v55[16] = v54;
    v56 = sub_1ABAA2168();
    sub_1ABA7F2A0(v56, v57);
    v58 = *(v23 + 16);

    sub_1ABAA1668();

    *(v64 + v40[12]) = v58;
    sub_1ABD1C2B4();

    sub_1ABAA63C4();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABC95088(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphSportsGameEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC78), *(_Records_GDEntityClass_records + 0xC80), *(_Records_GDEntityClass_records + 0xC88), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC78), *(_Records_GDEntityClass_records + 0xC80), *(_Records_GDEntityClass_records + 0xC88), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABC95320(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v140 = a4;
  v142 = a3;
  v143 = a2;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v134 - v17;
  v19 = type metadata accessor for CustomGraphDateRelationship(0);
  MEMORY[0x1EEE9AC00](v19);
  v141 = 279;
  v137 = v21;
  v138 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = a5;
  v135 = a8;
  v136 = a6;
  v162 = v10;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_124;
  }

  v22 = *a1;
  v23 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v156);
  if (*&v156[0] == v22 && *(&v156[0] + 1) == v23)
  {

LABEL_54:
    *&v159[10] = *(a1 + 82);
    v59 = *(a1 + 7);
    v157 = *(a1 + 5);
    v158 = v59;
    *v159 = *(a1 + 9);
    v60 = v162;
    if (v159[25] == 1)
    {
      v61 = *(a1 + 7);
      v154 = *(a1 + 5);
      v155[0] = v61;
      v155[1] = *(a1 + 9);
      *(&v155[1] + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v26);
      *(&v134 - 2) = &v154;
      v151 = v157;
      v152 = v158;
      *v153 = *v159;
      *(&v153[1] + 2) = *(v62 + 42);
      sub_1ABAE2EC4();
      sub_1ABD191AC(&v151, &v144);
      sub_1ABCF8EE8(sub_1ABD1A8C8, v156);
      if (v60 || (v64 = *&v156[1]) == 0)
      {
        v144 = v154;
        v145 = v155[0];
        v146[0] = v155[1];
        *(v146 + 9) = *(&v155[1] + 9);
        v63 = &v144;
LABEL_57:
        sub_1ABD19208(v63);
LABEL_62:
        sub_1ABAB480C(&v157, &qword_1EB4D7E60, &unk_1ABF5E780);
        return;
      }

      v144 = v154;
      v145 = v155[0];
      v146[0] = v155[1];
      *(v146 + 9) = *(&v155[1] + 9);
      sub_1ABD19208(&v144);
      v65 = v143;
      swift_beginAccess();
      sub_1ABB4DCE0();
      v66 = *(*(v65 + 16) + 16);
      sub_1ABB4E0E4(v66);
      v67 = *(v65 + 16);
      *(v67 + 16) = v66 + 1;
      v68 = v67 + 88 * v66;
      *(v68 + 32) = v156[0];
      *(v68 + 48) = v64;
      *(v68 + 56) = *(&v156[1] + 8);
      *(v68 + 72) = *(&v156[2] + 8);
      *(v68 + 88) = *(&v156[3] + 8);
      *(v68 + 104) = *(&v156[4] + 8);
      goto LABEL_60;
    }

LABEL_90:
    if (qword_1ED871B38 == -1)
    {
LABEL_91:
      v105 = sub_1ABF237F4();
      sub_1ABA7AA24(v105, qword_1ED871B40);
      sub_1ABAE2EC4();
      v70 = sub_1ABF237D4();
      v71 = sub_1ABF24664();
      if (os_log_type_enabled(v70, v71))
      {
LABEL_92:
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v151 = v107;
        *v106 = 136642819;
        memcpy(v156, a1, 0x62uLL);
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v108 = sub_1ABF23C94();
        v110 = &v151;
LABEL_93:
        v111 = sub_1ABADD6D8(v108, v109, v110);

        *(v106 + 4) = v111;
        _os_log_impl(&dword_1ABA78000, v70, v71, "Failed to parse %{sensitive}s.", v106, 0xCu);
        sub_1ABA84B54(v107);
        MEMORY[0x1AC5AB8B0](v107, -1, -1);
        MEMORY[0x1AC5AB8B0](v106, -1, -1);

        return;
      }

      goto LABEL_103;
    }

LABEL_75:
    swift_once();
    goto LABEL_91;
  }

  v134 = a7;
  v25 = sub_1ABF25054();

  if (v25)
  {
    goto LABEL_54;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
LABEL_102:
    v119 = sub_1ABF237F4();
    sub_1ABA7AA24(v119, qword_1ED871B40);
    sub_1ABAE2EC4();
    v70 = sub_1ABF237D4();
    v71 = sub_1ABF24664();
    if (!os_log_type_enabled(v70, v71))
    {
LABEL_103:

      v83 = &qword_1EB4D1148;
      v84 = &qword_1ABF332D0;
      v85 = a1;
      goto LABEL_104;
    }

LABEL_112:
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v157 = v107;
    *v106 = 136642819;
    memcpy(v156, a1, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v108 = sub_1ABF23C94();
    v110 = &v157;
    goto LABEL_93;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v156);
  if (*&v156[0] == v22 && *(&v156[0] + 1) == v23)
  {

LABEL_64:
    if (!*(a1 + 97))
    {
      v73 = a1[5];
      v72 = a1[6];
      v74 = v142;
      swift_beginAccess();

      sub_1ABB4DC20();
      v75 = *(*(v74 + 16) + 16);
      sub_1ABB4E024(v75);
      v76 = *(v74 + 16);
      *(v76 + 16) = v75 + 1;
      v77 = v76 + 16 * v75;
      *(v77 + 32) = v73;
      *(v77 + 40) = v72;
      *(v74 + 16) = v76;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v69 = sub_1ABF237F4();
    sub_1ABA7AA24(v69, qword_1ED871B40);
    sub_1ABAE2EC4();
    v70 = sub_1ABF237D4();
    v71 = sub_1ABF24664();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_103;
    }

    goto LABEL_112;
  }

  v28 = sub_1ABF25054();

  if (v28)
  {
    goto LABEL_64;
  }

  if (v141 < 0x92)
  {
    __break(1u);
    goto LABEL_114;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_128;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v156);
  if (*&v156[0] == v22 && *(&v156[0] + 1) == v23)
  {

    goto LABEL_71;
  }

  v30 = sub_1ABF25054();

  if (v30)
  {
LABEL_71:
    *&v159[10] = *(a1 + 82);
    v78 = *(a1 + 7);
    v157 = *(a1 + 5);
    v158 = v78;
    *v159 = *(a1 + 9);
    if (v159[25] != 1)
    {
      if (qword_1ED871B38 == -1)
      {
        goto LABEL_91;
      }

      goto LABEL_75;
    }

    v79 = *(a1 + 7);
    v160[0] = *(a1 + 5);
    v160[1] = v79;
    v161[0] = *(a1 + 9);
    *(v161 + 9) = *(a1 + 81);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v80 = v140;

    v81 = v80;
    v82 = v162;
    sub_1ABC8A96C(v160, v81, v18);
    if (!v82)
    {
      if (sub_1ABA7E1E0(v18, 1, v19) != 1)
      {
        v89 = v138;
        sub_1ABCF9424();
        v90 = v139;
        swift_beginAccess();
        sub_1ABB4DE30();
        v91 = *(*(v90 + 16) + 16);
        sub_1ABB4E234(v91);
        v92 = *(v90 + 16);
        *(v92 + 16) = v91 + 1;
        sub_1ABD0AD58();
        *(v90 + 16) = v92;
        swift_endAccess();
        sub_1ABAB480C(&v157, &qword_1EB4D7E60, &unk_1ABF5E780);
        sub_1ABD0ADB0(v89, type metadata accessor for CustomGraphDateRelationship);
        return;
      }

      sub_1ABAB480C(&v157, &qword_1EB4D7E60, &unk_1ABF5E780);
      v83 = &qword_1EB4D5F20;
      v84 = &qword_1ABF4F358;
      v85 = v18;
      goto LABEL_104;
    }

    goto LABEL_73;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_131;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), v156);
  if (*&v156[0] == v22 && *(&v156[0] + 1) == v23)
  {

    v34 = v162;
    goto LABEL_79;
  }

  v32 = sub_1ABF25054();

  v34 = v162;
  if (v32)
  {
LABEL_79:
    *&v159[10] = *(a1 + 82);
    v86 = *(a1 + 7);
    v157 = *(a1 + 5);
    v158 = v86;
    *v159 = *(a1 + 9);
    if (v159[25] != 1)
    {
      goto LABEL_90;
    }

    v87 = *(a1 + 7);
    v144 = *(a1 + 5);
    v145 = v87;
    v146[0] = *(a1 + 9);
    *(v146 + 9) = *(a1 + 81);
    MEMORY[0x1EEE9AC00](v33);
    *(&v134 - 2) = &v144;
    v156[0] = v157;
    v156[1] = v158;
    v156[2] = *v159;
    *(&v156[2] + 10) = *(v88 + 42);
    sub_1ABAE2EC4();
    sub_1ABD191AC(v156, &v151);
    sub_1ABD08790(sub_1ABD1A8C8, (&v134 - 4), &unk_1F2099F30, sub_1ABD1AB54, sub_1ABD19310);
    if (v34)
    {
      v151 = v144;
      v152 = v145;
      *v153 = v146[0];
      *(&v153[1] + 1) = *(v146 + 9);
      sub_1ABD19208(&v151);
      sub_1ABAB480C(&v157, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    v93 = *&v155[0];
    if (*&v155[0])
    {
      LODWORD(v162) = LOBYTE(v155[1]);
      v94 = *(&v155[0] + 1);
      v95 = v154;
      v151 = v144;
      v152 = v145;
      *v153 = v146[0];
      *(&v153[1] + 1) = *(v146 + 9);
      sub_1ABD19208(&v151);
      v96 = v136;
      swift_beginAccess();
      sub_1ABB4DE78();
      v97 = *(*(v96 + 16) + 16);
      sub_1ABB4E27C(v97);
      v98 = *(v96 + 16);
      *(v98 + 16) = v97 + 1;
      v99 = v98 + 40 * v97;
      *(v99 + 32) = v95;
      *(v99 + 48) = v93;
      *(v99 + 56) = v94;
      *(v99 + 64) = v162 & 1;
      *(v96 + 16) = v98;
      swift_endAccess();
    }

    else
    {
      v151 = v144;
      v152 = v145;
      *v153 = v146[0];
      *(&v153[1] + 1) = *(v146 + 9);
      sub_1ABD19208(&v151);
    }

LABEL_73:
    v83 = &qword_1EB4D7E60;
    v84 = &unk_1ABF5E780;
    v85 = &v157;
LABEL_104:
    sub_1ABAB480C(v85, v83, v84);
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_133;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v156);
  if (*&v156[0] == v22 && *(&v156[0] + 1) == v23)
  {

LABEL_86:
    *&v159[10] = *(a1 + 82);
    v100 = *(a1 + 7);
    v157 = *(a1 + 5);
    v158 = v100;
    *v159 = *(a1 + 9);
    if (v159[25] == 1)
    {
      v101 = *(a1 + 7);
      v144 = *(a1 + 5);
      v145 = v101;
      v146[0] = *(a1 + 9);
      *(v146 + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v37);
      *(&v134 - 2) = &v144;
      v156[0] = v157;
      v156[1] = v158;
      v156[2] = *v159;
      *(&v156[2] + 10) = *(v102 + 42);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v156, &v151);
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v134 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v103, v104, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, *(&v144 + 1), v145, SBYTE8(v145), *&v146[0], *(&v146[0] + 1), *&v146[1], *(&v146[1] + 1), v147, v148, v149, v150, v151, *(&v151 + 1));
      if (v34 || (v112 = *&v155[0]) == 0)
      {
        v151 = v144;
        v152 = v145;
        *v153 = v146[0];
        *(&v153[1] + 1) = *(v146 + 9);
LABEL_89:
        v63 = &v151;
        goto LABEL_57;
      }

      v151 = v144;
      v152 = v145;
      *v153 = v146[0];
      *(&v153[1] + 1) = *(v146 + 9);
      sub_1ABD19208(&v151);
      v65 = v134;
      swift_beginAccess();
      sub_1ABB4DD28();
      v113 = *(*(v65 + 16) + 16);
      sub_1ABB4E12C(v113);
      v67 = *(v65 + 16);
      *(v67 + 16) = v113 + 1;
      v114 = v67 + (v113 << 6);
      *(v114 + 32) = v154;
      *(v114 + 48) = v112;
      *(v114 + 56) = *(v155 + 8);
      *(v114 + 72) = *(&v155[1] + 8);
      *(v114 + 88) = BYTE8(v155[2]);
LABEL_60:
      *(v65 + 16) = v67;
LABEL_61:
      swift_endAccess();
      goto LABEL_62;
    }

    goto LABEL_90;
  }

  v36 = sub_1ABF25054();

  if (v36)
  {
    goto LABEL_86;
  }

  if (v141 < 0xA1)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v156);
  if (*&v156[0] == v22 && *(&v156[0] + 1) == v23)
  {
  }

  else
  {
    v39 = sub_1ABF25054();

    if ((v39 & 1) == 0)
    {
      if (v141 != 161)
      {
        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v156);
          if (*&v156[0] == v22 && *(&v156[0] + 1) == v23)
          {
          }

          else
          {
            v48 = sub_1ABF25054();

            if ((v48 & 1) == 0)
            {
              if (_Records_GDEntityPredicate_records)
              {
                sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v156);
                if (*&v156[0] != v22 || *(&v156[0] + 1) != v23)
                {
                  v57 = sub_1ABF25054();

                  if ((v57 & 1) == 0)
                  {
                    return;
                  }

LABEL_115:
                  *&v159[10] = *(a1 + 82);
                  v124 = *(a1 + 7);
                  v157 = *(a1 + 5);
                  v158 = v124;
                  *v159 = *(a1 + 9);
                  if (v159[25] == 1)
                  {
                    v125 = *(a1 + 7);
                    v144 = *(a1 + 5);
                    v145 = v125;
                    v146[0] = *(a1 + 9);
                    *(v146 + 9) = *(a1 + 81);
                    MEMORY[0x1EEE9AC00](v58);
                    *(&v134 - 2) = &v144;
                    v156[0] = v157;
                    v156[1] = v158;
                    v156[2] = *v159;
                    *(&v156[2] + 10) = *&v159[10];
                    sub_1ABAE2EC4();
                    sub_1ABD191AC(v156, &v151);
                    v126 = v162;
                    sub_1ABCFC2DC(sub_1ABD1A8C8, (&v134 - 4), &unk_1F2099FA8, &unk_1F2099FD0, sub_1ABD1AB6C, sub_1ABD19348, v127, v128, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, *(&v144 + 1), v145, SBYTE8(v145), *&v146[0], *(&v146[0] + 1), *&v146[1], *(&v146[1] + 1), v147, v148, v149, v150, v151, *(&v151 + 1));
                    if (!v126)
                    {
                      v130 = *&v155[0];
                      if (*&v155[0])
                      {
                        v151 = v144;
                        v152 = v145;
                        *v153 = v146[0];
                        *(&v153[1] + 1) = *(v146 + 9);
                        sub_1ABD19208(&v151);
                        swift_beginAccess();
                        sub_1ABB4DF08();
                        v131 = *(*(a10 + 16) + 16);
                        sub_1ABB4E30C(v131);
                        v132 = *(a10 + 16);
                        *(v132 + 16) = v131 + 1;
                        v133 = v132 + (v131 << 6);
                        *(v133 + 32) = v154;
                        *(v133 + 48) = v130;
                        *(v133 + 56) = *(v155 + 8);
                        *(v133 + 72) = *(&v155[1] + 8);
                        *(v133 + 88) = BYTE8(v155[2]);
                        *(a10 + 16) = v132;
                        goto LABEL_61;
                      }
                    }

                    v151 = v144;
                    v152 = v145;
                    *v153 = v146[0];
                    *(&v153[1] + 1) = *(v146 + 9);
                    goto LABEL_89;
                  }

                  if (qword_1ED871B38 == -1)
                  {
LABEL_119:
                    v129 = sub_1ABF237F4();
                    sub_1ABA7AA24(v129, qword_1ED871B40);
                    sub_1ABAE2EC4();
                    v70 = sub_1ABF237D4();
                    v71 = sub_1ABF24664();
                    if (!os_log_type_enabled(v70, v71))
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_92;
                  }

LABEL_131:
                  swift_once();
                  goto LABEL_119;
                }

LABEL_114:

                goto LABEL_115;
              }

LABEL_135:
              __break(1u);
              return;
            }
          }

          if (*(a1 + 97) == 2)
          {
            sub_1ABC4A630(a1[5], v49, v50, v51, v52, v53, v54, v55);
            if (!v34)
            {
              v120 = v157;
              swift_beginAccess();
              sub_1ABB4DD40();
              v121 = *(*(a9 + 16) + 16);
              sub_1ABB4E144(v121);
              v122 = *(a9 + 16);
              *(v122 + 16) = v121 + 1;
              *(v122 + 8 * v121 + 32) = v120;
              *(a9 + 16) = v122;
            }

            return;
          }

          if (qword_1ED871B38 == -1)
          {
            goto LABEL_111;
          }

          goto LABEL_129;
        }

LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      swift_once();
LABEL_111:
      v123 = sub_1ABF237F4();
      sub_1ABA7AA24(v123, qword_1ED871B40);
      sub_1ABAE2EC4();
      v70 = sub_1ABF237D4();
      v71 = sub_1ABF24664();
      if (!os_log_type_enabled(v70, v71))
      {
LABEL_120:

        sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
        return;
      }

      goto LABEL_112;
    }
  }

  if (*(a1 + 97) != 2)
  {
    if (qword_1ED871B38 == -1)
    {
      goto LABEL_102;
    }

    goto LABEL_126;
  }

  sub_1ABC4A630(a1[5], v40, v41, v42, v43, v44, v45, v46);
  if (!v34)
  {
    v115 = v157;
    v116 = v135;
    swift_beginAccess();
    sub_1ABB4DD40();
    v117 = *(*(v116 + 16) + 16);
    sub_1ABB4E144(v117);
    v118 = *(v116 + 16);
    *(v118 + 16) = v117 + 1;
    *(v118 + 8 * v117 + 32) = v115;
    *(v116 + 16) = v118;
  }
}

void sub_1ABC968B4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12)
{
  v280 = a8;
  v282 = a7;
  v285 = a6;
  v293 = a5;
  v303 = a4;
  v310 = a3;
  v309 = a2;
  v332 = a1;
  v12 = a11;
  v13 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v304 = v273 - v14;
  v297 = type metadata accessor for CustomGraphDateRelationship(0);
  v291 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297);
  v292 = v273 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = *(a11 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v277 = v273 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v278 = v273 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v283 = v273 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v288 = v273 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v295 = v273 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v302 = v273 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v308 = v273 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v273 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v312 = v273 - v34;
  v35 = *(a12 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v314 = sub_1ABF247E4();
  v313 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v279 = v273 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v290 = v273 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v299 = v273 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v306 = v273 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v273 - v45;
  v321 = swift_checkMetadataState();
  v319 = *(v321 - 8);
  MEMORY[0x1EEE9AC00](v321);
  v275 = v273 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v281 = v273 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v284 = v273 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v289 = v273 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v298 = v273 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v305 = v273 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = v273 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v273 - v62;
  v318 = AssociatedTypeWitness;
  v315 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v64);
  v274 = v273 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v276 = v273 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v286 = v273 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v287 = v273 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v294 = v273 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v296 = v273 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v300 = v273 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v301 = v273 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v82 = v273 - v81;
  v84 = MEMORY[0x1EEE9AC00](v83);
  v86 = v273 - v85;
  v87 = *(v35 + 24);
  v323 = a11;
  v320 = v35;
  v87(v331, a11, v35, v84);
  v307 = 279;
  v311 = v32;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_142:
    swift_once();
LABEL_85:
    v191 = sub_1ABF237F4();
    sub_1ABA7AA24(v191, qword_1ED871B40);
    v143 = *(v316 + 16);
    v144 = &v320;
    goto LABEL_49;
  }

  v88 = v331[0];
  v89 = v331[1];
  v90 = v331[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), &v324);
  v91 = v88;
  v12 = v326;
  if (v324 == v91 && *(&v324 + 1) == v89)
  {

    goto LABEL_9;
  }

  v273[1] = v90;
  v273[0] = v91;
  v93 = sub_1ABF25054();

  if ((v93 & 1) == 0)
  {
    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v324);
      v119 = v326;
      v120 = v324 == v273[0] && *(&v324 + 1) == v89;
      v82 = v323;
      if (v120)
      {

LABEL_30:
        v123 = v320;

        (*(v123 + 32))(v82, v123);
        v124 = v321;
        v125 = swift_getAssociatedConformanceWitness();
        v126 = (*(v125 + 24))(v124, v125);
        v128 = v127;
        (*(v319 + 8))(v60, v124);
        if (v128)
        {
          v129 = v310;
          swift_beginAccess();
          sub_1ABB4DC20();
          v130 = *(*(v129 + 16) + 16);
          sub_1ABB4E024(v130);
          v131 = *(v129 + 16);
          *(v131 + 16) = v130 + 1;
          v132 = v131 + 16 * v130;
          *(v132 + 32) = v126;
          *(v132 + 40) = v128;
          *(v129 + 16) = v131;
          swift_endAccess();
          return;
        }

        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v133 = sub_1ABF237F4();
        sub_1ABA7AA24(v133, qword_1ED871B40);
        v99 = *(v316 + 16);
        v100 = v308;
        v99(v308, v332, v82);
        v101 = sub_1ABF237D4();
        v102 = sub_1ABF24664();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v98 = v316;
          goto LABEL_14;
        }

        goto LABEL_51;
      }

      v121 = sub_1ABF25054();

      v122 = v322;
      if (v121)
      {
        goto LABEL_30;
      }

      if (v307 < 0x92)
      {
        __break(1u);
        goto LABEL_131;
      }

      v134 = v321;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_147;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v324);
      if (v324 == v273[0] && *(&v324 + 1) == v89)
      {
        v137 = v134;

        goto LABEL_45;
      }

      v136 = sub_1ABF25054();

      if (v136)
      {
        v137 = v134;
LABEL_45:
        v138 = v320;

        v139 = v305;
        v12 = v332;
        (*(v138 + 32))(v82, v138);
        v140 = v306;
        (*(AssociatedConformanceWitness + 40))(v137, AssociatedConformanceWitness);
        (*(v319 + 8))(v139, v137);
        v141 = v318;
        if (sub_1ABA7E1E0(v140, 1, v318) != 1)
        {
          v151 = v315;
          v152 = v301;
          (*(v315 + 32))(v301, v140, v141);
          (*(v151 + 16))(v300, v152, v141);
          swift_getAssociatedConformanceWitness();

          v153 = v304;
          CustomGraphDateRelationship.init<A>(from:initializationResources:)();
          if (v122)
          {
            (*(v151 + 8))(v152, v141);
          }

          else if (sub_1ABA7E1E0(v153, 1, v297) == 1)
          {
            (*(v151 + 8))(v152, v141);
            sub_1ABAB480C(v153, &qword_1EB4D5F20, &qword_1ABF4F358);
          }

          else
          {
            v168 = v292;
            sub_1ABCF9424();
            v169 = v293;
            swift_beginAccess();
            v170 = v151;
            sub_1ABB4DE30();
            v171 = *(*(v169 + 16) + 16);
            sub_1ABB4E234(v171);
            v172 = *(v169 + 16);
            *(v172 + 16) = v171 + 1;
            sub_1ABD0AD58();
            *(v169 + 16) = v172;
            swift_endAccess();
            sub_1ABD0ADB0(v168, type metadata accessor for CustomGraphDateRelationship);
            (*(v170 + 8))(v152, v141);
          }

          return;
        }

        (*(v313 + 8))(v140, v314);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v142 = sub_1ABF237F4();
        sub_1ABA7AA24(v142, qword_1ED871B40);
        v143 = *(v316 + 16);
        v144 = &v329 + 1;
        goto LABEL_49;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
LABEL_150:
        swift_once();
LABEL_134:
        v252 = sub_1ABF237F4();
        sub_1ABA7AA24(v252, qword_1ED871B40);
        v253 = *(v316 + 16);
        v253(v277, v332, v323);
        v101 = sub_1ABF237D4();
        v254 = sub_1ABF24664();
        if (!os_log_type_enabled(v101, v254))
        {

          (*(v316 + 8))(v277, v323);
          return;
        }

        v236 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        *&v324 = v255;
        *v236 = 136642819;
        v256 = v277;
        v257 = v323;
        v253(v311, v277, v323);
        v258 = sub_1ABF23C94();
        v260 = v259;
        (*(v316 + 8))(v256, v257);
        v261 = sub_1ABADD6D8(v258, v260, &v324);

        *(v236 + 4) = v261;
        _os_log_impl(&dword_1ABA78000, v101, v254, "Failed to parse %{sensitive}s.", v236, 0xCu);
        sub_1ABA84B54(v255);
        v242 = v255;
LABEL_119:
        MEMORY[0x1AC5AB8B0](v242, -1, -1);
        v111 = v236;
        goto LABEL_16;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[216], *(_Records_GDEntityPredicate_records + 55), *(_Records_GDEntityPredicate_records + 56), &v324);
      if (v324 == v273[0] && *(&v324 + 1) == v89)
      {

LABEL_65:
        v156 = v320;

        v157 = v298;
        v12 = v332;
        (*(v156 + 32))(v82, v156);
        v158 = v299;
        (*(AssociatedConformanceWitness + 40))(v134, AssociatedConformanceWitness);
        v159 = v158;
        (*(v319 + 8))(v157, v134);
        v160 = v318;
        if (sub_1ABA7E1E0(v158, 1, v318) == 1)
        {
          (*(v313 + 8))(v158, v314);
          if (qword_1ED871B38 != -1)
          {
            swift_once();
          }

          v161 = sub_1ABF237F4();
          sub_1ABA7AA24(v161, qword_1ED871B40);
          v143 = *(v316 + 16);
          v144 = &v326;
LABEL_49:
          v100 = *(v144 - 32);
          v143(v100, v12, v82);
          v101 = sub_1ABF237D4();
          v145 = sub_1ABF24664();
          if (os_log_type_enabled(v101, v145))
          {
            v104 = swift_slowAlloc();
            v146 = swift_slowAlloc();
            *&v324 = v146;
            *v104 = 136642819;
            v143(v311, v100, v82);
            v147 = sub_1ABF23C94();
            v149 = v148;
            (*(v316 + 8))(v100, v82);
            v150 = sub_1ABADD6D8(v147, v149, &v324);

            *(v104 + 4) = v150;
            _os_log_impl(&dword_1ABA78000, v101, v145, "Failed to parse %{sensitive}s.", v104, 0xCu);
            sub_1ABA84B54(v146);
            v110 = v146;
            goto LABEL_15;
          }

LABEL_51:

          (*(v316 + 8))(v100, v82);
          return;
        }

        v162 = v315;
        v163 = v296;
        (*(v315 + 32))(v296, v159, v160);
        v164 = v294;
        (*(v162 + 16))(v294, v163, v160);
        v165 = type metadata accessor for CustomGraphEvent(0);
        v166 = sub_1ABD09EBC(&unk_1EB4D7EA0);
        v167 = swift_getAssociatedConformanceWitness();
        CustomGraphEventRelationship.init<A>(from:initializationResources:)(v164, v165, v160, v166, v167);
        if (v122)
        {
          (*(v162 + 8))(v163, v160);
          return;
        }

        v175 = v325;
        if (!v325)
        {
          v183 = *(v315 + 8);
          v185 = v163;
          v186 = v160;
          goto LABEL_99;
        }

        v176 = BYTE8(v326);
        v177 = v326;
        v178 = v324;
        v179 = v285;
        swift_beginAccess();
        sub_1ABB4DE78();
        v180 = *(*(v179 + 16) + 16);
        sub_1ABB4E27C(v180);
        v181 = *(v179 + 16);
        *(v181 + 16) = v180 + 1;
        v182 = v181 + 40 * v180;
        *(v182 + 32) = v178;
        *(v182 + 48) = v175;
        *(v182 + 56) = v177;
        *(v182 + 64) = v176 & 1;
        *(v179 + 16) = v181;
        swift_endAccess();
        v183 = *(v315 + 8);
        v184 = &v326 + 1;
LABEL_81:
        v185 = *(v184 - 32);
        v186 = v318;
LABEL_99:
        v183(v185, v186);
        return;
      }

      v155 = sub_1ABF25054();

      if (v155)
      {
        goto LABEL_65;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        __break(1u);
        goto LABEL_152;
      }

      sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v324);
      v12 = v326;
      if (v324 == v273[0] && *(&v324 + 1) == v89)
      {

        goto LABEL_83;
      }

      v174 = sub_1ABF25054();

      if (v174)
      {
LABEL_83:
        v187 = v320;

        v188 = v289;
        v12 = v332;
        (*(v187 + 32))(v82, v187);
        v189 = v290;
        (*(AssociatedConformanceWitness + 40))(v134, AssociatedConformanceWitness);
        (*(v319 + 8))(v188, v134);
        v190 = v318;
        if (sub_1ABA7E1E0(v189, 1, v318) != 1)
        {
          v192 = v315;
          v193 = v287;
          (*(v315 + 32))(v287, v189, v190);
          v194 = v286;
          (*(v192 + 16))(v286, v193, v190);
          v195 = sub_1ABD19740();
          v196 = swift_getAssociatedConformanceWitness();
          CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v324, v194, &type metadata for CustomGraphLocation, v190, v195, v196);
          if (!v122)
          {
            v197 = v325;
            if (v325)
            {
              v198 = v282;
              swift_beginAccess();
              sub_1ABB4DD28();
              v199 = *(*(v198 + 16) + 16);
              sub_1ABB4E12C(v199);
              v192 = v315;
              v200 = *(v198 + 16);
              *(v200 + 16) = v199 + 1;
              v201 = v200 + (v199 << 6);
              *(v201 + 32) = v324;
              *(v201 + 48) = v197;
              *(v201 + 56) = v326;
              *(v201 + 72) = v327;
              *(v201 + 88) = v328;
              *(v198 + 16) = v200;
              swift_endAccess();
            }
          }

          (*(v192 + 8))(v193, v190);
          return;
        }

        (*(v313 + 8))(v189, v314);
        if (qword_1ED871B38 == -1)
        {
          goto LABEL_85;
        }

        goto LABEL_142;
      }

      if (v307 >= 0xA1)
      {
        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v324);
          v119 = v326;
          if (v324 == v273[0] && *(&v324 + 1) == v89)
          {

            goto LABEL_101;
          }

          v203 = sub_1ABF25054();

          if (v203)
          {
LABEL_101:
            v204 = v320;

            v205 = v284;
            v12 = v332;
            (*(v204 + 32))(v82, v204);
            v206 = swift_getAssociatedConformanceWitness();
            (*(v206 + 32))(&v324, v134, v206);
            (*(v319 + 8))(v205, v134);
            if ((BYTE8(v324) & 1) == 0)
            {
              sub_1ABC4A630(v324, v207, v208, v209, v210, v211, v212, v213);
              if (!v122)
              {
                v215 = v330;
                v216 = v280;
                swift_beginAccess();
                sub_1ABB4DD40();
                v217 = *(*(v216 + 16) + 16);
                sub_1ABB4E144(v217);
                v218 = *(v216 + 16);
                *(v218 + 16) = v217 + 1;
                *(v218 + 8 * v217 + 32) = v215;
                *(v216 + 16) = v218;
              }

              return;
            }

            if (qword_1ED871B38 == -1)
            {
              goto LABEL_103;
            }

            goto LABEL_145;
          }

          if (v307 != 161)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v324);
              if (v324 == v273[0] && *(&v324 + 1) == v89)
              {

                goto LABEL_115;
              }

              v220 = sub_1ABF25054();

              if (v220)
              {
LABEL_115:
                v221 = v320;

                v222 = v281;
                v119 = v332;
                (*(v221 + 32))(v82, v221);
                v223 = swift_getAssociatedConformanceWitness();
                (*(v223 + 32))(&v324, v134, v223);
                (*(v319 + 8))(v222, v134);
                if ((BYTE8(v324) & 1) == 0)
                {
                  v243 = v322;
                  sub_1ABC4A630(v324, v224, v225, v226, v227, v228, v229, v230);
                  if (!v243)
                  {
                    v244 = v330;
                    swift_beginAccess();
                    sub_1ABB4DD40();
                    v245 = *(*(a9 + 16) + 16);
                    sub_1ABB4E144(v245);
                    v246 = *(a9 + 16);
                    *(v246 + 16) = v245 + 1;
                    *(v246 + 8 * v245 + 32) = v244;
                    *(a9 + 16) = v246;
                  }

                  return;
                }

                if (qword_1ED871B38 == -1)
                {
                  goto LABEL_117;
                }

                goto LABEL_148;
              }

              if (_Records_GDEntityPredicate_records)
              {
                sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v324);
                if (v324 != v273[0] || *(&v324 + 1) != v89)
                {
                  v248 = sub_1ABF25054();

                  if ((v248 & 1) == 0)
                  {
                    return;
                  }

LABEL_132:
                  v249 = v275;
                  (*(v320 + 32))(v323);
                  v250 = v279;
                  v251 = v321;
                  (*(AssociatedConformanceWitness + 40))(v321);
                  (*(v319 + 8))(v249, v251);
                  if (sub_1ABA7E1E0(v250, 1, v318) != 1)
                  {
                    v262 = v315;
                    v263 = v276;
                    v264 = v318;
                    (*(v315 + 32))(v276, v279, v318);
                    v265 = v274;
                    (*(v262 + 16))(v274, v263, v264);
                    v266 = sub_1ABD1A064();
                    v267 = swift_getAssociatedConformanceWitness();
                    v268 = v322;
                    CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v324, v265, &type metadata for CustomGraphSportsTeam, v264, v266, v267);
                    if (!v268)
                    {
                      v269 = v325;
                      if (v325)
                      {
                        swift_beginAccess();
                        sub_1ABB4DF08();
                        v270 = *(*(a10 + 16) + 16);
                        sub_1ABB4E30C(v270);
                        v271 = *(a10 + 16);
                        *(v271 + 16) = v270 + 1;
                        v272 = v271 + (v270 << 6);
                        *(v272 + 32) = v324;
                        *(v272 + 48) = v269;
                        *(v272 + 56) = v326;
                        *(v272 + 72) = v327;
                        *(v272 + 88) = v328;
                        *(a10 + 16) = v271;
                        swift_endAccess();
                      }
                    }

                    v183 = *(v315 + 8);
                    v184 = &v308;
                    goto LABEL_81;
                  }

                  (*(v313 + 8))(v279, v314);
                  if (qword_1ED871B38 == -1)
                  {
                    goto LABEL_134;
                  }

                  goto LABEL_150;
                }

LABEL_131:

                goto LABEL_132;
              }

LABEL_154:
              __break(1u);
              return;
            }

LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          swift_once();
LABEL_117:
          v231 = sub_1ABF237F4();
          sub_1ABA7AA24(v231, qword_1ED871B40);
          v232 = v316;
          v233 = *(v316 + 16);
          v234 = v278;
          v233(v278, v119, v82);
          v101 = sub_1ABF237D4();
          v235 = sub_1ABF24664();
          if (!os_log_type_enabled(v101, v235))
          {

            (*(v232 + 8))(v234, v82);
            return;
          }

          v236 = swift_slowAlloc();
          v332 = swift_slowAlloc();
          *&v324 = v332;
          *v236 = 136642819;
          v233(v311, v234, v82);
          v237 = sub_1ABF23C94();
          v239 = v238;
          (*(v232 + 8))(v234, v82);
          v240 = sub_1ABADD6D8(v237, v239, &v324);

          *(v236 + 4) = v240;
          _os_log_impl(&dword_1ABA78000, v101, v235, "Failed to parse %{sensitive}s.", v236, 0xCu);
          v241 = v332;
          sub_1ABA84B54(v332);
          v242 = v241;
          goto LABEL_119;
        }

LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      __break(1u);
    }

    __break(1u);
LABEL_145:
    swift_once();
LABEL_103:
    v214 = sub_1ABF237F4();
    sub_1ABA7AA24(v214, qword_1ED871B40);
    v143 = *(v316 + 16);
    v144 = &v315;
    goto LABEL_49;
  }

LABEL_9:

  v94 = v332;
  (*(v320 + 32))(v323);
  v95 = v321;
  (*(AssociatedConformanceWitness + 40))(v321, AssociatedConformanceWitness);
  (*(v319 + 8))(v63, v95);
  v96 = v318;
  if (sub_1ABA7E1E0(v46, 1, v318) == 1)
  {
    (*(v313 + 8))(v46, v314);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v97 = sub_1ABF237F4();
    sub_1ABA7AA24(v97, qword_1ED871B40);
    v98 = v316;
    v99 = *(v316 + 16);
    v100 = v312;
    v82 = v323;
    v99(v312, v94, v323);
    v101 = sub_1ABF237D4();
    v102 = sub_1ABF24664();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
LABEL_14:
      v104 = v103;
      v332 = swift_slowAlloc();
      *&v324 = v332;
      *v104 = 136642819;
      v99(v311, v100, v82);
      v105 = sub_1ABF23C94();
      v107 = v106;
      (*(v98 + 8))(v100, v82);
      v108 = sub_1ABADD6D8(v105, v107, &v324);

      *(v104 + 4) = v108;
      _os_log_impl(&dword_1ABA78000, v101, v102, "Failed to parse %{sensitive}s.", v104, 0xCu);
      v109 = v332;
      sub_1ABA84B54(v332);
      v110 = v109;
LABEL_15:
      MEMORY[0x1AC5AB8B0](v110, -1, -1);
      v111 = v104;
LABEL_16:
      MEMORY[0x1AC5AB8B0](v111, -1, -1);

      return;
    }

    (*(v98 + 8))(v100, v82);
  }

  else
  {
    v112 = v315;
    (*(v315 + 32))(v86, v46, v96);
    (*(v112 + 16))(v82, v86, v96);
    swift_getAssociatedConformanceWitness();
    v113 = v322;
    CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
    if (!v113)
    {
      v114 = v325;
      if (v325)
      {
        v115 = v309;
        swift_beginAccess();
        sub_1ABB4DCE0();
        v116 = *(*(v115 + 16) + 16);
        sub_1ABB4E0E4(v116);
        v112 = v315;
        v117 = *(v115 + 16);
        *(v117 + 16) = v116 + 1;
        v118 = v117 + 88 * v116;
        *(v118 + 32) = v324;
        *(v118 + 48) = v114;
        *(v118 + 56) = v326;
        *(v118 + 72) = v327;
        *(v118 + 88) = v328;
        *(v118 + 104) = v329;
        *(v115 + 16) = v117;
        swift_endAccess();
      }
    }

    (*(v112 + 8))(v86, v96);
  }
}

void CustomGraphSportsGameEvent.init(typedId:all_eventTypes:all_name:all_date:all_cooccurringEvents:all_locations:all_startLocation:all_endLocation:all_teams:)()
{
  sub_1ABA7E2A8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1ABD1B80C();
  v13 = v12;
  v15 = v14;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v16);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA9F7AC();
  *v15 = *v13;
  v15[1] = v2;
  v18 = sub_1ABB2B834(v1);
  v15[2] = v1;
  v15[3] = v18;
  v15[4] = v19;
  v20 = sub_1ABA8B2DC();
  v21 = type metadata accessor for CustomGraphSportsGameEvent(v20);
  sub_1ABC8B318(v0, v3, (v15 + v21[7]));
  *(v15 + v21[8]) = v11;
  *(v15 + v21[9]) = v9;
  sub_1ABA897F0();
  v23 = v15 + v21[10];
  *v23 = v7;
  *(v23 + 1) = v24;
  v23[16] = v25;
  v26 = *(v5 + 16);
  if (v26)
  {
    v27 = *(v5 + 32);
  }

  else
  {
    v27 = 0;
  }

  v28 = v15 + v21[11];
  *v28 = v5;
  *(v28 + 1) = v27;
  v28[16] = v26 == 0;
  *(v15 + v21[12]) = v22;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABC98E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954746E657665 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001ABF8D5C0 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x736D616574 && a2 == 0xE500000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1ABF25054();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABC99168(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 0x707954746E657665;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x636F4C7472617473;
      break;
    case 7:
      result = 0x7461636F4C646E65;
      break;
    case 8:
      result = 0x736D616574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC99278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC98E80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC992A0(uint64_t a1)
{
  v2 = sub_1ABD0AE08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC992DC(uint64_t a1)
{
  v2 = sub_1ABD0AE08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSportsGameEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6780, &dword_1ABF50BE0);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v3 = sub_1ABD0AE08();
  sub_1ABA8D27C(&type metadata for CustomGraphSportsGameEvent.CodingKeys, v4, v3);
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  v8 = sub_1ABAA19EC();
  sub_1ABAA6564(v8, v9, v10);
  if (!v0)
  {
    sub_1ABA8B6EC();
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    v11 = sub_1ABAA2D10();
    sub_1ABAA6564(v11, v12, v13);
    v14 = *(v1 + 16);
    sub_1ABD1B178();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v15 = sub_1ABAA2D10();
    sub_1ABAA6564(v15, v16, v17);
    if (v14)
    {
      sub_1ABAA1210();
    }

    else
    {
      sub_1ABAA1210();

      type metadata accessor for CustomGraphSportsGameEvent(0);
      sub_1ABAA4C54();
      sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
      sub_1ABA80C14();
      sub_1ABD0A358(v18);
      v19 = sub_1ABA82E78();
      sub_1ABAA6564(v19, v20, v21);
      sub_1ABAA17C0();
      sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
      sub_1ABD09FB0();
      v22 = sub_1ABAA2D10();
      sub_1ABAA6564(v22, v23, v24);
      sub_1ABD1AF88(0);
      sub_1ABD1AFDC();
      sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
      sub_1ABD0A060();
      v25 = sub_1ABAA2D10();
      sub_1ABAA6564(v25, v26, v27);
      sub_1ABAA2300(252556);
      sub_1ABD1AFD0();

      sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
      sub_1ABD0A110();
      sub_1ABAA1328();
      sub_1ABD1AFA0();

      sub_1ABAA2300(12);
      sub_1ABD1AFC4();

      v28 = sub_1ABD1ABF4();
      sub_1ABD1AF60(v28, v29, v30);
      sub_1ABD1AFA0();

      sub_1ABD1AF88(252562);
      sub_1ABD1AFB8();
      sub_1ABAD219C(&qword_1EB4D67A0, &unk_1ABF50BF0);
      sub_1ABD0AE5C();
      v31 = sub_1ABAA2D10();
      sub_1ABAA6564(v31, v32, v33);
    }
  }

  v34 = sub_1ABA89DE4();
  v35(v34);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphSportsGameEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA8D4BC();
  v3 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA8176C();
  sub_1ABAD219C(&qword_1EB4D67B8, &qword_1ABF50C00);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9F7AC();
  v6 = type metadata accessor for CustomGraphSportsGameEvent(0);
  v7 = sub_1ABAB6924(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C21C();
  v9 = v8;
  v10 = v0[3];
  v11 = v0[4];
  v12 = sub_1ABA7ABE4();
  sub_1ABA88DCC(v12, v13);
  sub_1ABD0AE08();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (!v1)
  {
    v14 = sub_1ABA7ABE4();
    sub_1ABAD219C(v14, v15);
    sub_1ABAAFAF4();
    sub_1ABA8F54C();
    sub_1ABD1044C(v16);
    v17 = sub_1ABD1AC44();
    sub_1ABD1BBF8(v17, v18);
    *v9 = v34;
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABA8B6EC();
    sub_1ABD0A1FC();
    sub_1ABA8B4F0();
    sub_1ABD1C1C4(v19, v20);
    sub_1ABAAFAD4();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD1B178();
    sub_1ABD0A2D4();
    sub_1ABA8B4F0();
    sub_1ABD1B4DC(v21, v22);
    sub_1ABD1B11C();
    sub_1ABA7F460();
    sub_1ABD0A358(v23);
    sub_1ABD1B110();
    sub_1ABF24E64();
    sub_1ABA94EB8();
    sub_1ABAD219C(&qword_1EB4D65F8, &dword_1ABF50B60);
    sub_1ABA8B908();
    sub_1ABD0A4B8();
    sub_1ABAA1F98();
    sub_1ABF24E64();
    sub_1ABA897A8();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD1AFDC();
    sub_1ABD0A568();
    sub_1ABA8B4F0();
    sub_1ABD1B4BC(v24, v25);
    sub_1ABD1B7DC();
    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD1AFD0();
    sub_1ABD0A618();
    sub_1ABA96FDC();
    sub_1ABD1B030();
    sub_1ABF24E64();
    sub_1ABAA314C();
    sub_1ABAB65FC(7);
    sub_1ABD1B030();
    sub_1ABF24E64();
    sub_1ABD1AF54();
    sub_1ABA8A644(v26);
    sub_1ABAD219C(&qword_1EB4D67A0, &unk_1ABF50BF0);
    sub_1ABD1AFB8();
    sub_1ABD0AF0C();
    sub_1ABA8B4F0();
    sub_1ABD1B4DC(v27, v28);
    v29 = sub_1ABAB3C1C();
    v30(v29);
    *(v9 + *(v33 + 48)) = v34;
    sub_1ABD0AD58();
    sub_1ABA84B54(v0);
    v31 = sub_1ABA7D000();
    sub_1ABD0ADB0(v31, v32);
    goto LABEL_12;
  }

  sub_1ABAA0EF8();
  sub_1ABA84B54(v0);
  if (v3)
  {
    sub_1ABAB480C(v9 + *(v33 + 28), &qword_1EB4D5F30, &unk_1ABF50B00);
    if ((v2 & 1) == 0)
    {
LABEL_10:
      if (v11)
      {
LABEL_11:

        if ((v10 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  if (v11)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v10)
  {
LABEL_7:
  }

LABEL_12:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphTransportationActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABC99D54@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v116 = a1;
  v122 = a3;
  v114 = a4;
  v115 = a2;
  v4 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v124 = &v100 - v5;
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v8 = v6;
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v110 = (v6 + 16);
  v9 = swift_allocObject();
  v121 = v9;
  *(v9 + 16) = v7;
  v111 = v9 + 16;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v104 = (v10 + 16);
  v11 = swift_allocObject();
  v120 = v11;
  *(v11 + 16) = v7;
  v105 = (v11 + 16);
  v12 = swift_allocObject();
  v123 = v12;
  *(v12 + 16) = v7;
  v106 = v12 + 16;
  v13 = swift_allocObject();
  v129 = v13;
  *(v13 + 16) = v7;
  v107 = v13 + 16;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  v112 = (v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  v108 = v15 + 16;
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  v109 = v16 + 16;
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  v113 = v17 + 16;
  v18 = swift_allocObject();
  v20 = v121;
  v19 = v122;
  v18[2] = v8;
  v18[3] = v19;
  v18[4] = v20;
  v18[5] = v10;
  v21 = v123;
  v18[6] = v120;
  v18[7] = v21;
  v18[8] = v129;
  v18[9] = v14;
  v18[10] = v15;
  v18[11] = v16;
  v18[12] = v17;
  v119 = v8;

  v118 = v10;

  v22 = v117;
  v116(&v127, sub_1ABC9AFB8, 0, sub_1ABD1A004, v18);
  if (v22)
  {

LABEL_29:
  }

  v102 = v14;
  v103 = v15;
  v115 = v16;
  v116 = v17;

  v101 = v127;
  v23 = v112;
  swift_beginAccess();
  v24 = *v23;
  v25 = *(v24 + 16);
  v117 = 0;
  if (v25)
  {

    v26 = MEMORY[0x1E69E7CC0];
    v27 = 32;
    do
    {
      EntityClass.init(intValue:)(*(v24 + v27 + 7), &v127);
      if (v128)
      {
        ActivityEventType.init(activityTypeEntityClass:)(&v127, v126);
        v28 = v126[0];
        if (v126[0] != 25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABADADEC(0, *(v26 + 16) + 1, 1, v26);
            v26 = v31;
          }

          v30 = *(v26 + 16);
          v29 = *(v26 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1ABADADEC(v29 > 1, v30 + 1, 1, v26);
            v26 = v32;
          }

          *(v26 + 16) = v30 + 1;
          *(v26 + v30 + 32) = v28;
        }
      }

      v27 += 8;
      --v25;
    }

    while (v25);

    v33 = v117;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
    v33 = 0;
  }

  v34 = v113;
  swift_beginAccess();
  v41 = *v34;
  v42 = *(*v34 + 16);
  v43 = v124;
  if (v42)
  {

    v44 = MEMORY[0x1E69E7CC0];
    v45 = 32;
    do
    {
      EntityClass.init(intValue:)(*(v41 + v45 + 7), &v127);
      if (v128)
      {
        TransportationActivityEventType.init(modeOfTransportationEntityClass:)(&v127, v125);
        v46 = v125[0];
        if (v125[0] != 8)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABADB354(0, *(v44 + 16) + 1, 1, v44);
            v44 = v49;
          }

          v48 = *(v44 + 16);
          v47 = *(v44 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1ABADB354(v47 > 1, v48 + 1, 1, v44);
            v44 = v50;
          }

          *(v44 + 16) = v48 + 1;
          *(v44 + v48 + 32) = v46;
          v43 = v124;
        }
      }

      v45 += 8;
      --v42;
    }

    while (v42);

    v33 = v117;
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABC4AA3C(v101, v35, v36, v37, v38, v39, v40);
  v51 = v114;
  v52 = v110;
  if (v33)
  {

    goto LABEL_29;
  }

  v117 = 0;
  *v114 = v127;
  swift_beginAccess();
  v54 = *v52;
  v55 = sub_1ABB2B834(*v52);
  v51[1] = v54;
  v51[2] = v55;
  v51[3] = v56;
  swift_beginAccess();
  v57 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7B9B4(v43, 1, 1, v57);
  v58 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
  v59 = v58[6];

  sub_1ABC8B318(v60, v43, (v51 + v59));
  v61 = v104;
  swift_beginAccess();
  v62 = v58[7];
  v124 = *v61;
  *(v51 + v62) = v124;
  v63 = v105;
  swift_beginAccess();
  v64 = v58;
  v65 = v58[8];
  v111 = *v63;
  *(v51 + v65) = v111;
  v66 = v106;
  swift_beginAccess();
  v67 = *v66;
  v68 = *(*v66 + 16);
  if (v68)
  {
    v69 = v67[4];
  }

  else
  {
    v69 = 0;
  }

  v70 = v109;
  v71 = v107;
  v72 = v51 + v58[9];
  v110 = v67;
  *v72 = v67;
  *(v72 + 1) = v69;
  v72[16] = v68 == 0;
  swift_beginAccess();
  v73 = *v71;
  v74 = *(*v71 + 16);
  if (v74)
  {
    v75 = *(v73 + 32);
  }

  else
  {
    v75 = 0;
  }

  v76 = v108;
  v77 = v51 + v64[10];
  *v77 = v73;
  *(v77 + 1) = v75;
  v77[16] = v74 == 0;
  v78 = *v112;
  v79 = *(*v112 + 16);
  if (v79)
  {
    v80 = *(v78 + 32);
  }

  else
  {
    v80 = 0;
  }

  v81 = v51 + v64[11];
  *v81 = v78;
  *(v81 + 1) = v80;
  v81[16] = v79 == 0;
  if (*(v26 + 16))
  {
    v82 = *(v26 + 32);
  }

  else
  {
    v82 = 25;
  }

  v83 = v51 + v64[12];
  *v83 = v26;
  v83[8] = v82;
  v84 = v76;
  swift_beginAccess();
  v85 = *v84;
  v86 = *(v85 + 16);
  if (v86)
  {
    v87 = *(v85 + 32);
  }

  else
  {
    v87 = 0;
  }

  v88 = v51 + v64[13];
  *v88 = v85;
  *(v88 + 1) = v87;
  v88[16] = v86 == 0;
  swift_beginAccess();
  v89 = *v70;
  v90 = *(*v70 + 16);
  if (v90)
  {
    v91 = *(v89 + 32);
  }

  else
  {
    v91 = 0;
  }

  v92 = v113;
  v93 = v51 + v64[14];
  *v93 = v89;
  *(v93 + 1) = v91;
  v93[16] = v90 == 0;
  v94 = *v92;
  v95 = *(*v92 + 16);
  if (v95)
  {
    v96 = *(v94 + 32);
  }

  else
  {
    v96 = 0;
  }

  v97 = v51 + v64[15];
  *v97 = v94;
  *(v97 + 1) = v96;
  v97[16] = v95 == 0;
  if (*(v44 + 16))
  {
    v98 = *(v44 + 32);
  }

  else
  {
    v98 = 8;
  }

  v99 = v114 + v64[16];
  *v99 = v44;
  v99[8] = v98;
}

void sub_1ABC9A6F0()
{
  sub_1ABA7BCA8();
  v125 = v2;
  v126 = v3;
  v129 = v4;
  v124 = v5;
  v121 = v6;
  v7 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v7);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7FBE0();
  v131 = v9;
  sub_1ABA7D028();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  v12 = v10;
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v120 = v10 + 16;
  sub_1ABA7D028();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_1ABA7D028();
  v128 = swift_allocObject();
  sub_1ABAA565C(v128);
  v115 = v14;
  sub_1ABA7D028();
  v127 = swift_allocObject();
  sub_1ABAA565C(v127);
  v119 = v15;
  sub_1ABA7D028();
  v142 = swift_allocObject();
  sub_1ABAA565C(v142);
  sub_1ABA7D028();
  v130 = swift_allocObject();
  sub_1ABAA565C(v130);
  v116 = v16;
  sub_1ABA7D028();
  v17 = swift_allocObject();
  sub_1ABAA565C(v17);
  v122 = v18;
  sub_1ABA7D028();
  swift_allocObject();
  sub_1ABA88AB0();
  *(v19 + 16) = v11;
  v117 = (v19 + 16);
  sub_1ABA7D028();
  v20 = swift_allocObject();
  sub_1ABAA565C(v20);
  v118 = v21;
  sub_1ABA7D028();
  v22 = swift_allocObject();
  sub_1ABAA565C(v22);
  v123 = v23;
  v24 = swift_allocObject();
  v24[2] = v125;
  v24[3] = v126;
  v24[4] = v12;
  v24[5] = v129;
  v24[6] = v13;
  v24[7] = v128;
  v24[8] = v127;
  v24[9] = v142;
  v24[10] = v130;
  v24[11] = v17;
  v24[12] = v1;
  v24[13] = v20;
  v24[14] = v22;

  sub_1ABD1B700();
  v124();
  if (v0)
  {
  }

  else
  {

    sub_1ABD1B8F4();
    v27 = sub_1ABA8A740(v25, v26);
    v28 = *v122;
    v29 = *(*v122 + 16);
    if (v29)
    {

      v30 = MEMORY[0x1E69E7CC0];
      v31 = 32;
      v32 = v131;
      do
      {
        sub_1ABD1B924(v28 + v31);
        if (v141)
        {
          sub_1ABAA0AB0(v141);
          sub_1ABD1B9E4();
          v33 = v139[0];
          if (v139[0] != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_1ABA7BEF0();
              sub_1ABADADEC(v37, v38, v39, v30);
              v30 = v40;
            }

            v35 = *(v30 + 16);
            v34 = *(v30 + 24);
            v36 = v30;
            if (v35 >= v34 >> 1)
            {
              v41 = sub_1ABA7BBEC(v34);
              sub_1ABADADEC(v41, v35 + 1, 1, v42);
              v36 = v43;
            }

            *(v36 + 16) = v35 + 1;
            v30 = v36;
            *(v36 + v35 + 32) = v33;
          }
        }

        v31 += 8;
        --v29;
      }

      while (v29);
      v44 = v119;
      v114 = v30;
    }

    else
    {
      v114 = MEMORY[0x1E69E7CC0];
      v32 = v131;
      v44 = v119;
    }

    sub_1ABA8A740(v27, v139);
    v51 = *v123;
    v52 = *(*v123 + 16);
    if (v52)
    {

      v53 = MEMORY[0x1E69E7CC0];
      v54 = 32;
      do
      {
        sub_1ABD1B924(v51 + v54);
        if (v141)
        {
          sub_1ABAA0AB0(v141);
          TransportationActivityEventType.init(modeOfTransportationEntityClass:)(&v140, v138);
          v55 = v138[0];
          if (v138[0] != 8)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_1ABA8A534();
              sub_1ABADB354(v58, v59, v60, v61);
              v53 = v62;
            }

            v57 = *(v53 + 16);
            v56 = *(v53 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_1ABA7BBEC(v56);
              sub_1ABA9ECC4();
              sub_1ABADB354(v63, v64, v65, v66);
              v53 = v67;
            }

            *(v53 + 16) = v57 + 1;
            *(v53 + v57 + 32) = v55;
            v32 = v131;
          }
        }

        v54 += 8;
        --v52;
      }

      while (v52);
      v44 = v119;
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABC4AA3C(v113, v45, v46, v47, v48, v49, v50);
    *v121 = v140;
    sub_1ABD1B058(v130, &v140);
    v68 = sub_1ABD1C284();
    v121[1] = v120;
    v121[2] = v68;
    v121[3] = v69;
    sub_1ABD1B0E8(v68, v138);
    sub_1ABD1AF20();
    v73 = sub_1ABA9DFB8(v32, v70, v71, v72);
    v74 = type metadata accessor for CustomGraphTransportationActivityEvent(v73);
    v75 = v74[6];

    v77 = sub_1ABC8B318(v76, v32, (v121 + v75));
    v78 = sub_1ABD1B058(v77, &v137);
    *(v121 + v74[7]) = *v115;
    v79 = sub_1ABAA9068(v78, &v136);
    *(v121 + v74[8]) = *v44;
    sub_1ABD1B1F4(v79, &v135);
    sub_1ABAAFB28();
    v80 = v121 + v74[9];
    *v80 = v82;
    *(v80 + 1) = v81;
    v80[16] = v83;
    sub_1ABD1B080(v84, &v134);
    v85 = *v116;
    sub_1ABAAFB28();
    v86 = v121 + v74[10];
    *v86 = v85;
    *(v86 + 1) = v87;
    v86[16] = v88;
    v90 = *v89;
    sub_1ABAAFB28();
    v91 = v121 + v74[11];
    *v91 = v90;
    *(v91 + 1) = v92;
    v91[16] = v93;
    if (*(v114 + 16))
    {
      v94 = *(v114 + 32);
    }

    else
    {
      v94 = 25;
    }

    sub_1ABD1BA38(v94);
    sub_1ABD1B058(v95, &v133);
    v96 = *v117;
    sub_1ABAAFB28();
    v97 = v121 + v74[13];
    *v97 = v96;
    *(v97 + 1) = v98;
    v97[16] = v99;
    sub_1ABD1B0E8(v100, &v132);
    v101 = *v118;
    sub_1ABAAFB28();
    v102 = v121 + v74[14];
    *v102 = v101;
    *(v102 + 1) = v103;
    v102[16] = v104;
    v106 = *v105;
    sub_1ABAAFB28();
    v107 = (v121 + v74[15]);
    *v107 = v106;
    v107[1] = v108;
    sub_1ABA889F8(v109);
    if (v110)
    {
      v111 = *(v53 + 32);
    }

    else
    {
      v111 = 8;
    }

    v112 = v121 + v74[16];
    *v112 = v53;
    v112[8] = v111;
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}