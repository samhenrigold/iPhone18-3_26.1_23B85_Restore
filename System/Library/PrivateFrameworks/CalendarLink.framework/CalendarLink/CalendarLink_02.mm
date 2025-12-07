uint64_t TransferableCalendarEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t TransferableCalendarEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2427F978C, 0, 0);
}

void sub_2427F978C()
{
  v1 = sub_2427F3E84();
  v2 = sub_2428B46B8();
  v3 = [v1 calendarsWithIdentifiers_];

  if (v3)
  {
    sub_2427F98B4();
    v4 = sub_2428B46C8();

    v5 = sub_2427F9900(v4);

    v6 = *(v0 + 8);

    v6(v5);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2427F98B4()
{
  result = qword_27ECC28F0;
  if (!qword_27ECC28F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC28F0);
  }

  return result;
}

void *sub_2427F9900(unint64_t a1)
{
  v2 = type metadata accessor for TransferableCalendarEntity(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    v7 = 0;
    v16 = a1 & 0xC000000000000001;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v16)
      {
        v9 = MEMORY[0x245D1B5D0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v17[3] = sub_2428B3DB8();
      v17[4] = sub_2427FA28C(&qword_27ECC27D8, MEMORY[0x277CF7BB8], MEMORY[0x277CF7BB0]);
      __swift_allocate_boxed_opaque_existential_1(v17);
      v12 = v10;
      sub_2428B3DC8();
      sub_2428B3848();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2427F73B0(0, v8[2] + 1, 1, v8);
      }

      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        v8 = sub_2427F73B0((v13 > 1), v14 + 1, 1, v8);
      }

      v8[2] = v14 + 1;
      sub_2427FA2D4(v5, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14);
      ++v7;
      if (v11 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2427F9B70()
{
  v1 = sub_2427F3E84();
  v2 = [v1 calendarsForEntityType_];
  sub_2427F98B4();
  v3 = sub_2428B46C8();

  v4 = sub_2427F9900(v3);

  v5 = *(v0 + 8);

  return v5(v4);
}

unint64_t sub_2427F9C78()
{
  result = qword_27ECC2790;
  if (!qword_27ECC2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2790);
  }

  return result;
}

unint64_t sub_2427F9CD0()
{
  result = qword_27ECC2798;
  if (!qword_27ECC2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2798);
  }

  return result;
}

uint64_t sub_2427F9D6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return TransferableCalendarEntityQuery.entities(for:)(a1);
}

uint64_t sub_2427F9E00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2427FA238();
  *v5 = v2;
  v5[1] = sub_2427CD274;

  return MEMORY[0x28210C0E8](a1, a2, v6);
}

unint64_t sub_2427F9EB8()
{
  result = qword_27ECC30C0;
  if (!qword_27ECC30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC30C0);
  }

  return result;
}

uint64_t sub_2427F9F0C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2427F9F30, 0, 0);
}

uint64_t sub_2427F9F30()
{
  v1 = sub_2427F3E84();
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = [v1 calendarsForEntityType_];
  sub_2427F98B4();
  v5 = sub_2428B46C8();

  v6 = sub_2427F9900(v5);

  *v2 = v6;
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_2427FA020()
{
  result = qword_27ECC27B0;
  if (!qword_27ECC27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27B0);
  }

  return result;
}

unint64_t sub_2427FA0C0()
{
  result = qword_27ECC27C0;
  if (!qword_27ECC27C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC27C8, qword_2428B9438);
    sub_2427FA28C(&unk_280CDE0E8, type metadata accessor for TransferableCalendarEntity, &protocol conformance descriptor for TransferableCalendarEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27C0);
  }

  return result;
}

uint64_t sub_2427FA174(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2427F9EB8();
  *v5 = v2;
  v5[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v6);
}

unint64_t sub_2427FA238()
{
  result = qword_27ECC27D0;
  if (!qword_27ECC27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27D0);
  }

  return result;
}

uint64_t sub_2427FA28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2427FA2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableCalendarEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427FA3B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_2427FA498(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2427FA4C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2427FA4F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *static CalendarSuggestionsProvider.suggestions(withEventStore:options:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26C8, &unk_2428B9570);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v11 - 8);
  v69 = v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v13 - 8);
  v71 = v50 - v14;
  v70 = sub_2428B3568();
  v15 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v74 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2428B3DB8();
  MEMORY[0x28223BE20](v17 - 8);
  v68 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26D8, &qword_2428B9258);
  v19 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v76 = v50 - v20;
  v21 = _s12CalendarLink0A12ListGroupingV6groups14withEventStore16includeDelegates12writableOnly09deletableL00I18IntegrationSourcesSayAC5GroupOGSo07EKEventH0C_S4btFZ_0(a1, *a2 & 1, (*a2 & 4) != 0, (*a2 >> 3) & 1, (*a2 >> 1) & 1);
  v57 = *(v21 + 2);
  if (!v57)
  {
LABEL_28:

    (*(v15 + 56))(v71, 1, 1, v70);
    sub_2427E3430();
    return sub_2428B3108();
  }

  v50[1] = a3;
  v22 = v21;
  type metadata accessor for LocalizedStringUtils();
  result = v22;
  v24 = 0;
  v56 = v22 + 32;
  v66 = (v15 + 56);
  v65 = v19 + 32;
  v51 = (v7 + 16);
  v50[3] = v7 + 8;
  v50[2] = v7 + 32;
  v25 = MEMORY[0x277D84F90];
  v55 = v6;
  v54 = v7;
  v53 = v15;
  v52 = v22;
  while (1)
  {
    if (v24 >= result[2])
    {
      goto LABEL_31;
    }

    v58 = v25;
    v59 = v24;
    v26 = &v56[3 * v24];
    v27 = *v26;
    v28 = v26[1];
    v62 = *(v26 + 16);
    v64 = v27;
    v63 = v28;
    v29 = sub_2428B3218();
    v75 = v29;
    v30 = v29 >> 62 ? sub_2428B49C8() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    result = sub_2427FAED4(v64, v63, v62);
    if (v30)
    {
      break;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_21:

    *&v79 = v64;
    *(&v79 + 1) = v63;
    LOBYTE(v80) = v62;
    v39 = v74;
    static LocalizedStringUtils.localizedTitle(forGroup:)(&v79);
    v40 = sub_2427E3430();
    v41 = v60;
    MEMORY[0x245D19BF0](v39, v32, &type metadata for CalendarEntity, v40);
    v42 = v55;
    (*v51)(v61, v41, v55);
    v43 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_2427F75F8(0, v43[2] + 1, 1, v43);
    }

    v44 = v54;
    v46 = v43[2];
    v45 = v43[3];
    v47 = v43;
    v48 = v59;
    if (v46 >= v45 >> 1)
    {
      v49 = sub_2427F75F8((v45 > 1), v46 + 1, 1, v43);
      v48 = v59;
      v47 = v49;
    }

    sub_2427FAF24(v64, v63, v62);
    (*(v44 + 8))(v60, v42);
    v47[2] = v46 + 1;
    v25 = v47;
    (*(v44 + 32))(v47 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46, v61, v42);
    v24 = v48 + 1;
    v15 = v53;
    result = v52;
    if (v48 + 1 == v57)
    {
      goto LABEL_28;
    }
  }

  v31 = 0;
  v73 = v75 & 0xC000000000000001;
  v72 = v75 & 0xFFFFFFFFFFFFFF8;
  v32 = MEMORY[0x277D84F90];
  while (v73)
  {
    result = MEMORY[0x245D1B5D0](v31, v75);
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_29;
    }

LABEL_11:
    v34 = result;
    v35 = v68;
    sub_2428B3DC8();
    CalendarEntity.init(_:)(v35, v78);
    v82 = v78[3];
    v83 = v78[4];
    v80 = v78[1];
    v81 = v78[2];
    v79 = v78[0];
    sub_2427E35A0(&v79, v77);
    static LocalizedStringUtils.localizedTitle(forCalendar:)(v34);
    (*v66)(v71, 1, 1, v70);
    v36 = sub_2428B3148();
    (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
    sub_2427E3430();
    sub_2428B2A88();

    sub_2427E3484(&v79);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_2427F761C(0, v32[2] + 1, 1, v32);
    }

    v38 = v32[2];
    v37 = v32[3];
    if (v38 >= v37 >> 1)
    {
      v32 = sub_2427F761C((v37 > 1), v38 + 1, 1, v32);
    }

    v32[2] = v38 + 1;
    result = (*(v19 + 32))(v32 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v38, v76, v67);
    ++v31;
    if (v33 == v30)
    {
      goto LABEL_21;
    }
  }

  if (v31 >= *(v72 + 16))
  {
    goto LABEL_30;
  }

  result = *(v75 + 8 * v31 + 32);
  v33 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_11;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_2427FAED4(void *result, void *a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }

    v4 = result;
  }

  return sub_2428B3218();
}

void *sub_2427FAF24(void *result, void *a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }
  }
}

unint64_t sub_2427FAF78()
{
  result = qword_27ECC27E0;
  if (!qword_27ECC27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27E0);
  }

  return result;
}

unint64_t sub_2427FAFD0()
{
  result = qword_27ECC27E8;
  if (!qword_27ECC27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27E8);
  }

  return result;
}

unint64_t sub_2427FB028()
{
  result = qword_27ECC27F0;
  if (!qword_27ECC27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27F0);
  }

  return result;
}

unint64_t sub_2427FB080()
{
  result = qword_27ECC27F8;
  if (!qword_27ECC27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC27F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarSuggestionsOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CalendarSuggestionsOptions(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CalendarSuggestionsProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CalendarSuggestionsProvider(_WORD *result, int a2, int a3)
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

uint64_t sub_2427FB210(uint64_t a1, unsigned __int8 a2)
{
  sub_2428B4678();
}

uint64_t sub_2427FB34C(uint64_t a1, unsigned __int8 a2)
{
  sub_2428B4678();
}

uint64_t sub_2427FB478()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC2800);
  __swift_project_value_buffer(v10, qword_27ECC2800);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t static CalendarAppView.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1740 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2800);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2427FB804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v93 = &v69 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v91 = &v69 - v3;
  v96 = sub_2428B3558();
  v4 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B45F8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2428B3568();
  v94 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2838, &qword_2428B9A58);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2840, &unk_2428B9A60);
  v15 = *(v14 - 8);
  v87 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v74 = 8 * v87;
  v17 = swift_allocObject();
  v72 = v17;
  *(v17 + 16) = xmmword_2428B5D40;
  v81 = *(v14 + 48);
  v89 = v14;
  *(v17 + v16) = 0;
  v18 = v17 + v16;
  sub_2428B4578();
  sub_2428B36B8();
  v92 = *MEMORY[0x277CC9110];
  v83 = *(v4 + 104);
  v76 = v6;
  v83(v6);
  v77 = v4 + 104;
  sub_2428B3588();
  v85 = *(v94 + 56);
  v94 += 56;
  v19 = v91;
  v20 = v88;
  v85(v91, 1, 1, v88);
  v84 = sub_2428B3148();
  v21 = *(v84 - 8);
  v86 = *(v21 + 56);
  v90 = v21 + 56;
  v86(v93, 1, 1, v84);
  v95 = v18;
  sub_2428B3178();
  v22 = *(v14 + 48);
  v80 = v18 + v87;
  v81 = v22;
  *v80 = 1;
  sub_2428B4578();
  v75 = v9;
  sub_2428B36B8();
  v23 = v92;
  (v83)(v76, v92, v96);
  sub_2428B3588();
  v24 = v20;
  v25 = v20;
  v26 = v85;
  v85(v19, 1, 1, v25);
  v27 = v84;
  v86(v93, 1, 1, v84);
  sub_2428B3178();
  v81 = 2 * v87;
  v28 = v89;
  v29 = *(v89 + 48);
  v79 = v95 + 2 * v87;
  v80 = v29;
  *v79 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v30 = v76;
  (v83)(v76, v23, v96);
  sub_2428B3588();
  v26(v91, 1, 1, v24);
  v31 = v27;
  v32 = v86;
  v86(v93, 1, 1, v31);
  sub_2428B3178();
  v33 = *(v28 + 48);
  v80 = v95 + v81 + v87;
  v81 = v33;
  *v80 = 3;
  v73 = v12;
  sub_2428B4578();
  sub_2428B36B8();
  (v83)(v30, v92, v96);
  sub_2428B3588();
  v34 = v88;
  v35 = v85;
  v85(v91, 1, 1, v88);
  v32(v93, 1, 1, v84);
  sub_2428B3178();
  v36 = v87;
  v81 = 4 * v87;
  v37 = v89;
  v38 = *(v89 + 48);
  v79 = v95 + 4 * v87;
  v80 = v38;
  *v79 = 4;
  sub_2428B4578();
  sub_2428B36B8();
  (v83)(v30, v92, v96);
  sub_2428B3588();
  v39 = v91;
  v35(v91, 1, 1, v34);
  v40 = v93;
  v41 = v84;
  v42 = v86;
  v86(v93, 1, 1, v84);
  v43 = v39;
  sub_2428B3178();
  v70 = (v95 + v81 + v36);
  v71 = *(v37 + 48);
  *v70 = 5;
  sub_2428B4578();
  sub_2428B36B8();
  v44 = v76;
  v45 = v83;
  (v83)(v76, v92, v96);
  sub_2428B3588();
  v46 = v94;
  v85(v43, 1, 1, v88);
  v42(v40, 1, 1, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D70, &unk_2428B6230);
  v48 = *(v46 + 16);
  v80 = *(v46 + 24);
  v81 = v47;
  v78 = (v80 + 32) & ~v80;
  v79 = v48;
  v49 = swift_allocObject();
  v69 = xmmword_2428B5D50;
  *(v49 + 16) = xmmword_2428B5D50;
  sub_2428B4578();
  sub_2428B36B8();
  v50 = v96;
  v51 = v45;
  (v45)(v44, v92, v96);
  sub_2428B3578();
  v52 = v91;
  v53 = v93;
  sub_2428B3168();
  v70 = (v95 + 6 * v87);
  v71 = *(v89 + 48);
  *v70 = 6;
  sub_2428B4578();
  sub_2428B36B8();
  (v51)(v44, v92, v50);
  sub_2428B3588();
  v85(v52, 1, 1, v88);
  v54 = v53;
  v86(v53, 1, 1, v84);
  *(swift_allocObject() + 16) = v69;
  sub_2428B4578();
  sub_2428B36B8();
  v55 = v92;
  v56 = v96;
  (v51)(v44, v92, v96);
  sub_2428B3578();
  v57 = v91;
  sub_2428B3168();
  v70 = (v95 + v74 - v87);
  v71 = *(v89 + 48);
  *v70 = 7;
  sub_2428B4578();
  sub_2428B36B8();
  v58 = v55;
  v59 = v83;
  (v83)(v44, v58, v56);
  sub_2428B3588();
  v85(v57, 1, 1, v88);
  v86(v54, 1, 1, v84);
  v87 = 2 * v79;
  *&v69 = swift_allocObject();
  *(v69 + 16) = xmmword_2428B9770;
  sub_2428B4578();
  sub_2428B36B8();
  v60 = v92;
  v61 = v96;
  (v59)(v44, v92, v96);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  (v59)(v44, v60, v61);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  (v59)(v44, v60, v61);
  sub_2428B3578();
  v62 = v91;
  v63 = v93;
  sub_2428B3168();
  v71 = v95 + v74;
  v74 = *(v89 + 48);
  *v71 = 8;
  sub_2428B4578();
  sub_2428B36B8();
  (v59)(v44, v60, v61);
  sub_2428B3588();
  v85(v62, 1, 1, v88);
  v86(v63, 1, 1, v84);
  *(swift_allocObject() + 16) = xmmword_2428B7940;
  sub_2428B4578();
  sub_2428B36B8();
  v64 = v60;
  v65 = v60;
  v66 = v96;
  (v59)(v44, v65, v96);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  (v59)(v44, v64, v66);
  sub_2428B3578();
  sub_2428B3168();
  v67 = sub_242821540(v72);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC2818 = v67;
  return result;
}

uint64_t static CalendarAppView.caseDisplayRepresentations.getter()
{
  if (qword_27ECC1748 != -1)
  {
    swift_once();
  }

  return sub_2428B3218();
}

CalendarLink::CalendarAppView_optional __swiftcall CalendarAppView.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2428B4BB8();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CalendarAppView.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 7954788;
    v7 = 0x68746E6F6DLL;
    if (v1 != 2)
    {
      v7 = 0x6E6F4D74696C7073;
    }

    if (*v0)
    {
      v6 = 1801807223;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x686372616573;
    v3 = 0x7261646E656C6163;
    if (v1 != 7)
    {
      v3 = 0x786F626E69;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 1918985593;
    if (v1 != 4)
    {
      v4 = 1953720684;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2427FCC6C@<X0>(uint64_t *a1@<X8>)
{
  result = CalendarAppView.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2427FCC98()
{
  result = qword_280CDDF90;
  if (!qword_280CDDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF90);
  }

  return result;
}

uint64_t sub_2427FCCEC()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2427FB34C(v3, v1);
  return sub_2428B4CB8();
}

uint64_t sub_2427FCD3C(uint64_t a1)
{
  v2 = *v1;
  sub_2428B4C88();
  sub_2427FB34C(v4, v2);
  return sub_2428B4CB8();
}

unint64_t sub_2427FCD84()
{
  result = qword_280CDDFD0;
  if (!qword_280CDDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFD0);
  }

  return result;
}

unint64_t sub_2427FCDDC()
{
  result = qword_280CDDFA8;
  if (!qword_280CDDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFA8);
  }

  return result;
}

unint64_t sub_2427FCE34()
{
  result = qword_280CDDF88;
  if (!qword_280CDDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF88);
  }

  return result;
}

unint64_t sub_2427FCE8C()
{
  result = qword_280CDDFB8;
  if (!qword_280CDDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFB8);
  }

  return result;
}

unint64_t sub_2427FCEE0()
{
  result = qword_280CDDFB0;
  if (!qword_280CDDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFB0);
  }

  return result;
}

unint64_t sub_2427FCF34()
{
  result = qword_280CDDFC8;
  if (!qword_280CDDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFC8);
  }

  return result;
}

unint64_t sub_2427FCF8C()
{
  result = qword_280CDDFC0;
  if (!qword_280CDDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFC0);
  }

  return result;
}

uint64_t sub_2427FCFE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1740 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2800);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2427FD0D8()
{
  result = qword_27ECC2820;
  if (!qword_27ECC2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2820);
  }

  return result;
}

uint64_t sub_2427FD12C(uint64_t a1)
{
  v2 = sub_2427FD0D8();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_2427FD17C()
{
  result = qword_280CDDFA0;
  if (!qword_280CDDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFA0);
  }

  return result;
}

unint64_t sub_2427FD1D4()
{
  result = qword_280CDDF80;
  if (!qword_280CDDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF80);
  }

  return result;
}

unint64_t sub_2427FD22C()
{
  result = qword_280CDDF98;
  if (!qword_280CDDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF98);
  }

  return result;
}

uint64_t sub_2427FD280()
{
  if (qword_27ECC1748 != -1)
  {
    swift_once();
  }

  return sub_2428B3218();
}

uint64_t sub_2427FD2DC(uint64_t a1)
{
  v2 = sub_2427FCF8C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2427FD32C()
{
  result = qword_27ECC2828;
  if (!qword_27ECC2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC2830, &qword_2428B99D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2828);
  }

  return result;
}

uint64_t sub_2427FD3D4()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC2850);
  __swift_project_value_buffer(v6, qword_27ECC2850);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static DeleteCalendarsIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1750 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3568();
  __swift_project_value_buffer(v1, qword_27ECC2850);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2427FD6D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC2868);
  __swift_project_value_buffer(v10, qword_27ECC2868);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t sub_2427FD9F4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_2427FDAE0(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 == -1)
  {
    v7 = a3(0);
  }

  else
  {
    swift_once();
    v7 = a3(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v10 = *(v8 - 8);
  (*(v10 + 24))(v9, a1, v8);
  swift_endAccess();
  return (*(v10 + 8))(a1, v8);
}

uint64_t (*static DeleteCalendarsIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1758 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC2868);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2427FDC60@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_2427FDD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (*a5 == -1)
  {
    v10 = a6(0);
  }

  else
  {
    swift_once();
    v10 = a6(0);
  }

  v11 = v10;
  v12 = __swift_project_value_buffer(v10, a7);
  swift_beginAccess();
  (*(*(v11 - 8) + 24))(v12, a1, v11);
  return swift_endAccess();
}

