uint64_t sub_22846C638(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

id HKHealthStore.sourceProfile.getter()
{
  v1 = [v0 profileIdentifier];

  return v1;
}

uint64_t sub_22846C6C0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22855BD9C();
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D800(0, &qword_280DEE688, sub_22845D654, sub_22845D6A8, &type metadata for FeedItemTimeScope);
  v5 = [a1 data];
  v6 = sub_22855C09C();
  v8 = v7;

  sub_22846D650();
  sub_22855BD7C();
  sub_22842B38C(v6, v8);

  if (v2)
  {
    sub_22846D1CC();
    swift_allocError();
    *v10 = v2;
    return swift_willThrow();
  }

  else
  {
    *a2 = v11;
  }

  return result;
}

uint64_t sub_22846C810@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22855BD9C();
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D800(0, &qword_280DEE9A0, sub_22845DE28, sub_22845DE7C, &type metadata for FeedItemProminence);
  v5 = [a1 data];
  v6 = sub_22855C09C();
  v8 = v7;

  sub_22846D6E0();
  sub_22855BD7C();
  sub_22842B38C(v6, v8);

  if (v2)
  {
    sub_22846D1CC();
    swift_allocError();
    *v10 = v2;
    return swift_willThrow();
  }

  else
  {
    *a2 = v11;
  }

  return result;
}

uint64_t sub_22846C960@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22855BD9C();
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D800(0, &qword_280DEE678, sub_22845D9E4, sub_22845DA38, &type metadata for DataVisualizationKind);
  v5 = [a1 data];
  v6 = sub_22855C09C();
  v8 = v7;

  sub_22846D87C();
  sub_22855BD7C();
  sub_22842B38C(v6, v8);

  if (v2)
  {
    sub_22846D1CC();
    swift_allocError();
    *v10 = v2;
    return swift_willThrow();
  }

  else
  {
    *a2 = v11;
  }

  return result;
}

uint64_t static RelevanceFeatureTagDecodable<>.makeFromFeedItemTag(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a4;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  v15 = v17[1];
  result = (*(a3 + 24))(a1, a2, a3);
  if (!v15)
  {
    (*(v9 + 16))(v12, v14, AssociatedTypeWitness);
    (*(v7 + 32))(v12, a2, v7);
    return (*(v9 + 8))(v14, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_22846CC40(void *a1)
{
  sub_22855BD9C();
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D90C(0, &qword_280DEE668, MEMORY[0x277D837D0], MEMORY[0x277D83808], MEMORY[0x277D837D8]);
  v3 = [a1 data];
  v4 = sub_22855C09C();
  v6 = v5;

  sub_22846D5D8();
  sub_22855BD7C();
  sub_22842B38C(v4, v6);

  if (!v1)
  {
    return v9;
  }

  sub_22846D1CC();
  swift_allocError();
  *v7 = v1;
  return swift_willThrow();
}

uint64_t sub_22846CD70(void *a1)
{
  sub_22855BD9C();
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D800(0, &qword_27D83F790, sub_22845D8AC, sub_22845D900, &type metadata for DailyRoutineKind);
  v3 = [a1 data];
  v4 = sub_22855C09C();
  v6 = v5;

  sub_22846D770();
  sub_22855BD7C();
  sub_22842B38C(v4, v6);

  if (!v1)
  {
    return v9;
  }

  sub_22846D1CC();
  swift_allocError();
  *v7 = v1;
  return swift_willThrow();
}

uint64_t sub_22846CEB8(void *a1)
{
  sub_22855BD9C();
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D90C(0, &qword_280DEE658, MEMORY[0x277D839F8], MEMORY[0x277D83A30], MEMORY[0x277D83A08]);
  v3 = [a1 data];
  v4 = sub_22855C09C();
  v6 = v5;

  sub_22846D960();
  sub_22855BD7C();
  sub_22842B38C(v4, v6);

  if (v1)
  {
    sub_22846D1CC();
    swift_allocError();
    *v8 = v1;
    return swift_willThrow();
  }

  return result;
}

uint64_t static RelevanceFeatureTagDecodable<>.value(from:)@<X0>(void *a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ValueJSONWrapper(0, AssociatedTypeWitness, a4, a5);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  sub_22855BD9C();
  swift_allocObject();
  sub_22855BD8C();
  v15 = [a1 data];
  v16 = sub_22855C09C();
  v18 = v17;

  swift_getWitnessTable();
  sub_22855BD7C();
  sub_22842B38C(v16, v18);

  if (!v6)
  {
    return (*(*(AssociatedTypeWitness - 8) + 32))(a6, v14, AssociatedTypeWitness);
  }

  sub_22846D1CC();
  swift_allocError();
  *v19 = v6;
  return swift_willThrow();
}

unint64_t sub_22846D1CC()
{
  result = qword_27D83F880;
  if (!qword_27D83F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F880);
  }

  return result;
}

uint64_t FeedItem.get<A>(featureTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = *(a3 + 8);
  v20 = a1;
  v21 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *(a3 + 16);
  v16 = v4;
  v15(a2, a3);
  v24 = v16;
  v17 = swift_readAtKeyPath();
  v18 = *(v9 + 16);
  v18(v14);
  v17(v23, 0);

  (v18)(v12, v14, AssociatedTypeWitness);
  (*(v21 + 32))(v12, a2);
  return (*(v9 + 8))(v14, AssociatedTypeWitness);
}

unint64_t sub_22846D470(uint64_t a1)
{
  v1 = 0xD00000000000002ELL;
  if (a1)
  {
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000063, 0x800000022856FE40);
    sub_228418D44();
    sub_22855DDDC();
    return 0;
  }

  return v1;
}

uint64_t sub_22846D54C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22846CD70(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_22846D5AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22846CC40(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_22846D5D8()
{
  result = qword_280DEBDA0;
  if (!qword_280DEBDA0)
  {
    sub_22846D90C(255, &qword_280DEE668, MEMORY[0x277D837D0], MEMORY[0x277D83808], MEMORY[0x277D837D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBDA0);
  }

  return result;
}

unint64_t sub_22846D650()
{
  result = qword_280DEBDB8;
  if (!qword_280DEBDB8)
  {
    sub_22846D800(255, &qword_280DEE688, sub_22845D654, sub_22845D6A8, &type metadata for FeedItemTimeScope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBDB8);
  }

  return result;
}

unint64_t sub_22846D6E0()
{
  result = qword_280DEBDB0;
  if (!qword_280DEBDB0)
  {
    sub_22846D800(255, &qword_280DEE9A0, sub_22845DE28, sub_22845DE7C, &type metadata for FeedItemProminence);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBDB0);
  }

  return result;
}

unint64_t sub_22846D770()
{
  result = qword_27D83F888;
  if (!qword_27D83F888)
  {
    sub_22846D800(255, &qword_27D83F790, sub_22845D8AC, sub_22845D900, &type metadata for DailyRoutineKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F888);
  }

  return result;
}

void sub_22846D800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a4();
    v11 = type metadata accessor for ValueJSONWrapper(a1, a5, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_22846D87C()
{
  result = qword_280DEBDA8;
  if (!qword_280DEBDA8)
  {
    sub_22846D800(255, &qword_280DEE678, sub_22845D9E4, sub_22845DA38, &type metadata for DataVisualizationKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBDA8);
  }

  return result;
}

void sub_22846D90C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = type metadata accessor for ValueJSONWrapper(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_22846D960()
{
  result = qword_280DEBD98;
  if (!qword_280DEBD98)
  {
    sub_22846D90C(255, &qword_280DEE658, MEMORY[0x277D839F8], MEMORY[0x277D83A30], MEMORY[0x277D83A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBD98);
  }

  return result;
}

uint64_t static InputSignalSet.LookupKey.summarySharing.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for SummarySharingInputSignal(0);
  return sub_22855C61C();
}

uint64_t type metadata accessor for SummarySharingInputSignal(uint64_t a1)
{
  result = qword_280DEB298;
  if (!qword_280DEB298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22846DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];
  [v5 addObserver_];
  result = sub_2283EF310(0, &qword_280DE9268, 0x277CCDA78);
  a3[3] = result;
  a3[4] = &protocol witness table for HKSummarySharingEntryStore;
  *a3 = v5;
  return result;
}

void *SummarySharingInputSignal.__allocating_init(context:observer:sourceFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ObjectType = swift_getObjectType();

  return sub_22846EF58(a1, a3, a4, a5, a6, v12, ObjectType, a2);
}

void *SummarySharingInputSignal.init(context:observer:sourceFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_22846EF58(a1, a3, a4, a5, a6, v6, ObjectType, a2);
}

uint64_t static SummarySharingInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t SummarySharingInputSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummarySharingInputSignal.beginObservation(from:configurations:)(uint64_t a1, uint64_t a2)
{
  sub_22846F028(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *(v2 + 48);
  os_unfair_lock_lock((v8 + 72));
  sub_22846F2A4((v8 + 16));
  os_unfair_lock_unlock((v8 + 72));
  os_unfair_lock_lock((v8 + 72));
  sub_22846F2C0(v8 + 16, v15);
  os_unfair_lock_unlock((v8 + 72));
  v9 = v16;
  v10 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_22846F2DC(a1, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  sub_22846F340(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = *(v10 + 16);

  v13(sub_22846F3A4, v12, v9, v10);

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

Swift::Void __swiftcall SummarySharingInputSignal.stopObservation()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  sub_22846FA44((v1 + 16));

  os_unfair_lock_unlock((v1 + 72));
}

uint64_t sub_22846DFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(a2);
  sub_22846F528(a1);
  sub_2283F9B10(a3, a1);
  v5 = swift_allocObject();
  swift_weakInit();

  *(a1 + 40) = sub_22846F9DC;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_22846E088(uint64_t a1, uint64_t a2)
{
  v2 = sub_22855C85C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22846F080(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15[1] = *(result + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer + 8);
    v12 = result;
    swift_getObjectType();
    (*(v3 + 16))(v5, v12 + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier, v2);

    v14 = sub_228429C0C(v13);

    v16 = v14;
    sub_22846F178(0);
    sub_22846F208(&qword_280DE9538, sub_22846F178, MEMORY[0x277D11CE0]);
    sub_22846F208(&qword_280DE9530, sub_22846F178, MEMORY[0x277D83B60]);
    sub_22846F250(&qword_280DE9328, &protocol conformance descriptor for HKSummarySharingEntry);
    sub_22855C8DC();
    v16 = v12;
    type metadata accessor for SummarySharingInputSignal(0);
    sub_22846F208(&qword_280DEB2B0, type metadata accessor for SummarySharingInputSignal, &protocol conformance descriptor for SummarySharingInputSignal);
    sub_22855C78C();
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_22846E37C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22846F028(0);
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855CABC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  if (a1)
  {
    swift_getObjectType();
    sub_22855C59C();
    v19 = sub_22855CA8C();
    v20 = sub_22855D6AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2283ED000, v19, v20, "Started observing summary sharing entry store.", v21, 2u);
      MEMORY[0x22AABAD40](v21, -1, -1);
    }

    return (*(v13 + 8))(v18, v12);
  }

  else
  {
    v44 = a4;
    if (!a2 || (v48 = a2, v23 = a2, sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]), sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8), (swift_dynamicCast() & 1) == 0) || (v24 = v47, v25 = [v47 hk_isDatabaseAccessibilityError], v24, (v25 & 1) == 0))
    {
      swift_getObjectType();
      sub_22855C59C();
      v26 = a2;
      v27 = sub_22855CA8C();
      v28 = sub_22855D68C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v43 = a5;
        v30 = v29;
        v31 = swift_slowAlloc();
        v47 = a2;
        v48 = v31;
        *v30 = 136315138;
        v32 = a2;
        sub_22846F4D0(0, &qword_280DE8EC0, &qword_280DECFE0, MEMORY[0x277D84948]);
        v33 = sub_22855D1BC();
        v35 = sub_2283F8938(v33, v34, &v48);
        v42 = v12;
        v36 = v35;

        *(v30 + 4) = v36;
        _os_log_impl(&dword_2283ED000, v27, v28, "Failed to perform initial fetch of sharing entries (%s); retrying.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x22AABAD40](v31, -1, -1);
        v37 = v30;
        a5 = v43;
        MEMORY[0x22AABAD40](v37, -1, -1);

        (*(v13 + 8))(v16, v42);
      }

      else
      {

        (*(v13 + 8))(v16, v12);
      }
    }

    if (qword_27D83F018 != -1)
    {
      swift_once();
    }

    v38 = v46;
    sub_22846F2DC(v44, v46);
    v39 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = a3;
    sub_22846F340(v38, v40 + v39);
    *(v40 + ((v11 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

    sub_228506C84(sub_22846F94C, v40);
  }
}

uint64_t sub_22846E824(void *a1, uint64_t a2)
{
  if (a1[3])
  {
    sub_2283F9B10(a1, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 24))(a2, v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  a1[5] = nullsub_1;
  a1[6] = 0;
  return result;
}

Swift::Void __swiftcall SummarySharingInputSignal.sharingEntryStoreDidUpdate()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  sub_22846F454(v1 + 16, &v7);
  if (v8)
  {
    sub_2283FAB3C(&v7, v9);
    v3 = *(v1 + 56);
    v2 = *(v1 + 64);
    sub_2283FAB3C(v9, &v7);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    sub_2283FAB3C(&v7, v4 + 32);

    v5 = sub_22846F59C;
  }

  else
  {
    sub_22846F528(&v7);
    v5 = nullsub_1;
  }

  v6 = v5;
  os_unfair_lock_unlock((v1 + 72));
  v6();
}

uint64_t sub_22846E9BC(void (*a1)(void), uint64_t a2, void *a3)
{
  v4 = a3[3];
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v4);
  (*(v5 + 8))(v4, v5);
  a1();
}

char *SummarySharingInputSignal.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier;
  v2 = sub_22855C85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SummarySharingInputSignal.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier;
  v2 = sub_22855C85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22846EBCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier;
  v5 = sub_22855C85C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_22846ECA4()
{
  v1 = *(*v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  sub_22846FA44((v1 + 16));

  os_unfair_lock_unlock((v1 + 72));
}

uint64_t sub_22846ED00(uint64_t a1)
{
  v2 = sub_22846F208(&qword_280DEB2B0, type metadata accessor for SummarySharingInputSignal, &protocol conformance descriptor for SummarySharingInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

uint64_t sub_22846ED6C()
{
  v1 = [*v0 sharingEntries];
  sub_2283EF310(0, &qword_280DE9320, 0x277CCDA70);
  v2 = sub_22855D3AC();

  return v2;
}

uint64_t sub_22846EDD4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2284A72DC;
  v6[3] = &block_descriptor_6;
  v4 = _Block_copy(v6);

  [v3 fetchSharingEntriesWithCompletion_];
  _Block_release(v4);
}

void *sub_22846EE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = swift_allocObject();

  return sub_22846EF58(a1, a2, a3, sub_22846F81C, v13, v14, a6, a7);
}

void *sub_22846EF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_22846F9E4(0);
  v15 = swift_allocObject();
  *(v15 + 72) = 0;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v15 + 56) = nullsub_1;
  *(v15 + 64) = 0;
  a6[6] = v15;
  sub_22855C84C();
  a6[2] = a4;
  a6[3] = a5;
  a6[4] = a1;
  a6[5] = a8;
  v16 = (a6 + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer);
  *v16 = a2;
  v16[1] = a3;
  return a6;
}

void sub_22846F028(uint64_t a1)
{
  if (!qword_280DE9E60)
  {
    sub_22846F080(255);
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9E60);
    }
  }
}

void sub_22846F080(uint64_t a1)
{
  if (!qword_280DE9E68)
  {
    sub_22846F178(255);
    sub_22846F208(&qword_280DE9538, sub_22846F178, MEMORY[0x277D11CE0]);
    sub_22846F208(&qword_280DE9530, sub_22846F178, MEMORY[0x277D83B60]);
    sub_22846F250(&qword_280DE9328, &protocol conformance descriptor for HKSummarySharingEntry);
    v1 = sub_22855C8FC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9E68);
    }
  }
}

void sub_22846F178(uint64_t a1)
{
  if (!qword_280DE9540)
  {
    sub_2283EF310(255, &qword_280DE9320, 0x277CCDA70);
    sub_22846F250(&qword_280DE9318, MEMORY[0x277D85378]);
    v1 = sub_22855D57C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9540);
    }
  }
}

