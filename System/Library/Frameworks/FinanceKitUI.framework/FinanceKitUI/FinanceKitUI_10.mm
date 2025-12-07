uint64_t sub_23851CCE8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_23851CE64;
  }

  else
  {

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_23851CE04;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23851CE04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23851CE64()
{

  if (qword_27DF08CD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_23875C1E0();
  __swift_project_value_buffer(v2, qword_27DF2F690);
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to delete dashboard item: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23851D020@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CEA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 8);
  LOWORD(v26) = *v1;
  v7 = v26;
  v27 = v8;
  v9 = sub_23851D284();
  v11 = v10;
  v12 = sub_23875D790();
  sub_23875C3D0();
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D440, &qword_238776BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D448, &qword_23876D2F0);
  sub_23851DC88();
  sub_23851DD68();
  sub_23875E3B0();
  sub_23875CE90();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D470, &qword_23876D2F8) + 36);
  (*(v4 + 16))(a1 + v17, v6, v3);
  v18 = *(v4 + 56);
  v18((a1 + v17), 0, 1, v3);
  KeyPath = swift_getKeyPath(byte_23876D300);
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D478, &unk_23876D330) + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v4 + 32))(v20 + v21, v6, v3);
  result = v18(v20 + v21, 0, 1, v3);
  *v20 = KeyPath;
  return result;
}

uint64_t sub_23851D284()
{
  v0 = sub_23875BA90();
  v52 = *(v0 - 8);
  v53 = v0;
  MEMORY[0x28223BE20](v0);
  v50 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23875BAD0();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v43 - v7;
  v8 = sub_23875BC40();
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x28223BE20](v8);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_23875B650();
  v47 = *(v17 - 8);
  v48 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23875BD30();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23875BE20();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v23, *MEMORY[0x277CC9810], v20, v26);
  sub_23875BD40();
  (*(v21 + 8))(v23, v20);
  v29 = v56;
  (*(v25 + 16))(v16, v28, v24);
  v30 = *(v25 + 56);
  v44 = v24;
  v30(v16, 0, 1, v24);
  v31 = sub_23875BE40();
  (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  sub_23875B620();
  v32 = v58;
  v45 = v19;
  sub_23875B5C0();
  v33 = v32;
  v34 = v57;
  result = (*(v57 + 48))(v33, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v46;
    v37 = (*(v34 + 32))(v46, v33, v29);
    v38 = v49;
    MEMORY[0x23EE5FF20](v37);
    v39 = v50;
    sub_23875BA80();
    v40 = v51;
    sub_23875BA60();
    (*(v52 + 8))(v39, v53);
    v41 = v55;
    v42 = *(v54 + 8);
    v42(v38, v55);
    sub_23851E394(&qword_27DF09978, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_23875BC20();
    v42(v40, v41);
    (*(v34 + 8))(v36, v29);
    (*(v47 + 8))(v45, v48);
    (*(v25 + 8))(v28, v44);
    return v59;
  }

  return result;
}

uint64_t sub_23851D97C(__int16 a1, uint64_t a2)
{
  swift_getKeyPath(aX_3);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D488, &qword_23876D360);
  type metadata accessor for OrderArchiveMonthView(0);
  sub_23843A3E8(&qword_27DF0D490, &qword_27DF0D488, &qword_23876D360, MEMORY[0x277D83980]);
  sub_23851E394(&qword_27DF0D468, type metadata accessor for OrderArchiveMonthView, &unk_23876D3C8);
  return sub_23875E370();
}

double sub_23851DAD0@<D0>(__int16 *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = a2;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  sub_23875E1A0();
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  v7 = *(type metadata accessor for OrderArchiveMonthView(0) + 28);
  *(a3 + v7) = swift_getKeyPath(aX_2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();

  return result;
}

unint64_t sub_23851DC88()
{
  result = qword_27DF0D450;
  if (!qword_27DF0D450)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D440, &qword_238776BA0);
    sub_23851DD14(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D450);
  }

  return result;
}

unint64_t sub_23851DD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0D458;
  if (!qword_27DF0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D458);
  }

  return result;
}

unint64_t sub_23851DD68()
{
  result = qword_27DF0D460;
  if (!qword_27DF0D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D448, &qword_23876D2F0);
    sub_23851E394(&qword_27DF0D468, type metadata accessor for OrderArchiveMonthView, &unk_23876D3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D460);
  }

  return result;
}

uint64_t type metadata accessor for OrderArchiveMonthView(uint64_t a1)
{
  result = qword_27DF0D498;
  if (!qword_27DF0D498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23851DE9C(uint64_t a1)
{
  sub_2384B49C4();
  if (v1 <= 0x3F)
  {
    sub_238438628(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23851DF38()
{
  result = qword_27DF0D4A8;
  if (!qword_27DF0D4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D478, &unk_23876D330);
    sub_23851DFF0();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D4A8);
  }

  return result;
}

unint64_t sub_23851DFF0()
{
  result = qword_27DF0D4B0;
  if (!qword_27DF0D4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D470, &qword_23876D2F8);
    sub_23851E0A8();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D4B0);
  }

  return result;
}

unint64_t sub_23851E0A8()
{
  result = qword_27DF0D4B8;
  if (!qword_27DF0D4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4C0, &qword_23876D3B8);
    sub_23851DC88();
    sub_23851DD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D4B8);
  }

  return result;
}

unint64_t sub_23851E16C()
{
  result = qword_27DF0D510;
  if (!qword_27DF0D510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D500, &unk_238779850);
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800, MEMORY[0x277CDF028]);
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D510);
  }

  return result;
}

uint64_t sub_23851E250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23851E2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderArchiveMonthView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23851E334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23851E394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23851E3DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 34);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_23851CB98(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_26Tm()
{
  v1 = (type metadata accessor for OrderArchiveMonthView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C450();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23851E5D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderArchiveMonthView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23851E650(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23851E670(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

void sub_23851E728(uint64_t a1)
{
  type metadata accessor for MerchantImage.ViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OrderDetails.FulfillmentsViewModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for OrderDetailsHeader.ViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_238530C18(319, &qword_27DF0D548, MEMORY[0x277CC8398], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_238530C18(319, &qword_27DF0D550, type metadata accessor for OrderDetailsReturnInfoSection.ViewModel, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_238530C18(319, &qword_27DF0D558, type metadata accessor for OrderDetailsReturn.ViewModel, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for OrderDetailsInfo.ViewModel(319);
              if (v7 <= 0x3F)
              {
                sub_23875A710();
                if (v8 <= 0x3F)
                {
                  sub_2384C6178(319, &qword_27DF0D560, &type metadata for OrderDetailsRelatedEmailsSection.ViewModel, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_23851E910(uint64_t a1)
{
  type metadata accessor for OrderDetailsNoFulfillments.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_23851E984(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23851E984(uint64_t a1)
{
  if (!qword_27DF0D578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D580, &qword_23876D538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D588, &qword_23876D540);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF0D578);
    }
  }
}

uint64_t sub_23851EA58(uint64_t a1)
{
  result = type metadata accessor for OrderDetails.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23851EAE0(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v37 = sub_238759D30();
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v9 = sub_23875F3A0();
  }

  else
  {
    v9 = *(a3 + 16);
  }

  if (v9)
  {
    v49 = MEMORY[0x277D84F90];
    sub_2385FE854(0, v9 & ~(v9 >> 63), 0);
    v44 = v49;
    if (v41)
    {
      v10 = sub_23875F350();
    }

    else
    {
      v10 = sub_23875F320();
      v11 = *(a3 + 36);
    }

    v46 = v10;
    v47 = v11;
    v48 = v41 != 0;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v43 = v3;
      v12 = 0;
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 < 0)
      {
        v13 = a3;
      }

      v35 = v13;
      v36 = v40 + 32;
      v33 = a3 + 64;
      v34 = a3 + 56;
      while (v12 < v9)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_39;
        }

        isUniquelyReferenced_nonNull_native = v46;
        v5 = v47;
        LODWORD(v6) = v48;
        v16 = a3;
        sub_238530518(v46, v47, v48, a3);
        a3 = v17;
        v45[0] = v17;
        v18 = v43;
        v38(v45);
        v43 = v18;
        if (v18)
        {
          goto LABEL_44;
        }

        v19 = v44;
        v49 = v44;
        v21 = *(v44 + 16);
        v20 = *(v44 + 24);
        a3 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          sub_2385FE854((v20 > 1), v21 + 1, 1);
          v19 = v49;
        }

        *(v19 + 16) = a3;
        v22 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v44 = v19;
        (*(v40 + 32))(v19 + v22 + *(v40 + 72) * v21, v42, v37);
        if (v41)
        {
          if (!v6)
          {
            goto LABEL_45;
          }

          a3 = v16;
          if (sub_23875F370())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            isUniquelyReferenced_nonNull_native = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D618, &qword_23876D660);
          v14 = sub_23875EE90();
          sub_23875F3E0();
          v14(v45, 0);
          if (v12 == v9)
          {
LABEL_36:
            sub_238434834(v46, v47, v48);
            return;
          }
        }

        else
        {
          if (v6)
          {
            goto LABEL_46;
          }

          if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          a3 = v16;
          v23 = 1 << *(v16 + 32);
          if (isUniquelyReferenced_nonNull_native >= v23)
          {
            goto LABEL_40;
          }

          v24 = isUniquelyReferenced_nonNull_native >> 6;
          v25 = *(v34 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
          if (((v25 >> isUniquelyReferenced_nonNull_native) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v16 + 36) != v5)
          {
            goto LABEL_42;
          }

          v26 = v25 & (-2 << (isUniquelyReferenced_nonNull_native & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v6 = v24 << 6;
            v27 = v24 + 1;
            v28 = (v33 + 8 * v24);
            while (v27 < (v23 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v6 += 64;
              ++v27;
              if (v30)
              {
                sub_238434834(isUniquelyReferenced_nonNull_native, v5, 0);
                v23 = __clz(__rbit64(v29)) + v6;
                goto LABEL_35;
              }
            }

            sub_238434834(isUniquelyReferenced_nonNull_native, v5, 0);
          }

LABEL_35:
          v31 = *(v16 + 36);
          v46 = v23;
          v47 = v31;
          v48 = 0;
          if (v12 == v9)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:

    sub_238434834(isUniquelyReferenced_nonNull_native, v5, v6);

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }
}

void sub_23851F080(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v25 = a1;
  v26 = a2;
  v24 = a4(0);
  v11 = *(v24 - 8);
  v12 = MEMORY[0x28223BE20](v24);
  v14 = &v21 - v13;
  v15 = *(a3 + 16);
  if (v15)
  {
    v27 = MEMORY[0x277D84F90];
    v21 = a5;
    (a5)(0, v15, 0, v12);
    v16 = v27;
    v17 = *(a6(0) - 8);
    v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = v11 + 32;
    v22 = *(v17 + 72);
    while (1)
    {
      v25(v18);
      if (v9)
      {
        break;
      }

      v9 = 0;
      v27 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        v21(v19 > 1, v20 + 1, 1);
        v16 = v27;
      }

      *(v16 + 16) = v20 + 1;
      (*(v11 + 32))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v24);
      v18 += v22;
      if (!--v15)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_23851F2A0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v26 = a7;
  v27 = a1;
  v10 = v7;
  v28 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v23 - v15;
  v17 = *(a3 + 16);
  if (v17)
  {
    v29 = MEMORY[0x277D84F90];
    v24 = a5;
    (a5)(0, v17, 0, v14);
    v18 = v29;
    v19 = *(a6(0) - 8);
    v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v25 = *(v19 + 72);
    while (1)
    {
      v27(v20);
      if (v10)
      {
        break;
      }

      v10 = 0;
      v29 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        v24(v21 > 1, v22 + 1, 1);
        v18 = v29;
      }

      *(v18 + 16) = v22 + 1;
      sub_23852EDFC(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v26);
      v20 += v25;
      if (!--v17)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23851F4AC@<X0>(uint64_t a1@<X8>)
{
  sub_23852FA60(v1, a1, type metadata accessor for OrderDetails.ViewModel);
  v3 = type metadata accessor for OrderDetails_iOS(0);
  v4 = a1 + v3[5];
  LOBYTE(v10) = 1;
  v8 = 1;
  v9 = 1;
  sub_23875E1A0();
  *(v4 + 32) = v12;
  *(v4 + 48) = v13;
  *(v4 + 64) = v14;
  *(v4 + 80) = v15;
  *v4 = v10;
  *(v4 + 16) = v11;
  v5 = a1 + v3[6];
  *v5 = swift_getKeyPath(byte_23876D668, 0, 0, 0, 0, v8, 0, 0, 0, 0, v9);
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = v3[7];
  *(a1 + v6) = swift_getKeyPath(byte_23876D690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23851F5CC@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_23875CE00();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C8A0, &unk_23876B5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v46 = type metadata accessor for OrderDetailsRefreshableModifier(0);
  MEMORY[0x28223BE20](v46);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D690, &qword_23876D778);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D698, &qword_23876D780);
  MEMORY[0x28223BE20](v43);
  v13 = &v42 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6A0, &qword_23876D788);
  MEMORY[0x28223BE20](v42);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6A8, &qword_23876D790);
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x28223BE20](v16);
  v47 = &v42 - v17;
  v54 = v1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6B0, &unk_23876D798);
  v18 = v1;
  sub_23843A3E8(&qword_27DF0D6B8, &qword_27DF0D6B0, &unk_23876D798, MEMORY[0x277CE1198]);
  sub_23875C410();
  v19 = type metadata accessor for OrderDetails.ViewModel(0);
  if (*(v1 + *(v19 + 44)) == 1)
  {
    v20 = *(v19 + 48);
    v21 = sub_23875A710();
    v22 = *(v21 - 8);
    v23 = v1 + v20;
    v18 = v1;
    (*(v22 + 16))(v6, v23, v21);
    (*(v22 + 56))(v6, 0, 1, v21);
  }

  else
  {
    v24 = sub_23875A710();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  }

  sub_2384396E4(v6, v8, &qword_27DF0C8A0, &unk_23876B5F0);
  v25 = &v8[*(v46 + 20)];
  v55 = 0;
  sub_23875E1A0();
  v26 = v57;
  *v25 = v56;
  *(v25 + 1) = v26;
  (*(v44 + 32))(v13, v11, v45);
  sub_23852EDFC(v8, &v13[*(v43 + 36)], type metadata accessor for OrderDetailsRefreshableModifier);
  v27 = [objc_opt_self() systemGroupedBackgroundColor];
  v28 = sub_23875DFB0();
  v29 = sub_23875D780();
  sub_23840AF0C(v13, v15);
  v30 = v42;
  v31 = &v15[*(v42 + 36)];
  *v31 = v28;
  v31[8] = v29;
  v33 = v50;
  v32 = v51;
  v34 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277CDDDC0], v52);
  v35 = sub_238530CA0();
  v36 = v47;
  sub_23875DE50();
  (*(v32 + 8))(v33, v34);
  v37 = sub_238439884(v15, &qword_27DF0D6A0, &qword_23876D788);
  MEMORY[0x28223BE20](v37);
  *(&v42 - 2) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6E0, &qword_23876D7A8);
  v56 = v30;
  v57 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D6E8, &qword_23876D7B0);
  v39 = sub_23843A3E8(&qword_27DF0D6F0, &qword_27DF0D6E8, &qword_23876D7B0, MEMORY[0x277CDD7A8]);
  v56 = v38;
  v57 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  sub_23875DEF0();
  return (*(v48 + 8))(v36, v40);
}

double sub_23851FCD8@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D748, &qword_23876D848);
  sub_23851FDAC(a1, a2 + *(v4 + 44));

  return result;
}

double sub_23851FDAC@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v295 = a2;
  v3 = sub_238757A70();
  v261 = *(v3 - 8);
  v262 = v3;
  MEMORY[0x28223BE20](v3);
  v260 = &v221 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875CDB0();
  v226 = *(v5 - 8);
  v227 = v5;
  MEMORY[0x28223BE20](v5);
  v225 = &v221 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D750, &unk_23876D850);
  v265 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v263 = &v221 - v7;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D758, &qword_238781BD0);
  v266 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v264 = &v221 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D760, &qword_23876D860);
  MEMORY[0x28223BE20](v9 - 8);
  v312 = &v221 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v307 = &v221 - v12;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D768, &qword_23876D868);
  v230 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v228 = &v221 - v13;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D770, &qword_23876D870);
  v231 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v229 = &v221 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D778, &qword_23876D878);
  MEMORY[0x28223BE20](v15 - 8);
  v306 = &v221 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v313 = &v221 - v18;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D780, &qword_23876D880);
  v256 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v254 = &v221 - v19;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D788, &qword_23876D888);
  v257 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v255 = &v221 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D530, &qword_23876D508);
  MEMORY[0x28223BE20](v21 - 8);
  v293 = (&v221 - v22);
  v292 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v291 = *(v292 - 1);
  MEMORY[0x28223BE20](v292);
  v253 = &v221 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D790, &qword_23876D890);
  MEMORY[0x28223BE20](v24 - 8);
  v305 = &v221 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v311 = &v221 - v27;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D798, &qword_23876D898);
  v287 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v285 = &v221 - v28;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7A0, &qword_23876D8A0);
  v288 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v286 = &v221 - v29;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7A8, &qword_23876D8A8);
  v303 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v302 = &v221 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v310 = &v221 - v32;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7B0, &qword_23876D8B0);
  MEMORY[0x28223BE20](v284);
  v251 = &v221 - v33;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7B8, &qword_23876D8B8);
  v244 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v242 = &v221 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7C0, &qword_23876D8C0);
  v245 = *(v35 - 8);
  v246 = v35;
  MEMORY[0x28223BE20](v35);
  v243 = &v221 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7C8, &qword_23876D8C8);
  v249 = *(v37 - 8);
  v250 = v37;
  MEMORY[0x28223BE20](v37);
  v248 = &v221 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v283 = &v221 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7D0, &qword_23876D8D0);
  v239 = *(v41 - 8);
  v240 = v41;
  MEMORY[0x28223BE20](v41);
  v224 = &v221 - v42;
  v43 = type metadata accessor for OrderDetailsFulfillment(0);
  MEMORY[0x28223BE20](v43 - 8);
  v223 = &v221 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v222 = &v221 - v46;
  v47 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
  v237 = *(v47 - 8);
  v238 = v47;
  MEMORY[0x28223BE20](v47);
  v221 = &v221 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7D8, &qword_23876D8D8);
  MEMORY[0x28223BE20](v49 - 8);
  v241 = &v221 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v282 = &v221 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D580, &qword_23876D538);
  MEMORY[0x28223BE20](v53 - 8);
  v236 = &v221 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v279 = &v221 - v56;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7E0, &qword_23876D8E0);
  MEMORY[0x28223BE20](v278);
  v281 = &v221 - v57;
  v280 = type metadata accessor for OrderDetailsNoFulfillments(0);
  MEMORY[0x28223BE20](v280);
  v235 = &v221 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  MEMORY[0x28223BE20](v59 - 8);
  v234 = &v221 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  MEMORY[0x28223BE20](v276);
  v277 = &v221 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7E8, &qword_23876D8E8);
  MEMORY[0x28223BE20](v62 - 8);
  v301 = &v221 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v309 = &v221 - v65;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7F0, &qword_23876D8F0);
  v272 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v270 = &v221 - v66;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D7F8, &qword_23876D8F8);
  v273 = *(v275 - 8);
  MEMORY[0x28223BE20](v275);
  v271 = &v221 - v67;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D800, &qword_23876D900);
  v299 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v298 = &v221 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v308 = &v221 - v70;
  v252 = type metadata accessor for OrderDetails_iOS(0);
  v269 = *(v252 - 8);
  v71 = *(v269 + 64);
  MEMORY[0x28223BE20](v252);
  v72 = &v221 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D808, &qword_23876D908);
  MEMORY[0x28223BE20](v73);
  v297 = &v221 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v314 = &v221 - v76;
  sub_23875ED50();
  v294 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v296 = type metadata accessor for OrderDetails.ViewModel(0);
  sub_23852FA60(&a1[*(v296 + 24)], v314, type metadata accessor for OrderDetailsHeader.ViewModel);
  v77 = sub_23875E4A0();
  v79 = v78;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, &v221 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v80 = (*(v269 + 80) + 16) & ~*(v269 + 80);
  v81 = swift_allocObject();
  sub_23852EDFC(v72, v81 + v80, type metadata accessor for OrderDetails_iOS);

  v83 = (v314 + *(v73 + 36));
  *v83 = sub_23853216C;
  v83[1] = v81;
  v83[2] = v77;
  v83[3] = v79;
  v84 = a1;
  MEMORY[0x28223BE20](v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D810, &qword_23876D910);
  sub_238532254(&qword_27DF0D818, &qword_27DF0D810, &qword_23876D910, sub_23853218C);
  v85 = v270;
  sub_23875D9C0();
  v86 = sub_23843A3E8(&qword_27DF0D838, &qword_27DF0D7F0, &qword_23876D8F0, MEMORY[0x277CDE5A0]);
  v87 = v271;
  v88 = v274;
  sub_23875DB70();
  (*(v272 + 8))(v85, v88);
  *&v351 = v88;
  *(&v351 + 1) = v86;
  swift_getOpaqueTypeConformance2();
  v89 = v275;
  sub_23875DD80();
  (*(v273 + 8))(v87, v89);
  v90 = v296;
  v91 = v277;
  sub_23852FA60(&a1[*(v296 + 20)], v277, type metadata accessor for OrderDetails.FulfillmentsViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v92 = *(v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48));
    v93 = v91;
    v94 = v279;
    sub_2384396E4(v93, v279, &qword_27DF0D580, &qword_23876D538);
    v95 = v94;
    v96 = v236;
    sub_23843981C(v95, v236, &qword_27DF0D580, &qword_23876D538);
    if ((*(v237 + 48))(v96, 1, v238) == 1)
    {
      sub_238439884(v96, &qword_27DF0D580, &qword_23876D538);
      v97 = 1;
      v98 = v282;
    }

    else
    {
      v104 = v221;
      sub_23852EDFC(v96, v221, type metadata accessor for OrderDetailsFulfillment.ViewModel);
      v105 = v222;
      sub_23852FA60(v104, v222, type metadata accessor for OrderDetailsFulfillment.ViewModel);
      v106 = *(v92 + 16) == 0;
      if (*(v92 + 16))
      {
        v107 = 0x4028000000000000;
      }

      else
      {
        v107 = 0;
      }

      v108 = v223;
      sub_23852FA60(v105, v223, type metadata accessor for OrderDetailsFulfillment);
      v109 = v224;
      sub_23852FA60(v108, v224, type metadata accessor for OrderDetailsFulfillment);
      v110 = v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D960, &qword_23876DA10) + 48);
      *v110 = v107;
      *(v110 + 8) = 0;
      *(v110 + 9) = v106;
      sub_23852FAC8(v105, type metadata accessor for OrderDetailsFulfillment);
      sub_23852FAC8(v104, type metadata accessor for OrderDetailsFulfillment.ViewModel);
      sub_23852FAC8(v108, type metadata accessor for OrderDetailsFulfillment);
      v98 = v282;
      sub_2384396E4(v109, v282, &qword_27DF0D7D0, &qword_23876D8D0);
      v97 = 0;
    }

    v111 = (*(v239 + 56))(v98, v97, 1, v240);
    MEMORY[0x28223BE20](v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D840, &qword_23876D920);
    sub_238532254(&qword_27DF0D848, &qword_27DF0D840, &qword_23876D920, sub_2385322D0);
    v112 = v242;
    sub_23875D9C0();

    v113 = sub_23843A3E8(&qword_27DF0D890, &qword_27DF0D7B8, &qword_23876D8B8, MEMORY[0x277CDE5A0]);
    v114 = v243;
    v115 = v247;
    sub_23875DB70();
    (*(v244 + 8))(v112, v115);
    *&v351 = v115;
    *(&v351 + 1) = v113;
    swift_getOpaqueTypeConformance2();
    v116 = v283;
    v117 = v246;
    sub_23875DD80();
    (*(v245 + 8))(v114, v117);
    v118 = v241;
    sub_23843981C(v98, v241, &qword_27DF0D7D8, &qword_23876D8D8);
    v277 = v84;
    v119 = v248;
    v120 = v249;
    v121 = *(v249 + 16);
    v122 = v250;
    v121(v248, v116, v250);
    v123 = v251;
    sub_23843981C(v118, v251, &qword_27DF0D7D8, &qword_23876D8D8);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D898, &qword_23876D958);
    v121((v123 + *(v124 + 48)), v119, v122);
    v125 = *(v120 + 8);
    v125(v119, v122);
    sub_238439884(v118, &qword_27DF0D7D8, &qword_23876D8D8);
    sub_23843981C(v123, v281, &qword_27DF0D7B0, &qword_23876D8B0);
    swift_storeEnumTagMultiPayload();
    sub_238530E40(&qword_27DF0D8A0, type metadata accessor for OrderDetailsNoFulfillments, &unk_238770368);
    sub_23843A3E8(&qword_27DF0D8A8, &qword_27DF0D7B0, &qword_23876D8B0, MEMORY[0x277CE14C0]);
    sub_23875D1B0();
    sub_238439884(v123, &qword_27DF0D7B0, &qword_23876D8B0);
    v125(v283, v122);
    v84 = v277;
    sub_238439884(v282, &qword_27DF0D7D8, &qword_23876D8D8);
    v102 = sub_238439884(v279, &qword_27DF0D580, &qword_23876D538);
    v103 = v307;
    v90 = v296;
  }

  else
  {
    v99 = v91;
    v100 = v234;
    sub_23852EDFC(v99, v234, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    v101 = v235;
    sub_23852FA60(v100, v235, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    sub_23852FA60(v101, v281, type metadata accessor for OrderDetailsNoFulfillments);
    swift_storeEnumTagMultiPayload();
    sub_238530E40(&qword_27DF0D8A0, type metadata accessor for OrderDetailsNoFulfillments, &unk_238770368);
    sub_23843A3E8(&qword_27DF0D8A8, &qword_27DF0D7B0, &qword_23876D8B0, MEMORY[0x277CE14C0]);
    sub_23875D1B0();
    sub_23852FAC8(v101, type metadata accessor for OrderDetailsNoFulfillments);
    v102 = sub_23852FAC8(v100, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    v103 = v307;
  }

  MEMORY[0x28223BE20](v102);
  type metadata accessor for OrderDetailsInfo(0);
  sub_238530E40(&qword_27DF0D8B0, type metadata accessor for OrderDetailsInfo, &unk_23877E3A8);
  v126 = v285;
  sub_23875D9C0();
  v127 = sub_23843A3E8(&qword_27DF0D8B8, &qword_27DF0D798, &qword_23876D898, MEMORY[0x277CDE5A0]);
  v128 = v286;
  v129 = v289;
  sub_23875DB70();
  (*(v287 + 8))(v126, v129);
  *&v351 = v129;
  *(&v351 + 1) = v127;
  swift_getOpaqueTypeConformance2();
  v130 = v290;
  sub_23875DD80();
  (*(v288 + 8))(v128, v130);
  v131 = v293;
  sub_23843981C(&v84[v90[8]], v293, &qword_27DF0D530, &qword_23876D508);
  if ((*(v291 + 48))(v131, 1, v292) == 1)
  {
    sub_238439884(v131, &qword_27DF0D530, &qword_23876D508);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C0, &qword_23876D960);
    v133 = (*(*(v132 - 8) + 56))(v311, 1, 1, v132);
  }

  else
  {
    v134 = v253;
    v135 = sub_23852EDFC(v131, v253, type metadata accessor for OrderDetailsReturnInfoSection.ViewModel);
    MEMORY[0x28223BE20](v135);
    type metadata accessor for OrderDetailsReturnInfoSection(0);
    sub_238530E40(&qword_27DF0D950, type metadata accessor for OrderDetailsReturnInfoSection, &unk_23876ED8C);
    v136 = v254;
    sub_23875D9C0();
    v137 = sub_23843A3E8(&qword_27DF0D958, &qword_27DF0D780, &qword_23876D880, MEMORY[0x277CDE5A0]);
    v138 = v255;
    v139 = v258;
    sub_23875DB70();
    (*(v256 + 8))(v136, v139);
    *&v351 = v139;
    *(&v351 + 1) = v137;
    swift_getOpaqueTypeConformance2();
    v140 = v311;
    v141 = v259;
    sub_23875DD80();
    (*(v257 + 8))(v138, v141);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C0, &qword_23876D960);
    (*(*(v142 - 8) + 56))(v140, 0, 1, v142);
    v133 = sub_23852FAC8(v134, type metadata accessor for OrderDetailsReturnInfoSection.ViewModel);
  }

  v143 = v84[v90[13]];
  if ((v143 & 1) != 0 || !*(*&v84[v90[7]] + 16))
  {
    v149 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v133);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C8, &qword_23876D968);
    sub_23853250C();
    v144 = v228;
    sub_23875D9C0();
    v145 = sub_23843A3E8(&qword_27DF0D918, &qword_27DF0D768, &qword_23876D868, MEMORY[0x277CDE5A0]);
    v146 = v229;
    v147 = v232;
    sub_23875DB70();
    (*(v230 + 8))(v144, v147);
    *&v351 = v147;
    *(&v351 + 1) = v145;
    swift_getOpaqueTypeConformance2();
    v148 = v233;
    sub_23875DD80();
    (*(v231 + 8))(v146, v148);
    v149 = 0;
  }

  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D920, &qword_23876D990);
  v151 = 1;
  v152 = (*(*(v150 - 8) + 56))(v313, v149, 1, v150);
  if (*&v84[v90[14]])
  {
    MEMORY[0x28223BE20](v152);
    sub_2385328A4(v153, v154, v155);
    v156 = v263;
    sub_23875D9C0();
    v157 = sub_23843A3E8(&qword_27DF0D948, &qword_27DF0D750, &unk_23876D850, MEMORY[0x277CDE5A0]);
    v158 = v264;
    v159 = v267;
    sub_23875DB70();
    (*(v265 + 8))(v156, v159);
    *&v351 = v159;
    *(&v351 + 1) = v157;
    swift_getOpaqueTypeConformance2();
    v160 = v268;
    sub_23875DD80();
    (*(v266 + 8))(v158, v160);
    v151 = 0;
  }

  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D928, &qword_23876D998);
  (*(*(v161 - 8) + 56))(v103, v151, 1, v161);
  LODWORD(v296) = sub_23875D770();
  if (!v143)
  {
    goto LABEL_30;
  }

  v162 = &v84[*(v252 + 24)];
  v163 = *v162;
  if (v162[16] != 1)
  {
    v164 = *(v162 + 1);

    sub_23875EFF0();
    v165 = sub_23875D730();
    sub_23875C110();

    v166 = v225;
    sub_23875CDA0();
    swift_getAtKeyPath();
    v167 = sub_238530F7C(v163, v164, 0);
    (*(v226 + 8))(v166, v227, v167);
  }

  v168 = v260;
  sub_238758E10();
  v169 = sub_238757A50();
  (*(v261 + 8))(v168, v262);
  if (v169)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v170 = qword_2814F1B90;
    v171 = sub_23875EA50();
    v172 = sub_23875EA50();
    v173 = sub_23875EA50();
    v174 = [v170 localizedStringForKey:v171 value:v172 table:v173];

    v175 = sub_23875EA80();
    v177 = v176;

    *&v351 = v175;
    *(&v351 + 1) = v177;
    sub_2384397A8(v178, v179, v180);
    v181 = sub_23875DAA0();
    v183 = v182;
    v185 = v184;
    v187 = v186;
    KeyPath = swift_getKeyPath(aH_0);
    v189 = sub_23875D440();
    v190 = sub_23875D970();
    v191 = swift_getKeyPath(asc_23876D9E0);
    v185 &= 1u;
    LOBYTE(v315) = v185;
    sub_23875E4A0();
    sub_23875C9C0();
    *&v351 = sub_23875E020();
    v192 = sub_23875E2D0();
    *&v339 = v181;
    *(&v339 + 1) = v183;
    LOBYTE(v340) = v185;
    *(&v340 + 1) = v187;
    *&v341 = KeyPath;
    BYTE8(v341) = 1;
    HIDWORD(v341) = v189;
    *&v342 = v191;
    *(&v342 + 1) = v190;
    v347 = v331;
    v348 = v332;
    v349 = v333;
    v343 = v327;
    v344 = v328;
    v346 = v330;
    v345 = v329;
    v350 = v192;
    nullsub_1();
    v359 = v347;
    v360 = v348;
    v361 = v349;
    v362 = v350;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v358 = v346;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v354 = v342;
    v103 = v307;
  }

  else
  {
LABEL_30:
    sub_238532874(&v351);
  }

  v193 = v297;
  sub_23843981C(v314, v297, &qword_27DF0D808, &qword_23876D908);
  v293 = *(v299 + 16);
  v194 = v298;
  (v293)(v298, v308, v300);
  v195 = v301;
  sub_23843981C(v309, v301, &qword_27DF0D7E8, &qword_23876D8E8);
  v292 = *(v303 + 16);
  v196 = v302;
  v292(v302, v310, v304);
  v197 = v305;
  sub_23843981C(v311, v305, &qword_27DF0D790, &qword_23876D890);
  v198 = v306;
  sub_23843981C(v313, v306, &qword_27DF0D778, &qword_23876D878);
  sub_23843981C(v103, v312, &qword_27DF0D760, &qword_23876D860);
  v323 = v359;
  v324 = v360;
  v325 = v361;
  v326 = v362;
  v319 = v355;
  v320 = v356;
  v321 = v357;
  v322 = v358;
  v315 = v351;
  v316 = v352;
  v317 = v353;
  v318 = v354;
  v199 = v295;
  sub_23843981C(v193, v295, &qword_27DF0D808, &qword_23876D908);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D930, &qword_23876D9A0);
  v201 = v194;
  v202 = v300;
  (v293)(v199 + v200[12], v201, v300);
  sub_23843981C(v195, v199 + v200[16], &qword_27DF0D7E8, &qword_23876D8E8);
  v203 = v196;
  v204 = v304;
  v292((v199 + v200[20]), v203, v304);
  sub_23843981C(v197, v199 + v200[24], &qword_27DF0D790, &qword_23876D890);
  sub_23843981C(v198, v199 + v200[28], &qword_27DF0D778, &qword_23876D878);
  sub_23843981C(v312, v199 + v200[32], &qword_27DF0D760, &qword_23876D860);
  v205 = v199 + v200[36];
  *v205 = v296;
  *(v205 + 8) = 0u;
  *(v205 + 24) = 0u;
  *(v205 + 40) = 1;
  v206 = v200[40];
  v207 = v324;
  v336 = v324;
  v335 = v323;
  v208 = v319;
  v209 = v320;
  v331 = v319;
  v332 = v320;
  v210 = v321;
  v211 = v322;
  v333 = v321;
  v334 = v322;
  v212 = v315;
  v213 = v316;
  v327 = v315;
  v328 = v316;
  v214 = v317;
  v215 = v318;
  v329 = v317;
  v330 = v318;
  v216 = v325;
  v337 = v325;
  v217 = v199 + v206;
  *(v217 + 128) = v323;
  *(v217 + 144) = v207;
  *(v217 + 160) = v216;
  *(v217 + 64) = v208;
  *(v217 + 80) = v209;
  *(v217 + 96) = v210;
  *(v217 + 112) = v211;
  *v217 = v212;
  *(v217 + 16) = v213;
  v338 = v326;
  *(v217 + 176) = v326;
  *(v217 + 32) = v214;
  *(v217 + 48) = v215;
  sub_23843981C(&v327, &v339, &qword_27DF0D938, &qword_23876D9A8);
  sub_238439884(v307, &qword_27DF0D760, &qword_23876D860);
  sub_238439884(v313, &qword_27DF0D778, &qword_23876D878);
  sub_238439884(v311, &qword_27DF0D790, &qword_23876D890);
  v218 = *(v303 + 8);
  v218(v310, v204);
  sub_238439884(v309, &qword_27DF0D7E8, &qword_23876D8E8);
  v219 = *(v299 + 8);
  v219(v308, v202);
  sub_238439884(v314, &qword_27DF0D808, &qword_23876D908);
  v347 = v323;
  v348 = v324;
  v349 = v325;
  v350 = v326;
  v343 = v319;
  v344 = v320;
  v345 = v321;
  v346 = v322;
  v339 = v315;
  v340 = v316;
  v341 = v317;
  v342 = v318;
  sub_238439884(&v339, &qword_27DF0D938, &qword_23876D9A8);
  sub_238439884(v312, &qword_27DF0D760, &qword_23876D860);
  sub_238439884(v306, &qword_27DF0D778, &qword_23876D878);
  sub_238439884(v305, &qword_27DF0D790, &qword_23876D890);
  v218(v302, v204);
  sub_238439884(v301, &qword_27DF0D7E8, &qword_23876D8E8);
  v219(v298, v202);
  sub_238439884(v297, &qword_27DF0D808, &qword_23876D908);

  return result;
}