uint64_t DeleteCalendarsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v48 = sub_2428B3298();
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v45 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = v31 - v8;
  v9 = sub_2428B3558();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B36C8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2428B45F8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2428B3568();
  v41 = v15;
  v49 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v31[1] = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  v36 = sub_2428B2958();
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28A8, &qword_2428B9A88);
  sub_2428B4578();
  sub_2428B36B8();
  v18 = *(v10 + 104);
  v34 = *MEMORY[0x277CC9110];
  v17 = v34;
  v32 = v9;
  v18(v12, v34, v9);
  v33 = v18;
  v35 = v10 + 104;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v12, v17, v9);
  v19 = v43;
  sub_2428B3578();
  v20 = *(v49 + 56);
  v49 += 56;
  v42 = v20;
  v20(v19, 0, 1, v15);
  v51 = 0;
  v21 = sub_2428B2AE8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v38 = v23;
  v39 = v22 + 56;
  v23(v44, 1, 1, v21);
  v23(v45, 1, 1, v21);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_2428B2948();
  *&v52 = sub_2428B2918();
  *(&v52 + 1) = 11;
  LODWORD(v36) = *MEMORY[0x277CBA308];
  v24 = *(v50 + 104);
  v50 += 104;
  v37 = v24;
  v24(v46);
  sub_2427FE634();
  sub_2427FE688();
  v47[1] = sub_2428B2E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28B0, &qword_2428B9A90);
  sub_2428B4578();
  sub_2428B36B8();
  v25 = v34;
  v26 = v32;
  v27 = v33;
  v33(v12, v34, v32);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v27(v12, v25, v26);
  v28 = v43;
  sub_2428B3578();
  v42(v28, 0, 1, v41);
  LOBYTE(v52) = 3;
  v29 = v38;
  v38(v44, 1, 1, v21);
  v29(v45, 1, 1, v21);
  v37(v46, v36, v48);
  sub_24280181C();
  result = sub_2428B2E38();
  v47[2] = result;
  return result;
}

unint64_t sub_2427FE634()
{
  result = qword_280CDE110;
  if (!qword_280CDE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE110);
  }

  return result;
}

unint64_t sub_2427FE688()
{
  result = qword_280CDE5B0;
  if (!qword_280CDE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE5B0);
  }

  return result;
}

uint64_t DeleteCalendarsIntent.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*DeleteCalendarsIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

void *sub_2427FE820@<X0>(void *a1@<X8>)
{
  result = sub_2428B2DC8();
  *a1 = v3;
  return result;
}

uint64_t sub_2427FE85C(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*DeleteCalendarsIntent.entities.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t (*DeleteCalendarsIntent.reportJunk.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t static DeleteCalendarsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28C0, &qword_2428B9A98);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28C8, &qword_2428B9AA0);
  MEMORY[0x28223BE20](v1);
  sub_242801870();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28D8, &qword_2428B9AD0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t DeleteCalendarsIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  sub_2428B3408();
  *(v2 + 104) = swift_task_alloc();
  v3 = sub_2428B3418();
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v3 - 8);
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_2428B31E8();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC28E0, &qword_2428B9AE0);
  *(v2 + 168) = v5;
  *(v2 + 176) = *(v5 - 8);
  *(v2 + 184) = swift_task_alloc();
  v6 = sub_2428B2AE8();
  *(v2 + 192) = v6;
  *(v2 + 200) = *(v6 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = *v1;
  *(v2 + 232) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_2427FEE84, 0, 0);
}

uint64_t sub_2427FEE84()
{
  v1 = sub_2428B43D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_242801E44(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v1 & 1) == 0)
  {
    sub_2428B2938();
    sub_242801E44(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
LABEL_14:
    swift_willThrow();
LABEL_15:

    v15 = *(v0 + 8);
LABEL_58:

    return v15();
  }

  sub_2428B28E8();
  v3 = [*(v0 + 80) eventStore];
  *(v0 + 240) = v3;
  swift_unknownObjectRelease();
  if (!v3)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v14 = 24;
    goto LABEL_14;
  }

  v46 = v3;
  sub_2428B2DC8();
  v4 = *(v0 + 88);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 48);
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      sub_2428B3218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2427F7828(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_2427F7828((v11 > 1), v12 + 1, 1, v8);
      }

      ++v6;
      *(v8 + 2) = v12 + 1;
      v13 = &v8[16 * v12];
      *(v13 + 4) = v10;
      *(v13 + 5) = v9;
      v7 += 10;
      if (v5 == v6)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:
  *(v0 + 248) = v8;

  v16 = sub_2428B46B8();
  v7 = v46;
  v5 = [v46 calendarsWithIdentifiers_];

  if (!v5)
  {
    goto LABEL_56;
  }

  sub_2427F98B4();
  v17 = sub_2428B46C8();
  v4 = v17;
  *(v0 + 256) = v17;
  v6 = (v17 >> 62);
  if (v17 >> 62)
  {
LABEL_54:
    if (!sub_2428B49C8())
    {
      goto LABEL_55;
    }

    goto LABEL_20;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_55:

LABEL_56:

    sub_2428B2C28();
    goto LABEL_57;
  }

LABEL_20:
  v18 = [objc_allocWithZone(MEMORY[0x277CF7C78]) initWithCalendars_];
  *(v0 + 264) = v18;

  v19 = [v18 rejectionReason];
  if (v19 > 1)
  {
    if (v19 == 2)
    {

      if (v6)
      {
        v32 = sub_2428B49C8();
      }

      else
      {
        v32 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v32 <= 1;
      v35 = 8;
    }

    else
    {
      if (v19 != 3)
      {
        return sub_2428B4B58();
      }

      if (v6)
      {
        v21 = sub_2428B49C8();
      }

      else
      {
        v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v21 <= 1;
      v35 = 16;
    }

    if (v34)
    {
      v33 = v35;
    }

    else
    {
      v33 = v35 + 1;
    }

LABEL_47:
    sub_2427CCDB0();
    swift_allocError();
    *v36 = v33;
    swift_willThrow();

    goto LABEL_15;
  }

  if (v19)
  {
    if (v19 == 1)
    {

      if (v6)
      {
        v20 = sub_2428B49C8();
      }

      else
      {
        v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v33 = v20 > 1;
      goto LABEL_47;
    }

    return sub_2428B4B58();
  }

  v22 = [v18 nextConfirmation];
  if (!v22)
  {
    v37 = *(v0 + 264);
    v7 = *(v0 + 240);

    [v37 perform];
    sub_2428B2C28();

LABEL_57:

    v15 = *(v0 + 8);
    goto LABEL_58;
  }

  *(v0 + 272) = v22;
  v23 = v22;
  v24 = [v22 dialog];
  sub_2428B4618();

  sub_2428B2AC8();
  v25 = [v23 type];
  if (v25)
  {
    if (v25 != 1)
    {
      return sub_2428B4B58();
    }

    v27 = *(v0 + 200);
    v26 = *(v0 + 208);
    v28 = *(v0 + 192);
    v29 = *(v0 + 136);
    *(v0 + 296) = sub_2428B2DE8();
    (*(v27 + 16))(v29, v26, v28);
    (*(v27 + 56))(v29, 0, 1, v28);
    v30 = swift_task_alloc();
    *(v0 + 304) = v30;
    *v30 = v0;
    v30[1] = sub_2427FFDA8;
    v31 = *(v0 + 136);

    return MEMORY[0x28210BA20](v0 + 320, &unk_285515458, v31);
  }

  else
  {
    v38 = *(v0 + 232);
    *(v0 + 56) = *(v0 + 216);
    *(v0 + 72) = v38;
    sub_2428B2C18();
    sub_2428B31D8();
    v39 = swift_task_alloc();
    *(v0 + 280) = v39;
    v40 = sub_242801870();
    v41 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0, MEMORY[0x277CBA268]);
    *v39 = v0;
    v39[1] = sub_2427FF6E0;
    v42 = *(v0 + 184);
    v43 = *(v0 + 160);
    v44 = *(v0 + 168);

    return MEMORY[0x28210B510](v42, v43, 1, &type metadata for DeleteCalendarsIntent, v44, v40, v41);
  }
}

uint64_t sub_2427FF6E0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = v2[22];
    v3 = v2[23];
    v6 = v2[20];
    v5 = v2[21];
    v9 = v2 + 18;
    v7 = v2[18];
    v8 = v9[1];

    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);
    v10 = sub_242800434;
  }

  else
  {
    v12 = v2[22];
    v11 = v2[23];
    v13 = v2[21];
    (*(v2[19] + 8))(v2[20], v2[18]);
    (*(v12 + 8))(v11, v13);
    v10 = sub_2427FF88C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2427FF88C()
{
  v1 = [*(v0 + 264) selectConfirmationOptionAtIndex_];
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  if (v1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v4 = [v2 nextConfirmation];
    if (v4)
    {
      *(v0 + 272) = v4;
      v5 = v4;
      v6 = [v4 dialog];
      sub_2428B4618();

      sub_2428B2AC8();
      v7 = [v5 type];
      if (v7 == 1)
      {
        v24 = *(v0 + 200);
        v23 = *(v0 + 208);
        v25 = *(v0 + 192);
        v26 = *(v0 + 136);
        *(v0 + 296) = sub_2428B2DE8();
        (*(v24 + 16))(v26, v23, v25);
        (*(v24 + 56))(v26, 0, 1, v25);
        v27 = swift_task_alloc();
        *(v0 + 304) = v27;
        *v27 = v0;
        v27[1] = sub_2427FFDA8;
        v28 = *(v0 + 136);

        return MEMORY[0x28210BA20](v0 + 320, &unk_285515458, v28);
      }

      else if (v7)
      {
        return sub_2428B4B58();
      }

      else
      {
        v8 = *(v0 + 232);
        *(v0 + 56) = *(v0 + 216);
        *(v0 + 72) = v8;
        sub_2428B2C18();
        sub_2428B31D8();
        v9 = swift_task_alloc();
        *(v0 + 280) = v9;
        v10 = sub_242801870();
        v11 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0, MEMORY[0x277CBA268]);
        *v9 = v0;
        v9[1] = sub_2427FF6E0;
        v12 = *(v0 + 184);
        v13 = *(v0 + 160);
        v14 = *(v0 + 168);

        return MEMORY[0x28210B510](v12, v13, 1, &type metadata for DeleteCalendarsIntent, v14, v10, v11);
      }
    }

    v21 = *(v0 + 264);
    v22 = *(v0 + 240);

    [v21 perform];
    sub_2428B2C28();

    v20 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 240);
    v16 = *(v0 + 200);
    v30 = *(v0 + 192);
    v31 = *(v0 + 208);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 112);

    sub_2428B33F8();
    sub_242801D34(MEMORY[0x277D84F90]);
    sub_242801E44(&qword_27ECC28F8, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_2428B3528();
    sub_2428B33E8();
    (*(v18 + 8))(v17, v19);
    swift_willThrow();

    (*(v16 + 8))(v31, v30);

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_2427FFDA8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  sub_2427D2948(*(v2 + 136));

  if (v0)
  {

    v3 = sub_242800514;
  }

  else
  {
    v3 = sub_2427FFF0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2427FFF0C()
{
  v1 = [*(v0 + 264) selectConfirmationOptionAtIndex_];
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  if (v1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v4 = [v2 nextConfirmation];
    if (v4)
    {
      *(v0 + 272) = v4;
      v5 = v4;
      v6 = [v4 dialog];
      sub_2428B4618();

      sub_2428B2AC8();
      v7 = [v5 type];
      if (v7 == 1)
      {
        v24 = *(v0 + 200);
        v23 = *(v0 + 208);
        v25 = *(v0 + 192);
        v26 = *(v0 + 136);
        *(v0 + 296) = sub_2428B2DE8();
        (*(v24 + 16))(v26, v23, v25);
        (*(v24 + 56))(v26, 0, 1, v25);
        v27 = swift_task_alloc();
        *(v0 + 304) = v27;
        *v27 = v0;
        v27[1] = sub_2427FFDA8;
        v28 = *(v0 + 136);

        return MEMORY[0x28210BA20](v0 + 320, &unk_285515458, v28);
      }

      else if (v7)
      {
        return sub_2428B4B58();
      }

      else
      {
        v8 = *(v0 + 232);
        *(v0 + 56) = *(v0 + 216);
        *(v0 + 72) = v8;
        sub_2428B2C18();
        sub_2428B31D8();
        v9 = swift_task_alloc();
        *(v0 + 280) = v9;
        v10 = sub_242801870();
        v11 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0, MEMORY[0x277CBA268]);
        *v9 = v0;
        v9[1] = sub_2427FF6E0;
        v12 = *(v0 + 184);
        v13 = *(v0 + 160);
        v14 = *(v0 + 168);

        return MEMORY[0x28210B510](v12, v13, 1, &type metadata for DeleteCalendarsIntent, v14, v10, v11);
      }
    }

    v21 = *(v0 + 264);
    v22 = *(v0 + 240);

    [v21 perform];
    sub_2428B2C28();

    v20 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 240);
    v16 = *(v0 + 200);
    v30 = *(v0 + 192);
    v31 = *(v0 + 208);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 112);

    sub_2428B33F8();
    sub_242801D34(MEMORY[0x277D84F90]);
    sub_242801E44(&qword_27ECC28F8, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_2428B3528();
    sub_2428B33E8();
    (*(v18 + 8))(v17, v19);
    swift_willThrow();

    (*(v16 + 8))(v31, v30);

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_242800434()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_242800514()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2428005F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC2880);
  __swift_project_value_buffer(v10, qword_27ECC2880);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t static DeleteCalendarsIntent.ReportJunkChoice.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1760 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242800978()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v48 = &v31 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v31 - v3;
  v32 = sub_2428B3558();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v47 = sub_2428B3568();
  v8 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2940, &qword_2428B9F28);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2948, &qword_2428B9F30);
  v38 = v9;
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v36 = 2 * v10;
  v12 = swift_allocObject();
  v37 = v12;
  *(v12 + 16) = xmmword_2428B9770;
  v13 = (v12 + v11);
  v33 = *(v9 + 48);
  *v13 = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v41 = *MEMORY[0x277CC9110];
  v14 = *(v4 + 104);
  v46 = v4 + 104;
  v15 = v34;
  v14(v34);
  v31 = v14;
  sub_2428B3588();
  v16 = *(v8 + 56);
  v43 = v8 + 56;
  v44 = v16;
  v17 = v35;
  v16(v35, 1, 1, v47);
  v40 = sub_2428B3148();
  v18 = *(v40 - 8);
  v39 = *(v18 + 56);
  v42 = v18 + 56;
  v39(v48, 1, 1, v40);
  v45 = v13;
  v19 = v17;
  sub_2428B3178();
  v20 = &v13[v10];
  v21 = v38;
  v33 = *(v38 + 48);
  *v20 = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v22 = v32;
  (v14)(v15, v41, v32);
  v23 = v15;
  sub_2428B3588();
  v24 = v19;
  v25 = v19;
  v26 = v47;
  v44(v25, 1, 1, v47);
  v27 = v48;
  v39(v48, 1, 1, v40);
  sub_2428B3178();
  v28 = &v45[v36];
  v36 = *(v21 + 48);
  *v28 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  (v31)(v23, v41, v22);
  sub_2428B3588();
  v44(v24, 1, 1, v26);
  v39(v27, 1, 1, v40);
  sub_2428B3178();
  v29 = sub_242821750(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC2898 = v29;
  return result;
}

uint64_t static DeleteCalendarsIntent.ReportJunkChoice.caseDisplayRepresentations.getter()
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t static DeleteCalendarsIntent.ReportJunkChoice.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC2898 = a1;
}

uint64_t (*static DeleteCalendarsIntent.ReportJunkChoice.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24280115C@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC2898;
  return sub_2428B3218();
}

uint64_t sub_2428011DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC1768;
  sub_2428B3218();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC2898 = v1;
}

CalendarLink::DeleteCalendarsIntent::ReportJunkChoice_optional __swiftcall DeleteCalendarsIntent.ReportJunkChoice.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2428B4BB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeleteCalendarsIntent.ReportJunkChoice.rawValue.getter()
{
  v1 = 0x6F706552746E6F64;
  if (*v0 != 1)
  {
    v1 = 0x6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F706572;
  }
}

uint64_t sub_242801324(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F706552746E6F64;
  v4 = 0xEA00000000007472;
  if (v2 != 1)
  {
    v3 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74726F706572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6F706552746E6F64;
  v8 = 0xEA00000000007472;
  if (*a2 != 1)
  {
    v7 = 0x6C65636E6163;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74726F706572;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2428B4BF8();
  }

  return v11 & 1;
}

uint64_t sub_242801424()
{
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

uint64_t sub_2428014C4(uint64_t a1)
{
  sub_2428B4678();
}

uint64_t sub_242801550(uint64_t a1)
{
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

void sub_2428015F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA00000000007472;
  v5 = 0x6F706552746E6F64;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74726F706572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242801654@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1760 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2428016FC(uint64_t a1)
{
  v2 = sub_24280181C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_242801748()
{
  if (qword_27ECC1768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t sub_2428017C0(uint64_t a1)
{
  v2 = sub_2428020F0();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_24280181C()
{
  result = qword_27ECC28B8;
  if (!qword_27ECC28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC28B8);
  }

  return result;
}

unint64_t sub_242801870()
{
  result = qword_27ECC28D0;
  if (!qword_27ECC28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC28D0);
  }

  return result;
}

uint64_t sub_2428018F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1750 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2428019B8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28C0, &qword_2428B9A98);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28C8, &qword_2428B9AA0);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC28D8, &qword_2428B9AD0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_242801B4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return DeleteCalendarsIntent.perform()(a1);
}

unint64_t sub_242801C04(uint64_t a1, uint64_t a2)
{
  sub_2428B4C88();
  sub_2428B4678();
  v4 = sub_2428B4CB8();

  return sub_242801C7C(a1, a2, v4);
}

unint64_t sub_242801C7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2428B4BF8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_242801D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2950, &qword_2428B9F38);
    v3 = sub_2428B4BA8();
    v4 = a1 + 32;
    sub_2428B2F38();
    while (1)
    {
      sub_242802448(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_242801C04(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2428024B8(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_242801E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_242801E90()
{
  result = qword_280CDDC38;
  if (!qword_280CDDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC38);
  }

  return result;
}

unint64_t sub_242801EE8()
{
  result = qword_280CDDC90;
  if (!qword_280CDDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC90);
  }

  return result;
}

unint64_t sub_242801F40()
{
  result = qword_280CDDC68;
  if (!qword_280CDDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC68);
  }

  return result;
}

unint64_t sub_242801F98()
{
  result = qword_280CDDC30;
  if (!qword_280CDDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC30);
  }

  return result;
}

unint64_t sub_242801FF0()
{
  result = qword_280CDDC78;
  if (!qword_280CDDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC78);
  }

  return result;
}

unint64_t sub_242802044()
{
  result = qword_280CDDC70;
  if (!qword_280CDDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC70);
  }

  return result;
}

unint64_t sub_242802098()
{
  result = qword_280CDDC98;
  if (!qword_280CDDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC98);
  }

  return result;
}

unint64_t sub_2428020F0()
{
  result = qword_280CDDC80;
  if (!qword_280CDDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC80);
  }

  return result;
}

unint64_t sub_242802198()
{
  result = qword_280CDDC58;
  if (!qword_280CDDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC58);
  }

  return result;
}

unint64_t sub_2428021F0()
{
  result = qword_280CDDC20;
  if (!qword_280CDDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC20);
  }

  return result;
}

unint64_t sub_242802248()
{
  result = qword_280CDDC48;
  if (!qword_280CDDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC48);
  }

  return result;
}

unint64_t sub_2428022E4()
{
  result = qword_27ECC2920;
  if (!qword_27ECC2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2920);
  }

  return result;
}

unint64_t sub_242802344()
{
  result = qword_280CDDC08;
  if (!qword_280CDDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC08);
  }

  return result;
}

unint64_t sub_24280239C()
{
  result = qword_280CDDC10;
  if (!qword_280CDDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDC10);
  }

  return result;
}