uint64_t sub_22846F208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22846F250(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, &qword_280DE9320, 0x277CCDA70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22846F2DC(uint64_t a1, uint64_t a2)
{
  sub_22846F028(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22846F340(uint64_t a1, uint64_t a2)
{
  sub_22846F028(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22846F3A4(char a1, void *a2)
{
  sub_22846F028(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v2 + 16);

  return sub_22846E37C(a1, a2, v9, v2 + v7, v8);
}

uint64_t sub_22846F454(uint64_t a1, uint64_t a2)
{
  sub_22846F4D0(0, &qword_280DEB2B8, &qword_280DEB2C0, &protocol descriptor for SummarySharingEntrySource);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22846F4D0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2283F9B94(255, a3, a4);
    v5 = sub_22855DA2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22846F528(uint64_t a1)
{
  sub_22846F4D0(0, &qword_280DEB2B8, &qword_280DEB2C0, &protocol descriptor for SummarySharingEntrySource);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22846F67C(uint64_t a1)
{
  result = sub_22855C85C();
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

uint64_t get_enum_tag_for_layout_string_14HealthPlatform25SummarySharingEntrySource_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22846F778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22846F7C0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t objectdestroyTm_1()
{
  sub_22846F028(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  sub_22846F080(0);
  v6 = v5;
  v7 = *(v5 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v5))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22846F94C()
{
  sub_22846F028(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  return SummarySharingInputSignal.beginObservation(from:configurations:)(v0 + v2, *(v0 + ((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_22846F9E4(uint64_t a1)
{
  if (!qword_280DE9158)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9158);
    }
  }
}

void sub_22846FA5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_228476B98(0, &qword_280DEE7D0, MEMORY[0x277D837D0]);
  v5 = sub_22855DA1C();
  v6 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v5 == v6)
  {

    v9 = *(v3 + 16);
    v8 = sub_22855D17C();
    [v9 setURL:0 forKey:v8];
  }

  else
  {
    v7 = *(v3 + 16);
    if (a2)
    {
      a2 = sub_22855E19C();
    }

    v8 = sub_22855D17C();
    [v7 setObject:a2 forKey:v8];
    swift_unknownObjectRelease();
  }
}

void sub_22846FB78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_228476CA8(0, &qword_27D83F8A8, &qword_280DEE7D0, MEMORY[0x277D837D0], sub_228476B98);
  v6 = sub_22855DA1C();
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v6 == v7)
  {
    sub_228476D04(a1, a2);
    v10 = *(v3 + 16);
    v11 = sub_22855D17C();
    [v10 setURL:0 forKey:v11];
  }

  else
  {
    v8 = *(v3 + 16);
    if (a2 == 1)
    {
      v9 = 0;
    }

    else
    {
      sub_228476B98(0, &qword_280DEE7D0, MEMORY[0x277D837D0]);
      v9 = sub_22855E19C();
    }

    v11 = sub_22855D17C();
    [v8 setObject:v9 forKey:v11];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_22846FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2283FA3A0(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_228476E70(a3, v25 - v10);
  v12 = sub_22855D4EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_228476F04(v11);
  }

  else
  {
    sub_22855D4DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22855D49C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22855D1DC() + 32;
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

      sub_228476F04(a3);

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

  sub_228476F04(a3);
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

uint64_t OpenTransactionBuilderManager.MakeTransactionError.hashValue.getter()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t sub_228470048()
{
  if (qword_280DED1C0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DED1C8;
  type metadata accessor for OpenTransactionBuilderManager();
  v1 = swift_allocObject();
  result = OpenTransactionBuilderManager.init(userDefaults:)(v0);
  qword_280DEAE60 = v1;
  return result;
}

uint64_t OpenTransactionBuilderManager.__allocating_init(userDefaults:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OpenTransactionBuilderManager.init(userDefaults:)(a1);
  return v2;
}

uint64_t static OpenTransactionBuilderManager.shared.getter()
{
  if (qword_280DEAE58 != -1)
  {
    swift_once();
  }
}

unint64_t sub_22847015C(uint64_t a1, char a2)
{
  v4 = sub_22855C1DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = 0x2864657461657263;
    v16 = 0xE800000000000000;
    v8 = [*(a1 + 16) transactionUUID];
    sub_22855C1BC();

    v9 = sub_22855C17C();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    MEMORY[0x22AAB92A0](v9, v11);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_22855DC6C();

    v15 = 0xD00000000000001CLL;
    v16 = 0x8000000228570040;
    v14[1] = *(a1 + 16);
    v12 = sub_22855E11C();
    MEMORY[0x22AAB92A0](v12);
  }

  MEMORY[0x22AAB92A0](41, 0xE100000000000000);
  return v15;
}

uint64_t OpenTransactionBuilderManager.init(userDefaults:)(uint64_t a1)
{
  v14 = a1;
  v13 = sub_22855D81C();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22855D7BC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22855CFEC();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2284705FC(0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = MEMORY[0x277D84F98];
  *(v1 + 16) = v7;
  v8 = sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v12[1] = "riesNeededDefaultsKey";
  v12[2] = v8;
  sub_22855CFDC();
  v15 = MEMORY[0x277D84F90];
  sub_2283FA0B8(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v9 = MEMORY[0x277D85230];
  sub_2283FA3A0(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283F466C(&qword_280DED240, &qword_280DED250, v9);
  sub_22855DA9C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v13);
  *(v1 + 24) = sub_22855D84C();
  *(v1 + 32) = 0xD000000000000045;
  v10 = v14;
  *(v1 + 40) = 0x800000022856FF30;
  *(v1 + 48) = v10;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  return v1;
}

void sub_2284705FC(uint64_t a1)
{
  if (!qword_280DE9130)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9130);
    }
  }
}

void sub_22847065C(void *a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v56 = *v3;
  sub_2283FA3A0(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_22855CFBC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22855CFEC();
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [a1 profileIdentifier];
  v18 = [v57 type];
  if (v18 == 1 || (v18 = [v57 type], v18 == 3))
  {
    v51 = v12;
    v52 = v10;
    v53 = a1;
    v19 = v3[2];
    MEMORY[0x28223BE20](v18);
    v20 = v56;
    *(&v50 - 4) = v57;
    *(&v50 - 3) = a2;
    *(&v50 - 2) = a3;
    *(&v50 - 1) = v20;
    os_unfair_lock_lock((v19 + 24));
    sub_2284762D8((v19 + 16), &aBlock);
    os_unfair_lock_unlock((v19 + 24));
    v21 = v60;
    if (v60 == 255)
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v26 = sub_22855CABC();
      __swift_project_value_buffer(v26, qword_280DEEC98);
      v27 = sub_22855CA8C();
      v28 = sub_22855D6AC();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v52;
      if (v29)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock = v32;
        *v31 = 136446210;
        v33 = sub_22855E34C();
        v35 = sub_2283F8938(v33, v34, &aBlock);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_2283ED000, v27, v28, "[%{public}s] No in-memory transaction builder found, creating it", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x22AABAD40](v32, -1, -1);
        MEMORY[0x22AABAD40](v31, -1, -1);
      }

      v36 = v53;
      v37 = sub_22855D4EC();
      (*(*(v37 - 8) + 56))(v30, 1, 1, v37);
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v38[4] = v4;
      v38[5] = v36;

      v39 = v36;
      sub_22846FCD4(0, 0, v30, &unk_228562FB8, v38);
    }

    else
    {
      v22 = aBlock;
      if (v60)
      {
        v56 = v3[3];
        v23 = swift_allocObject();
        v23[2] = a2;
        v23[3] = a3;
        v23[4] = v22;
        v63 = sub_2284765FC;
        v64 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v60 = 1107296256;
        v61 = sub_228401F54;
        v62 = &block_descriptor_7;
        v24 = _Block_copy(&aBlock);

        sub_228476630(v22, v21);
        sub_22855CFDC();
        v58 = MEMORY[0x277D84F90];
        sub_2283FA0B8(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v25 = MEMORY[0x277D85198];
        sub_2283FA3A0(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_2283F466C(&qword_280DED260, &qword_280DED270, v25);
        sub_22855DA9C();
        MEMORY[0x22AAB98B0](0, v17, v14, v24);

        _Block_release(v24);
        sub_2284765A8(v22, v21);
        (*(v51 + 8))(v14, v11);
        (*(v54 + 8))(v17, v55);
      }

      else
      {
        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v42 = sub_22855CABC();
        __swift_project_value_buffer(v42, qword_280DEEC98);
        v43 = sub_22855CA8C();
        v44 = sub_22855D6AC();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          aBlock = v46;
          *v45 = 136446210;
          v47 = sub_22855E34C();
          v49 = sub_2283F8938(v47, v48, &aBlock);

          *(v45 + 4) = v49;
          _os_log_impl(&dword_2283ED000, v43, v44, "[%{public}s] Waiting for in-memory transaction builder creation, completion enqueued", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x22AABAD40](v46, -1, -1);
          MEMORY[0x22AABAD40](v45, -1, -1);
        }

        sub_2284765A8(v22, v21);
      }
    }
  }

  else
  {
    sub_228476284();
    v40 = swift_allocError();
    a2(v40, 1);

    v41 = v57;
  }
}

void sub_228470E0C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_2283FB154(a2), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 16 * v13;
    v16 = *v15;
    if (*(v15 + 8))
    {
      *a6 = v16;
      *(a6 + 8) = 1;
    }

    else
    {
      v22 = swift_allocObject();
      v22[2] = a3;
      v22[3] = a4;
      v22[4] = a5;
      sub_2283FA3A0(0, &qword_280DE8ED0, sub_22842BA6C, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_228560580;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_228477298;
      *(v24 + 24) = v22;
      *(inited + 32) = sub_22841C0FC;
      *(inited + 40) = v24;
      sub_22844B978(v16, 0);

      sub_2284A7914(inited);
      swift_bridgeObjectRetain_n();
      v25 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *a1;
      sub_22845B074(v16, 0, v25, isUniquelyReferenced_nonNull_native);

      *a1 = v28;
      *a6 = v16;
      *(a6 + 8) = 0;
    }
  }

  else
  {
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    sub_2283FA3A0(0, &qword_280DE8ED0, sub_22842BA6C, MEMORY[0x277D84560]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_228560580;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_228477100;
    *(v19 + 24) = v17;
    *(v18 + 32) = sub_22841B3C0;
    *(v18 + 40) = v19;

    v20 = a2;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *a1;
    sub_22845B074(v18, 0, v20, v21);

    *a1 = v27;
    *a6 = 0;
    *(a6 + 8) = -1;
  }
}

uint64_t sub_2284710F4(void *a1, char a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v8 = sub_22855CABC();
  __swift_project_value_buffer(v8, qword_280DEEC98);
  sub_228476E50(a1, a2 & 1);
  v9 = sub_22855CA8C();
  v10 = sub_22855D6AC();
  sub_228476E5C(a1, a2 & 1, MEMORY[0x277D85008], MEMORY[0x277D84FF0]);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446466;
    v13 = sub_22855E34C();
    v15 = a3;
    v16 = sub_2283F8938(v13, v14, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    sub_228476E50(a1, a2 & 1);
    sub_228477124(0, &qword_280DE8E98, MEMORY[0x277D84C48]);
    v17 = sub_22855D1BC();
    v19 = sub_2283F8938(v17, v18, &v21);
    a3 = v15;

    *(v11 + 14) = v19;
    _os_log_impl(&dword_2283ED000, v9, v10, "[%{public}s] Enqueued completion notified of result %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v12, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  return a3(a1, a2 & 1);
}

uint64_t sub_228471344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_228468A14;

  return sub_2284713E0(a5);
}

uint64_t sub_2284713E0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  v3 = sub_22855C1DC();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2284714C8, 0, 0);
}

uint64_t sub_2284714C8()
{
  v1 = v0[9];
  v2 = type metadata accessor for HealthStoreHKSharedSummaryTransactionSource();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[5] = v2;
  v0[6] = &protocol witness table for HealthStoreHKSharedSummaryTransactionSource;
  v0[2] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2284715A4;

  return _s14HealthPlatform41DefaultHKSharedSummaryTransactionProviderV09fetchOpenF0So0deF0CSgyYaAA0iF10FetchErrorOYKF((v0 + 7));
}

uint64_t sub_2284715A4(uint64_t a1)
{
  *(*v2 + 128) = a1;

  if (v1)
  {
    v3 = sub_228471B50;
  }

  else
  {
    v3 = sub_2284716B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2284716B8()
{
  v43 = v0;
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = &unk_2785F7000;
    v6 = [*(v0 + 128) UUID];
    sub_22855C1BC();

    v7 = sub_22855C17C();
    v9 = v8;
    v10 = *(v2 + 8);
    v10(v3, v4);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v11 = sub_22855CABC();
    __swift_project_value_buffer(v11, qword_280DEEC98);

    v12 = sub_22855CA8C();
    v13 = sub_22855D6AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v14 = 136446466;
      v15 = sub_22855E34C();
      v17 = v7;
      v18 = v10;
      v19 = sub_2283F8938(v15, v16, &v42);

      *(v14 + 4) = v19;
      v10 = v18;
      *(v14 + 12) = 2082;
      v20 = sub_2283F8938(v17, v9, &v42);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_2283ED000, v12, v13, "[%{public}s] Found only one healthappd managed open transaction, using %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v5 = &unk_2785F7000;
      MEMORY[0x22AABAD40](v41, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }

    v29 = *(v0 + 112);
    v30 = *(v0 + 96);
    v31 = *(v0 + 72);
    v32 = [v1 v5[506]];
    sub_22855C1BC();

    v33 = objc_allocWithZone(MEMORY[0x277CCD948]);
    v34 = sub_22855C19C();
    v10(v29, v30);
    v35 = [v33 initWithHealthStore:v31 transactionUUID:v34];

    type metadata accessor for CachingSharedSummaryTransactionBuilder();
    swift_allocObject();
    v36 = v35;
    v37 = sub_228434304(v36, sub_228471EF8, 0);

    v38 = [v31 profileIdentifier];
    sub_228471F00(v38, v37);
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v21 = sub_22855CABC();
    __swift_project_value_buffer(v21, qword_280DEEC98);
    v22 = sub_22855CA8C();
    v23 = sub_22855D6AC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 136446210;
      v26 = sub_22855E34C();
      v28 = sub_2283F8938(v26, v27, &v42);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2283ED000, v22, v23, "[%{public}s] No healthappd managed open transactions, creating fresh transaction", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AABAD40](v25, -1, -1);
      MEMORY[0x22AABAD40](v24, -1, -1);
    }

    sub_2284728B0(*(v0 + 72));
  }

  sub_228476C54(v0 + 16);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_228471B50()
{
  v27 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  if (v2)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v3 = sub_22855CABC();
    __swift_project_value_buffer(v3, qword_280DEEC98);
    v4 = v1;
    v5 = sub_22855CA8C();
    v6 = sub_22855D68C();
    sub_228476E5C(v1, 1, MEMORY[0x277D84FB8], MEMORY[0x277D84FF0]);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v7 = 136446466;
      v10 = sub_22855E34C();
      v12 = sub_2283F8938(v10, v11, &v26);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_2283ED000, v5, v6, "[%{public}s] Failed to fetch open transaction: %{public}@", v7, 0x16u);
      sub_22841DC98(v8);
      MEMORY[0x22AABAD40](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AABAD40](v9, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);
    }

    v15 = [*(v0 + 72) profileIdentifier];
    sub_22847224C(v15, v1);
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEC98);
    v17 = sub_22855CA8C();
    v18 = sub_22855D68C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446210;
      v21 = sub_22855E34C();
      v23 = sub_2283F8938(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2283ED000, v17, v18, "[%{public}s] More than one healthappd managed open transaction detected, discarding all open transactions and creating a fresh transaction", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AABAD40](v20, -1, -1);
      MEMORY[0x22AABAD40](v19, -1, -1);
    }

    sub_228472EF8(*(v0 + 72), v1, 0);
  }

  sub_228476E5C(v1, v2, MEMORY[0x277D84FB8], MEMORY[0x277D84FF0]);
  sub_228476C54(v0 + 16);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_228471F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22855CFBC();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22855CFEC();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3[2];
  v21 = a1;
  v22 = a2;
  v23 = 1;
  v24 = v6;
  os_unfair_lock_lock((v13 + 24));
  sub_228477268((v13 + 16), aBlock);
  os_unfair_lock_unlock((v13 + 24));
  v14 = aBlock[0];
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  aBlock[4] = sub_228476C34;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_72_0;
  v16 = _Block_copy(aBlock);

  sub_22855CFDC();
  v25 = MEMORY[0x277D84F90];
  sub_2283FA0B8(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v17 = MEMORY[0x277D85198];
  sub_2283FA3A0(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2283F466C(&qword_280DED260, &qword_280DED270, v17);
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v12, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v7);
  (*(v10 + 8))(v12, v19);
}

uint64_t sub_22847224C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22855CFBC();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22855CFEC();
  v10 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3[2];
  v22 = a1;
  v23 = 0;
  v24 = -1;
  v25 = v6;
  os_unfair_lock_lock((v13 + 24));
  sub_228476B54((v13 + 16), aBlock);
  os_unfair_lock_unlock((v13 + 24));
  v14 = aBlock[0];
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  aBlock[4] = sub_228476B78;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_65;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  sub_22855CFDC();
  v26 = MEMORY[0x277D84F90];
  sub_2283FA0B8(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v18 = MEMORY[0x277D85198];
  sub_2283FA3A0(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2283F466C(&qword_280DED260, &qword_280DED270, v18);
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v12, v9, v16);
  _Block_release(v16);
  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);
}

uint64_t sub_228472598(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = result + 40;
    v6 = a3 & 1;
    do
    {
      v7 = *(v5 - 8);
      v8 = a2;
      v9 = v6;

      v7(&v8);

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_228472614(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = a4, v11 = sub_2283FB154(a2), (v12 & 1) != 0))
  {
    v13 = *(v7 + 56) + 16 * v11;
    v14 = *v13;
    if ((*(v13 + 8) & 1) == 0)
    {
      sub_22844B978(v14, 0);
      v27 = a2;
      sub_228476630(a3, v8);
      sub_2284D1F1C(a3, v8, v27);
      goto LABEL_11;
    }

    v15 = 1;
  }

  else
  {
    v14 = 0;
    v15 = -1;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v16 = sub_22855CABC();
  __swift_project_value_buffer(v16, qword_280DEEC98);
  sub_228476630(v14, v15);
  v17 = sub_22855CA8C();
  v18 = sub_22855D69C();
  sub_2284765A8(v14, v15);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136446466;
    v21 = sub_22855E34C();
    v23 = sub_2283F8938(v21, v22, &v28);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_228476630(v14, v15);
    sub_228476B98(0, &qword_27D83F8A0, &type metadata for OpenTransactionBuilderManager.State.CreationState);
    v24 = sub_22855D1BC();
    v26 = sub_2283F8938(v24, v25, &v28);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_2283ED000, v17, v18, "[%{public}s] Expected current state to be in progress, but is %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v20, -1, -1);
    MEMORY[0x22AABAD40](v19, -1, -1);
  }

  sub_2284765A8(v14, v15);
  v14 = MEMORY[0x277D84F90];
LABEL_11:
  *a6 = v14;
}

void sub_2284728B0(void *a1)
{
  sub_228472C20();
  v3 = [objc_allocWithZone(MEMORY[0x277CCD948]) initWithHealthStore_];
  sub_2283FA3A0(0, &qword_280DED018, sub_22842D160, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = 0xD000000000000048;
  *(inited + 40) = 0x800000022856FA50;
  if (qword_280DE9298 != -1)
  {
    swift_once();
  }

  v5 = xmmword_280DE92A0;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;

  sub_22847C614(inited);
  swift_setDeallocating();
  sub_228476A44(inited + 32);
  v6 = sub_22855D0DC();

  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = a1;
  v7[4] = v3;
  v11[4] = sub_228476B48;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2284A72DC;
  v11[3] = &block_descriptor_59;
  v8 = _Block_copy(v11);

  v9 = a1;
  v10 = v3;

  [v10 addMetadata:v6 completion:v8];
  _Block_release(v8);
}

void sub_228472AEC(int a1, id a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a4 profileIdentifier];
    sub_22847224C(v8, a2);

    v9 = a2;
  }

  else
  {
    type metadata accessor for CachingSharedSummaryTransactionBuilder();
    swift_allocObject();
    v11 = a5;
    v12 = sub_228434304(v11, sub_228471EF8, 0);

    v13 = [a4 profileIdentifier];
    sub_228471F00(v13, v12);

    v9 = v13;
  }
}

uint64_t sub_228472C20()
{
  v0 = sub_22855C16C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DEEC98);
  v5 = sub_22855CA8C();
  v6 = sub_22855D6AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v9 = sub_22855E34C();
    v11 = sub_2283F8938(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2283ED000, v5, v6, "[%{public}s] Setting user defaults flag to indicate all summaries need to be regenerated", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_22855DC6C();

  v17 = 0xD00000000000001DLL;
  v18 = 0x8000000228570020;
  sub_22855C15C();
  sub_2283FA0B8(&qword_280DECD88, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v12 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v12);

  (*(v1 + 8))(v3, v0);
  v13 = v17;
  v14 = v18;
  swift_beginAccess();
  sub_22846FA5C(v13, v14);
  return swift_endAccess();
}

void sub_228472EF8(void *a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v57 = sub_22855C1DC();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v12 = sub_22855DB4C();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v8;
  if (v12 > a3)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = a1;
      v14 = MEMORY[0x22AAB9D20](a3, a2);
      goto LABEL_8;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
    {
      v13 = a1;
      v14 = *(a2 + 8 * a3 + 32);
LABEL_8:
      v15 = v14;
      v16 = a2;
      v17 = [v14 UUID];
      sub_22855C1BC();

      v18 = objc_allocWithZone(MEMORY[0x277CCD948]);
      v19 = sub_22855C19C();
      (*(v9 + 8))(v11, v57);
      v20 = [v18 initWithHealthStore:v13 transactionUUID:v19];

      v21 = swift_allocObject();
      v21[2] = v15;
      v21[3] = v4;
      v21[4] = v13;
      v21[5] = v16;
      v22 = v54;
      v21[6] = a3;
      v21[7] = v22;
      aBlock[4] = sub_228476AC4;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2284A72DC;
      aBlock[3] = &block_descriptor_53;
      v23 = _Block_copy(aBlock);
      v24 = v15;

      v25 = v13;

      [v20 discardWithCompletion_];
      _Block_release(v23);

      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  v26 = MEMORY[0x277D84F90];
  v53 = v3;
  if (v12)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2284272C0(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v52 = a1;
    v27 = 0;
    v26 = aBlock[0];
    v28 = a2;
    v55 = a2 & 0xC000000000000001;
    v56 = v12;
    v29 = (v9 + 8);
    v30 = a2;
    do
    {
      if (v55)
      {
        v31 = MEMORY[0x22AAB9D20](v27, v28);
      }

      else
      {
        v31 = *(v28 + 8 * v27 + 32);
      }

      v32 = v31;
      v33 = [v31 UUID];
      sub_22855C1BC();

      v34 = sub_22855C17C();
      v36 = v35;

      (*v29)(v11, v57);
      aBlock[0] = v26;
      v38 = *(v26 + 16);
      v37 = *(v26 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2284272C0((v37 > 1), v38 + 1, 1);
        v26 = aBlock[0];
      }

      ++v27;
      *(v26 + 16) = v38 + 1;
      v39 = v26 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v28 = v30;
    }

    while (v56 != v27);
    a1 = v52;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v40 = sub_22855CABC();
  __swift_project_value_buffer(v40, qword_280DEEC98);

  v41 = sub_22855CA8C();
  v42 = sub_22855D6AC();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136446466;
    v45 = sub_22855E34C();
    v47 = sub_2283F8938(v45, v46, aBlock);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    v48 = MEMORY[0x22AAB9430](v26, MEMORY[0x277D837D0]);
    v50 = v49;

    v51 = sub_2283F8938(v48, v50, aBlock);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_2283ED000, v41, v42, "[%{public}s] Creating new transaction after successfully discarding all transactions: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v44, -1, -1);
    MEMORY[0x22AABAD40](v43, -1, -1);
  }

  else
  {
  }

  sub_2284728B0(a1);
}

void sub_228473470(char a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a5;
  v14 = sub_22855C1DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v53 = a4;
    v18 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v19 = sub_22855CABC();
    __swift_project_value_buffer(v19, qword_280DEEC98);
    v20 = a2;
    v21 = a3;
    v22 = sub_22855CA8C();
    v23 = sub_22855D68C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v56 = v52;
      *v24 = 136446722;
      v25 = sub_22855E34C();
      v27 = sub_2283F8938(v25, v26, &v56);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v28 = [v21 UUID];
      sub_22855C1BC();

      v29 = sub_22855C17C();
      v31 = v30;
      (*(v15 + 8))(v17, v14);
      v32 = sub_2283F8938(v29, v31, &v56);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2082;
      v55 = a2;
      v33 = a2;
      sub_228418D44();
      v34 = sub_22855D1BC();
      v36 = sub_2283F8938(v34, v35, &v56);

      *(v24 + 24) = v36;
      _os_log_impl(&dword_2283ED000, v22, v23, "[%{public}s] Failed to discard transaction %{public}s: %{public}s", v24, 0x20u);
      v37 = v52;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v37, -1, -1);
      MEMORY[0x22AABAD40](v24, -1, -1);
    }

    v38 = [v54 profileIdentifier];
    sub_22847224C(v38, a2);
  }

  else
  {
    v53 = a6;
    v39 = [a3 UUID];
    sub_22855C1BC();

    v52 = sub_22855C17C();
    v41 = v40;
    (*(v15 + 8))(v17, v14);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v42 = sub_22855CABC();
    __swift_project_value_buffer(v42, qword_280DEEC98);

    v43 = sub_22855CA8C();
    v44 = sub_22855D6AC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56 = v46;
      *v45 = 136446722;
      v47 = sub_22855E34C();
      v49 = sub_2283F8938(v47, v48, &v56);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v50 = sub_2283F8938(v52, v41, &v56);

      *(v45 + 14) = v50;
      *(v45 + 22) = 1024;
      *(v45 + 24) = a1 & 1;
      _os_log_impl(&dword_2283ED000, v43, v44, "[%{public}s] Discard transaction %{public}s %{BOOL}d", v45, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v46, -1, -1);
      MEMORY[0x22AABAD40](v45, -1, -1);
    }

    else
    {
    }

    if (__OFADD__(a7, 1))
    {
      __break(1u);
    }

    else
    {
      sub_228472EF8(v54, v53, a7 + 1);
    }
  }
}