void sub_238522818(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24[2] = a2;
  v3 = type metadata accessor for OrderDetails_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875D2F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v24[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  v19 = sub_23875E020();
  sub_23852FA60(a1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_23852EDFC(v6, v21 + v20, type metadata accessor for OrderDetails_iOS);
  v22 = (v21 + ((v20 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v12;
  v22[1] = v14;
  v22[2] = v16;
  v22[3] = v18;
  v24[7] = v19;
  v24[8] = sub_238533B6C;
  v24[9] = v21;
  v24[10] = 0;
  v24[11] = 0;
  v24[3] = v12;
  v24[4] = v14;
  v24[5] = v16;
  v24[6] = v18;
  sub_23852FA60(a1, v6, type metadata accessor for OrderDetails_iOS);
  v23 = swift_allocObject();
  sub_23852EDFC(v6, v23 + v20, type metadata accessor for OrderDetails_iOS);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_238530E40(&qword_27DF0C7A0, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  sub_23875DF10();
}

void sub_238522BA8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for OrderDetails_iOS(0) + 20));
  v7 = v6[3];
  v17 = v6[2];
  v18 = v7;
  v19 = v6[4];
  v8 = v6[1];
  v15 = *v6;
  v16 = v8;
  v20 = *(v6 + 10);
  sub_23843981C(&v15, v21, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  sub_23875E1C0();
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v22 = v14;
  v21[0] = v9;
  v21[1] = v10;
  sub_238439884(v21, &qword_27DF0D728, &unk_23876D7F0);
}

double sub_238522D7C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for OrderDetails_iOS(0) + 20));
  v5 = v4[3];
  v16 = v4[2];
  v17 = v5;
  v18 = v4[4];
  v6 = v4[1];
  v14 = *v4;
  v15 = v6;
  v19 = *(v4 + 10);
  sub_23843981C(&v14, v20, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v8 = v14;
  v9 = v15;
  sub_23875E1C0();
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v21 = v13;
  v20[0] = v8;
  v20[1] = v9;
  sub_238439884(v20, &qword_27DF0D728, &unk_23876D7F0);

  return result;
}

double sub_238522F44(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for OrderDetails.ViewModel(0);
  swift_getKeyPath(byte_23876DA68);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D990, &qword_23876DA88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D828, &qword_23876D918);
  sub_23843A3E8(&qword_27DF0D998, &qword_27DF0D990, &qword_23876DA88, MEMORY[0x277D83980]);
  sub_23853218C();
  sub_23875E370();

  return result;
}

double sub_2385230BC(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  type metadata accessor for OrderDetailsReturn(0);
  sub_238530E40(&qword_27DF0D830, type metadata accessor for OrderDetailsReturn, &unk_23877CC38);
  sub_23875E3D0();

  return result;
}

void sub_2385231E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, a2, type metadata accessor for OrderDetailsReturn.ViewModel);
  v4 = type metadata accessor for OrderDetailsReturn(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath(byte_23876DA90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath("X\v{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  KeyPath = swift_getKeyPath("(\v{E");

  *v7 = KeyPath;
  *(v7 + 8) = 0;
}

double sub_238523330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetails_iOS(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10[1] = a1;
  sub_23852FA60(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23852EDFC(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for OrderDetails_iOS);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D588, &qword_23876D540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D858, &qword_23876D928);
  sub_23843A3E8(&qword_27DF0D968, &qword_27DF0D588, &qword_23876D540, MEMORY[0x277D83980]);
  sub_2385322D0();
  sub_238530E40(&qword_27DF0D970, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel, &unk_238778FCC);
  sub_23875E380();

  return result;
}

void sub_2385235A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875CEA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v16 - 2) = a2;
  *(&v16 - 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D888, &unk_23876D940);
  sub_23843A3E8(&qword_27DF0D880, &qword_27DF0D888, &unk_23876D940, MEMORY[0x277CE11A8]);
  sub_23875E3D0();
  sub_23875CE90();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D868, &qword_23876D930) + 36);
  (*(v7 + 16))(a3 + v11, v9, v6);
  v12 = *(v7 + 56);
  v12(a3 + v11, 0, 1, v6);
  KeyPath = swift_getKeyPath(byte_23876DA18);
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D858, &qword_23876D928) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v7 + 32))(v14 + v15, v9, v6);
  v12(v14 + v15, 0, 1, v6);

  *v14 = KeyPath;
}

double sub_238523848@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_23875E4B0();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D978, &qword_23876DA50);
  return sub_2385238A8(a1, a2, a3 + *(v7 + 44));
}

double sub_2385238A8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v41 = a1;
  v46 = a3;
  v3 = type metadata accessor for OrderDetailsCollapsedFulfillment(0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  v10 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v38 - v11;
  v12 = type metadata accessor for OrderNavigationDestination(0);
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D980, &qword_23876DA58);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  sub_23875ED50();
  v42 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = type metadata accessor for OrderDetails.ViewModel(0);
  v25 = v41;
  if (*(v41 + *(v24 + 52)))
  {
    (*(v10 + 56))(v23, 1, 1, v43);
    v26 = v44;
  }

  else
  {
    v27 = *(v24 + 48);
    v28 = sub_23875A710();
    (*(*(v28 - 8) + 16))(v17, v25 + v27, v28);
    v26 = v44;
    v29 = v44[1];
    v30 = &v17[*(v15 + 20)];
    *v30 = *v44;
    *(v30 + 1) = v29;
    sub_23852FA60(v17, v14, type metadata accessor for FetchedOrderDetailsDestination);
    swift_storeEnumTagMultiPayload();
    sub_23852FA60(v14, v9, type metadata accessor for OrderNavigationDestination);
    (*(v39 + 56))(v9, 0, 1, v12);
    sub_238530E40(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);

    v31 = v40;
    sub_23875C760();
    sub_23852FAC8(v14, type metadata accessor for OrderNavigationDestination);
    sub_23852FAC8(v17, type metadata accessor for FetchedOrderDetailsDestination);
    v32 = v43;
    *(v31 + *(v43 + 36)) = 0;
    sub_2384396E4(v31, v23, &qword_27DF0BC20, &qword_238769430);
    (*(v10 + 56))(v23, 0, 1, v32);
  }

  v33 = v45;
  sub_23852FA60(v26, v45, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
  sub_23843981C(v23, v20, &qword_27DF0D980, &qword_23876DA58);
  v34 = v47;
  sub_23852FA60(v33, v47, type metadata accessor for OrderDetailsCollapsedFulfillment);
  v35 = v46;
  sub_23843981C(v20, v46, &qword_27DF0D980, &qword_23876DA58);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D988, &qword_23876DA60);
  sub_23852FA60(v34, v35 + *(v36 + 48), type metadata accessor for OrderDetailsCollapsedFulfillment);
  sub_23852FAC8(v33, type metadata accessor for OrderDetailsCollapsedFulfillment);
  sub_238439884(v23, &qword_27DF0D980, &qword_23876DA58);
  sub_23852FAC8(v34, type metadata accessor for OrderDetailsCollapsedFulfillment);
  sub_238439884(v20, &qword_27DF0D980, &qword_23876DA58);

  return result;
}

double sub_238523ED0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

double sub_238523F60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for OrderDetails.ViewModel(0);
  sub_23852FA60(a1 + *(v4 + 40), a2, type metadata accessor for OrderDetailsInfo.ViewModel);

  return result;
}

double sub_23852402C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, a2, type metadata accessor for OrderDetailsReturnInfoSection.ViewModel);

  return result;
}

void sub_2385240EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_23875EA80();
  v15 = v14;

  MEMORY[0x28223BE20](v16);
  v25[-2] = a1;
  v25[0] = v13;
  v25[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D908, &unk_23876D980);
  sub_238532714(v17, v18, v19);
  sub_238532768();
  sub_23875E3B0();
  sub_23875CE90();
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8E0, &qword_23876D970) + 36);
  (*(v5 + 16))(a2 + v20, v7, v4);
  v21 = *(v5 + 56);
  v21(a2 + v20, 0, 1, v4);
  KeyPath = swift_getKeyPath(byte_23876DA18);
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D8C8, &qword_23876D968) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v23 + v24, v7, v4);
  v21(v23 + v24, 0, 1, v4);

  *v23 = KeyPath;
}

double sub_238524454@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for OrderDetails.ViewModel(0) + 28));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  sub_23875E1A0();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  return result;
}

void sub_238524544(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E1A0();

  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

double sub_238524620(uint64_t a1)
{
  v2 = sub_23875D2A0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6E8, &qword_23876D7B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_23875D290();
  MEMORY[0x28223BE20](v7);
  *(&v10 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6F8, &qword_23876D7B8);
  sub_238530E98();
  sub_23875C4D0();
  v8 = sub_23843A3E8(&qword_27DF0D6F0, &qword_27DF0D6E8, &qword_23876D7B0, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EE61E80](v6, v3, v8);
  (*(v4 + 8))(v6, v3);

  return result;
}

uint64_t sub_238524864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OrderDetails_iOS(0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D718, &qword_23876D7D0) + 44);
  *v6 = sub_23875CE60();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D720, &qword_23876D7D8);
  sub_238524B30(a1, v6 + *(v7 + 44));

  v8 = sub_23875E4A0();
  v10 = v9;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v11 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v12 = swift_allocObject();
  sub_23852EDFC(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for OrderDetails_iOS);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D6F8, &qword_23876D7B8);
  v14 = (a2 + *(result + 36));
  *v14 = sub_238530F88;
  v14[1] = v12;
  v14[2] = v8;
  v14[3] = v10;
  return result;
}

void sub_238524B30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D730, &qword_23876D800);
  MEMORY[0x28223BE20](v40);
  v42 = &v39 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D738, &qword_23876D808);
  MEMORY[0x28223BE20](v41);
  v44 = &v39 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D740, &qword_23876D810);
  MEMORY[0x28223BE20](v43);
  v46 = &v39 - v12;
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FA60(a1, v9, type metadata accessor for MerchantImage.ViewModel);
  v13 = type metadata accessor for MerchantImage(0);
  v9[*(v13 + 20)] = 0;
  v14 = a1;
  v15 = *(v13 + 24);
  *&v9[v15] = swift_getKeyPath(byte_23876D818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
  v16 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_23876D690);
  v18 = &v9[*(v7 + 36)];
  v19 = type metadata accessor for OrderImageStyleModifier(0);
  *&v18[*(v19 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v18[*(v19 + 40)] = swift_getKeyPath(byte_23876D818);
  swift_storeEnumTagMultiPayload();
  *v18 = xmmword_2387692C0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  *(v18 + 4) = v16;
  v18[40] = 0;
  v20 = v14 + *(type metadata accessor for OrderDetails_iOS(0) + 20);
  v21 = *(v20 + 48);
  *&v58[32] = *(v20 + 32);
  *&v58[48] = v21;
  *&v58[64] = *(v20 + 64);
  *&v58[80] = *(v20 + 80);
  v22 = *(v20 + 16);
  *v58 = *v20;
  *&v58[16] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  if ((v57[32] & 1) != 0 || (v57[72] & 1) != 0 || (v23 = 1.0, *&v57[48] + *&v57[64] >= *&v57[8] + *&v57[24]))
  {
    v23 = 0.0;
  }

  v24 = v42;
  sub_2384396E4(v9, v42, &qword_27DF0C7D0, &unk_23876B3E0);
  *(v24 + *(v40 + 36)) = v23;
  v25 = *(v20 + 48);
  *&v58[32] = *(v20 + 32);
  *&v58[48] = v25;
  *&v58[64] = *(v20 + 64);
  *&v58[80] = *(v20 + 80);
  v26 = *(v20 + 16);
  *v58 = *v20;
  *&v58[16] = v26;
  sub_23875E1B0();
  v27 = 0;
  if ((v57[32] & 1) == 0 && ((v57[72] & 1) != 0 || *&v57[48] + *&v57[64] >= *&v57[8] + *&v57[24]))
  {
    v27 = *&v57[24];
  }

  v28 = v44;
  v29 = sub_2384396E4(v24, v44, &qword_27DF0D730, &qword_23876D800);
  v30 = (v28 + *(v41 + 36));
  *v30 = 0;
  v30[1] = v27;
  v31 = MEMORY[0x23EE62FD0](v29, 0.5, 1.0, 0.0);
  v32 = *(v20 + 48);
  *&v58[32] = *(v20 + 32);
  *&v58[48] = v32;
  *&v58[64] = *(v20 + 64);
  *&v58[80] = *(v20 + 80);
  v33 = *(v20 + 16);
  *v58 = *v20;
  *&v58[16] = v33;
  sub_23875E1B0();
  v52[0] = v56[0];
  *(v52 + 9) = *(v56 + 9);
  v50 = v54;
  v51 = v55;
  v49 = v53;
  *v57 = v31;
  *&v57[40] = v55;
  *&v57[56] = v56[0];
  *&v57[65] = *(v56 + 9);
  *&v57[8] = v53;
  *&v57[24] = v54;
  v34 = v46;
  sub_2384396E4(v28, v46, &qword_27DF0D738, &qword_23876D808);
  v35 = v34 + *(v43 + 36);
  v36 = *&v57[48];
  *(v35 + 32) = *&v57[32];
  *(v35 + 48) = v36;
  *(v35 + 64) = *&v57[64];
  v37 = *&v57[16];
  *v35 = *v57;
  *(v35 + 16) = v37;
  v38 = v49;
  *&v58[24] = v50;
  *&v58[40] = v51;
  *&v58[56] = v52[0];
  *&v58[65] = *(v52 + 9);
  *(v35 + 80) = v57[80];
  *v58 = v31;
  *&v58[8] = v38;
  sub_23843981C(v57, &v48, &qword_27DF0C7E8, &unk_23876B400);
  sub_238439884(v58, &qword_27DF0C7E8, &unk_23876B400);
  sub_2384396E4(v34, v47, &qword_27DF0D740, &qword_23876D810);
}

void sub_2385251CC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24[2] = a2;
  v3 = type metadata accessor for OrderDetails_iOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875D2F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v24[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  v19 = sub_23875E020();
  sub_23852FA60(a1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetails_iOS);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_23852EDFC(v6, v21 + v20, type metadata accessor for OrderDetails_iOS);
  v22 = (v21 + ((v20 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v12;
  v22[1] = v14;
  v22[2] = v16;
  v22[3] = v18;
  v24[7] = v19;
  v24[8] = sub_238530FA0;
  v24[9] = v21;
  v24[10] = 0;
  v24[11] = 0;
  v24[3] = v12;
  v24[4] = v14;
  v24[5] = v16;
  v24[6] = v18;
  sub_23852FA60(a1, v6, type metadata accessor for OrderDetails_iOS);
  v23 = swift_allocObject();
  sub_23852EDFC(v6, v23 + v20, type metadata accessor for OrderDetails_iOS);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_238530E40(&qword_27DF0C7A0, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  sub_23875DF10();
}

void sub_23852555C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for OrderDetails_iOS(0) + 20));
  v7 = v6[3];
  v17 = v6[2];
  v18 = v7;
  v19 = v6[4];
  v8 = v6[1];
  v15 = *v6;
  v16 = v8;
  v20 = *(v6 + 10);
  sub_23843981C(&v15, v21, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  sub_23875E1C0();
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v22 = v14;
  v21[0] = v9;
  v21[1] = v10;
  sub_238439884(v21, &qword_27DF0D728, &unk_23876D7F0);
}

double sub_238525730(uint64_t a1, __int128 *a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for OrderDetails_iOS(0) + 20));
  v5 = v4[3];
  v16 = v4[2];
  v17 = v5;
  v18 = v4[4];
  v6 = v4[1];
  v14 = *v4;
  v15 = v6;
  v19 = *(v4 + 10);
  sub_23843981C(&v14, v20, &qword_27DF0D728, &unk_23876D7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D728, &unk_23876D7F0);
  sub_23875E1B0();
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v8 = v14;
  v9 = v15;
  sub_23875E1C0();
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v21 = v13;
  v20[0] = v8;
  v20[1] = v9;
  sub_238439884(v20, &qword_27DF0D728, &unk_23876D7F0);

  return result;
}

BOOL sub_2385258F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (v6)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      v13.origin.x = v2;
      v13.origin.y = v3;
      v13.size.width = v4;
      v13.size.height = v5;
      v14.origin.x = v7;
      v14.origin.y = v8;
      v14.size.width = v9;
      v14.size.height = v10;
      if (!CGRectEqualToRect(v13, v14))
      {
        return 0;
      }
    }

    return 1;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    result = CGRectEqualToRect(*a1, *a2);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  return 0;
}