uint64_t sub_242802448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2958, &unk_2428B9F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2428024B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2428024D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC2960);
  __swift_project_value_buffer(v10, qword_27ECC2960);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t LocationEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v1 - 8);
  v27 = v21 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - v4;
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B3558();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B45F8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2428B3568();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B2C68();
  if (v30)
  {
    return sub_2428B3128();
  }

  v22 = v12;
  v23 = v14;
  v15 = v7;
  v24 = v11;
  v25 = v9;
  v17 = v26;
  v16 = v27;
  sub_2428B2C68();
  if (v30)
  {
    return sub_2428B3128();
  }

  v21[1] = v29;
  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_27ECD4500);
  (*(v17 + 16))(v25, v19, v15);
  sub_2428B36B8();
  sub_2428B3578();
  (*(v22 + 56))(v5, 1, 1, v24);
  v20 = sub_2428B3148();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  return sub_2428B3178();
}

uint64_t sub_242802C58(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242802DF4(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.address.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242802FB4(uint64_t *a1, uint64_t *a2)
{
  sub_2428066BC(*a1, a1[1]);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.geoLocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242803190(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.radius.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24280335C(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.isImprecise.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242803528(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.contactLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2428036F8(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.mapKitHandleString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t LocationEntity.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = sub_2428B3558();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B45F8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2428B3568();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v11 = *MEMORY[0x277CC9110];
  v12 = *(v4 + 104);
  v12(v6, v11, v3);
  sub_2428B3578();
  v34 = v10;
  v35 = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v12(v6, v11, v3);
  sub_2428B3578();
  v39 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2990, &qword_2428B9F68);
  sub_2428B4578();
  sub_2428B36B8();
  v12(v6, v11, v3);
  sub_2428B3578();
  sub_242805E10();
  v37 = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC29A0, &unk_2428B9F70);
  sub_2428B4578();
  sub_2428B36B8();
  v12(v6, v11, v3);
  sub_2428B3578();
  v36 = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v12(v6, v11, v3);
  sub_2428B3578();
  v41 = sub_2428B2D78();
  sub_2428B4578();
  sub_2428B36B8();
  v12(v6, v11, v3);
  sub_2428B3578();
  v40 = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v12(v6, v11, v3);
  v13 = v35;
  sub_2428B3578();
  v14 = sub_2428B2D68();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42[0] = sub_2428B3A38();
  v42[1] = v15;
  sub_2428B2C78();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42[0] = sub_2428B3A58();
  v42[1] = v16;
  sub_2428B2C78();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_2428B39F8();
  if (v17)
  {
    LocationEntity.GeoLocationEntity.init(_:)(v17, v42);
    v18 = *v42;
  }

  else
  {
    v18 = 0uLL;
  }

  *v42 = v18;
  v19 = v37;
  sub_2428B2C78();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A48();
  v42[0] = v20;
  v21 = v36;
  sub_2428B2C78();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LOBYTE(v42[0]) = sub_2428B3A08() & 1;
  sub_2428B2C78();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42[0] = sub_2428B3A18();
  v42[1] = v22;
  sub_2428B2C78();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_2428B3A28();
  if (v24 >> 60 == 15)
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = v23;
    v28 = v24;
    v25 = sub_2428B3608();
    v26 = v29;
    sub_242805E64(v27, v28);
  }

  v42[0] = v25;
  v42[1] = v26;
  sub_2428B2C78();
  v30 = v38;
  v31 = v39;
  *v38 = v13;
  v30[1] = v31;
  v30[2] = v19;
  v30[3] = v21;
  v32 = v40;
  v30[4] = v41;
  v30[5] = v32;
  v30[6] = v14;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void LocationEntity.GeoLocationEntity.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  v19 = a1;
  v2 = sub_2428B3558();
  v17 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC29A0, &unk_2428B9F70);
  sub_2428B4578();
  sub_2428B36B8();
  v9 = *MEMORY[0x277CC9110];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  sub_2428B3578();
  v11 = sub_2428B2D88();
  v12 = v18;
  *v18 = v11;
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v17);
  sub_2428B3578();
  v12[1] = sub_2428B2D88();
  v13 = v19;
  [v19 coordinate];
  v20 = v14;
  sub_2428B2C78();
  [v13 coordinate];
  v20 = v15;
  sub_2428B2C78();
}

uint64_t LocationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v18 = a1;
  v1 = sub_2428B3558();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2428B36C8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B45F8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B3568();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  HIDWORD(v15) = *MEMORY[0x277CC9110];
  v9 = *(v2 + 104);
  v9(v4);
  v16 = v2 + 104;
  v17 = v9;
  sub_2428B3578();
  v19 = v8;
  v10 = sub_2428B2D68();
  v11 = v18;
  *v18 = v10;
  sub_2428B4578();
  sub_2428B36B8();
  v12 = HIDWORD(v15);
  (v9)(v4, HIDWORD(v15), v1);
  sub_2428B3578();
  v11[1] = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2990, &qword_2428B9F68);
  sub_2428B4578();
  sub_2428B36B8();
  v13 = v17;
  (v17)(v4, v12, v1);
  sub_2428B3578();
  sub_242805E10();
  v11[2] = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC29A0, &unk_2428B9F70);
  sub_2428B4578();
  sub_2428B36B8();
  (v13)(v4, v12, v1);
  sub_2428B3578();
  v11[3] = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  (v13)(v4, v12, v1);
  sub_2428B3578();
  v11[4] = sub_2428B2D78();
  sub_2428B4578();
  sub_2428B36B8();
  (v13)(v4, v12, v1);
  sub_2428B3578();
  v11[5] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  (v13)(v4, v12, v1);
  sub_2428B3578();
  result = sub_2428B2D68();
  v11[6] = result;
  return result;
}

id LocationEntity.ekStructuredLocation.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC5AD0]) init];
  sub_2428B2C68();
  if (v12)
  {
    v1 = sub_2428B4608();
  }

  else
  {
    v1 = 0;
  }

  [v0 setTitle_];

  sub_2428B2C68();
  if (v12)
  {
    v2 = sub_2428B4608();
  }

  else
  {
    v2 = 0;
  }

  [v0 setAddress_];

  sub_2428B2C68();
  if (v11)
  {
    sub_2428B2C68();
    sub_2428B2C68();
    v3 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v10 longitude:v10];
    sub_242805E78(v11, v12);
  }

  else
  {
    v3 = 0;
  }

  [v0 setGeoLocation_];

  sub_2428B2C68();
  [v0 setRadius_];
  sub_2428B2C68();
  [v0 setImprecise_];
  sub_2428B2C68();
  if (v12)
  {
    v4 = sub_2428B4608();
  }

  else
  {
    v4 = 0;
  }

  [v0 setContactLabel_];

  sub_2428B2C68();
  v5 = v12;
  if (v12)
  {
    sub_2428B3218();
    v6 = sub_2428B35E8();
    v8 = v7;
    swift_bridgeObjectRelease_n();
    if (v8 >> 60 == 15)
    {
      v5 = 0;
    }

    else
    {
      v5 = sub_2428B35F8();
      sub_242805E64(v6, v8);
    }
  }

  [v0 setMapKitHandle_];

  return v0;
}

uint64_t sub_242804D60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC2978);
  __swift_project_value_buffer(v10, qword_27ECC2978);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t sub_242805084@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2428B3338();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t LocationEntity.GeoLocationEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_2428B36C8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3558();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2428B45F8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2428B3568();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_27ECD4500);
  (*(v9 + 16))(v11, v15, v8);
  sub_2428B36B8();
  sub_2428B3578();
  (*(v14 + 56))(v6, 1, 1, v13);
  v16 = sub_2428B3148();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  return sub_2428B3178();
}

uint64_t sub_2428054BC(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.GeoLocationEntity.latitude.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t sub_2428055E0(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*LocationEntity.GeoLocationEntity.longitude.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t LocationEntity.GeoLocationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC29A0, &unk_2428B9F70);
  sub_2428B4578();
  sub_2428B36B8();
  v9 = *MEMORY[0x277CC9110];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  sub_2428B3578();
  *a1 = sub_2428B2D88();
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  result = sub_2428B2D88();
  a1[1] = result;
  return result;
}

uint64_t sub_2428059E8(uint64_t a1)
{
  v2 = sub_242806750();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_242805A34(uint64_t a1)
{
  sub_242806750();

  return sub_2428B28C8();
}

uint64_t sub_242805AA4(uint64_t a1)
{
  v2 = sub_242805E10();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242805B08(uint64_t a1)
{
  v2 = sub_24280610C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_242805B58(uint64_t a1)
{
  v2 = sub_2428066FC();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_242805BA4(uint64_t a1)
{
  sub_2428066FC();

  return sub_2428B28C8();
}

uint64_t sub_242805C14@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2428B3338();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_242805CB0(uint64_t a1)
{
  v2 = sub_242806258();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242805D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2427DC6B4;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_242805DC4(uint64_t a1)
{
  v2 = sub_2428064FC();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_242805E10()
{
  result = qword_27ECC2998;
  if (!qword_27ECC2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2998);
  }

  return result;
}

uint64_t sub_242805E64(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2427D357C(result, a2);
  }

  return result;
}

uint64_t sub_242805E78(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_242805EC0()
{
  result = qword_280CDDF00;
  if (!qword_280CDDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF00);
  }

  return result;
}

unint64_t sub_242805F18()
{
  result = qword_280CDDEF0;
  if (!qword_280CDDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEF0);
  }

  return result;
}

unint64_t sub_242805F70()
{
  result = qword_280CDDEC8;
  if (!qword_280CDDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEC8);
  }

  return result;
}

unint64_t sub_24280600C()
{
  result = qword_280CDDEE8;
  if (!qword_280CDDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEE8);
  }

  return result;
}

unint64_t sub_242806060()
{
  result = qword_280CDDEE0;
  if (!qword_280CDDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEE0);
  }

  return result;
}

unint64_t sub_2428060B4()
{
  result = qword_280CDDEF8;
  if (!qword_280CDDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEF8);
  }

  return result;
}

unint64_t sub_24280610C()
{
  result = qword_280CDDED8;
  if (!qword_280CDDED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDED8);
  }

  return result;
}

unint64_t sub_242806160()
{
  result = qword_27ECC2358;
  if (!qword_27ECC2358)
  {
    sub_2428B36A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2358);
  }

  return result;
}

unint64_t sub_242806200()
{
  result = qword_280CDDED0;
  if (!qword_280CDDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDED0);
  }

  return result;
}

unint64_t sub_242806258()
{
  result = qword_280CDDEC0;
  if (!qword_280CDDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDEC0);
  }

  return result;
}

unint64_t sub_2428062B0()
{
  result = qword_280CDE310;
  if (!qword_280CDE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE310);
  }

  return result;
}

unint64_t sub_242806308()
{
  result = qword_280CDE300;
  if (!qword_280CDE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE300);
  }

  return result;
}

unint64_t sub_242806360()
{
  result = qword_280CDE2D8;
  if (!qword_280CDE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2D8);
  }

  return result;
}

unint64_t sub_2428063FC()
{
  result = qword_280CDE2F8;
  if (!qword_280CDE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2F8);
  }

  return result;
}

unint64_t sub_242806450()
{
  result = qword_280CDE2F0;
  if (!qword_280CDE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2F0);
  }

  return result;
}

unint64_t sub_2428064A4()
{
  result = qword_280CDE308;
  if (!qword_280CDE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE308);
  }

  return result;
}

unint64_t sub_2428064FC()
{
  result = qword_280CDE2E8;
  if (!qword_280CDE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2E8);
  }

  return result;
}

unint64_t sub_242806598()
{
  result = qword_280CDE2E0;
  if (!qword_280CDE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2E0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_242806608(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_242806650(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2428066BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    sub_2428B2F38();

    return sub_2428B2F38();
  }

  return result;
}

unint64_t sub_2428066FC()
{
  result = qword_27ECC29E8;
  if (!qword_27ECC29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC29E8);
  }

  return result;
}

unint64_t sub_242806750()
{
  result = qword_27ECC29F0;
  if (!qword_27ECC29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC29F0);
  }

  return result;
}

uint64_t static InternalBuildAssertion._verifyRunningOnInternalBuild()()
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {
    return FunctionReplacement();
  }

  sub_2428B2938();
  sub_242806880();
  swift_allocError();
  sub_2428B2928();
  return swift_willThrow();
}

unint64_t sub_242806880()
{
  result = qword_27ECC1A80;
  if (!qword_27ECC1A80)
  {
    sub_2428B2938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1A80);
  }

  return result;
}

uint64_t sub_242806928()
{
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_24280697C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_242806B64(a1, &v10 - v7);
  sub_242806B64(v8, v6);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_242806BD4(v8);
}

uint64_t sub_242806A64()
{
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_242806AB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  MEMORY[0x28223BE20](v2 - 8);
  sub_242806B64(a1, &v5 - v3);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_242806BD4(a1);
}

uint64_t sub_242806B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242806BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_242806C3C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A18);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242806CEC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A28);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242806D9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A30);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

double sub_242806E34@<D0>(_OWORD *a2@<X8>)
{
  sub_2428B2F38();
  sub_2428B4328();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_242806E8C(uint64_t *a1, void *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_242806EE4()
{
  sub_2428B2F38();
  sub_2428B4328();

  return v1;
}

uint64_t sub_242806F30(uint64_t a1, uint64_t a2)
{
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_242806F7C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A38);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_242807014@<X0>(_BYTE *a2@<X8>)
{
  sub_2428B2F38();
  sub_2428B4328();

  *a2 = v4;
  return result;
}

uint64_t sub_24280706C()
{
  sub_2428B2F38();
  sub_2428B4328();

  return v1;
}

uint64_t sub_2428070B8(char a1)
{
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_242807104(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC2A40);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D4714;
}

uint64_t static AttendeeEntityRepresentation.instance(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A20, &qword_2428BA500);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-1] - v6;
  type metadata accessor for AttendeeEntityRepresentation(0);
  sub_2428080B4(&qword_27ECC2A48, &protocol conformance descriptor for AttendeeEntityRepresentation);
  v8 = sub_2428B41E8();
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v21[3] = v9;
  v21[4] = *(v10 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
  sub_2428A8840(v21, v7);
  v13 = sub_2428B2BD8();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  sub_242806B64(v7, v5);
  sub_2428B2F38();
  sub_2428B4338();

  sub_242806BD4(v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_2428B39D8();
  v15 = 0x605040302010007uLL >> (8 * v14);
  if (v14 >= 8)
  {
    LOBYTE(v15) = 7;
  }

  LOBYTE(v21[0]) = v15;
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_2428B39C8();
  v17 = 0x302010004uLL >> (8 * v16);
  if (v16 >= 5)
  {
    LOBYTE(v17) = 4;
  }

  LOBYTE(v21[0]) = v17;
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21[0] = sub_2428B39E8();
  v21[1] = v18;
  sub_2428B2F38();
  sub_2428B4338();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LOBYTE(v21[0]) = sub_2428B39B8() == 2;
  sub_2428B2F38();
  sub_2428B4338();

  return v8;
}

CalendarLink::AttendeeEntityRepresentation::AttendeeEntityParticipantStatusRepresentation_optional __swiftcall AttendeeEntityRepresentation.AttendeeEntityParticipantStatusRepresentation.init(_:)(EKParticipantStatus a1)
{
  v2 = 0x605040302010007uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return a1;
}

CalendarLink::AttendeeEntityRepresentation::AttendeeTypeRepresentation_optional __swiftcall AttendeeEntityRepresentation.AttendeeTypeRepresentation.init(_:)(EKParticipantType a1)
{
  v2 = 0x302010004uLL >> (8 * a1);
  if (a1 >= (EKParticipantTypeGroup|EKParticipantTypePerson))
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return a1;
}

uint64_t type metadata accessor for AttendeeEntityRepresentation(uint64_t a1)
{
  result = qword_27ECC2B58;
  if (!qword_27ECC2B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttendeeEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27ECC2A18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A50, &qword_2428BA508);
  swift_allocObject();
  *(v1 + v7) = sub_2428B4308();
  v8 = qword_27ECC2A28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A58, &qword_2428BA510);
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v9 = qword_27ECC2A30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A60, &unk_2428BA518);
  swift_allocObject();
  *(v1 + v9) = sub_2428B4308();
  v10 = qword_27ECC2A38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1E40, &qword_2428B6580);
  swift_allocObject();
  *(v1 + v10) = sub_2428B4308();
  v11 = qword_27ECC2A40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A68, &qword_2428BA528);
  swift_allocObject();
  *(v1 + v11) = sub_2428B4308();
  (*(v4 + 16))(v6, a1, v3);
  v12 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v12;
}

uint64_t sub_2428077E0()
{
}

uint64_t AttendeeEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return v0;
}

uint64_t AttendeeEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  sub_2428B2F38();

  return swift_deallocClassInstance();
}

uint64_t sub_242807990(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2428079F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242807A44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

CalendarLink::AttendeeEntityRepresentation::AttendeeEntityParticipantStatusRepresentation_optional __swiftcall AttendeeEntityRepresentation.AttendeeEntityParticipantStatusRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242807B64(uint64_t a1)
{
  v2 = sub_242808CBC();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_242807BA0(uint64_t a1)
{
  v2 = sub_242808CBC();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242807BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428081AC();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_242807C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242808CBC();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242807C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428081AC();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

CalendarLink::AttendeeEntityRepresentation::AttendeeTypeRepresentation_optional __swiftcall AttendeeEntityRepresentation.AttendeeTypeRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242807DA0(uint64_t a1)
{
  v2 = sub_242808C68();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_242807DDC(uint64_t a1)
{
  v2 = sub_242808C68();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242807E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_242808498();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_242807E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242808C68();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242807EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_242808498();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_2428080B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttendeeEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2428080FC()
{
  result = qword_27ECC2AB8;
  if (!qword_27ECC2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AB8);
  }

  return result;
}

unint64_t sub_242808154()
{
  result = qword_27ECC2AC0;
  if (!qword_27ECC2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AC0);
  }

  return result;
}

unint64_t sub_2428081AC()
{
  result = qword_27ECC2AC8;
  if (!qword_27ECC2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AC8);
  }

  return result;
}

unint64_t sub_242808204()
{
  result = qword_27ECC2AD0;
  if (!qword_27ECC2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AD0);
  }

  return result;
}

unint64_t sub_24280825C()
{
  result = qword_27ECC2AD8;
  if (!qword_27ECC2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AD8);
  }

  return result;
}

unint64_t sub_2428082E0()
{
  result = qword_27ECC2AF0;
  if (!qword_27ECC2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AF0);
  }

  return result;
}

unint64_t sub_242808338()
{
  result = qword_27ECC2AF8;
  if (!qword_27ECC2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2AF8);
  }

  return result;
}

unint64_t sub_242808390()
{
  result = qword_27ECC2B00;
  if (!qword_27ECC2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B00);
  }

  return result;
}

unint64_t sub_2428083E8()
{
  result = qword_27ECC2B08;
  if (!qword_27ECC2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B08);
  }

  return result;
}

unint64_t sub_242808440()
{
  result = qword_27ECC2B10;
  if (!qword_27ECC2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B10);
  }

  return result;
}

unint64_t sub_242808498()
{
  result = qword_27ECC2B18;
  if (!qword_27ECC2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B18);
  }

  return result;
}

unint64_t sub_2428084F0()
{
  result = qword_27ECC2B20;
  if (!qword_27ECC2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B20);
  }

  return result;
}

unint64_t sub_242808548()
{
  result = qword_27ECC2B28;
  if (!qword_27ECC2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B28);
  }

  return result;
}

unint64_t sub_2428085CC()
{
  result = qword_27ECC2B40;
  if (!qword_27ECC2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B40);
  }

  return result;
}

unint64_t sub_242808624()
{
  result = qword_27ECC2B48;
  if (!qword_27ECC2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B48);
  }

  return result;
}

unint64_t sub_24280867C()
{
  result = qword_27ECC2B50;
  if (!qword_27ECC2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B50);
  }

  return result;
}

unint64_t sub_242808C68()
{
  result = qword_27ECC2B68;
  if (!qword_27ECC2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B68);
  }

  return result;
}

unint64_t sub_242808CBC()
{
  result = qword_27ECC2B70;
  if (!qword_27ECC2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2B70);
  }

  return result;
}