void sub_228473978(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v92 = a4;
  v90 = a3;
  v91 = a2;
  v95 = *v4;
  v7 = sub_22855C1DC();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v10 = sub_22855CABC();
  __swift_project_value_buffer(v10, qword_280DEEC98);
  v11 = a1;
  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  v14 = &unk_2785F7000;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v96[0] = v16;
    *v15 = 136446466;
    v17 = sub_22855E34C();
    v19 = sub_2283F8938(v17, v18, v96);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = [v11 profileIdentifier];
    v21 = [v20 identifier];

    sub_22855C1BC();
    v22 = sub_22855C17C();
    v24 = v23;
    (v93)[1](v9, v94);
    v25 = sub_2283F8938(v22, v24, v96);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_2283ED000, v12, v13, "[%{public}s] Getting current transaction for committing for %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v26 = v16;
    v14 = &unk_2785F7000;
    MEMORY[0x22AABAD40](v26, -1, -1);
    MEMORY[0x22AABAD40](v15, -1, -1);
  }

  v27 = [v11 v14[436]];
  v28 = v5[2];
  *&v83[-16] = MEMORY[0x28223BE20](v27);
  os_unfair_lock_lock((v28 + 24));
  sub_228476648((v28 + 16), v96);
  os_unfair_lock_unlock((v28 + 24));
  v29 = v96[0];
  if (v96[0])
  {
    v88 = 0;
    v89 = v27;
    v30 = [*(v96[0] + 2) transactionUUID];
    sub_22855C1BC();

    v86 = sub_22855C17C();
    v32 = v31;
    v33 = v94;
    v87 = v93[1];
    v87(v9, v94);
    v34 = v11;

    v35 = sub_22855CA8C();
    v36 = sub_22855D6AC();
    v93 = v34;

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v14;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v85 = v5;
      v40 = v39;
      v96[0] = v39;
      *v38 = 136446722;
      v41 = sub_22855E34C();
      v84 = v36;
      v43 = sub_2283F8938(v41, v42, v96);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2082;
      v44 = sub_2283F8938(v86, v32, v96);

      *(v38 + 14) = v44;
      *(v38 + 22) = 2082;
      v33 = v94;
      v45 = [v93 v37[436]];
      v46 = [v45 identifier];

      sub_22855C1BC();
      v47 = sub_22855C17C();
      v49 = v48;
      v50 = v87;
      v87(v9, v33);
      v51 = sub_2283F8938(v47, v49, v96);

      *(v38 + 24) = v51;
      _os_log_impl(&dword_2283ED000, v35, v84, "[%{public}s] Committing current transaction %{public}s for %{public}s", v38, 0x20u);
      swift_arrayDestroy();
      v52 = v40;
      v5 = v85;
      MEMORY[0x22AABAD40](v52, -1, -1);
      v53 = v38;
      v54 = v95;
      MEMORY[0x22AABAD40](v53, -1, -1);
    }

    else
    {

      v54 = v95;
      v50 = v87;
    }

    sub_2283EF310(0, &qword_280DE9250, 0x277CCD948);
    v64 = sub_2285549F0();
    v65 = [*(v29 + 2) transactionUUID];
    sub_22855C1BC();

    v66 = sub_22855C17C();
    v68 = v67;
    v50(v9, v33);
    v69 = swift_allocObject();
    *(v69 + 16) = v66;
    *(v69 + 24) = v68;
    v70 = v29;
    v72 = v92;
    v71 = v93;
    *(v69 + 32) = v5;
    *(v69 + 40) = v71;
    *(v69 + 48) = v90;
    *(v69 + 56) = v72;
    *(v69 + 64) = v64;
    *(v69 + 72) = v70;
    *(v69 + 80) = v91 & 1;
    *(v69 + 88) = v54;
    v73 = swift_allocObject();
    v73[2] = v70;
    v73[3] = v64;
    v73[4] = sub_22847667C;
    v73[5] = v69;
    v74 = swift_allocObject();
    v95 = v83;
    *(v74 + 16) = sub_22847667C;
    *(v74 + 24) = v69;
    v75 = *(v70 + 5);
    v76 = MEMORY[0x28223BE20](v74);
    *&v83[-32] = sub_2284766C0;
    *&v83[-24] = v76;
    *&v83[-16] = sub_228434660;
    *&v83[-8] = v73;
    swift_retain_n();
    swift_retain_n();
    v77 = v71;

    os_unfair_lock_lock(v75 + 16);
    sub_228434624(&v75[4], v96);
    os_unfair_lock_unlock(v75 + 16);
    v78 = v96[0];
    if (v96[0])
    {
      v79 = v96[1];
      v96[0]();
      sub_228416CF8(v78, v79);
    }
  }

  else
  {
    v55 = sub_22855CA8C();
    v56 = sub_22855D6AC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v96[0] = v58;
      *v57 = 136446210;
      v59 = v95;
      v60 = sub_22855E34C();
      v62 = v27;
      v63 = sub_2283F8938(v60, v61, v96);

      *(v57 + 4) = v63;
      v27 = v62;
      _os_log_impl(&dword_2283ED000, v55, v56, "[%{public}s] No transaction found, fetching or creating a new one for committing", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x22AABAD40](v58, -1, -1);
      MEMORY[0x22AABAD40](v57, -1, -1);
    }

    else
    {

      v59 = v95;
    }

    v80 = swift_allocObject();
    *(v80 + 16) = v5;
    *(v80 + 24) = v11;
    *(v80 + 32) = v91 & 1;
    v81 = v92;
    *(v80 + 40) = v90;
    *(v80 + 48) = v81;
    *(v80 + 56) = v59;
    v82 = v11;

    sub_22847065C(v82, sub_228476664, v80);
  }
}