void sub_2385259B8(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v147 = a5;
  v151 = a3;
  v152 = a4;
  v9 = sub_238757700();
  v145 = *(v9 - 8);
  v146 = v9;
  MEMORY[0x28223BE20](v9);
  v144 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v157 = &v137 - v12;
  v162 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v156 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v153 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v159 = &v137 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D530, &qword_23876D508);
  MEMORY[0x28223BE20](v16 - 8);
  v143 = &v137 - v17;
  v158 = sub_23875AC40();
  v161 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v155 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OrderDetails.ViewModel(0);
  v20 = *(v19 + 32);
  v21 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v142 = v20;
  v141 = v21;
  v140 = v23;
  v139 = v22 + 56;
  (v23)(a6 + v20, 1, 1);
  v148 = v19;
  v149 = a6;
  v24 = a6 + *(v19 + 56);
  *v24 = 0;
  v138 = v24;
  v24[8] = 0;
  v25 = a1;
  v26 = a2;
  v27 = [v26 merchant];
  v28 = [v27 logoName];

  if (v28)
  {
    v29 = sub_23875EA80();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = v149;
  *v149 = v29;
  v32[1] = v31;
  v33 = type metadata accessor for MerchantImage.ViewModel(0);
  sub_238757DA0();
  v34 = [v26 merchant];
  v35 = [v34 displayName];

  v36 = sub_2387586A0();
  v38 = v37;

  v154 = v33;
  v39 = (v32 + *(v33 + 24));
  *v39 = v36;
  v39[1] = v38;
  v40 = v148;
  v41 = v148[5];
  v42 = v152;

  v43 = v25;
  v44 = v26;
  sub_2385266A4(v43, v44, v151, v42, v32 + v41);
  v45 = (v32 + v40[6]);
  v46 = v43;
  v47 = v44;
  v48 = [v47 &off_278A55290 + 7];
  v49 = [v48 displayName];

  v50 = sub_2387586A0();
  v52 = v51;

  *v45 = v50;
  v45[1] = v52;
  v160 = v46;
  v150 = v47;
  v53 = [v150 &off_278A55290 + 7];
  v54 = [v53 logoName];

  if (v54)
  {
    v55 = sub_23875EA80();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v58 = (v45 + *(type metadata accessor for OrderDetailsHeader.ViewModel(0) + 20));
  *v58 = v55;
  v58[1] = v57;
  v59 = v154;
  v60 = v160;
  sub_238757DA0();
  v61 = v150;
  v62 = [v150 &off_278A55290 + 7];
  v63 = [v62 displayName];

  v64 = sub_2387586A0();
  v66 = v65;

  v67 = (v58 + *(v59 + 24));
  *v67 = v64;
  v67[1] = v66;
  v68 = [v61 createdDate];
  sub_23875BBE0();

  v69 = sub_23875A540();
  v70 = v69;
  if (v69 >> 62)
  {
    v71 = sub_23875F3A0();
  }

  else
  {
    v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v153;
  v73 = v155;
  v74 = MEMORY[0x277D84F90];
  if (v71)
  {
    v163 = MEMORY[0x277D84F90];
    sub_2385FED48(0, v71 & ~(v71 >> 63), 0);
    if (v71 < 0)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v75 = 0;
    v76 = v163;
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x23EE63F70](v75, v70);
      }

      else
      {
        v77 = *(v70 + 8 * v75 + 32);
      }

      v78 = v77;
      sub_2387598D0();

      v163 = v76;
      v80 = *(v76 + 16);
      v79 = *(v76 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_2385FED48((v79 > 1), v80 + 1, 1);
        v76 = v163;
      }

      ++v75;
      *(v76 + 16) = v80 + 1;
      (*(v161 + 32))(v76 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v80, v73, v158);
    }

    while (v71 != v75);

    v81 = v149;
    v72 = v153;
    v74 = MEMORY[0x277D84F90];
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
    v81 = v149;
  }

  *(v81 + v148[7]) = v76;
  v82 = [v150 returnInfo];
  if (v82)
  {
    v83 = v143;
    sub_238553E1C(v82, v147 & 1, v143);
    v140(v83, 0, 1, v141);
    sub_2385309FC(v83, v81 + v142, &qword_27DF0D530, &qword_23876D508);
  }

  v84 = sub_23875A580();
  v85 = v84;
  if (v84 >> 62)
  {
    v86 = sub_23875F3A0();
    if (v86)
    {
      goto LABEL_24;
    }

LABEL_41:

    v88 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v86 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v86)
  {
    goto LABEL_41;
  }

LABEL_24:
  v163 = v74;
  sub_2385FED04(0, v86 & ~(v86 >> 63), 0);
  if (v86 < 0)
  {
LABEL_67:
    __break(1u);
    return;
  }

  v87 = 0;
  v88 = v163;
  v154 = v85 & 0xC000000000000001;
  v155 = v86;
  v158 = v85;
  do
  {
    v161 = v88;
    if (v154)
    {
      v89 = MEMORY[0x23EE63F70](v87, v85);
    }

    else
    {
      v89 = *(v85 + 8 * v87 + 32);
    }

    v90 = v89;
    v91 = *(v162 + 24);
    v92 = sub_23875BC40();
    v93 = *(*(v92 - 8) + 56);
    v93(v72 + v91, 1, 1, v92);
    v94 = v160;
    sub_238758D00();
    sub_23875AD60();
    v95 = sub_238758D10();
    if (v95 >> 62)
    {
      v143 = v95;
      v96 = sub_23875F3A0();
    }

    else
    {
      v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v72 + *(v162 + 20)) = v96;
    v97 = [v90 dropOffDate];
    if (v97)
    {
      v98 = v157;
      v99 = v97;
      sub_23875BBE0();

      v72 = v153;
      v100 = 0;
    }

    else
    {
      v100 = 1;
      v98 = v157;
    }

    v93(v98, v100, 1, v92);
    sub_2385309FC(v98, v72 + v91, &qword_27DF12E00, &unk_238763FC0);
    v101 = v162;
    sub_238757D40();
    v102 = [v90 returnIdentifier];
    v103 = sub_23875EA80();
    v105 = v104;

    v106 = (v72 + *(v101 + 32));
    *v106 = v103;
    v106[1] = v105;
    v107 = v159;
    sub_23852EDFC(v72, v159, type metadata accessor for OrderDetailsReturn.ViewModel);
    v88 = v161;
    v163 = v161;
    v109 = *(v161 + 16);
    v108 = *(v161 + 24);
    if (v109 >= v108 >> 1)
    {
      sub_2385FED04((v108 > 1), v109 + 1, 1);
      v107 = v159;
      v88 = v163;
    }

    ++v87;
    *(v88 + 16) = v109 + 1;
    sub_23852EDFC(v107, v88 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v109, type metadata accessor for OrderDetailsReturn.ViewModel);
    v85 = v158;
  }

  while (v155 != v87);