uint64_t CalendarEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t CalendarEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t CalendarEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalendarEntityRepresentation(uint64_t a1)
{
  result = qword_27ECC2BC0;
  if (!qword_27ECC2BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242809138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2428091CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242809254(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242809298(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_24280937C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_2428093A0, 0, 0);
}

uint64_t sub_2428093A0()
{
  sub_2428B4248();
  if (*(v0 + 80))
  {
    sub_2427D3564((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_2428094D8;

    return MEMORY[0x28213DD78](v1, v2);
  }

  else
  {
    sub_2427D34A8(v0 + 56);
    sub_2427D3510();
    swift_allocError();
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2428094D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v5 = sub_2427DAE40;
  }

  else
  {
    v5 = sub_2428095F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2428095F0()
{
  sub_2428B3458();
  swift_allocObject();
  sub_2428B3448();
  sub_2428B3838();
  sub_2428B37F8();
  swift_allocObject();
  sub_2428B3218();
  v0[12] = sub_2428B37E8();
  sub_242809CEC(&qword_27ECC2BD0, MEMORY[0x277CF7B38], MEMORY[0x277CF7B28]);
  sub_2428B3428();
  v1 = v0[17];
  v2 = v0[18];

  sub_2427D357C(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t TransferableCalendarEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t TransferableCalendarEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t TransferableCalendarEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransferableCalendarEntityRepresentation(uint64_t a1)
{
  result = qword_27ECC2C20;
  if (!qword_27ECC2C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242809BA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242809C50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242809CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242809D34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t dispatch thunk of TransferableCalendarEntityRepresentation.calendar(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + class metadata base offset for TransferableCalendarEntityRepresentation) + **(*v2 + class metadata base offset for TransferableCalendarEntityRepresentation));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2427CD274;

  return v8(a1, a2);
}

uint64_t type metadata accessor for Location(uint64_t a1)
{
  result = qword_27ECC2C30;
  if (!qword_27ECC2C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242809F8C(uint64_t a1)
{
  result = sub_2428B37C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id sub_24280A010()
{
  v1 = v0;
  v2 = sub_2428B37C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Location(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24280A838(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2428B4608();

    v10 = [objc_opt_self() locationWithTitle_];
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = [objc_allocWithZone(MEMORY[0x277CC5AD0]) init];
    sub_2428B3788();
    if (v11)
    {
      v12 = sub_2428B4608();
    }

    else
    {
      v12 = 0;
    }

    [v10 setTitle_];

    v13 = sub_2428B3798();
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*&v13 longitude:v14];
    }

    [v10 setGeoLocation_];

    sub_2428B37B8();
    if (v17)
    {
      v18 = sub_2428B4608();
    }

    else
    {
      v18 = 0;
    }

    [v10 setAddress_];

    (*(v3 + 8))(v5, v2);
  }

  return v10;
}

uint64_t sub_24280A2A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2C60, &qword_2428BB150);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  v4 = type metadata accessor for Location(0);
  v5 = sub_24280A938();
  MEMORY[0x245D19EE0](v5, v4, &type metadata for Location.PlaceDescriptorResolver, v5);
  v6 = sub_24280A98C();
  MEMORY[0x245D19EE0](v6, v4, &type metadata for Location.StringResolver, v6);
  sub_24280A8F0(&qword_27ECC2C40, type metadata accessor for Location, &unk_2428BB0B8);
  sub_2428B33A8();
  v8[0] = v5;
  v8[1] = &type metadata for Location.PlaceDescriptorResolver;
  sub_2428B3398();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24280A454(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24280A474, 0, 0);
}

uint64_t sub_24280A474()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2428B37C8();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for Location(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24280A564(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_24280A58C, 0, 0);
}

uint64_t sub_24280A58C()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v3 = type metadata accessor for Location(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v5 = v0[1];
  sub_2428B3218();

  return v5();
}

uint64_t sub_24280A660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2C58, &qword_2428BB148);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2428B7940;
  v1 = sub_2428B37C8();
  v2 = sub_24280A8F0(&qword_27ECC2C50, MEMORY[0x277CCB120], MEMORY[0x277CE4198]);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_24280A89C();
  *(v0 + 48) = MEMORY[0x277D837D0];
  *(v0 + 56) = v3;
  return v0;
}

unint64_t sub_24280A704@<X0>(uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24280A838(v4, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v6;
    v7 = v6[1];
    a2[3] = MEMORY[0x277D837D0];
    result = sub_24280A89C();
    a2[4] = result;
    *a2 = v8;
    a2[1] = v7;
  }

  else
  {
    v10 = sub_2428B37C8();
    a2[3] = v10;
    a2[4] = sub_24280A8F0(&qword_27ECC2C50, MEMORY[0x277CCB120], MEMORY[0x277CE4198]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(*(v10 - 8) + 32))(boxed_opaque_existential_1, v6, v10);
  }

  return result;
}

uint64_t sub_24280A838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24280A89C()
{
  result = qword_27ECC2C48;
  if (!qword_27ECC2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C48);
  }

  return result;
}

uint64_t sub_24280A8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24280A938()
{
  result = qword_27ECC2C68;
  if (!qword_27ECC2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C68);
  }

  return result;
}

unint64_t sub_24280A98C()
{
  result = qword_27ECC2C70;
  if (!qword_27ECC2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C70);
  }

  return result;
}

unint64_t sub_24280AA00()
{
  result = qword_27ECC2C78;
  if (!qword_27ECC2C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC2C80, &qword_2428BB188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C78);
  }

  return result;
}

unint64_t sub_24280AA68()
{
  result = qword_27ECC2C88;
  if (!qword_27ECC2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C88);
  }

  return result;
}

unint64_t sub_24280AAC0()
{
  result = qword_27ECC2C90;
  if (!qword_27ECC2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C90);
  }

  return result;
}

unint64_t sub_24280AB18()
{
  result = qword_27ECC2C98;
  if (!qword_27ECC2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2C98);
  }

  return result;
}

unint64_t sub_24280AB74()
{
  result = qword_27ECC2CA0;
  if (!qword_27ECC2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2CA0);
  }

  return result;
}

uint64_t sub_24280AC1C()
{
  v0 = sub_2428B3558();
  __swift_allocate_value_buffer(v0, qword_27ECD4500);
  v1 = __swift_project_value_buffer(v0, qword_27ECD4500);
  *v1 = type metadata accessor for LocalizedStringUtils();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_24280ACB8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v47 = a6;
  v8 = sub_2428B2EF8();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_2428B30E8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2428B30C8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v41 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = &v40 - v22;
  v23 = a1[7];
  v70 = a1[6];
  v71 = v23;
  v24 = a1[9];
  v72 = a1[8];
  v73 = v24;
  v25 = a1[3];
  v66 = a1[2];
  v67 = v25;
  v26 = a1[5];
  v68 = a1[4];
  v69 = v26;
  v27 = a1[1];
  v64 = *a1;
  v65 = v27;
  v60 = v43;
  v61 = v44;
  v62 = v45;
  v63 = v46;
  v28 = v6[7];
  v56 = v6[6];
  v57 = v28;
  v58 = v6[8];
  v59 = *(v6 + 18);
  v29 = v6[3];
  v52 = v6[2];
  v53 = v29;
  v30 = v6[5];
  v54 = v6[4];
  v55 = v30;
  v31 = v6[1];
  v50 = *v6;
  v51 = v31;
  sub_24281E58C();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v15 + 8))(v17, v14);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_2427E0980(v13, &qword_27ECC2F28, &qword_2428BB680);
    v33 = v48;
    v32 = v49;
    (*(v48 + 104))(v10, *MEMORY[0x277CB9F18], v49);
    sub_2427C28E0();
    sub_242822644();
    sub_2428B2BE8();
    return (*(v33 + 8))(v10, v32);
  }

  else
  {
    v35 = v48;
    v36 = v49;
    v37 = v42;
    (*(v19 + 32))(v42, v13, v18);
    v38 = v41;
    (*(v19 + 16))(v41, v37, v18);
    if ((*(v19 + 88))(v38, v18) == *MEMORY[0x277CBA168])
    {
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BF8();
      return (*(v19 + 8))(v37, v18);
    }

    else
    {
      (*(v35 + 104))(v10, *MEMORY[0x277CB9F18], v36);
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BE8();
      (*(v35 + 8))(v10, v36);
      v39 = *(v19 + 8);
      v39(v37, v18);
      return (v39)(v38, v18);
    }
  }
}

uint64_t sub_24280B1C4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v47 = a6;
  v8 = sub_2428B2EF8();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_2428B30E8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2428B30C8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v41 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = &v40 - v22;
  v23 = a1[7];
  v69 = a1[6];
  v70 = v23;
  v24 = a1[9];
  v71 = a1[8];
  v72 = v24;
  v25 = a1[3];
  v65 = a1[2];
  v66 = v25;
  v26 = a1[5];
  v67 = a1[4];
  v68 = v26;
  v27 = a1[1];
  v63 = *a1;
  v64 = v27;
  v59 = v43;
  v60 = v44;
  v61 = v45;
  v62 = v46;
  v28 = v6[7];
  v56 = v6[6];
  v57 = v28;
  v58 = v6[8];
  v29 = v6[3];
  v52 = v6[2];
  v53 = v29;
  v30 = v6[5];
  v54 = v6[4];
  v55 = v30;
  v31 = v6[1];
  v50 = *v6;
  v51 = v31;
  sub_242822740();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v15 + 8))(v17, v14);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_2427E0980(v13, &qword_27ECC2F28, &qword_2428BB680);
    v33 = v48;
    v32 = v49;
    (*(v48 + 104))(v10, *MEMORY[0x277CB9F18], v49);
    sub_2427C28E0();
    sub_242822644();
    sub_2428B2BE8();
    return (*(v33 + 8))(v10, v32);
  }

  else
  {
    v35 = v48;
    v36 = v49;
    v37 = v42;
    (*(v19 + 32))(v42, v13, v18);
    v38 = v41;
    (*(v19 + 16))(v41, v37, v18);
    if ((*(v19 + 88))(v38, v18) == *MEMORY[0x277CBA168])
    {
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BF8();
      return (*(v19 + 8))(v37, v18);
    }

    else
    {
      (*(v35 + 104))(v10, *MEMORY[0x277CB9F18], v36);
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BE8();
      (*(v35 + 8))(v10, v36);
      v39 = *(v19 + 8);
      v39(v37, v18);
      return (v39)(v38, v18);
    }
  }
}

uint64_t sub_24280B6C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v44 = a2;
  v45 = a3;
  v48 = a6;
  v8 = sub_2428B2EF8();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_2428B30E8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2428B30C8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v42 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v43 = &v41 - v22;
  v23 = a1[7];
  v72 = a1[6];
  v73 = v23;
  v24 = a1[9];
  v74 = a1[8];
  v75 = v24;
  v25 = a1[3];
  v68 = a1[2];
  v69 = v25;
  v26 = a1[5];
  v70 = a1[4];
  v71 = v26;
  v27 = a1[1];
  v66 = *a1;
  v67 = v27;
  v62 = v44;
  v63 = v45;
  v64 = v46;
  v65 = v47;
  v28 = v6[9];
  v59 = v6[8];
  v60 = v28;
  v61 = v6[10];
  v29 = v6[5];
  v55 = v6[4];
  v56 = v29;
  v30 = v6[7];
  v57 = v6[6];
  v58 = v30;
  v31 = v6[1];
  v51 = *v6;
  v52 = v31;
  v32 = v6[3];
  v53 = v6[2];
  v54 = v32;
  sub_2428226EC();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v15 + 8))(v17, v14);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_2427E0980(v13, &qword_27ECC2F28, &qword_2428BB680);
    v34 = v49;
    v33 = v50;
    (*(v49 + 104))(v10, *MEMORY[0x277CB9F18], v50);
    sub_2427C28E0();
    sub_242822644();
    sub_2428B2BE8();
    return (*(v34 + 8))(v10, v33);
  }

  else
  {
    v36 = v49;
    v37 = v50;
    v38 = v43;
    (*(v19 + 32))(v43, v13, v18);
    v39 = v42;
    (*(v19 + 16))(v42, v38, v18);
    if ((*(v19 + 88))(v39, v18) == *MEMORY[0x277CBA168])
    {
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BF8();
      return (*(v19 + 8))(v38, v18);
    }

    else
    {
      (*(v36 + 104))(v10, *MEMORY[0x277CB9F18], v37);
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BE8();
      (*(v36 + 8))(v10, v37);
      v40 = *(v19 + 8);
      v40(v38, v18);
      return (v40)(v39, v18);
    }
  }
}

uint64_t sub_24280BBD4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v47 = a6;
  v8 = sub_2428B2EF8();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_2428B30E8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2428B30C8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v41 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = &v40 - v22;
  v23 = a1[7];
  v68 = a1[6];
  v69 = v23;
  v24 = a1[9];
  v70 = a1[8];
  v71 = v24;
  v25 = a1[3];
  v64 = a1[2];
  v65 = v25;
  v26 = a1[5];
  v66 = a1[4];
  v67 = v26;
  v27 = a1[1];
  v62 = *a1;
  v63 = v27;
  v58 = v43;
  v59 = v44;
  v60 = v45;
  v61 = v46;
  v28 = v6[5];
  v54 = v6[4];
  v55 = v28;
  v29 = v6[7];
  v56 = v6[6];
  v57 = v29;
  v30 = v6[1];
  v50 = *v6;
  v51 = v30;
  v31 = v6[3];
  v52 = v6[2];
  v53 = v31;
  sub_2428225F0();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v15 + 8))(v17, v14);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_2427E0980(v13, &qword_27ECC2F28, &qword_2428BB680);
    v33 = v48;
    v32 = v49;
    (*(v48 + 104))(v10, *MEMORY[0x277CB9F18], v49);
    sub_2427C28E0();
    sub_242822644();
    sub_2428B2BE8();
    return (*(v33 + 8))(v10, v32);
  }

  else
  {
    v35 = v48;
    v36 = v49;
    v37 = v42;
    (*(v19 + 32))(v42, v13, v18);
    v38 = v41;
    (*(v19 + 16))(v41, v37, v18);
    if ((*(v19 + 88))(v38, v18) == *MEMORY[0x277CBA168])
    {
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BF8();
      return (*(v19 + 8))(v37, v18);
    }

    else
    {
      (*(v35 + 104))(v10, *MEMORY[0x277CB9F18], v36);
      sub_2427C28E0();
      sub_242822644();
      sub_2428B2BE8();
      (*(v35 + 8))(v10, v36);
      v39 = *(v19 + 8);
      v39(v37, v18);
      return (v39)(v38, v18);
    }
  }
}

uint64_t sub_24280C0D0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a8;
  v42 = a7;
  v41 = a6;
  v40 = a5;
  v39 = a4;
  v38 = a3;
  v44 = a9;
  v11 = sub_2428B2EF8();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F28, &qword_2428BB680);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  v17 = sub_2428B30E8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2428B30C8();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v37 = &v36 - v26;
  v27 = a1[3];
  v56 = a1[2];
  v57 = v27;
  v58 = a1[4];
  v28 = a1[1];
  v54 = *a1;
  v55 = v28;
  v50 = a2;
  v51 = v38;
  v52 = v39;
  v53 = v40;
  v47 = v41;
  v48 = v42;
  v49 = v43;
  sub_242822548();
  sub_2428B2A18();
  sub_2428B30D8();
  (*(v18 + 8))(v20, v17);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_2427E0980(v16, &qword_27ECC2F28, &qword_2428BB680);
    v30 = v45;
    v29 = v46;
    (*(v45 + 104))(v13, *MEMORY[0x277CB9F18], v46);
    sub_2427E3430();
    sub_24282259C();
    sub_2428B2BE8();
    return (*(v30 + 8))(v13, v29);
  }

  else
  {
    v32 = v45;
    v33 = v46;
    v34 = v37;
    (*(v22 + 32))(v37, v16, v21);
    (*(v22 + 16))(v25, v34, v21);
    if ((*(v22 + 88))(v25, v21) == *MEMORY[0x277CBA168])
    {
      sub_2427E3430();
      sub_24282259C();
      sub_2428B2BF8();
      return (*(v22 + 8))(v34, v21);
    }

    else
    {
      (*(v32 + 104))(v13, *MEMORY[0x277CB9F18], v33);
      sub_2427E3430();
      sub_24282259C();
      sub_2428B2BE8();
      (*(v32 + 8))(v13, v33);
      v35 = *(v22 + 8);
      v35(v34, v21);
      return (v35)(v25, v21);
    }
  }
}

uint64_t sub_24280C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24280C694, 0, 0);
}

uint64_t sub_24280C694()
{
  sub_242822BFC(0, &qword_27ECC2700, 0x277CC5A28);
  v1 = sub_2428B46B8();
  v2 = [objc_opt_self() spanDecisionInfoForEvents_];
  *(v0 + 48) = v2;

  sub_2428B2DC8();
  if (*(v0 + 80))
  {
    if (*(v0 + 80) != 3)
    {
      v10 = [v2 proposeFuture];

      if (v10)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      goto LABEL_14;
    }

    if ([v2 shouldRequestSpan])
    {
      v3 = *(v0 + 40);
      if ([v2 proposeFuture])
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2138, &qword_2428B7958);
      v5 = swift_allocObject();
      *(v0 + 56) = v5;
      *(v5 + 16) = xmmword_2428B7940;
      *(v5 + 32) = 0;
      *(v5 + 33) = v4;
      v6 = sub_2428B2AE8();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      v7 = swift_task_alloc();
      *(v0 + 64) = v7;
      *v7 = v0;
      v7[1] = sub_24280C8D8;
      v8 = *(v0 + 40);

      return MEMORY[0x28210BA20](v0 + 81, v5, v8);
    }
  }

  v9 = 0;
LABEL_14:
  **(v0 + 16) = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24280C8D8()
{
  v2 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  sub_2427E0980(v2, &qword_27ECC1CA0, &unk_2428B5D80);

  if (v0)
  {
    v3 = sub_242822E80;
  }

  else
  {
    v3 = sub_242822E7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24280CA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24280CADC, 0, 0);
}

uint64_t sub_24280CADC()
{
  sub_242822BFC(0, &qword_27ECC2700, 0x277CC5A28);
  v1 = sub_2428B46B8();
  v2 = [objc_opt_self() spanDecisionInfoForEvents_];
  *(v0 + 48) = v2;

  sub_2428B2DC8();
  if (*(v0 + 80))
  {
    if (*(v0 + 80) != 3)
    {
      v10 = [v2 proposeFuture];

      if (v10)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      goto LABEL_14;
    }

    if ([v2 shouldRequestSpan])
    {
      v3 = *(v0 + 40);
      if ([v2 proposeFuture])
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2138, &qword_2428B7958);
      v5 = swift_allocObject();
      *(v0 + 56) = v5;
      *(v5 + 16) = xmmword_2428B7940;
      *(v5 + 32) = 0;
      *(v5 + 33) = v4;
      v6 = sub_2428B2AE8();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      v7 = swift_task_alloc();
      *(v0 + 64) = v7;
      *v7 = v0;
      v7[1] = sub_24280CD20;
      v8 = *(v0 + 40);

      return MEMORY[0x28210BA20](v0 + 81, v5, v8);
    }
  }

  v9 = 0;
