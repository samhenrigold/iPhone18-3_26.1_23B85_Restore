uint64_t sub_1B7514808()
{
  v1 = *(v0 + 52);
  v2 = *(v0 + 608);
  v3 = *(v0 + 592);
  v4 = *(v0 + 51);
  sub_1B73F1960(*(v0 + 560), *(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 50));
  sub_1B7201CF8(v3, v4);
  sub_1B7201D10(v2, v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B75148AC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_1B77FFA18();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v10 ^ 1u, 1, AssociatedTypeWitness);
}

void sub_1B7514A04(void *a1, id a2)
{
  v5 = a1[2];
  if (!v5)
  {
    sub_1B78006E8();
    return;
  }

  v6 = v3;
  v18 = *v3;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = v8;
    while (1)
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        sub_1B7800C58();
        goto LABEL_14;
      }

      sub_1B77FF4F8();
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }

      sub_1B7514E2C(a2, v6, &v19);
      v4 = v19;
      if (v19)
      {
        break;
      }

      ++v10;
      if (v8 == v5)
      {
        goto LABEL_12;
      }
    }

    MEMORY[0x1B8CA4F20](v11);
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    v9 = v20;
  }

  while (v8 != v5);
LABEL_12:
  a2 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7807CD0;
  *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A40, &unk_1B78388A0);
  *(v13 + 64) = sub_1B728216C(&qword_1EB993A48, &qword_1EB993A40, &unk_1B78388A0, MEMORY[0x1E6969E28]);
  *(v13 + 32) = v9;
  *(v12 + 32) = sub_1B78010E8();
  v20 = v12;
  v14 = *(v6 + qword_1EDB08728);
  if (!v14)
  {
    goto LABEL_15;
  }

  v4 = v14;
  MEMORY[0x1B8CA4F20]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_19;
  }

LABEL_14:
  sub_1B7800C88();

LABEL_15:
  v15 = sub_1B7800C18();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  [a2 setPredicate_];
  [a2 setReturnsObjectsAsFaults_];
  v17 = [*(*(v6 + qword_1EDB08748) + 16) newBackgroundContext];
  MEMORY[0x1EEE9AC00](v17);
  sub_1B7800CB8();
  sub_1B7801468();
}