LABEL_42:
  *(v149 + v148[9]) = v88;
  v110 = sub_23875A4F0();
  v111 = *(v110 + 16);
  if (v111)
  {
    v112 = 0;
    while (v112 < *(v110 + 16))
    {
      v113 = *(v110 + 8 * v112 + 32);
      v114 = (v113 & 0x7FFFFFFFFFFFFFFFLL);
      v115 = sub_238759900();
      if (v152)
      {
        if (v115 == v151 && v116 == v152)
        {

          goto LABEL_58;
        }

        v118 = sub_23875F630();

        if (v118)
        {

LABEL_58:

          v121 = v145;
          v120 = v146;
          goto LABEL_59;
        }
      }

      else
      {
      }

      ++v112;

      if (v111 == v112)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

LABEL_54:

  v119 = sub_23875A4F0();
  v121 = v145;
  v120 = v146;
  if (*(v119 + 16))
  {
    v113 = *(v119 + 32);
    v122 = (v113 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {

    v113 = 0xF000000000000007;
  }

LABEL_59:
  v123 = v148[10];
  v124 = v160;
  v125 = v150;
  sub_23853095C(v113);
  sub_23869D098(v124, v125, v113, v149 + v123);
  sub_238757D40();
  if (v147)
  {
    v126 = 0;
  }

  else
  {
    v126 = sub_238757DB0();
  }

  v128 = v148;
  v127 = v149;
  *(v149 + v148[11]) = v126 & 1;
  *(v127 + v128[13]) = v147 & 1;
  v129 = v144;
  (*(v121 + 104))(v144, *MEMORY[0x277CC64F0], v120);
  v130 = sub_2387576A0();
  (*(v121 + 8))(v129, v120);
  if (v130)
  {
    v131 = sub_238757D60();
    v132 = sub_238757DE0();
    v133 = sub_23870E94C(v131, v132, 0);
    v135 = v134;
    sub_238530974(v113);

    v136 = v138;
    *v138 = v133;
    *(v136 + 8) = v135;
  }

  else
  {
    sub_238530974(v113);
  }
}

void *sub_2385266A4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v472 = a3;
  v9 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v473 = &v397 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  MEMORY[0x28223BE20](v11 - 8);
  v456 = (&v397 - v12);
  v469 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  v451 = *(v469 - 8);
  MEMORY[0x28223BE20](v469);
  v468 = (&v397 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v397 - v15;
  v414 = sub_23875AF00();
  v413 = *(v414 - 8);
  MEMORY[0x28223BE20](v414);
  v429 = &v397 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D640, &unk_23876D6E0);
  MEMORY[0x28223BE20](v18 - 8);
  v403 = &v397 - v19;
  v433 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v412 = *(v433 - 8);
  MEMORY[0x28223BE20](v433);
  v408 = (&v397 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B8, &unk_23876D5F0);
  MEMORY[0x28223BE20](v21 - 8);
  v431 = &v397 - v22;
  v425 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
  v435 = *(v425 - 8);
  MEMORY[0x28223BE20](v425);
  v404 = (&v397 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5C8, &unk_23876D600);
  MEMORY[0x28223BE20](v24 - 8);
  v428 = &v397 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v26 - 8);
  v409 = &v397 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v430 = &v397 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  MEMORY[0x28223BE20](v30 - 8);
  v418 = &v397 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v424 = &v397 - v33;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v406 = *(v407 - 8);
  MEMORY[0x28223BE20](v407);
  v405 = &v397 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v423 = &v397 - v36;
  v426 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  MEMORY[0x28223BE20](v426);
  v427 = &v397 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v410 = &v397 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  MEMORY[0x28223BE20](v40 - 8);
  v415 = &v397 - v41;
  v440 = sub_23875B940();
  v436 = *(v440 - 8);
  MEMORY[0x28223BE20](v440);
  v400 = &v397 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v416 = &v397 - v44;
  v439 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v442 = *(v439 - 8);
  MEMORY[0x28223BE20](v439);
  v422 = &v397 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D648, &unk_238779500);
  MEMORY[0x28223BE20](v46 - 8);
  v420 = &v397 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  MEMORY[0x28223BE20](v48 - 8);
  v421 = &v397 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v50 - 8);
  v401 = &v397 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v419 = &v397 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  MEMORY[0x28223BE20](v54 - 8);
  v411 = (&v397 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v56);
  v58 = &v397 - v57;
  v438 = sub_23875B120();
  v437 = *(v438 - 8);
  MEMORY[0x28223BE20](v438);
  v441 = &v397 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  MEMORY[0x28223BE20](v447);
  v448 = &v397 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v474 = type metadata accessor for ProductImage.ViewModel(0);
  MEMORY[0x28223BE20](v474);
  v467 = &v397 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v478 = &v397 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v64 - 8);
  v481 = &v397 - v65;
  v66 = sub_23875AF90();
  v443 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v479 = &v397 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v434 = &v397 - v69;
  MEMORY[0x28223BE20](v70);
  v462 = &v397 - v71;
  MEMORY[0x28223BE20](v72);
  v477 = &v397 - v73;
  MEMORY[0x28223BE20](v74);
  v480 = &v397 - v75;
  v476 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v461 = *(v476 - 8);
  MEMORY[0x28223BE20](v476);
  v475 = &v397 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v463 = (&v397 - v78);
  v432 = 0;
  v446 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
  v79 = *(v446 - 8);
  MEMORY[0x28223BE20](v446);
  v445 = &v397 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D580, &qword_23876D538);
  MEMORY[0x28223BE20](v81 - 8);
  v444 = &v397 - v82;
  v83 = sub_23875A4F0();
  v84 = v83;
  v85 = *(v83 + 16);
  if (!v85)
  {

    v102 = v473;
    sub_238571530(a1, a2, v473);
    sub_23852EDFC(v102, a5, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

  v458 = a1;
  v464 = a2;
  v402 = a5;
  if (!a4)
  {
    v86 = (*(v83 + 32) & 0x7FFFFFFFFFFFFFFFLL);
    v472 = sub_238759900();
    a4 = v87;
  }

  v88 = sub_23875A4F0();
  sub_23852F55C(v88);
  v90 = v89;

  v91 = 0;
  v92 = 0;
  v93 = 0;
  v483 = v90;
  while (1)
  {
    if ((*(v84 + 8 * v93 + 32) & 0x8000000000000000) != 0)
    {
      v94 = __OFADD__(v91++, 1);
      if (v94)
      {
        goto LABEL_145;
      }

      goto LABEL_6;
    }

    v94 = __OFADD__(v92++, 1);
    if (v94)
    {
      break;
    }

LABEL_6:
    if (v85 == ++v93)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v417 = v79;
  v450 = v16;
  v95 = 0;
  if (v92)
  {
    v96 = v91 == 0;
  }

  else
  {
    v96 = 1;
  }

  v97 = v96;
  v457 = v97;
  v98 = v90 + 5;
  v473 = v66;
  while (1)
  {
    if (v95 >= *(v84 + 16))
    {
      goto LABEL_146;
    }

    v466 = v95;
    v88 = (*(v84 + 8 * v95 + 32) & 0x7FFFFFFFFFFFFFFFLL);
    if (sub_238759900() == v472 && a4 == v99)
    {

      goto LABEL_29;
    }

    v101 = sub_23875F630();

    if (v101)
    {
      break;
    }

    v95 = (v466 + 1);
    v98 += 2;
    if (v85 == (v466 + 1))
    {

      (*(v417 + 56))(v444, 1, 1, v446);
      goto LABEL_110;
    }
  }

LABEL_29:
  v88 = v445;
  if (v466 >= v90[2])
  {
    goto LABEL_147;
  }

  v104 = *v98;
  v84 = (*v98 & 0x7FFFFFFFFFFFFFFFLL);
  v460 = v458;
  v399 = v464;
  v105 = sub_238759900();
  v106 = &v88[*(v446 + 24)];
  *v106 = v105;
  v106[1] = v107;
  v398 = v104;
  v108 = sub_238759910();
  v85 = v108;
  if (v108 >> 62)
  {
LABEL_148:
    v109 = sub_23875F3A0();
  }

  else
  {
    v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v459 = v58;
  if (!v109)
  {

    v111 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v482 = MEMORY[0x277D84F90];
  result = sub_2385FEB6C(0, v109 & ~(v109 >> 63), 0);
  if (v109 < 0)
  {
    __break(1u);
    return result;
  }

  v397 = v84;
  v110 = 0;
  v111 = v482;
  v453 = v85 & 0xC000000000000001;
  v112 = (v443 + 16);
  v452 = (v443 + 8);
  v449 = xmmword_2387632F0;
  v455 = v85;
  v454 = v109;
  do
  {
    v472 = v111;
    if (v453)
    {
      v113 = MEMORY[0x23EE63F70](v110, v85);
    }

    else
    {
      v113 = *(v85 + 8 * v110 + 32);
    }

    v114 = v113;
    sub_238757DA0();
    v115 = [v114 title];
    v116 = sub_2387586A0();
    v470 = v117;
    v471 = v116;

    sub_238759200();
    v118 = [v114 quantity];
    v119 = [v114 image];
    if (v119)
    {
      v120 = v119;
      v465 = sub_23875EA80();
      v122 = v121;
    }

    else
    {
      v465 = 0;
      v122 = 0;
    }

    v123 = *v112;
    v124 = v477;
    (*v112)(v477, v480, v66);
    v125 = v112;
    v126 = v476;
    v127 = *(v476 + 20);
    v128 = sub_238758090();
    v129 = v475;
    (*(*(v128 - 8) + 56))(&v475[v127], 1, 1, v128);
    v130 = v470;
    *v129 = v471;
    v129[1] = v130;
    v131 = v129 + v127;
    v66 = v473;
    sub_23853098C(v481, v131);
    v132 = *(v126 + 24);
    v112 = v125;
    *(v129 + v132) = v118;
    v133 = v462;
    v123(v462, v124, v66);
    if (v122)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
      v134 = swift_allocObject();
      *(v134 + 16) = v449;
      *(v134 + 32) = v465;
      *(v134 + 40) = v122;
    }

    else
    {
      v134 = MEMORY[0x277D84F90];
    }

    v123(v478, v133, v66);
    if (*(v134 + 16) <= 4uLL)
    {

      v139 = *v452;
      (*v452)(v133, v66);
      v139(v477, v66);
      sub_238439884(v481, &unk_27DF0B080, &unk_2387662A0);
      v139(v480, v66);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
      v135 = swift_allocObject();
      v136 = _swift_stdlib_malloc_size(v135);
      v137 = v136 - 32;
      if (v136 < 32)
      {
        v137 = v136 - 17;
      }

      v135[2] = 4;
      v135[3] = 2 * (v137 >> 4);
      swift_arrayInitWithCopy();

      v138 = *v452;
      (*v452)(v133, v66);
      v138(v477, v66);
      sub_238439884(v481, &unk_27DF0B080, &unk_2387662A0);
      v138(v480, v66);

      v134 = v135;
    }

    v85 = v455;
    v140 = v454;
    v141 = v475;
    v142 = v478;
    *&v478[*(v474 + 20)] = v134;
    sub_23852EDFC(v142, v141 + *(v476 + 28), type metadata accessor for ProductImage.ViewModel);
    v143 = v463;
    sub_23852EDFC(v141, v463, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
    v111 = v472;
    v482 = v472;
    v145 = *(v472 + 16);
    v144 = *(v472 + 24);
    v58 = v459;
    if (v145 >= v144 >> 1)
    {
      sub_2385FEB6C((v144 > 1), v145 + 1, 1);
      v143 = v463;
      v111 = v482;
    }

    ++v110;
    *(v111 + 16) = v145 + 1;
    sub_23852EDFC(v143, v111 + ((*(v461 + 80) + 32) & ~*(v461 + 80)) + *(v461 + 9) * v145, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  }

  while (v140 != v110);

  v88 = v445;
  v84 = v397;
LABEL_54:
  *&v88[*(v446 + 20)] = v111;
  v146 = v398;
  if ((v398 & 0x8000000000000000) != 0)
  {
    v164 = v460;
    v165 = v399;
    v166 = v84;
    sub_23875A7C0();
    sub_23875AC80();
    sub_23875A7B0();
    v167 = [v166 pickedUpDate];
    v481 = v164;
    if (v167)
    {
      v168 = v430;
      v169 = v167;
      sub_23875BBE0();

      v170 = 0;
    }

    else
    {
      v170 = 1;
      v168 = v430;
    }

    v231 = sub_23875BC40();
    (*(*(v231 - 8) + 56))(v168, v170, 1, v231);
    v232 = [v165 merchant];
    v233 = [v232 displayName];

    v480 = sub_2387586A0();
    v235 = v234;

    v236 = [v166 notes];
    if (v236)
    {
      v237 = v236;
      v455 = sub_2387586A0();
      v470 = v238;
    }

    else
    {
      v455 = 0;
      v470 = 0;
    }

    v239 = [v166 statusDescription];
    if (v239)
    {
      v240 = v239;
      v241 = sub_2387586A0();
      v475 = v242;
      v476 = v241;
    }

    else
    {
      v475 = 0;
      v476 = 0;
    }

    v243 = [v165 statusDescription];
    v477 = v235;
    if (v243)
    {
      v244 = v243;
      v245 = sub_2387586A0();
      v471 = v246;
      v472 = v245;
    }

    else
    {
      v471 = 0;
      v472 = 0;
    }

    v247 = [v166 displayName];
    v248 = sub_2387586A0();
    v250 = v249;

    v251 = [v166 address];
    v252 = [v166 displayName];
    v253 = sub_2387586A0();
    v255 = v254;

    v256 = [v166 address];
    v257 = [v166 location];
    v258 = sub_23858B318(v257, v256, v253, v255);
    v465 = v248;
    v463 = v250;
    v462 = v251;
    if (v258)
    {
      v259 = v258;

      v260 = v404;
      *v404 = v259;
    }

    else
    {
      v261 = v401;
      sub_23858B494(v256, v401);

      v262 = v436;
      v263 = v440;
      if ((*(v436 + 48))(v261, 1, v440) == 1)
      {
        sub_238439884(v261, &qword_27DF0D040, &qword_2387676A0);
        v264 = 1;
        v265 = v428;
        v266 = v433;
        v267 = v425;
        v268 = v435;
LABEL_95:
        v272 = *(v268 + 56);
        v435 = v268 + 56;
        v461 = v272;
        v272(v265, v264, 1, v267);
        v273 = *(v266 + 28);
        v274 = sub_23875AEB0();
        v275 = v408;
        (*(*(v274 - 8) + 56))(v408 + v273, 1, 1, v274);
        v276 = *(v266 + 32);
        v277 = sub_23875B1D0();
        (*(*(v277 - 8) + 56))(v275 + v276, 1, 1, v277);
        v278 = v481;
        v279 = v165;
        v280 = v166;
        v281 = [v280 barcode];
        v478 = v278;
        v481 = v280;
        if (v281)
        {
          v282 = v281;
          v283 = [v280 displayName];
          v284 = sub_2387586A0();
          v286 = v285;

          *v275 = v284;
          v275[1] = v286;
          v460 = v282;
          sub_238758F70();
          v287 = [v280 address];
          v288 = v287;
          if (v287)
          {
            v289 = v279;
            v290 = v287;
            v291 = sub_23875F020();

            v292 = &unk_278A55000;
            if (v291)
            {

              v288 = 0;
            }
          }

          else
          {
            v289 = v279;
            v292 = &unk_278A55000;
          }

          v295 = v433;
          *(v275 + *(v433 + 24)) = v288;
          v296 = v418;
          v297 = v481;
          sub_23875A7B0();
          sub_2385309FC(v296, v275 + v273, &qword_27DF0D5D0, &unk_238770FE0);
          v298 = v403;
          sub_23875A590();
          sub_2385309FC(v298, v275 + v276, &qword_27DF0D640, &unk_23876D6E0);
          v299 = [v289 v292[338]];
          v300 = [v299 displayName];

          v301 = sub_2387586A0();
          v303 = v302;

          v304 = (v275 + *(v295 + 36));
          *v304 = v301;
          v304[1] = v303;
          v305 = v297;
          v279 = v289;
          v306 = [v305 fulfillmentIdentifier];
          v307 = sub_23875EA80();
          v309 = v308;

          v310 = (v275 + *(v295 + 40));
          *v310 = v307;
          v310[1] = v309;
          v311 = [v289 v292[338]];
          v312 = [v311 logoName];

          v313 = v292;
          if (v312)
          {
            v314 = sub_23875EA80();
            v316 = v315;
          }

          else
          {
            v314 = 0;
            v316 = 0;
          }

          v317 = v433;
          v318 = (v275 + *(v433 + 44));
          *v318 = v314;
          v318[1] = v316;
          v319 = type metadata accessor for MerchantImage.ViewModel(0);
          v320 = v478;
          sub_238757DA0();
          v321 = [v279 v313 + 663];
          v322 = [v321 displayName];

          v323 = sub_2387586A0();
          v325 = v324;

          v294 = v317;
          v326 = (v318 + *(v319 + 24));
          *v326 = v323;
          v326[1] = v325;
          v327 = v431;
          sub_23852FA60(v275, v431, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
          v293 = *(v412 + 56);
          v293(v327, 0, 1, v317);
          sub_23852FAC8(v275, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
        }

        else
        {

          sub_238439884(v275 + v273, &qword_27DF0D5D0, &unk_238770FE0);
          sub_238439884(v275 + v276, &qword_27DF0D640, &unk_23876D6E0);
          v293 = *(v412 + 56);
          v293(v431, 1, 1, v266);
          v294 = v266;
        }

        v459 = *(sub_23875A4F0() + 16);

        v328 = v426;
        v329 = v427;
        v460 = v426[10];
        v461(v460 + v427, 1, 1, v425);
        v461 = v328[11];
        v293(v461 + v329, 1, 1, v294);
        v330 = v406;
        v331 = v423;
        v332 = v407;
        (*(v406 + 16))(v405, v423, v407);
        v333 = v279;
        v334 = v424;
        sub_23843981C(v424, v418, &qword_27DF0D5D0, &unk_238770FE0);
        v335 = v430;
        sub_23843981C(v430, v409, &qword_27DF12E00, &unk_238763FC0);
        sub_23875AEC0();

        v336 = v481;
        sub_238439884(v335, &qword_27DF12E00, &unk_238763FC0);
        sub_238439884(v334, &qword_27DF0D5D0, &unk_238770FE0);
        (*(v330 + 8))(v331, v332);
        v337 = v470;
        if (v470)
        {
          v338 = v411;
          v58 = v477;
          *v411 = v480;
          v338[1] = v58;
          v338[2] = v455;
          v338[3] = v337;
          v339 = type metadata accessor for OrderDetailsNote(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v339 - 8) + 56))(v338, 0, 1, v339);

          v340 = v414;
          v341 = v413;
        }

        else
        {
          v342 = type metadata accessor for OrderDetailsNote(0);
          v338 = v411;
          (*(*(v342 - 8) + 56))(v411, 1, 1, v342);
          v340 = v414;
          v341 = v413;
          v58 = v477;
        }

        v343 = v426;
        v344 = v427;
        v345 = &v427[v426[6]];
        v346 = &v427[v426[7]];
        v347 = v426[9];
        v348 = type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0);
        sub_2384396E4(v338, v344 + *(v348 + 20), &qword_27DF0D5F8, &unk_23876D640);
        (*(v341 + 32))(v344, v429, v340);
        v349 = v344 + *(v348 + 24);
        *v349 = 1;
        v66 = v466;
        v350 = v459;
        *(v349 + 8) = v466;
        *(v349 + 16) = v350;
        *(v349 + 24) = v457;
        v351 = (v344 + v343[5]);
        *v351 = v480;
        v351[1] = v58;
        v352 = v475;
        *v345 = v476;
        v345[1] = v352;
        v353 = v471;
        *v346 = v472;
        v346[1] = v353;
        v354 = (v344 + v343[8]);
        v355 = v463;
        *v354 = v465;
        v354[1] = v355;
        *(v344 + v347) = v462;
        sub_2385309FC(v428, v460 + v344, &qword_27DF0D5C8, &unk_23876D600);
        sub_2385309FC(v431, v461 + v344, &qword_27DF0D5B8, &unk_23876D5F0);
        v356 = v410;
        sub_23852EDFC(v344, v410, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
        v84 = v445;
        sub_23852EDFC(v356, v445, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
        v230 = v417;
        goto LABEL_109;
      }

      v269 = *(v262 + 32);
      v270 = v400;
      v269(v400, v261, v263);
      v271 = v404;
      v269(v404, v270, v263);
      v260 = v271;
    }

    v265 = v428;
    v266 = v433;
    v267 = v425;
    v268 = v435;
    swift_storeEnumTagMultiPayload();
    sub_23852EDFC(v260, v265, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
    v264 = 0;
    goto LABEL_95;
  }

  v147 = v447;
  v148 = *(v436 + 56);
  v149 = v448;
  v476 = v447[9];
  v475 = v148;
  (v148)(v448 + v476, 1, 1, v440);
  v150 = v147[13];
  v151 = *(v442 + 56);
  v442 += 56;
  v480 = v151;
  (v151)(&v150[v149], 1, 1, v439);
  v152 = v146;
  sub_23875AA30();
  sub_23875AE30();
  v153 = v460;
  v154 = v399;
  v478 = v84;
  v477 = v153;
  sub_23875B110();
  v155 = [v152 notes];
  v481 = v150;
  if (v155)
  {
    v156 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
    v157 = [v154 merchant];
    v158 = [v157 displayName];

    v159 = sub_2387586A0();
    v161 = v160;

    *v58 = v159;
    *(v58 + 1) = v161;
    *(v58 + 2) = sub_2387586A0();
    *(v58 + 3) = v162;
    sub_23875AA00();
    sub_23875ADA0();

    v163 = type metadata accessor for OrderDetailsNote(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v163 - 8) + 56))(v58, 0, 1, v163);
  }

  else
  {
    v171 = type metadata accessor for OrderDetailsNote(0);
    (*(*(v171 - 8) + 56))(v58, 1, 1, v171);
  }

  v172 = *(sub_23875A4F0() + 16);

  v173 = (v448 + v447[5]);
  (*(v437 + 16))(v173, v441, v438);
  sub_23875AA00();
  v174 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  sub_23875ADA0();
  sub_23843981C(v58, &v173[*(v174 + 24)], &qword_27DF0D5F8, &unk_23876D640);
  v175 = &v173[*(v174 + 28)];
  *v175 = 0;
  *(v175 + 1) = v466;
  *(v175 + 2) = v172;
  v175[24] = v457;
  sub_23875AA00();
  sub_23875ADA0();
  v176 = [v152 trackingNumber];
  if (v176)
  {
    v177 = v176;
    v178 = sub_23875EA80();
    v180 = v179;
  }

  else
  {
    v178 = 0;
    v180 = 0;
  }

  v181 = v419;
  v182 = (v448 + v447[7]);
  *v182 = v178;
  v182[1] = v180;
  v183 = [v152 carrier];
  if (v183)
  {
    v184 = v183;
    v185 = sub_23875EA80();
    v187 = v186;
  }

  else
  {
    v185 = 0;
    v187 = 0;
  }

  v188 = (v448 + v447[8]);
  *v188 = v185;
  v188[1] = v187;
  v58 = &unk_278A55000;
  v189 = [v152 trackingURL];
  if (v189)
  {
    v190 = v189;
    sub_23875B8B0();

    v191 = 0;
  }

  else
  {
    v191 = 1;
  }

  v192 = v476;
  (v475)(v181, v191, 1, v440);
  sub_2385309FC(v181, v448 + v192, &qword_27DF0D040, &qword_2387676A0);
  v193 = [v154 statusDescription];
  if (v193)
  {
    v194 = v193;
    v195 = sub_2387586A0();
    v197 = v196;
  }

  else
  {
    v195 = 0;
    v197 = 0;
  }

  v198 = v422;
  v199 = v477;
  v200 = (v448 + v447[10]);
  *v200 = v195;
  v200[1] = v197;
  v201 = [v152 statusDescription];
  if (v201)
  {
    v202 = v201;
    v203 = sub_2387586A0();
    v205 = v204;
  }

  else
  {
    v203 = 0;
    v205 = 0;
  }

  v206 = v447;
  v207 = v448;
  v208 = (v448 + v447[11]);
  *v208 = v203;
  v208[1] = v205;
  v209 = [v154 merchant];
  v210 = [v209 displayName];

  v211 = sub_2387586A0();
  v213 = v212;

  v214 = (v207 + v206[12]);
  *v214 = v211;
  v214[1] = v213;
  v215 = v420;
  sub_23875A500();
  v216 = v434;
  sub_238757DA0();
  v217 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  (*(*(v217 - 8) + 56))(v198, 1, 1, v217);
  v218 = [v152 trackingURL];
  if (v218)
  {
    v58 = v416;
    v219 = v218;
    sub_23875B8B0();

    MEMORY[0x28223BE20](v220);
    *(&v397 - 2) = v216;
    v221 = v415;
    v222 = v432;
    sub_23869CB64(sub_238530A64, (&v397 - 4), v415);
    v432 = v222;
    sub_2385309FC(v221, v198, &qword_27DF0D5E0, &qword_23876D620);
    v223 = v439;
    v224 = v436;
    v225 = v440;
    (*(v436 + 16))(v198 + *(v439 + 20), v58, v440);
    sub_23875AA00();
    sub_23875ADA0();

    v226 = v478;
    (*(v224 + 8))(v58, v225);
    sub_238439884(v215, &qword_27DF0D648, &unk_238779500);
    sub_238439884(v459, &qword_27DF0D5F8, &unk_23876D640);
    (*(v437 + 8))(v441, v438);
    v227 = v421;
    sub_23852FA60(v198, v421, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    (v480)(v227, 0, 1, v223);
    (*(v443 + 8))(v434, v473);
    sub_23852FAC8(v198, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
  }

  else
  {

    v228 = v478;
    sub_238439884(v215, &qword_27DF0D648, &unk_238779500);
    sub_238439884(v459, &qword_27DF0D5F8, &unk_23876D640);
    (*(v437 + 8))(v441, v438);
    (*(v443 + 8))(v216, v473);
    sub_238439884(v198, &qword_27DF0D5E0, &qword_23876D620);
    v227 = v421;
    (v480)(v421, 1, 1, v439);
  }

  v84 = v445;
  v229 = v448;
  sub_2385309FC(v227, &v481[v448], &qword_27DF0D5F0, &unk_23876D630);
  sub_23852EDFC(v229, v84, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
  v230 = v417;
  v66 = v466;
LABEL_109:
  type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
  swift_storeEnumTagMultiPayload();
  v357 = v444;
  sub_23852EDFC(v84, v444, type metadata accessor for OrderDetailsFulfillment.ViewModel);
  (*(v230 + 56))(v357, 0, 1, v446);
  sub_23852EC0C(v66);

LABEL_110:
  v85 = v483;
  v88 = v483[2];
  if (v88)
  {
    v482 = MEMORY[0x277D84F90];
    sub_2385FEBB0(0, v88, 0);
    v359 = 0;
    v360 = v482;
    v475 = (v85 + 32);
    LODWORD(v472) = *MEMORY[0x277CC7B30];
    v465 = (v443 + 8);
    v466 = (v443 + 16);
    v361 = v464;
    v470 = v88;
    v471 = v85;
    while (1)
    {
      if (v359 >= *(v85 + 16))
      {
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v476 = v359;
      v477 = v360;
      v362 = &v475[16 * v359];
      v363 = *v362;
      v364 = *(v362 + 1);
      v481 = (v364 & 0x7FFFFFFFFFFFFFFFLL);
      v365 = sub_238759900();
      v366 = v468;
      *v468 = v365;
      v366[1] = v367;
      v368 = *(sub_23875A4F0() + 16);

      *(v366 + 16) = v364 < 0;
      v366[3] = v363;
      v366[4] = v368;
      *(v366 + 40) = v457;
      v369 = v456;
      *v456 = v364;
      v370 = sub_2387598F0();
      v371 = *(v370 - 8);
      v480 = *(v371 + 104);
      v372 = v472;
      (v480)(v369, v472, v370);
      v478 = *(v371 + 56);
      (v478)(v369, 0, 1, v370);
      v373 = v361;
      v481 = v481;
      sub_238759050();
      *v369 = v364;
      (v480)(v369, v372, v370);
      (v478)(v369, 0, 1, v370);
      v84 = v458;
      v85 = v373;
      v481 = v481;
      v463 = v85;
      sub_23875B080();
      v478 = v84;
      sub_238757DA0();
      v374 = sub_238759910();
      v375 = v374;
      v376 = v374 & 0xFFFFFFFFFFFFFF8;
      if (v374 >> 62)
      {
        v66 = sub_23875F3A0();
        v377 = &unk_278A55000;
        if (v66)
        {
LABEL_115:
          v378 = 0;
          v88 = (v375 & 0xC000000000000001);
          v58 = MEMORY[0x277D84F90];
          do
          {
            v379 = v378;
            while (1)
            {
              if (v88)
              {
                v380 = MEMORY[0x23EE63F70](v379, v375);
                v378 = v379 + 1;
                if (__OFADD__(v379, 1))
                {
                  goto LABEL_142;
                }
              }

              else
              {
                if (v379 >= *(v376 + 16))
                {
                  goto LABEL_143;
                }

                v380 = *(v375 + 8 * v379 + 32);
                v378 = v379 + 1;
                if (__OFADD__(v379, 1))
                {
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
                  goto LABEL_144;
                }
              }

              v85 = v380;
              v381 = [v85 v377[211]];
              if (v381)
              {
                break;
              }

              ++v379;
              if (v378 == v66)
              {
                goto LABEL_134;
              }
            }

            v382 = v381;
            v383 = sub_23875EA80();
            v480 = v384;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_238497C2C(0, *(v58 + 2) + 1, 1, v58);
            }

            v84 = *(v58 + 2);
            v385 = *(v58 + 3);
            v85 = v84 + 1;
            if (v84 >= v385 >> 1)
            {
              v58 = sub_238497C2C((v385 > 1), v84 + 1, 1, v58);
            }

            *(v58 + 2) = v85;
            v386 = &v58[16 * v84];
            v387 = v480;
            *(v386 + 4) = v383;
            *(v386 + 5) = v387;
          }

          while (v378 != v66);
          goto LABEL_134;
        }
      }

      else
      {
        v66 = *((v374 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v377 = &unk_278A55000;
        if (v66)
        {
          goto LABEL_115;
        }
      }

      v58 = MEMORY[0x277D84F90];
LABEL_134:

      v388 = v473;
      (*v466)(v467, v479, v473);
      if (*(v58 + 2) >= 5uLL)
      {
        sub_23852EE64(v58, (v58 + 32), 0, 9uLL);
        v390 = v389;

        v58 = v390;
      }

      v361 = v464;
      v84 = v450;
      v360 = v477;
      (*v465)(v479, v388);
      v391 = v467;
      v392 = v468;
      *&v467[*(v474 + 20)] = v58;
      sub_23852EDFC(v391, v392 + *(v469 + 32), type metadata accessor for ProductImage.ViewModel);
      sub_23852EDFC(v392, v84, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);

      v482 = v360;
      v394 = *(v360 + 2);
      v393 = *(v360 + 3);
      if (v394 >= v393 >> 1)
      {
        sub_2385FEBB0((v393 > 1), v394 + 1, 1);
        v361 = v464;
        v360 = v482;
      }

      v359 = v476 + 1;
      *(v360 + 2) = v394 + 1;
      sub_23852EDFC(v84, &v360[((*(v451 + 80) + 32) & ~*(v451 + 80)) + *(v451 + 72) * v394], type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
      v88 = v470;
      v85 = v471;
      if (v359 == v470)
      {

        goto LABEL_141;
      }
    }
  }

  v360 = MEMORY[0x277D84F90];
LABEL_141:
  v395 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48);
  v396 = v402;
  sub_2384396E4(v444, v402, &qword_27DF0D580, &qword_23876D538);
  *(v396 + v395) = v360;
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385297F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v139 = a5;
  v146 = a4;
  v147 = a3;
  v134 = a6;
  v144 = sub_238759100();
  v145 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v148 = v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5A0, &qword_23876D5D0);
  MEMORY[0x28223BE20](v9 - 8);
  v131 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v130 = v117 - v12;
  MEMORY[0x28223BE20](v13);
  v132 = v117 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D530, &qword_23876D508);
  MEMORY[0x28223BE20](v15 - 8);
  v123 = v117 - v16;
  v17 = sub_2387590D0();
  v18 = *(v17 - 8);
  v156 = v17;
  v157 = v18;
  MEMORY[0x28223BE20](v17);
  v155 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v154 = v117 - v21;
  v153 = sub_23875AC40();
  v124 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v125 = v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5A8, &unk_23876D5D8);
  MEMORY[0x28223BE20](v23 - 8);
  v136 = v117 - v24;
  v138 = sub_238758DB0();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v122 = v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v121 = v117 - v27;
  v28 = sub_238757CC0();
  v151 = *(v28 - 8);
  v152 = v28;
  MEMORY[0x28223BE20](v28);
  v149 = v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_238759B60();
  v143 = *(v30 - 8);
  v31 = v143;
  MEMORY[0x28223BE20](v30);
  v150 = (v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v35 = v117 - v34;
  v36 = type metadata accessor for OrderDetails.ViewModel(0);
  MEMORY[0x28223BE20](v36);
  v38 = v117 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 + 32);
  v41 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v120 = v40;
  v119 = v41;
  v118 = v43;
  v117[1] = v42 + 56;
  (v43)(&v38[v40], 1, 1);
  v44 = &v38[v36[14]];
  *v44 = 0;
  v44[8] = 0;
  v45 = *(v31 + 16);
  v45(v35, a1, v30);
  sub_23845C998(a2, v159);
  sub_2384C7A5C(v35, v159, v38);
  v46 = a1;
  v140 = a1;
  v45(v35, a1, v30);
  sub_23845C998(a2, v159);
  v47 = v36[5];
  v48 = v146;

  sub_23852A7EC(v35, v147, v48, v159, &v38[v47]);
  v45(v35, v46, v30);
  v133 = a2;
  sub_23845C998(a2, v159);
  v141 = v36;
  v49 = v36[6];
  v142 = v38;
  v50 = &v38[v49];
  v135 = v159[4];
  __swift_project_boxed_opaque_existential_1(v159, v159[3]);
  v51 = v149;
  sub_238759B30();
  sub_238757C60();
  (*(v151 + 8))(v51, v152);
  v52 = sub_23875A360();
  v54 = v53;

  *v50 = v52;
  v50[1] = v54;
  v55 = v150;
  v128 = v31 + 16;
  v127 = v45;
  v45(v150, v35, v30);
  sub_23845C998(v159, &v158);
  v56 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  sub_2384C7A5C(v55, &v158, v50 + *(v56 + 20));
  sub_238759B40();
  v57 = *(v143 + 8);
  v129 = v35;
  v135 = v30;
  v143 += 8;
  v126 = v57;
  v57(v35, v30);
  v58 = v140;
  __swift_destroy_boxed_opaque_existential_1(v159);
  v59 = sub_238759AD0();
  v60 = *(v59 + 16);
  if (v60)
  {
    v159[0] = MEMORY[0x277D84F90];
    sub_2385FED48(0, v60, 0);
    v61 = v159[0];
    v152 = *(v157 + 16);
    v62 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v117[0] = v59;
    v63 = v59 + v62;
    v64 = *(v157 + 72);
    v150 = (v157 + 8);
    v151 = v64;
    v65 = v124;
    v149 = (v124 + 32);
    v66 = v125;
    v157 += 16;
    v67 = v155;
    do
    {
      v68 = v154;
      v69 = v156;
      v70 = v152;
      v152(v154, v63, v156);
      v70(v67, v68, v69);
      sub_23875AC50();
      (*v150)(v68, v69);
      v159[0] = v61;
      v72 = *(v61 + 16);
      v71 = *(v61 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_2385FED48((v71 > 1), v72 + 1, 1);
        v61 = v159[0];
      }

      *(v61 + 16) = v72 + 1;
      (*(v65 + 32))(v61 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v72, v66, v153);
      v63 += v151;
      --v60;
    }

    while (v60);

    v58 = v140;
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
  }

  v73 = v137;
  v74 = v141;
  v75 = v142;
  *&v142[v141[7]] = v61;
  v76 = v136;
  sub_238759A60();
  v77 = v138;
  v78 = (*(v73 + 48))(v76, 1, v138);
  v79 = v139;
  if (v78 == 1)
  {
    sub_238439884(v76, &qword_27DF0D5A8, &unk_23876D5D8);
  }

  else
  {
    v80 = v121;
    (*(v73 + 32))(v121, v76, v77);
    v81 = v122;
    (*(v73 + 16))(v122, v80, v77);
    v82 = v123;
    sub_2385542DC(v81, v79 & 1, v123);
    (*(v73 + 8))(v80, v77);
    v118(v82, 0, 1, v119);
    sub_2385309FC(v82, &v75[v120], &qword_27DF0D530, &qword_23876D508);
  }

  v83 = sub_238759B10();
  MEMORY[0x28223BE20](v83);
  v117[-2] = v58;
  sub_23851F2A0(sub_23852EDDC, &v117[-4], v83, type metadata accessor for OrderDetailsReturn.ViewModel, sub_2385FED04, MEMORY[0x277CC6E88], type metadata accessor for OrderDetailsReturn.ViewModel);
  v85 = v84;

  *&v75[v74[9]] = v85;
  result = sub_238759A80();
  v87 = result;
  v88 = *(result + 16);
  v89 = v144;
  if (v88)
  {
    v90 = 0;
    v91 = result + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v92 = (v145 + 8);
    while (v90 < *(v87 + 16))
    {
      (*(v145 + 16))(v148, v91 + *(v145 + 72) * v90, v89);
      v93 = sub_2387590E0();
      if (v146)
      {
        if (v93 == v147 && v94 == v146)
        {

          goto LABEL_26;
        }

        v95 = sub_23875F630();

        if (v95)
        {

LABEL_26:

          v106 = v145;
          v107 = *(v145 + 32);
          v108 = v130;
          v109 = v144;
          v107(v130, v148, v144);
          v110 = *(v106 + 56);
          v110(v108, 0, 1, v109);
          v102 = v132;
          v107(v132, v108, v109);
          v110(v102, 0, 1, v109);
          v105 = v133;
          v103 = v131;
          goto LABEL_27;
        }
      }

      else
      {
      }

      ++v90;
      v89 = v144;
      result = (*v92)(v148, v144);
      if (v88 == v90)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v96 = v145;
    v97 = *(v145 + 56);
    v98 = 1;
    v99 = v130;
    v97(v130, 1, 1, v89);
    v100 = v89;
    v101 = sub_238759A80();
    v102 = v132;
    if (*(v101 + 16))
    {
      (*(v96 + 16))(v132, v101 + ((*(v96 + 80) + 32) & ~*(v96 + 80)), v89);
      v98 = 0;
    }

    v103 = v131;

    v97(v102, v98, 1, v100);
    v104 = (*(v96 + 48))(v99, 1, v100);
    v105 = v133;
    if (v104 != 1)
    {
      sub_238439884(v99, &qword_27DF0D5A0, &qword_23876D5D0);
    }

LABEL_27:
    v111 = v129;
    v112 = v135;
    v127(v129, v58, v135);
    sub_23843981C(v102, v103, &qword_27DF0D5A0, &qword_23876D5D0);
    sub_23845C998(v105, v159);
    v113 = v141;
    v114 = v142;
    sub_23869D8C4(v111, v103, v159, &v142[v141[10]]);
    sub_238759A40();
    if (v79)
    {
      v115 = 0;
    }

    else
    {
      v115 = sub_238759AE0();
    }

    v116 = v134;
    __swift_destroy_boxed_opaque_existential_1(v105);
    sub_238439884(v102, &qword_27DF0D5A0, &qword_23876D5D0);
    *(v114 + v113[11]) = v115 & 1;
    *(v114 + v113[13]) = v79 & 1;
    sub_23852FA60(v114, v116, type metadata accessor for OrderDetails.ViewModel);
    v126(v58, v112);
    return sub_23852FAC8(v114, type metadata accessor for OrderDetails.ViewModel);
  }

  return result;
}

uint64_t sub_23852A7EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v489 = a4;
  v514 = a3;
  v498 = a2;
  v487 = a5;
  v6 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v532 = &v410 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v536 = sub_238758940();
  v493 = *(v536 - 8);
  MEMORY[0x28223BE20](v536);
  v535 = &v410 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v504 = type metadata accessor for ProductImage.ViewModel(0);
  MEMORY[0x28223BE20](v504);
  v503 = &v410 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B0, &qword_23876D5E8);
  MEMORY[0x28223BE20](v10 - 8);
  v502 = &v410 - v11;
  v518 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  v501 = *(v518 - 8);
  MEMORY[0x28223BE20](v518);
  v526 = &v410 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v505 = &v410 - v14;
  v447 = sub_23875AF00();
  v446 = *(v447 - 8);
  MEMORY[0x28223BE20](v447);
  v471 = &v410 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5B8, &unk_23876D5F0);
  MEMORY[0x28223BE20](v16 - 8);
  v472 = &v410 - v17;
  v424 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
  v445 = *(v424 - 8);
  MEMORY[0x28223BE20](v424);
  v420 = &v410 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = sub_238757C40();
  v437 = *(v438 - 8);
  MEMORY[0x28223BE20](v438);
  v418 = &v410 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v419 = &v410 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5C0, &unk_238771640);
  MEMORY[0x28223BE20](v22 - 8);
  v435 = &v410 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v423 = &v410 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5C8, &unk_23876D600);
  MEMORY[0x28223BE20](v26 - 8);
  v470 = &v410 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v28 - 8);
  v443 = &v410 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v459 = &v410 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  MEMORY[0x28223BE20](v32 - 8);
  v442 = &v410 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v467 = &v410 - v35;
  v36 = sub_2387592A0();
  MEMORY[0x28223BE20](v36 - 8);
  v432 = &v410 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v440 = *(v441 - 8);
  MEMORY[0x28223BE20](v441);
  v439 = &v410 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v466 = &v410 - v40;
  v431 = sub_238757AA0();
  v430 = *(v431 - 8);
  MEMORY[0x28223BE20](v431);
  v414 = &v410 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v415 = &v410 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D8, &qword_238771650);
  MEMORY[0x28223BE20](v44 - 8);
  v428 = &v410 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v429 = &v410 - v47;
  v468 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
  MEMORY[0x28223BE20](v468);
  v469 = &v410 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v444 = &v410 - v50;
  v486 = sub_238759D10();
  v465 = *(v486 - 8);
  MEMORY[0x28223BE20](v486);
  v434 = &v410 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v463 = &v410 - v53;
  MEMORY[0x28223BE20](v54);
  v464 = &v410 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  MEMORY[0x28223BE20](v56 - 8);
  v417 = &v410 - v57;
  v474 = sub_23875B940();
  v484 = *(v474 - 8);
  MEMORY[0x28223BE20](v474);
  v412 = &v410 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v416 = &v410 - v60;
  v458 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v483 = *(v458 - 8);
  MEMORY[0x28223BE20](v458);
  v436 = &v410 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = sub_23875AF90();
  v480 = *(v519 - 8);
  MEMORY[0x28223BE20](v519);
  v525 = &v410 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v452 = &v410 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E8, &qword_23876D628);
  MEMORY[0x28223BE20](v65 - 8);
  v451 = &v410 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F0, &unk_23876D630);
  MEMORY[0x28223BE20](v67 - 8);
  v422 = &v410 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v69 - 8);
  v413 = &v410 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v433 = &v410 - v72;
  MEMORY[0x28223BE20](v73);
  v427 = &v410 - v74;
  v75 = sub_2387592C0();
  MEMORY[0x28223BE20](v75 - 8);
  v449 = &v410 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v478 = sub_238757CC0();
  v477 = *(v478 - 8);
  MEMORY[0x28223BE20](v478);
  v476 = &v410 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5F8, &unk_23876D640);
  MEMORY[0x28223BE20](v78 - 8);
  v421 = (&v410 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v80);
  v453 = (&v410 - v81);
  v457 = sub_23875B120();
  v456 = *(v457 - 8);
  MEMORY[0x28223BE20](v457);
  v482 = &v410 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2387597F0();
  MEMORY[0x28223BE20](v83 - 8);
  v426 = &v410 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v496 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
  MEMORY[0x28223BE20](v496);
  v479 = &v410 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = sub_23875A400();
  v455 = *(v475 - 8);
  MEMORY[0x28223BE20](v475);
  v450 = &v410 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v425 = (&v410 - v88);
  MEMORY[0x28223BE20](v89);
  v494 = (&v410 - v90);
  MEMORY[0x28223BE20](v91);
  v454 = &v410 - v92;
  v500 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
  v481 = *(v500 - 8);
  MEMORY[0x28223BE20](v500);
  v497 = &v410 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEE8, &qword_2387674F0);
  v507 = *(v508 - 8);
  MEMORY[0x28223BE20](v508);
  v517 = (&v410 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v95);
  v473 = &v410 - v96;
  MEMORY[0x28223BE20](v97);
  v462 = &v410 - v98;
  MEMORY[0x28223BE20](v99);
  v460 = &v410 - v100;
  v101 = sub_238759B60();
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v529 = &v410 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v485 = &v410 - v105;
  MEMORY[0x28223BE20](v106);
  v108 = &v410 - v107;
  MEMORY[0x28223BE20](v109);
  v499 = &v410 - v110;
  MEMORY[0x28223BE20](v111);
  v511 = &v410 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D580, &qword_23876D538);
  MEMORY[0x28223BE20](v113 - 8);
  v488 = &v410 - v114;
  v533 = sub_238759100();
  v115 = *(v533 - 8);
  MEMORY[0x28223BE20](v533);
  v516 = &v410 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v528 = &v410 - v118;
  MEMORY[0x28223BE20](v119);
  v461 = &v410 - v120;
  MEMORY[0x28223BE20](v121);
  v495 = (&v410 - v122);
  MEMORY[0x28223BE20](v123);
  v534 = &v410 - v124;
  MEMORY[0x28223BE20](v125);
  v127 = &v410 - v126;
  MEMORY[0x28223BE20](v128);
  v130 = &v410 - v129;
  v131 = type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  MEMORY[0x28223BE20](v131);
  v133 = &v410 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_238759A80();
  if (!*(v134 + 16))
  {

    (*(v102 + 16))(v108, a1, v101);
    v164 = v489;
    sub_23845C998(v489, &v542);
    v165 = v532;
    sub_238571D5C(v108, &v542, v532);
    sub_23852EDFC(v165, v133, type metadata accessor for OrderDetailsNoFulfillments.ViewModel);
    swift_storeEnumTagMultiPayload();
    v166 = a1;
    goto LABEL_93;
  }

  v515 = *(v134 + 16);
  v509 = a1;
  v492 = v131;
  v448 = v133;
  v520 = v108;
  v490 = v102;
  v521 = v101;
  v524 = v514;
  if (!v514)
  {
    v135 = v533;
    (*(v115 + 16))(v130, v134 + ((*(v115 + 80) + 32) & ~*(v115 + 80)), v533);
    v498 = sub_2387590E0();
    v524 = v136;
    (*(v115 + 8))(v130, v135);
  }

  v137 = sub_238759A80();
  sub_23852F6F8(v137);
  v139 = v138;

  v140 = 0;
  v141 = 0;
  v513 = 0;
  v411 = v139;
  v543 = v139;
  v532 = v115 + 16;
  v523 = v115 + 88;
  v527 = *MEMORY[0x277CC7728];
  v530 = (v115 + 8);
  v491 = *MEMORY[0x277CC7720];
  v142 = v515;