LABEL_14:
  **(v0 + 16) = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24280CD20()
{
  v2 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  sub_2427E0980(v2, &qword_27ECC1CA0, &unk_2428B5D80);

  if (v0)
  {
    v3 = sub_2427DE378;
  }

  else
  {
    v3 = sub_2427DE300;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

__n128 sub_24280CEA8@<Q0>(_OWORD *a1@<X8>)
{
  sub_2428B2DC8();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24280CEF4(__int128 *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *a1;
  v15 = a1[1];
  v16 = v2;
  v4 = a1[2];
  v5 = a1[4];
  v17 = a1[3];
  v18 = v5;
  v6 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v6;
  v19[8] = *(a2 + 128);
  v7 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v7;
  v8 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v8;
  v9 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v9;
  v10 = *a1;
  v13[2] = v4;
  v13[3] = v17;
  v13[4] = a1[4];
  v14 = v10;
  v20 = *(a2 + 144);
  v13[0] = v3;
  v13[1] = v15;
  sub_2427E0918(&v14, v12, &qword_27ECC2248, &unk_2428B7CE0);
  sub_24281E5F8(v19, v12);
  sub_2428B2DD8();
  return sub_24281E630(v19);
}

uint64_t sub_24280D020(_OWORD *a1, uint64_t a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v23 = a1[6];
  v24 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v25 = a1[8];
  v26 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v19 = a1[2];
  v20 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v21 = a1[4];
  v22 = v9;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v11 = *(a2 + 112);
  v27[6] = *(a2 + 96);
  v27[7] = v11;
  v27[8] = *(a2 + 128);
  v12 = *(a2 + 48);
  v27[2] = *(a2 + 32);
  v27[3] = v12;
  v13 = *(a2 + 80);
  v27[4] = *(a2 + 64);
  v27[5] = v13;
  v14 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v14;
  v17[16] = v23;
  v17[17] = v4;
  v15 = a1[9];
  v17[18] = v25;
  v17[19] = v15;
  v17[12] = v19;
  v17[13] = v8;
  v17[14] = v21;
  v17[15] = v3;
  v28 = *(a2 + 144);
  v17[10] = v18[0];
  v17[11] = v7;
  sub_2427CD4FC(v18, v17);
  sub_24281E5F8(v27, v17);
  sub_2428B2DD8();
  return sub_24281E630(v27);
}

uint64_t sub_24280D170()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC2CB0);
  __swift_project_value_buffer(v6, qword_27ECC2CB0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static EditEventIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1788 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3568();
  __swift_project_value_buffer(v1, qword_27ECC2CB0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24280D474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC2CC8);
  __swift_project_value_buffer(v10, qword_27ECC2CC8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t (*static EditEventIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1790 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC2CC8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t EditEventIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v171 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v1 - 8);
  v144 = v134 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE8, &unk_2428BDEA0);
  v142 = *(v3 - 8);
  v143 = v3;
  MEMORY[0x28223BE20](v3);
  v141 = v134 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  MEMORY[0x28223BE20](v5 - 8);
  v137 = v134 - v6;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BD0, &unk_2428BE2F0);
  v151 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v147 = v134 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  MEMORY[0x28223BE20](v8 - 8);
  v149 = v134 - v9;
  v168 = sub_2428B3298();
  v170 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v167 = v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v152 = v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v166 = v134 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v15 - 8);
  v165 = v134 - v16;
  v17 = sub_2428B3558();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2428B36C8();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2428B45F8();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_2428B3568();
  v169 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v164 = v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v182 = 0u;
  v183 = 0u;
  *&v184 = 0;
  sub_2428B2948();
  *v171 = sub_2428B2918();
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v29 = *(v18 + 104);
  v155 = *MEMORY[0x277CC9110];
  v28 = v155;
  v158 = v17;
  v29(v20, v155, v17);
  v159 = v18 + 104;
  v156 = v29;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v29(v20, v28, v17);
  v30 = v165;
  v31 = v26;
  v32 = v23;
  sub_2428B3578();
  v33 = *(v169 + 56);
  v169 += 56;
  v163 = v33;
  v33(v30, 0, 1, v153);
  sub_2427CBC50(&v182);
  v178 = v188;
  v179 = v189;
  v180 = v190;
  v181 = v191;
  v174 = v184;
  v175 = v185;
  v176 = v186;
  v177 = v187;
  v172 = v182;
  v173 = v183;
  v34 = sub_2428B2AE8();
  v160 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v157 = v36;
  v161 = v35 + 56;
  v36(v166, 1, 1, v34);
  v36(v152, 1, 1, v34);
  v162 = *MEMORY[0x277CBA308];
  v154 = *(v170 + 104);
  v170 += 104;
  v154(v167);
  sub_2427C2774();
  v171[1] = sub_2428B2E68();
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B4578();
  sub_2428B36B8();
  v37 = v155;
  v38 = v158;
  v39 = v156;
  v156(v20, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v39(v20, v37, v38);
  v40 = v165;
  sub_2428B3578();
  v163(v40, 0, 1, v153);
  v139 = sub_2428B4568();
  v172 = 0uLL;
  v41 = *(v139 - 8);
  v138 = *(v41 + 56);
  v140 = v41 + 56;
  v138(v149, 1, 1, v139);
  v42 = v157;
  v157(v166, 1, 1, v160);
  (v154)(v167, v162, v168);
  v171[2] = sub_2428B2EB8();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4440, &unk_2428BE300);
  sub_2428B4578();
  sub_2428B36B8();
  v43 = v155;
  v44 = v158;
  v45 = v156;
  v156(v20, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v45(v20, v43, v44);
  v46 = v165;
  sub_2428B3578();
  v163(v46, 0, 1, v153);
  v42(v166, 1, 1, v160);
  v135 = *MEMORY[0x277CB9EF0];
  v47 = *(v151 + 104);
  v151 += 104;
  v136 = v47;
  v47(v147);
  v48 = v154;
  (v154)(v167, v162, v168);
  v171[3] = sub_2428B2E98();
  sub_2428B4578();
  sub_2428B36B8();
  v49 = v155;
  v50 = v158;
  v51 = v156;
  v156(v20, v155, v158);
  v52 = v31;
  v53 = v32;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v51(v20, v49, v50);
  v54 = v165;
  v55 = v52;
  sub_2428B3578();
  v56 = v153;
  v163(v54, 0, 1, v153);
  v157(v166, 1, 1, v160);
  v136(v147, v135, v148);
  (v48)(v167, v162, v168);
  v171[4] = sub_2428B2E98();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D20, &qword_2428BB328);
  sub_2428B4578();
  sub_2428B36B8();
  v57 = v155;
  v58 = v158;
  v59 = v156;
  v156(v20, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v59(v20, v57, v58);
  v60 = v165;
  sub_2428B3578();
  v163(v60, 0, 1, v56);
  LOBYTE(v172) = 2;
  v61 = sub_2428B4718();
  (*(*(v61 - 8) + 56))(v137, 1, 1, v61);
  v157(v166, 1, 1, v160);
  (v154)(v167, v162, v168);
  v171[5] = sub_2428B2EC8();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D28, &unk_2428BDEE0);
  sub_2428B4578();
  sub_2428B36B8();
  v62 = v155;
  v63 = v158;
  v64 = v156;
  v156(v20, v155, v158);
  sub_2428B3578();
  v134[1] = v55;
  sub_2428B4578();
  sub_2428B36B8();
  v64(v20, v62, v63);
  v65 = v165;
  v66 = v20;
  sub_2428B3578();
  v67 = v153;
  v163(v65, 0, 1, v153);
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v172 = 0u;
  v68 = v160;
  v69 = v157;
  v157(v166, 1, 1, v160);
  v69(v152, 1, 1, v68);
  (v154)(v167, v162, v168);
  sub_2427FE688();
  v171[6] = sub_2428B2E68();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3890, &unk_2428BDF10);
  sub_2428B4578();
  sub_2428B36B8();
  v70 = v155;
  v71 = v158;
  v72 = v156;
  v156(v66, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  v145 = v53;
  sub_2428B36B8();
  v72(v66, v70, v71);
  v73 = v165;
  sub_2428B3578();
  v163(v73, 0, 1, v67);
  LOBYTE(v172) = 4;
  v74 = v160;
  v75 = v157;
  v157(v166, 1, 1, v160);
  v75(v152, 1, 1, v74);
  (v154)(v167, v162, v168);
  sub_24281E43C();
  v171[7] = sub_2428B2E38();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D38, &unk_2428BE310);
  sub_2428B4578();
  sub_2428B36B8();
  v76 = v155;
  v77 = v158;
  v78 = v156;
  v156(v66, v155, v158);
  v79 = v66;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v78(v66, v76, v77);
  v80 = v165;
  sub_2428B3578();
  v163(v80, 0, 1, v153);
  LOBYTE(v172) = 3;
  v81 = v160;
  v82 = v157;
  v157(v166, 1, 1, v160);
  v82(v152, 1, 1, v81);
  (v154)(v167, v162, v168);
  sub_24281E490();
  v171[8] = sub_2428B2E38();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38A0, &unk_2428C16A0);
  sub_2428B4578();
  sub_2428B36B8();
  v83 = v155;
  v84 = v158;
  v85 = v156;
  v156(v79, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v85(v79, v83, v84);
  v86 = v165;
  sub_2428B3578();
  v163(v86, 0, 1, v153);
  LOBYTE(v172) = 5;
  v87 = v160;
  v88 = v157;
  v157(v166, 1, 1, v160);
  v88(v152, 1, 1, v87);
  (v154)(v167, v162, v168);
  sub_24281E4E4();
  v171[9] = sub_2428B2E38();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D48, &qword_2428C15F0);
  sub_2428B4578();
  sub_2428B36B8();
  v89 = v155;
  v90 = v158;
  v91 = v156;
  v156(v79, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v91(v79, v89, v90);
  v92 = v165;
  sub_2428B3578();
  v163(v92, 0, 1, v153);
  v157(v166, 1, 1, v160);
  (v154)(v167, v162, v168);
  sub_242822E34(&unk_27ECC2D50, type metadata accessor for Location, &unk_2428BB110);
  v171[10] = sub_2428B2E18();
  sub_2428B4578();
  sub_2428B36B8();
  v93 = v158;
  v94 = v156;
  v156(v79, v89, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v94(v79, v89, v93);
  v95 = v165;
  sub_2428B3578();
  v163(v95, 0, 1, v153);
  v172 = 0uLL;
  v138(v149, 1, 1, v139);
  v157(v166, 1, 1, v160);
  (v154)(v167, v162, v168);
  v171[11] = sub_2428B2EB8();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4450, &unk_2428C15E0);
  sub_2428B4578();
  sub_2428B36B8();
  v96 = v155;
  v97 = v158;
  v98 = v156;
  v156(v79, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v98(v79, v96, v97);
  v99 = v165;
  sub_2428B3578();
  v100 = v153;
  v163(v99, 0, 1, v153);
  v157(v166, 1, 1, v160);
  (v154)(v167, v162, v168);
  v171[12] = sub_2428B2EA8();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D60, &unk_2428BDF20);
  sub_2428B4578();
  sub_2428B36B8();
  v101 = v155;
  v102 = v158;
  v98(v79, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v98(v79, v101, v102);
  v103 = v165;
  sub_2428B3578();
  v163(v103, 0, 1, v100);
  *&v172 = 0;
  BYTE8(v172) = 1;
  v157(v166, 1, 1, v160);
  (*(v142 + 104))(v141, *MEMORY[0x277CB9ED0], v143);
  v104 = v154;
  (v154)(v167, v162, v168);
  v171[13] = sub_2428B2ED8();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4470, &qword_2428C1600);
  sub_2428B4578();
  sub_2428B36B8();
  v105 = v155;
  v106 = v158;
  v107 = v156;
  v156(v79, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v107(v79, v105, v106);
  v108 = v165;
  sub_2428B3578();
  v109 = v153;
  v163(v108, 0, 1, v153);
  v157(v166, 1, 1, v160);
  (v104)(v167, v162, v168);
  sub_242822E34(&unk_27ECC2D70, type metadata accessor for AlarmTrigger, &unk_2428BBF84);
  v171[14] = sub_2428B2E18();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3980, &unk_2428C16B0);
  sub_2428B4578();
  sub_2428B36B8();
  v110 = v155;
  v111 = v158;
  v112 = v156;
  v156(v79, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v112(v79, v110, v111);
  v113 = v165;
  sub_2428B3578();
  v163(v113, 0, 1, v109);
  v114 = sub_2428B35D8();
  (*(*(v114 - 8) + 56))(v144, 1, 1, v114);
  v157(v166, 1, 1, v160);
  (v154)(v167, v162, v168);
  v171[15] = sub_2428B2E88();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D80, &qword_2428BB330);
  sub_2428B4578();
  sub_2428B36B8();
  v115 = v155;
  v116 = v158;
  v117 = v156;
  v156(v79, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v117(v79, v115, v116);
  v118 = v165;
  sub_2428B3578();
  v163(v118, 0, 1, v153);
  LOBYTE(v172) = 7;
  v119 = v160;
  v120 = v157;
  v157(v166, 1, 1, v160);
  v120(v152, 1, 1, v119);
  (v154)(v167, v162, v168);
  sub_2427E5D08();
  v171[16] = sub_2428B2E38();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D90, &qword_2428BB338);
  sub_2428B4578();
  sub_2428B36B8();
  v121 = v155;
  v122 = v158;
  v123 = v156;
  v156(v79, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v123(v79, v121, v122);
  v124 = v165;
  sub_2428B3578();
  v163(v124, 0, 1, v153);
  *&v172 = 0;
  v125 = v160;
  v126 = v157;
  v157(v166, 1, 1, v160);
  v126(v152, 1, 1, v125);
  (v154)(v167, v162, v168);
  sub_2427EB740();
  v171[17] = sub_2428B2E68();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2DA0, &qword_2428BE810);
  sub_2428B4578();
  sub_2428B36B8();
  v127 = v155;
  v128 = v158;
  v129 = v156;
  v156(v79, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v129(v79, v127, v128);
  v130 = v165;
  sub_2428B3578();
  v163(v130, 0, 1, v153);
  LOBYTE(v172) = 3;
  v131 = v160;
  v132 = v157;
  v157(v166, 1, 1, v160);
  v132(v152, 1, 1, v131);
  (v154)(v167, v162, v168);
  sub_24281E538();
  result = sub_2428B2E38();
  v171[18] = result;
  return result;
}

uint64_t sub_242810320(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[19] = v2;
  sub_24281E5F8(v9, v8);
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return sub_24281E630(v9);
}

uint64_t EditEventIntent.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*EditEventIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t (*EditEventIntent.event.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242810554(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 112);
  v12[6] = *(a2 + 96);
  v12[7] = v4;
  v12[8] = *(a2 + 128);
  v13 = *(a2 + 144);
  v5 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v5;
  v6 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v6;
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v10 = v3;
  v11 = v2;
  sub_2428B3218();
  sub_24281E5F8(v12, v9);
  sub_2428B2DD8();
  return sub_24281E630(v12);
}

uint64_t (*EditEventIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428106C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2427E0918(a1, &v15 - v8, &qword_27ECC26F0, &unk_2428B7960);
  v10 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v10;
  v17[8] = *(a2 + 128);
  v18 = *(a2 + 144);
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  sub_2427E0918(v9, v7, &qword_27ECC26F0, &unk_2428B7960);
  sub_24281E5F8(v17, &v16);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC26F0, &unk_2428B7960);
  return sub_24281E630(v17);
}

uint64_t EditEventIntent.startDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntent.startDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242810990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2427E0918(a1, &v15 - v8, &qword_27ECC26F0, &unk_2428B7960);
  v10 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v10;
  v17[8] = *(a2 + 128);
  v18 = *(a2 + 144);
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  sub_2427E0918(v9, v7, &qword_27ECC26F0, &unk_2428B7960);
  sub_24281E5F8(v17, &v16);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC26F0, &unk_2428B7960);
  return sub_24281E630(v17);
}