void sub_1B7514E2C(void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = sub_1B77FF3F8();
  v8 = [a2 managedObjectIDForURIRepresentation_];

  if (v8)
  {
    if (![v8 isTemporaryID])
    {
      v9 = [v8 persistentStore];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 identifier];

        if (v11)
        {
          v12 = sub_1B7800868();
          v14 = v13;

          v15 = *(a3 + qword_1EDB08730 + 8);
          if (v15)
          {
            if (v12 == *(a3 + qword_1EDB08730) && v15 == v14)
            {

              goto LABEL_14;
            }

            v17 = sub_1B78020F8();

            if (v17)
            {
              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }
    }

    v8 = 0;
  }

LABEL_14:
  *a4 = v8;
}

void sub_1B7514F78(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v13[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v13];

  if (v8)
  {
    v9 = v13[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60, &qword_1B78388B0);
    v10 = sub_1B7801498();
    if (!v4)
    {
      v13[0] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996838, &qword_1B78388B8);
      sub_1B728216C(&unk_1EB996840, &qword_1EB996838, &qword_1B78388B8, MEMORY[0x1E69E6328]);
      v11 = sub_1B7800B28();

      *a4 = v11;
    }
  }

  else
  {
    v12 = v13[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t sub_1B751515C@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = swift_dynamicCastUnknownClass();
  if (v7)
  {
    v8 = v7;
    v9 = *(a2 + qword_1EDB08740);
    swift_unknownObjectRetain();
    v9(v8);
    if (!v3)
    {
      (*(*(*(v6 + 128) - 8) + 56))(a3, 0, 1);
      return swift_unknownObjectRelease();
    }

    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v10 = sub_1B78000B8();
    __swift_project_value_buffer(v10, qword_1EDAF6590);
    swift_unknownObjectRetain();
    v11 = sub_1B7800098();
    v12 = sub_1B78011D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v8;
      *v14 = v8;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_1B7198000, v11, v12, "Unable to convert %@ into a model", v13, 0xCu);
      sub_1B7205418(v14, &qword_1EB9910D0, &unk_1B780D910);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v15 = sub_1B78000B8();
    __swift_project_value_buffer(v15, qword_1EDAF6590);
    v11 = sub_1B7800098();
    v16 = sub_1B78011F8();
    if (os_log_type_enabled(v11, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B7198000, v11, v16, "Fetch returned non managed objects", v17, 2u);
      MEMORY[0x1B8CA7A40](v17, -1, -1);
    }
  }

  return (*(*(*(v6 + 128) - 8) + 56))(a3, 1, 1);
}

uint64_t sub_1B75154D8()
{

  v1 = qword_1EDB08750;
  v2 = sub_1B78013E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B7201CF8(*(v0 + qword_1EDB086F0), *(v0 + qword_1EDB086F0 + 8));

  sub_1B7205418(v0 + qword_1EDB086F8, &unk_1EB993A10, &qword_1B780B4A0);

  v3 = qword_1EDB08700;
  v4 = sub_1B78000B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B7515660()
{
  v0 = sub_1B74E3474();

  v1 = qword_1EDB08750;
  v2 = sub_1B78013E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B7201CF8(*(v0 + qword_1EDB086F0), *(v0 + qword_1EDB086F0 + 8));

  sub_1B7205418(v0 + qword_1EDB086F8, &unk_1EB993A10, &qword_1B780B4A0);

  v3 = qword_1EDB08700;
  v4 = sub_1B78000B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B75157E8()
{
  sub_1B7515660();

  return swift_deallocClassInstance();
}

unint64_t sub_1B751583C()
{
  result = qword_1EDAF9658;
  if (!qword_1EDAF9658)
  {
    result = swift_getWitnessTable(asc_1B783883C, &type metadata for AuxiliaryEntityPredicateProvider.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9658);
  }

  return result;
}

void sub_1B75158A0(uint64_t a1, __n128 a2)
{
  sub_1B78013E8();
  if (v2 <= 0x3F)
  {
    sub_1B73F170C(319);
    if (v3 <= 0x3F)
    {
      sub_1B78000B8();
      if (v4 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B7515A3C()
{
  result = qword_1EB996808;
  if (!qword_1EB996808)
  {
    result = swift_getWitnessTable(a5_8, &type metadata for AuxiliaryEntityPredicateProvider.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996808);
  }

  return result;
}

unint64_t sub_1B7515A94()
{
  result = qword_1EDAF9640;
  if (!qword_1EDAF9640)
  {
    result = swift_getWitnessTable(aM_15, &type metadata for AuxiliaryEntityPredicateProvider.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9640);
  }

  return result;
}

unint64_t sub_1B7515AEC()
{
  result = qword_1EDAF9648;
  if (!qword_1EDAF9648)
  {
    result = swift_getWitnessTable(byte_1B78387AC, &type metadata for AuxiliaryEntityPredicateProvider.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDAF9648);
  }

  return result;
}

uint64_t AccountOriginType.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x6E6F43206B6E6142;
  v3 = 0x614320656C707041;
  v4 = 0x615320656C707041;
  if (v1 != 3)
  {
    v4 = 0x6C6F686563616C50;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614320656C707041;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

FinanceKit::AccountOriginType_optional __swiftcall AccountOriginType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B7515C94()
{
  result = qword_1EB996860;
  if (!qword_1EB996860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountOriginType, &type metadata for AccountOriginType, v0, v1);
    atomic_store(result, &qword_1EB996860);
  }

  return result;
}

unint64_t sub_1B7515DA4()
{
  result = qword_1EB996868;
  if (!qword_1EB996868)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996870, &qword_1B78389D0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB996868);
  }

  return result;
}

uint64_t sub_1B7515E18()
{
  v1 = *v0;
  v2 = 0x6E6F43206B6E6142;
  v3 = 0x614320656C707041;
  v4 = 0x615320656C707041;
  if (v1 != 3)
  {
    v4 = 0x6C6F686563616C50;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614320656C707041;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B7515EEC()
{
  result = qword_1EB996878;
  if (!qword_1EB996878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccountOriginType, &type metadata for AccountOriginType, v0, v1);
    atomic_store(result, &qword_1EB996878);
  }

  return result;
}

id ManagedOrderDashboardItem.backingItem.getter@<X0>(void *a1@<X8>)
{
  result = [v1 classicOrder];
  if (result)
  {
    goto LABEL_4;
  }

  v4 = [v1 extractedOrder];
  if (v4)
  {
    result = (v4 | 0x8000000000000000);
LABEL_4:
    *a1 = result;
    return result;
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t static ManagedOrderDashboardItem.showsAsActiveUntilDate(orderUpdateDate:calendar:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Duration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FFC88();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = sub_1B77FFCF8();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_1B77FECD8();
  sub_1B77FFC08();
  v17 = sub_1B77FF988();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v5, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B720D780(v14);
    return (*(v18 + 32))(a2, v5, v17);
  }

  return result;
}

void sub_1B7516308(id *a1)
{
  v1 = [*a1 storedArchiveDate];
  sub_1B77FF928();
}

uint64_t sub_1B7516368@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 storedOrderUpdateDate];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF928();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF988();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B751640C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7280900(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF8B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setStoredOrderUpdateDate_];
}

void *ManagedOrderDashboardItem.__allocating_init(backingItem:context:)(void **a1, void *a2)
{
  v5 = sub_1B77FFCF8();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFC88();
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1B77FF988();
  v11 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = objc_allocWithZone(v2);
  v40 = a2;
  v16 = [v15 initWithContext_];
  v17 = v16;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v28 = v16;
    v37 = v28;
    v19 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    [v28 setExtractedOrder_];
    v29 = [v19 orderContent];
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    ManagedExtractedOrderContent.archiveDate(calendar:timeZone:)(v10, v7, v13);

    (*(v38 + 8))(v7, v5);
    v30 = *(v39 + 8);
    v30(v10, v8);
    v31 = sub_1B77FF8B8();
    v39 = *(v11 + 8);
    (v39)(v13, v41);
    v32 = v37;
    [v37 setStoredArchiveDate_];

    sub_1B77FF938();
    sub_1B77FFBC8();
    LOBYTE(v31) = ManagedExtractedOrder.showsAsActive(now:calendar:)(v13, v10);
    v30(v10, v8);
    v23 = v41;
    v22 = v39;
    (v39)(v13, v41);
    [v32 setStoredShowsAsActive_];
    v33 = [v19 orderContent];
    v34 = [v33 orderUpdateDate];

    sub_1B77FF928();
    v27 = sub_1B77FF8B8();
    goto LABEL_5;
  }

  v18 = v16;
  v19 = v14;
  [v18 setClassicOrder_];
  v20 = [v19 archiveDate];
  sub_1B77FF928();

  v21 = sub_1B77FF8B8();
  v22 = *(v11 + 8);
  v23 = v41;
  v22(v13, v41);
  [v18 setStoredArchiveDate_];

  [v18 setStoredShowsAsActive_];
  v24 = [v19 ecommerceOrderContent];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 updatedDate];
    sub_1B77FF928();

    v27 = sub_1B77FF8B8();
LABEL_5:
    v22(v13, v23);
    [v17 setStoredOrderUpdateDate_];

    return v17;
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

id ManagedOrderDashboardItem.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderDashboardItem.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderDashboardItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ManagedOrderDashboardItem.priority.getter(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B77FFCF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFC88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 classicOrder];
  if (v12)
  {
    v17 = v12;
    ManagedOrder.priority.getter(a1);
    v13 = v17;
  }

  else
  {
    v14 = [v2 extractedOrder];
    if (v14)
    {
      v15 = v14;
      sub_1B77FFBC8();
      sub_1B77FFCC8();
      sub_1B75523A4(v11, v7, a1);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      sub_1B7801C88();
      __break(1u);
    }
  }
}

id static ManagedOrderDashboardItem.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderDashboardItem.fetchShowsAsActiveRequest()()
{
  v6.receiver = swift_getObjCClassFromMetadata();
  v6.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v0 = objc_msgSendSuper2(&v6, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = sub_1B7205540(0, &qword_1EDAFC4C8, 0x1E696AD98);
  v3 = sub_1B7801528();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1B7451BE4();
  *(v1 + 32) = v3;
  v4 = sub_1B78010E8();
  [v0 setPredicate_];

  return v0;
}

uint64_t static ManagedOrderDashboardItem.predicateForShowsAsActive()()
{
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B7205540(0, &qword_1EDAFC4C8, 0x1E696AD98);
  v2 = sub_1B7801528();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1B7451BE4();
  *(v0 + 32) = v2;
  return sub_1B78010E8();
}

unint64_t static ManagedOrderDashboardItem.existingItemForClassicOrder(with:in:)(__int128 *a1)
{
  v2 = v1;
  v11 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v5 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v12 = v11;
  v13 = v3;
  v14 = v4;
  v6 = _s10FinanceKit25ManagedOrderDashboardItemC012predicateForfh7ClassicD04withSo11NSPredicateCAA014FullyQualifiedD10IdentifierV_tFZ_0(&v12);
  [v5 setPredicate_];

  result = sub_1B7801498();
  if (v1)
  {

    return v2;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = sub_1B7801958();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v2 = v8;

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t static ManagedOrderDashboardItem.existingItemForExtractedOrder(with:in:)(uint64_t a1, uint64_t a2)
{
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v4 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  v6 = "storedShowsAsActive == %@";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7807CD0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B721FF04();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  *(v5 + 32) = sub_1B78010E8();
  v8 = sub_1B7800C18();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v4 setPredicate_];
  v10 = v16;
  result = sub_1B7801498();
  if (v10)
  {

    return v6;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v13 = result;
  v14 = sub_1B7801958();
  result = v13;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);
LABEL_8:
    v6 = v12;

    return v6;
  }

  __break(1u);
  return result;
}

id static ManagedOrderDashboardItem.predicateForItemForExtractedOrder(with:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B721FF04();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  *(v4 + 32) = sub_1B78010E8();
  v6 = sub_1B7800C18();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v7;
}

id static ManagedOrderDashboardItem.predicateForItems(withMessageID:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  *(v4 + 32) = sub_1B78010E8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  *(v4 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v10;
}

uint64_t static ManagedOrderDashboardItem.predicateForDashboardItemsWithObjectIDs(_:)(uint64_t a1)
{
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994ED0, &qword_1B782C410);
  *(v2 + 64) = sub_1B7451C4C();
  *(v2 + 32) = a1;

  return sub_1B78010E8();
}

uint64_t ManagedOrderDashboardItem.updateShowsAsActiveIfNeeded(now:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FFC88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 classicOrder];
  if (v12)
  {
    v13 = v12;
    sub_1B77FFBC8();
    v14 = _s10FinanceKit12ManagedOrderC13showsAsActive5order3now8calendarSbAC_10Foundation4DateVAH8CalendarVtFZ_0(v13, a1);
    (*(v9 + 8))(v11, v8);
    v15 = v14 ^ [v13 showsAsActive];
    if (v15)
    {
      [v13 setShowsAsActive_];
    }

    v16 = [v2 storedShowsAsActive];
    if (v16 == [v13 showsAsActive])
    {
      goto LABEL_10;
    }

    LOBYTE(v17) = [v13 showsAsActive];
    goto LABEL_8;
  }

  v18 = [v1 extractedOrder];
  if (v18)
  {
    v13 = v18;
    sub_1B77FF938();
    sub_1B77FFBC8();
    v17 = ManagedExtractedOrder.showsAsActive(now:calendar:)(v7, v11);
    (*(v9 + 8))(v11, v8);
    (*(v5 + 8))(v7, v4);
    if (((v17 ^ [v2 storedShowsAsActive]) & 1) == 0)
    {
      v15 = 0;
      goto LABEL_10;
    }

LABEL_8:
    [v2 setStoredShowsAsActive_];
    v15 = 1;
LABEL_10:

    return v15 & 1;
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

id static ManagedOrderDashboardItem.activeDashboardItemsFetchRequest()()
{
  v9.receiver = swift_getObjCClassFromMetadata();
  v9.super_class = &OBJC_METACLASS____TtC10FinanceKit25ManagedOrderDashboardItem;
  v0 = objc_msgSendSuper2(&v9, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7807CD0;
  v2 = sub_1B7205540(0, &qword_1EDAFC4C8, 0x1E696AD98);
  v3 = sub_1B7801528();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1B7451BE4();
  *(v1 + 32) = v3;
  v4 = sub_1B78010E8();
  [v0 setPredicate_];

  [v0 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAF6470, 0x1E696AEB0);
  swift_getKeyPath();
  *(v5 + 32) = sub_1B7801288();
  v6 = sub_1B7800C18();

  [v0 setSortDescriptors_];

  v7 = sub_1B7800C18();
  [v0 setRelationshipKeyPathsForPrefetching_];

  return v0;
}

id _s10FinanceKit25ManagedOrderDashboardItemC012predicateForfh7ClassicD04withSo11NSPredicateCAA014FullyQualifiedD10IdentifierV_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[3];
  v12 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;

  *(v4 + 32) = sub_1B78010E8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v12;
  *(v8 + 40) = v3;
  *(v4 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

id sub_1B7517EA0(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    type metadata accessor for ManagedOrderDashboardItem();
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void OrderTitleFormatter.Input.init(orderContent:fulfillment:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B77FF988();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~a2 & 0xF000000000000007) != 0)
  {
    if (a2 < 0)
    {
      v12 = [a2 & 0x7FFFFFFFFFFFFFFFLL lineItemObjects];
      type metadata accessor for ManagedOrderLineItem();
      sub_1B7519F70(&qword_1EB98FFA0, type metadata accessor for ManagedOrderLineItem, MEMORY[0x1E69E81B8]);
      v13 = sub_1B7800FA8();

      v15 = sub_1B7519D38(v13, sub_1B72635A4, sub_1B7261D6C);
      sub_1B74D29C8(&v15);
      sub_1B7483848(a2);

      v10 = v15;
      goto LABEL_6;
    }

    v9 = ManagedOrderShippingFulfillment.lineItems.getter();
  }

  else
  {
    v9 = ManagedECommerceOrderContent.lineItems.getter();
  }

  v10 = v9;
LABEL_6:
  v11 = [a1 createdDate];
  sub_1B77FF928();

  OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)(v10, v8, a3);
  sub_1B7483848(a2);
}

uint64_t OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = sub_1B7801958();
    if (result)
    {
LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8CA5DC0](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v8 = *(a1 + 32);
      }

      v9 = v8;
      v10 = [v8 title];

      v11 = sub_1B77FFA48();
      v12 = sub_1B741F7D4(v11);
      v14 = v13;

      v15 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_7;
      }

LABEL_10:
      v16 = sub_1B7801958();
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = *(v15 + 16);
LABEL_11:

  *a3 = v12;
  a3[1] = v14;
  a3[2] = v16;
  v17 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v18 = sub_1B77FF988();
  v19 = *(*(v18 - 8) + 32);

  return v19(a3 + v17, a2, v18);
}

uint64_t OrderTitleFormatter.Input.firstLineItemTitle.getter()
{
  v1 = *v0;

  return v1;
}

void OrderTitleFormatter.Input.firstLineItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t OrderTitleFormatter.Input.orderCreatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderTitleFormatter.Input.orderCreatedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OrderTitleFormatter.Input.init(firstLineItemTitle:totalNumberOfLineItems:orderCreatedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v8 = sub_1B77FF988();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t OrderTitleFormatter.format(_:now:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for OrderedDateFormatter(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v23 - v7;
  v9 = a1[1];
  if (v9)
  {
    v10 = *a1;
    v11 = a1[2];
    if (v11 < 2)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B7808C50;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      v13 = sub_1B721FF04();
      *(v12 + 32) = v10;
      *(v12 + 40) = v9;
      v14 = MEMORY[0x1E69E65A8];
      *(v12 + 96) = MEMORY[0x1E69E6530];
      *(v12 + 104) = v14;
      *(v12 + 64) = v13;
      *(v12 + 72) = v11 - 1;
      v15 = qword_1EDAF93A8;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = qword_1EDAF93B0;
      v17 = sub_1B7800838();
      v18 = sub_1B7800838();
      v19 = sub_1B7800838();
      v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

      sub_1B7800868();
      v10 = sub_1B78008A8();
    }
  }

  else
  {
    sub_1B7519EB8(v2, &v23 - v7);
    v21 = type metadata accessor for OrderTitleFormatter.Input(0);
    v10 = OrderedDateFormatter.format(_:now:)(a1 + *(v21 + 24), a2);
    sub_1B751A118(v8, type metadata accessor for OrderedDateFormatter);
  }

  return v10;
}

BOOL static OrderTitleFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration(0);
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B75188F4(uint64_t a1)
{
  v2 = sub_1B7519F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7518930(uint64_t a1)
{
  v2 = sub_1B7519F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderTitleFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996880, &qword_1B7838B78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7519F1C();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B7519F70(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t OrderTitleFormatter.hash(into:)(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B7800768();
}

uint64_t OrderTitleFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t OrderTitleFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996890, &unk_1B7838B80);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for OrderTitleFormatter(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7519F1C();
  sub_1B78023C8();
  if (!v2)
  {
    v12 = v15;
    sub_1B7519F70(&qword_1EB990870, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
    v13 = v17;
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B7519FD8(v13, v11, type metadata accessor for FormatterConfiguration);
    sub_1B7519FD8(v11, v12, type metadata accessor for OrderTitleFormatter);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7518FE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = OrderTitleFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B7519010@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = OrderTitleFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B7519110(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996880, &qword_1B7838B78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7519F1C();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B7519F70(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B7519288()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B75193D8(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B7800768();
}

uint64_t sub_1B7519518(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7519F70(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B7519F70(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7519F70(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B7519668@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[2];
  if (v5)
  {
    v7 = a1[9];
    v6 = a1[10];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a3 = v7;
  *(a3 + 1) = v6;
  *(a3 + 2) = v5;
  v8 = *(type metadata accessor for OrderTitleFormatter.Input(0) + 24);
  v9 = sub_1B77FF988();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a3[v8], a2, v9);
}

void OrderTitleFormatter.Input.init(orderContent:orderReturn:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B77FF988();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ManagedOrderReturn.lineItems.getter();
  v10 = [a1 createdDate];
  sub_1B77FF928();

  OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)(v9, v8, a3);
}

void OrderTitleFormatter.Input.init(orderContent:contentItem:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B77FF988();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if ((~*a2 & 0x7000000000000007) != 0)
  {
    if ((v9 & 0x4000000000000000) != 0)
    {
      v11 = ManagedOrderReturn.lineItems.getter();
    }

    else
    {
      if (v9 < 0)
      {
        v13 = [v9 & 0x3FFFFFFFFFFFFFFFLL lineItemObjects];
        type metadata accessor for ManagedOrderLineItem();
        sub_1B7519F70(&qword_1EB98FFA0, type metadata accessor for ManagedOrderLineItem, MEMORY[0x1E69E81B8]);
        v14 = sub_1B7800FA8();

        v16 = sub_1B7519D38(v14, sub_1B72635A4, sub_1B7261D6C);
        sub_1B74D29C8(&v16);

        sub_1B7290634(v9);
        v10 = v16;
        goto LABEL_8;
      }

      v11 = ManagedOrderShippingFulfillment.lineItems.getter();
    }

    v10 = v11;
    sub_1B7290634(v9);
  }

  else
  {
    v10 = ManagedECommerceOrderContent.lineItems.getter();
  }

LABEL_8:
  v12 = [a1 createdDate];
  sub_1B77FF928();

  OrderTitleFormatter.Input.init(lineItems:orderCreatedDate:)(v10, v8, a3);
}

uint64_t OrderTitleFormatter.Input.init(orderContent:contentItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990838, &qword_1B780DB08);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  sub_1B751A040(a2, &v21 - v11);
  v13 = type metadata accessor for RawECommerceOrderContent.ContentItem(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_1B751A0B0(v12);
    v14 = *(a1 + *(type metadata accessor for RawECommerceOrderContent(0) + 76));
  }

  else
  {
    v14 = RawECommerceOrderContent.ContentItem.lineItems.getter();
    sub_1B751A118(v12, type metadata accessor for RawECommerceOrderContent.ContentItem);
  }

  v15 = type metadata accessor for RawECommerceOrderContent(0);
  (*(v7 + 16))(v9, a1 + *(v15 + 44), v6);
  v16 = v14[2];
  if (v16)
  {
    v18 = v14[9];
    v17 = v14[10];
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  *a3 = v18;
  *(a3 + 1) = v17;
  *(a3 + 2) = v16;
  v19 = type metadata accessor for OrderTitleFormatter.Input(0);
  (*(v7 + 32))(&a3[*(v19 + 24)], v9, v6);
  sub_1B751A0B0(a2);
  return sub_1B751A118(a1, type metadata accessor for RawECommerceOrderContent);
}

char *sub_1B7519D38(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t (*)(uint64_t *, char *, uint64_t, uint64_t, __n128), uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1B7801958();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1B71B7B58(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t _s10FinanceKit19OrderTitleFormatterV5InputV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for OrderTitleFormatter.Input(0);

  return sub_1B77FF918();
}

uint64_t sub_1B7519EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7519F1C()
{
  result = qword_1EB996888;
  if (!qword_1EB996888)
  {
    result = swift_getWitnessTable(byte_1B7838DE0, &type metadata for OrderTitleFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996888);
  }

  return result;
}

uint64_t sub_1B7519F70(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7519FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B751A040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990838, &qword_1B780DB08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B751A0B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990838, &qword_1B780DB08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B751A118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B751A178(uint64_t a1)
{
  result = sub_1B7519F70(&qword_1EB996898, type metadata accessor for OrderTitleFormatter, protocol conformance descriptor for OrderTitleFormatter);
  *(a1 + 8) = result;
  return result;
}

void sub_1B751A340(uint64_t a1)
{
  sub_1B7280028();
  if (v1 <= 0x3F)
  {
    sub_1B77FF988();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B751A3E0()
{
  result = qword_1EB9968E0;
  if (!qword_1EB9968E0)
  {
    result = swift_getWitnessTable(byte_1B7838DB8, &type metadata for OrderTitleFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9968E0);
  }

  return result;
}

unint64_t sub_1B751A438()
{
  result = qword_1EB9968E8;
  if (!qword_1EB9968E8)
  {
    result = swift_getWitnessTable(byte_1B7838D28, &type metadata for OrderTitleFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9968E8);
  }

  return result;
}

unint64_t sub_1B751A490()
{
  result = qword_1EB9968F0;
  if (!qword_1EB9968F0)
  {
    result = swift_getWitnessTable(byte_1B7838D50, &type metadata for OrderTitleFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9968F0);
  }

  return result;
}

uint64_t AppleAccountDataImporterError.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1B751A574()
{
  result = qword_1EB9968F8;
  if (!qword_1EB9968F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleAccountDataImporterError.Code, &type metadata for AppleAccountDataImporterError.Code, v0, v1);
    atomic_store(result, &qword_1EB9968F8);
  }

  return result;
}

uint64_t sub_1B751A5C8(uint64_t a1)
{
  v2 = sub_1B751A6D0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B751A604(uint64_t a1)
{
  v2 = sub_1B751A6D0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1B751A640()
{
  result = qword_1EB996900;
  if (!qword_1EB996900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleAccountDataImporterError, &type metadata for AppleAccountDataImporterError, v0, v1);
    atomic_store(result, &qword_1EB996900);
  }

  return result;
}

unint64_t sub_1B751A6D0()
{
  result = qword_1EB996908;
  if (!qword_1EB996908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleAccountDataImporterError, &type metadata for AppleAccountDataImporterError, v0, v1);
    atomic_store(result, &qword_1EB996908);
  }

  return result;
}

uint64_t static BankConnectConsentHeaderParser.parse<A>(httpURLResponse:responseType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a5@<X8>)
{
  v23[3] = a5;
  v8 = sub_1B77FE8B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7800838();
  v13 = [a1 valueForHTTPHeaderField_];

  if (!v13)
  {
    sub_1B7280708();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  v23[0] = v5;
  v23[1] = a2;
  sub_1B7800868();

  v14 = sub_1B77FF548();
  v16 = v15;

  if (v16 >> 60 == 15)
  {
    sub_1B7280708();
    swift_allocError();
    *v17 = 3;
    return swift_willThrow();
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v8, qword_1EB991BC8);
  (*(v9 + 16))(v11, v20, v8);
  sub_1B77FE8C8();
  v21 = v23[0];
  sub_1B77FE8D8();

  if (v21)
  {
    type metadata accessor for FinanceNetworkError(0);
    sub_1B751B49C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
    swift_allocError();
    *v22 = v21;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return sub_1B72380B8(v14, v16);
}

void static BankConnectConsentHeaderBuilder.encode(consent:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B77FE968();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B77FE9B8();
  swift_allocObject();
  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EB991BE8);
  (*(v6 + 16))(v8, v9, v5);
  sub_1B77FE988();
  v10 = sub_1B77FE998();
  v12 = v11;

  if (!v2)
  {
    v13 = sub_1B77FF5A8();
    v15 = v14;
    sub_1B720A388(v10, v12);
    *a2 = 0x746E65736E6F43;
    a2[1] = 0xE700000000000000;
    a2[2] = v13;
    a2[3] = v15;
  }
}

uint64_t static BankConnectConsentHeaderBuilder.build(consent:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = sub_1B77FE968();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BankConnectConsent(0);
  v6 = v5[6];
  v7 = (a1 + v5[5]);
  v8 = *v7;
  v33 = v7[1];
  v34 = v8;
  v9 = type metadata accessor for RawBankConnectData.Consent(0);
  v39 = v9;
  v40 = sub_1B751B49C(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent, protocol conformance descriptor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  v11 = v9[5];
  v12 = sub_1B77FF988();
  v13 = *(*(v12 - 8) + 16);
  v13(boxed_opaque_existential_1 + v11, a1 + v6, v12);
  v13(boxed_opaque_existential_1 + v9[6], a1 + v5[7], v12);
  v14 = *(a1 + v5[9]);
  v15 = (a1 + v5[10]);
  v16 = *v15;
  v17 = v15[1];
  v18 = v33;
  *boxed_opaque_existential_1 = v34;
  boxed_opaque_existential_1[1] = v18;
  *(boxed_opaque_existential_1 + v9[7]) = v14;
  v19 = (boxed_opaque_existential_1 + v9[8]);
  *v19 = v16;
  v19[1] = v17;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v20 = v37;
  v21 = __swift_project_value_buffer(v37, qword_1EB991BE8);
  (*(v36 + 16))(v35, v21, v20);
  sub_1B77FE988();
  v22 = v41;
  v23 = sub_1B77FE998();
  v25 = v24;

  if (!v22)
  {
    v26 = sub_1B77FF5A8();
    v28 = v27;
    sub_1B720A388(v23, v25);
    v29 = v32;
    *v32 = 0x746E65736E6F43;
    v29[1] = 0xE700000000000000;
    v29[2] = v26;
    v29[3] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t static BankConnectResponseHeadersParser.parse(httpURLResponse:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FE8B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.Consent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7800838();
  v12 = [a1 valueForHTTPHeaderField_];

  if (!v12)
  {
    sub_1B7280708();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  v27 = a2;
  sub_1B7800868();

  v28 = sub_1B77FF548();
  v14 = v13;

  if (v14 >> 60 == 15)
  {
    sub_1B7280708();
    swift_allocError();
    *v15 = 3;
    return swift_willThrow();
  }

  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_1EB991BC8);
  (*(v5 + 16))(v7, v18, v4);
  sub_1B77FE8C8();
  sub_1B751B49C(&qword_1EB9906F8, type metadata accessor for RawBankConnectData.Consent, protocol conformance descriptor for RawBankConnectData.Consent);
  v19 = v10;
  v21 = v28;
  v20 = v29;
  sub_1B77FE8D8();

  if (v20)
  {
    type metadata accessor for FinanceNetworkError(0);
    sub_1B751B49C(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
    swift_allocError();
    *v22 = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_1B72380B8(v21, v14);
  }

  else
  {
    sub_1B72380B8(v21, v14);
    sub_1B751B9B0(a1);
    v24 = v23;
    v25 = v27;
    sub_1B751BD9C(v19, v27);
    result = type metadata accessor for BankConnectResponseHeaders(0);
    v26 = v25 + *(result + 20);
    *v26 = v24;
    *(v26 + 2) = 0;
  }

  return result;
}

uint64_t sub_1B751B49C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static BankConnectConsentHeaderBuilder.build(rawConsent:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B77FE968();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RawBankConnectData.Consent(0);
  v21 = sub_1B751B49C(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent, protocol conformance descriptor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_1B751BE50(a1, boxed_opaque_existential_1, type metadata accessor for RawBankConnectData.Consent);
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_1B77FE9B8();
  swift_allocObject();
  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_1EB991BE8);
  (*(v6 + 16))(v8, v10, v5);
  sub_1B77FE988();
  v11 = sub_1B77FE998();
  v13 = v12;

  if (!v2)
  {
    v14 = sub_1B77FF5A8();
    v16 = v15;
    sub_1B720A388(v11, v13);
    *a2 = 0x746E65736E6F43;
    a2[1] = 0xE700000000000000;
    a2[2] = v14;
    a2[3] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1B751B72C(uint64_t a1)
{
  v2 = sub_1B77FFA18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserPresence(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B751BE50(a1, v8, type metadata accessor for UserPresence);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68, &qword_1B781EB70);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60, &qword_1B780CC30);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B7807CD0;
    *(result + 32) = 0xD000000000000015;
    *(result + 40) = 0x80000001B7883E10;
    *(result + 48) = 0x544E4553455250;
    *(result + 56) = 0xE700000000000000;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60, &qword_1B780CC30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B7808C50;
    *(v11 + 32) = 0xD000000000000015;
    *(v11 + 40) = 0x80000001B7883E10;
    *(v11 + 48) = 0x534552505F544F4ELL;
    *(v11 + 56) = 0xEB00000000544E45;
    v12 = sub_1B77FF9A8();
    *(v11 + 64) = 0xD000000000000014;
    *(v11 + 72) = 0x80000001B7883DF0;
    *(v11 + 80) = v12;
    *(v11 + 88) = v13;
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  return result;
}

void sub_1B751B9B0(void *a1)
{
  v2 = sub_1B7800838();
  v3 = [a1 valueForHTTPHeaderField_];

  if (!v3)
  {
    sub_1B7280708();
    swift_allocError();
    v17 = 1;
LABEL_66:
    *v16 = v17;
    swift_willThrow();
    return;
  }

  v4 = sub_1B7800868();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_65;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v40[0] = v4;
      v40[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            LOWORD(v26) = 0;
            v27 = v40 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = (10 * v26);
              if (v29 != 10 * v26)
              {
                break;
              }

              v26 = v29 + v28;
              if ((v29 + v28) != v26)
              {
                break;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_75:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          LOWORD(v33) = 0;
          v34 = v40;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = (10 * v33);
            if (v36 != 10 * v33)
            {
              break;
            }

            v33 = v36 + v35;
            if ((v36 + v35) != v33)
            {
              break;
            }

            ++v34;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v7)
      {
        if (--v7)
        {
          LOWORD(v18) = 0;
          v19 = v40 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = (10 * v18);
            if (v21 != 10 * v18)
            {
              break;
            }

            v18 = v21 - v20;
            if ((v21 - v20) != v18)
            {
              break;
            }

            ++v19;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_1B7801B48();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            LOWORD(v22) = 0;
            if (v10)
            {
              v23 = v10 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_63;
                }

                v25 = (10 * v22);
                if (v25 != 10 * v22)
                {
                  goto LABEL_63;
                }

                v22 = v25 + v24;
                if ((v25 + v24) != v22)
                {
                  goto LABEL_63;
                }

                ++v23;
                if (!--v7)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_74;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          LOWORD(v30) = 0;
          if (v10)
          {
            while (1)
            {
              v31 = *v10 - 48;
              if (v31 > 9)
              {
                goto LABEL_63;
              }

              v32 = (10 * v30);
              if (v32 != 10 * v30)
              {
                goto LABEL_63;
              }

              v30 = v32 + v31;
              if ((v32 + v31) != v30)
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOBYTE(v7) = 1;
LABEL_64:
        v41 = v7;
        v37 = v7;

        if ((v37 & 1) == 0)
        {
          return;
        }

        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(v12) = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_63;
              }

              v15 = (10 * v12);
              if (v15 != 10 * v12)
              {
                goto LABEL_63;
              }

              v12 = v15 - v14;
              if ((v15 - v14) != v12)
              {
                goto LABEL_63;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v7) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v41 = 0;
  sub_1B75D589C(v4, v6, 10);
  v39 = v38;

  if ((v39 & 0x10000) != 0)
  {
LABEL_65:
    sub_1B7280708();
    swift_allocError();
    v17 = 2;
    goto LABEL_66;
  }
}

uint64_t sub_1B751BD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Consent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B751BE50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void XPCService.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1B7801D18();

  *a3 = v4 != 0;
}

unint64_t sub_1B751BF30()
{
  result = qword_1EB996910;
  if (!qword_1EB996910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCService, &type metadata for XPCService, v0, v1);
    atomic_store(result, &qword_1EB996910);
  }

  return result;
}

uint64_t sub_1B751BF84()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B751BFF8(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

void sub_1B751C04C(BOOL *a2@<X8>)
{
  v3 = sub_1B7801D18();

  *a2 = v3 != 0;
}

uint64_t ManagedOrderReturn.status.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = [v0 statusValue];
  v3 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  result = _s10FinanceKit24ManagedOrderPickupStatusO8rawValueACSgs5Int16V_tcfC_0(v2);
  if (result == 6)
  {
    sub_1B7801A78();

    v5 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v5);

    result = sub_1B7801C88();
    __break(1u);
  }

  return result;
}

char *ManagedOrderReturn.lineItems.getter()
{
  v1 = sub_1B7800838();
  [v0 willAccessValueForKey_];

  v2 = [v0 lineItemObjects];
  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v3 = sub_1B7800FA8();

  v4 = sub_1B7800838();
  [v0 didAccessValueForKey_];

  v6 = sub_1B7519CE0(v3);
  sub_1B74D29C8(&v6);

  return v6;
}

void sub_1B751C334(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0, &unk_1B7809780);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_1B751C470@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B751C528(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7205588(a1, &v11 - v5, &unk_1EB994C70, &qword_1B7809800);
  v7 = *a2;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF3F8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setReturnManagementURL_];
}

void sub_1B751C664(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 returnIdentifier];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id ManagedOrderReturn.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderReturn.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderReturn.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderReturn.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit18ManagedOrderReturn;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderReturn.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void sub_1B751C934(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B7800838();
  [v3 willChangeValueForKey_];

  [v3 setStatusValue_];
  v5 = sub_1B7800838();
  [v3 didChangeValueForKey_];
}

void ManagedOrderReturn.status.setter(unsigned __int8 a1)
{
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setStatusValue_];
  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedOrderReturn.status.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ManagedOrderReturn.status.getter();
  return sub_1B751CAE0;
}

void sub_1B751CAE0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setStatusValue_];
  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void sub_1B751CB94(void *a1, void **a2)
{
  v2 = *a2;

  sub_1B723B95C(v3);

  v4 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v5 = sub_1B7800F78();

  [v2 setLineItemObjects_];

  v6 = sub_1B7800838();
  [v2 didChangeValueForKey_];
}

void ManagedOrderReturn.lineItems.setter(unint64_t a1)
{
  sub_1B723B95C(a1);

  v2 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  type metadata accessor for ManagedOrderLineItem();
  sub_1B7308800();
  v3 = sub_1B7800F78();

  [v1 setLineItemObjects_];

  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedOrderReturn.lineItems.modify(char **a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedOrderReturn.lineItems.getter();
  return sub_1B751CDE0;
}

void sub_1B751CDE0(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723B95C(v3);

    v4 = sub_1B7800838();
    [v2 willChangeValueForKey_];

    type metadata accessor for ManagedOrderLineItem();
    sub_1B7308800();
    v5 = sub_1B7800F78();

    [v2 setLineItemObjects_];

    v6 = sub_1B7800838();
    [v2 didChangeValueForKey_];
  }

  else
  {
    sub_1B723B95C(*a1);

    v7 = sub_1B7800838();
    [v2 willChangeValueForKey_];

    type metadata accessor for ManagedOrderLineItem();
    sub_1B7308800();
    v8 = sub_1B7800F78();

    [v2 setLineItemObjects_];

    v9 = sub_1B7800838();
    [v2 didChangeValueForKey_];
  }
}

id ManagedOrderReturn.__allocating_init(_:bundle:context:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = sub_1B751D7F4(a1, a2, a3);

  return v4;
}

char *ManagedOrderReturn.rawOrderReturn.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v110 = &v98 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v106 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v105 = &v98 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v98 - v11;
  v12 = ManagedOrderReturn.status.getter();
  v13 = [v2 returnIdentifier];
  v14 = sub_1B7800868();
  v16 = v15;

  v17 = type metadata accessor for RawOrderReturn(0);
  v18 = v17[8];
  v19 = sub_1B77FF988();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v101 = v18;
  v21(a1 + v18, 1, 1, v19);
  v102 = v17[9];
  v21(a1 + v102, 1, 1, v19);
  v104 = v17[10];
  v112 = v21;
  v113 = v19;
  v111 = v22;
  v21(a1 + v104, 1, 1, v19);
  v23 = v17[15];
  v24 = sub_1B77FF4F8();
  v25 = *(v24 - 8);
  v108 = *(v25 + 56);
  v107 = v25 + 56;
  v108(a1 + v23, 1, 1, v24);
  *(a1 + 8) = v12;
  v26 = (a1 + v17[16]);
  *v26 = v14;
  v26[1] = v16;
  v27 = ManagedOrderReturn.lineItems.getter();
  v28 = v27;
  if (v27 >> 62)
  {
    v29 = sub_1B7801958();
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v110;
  v109 = v17;
  if (v29)
  {
    v115 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FE27C(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v99 = v24;
    v100 = v23;
    v32 = 0;
    v33 = v115;
    if ((v28 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x1B8CA5DC0](v32, v28); ; i = *(v28 + 8 * v32 + 32))
    {
      v35 = i;
      ManagedOrderLineItem.rawOrderLineItem.getter(v114);

      v115 = v33;
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B71FE27C((v36 > 1), v37 + 1, 1);
        v33 = v115;
      }

      *(v33 + 16) = v37 + 1;
      v38 = (v33 + (v37 << 7));
      v39 = v114[0];
      v40 = v114[1];
      v41 = v114[3];
      v38[4] = v114[2];
      v38[5] = v41;
      v38[2] = v39;
      v38[3] = v40;
      v42 = v114[4];
      v43 = v114[5];
      v44 = v114[7];
      v38[8] = v114[6];
      v38[9] = v44;
      v38[6] = v42;
      v38[7] = v43;
      if (v29 - 1 == v32)
      {
        break;
      }

      ++v32;
      if ((v28 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    v30 = v110;
    v23 = v100;
    v24 = v99;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v33;
  v45 = [v2 statusDescription];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1B77FFA48();
    v48 = sub_1B741F7D4(v47);
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = v109;
  *(a1 + 16) = v48;
  *(a1 + 24) = v50;
  v52 = [v2 notes];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1B77FFA48();
    v55 = sub_1B741F7D4(v54);
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v58 = v106;
  v59 = v105;
  *(a1 + 32) = v55;
  *(a1 + 40) = v57;
  v60 = [v2 initiationDate];
  if (v60)
  {
    v61 = v103;
    v62 = v60;
    sub_1B77FF928();

    v63 = 0;
  }

  else
  {
    v63 = 1;
    v61 = v103;
  }

  v64 = 1;
  v112(v61, v63, 1, v113);
  sub_1B7213740(v61, a1 + v101, &qword_1EB98EBD0, &unk_1B7809780);
  v65 = [v2 dropOffDate];
  if (v65)
  {
    v66 = v65;
    sub_1B77FF928();

    v64 = 0;
  }

  v67 = 1;
  v112(v59, v64, 1, v113);
  sub_1B7213740(v59, a1 + v102, &qword_1EB98EBD0, &unk_1B7809780);
  v68 = [v2 returnDate];
  if (v68)
  {
    v69 = v68;
    sub_1B77FF928();

    v67 = 0;
  }

  v70 = v104;
  v112(v58, v67, 1, v113);
  sub_1B7213740(v58, a1 + v70, &qword_1EB98EBD0, &unk_1B7809780);
  v71 = [v2 returnNumber];
  if (v71)
  {
    v72 = v71;
    v73 = sub_1B7800868();
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 0;
  }

  v76 = (a1 + v51[11]);
  *v76 = v73;
  v76[1] = v75;
  v77 = [v2 carrier];
  if (v77)
  {
    v78 = v77;
    v79 = sub_1B7800868();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0;
  }

  v82 = (a1 + v51[12]);
  *v82 = v79;
  v82[1] = v81;
  v83 = [v2 trackingNumber];
  if (v83)
  {
    v84 = v83;
    v85 = sub_1B7800868();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v88 = (a1 + v51[13]);
  *v88 = v85;
  v88[1] = v87;
  v89 = [v2 returnLabel];
  if (v89)
  {
    v90 = v89;
    v91 = sub_1B7800868();
    v93 = v92;
  }

  else
  {
    v91 = 0;
    v93 = 0;
  }

  v94 = (a1 + v51[14]);
  *v94 = v91;
  v94[1] = v93;
  v95 = [v2 returnManagementURL];
  if (v95)
  {
    v96 = v95;
    sub_1B77FF478();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v108(v30, v97, 1, v24);
  return sub_1B7213740(v30, a1 + v23, &unk_1EB994C70, &qword_1B7809800);
}

id sub_1B751D7F4(uint64_t *a1, uint64_t a2, void *a3)
{
  v87 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v78 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v76 - v14;
  v16 = objc_allocWithZone(v3);
  v86 = a3;
  v17 = [v16 initWithContext_];
  v18 = type metadata accessor for RawOrderReturn(0);
  v19 = *(a1 + *(v18 + 48) + 8);
  v20 = v17;
  if (v19)
  {
    v19 = sub_1B7800838();
  }

  [v17 setCarrier_];

  if (*(a1 + *(v18 + 52) + 8))
  {
    v21 = sub_1B7800838();
  }

  else
  {
    v21 = 0;
  }

  v80 = v18;
  v81 = v17;
  [v17 setTrackingNumber_];

  v22 = *a1;
  v23 = *(*a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v82 = v8;
  if (!v23)
  {
LABEL_16:
    sub_1B723B95C(v24);

    v43 = sub_1B7800838();
    v44 = v81;
    [v81 willChangeValueForKey_];

    type metadata accessor for ManagedOrderLineItem();
    sub_1B7308800();
    v45 = sub_1B7800F78();

    [v44 setLineItemObjects_];

    v46 = sub_1B7800838();
    [v44 didChangeValueForKey_];

    v47 = *(a1 + 8);
    v48 = sub_1B7800838();
    [v44 willChangeValueForKey_];

    [v44 setStatusValue_];
    v49 = sub_1B7800838();
    [v44 didChangeValueForKey_];

    v51 = a1[3];
    if (v51)
    {
      MEMORY[0x1EEE9AC00](v50);
      *(&v76 - 4) = v52;
      *(&v76 - 3) = v51;
      *(&v76 - 2) = 0x726564726FLL;
      *(&v76 - 1) = 0xE500000000000000;

      v53 = sub_1B723940C(sub_1B726357C, (&v76 - 6));
    }

    else
    {
      v53 = 0;
    }

    [v44 setStatusDescription_];

    v55 = a1[5];
    if (v55)
    {
      MEMORY[0x1EEE9AC00](v54);
      *(&v76 - 4) = v56;
      *(&v76 - 3) = v55;
      *(&v76 - 2) = v57;
      *(&v76 - 1) = 0xE500000000000000;

      v58 = sub_1B723940C(sub_1B7262E4C, (&v76 - 6));
    }

    else
    {
      v58 = 0;
    }

    [v44 setNotes_];

    v59 = v80;
    if (*(a1 + v80[11] + 8))
    {
      v60 = sub_1B7800838();
    }

    else
    {
      v60 = 0;
    }

    [v44 setReturnNumber_];

    if (*(a1 + v59[14] + 8))
    {
      v61 = sub_1B7800838();
    }

    else
    {
      v61 = 0;
    }

    [v44 setReturnLabel_];

    sub_1B7205588(a1 + v59[8], v15, &qword_1EB98EBD0, &unk_1B7809780);
    v62 = sub_1B77FF988();
    v63 = *(v62 - 8);
    v64 = *(v63 + 48);
    v65 = 0;
    if (v64(v15, 1, v62) != 1)
    {
      v65 = sub_1B77FF8B8();
      (*(v63 + 8))(v15, v62);
    }

    [v44 setInitiationDate_];

    v66 = v78;
    sub_1B7205588(a1 + v59[9], v78, &qword_1EB98EBD0, &unk_1B7809780);
    if (v64(v66, 1, v62) == 1)
    {
      v67 = 0;
    }

    else
    {
      v67 = sub_1B77FF8B8();
      (*(v63 + 8))(v66, v62);
    }

    [v44 setDropOffDate_];

    v68 = v79;
    sub_1B7205588(a1 + v59[10], v79, &qword_1EB98EBD0, &unk_1B7809780);
    if (v64(v68, 1, v62) == 1)
    {
      v69 = 0;
    }

    else
    {
      v70 = v68;
      v69 = sub_1B77FF8B8();
      (*(v63 + 8))(v70, v62);
    }

    v71 = v82;
    [v44 setReturnDate_];

    sub_1B7205588(a1 + v59[15], v71, &unk_1EB994C70, &qword_1B7809800);
    v72 = sub_1B77FF4F8();
    v73 = *(v72 - 8);
    v74 = 0;
    if ((*(v73 + 48))(v71, 1, v72) != 1)
    {
      v74 = sub_1B77FF3F8();
      (*(v73 + 8))(v71, v72);
    }

    [v44 setReturnManagementURL_];

    v75 = sub_1B7800838();
    [v44 setReturnIdentifier_];

    sub_1B7457314(a1);
    return v44;
  }

  v76 = v15;
  v77 = a1;
  v118 = MEMORY[0x1E69E7CC0];
  sub_1B7801B98();
  v25 = *(v22 + 16);
  result = type metadata accessor for ManagedOrderLineItem();
  v85 = result;
  v83 = v25;
  if (!v25)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    v24 = v118;
    v15 = v76;
    a1 = v77;
    goto LABEL_16;
  }

  v27 = 0;
  v28 = (v22 + 32);
  v84 = v23 - 1;
  while (v27 < *(v22 + 16))
  {
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[3];
    v98[2] = v28[2];
    v98[3] = v31;
    v98[0] = v29;
    v98[1] = v30;
    v32 = v28[4];
    v33 = v28[5];
    v34 = v28[7];
    v98[6] = v28[6];
    v98[7] = v34;
    v98[4] = v32;
    v98[5] = v33;
    v35 = *v28;
    v36 = v28[1];
    v37 = v28[3];
    v92 = v28[2];
    v93 = v37;
    v90 = v35;
    v91 = v36;
    v38 = v28[4];
    v39 = v28[5];
    v40 = v28[7];
    v96 = v28[6];
    v97 = v40;
    v94 = v38;
    v95 = v39;
    memmove(v99, v28, 0x80uLL);
    v105 = v99[4];
    v106 = v99[5];
    v107 = v99[6];
    v108 = v99[7];
    v101 = v99[0];
    v102 = v99[1];
    v103 = v99[2];
    v104 = v99[3];
    v117 = v97;
    v116 = v96;
    v115 = v95;
    v114 = v94;
    v113 = v93;
    v112 = v92;
    v111 = v91;
    v100 = v27;
    v109 = v27;
    v110 = v90;
    sub_1B73261F0(v98, v88);
    sub_1B73261F0(v99, v88);
    sub_1B751E284(&v109);
    v41 = v100;
    v89[4] = v105;
    v89[5] = v106;
    v89[6] = v107;
    v89[7] = v108;
    v89[0] = v101;
    v89[1] = v102;
    v89[2] = v103;
    v89[3] = v104;
    sub_1B7205588(&v100, v88, &qword_1EB995FF8, &unk_1B7834830);
    v42 = v87;

    result = ManagedOrderLineItem.__allocating_init(_:bundle:context:)(v89, v42, v86);
    if (v41 < -32768)
    {
      goto LABEL_40;
    }

    if (v41 >= 0x8000)
    {
      goto LABEL_41;
    }

    [result setPositionIndex_];
    sub_1B751E284(&v100);
    sub_1B7801B68();
    sub_1B7801BA8();
    sub_1B7801BB8();
    result = sub_1B7801B78();
    if (v84 == v27)
    {
      goto LABEL_15;
    }

    ++v27;
    v28 += 8;
    if (v83 == v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1B751E284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF8, &unk_1B7834830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B751E2EC(uint64_t a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v1;
    v6 = [v4 leftExpression];
    v7 = sub_1B751E5F8(a1);

    v8 = [v4 rightExpression];
    v9 = sub_1B751E5F8(a1);

    v10 = [v4 comparisonPredicateModifier];
    v11 = [v4 predicateOperatorType];
    v12 = [v4 options];
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v7 rightExpression:v9 modifier:v10 type:v11 options:v12];

    return v13;
  }

  else
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    result = v1;
    if (v15)
    {
      v16 = result;
      v17 = [v15 subpredicates];
      v18 = sub_1B7800C38();

      v29 = MEMORY[0x1E69E7CC0];
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v18 + 32;
        do
        {
          sub_1B719BDE4(v20, v28);
          sub_1B719BDE4(v28, v27);
          sub_1B729D790();
          if (swift_dynamicCast())
          {
            sub_1B751E2EC(a1);

            v21 = __swift_destroy_boxed_opaque_existential_1(v28);
            MEMORY[0x1B8CA4F20](v21);
            if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1B7800C58();
            }

            sub_1B7800C88();
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v28);
          }

          v20 += 32;
          --v19;
        }

        while (v19);
      }

      else
      {
      }

      v22 = [v15 compoundPredicateType];
      v23 = objc_allocWithZone(MEMORY[0x1E696AB28]);
      sub_1B729D790();
      v24 = sub_1B7800C18();

      v25 = [v23 initWithType:v22 subpredicates:v24];

      return v25;
    }
  }

  return result;
}

id sub_1B751E5F8(uint64_t a1)
{
  v2 = v1;
  v18 = v2;
  if ([v2 expressionType] == 3)
  {
    v4 = [v18 keyPath];
    v5 = sub_1B7800868();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [v18 keyPath];
      v10 = sub_1B7800868();
      v12 = v11;

      if (*(a1 + 16))
      {
        sub_1B724548C(v10, v12);
        v14 = v13;

        if (v14)
        {

          v15 = sub_1B7800838();

          v16 = [objc_opt_self() expressionForKeyPath_];

          return v16;
        }
      }

      else
      {
      }
    }
  }

  return v18;
}

double NSXPCConnection.value<A>(for:)@<D0>(_OWORD *a3@<X8>)
{
  sub_1B7800B38();
  v5 = sub_1B7800838();

  v6 = [v3 valueForEntitlement_];

  if (v6)
  {
    sub_1B7801848();
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

double sub_1B751E820(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC10FinanceKit26FinanciaDataConnectionInfo_bundleIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1B751E88C()
{
  v1 = (v0 + OBJC_IVAR____TtC10FinanceKit26FinanciaDataConnectionInfo_bundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1B751E8E4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10FinanceKit26FinanciaDataConnectionInfo_bundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id FinanciaDataConnectionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FinanciaDataConnectionInfo.init()()
{
  v1 = &v0[OBJC_IVAR____TtC10FinanceKit26FinanciaDataConnectionInfo_bundleIdentifier];
  v2 = type metadata accessor for FinanciaDataConnectionInfo();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id FinanciaDataConnectionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanciaDataConnectionInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BackgroundDeliveryExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_1B751EDA4;
  a3[1] = v10;
  return result;
}

uint64_t sub_1B751ECBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v13[3] = a3;
  v13[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_1B719B06C(v13, v12);
  type metadata accessor for BackgroundDeliveryExtensionModel();
  v9 = swift_allocObject();
  sub_1B71E4C44(v12, v9 + 16);
  v10 = *(a1 + 16);
  [v10 setExportedObject_];

  [v10 resume];
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t dispatch thunk of BackgroundDeliveryExtensionProviding.didReceiveData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BackgroundDeliveryExtensionProviding.willTerminate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return v7(a1, a2);
}

unint64_t sub_1B751F034()
{
  result = qword_1EB996920;
  if (!qword_1EB996920)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB996928, &qword_1B7839250);
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceAppExtensionConfiguration<A>, v3, v0, v1);
    atomic_store(result, &qword_1EB996920);
  }

  return result;
}

uint64_t sub_1B751F198(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B751F1F8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B751F290;
}

void sub_1B751F290(void **a1, char a2)
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

id BankConnectAccountsProvider.__allocating_init(primaryAccountIdentifier:store:consentStore:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = sub_1B7522A68(a1, a2, a3, v11, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v12;
}

id BankConnectAccountsProvider.init(primaryAccountIdentifier:store:consentStore:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1B7522948(a1, a2, a3, v13, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v15;
}

id BankConnectAccountsProvider.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
    sub_1B7800E68();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAccountsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B751F6B4()
{
  v1[4] = v0;
  v2 = sub_1B78000B8();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for BankConnectConsent(0);
  v1[9] = swift_task_alloc();
  v1[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920, &qword_1B7814D00);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for InternalAccount(0);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B751F83C, 0, 0);
}

uint64_t sub_1B751F83C()
{
  v56 = v0;
  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = __swift_project_value_buffer(v0[5], qword_1EDAF65B0);
  v3 = v1;
  v4 = sub_1B7800098();
  v5 = sub_1B78011B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v55[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B71A3EF8(*(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier), *(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier + 8), v55);
    _os_log_impl(&dword_1B7198000, v4, v5, "Fetching account and reconsent status for primaryAccountIdentifier: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B8CA7A40](v8, -1, -1);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
  }

  v9 = [*(*(v0[4] + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store) + 16) newBackgroundContext];
  *(swift_task_alloc() + 16) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996948, &unk_1B7860A70);
  sub_1B7801468();
  v10 = v0[4];

  v11 = v0[2];
  if (!*(v10 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask))
  {
    type metadata accessor for SendableNSPersistentHistoryToken();
    v12 = swift_allocObject();
    v13 = v12;
    if (v11)
    {
      *(v12 + 16) = v11;
      v14 = v11;
    }

    else
    {
      swift_deallocPartialClassInstance();
      v13 = 0;
      v14 = 0;
    }

    v15 = v14;
    sub_1B75205D4(v13);
  }

  v16 = (v0[4] + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier);
  v17 = *v16;
  v18 = v16[1];
  v19 = swift_task_alloc();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v9;
  sub_1B7801468();
  v54 = v11;
  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[11];

  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    v23 = v0[4];
    sub_1B7205418(v0[11], &qword_1EB991920, &qword_1B7814D00);
    v24 = v23;
    v25 = sub_1B7800098();
    v26 = sub_1B78011D8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B71A3EF8(v17, v18, v55);
      _os_log_impl(&dword_1B7198000, v25, v26, "Unable to find an account for primaryAccountIdentifier: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1B8CA7A40](v28, -1, -1);
      MEMORY[0x1B8CA7A40](v27, -1, -1);
    }

    else
    {
    }

    v51 = 0;
  }

  else
  {
    v29 = v0[14];
    v30 = v0[12];
    v31 = v0[4];
    sub_1B72EABA0(v0[11], v29);
    v32 = (v29 + *(v30 + 20));
    v33 = v32[3];
    v53 = v32[2];
    v35 = *v32;
    v34 = v32[1];
    v36 = (v31 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore);
    v37 = *(v31 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore + 24);
    v38 = *(v31 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore + 32);
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v55[0] = v35;
    v55[1] = v34;
    v55[2] = v53;
    v55[3] = v33;
    v52 = v33;
    (*(v38 + 16))(v55, v37, v38);
    v39 = v0[14];
    v42 = v0[9];
    v44 = v0[6];
    v43 = v0[7];
    v45 = v0[5];
    LOBYTE(v33) = *(v42 + *(v0[8] + 44));
    sub_1B7522CD0(v42, type metadata accessor for BankConnectConsent);
    (*(v44 + 16))(v43, v2, v45);
    v46 = swift_task_alloc();
    *(v46 + 16) = v53;
    *(v46 + 24) = v52;
    *(v46 + 32) = v9;
    *(v46 + 40) = v43;
    *(v46 + 48) = v39;
    *(v46 + 56) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996960, &qword_1B7839260);
    sub_1B7801468();
    v47 = v0[14];
    v49 = v0[6];
    v48 = v0[7];
    v50 = v0[5];

    (*(v49 + 8))(v48, v50);
    v51 = v0[3];
    sub_1B7522CD0(v47, type metadata accessor for InternalAccount);
  }

  v40 = v0[1];

  return v40(v51);
}

id sub_1B751FEE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() currentQueryGenerationToken];
  v9[0] = 0;
  v5 = [a1 setQueryGenerationFromToken:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
    result = NSManagedObjectContext.currentLocalHistoryToken.getter();
    *a2 = result;
  }

  else
  {
    v8 = v9[0];
    sub_1B77FF318();

    return swift_willThrow();
  }

  return result;
}

void sub_1B751FFD4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X4>, char a5@<W5>, void *a6@<X8>)
{
  v12 = type metadata accessor for InternalAccount(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedInstitution();
  v15 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(a1, a2);
  if (!v6)
  {
    if (v15)
    {
      v16 = v15;
      sub_1B7205540(0, &unk_1EDAF6430, off_1E7CA8B00);
      sub_1B72EAA7C(a4, v14);
      v17 = FKAccount.init(from:)(v14);
      sub_1B7205540(0, &qword_1EB9969B0, off_1E7CA8BC0);
      v18 = v16;
      v19 = FKInstitution.init(_:)(v18);
      v20 = [objc_allocWithZone(FKBankConnectAccountsProviderResponse) initWithAccount:v17 consentStatus:a5 & 1 institution:v19];

      *a6 = v20;
    }

    else
    {

      v21 = sub_1B7800098();
      v22 = sub_1B78011D8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1B71A3EF8(a1, a2, &v26);
        _os_log_impl(&dword_1B7198000, v21, v22, "Unable to find an institution with institutionID: %s.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1B8CA7A40](v24, -1, -1);
        MEMORY[0x1B8CA7A40](v23, -1, -1);
      }

      *a6 = 0;
    }
  }
}

uint64_t sub_1B752038C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B7520434;

  return sub_1B751F6B4();
}

uint64_t sub_1B7520434(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1B77FF308();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

double sub_1B75205D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B78000B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  if (!*(v2 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask))
  {
    v21 = OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask;
    v22 = a1;
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_1EDAF65B0);
    v12 = sub_1B7800098();
    v13 = sub_1B78011F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7198000, v12, v13, "Starting to observe persistent store remote change notifications", v14, 2u);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
    }

    v15 = sub_1B7800DF8();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = *(v2 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store);
    (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v4);
    v18 = (*(v5 + 80) + 56) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = v22;
    *(v19 + 5) = v17;
    *(v19 + 6) = v16;
    (*(v5 + 32))(&v19[v18], &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    v20 = sub_1B76A1F9C(0, 0, v10, &unk_1B7839370, v19);
    *(v2 + v21) = v20;
  }

  return result;
}

uint64_t sub_1B75208D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969B8, &unk_1B7860AD0);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969C0, &unk_1B7839380);
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969C8, &qword_1B7860AE0);
  v7[26] = v10;
  v7[27] = *(v10 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7520A74, 0, 0);
}

uint64_t sub_1B7520A74()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[16];
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969D0, &unk_1B7839390);
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8650], v5);
  sub_1B7800E48();

  sub_1B7800E28();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[29] = 0;
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_1B7520C18;
  v11 = v0[26];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v11);
}

uint64_t sub_1B7520C18()
{

  return MEMORY[0x1EEE6DFA0](sub_1B7520D14, 0, 0);
}

uint64_t sub_1B7520D14()
{
  v1 = v0[14];
  v0[31] = v1;
  if (v1 == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
LABEL_3:

    v2 = v0[1];
LABEL_6:

    return v2();
  }

  v3 = v0[29];
  sub_1B7800EB8();
  if (v3)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_1B728D04C(v1);

    v2 = v0[1];
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[32] = Strong;
  if (!Strong)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_1B728D04C(v1);
    goto LABEL_3;
  }

  v6 = Strong;
  if (v1)
  {
    v7 = *(v1 + 16);

    [v7 copy];
    sub_1B7801848();
    sub_1B728D04C(v1);
    swift_unknownObjectRelease();
    sub_1B7205540(0, &qword_1EB996830, 0x1E695D6A8);
    swift_dynamicCast();
    v1 = v0[15];
  }

  v0[33] = v1;
  v8 = *(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier);
  v9 = *(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier + 8);
  sub_1B719B06C(v6 + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_persistentHistoryTransactionProvider, (v0 + 2));
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_1B7520F7C;

  return sub_1B752134C(v1, v8, v9, (v0 + 2));
}

uint64_t sub_1B7520F7C()
{
  v2 = *v1;
  v2[35] = v0;

  v3 = v2[33];
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);

  if (v0)
  {
    v4 = sub_1B7521174;
  }

  else
  {
    v4 = sub_1B75210B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B75210B8()
{
  v1 = v0[32];
  sub_1B728D04C(v0[31]);

  v0[29] = v0[35];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_1B7520C18;
  v3 = v0[26];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v3);
}

uint64_t sub_1B7521174()
{
  v1 = v0[35];
  v2 = v1;
  v3 = sub_1B7800098();
  v4 = sub_1B78011D8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[35];
  v7 = v0[31];
  v8 = v0[32];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B7198000, v3, v4, "Failed to update accounts with error: %@.", v9, 0xCu);
    sub_1B7205418(v10, &qword_1EB9910D0, &unk_1B780D910);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
    MEMORY[0x1B8CA7A40](v9, -1, -1);
    sub_1B728D04C(v7);
  }

  else
  {
    sub_1B728D04C(v0[31]);
  }

  v0[29] = 0;
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_1B7520C18;
  v14 = v0[26];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v14);
}

uint64_t sub_1B752134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  v5[13] = swift_task_alloc();
  v6 = type metadata accessor for InternalAccount(0);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920, &qword_1B7814D00);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75214AC, 0, 0);
}

uint64_t sub_1B75214AC()
{
  v1 = *(v0 + 56);
  v2 = [*(*(*(v0 + 88) + OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store) + 16) newBackgroundContext];
  type metadata accessor for SendableNSPersistentHistoryToken();
  v3 = swift_allocObject();
  v4 = v3;
  v5 = *(v0 + 56);
  if (v1)
  {
    *(v3 + 16) = v5;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v4 = 0;
  }

  v6 = *(v0 + 96);
  sub_1B719B06C(*(v0 + 80), v0 + 16);
  v7 = swift_task_alloc();
  v7[2] = v2;
  v7[3] = v0 + 16;
  v7[4] = v4;
  v7[5] = v6;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996980, &qword_1B7839320);
  sub_1B7801468();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v9 = *(v0 + 169);
  if (*(v0 + 168) == 1)
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = swift_task_alloc();
    v12[2] = v11;
    v12[3] = v10;
    v12[4] = v2;
    sub_1B7801468();
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);

    sub_1B72EA97C(v13, v14);
    v17 = (*(v16 + 48))(v14, 1, v15);
    v18 = *(v0 + 160);
    if (v17 == 1)
    {
      sub_1B7205418(*(v0 + 160), &qword_1EB991920, &qword_1B7814D00);
      v19 = 0;
    }

    else
    {
      v20 = *(v0 + 128);
      v21 = *(v0 + 136);
      sub_1B72EABA0(*(v0 + 152), v21);
      sub_1B7205540(0, &unk_1EDAF6430, off_1E7CA8B00);
      sub_1B72EAA7C(v21, v20);
      v19 = FKAccount.init(from:)(v20);
      sub_1B7522CD0(v21, type metadata accessor for InternalAccount);
      sub_1B7205418(v18, &qword_1EB991920, &qword_1B7814D00);
    }

    v22 = *(v0 + 104);
    v23 = *(v0 + 88);
    v24 = sub_1B7800DF8();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    sub_1B7800DA8();
    v25 = v19;
    v26 = v23;
    v27 = sub_1B7800D98();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v26;
    v28[5] = v19;
    sub_1B759B8D0(0, 0, v22, &unk_1B7839348, v28);
  }

  if (v9)
  {
    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = swift_task_alloc();
    v32[2] = v31;
    v32[3] = v30;
    v32[4] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996988, &qword_1B7839328);
    sub_1B7801468();

    v34 = *(v0 + 170);
    if (v34 != 2)
    {
      v35 = *(v0 + 104);
      v36 = *(v0 + 88);
      v37 = v34 & 1;
      v38 = sub_1B7800DF8();
      (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
      sub_1B7800DA8();
      v39 = v36;
      v40 = sub_1B7800D98();
      v41 = swift_allocObject();
      v42 = MEMORY[0x1E69E85E0];
      v41[2] = v40;
      v41[3] = v42;
      v41[4] = v39;
      v41[5] = v37;
      sub_1B759B8D0(0, 0, v35, &unk_1B7839338, v41);
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

void sub_1B75219F4(void *a1@<X0>, void *a2@<X2>, BOOL *a3@<X8>)
{
  v56[4] = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v56[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v56];

  if (v8)
  {
    if (a2)
    {
      v9 = a2[2];
      v10 = v56[0];
      [v9 copy];
      sub_1B7801848();
      swift_unknownObjectRelease();
      sub_1B7205540(0, &qword_1EB996830, 0x1E695D6A8);
      swift_dynamicCast();
      a2 = v55;
    }

    else
    {
      v12 = v56[0];
    }

    NSManagedObjectContext.fetchPersistentHistory(after:store:)(a2, 0);
    v14 = v13;

    if (!v3)
    {
      if (v14 >> 62)
      {
        goto LABEL_54;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
      {
        v16 = 0;
        v48 = v14 & 0xFFFFFFFFFFFFFF8;
        v49 = v14 & 0xC000000000000001;
        v45 = v14 + 32;
        do
        {
          v17 = v16;
          if (i == v16)
          {
            break;
          }

          if (v49)
          {
            v18 = MEMORY[0x1B8CA5DC0](v16, v14);
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v18 = *(v14 + 8 * v16 + 32);
          }

          v19 = v18;
          if (__OFADD__(v17, 1))
          {
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          v20 = sub_1B7523260(v18);

          v16 = v17 + 1;
        }

        while ((v20 & 1) == 0);
        v21 = 0;
        v43 = v14;
        v44 = a3;
        v47 = i;
        while (1)
        {
          if (v49)
          {
            v22 = MEMORY[0x1B8CA5DC0](v21, v14);
          }

          else
          {
            if (v21 >= *(v48 + 16))
            {
              goto LABEL_53;
            }

            v22 = *(v45 + 8 * v21);
          }

          v54 = v22;
          v23 = __OFADD__(v21, 1);
          v24 = v21 + 1;
          if (v23)
          {
            break;
          }

          v46 = v24;
          v25 = [v22 changes];
          if (v25)
          {
            v26 = v25;
            sub_1B7205540(0, &unk_1EB9969A0, 0x1E695D690);
            v27 = sub_1B7800C38();

            if (v27 >> 62)
            {
              v28 = sub_1B7801958();
              a3 = v54;
              if (v28)
              {
LABEL_28:
                v29 = 0;
                v52 = v27 & 0xFFFFFFFFFFFFFF8;
                v53 = v27 & 0xC000000000000001;
                v50 = v28;
                v51 = v27;
                while (1)
                {
                  if (v53)
                  {
                    v30 = MEMORY[0x1B8CA5DC0](v29, v27);
                  }

                  else
                  {
                    if (v29 >= *(v52 + 16))
                    {
                      goto LABEL_49;
                    }

                    v30 = *(v27 + 8 * v29 + 32);
                  }

                  v31 = v30;
                  v32 = v29 + 1;
                  if (__OFADD__(v29, 1))
                  {
                    break;
                  }

                  v33 = [v30 changedObjectID];
                  v14 = [v33 entity];

                  v34 = [v14 name];
                  if (v34)
                  {
                    v35 = sub_1B7800868();
                    v37 = v36;

                    type metadata accessor for ManagedConsent();
                    v38 = [swift_getObjCClassFromMetadata() entityName];
                    v39 = sub_1B7800868();
                    v41 = v40;

                    if (v35 == v39 && v37 == v41)
                    {

                      v42 = 1;
                      a3 = v44;
                      i = v47;
                      goto LABEL_46;
                    }

                    v14 = sub_1B78020F8();

                    i = v47;
                    a3 = v54;
                    if (v14)
                    {

                      v42 = 1;
                      a3 = v44;
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                  }

                  ++v29;
                  v27 = v51;
                  if (v32 == v50)
                  {
                    goto LABEL_19;
                  }
                }

                __break(1u);
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }
            }

            else
            {
              v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
              a3 = v54;
              if (v28)
              {
                goto LABEL_28;
              }
            }

LABEL_19:

            v14 = v43;
            a3 = v44;
          }

          else
          {
          }

          v21 = v46;
          if (v46 == i)
          {
            v42 = 0;
LABEL_46:

            *a3 = i != v17;
            a3[1] = v42;
            return;
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        ;
      }

      *a3 = 0;
    }
  }

  else
  {
    v11 = v56[0];
    sub_1B77FF318();

    swift_willThrow();
  }
}

uint64_t sub_1B7521F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1B7800DA8();
  v5[8] = sub_1B7800D98();
  v7 = sub_1B7800CD8();

  return MEMORY[0x1EEE6DFA0](sub_1B7521FC0, v7, v6);
}

uint64_t sub_1B7521FC0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong bankConnectAccountDidChange_];
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B752207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1B7800DA8();
  v5[8] = sub_1B7800D98();
  v7 = sub_1B7800CD8();

  return MEMORY[0x1EEE6DFA0](sub_1B7522118, v7, v6);
}

uint64_t sub_1B7522118()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong bankConnectConsentStatusDidChange_];
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

void *sub_1B75221D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  type metadata accessor for ManagedInternalAccount();
  result = static ManagedInternalAccount.existingAccount(withExternalAccountID:in:)(a1, a2);
  if (!v4)
  {
    if (result)
    {
      InternalAccount.init(_:)(result, a4);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = type metadata accessor for InternalAccount(0);
    return (*(*(v10 - 8) + 56))(a4, v9, 1, v10);
  }

  return result;
}

void sub_1B752229C(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for ManagedConsent();
  v28.receiver = swift_getObjCClassFromMetadata();
  v28.super_class = &OBJC_METACLASS____TtC10FinanceKit14ManagedConsent;
  v6 = objc_msgSendSuper2(&v28, sel_fetchRequest);
  v7 = sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_1B7807CD0;
  v8[7] = MEMORY[0x1E69E6158];
  v8[8] = sub_1B721FF04();
  v8[4] = a1;
  v8[5] = a2;

  v9 = sub_1B78010E8();
  [v6 setPredicate_];

  v10 = sub_1B7801498();
  if (v3)
  {

    return;
  }

  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_26:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_27:
    if (*(v13 + 16))
    {
      v25 = *(v13 + 32);

      *a3 = v25;
    }

    else
    {

      *a3 = 2;
    }

    return;
  }

  v12 = sub_1B7801958();
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_5:
  v29 = MEMORY[0x1E69E7CC0];
  sub_1B71FE410(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v29;
    if ((v11 & 0xC000000000000001) == 0)
    {
      v19 = 32;
      while (1)
      {
        v20 = *(v11 + v19);
        v21 = [v20 consentStatusValue];
        if (v21)
        {
          if (v21 != 1)
          {
            sub_1B7801A78();

            [v20 consentStatusValue];
            goto LABEL_33;
          }

          v22 = 1;
        }

        else
        {
          v22 = 0;
        }

        v29 = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1B71FE410((v23 > 1), v24 + 1, 1);
          v13 = v29;
        }

        *(v13 + 16) = v24 + 1;
        *(v13 + v24 + 32) = v22;
        v19 += 8;
        if (!--v12)
        {
          goto LABEL_24;
        }
      }
    }

    v14 = 0;
    v8 = &selRef_emailTypeValue;
    do
    {
      v7 = MEMORY[0x1B8CA5DC0](v14, v11);
      v15 = [swift_unknownObjectRetain() consentStatusValue];
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_31;
        }

        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      swift_unknownObjectRelease_n();
      v29 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B71FE410((v17 > 1), v18 + 1, 1);
        v13 = v29;
      }

      ++v14;
      *(v13 + 16) = v18 + 1;
      *(v13 + v18 + 32) = v16;
    }

    while (v12 != v14);
LABEL_24:

    goto LABEL_27;
  }

  __break(1u);