LABEL_5:
  v143 = 0;
  v512 = v141;
  v144 = v141 ^ 0x7FFFFFFFFFFFFFFFLL;
  v145 = v142 - v140;
  do
  {
    if (v140 + v143 >= *(v134 + 16))
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v146 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v147 = *(v115 + 72);
    v148 = v533;
    v531 = *(v115 + 16);
    v531(v127, v134 + v146 + v147 * (v140 + v143), v533);
    v522 = *(v115 + 88);
    v149 = v522(v127, v148);
    if (v149 != v527)
    {
      if (v149 != v491)
      {
        goto LABEL_102;
      }

      if (__OFADD__(v513, 1))
      {
        goto LABEL_98;
      }

      v513 = (v513 + 1);
      v510 = (v140 + v143 + 1);
      v142 = v515;
      v506 = ~v140 + v515;
      v141 = v512 + v143;
      v151 = *v530;
      (*v530)(v127, v533);
      v140 = v510;
      if (v506 == v143)
      {
        v510 = v151;
        v152 = v512 + v143;
        goto LABEL_15;
      }

      goto LABEL_5;
    }

    if (v144 == v143)
    {
      goto LABEL_95;
    }

    v150 = *v530;
    (*v530)(v127, v533);
    ++v143;
  }

  while (v145 != v143);
  v510 = v150;
  v152 = v515 + v512 - v140;
LABEL_15:

  v153 = 0;
  if (v152)
  {
    v154 = v513 == 0;
  }

  else
  {
    v154 = 1;
  }

  v155 = v154;
  LODWORD(v506) = v155;
  v156 = v134 + v146;
  v157 = v521;
  v158 = v533;
  v159 = v498;
  while (1)
  {
    if (v153 >= *(v134 + 16))
    {
      goto LABEL_97;
    }

    v531(v534, v156, v158);
    if (sub_2387590E0() == v159 && v524 == v160)
    {
      break;
    }

    v161 = sub_23875F630();

    v510(v534, v158);
    if (v161)
    {
      goto LABEL_30;
    }

    ++v153;
    v156 += v147;
    if (v515 == v153)
    {

      (*(v481 + 56))(v488, 1, 1, v500);
      v462 = 0;
      v102 = v490;
      v162 = v157;
      v163 = v510;
      goto LABEL_69;
    }
  }

  v510(v534, v158);
LABEL_30:

  v167 = *(v490 + 16);
  v168 = v511;
  v534 = (v490 + 16);
  v524 = v167;
  v167(v511, v509, v157);
  if (v153 >= *(v411 + 16))
  {
LABEL_99:
    __break(1u);
LABEL_100:
    LODWORD(v409) = 0;
    i = 103;
    goto LABEL_101;
  }

  v169 = v411 + ((*(v507 + 80) + 32) & ~*(v507 + 80));
  v170 = *(v507 + 72);
  v515 = v153;
  v171 = v460;
  sub_23843981C(v169 + v170 * v153, v460, &qword_27DF0AEE8, &qword_2387674F0);
  v172 = *(v508 + 48);
  v173 = *(v115 + 32);
  v174 = v462;
  v173(&v462[v172], v171 + v172, v158);
  v175 = v495;
  v173(v495, &v174[v172], v158);
  sub_23845C998(v489, &v542);
  v176 = sub_2387590E0();
  v177 = v500;
  v178 = v497;
  v179 = (v497 + *(v500 + 24));
  *v179 = v176;
  v179[1] = v180;
  v181 = sub_2387590F0();
  v514 = &v410;
  MEMORY[0x28223BE20](v181);
  i = v168;
  v409 = &v542;
  sub_23851F2A0(sub_23852FA40, (&v410 - 4), v181, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, sub_2385FEB6C, MEMORY[0x277CC70F0], type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
  v183 = v182;
  v462 = 0;

  *(v178 + *(v177 + 20)) = v183;
  v184 = v461;
  v531(v461, v175, v158);
  v185 = v522(v184, v158);
  if (v185 != v527)
  {
    if (v185 == v491)
    {
      (*(v115 + 96))(v184, v158);
      v208 = v465;
      v209 = v464;
      v210 = v486;
      (*(v465 + 32))(v464, v184, v486);
      v211 = v485;
      v524(v485, v511, v157);
      v212 = *(v208 + 16);
      v213 = v463;
      v498 = v208 + 16;
      v496 = v212;
      v212(v463, v209, v210);
      sub_23845C998(&v542, v539);
      __swift_project_boxed_opaque_existential_1(v539, v540);
      sub_238759C80();
      v513 = sub_23875A360();
      v512 = v214;

      v215 = v429;
      sub_238759CE0();
      v216 = v428;
      sub_23843981C(v215, v428, &qword_27DF0D5D8, &qword_238771650);
      v217 = v430;
      v218 = v431;
      if ((*(v430 + 48))(v216, 1, v431) == 1)
      {
        sub_238439884(v215, &qword_27DF0D5D8, &qword_238771650);
        v514 = 0;
      }

      else
      {
        v219 = v415;
        (*(v217 + 32))(v415, v216, v218);
        sub_238449184(0, &qword_27DF0D608, 0x277CBDB60);
        (*(v217 + 16))(v414, v219, v218);
        v514 = sub_23875F0F0();
        (*(v217 + 8))(v219, v218);
        sub_238439884(v215, &qword_27DF0D5D8, &qword_238771650);
      }

      v524(v520, v211, v157);
      sub_238759CD0();
      sub_23875AC70();
      sub_238759C90();
      sub_238759C70();
      __swift_project_boxed_opaque_existential_1(v539, v540);
      v220 = v476;
      sub_238759B30();
      sub_238757C60();
      (*(v477 + 8))(v220, v478);
      v494 = sub_23875A360();
      v222 = v221;

      v475 = sub_238759CC0();
      v476 = v223;
      v224 = sub_238759CA0();
      v226 = v225;
      sub_23845C998(v539, &v537);
      if (v226)
      {
        __swift_project_boxed_opaque_existential_1(&v537, v538);
        v482 = sub_23875A360();
        v479 = v227;
      }

      else
      {
        v482 = v224;
        v479 = 0;
      }

      v286 = v423;
      v483 = v222;
      __swift_destroy_boxed_opaque_existential_1(&v537);
      v287 = sub_238759AA0();
      v289 = v288;
      sub_23845C998(v539, &v537);
      if (v289)
      {
        __swift_project_boxed_opaque_existential_1(&v537, v538);
        v478 = sub_23875A360();
        v477 = v290;
      }

      else
      {
        v478 = v287;
        v477 = 0;
      }

      v291 = v484;
      v292 = v424;
      __swift_destroy_boxed_opaque_existential_1(&v537);
      v499 = v514;
      sub_238759D00();
      v293 = v435;
      sub_23843981C(v286, v435, &qword_27DF0D5C0, &unk_238771640);
      v294 = v437;
      v295 = v438;
      if ((*(v437 + 48))(v293, 1, v438) == 1)
      {
        sub_238439884(v286, &qword_27DF0D5C0, &unk_238771640);
        v296 = 0;
      }

      else
      {
        v297 = v286;
        v298 = v419;
        (*(v294 + 32))(v419, v293, v295);
        sub_238449184(0, &qword_27DF0A960, 0x277CE41F8);
        (*(v294 + 16))(v418, v298, v295);
        v296 = sub_23875EF60();
        (*(v294 + 8))(v298, v295);
        sub_238439884(v297, &qword_27DF0D5C0, &unk_238771640);
      }

      v299 = v514;
      v300 = sub_23858B318(v296, v514, v513, v512);
      if (v300)
      {
        v301 = v300;

        v302 = v420;
        *v420 = v301;
      }

      else
      {
        v303 = v413;
        sub_23858B494(v299, v413);

        v304 = v474;
        if ((*(v291 + 48))(v303, 1, v474) == 1)
        {
          sub_238439884(v303, &qword_27DF0D040, &qword_2387676A0);
          v305 = 1;
          v306 = v520;
          v307 = v470;
          v308 = v496;
LABEL_64:
          v311 = *(v445 + 56);
          (v311)(v307, v305, 1, v292);
          (v524)(v306);
          v312 = v434;
          v308(v434, v213, v486);
          sub_23845C998(v539, &v537);
          sub_23858638C(v306, v312, &v537, v472);
          v496 = *(sub_238759A80() + 16);

          v313 = v468;
          v314 = v469;
          v534 = &v469[v468[10]];
          v311();
          v315 = &v314[v313[11]];
          v316 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
          v317 = *(*(v316 - 8) + 56);
          v498 = v315;
          v317(v315, 1, 1, v316);
          v318 = v440;
          v319 = v466;
          v320 = v441;
          (*(v440 + 16))(v439, v466, v441);
          v321 = v467;
          sub_23843981C(v467, v442, &qword_27DF0D5D0, &unk_238770FE0);
          v322 = v459;
          sub_23843981C(v459, v443, &qword_27DF12E00, &unk_238763FC0);
          sub_23875AEC0();

          sub_238439884(v322, &qword_27DF12E00, &unk_238763FC0);
          sub_238439884(v321, &qword_27DF0D5D0, &unk_238770FE0);
          (*(v318 + 8))(v319, v320);
          v323 = *(v465 + 8);
          v324 = v486;
          v323(v463, v486);
          v524 = *(v490 + 8);
          (v524)(v485, v521);
          v323(v464, v324);
          v510(v495, v533);
          v325 = v476;
          if (v476)
          {
            v326 = v421;
            v327 = v494;
            v328 = v483;
            *v421 = v494;
            v326[1] = v328;
            v326[2] = v475;
            v326[3] = v325;
            v329 = type metadata accessor for OrderDetailsNote(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v329 - 8) + 56))(v326, 0, 1, v329);
          }

          else
          {
            v330 = type metadata accessor for OrderDetailsNote(0);
            v326 = v421;
            (*(*(v330 - 8) + 56))(v421, 1, 1, v330);
            v327 = v494;
            v328 = v483;
          }

          v331 = v468;
          v332 = v469;
          v333 = &v469[v468[6]];
          v334 = &v469[v468[7]];
          v335 = v468[9];
          v336 = type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0);
          sub_2384396E4(v326, v332 + *(v336 + 20), &qword_27DF0D5F8, &unk_23876D640);
          (*(v446 + 32))(v332, v471, v447);
          v337 = v332 + *(v336 + 24);
          *v337 = 1;
          v338 = v515;
          v339 = v496;
          *(v337 + 8) = v515;
          *(v337 + 16) = v339;
          *(v337 + 24) = v506;
          v340 = (v332 + v331[5]);
          *v340 = v327;
          v340[1] = v328;
          v341 = v479;
          *v333 = v482;
          *(v333 + 1) = v341;
          v342 = v477;
          *v334 = v478;
          v334[1] = v342;
          v343 = (v332 + v331[8]);
          v344 = v512;
          *v343 = v513;
          v343[1] = v344;
          *(v332 + v335) = v514;
          sub_2385309FC(v470, v534, &qword_27DF0D5C8, &unk_23876D600);
          v271 = v338;
          sub_2385309FC(v472, v498, &qword_27DF0D5B8, &unk_23876D5F0);
          v345 = v444;
          sub_23852EDFC(v332, v444, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
          v346 = v345;
          v284 = v497;
          sub_23852EDFC(v346, v497, type metadata accessor for OrderDetailsPickupFulfillment.ViewModel);
          __swift_destroy_boxed_opaque_existential_1(v539);
          v162 = v521;
          v158 = v533;
          v163 = v510;
          v285 = v524;
          goto LABEL_68;
        }

        v309 = *(v291 + 32);
        v310 = v412;
        v309(v412, v303, v304);
        v302 = v420;
        v309(v420, v310, v304);
      }

      v306 = v520;
      v308 = v496;
      swift_storeEnumTagMultiPayload();
      v307 = v470;
      sub_23852EDFC(v302, v470, type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel);
      v305 = 0;
      goto LABEL_64;
    }

    v539[0] = 0;
    v539[1] = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000001ALL, 0x8000000238789CD0);
    sub_23875F510();
    LODWORD(v409) = 0;
    for (i = 157; ; i = 470)
    {
LABEL_101:
      sub_23875F520();
      __break(1u);
LABEL_102:
      LODWORD(v409) = 0;
    }
  }

  (*(v115 + 96))(v184, v158);
  v186 = v455;
  v187 = v454;
  v188 = v475;
  (*(v455 + 32))(v454, v184, v475);
  v189 = v499;
  v190 = v524;
  v524(v499, v511, v157);
  v191 = v186 + 16;
  v192 = *(v186 + 16);
  v193 = v494;
  v192(v494, v187, v188);
  sub_23845C998(&v542, v539);
  v194 = v496;
  v195 = *(v484 + 56);
  v196 = v479;
  v512 = *(v496 + 36);
  v195(&v479[v512], 1, 1, v474);
  v197 = v483[7];
  v514 = *(v194 + 52);
  v483 += 7;
  v513 = v197;
  (v197)(&v196[v514], 1, 1, v458);
  sub_23875A3D0();
  sub_23875AE20();
  v190(v520, v189, v157);
  v534 = v191;
  v524 = v192;
  v192(v425, v193, v188);
  sub_23875B0E0();
  v198 = sub_23875A3C0();
  if (v199)
  {
    v486 = v198;
    v498 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
    __swift_project_boxed_opaque_existential_1(v539, v540);
    v200 = v476;
    sub_238759B30();
    sub_238757C60();
    (*(v477 + 8))(v200, v478);
    v201 = sub_23875A360();
    v203 = v202;
    v204 = v479;

    v205 = v453;
    *v453 = v201;
    v205[1] = v203;
    v205[2] = sub_23875A360();
    v205[3] = v206;
    sub_23875A390();
    sub_23875AD90();
    v207 = type metadata accessor for OrderDetailsNote(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v207 - 8) + 56))(v205, 0, 1, v207);
  }

  else
  {
    v228 = type metadata accessor for OrderDetailsNote(0);
    v205 = v453;
    (*(*(v228 - 8) + 56))(v453, 1, 1, v228);
    v204 = v196;
  }

  v229 = v496;
  v230 = &v204[*(v496 + 28)];
  v231 = &v204[*(v496 + 32)];
  v498 = *(sub_238759A80() + 16);

  v232 = &v204[*(v229 + 20)];
  (*(v456 + 16))(v232, v482, v457);
  sub_23875A390();
  v233 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
  sub_23875AD90();
  sub_23843981C(v205, &v232[*(v233 + 24)], &qword_27DF0D5F8, &unk_23876D640);
  v234 = &v232[*(v233 + 28)];
  *v234 = 0;
  v235 = v498;
  *(v234 + 1) = v515;
  *(v234 + 2) = v235;
  v234[24] = v506;
  sub_23875A390();
  sub_23875AD90();
  *v230 = sub_23875A3A0();
  v230[1] = v236;
  *v231 = sub_23875A3E0();
  v231[1] = v237;
  v238 = v427;
  sub_23875A380();
  sub_2385309FC(v238, &v204[v512], &qword_27DF0D040, &qword_2387676A0);
  sub_238759AA0();
  v240 = v239;
  sub_23845C998(v539, &v537);
  if (v240)
  {
    __swift_project_boxed_opaque_existential_1(&v537, v538);
    v241 = sub_23875A360();
    v243 = v242;
  }

  else
  {
    v241 = 0;
    v243 = 0;
  }

  v162 = v521;
  v163 = v510;
  v244 = &v204[*(v496 + 40)];
  __swift_destroy_boxed_opaque_existential_1(&v537);
  *v244 = v241;
  v244[1] = v243;
  sub_23875A3B0();
  v246 = v245;
  sub_23845C998(v539, &v537);
  if (v246)
  {
    __swift_project_boxed_opaque_existential_1(&v537, v538);
    v247 = sub_23875A360();
    v249 = v248;
  }

  else
  {
    v247 = 0;
    v249 = 0;
  }

  v250 = v496;
  v251 = &v204[*(v496 + 44)];
  __swift_destroy_boxed_opaque_existential_1(&v537);
  *v251 = v247;
  v251[1] = v249;
  v512 = v541;
  __swift_project_boxed_opaque_existential_1(v539, v540);
  v252 = v476;
  sub_238759B30();
  sub_238757C60();
  (*(v477 + 8))(v252, v478);
  v253 = sub_23875A360();
  v255 = v254;

  v256 = &v204[*(v250 + 48)];
  *v256 = v253;
  v256[1] = v255;
  v257 = v450;
  v258 = v475;
  v524(v450, v494, v475);
  v259 = v451;
  sub_238759A90();
  v260 = v452;
  sub_238759AB0();
  v261 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v262 = v436;
  (*(*(v261 - 8) + 56))(v436, 1, 1, v261);
  v263 = v433;
  sub_23875A380();
  v264 = v484;
  v265 = v474;
  if ((*(v484 + 48))(v263, 1, v474) == 1)
  {
    sub_238439884(v259, &qword_27DF0D5E8, &qword_23876D628);
    v266 = v263;
    v267 = v262;
    v268 = *(v455 + 8);
    v268(v257, v258);
    sub_238439884(v453, &qword_27DF0D5F8, &unk_23876D640);
    (*(v456 + 8))(v482, v457);
    v268(v454, v258);
    v269 = v268;
    v158 = v533;
    v163(v495, v533);
    sub_238439884(v266, &qword_27DF0D040, &qword_2387676A0);
    (*(v480 + 8))(v260, v519);
    sub_238439884(v267, &qword_27DF0D5E0, &qword_23876D620);
    v270 = v422;
    v513(v422, 1, 1, v458);
    v271 = v515;
    v272 = v258;
    v273 = v479;
  }

  else
  {
    v274 = v416;
    v275 = (*(v264 + 32))(v416, v263, v265);
    MEMORY[0x28223BE20](v275);
    i = v260;
    v276 = v417;
    v277 = v462;
    sub_23869CDDC(sub_23852FB28, (&v410 - 4), v417);
    v462 = v277;
    sub_2385309FC(v276, v262, &qword_27DF0D5E0, &qword_23876D620);
    v278 = v458;
    (*(v264 + 16))(v262 + *(v458 + 20), v274, v265);
    v279 = v450;
    sub_23875A390();
    sub_23875AD90();
    v273 = v479;
    (*(v264 + 8))(v274, v265);
    sub_238439884(v451, &qword_27DF0D5E8, &qword_23876D628);
    v280 = *(v455 + 8);
    v281 = v475;
    v280(v279, v475);
    sub_238439884(v453, &qword_27DF0D5F8, &unk_23876D640);
    (*(v456 + 8))(v482, v457);
    v280(v454, v281);
    v158 = v533;
    v163(v495, v533);
    v270 = v422;
    sub_23852FA60(v262, v422, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v513(v270, 0, 1, v278);
    (*(v480 + 8))(v452, v519);
    v282 = v262;
    v269 = v280;
    sub_23852FAC8(v282, type metadata accessor for OrderDetailsShippingTracking.ViewModel);
    v271 = v515;
    v272 = v281;
  }

  sub_2385309FC(v270, v273 + v514, &qword_27DF0D5F0, &unk_23876D630);
  v283 = v497;
  sub_23852FA60(v273, v497, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(v539);
  v269(v494, v272);
  v284 = v283;
  v285 = *(v490 + 8);
  v285(v499, v162);
  sub_23852FAC8(v273, type metadata accessor for OrderDetailsShippingFulfillment.ViewModel);
LABEL_68:
  type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
  swift_storeEnumTagMultiPayload();
  v347 = v488;
  sub_23852EDFC(v284, v488, type metadata accessor for OrderDetailsFulfillment.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(&v542);
  v285(v511, v162);
  (*(v481 + 56))(v347, 0, 1, v500);
  v348 = v473;
  sub_23852EC98(v271, v473);
  v163((v348 + *(v508 + 48)), v158);
  v102 = v490;
LABEL_69:
  v349 = v543;
  v350 = *(v543 + 16);
  v166 = v509;
  if (v350)
  {
    v542 = MEMORY[0x277D84F90];
    sub_2385FEBB0(0, v350, 0);
    v351 = 0;
    v352 = v542;
    v498 = v349 + ((*(v507 + 80) + 32) & ~*(v507 + 80));
    v524 = (v102 + 16);
    v534 = (v493 + 16);
    LODWORD(v497) = *MEMORY[0x277CC7C10];
    v353 = v102;
    v354 = (v493 + 8);
    v496 = v480 + 16;
    v495 = (v480 + 8);
    v494 = (v353 + 8);
    v500 = v349;
    v499 = v350;
    do
    {
      if (v351 >= *(v349 + 16))
      {
        goto LABEL_96;
      }

      v515 = v352;
      v355 = *(v507 + 72);
      v514 = v351;
      v356 = v517;
      sub_23843981C(v498 + v355 * v351, v517, &qword_27DF0AEE8, &qword_2387674F0);
      v357 = v158;
      v358 = *v356;
      v359 = *(v508 + 48);
      v360 = v162;
      v361 = v162;
      v362 = *v524;
      (*v524)(v529, v166, v361);
      v363 = v356 + v359;
      v364 = v528;
      v365 = v531;
      v531(v528, v363, v357);
      v366 = sub_2387590E0();
      v367 = v526;
      *v526 = v366;
      *(v367 + 1) = v368;
      v369 = v516;
      v365(v516, v364, v357);
      v370 = v357;
      v371 = v522(v369, v357);
      if (v371 != v527 && v371 != v491)
      {
        goto LABEL_100;
      }

      v372 = v371 != v527;
      v163(v516, v357);
      v373 = v529;
      v374 = *(sub_238759A80() + 16);

      v375 = v526;
      v526[16] = v372;
      *(v375 + 3) = v358;
      *(v375 + 4) = v374;
      v375[40] = v506;
      v376 = v520;
      v513 = v362;
      (v362)(v520, v373, v360);
      v377 = v502;
      v531(v502, v528, v370);
      v378 = sub_238759A50();
      v379 = *(v378 - 8);
      v512 = *(v379 + 104);
      v380 = v497;
      (v512)(v377, v497, v378);
      v511 = *(v379 + 56);
      (v511)(v377, 0, 1, v378);
      sub_238759040();
      (v513)(v376, v529, v521);
      v531(v377, v528, v533);
      (v512)(v377, v380, v378);
      (v511)(v377, 0, 1, v378);
      sub_23875B060();
      sub_238759AB0();
      v381 = sub_2387590F0();
      v382 = *(v381 + 2);
      if (v382)
      {
        v383 = (*(v493 + 80) + 32) & ~*(v493 + 80);
        v513 = v381;
        v384 = &v381[v383];
        v385 = *(v493 + 72);
        v386 = *(v493 + 16);
        v387 = MEMORY[0x277D84F90];
        do
        {
          v390 = v535;
          v389 = v536;
          v386(v535, v384, v536);
          v391 = sub_238758900();
          v393 = v392;
          (*v354)(v390, v389);
          if (v393)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v387 = sub_238497C2C(0, *(v387 + 2) + 1, 1, v387);
            }

            v395 = *(v387 + 2);
            v394 = *(v387 + 3);
            if (v395 >= v394 >> 1)
            {
              v387 = sub_238497C2C((v394 > 1), v395 + 1, 1, v387);
            }

            *(v387 + 2) = v395 + 1;
            v388 = &v387[16 * v395];
            *(v388 + 4) = v391;
            *(v388 + 5) = v393;
          }

          v384 += v385;
          --v382;
        }

        while (v382);
      }

      else
      {

        v387 = MEMORY[0x277D84F90];
      }

      v166 = v509;
      v396 = v503;
      (*v496)(v503, v525, v519);
      v397 = v505;
      v162 = v521;
      v158 = v533;
      v163 = v510;
      if (*(v387 + 2) >= 5uLL)
      {
        sub_23852EE64(v387, (v387 + 32), 0, 9uLL);
        v399 = v398;

        v387 = v399;
      }

      (*v495)(v525, v519);
      v163(v528, v158);
      (*v494)(v529, v162);
      *(v396 + *(v504 + 20)) = v387;
      v400 = v526;
      sub_23852EDFC(v396, &v526[*(v518 + 32)], type metadata accessor for ProductImage.ViewModel);
      sub_23852EDFC(v400, v397, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
      sub_238439884(v517, &qword_27DF0AEE8, &qword_2387674F0);
      v352 = v515;
      v542 = v515;
      v402 = *(v515 + 16);
      v401 = *(v515 + 24);
      if (v402 >= v401 >> 1)
      {
        sub_2385FEBB0((v401 > 1), v402 + 1, 1);
        v397 = v505;
        v352 = v542;
      }

      v403 = (v514 + 1);
      *(v352 + 16) = v402 + 1;
      v404 = v397;
      v351 = v403;
      sub_23852EDFC(v404, v352 + ((*(v501 + 80) + 32) & ~*(v501 + 80)) + *(v501 + 72) * v402, type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel);
      v349 = v500;
    }

    while (v351 != v499);
    v101 = v162;
    v102 = v490;
    v405 = v352;
  }

  else
  {
    v101 = v162;
    v405 = MEMORY[0x277D84F90];
  }

  v406 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48);
  v133 = v448;
  sub_2384396E4(v488, v448, &qword_27DF0D580, &qword_23876D538);
  *&v133[v406] = v405;
  swift_storeEnumTagMultiPayload();

  v164 = v489;
LABEL_93:
  sub_23852EDFC(v133, v487, type metadata accessor for OrderDetails.FulfillmentsViewModel);
  __swift_destroy_boxed_opaque_existential_1(v164);
  return (*(v102 + 8))(v166, v101);
}