void sub_228474258(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_2283FB154(a2);
    if ((v8 & 1) != 0 && (v9 = *(v4 + 56) + 16 * v7, *(v9 + 8) == 1))
    {
      v10 = *v9;
      sub_22844B978(*v9, 1);
      v11 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *a1;
      sub_22845B074(MEMORY[0x277D84F90], 0, v11, isUniquelyReferenced_nonNull_native);

      *a1 = v13;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
}

void sub_228474330(void *a1, char a2, uint64_t a3, void *a4, char a5, void (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v40 = a8;
  v14 = sub_22855C1DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39 = a6;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v18 = sub_22855CABC();
    __swift_project_value_buffer(v18, qword_280DEEC98);
    v19 = a4;
    sub_228476E50(a1, 1);
    v20 = sub_22855CA8C();
    v21 = sub_22855D6AC();

    sub_228476E5C(a1, 1, MEMORY[0x277D85008], MEMORY[0x277D84FF0]);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v38[1] = a7;
      v23 = v22;
      v38[0] = swift_slowAlloc();
      v42 = v38[0];
      *v23 = 136446722;
      v24 = sub_22855E34C();
      v26 = sub_2283F8938(v24, v25, &v42);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      v27 = [v19 profileIdentifier];
      v28 = [v27 identifier];

      sub_22855C1BC();
      v29 = sub_22855C17C();
      v31 = v30;
      (*(v15 + 8))(v17, v14);
      v32 = sub_2283F8938(v29, v31, &v42);

      *(v23 + 14) = v32;
      *(v23 + 22) = 2082;
      v41 = a1;
      v33 = a1;
      sub_228418D44();
      v34 = sub_22855D1BC();
      v36 = sub_2283F8938(v34, v35, &v42);

      *(v23 + 24) = v36;
      _os_log_impl(&dword_2283ED000, v20, v21, "[%{public}s] Failed to get current transaction for %{public}s: %{public}s", v23, 0x20u);
      v37 = v38[0];
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v37, -1, -1);
      MEMORY[0x22AABAD40](v23, -1, -1);
    }

    v39(a1);
  }

  else
  {
    sub_228473978(a4, a5 & 1, a6, a7);
  }
}

void sub_228474690(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(void *), uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v59 = a4;
  v60 = a7;
  if (a1)
  {
    v16 = a1;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v17 = sub_22855CABC();
    __swift_project_value_buffer(v17, qword_280DEEC98);
    v18 = a1;

    v19 = sub_22855CA8C();
    v20 = sub_22855D68C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v58 = a5;
      v22 = swift_slowAlloc();
      v62[0] = v22;
      *v21 = 136446722;
      v23 = sub_22855E34C();
      v25 = sub_2283F8938(v23, v24, v62);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_2283F8938(a2, a3, v62);
      *(v21 + 22) = 2082;
      v61 = a1;
      v26 = a1;
      sub_228418D44();
      v27 = sub_22855D1BC();
      v29 = sub_2283F8938(v27, v28, v62);

      *(v21 + 24) = v29;
      _os_log_impl(&dword_2283ED000, v19, v20, "[%{public}s] Failed to add metadata %{public}s: %{public}s", v21, 0x20u);
      swift_arrayDestroy();
      v30 = v22;
      a5 = v58;
      MEMORY[0x22AABAD40](v30, -1, -1);
      MEMORY[0x22AABAD40](v21, -1, -1);
    }

    v31 = [a5 profileIdentifier];
    sub_22847224C(v31, a1);

    v32 = a1;
    a6(a1);
  }

  else
  {
    v57 = a9;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v33 = a10;
    v34 = sub_22855CABC();
    __swift_project_value_buffer(v34, qword_280DEEC98);

    v35 = sub_22855CA8C();
    v36 = sub_22855D6AC();

    if (os_log_type_enabled(v35, v36))
    {
      v58 = a5;
      v37 = swift_slowAlloc();
      v56 = a6;
      v38 = swift_slowAlloc();
      v62[0] = v38;
      *v37 = 136446722;
      v39 = sub_22855E34C();
      HIDWORD(v55) = a10;
      v41 = sub_2283F8938(v39, v40, v62);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_2283F8938(a2, a3, v62);
      *(v37 + 22) = 2082;
      v42 = sub_22855D0FC();
      v44 = sub_2283F8938(v42, v43, v62);
      v33 = BYTE4(v55);

      *(v37 + 24) = v44;
      _os_log_impl(&dword_2283ED000, v35, v36, "[%{public}s] Committing transaction %{public}s after adding metadata: %{public}s", v37, 0x20u);
      swift_arrayDestroy();
      v45 = v38;
      a6 = v56;
      MEMORY[0x22AABAD40](v45, -1, -1);
      v46 = v37;
      a5 = v58;
      MEMORY[0x22AABAD40](v46, -1, -1);
    }

    v47 = swift_allocObject();
    v47[2] = a2;
    v47[3] = a3;
    v47[4] = v59;
    v47[5] = a5;
    v47[6] = a6;
    v48 = v57;
    v47[7] = v60;
    v47[8] = v48;
    v47[9] = a11;
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v33 & 1;
    *(v49 + 32) = sub_228476DF8;
    *(v49 + 40) = v47;
    v50 = swift_allocObject();
    v58 = &v55;
    *(v50 + 16) = sub_228476DF8;
    *(v50 + 24) = v47;
    v51 = *(v48 + 40);
    MEMORY[0x28223BE20](v50);
    swift_retain_n();
    swift_retain_n();

    v52 = a5;

    os_unfair_lock_lock(v51 + 16);
    sub_228435484(&v51[4], v62);
    os_unfair_lock_unlock(v51 + 16);
    v53 = v62[0];
    if (v62[0])
    {
      v54 = v62[1];
      v62[0]();
      sub_228416CF8(v53, v54);
    }
  }
}

uint64_t sub_228474C4C(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v14 = a9;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    __swift_project_value_buffer(v15, qword_280DEEC98);

    sub_228476E38(a1);
    v16 = sub_22855CA8C();
    v17 = sub_22855D68C();

    sub_228476E44(a1);
    if (os_log_type_enabled(v16, v17))
    {
      v42 = a6;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 136446722;
      v20 = sub_22855E34C();
      v22 = sub_2283F8938(v20, v21, &v45);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_2283F8938(a3, a4, &v45);
      *(v18 + 22) = 2082;
      v23 = a1;
      sub_228418D44();
      v24 = sub_22855D1BC();
      v26 = sub_2283F8938(v24, v25, &v45);

      *(v18 + 24) = v26;
      _os_log_impl(&dword_2283ED000, v16, v17, "[%{public}s] Using old transaction %{public}s as commit failed: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      v27 = v19;
      v14 = a9;
      MEMORY[0x22AABAD40](v27, -1, -1);
      v28 = v18;
      a6 = v42;
      MEMORY[0x22AABAD40](v28, -1, -1);
    }

    v29 = [a6 profileIdentifier];
    sub_228471F00(v29, v14);

    v30 = a1;
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v31 = sub_22855CABC();
    __swift_project_value_buffer(v31, qword_280DEEC98);

    v32 = sub_22855CA8C();
    v33 = sub_22855D6AC();

    if (os_log_type_enabled(v32, v33))
    {
      v43 = a6;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136446466;
      v36 = sub_22855E34C();
      v38 = sub_2283F8938(v36, v37, &v45);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_2283F8938(a3, a4, &v45);
      _os_log_impl(&dword_2283ED000, v32, v33, "[%{public}s] Successfully committed transaction %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v35, -1, -1);
      v39 = v34;
      a6 = v43;
      MEMORY[0x22AABAD40](v39, -1, -1);
    }

    sub_228475020(a6);
    v30 = 0;
  }

  return a7(v30);
}

void sub_228475020(void *a1)
{
  v3 = *v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CCD948]) initWithHealthStore_];
  sub_2283FA3A0(0, &qword_280DED018, sub_22842D160, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = 0xD000000000000048;
  *(inited + 40) = 0x800000022856FA50;
  if (qword_280DE9298 != -1)
  {
    swift_once();
  }

  v6 = xmmword_280DE92A0;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;

  sub_22847C614(inited);
  swift_setDeallocating();
  sub_228476A44(inited + 32);
  v7 = sub_22855D0DC();

  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = a1;
  v8[4] = v4;
  v8[5] = v3;
  v12[4] = sub_228476AA0;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2284A72DC;
  v12[3] = &block_descriptor_41;
  v9 = _Block_copy(v12);

  v10 = a1;
  v11 = v4;

  [v11 addMetadata:v7 completion:v9];
  _Block_release(v9);
}

void sub_228475280(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_22855C1DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEC98);
    v17 = sub_22855CA8C();
    v18 = sub_22855D68C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136446210;
      v21 = sub_22855E34C();
      v23 = sub_2283F8938(v21, v22, aBlock);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2283ED000, v17, v18, "[%{public}s] Failed to set healthappd managed transaction metadata to new transaction", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AABAD40](v20, -1, -1);
      MEMORY[0x22AABAD40](v19, -1, -1);
    }

    sub_228472C20();
    v24 = [a4 profileIdentifier];
    sub_22847224C(v24, a2);
  }

  else
  {
    v25 = [a5 transactionUUID];
    sub_22855C1BC();

    v26 = sub_22855C17C();
    v28 = v27;
    (*(v12 + 8))(v14, v11);
    v29 = swift_allocObject();
    v29[2] = v26;
    v29[3] = v28;
    v29[4] = a3;
    v29[5] = a5;
    v29[6] = a4;
    v29[7] = a6;
    aBlock[4] = sub_228476AAC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2284A72DC;
    aBlock[3] = &block_descriptor_47;
    v30 = _Block_copy(aBlock);

    v31 = a5;
    v32 = a4;

    [v31 reuseAllSummariesWithPackage:0 completion:v30];
    _Block_release(v30);
  }
}

void sub_2284755E0(char a1, id a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  if (a2)
  {
    v12 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEEC98);
    v14 = a2;

    v15 = sub_22855CA8C();
    v16 = sub_22855D68C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 136446722;
      v19 = sub_22855E34C();
      v21 = sub_2283F8938(v19, v20, &v41);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_2283F8938(a3, a4, &v41);
      *(v17 + 22) = 2082;
      v22 = a2;
      sub_228418D44();
      v23 = sub_22855D1BC();
      v25 = sub_2283F8938(v23, v24, &v41);

      *(v17 + 24) = v25;
      _os_log_impl(&dword_2283ED000, v15, v16, "[%{public}s] Setting flag to regenerate all summaries since unable to reuse all transactions for %{public}s: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v8 = a7;
    sub_228472C20();

    v9 = a6;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v26 = sub_22855CABC();
  __swift_project_value_buffer(v26, qword_280DEEC98);

  v27 = sub_22855CA8C();
  v28 = sub_22855D6AC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v30;
    *v29 = 136446722;
    v31 = sub_22855E34C();
    v33 = sub_2283F8938(v31, v32, &v41);

    *(v29 + 4) = v33;
    *(v29 + 12) = 1024;
    *(v29 + 14) = a1 & 1;
    *(v29 + 18) = 2082;
    *(v29 + 20) = sub_2283F8938(a3, a4, &v41);
    _os_log_impl(&dword_2283ED000, v27, v28, "[%{public}s] Reuse all summaries success %{BOOL}d for new transaction %{public}s", v29, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v30, -1, -1);
    MEMORY[0x22AABAD40](v29, -1, -1);
  }

  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  swift_allocObject();
  v34 = v9;
  v35 = sub_228434304(v34, sub_228471EF8, 0);

  v36 = [v8 profileIdentifier];
  sub_228471F00(v36, v35);
}

void sub_2284759E8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_2284766C8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_228475A3C(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    v4 = sub_2283FB154(a2);
    if ((v5 & 1) != 0 && *(*(v2 + 56) + 16 * v4 + 8) == 1)
    {
      sub_2284D1F1C(0, 255, a2);
    }
  }
}