uint64_t EditEventIntent.endDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntent.endDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242810C68(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t (*EditEventIntent.isAllDay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t (*EditEventIntent.calendar.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242810E6C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t (*EditEventIntent.privacyLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242810FDC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t (*EditEventIntent.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24281114C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t (*EditEventIntent.availability.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428112F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 112);
  v12[6] = *(a2 + 96);
  v12[7] = v4;
  v12[8] = *(a2 + 128);
  v13 = *(a2 + 144);
  v5 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v5;
  v6 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v6;
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v10 = v3;
  v11 = v2;
  sub_2428B3218();
  sub_24281E5F8(v12, v9);
  sub_2428B2DD8();
  return sub_24281E630(v12);
}

uint64_t (*EditEventIntent.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242811464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2427E0918(a1, &v15 - v8, &qword_27ECC44A0, &qword_2428C16C0);
  v10 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v10;
  v17[8] = *(a2 + 128);
  v18 = *(a2 + 144);
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  sub_2427E0918(v9, v7, &qword_27ECC44A0, &qword_2428C16C0);
  sub_24281E5F8(v17, &v16);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC44A0, &qword_2428C16C0);
  return sub_24281E630(v17);
}

uint64_t EditEventIntent.recurrence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC44A0, &qword_2428C16C0);
}

uint64_t (*EditEventIntent.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t sub_242811740(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 + 112);
  v12[6] = *(a2 + 96);
  v12[7] = v4;
  v12[8] = *(a2 + 128);
  v13 = *(a2 + 144);
  v5 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v5;
  v6 = *(a2 + 80);
  v12[4] = *(a2 + 64);
  v12[5] = v6;
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v10 = v2;
  v11 = v3;
  sub_24281E5F8(v12, v9);
  sub_2428B2DD8();
  return sub_24281E630(v12);
}

uint64_t (*EditEventIntent.travelTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428118C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2427E0918(a1, &v15 - v8, &qword_27ECC2CE0, &qword_2428B6560);
  v10 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v10;
  v17[8] = *(a2 + 128);
  v18 = *(a2 + 144);
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  sub_2427E0918(v9, v7, &qword_27ECC2CE0, &qword_2428B6560);
  sub_24281E5F8(v17, &v16);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_24281E630(v17);
}

uint64_t EditEventIntent.url.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EditEventIntent.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242811B88(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t (*EditEventIntent.participationStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242811D08(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[19] = v2;
  sub_2428B3218();
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t (*EditEventIntent.attendees.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242811E78(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);
  v9[6] = *(a2 + 96);
  v9[7] = v3;
  v9[8] = *(a2 + 128);
  v10 = *(a2 + 144);
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v8[159] = v2;
  sub_24281E5F8(v9, v8);
  sub_2428B2DD8();
  return sub_24281E630(v9);
}

uint64_t (*EditEventIntent.span.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static EditEventIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DB0, &qword_2428BB340);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DB8, &qword_2428BB348);
  MEMORY[0x28223BE20](v1);
  sub_24281E58C();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DC8, &qword_2428BB378);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242812178@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2428121A4()
{
  swift_getKeyPath();
  sub_24281E58C();
  v0 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v1 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v2 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v3 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v4 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v10 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v9 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v12 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v14 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v13 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v5 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v11 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428BB310;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v10;
  *(v6 + 80) = v9;
  *(v6 + 88) = v12;
  *(v6 + 96) = v14;
  *(v6 + 104) = v13;
  *(v6 + 112) = v5;
  *(v6 + 120) = v11;
  sub_2428B2F38();
  v7 = sub_2428B3218();

  return v7;
}

uint64_t EditEventIntent.perform()(uint64_t a1)
{
  *(v2 + 3000) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2DD0, &qword_2428BB388);
  *(v2 + 3008) = v3;
  *(v2 + 3016) = *(v3 - 8);
  *(v2 + 3024) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
  *(v2 + 3032) = v4;
  *(v2 + 3040) = *(v4 - 8);
  *(v2 + 3048) = swift_task_alloc();
  *(v2 + 3056) = swift_task_alloc();
  v5 = type metadata accessor for AlarmTrigger(0);
  *(v2 + 3064) = v5;
  *(v2 + 3072) = *(v5 - 8);
  *(v2 + 3080) = swift_task_alloc();
  *(v2 + 3088) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DE0, &qword_2428BB390);
  *(v2 + 3096) = v6;
  *(v2 + 3104) = *(v6 - 8);
  *(v2 + 3112) = swift_task_alloc();
  v7 = sub_2428B36D8();
  *(v2 + 3120) = v7;
  *(v2 + 3128) = *(v7 - 8);
  *(v2 + 3136) = swift_task_alloc();
  *(v2 + 3144) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DE8, &qword_2428BB398);
  *(v2 + 3152) = v8;
  *(v2 + 3160) = *(v8 - 8);
  *(v2 + 3168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  *(v2 + 3176) = swift_task_alloc();
  *(v2 + 3184) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DF0, &qword_2428BB3A0);
  *(v2 + 3192) = v9;
  *(v2 + 3200) = *(v9 - 8);
  *(v2 + 3208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DF8, &unk_2428C1770);
  *(v2 + 3216) = swift_task_alloc();
  *(v2 + 3224) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2E00, &qword_2428BB3A8);
  *(v2 + 3232) = v10;
  *(v2 + 3240) = *(v10 - 8);
  *(v2 + 3248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  *(v2 + 3256) = swift_task_alloc();
  *(v2 + 3264) = swift_task_alloc();
  *(v2 + 3272) = swift_task_alloc();
  sub_2428B2BD8();
  *(v2 + 3280) = swift_task_alloc();
  *(v2 + 3288) = type metadata accessor for AttendeeEntity.AttendeeAddresses(0);
  *(v2 + 3296) = swift_task_alloc();
  v11 = sub_2428B35D8();
  *(v2 + 3304) = v11;
  *(v2 + 3312) = *(v11 - 8);
  *(v2 + 3320) = swift_task_alloc();
  *(v2 + 3328) = swift_task_alloc();
  *(v2 + 3336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2E08, &qword_2428BB3B0);
  *(v2 + 3344) = swift_task_alloc();
  *(v2 + 3352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  *(v2 + 3360) = swift_task_alloc();
  *(v2 + 3368) = swift_task_alloc();
  *(v2 + 3376) = swift_task_alloc();
  *(v2 + 3384) = swift_task_alloc();
  *(v2 + 3392) = swift_task_alloc();
  *(v2 + 3400) = swift_task_alloc();
  *(v2 + 3408) = swift_task_alloc();
  *(v2 + 3416) = swift_task_alloc();
  v12 = sub_2428B3688();
  *(v2 + 3424) = v12;
  *(v2 + 3432) = *(v12 - 8);
  *(v2 + 3440) = swift_task_alloc();
  *(v2 + 3448) = swift_task_alloc();
  *(v2 + 3456) = swift_task_alloc();
  *(v2 + 3464) = swift_task_alloc();
  *(v2 + 3472) = swift_task_alloc();
  *(v2 + 3480) = swift_task_alloc();
  *(v2 + 3488) = swift_task_alloc();
  v13 = sub_2428B3768();
  *(v2 + 3496) = v13;
  *(v2 + 3504) = *(v13 - 8);
  *(v2 + 3512) = swift_task_alloc();
  *(v2 + 3520) = swift_task_alloc();
  *(v2 + 3528) = swift_task_alloc();
  v14 = *(v1 + 112);
  *(v2 + 2488) = *(v1 + 96);
  *(v2 + 2504) = v14;
  *(v2 + 2520) = *(v1 + 128);
  *(v2 + 2536) = *(v1 + 144);
  v15 = *(v1 + 48);
  *(v2 + 2424) = *(v1 + 32);
  *(v2 + 2440) = v15;
  v16 = *(v1 + 80);
  *(v2 + 2456) = *(v1 + 64);
  *(v2 + 2472) = v16;
  v17 = *(v1 + 16);
  *(v2 + 2392) = *v1;
  *(v2 + 2408) = v17;
  sub_2428B4758();
  *(v2 + 3536) = sub_2428B4748();
  v18 = sub_2428B4728();
  *(v2 + 3544) = v18;
  *(v2 + 3552) = v19;

  return MEMORY[0x2822009F8](sub_242812CFC, v18, v19);
}

void sub_242812CFC()
{
  v637 = v0;
  v636 = *MEMORY[0x277D85DE8];
  v1 = sub_2428B43D8();
  *(v0 + 2888) = v1;
  *(v0 + 2896) = sub_242822E34(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2864));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2864));
  v622 = v0;
  if ((v1 & 1) == 0)
  {

    sub_2428B2938();
    sub_242822E34(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    goto LABEL_4;
  }

  v3 = v0 + 2392;
  v4 = sub_2427F3FF4();
  *(v0 + 3560) = v4;
  v6 = v4;
  sub_24281B3A4();
  *(v0 + 3568) = v7;
  v611 = v7;
  *(v0 + 3576) = *(v0 + 2400);
  sub_2428B2DC8();
  v8 = *(v0 + 608);
  *(v0 + 432) = *(v0 + 592);
  *(v0 + 448) = v8;
  v9 = *(v0 + 640);
  *(v0 + 464) = *(v0 + 624);
  *(v0 + 480) = v9;
  v10 = *(v0 + 544);
  *(v0 + 368) = *(v0 + 528);
  *(v0 + 384) = v10;
  v11 = *(v0 + 576);
  *(v0 + 400) = *(v0 + 560);
  *(v0 + 416) = v11;
  v12 = *(v0 + 512);
  *(v0 + 336) = *(v0 + 496);
  *(v0 + 352) = v12;
  v13 = v0;
  sub_2428B3218();
  sub_2427CCE04(v0 + 336);
  v14 = sub_2428B4608();

  v15 = [v6 eventWithAppEntityIdentifier_];
  *(v0 + 3584) = v15;

  if (!v15)
  {

    sub_2427CCDB0();
    swift_allocError();
    *v24 = 25;
    swift_willThrow();
LABEL_32:

    goto LABEL_4;
  }

  v16 = [v15 isEditable];
  *(v0 + 3662) = v16;
  if ((v16 & 1) == 0 && ![v15 isExternallyOrganizedInvitation])
  {

    sub_2427CCDB0();
    swift_allocError();
    v26 = 49;
LABEL_31:
    *v25 = v26;
    swift_willThrow();

    goto LABEL_32;
  }

  sub_2428B2DC8();
  if (*(v0 + 2912))
  {
    if (!v16)
    {

LABEL_30:
      sub_2427CCDB0();
      swift_allocError();
      v26 = 56;
      goto LABEL_31;
    }

    v17 = v15;
    v18 = sub_2428B4608();

    [v17 setTitle_];

    v0 = v13;
  }

  sub_2428B2DC8();
  v19 = *(v0 + 3659);
  if (v19 == 2)
  {
    goto LABEL_19;
  }

  v0 = v13;
  if ([v15 isAllDay] == (v19 & 1))
  {
    goto LABEL_19;
  }

  if (!v16)
  {

    goto LABEL_30;
  }

  if ((v19 & 1) == 0)
  {
    [v15 setAllDay_];
  }

LABEL_19:
  v20 = *(v0 + 3432);
  v21 = v0;
  v22 = *(v0 + 3424);
  v23 = *(v21 + 3416);
  sub_2428B3758();
  sub_2428B2DC8();
  v604 = *(v20 + 48);
  if (v604(v23, 1, v22) == 1)
  {
    sub_2427E0980(*(v13 + 3416), &qword_27ECC26F0, &unk_2428B7960);
    goto LABEL_50;
  }

  v27 = v13;
  v28 = *(*(v13 + 3432) + 32);
  v28(*(v13 + 3488), *(v13 + 3416), *(v13 + 3424));
  if (!v16)
  {
    v30 = *(v13 + 3528);
    v31 = *(v13 + 3504);
    v32 = *(v13 + 3496);
    v33 = *(v13 + 3488);
    goto LABEL_57;
  }

  sub_2428B2DC8();
  v29 = *(v13 + 3661);
  v586 = v28;
  if (v29 == 2)
  {
    if (([v15 isFloating] & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((v29 & 1) == 0)
  {
    goto LABEL_39;
  }

  v34 = sub_2428B3658();
  v35 = [v6 timeZone];
  if (v35)
  {
    v36 = *(v13 + 3520);
    v37 = *(v13 + 3504);
    v38 = *(v13 + 3496);
    v39 = v35;
    sub_2428B3748();

    v40 = sub_2428B3738();
    (*(v37 + 8))(v36, v38);
  }

  else
  {
    v40 = 0;
  }

  v41 = sub_2428B3738();
  v42 = [v34 dateInTimeZone:v40 fromTimeZone:v41];

  if (!v42)
  {
    goto LABEL_365;
  }

  v43 = *(v13 + 3488);
  v44 = *(v13 + 3480);
  v45 = *(v13 + 3432);
  v46 = *(v13 + 3424);
  sub_2428B3678();

  (*(v45 + 8))(v43, v46);
  v47 = v43;
  v27 = v13;
  v586(v47, v44, v46);
LABEL_39:
  v48 = v27[429];
  v49 = v27[428];
  v50 = v27[426];
  (*(v48 + 16))(v50, v27[436], v49);
  v589 = *(v48 + 56);
  v589(v50, 0, 1, v49);
  v51 = [v15 startDate];
  if (v51)
  {
    v52 = v51;
    sub_2428B3678();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = v27[428];
  v55 = v27[426];
  v56 = *(v622 + 3400);
  v57 = *(v622 + 3352);
  v58 = *(v622 + 3336);
  v589(v56, v53, 1, v54);
  v59 = *(v58 + 48);
  sub_2427E0918(v55, v57, &qword_27ECC26F0, &unk_2428B7960);
  v590 = v59;
  sub_2427E0918(v56, v57 + v59, &qword_27ECC26F0, &unk_2428B7960);
  v60 = v604(v57, 1, v54);
  v61 = *(v622 + 3424);
  if (v60 != 1)
  {
    sub_2427E0918(*(v622 + 3352), *(v622 + 3392), &qword_27ECC26F0, &unk_2428B7960);
    if (v604(v57 + v59, 1, v61) != 1)
    {
      v83 = *(v622 + 3472);
      v84 = *(v622 + 3432);
      v85 = *(v622 + 3424);
      v581 = *(v622 + 3400);
      v583 = *(v622 + 3408);
      v86 = *(v622 + 3392);
      v584 = *(v622 + 3352);
      v586(v83, v57 + v590, v85);
      sub_242822E34(&qword_27ECC2E38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v592 = sub_2428B4558();
      v87 = *(v84 + 8);
      v87(v83, v85);
      sub_2427E0980(v581, &qword_27ECC26F0, &unk_2428B7960);
      sub_2427E0980(v583, &qword_27ECC26F0, &unk_2428B7960);
      v87(v86, v85);
      v13 = v622;
      sub_2427E0980(v584, &qword_27ECC26F0, &unk_2428B7960);
      if (v592)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v63 = *(v622 + 3432);
    v64 = *(v622 + 3424);
    v65 = *(v622 + 3408);
    v66 = *(v622 + 3392);
    sub_2427E0980(*(v622 + 3400), &qword_27ECC26F0, &unk_2428B7960);
    sub_2427E0980(v65, &qword_27ECC26F0, &unk_2428B7960);
    (*(v63 + 8))(v66, v64);
    v13 = v622;
LABEL_47:
    sub_2427E0980(*(v13 + 3352), &qword_27ECC2E08, &qword_2428BB3B0);
LABEL_48:
    v67 = sub_2428B3658();
    [v15 setStartDate_];

    goto LABEL_49;
  }

  v13 = v622;
  v62 = *(v622 + 3408);
  sub_2427E0980(*(v622 + 3400), &qword_27ECC26F0, &unk_2428B7960);
  sub_2427E0980(v62, &qword_27ECC26F0, &unk_2428B7960);
  if (v604(v57 + v59, 1, v61) != 1)
  {
    goto LABEL_47;
  }

  sub_2427E0980(*(v622 + 3352), &qword_27ECC26F0, &unk_2428B7960);
LABEL_49:
  (*(*(v13 + 3432) + 8))(*(v13 + 3488), *(v13 + 3424));
LABEL_50:
  v68 = *(v13 + 3424);
  v69 = *(v13 + 3384);
  sub_2428B2DC8();
  if (v604(v69, 1, v68) != 1)
  {
    v70 = v13;
    v71 = *(*(v13 + 3432) + 32);
    v71(*(v13 + 3464), *(v13 + 3384), *(v13 + 3424));
    if (v16)
    {
      sub_2428B2DC8();
      v72 = *(v13 + 3660);
      v591 = v71;
      if (v72 == 2)
      {
        if (([v15 isFloating] & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else if ((v72 & 1) == 0)
      {
        goto LABEL_66;
      }

      v76 = sub_2428B3658();
      v77 = [v6 timeZone];
      if (v77)
      {
        v78 = *(v13 + 3512);
        v79 = *(v13 + 3504);
        v80 = *(v13 + 3496);
        v81 = v77;
        sub_2428B3748();

        v82 = sub_2428B3738();
        (*(v79 + 8))(v78, v80);
      }

      else
      {
        v82 = 0;
      }

      v88 = sub_2428B3738();
      v89 = [v76 dateInTimeZone:v82 fromTimeZone:v88];

      if (!v89)
      {
        goto LABEL_368;
      }

      v90 = *(v13 + 3464);
      v91 = *(v13 + 3456);
      v92 = *(v13 + 3432);
      v93 = *(v13 + 3424);
      sub_2428B3678();

      (*(v92 + 8))(v90, v93);
      v94 = v90;
      v70 = v13;
      v591(v94, v91, v93);
LABEL_66:
      v95 = v70[429];
      v96 = v70[428];
      v97 = v70[422];
      (*(v95 + 16))(v97, v70[433], v96);
      v98 = *(v95 + 56);
      v99 = 1;
      v98(v97, 0, 1, v96);
      v100 = [v15 endDate];
      if (v100)
      {
        v101 = v100;
        sub_2428B3678();

        v99 = 0;
      }

      v102 = *(v13 + 3424);
      v103 = *(v13 + 3376);
      v104 = *(v13 + 3368);
      v105 = *(v13 + 3344);
      v106 = *(v622 + 3336);
      v98(v104, v99, 1, v102);
      v107 = *(v106 + 48);
      sub_2427E0918(v103, v105, &qword_27ECC26F0, &unk_2428B7960);
      sub_2427E0918(v104, v105 + v107, &qword_27ECC26F0, &unk_2428B7960);
      v108 = v604(v105, 1, v102);
      v109 = *(v622 + 3424);
      if (v108 == 1)
      {
        v110 = *(v622 + 3376);
        sub_2427E0980(*(v622 + 3368), &qword_27ECC26F0, &unk_2428B7960);
        sub_2427E0980(v110, &qword_27ECC26F0, &unk_2428B7960);
        if (v604(v105 + v107, 1, v109) == 1)
        {
          v13 = v622;
          sub_2427E0980(*(v622 + 3344), &qword_27ECC26F0, &unk_2428B7960);
LABEL_75:
          (*(*(v13 + 3432) + 8))(*(v13 + 3464), *(v13 + 3424));
          goto LABEL_76;
        }
      }

      else
      {
        sub_2427E0918(*(v622 + 3344), *(v622 + 3360), &qword_27ECC26F0, &unk_2428B7960);
        if (v604(v105 + v107, 1, v109) != 1)
        {
          v168 = *(v622 + 3472);
          v169 = *(v622 + 3432);
          v170 = *(v622 + 3424);
          v596 = *(v622 + 3376);
          v171 = *(v622 + 3368);
          v172 = *(v622 + 3360);
          v605 = *(v622 + 3344);
          v591(v168, v105 + v107, v170);
          sub_242822E34(&qword_27ECC2E38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v173 = sub_2428B4558();
          v174 = *(v169 + 8);
          v174(v168, v170);
          sub_2427E0980(v171, &qword_27ECC26F0, &unk_2428B7960);
          sub_2427E0980(v596, &qword_27ECC26F0, &unk_2428B7960);
          v174(v172, v170);
          v13 = v622;
          sub_2427E0980(v605, &qword_27ECC26F0, &unk_2428B7960);
          if (v173)
          {
            goto LABEL_75;
          }

          goto LABEL_74;
        }

        v111 = *(v622 + 3432);
        v112 = *(v622 + 3424);
        v113 = *(v622 + 3376);
        v114 = *(v622 + 3360);
        sub_2427E0980(*(v622 + 3368), &qword_27ECC26F0, &unk_2428B7960);
        sub_2427E0980(v113, &qword_27ECC26F0, &unk_2428B7960);
        (*(v111 + 8))(v114, v112);
      }

      v13 = v622;
      sub_2427E0980(*(v622 + 3344), &qword_27ECC2E08, &qword_2428BB3B0);
LABEL_74:
      v115 = sub_2428B3658();
      [v15 setEndDate_];

      goto LABEL_75;
    }

    v30 = *(v13 + 3528);
    v31 = *(v13 + 3504);
    v32 = *(v13 + 3496);
    v33 = *(v13 + 3464);
LABEL_57:
    v73 = *(v13 + 3432);
    v74 = *(v13 + 3424);

    sub_2427CCDB0();
    swift_allocError();
    *v75 = 56;
    swift_willThrow();

    (*(v73 + 8))(v33, v74);
    (*(v31 + 8))(v30, v32);
    goto LABEL_4;
  }

  sub_2427E0980(*(v13 + 3384), &qword_27ECC26F0, &unk_2428B7960);
LABEL_76:
  v116 = (v13 + 2544);
  sub_2428B2DC8();
  v117 = v13;
  v118 = *(v13 + 3658);
  if (v118 != 2)
  {
    v119 = v118 & 1;
    if ([v15 isAllDay] != v119)
    {
      [v15 setAllDay_];
    }
  }

  sub_2428B2DC8();
  if (*(v13 + 2544))
  {
    v120 = (v13 + 2624);
    v121 = *v116;
    v122 = *(v13 + 2560);
    v123 = (v13 + 2704);
    v124 = *(v13 + 2592);
    v125 = *(v13 + 2608);
    v126 = *(v13 + 2576);
    *(v13 + 2752) = v124;
    *(v13 + 2768) = v125;
    v127 = *(v13 + 2560);
    v128 = *(v13 + 2576);
    v129 = *v116;
    *(v13 + 2704) = v121;
    *(v13 + 2720) = v127;
    *(v13 + 2736) = v126;
    v130 = *(v13 + 2608);
    *(v13 + 2672) = v124;
    *(v13 + 2688) = v130;
    v131 = *(v13 + 2704);
    v132 = *(v622 + 2768);
    v120[1] = v122;
    v120[2] = v128;
    *v120 = v129;
    sub_2428B3218();
    sub_2428B2F38();
    sub_2428B2F38();
    LODWORD(v133) = v622;
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B3218();
    sub_2427E0980(v120, &qword_27ECC2248, &unk_2428B7CE0);
    v134 = v131;
    sub_2428B28E8();
    v117 = v622;
    v135 = [*(v622 + 2936) eventStore];
    if (!v135)
    {
      goto LABEL_362;
    }

    v136 = v135;
    swift_unknownObjectRelease();
    v137 = sub_2428B4608();
    v138 = [v136 calendarWithIdentifier_];
    *(v622 + 3592) = v138;

    sub_2427E0980(v123, &qword_27ECC2248, &unk_2428B7CE0);
    if (v138)
    {
      v139 = v15;
      v140 = v138;
      v141 = [v139 calendar];
      if (!v141 || (v142 = v141, sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0), v143 = v140, v144 = sub_2428B48E8(), v142, v143, (v144 & 1) == 0))
      {
        v150 = *(v3 + 112);
        *(v622 + 2336) = *(v3 + 96);
        *(v622 + 2352) = v150;
        *(v622 + 2368) = *(v3 + 128);
        v151 = *(v3 + 48);
        *(v622 + 2272) = *(v3 + 32);
        *(v622 + 2288) = v151;
        v152 = *(v3 + 80);
        *(v622 + 2304) = *(v3 + 64);
        *(v622 + 2320) = v152;
        v153 = *(v3 + 16);
        *(v622 + 2240) = *v3;
        *(v622 + 2384) = *(v3 + 144);
        *(v622 + 2256) = v153;
        v154 = swift_task_alloc();
        *(v622 + 3600) = v154;
        *v154 = v622;
        v154[1] = sub_242817094;

        sub_24281B760(v139, v140);
        return;
      }
    }
  }

  else
  {
    v145 = *(v13 + 2592);
    *(v13 + 2816) = *(v13 + 2576);
    *(v13 + 2832) = v145;
    *(v13 + 2848) = *(v13 + 2608);
    v146 = *(v13 + 2560);
    *(v13 + 2784) = *v116;
    *(v13 + 2800) = v146;
    sub_2427E0980(v13 + 2784, &qword_27ECC2248, &unk_2428B7CE0);
  }

  v147 = v117;
  sub_2428B2DC8();
  v148 = *(v117 + 2929);
  if (*(v117 + 2929) <= 1u)
  {
    v149 = *(v117 + 2929);
    if (*(v117 + 2929))
    {
      v149 = 1;
    }
  }

  else if (v148 == 2)
  {
    v149 = 2;
  }

  else
  {
    if (v148 != 3)
    {
      goto LABEL_99;
    }

    v149 = 3;
  }

  v155 = v149 == [*(v117 + 3584) privacyLevel];
  v147 = v117;
  if (!v155)
  {
    if (![*(v117 + 3584) allowsPrivacyLevelModifications])
    {
      v158 = *(v117 + 3584);
      v159 = *(v117 + 3568);
      v160 = *(v117 + 3560);
      v161 = *(v117 + 3528);
      v162 = *(v117 + 3504);
      v163 = *(v117 + 3496);

      sub_2427CCDB0();
      swift_allocError();
      v165 = 64;
      goto LABEL_230;
    }

    [*(v117 + 3584) setPrivacyLevel_];
  }

LABEL_99:
  sub_2428B2DC8();
  v156 = *(v147 + 3656);
  if (*(v147 + 3656) > 1u)
  {
    if (v156 != 2)
    {
      goto LABEL_109;
    }

    v157 = 3;
  }

  else if (*(v147 + 3656))
  {
    v157 = 2;
  }

  else
  {
    v157 = 1;
  }

  v155 = v157 == [*(v117 + 3584) status];
  v147 = v117;
  if (!v155)
  {
    if (*(v117 + 3662) != 1)
    {
      v158 = *(v117 + 3584);
      v159 = *(v117 + 3568);
      v160 = *(v117 + 3560);
      v161 = *(v117 + 3528);
      v162 = *(v117 + 3504);
      v163 = *(v117 + 3496);

      sub_2427CCDB0();
      swift_allocError();
      v165 = 56;
      goto LABEL_230;
    }

    [*(v117 + 3584) setStatus_];
  }

LABEL_109:
  sub_2428B2DC8();
  v166 = *(v147 + 2935);
  if (v166 <= 2)
  {
    if (*(v147 + 2935))
    {
      v167 = v166 != 1;
    }

    else
    {
      v167 = -1;
    }

    goto LABEL_120;
  }

  if (v166 == 3)
  {
    v167 = 2;
    goto LABEL_120;
  }

  if (v166 == 4)
  {
    v167 = 3;
LABEL_120:
    if (v167 == [v147[448] availability])
    {
      goto LABEL_121;
    }

    v197 = [v147[448] allowsAvailabilityModifications];
    v198 = v147[448];
    if (!v197)
    {
      v203 = v147[446];
      v204 = v147[445];
      v205 = *(v117 + 3528);
      v206 = *(v117 + 3504);
      v207 = *(v117 + 3496);

      sub_2427CCDB0();
      swift_allocError();
      *v208 = 65;
      swift_willThrow();

      (*(v206 + 8))(v205, v207);
      goto LABEL_4;
    }

    v199 = [v147[448] calendar];
    if (!v199)
    {
      goto LABEL_369;
    }

    v200 = v199;
    v201 = [v199 supportedEventAvailabilities];

    if (v166 <= 1)
    {
      v147 = v117;
      if (v166)
      {
        if (v201)
        {
          v202 = 0;
          goto LABEL_321;
        }
      }

      else if (!v201)
      {
        v202 = -1;
        goto LABEL_321;
      }
    }

    else
    {
      v147 = v117;
      if (v166 == 2)
      {
        if ((v201 & 2) != 0)
        {
          v202 = 1;
          goto LABEL_321;
        }
      }

      else if (v166 == 3)
      {
        if ((v201 & 4) != 0)
        {
          v202 = 2;
LABEL_321:
          [v147[448] setAvailability_];
          goto LABEL_121;
        }
      }

      else if ((v201 & 8) != 0)
      {
        v202 = 3;
        goto LABEL_321;
      }
    }

    v158 = v147[448];
    v159 = v147[446];
    v160 = v147[445];
    v161 = v147[441];
    v162 = v147[438];
    v163 = *(v117 + 3496);

    sub_2427CCDB0();
    swift_allocError();
    v165 = 72;
LABEL_230:
    *v164 = v165;
    swift_willThrow();

    (*(v162 + 8))(v161, v163);
    goto LABEL_4;
  }

LABEL_121:
  sub_2428B2DC8();
  v175 = v147[368];
  v583 = v3;
  if (!v175)
  {
    goto LABEL_260;
  }

  v176 = v147[448];
  v177 = MEMORY[0x277D84F90];
  v625[0] = sub_242821938(MEMORY[0x277D84F90]);
  v178 = [v176 attendees];
  if (!v178)
  {
    v574 = v177;
    v209 = v177;
    goto LABEL_206;
  }

  v179 = v178;
  sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
  v180 = sub_2428B46C8();

  v181 = sub_24281C3F4(v180);

  if (!v181)
  {
    v209 = MEMORY[0x277D84F90];
    v574 = MEMORY[0x277D84F90];
    v147 = v117;
    goto LABEL_206;
  }

  v182 = (v181 & 0xFFFFFFFFFFFFFF8);
  if (v181 >> 62)
  {
    goto LABEL_352;
  }

  for (i = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2428B49C8())
  {
    v582 = v181;
    v579 = v175;
    if (!i)
    {
      v573 = MEMORY[0x277D84F98];
      v580 = MEMORY[0x277D84F98];
      v575 = MEMORY[0x277D84F98];
      v147 = v117;
      goto LABEL_171;
    }

    v612 = i;
    v619 = v182;
    v184 = 0;
    v185 = v181 & 0xC000000000000001;
    v186 = (*(v117 + 3312) + 8);
    v187 = MEMORY[0x277D84F98];
    do
    {
      if (v185)
      {
        v188 = MEMORY[0x245D1B5D0](v184, v181);
      }

      else
      {
        if (v184 >= v619[2])
        {
          goto LABEL_343;
        }

        v188 = *(v181 + 8 * v184 + 32);
      }

      v189 = v188;
      v190 = v184 + 1;
      if (__OFADD__(v184, 1))
      {
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
      }

      v191 = v185;
      v192 = *(v622 + 3328);
      v193 = *(v622 + 3304);
      v194 = [v188 URL];
      sub_2428B35B8();

      v195 = v189;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v626 = v187;
      sub_2428200AC(v195, v192, isUniquelyReferenced_nonNull_native);

      (*v186)(v192, v193);
      ++v184;
      v181 = v582;
      v185 = v191;
    }

    while (v190 != v612);
    v573 = v626;
    v580 = MEMORY[0x277D84F98];
    v210 = v619;
    for (j = 0; ; j = v214)
    {
      while (1)
      {
        if (v191)
        {
          v212 = MEMORY[0x245D1B5D0](j, v181);
        }

        else
        {
          if (j >= v210[2])
          {
            goto LABEL_345;
          }

          v212 = *(v181 + 8 * j + 32);
        }

        v213 = v212;
        v214 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_344;
        }

        v215 = [v212 emailAddress];
        if (v215)
        {
          break;
        }

        ++j;
        if (v214 == v612)
        {
          goto LABEL_155;
        }
      }

      v216 = v215;
      v217 = sub_2428B4618();
      v219 = v218;

      v220 = v213;
      v221 = swift_isUniquelyReferenced_nonNull_native();
      *&v626 = v580;
      v222 = v217;
      v210 = v619;
      sub_242820424(v220, v222, v219, v221, sub_24288D650, sub_24288C818);

      v181 = v582;

      if (v214 == v612)
      {
        break;
      }
    }

LABEL_155:
    v223 = 0;
    v575 = MEMORY[0x277D84F98];
    do
    {
      v224 = v223;
      while (1)
      {
        if (v191)
        {
          v225 = MEMORY[0x245D1B5D0](v224, v181);
        }

        else
        {
          if (v224 >= v210[2])
          {
            goto LABEL_348;
          }

          v225 = *(v181 + 8 * v224 + 32);
        }

        v226 = v225;
        v223 = v224 + 1;
        if (__OFADD__(v224, 1))
        {
          goto LABEL_347;
        }

        v227 = [v225 phoneNumber];
        if (v227)
        {
          break;
        }

        ++v224;
        if (v223 == v612)
        {
          goto LABEL_166;
        }
      }

      v228 = v227;
      v229 = sub_2428B4618();
      v231 = v230;

      v232 = v226;
      v233 = swift_isUniquelyReferenced_nonNull_native();
      *&v626 = v575;
      v234 = v229;
      v210 = v619;
      sub_242820424(v232, v234, v231, v233, sub_24288D650, sub_24288C818);

      v181 = v582;
    }

    while (v223 != v612);
LABEL_166:
    v147 = v622;
    v175 = v579;
LABEL_171:
    v235 = sub_24281C670(MEMORY[0x277D84F98], v181);

    v625[0] = v235;
    v578 = *(v175 + 16);
    if (v578)
    {
      break;
    }

    v606 = MEMORY[0x277D84F90];
    v574 = MEMORY[0x277D84F90];
LABEL_205:

    v209 = v606;
LABEL_206:

    v607 = v209;
    if (*(v209 + 2) || ((v625[0] & 0xC000000000000001) == 0 ? (v273 = *(v625[0] + 16)) : (v273 = sub_2428B49C8()), v273 > 0 || v574[2]))
    {
      v274 = v147[448];
      if (*(v147 + 3662) != 1)
      {
        v279 = v147[446];
        v280 = v147[445];
        v281 = v147;
        v282 = v147[441];
        v283 = v281[438];
        v284 = v281[437];

        sub_2427CCDB0();
        swift_allocError();
        *v285 = 56;
        swift_willThrow();

        (*(v283 + 8))(v282, v284);

        goto LABEL_4;
      }

      if (([v147[448] currentUserMayActAsOrganizer] & 1) == 0)
      {

        if ((v625[0] & 0xC000000000000001) != 0)
        {
          v286 = sub_2428B49C8();
        }

        else
        {
          v286 = *(v625[0] + 16);
        }

        v287 = v147;
        v288 = v147[438];
        sub_2427CCDB0();
        swift_allocError();
        v290 = (v288 + 8);
        v291 = v287[448];
        v292 = v287[446];
        v293 = v287[445];
        v294 = v287[441];
        v295 = v287[437];
        if (v286 < 1)
        {
          v296 = 113;
        }

        else
        {
          v296 = 120;
        }

        *v289 = v296;
        swift_willThrow();

        (*v290)(v294, v295);

        goto LABEL_4;
      }

      v275 = v574[2];
      if (v275)
      {
        v276 = v574 + 5;
        do
        {
          v277 = *(v276 - 1);
          sub_2428B2F38();
          sub_2428B2F38();
          sub_2428B2F38();
          sub_2428B2F38();
          sub_2428B2F38();
          sub_2428B2C68();
          if (*(v622 + 2932))
          {
            v278 = 2;
          }

          else
          {
            v278 = 1;
          }

          [v277 setParticipantRole_];

          v276 += 6;
          --v275;
        }

        while (v275);
      }
    }

    if ((v625[0] & 0xC000000000000001) != 0)
    {
      v297 = sub_2428B4B18();
      v298 = 0;
      v299 = 0;
      v300 = 0;
      v301 = v297 | 0x8000000000000000;
    }

    else
    {
      v302 = -1 << *(v625[0] + 32);
      v299 = ~v302;
      v298 = v625[0] + 64;
      v303 = -v302;
      if (v303 < 64)
      {
        v304 = ~(-1 << v303);
      }

      else
      {
        v304 = -1;
      }

      v300 = v304 & *(v625[0] + 64);
      v301 = v625[0];
    }

    v305 = (v299 + 64) >> 6;
    sub_2428B3218();
    v306 = 0;
    if ((v301 & 0x8000000000000000) == 0)
    {
LABEL_243:
      v307 = v306;
      v308 = v300;
      v309 = v306;
      if (v300)
      {
LABEL_247:
        v310 = (v308 - 1) & v308;
        v311 = (v309 << 9) | (8 * __clz(__rbit64(v308)));
        v312 = *(*(v301 + 56) + v311);
        v313 = *(*(v301 + 48) + v311);
        v314 = v312;
        goto LABEL_250;
      }

      while (1)
      {
        v309 = v307 + 1;
        if (__OFADD__(v307, 1))
        {
          goto LABEL_349;
        }

        if (v309 >= v305)
        {
          goto LABEL_253;
        }

        v308 = *(v298 + 8 * v309);
        ++v307;
        if (v308)
        {
          goto LABEL_247;
        }
      }
    }

    while (1)
    {
      v315 = sub_2428B4B48();
      if (!v315)
      {
        break;
      }

      v317 = v316;
      *(v622 + 2968) = v315;
      sub_242822BFC(0, &qword_27ECC2E28, 0x277CC5A60);
      swift_dynamicCast();
      v313 = *(v622 + 2984);
      *(v622 + 2952) = v317;
      sub_242822BFC(0, &qword_27ECC2E30, 0x277CC59A0);
      swift_dynamicCast();
      v314 = *(v622 + 2960);
      v309 = v306;
      v310 = v300;
LABEL_250:
      if (!v313)
      {
        break;
      }

      [*(v622 + 3584) removeAttendee_];

      v306 = v309;
      v300 = v310;
      if ((v301 & 0x8000000000000000) == 0)
      {
        goto LABEL_243;
      }
    }

LABEL_253:
    sub_2427C9D4C(v301);
    v614 = *(v607 + 2);
    if (!v614 || (v181 = *(v607 + 4), v318 = *(v607 + 5), v175 = *(v607 + 6), v117 = *(v607 + 7), v319 = *(v607 + 8), *&v626 = v181, *(&v626 + 1) = v318, *&v627 = v175, *(&v627 + 1) = v117, *&v628 = v319, sub_2428B2F38(), sub_2428B2F38(), sub_2428B2F38(), sub_2428B2F38(), sub_2428B2F38(), sub_2427EAFC0(), v182 = v320, [*(v622 + 3584) addAttendee_], v182, , , , , , v321 = v607, v614 == 1))
    {
LABEL_259:

      v147 = v622;
LABEL_260:
      v327 = v147;
      v328 = v147[406];
      v329 = v327[405];
      v330 = v327[404];
      v331 = v327;
      sub_2428B2DE8();
      sub_2428B2DA8();

      v332 = (*(v329 + 88))(v328, v330);
      v333 = *MEMORY[0x277CB9EB8];
      if (v332 == *MEMORY[0x277CB9EB8])
      {
        v334 = *(v331 + 3662);
        v335 = v331[406];
        (*(v331[405] + 96))(v335, v331[404]);
        if (v334 != 1)
        {
          v341 = v331;
          v342 = v331[448];
          v343 = v331[446];
          v344 = v341[445];
          v345 = v341[441];
          v346 = v341[438];
          v347 = v341[437];

          sub_2427CCDB0();
          swift_allocError();
          *v348 = 56;
          swift_willThrow();

          (*(v346 + 8))(v345, v347);
          goto LABEL_4;
        }

        v336 = v331[448];
        if (*(v335 + 8))
        {
          v337 = v336;
          v338 = sub_2428B4608();

          v339 = v331[448];
        }

        else
        {
          v339 = v336;
          v338 = 0;
        }

        [v339 setNotes_];

        v340 = v331;
      }

      else
      {
        v340 = v331;
        (*(v331[405] + 8))(v331[406], v331[404]);
      }

      v349 = v340[401];
      v350 = v340[400];
      v351 = v340[399];
      sub_2428B2DE8();
      sub_2428B2DA8();

      if ((*(v350 + 88))(v349, v351) == v333)
      {
        v352 = *(v331 + 3662);
        v353 = v331[403];
        v354 = v331[401];
        (*(v331[400] + 96))(v354, v331[399]);
        sub_24281E660(v354, v353, &qword_27ECC2DF8, &unk_2428C1770);
        if (v352 != 1)
        {
          v360 = v331;
          v361 = v331[448];
          v362 = v360[446];
          v363 = v360[445];
          v364 = v360[441];
          v365 = v360[438];
          v366 = v360[437];
          v367 = v360[403];

          sub_2427CCDB0();
          swift_allocError();
          *v368 = 56;
          swift_willThrow();

          sub_2427E0980(v367, &qword_27ECC2DF8, &unk_2428C1770);
          (*(v365 + 8))(v364, v366);
          goto LABEL_4;
        }

        v355 = v331;
        v356 = v331[402];
        sub_2427E0918(v331[403], v356, &qword_27ECC2DF8, &unk_2428C1770);
        v357 = type metadata accessor for Location(0);
        if ((*(*(v357 - 8) + 48))(v356, 1, v357) == 1)
        {
          sub_2427E0980(v331[402], &qword_27ECC2DF8, &unk_2428C1770);
          v358 = 0;
        }

        else
        {
          v369 = v331[402];
          v358 = sub_24280A010();
          v370 = v369;
          v355 = v331;
          sub_242822B9C(v370, type metadata accessor for Location);
        }

        v371 = v355[448];
        v372 = v331[403];
        [v371 setStructuredLocation_];

        v359 = v331;
        sub_2427E0980(v372, &qword_27ECC2DF8, &unk_2428C1770);
      }

      else
      {
        v359 = v331;
        (*(v331[400] + 8))(v331[401], v331[399]);
      }

      v373 = v359[396];
      v374 = v359[395];
      v375 = v359[394];
      sub_2428B2DE8();
      sub_2428B2DA8();

      if ((*(v374 + 88))(v373, v375) != v333)
      {
        (*(v331[395] + 8))(v331[396], v331[394]);
        goto LABEL_293;
      }

      v376 = *(v331 + 3662);
      v377 = v331[398];
      v378 = v331[396];
      (*(v331[395] + 96))(v378, v331[394]);
      sub_24281E660(v378, v377, &qword_27ECC44A0, &qword_2428C16C0);
      if (v376 != 1)
      {
        v424 = v331;
        v425 = v331[448];
        v426 = v331[446];
        v427 = v424[445];
        v428 = v424[441];
        v429 = v424[438];
        v430 = v424[437];
        v431 = v424[398];

        sub_2427CCDB0();
        swift_allocError();
        *v432 = 56;
        swift_willThrow();

        (*(v429 + 8))(v428, v430);
        sub_2427E0980(v431, &qword_27ECC44A0, &qword_2428C16C0);
        goto LABEL_4;
      }

      v379 = v331;
      v380 = *(v331[391] + 48);
      if (v380(v331[398], 1, v331[390]) != 1 || ![v331[448] isOrWasPartOfRecurringSeries] || objc_msgSend(v331[448], sel_isFirstOccurrence) && !objc_msgSend(v331[448], sel_isDetached))
      {
        goto LABEL_356;
      }

      v381 = [v331[448] masterEvent];
      if (!v381)
      {
        goto LABEL_356;
      }

      v132 = v381;
      LODWORD(v133) = v333;
      v123 = v381;
      v382 = [v123 recurrenceRules];
      if (!v382)
      {
        goto LABEL_355;
      }

      v383 = v382;
      sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
      v134 = sub_2428B46C8();

      if (!(v134 >> 62))
      {
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_286;
        }

LABEL_354:

LABEL_355:

        v379 = v622;
        v3 = v583;
LABEL_356:
        v542 = v379[398];
        v543 = v379[397];
        v544 = v379;
        v545 = v379[390];
        sub_2427E0918(v542, v543, &qword_27ECC44A0, &qword_2428C16C0);
        if (v380(v543, 1, v545) != 1)
        {
          v595 = v333;
          v547 = v544[393];
          v548 = v544[392];
          v549 = v544[391];
          v550 = v544[390];
          (*(v549 + 32))(v547, v544[397], v550);
          sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
          (*(v549 + 16))(v548, v547, v550);
          v551 = sub_2428B4858();
          v552 = v544[448];
          if (v551)
          {
            v553 = v551;
            v554 = v544[398];
            v555 = v544[393];
            v556 = v544[391];
            v557 = v544[390];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
            v558 = swift_allocObject();
            *(v558 + 16) = xmmword_2428B5A90;
            *(v558 + 32) = v553;
            v559 = v552;
            v560 = v553;
            v561 = sub_2428B46B8();

            [v559 setRecurrenceRules_];

            *(v544 + 2931) = 1;
            sub_24281E5F8(v3, (v544 + 261));
            sub_2428B2DD8();

            (*(v556 + 8))(v555, v557);
            sub_24281E630(v3);
            v331 = v544;
            sub_2427E0980(v554, &qword_27ECC44A0, &qword_2428C16C0);
            v132 = 0;
            v333 = v595;
            goto LABEL_294;
          }

          v562 = v544[446];
          v563 = *(v622 + 3560);
          v564 = *(v622 + 3528);
          v565 = *(v622 + 3504);
          v566 = *(v622 + 3496);
          v618 = *(v622 + 3184);
          v567 = *(v622 + 3144);
          v568 = *(v622 + 3128);
          v569 = *(v622 + 3120);

          sub_2427CCDB0();
          swift_allocError();
          *v570 = 121;
          swift_willThrow();

          (*(v568 + 8))(v567, v569);
          (*(v565 + 8))(v564, v566);
          sub_2427E0980(v618, &qword_27ECC44A0, &qword_2428C16C0);
          goto LABEL_4;
        }

        v546 = v544[397];
        sub_2427E0980(v544[398], &qword_27ECC44A0, &qword_2428C16C0);
        v331 = v544;
        sub_2427E0980(v546, &qword_27ECC44A0, &qword_2428C16C0);
LABEL_293:
        v132 = 0;
        goto LABEL_294;
      }

      if (!sub_2428B49C8())
      {
        goto LABEL_354;
      }

LABEL_286:
      if ((v134 & 0xC000000000000001) != 0)
      {
        goto LABEL_363;
      }

      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v384 = *(v134 + 32);
        goto LABEL_289;
      }

      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
      return;
    }

    v322 = (v607 + 104);
    v323 = 1;
    v3 = v614;
    while (v323 < *(v321 + 2))
    {
      v181 = *(v322 - 4);
      v324 = *(v322 - 3);
      v175 = *(v322 - 2);
      v117 = *(v322 - 1);
      v325 = *v322;
      *&v626 = v181;
      *(&v626 + 1) = v324;
      *&v627 = v175;
      *(&v627 + 1) = v117;
      *&v628 = v325;
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2427EAFC0();
      v182 = v326;
      ++v323;
      [*(v622 + 3584) addAttendee_];

      v322 += 5;
      v321 = v607;
      if (v614 == v323)
      {
        v3 = v583;
        goto LABEL_259;
      }
    }

    __break(1u);
LABEL_352:
    ;
  }

  v236 = 0;
  v237 = v147[414];
  v585 = v147[412];
  v577 = (v237 + 48);
  v572 = (v237 + 32);
  v571 = (v237 + 8);
  v576 = v147[411];
  v238 = (v175 + 64);
  v606 = MEMORY[0x277D84F90];
  v574 = MEMORY[0x277D84F90];
  while (1)
  {
    v600 = v236;
    if (v236 >= *(v175 + 16))
    {
      goto LABEL_346;
    }

    v239 = v147;
    v240 = v147[413];
    v241 = v239[412];
    v242 = v239[410];
    v243 = v239[409];
    v245 = *(v238 - 4);
    v244 = *(v238 - 3);
    v246 = *(v238 - 2);
    v133 = *(v238 - 1);
    v587 = v238;
    v247 = *v238;
    sub_2428B2F38();
    sub_2428B2F38();
    v593 = v246;
    sub_2428B2F38();
    sub_2428B2F38();
    v613 = v247;
    sub_2428B2F38();
    sub_2428B2C68();
    sub_2427E72B8(v242, v241);
    sub_2427E0918(&v241[*(v576 + 24)], v243, &qword_27ECC2CE0, &qword_2428B6560);
    if ((*v577)(v243, 1, v240) == 1)
    {
      sub_2427E0980(v239[409], &qword_27ECC2CE0, &qword_2428B6560);
      v248 = v239;
      v123 = v606;
      v3 = v583;
    }

    else
    {
      (*v572)(v239[415], v239[409], v239[413]);
      v134 = v573;
      v248 = v239;
      v3 = v583;
      if (*(v573 + 16))
      {
        v249 = sub_24281E894(v239[415]);
        v250 = *v571;
        v123 = v606;
        if (v251)
        {
          v123 = v248[415];
          v132 = v248;
          v252 = v248[413];
          v253 = *(*(v573 + 56) + 8 * v249);
          v250(v123, v252);
          v254 = v253;
          goto LABEL_192;
        }
      }

      else
      {
        v250 = *v571;
        v123 = v606;
      }

      v250(v248[415], v248[413]);
    }

    v255 = v585[1];
    if (v255 && *(v580 + 16) && (v134 = v580, v256 = sub_242801C04(*v248[412], v255), (v257 & 1) != 0))
    {
      v132 = v248;
      v258 = v580;
    }

    else
    {
      v259 = v585[3];
      if (!v259 || !*(v575 + 16) || (v134 = v575, v256 = sub_242801C04(v585[2], v259), (v260 & 1) == 0))
      {
        v132 = v248;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_2427F7934(0, *(v123 + 2) + 1, 1, v123);
        }

        v271 = *(v123 + 2);
        v270 = *(v123 + 3);
        if (v271 >= v270 >> 1)
        {
          v123 = sub_2427F7934((v270 > 1), v271 + 1, 1, v123);
        }

        sub_242822B9C(v132[412], type metadata accessor for AttendeeEntity.AttendeeAddresses);
        *(v123 + 2) = v271 + 1;
        v606 = v123;
        v272 = &v123[40 * v271];
        *(v272 + 4) = v245;
        *(v272 + 5) = v244;
        *(v272 + 6) = v593;
        *(v272 + 7) = v133;
        *(v272 + 8) = v613;
        goto LABEL_174;
      }

      v132 = v248;
      v258 = v575;
    }

    v254 = *(*(v258 + 56) + 8 * v256);
LABEL_192:
    v261 = v254;
    v262 = [v261 objectID];
    if (!v262)
    {
      break;
    }

    v263 = v262;
    v264 = sub_24281FB88(v262);

    sub_2428B2C68();
    LODWORD(v264) = *(v132 + 3657);
    if ((v264 ^ ([v261 participantRole] != 2)))
    {
      sub_242822B9C(v132[412], type metadata accessor for AttendeeEntity.AttendeeAddresses);
    }

    else
    {
      v265 = v574;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v265 = sub_2427F7A54(0, v574[2] + 1, 1, v574);
      }

      v267 = v265[2];
      v266 = v265[3];
      if (v267 >= v266 >> 1)
      {
        v265 = sub_2427F7A54((v266 > 1), v267 + 1, 1, v265);
      }

      v268 = v132[412];

      sub_242822B9C(v268, type metadata accessor for AttendeeEntity.AttendeeAddresses);
      v265[2] = v267 + 1;
      v574 = v265;
      v269 = &v265[6 * v267];
      v269[4] = v261;
      v269[5] = v245;
      v269[6] = v244;
      v269[7] = v593;
      v269[8] = v133;
      v269[9] = v613;
    }

LABEL_174:
    v236 = v600 + 1;
    v238 = v587 + 5;
    v175 = v579;
    v147 = v132;
    if (v578 == v600 + 1)
    {
      goto LABEL_205;
    }
  }

  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  v384 = MEMORY[0x245D1B5D0](0, v134);
LABEL_289:
  v385 = v384;
  v386 = *(v622 + 3584);

  v387 = [v386 endDate];
  if (v387)
  {
    v388 = *(v622 + 3448);
    v389 = *(v622 + 3432);
    v390 = *(v622 + 3424);
    sub_2428B3678();

    v387 = sub_2428B3658();
    (*(v389 + 8))(v388, v390);
  }

  v331 = v622;
  v391 = *(v622 + 3184);
  v392 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithEndDate_];

  [v385 setRecurrenceEnd_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v393 = swift_allocObject();
  *(v393 + 16) = xmmword_2428B5A90;
  *(v393 + 32) = v385;
  v394 = v385;
  v395 = sub_2428B46B8();

  [v123 setRecurrenceRules_];

  *(v622 + 2930) = 0;
  v3 = v583;
  sub_24281E5F8(v583, v622 + 1936);
  sub_2428B2DD8();

  sub_24281E630(v583);
  sub_2427E0980(v391, &qword_27ECC44A0, &qword_2428C16C0);
  v333 = v133;
LABEL_294:
  v331[452] = v132;
  sub_2428B2DC8();
  if ((v331[366] & 1) == 0)
  {
    [v331[448] setTravelTime_];
  }

  v396 = v331[389];
  v397 = v331[388];
  v398 = v331[387];
  sub_2428B2DE8();
  sub_2428B2DA8();

  v399 = v396;
  v400 = v331;
  v401 = (*(v397 + 88))(v399, v398);
  v402 = v331[389];
  v403 = v331[388];
  v404 = v331[387];
  if (v401 == v333)
  {
    (*(v403 + 96))(v331[389], v404);
    v405 = *v402;
    v406 = MEMORY[0x277D84F90];
    if (*v402)
    {
      *&v626 = MEMORY[0x277D84F90];
      v620 = *(v405 + 16);
      if (v620)
      {
        v588 = v132;
        v594 = v333;
        v407 = 0;
        v408 = *(v622 + 3040);
        v615 = *(v622 + 3072);
        v608 = v405 + ((*(v615 + 80) + 32) & ~*(v615 + 80));
        v409 = *(v622 + 3432);
        v410 = (v408 + 8);
        v597 = (v409 + 32);
        v601 = (v408 + 32);
        v411 = (v409 + 8);
        do
        {
          if (v407 >= *(v405 + 16))
          {
            goto LABEL_350;
          }

          v412 = *(v622 + 3088);
          v413 = *(v622 + 3080);
          sub_242822C44(v608 + *(v615 + 72) * v407, v412, type metadata accessor for AlarmTrigger);
          sub_242822C44(v412, v413, type metadata accessor for AlarmTrigger);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            (*v597)(*(v622 + 3440), *(v622 + 3080), *(v622 + 3424));
            v414 = objc_allocWithZone(MEMORY[0x277CC5988]);
            v415 = sub_2428B3658();
            v416 = [v414 initWithAbsoluteDate_];

            if (!v416)
            {
              goto LABEL_366;
            }

            (*v411)(*(v622 + 3440), *(v622 + 3424));
          }

          else
          {
            v417 = *(v622 + 3048);
            v418 = *(v622 + 3032);
            (*v601)(*(v622 + 3056), *(v622 + 3080), v418);
            v419 = [objc_opt_self() seconds];
            sub_2428B34C8();

            sub_2428B34B8();
            v421 = v420;
            v422 = *v410;
            (*v410)(v417, v418);
            if (![objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_])
            {
              goto LABEL_367;
            }

            v422(*(v622 + 3056), *(v622 + 3032));
          }

          v423 = sub_242822B9C(*(v622 + 3088), type metadata accessor for AlarmTrigger);
          MEMORY[0x245D1B200](v423);
          if (*((v626 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v626 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2428B46E8();
          }

          ++v407;
          sub_2428B4708();
        }

        while (v620 != v407);
        v406 = v626;
        v333 = v594;
        v132 = v588;
      }

      v331 = v622;
    }

    v433 = v331[448];
    v434 = *(v3 + 112);
    v632 = *(v3 + 96);
    v633 = v434;
    v634 = *(v3 + 128);
    *&v635 = *(v3 + 144);
    v435 = *(v3 + 48);
    v628 = *(v3 + 32);
    v629 = v435;
    v436 = *(v3 + 80);
    v630 = *(v3 + 64);
    v631 = v436;
    v437 = *(v3 + 16);
    v626 = *v3;
    v627 = v437;
    sub_24281C8D8(v433, v406);
    v400 = v331;
  }

  else
  {
    (*(v403 + 8))(v331[389], v404);
  }

  v438 = v400;
  v439 = v400[378];
  v440 = v438[377];
  v441 = v438[376];
  v442 = v438;
  sub_2428B2DE8();
  sub_2428B2DA8();

  if ((*(v440 + 88))(v439, v441) != v333)
  {
    v452 = v442;
    (*(v442[377] + 8))(v442[378], v442[376]);
    goto LABEL_324;
  }

  v443 = *(v442 + 3662);
  v444 = v442[408];
  v445 = v442[378];
  (*(v442[377] + 96))(v445, v442[376]);
  sub_24281E660(v445, v444, &qword_27ECC2CE0, &qword_2428B6560);
  v446 = v442[448];
  if (v443 != 1)
  {
    v453 = v442[446];
    v454 = v442[445];
    v455 = v442[441];
    v456 = v442[438];
    v457 = v442[437];
    v458 = v442[408];

    sub_2427CCDB0();
    swift_allocError();
    *v459 = 56;
    swift_willThrow();

    sub_2427E0980(v458, &qword_27ECC2CE0, &qword_2428B6560);
    (*(v456 + 8))(v455, v457);
    goto LABEL_4;
  }

  v447 = v442[414];
  v448 = v442[413];
  v449 = v442[407];
  sub_2427E0918(v442[408], v449, &qword_27ECC2CE0, &qword_2428B6560);
  LODWORD(v448) = (*(v447 + 48))(v449, 1, v448);
  v450 = v446;
  if (v448 == 1)
  {
    v451 = 0;
  }

  else
  {
    v460 = v442[414];
    v461 = v442[413];
    v462 = v442[407];
    v451 = sub_2428B35A8();
    (*(v460 + 8))(v462, v461);
  }

  v452 = v442;
  v463 = v442[448];
  v464 = v442[408];
  [v463 setURL_];

  sub_2427E0980(v464, &qword_27ECC2CE0, &qword_2428B6560);
LABEL_324:
  sub_2428B2DC8();
  v465 = *(v452 + 2934);
  if (v465 == 7)
  {
LABEL_327:
    v468 = [v452[448] hasChanges];
    v469 = v452[448];
    if (v132 || v468)
    {
      v490 = [v452[448] hasChanges];

      if (v490)
      {
        v491 = v452[448];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
        v492 = swift_allocObject();
        v452[453] = v492;
        *(v492 + 16) = xmmword_2428B5A90;
        *(v492 + 32) = v491;
        v493 = v491;
        v494 = sub_2428B2DE8();
        v452[454] = v494;
        v495 = swift_task_alloc();
        v452[455] = v495;
        *v495 = v452;
        v495[1] = sub_24281A2E8;

        sub_24280C5F4(v442 + 2933, v492, v494);
        return;
      }

      v502 = v452[452];
      if (v502)
      {
        v503 = v442[446];
        v442[372] = 0;
        v504 = v502;
        v505 = [v503 saveEvent:v504 span:1 error:v442 + 372];
        v506 = v442[372];

        if (!v505)
        {
          v535 = v442;
          v536 = v442[448];
          v537 = v442[446];
          v538 = v442[445];
          v539 = v442[441];
          v540 = v442[438];
          v541 = v535[437];
          sub_2428B3538();

          swift_willThrow();
          (*(v540 + 8))(v539, v541);
          goto LABEL_4;
        }
      }

      v507 = v442 + 162;
      EventEntity.init(_:)(v442[448], v442 + 81);
      v508 = *(v442 + 88);
      *(v442 + 77) = *(v442 + 87);
      *(v442 + 78) = v508;
      v509 = *(v442 + 90);
      *(v442 + 79) = *(v442 + 89);
      *(v442 + 80) = v509;
      v510 = *(v442 + 84);
      *(v442 + 73) = *(v442 + 83);
      *(v442 + 74) = v510;
      v511 = *(v442 + 86);
      *(v442 + 75) = *(v442 + 85);
      *(v442 + 76) = v511;
      v512 = *(v442 + 82);
      *(v442 + 71) = *(v442 + 81);
      *(v442 + 72) = v512;
      v513 = sub_24281E5E0((v442 + 142));
      v514 = v442[446];
      v599 = v442[445];
      v603 = v442[448];
      v515 = v442[441];
      v516 = v442[438];
      v610 = v442[437];
      v617 = v442[452];
      if (v513 == 1)
      {
        sub_2427CCDB0();
        swift_allocError();
        *v517 = 25;
        swift_willThrow();

        (*(v516 + 8))(v515, v610);
        goto LABEL_4;
      }

      v624 = v442[375];
      v518 = *(v442 + 78);
      *(v442 + 17) = *(v442 + 77);
      *(v442 + 18) = v518;
      v519 = *(v442 + 80);
      *(v442 + 19) = *(v442 + 79);
      *(v442 + 20) = v519;
      v520 = *(v442 + 74);
      *(v442 + 13) = *(v442 + 73);
      *(v442 + 14) = v520;
      v521 = *(v442 + 76);
      *(v442 + 15) = *(v442 + 75);
      *(v442 + 16) = v521;
      v522 = *(v442 + 72);
      *(v442 + 11) = *(v442 + 71);
      *(v442 + 12) = v522;
      v523 = *(v442 + 88);
      *(v442 + 97) = *(v442 + 87);
      *(v442 + 98) = v523;
      v524 = *(v442 + 90);
      *(v442 + 99) = *(v442 + 89);
      *(v442 + 100) = v524;
      v525 = *(v442 + 84);
      *(v442 + 93) = *(v442 + 83);
      *(v442 + 94) = v525;
      v526 = *(v442 + 86);
      *(v442 + 95) = *(v442 + 85);
      *(v442 + 96) = v526;
      v527 = *(v442 + 82);
      *(v442 + 91) = *v507;
      *(v442 + 92) = v527;
      sub_2427CD4FC((v442 + 182), (v442 + 202));
      OpenEventDetailsIntent.init()(&v626);
      v528 = v626;
      v470 = v442;
      v529 = v627;
      v530 = *(v442 + 18);
      *(v442 + 117) = *(v442 + 17);
      *(v442 + 118) = v530;
      v531 = *(v442 + 20);
      *(v442 + 119) = *(v442 + 19);
      *(v442 + 120) = v531;
      v532 = *(v442 + 14);
      *(v442 + 113) = *(v442 + 13);
      *(v442 + 114) = v532;
      v533 = *(v442 + 16);
      *(v442 + 115) = *(v442 + 15);
      *(v442 + 116) = v533;
      v534 = *(v442 + 12);
      *(v442 + 111) = *(v442 + 11);
      *(v442 + 112) = v534;
      sub_2428B2DD8();
      sub_24280ACB8(v442 + 11, v528, *(&v528 + 1), v529, *(&v529 + 1), v624);

      sub_2427E0980(v507, &unk_27ECC2E10, &qword_2428BB3B8);

      (*(v516 + 8))(v515, v610);
    }

    else
    {
      v470 = v452;
      v602 = v452[446];
      v609 = v452[445];
      v616 = v452[438];
      v621 = v452[437];
      v623 = v452[441];
      v598 = v452[375];

      sub_2428B2DC8();
      v471 = *(v452 + 48);
      v632 = *(v452 + 47);
      v633 = v471;
      v472 = *(v452 + 50);
      v634 = *(v452 + 49);
      v635 = v472;
      v473 = *(v452 + 44);
      v628 = *(v452 + 43);
      v629 = v473;
      v474 = *(v452 + 46);
      v630 = *(v452 + 45);
      v631 = v474;
      v475 = *(v452 + 42);
      v626 = *(v452 + 41);
      v627 = v475;
      OpenEventDetailsIntent.init()(v625);
      v476 = v625[0];
      v477 = v625[1];
      v479 = v625[2];
      v478 = v625[3];
      v480 = v633;
      *(v452 + 57) = v632;
      *(v452 + 58) = v480;
      v481 = v635;
      *(v452 + 59) = v634;
      *(v452 + 60) = v481;
      v482 = v629;
      *(v452 + 53) = v628;
      *(v452 + 54) = v482;
      v483 = v631;
      *(v452 + 55) = v630;
      *(v452 + 56) = v483;
      v484 = v627;
      *(v452 + 51) = v626;
      *(v452 + 52) = v484;
      sub_2428B2DD8();
      sub_2428B2DC8();
      v485 = *(v452 + 68);
      *(v452 + 7) = *(v452 + 67);
      *(v452 + 8) = v485;
      v486 = *(v452 + 70);
      *(v452 + 9) = *(v452 + 69);
      *(v452 + 10) = v486;
      v487 = *(v452 + 64);
      *(v452 + 3) = *(v452 + 63);
      *(v452 + 4) = v487;
      v488 = *(v452 + 66);
      *(v452 + 5) = *(v452 + 65);
      *(v452 + 6) = v488;
      v489 = *(v452 + 62);
      *(v452 + 1) = *(v452 + 61);
      *(v452 + 2) = v489;
      sub_24280ACB8(v452 + 1, v476, v477, v479, v478, v598);

      sub_2427CCE04((v452 + 2));

      (*(v616 + 8))(v623, v621);
    }

    v5 = v470[1];
    goto LABEL_5;
  }

  v466 = [v452[448] allowsParticipationStatusModifications];
  v467 = v452[448];
  if (v466)
  {
    LOBYTE(v626) = v465;
    [v467 setParticipationStatus_];
    v452 = v442;
    goto LABEL_327;
  }

  v496 = v442[446];
  v497 = v442[445];
  v498 = v442[441];
  v499 = v442[438];
  v500 = v442[437];

  sub_2427CCDB0();
  swift_allocError();
  *v501 = 73;
  swift_willThrow();

  (*(v499 + 8))(v498, v500);
LABEL_4:

  v5 = *(v622 + 8);
LABEL_5:

  v5();
}