uint64_t sub_23852E8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v27 - v7;
  v8 = sub_2387592B0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_238758300();
  v28 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_238759B60();
  v13 = *(v29 - 8);
  v14 = MEMORY[0x28223BE20](v29);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v14);
  (*(v10 + 16))(v12, a1, v9);
  v17 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v18 = v17[6];
  v19 = sub_23875BC40();
  (*(*(v19 - 8) + 56))(a3 + v18, 1, 1, v19);
  sub_2387582D0();
  sub_23875AD50();
  v20 = *(sub_2387582F0() + 16);

  *(a3 + v17[5]) = v20;
  v21 = v30;
  sub_2387582E0();
  sub_2385309FC(v21, a3 + v18, &qword_27DF12E00, &unk_238763FC0);
  sub_238759A40();
  v22 = sub_2387582C0();
  v24 = v23;
  (*(v10 + 8))(v12, v28);
  result = (*(v13 + 8))(v16, v29);
  v26 = (a3 + v17[8]);
  *v26 = v22;
  v26[1] = v24;
  return result;
}

uint64_t sub_23852EC0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23852F0DC(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23852EC98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23852F104(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEE8, &qword_2387674F0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2384396E4(v11, a2, &qword_27DF0AEE8, &qword_2387674F0);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23852EDFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_23852EE64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_23852EF3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF28, &unk_238767540);
      v7 = *(type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_23852F140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9A0, &unk_23876DB30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1E8, &qword_238765288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9A8, &qword_23876DB40);
  MEMORY[0x28223BE20](v35);
  v10 = &v35 - v9;
  sub_23843981C(a1, v8, &qword_27DF0A1E8, &qword_238765288);
  (*(v3 + 32))(v5, v8, v2);
  sub_23843A3E8(&qword_27DF0D9B0, &qword_27DF0D9A0, &unk_23876DB30, MEMORY[0x277CDD8C8]);
  sub_23875EC20();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9B8, &qword_23876DB48) + 36);
  sub_23843A3E8(&qword_27DF0D9C0, &qword_27DF0D9A0, &unk_23876DB30, MEMORY[0x277CDD8D8]);
  sub_23875EF00();
  v12 = MEMORY[0x277D84F90];
  if (*&v10[v11] != v39[0])
  {
    v15 = 0;
    v13 = 0;
    v37 = v2;
    v38 = MEMORY[0x277D84F90];
    v16 = (MEMORY[0x277D84F90] + 32);
    v36 = v11;
    while (1)
    {
      v17 = sub_23875EF20();
      v19 = *v18;
      v17(v39, 0);
      sub_23875EF10();
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (!v13)
      {
        v20 = v38[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9C8, &qword_23876DB50);
        v23 = swift_allocObject();
        v24 = _swift_stdlib_malloc_size(v23);
        v25 = v24 - 32;
        if (v24 < 32)
        {
          v25 = v24 - 17;
        }

        v26 = v25 >> 4;
        v23[2] = v22;
        v23[3] = 2 * (v25 >> 4);
        v27 = v38;
        v28 = (v23 + 4);
        v29 = v38[3] >> 1;
        if (v38[2])
        {
          v30 = v38 + 4;
          if (v23 != v38 || v28 >= v30 + 16 * v29)
          {
            memmove(v23 + 4, v30, 16 * v29);
          }

          v27[2] = 0;
        }

        v16 = (v28 + 16 * v29);
        v13 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v38 = v23;
        v11 = v36;
      }

      v31 = __OFSUB__(v13--, 1);
      if (v31)
      {
        goto LABEL_26;
      }

      *v16 = v15;
      v16[1] = v19;
      v16 += 2;
      sub_23875EF00();
      ++v15;
      if (*&v10[v11] == v39[0])
      {
        v12 = v38;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = 0;
  v14 = 0;
LABEL_21:
  *&v10[*(v35 + 36)] = v14;
  sub_238439884(v10, &qword_27DF0D9A8, &qword_23876DB40);
  v32 = v12[3];
  if (v32 >= 2)
  {
    v33 = v32 >> 1;
    v31 = __OFSUB__(v33, v13);
    v34 = v33 - v13;
    if (!v31)
    {
      v12[2] = v34;
      return;
    }

LABEL_28:
    __break(1u);
  }
}

void sub_23852F55C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {
        v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

      v10 = *(v2 + 3);
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF80, &qword_2387675A0);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v15 = v14 - 32;
      if (v14 < 32)
      {
        v15 = v14 - 17;
      }

      v16 = v15 >> 4;
      *(v13 + 2) = v12;
      *(v13 + 3) = 2 * (v15 >> 4);
      v17 = v13 + 32;
      v18 = *(v2 + 3) >> 1;
      v5 = &v13[16 * v18 + 32];
      v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
      if (!*(v2 + 2))
      {
        v22 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
        goto LABEL_22;
      }

      v20 = v2 + 32;
      if (v13 < v2 || v17 >= &v20[16 * v18])
      {
        v21 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      }

      else
      {
        v21 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
        if (v13 == v2)
        {
          goto LABEL_21;
        }
      }

      memmove(v17, v20, 16 * v18);
LABEL_21:
      v23 = v21;
      *(v2 + 2) = 0;
LABEL_22:

      v2 = v13;
      v9 = __OFSUB__(v19, 1);
      v4 = v19 - 1;
      if (v9)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

LABEL_23:
      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v24 = *(v2 + 3);
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v9 = __OFSUB__(v25, v4);
    v26 = v25 - v4;
    if (v9)
    {
      goto LABEL_32;
    }

    *(v2 + 2) = v26;
  }
}

void sub_23852F6F8(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEE8, &qword_2387674F0);
  MEMORY[0x28223BE20](v47);
  v46 = (v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = v39 - v5;
  v7 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v45)
  {
    v8 = v4;
    v9 = *(v4 + 80);
    v39[1] = v9;
    v40 = (v9 + 32) & ~v9;
    v10 = MEMORY[0x277D84F90] + v40;
    v11 = 0;
    v12 = 0;
    v44 = sub_238759100();
    v13 = *(v44 - 8);
    v14 = *(v13 + 16);
    v42 = v13 + 16;
    v43 = v14;
    v15 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v41 = *(v13 + 72);
    v16 = v7;
    v39[0] = v8;
    while (1)
    {
      v19 = v46;
      v20 = *(v47 + 48);
      *v46 = v11;
      v43(v19 + v20, v15, v44);
      sub_2384396E4(v19, v6, &qword_27DF0AEE8, &qword_2387674F0);
      if (v12)
      {
        v7 = v16;
        v17 = v8;
        v18 = __OFSUB__(v12--, 1);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = v16[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v22 = v6;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEE0, &qword_2387674E8);
        v25 = *(v8 + 72);
        v26 = v40;
        v7 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v7);
        if (!v25)
        {
          goto LABEL_34;
        }

        v28 = v27 - v26;
        if (v27 - v26 == 0x8000000000000000 && v25 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v25;
        v7[2] = v24;
        v7[3] = 2 * (v28 / v25);
        v31 = v7 + v26;
        v32 = v16[3] >> 1;
        v33 = v32 * v25;
        if (v16[2])
        {
          if (v7 < v16 || v31 >= v16 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v7 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v16[2] = 0;
        }

        v10 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v17 = v39[0];
        v6 = v22;
        v18 = __OFSUB__(v35, 1);
        v12 = v35 - 1;
        if (v18)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      sub_2384396E4(v6, v10, &qword_27DF0AEE8, &qword_2387674F0);
      v8 = v17;
      v10 += *(v17 + 72);
      v15 += v41;
      v16 = v7;
      if (v45 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v36 = v7[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v18 = __OFSUB__(v37, v12);
    v38 = v37 - v12;
    if (v18)
    {
      goto LABEL_36;
    }

    v7[2] = v38;
  }
}

uint64_t sub_23852FA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23852FAC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23852FB48(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D680, &qword_23876D760);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v41 = &v36 - v10;
  v11 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v12 = 0;
    v3 = 0;
    v37 = *(v40 + 80);
    v2 = MEMORY[0x277D84F90];
    v38 = (v37 + 32) & ~v37;
    v13 = MEMORY[0x277D84F90] + v38;
    v39 = *(a2 + 16);
    v36 = v8;
    while (v39 != v12)
    {
      v14 = *(type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0) - 8);
      v15 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12;
      v16 = *(v6 + 48);
      *v8 = a1;
      sub_23852FA60(v15, v8 + v16, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
      sub_2384396E4(v8, v41, &qword_27DF0D680, &qword_23876D760);
      if (v3)
      {
        v17 = v2;
        v18 = __OFSUB__(v3--, 1);
        if (v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = v2[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v20 = a2;
        v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D688, &unk_23876D768);
        v23 = *(v40 + 72);
        v24 = v38;
        v17 = swift_allocObject();
        v25 = _swift_stdlib_malloc_size(v17);
        if (!v23)
        {
          goto LABEL_34;
        }

        v26 = v25 - v24;
        if (v25 - v24 == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_35;
        }

        v28 = v26 / v23;
        v17[2] = v22;
        v17[3] = 2 * (v26 / v23);
        v29 = v17 + v24;
        v30 = v2[3] >> 1;
        v31 = v30 * v23;
        if (v2[2])
        {
          if (v17 < v2 || v29 >= v2 + v38 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 != v2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v2[2] = 0;
        }

        v13 = &v29[v31];
        v32 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

        a2 = v20;
        v8 = v36;
        v18 = __OFSUB__(v32, 1);
        v3 = v32 - 1;
        if (v18)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      a1 = v11;
      sub_2384396E4(v41, v13, &qword_27DF0D680, &qword_23876D760);
      v13 += *(v40 + 72);
      ++v12;
      v2 = v17;
      v18 = __OFADD__(v11++, 1);
      if (v18)
      {
        goto LABEL_27;
      }
    }
  }

  v33 = v2[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v18 = __OFSUB__(v34, v3);
    v35 = v34 - v3;
    if (v18)
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      v2[2] = v35;
    }
  }
}

void sub_23852FEA8(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D620, &qword_23877F2E0);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - v10;
  v11 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v12 = 0;
    v3 = 0;
    v39 = *(v42 + 80);
    v2 = MEMORY[0x277D84F90];
    v40 = (v39 + 32) & ~v39;
    v13 = MEMORY[0x277D84F90] + v40;
    v41 = *(a2 + 16);
    v38 = v8;
    while (v41 != v12)
    {
      v14 = sub_23875B040();
      v15 = *(v14 - 8);
      v16 = *(v15 + 16);
      v17 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12;
      v18 = *(v6 + 48);
      *v8 = a1;
      v16(v8 + v18, v17, v14);
      sub_2384396E4(v8, v43, &qword_27DF0D620, &qword_23877F2E0);
      if (v3)
      {
        v19 = v2;
        v20 = __OFSUB__(v3--, 1);
        if (v20)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v21 = v2[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v22 = a2;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D628, &unk_23876D6C0);
        v25 = *(v42 + 72);
        v26 = v40;
        v19 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v19);
        if (!v25)
        {
          goto LABEL_34;
        }

        v28 = v27 - v26;
        if (v27 - v26 == 0x8000000000000000 && v25 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v25;
        v19[2] = v24;
        v19[3] = 2 * (v28 / v25);
        v31 = v19 + v26;
        v32 = v2[3] >> 1;
        v33 = v32 * v25;
        if (v2[2])
        {
          if (v19 < v2 || v31 >= v2 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 != v2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v2[2] = 0;
        }

        v13 = &v31[v33];
        v34 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        a2 = v22;
        v8 = v38;
        v20 = __OFSUB__(v34, 1);
        v3 = v34 - 1;
        if (v20)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      a1 = v11;
      sub_2384396E4(v43, v13, &qword_27DF0D620, &qword_23877F2E0);
      v13 += *(v42 + 72);
      ++v12;
      v2 = v19;
      v20 = __OFADD__(v11++, 1);
      if (v20)
      {
        goto LABEL_27;
      }
    }
  }

  v35 = v2[3];
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v20 = __OFSUB__(v36, v3);
    v37 = v36 - v3;
    if (v20)
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      v2[2] = v37;
    }
  }
}

void sub_2385301E0(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D630, &qword_23877F380);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - v10;
  v11 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v12 = 0;
    v3 = 0;
    v39 = *(v42 + 80);
    v2 = MEMORY[0x277D84F90];
    v40 = (v39 + 32) & ~v39;
    v13 = MEMORY[0x277D84F90] + v40;
    v41 = *(a2 + 16);
    v38 = v8;
    while (v41 != v12)
    {
      v14 = sub_23875B240();
      v15 = *(v14 - 8);
      v16 = *(v15 + 16);
      v17 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12;
      v18 = *(v6 + 48);
      *v8 = a1;
      v16(v8 + v18, v17, v14);
      sub_2384396E4(v8, v43, &qword_27DF0D630, &qword_23877F380);
      if (v3)
      {
        v19 = v2;
        v20 = __OFSUB__(v3--, 1);
        if (v20)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v21 = v2[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v22 = a2;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D638, &unk_23876D6D0);
        v25 = *(v42 + 72);
        v26 = v40;
        v19 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v19);
        if (!v25)
        {
          goto LABEL_34;
        }

        v28 = v27 - v26;
        if (v27 - v26 == 0x8000000000000000 && v25 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v25;
        v19[2] = v24;
        v19[3] = 2 * (v28 / v25);
        v31 = v19 + v26;
        v32 = v2[3] >> 1;
        v33 = v32 * v25;
        if (v2[2])
        {
          if (v19 < v2 || v31 >= v2 + v40 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 != v2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v2[2] = 0;
        }

        v13 = &v31[v33];
        v34 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        a2 = v22;
        v8 = v38;
        v20 = __OFSUB__(v34, 1);
        v3 = v34 - 1;
        if (v20)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      a1 = v11;
      sub_2384396E4(v43, v13, &qword_27DF0D630, &qword_23877F380);
      v13 += *(v42 + 72);
      ++v12;
      v2 = v19;
      v20 = __OFADD__(v11++, 1);
      if (v20)
      {
        goto LABEL_27;
      }
    }
  }

  v35 = v2[3];
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v20 = __OFSUB__(v36, v3);
    v37 = v36 - v3;
    if (v20)
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      v2[2] = v37;
    }
  }
}

void sub_238530518(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EE63EA0](a1, a2, v7);
      sub_23875AAA0();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_23875AAA0();
    if (sub_23875F380() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23875F390();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_23875F1A0();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_23875F1B0();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void sub_238530718(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EE63EA0](a1, a2, v7);
      sub_238449184(0, &qword_27DF0CA38, 0x277D37FE0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_238449184(0, &qword_27DF0CA38, 0x277D37FE0);
    if (sub_23875F380() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23875F390();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_23875F1A0();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_23875F1B0();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_23853095C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_238530974(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_23853098C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385309FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_238530AAC(uint64_t a1)
{
  type metadata accessor for OrderDetails.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384C6178(319, &qword_27DF0D660, &type metadata for HeaderIconVisibility, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_238530BB4(319);
      if (v3 <= 0x3F)
      {
        sub_238530C18(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238530BB4(uint64_t a1)
{
  if (!qword_27DF0D668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D670, &qword_23876D708);
    v1 = sub_23875C470();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF0D668);
    }
  }
}

void sub_238530C18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_238530CA0()
{
  result = qword_27DF0D6C0;
  if (!qword_27DF0D6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D6A0, &qword_23876D788);
    sub_238530D58();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D6C0);
  }

  return result;
}

unint64_t sub_238530D58()
{
  result = qword_27DF0D6C8;
  if (!qword_27DF0D6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D698, &qword_23876D780);
    sub_23843A3E8(&qword_27DF0D6D0, &qword_27DF0D690, &qword_23876D778, MEMORY[0x277CDD6E0]);
    sub_238530E40(&qword_27DF0D6D8, type metadata accessor for OrderDetailsRefreshableModifier, &unk_23876B620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D6C8);
  }

  return result;
}

uint64_t sub_238530E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238530E98()
{
  result = qword_27DF0D700;
  if (!qword_27DF0D700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D6F8, &qword_23876D7B8);
    sub_23843A3E8(&qword_27DF0D708, &qword_27DF0D710, &unk_23876D7C0, MEMORY[0x277CE1198]);
    sub_23843A3E8(&qword_27DF0C818, &qword_27DF0C820, &qword_238784360, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D700);
  }

  return result;
}

double sub_238530F7C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = v0;
  v106 = type metadata accessor for OrderDetails_iOS(0);
  v109 = *(*(v106 - 8) + 80);
  v107 = *(*(v106 - 8) + 64);
  v108 = (v109 + 16) & ~v109;
  v2 = v0 + v108;

  v3 = type metadata accessor for MerchantImage.ViewModel(0);
  v4 = *(v3 + 20);
  v5 = sub_23875AF90();
  v112 = *(*(v5 - 8) + 8);
  v112(v0 + v108 + v4, v5);

  v6 = type metadata accessor for OrderDetails.ViewModel(0);
  v7 = v0 + v108 + v6[5];
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v111 = v0 + v108;
  v105 = v5;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v102 = v6;
      type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = sub_23875AF00();
        (*(*(v9 - 8) + 8))(v7, v9);
        v10 = v7 + *(type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0) + 20);
        v11 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 2)
          {

            v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
            v28 = sub_23875AD80();
            (*(*(v28 - 8) + 8))(v10 + v27, v28);
          }

          else if (EnumCaseMultiPayload <= 1)
          {
          }
        }

        v29 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);

        v30 = v29[10];
        v31 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
        if (!(*(*(v31 - 8) + 48))(v7 + v30, 1, v31))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v32 = sub_23875B940();
            (*(*(v32 - 8) + 8))(v7 + v30, v32);
          }

          else
          {
          }
        }

        v33 = v7 + v29[11];
        v34 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
        if (!(*(*(v34 - 1) + 48))(v33, 1, v34))
        {

          v35 = v34[5];
          v36 = sub_23875B290();
          (*(*(v36 - 8) + 8))(v33 + v35, v36);

          v37 = v34[7];
          v38 = sub_23875AEB0();
          v39 = *(v38 - 8);
          if (!(*(v39 + 48))(v33 + v37, 1, v38))
          {
            (*(v39 + 8))(v33 + v37, v38);
          }

          v40 = v34[8];
          v41 = sub_23875B1D0();
          v42 = *(v41 - 8);
          if (!(*(v42 + 48))(v33 + v40, 1, v41))
          {
            (*(v42 + 8))(v33 + v40, v41);
          }

          v43 = v33 + v34[11];

          v112(v43 + *(v3 + 20), v105);
        }
      }

      else
      {
        v14 = sub_23875AE10();
        (*(*(v14 - 8) + 8))(v7, v14);
        v15 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
        v16 = v7 + v15[5];
        v17 = sub_23875B120();
        (*(*(v17 - 8) + 8))(v16, v17);
        v18 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
        v19 = *(v18 + 20);
        v20 = sub_23875AD80();
        v21 = (*(v20 - 8) + 8);
        v22 = v16 + v19;
        v23 = *v21;
        (*v21)(v22, v20);
        v24 = v16 + *(v18 + 24);
        v25 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
        {
          v26 = swift_getEnumCaseMultiPayload();
          if (v26 == 2)
          {

            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
            v23(v24 + *(v44 + 64), v20);
          }

          else if (v26 <= 1)
          {
          }
        }

        v100 = v23;
        v101 = v20;
        v23(v7 + v15[6], v20);

        v45 = v15[9];
        v46 = sub_23875B940();
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(v7 + v45, 1, v46))
        {
          (*(v47 + 8))(v7 + v45, v46);
        }

        v48 = v7 + v15[13];
        v49 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
        if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
        {
          v50 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
          if ((*(*(v50 - 8) + 48))(v48, 1, v50))
          {
            (*(v47 + 8))(v48 + *(v49 + 20), v46);
          }

          else
          {

            v51 = *(v47 + 8);
            v51(v48 + *(v50 + 24), v46);
            v112(v48 + *(v50 + 28), v105);
            v2 = v111;
            v51(v48 + *(v49 + 20), v46);
          }

          v100(v48 + *(v49 + 24), v101);
        }
      }

      v6 = v102;
      v5 = v105;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
    (*(*(v13 - 8) + 8))(v7, v13);
    type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  }

  v52 = v2 + v6[6];

  v53 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v54 = v52 + *(v53 + 20);

  v112(v54 + *(v3 + 20), v5);

  v55 = *(v53 + 24);
  v56 = sub_23875BC40();
  v57 = *(v56 - 8);
  v104 = *(v57 + 8);
  v104(v52 + v55, v56);

  v58 = v2 + v6[8];
  v59 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v110 = v1;
  if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    v103 = v6;
    v60 = sub_23875B940();
    v61 = *(v60 - 8);
    v62 = *(v61 + 8);
    v62(v58, v60);

    v63 = *(v59 + 24);
    if (!(*(v61 + 48))(v58 + v63, 1, v60))
    {
      v62(v58 + v63, v60);
    }

    v64 = *(v59 + 28);
    v2 = v111;
    v6 = v103;
    if (!(*(v57 + 48))(v58 + v64, 1, v56))
    {
      v104(v58 + v64, v56);
    }
  }

  v65 = v6;
  v66 = v2 + v6[10];

  v67 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v68 = v67[5];
  v69 = sub_238758090();
  v70 = *(v69 - 8);
  if (!(*(v70 + 48))(v66 + v68, 1, v69))
  {
    (*(v70 + 8))(v66 + v68, v69);
  }

  v71 = v66 + v67[7];
  v72 = type metadata accessor for OrderPaymentDestination(0);
  if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
  {
    v104(v71, v56);
    v73 = type metadata accessor for OrderPaymentViewModel(0);
    v112(v71 + v73[5], v105);

    (*(v70 + 8))(v71 + v73[9], v69);
    v74 = v73[10];
    v75 = sub_238758D30();
    v76 = *(v75 - 8);
    if (!(*(v76 + 48))(v71 + v74, 1, v75))
    {
      (*(v76 + 8))(v71 + v74, v75);
    }

    v77 = v73[13];
    v78 = sub_23875B290();
    v79 = *(v78 - 8);
    if (!(*(v79 + 48))(v71 + v77, 1, v78))
    {
      (*(v79 + 8))(v71 + v77, v78);
    }

    v80 = *(v72 + 20);
    v81 = sub_23875A710();
    (*(*(v81 - 8) + 8))(v71 + v80, v81);
  }

  v82 = v66 + v67[8];
  v83 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
  {

    v84 = *(v83 + 20);
    v85 = sub_23875AD80();
    (*(*(v85 - 8) + 8))(v82 + v84, v85);
  }

  v86 = v66 + v67[9];

  v87 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v88 = v87[5];
  v89 = sub_23875B940();
  v90 = *(v89 - 8);
  v91 = *(v90 + 8);
  v91(v86 + v88, v89);
  v91(v86 + v87[6], v89);

  v92 = v87[8];
  v93 = *(v90 + 48);
  if (!v93(v86 + v92, 1, v89))
  {
    v91(v86 + v92, v89);
  }

  v94 = v87[9];
  if (!v93(v86 + v94, 1, v89))
  {
    v91(v86 + v94, v89);
  }

  v95 = v65[12];
  v96 = sub_23875A710();
  (*(*(v96 - 8) + 8))(v111 + v95, v96);

  sub_238530F7C(*(v111 + *(v106 + 24)), *(v111 + *(v106 + 24) + 8), *(v111 + *(v106 + 24) + 16));
  v97 = *(v106 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v98 = sub_23875C880();
    (*(*(v98 - 8) + 8))(v111 + v97, v98);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v110, v108 + v107, v109 | 7);
}