void sub_228475AB4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_228475B0C((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void sub_228475B0C(void *a1)
{
  v2 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = v2;
  while (v6)
  {
    v10 = v6;
LABEL_11:
    v6 = (v10 - 1) & v10;
    if (v9[2])
    {
      v12 = *(v2[6] + ((v8 << 9) | (8 * __clz(__rbit64(v10)))));
      v13 = sub_2283FB154(v12);
      if (v14 & 1) != 0 && (*(v9[7] + 16 * v13 + 8) & 1) != 0 && (v15 = sub_2283FB154(v12), (v16))
      {
        v18 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v9 = *a1;
        v19 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_228448780();
          v9 = v19;
        }

        sub_228476E5C(*(v9[7] + 16 * v18), *(v9[7] + 16 * v18 + 8), MEMORY[0x277D84FB8], MEMORY[0x277D85008]);
        sub_2284D2A38(v18, v9);

        *a1 = v9;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v10 = *(v3 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t OpenTransactionBuilderManager.deinit()
{

  v1 = *(v0 + 48);

  return v0;
}

uint64_t OpenTransactionBuilderManager.__deallocating_deinit()
{

  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t OpenTransactionBuilderManager.makeTransactionBuilderPublisher(for:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_228477124(0, &qword_280DE97C8, MEMORY[0x277CBCEA8]);
  sub_2284766EC();

  v4 = a1;

  return sub_22855CE2C();
}

uint64_t sub_228475E48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_228477124(0, &qword_280DE97C8, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  v7 = a2;
  result = sub_22855CE0C();
  *a3 = result;
  return result;
}

uint64_t sub_228475F00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_228476DC0;
  *(v8 + 24) = v7;

  sub_22847065C(a4, sub_228476DCC, v8);
}

uint64_t OpenTransactionBuilderManager.commitTransactionPublisher(healthStore:asUrgent:)(void *a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  sub_22847676C(0);
  sub_2283FA0B8(&qword_280DE9788, sub_22847676C, MEMORY[0x277CBCEB0]);

  v6 = a1;

  return sub_22855CE2C();
}

uint64_t sub_22847609C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  sub_22847676C(0);
  swift_allocObject();

  v9 = a2;
  result = sub_22855CE0C();
  *a4 = result;
  return result;
}

uint64_t sub_228476140(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_228476D24;
  *(v10 + 24) = v9;

  sub_228473978(a4, a5, sub_228476D64, v10);
}

void sub_22847620C(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    a2(0, 0);
  }
}

unint64_t sub_228476284()
{
  result = qword_27D83F890;
  if (!qword_27D83F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F890);
  }

  return result;
}

uint64_t sub_2284762F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_228468A14;

  return sub_228471344(a1, v4, v5, v7, v6);
}

uint64_t sub_2284763B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2284764B0;

  return v6(a1);
}

uint64_t sub_2284764B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2284765A8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_228476E5C(result, a2 & 1, MEMORY[0x277D84FB8], MEMORY[0x277D85008]);
  }

  return result;
}

uint64_t sub_228476630(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_22844B978(result, a2 & 1);
  }

  return result;
}

unint64_t sub_2284766EC()
{
  result = qword_280DE97D0;
  if (!qword_280DE97D0)
  {
    sub_228477124(255, &qword_280DE97C8, MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE97D0);
  }

  return result;
}

void sub_22847676C(uint64_t a1)
{
  if (!qword_280DE9780)
  {
    sub_228418D44();
    v1 = sub_22855CDFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9780);
    }
  }
}

unint64_t sub_2284767DC()
{
  result = qword_27D83F898;
  if (!qword_27D83F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F898);
  }

  return result;
}

void sub_228476920(uint64_t a1)
{
  if (!qword_280DE9720)
  {
    sub_228477124(255, &qword_280DE97C8, MEMORY[0x277CBCEA8]);
    sub_2284766EC();
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9720);
    }
  }
}

void sub_2284769A0(uint64_t a1)
{
  if (!qword_280DE9700)
  {
    sub_22847676C(255);
    sub_2283FA0B8(&qword_280DE9788, sub_22847676C, MEMORY[0x277CBCEB0]);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9700);
    }
  }
}

uint64_t sub_228476A44(uint64_t a1)
{
  sub_22842D160();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_37Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_228476B98(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_61Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_228476CA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22855DA2C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_228476D04(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_228476D24(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t objectdestroy_18Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

id sub_228476E50(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_228476E5C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (a2)
  {
    return a4(a1);
  }

  else
  {
    return a3(a1);
  }
}

uint64_t sub_228476E70(uint64_t a1, uint64_t a2)
{
  sub_2283FA3A0(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228476F04(uint64_t a1)
{
  sub_2283FA3A0(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228476F90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22846BCA0;

  return sub_2284763B8(a1, v4);
}

uint64_t sub_228477048(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_228468A14;

  return sub_2284763B8(a1, v4);
}

void sub_228477124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CachingSharedSummaryTransactionBuilder();
    v7 = sub_228418D44();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2284771A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2284771F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t GeneratorDomain.init(sourceProfile:contentKinds:hkTypes:complexity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t GeneratorContext.environment.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratorContext(0) + 28));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3) & 1;
}

uint64_t type metadata accessor for GeneratorContext(uint64_t a1)
{
  result = qword_280DEBE80;
  if (!qword_280DEBE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static AnyPublisher<>.empty.getter()
{
  sub_2284773B4();

  return sub_22855CDDC();
}

{
  sub_2284C0BE0();

  return sub_22855CDDC();
}

void sub_2284773B4()
{
  if (!qword_280DEE3D8)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE3D8);
    }
  }
}

id GeneratorContext.sourceProfile.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t GeneratorContext.country.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GeneratorContext(0) + 20);

  return sub_2284774BC(v3, a1);
}

uint64_t sub_2284774BC(uint64_t a1, uint64_t a2)
{
  sub_228450F00(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GeneratorContext.country.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GeneratorContext(0) + 20);

  return sub_228477564(a1, v3);
}

uint64_t sub_228477564(uint64_t a1, uint64_t a2)
{
  sub_228450F00(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GeneratorContext.isLaunchGeneration.setter(char a1)
{
  result = type metadata accessor for GeneratorContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t GeneratorContext.healthStore.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratorContext(0) + 28));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t GeneratorContext.queue(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = (v1 + *(type metadata accessor for GeneratorContext(0) + 28));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = v3;
  v10 = *(a1 + 1);
  v11 = v4;
  return (*(v7 + 64))(&v9, v6, v7);
}

uint64_t GeneratorContext.scheduler.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratorContext(0) + 28));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t GeneratorContext.feedItemContext.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for GeneratorContext(0) + 28);
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));

  return sub_2283FAB3C(a1, v1 + v3);
}

uint64_t GeneratorContext.sharableModelContext.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for GeneratorContext(0) + 32);
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));

  return sub_2283FAB3C(a1, v1 + v3);
}

uint64_t GeneratorContext.init(sourceProfile:country:feedItemContext:sharableModelContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for GeneratorContext(0);
  *(a5 + v10[6]) = 0;
  *a5 = a1;
  sub_228477A40(a2, a5 + v10[5]);
  sub_2283FAB3C(a3, a5 + v10[7]);
  v11 = a5 + v10[8];

  return sub_2283FAB3C(a4, v11);
}

uint64_t sub_228477A40(uint64_t a1, uint64_t a2)
{
  sub_228450F00(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id GeneratorDomain.sourceProfile.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t GeneratorDomain.contentKinds.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t GeneratorDomain.hkTypes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t GeneratorDomain.init(sourceProfile:contentKinds:hkTypes:complexity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v9 = sub_228429B98(a2);

  v10 = sub_228428BF8(a3);

  *a5 = a1;
  *(a5 + 8) = v9;
  *(a5 + 16) = v10;
  *(a5 + 24) = v8;
  return result;
}

unint64_t GeneratorDomain.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*(v2 + 16) > 1uLL)
    {
      goto LABEL_5;
    }

LABEL_6:
    sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
    sub_22845D238();
    v5 = sub_22855D52C();
    v4 = v6;
    goto LABEL_7;
  }

  if (sub_22855DB4C() <= 1)
  {
    goto LABEL_6;
  }

  sub_22855DB4C();
LABEL_5:
  v3 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](0x29736570797420, 0xE700000000000000);
  v5 = 40;
  v4 = 0xE100000000000000;
LABEL_7:
  v7 = v1;
  v8 = sub_22845E064(v1);
  MEMORY[0x22AAB92A0](v8);

  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  sub_22842BA18();
  v9 = sub_22855D52C();
  MEMORY[0x22AAB92A0](v9);

  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  MEMORY[0x22AAB92A0](v5, v4);

  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  v10 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v10);

  return 0xD000000000000010;
}

uint64_t GeneratorDomain.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22844A2BC(a1, v3);
  sub_22844A080(a1, v4);
  return MEMORY[0x22AABA2B0](v5);
}

uint64_t GeneratorDomain.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22855E22C();
  if (v2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22844A2BC(v6, v1);
  sub_22844A080(v6, v3);
  MEMORY[0x22AABA2B0](v4);
  return sub_22855E27C();
}

uint64_t sub_228477FB4(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22844A2BC(a1, v3);
  sub_22844A080(a1, v4);
  return MEMORY[0x22AABA2B0](v5);
}

uint64_t sub_228478040(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  sub_22855E22C();
  if (v3)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22844A2BC(v7, v2);
  sub_22844A080(v7, v4);
  MEMORY[0x22AABA2B0](v5);
  return sub_22855E27C();
}

uint64_t GeneratorDomain.Complexity.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t _s14HealthPlatform15GeneratorDomainV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    if ((sub_22855D9AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (sub_228441950(v2, v5))
  {
    return sub_2284424C4(v3, v7) & (v4 == v8);
  }

  return 0;
}

unint64_t sub_228478218()
{
  result = qword_27D83F8B0;
  if (!qword_27D83F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F8B0);
  }

  return result;
}

unint64_t sub_228478270()
{
  result = qword_27D83F8B8;
  if (!qword_27D83F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F8B8);
  }

  return result;
}