LABEL_31:
  sub_1B7801A78();

  [v7 v8[407]];
LABEL_33:
  v26 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v26);

  sub_1B7801C88();
  __break(1u);
}

id BankConnectAccountsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AccountsProviderResponse.bankConnectConsentStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AccountsProviderResponse(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AccountsProviderResponse.bankConnectConsentStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccountsProviderResponse(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

id sub_1B7522850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v15[3] = type metadata accessor for BankConnectConsentStore();
  v15[4] = &protocol witness table for BankConnectConsentStore;
  v15[0] = a4;
  v10 = &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_persistentHistoryTransactionProvider];
  *(v10 + 3) = &type metadata for PersistentHistoryTransactionProvider;
  *(v10 + 4) = &off_1F2F5E570;
  *&a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask] = 0;
  swift_unknownObjectWeakInit();
  v11 = &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store] = a3;
  sub_1B719B06C(v15, &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore]);
  v14.receiver = a5;
  v14.super_class = type metadata accessor for BankConnectAccountsProvider();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

id sub_1B7522948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v19[3] = a6;
  v19[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  v14 = &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_persistentHistoryTransactionProvider];
  *(v14 + 3) = &type metadata for PersistentHistoryTransactionProvider;
  *(v14 + 4) = &off_1F2F5E570;
  *&a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_remoteChangeNotificationTask] = 0;
  swift_unknownObjectWeakInit();
  v15 = &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_primaryAccountIdentifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_store] = a3;
  sub_1B719B06C(v19, &a5[OBJC_IVAR____TtC10FinanceKit27BankConnectAccountsProvider_consentStore]);
  v18.receiver = a5;
  v18.super_class = type metadata accessor for BankConnectAccountsProvider();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