unint64_t sub_23853218C()
{
  result = qword_27DF0D820;
  if (!qword_27DF0D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D828, &qword_23876D918);
    sub_238530E40(&qword_27DF0D830, type metadata accessor for OrderDetailsReturn, &unk_23877CC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D820);
  }

  return result;
}

uint64_t sub_238532254(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2385322D0()
{
  result = qword_27DF0D850;
  if (!qword_27DF0D850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D858, &qword_23876D928);
    sub_238532388();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D850);
  }

  return result;
}

unint64_t sub_238532388()
{
  result = qword_27DF0D860;
  if (!qword_27DF0D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D868, &qword_23876D930);
    sub_238532440();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D860);
  }

  return result;
}

unint64_t sub_238532440()
{
  result = qword_27DF0D870;
  if (!qword_27DF0D870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D878, &qword_23876D938);
    sub_23843A3E8(&qword_27DF0D880, &qword_27DF0D888, &unk_23876D940, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D870);
  }

  return result;
}

unint64_t sub_23853250C()
{
  result = qword_27DF0D8D0;
  if (!qword_27DF0D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D8C8, &qword_23876D968);
    sub_2385325C4();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D8D0);
  }

  return result;
}

unint64_t sub_2385325C4()
{
  result = qword_27DF0D8D8;
  if (!qword_27DF0D8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D8E0, &qword_23876D970);
    sub_23853267C();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D8D8);
  }

  return result;
}

unint64_t sub_23853267C()
{
  result = qword_27DF0D8E8;
  if (!qword_27DF0D8E8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D8F0, &qword_23876D978);
    sub_238532714(v1, v2, v3);
    sub_238532768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D8E8);
  }

  return result;
}

unint64_t sub_238532714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0D8F8;
  if (!qword_27DF0D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D8F8);
  }

  return result;
}

unint64_t sub_238532768()
{
  result = qword_27DF0D900;
  if (!qword_27DF0D900)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D908, &unk_23876D980);
    sub_238532820(v1, v2, v3);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D900);
  }

  return result;
}

unint64_t sub_238532820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0D910;
  if (!qword_27DF0D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D910);
  }

  return result;
}

double sub_238532874(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2385328A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF0D940;
  if (!qword_27DF0D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D940);
  }

  return result;
}

uint64_t sub_238532920(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OrderDetails_iOS(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_39Tm()
{
  v1 = v0;
  v106 = type metadata accessor for OrderDetails_iOS(0);
  v109 = *(*(v106 - 8) + 80);
  v107 = *(*(v106 - 8) + 64);
  v108 = (v109 + 16) & ~v109;
  v2 = v0 + v108;

  v3 = type metadata accessor for MerchantImage.ViewModel(0);
  v4 = *(v3 + 20);
  v5 = sub_23875AF90();
  v112 = *(*(v5 - 8) + 8);
  v112(v0 + v108 + v4, v5);

  v6 = type metadata accessor for OrderDetails.ViewModel(0);
  v7 = v0 + v108 + v6[5];
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v111 = v0 + v108;
  v105 = v5;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v102 = v6;
      type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = sub_23875AF00();
        (*(*(v9 - 8) + 8))(v7, v9);
        v10 = v7 + *(type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0) + 20);
        v11 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 2)
          {

            v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
            v28 = sub_23875AD80();
            (*(*(v28 - 8) + 8))(v10 + v27, v28);
          }

          else if (EnumCaseMultiPayload <= 1)
          {
          }
        }

        v29 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);

        v30 = v29[10];
        v31 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
        if (!(*(*(v31 - 8) + 48))(v7 + v30, 1, v31))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v32 = sub_23875B940();
            (*(*(v32 - 8) + 8))(v7 + v30, v32);
          }

          else
          {
          }
        }

        v33 = v7 + v29[11];
        v34 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
        if (!(*(*(v34 - 1) + 48))(v33, 1, v34))
        {

          v35 = v34[5];
          v36 = sub_23875B290();
          (*(*(v36 - 8) + 8))(v33 + v35, v36);

          v37 = v34[7];
          v38 = sub_23875AEB0();
          v39 = *(v38 - 8);
          if (!(*(v39 + 48))(v33 + v37, 1, v38))
          {
            (*(v39 + 8))(v33 + v37, v38);
          }

          v40 = v34[8];
          v41 = sub_23875B1D0();
          v42 = *(v41 - 8);
          if (!(*(v42 + 48))(v33 + v40, 1, v41))
          {
            (*(v42 + 8))(v33 + v40, v41);
          }

          v43 = v33 + v34[11];

          v112(v43 + *(v3 + 20), v105);
        }
      }

      else
      {
        v14 = sub_23875AE10();
        (*(*(v14 - 8) + 8))(v7, v14);
        v15 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
        v16 = v7 + v15[5];
        v17 = sub_23875B120();
        (*(*(v17 - 8) + 8))(v16, v17);
        v18 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
        v19 = *(v18 + 20);
        v20 = sub_23875AD80();
        v21 = (*(v20 - 8) + 8);
        v22 = v16 + v19;
        v23 = *v21;
        (*v21)(v22, v20);
        v24 = v16 + *(v18 + 24);
        v25 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
        {
          v26 = swift_getEnumCaseMultiPayload();
          if (v26 == 2)
          {

            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
            v23(v24 + *(v44 + 64), v20);
          }

          else if (v26 <= 1)
          {
          }
        }

        v100 = v23;
        v101 = v20;
        v23(v7 + v15[6], v20);

        v45 = v15[9];
        v46 = sub_23875B940();
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(v7 + v45, 1, v46))
        {
          (*(v47 + 8))(v7 + v45, v46);
        }

        v48 = v7 + v15[13];
        v49 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
        if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
        {
          v50 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
          if ((*(*(v50 - 8) + 48))(v48, 1, v50))
          {
            (*(v47 + 8))(v48 + *(v49 + 20), v46);
          }

          else
          {

            v51 = *(v47 + 8);
            v51(v48 + *(v50 + 24), v46);
            v112(v48 + *(v50 + 28), v105);
            v2 = v111;
            v51(v48 + *(v49 + 20), v46);
          }

          v100(v48 + *(v49 + 24), v101);
        }
      }

      v6 = v102;
      v5 = v105;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
    (*(*(v13 - 8) + 8))(v7, v13);
    type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
  }

  v52 = v2 + v6[6];

  v53 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v54 = v52 + *(v53 + 20);

  v112(v54 + *(v3 + 20), v5);

  v55 = *(v53 + 24);
  v56 = sub_23875BC40();
  v57 = *(v56 - 8);
  v104 = *(v57 + 8);
  v104(v52 + v55, v56);

  v58 = v2 + v6[8];
  v59 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v110 = v1;
  if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    v103 = v6;
    v60 = sub_23875B940();
    v61 = *(v60 - 8);
    v62 = *(v61 + 8);
    v62(v58, v60);

    v63 = *(v59 + 24);
    if (!(*(v61 + 48))(v58 + v63, 1, v60))
    {
      v62(v58 + v63, v60);
    }

    v64 = *(v59 + 28);
    v2 = v111;
    v6 = v103;
    if (!(*(v57 + 48))(v58 + v64, 1, v56))
    {
      v104(v58 + v64, v56);
    }
  }

  v65 = v6;
  v66 = v2 + v6[10];

  v67 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v68 = v67[5];
  v69 = sub_238758090();
  v70 = *(v69 - 8);
  if (!(*(v70 + 48))(v66 + v68, 1, v69))
  {
    (*(v70 + 8))(v66 + v68, v69);
  }

  v71 = v66 + v67[7];
  v72 = type metadata accessor for OrderPaymentDestination(0);
  if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
  {
    v104(v71, v56);
    v73 = type metadata accessor for OrderPaymentViewModel(0);
    v112(v71 + v73[5], v105);

    (*(v70 + 8))(v71 + v73[9], v69);
    v74 = v73[10];
    v75 = sub_238758D30();
    v76 = *(v75 - 8);
    if (!(*(v76 + 48))(v71 + v74, 1, v75))
    {
      (*(v76 + 8))(v71 + v74, v75);
    }

    v77 = v73[13];
    v78 = sub_23875B290();
    v79 = *(v78 - 8);
    if (!(*(v79 + 48))(v71 + v77, 1, v78))
    {
      (*(v79 + 8))(v71 + v77, v78);
    }

    v80 = *(v72 + 20);
    v81 = sub_23875A710();
    (*(*(v81 - 8) + 8))(v71 + v80, v81);
  }

  v82 = v66 + v67[8];
  v83 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
  {

    v84 = *(v83 + 20);
    v85 = sub_23875AD80();
    (*(*(v85 - 8) + 8))(v82 + v84, v85);
  }

  v86 = v66 + v67[9];

  v87 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v88 = v87[5];
  v89 = sub_23875B940();
  v90 = *(v89 - 8);
  v91 = *(v90 + 8);
  v91(v86 + v88, v89);
  v91(v86 + v87[6], v89);

  v92 = v87[8];
  v93 = *(v90 + 48);
  if (!v93(v86 + v92, 1, v89))
  {
    v91(v86 + v92, v89);
  }

  v94 = v87[9];
  if (!v93(v86 + v94, 1, v89))
  {
    v91(v86 + v94, v89);
  }

  v95 = v65[12];
  v96 = sub_23875A710();
  (*(*(v96 - 8) + 8))(v111 + v95, v96);

  sub_238530F7C(*(v111 + *(v106 + 24)), *(v111 + *(v106 + 24) + 8), *(v111 + *(v106 + 24) + 16));
  v97 = *(v106 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v98 = sub_23875C880();
    (*(*(v98 - 8) + 8))(v111 + v97, v98);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v110, ((v107 + v108 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v109 | 7);
}

uint64_t sub_238533B84(uint64_t (*a1)(unint64_t, __n128, __n128, __n128, __n128))
{
  v2 = *(type metadata accessor for OrderDetails_iOS(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5.n128_u64[0] = *v4;
  v6.n128_u64[0] = v4[1];
  v7.n128_u64[0] = v4[2];
  v8.n128_u64[0] = v4[3];

  return a1(v1 + v3, v5, v6, v7, v8);
}

uint64_t sub_238533C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OrderDetails_iOS(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_238533CD8(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v66 = a2;
  v2 = sub_2387591B0();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_238758090();
  v5 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238758B40();
  v70 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = sub_238758B60();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875B7C0();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_23875BD20();
  MEMORY[0x28223BE20](v18 - 8);
  sub_23875BCC0();
  sub_23875B7B0();
  v19 = objc_allocWithZone(sub_238759550());
  v20 = sub_238759540();
  (*(v14 + 16))(v16, v65, v13);
  v21 = (*(v14 + 88))(v16, v13);
  if (v21 == *MEMORY[0x277CC7250])
  {
    (*(v14 + 96))(v16, v13);
    v22 = v70;
    (*(v70 + 32))(v12, v16, v8);
    sub_238758B30();
    sub_238758B20();
    v23 = sub_238759530();
    (*(v68 + 1))(v4, v69);
    (*(v5 + 8))(v7, v67);
    v24 = v8;
    v25 = v22;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v26 = qword_2814F1B90;
    v27 = sub_23875EA50();
    v28 = sub_23875EA50();
    v29 = sub_23875EA50();
    v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

    sub_23875EA80();
    sub_23875EAB0();

    (*(v25 + 8))(v12, v24);
    return v23;
  }

  v65 = v5;
  v63 = v20;
  v31 = v70;
  v32 = v8;
  if (v21 == *MEMORY[0x277CC7248])
  {
    (*(v14 + 96))(v16, v13);
    (*(v31 + 32))(v12, v16, v8);
    sub_238758B30();
    sub_238758B20();
    v33 = v63;
    v23 = sub_238759520();
    (*(v68 + 1))(v4, v69);
    (*(v65 + 8))(v7, v67);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v34 = qword_2814F1B90;
    v35 = sub_23875EA50();
    v36 = sub_23875EA50();
    v37 = sub_23875EA50();
    v38 = [v34 localizedStringForKey:v35 value:v36 table:v37];

    sub_23875EA80();
    sub_23875EAB0();

    (*(v31 + 8))(v12, v32);
    return v23;
  }

  if (v21 == *MEMORY[0x277CC7240])
  {
    (*(v14 + 96))(v16, v13);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9D0, &qword_23876DB58) + 48);
    v40 = *(v31 + 32);
    v40(v12, v16, v32);
    v60 = v32;
    v40(v64, &v16[v39], v32);
    sub_238758B30();
    sub_238758B20();
    v41 = sub_238759520();
    v61 = v42;
    v62 = v41;
    v43 = v69;
    v59 = *(v68 + 1);
    v59(v4, v69);
    v65 = *(v65 + 8);
    v44 = v67;
    (v65)(v7, v67);
    sub_238758B30();
    v68 = v12;
    sub_238758B20();
    v45 = sub_238759530();
    v47 = v46;
    v59(v4, v43);
    (v65)(v7, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_2387632F0;
    *(v48 + 56) = MEMORY[0x277D837D0];
    *(v48 + 64) = sub_238448C58(v48, v49, v50);
    *(v48 + 32) = v45;
    *(v48 + 40) = v47;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v51 = qword_2814F1B90;
    v52 = sub_23875EA50();
    v53 = sub_23875EA50();
    v54 = sub_23875EA50();
    v55 = [v51 localizedStringForKey:v52 value:v53 table:v54];

    sub_23875EA80();
    sub_23875EAA0();

    sub_23875EAB0();

    v56 = *(v70 + 8);
    v57 = v60;
    v56(v64, v60);
    v56(v68, v57);
    return v62;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23853471C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v42 = a1;
  v2 = sub_2387591B0();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238758090();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238758B60();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238758B40();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = sub_23875B7C0();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_23875BD20();
  MEMORY[0x28223BE20](v19 - 8);
  sub_23875BCC0();
  sub_23875B7B0();
  v20 = objc_allocWithZone(sub_238759550());
  v21 = sub_238759540();
  (*(v9 + 16))(v11, v42, v8);
  v22 = (*(v9 + 88))(v11, v8);
  if (v22 == *MEMORY[0x277CC7250])
  {
    (*(v9 + 96))(v11, v8);
    (*(v13 + 32))(v17, v11, v12);
LABEL_9:
    sub_238758B30();
    sub_238758B20();
    (*(v13 + 8))(v17, v12);
    v25 = sub_238759530();
    (*(v46 + 8))(v4, v47);
    (*(v43 + 8))(v7, v44);
    v33 = v21;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v34 = qword_2814F1B90;
    v35 = sub_23875EA50();
    v36 = sub_23875EA50();
    v37 = sub_23875EA50();
    v38 = [v34 localizedStringForKey:v35 value:v36 table:v37];

    sub_23875EA80();
    sub_23875EAB0();

    return v25;
  }

  if (v22 == *MEMORY[0x277CC7248])
  {
    (*(v9 + 96))(v11, v8);
    v23 = *(v13 + 32);
    v24 = v41;
    v42 = v12;
    v23(v41, v11, v12);
    sub_238758B30();
    sub_238758B20();
    v25 = sub_238759520();
    (*(v46 + 8))(v4, v47);
    (*(v43 + 8))(v7, v44);
    v26 = v21;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v27 = qword_2814F1B90;
    v28 = sub_23875EA50();
    v29 = sub_23875EA50();
    v30 = sub_23875EA50();
    v31 = [v27 localizedStringForKey:v28 value:v29 table:v30];

    sub_23875EA80();
    sub_23875EAB0();

    (*(v13 + 8))(v24, v42);
    return v25;
  }

  if (v22 == *MEMORY[0x277CC7240])
  {
    (*(v9 + 96))(v11, v8);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9D0, &qword_23876DB58) + 48);
    (*(v13 + 32))(v17, v11, v12);
    (*(v13 + 8))(&v11[v32], v12);
    goto LABEL_9;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_238534EDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_238534F24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_238534F9C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v22 = v1[6];
  v23 = v1[5];
  v8 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  v9 = v8[8];
  *(a1 + v9) = swift_getKeyPath(byte_23876DC18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v10 = v8[9];
  *(a1 + v10) = swift_getKeyPath("h\n{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v11 = v8[10];
  *(a1 + v11) = swift_getKeyPath("8\n{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v12 = v8[11];
  *(a1 + v12) = swift_getKeyPath("\b\n{E");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  v13 = a1 + v8[12];

  sub_23875E1A0();
  *v13 = v25;
  *(v13 + 1) = *(&v25 + 1);
  v14 = a1 + v8[13];
  sub_23875E1A0();
  *v14 = v25;
  *(v14 + 1) = *(&v25 + 1);
  v15 = v8[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9D8, &qword_23876DCF8);
  sub_23875E1A0();
  *(a1 + v15) = v25;
  sub_23875A4C0();
  v16 = sub_23875A4B0();
  sub_23845CA1C();
  v17 = sub_23875EC60();
  [v16 setSortDescriptors_];

  v18 = MEMORY[0x23EE5EF80](v5, v4, v7, v6);
  [v16 setPredicate_];

  sub_23875E500();
  sub_23875C4F0();
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v23;
  a1[5] = v22;
  KeyPath = swift_getKeyPath(byte_23876DD00);
  v24 = v2[4];
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9E0, &qword_23876DD30) + 36));
  *v20 = KeyPath;
  v20[1] = v24;

  return v24;
}

uint64_t sub_238535280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  sub_23843981C(v1 + *(v10 + 40), v9, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C450();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_238535488@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  sub_23843981C(v1 + *(v10 + 44), v9, &qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C8A0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for ExtractedOrderSuggestionsPreviewContent(uint64_t a1)
{
  result = qword_27DF0D9F8;
  if (!qword_27DF0D9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2385356E0@<X0>(void *a1@<X8>)
{
  v64 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA30, &qword_23876DDD0);
  MEMORY[0x28223BE20](v63);
  v60 = &v59 - v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA38, &qword_23876DDD8);
  MEMORY[0x28223BE20](v62);
  v61 = (&v59 - v3);
  v4 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA40, &unk_23876DDE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9E8, &qword_23876DD38);
  v66 = v1;
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0DA48, &qword_27DF0DA40, &unk_23876DDE0, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  if (v75 == v99)
  {
    v10 = v65;
    (*(v7 + 8))(v9, v6);
    v11 = v66;
    v12 = (v66 + *(v4 + 52));
    v13 = *v12;
    v14 = *(v12 + 1);
    LOBYTE(v99) = v13;
    *(&v99 + 1) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1B0();
    if (v75 == 1)
    {
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v15 = qword_2814F1B90;
      v16 = sub_23875EA50();
      v17 = sub_23875EA50();
      v18 = sub_23875EA50();
      v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

      v20 = sub_23875EA80();
      v22 = v21;

      *&v99 = v20;
      *(&v99 + 1) = v22;
      sub_2384397A8(v23, v24, v25);
      v26 = sub_23875DAA0();
      v28 = v27;
      *&v99 = v26;
      *(&v99 + 1) = v27;
      v30 = v29 & 1;
      LOBYTE(v100) = v29 & 1;
      *(&v100 + 1) = v31;
      sub_23853B2E8(&v99);
      v73 = v105;
      v74[0] = v106[0];
      *(v74 + 9) = *(v106 + 9);
      v69 = v101;
      v70 = v102;
      v71 = v103;
      v72 = v104;
      v67 = v99;
      v68 = v100;
      sub_23843980C(v26, v28, v30);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA60, &qword_23876DDF8);
      sub_23853AF38();
      sub_23875D1B0();
      v32 = v82[0];
      v33 = v61;
      v61[6] = v81;
      v33[7] = v32;
      *(v33 + 121) = *(v82 + 9);
      v34 = v78;
      v33[2] = v77;
      v33[3] = v34;
      v35 = v80;
      v33[4] = v79;
      v33[5] = v35;
      v36 = v76;
      *v33 = v75;
      v33[1] = v36;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA98, &qword_23876DE10);
      sub_23853B0A8();
      sub_23853B134();
      sub_23875D1B0();
      sub_2384397FC(v26, v28, v30);
    }

    else
    {
      v55 = v60;
      sub_23875C530();
      sub_23853B690(v11, &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      v56 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v57 = swift_allocObject();
      sub_23853AE34(&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v57 + v56);
      v58 = &v55[*(v63 + 36)];
      sub_23875C6E0();
      sub_23875ED60();
      *v58 = &unk_23876DE20;
      *(v58 + 1) = v57;
      sub_23843981C(v55, v61, &qword_27DF0DA30, &qword_23876DDD0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA98, &qword_23876DE10);
      sub_23853B0A8();
      sub_23853B134();
      sub_23875D1B0();
      return sub_238439884(v55, &qword_27DF0DA30, &qword_23876DDD0);
    }
  }

  else
  {
    v38 = sub_23875EF20();
    v40 = *v39;
    v38(&v99, 0);
    (*(v7 + 8))(v9, v6);
    v41 = v66;
    sub_23853B690(v66, &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
    v42 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v65 = swift_allocObject();
    sub_23853AE34(&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v65 + v42);
    v43 = v40;
    result = [v43 managedObjectContext];
    if (result)
    {
      v44 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA50, &qword_238779570);
      swift_allocObject();
      v45 = sub_2386266D0(v43, v44, sub_2385360B4, 0);
      v60 = v43;
      v46 = v45;
      sub_238538A64(&v75);
      v47 = sub_23875E4A0();
      v83[0] = v75;
      v83[1] = v76;
      v83[2] = v77;
      *&v84 = v78;
      *(&v84 + 1) = v47;
      v107 = v75;
      v108 = v76;
      v109 = v77;
      v110 = v84;
      v85 = v48;
      v111 = v48;
      v86[1] = v76;
      v86[2] = v77;
      v86[0] = v75;
      v87 = v78;
      v88 = v47;
      v89 = v48;
      sub_23843981C(v83, &v99, &qword_27DF0DA58, &qword_23876DDF0);
      sub_238439884(v86, &qword_27DF0DA58, &qword_23876DDF0);
      sub_23853B690(v41, &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      v49 = swift_allocObject();
      sub_23853AE34(&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v42);
      v90 = v46;
      *&v91 = sub_23853AE98;
      *(&v91 + 1) = v65;
      *&v96 = v111;
      v94 = v109;
      v95 = v110;
      v92 = v107;
      v93 = v108;
      *(&v96 + 1) = sub_23853AF18;
      v97 = v49;
      v98 = 0;
      v101 = v107;
      v102 = v108;
      v99 = v46;
      v100 = v91;
      *&v106[1] = 0;
      v105 = v96;
      v106[0] = v49;
      v103 = v109;
      v104 = v110;
      sub_23853AF30(&v99);
      v73 = v105;
      v74[0] = v106[0];
      *(v74 + 9) = *(v106 + 9);
      v69 = v101;
      v70 = v102;
      v71 = v103;
      v72 = v104;
      v67 = v99;
      v68 = v100;
      sub_23840B5A8(&v90, &v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA60, &qword_23876DDF8);
      sub_23853AF38();
      sub_23875D1B0();
      v50 = v82[0];
      v51 = v61;
      v61[6] = v81;
      v51[7] = v50;
      *(v51 + 121) = *(v82 + 9);
      v52 = v78;
      v51[2] = v77;
      v51[3] = v52;
      v53 = v80;
      v51[4] = v79;
      v51[5] = v53;
      v54 = v76;
      *v51 = v75;
      v51[1] = v54;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA98, &qword_23876DE10);
      sub_23853B0A8();
      sub_23853B134();
      sub_23875D1B0();

      return sub_238439884(&v90, &qword_27DF0DA60, &qword_23876DDF8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2385360B4(void *a1)
{
  v1 = a1;

  return MEMORY[0x282118A98](v1);
}

uint64_t sub_2385360EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v85 = a2;
  v97 = a3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAC8, &qword_23876DE50);
  MEMORY[0x28223BE20](v93);
  v96 = (&v82 - v4);
  v94 = type metadata accessor for ExtractedOrderDetails(0);
  MEMORY[0x28223BE20](v94);
  v86 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAD0, &qword_23876DE58);
  v88 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = &v82 - v6;
  v7 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_238758270();
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v84 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v82 - v11;
  v12 = sub_238759340();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v89 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAD8, &qword_23876DE60);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAE0, &qword_23876DE68);
  MEMORY[0x28223BE20](v27 - 8);
  v92 = (&v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  sub_23843981C(a1, v26, &qword_27DF0DAD8, &qword_23876DE60);
  v32 = *(v13 + 6);
  if (v32(v26, 1, v12) == 1)
  {
    v33 = v99;
    v34 = v98;
    (*(v99 + 56))(v31, 1, 1, v98);
  }

  else
  {
    (*(v13 + 4))(v20, v26, v12);
    (*(v13 + 2))(v17, v20, v12);
    sub_2387580B0();
    (*(v13 + 1))(v20, v12);
    v34 = v98;
    v33 = v99;
  }

  sub_23843981C(a1, v23, &qword_27DF0DAD8, &qword_23876DE60);
  v35 = v32(v23, 1, v12);
  v36 = v92;
  if (v35 == 1)
  {
    v37 = &qword_27DF0DAD8;
    v38 = &qword_23876DE60;
    v39 = v23;
  }

  else
  {
    v40 = v89;
    (*(v13 + 4))(v89, v23, v12);
    sub_23843981C(v31, v36, &qword_27DF0DAE0, &qword_23876DE68);
    if ((*(v33 + 48))(v36, 1, v34) != 1)
    {
      v61 = v90;
      (*(v33 + 32))(v90, v36, v34);
      v92 = v13;
      sub_238759330();
      v62 = v33;
      v63 = sub_2387584E0();

      v64 = v84;
      (*(v62 + 16))(v84, v61, v34);
      v65 = v91;
      sub_2386F3A0C(v64, v63, 0, 0, 1, v91);
      v66 = v86;
      sub_23853B690(v65, v86, type metadata accessor for ExtractedOrderDetails.ViewModel);
      v84 = v31;
      v83 = v12;
      v67 = v94;
      v68 = v66 + *(v94 + 20);
      LOBYTE(v108) = 1;
      v101 = 0u;
      v100 = 0u;
      v102 = 1;
      *v103 = *v107;
      *&v103[3] = *&v107[3];
      v104 = 0u;
      v105 = 0u;
      v106 = 1;
      sub_23875E1A0();
      v69 = v111;
      v70 = v112;
      *(v68 + 32) = v110;
      *(v68 + 48) = v69;
      *(v68 + 64) = v70;
      *(v68 + 80) = v113;
      v71 = v109;
      *v68 = v108;
      *(v68 + 16) = v71;
      v72 = *(v67 + 24);
      *(v66 + v72) = swift_getKeyPath(byte_23876DE78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      v73 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v73);
      *(&v82 - 2) = v85;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAE8, &qword_23876DE70);
      v75 = v40;
      v76 = sub_23853BC48(&qword_27DF0DAF0, type metadata accessor for ExtractedOrderDetails, &unk_238781A80);
      v77 = sub_23843A3E8(&qword_27DF0DAF8, &qword_27DF0DAE8, &qword_23876DE70, MEMORY[0x277CDDF68]);
      v78 = v87;
      sub_23875DEF0();
      sub_23853B700(v66, type metadata accessor for ExtractedOrderDetails);
      v79 = v88;
      v80 = v95;
      (*(v88 + 16))(v96, v78, v95);
      swift_storeEnumTagMultiPayload();
      *&v100 = v67;
      *(&v100 + 1) = v74;
      *&v101 = v76;
      *(&v101 + 1) = v77;
      swift_getOpaqueTypeConformance2();
      sub_23875D1B0();
      (*(v79 + 8))(v78, v80);
      sub_23853B700(v91, type metadata accessor for ExtractedOrderDetails.ViewModel);
      (*(v99 + 8))(v90, v98);
      v92[1](v75, v83);
      v60 = v84;
      return sub_238439884(v60, &qword_27DF0DAE0, &qword_23876DE68);
    }

    (*(v13 + 1))(v40, v12);
    v37 = &qword_27DF0DAE0;
    v38 = &qword_23876DE68;
    v39 = v36;
  }

  sub_238439884(v39, v37, v38);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v41 = qword_2814F1B90;
  v42 = sub_23875EA50();
  v43 = sub_23875EA50();
  v44 = sub_23875EA50();
  v45 = [v41 localizedStringForKey:v42 value:v43 table:v44];

  v46 = sub_23875EA80();
  v48 = v47;

  *&v108 = v46;
  *(&v108 + 1) = v48;
  sub_2384397A8(v49, v50, v51);
  v52 = sub_23875DAA0();
  v53 = v96;
  *v96 = v52;
  v53[1] = v54;
  *(v53 + 16) = v55 & 1;
  v53[3] = v56;
  swift_storeEnumTagMultiPayload();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DAE8, &qword_23876DE70);
  v58 = sub_23853BC48(&qword_27DF0DAF0, type metadata accessor for ExtractedOrderDetails, &unk_238781A80);
  v59 = sub_23843A3E8(&qword_27DF0DAF8, &qword_27DF0DAE8, &qword_23876DE70, MEMORY[0x277CDDF68]);
  *&v108 = v94;
  *(&v108 + 1) = v57;
  *&v109 = v58;
  *(&v109 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  sub_23875D1B0();
  v60 = v31;
  return sub_238439884(v60, &qword_27DF0DAE0, &qword_23876DE68);
}

double sub_238536D20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB00, &unk_23876DEB0);
  MEMORY[0x28223BE20](v23);
  v3 = &v19 - v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB08, &qword_23877FA80);
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v19 - v5;
  v7 = sub_23875D2A0();
  MEMORY[0x28223BE20](v7 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB10, &qword_23876DEC0);
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - v9;
  sub_23875ED50();
  v19 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23875D260();
  MEMORY[0x28223BE20](v11);
  v12 = v21;
  *(&v19 - 2) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB18, &qword_23876DEC8);
  sub_23853B768();
  sub_23875C990();
  v13 = sub_23875D250();
  MEMORY[0x28223BE20](v13);
  *(&v19 - 2) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB50, &qword_23876DEE8);
  sub_23853B9A4();
  sub_23875C990();
  v14 = *(v23 + 48);
  v15 = v20;
  (*(v8 + 16))(v3, v10, v20);
  v16 = &v3[v14];
  v17 = v22;
  (*(v4 + 16))(v16, v6, v22);
  sub_23875D070();
  (*(v4 + 8))(v6, v17);
  (*(v8 + 8))(v10, v15);

  return result;
}