void sub_22847833C(uint64_t a1)
{
  sub_228450F00(319);
  if (v1 <= 0x3F)
  {
    sub_2283F9B94(319, qword_280DEE698, &protocol descriptor for FeedItemContext);
    if (v2 <= 0x3F)
    {
      sub_2283F9B94(319, &qword_280DEE538, &protocol descriptor for SharableModelContext);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_228478424(uint64_t a1, int a2)
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

uint64_t sub_22847846C(uint64_t result, int a2, int a3)
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

HealthPlatform::DataVisualizationKind_optional __swiftcall DataVisualizationKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855DFBC();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DataVisualizationKind.rawValue.getter()
{
  result = 0x5265676172657661;
  switch(*v0)
  {
    case 1:
      result = 0x7274736944726162;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7562697274736964;
      break;
    case 5:
      result = 0x746F6C50746F64;
      break;
    case 6:
      result = 0x65764F746E657665;
      break;
    case 7:
      result = 0x437473656772616CLL;
      break;
    case 8:
      result = 0x72616843656E696CLL;
      break;
    case 9:
      result = 0x7472616843656970;
      break;
    case 0xA:
      result = 0x6574756F72;
      break;
    case 0xB:
      result = 0x6172676F6E6D6F73;
      break;
    case 0xC:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x6C654465756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2284786F0()
{
  sub_22855E22C();
  DataVisualizationKind.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_228478758(uint64_t a1)
{
  DataVisualizationKind.rawValue.getter();
  sub_22855D20C();
}

uint64_t sub_2284787BC(uint64_t a1)
{
  sub_22855E22C();
  DataVisualizationKind.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

unint64_t sub_22847882C@<X0>(unint64_t *a1@<X8>)
{
  result = DataVisualizationKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_228478904()
{
  v0 = DataVisualizationKind.rawValue.getter();
  v2 = v1;
  if (v0 == DataVisualizationKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22855E15C();
  }

  return v5 & 1;
}

unint64_t sub_2284789CC()
{
  result = qword_27D83F8C0;
  if (!qword_27D83F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F8C0);
  }

  return result;
}

unint64_t sub_228478A24()
{
  result = qword_27D83F8C8;
  if (!qword_27D83F8C8)
  {
    sub_228478A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F8C8);
  }

  return result;
}

void sub_228478A7C()
{
  if (!qword_27D83F8D0)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F8D0);
    }
  }
}

uint64_t sub_228478ADC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_228478B6C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_228478C2C()
{
  result = qword_280DEE528;
  if (!qword_280DEE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE528);
  }

  return result;
}

Swift::Void __swiftcall PendingValuesInner.lock_sendPendingValuesIfNeeded()()
{
  v3 = v1;
  v4 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v75 = v7;
  v74 = sub_22855CC8C();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v71 - v8;
  v9 = sub_22855DA2C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v71 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v78 = &v71 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v71 - v18;
  MEMORY[0x28223BE20](v17);
  v99 = &v71 - v19;
  v80 = AssociatedConformanceWitness;
  v92 = AssociatedTypeWitness;
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - v22;
  v100 = *(v3 + 24);
  v101 = v3 + 24;
  v24 = v100(v4, v3);
  os_unfair_lock_assert_owner(*(v24 + 16));

  if ((*(v3 + 136))(v4, v3))
  {
    return;
  }

  v79 = v10;
  v89 = *(v3 + 64);
  v90 = v3 + 64;
  v89(v4, v3);
  v25 = sub_22855D44C();

  v95 = v2;
  if (v25 < 1)
  {
LABEL_30:
    v58 = (*(v3 + 112))(v4, v3);
    v59 = v79;
    if (v58)
    {
      v89(v4, v3);
      v60 = sub_22855D44C();

      if (!v60)
      {
        v61 = v78;
        (*(v3 + 32))(v4, v3);
        v62 = v9;
        v63 = v92;
        v64 = *(v92 - 8);
        v65 = v76;
        (*(v64 + 56))(v76, 1, 1, v92);
        (*(v3 + 40))(v65, v4, v3);
        v66 = v100(v4, v3);
        os_unfair_lock_unlock(*(v66 + 16));

        v67 = *(v3 + 56);
        v67(v4, v3);
        os_unfair_recursive_lock_lock_with_options();

        v68 = v77;
        (*(v59 + 16))(v77, v61, v62);
        if ((*(v64 + 48))(v68, 1, v63) == 1)
        {
          (*(v59 + 8))(v68, v62);
        }

        else
        {
          v69 = v72;
          (*(*(v75 - 8) + 56))(v72, 1, 1);
          sub_22855CC4C();
          (*(v73 + 8))(v69, v74);
          (*(v64 + 8))(v68, v63);
        }

        v67(v4, v3);
        os_unfair_recursive_lock_unlock();

        v70 = v100(v4, v3);
        os_unfair_lock_lock(*(v70 + 16));

        (*(v59 + 8))(v78, v62);
      }
    }

    return;
  }

  v26 = *(v3 + 88);
  v86 = v3 + 80;
  v87 = v26;
  v85 = v3 + 32;
  v88 = v3 + 88;
  v97 = v3 + 56;
  v98 = v3 + 104;
  v84 = (v79 + 16);
  v83 = v92 - 8;
  v93 = (v79 + 8);
  v81 = (v21 + 8);
  v82 = v23;
  v94 = v20;
  for (i = v26(v4, v3); ; i = v87(v4, v3))
  {
    v30 = i;
    sub_22855CCBC();
    if (sub_22855CC9C())
    {
      goto LABEL_11;
    }

    if (v30 < 0)
    {
      break;
    }

    if (!v30)
    {
      goto LABEL_30;
    }

LABEL_11:
    v31 = *(v3 + 104);
    v32 = v31(v102, v4, v3);
    v34 = v33;
    v35 = *v33;
    sub_22855CCBC();
    if ((sub_22855CC9C() & 1) == 0)
    {
      sub_22855CCBC();
      if (sub_22855CC9C())
      {
        v36 = sub_22855CCBC();
      }

      else
      {
        if (v35 < 0)
        {
          goto LABEL_38;
        }

        if (!v35)
        {
          goto LABEL_39;
        }

        v36 = v35 - 1;
      }

      *v34 = v36;
    }

    v96 = v31;
    v32(v102, 0);
    v37 = (*(v3 + 80))(v102, v4, v3);
    sub_22855D47C();
    swift_getWitnessTable();
    sub_22855D5EC();
    v37(v102, 0);
    v38 = v99;
    (*(v3 + 32))(v4, v3);
    v39 = v100(v4, v3);
    os_unfair_lock_unlock(*(v39 + 16));

    v40 = *(v3 + 56);
    v40(v4, v3);
    os_unfair_recursive_lock_lock_with_options();

    v41 = v91;
    (*v84)(v91, v38, v9);
    v42 = v92;
    v43 = v9;
    v44 = *(v92 - 8);
    if ((*(v44 + 48))(v41, 1, v92) == 1)
    {
      (*v93)(v41, v43);
      v45 = sub_22855CCAC();
    }

    else
    {
      v46 = sub_22855CC6C();
      v47 = v42;
      v45 = v46;
      (*(v44 + 8))(v41, v47);
    }

    v9 = v43;
    v48 = v96;
    v40(v4, v3);
    os_unfair_recursive_lock_unlock();

    v49 = v100(v4, v3);
    os_unfair_lock_lock(*(v49 + 16));

    v50 = v48(v102, v4, v3);
    v52 = v51;
    v53 = *v51;
    sub_22855CCBC();
    v54 = sub_22855CC9C();
    v28 = v94;
    if ((v54 & 1) == 0)
    {
      sub_22855CCBC();
      v55 = sub_22855CC9C();
      v56 = sub_22855CCBC();
      if (v55)
      {
        v9 = v43;
        v28 = v94;
      }

      else
      {
        v57 = sub_22855CC9C();
        v9 = v43;
        v28 = v94;
        if (v57)
        {
          goto LABEL_27;
        }

        if ((v53 | v45) < 0)
        {
          goto LABEL_40;
        }

        v56 = v53 + v45;
        if (__OFADD__(v53, v45))
        {
LABEL_27:
          v56 = sub_22855CCBC();
        }

        else if (v56 < 0)
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      *v52 = v56;
    }

    v50(v102, 0);
    (*v93)(v99, v9);
    (*v81)(v82, v28);
    v89(v4, v3);
    v29 = sub_22855D44C();

    if (v29 <= 0)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t PendingValuesInner.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v15[-v8];
  v10 = *(a3 + 24);
  v11 = v10(a2, a3);
  os_unfair_lock_lock(*(v11 + 16));

  if (((*(a3 + 136))(a2, a3) & 1) == 0)
  {
    (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
    v12 = (*(a3 + 80))(v15, a2, a3);
    sub_22855D47C();
    sub_22855D45C();
    v12(v15, 0);
  }

  PendingValuesInner.lock_sendPendingValuesIfNeeded()();
  v13 = v10(a2, a3);
  os_unfair_lock_unlock(*(v13 + 16));
}

uint64_t sub_228479BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t))
{
  sub_22855E14C();
  v6 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  v7 = a3(&v9, MEMORY[0x277D84F70] + 8);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

void sub_228479C80(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_228479CE0()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_228479D2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MockUNUserNotificationCenter.init()()
{
  *&v0[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings] = 0;
  v1 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_22847CC9C(MEMORY[0x277D84F90]);
  sub_22847CDCC(0);
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  *(v4 + 16) = v2;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  *&v0[v1] = v4;
  v5 = &v0[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization];
  *v7 = sub_22847C0E0;
  v7[1] = 0;
  v8 = *MEMORY[0x277CCE3A8];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for MockUNUserNotificationCenter();
  return objc_msgSendSuper2(&v10, sel_initWithBundleIdentifier_, v8);
}

id sub_228479EF0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings] = 0;
  v6 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_22847CC9C(MEMORY[0x277D84F90]);
  sub_22847CDCC(0);
  v9 = swift_allocObject();
  *(v9 + 40) = 0;
  *(v9 + 16) = v7;
  *(v9 + 24) = v7;
  *&v3[v6] = v9;
  *(v9 + 32) = v8;
  v10 = &v3[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v3[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v3[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization];
  *v12 = sub_22847C0E0;
  v12[1] = 0;
  if (!a2)
  {
    sub_22855D1AC();
  }

  v13 = sub_22855D17C();

  v16.receiver = v3;
  v16.super_class = type metadata accessor for MockUNUserNotificationCenter();
  v14 = objc_msgSendSuper2(&v16, sel_initWithBundleIdentifier_queue_, v13, a3);

  return v14;
}

void sub_22847A088(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_22855C16C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v45 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v45 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v45 - v19;
  v21 = [a1 trigger];
  if (v21)
  {
    v46 = a2;
    v47 = v4;
    v48 = v21;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      v24 = *(v47 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
      MEMORY[0x28223BE20](v22);
      v45[-2] = a1;
      v25 = v48;
      os_unfair_lock_lock((v24 + 40));
      sub_22847FD7C((v24 + 16));
      os_unfair_lock_unlock((v24 + 40));
      [v23 timeInterval];
      sub_22847A794(a1, v26);
      if (v46)
      {
        v46(0);
      }
    }

    else
    {
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
        v45[0] = a3;
        v45[1] = v45;
        v36 = *(v47 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
        MEMORY[0x28223BE20](v34);
        v45[-2] = a1;
        os_unfair_lock_lock((v36 + 40));
        sub_22847DE5C((v36 + 16));
        os_unfair_lock_unlock((v36 + 40));
        sub_22855C15C();
        v37 = [v35 nextTriggerDate];
        if (v37)
        {
          v38 = v37;
          sub_22855C13C();

          (*(v9 + 32))(v18, v15, v8);
        }

        else
        {
          (*(v9 + 16))(v18, v20, v8);
        }

        v42 = v46;
        sub_22855C14C();
        sub_22847A794(a1, v43);
        if (v42)
        {
          v42(0);
        }

        v44 = *(v9 + 8);
        v44(v18, v8);
        v44(v20, v8);
      }

      else
      {
        v39 = v46;
        if (v46)
        {
          sub_22847DE08();
          v40 = swift_allocError();
          v39();

          v41 = v40;
        }

        else
        {
          v41 = v48;
        }
      }
    }
  }

  else
  {
    sub_22855C15C();
    v27 = a2;
    v28 = sub_22855C10C();
    v29 = sub_22855D17C();
    v30 = sub_22855D39C();
    v31 = [objc_opt_self() notificationWithRequest:a1 date:v28 sourceIdentifier:v29 intentIdentifiers:v30];

    v32 = (*(v9 + 8))(v12, v8);
    v33 = *(v4 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
    MEMORY[0x28223BE20](v32);
    v45[-2] = v31;
    os_unfair_lock_lock(v33 + 10);
    sub_22847DDEC(&v33[4]);
    os_unfair_lock_unlock(v33 + 10);
    if (v27)
    {
      v27(0);
    }
  }
}

uint64_t sub_22847A5B8(void *a1, void *a2)
{
  v3 = a2;
  MEMORY[0x22AAB9400]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22855D3EC();
  }

  return sub_22855D43C();
}

uint64_t sub_22847A634(uint64_t a1, void *a2)
{
  v3 = a2;
  MEMORY[0x22AAB9400]();
  if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22855D3EC();
  }

  return sub_22855D43C();
}

void sub_22847A794(void *a1, double a2)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_22847FBC8(0, &qword_27D83F948, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  sub_22847FBC8(0, &qword_27D83F950, MEMORY[0x277CC9E78], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_22855D9EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FFCB0();
  v16 = v15;
  v40 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22847F9C4(0);
  v20 = MEMORY[0x28223BE20](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 0.0)
  {

    sub_22847AF48(a1);
  }

  else
  {
    v37 = v20;
    v38 = v21;
    sub_22855CDCC();
    sub_22855D9DC();
    (*(v12 + 56))(v10, 1, 1, v11);
    v35 = [objc_opt_self() mainRunLoop];
    v42 = v35;
    v24 = sub_22855D9CC();
    (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
    sub_2283EF310(0, &qword_27D83F960, 0x277CBEB88);
    sub_22840A348(&qword_27D83F968, sub_2283FFCB0, MEMORY[0x277CBCE80]);
    v36 = a1;
    sub_22842B880(&qword_27D83F970, &qword_27D83F960, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v25 = v41;
    sub_22855CECC();
    sub_22847FAC4(v7, &qword_27D83F948, MEMORY[0x277CC9E70]);

    sub_22847FAC4(v10, &qword_27D83F950, MEMORY[0x277CC9E78]);
    (*(v12 + 8))(v14, v11);
    (*(v40 + 8))(v18, v16);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v28 = v36;
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = ObjectType;
    sub_22840A348(&qword_27D83F978, sub_22847F9C4, MEMORY[0x277CBCC48]);
    v29 = v28;
    v30 = v37;
    v31 = sub_22855CF8C();

    v32 = (*(v38 + 8))(v23, v30);
    v33 = *(v25 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
    MEMORY[0x28223BE20](v32);
    *(&v34 - 2) = v29;
    *(&v34 - 1) = v31;
    os_unfair_lock_lock(v33 + 10);
    sub_22847FB40(&v33[4]);
    os_unfair_lock_unlock(v33 + 10);
  }
}

void sub_22847AD98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_22847AF48(a3);
  }

  else
  {
    sub_22855DC6C();
    sub_22855E34C();

    MEMORY[0x22AAB92A0](0xD000000000000016, 0x80000002285702A0);
    sub_22855DEDC();
    __break(1u);
  }
}

uint64_t sub_22847AE94(uint64_t a1, id a2, uint64_t a3)
{
  v5 = [a2 identifier];
  v6 = sub_22855D1AC();
  v8 = v7;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 16);
  sub_22845B1D0(a3, v6, v8, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v11;
  return result;
}

void sub_22847AF48(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState];
  os_unfair_lock_lock((v4 + 40));
  sub_22847E358((v4 + 16));
  os_unfair_lock_unlock((v4 + 40));
  v5 = [a1 trigger];
  if (v5)
  {
    v6 = v5;
    if ([v5 repeats])
    {
      [v2 addNotificationRequest:a1 withCompletionHandler:0];
    }
  }
}

uint64_t sub_22847B000(unint64_t *a1, void *a2)
{
  v5 = sub_22855C16C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2;
  v10 = sub_22847E510(a1, v9);

  if (*a1 >> 62)
  {
    v11 = sub_22855DB4C();
    if (v11 >= v10)
    {
LABEL_3:
      v30[1] = v2;
      sub_2284FD0E8(v10, v11);
      sub_22855C15C();
      v12 = sub_22855C10C();
      v13 = sub_22855D17C();
      v14 = sub_22855D39C();
      v15 = [objc_opt_self() notificationWithRequest:v9 date:v12 sourceIdentifier:v13 intentIdentifiers:v14];

      v16 = (*(v6 + 8))(v8, v5);
      MEMORY[0x22AAB9400](v16);
      if (*((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v11 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v10)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_12:
  sub_22855D3EC();
LABEL_4:
  sub_22855D43C();
  v17 = [v9 identifier];
  v18 = sub_22855D1AC();
  v20 = v19;

  v21 = a1[2];
  if (*(v21 + 16))
  {
    v22 = sub_2283F6D18(v18, v20);
    v24 = v23;

    if ((v24 & 1) != 0 && *(*(v21 + 56) + 8 * v22))
    {

      sub_22855CCFC();
    }
  }

  else
  {
  }

  v25 = [v9 identifier];
  v26 = sub_22855D1AC();
  v28 = v27;

  return sub_2284D203C(1, v26, v28);
}

uint64_t sub_22847B3B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 40));
  return v2;
}

void sub_22847B548(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  sub_2283EF310(0, a3, a4);
  v5 = sub_22855D39C();
  (*(a2 + 16))(a2, v5);
}

uint64_t sub_22847B5C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 40));
  return v2;
}

uint64_t sub_22847B6A4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22847FDB0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_22840FE74(v4, v5);
}

uint64_t sub_22847B744(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22841C0E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_22840FE74(v3, v4);
  return sub_228416CF8(v8, v9);
}

void sub_22847B884(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests;
  v4 = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(a1);
    sub_228416CF8(v5, v6);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
    MEMORY[0x28223BE20](v4);
    os_unfair_lock_lock((v7 + 40));
    sub_22847DEE0((v7 + 16));
    os_unfair_lock_unlock((v7 + 40));
  }
}

uint64_t sub_22847B95C(unint64_t *a1, uint64_t a2)
{

  v4 = sub_22847E9B4(a1, a2);

  if (*a1 >> 62)
  {
    result = sub_22855DB4C();
    v6 = result;
    if (result >= v4)
    {
      return sub_2284FD0E8(v4, v6);
    }
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
      return sub_2284FD0E8(v4, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22847BA0C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22847F364;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_22840FE74(v4, v5);
}

uint64_t sub_22847BAAC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22841C034;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_22840FE74(v3, v4);
  return sub_228416CF8(v8, v9);
}

uint64_t sub_22847BB80(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_22840FE74(*v2, v2[1]);
  return v3;
}

uint64_t sub_22847BBE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_228416CF8(v7, v8);
}

void sub_22847BCA0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications;
  v4 = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(a1);
    sub_228416CF8(v5, v6);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
    MEMORY[0x28223BE20](v4);
    os_unfair_lock_lock(v7 + 10);
    sub_22847DEFC(&v7[4]);
    os_unfair_lock_unlock(v7 + 10);
  }
}

uint64_t sub_22847BD78(uint64_t a1, uint64_t a2)
{

  v4 = sub_22847EE38((a1 + 8), a2);

  v6 = *(a1 + 8);
  if (v6 >> 62)
  {
    result = sub_22855DB4C();
    v7 = result;
    if (result >= v4)
    {
      return sub_2284FD204(v4, v7);
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v4)
    {
      return sub_2284FD204(v4, v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22847BE2C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_22855D3AC();
  v7 = a1;
  a4(v6);
}

void sub_22847BF78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22847C0EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22847F328;
  a2[1] = v6;
}

uint64_t sub_22847C178(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization);
  swift_beginAccess();
  *v6 = sub_22847F2E4;
  v6[1] = v5;
}

uint64_t sub_22847C214()
{
  v1 = (v0 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_22847C26C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id MockUNUserNotificationCenter.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = sub_22855D17C();

  v5 = [v3 initWithBundleIdentifier_];

  return v5;
}

id MockUNUserNotificationCenter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MockUNUserNotificationCenter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22847C5B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22855DB4C();
  }

  return sub_22855DCBC();
}