id sub_1B7522A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for BankConnectAccountsProvider());
  (*(v13 + 16))(v15, a4, a6);
  return sub_1B7522948(a1, a2, a3, v15, v16, a6, a7);
}

id sub_1B7522B98(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v4 = *(off_1EDAF9E38 + 2);
  v5 = type metadata accessor for BankConnectCloudKitActivityVoucherManaging();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  type metadata accessor for BankConnectConsentStore();
  v7 = swift_allocObject();
  v7[6] = v5;
  v7[7] = &protocol witness table for BankConnectCloudKitActivityVoucherManaging;
  v7[2] = v4;
  v7[3] = v6;
  v8 = objc_allocWithZone(type metadata accessor for BankConnectAccountsProvider());
  swift_retain_n();

  return sub_1B7522850(a1, a2, v4, v7, v8);
}

uint64_t sub_1B7522CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7522D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalAccount(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AccountsProviderResponse(uint64_t a1)
{
  result = qword_1EB996970;
  if (!qword_1EB996970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of BankConnectAccountsProvider.accountAndReconsentStatus()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B721FDB8;

  return v5();
}

uint64_t sub_1B752302C(uint64_t a1)
{
  result = type metadata accessor for InternalAccount(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B75230E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B723838C;

  return sub_1B752207C(a1, v4, v5, v7, v6);
}

uint64_t sub_1B75231A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B723838C;

  return sub_1B7521F24(a1, v4, v5, v7, v6);
}

uint64_t sub_1B7523260(void *a1)
{
  result = [a1 changes];
  if (result)
  {
    v2 = result;
    sub_1B7205540(0, &unk_1EB9969A0, 0x1E695D690);
    v3 = sub_1B7800C38();

    if (v3 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      v5 = 0;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      v36 = i;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B8CA5DC0](v5, v3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_32;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = [v7 changedObjectID];
        v11 = [v10 entity];

        v12 = [v11 name];
        if (v12)
        {
          v13 = sub_1B7800868();
          v15 = v14;

          type metadata accessor for ManagedInternalAccount();
          v16 = [swift_getObjCClassFromMetadata() entityName];
          v17 = sub_1B7800868();
          v19 = v18;

          if (v13 == v17 && v15 == v19)
          {
            goto LABEL_26;
          }

          v20 = sub_1B78020F8();

          if (v20)
          {
            goto LABEL_27;
          }

          type metadata accessor for ManagedAccount();
          v21 = [swift_getObjCClassFromMetadata() entityName];
          v22 = sub_1B7800868();
          v24 = v23;

          if (v13 == v22 && v15 == v24)
          {
            goto LABEL_26;
          }

          v25 = sub_1B78020F8();

          if (v25)
          {
            goto LABEL_27;
          }

          type metadata accessor for ManagedAccountBalance();
          v26 = [swift_getObjCClassFromMetadata() entityName];
          v27 = sub_1B7800868();
          v29 = v28;

          if (v13 == v27 && v15 == v29)
          {
LABEL_26:

LABEL_27:

LABEL_28:

            return 1;
          }

          v30 = sub_1B78020F8();

          if (v30)
          {
            goto LABEL_27;
          }

          type metadata accessor for ManagedInternalAccountBalance();
          v31 = [swift_getObjCClassFromMetadata() entityName];
          v32 = sub_1B7800868();
          v34 = v33;

          if (v13 == v32 && v15 == v34)
          {

            goto LABEL_28;
          }

          v35 = sub_1B78020F8();

          v6 = v3 & 0xFFFFFFFFFFFFFF8;
          i = v36;
          if (v35)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v5;
        if (v9 == i)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:

    return 0;
  }

  return result;
}

uint64_t sub_1B7523610()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B7201BB0;

  return sub_1B752038C(v2, v3);
}

uint64_t sub_1B75236BC(uint64_t a1)
{
  v4 = *(sub_1B78000B8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7201BB0;

  return sub_1B75208D4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

FinanceKit::FullyQualifiedOrderIdentifier __swiftcall FullyQualifiedOrderIdentifier.init(orderTypeIdentifier:orderIdentifier:)(Swift::String orderTypeIdentifier, Swift::String orderIdentifier)
{
  *v2 = orderTypeIdentifier;
  v2[1] = orderIdentifier;
  result.orderIdentifier = orderIdentifier;
  result.orderTypeIdentifier = orderTypeIdentifier;
  return result;
}

uint64_t sub_1B7523824()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

void sub_1B7523864(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7874AD0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

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

uint64_t sub_1B7523948(uint64_t a1)
{
  v2 = sub_1B7523DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7523984(uint64_t a1)
{
  v2 = sub_1B7523DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75239C0(uint64_t a1)
{
  v2 = sub_1B7523E28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75239FC(uint64_t a1)
{
  v2 = sub_1B7523E28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7523A38(uint64_t a1)
{
  v2 = sub_1B7523E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7523A74(uint64_t a1)
{
  v2 = sub_1B7523E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderChangeNotificationsValue.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t OrderChangeNotificationsValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969D8, &qword_1B78393E0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969E0, &qword_1B78393E8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9969E8, &qword_1B78393F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7523DD4();
  sub_1B78023F8();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B7523E28();
    v14 = v18;
    sub_1B7801ED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B7523E7C();
    sub_1B7801ED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1B7523DD4()
{
  result = qword_1EB9969F0;
  if (!qword_1EB9969F0)
  {
    result = swift_getWitnessTable(byte_1B78399D4, &type metadata for OrderChangeNotificationsValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9969F0);
  }

  return result;
}

unint64_t sub_1B7523E28()
{
  result = qword_1EB9969F8;
  if (!qword_1EB9969F8)
  {
    result = swift_getWitnessTable(a5F7, &type metadata for OrderChangeNotificationsValue.DisabledIfAppInstalledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB9969F8);
  }

  return result;
}

unint64_t sub_1B7523E7C()
{
  result = qword_1EB996A00;
  if (!qword_1EB996A00)
  {
    result = swift_getWitnessTable(byte_1B7839934, &type metadata for OrderChangeNotificationsValue.EnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A00);
  }

  return result;
}

uint64_t OrderChangeNotificationsValue.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A08, &qword_1B78393F8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A10, &qword_1B7839400);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A18, &unk_1B7839408);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7523DD4();
  v12 = v31;
  sub_1B78023C8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1B7801E98();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B721CE4C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1B7801B18();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v22 = &type metadata for OrderChangeNotificationsValue;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1B7523E28();
        sub_1B7801D38();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1B7523E7C();
        sub_1B7801D38();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t FullyQualifiedOrderIdentifier.orderTypeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void FullyQualifiedOrderIdentifier.orderTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t FullyQualifiedOrderIdentifier.orderIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FullyQualifiedOrderIdentifier.orderIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1B75244D0()
{
  if (*v0)
  {
    return 0x656449726564726FLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_1B752451C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001B7873C00 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x656449726564726FLL && a2 == 0xEF7265696669746ELL)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1B752460C(uint64_t a1)
{
  v2 = sub_1B7524BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7524648(uint64_t a1)
{
  v2 = sub_1B7524BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FullyQualifiedOrderIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A20, &qword_1B7839418);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7524BD0();
  sub_1B78023F8();
  v12 = 0;
  v8 = v10[3];
  sub_1B7801F78();
  if (!v8)
  {
    v11 = 1;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FullyQualifiedOrderIdentifier.hash(into:)(uint64_t a1)
{
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t FullyQualifiedOrderIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

void FullyQualifiedOrderIdentifier.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A30, &qword_1B7839420);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7524BD0();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = 0;
    v9 = sub_1B7801DF8();
    v11 = v10;
    v16 = v9;
    v17 = 1;
    v12 = sub_1B7801DF8();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t FullyQualifiedOrderIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B7801A78();

  MEMORY[0x1B8CA4D30](v1, v2);
  MEMORY[0x1B8CA4D30](0xD000000000000013, 0x80000001B78812A0);
  MEMORY[0x1B8CA4D30](v3, v4);
  MEMORY[0x1B8CA4D30](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1B7524BD0()
{
  result = qword_1EB996A28;
  if (!qword_1EB996A28)
  {
    result = swift_getWitnessTable(byte_1B78398E4, &type metadata for FullyQualifiedOrderIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A28);
  }

  return result;
}

unint64_t sub_1B7524C28()
{
  result = qword_1EB996A38;
  if (!qword_1EB996A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OrderChangeNotificationsValue, &type metadata for OrderChangeNotificationsValue, v0, v1);
    atomic_store(result, &qword_1EB996A38);
  }

  return result;
}

unint64_t sub_1B7524C80()
{
  result = qword_1EB996A40;
  if (!qword_1EB996A40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FullyQualifiedOrderIdentifier, &type metadata for FullyQualifiedOrderIdentifier, v0, v1);
    atomic_store(result, &qword_1EB996A40);
  }

  return result;
}

unint64_t sub_1B7524D48()
{
  result = qword_1EB996A48;
  if (!qword_1EB996A48)
  {
    result = swift_getWitnessTable(aE_17, &type metadata for OrderChangeNotificationsValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A48);
  }

  return result;
}

unint64_t sub_1B7524DA0()
{
  result = qword_1EB996A50;
  if (!qword_1EB996A50)
  {
    result = swift_getWitnessTable(byte_1B78398BC, &type metadata for FullyQualifiedOrderIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A50);
  }

  return result;
}

unint64_t sub_1B7524DF8()
{
  result = qword_1EB996A58;
  if (!qword_1EB996A58)
  {
    result = swift_getWitnessTable(byte_1B783982C, &type metadata for FullyQualifiedOrderIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A58);
  }

  return result;
}

unint64_t sub_1B7524E50()
{
  result = qword_1EB996A60;
  if (!qword_1EB996A60)
  {
    result = swift_getWitnessTable(byte_1B7839854, &type metadata for FullyQualifiedOrderIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A60);
  }

  return result;
}

unint64_t sub_1B7524EA8()
{
  result = qword_1EB996A68;
  if (!qword_1EB996A68)
  {
    result = swift_getWitnessTable(byte_1B7839724, &type metadata for OrderChangeNotificationsValue.EnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A68);
  }

  return result;
}

unint64_t sub_1B7524F00()
{
  result = qword_1EB996A70;
  if (!qword_1EB996A70)
  {
    result = swift_getWitnessTable(byte_1B783974C, &type metadata for OrderChangeNotificationsValue.EnabledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A70);
  }

  return result;
}

unint64_t sub_1B7524F58()
{
  result = qword_1EB996A78;
  if (!qword_1EB996A78)
  {
    result = swift_getWitnessTable(byte_1B78396D4, &type metadata for OrderChangeNotificationsValue.DisabledIfAppInstalledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A78);
  }

  return result;
}

unint64_t sub_1B7524FB0()
{
  result = qword_1EB996A80;
  if (!qword_1EB996A80)
  {
    result = swift_getWitnessTable("5", &type metadata for OrderChangeNotificationsValue.DisabledIfAppInstalledCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A80);
  }

  return result;
}

unint64_t sub_1B7525008()
{
  result = qword_1EB996A88;
  if (!qword_1EB996A88)
  {
    result = swift_getWitnessTable(asc_1B7839774, &type metadata for OrderChangeNotificationsValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A88);
  }

  return result;
}

unint64_t sub_1B7525060()
{
  result = qword_1EB996A90;
  if (!qword_1EB996A90)
  {
    result = swift_getWitnessTable(byte_1B783979C, &type metadata for OrderChangeNotificationsValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996A90);
  }

  return result;
}

void __swiftcall AuditTokenWrapper.init(_:)(FinanceKit::AuditTokenWrapper *__return_ptr retstr, audit_token_t *a2)
{
  *retstr->token.val = a2;
  *&retstr->token.val[2] = v2;
  *&retstr->token.val[4] = v3;
  *&retstr->token.val[6] = v4;
}

uint64_t AuditTokenWrapper.hash(into:)()
{
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  return sub_1B7802338();
}

uint64_t AuditTokenWrapper.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  return sub_1B7802368();
}

uint64_t sub_1B7525220()
{
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  return sub_1B7802338();
}

uint64_t sub_1B75252B0(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  sub_1B7802338();
  return sub_1B7802368();
}

BOOL _s10FinanceKit17AuditTokenWrapperV2eeoiySbAC_ACtFZ_0(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0] && a1[1].i32[1] == a2[1].i32[1] && a1[1].i32[2] == a2[1].i32[2])
  {
    return a1[1].i32[3] == a2[1].i32[3];
  }

  return result;
}

unint64_t sub_1B75253E4()
{
  result = qword_1EDAF9E20;
  if (!qword_1EDAF9E20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuditTokenWrapper, &type metadata for AuditTokenWrapper, v0, v1);
    atomic_store(result, &qword_1EDAF9E20);
  }

  return result;
}

FinanceKit::RawOrderPaymentTransaction::TransactionType_optional __swiftcall RawOrderPaymentTransaction.TransactionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderPaymentTransaction.TransactionType.rawValue.getter()
{
  if (*v0)
  {
    return 0x646E75666572;
  }

  else
  {
    return 0x6573616863727570;
  }
}

uint64_t sub_1B75254F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E75666572;
  }

  else
  {
    v3 = 0x6573616863727570;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x646E75666572;
  }

  else
  {
    v5 = 0x6573616863727570;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B7525594()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B7525614(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B7525680(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B75256FC(char *a2@<X8>)
{
  v3 = sub_1B7801D18();

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

void sub_1B752575C(uint64_t *a1@<X8>)
{
  v2 = 0x6573616863727570;
  if (*v1)
  {
    v2 = 0x646E75666572;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void static RawOrderPaymentTransaction.Status.validCases(for:)(_BYTE *a1)
{
  if (*a1)
  {
    sub_1B7546ABC(&unk_1F2F450E0);
  }

  else
  {
    sub_1B7546ABC(&unk_1F2F450B8);
  }
}

Swift::Bool __swiftcall RawOrderPaymentTransaction.Status.isValidCase(for:)(FinanceKit::RawOrderPaymentTransaction::TransactionType a1)
{
  if (*a1)
  {
    v2 = &unk_1F2F450E0;
  }

  else
  {
    v2 = &unk_1F2F450B8;
  }

  v3 = *v1;
  sub_1B7546ABC(v2);
  LOBYTE(v3) = sub_1B72C3C44(v3, v4);

  return v3 & 1;
}

FinanceKit::RawOrderPaymentTransaction::Status_optional __swiftcall RawOrderPaymentTransaction.Status.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderPaymentTransaction.Status.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6574656C706D6F63;
  v4 = 0x656C6C65636E6163;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465766F72707061;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7525A24()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B7525B0C(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B7525BE0(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7525CD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6570;
  v5 = 0x6574656C706D6F63;
  v6 = 0xE900000000000064;
  v7 = 0x656C6C65636E6163;
  v8 = 0xE900000000000064;
  if (v2 != 3)
  {
    v7 = 0x64656C696166;
    v8 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1)
  {
    v4 = 0x6465766F72707061;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t RawOrderPaymentTransaction.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v2;
  v7 = *(v1 + 40);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 RawOrderPaymentTransaction.amount.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v3;
  v7 = *(v1 + 40);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v5;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

double RawOrderPaymentTransaction.paymentMethod.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

void RawOrderPaymentTransaction.paymentMethod.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

uint64_t RawOrderPaymentTransaction.applePayTransactionIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void RawOrderPaymentTransaction.applePayTransactionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t RawOrderPaymentTransaction.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawOrderPaymentTransaction(0) + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawOrderPaymentTransaction.createdAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawOrderPaymentTransaction(0) + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawOrderPaymentTransaction.receipt.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderPaymentTransaction(0) + 40));

  return v1;
}

void RawOrderPaymentTransaction.receipt.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderPaymentTransaction(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawOrderPaymentTransaction.init(transactionType:status:amount:paymentMethod:applePayTransactionIdentifier:createdAt:receipt:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = *a1;
  v15 = *a2;
  v17 = *a4;
  v16 = a4[1];
  v18 = type metadata accessor for RawOrderPaymentTransaction(0);
  v19 = *(v18 + 40);
  v20 = *(a3 + 16);
  *(a9 + 8) = *a3;
  v21 = (a9 + v19);
  *a9 = v14;
  *(a9 + 1) = v15;
  *(a9 + 24) = v20;
  *(a9 + 40) = *(a3 + 32);
  *(a9 + 48) = v17;
  *(a9 + 56) = v16;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  v22 = *(v18 + 36);
  v23 = sub_1B77FF988();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a7, v23);
  *v21 = a8;
  v21[1] = a10;
  return result;
}

unint64_t sub_1B752632C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B7527BEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B752635C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF657079546E6F69;
  v4 = 0x746361736E617274;
  v5 = 0xE700000000000000;
  v6 = 0x74706965636572;
  if (v2 != 6)
  {
    v6 = 0x7374706965636572;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE900000000000074;
  v8 = 0x4164657461657263;
  if (v2 != 4)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x80000001B7874420;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000646F687465;
  v10 = 0x4D746E656D796170;
  if (v2 != 2)
  {
    v10 = 0x746E756F6D61;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x737574617473;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1B7526470()
{
  v1 = *v0;
  v2 = 0x746361736E617274;
  v3 = 0x74706965636572;
  if (v1 != 6)
  {
    v3 = 0x7374706965636572;
  }

  v4 = 0x4164657461657263;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4D746E656D796170;
  if (v1 != 2)
  {
    v5 = 0x746E756F6D61;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B7526580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7527BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75265A8(uint64_t a1)
{
  v2 = sub_1B75275A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75265E4(uint64_t a1)
{
  v2 = sub_1B75275A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RawOrderPaymentTransaction.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1B77FF988();
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996A98, &qword_1B7839AE0);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for RawOrderPaymentTransaction(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B75275A4();
  v13 = v38;
  sub_1B78023C8();
  if (v13)
  {
    goto LABEL_3;
  }

  v38 = v5;
  v34 = v9;
  v45 = 0;
  sub_1B75275F8();
  sub_1B7801E48();
  v14 = v40;
  *v11 = v40;
  v45 = 1;
  sub_1B752764C();
  sub_1B7801E48();
  v15 = v40;
  if (v14)
  {
    v16 = &unk_1F2F450E0;
  }

  else
  {
    v16 = &unk_1F2F450B8;
  }

  sub_1B7546ABC(v16);
  v17 = v15;
  v19 = sub_1B72C3C44(v15, v18);

  if ((v19 & 1) == 0)
  {
    v45 = 1;
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0x2720737574617453, 0xE800000000000000);
    v44 = v17;
    sub_1B7801C48();
    MEMORY[0x1B8CA4D30](0xD000000000000020, 0x80000001B7884130);
    v44 = v14;
    sub_1B7801C48();
    MEMORY[0x1B8CA4D30](39, 0xE100000000000000);
    sub_1B7801B18();
    swift_allocError();
    sub_1B728216C(&qword_1EB996AB8, &qword_1EB996A98, &qword_1B7839AE0, MEMORY[0x1E69E6F50]);
    sub_1B7801AD8();

    swift_willThrow();
    (*(v37 + 8))(v8, v6);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v39);

    return;
  }

  v11[1] = v17;
  v45 = 2;
  sub_1B75276A0();
  sub_1B7801E48();
  v20 = *(&v40 + 1);
  *(v11 + 6) = v40;
  *(v11 + 7) = v20;
  LOBYTE(v40) = 4;
  sub_1B71A6F54(&unk_1EDAF65E0, MEMORY[0x1E6969558]);
  v21 = v38;
  sub_1B7801E48();
  v22 = v37;
  v23 = v34;
  (*(v36 + 32))(&v11[*(v34 + 36)], v21, v3);
  LOBYTE(v40) = 6;
  v33 = 0;
  v24 = sub_1B7801D78();
  v25 = &v11[*(v23 + 40)];
  *v25 = v24;
  v25[1] = v26;
  v38 = v26;
  v45 = 3;
  v44 = 1;
  sub_1B75276F4();
  sub_1B7801D58();
  v27 = v41;
  *(v11 + 8) = v40;
  *(v11 + 24) = v27;
  *(v11 + 5) = v42;
  v43 = 5;
  v28 = sub_1B7801D78();
  v33 = v29;
  v30 = v28;
  (*(v22 + 8))(v8, v6);
  v31 = v33;
  *(v11 + 8) = v30;
  *(v11 + 9) = v31;
  sub_1B74C2794(v11, v35);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1B7527748(v11);
}

uint64_t RawOrderPaymentTransaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996AD0, &qword_1B7839AE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75275A4();
  sub_1B78023F8();
  LOBYTE(v21[0]) = *v3;
  LOBYTE(v18) = 0;
  sub_1B75277A4();
  sub_1B7801FC8();
  if (!v2)
  {
    LOBYTE(v21[0]) = *(v3 + 1);
    LOBYTE(v18) = 1;
    sub_1B75277F8();
    sub_1B7801FC8();
    v9 = *(v3 + 56);
    v24 = *(v3 + 48);
    v25 = v9;
    v23 = 2;
    sub_1B752784C();

    sub_1B7801FC8();

    v10 = *(v3 + 24);
    v21[0] = *(v3 + 8);
    v21[1] = v10;
    v22 = *(v3 + 40);
    v11 = *(v3 + 24);
    v18 = *(v3 + 8);
    v19 = v11;
    v20 = *(v3 + 40);
    v17 = 3;
    sub_1B7215720(v21, v15);
    sub_1B7215044();
    sub_1B7801FC8();
    v15[0] = v18;
    v15[1] = v19;
    v16 = v20;
    sub_1B721722C(v15);
    type metadata accessor for RawOrderPaymentTransaction(0);
    v14 = 4;
    sub_1B77FF988();
    sub_1B71A6F54(&qword_1EDAF65F0, MEMORY[0x1E6969538]);
    sub_1B7801FC8();
    v14 = 5;
    sub_1B7801EF8();
    v14 = 6;
    sub_1B7801EF8();
  }

  return (*(v6 + 8))(v8, v5);
}

void RawOrderPaymentTransaction.init(_:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B7800838();
  [a1 willAccessValueForKey_];

  v5 = [a1 primitiveTransactionType];
  v6 = sub_1B7800838();
  [a1 didAccessValueForKey_];

  v7 = [v5 shortValue];
  if (v7 > 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = v7;
    ManagedOrderPaymentTransaction.status.getter(&v29);
    *(a2 + 1) = v29;
    ManagedOrderPaymentTransaction.amount.getter(v27);
    v8 = v27[1];
    *(a2 + 8) = v27[0];
    *(a2 + 24) = v8;
    *(a2 + 40) = v28;
    v9 = [a1 paymentMethodDisplayName];
    v10 = sub_1B77FFA48();
    v11 = sub_1B741F7D4(v10);
    v13 = v12;

    *(a2 + 48) = v11;
    *(a2 + 56) = v13;
    v14 = [a1 applePayTransactionIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1B7800868();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *(a2 + 64) = v16;
    *(a2 + 72) = v18;
    v19 = [a1 createdAt];
    v20 = type metadata accessor for RawOrderPaymentTransaction(0);
    sub_1B77FF928();

    v21 = [a1 receiptName];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1B7800868();
      v25 = v24;
    }

    else
    {

      v23 = 0;
      v25 = 0;
    }

    v26 = (a2 + *(v20 + 40));
    *v26 = v23;
    v26[1] = v25;
  }
}

BOOL _s10FinanceKit26RawOrderPaymentTransactionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x646E75666572;
  }

  else
  {
    v5 = 0x6573616863727570;
  }

  if (v4)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (*a2)
  {
    v7 = 0x646E75666572;
  }

  else
  {
    v7 = 0x6573616863727570;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_1B78020F8();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1B72C07B4(*(a1 + 1), *(a2 + 1)))
  {
    v11 = *(a1 + 24);
    v28 = *(a1 + 8);
    v29[0] = v11;
    *&v29[1] = *(a1 + 40);
    v12 = *(a2 + 24);
    v30 = *(a2 + 8);
    v31[0] = v12;
    *&v31[1] = *(a2 + 40);
    v13 = LODWORD(v29[0]);
    v14 = v12;
    v15 = v28;
    v16 = v30;
    sub_1B7215720(&v28, v27);
    sub_1B7215720(&v30, v27);
    if (MEMORY[0x1B8CA5970](v15, *(&v15 + 1), v13, v16, *(&v16 + 1), v14))
    {
      if (*(&v29[0] + 1) == *(&v31[0] + 1) && *&v29[1] == *&v31[1])
      {
        sub_1B721722C(&v30);
        sub_1B721722C(&v28);
      }

      else
      {
        v18 = sub_1B78020F8();
        sub_1B721722C(&v30);
        sub_1B721722C(&v28);
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1B78020F8() & 1) == 0)
      {
        return 0;
      }

      v19 = *(a1 + 72);
      v20 = *(a2 + 72);
      if (v19)
      {
        if (!v20 || (*(a1 + 64) != *(a2 + 64) || v19 != v20) && (sub_1B78020F8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v20)
      {
        return 0;
      }

      v21 = type metadata accessor for RawOrderPaymentTransaction(0);
      if (sub_1B77FF918())
      {
        v22 = *(v21 + 40);
        v23 = (a1 + v22);
        v24 = *(a1 + v22 + 8);
        v25 = (a2 + v22);
        v26 = v25[1];
        if (v24)
        {
          return v26 && (*v23 == *v25 && v24 == v26 || (sub_1B78020F8() & 1) != 0);
        }

        if (!v26)
        {
          return 1;
        }
      }
    }

    else
    {
      sub_1B721722C(&v30);
      sub_1B721722C(&v28);
    }
  }

  return 0;
}

uint64_t type metadata accessor for RawOrderPaymentTransaction(uint64_t a1)
{
  result = qword_1EB996B20;
  if (!qword_1EB996B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B75275A4()
{
  result = qword_1EB996AA0;
  if (!qword_1EB996AA0)
  {
    result = swift_getWitnessTable(asc_1B7839F3C, &type metadata for RawOrderPaymentTransaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996AA0);
  }

  return result;
}

unint64_t sub_1B75275F8()
{
  result = qword_1EB996AA8;
  if (!qword_1EB996AA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentTransaction.TransactionType, &type metadata for RawOrderPaymentTransaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB996AA8);
  }

  return result;
}

unint64_t sub_1B752764C()
{
  result = qword_1EB996AB0;
  if (!qword_1EB996AB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentTransaction.Status, &type metadata for RawOrderPaymentTransaction.Status, v0, v1);
    atomic_store(result, &qword_1EB996AB0);
  }

  return result;
}

unint64_t sub_1B75276A0()
{
  result = qword_1EB996AC0;
  if (!qword_1EB996AC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentMethod, &type metadata for RawOrderPaymentMethod, v0, v1);
    atomic_store(result, &qword_1EB996AC0);
  }

  return result;
}

unint64_t sub_1B75276F4()
{
  result = qword_1EB996AC8;
  if (!qword_1EB996AC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CurrencyAmount, &type metadata for CurrencyAmount, v0, v1);
    atomic_store(result, &qword_1EB996AC8);
  }

  return result;
}

uint64_t sub_1B7527748(uint64_t a1)
{
  v2 = type metadata accessor for RawOrderPaymentTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B75277A4()
{
  result = qword_1EB996AD8;
  if (!qword_1EB996AD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentTransaction.TransactionType, &type metadata for RawOrderPaymentTransaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB996AD8);
  }

  return result;
}

unint64_t sub_1B75277F8()
{
  result = qword_1EB996AE0;
  if (!qword_1EB996AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentTransaction.Status, &type metadata for RawOrderPaymentTransaction.Status, v0, v1);
    atomic_store(result, &qword_1EB996AE0);
  }

  return result;
}

unint64_t sub_1B752784C()
{
  result = qword_1EB996AE8;
  if (!qword_1EB996AE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentMethod, &type metadata for RawOrderPaymentMethod, v0, v1);
    atomic_store(result, &qword_1EB996AE8);
  }

  return result;
}

unint64_t sub_1B75278A4()
{
  result = qword_1EB996AF0;
  if (!qword_1EB996AF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentTransaction.TransactionType, &type metadata for RawOrderPaymentTransaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB996AF0);
  }

  return result;
}

unint64_t sub_1B7527940()
{
  result = qword_1EB996B08;
  if (!qword_1EB996B08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentTransaction.Status, &type metadata for RawOrderPaymentTransaction.Status, v0, v1);
    atomic_store(result, &qword_1EB996B08);
  }

  return result;
}

void sub_1B7527A00(uint64_t a1)
{
  sub_1B7280028();
  if (v1 <= 0x3F)
  {
    sub_1B77FF988();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B7527AE8()
{
  result = qword_1EB996B30;
  if (!qword_1EB996B30)
  {
    result = swift_getWitnessTable(a5_10, &type metadata for RawOrderPaymentTransaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996B30);
  }

  return result;
}

unint64_t sub_1B7527B40()
{
  result = qword_1EB996B38;
  if (!qword_1EB996B38)
  {
    result = swift_getWitnessTable(byte_1B7839E4C, &type metadata for RawOrderPaymentTransaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996B38);
  }

  return result;
}

unint64_t sub_1B7527B98()
{
  result = qword_1EB996B40;
  if (!qword_1EB996B40)
  {
    result = swift_getWitnessTable(byte_1B7839E74, &type metadata for RawOrderPaymentTransaction.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB996B40);
  }

  return result;
}

unint64_t sub_1B7527BEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B7801D18();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B7527C38()
{
  result = qword_1EB996B48;
  if (!qword_1EB996B48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentTransaction.Status, &type metadata for RawOrderPaymentTransaction.Status, v0, v1);
    atomic_store(result, &qword_1EB996B48);
  }

  return result;
}

unint64_t sub_1B7527C8C()
{
  result = qword_1EB996B50;
  if (!qword_1EB996B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawOrderPaymentTransaction.TransactionType, &type metadata for RawOrderPaymentTransaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB996B50);
  }

  return result;
}

uint64_t sub_1B7527CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1B71FE318(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1B78018C8();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 88 * result + 80);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1B71FE318((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1B723BB64(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1B723BB64(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1B7527F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_1B7527F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v56 - v9;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - v16;
  v18 = type metadata accessor for Order.PriorityInfo(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v56 - v23;
  v25 = *(a1 + 16);
  if (v25)
  {
    v71 = v17;
    v60 = v8;
    v56 = a2;
    v68 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v69 = v22;
    result = sub_1B7531490(v68, &v56 - v23, type metadata accessor for Order.PriorityInfo);
    v27 = v63;
    v28 = v24;
    if (v25 == 1)
    {
LABEL_3:
      v29 = v56;
      sub_1B75314F8(v28, v56, type metadata accessor for Order.PriorityInfo);
      return (*(v69 + 56))(v29, 0, 1, v18);
    }

    v57 = (v11 + 32);
    v31 = 1;
    v70 = v24;
    v64 = v18;
    v66 = (v11 + 48);
    v67 = (v11 + 8);
    v59 = v21;
    while (1)
    {
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      v32 = v10;
      v72 = v31 + 1;
      sub_1B7531490(v68 + *(v69 + 72) * v31, v21, type metadata accessor for Order.PriorityInfo);
      v33 = v71;
      sub_1B77FF938();
      v34 = *(v18 + 20);
      v35 = word_1B7839FA2[v21[v34]];
      v36 = v28;
      v37 = word_1B7839FA2[*(v28 + v34)];
      if (v35 != v37)
      {
        v10 = v32;
        (*v67)(v33, v32);
        if (v37 < v35)
        {
          goto LABEL_24;
        }

        goto LABEL_8;
      }

      v38 = *(v18 + 24);
      v39 = *(v65 + 48);
      sub_1B7205588(&v21[v38], v27, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B7205588(v36 + v38, v27 + v39, &qword_1EB98EBD0, &unk_1B7809780);
      v10 = v32;
      v40 = v27;
      v41 = *v66;
      if ((*v66)(v40, 1, v10) == 1)
      {
        break;
      }

      v43 = v60;
      sub_1B7205588(v40, v60, &qword_1EB98EBD0, &unk_1B7809780);
      if (v41(v40 + v39, 1, v10) == 1)
      {
        v44 = *v67;
        (*v67)(v71, v10);
        v44(v43, v10);
        v21 = v59;
LABEL_21:
        v45 = v62;
        sub_1B7205588(&v21[v38], v62, &qword_1EB98EBD0, &unk_1B7809780);
        v46 = v41(v45, 1, v10);
        sub_1B7205418(v45, &qword_1EB98EBD0, &unk_1B7809780);
        v27 = v63;
        sub_1B7205418(v63, &qword_1EB98FCE0, &qword_1B7813550);
        v18 = v64;
        if (v46 != 1)
        {
          goto LABEL_24;
        }

        goto LABEL_8;
      }

      v47 = *v57;
      (*v57)(v61, v43, v10);
      v48 = v58;
      v47(v58, v40 + v39, v10);
      v49 = v71;
      v50 = v61;
      sub_1B77FF808();
      v52 = fabs(v51);
      sub_1B77FF808();
      v54 = fabs(v53);
      v55 = *v67;
      (*v67)(v48, v10);
      v55(v50, v10);
      v55(v49, v10);
      sub_1B7205418(v40, &qword_1EB98EBD0, &unk_1B7809780);
      v27 = v40;
      v18 = v64;
      v21 = v59;
      if (v52 < v54)
      {
LABEL_24:
        v28 = v70;
        sub_1B75315A8(v70, type metadata accessor for Order.PriorityInfo);
        result = sub_1B75314F8(v21, v28, type metadata accessor for Order.PriorityInfo);
        goto LABEL_9;
      }

LABEL_8:
      result = sub_1B75315A8(v21, type metadata accessor for Order.PriorityInfo);
      v28 = v70;
LABEL_9:
      ++v31;
      if (v72 == v25)
      {
        goto LABEL_3;
      }
    }

    if (v41(v40 + v39, 1, v10) == 1)
    {
      v42 = sub_1B77FF8C8();
      (*v67)(v71, v10);
      sub_1B7205418(v40, &qword_1EB98EBD0, &unk_1B7809780);
      v27 = v40;
      v18 = v64;
      if (v42)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    (*v67)(v71, v10);
    goto LABEL_21;
  }

  v30 = *(v22 + 56);

  return v30(a2, 1, 1, v18);
}

uint64_t sub_1B75286C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1B7282114();
        v20 = sub_1B78007E8();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

void static FoundInMailItem.items(fromCascadeEmails:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D10, &qword_1B781E4F8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  v33 = type metadata accessor for FoundInMailItem(0);
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v32 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;

  v13 = sub_1B723B9A4(v12);

  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 56);
  v17 = (v14 + 63) >> 6;
  v29 = v4;
  v18 = (v4 + 48);

  v19 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v19;
    if (!v16)
    {
      break;
    }

LABEL_8:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1B7531490(*(v13 + 48) + *(v32 + 72) * (v21 | (v19 << 6)), v11, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    sub_1B7531490(v11, v9, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    FoundInMailItem.init(cascadeEmail:)(v9, v3);
    sub_1B75315A8(v11, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    if ((*v18)(v3, 1, v33) == 1)
    {
      sub_1B7205418(v3, &qword_1EB992D10, &qword_1B781E4F8);
    }

    else
    {
      sub_1B75314F8(v3, v30, type metadata accessor for FoundInMailItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1B723F508(0, v31[2] + 1, 1, v31);
      }

      v23 = v31[2];
      v22 = v31[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v28 = v23 + 1;
        v27 = sub_1B723F508((v22 > 1), v23 + 1, 1, v31);
        v24 = v28;
        v31 = v27;
      }

      v25 = v30;
      v26 = v31;
      v31[2] = v24;
      sub_1B75314F8(v25, v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23, type metadata accessor for FoundInMailItem);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v34 = v31;

      sub_1B776DC78(&v34);

      return;
    }

    v16 = *(v13 + 56 + 8 * v19);
    ++v20;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
}

void ExtractedOrder.init(cascadeOrder:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v320 = a2;
  v284 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v300 = *(v284 - 8);
  v3 = MEMORY[0x1EEE9AC00](v284);
  v319 = &v280 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v307 = &v280 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v287 = &v280 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v288 = &v280 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v285 = &v280 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v290 = &v280 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v289 = &v280 - v15;
  v16 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  v298 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v297 = &v280 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538, &unk_1B7813260);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v296 = &v280 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v295 = &v280 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v294 = &v280 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v293 = &v280 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v292 = &v280 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v291 = &v280 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v305 = &v280 - v31;
  v313 = type metadata accessor for ExtractedOrder.Merchant(0);
  v311 = *(v313 - 8);
  v32 = MEMORY[0x1EEE9AC00](v313);
  v304 = &v280 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v306 = &v280 - v34;
  v35 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v310 = &v280 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996B58, &qword_1B7839F90);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v312 = &v280 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v317 = &v280 - v40;
  v41 = sub_1B77FF988();
  v42 = *(v41 - 8);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v302 = &v280 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v280 = &v280 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v282 = &v280 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v316 = &v280 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v299 = &v280 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v335 = &v280 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v309 = &v280 - v55;
  v56 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v334 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v280 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v60 = MEMORY[0x1EEE9AC00](v59 - 8);
  v303 = &v280 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v301 = &v280 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v281 = &v280 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v283 = &v280 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v286 = &v280 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v322 = &v280 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v314 = &v280 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v315 = &v280 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v308 = &v280 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v80 = &v280 - v79;
  v81 = MEMORY[0x1EEE9AC00](v78);
  v321 = &v280 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v328 = &v280 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v87 = &v280 - v86;
  MEMORY[0x1EEE9AC00](v85);
  v325 = &v280 - v88;
  v89 = a1[1];
  v318 = *a1;
  v90 = type metadata accessor for CascadeExtractedOrder(0);
  v91 = a1 + *(v90 + 60);
  v327 = v87;
  sub_1B7205588(v91, v87, &qword_1EB98EBD0, &unk_1B7809780);
  *&v326 = v90;
  v92 = *(v90 + 36);
  v323 = v89;
  v324 = a1;
  v93 = *(a1 + v92);
  v94 = *(v93 + 16);
  v336 = v41;
  *&v331 = v42;
  if (v94)
  {
    v95 = *(v56 + 20);
    v96 = v93 + ((*(v334 + 80) + 32) & ~*(v334 + 80));
    v97 = *(v334 + 72);
    v332 = (v42 + 48);
    v333 = (v42 + 32);
    v334 = v97;

    v98 = MEMORY[0x1E69E7CC0];
    v99 = &qword_1EB98EBD0;
    v329 = v58;
    v330 = v95;
    do
    {
      sub_1B7531490(v96, v58, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      sub_1B7205588(&v58[v95], v80, v99, &unk_1B7809780);
      sub_1B75315A8(v58, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      v100 = v336;
      if ((*v332)(v80, 1, v336) == 1)
      {
        sub_1B7205418(v80, v99, &unk_1B7809780);
      }

      else
      {
        v101 = v99;
        v102 = *v333;
        (*v333)(v335, v80, v100);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1B723F170(0, *(v98 + 2) + 1, 1, v98);
        }

        v104 = *(v98 + 2);
        v103 = *(v98 + 3);
        if (v104 >= v103 >> 1)
        {
          v98 = sub_1B723F170((v103 > 1), v104 + 1, 1, v98);
        }

        *(v98 + 2) = v104 + 1;
        v102(&v98[((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v104], v335, v336);
        v99 = v101;
        v58 = v329;
        v95 = v330;
      }

      v96 += v334;
      --v94;
    }

    while (v94);
  }

  else
  {

    v98 = MEMORY[0x1E69E7CC0];
  }

  sub_1B75286C8(v98, v328);

  v105 = v321;
  sub_1B7205588(v327, v321, &qword_1EB98EBD0, &unk_1B7809780);
  v106 = v331;
  v107 = v331 + 48;
  v108 = *(v331 + 48);
  v109 = v336;
  if (v108(v105, 1, v336) == 1)
  {
    v110 = v105;
    v111 = v324;
    v112 = v325;
LABEL_16:
    sub_1B7205418(v110, &qword_1EB98EBD0, &unk_1B7809780);
    v117 = v314;
    sub_1B7205588(v328, v314, &qword_1EB98EBD0, &unk_1B7809780);
    if (v108(v117, 1, v109) == 1)
    {
      v118 = v315;
      sub_1B7205588(v327, v315, &qword_1EB98EBD0, &unk_1B7809780);
      v124 = v108(v117, 1, v109) == 1;
      v119 = v326;
      v120 = v117;
      v121 = v322;
      if (!v124)
      {
        sub_1B7205418(v120, &qword_1EB98EBD0, &unk_1B7809780);
      }
    }

    else
    {
      v118 = v315;
      (*(v106 + 32))(v315, v117, v109);
      (*(v106 + 56))(v118, 0, 1, v109);
      v119 = v326;
      v121 = v322;
    }

    sub_1B7205340(v118, v112);
    goto LABEL_27;
  }

  v113 = *(v106 + 32);
  v114 = v309;
  v113(v309, v105, v109);
  v115 = v308;
  sub_1B7205588(v328, v308, &qword_1EB98EBD0, &unk_1B7809780);
  v116 = v108(v115, 1, v109);
  v112 = v325;
  if (v116 == 1)
  {
    (*(v106 + 8))(v114, v109);
    v110 = v115;
    v111 = v324;
    goto LABEL_16;
  }

  v122 = v299;
  v113(v299, v115, v109);
  sub_1B7282114();
  v123 = sub_1B78007F8();
  v124 = (v123 & 1) == 0;
  if (v123)
  {
    v125 = v114;
  }

  else
  {
    v125 = v122;
  }

  if (!v124)
  {
    v114 = v122;
  }

  v106 = v331;
  (*(v331 + 8))(v125, v109);
  v113(v112, v114, v109);
  (*(v106 + 56))(v112, 0, 1, v109);
  v119 = v326;
  v111 = v324;
  v121 = v322;
LABEL_27:
  sub_1B7205588(v112, v121, &qword_1EB98EBD0, &unk_1B7809780);
  if (v108(v121, 1, v109) == 1)
  {
    sub_1B7205418(v121, &qword_1EB98EBD0, &unk_1B7809780);
    if (qword_1EB98EA40 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_116;
  }

  v330 = v107;
  v332 = v108;
  v135 = v316;
  v333 = *(v106 + 32);
  v334 = v106 + 32;
  (v333)(v316, v121, v109);
  v136 = v310;
  sub_1B7531490(v111 + v119[11], v310, type metadata accessor for CascadeExtractedOrder.Merchant);
  v137 = v323;

  v138 = v317;
  sub_1B752B208(v136, v318, v137, v317);
  v139 = v312;
  sub_1B7205588(v138, v312, &qword_1EB996B58, &qword_1B7839F90);
  if ((*(v311 + 48))(v139, 1, v313) == 1)
  {

    sub_1B7205418(v138, &qword_1EB996B58, &qword_1B7839F90);
    (*(v106 + 8))(v135, v109);
    sub_1B7205418(v328, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v327, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v325, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B75315A8(v111, type metadata accessor for CascadeExtractedOrder);
    sub_1B7205418(v139, &qword_1EB996B58, &qword_1B7839F90);
LABEL_35:
    v140 = v320;
    v141 = type metadata accessor for ExtractedOrder(0);
    (*(*(v141 - 8) + 56))(v140, 1, 1, v141);
    return;
  }

  sub_1B75314F8(v139, v306, type metadata accessor for ExtractedOrder.Merchant);
  v142 = (v111 + v119[8]);
  v143 = v142[1];
  v144 = v111;
  if (!v143)
  {
    v146 = v323;
    if (qword_1EB98EA40 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_118;
  }

  v312 = *v142;
  v313 = v143;
  if (*(v111 + v119[10] + 8))
  {
    LOBYTE(v355) = 1;

    v145 = v305;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v305);
  }

  else
  {
    v155 = sub_1B77FED28();
    v145 = v305;
    (*(*(v155 - 8) + 56))(v305, 1, 1, v155);
  }

  v156 = v293;
  v157 = v294;
  v158 = v291;
  sub_1B7205588(v145, v291, &qword_1EB991538, &unk_1B7813260);
  v159 = sub_1B77FED28();
  v160 = *(v159 - 8);
  v161 = *(v160 + 48);
  if (v161(v158, 1, v159) == 1)
  {
    sub_1B7205418(v158, &qword_1EB991538, &unk_1B7813260);
    v321 = 0;
    LODWORD(v335) = 1;
  }

  else
  {
    v321 = sub_1B77FEC58();
    LODWORD(v335) = v162;
    (*(v160 + 8))(v158, v159);
  }

  v163 = v292;
  sub_1B7205588(v145, v292, &qword_1EB991538, &unk_1B7813260);
  if (v161(v163, 1, v159) == 1)
  {
    sub_1B7205418(v163, &qword_1EB991538, &unk_1B7813260);
    v315 = 0;
    LODWORD(v311) = 1;
  }

  else
  {
    v315 = sub_1B77FEC78();
    LODWORD(v311) = v164;
    (*(v160 + 8))(v163, v159);
  }

  sub_1B7205588(v145, v156, &qword_1EB991538, &unk_1B7813260);
  if (v161(v156, 1, v159) == 1)
  {
    sub_1B7205418(v156, &qword_1EB991538, &unk_1B7813260);
    v314 = 0;
    LODWORD(v310) = 1;
  }

  else
  {
    v314 = sub_1B77FEC08();
    LODWORD(v310) = v165;
    (*(v160 + 8))(v156, v159);
  }

  sub_1B7205588(v145, v157, &qword_1EB991538, &unk_1B7813260);
  if (v161(v157, 1, v159) == 1)
  {
    sub_1B7205418(v157, &qword_1EB991538, &unk_1B7813260);
    v329 = 0;
    v166 = 1;
  }

  else
  {
    v329 = sub_1B77FEC38();
    v166 = v167;
    (*(v160 + 8))(v157, v159);
  }

  v168 = v295;
  sub_1B7205588(v145, v295, &qword_1EB991538, &unk_1B7813260);
  if (v161(v168, 1, v159) == 1)
  {
    sub_1B7205418(v168, &qword_1EB991538, &unk_1B7813260);
    v322 = 0;
    v169 = 1;
  }

  else
  {
    v322 = sub_1B77FEC98();
    v169 = v170;
    (*(v160 + 8))(v168, v159);
  }

  v171 = v145;
  v172 = v296;
  sub_1B7205588(v171, v296, &qword_1EB991538, &unk_1B7813260);
  if (v161(v172, 1, v159) == 1)
  {
    sub_1B7205418(v172, &qword_1EB991538, &unk_1B7813260);
    v173 = 0;
    v174 = 1;
  }

  else
  {
    v173 = sub_1B77FECB8();
    v174 = v175;
    (*(v160 + 8))(v172, v159);
  }

  v112 = v324;
  v176 = v298;
  if (v335 & 1) != 0 || (v311 & 1) != 0 || (v310)
  {
    v321 = 0;
    v322 = 0;
    v314 = 0;
    v315 = 0;
    v329 = 0;
    v311 = 0;
    v177 = 254;
LABEL_65:
    LODWORD(v310) = v177;
    goto LABEL_66;
  }

  if ((v166 & 1) == 0 && (v169 & 1) == 0)
  {
    v311 = v173;
    v177 = v174 & 1 | 0xFFFFFF80;
    goto LABEL_65;
  }

  v329 = 0;
  v322 = 0;
  v311 = 0;
  LODWORD(v310) = 0;
LABEL_66:
  v178 = v297;
  v179 = *(v324 + *(v326 + 48));
  v180 = sub_1B72039A4(MEMORY[0x1E69E7CC0]);
  *&v355 = v180;
  v111 = *(v179 + 16);
  if (v111)
  {
    for (i = 0; i != v111; ++i)
    {
      if (i >= *(v179 + 16))
      {
        __break(1u);
        goto LABEL_115;
      }

      sub_1B7531490(v179 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * i, v178, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
      sub_1B752B574(&v355, v178);
      sub_1B75315A8(v178, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
    }

    v182 = v355;
    v183 = *(v355 + 16);
    if (!v183)
    {
      goto LABEL_74;
    }

    goto LABEL_71;
  }

  v182 = v180;
  v183 = *(v180 + 16);
  if (v183)
  {
LABEL_71:
    v144 = sub_1B7247194(v183, 0);
    v106 = sub_1B7261F24(&v355, v144 + ((*(v300 + 80) + 32) & ~*(v300 + 80)), v183, v182);
    v109 = *(&v355 + 1);
    v146 = v355;
    v335 = *(&v356 + 1);
    v309 = v357;
    swift_bridgeObjectRetain_n();
    sub_1B71B7B58(v146);
    if (v106 == v183)
    {
      v112 = v324;
      goto LABEL_75;
    }

    __break(1u);
LABEL_118:
    swift_once();
LABEL_40:
    v147 = sub_1B78000B8();
    __swift_project_value_buffer(v147, qword_1EB994840);

    v148 = sub_1B7800098();
    v149 = sub_1B78011D8();

    v150 = os_log_type_enabled(v148, v149);
    v151 = v325;
    if (v150)
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&v355 = v153;
      *v152 = 136315138;
      v154 = sub_1B71A3EF8(v318, v146, &v355);

      *(v152 + 4) = v154;
      __swift_destroy_boxed_opaque_existential_1(v153);
      MEMORY[0x1B8CA7A40](v153, -1, -1);
      MEMORY[0x1B8CA7A40](v152, -1, -1);

      sub_1B75315A8(v306, type metadata accessor for ExtractedOrder.Merchant);
      sub_1B7205418(v317, &qword_1EB996B58, &qword_1B7839F90);
      (*(v106 + 8))(v316, v109);
      sub_1B7205418(v328, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B7205418(v327, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B7205418(v151, &qword_1EB98EBD0, &unk_1B7809780);
      v134 = v324;
    }

    else
    {

      sub_1B75315A8(v306, type metadata accessor for ExtractedOrder.Merchant);
      sub_1B7205418(v317, &qword_1EB996B58, &qword_1B7839F90);
      (*(v106 + 8))(v316, v109);
      sub_1B7205418(v328, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B7205418(v327, &qword_1EB98EBD0, &unk_1B7809780);
      sub_1B7205418(v151, &qword_1EB98EBD0, &unk_1B7809780);
      v134 = v144;
    }

    goto LABEL_34;
  }

LABEL_74:

  v144 = MEMORY[0x1E69E7CC0];
LABEL_75:
  *&v355 = v144;
  sub_1B752F030(&v355);

  v184 = v355;
  v185 = *(v355 + 16);
  v335 = v355;
  if (v185 == 2)
  {
    v186 = v300;
    v309 = *(v300 + 80);
    v319 = (v309 + 32) & ~v309;
    v187 = v355 + v319;
    v188 = v289;
    sub_1B7531490(v355 + v319, v289, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v189 = *(v186 + 72);
    v190 = v290;
    sub_1B7531490(v187 + v189, v290, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v191 = *(v188 + 16);
    v192 = *(v190 + 16) == 0;

    if ((v191 == 0) == v192)
    {
      v218 = v326;
      sub_1B75315A8(v188, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v207 = v218;
      sub_1B75315A8(v190, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v112 = v324;
      v204 = v336;
      v206 = v316;
      v205 = v317;
      goto LABEL_108;
    }

    v193 = v288;
    sub_1B7531490(v187, v288, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    if (*(v184 + 16) < 2uLL)
    {
      __break(1u);

      sub_1B75315A8(v192, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);

      __break(1u);

      __break(1u);
      return;
    }

    v308 = v189;
    v194 = v187 + v189;
    v195 = v287;
    sub_1B7531490(v194, v287, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v196 = *(v284 + 48);
    v197 = v286;
    sub_1B7205588(v195 + v196, v286, &qword_1EB98EBD0, &unk_1B7809780);
    v198 = v193 + v196;
    v199 = v283;
    sub_1B7205588(v198, v283, &qword_1EB98EBD0, &unk_1B7809780);
    v200 = v336;
    v201 = v332;
    if (v332(v199, 1, v336) == 1)
    {
      v202 = v197;
    }

    else
    {
      v219 = v282;
      v220 = v333;
      (v333)(v282, v199, v200);
      v199 = v281;
      sub_1B7205588(v197, v281, &qword_1EB98EBD0, &unk_1B7809780);
      if (v201(v199, 1, v200) != 1)
      {
        v223 = v280;
        (v220)(v280, v199, v200);
        v224 = sub_1B77FF8D8();
        v225 = *(v331 + 8);
        v225(v223, v200);
        v225(v219, v200);
        sub_1B7205418(v286, &qword_1EB98EBD0, &unk_1B7809780);
        v221 = v290;
        v222 = v288;
        if ((v224 & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_105;
      }

      (*(v331 + 8))(v219, v200);
      v202 = v286;
    }

    sub_1B7205418(v202, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v199, &qword_1EB98EBD0, &unk_1B7809780);
    v221 = v290;
    v222 = v288;
    if (v191)
    {
LABEL_101:
      sub_1B75315A8(v287, type metadata accessor for ExtractedOrder.ShippingFulfillment);
LABEL_106:
      v206 = v316;
      v205 = v317;
      v226 = v319;

      v227 = v285;
      sub_1B75314F8(v222, v285, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F408, &unk_1B780C240);
      v228 = swift_allocObject();
      *(v228 + 16) = xmmword_1B7807CD0;
      v335 = v228;
      sub_1B75314F8(v227, v228 + v226, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      sub_1B75315A8(v289, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      sub_1B75315A8(v221, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v112 = v324;
      v204 = v336;
LABEL_107:
      v207 = v326;
      goto LABEL_108;
    }

LABEL_105:
    sub_1B75315A8(v222, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    sub_1B75314F8(v287, v222, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    goto LABEL_106;
  }

  v203 = v185 >= 3;
  v204 = v336;
  v206 = v316;
  v205 = v317;
  v207 = v326;
  v208 = v300;
  if (v203)
  {
    v209 = v335;
    v111 = *(v335 + 2);
    if (v111)
    {
      v210 = 0;
      v211 = MEMORY[0x1E69E7CC0];
      v212 = v307;
      while (v210 < *(v209 + 2))
      {
        v213 = (*(v208 + 80) + 32) & ~*(v208 + 80);
        v214 = *(v208 + 72);
        sub_1B7531490(&v209[v213 + v214 * v210], v212, type metadata accessor for ExtractedOrder.ShippingFulfillment);
        if (*(v212 + 16))
        {
          sub_1B75314F8(v212, v319, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v355 = v211;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B71FE2D4(0, *(v211 + 2) + 1, 1);
            v211 = v355;
          }

          v217 = *(v211 + 2);
          v216 = *(v211 + 3);
          if (v217 >= v216 >> 1)
          {
            sub_1B71FE2D4((v216 > 1), v217 + 1, 1);
            v211 = v355;
          }

          *(v211 + 2) = v217 + 1;
          sub_1B75314F8(v319, &v211[v213 + v217 * v214], type metadata accessor for ExtractedOrder.ShippingFulfillment);
          v204 = v336;
          v212 = v307;
        }

        else
        {
          sub_1B75315A8(v212, type metadata accessor for ExtractedOrder.ShippingFulfillment);
        }

        ++v210;
        v209 = v335;
        if (v111 == v210)
        {
          goto LABEL_103;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      swift_once();
LABEL_29:
      v126 = sub_1B78000B8();
      __swift_project_value_buffer(v126, qword_1EB994840);
      v127 = v323;

      v128 = sub_1B7800098();
      v129 = sub_1B78011D8();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = v111;
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v355 = v132;
        *v131 = 136315138;
        v133 = sub_1B71A3EF8(v318, v127, &v355);

        *(v131 + 4) = v133;
        __swift_destroy_boxed_opaque_existential_1(v132);
        MEMORY[0x1B8CA7A40](v132, -1, -1);
        MEMORY[0x1B8CA7A40](v131, -1, -1);

        sub_1B7205418(v328, &qword_1EB98EBD0, &unk_1B7809780);
        sub_1B7205418(v327, &qword_1EB98EBD0, &unk_1B7809780);
        sub_1B7205418(v112, &qword_1EB98EBD0, &unk_1B7809780);
        v134 = v130;
      }

      else
      {

        sub_1B7205418(v328, &qword_1EB98EBD0, &unk_1B7809780);
        sub_1B7205418(v327, &qword_1EB98EBD0, &unk_1B7809780);
        sub_1B7205418(v112, &qword_1EB98EBD0, &unk_1B7809780);
        v134 = v111;
      }

LABEL_34:
      sub_1B75315A8(v134, type metadata accessor for CascadeExtractedOrder);
      goto LABEL_35;
    }

    v211 = MEMORY[0x1E69E7CC0];
LABEL_103:

    v335 = v211;
    v206 = v316;
    v205 = v317;
    goto LABEL_107;
  }

LABEL_108:
  v229 = v112 + *(v207 + 24);
  v230 = *(v229 + 8);
  if (v230 && (v231 = (v112 + *(v207 + 28)), (v232 = v231[1]) != 0))
  {
    v332 = *v229;
    v319 = *v231;
    v317 = v230;

    v330 = v232;
  }

  else
  {
    v332 = 0;
    v317 = 0;
    v319 = 0;
    v330 = 0;
  }

  v233 = v331;
  (*(v331 + 16))(v302, v206, v204);
  v234 = v306;
  sub_1B7531490(v306, v304, type metadata accessor for ExtractedOrder.Merchant);
  v235 = v326;
  v236 = (v112 + *(v326 + 52));
  v237 = v236[5];
  v238 = v236[3];
  v351 = v236[4];
  v352 = v237;
  v239 = v236[5];
  v240 = v236[7];
  v353 = v236[6];
  v354 = v240;
  v241 = v236[1];
  v348[0] = *v236;
  v348[1] = v241;
  v242 = v236[3];
  v244 = *v236;
  v243 = v236[1];
  v349 = v236[2];
  v350 = v242;
  v344 = v351;
  v345 = v239;
  v245 = v236[7];
  v346 = v353;
  v347 = v245;
  v341[0] = v244;
  v341[1] = v243;
  v342 = v349;
  v343 = v238;
  sub_1B74783D8(v348, &v355);
  sub_1B752E22C(v341, sub_1B7478410, nullsub_1, sub_1B7531608, &v355);
  v246 = v112 + v235[14];
  v247 = *(v246 + 24);
  v248 = *(v246 + 32);
  *&v341[0] = *v246;
  *(v341 + 8) = *(v246 + 8);
  *(&v341[1] + 1) = v247;
  *&v342 = v248;

  sub_1B752DD68(v341, v338);
  sub_1B7205418(v305, &qword_1EB991538, &unk_1B7813260);
  sub_1B75315A8(v234, type metadata accessor for ExtractedOrder.Merchant);
  sub_1B7205418(v205, &qword_1EB996B58, &qword_1B7839F90);
  (*(v233 + 8))(v206, v204);
  sub_1B7205418(v328, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205418(v327, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205418(v325, &qword_1EB98EBD0, &unk_1B7809780);
  v327 = v340;
  v328 = v339;
  v249 = v235[18];
  LODWORD(v325) = *(v112 + v235[17]);
  sub_1B7205588(v112 + v249, v301, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(v112 + v235[19], v303, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B75315A8(v112, type metadata accessor for CascadeExtractedOrder);
  v250 = v320;
  *(v320 + 16) = 0u;
  *(v250 + 32) = 0u;
  *(v250 + 64) = 0u;
  *(v250 + 80) = 0u;
  *(v250 + 96) = 0u;
  *(v250 + 112) = -2;
  v251 = type metadata accessor for ExtractedOrder(0);
  v252 = (v250 + v251[11]);
  sub_1B71CDF28(v337);
  v253 = v337[5];
  v252[4] = v337[4];
  v252[5] = v253;
  v254 = v337[7];
  v252[6] = v337[6];
  v252[7] = v254;
  v255 = v337[1];
  *v252 = v337[0];
  v252[1] = v255;
  v256 = v337[3];
  v252[2] = v337[2];
  v252[3] = v256;
  v257 = (v250 + v251[12]);
  *v257 = 0u;
  *(v257 + 1) = 0u;
  *(v257 + 2) = 0u;
  v258 = v251[14];
  v259 = *(v233 + 56);
  v331 = v338[0];
  v326 = v338[1];
  v259(v250 + v258, 1, 1, v204);
  v260 = v251[15];
  v259(v250 + v260, 1, 1, v204);
  v261 = v323;
  *v250 = v318;
  *(v250 + 8) = v261;
  v262 = sub_1B74204FC(*(v250 + 16), *(v250 + 24), *(v250 + 32), *(v250 + 40));
  v263 = v317;
  *(v250 + 16) = v332;
  *(v250 + 24) = v263;
  v264 = v330;
  *(v250 + 32) = v319;
  *(v250 + 40) = v264;
  v265 = v313;
  *(v250 + 48) = v312;
  *(v250 + 56) = v265;
  v267 = v314;
  v266 = v315;
  *(v250 + 64) = v321;
  *(v250 + 72) = v266;
  v268 = v329;
  *(v250 + 80) = v267;
  *(v250 + 88) = v268;
  v269 = v311;
  *(v250 + 96) = v322;
  *(v250 + 104) = v269;
  *(v250 + 112) = v310;
  (v333)(v250 + v251[8], v302, v204, v262);
  sub_1B75314F8(v304, v250 + v251[9], type metadata accessor for ExtractedOrder.Merchant);
  *(v250 + v251[10]) = v335;
  v270 = v252[5];
  v344 = v252[4];
  v345 = v270;
  v271 = v252[7];
  v346 = v252[6];
  v347 = v271;
  v272 = v252[3];
  v342 = v252[2];
  v343 = v272;
  v273 = v252[1];
  v341[0] = *v252;
  v341[1] = v273;
  sub_1B7205418(v341, &qword_1EB996B60, &unk_1B7844F80);
  v274 = v360;
  v252[4] = v359;
  v252[5] = v274;
  v275 = v362;
  v252[6] = v361;
  v252[7] = v275;
  v276 = v356;
  *v252 = v355;
  v252[1] = v276;
  v277 = v358;
  v252[2] = v357;
  v252[3] = v277;
  sub_1B75311F0(*v257, v257[1], v257[2], v257[3], v257[4], v257[5]);
  v278 = v326;
  *v257 = v331;
  *(v257 + 1) = v278;
  v279 = v327;
  v257[4] = v328;
  v257[5] = v279;
  *(v250 + v251[13]) = v325;
  sub_1B72DFF88(v301, v250 + v258);
  sub_1B72DFF88(v303, v250 + v260);
  (*(*(v251 - 1) + 56))(v250, 0, 1, v251);
}

uint64_t sub_1B752B208@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = a1[1];
  if (v11)
  {
    v12 = *a1;

    v13 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
    sub_1B7205588(a1 + *(v13 + 20), v10, &qword_1EB98EBD0, &unk_1B7809780);
    v14 = (a1 + *(v13 + 24));
    v16 = *v14;
    v15 = v14[1];
    v17 = type metadata accessor for ExtractedOrder.Merchant(0);
    v18 = *(v17 + 20);
    v19 = sub_1B77FF988();
    (*(*(v19 - 8) + 56))(&a4[v18], 1, 1, v19);
    v20 = &a4[*(v17 + 24)];
    *a4 = v12;
    *(a4 + 1) = v11;

    sub_1B72DFF88(v10, &a4[v18]);
    *v20 = v16;
    *(v20 + 1) = v15;
    sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.Merchant);
    return (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
  }

  else
  {
    if (qword_1EB98EA40 != -1)
    {
      swift_once();
    }

    v22 = sub_1B78000B8();
    __swift_project_value_buffer(v22, qword_1EB994840);

    v23 = sub_1B7800098();
    v24 = sub_1B78011D8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      v27 = sub_1B71A3EF8(a2, a3, &v31);

      *(v25 + 4) = v27;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1B8CA7A40](v26, -1, -1);
      MEMORY[0x1B8CA7A40](v25, -1, -1);
    }

    else
    {
    }

    sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.Merchant);
    v28 = type metadata accessor for ExtractedOrder.Merchant(0);
    v29 = *(*(v28 - 8) + 56);

    return v29(a4, 1, 1, v28);
  }
}

uint64_t sub_1B752B574(uint64_t *a1, uint64_t a2)
{
  v74 = a1;
  v68 = sub_1B77FF988();
  v70 = *(v68 - 8);
  v3 = MEMORY[0x1EEE9AC00](v68);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v67 = &v59 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v72 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - v13;
  v66 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  MEMORY[0x1EEE9AC00](v66);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964D0, &qword_1B7836D78);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v65 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v59 - v27;
  v29 = *(a2 + 8);
  v30 = *(a2 + 16);
  v31 = a2;
  v32 = *v74;
  v33 = *(*v74 + 16);
  v73 = &v59 - v27;
  v71 = v18;
  v63 = v30;
  v64 = v29;
  if (v33)
  {
    v34 = sub_1B7245D7C(v29, v30);
    v18 = v71;
    if (v35)
    {
      v28 = v73;
      sub_1B7531490(*(v32 + 56) + *(v71 + 72) * v34, v73, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v36 = *(v18 + 56);
      v37 = v28;
      v38 = 0;
    }

    else
    {
      v36 = *(v71 + 56);
      v28 = v73;
      v37 = v73;
      v38 = 1;
    }

    v39 = v17;
    v62 = v36;
    v36(v37, v38, 1, v17);
  }

  else
  {
    v62 = *(v18 + 56);
    v62(&v59 - v27, 1, 1, v17);
    v39 = v17;
  }

  v40 = v31;
  sub_1B7531490(v31, v16, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
  v69 = v20;
  sub_1B752BD50(v16, v20);
  sub_1B7205588(v28, v26, &qword_1EB9964D0, &qword_1B7836D78);
  if ((*(v18 + 48))(v26, 1, v39) == 1)
  {
    sub_1B7205418(v26, &qword_1EB9964D0, &qword_1B7836D78);
    v41 = v70;
    v42 = v68;
    (*(v70 + 56))(v14, 1, 1, v68);
  }

  else
  {
    sub_1B7205588(&v26[*(v39 + 12)], v14, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B75315A8(v26, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v42 = v68;
    v41 = v70;
  }

  v43 = v67;
  v44 = v72;
  sub_1B7205588(v40 + *(v66 + 68), v72, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(v14, v43, &qword_1EB98EBD0, &unk_1B7809780);
  v45 = *(v41 + 48);
  if (v45(v43, 1, v42) == 1)
  {
    goto LABEL_13;
  }

  v67 = v39;
  v68 = v14;
  v46 = *(v41 + 32);
  v47 = v61;
  v46(v61, v43, v42);
  v43 = v60;
  sub_1B7205588(v44, v60, &qword_1EB98EBD0, &unk_1B7809780);
  if (v45(v43, 1, v42) == 1)
  {
    (*(v41 + 8))(v47, v42);
    v44 = v72;
    v39 = v67;
    v14 = v68;
LABEL_13:
    sub_1B7205418(v43, &qword_1EB98EBD0, &unk_1B7809780);
    v48 = v69;
    v49 = v65;
    sub_1B7531490(v69, v65, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v62(v49, 0, 1, v39);
    v50 = v63;

    sub_1B74E49D4(v49, v64, v50);
    goto LABEL_14;
  }

  v52 = v59;
  v46(v59, v43, v42);
  v53 = v47;
  if (sub_1B77FF8C8())
  {
    v54 = v69;
    v55 = v65;
    sub_1B7531490(v69, v65, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v62(v55, 0, 1, v67);
    v56 = v63;

    sub_1B74E49D4(v55, v64, v56);
    v57 = *(v70 + 8);
    v57(v52, v42);
    v57(v53, v42);
    v48 = v54;
    v44 = v72;
    v14 = v68;
  }

  else
  {
    v58 = *(v70 + 8);
    v58(v52, v42);
    v58(v47, v42);
    v44 = v72;
    v14 = v68;
    v48 = v69;
  }

LABEL_14:
  sub_1B7205418(v44, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205418(v14, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B75315A8(v48, type metadata accessor for ExtractedOrder.ShippingFulfillment);
  return sub_1B7205418(v73, &qword_1EB9964D0, &qword_1B7836D78);
}

uint64_t sub_1B752BD50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v224 = &v210 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538, &unk_1B7813260);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v223 = &v210 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v233 = &v210 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v222 = &v210 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v234 = &v210 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v221 = &v210 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v220 = &v210 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v245 = &v210 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v244 = &v210 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v218 = &v210 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v249 = &v210 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v229 = &v210 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v227 = &v210 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v226 = &v210 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v248 = &v210 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v247 = &v210 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v228 = &v210 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v225 = &v210 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v217 = &v210 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v232 = &v210 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v231 = &v210 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v252 = &v210 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v243 = &v210 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v242 = &v210 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v241 = &v210 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v238 = &v210 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v230 = &v210 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v210 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v210 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v210 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v210 - v69;
  v71 = MEMORY[0x1EEE9AC00](v68);
  v251 = &v210 - v72;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v210 - v73;
  if (a1[8])
  {
    LOBYTE(v258) = 0;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(&v210 - v73);
  }

  else
  {
    v75 = sub_1B77FED28();
    (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
  }

  v76 = a1[10];
  v246 = a1;
  if (v76)
  {
    LOBYTE(v258) = 2;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v251);
  }

  else
  {
    v77 = sub_1B77FED28();
    (*(*(v77 - 8) + 56))(v251, 1, 1, v77);
  }

  v250 = v74;
  sub_1B7205588(v74, v70, &qword_1EB991538, &unk_1B7813260);
  v78 = sub_1B77FED28();
  v79 = *(v78 - 8);
  v80 = v79 + 48;
  v254[0] = *(v79 + 48);
  v81 = (v254[0])(v70, 1, v78);
  v253 = v79;
  if (v81 == 1)
  {
    sub_1B7205418(v70, &qword_1EB991538, &unk_1B7813260);
    v237 = 0;
    v219 = 1;
  }

  else
  {
    v237 = sub_1B77FEC58();
    v219 = v82;
    (*(v79 + 8))(v70, v78);
  }

  sub_1B7205588(v250, v67, &qword_1EB991538, &unk_1B7813260);
  v83 = (v254[0])(v67, 1, v78);
  v84 = v230;
  if (v83 == 1)
  {
    sub_1B7205418(v67, &qword_1EB991538, &unk_1B7813260);
    v236 = 0;
    v216 = 1;
  }

  else
  {
    v236 = sub_1B77FEC78();
    v216 = v85;
    (*(v253 + 8))(v67, v78);
  }

  sub_1B7205588(v250, v64, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v64, 1, v78) == 1)
  {
    sub_1B7205418(v64, &qword_1EB991538, &unk_1B7813260);
    v235 = 0;
    LODWORD(v215) = 1;
  }

  else
  {
    v235 = sub_1B77FEC08();
    LODWORD(v215) = v86;
    (*(v253 + 8))(v64, v78);
  }

  sub_1B7205588(v251, v61, &qword_1EB991538, &unk_1B7813260);
  v87 = (v254[0])(v61, 1, v78);
  v88 = v241;
  if (v87 == 1)
  {
    sub_1B7205418(v61, &qword_1EB991538, &unk_1B7813260);
    v240 = 0;
    v89 = 1;
  }

  else
  {
    v240 = sub_1B77FEC38();
    v89 = v90;
    (*(v253 + 8))(v61, v78);
  }

  sub_1B7205588(v251, v84, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v84, 1, v78) == 1)
  {
    sub_1B7205418(v84, &qword_1EB991538, &unk_1B7813260);
    v239 = 0;
    v91 = 1;
  }

  else
  {
    v239 = sub_1B77FEC98();
    v91 = v92;
    (*(v253 + 8))(v84, v78);
  }

  v93 = v238;
  sub_1B7205588(v251, v238, &qword_1EB991538, &unk_1B7813260);
  v94 = (v254[0])(v93, 1, v78);
  v95 = v243;
  if (v94 == 1)
  {
    sub_1B7205418(v93, &qword_1EB991538, &unk_1B7813260);
    v238 = 0;
    v96 = 1;
    if (v219)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v238 = sub_1B77FECB8();
    v96 = v97;
    (*(v253 + 8))(v93, v78);
    if (v219)
    {
LABEL_28:
      v236 = 0;
      v237 = 0;
      v235 = 0;
      v239 = 0;
      v240 = 0;
      v238 = 0;
      v219 = 254;
LABEL_29:
      v98 = v253;
      goto LABEL_30;
    }
  }

  if (v216 & 1) != 0 || (v215)
  {
    goto LABEL_28;
  }

  if (v89)
  {
    v239 = 0;
    v240 = 0;
    v238 = 0;
    v219 = 0;
    goto LABEL_29;
  }

  v98 = v253;
  if (v91)
  {
    v239 = 0;
    v240 = 0;
    v238 = 0;
    v219 = 0;
  }

  else
  {
    v219 = v96 & 1 | 0xFFFFFF80;
  }

LABEL_30:
  v99 = v246;
  v100 = v242;
  if (v246[12])
  {
    LOBYTE(v258) = 0;
    v101.n128_f64[0] = Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v88);
    if (v99[14])
    {
      goto LABEL_32;
    }
  }

  else
  {
    (*(v98 + 56))(v88, 1, 1, v78);
    if (v99[14])
    {
LABEL_32:
      LOBYTE(v258) = 2;
      v102.n128_f64[0] = Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v100);
      if (v99[16])
      {
        goto LABEL_33;
      }

LABEL_37:
      (*(v98 + 56))(v95, 1, 1, v78, v102);
      if (v99[18])
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  (*(v98 + 56))(v100, 1, 1, v78, v101);
  if (!v99[16])
  {
    goto LABEL_37;
  }

LABEL_33:
  LOBYTE(v258) = 0;
  v103.n128_f64[0] = Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v95);
  if (v99[18])
  {
LABEL_34:
    LOBYTE(v258) = 2;
    Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v252);
    goto LABEL_39;
  }

LABEL_38:
  (*(v98 + 56))(v252, 1, 1, v78, v103);
LABEL_39:
  v104 = v249;
  v105 = v231;
  sub_1B7205588(v88, v231, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v105, 1, v78) == 1)
  {
    sub_1B7205418(v105, &qword_1EB991538, &unk_1B7813260);
    v230 = 0;
    v216 = 1;
  }

  else
  {
    v230 = sub_1B77FEC58();
    v216 = v106;
    (*(v98 + 8))(v105, v78);
  }

  v107 = v232;
  sub_1B7205588(v88, v232, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v107, 1, v78) == 1)
  {
    sub_1B7205418(v107, &qword_1EB991538, &unk_1B7813260);
    v231 = 0;
    LODWORD(v215) = 1;
  }

  else
  {
    v231 = sub_1B77FEC78();
    LODWORD(v215) = v108;
    (*(v98 + 8))(v107, v78);
  }

  v109 = v217;
  sub_1B7205588(v88, v217, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v109, 1, v78) == 1)
  {
    sub_1B7205418(v109, &qword_1EB991538, &unk_1B7813260);
    v232 = 0;
    LODWORD(v214) = 1;
  }

  else
  {
    v232 = sub_1B77FEC08();
    LODWORD(v214) = v110;
    (*(v98 + 8))(v109, v78);
  }

  v111 = v248;
  v112 = v225;
  sub_1B7205588(v95, v225, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v112, 1, v78) == 1)
  {
    sub_1B7205418(v112, &qword_1EB991538, &unk_1B7813260);
    v249 = 0;
    LODWORD(v217) = 1;
  }

  else
  {
    v249 = sub_1B77FEC58();
    LODWORD(v217) = v113;
    (*(v98 + 8))(v112, v78);
  }

  v114 = v228;
  sub_1B7205588(v95, v228, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v114, 1, v78) == 1)
  {
    sub_1B7205418(v114, &qword_1EB991538, &unk_1B7813260);
    v248 = 0;
    v213 = 1;
  }

  else
  {
    v248 = sub_1B77FEC78();
    v213 = v115;
    (*(v98 + 8))(v114, v78);
  }

  v116 = v247;
  sub_1B7205588(v95, v247, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v116, 1, v78) == 1)
  {
    sub_1B7205418(v116, &qword_1EB991538, &unk_1B7813260);
    v247 = 0;
    v117 = 1;
  }

  else
  {
    v247 = sub_1B77FEC08();
    v117 = v118;
    (*(v98 + 8))(v116, v78);
  }

  sub_1B7205588(v100, v111, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v111, 1, v78) == 1)
  {
    sub_1B7205418(v111, &qword_1EB991538, &unk_1B7813260);
    v228 = 0;
    v211 = 1;
  }

  else
  {
    v228 = sub_1B77FEC38();
    v211 = v119;
    (*(v98 + 8))(v111, v78);
  }

  v120 = v226;
  sub_1B7205588(v100, v226, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v120, 1, v78) == 1)
  {
    sub_1B7205418(v120, &qword_1EB991538, &unk_1B7813260);
    v226 = 0;
    v121 = 1;
  }

  else
  {
    v226 = sub_1B77FEC98();
    v121 = v122;
    (*(v98 + 8))(v120, v78);
  }

  v123 = v227;
  sub_1B7205588(v100, v227, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v123, 1, v78) == 1)
  {
    sub_1B7205418(v123, &qword_1EB991538, &unk_1B7813260);
    v225 = 0;
    v210 = 1;
  }

  else
  {
    v225 = sub_1B77FECB8();
    v210 = v124;
    (*(v98 + 8))(v123, v78);
  }

  v125 = v229;
  sub_1B7205588(v252, v229, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v125, 1, v78) == 1)
  {
    sub_1B7205418(v125, &qword_1EB991538, &unk_1B7813260);
    v229 = 0;
    v126 = 1;
  }

  else
  {
    v229 = sub_1B77FEC38();
    v126 = v127;
    (*(v253 + 8))(v125, v78);
  }

  sub_1B7205588(v252, v104, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v104, 1, v78) == 1)
  {
    sub_1B7205418(v104, &qword_1EB991538, &unk_1B7813260);
    v227 = 0;
    v128 = 1;
  }

  else
  {
    v227 = sub_1B77FEC98();
    v128 = v129;
    (*(v253 + 8))(v104, v78);
  }

  v130 = v218;
  sub_1B7205588(v252, v218, &qword_1EB991538, &unk_1B7813260);
  v212 = v80;
  if ((v254[0])(v130, 1, v78) == 1)
  {
    sub_1B7205418(v130, &qword_1EB991538, &unk_1B7813260);
    v131 = 0;
    v132 = 1;
  }

  else
  {
    v133 = v126;
    v134 = v117;
    v135 = v121;
    v136 = sub_1B77FECB8();
    v132 = v137;
    (*(v253 + 8))(v130, v78);
    v131 = v136;
    v121 = v135;
    v117 = v134;
    v126 = v133;
  }

  if (((v214 | v215 | v216) & 1) == 0)
  {
    v138 = v245;
    if (((v117 | v213) | v217))
    {
      v139 = v126 | v128;
      if (((v211 | v121) & 1) == 0)
      {
        v140 = v246;
        v141 = v244;
        v142 = v234;
        v143 = v220;
        if ((v139 & 1) == 0)
        {
          v218 = 0;
          v144 = v210 & 1;
LABEL_111:
          LODWORD(v217) = v144;
          LOBYTE(v258) = v144;
          LOBYTE(v257[0]) = v132 & 1;
          v216 = 160;
          v248 = v227;
          v249 = v229;
          v247 = v131;
          v229 = v132 & 1;
          goto LABEL_112;
        }

        goto LABEL_103;
      }

LABEL_88:
      v140 = v246;
      v141 = v244;
      v142 = v234;
      v143 = v220;
      if (v139)
      {
        v216 = 0;
        LODWORD(v217) = 0;
        v218 = 0;
      }

      else
      {
        v218 = 0;
        v228 = v229;
        v225 = v131;
        v226 = v227;
        v216 = 64;
        LODWORD(v217) = v132 & 1;
      }

      goto LABEL_112;
    }

    if (v232 != v247 || v231 != v248 || v230 != v249)
    {
      if ((v126 | v128 | v211 | v121))
      {
        LODWORD(v217) = 0;
        v218 = 0;
        v228 = v249;
        v225 = v247;
        v226 = v248;
        v146 = 192;
      }

      else
      {
        v214 = v131;
        v218 = 0;
        LODWORD(v217) = v210 & 1;
        LOBYTE(v258) = v210 & 1;
        LOBYTE(v257[0]) = v132 & 1;
        v146 = v132 & 1 | 0xFFFFFFE0;
      }

      v216 = v146;
      goto LABEL_99;
    }

    v139 = v126 | v128;
    if ((v211 | v121))
    {
      goto LABEL_88;
    }

    v140 = v246;
    v141 = v244;
    v142 = v234;
    v143 = v220;
    if (v139)
    {
LABEL_103:
      v218 = 0;
      v147 = v210 & 1;
LABEL_104:
      LODWORD(v217) = v147;
      v216 = 32;
      goto LABEL_112;
    }

    if (v228 == v229 && v226 == v227)
    {
      if (v210)
      {
        if ((v132 & 1) == 0)
        {
          goto LABEL_110;
        }
      }

      else if (v132 & 1 | (v225 != v131))
      {
        goto LABEL_110;
      }

      v218 = 0;
      v147 = v210 & 1;
      goto LABEL_104;
    }

LABEL_110:
    v218 = 0;
    v144 = v210 & 1;
    goto LABEL_111;
  }

  v138 = v245;
  if (((v117 | v213) | v217))
  {
    v230 = 0;
    v231 = 0;
    v232 = 0;
    v228 = 0;
    v229 = 0;
    v225 = 0;
    v226 = 0;
    v248 = 0;
    v249 = 0;
    v247 = 0;
    v227 = 0;
    v214 = 0;
    v218 = 0x1FFFFFF00;
    v216 = 0;
    LODWORD(v217) = 254;
LABEL_99:
    v140 = v246;
    v141 = v244;
    v142 = v234;
    v143 = v220;
    goto LABEL_112;
  }

  v143 = v220;
  if ((v126 | v128))
  {
    LODWORD(v217) = 0;
    v218 = 0;
    v230 = v249;
    v231 = v248;
    v232 = v247;
    v145 = 96;
  }

  else
  {
    v218 = 0;
    LODWORD(v217) = v132 & 1;
    v230 = v249;
    v231 = v248;
    v232 = v247;
    v228 = v229;
    v225 = v131;
    v226 = v227;
    v145 = 128;
  }

  v216 = v145;
  v140 = v246;
  v141 = v244;
  v142 = v234;
LABEL_112:
  if (*(v140 + 20))
  {
    LOBYTE(v258) = 0;
    v148.n128_f64[0] = Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v141);
    if (*(v140 + 22))
    {
LABEL_114:
      LOBYTE(v258) = 2;
      Date.ISO8601ComponentsFormatStyle.components(fromDateString:)(v138);
      goto LABEL_117;
    }
  }

  else
  {
    (*(v253 + 56))(v141, 1, 1, v78);
    if (*(v140 + 22))
    {
      goto LABEL_114;
    }
  }

  (*(v253 + 56))(v138, 1, 1, v78, v148);
LABEL_117:
  sub_1B7205588(v141, v143, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v143, 1, v78) == 1)
  {
    sub_1B7205418(v143, &qword_1EB991538, &unk_1B7813260);
    v234 = 0;
    LODWORD(v220) = 1;
  }

  else
  {
    v234 = sub_1B77FEC58();
    LODWORD(v220) = v149;
    (*(v253 + 8))(v143, v78);
  }

  v150 = v221;
  sub_1B7205588(v141, v221, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v150, 1, v78) == 1)
  {
    sub_1B7205418(v150, &qword_1EB991538, &unk_1B7813260);
    v151 = 0;
    LODWORD(v221) = 1;
  }

  else
  {
    v151 = sub_1B77FEC78();
    LODWORD(v221) = v152;
    (*(v253 + 8))(v150, v78);
  }

  sub_1B7205588(v141, v142, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v142, 1, v78) == 1)
  {
    sub_1B7205418(v142, &qword_1EB991538, &unk_1B7813260);
    v153 = 0;
    LODWORD(v215) = 1;
  }

  else
  {
    v153 = sub_1B77FEC08();
    LODWORD(v215) = v154;
    (*(v253 + 8))(v142, v78);
  }

  v155 = v222;
  sub_1B7205588(v138, v222, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v155, 1, v78) == 1)
  {
    sub_1B7205418(v155, &qword_1EB991538, &unk_1B7813260);
    v246 = 0;
    v213 = 1;
  }

  else
  {
    v246 = sub_1B77FEC38();
    v213 = v156;
    (*(v253 + 8))(v155, v78);
  }

  v157 = v233;
  v233 = v151;
  sub_1B7205588(v138, v157, &qword_1EB991538, &unk_1B7813260);
  if ((v254[0])(v157, 1, v78) == 1)
  {
    sub_1B7205418(v157, &qword_1EB991538, &unk_1B7813260);
    v158 = 0;
    v159 = 1;
  }

  else
  {
    v158 = sub_1B77FEC98();
    v159 = v160;
    (*(v253 + 8))(v157, v78);
  }

  v161 = v223;
  sub_1B7205588(v138, v223, &qword_1EB991538, &unk_1B7813260);
  v162 = v153;
  if ((v254[0])(v161, 1, v78) == 1)
  {
    sub_1B7205418(v161, &qword_1EB991538, &unk_1B7813260);
    v163 = 0;
    v164 = 1;
    if (v220)
    {
      goto LABEL_138;
    }
  }

  else
  {
    v165 = v161;
    v163 = sub_1B77FECB8();
    v164 = v166;
    (*(v253 + 8))(v165, v78);
    if (v220)
    {
LABEL_138:
      v233 = 0;
      v234 = 0;
      v222 = 0;
      v246 = 0;
      v253 = 0;
      v163 = 0;
      LODWORD(v254[0]) = 254;
      goto LABEL_139;
    }
  }

  if (v221 & 1) != 0 || (v215)
  {
    goto LABEL_138;
  }

  v222 = v162;
  if (v213 & 1) != 0 || (v159)
  {
    v246 = 0;
    v253 = 0;
    v163 = 0;
    LODWORD(v254[0]) = 0;
  }

  else
  {
    LODWORD(v254[0]) = v164 & 1 | 0xFFFFFF80;
    v253 = v158;
  }

LABEL_139:
  LODWORD(v223) = *v140;
  v167 = *(v140 + 1);
  v168 = *(v140 + 2);
  v169 = *(v140 + 4);
  v220 = *(v140 + 3);
  v221 = v167;
  v170 = *(v140 + 6);
  v215 = *(v140 + 5);
  v171 = *(v140 + 264);
  v172 = *(v140 + 280);
  v255[4] = *(v140 + 248);
  v255[5] = v171;
  v173 = *(v140 + 264);
  v174 = *(v140 + 296);
  v255[6] = *(v140 + 280);
  v255[7] = v174;
  v175 = *(v140 + 200);
  v255[0] = *(v140 + 184);
  v255[1] = v175;
  v176 = *(v140 + 232);
  v255[2] = *(v140 + 216);
  v255[3] = v176;
  v262 = *(v140 + 248);
  v263 = v173;
  v177 = *(v140 + 296);
  v264 = v172;
  v265 = v177;
  v178 = *(v140 + 200);
  v258 = *(v140 + 184);
  v259 = v178;
  v179 = *(v140 + 232);
  v260 = *(v140 + 216);
  v261 = v179;

  sub_1B7478158(v255, v257);
  sub_1B752E22C(&v258, sub_1B7478190, nullsub_1, sub_1B7531608, v256);
  sub_1B7205418(v245, &qword_1EB991538, &unk_1B7813260);
  sub_1B7205418(v244, &qword_1EB991538, &unk_1B7813260);
  sub_1B7205418(v252, &qword_1EB991538, &unk_1B7813260);
  sub_1B7205418(v243, &qword_1EB991538, &unk_1B7813260);
  sub_1B7205418(v242, &qword_1EB991538, &unk_1B7813260);
  sub_1B7205418(v241, &qword_1EB991538, &unk_1B7813260);
  sub_1B7205418(v251, &qword_1EB991538, &unk_1B7813260);
  sub_1B7205418(v250, &qword_1EB991538, &unk_1B7813260);
  v180 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  v181 = v224;
  sub_1B7205588(&v140[*(v180 + 68)], v224, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B75315A8(v140, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = -2;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0x1FFFFFFFELL;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = -2;
  sub_1B71CDF28(v257);
  v182 = v257[5];
  *(a2 + 344) = v257[4];
  *(a2 + 360) = v182;
  v183 = v257[7];
  *(a2 + 376) = v257[6];
  *(a2 + 392) = v183;
  v184 = v257[1];
  *(a2 + 280) = v257[0];
  *(a2 + 296) = v184;
  v185 = v257[3];
  *(a2 + 312) = v257[2];
  *(a2 + 328) = v185;
  v186 = *(type metadata accessor for ExtractedOrder.ShippingFulfillment(0) + 48);
  v187 = sub_1B77FF988();
  (*(*(v187 - 8) + 56))(a2 + v186, 1, 1, v187);
  *a2 = v223;
  v188 = v220;
  *(a2 + 8) = v221;
  *(a2 + 16) = v168;
  *(a2 + 24) = v188;
  *(a2 + 32) = v169;
  *(a2 + 40) = v215;
  *(a2 + 48) = v170;
  v189 = v236;
  *(a2 + 56) = v237;
  *(a2 + 64) = v189;
  v191 = v239;
  v190 = v240;
  *(a2 + 72) = v235;
  *(a2 + 80) = v190;
  v192 = v238;
  *(a2 + 88) = v191;
  *(a2 + 96) = v192;
  *(a2 + 104) = v219;
  v193 = v231;
  *(a2 + 112) = v230;
  *(a2 + 120) = v193;
  v194 = v228;
  *(a2 + 128) = v232;
  *(a2 + 136) = v194;
  v195 = v225;
  *(a2 + 144) = v226;
  *(a2 + 152) = v195;
  *(a2 + 160) = v218 | v217;
  v196 = v248;
  *(a2 + 168) = v249;
  *(a2 + 176) = v196;
  v197 = v229;
  *(a2 + 184) = v247;
  *(a2 + 192) = v197;
  v198 = v214;
  *(a2 + 200) = v227;
  *(a2 + 208) = v198;
  *(a2 + 216) = v216;
  v199 = v233;
  *(a2 + 224) = v234;
  *(a2 + 232) = v199;
  v200 = v246;
  *(a2 + 240) = v222;
  *(a2 + 248) = v200;
  *(a2 + 256) = v253;
  *(a2 + 264) = v163;
  *(a2 + 272) = v254[0];
  v201 = *(a2 + 360);
  v262 = *(a2 + 344);
  v263 = v201;
  v202 = *(a2 + 392);
  v264 = *(a2 + 376);
  v265 = v202;
  v203 = *(a2 + 296);
  v258 = *(a2 + 280);
  v259 = v203;
  v204 = *(a2 + 328);
  v260 = *(a2 + 312);
  v261 = v204;
  sub_1B7205418(&v258, &qword_1EB996B70, &unk_1B7844F90);
  v205 = v256[5];
  *(a2 + 344) = v256[4];
  *(a2 + 360) = v205;
  v206 = v256[7];
  *(a2 + 376) = v256[6];
  *(a2 + 392) = v206;
  v207 = v256[1];
  *(a2 + 280) = v256[0];
  *(a2 + 296) = v207;
  v208 = v256[3];
  *(a2 + 312) = v256[2];
  *(a2 + 328) = v208;
  return sub_1B72DFF88(v181, a2 + v186);
}