double sub_2385370F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v27 = a2;
  v2 = sub_23875D620();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB30, &unk_23876DED0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_23875ED50();
  v24 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23853B690(v23, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  v14 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v15 = swift_allocObject();
  sub_23853AE34(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_23875E200();
  sub_23875D610();
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430, MEMORY[0x277CDF028]);
  sub_23853BC48(&qword_27DF0DB38, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v16 = v26;
  sub_23875DB30();
  (*(v25 + 8))(v4, v16);
  (*(v8 + 8))(v10, v7);
  v17 = &v13[*(v11 + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB48, &qword_23876DEE0) + 28);
  v19 = *MEMORY[0x277CDF420];
  v20 = sub_23875C460();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  *v17 = swift_getKeyPath("p\b{E");
  sub_23853B824();
  sub_23875DE00();
  sub_238439884(v13, &qword_27DF0DB30, &unk_23876DED0);

  return result;
}

uint64_t sub_238537580()
{
  v1 = v0;
  v54 = sub_23875C1E0();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v47 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v42 - v4;
  v46 = sub_23875C6D0();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_23875B940();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v15 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_238763300;
  v17 = *MEMORY[0x277D383D8];
  *(v16 + 32) = *MEMORY[0x277D383D8];
  v18 = sub_23875EA80();
  v19 = MEMORY[0x277D38390];
  *(v16 + 40) = v18;
  *(v16 + 48) = v20;
  v21 = *v19;
  *(v16 + 56) = *v19;
  *(v16 + 64) = 0x6B63617274;
  v22 = *MEMORY[0x277D384B8];
  *(v16 + 72) = 0xE500000000000000;
  *(v16 + 80) = v22;
  *(v16 + 88) = 0xD000000000000010;
  *(v16 + 96) = 0x8000000238784EA0;
  v23 = v17;
  v24 = v21;
  v25 = v22;
  v26 = sub_23854B138(v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v26;
  sub_2385C33E4(v15, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v56);

  v28 = *MEMORY[0x277D38548];
  v29 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853BC48(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v30 = sub_23875E910();

  [v29 subject:v28 sendEvent:v30];

  sub_2387579D0();
  sub_2387579A0();
  sub_2387578F0();
  v31 = v51;
  sub_23853B5CC(v11, v51);
  v32 = v48;
  sub_23843981C(v31, v48, &qword_27DF0D040, &qword_2387676A0);
  v33 = v49;
  v34 = v50;
  if ((*(v49 + 48))(v32, 1, v50) == 1)
  {
    sub_238439884(v32, &qword_27DF0D040, &qword_2387676A0);
    v37 = sub_238757910();
    v38 = sub_238757930();
    if ((v37 | v38))
    {
      sub_238539AA8();
    }

    else
    {
      sub_238757980();
      v40 = v1 + *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0) + 48);
      v41 = *(v40 + 8);
      LOBYTE(v56[0]) = *v40;
      v56[1] = v41;
      v55 = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
      sub_23875E1C0();
    }
  }

  else
  {
    v35 = v43;
    (*(v33 + 32))(v43, v32, v34);
    type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
    v36 = v44;
    sub_2384D51B0(v44);
    sub_23875C6A0();
    (*(v45 + 8))(v36, v46);
    (*(v1 + 32))(1, 0);

    (*(v33 + 8))(v35, v34);
  }

  return sub_238439884(v31, &qword_27DF0D040, &qword_2387676A0);
}

uint64_t sub_238537F2C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  sub_23875D820();
  v14 = sub_23875DA60();
  v16 = v15;
  v18 = v17;

  sub_2384397FC(v10, v12, v4 & 1);

  sub_23875D890();
  v19 = sub_23875D9E0();
  v21 = v20;
  LOBYTE(v4) = v22;
  v24 = v23;
  sub_2384397FC(v14, v16, v18 & 1);

  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v24;
  return result;
}

double sub_23853817C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB68, &qword_23876DEF0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23853B690(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_23853AE34(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0DB60, &qword_27DF0DB68, &qword_23876DEF0, MEMORY[0x277CDF028]);
  sub_23875DE00();
  (*(v7 + 8))(v9, v6);

  return result;
}

double sub_238538428()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385384C8();

  return result;
}

void sub_2385384C8()
{
  v0 = sub_23875B3D0();
  MEMORY[0x28223BE20](v0 - 8);
  v31 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_23875B3E0();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23875C600();
  v28 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v7 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_238763300;
  v9 = *MEMORY[0x277D383D8];
  *(v8 + 32) = *MEMORY[0x277D383D8];
  v10 = sub_23875EA80();
  v11 = MEMORY[0x277D38390];
  *(v8 + 40) = v10;
  *(v8 + 48) = v12;
  v13 = *v11;
  *(v8 + 56) = *v11;
  *(v8 + 64) = 0x6C65636E6163;
  v14 = *MEMORY[0x277D384B8];
  *(v8 + 72) = 0xE600000000000000;
  *(v8 + 80) = v14;
  *(v8 + 88) = 0xD000000000000010;
  *(v8 + 96) = 0x8000000238784EA0;
  v15 = v9;
  v16 = v13;
  v17 = v14;
  v18 = sub_23854B138(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v18;
  sub_2385C33E4(v7, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v34);

  v20 = *MEMORY[0x277D38548];
  v21 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853BC48(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v22 = sub_23875E910();

  [v21 subject:v20 sendEvent:v22];

  type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  v23 = v30;
  sub_2384D53C8(v5);
  sub_23875C5F0();
  (*(v28 + 8))(v5, v29);
  v24 = *(v23 + 32);
  sub_23875B3C0();
  sub_23853BB18(MEMORY[0x277D84F90]);
  sub_23853BC48(&qword_27DF0DB70, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
  v25 = v33;
  sub_23875B710();
  v26 = sub_23875B3B0();
  (*(v32 + 8))(v3, v25);
  v24(0, v26);
}

void sub_2385389C0(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();

  *a1 = v2;
}

uint64_t sub_238538A64@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v52 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  v55 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v56 = v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  v2 = type metadata accessor for BetaBadgeFormatter(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  v12 = v11;

  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v48[1] = "_DETAILS_HEADER_VIEW_SUBTITLE";
  v15 = sub_23875EA50();
  v16 = [v5 localizedStringForKey:v13 value:v14 table:v15];

  v17 = sub_23875EA80();
  v53 = v18;
  v54 = v17;

  v19 = v59;
  sub_238535280(v4 + *(v2 + 20));
  sub_238535488(v4 + *(v2 + 24));
  *v4 = v10;
  v4[1] = v12;
  v20 = v19 + *(v52 + 48);
  v21 = *v20;
  v22 = *(v20 + 8);
  v63 = v21;
  v64 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v51 = v61;
  v52 = v60;
  v50 = v62;
  v49 = sub_238733460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAB8, &qword_23876DE48);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_238763B60;
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = sub_23875EA50();
  v27 = v5;
  v28 = [v5 localizedStringForKey:v24 value:v25 table:v26];

  v29 = sub_23875EA80();
  v31 = v30;

  v48[0] = type metadata accessor for ExtractedOrderSuggestionsPreviewContent;
  v32 = v56;
  sub_23853B690(v19, v56, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  v33 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v34 = swift_allocObject();
  sub_23853AE34(v32, v34 + v33);
  *(v23 + 32) = v29;
  *(v23 + 40) = v31;
  *(v23 + 48) = 1;
  *(v23 + 56) = 0;
  *(v23 + 64) = sub_23853B59C;
  *(v23 + 72) = v34;
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = sub_23875EA50();
  v38 = [v27 localizedStringForKey:v35 value:v36 table:v37];

  v39 = sub_23875EA80();
  v41 = v40;

  sub_23853B690(v59, v32, v48[0]);
  v42 = swift_allocObject();
  sub_23853AE34(v32, v42 + v33);
  *(v23 + 80) = v39;
  *(v23 + 88) = v41;
  *(v23 + 96) = 0;
  *(v23 + 104) = 1;
  *(v23 + 112) = sub_23853B5B4;
  *(v23 + 120) = v42;
  result = sub_23853B700(v4, type metadata accessor for BetaBadgeFormatter);
  v44 = v58;
  v45 = v51;
  *v58 = v52;
  v44[1] = v45;
  *(v44 + 16) = v50;
  v46 = v53;
  v47 = v54;
  v44[3] = v49;
  v44[4] = v47;
  v44[5] = v46;
  v44[6] = v23;
  return result;
}

uint64_t sub_238538FC8()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *MEMORY[0x277D38548];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v2 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v0, 6, v2);
}

uint64_t sub_23853910C(uint64_t a1)
{
  v1[11] = a1;
  v2 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v1[14] = *(v3 + 64);
  v1[15] = swift_task_alloc();
  sub_23875ED50();
  v1[16] = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238539208, v5, v4);
}

uint64_t sub_238539208()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[12];

  v5 = objc_opt_self();
  sub_23853B690(v3, v1, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_23853AE34(v1, v7 + v6);
  v0[6] = sub_23853B2F4;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238461390;
  v0[5] = &block_descriptor_8;
  v8 = _Block_copy(v0 + 2);

  v9 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:20.0];
  _Block_release(v8);
  *(v0 + 4) = *(v3 + *(v4 + 56));
  v0[10] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAB0, &unk_23876DE28);
  sub_23875E1C0();

  v10 = v0[1];

  return v10();
}

double sub_2385393C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_23875ED80();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_23853B690(a2, v6, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  sub_23875ED50();
  v11 = sub_23875ED40();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_23853AE34(v6, v13 + v12);
  sub_2386C3BA4(0, 0, v9, &unk_23876DE40, v13);

  return result;
}

uint64_t sub_238539590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA40, &unk_23876DDE0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_23875ED50();
  v4[10] = sub_23875ED40();
  v7 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238539690, v7, v6);
}

uint64_t sub_238539690()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  v4 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9E8, &qword_23876DD38);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0DA48, &qword_27DF0DA40, &unk_23876DDE0, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  (*(v3 + 8))(v1, v2);
  if (*(v0 + 32) == *(v0 + 40))
  {
    v5 = (*(v0 + 48) + *(v4 + 52));
    v6 = *v5;
    v7 = *(v5 + 1);
    *(v0 + 16) = v6;
    *(v0 + 24) = v7;
    *(v0 + 88) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1C0();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_238539808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  v4 = sub_23875EA80();
  v5 = MEMORY[0x277D38390];
  *(v2 + 40) = v4;
  *(v2 + 48) = v6;
  v7 = *v5;
  *(v2 + 56) = *v5;
  *(v2 + 64) = 0x6C65636E6163;
  v8 = *MEMORY[0x277D384B8];
  *(v2 + 72) = 0xE600000000000000;
  *(v2 + 80) = v8;
  *(v2 + 88) = 0xD000000000000010;
  *(v2 + 96) = 0x8000000238784EA0;
  v9 = v3;
  v10 = v7;
  v11 = v8;
  v12 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

  v14 = *MEMORY[0x277D38548];
  v15 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853BC48(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v16 = sub_23875E910();

  [v15 subject:v14 sendEvent:v16];

  return sub_238539AA8();
}

uint64_t sub_238539AA8()
{
  v1 = v0;
  v2 = sub_23875C6D0();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent(0);
  MEMORY[0x28223BE20](v69);
  v74 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = (&v63 - v6);
  v7 = sub_23875C1E0();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v63 - v10;
  MEMORY[0x28223BE20](v11);
  v68 = &v63 - v12;
  v13 = sub_23875B940();
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  sub_2387579D0();
  v25 = sub_2387579A0();
  v26 = *v1;
  v27 = v1[1];
  v29 = v1[2];
  v28 = v1[3];
  v81 = v1;
  sub_238757810();
  v66 = v15;
  v67 = v18;
  v30 = v76;
  v78 = v24;
  sub_2387578F0();
  v31 = v25;
  v63 = v29;
  v64 = v26;
  v65 = v27;
  v77 = v28;
  v32 = v21;
  v33 = v78;
  sub_23853B5CC(v32, v78);
  v34 = v67;
  sub_23843981C(v33, v67, &qword_27DF0D040, &qword_2387676A0);
  v35 = v75;
  v36 = v30;
  if ((*(v75 + 48))(v34, 1, v30) == 1)
  {
    v76 = v31;
    sub_238439884(v34, &qword_27DF0D040, &qword_2387676A0);
    v37 = v68;
    sub_23875C150();
    v38 = v81;
    v39 = v73;
    sub_23853B690(v81, v73, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
    v40 = v74;
    sub_23853B690(v38, v74, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
    v41 = sub_23875C1B0();
    v42 = sub_23875EFE0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v82[0] = v75;
      *v43 = 136315394;
      v44 = *v39;
      v45 = v39[1];

      sub_23853B700(v39, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      v46 = sub_2384615AC(v44, v45, v82);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      v47 = *(v40 + 16);
      v48 = *(v40 + 24);

      sub_23853B700(v40, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      v49 = sub_2384615AC(v47, v48, v82);

      *(v43 + 14) = v49;
      v33 = v78;
      _os_log_impl(&dword_2383F8000, v41, v42, "Tracked order with messageID: %s orderNumber: %s was tracked but has no deeplink", v43, 0x16u);
      v50 = v75;
      swift_arrayDestroy();
      MEMORY[0x23EE64DF0](v50, -1, -1);
      MEMORY[0x23EE64DF0](v43, -1, -1);
    }

    else
    {

      sub_23853B700(v40, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      sub_23853B700(v39, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
    }

    v54 = (*(v79 + 8))(v37, v80);
    v55 = v63;
    v56 = *(v38 + 32);
    sub_23853B63C(v54, v57, v58);
    v59 = swift_allocError();
    v60 = v65;
    *v61 = v64;
    v61[1] = v60;
    v61[2] = v55;
    v61[3] = v77;

    v56(0, v59);
  }

  else
  {
    v51 = v66;
    (*(v35 + 32))(v66, v34, v30);
    v52 = v70;
    v53 = v81;
    sub_2384D51B0(v70);
    sub_23875C6A0();
    (*(v71 + 8))(v52, v72);
    (*(v53 + 32))(1, 0);

    (*(v35 + 8))(v51, v36);
  }

  return sub_238439884(v33, &qword_27DF0D040, &qword_2387676A0);
}

uint64_t sub_23853A400()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  *(v2 + 40) = sub_23875EA80();
  *(v2 + 48) = v4;
  v5 = *MEMORY[0x277D38390];
  *(v2 + 56) = *MEMORY[0x277D38390];
  *(v2 + 64) = 0xD00000000000001CLL;
  v6 = *MEMORY[0x277D384B8];
  *(v2 + 72) = 0x8000000238785C10;
  *(v2 + 80) = v6;
  *(v2 + 88) = 0xD000000000000010;
  *(v2 + 96) = 0x8000000238784EA0;
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v10;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v16);

  v12 = *MEMORY[0x277D38548];
  v13 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853BC48(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v14 = sub_23875E910();

  [v13 subject:v12 sendEvent:v14];

  return sub_23853A6A4();
}

uint64_t sub_23853A6A4()
{
  v0 = sub_23875C1E0();
  v10[1] = *(v0 - 8);
  v10[2] = v0;
  MEMORY[0x28223BE20](v0);
  v1 = sub_238757A80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238757A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2387579D0();
  sub_2387579A0();
  (*(v2 + 104))(v4, *MEMORY[0x277CC6B10], v1);
  sub_238757890();

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return sub_238539AA8();
}

void sub_23853AA54(uint64_t a1)
{
  sub_23846D0DC();
  if (v1 <= 0x3F)
  {
    sub_23853AC68(319, &qword_27DF0DA08, MEMORY[0x277CC7E28], MEMORY[0x277CDD7C8]);
    if (v2 <= 0x3F)
    {
      sub_23853AC68(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23853AC68(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23853AC68(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_23853AC68(319, &qword_27DF0B940, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_2384B49C4();
              if (v7 <= 0x3F)
              {
                sub_23853ACCC(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}