unint64_t sub_22847C614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847F828(0, &qword_280DED050, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84460]);
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    v5 = MEMORY[0x277D837D0];
    while (1)
    {
      sub_22847F8F4(v4, &v14, &qword_280DED278, v5);
      v6 = v14;
      v7 = v15;
      result = sub_2283F6D18(v14, v15);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_228400400(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847C760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22844BA34(0);
    v3 = sub_22855DF6C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_228443C58(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847C878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22844C4C8(0);
    v3 = sub_22855DF6C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_22844C568(v5);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847C948(uint64_t a1)
{
  sub_22847FC2C(0, &qword_280DE9338, type metadata accessor for HKFeatureIdentifier, MEMORY[0x277D11290]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_22847FCA8(0, &qword_280DE9080, MEMORY[0x277D11290]);
    v8 = sub_22855DF6C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_22847F6C4(v10, v6, &qword_280DE9338, type metadata accessor for HKFeatureIdentifier, MEMORY[0x277D11290]);
      v12 = *v6;
      result = sub_22844C56C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_22855C37C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847CB84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847FCA8(0, &qword_280DE9078, sub_22844C2D4);
    v3 = sub_22855DF6C();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_22844C56C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847CC9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847FB5C(0, &qword_27D83F568, &qword_27D83F570, MEMORY[0x277CBCDA8], MEMORY[0x277D83D88]);
    v3 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2283F6D18(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22847CDCC(uint64_t a1)
{
  if (!qword_27D83F8E8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F8E8);
    }
  }
}

unint64_t sub_22847CE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22840030C(0, &qword_280DE90A0, &qword_280DE9680, MEMORY[0x277D834F8], sub_22847F888);
    v3 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2283F6D18(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847CF80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847F888(0, &qword_280DED048, MEMORY[0x277D84460]);
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    v5 = MEMORY[0x277D84030];
    while (1)
    {
      sub_22847F8F4(v4, v14, &qword_280DE9230, v5);
      result = sub_228443C14(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v3[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_228400400(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D0F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22844C144(0);
    v3 = sub_22855DF6C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2283FB154(v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D1E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847F828(0, &qword_280DE90B0, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
    v3 = sub_22855DF6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2283F6D18(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D340(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2283F6D18(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D43C(uint64_t a1)
{
  sub_22847FC2C(0, &qword_27D83F928, MEMORY[0x277D11BA8], MEMORY[0x277D11C28]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_22844B638(0);
    v8 = sub_22855DF6C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_22847F6C4(v10, v6, &qword_27D83F928, MEMORY[0x277D11BA8], MEMORY[0x277D11C28]);
      result = sub_228443DF4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22855C5CC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D65C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22844BDCC(0);
    v3 = sub_22855DF6C();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_228443AB4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D768(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_22855DF6C();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);
      v10 = v8;
      result = a3(v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v10;
      v13 = v6[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v6[2] = v15;
      if (!--v3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847F46C(0);
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22847F50C(v4, &v11, sub_22847F574);
      v5 = v11;
      result = sub_22844C56C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_228400400(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D970(uint64_t a1)
{
  sub_22847F390(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_22847F3F8(0, &qword_280DEE3C8, type metadata accessor for PluginFeedItem, MEMORY[0x277D84460]);
    v8 = sub_22855DF6C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_22847F50C(v10, v6, sub_22847F390);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2283F6D18(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for PluginFeedItem(0);
      result = sub_22844BC28(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847DB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847FB5C(0, &qword_27D83F578, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
    v3 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2283F6D18(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_22847DC94(uint64_t a1)
{
  v2 = sub_22855C16C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855C15C();
  v6 = sub_22855C10C();
  v7 = sub_22855D17C();
  v8 = sub_22855D39C();
  v9 = [objc_opt_self() notificationWithRequest:a1 date:v6 sourceIdentifier:v7 intentIdentifiers:v8];

  (*(v3 + 8))(v5, v2);
  return v9;
}

unint64_t sub_22847DE08()
{
  result = qword_27D83F908;
  if (!qword_27D83F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F908);
  }

  return result;
}

uint64_t sub_22847E268(uint64_t *a1, int a2)
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

uint64_t sub_22847E2B0(uint64_t result, int a2, int a3)
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

unint64_t sub_22847E304()
{
  result = qword_27D83F910;
  if (!qword_27D83F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F910);
  }

  return result;
}

unint64_t sub_22847E374(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_22855DB4C();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x22AAB9D20](v3, a1);
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = sub_22855D1AC();
    v9 = v8;

    v10 = [a2 identifier];
    v11 = sub_22855D1AC();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = sub_22855E15C();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_22847E510(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_22847E374(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == sub_22855DB4C())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB9D20](v10, v7);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 identifier];
    v14 = sub_22855D1AC();
    v16 = v15;

    v3 = v5;
    v17 = [v5 identifier];
    v18 = sub_22855D1AC();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = sub_22855E15C();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x22AAB9D20](v33, v7);
        v23 = MEMORY[0x22AAB9D20](v10, v7);
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_22847C5B0(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = sub_22847C5B0(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
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
  return sub_22855DB4C();
}

unint64_t sub_22847E820(unint64_t a1, uint64_t a2)
{
  v15 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = sub_22855DB4C();
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v17 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x22AAB9D20](v3, a1);
    }

    else
    {
      if (v3 >= *(v14 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = sub_22855D1AC();
    v9 = v8;

    v16[0] = v7;
    v16[1] = v9;
    MEMORY[0x28223BE20](v10);
    v13[2] = v16;
    LOBYTE(v6) = sub_2284C6D9C(sub_228435468, v13, v15);

    if (v6)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_22847E9B4(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = sub_22847E820(*a1, a2);
  v9 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v32 = a1;
  v33 = a2;
  v11 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v11 == sub_22855DB4C())
      {
        return v2;
      }
    }

    else if (v11 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    v35 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = v9;
      v14 = MEMORY[0x22AAB9D20](v11, v6);
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v13 = v9;
      v14 = *(v6 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = [v14 identifier];
    v17 = sub_22855D1AC();
    v19 = v18;

    v34[0] = v17;
    v34[1] = v19;
    MEMORY[0x28223BE20](v20);
    v31[2] = v34;
    LOBYTE(v16) = sub_2284C6D9C(sub_228435468, v31, v33);
    v9 = v13;

    if ((v16 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v11)
  {
LABEL_9:
    v12 = __OFADD__(v2++, 1);
    if (v12)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if (v35)
  {
    v21 = MEMORY[0x22AAB9D20](v2, v6);
    v22 = MEMORY[0x22AAB9D20](v11, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v23)
    {
      goto LABEL_46;
    }

    if (v11 >= v23)
    {
      goto LABEL_47;
    }

    v24 = *(v6 + 32 + 8 * v11);
    v21 = *(v6 + 32 + 8 * v2);
    v22 = v24;
  }

  v25 = v22;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_22847C5B0(v6);
    v26 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v26) = 0;
  }

  v27 = v6 & 0xFFFFFFFFFFFFFF8;
  v28 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v25;

  if ((v6 & 0x8000000000000000) == 0 && !v26)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_22847C5B0(v6);
  v27 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v11 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v11 >= *(v27 + 16))
    {
      goto LABEL_44;
    }

    v29 = v27 + 8 * v11;
    v30 = *(v29 + 32);
    *(v29 + 32) = v21;

    *v32 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_22855DB4C();
}

unint64_t sub_22847EC90(unint64_t a1, uint64_t a2)
{
  v18 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_22855DB4C();
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAB9D20](v4, a1);
    }

    else
    {
      if (v4 >= *(v16 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = [v5 request];
    v8 = [v7 identifier];

    v9 = sub_22855D1AC();
    v11 = v10;

    v17[0] = v9;
    v17[1] = v11;
    MEMORY[0x28223BE20](v12);
    v15[2] = v17;
    LOBYTE(v9) = sub_2284C6D9C(sub_228435468, v15, v18);

    if (v9)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_22847EE38(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = sub_22847EC90(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v31 = a1;
  v33 = a2;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_22855DB4C())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB9D20](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = [v12 request];
    v15 = [v14 identifier];

    v16 = sub_22855D1AC();
    v18 = v17;

    v32[0] = v16;
    v32[1] = v18;
    MEMORY[0x28223BE20](v19);
    v30[2] = v32;
    LOBYTE(v16) = sub_2284C6D9C(sub_228434EDC, v30, v33);

    if ((v16 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x22AAB9D20](v2, v6);
    v21 = MEMORY[0x22AAB9D20](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v22)
    {
      goto LABEL_46;
    }

    if (v10 >= v22)
    {
      goto LABEL_47;
    }

    v23 = *(v6 + 32 + 8 * v10);
    v20 = *(v6 + 32 + 8 * v2);
    v21 = v23;
  }

  v24 = v21;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_22847C5B0(v6);
    v25 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v25) = 0;
  }

  v26 = v6 & 0xFFFFFFFFFFFFFF8;
  v27 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v24;

  if ((v6 & 0x8000000000000000) == 0 && !v25)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_22847C5B0(v6);
  v26 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v26 + 16))
    {
      goto LABEL_44;
    }

    v28 = v26 + 8 * v10;
    v29 = *(v28 + 32);
    *(v28 + 32) = v20;

    *v31 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_22855DB4C();
}

uint64_t sub_22847F128(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v6 = *&a1[v5];
  if (v6)
  {
    _Block_copy(a2);
    a2[2](a2, v6);
  }

  else
  {
    aBlock[4] = sub_22847F270;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22847BF78;
    aBlock[3] = &block_descriptor_15;
    v7 = _Block_copy(aBlock);
    _Block_copy(a2);

    v9.receiver = a1;
    v9.super_class = type metadata accessor for MockUNUserNotificationCenter();
    objc_msgSendSuper2(&v9, sel_getNotificationSettingsWithCompletionHandler_, v7);
    _Block_release(v7);
  }
}

uint64_t sub_22847F2E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_22847F328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  *(a2 + 8) = v5;
  return result;
}

void sub_22847F390(uint64_t a1)
{
  if (!qword_280DEE3E0)
  {
    type metadata accessor for PluginFeedItem(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DEE3E0);
    }
  }
}

void sub_22847F3F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22847F46C(uint64_t a1)
{
  if (!qword_280DE9058)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    sub_22840A348(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey, &unk_228560274);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9058);
    }
  }
}

uint64_t sub_22847F50C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22847F574(uint64_t a1)
{
  if (!qword_280DE92F0)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE92F0);
    }
  }
}

uint64_t sub_22847F5E0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_22847F654(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_22847F654(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_2283F9B94(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22847F6C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_22847FC2C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_22847F79C(uint64_t a1)
{
  if (!qword_280DE90A8)
  {
    sub_22847F828(255, &qword_280DE96E0, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
    v1 = sub_22855DF7C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE90A8);
    }
  }
}

void sub_22847F828(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D837D0], a3, MEMORY[0x277D837E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22847F888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8, MEMORY[0x277D84038]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22847F8F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_22847F960(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_22847F960(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22847F9C4(uint64_t a1)
{
  if (!qword_27D83F958)
  {
    sub_2283FFCB0();
    sub_2283EF310(255, &qword_27D83F960, 0x277CBEB88);
    sub_22840A348(&qword_27D83F968, sub_2283FFCB0, MEMORY[0x277CBCE80]);
    sub_22842B880(&qword_27D83F970, &qword_27D83F960, 0x277CBEB88, MEMORY[0x277CC9E80]);
    v1 = sub_22855CB9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F958);
    }
  }
}

uint64_t sub_22847FAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22847FBC8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22847FB5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22847FBC8(255, a3, a4, a5);
    v6 = sub_22855DF7C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22847FBC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22847FC2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22847FCA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    a3(255);
    sub_22840A348(&unk_280DE9370, type metadata accessor for HKFeatureIdentifier, &unk_22855FE04);
    v5 = sub_22855DF7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 BasicGeneratorPipeline.domain.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = v1->n128_u64[1];

  v1->n128_u64[1] = v3;
  result = *(a1 + 1);
  v1[1] = result;
  v1[2].n128_u8[0] = v4;
  return result;
}

double BasicGeneratorPipeline.init(generator:domain:)@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_228480340(0, &qword_27D83F980, sub_22847FFA8);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *a2;
  v12 = *(a2 + 24);
  sub_2283F9B10(a1, v16);
  sub_22847FFA8();
  *v15 = *(a2 + 1);
  sub_22855CDCC();
  sub_2284803B0(&qword_27D83F988, &qword_27D83F980, sub_22847FFA8);
  v13 = sub_22855CE6C();
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v8 + 8))(v10, v7);
  *a3 = v13;
  *(a3 + 8) = v11;
  result = v15[0];
  *(a3 + 16) = *v15;
  *(a3 + 32) = v12;
  return result;
}

unint64_t sub_22847FFA8()
{
  result = qword_280DE9FB0;
  if (!qword_280DE9FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE9FB0);
  }

  return result;
}

double _s14HealthPlatform27BasicSharableModelGeneratorV6domainAA0F6DomainVvg_0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;

  return result;
}

uint64_t static BasicGenerator.empty.getter@<X0>(uint64_t a1@<X8>)
{
  sub_228480340(0, &qword_280DEE3F0, sub_2284773B4);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_228429B98(MEMORY[0x277D84F90]);
  v9 = sub_228428BF8(v7);
  v12[1] = v7;
  sub_2284773B4();
  sub_22855CDCC();
  sub_2284803B0(qword_280DEE3F8, &qword_280DEE3F0, sub_2284773B4);
  v10 = sub_22855CE6C();
  result = (*(v4 + 8))(v6, v3);
  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  return result;
}

double BasicGenerator.init(changes:domain:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_228480340(0, &qword_280DEE3F0, sub_2284773B4);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *a2;
  v12 = *(a2 + 24);
  v16 = a1;
  sub_2284773B4();
  *v15 = *(a2 + 1);
  sub_22855CDCC();
  sub_2284803B0(qword_280DEE3F8, &qword_280DEE3F0, sub_2284773B4);
  v13 = sub_22855CE6C();
  (*(v8 + 8))(v10, v7);
  *a3 = v13;
  *(a3 + 8) = v11;
  result = v15[0];
  *(a3 + 16) = *v15;
  *(a3 + 32) = v12;
  return result;
}

void sub_228480340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855CDBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 BasicGenerator.init(publisher:domain:)@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 24);
  a3->n128_u64[0] = a1;
  a3->n128_u64[1] = v3;
  result = *(a2 + 8);
  a3[1] = result;
  a3[2].n128_u8[0] = v4;
  return result;
}

uint64_t sub_2284803B0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228480340(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_228480424(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22848046C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void HealthPlatformOrchestrationContext.feedItemStorage(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[4] = a5;
  v11 = sub_22855C73C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v15 = *(*(a4 + 16) + 16);
  v28 = v5;
  v16 = v15(a3);
  if (v16)
  {
    v17 = v16;
    v18 = [v16 profileIdentifier];
    v19 = _sSo11NSPredicateC14HealthPlatformE24feedItemStoragePredicate3for17profileIdentifierAB0B13Orchestration8Executor_p_So09HKProfileJ0CtFZ_0(a1, a2, v18);

    HealthPlatformOrchestrationContext.feedItemStorage(for:scope:)(a1, a2, v19, a3, v27);
  }

  else
  {
    v20 = sub_228439BBC();
    v26[2] = " has been deallocated!";
    v26[3] = v20;
    sub_22840A70C(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_228560580;
    swift_getObjectType();
    sub_22855CA1C();
    v22 = sub_22855C72C();
    v26[1] = v6;
    v24 = v23;
    (*(v12 + 8))(v14, v11);
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_22840A7C8();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v25 = sub_22855D62C();
    HealthPlatformOrchestrationContext.feedItemStorage(for:scope:)(a1, a2, v25, a3, v27);
  }
}

void HealthPlatformOrchestrationContext.feedItemStorage(for:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_228480EC0();
  if (!v5)
  {
    (*(a5 + 24))(a1, a2, v11, v12, a3, a4, a5);
  }
}

void HealthPlatformOrchestrationContext.feedItemStorageScopedToAgnosticProfile(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _sSo11NSPredicateC14HealthPlatformE42feedItemStoragePredicateForAgnosticProfile3forAB0B13Orchestration8Executor_p_tFZ_0(a1, a2);
  HealthPlatformOrchestrationContext.feedItemStorage(for:scope:)(a1, a2, v8, a3, a4);
}

uint64_t HealthPlatformOrchestrationContext.sharableModelStorage(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_228480EC0();
  (*(a6 + 56))();
}

uint64_t HealthPlatformOrchestrationContext.sharableModelStorage(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_228480948, 0, 0);
}

uint64_t sub_228480948()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = sub_2283F9B94(0, &qword_280DEBC60, &protocol descriptor for SharableModelStorage);
  *v4 = v0;
  v4[1] = sub_228480A64;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001ALL, 0x80000002285702E0, sub_22848100C, v2, v5);
}

uint64_t sub_228480A64()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_228480BA0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_228480BA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228480C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v12 + 16))(&v18 - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  HealthPlatformOrchestrationContext.sharableModelStorage(for:completion:)(a3, a4, sub_2284810B4, v16, a5, v19);
}

uint64_t sub_228480D8C(uint64_t a1)
{
  sub_228481140(a1, v3);
  if (v4)
  {
    v2[0] = *&v3[0];
    sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);
    return sub_22855D4AC();
  }

  else
  {
    sub_2283FAB3C(v3, v2);
    sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);
    return sub_22855D4BC();
  }
}

void HealthPlatformOrchestrationContext.sharableModelReadableStorage(for:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_228480EC0();
  if (!v5)
  {
    (*(a5 + 64))();
  }
}

void sub_228480EC0()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22855D1AC();
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }
}

uint64_t sub_228480F94(uint64_t a1)
{
  sub_22848101C(0, &qword_280DE8EA8, MEMORY[0x277D84C48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22848101C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_2283F9B94(255, &qword_280DEBC60, &protocol descriptor for SharableModelStorage);
    v7 = sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2284810B4(uint64_t a1)
{
  sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);

  return sub_228480D8C(a1);
}

uint64_t sub_228481140(uint64_t a1, uint64_t a2)
{
  sub_22848101C(0, &qword_280DE8EA8, MEMORY[0x277D84C48]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2284811C0()
{
  result = qword_27D840820;
  if (!qword_27D840820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840820);
  }

  return result;
}

void FeedItemNotificationManagerStore.init(domain:primaryHealthStore:)(void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_22855BDCC();
  swift_allocObject();
  *a4 = sub_22855BDBC();
  sub_22855BD9C();
  swift_allocObject();
  a4[1] = sub_22855BD8C();
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  a4[2] = v6;
  a4[3] = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v9 = a3;
  v10 = sub_22855D17C();

  v11 = [v8 initWithCategory:1 domainName:v10 healthStore:v9];

  a4[4] = v11;
}

void FeedItemNotificationManagerStore.addOrUpdate(_:)(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = sub_22855C1DC();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  v34[1] = *(a1 + 16);
  v34[2] = v7;
  v35 = *(a1 + 48);
  v34[0] = *a1;
  v8 = *(v1 + 4);
  v30 = v1[1];
  v29 = v30;
  os_unfair_lock_lock(*(v30 + 16));
  v9 = *&v34[0];
  v28 = *v1;
  v32[0] = v28;
  v32[1] = v30;
  v33 = v8;
  v10 = sub_2284816C0(*&v34[0]);
  v11 = sub_228429C3C(v10);

  v31 = v11;
  sub_22842B9BC(v34, v32);
  sub_2284842E4(v32, v34);
  v12 = *&v32[0];

  v13 = v31;
  v14 = *(v31 + 16);
  if (v14)
  {
    v15 = sub_228462484(*(v31 + 16), 0);
    v16 = sub_2284628F0(v32, (v15 + 4), v14, v13);
    sub_228407958(*&v32[0]);
    if (v16 == v14)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_5:
  *&v32[0] = v15;
  sub_22848CB7C();
  sub_22848CE10(&qword_27D83F990, sub_22848CBCC, MEMORY[0x277D83948]);
  v17 = sub_22855BDAC();
  v19 = v18;

  if (!v2)
  {
    v20 = sub_22855C08C();
    if (v9)
    {
      v21 = [v9 identifier];
      sub_22855C1BC();

      sub_22855C17C();
      (*(v27 + 8))(v6, v4);
    }

    v22 = sub_22855D17C();

    *&v32[0] = 0;
    v23 = [v8 setData:v20 forKey:v22 error:v32];

    if (v23)
    {
      v24 = *&v32[0];
    }

    else
    {
      v25 = *&v32[0];
      sub_22855BF3C();

      swift_willThrow();
    }

    sub_22842B38C(v17, v19);
  }

  os_unfair_lock_unlock(*(v29 + 16));
}

uint64_t sub_2284816C0(void *a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = [a1 identifier];
    sub_22855C1BC();

    sub_22855C17C();
    (*(v3 + 8))(v5, v2);
  }

  v7 = sub_22855D77C();
  v9 = v8;

  if (v9 >> 60 == 15)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22848CB7C();
  sub_22848CE10(&qword_27D83F9B0, sub_22848CE7C, MEMORY[0x277D83978]);
  sub_22855BD7C();
  sub_22842B378(v7, v9);
  return v11[2];
}

void sub_228481AF0(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v29 = v4;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v27 = v5;
  v28 = v9;
  while (v8)
  {
LABEL_11:
    sub_2283F6E48(*(v29 + 56) + ((v10 << 11) | (32 * __clz(__rbit64(v8)))), v33);
    sub_228400400(v33, &v32);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_22848CDBC();
      swift_allocError();
      swift_willThrow();

      return;
    }

    sub_22848CB7C();
    v34 = v3;
    sub_22842B3E0(v30, v31);
    sub_22842B3E0(v30, v31);
    sub_22848CE10(&qword_27D83F9B0, sub_22848CE7C, MEMORY[0x277D83978]);
    v14 = v34;
    sub_22855BD7C();
    if (v14)
    {
      sub_22842B38C(v30, v31);
      sub_22842B38C(v30, v31);

      swift_willThrow();

      sub_22842B38C(v30, v31);
      return;
    }

    sub_22842B38C(v30, v31);
    v15 = v11;
    v34 = v31;
    sub_22842B38C(v30, v31);
    v16 = v32;
    v17 = *(v32 + 16);
    v18 = *(v11 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v21 = *(v15 + 3) >> 1, v21 >= v19))
    {
      v5 = v27;
      v11 = v15;
    }

    else
    {
      if (v18 <= v19)
      {
        v22 = v18 + v17;
      }

      else
      {
        v22 = v18;
      }

      v11 = sub_2284267E0(isUniquelyReferenced_nonNull_native, v22, 1, v15);
      v21 = *(v11 + 3) >> 1;
      v5 = v27;
    }

    v9 = v28;
    if (*(v16 + 16))
    {
      if (v21 - *(v11 + 2) < v17)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      v3 = 0;
      v12 = v34;
      if (v17)
      {
        v23 = *(v11 + 2);
        v24 = __OFADD__(v23, v17);
        v25 = v23 + v17;
        if (v24)
        {
          goto LABEL_33;
        }

        *(v11 + 2) = v25;
      }
    }

    else
    {

      v3 = 0;
      v12 = v34;
      if (v17)
      {
        goto LABEL_31;
      }
    }

    v8 &= v8 - 1;
    sub_22842B38C(v30, v12);
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      *a2 = v11;
      return;
    }

    v8 = *(v5 + 8 * v13);
    ++v10;
    if (v8)
    {
      v10 = v13;
      goto LABEL_11;
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
}

uint64_t sub_228481E58(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485488(v7, result + 1, &qword_27D83F7D0, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284863FC(v20 + 1, &qword_27D83F7D0, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2284893F0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D83F7D0, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2284820F0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for DataType();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485234(v7, result + 1, sub_22848D4B0, type metadata accessor for DataType, sub_22848D4B0);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284858F4(v20 + 1, sub_22848D4B0);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for DataType();
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_228487E10(v18, v13, isUniquelyReferenced_nonNull_native, sub_22848D4B0, type metadata accessor for DataType, sub_22848D4B0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228482394(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22855C33C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20], MEMORY[0x277D10C28]);
  v33 = a2;
  v11 = sub_22855D13C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22840A390(&qword_27D83F580, MEMORY[0x277D10C20], MEMORY[0x277D10C30]);
      v21 = sub_22855D16C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_228487B44(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_228482674(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for MeasureIdentifierManagedObject();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485234(v7, result + 1, sub_22848D388, type metadata accessor for MeasureIdentifierManagedObject, sub_22848D388);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284858F4(v20 + 1, sub_22848D388);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for MeasureIdentifierManagedObject();
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_228487E10(v18, v13, isUniquelyReferenced_nonNull_native, sub_22848D388, type metadata accessor for MeasureIdentifierManagedObject, sub_22848D388);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228482918(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for Keyword();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485234(v7, result + 1, sub_22848D2F4, type metadata accessor for Keyword, sub_22848D2F4);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284858F4(v20 + 1, sub_22848D2F4);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for Keyword();
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_228487E10(v18, v13, isUniquelyReferenced_nonNull_native, sub_22848D2F4, type metadata accessor for Keyword, sub_22848D2F4);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228482BBC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for Profile();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485234(v7, result + 1, sub_22848D260, type metadata accessor for Profile, sub_22848D260);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284858F4(v20 + 1, sub_22848D260);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for Profile();
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_228487E10(v18, v13, isUniquelyReferenced_nonNull_native, sub_22848D260, type metadata accessor for Profile, sub_22848D260);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228482E60(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22855E22C();
  sub_22855D20C();
  v8 = sub_22855E27C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22855E15C() & 1) != 0)
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

    sub_228487F88(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_228482FB0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for SharableModelReference();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485234(v7, result + 1, sub_22848D16C, type metadata accessor for SharableModelReference, sub_22848D16C);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284858F4(v20 + 1, sub_22848D16C);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SharableModelReference();
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_228487E10(v18, v13, isUniquelyReferenced_nonNull_native, sub_22848D16C, type metadata accessor for SharableModelReference, sub_22848D16C);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228483254(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485488(v7, result + 1, &qword_280DE91E8, &qword_280DED160, 0x277CBE448, &qword_280DED158);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284863FC(v20 + 1, &qword_280DE91E8, &qword_280DED160, 0x277CBE448, &qword_280DED158);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2284893F0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_280DE91E8, &qword_280DED160, 0x277CBE448, &qword_280DED158);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2284834EC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485488(v7, result + 1, &qword_280DE9200, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284863FC(v20 + 1, &qword_280DE9200, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2284893F0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_280DE9200, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228483784(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_22855D1AC();
  sub_22855E22C();
  sub_22855D20C();
  v7 = sub_22855E27C();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_22855D1AC();
      v13 = v12;
      if (v11 == sub_22855D1AC() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_22855E15C();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_228488108(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_228483930(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_22855E22C();
  ContentKind.rawValue.getter();
  sub_22855D20C();

  v6 = sub_22855E27C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_82:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_2284882F0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
    result = 1;
    goto LABEL_85;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE500000000000000;
    v11 = 0x7472656C61;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        break;
      case 2:
        v10 = 0xE300000000000000;
        v11 = 7368801;
        break;
      case 3:
        v10 = 0xE700000000000000;
        v11 = 0x656C6369747261;
        break;
      case 4:
        v10 = 0xE800000000000000;
        v11 = 0x79726F6765746163;
        break;
      case 5:
        v10 = 0xE400000000000000;
        v11 = 1635017060;
        break;
      case 6:
        v11 = 0x67676F4C61746164;
        v10 = 0xEB00000000676E69;
        break;
      case 7:
        v11 = 0x6D6D755361746164;
        v10 = 0xEB00000000797261;
        break;
      case 8:
        v11 = 0xD000000000000010;
        v10 = 0x800000022856CF30;
        break;
      case 9:
        v11 = 0xD000000000000010;
        v10 = 0x800000022856CF50;
        break;
      case 0xA:
        v11 = 0xD000000000000010;
        v10 = 0x800000022856CF70;
        break;
      case 0xB:
        v11 = 0x5365727574616566;
        v10 = 0xED00007375746174;
        break;
      case 0xC:
        v10 = 0xE900000000000074;
        goto LABEL_21;
      case 0xD:
        v10 = 0xEF68637261655374;
LABEL_21:
        v11 = 0x6867696C68676968;
        break;
      case 0xE:
        v11 = 0x697461676976616ELL;
        v10 = 0xEA00000000006E6FLL;
        break;
      case 0xF:
        v10 = 0xE600000000000000;
        v11 = 0x617461446F6ELL;
        break;
      case 0x10:
        v11 = 0x726568746FLL;
        break;
      case 0x11:
        v11 = 0x6D726F6674616C70;
        v10 = 0xED00007472656C41;
        break;
      case 0x12:
        v11 = 0x6F69746F6D6F7270;
        v10 = 0xE90000000000006ELL;
        break;
      case 0x13:
        v10 = 0xE600000000000000;
        v11 = 0x74706D6F7270;
        break;
      case 0x14:
        v10 = 0xE700000000000000;
        v11 = 0x656C69666F7270;
        break;
      case 0x15:
        v11 = 0x6E6F6974616C6572;
        v10 = 0xEC00000070696873;
        break;
      case 0x16:
        v10 = 0xE800000000000000;
        v11 = 0x73676E6974746573;
        break;
      case 0x17:
        v10 = 0xE600000000000000;
        v11 = 0x657461647075;
        break;
      case 0x18:
        v10 = 0xE700000000000000;
        v11 = 0x72616265646973;
        break;
      default:
        v11 = 0xD000000000000011;
        v10 = 0x800000022856CEE0;
        break;
    }

    v12 = 0xE500000000000000;
    v13 = 0x7472656C61;
    switch(a2)
    {
      case 1:
        goto LABEL_75;
      case 2:
        v12 = 0xE300000000000000;
        if (v11 != 7368801)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 3:
        v12 = 0xE700000000000000;
        v16 = 0x6C6369747261;
        goto LABEL_54;
      case 4:
        v12 = 0xE800000000000000;
        if (v11 != 0x79726F6765746163)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 5:
        v12 = 0xE400000000000000;
        if (v11 != 1635017060)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 6:
        v17 = 0x67676F4C61746164;
        v18 = 6778473;
        goto LABEL_64;
      case 7:
        v17 = 0x6D6D755361746164;
        v18 = 7959137;
LABEL_64:
        v12 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v11 != v17)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 8:
        v12 = 0x800000022856CF30;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 9:
        v12 = 0x800000022856CF50;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 10:
        v12 = 0x800000022856CF70;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 11:
        v14 = 0x5365727574616566;
        v15 = 0x7375746174;
        goto LABEL_51;
      case 12:
        v12 = 0xE900000000000074;
        goto LABEL_61;
      case 13:
        v12 = 0xEF68637261655374;
LABEL_61:
        if (v11 != 0x6867696C68676968)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 14:
        v12 = 0xEA00000000006E6FLL;
        if (v11 != 0x697461676976616ELL)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 15:
        v12 = 0xE600000000000000;
        if (v11 != 0x617461446F6ELL)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 16:
        if (v11 != 0x726568746FLL)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 17:
        v14 = 0x6D726F6674616C70;
        v15 = 0x7472656C41;
LABEL_51:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v11 != v14)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 18:
        v12 = 0xE90000000000006ELL;
        if (v11 != 0x6F69746F6D6F7270)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 19:
        v12 = 0xE600000000000000;
        v13 = 0x74706D6F7270;
LABEL_75:
        if (v11 == v13)
        {
          goto LABEL_76;
        }

        goto LABEL_77;
      case 20:
        v12 = 0xE700000000000000;
        v16 = 0x6C69666F7270;
LABEL_54:
        if (v11 != (v16 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 21:
        v12 = 0xEC00000070696873;
        if (v11 != 0x6E6F6974616C6572)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 22:
        v12 = 0xE800000000000000;
        if (v11 != 0x73676E6974746573)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 23:
        v12 = 0xE600000000000000;
        if (v11 != 0x657461647075)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 24:
        v12 = 0xE700000000000000;
        if (v11 != 0x72616265646973)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      default:
        v12 = 0x800000022856CEE0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_77;
        }

LABEL_76:
        if (v10 != v12)
        {
LABEL_77:
          v19 = sub_22855E15C();

          if (v19)
          {
            goto LABEL_84;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_82;
          }

          continue;
        }

LABEL_84:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_85:
        *a1 = a2;
        return result;
    }
  }
}