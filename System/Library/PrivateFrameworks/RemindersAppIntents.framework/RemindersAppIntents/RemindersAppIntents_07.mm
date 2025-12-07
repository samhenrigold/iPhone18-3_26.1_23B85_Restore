uint64_t SmartListType.longTitle.getter()
{
  v1 = sub_261CFD884();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_261CFD674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_261CFFA44();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v7 - 8);
  if (*v0 == 4)
  {
    sub_261CFF9B4();
    if (qword_280D22DA8 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_280D27028);
    (*(v3 + 16))(v5, v8, v2);
    sub_261CFD874();
    sub_261CFD6C4();
    return sub_261CFFA94();
  }

  else
  {
    v10[15] = *v0;
    return SmartListType.title.getter();
  }
}

uint64_t sub_261BA8934(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v19 = sub_261CFD674();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_261CFFA44();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_261CFD6A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = sub_261CFD234();
  __swift_allocate_value_buffer(v16, a2);
  __swift_project_value_buffer(v16, a2);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v9 + 104))(v11, *MEMORY[0x277CC9110], v19);
  sub_261CFD6C4();
  (*(v15 + 56))(v8, 1, 1, v14);
  return sub_261CFD224();
}

uint64_t static SmartListType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9998 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BA8CB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v72 = &v52 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v52 - v3;
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_261CFD674();
  v6 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFFA44();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_261CFD6A4();
  v12 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB528, &qword_261D06A50);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB530, &qword_261D06A58);
  v16 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v70 = *(*(v15 - 8) + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_261D05320;
  v58 = v17;
  v74 = v15;
  v75 = v17 + v16;
  *(v17 + v16) = 0;
  v18 = v11;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v19 = v71;
  v61 = __swift_project_value_buffer(v71, qword_280D27028);
  v20 = v6 + 16;
  v68 = *(v6 + 16);
  v68(v8, v61, v19);
  sub_261CFD874();
  v21 = v14;
  v22 = v8;
  sub_261CFD6C4();
  v23 = *(v12 + 56);
  v60 = v12 + 56;
  v67 = v23;
  v24 = v69;
  v23(v69, 1, 1, v73);
  v64 = sub_261CFD074();
  v25 = *(v64 - 8);
  v66 = *(v25 + 56);
  v63 = v25 + 56;
  v26 = v72;
  v66(v72, 1, 1, v64);
  v27 = v75;
  sub_261CFD0A4();
  v62 = v20;
  v28 = *(v74 + 48);
  v56 = v27 + v70;
  v57 = v28;
  *v56 = 1;
  v59 = v18;
  sub_261CFF9B4();
  v29 = v61;
  v30 = v71;
  v68(v22, v61, v71);
  sub_261CFD874();
  v54 = v21;
  sub_261CFD6C4();
  v31 = v24;
  v32 = v73;
  v67(v31, 1, 1, v73);
  v66(v26, 1, 1, v64);
  sub_261CFD0A4();
  v33 = v70;
  v57 = 2 * v70;
  v55 = (v75 + 2 * v70);
  v34 = v74;
  v56 = *(v74 + 48);
  *v55 = 2;
  sub_261CFF9B4();
  v35 = v29;
  v36 = v68;
  v68(v22, v35, v30);
  sub_261CFD874();
  sub_261CFD6C4();
  v67(v69, 1, 1, v32);
  v37 = v64;
  v66(v72, 1, 1, v64);
  sub_261CFD0A4();
  v38 = v75;
  v39 = *(v34 + 48);
  v56 = v75 + v57 + v33;
  v57 = v39;
  *v56 = 3;
  sub_261CFF9B4();
  v53 = v22;
  v40 = v61;
  v41 = v71;
  v36(v22, v61, v71);
  sub_261CFD874();
  sub_261CFD6C4();
  v42 = v67;
  v67(v69, 1, 1, v73);
  v66(v72, 1, 1, v37);
  sub_261CFD0A4();
  v57 = 4 * v70;
  v56 = *(v74 + 48);
  *(v38 + v57) = 4;
  sub_261CFF9B4();
  v43 = v53;
  v68(v53, v40, v41);
  sub_261CFD874();
  sub_261CFD6C4();
  v44 = v69;
  v45 = v73;
  v42(v69, 1, 1, v73);
  v46 = v72;
  v47 = v66;
  v66(v72, 1, 1, v64);
  v48 = v44;
  sub_261CFD0A4();
  v49 = (v75 + v57 + v70);
  v70 = *(v74 + 48);
  *v49 = 5;
  sub_261CFF9B4();
  v68(v43, v61, v71);
  sub_261CFD874();
  sub_261CFD6C4();
  v67(v48, 1, 1, v45);
  v47(v46, 1, 1, v64);
  sub_261CFD0A4();
  v50 = sub_261C3A1F0(v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_280D223E8 = v50;
  return result;
}

double static SmartListType.caseDisplayRepresentations.getter()
{
  if (qword_280D223E0 != -1)
  {
    swift_once();
  }

  sub_261CFD104();
  return result;
}

RemindersAppIntents::SmartListType_optional __swiftcall SmartListType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SmartListType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7961646F74;
  v3 = 0x64656767616C66;
  v4 = 0x64656E6769737361;
  if (v1 != 4)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C756465686373;
  if (v1 != 1)
  {
    v5 = 7105633;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_261BA982C(uint64_t a1)
{
  sub_261CFFB14();
}

void sub_261BA992C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F74;
  v5 = 0xE700000000000000;
  v6 = 0x64656767616C66;
  v7 = 0xE800000000000000;
  v8 = 0x64656E6769737361;
  if (v2 != 4)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xE900000000000064;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C756465686373;
  v10 = 0xE900000000000064;
  if (v2 != 1)
  {
    v9 = 7105633;
    v10 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void sub_261BA99F8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000027;
  v3 = *v1;
  v4 = "ers.smartlist.assigned";
  v5 = 0xD000000000000025;
  v6 = "ers.smartlist.completed";
  v7 = 0xD000000000000026;
  if (v3 != 4)
  {
    v7 = 0xD000000000000027;
    v6 = " Hidden Property Title";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "ers.smartlist.all";
  if (v3 != 1)
  {
    v2 = 0xD000000000000021;
    v8 = "ers.smartlist.flagged";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000023;
    v9 = "ers.smartlist.scheduled";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_261BA9AA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9998 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BA9B4C(uint64_t a1)
{
  v2 = sub_261B94D00();

  return MEMORY[0x28210B458](a1, v2);
}

double sub_261BA9B98()
{
  if (qword_280D223E0 != -1)
  {
    swift_once();
  }

  sub_261CFD104();
  return result;
}

uint64_t sub_261BA9BF4(uint64_t a1)
{
  v2 = sub_261BAA25C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_261BA9C40()
{
  result = qword_280D22D90;
  if (!qword_280D22D90)
  {
    sub_261CFEC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22D90);
  }

  return result;
}

uint64_t sub_261BA9C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261BA9D0C()
{
  result = qword_280D22160;
  if (!qword_280D22160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22160);
  }

  return result;
}

unint64_t sub_261BA9D64()
{
  result = qword_280D22150;
  if (!qword_280D22150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22150);
  }

  return result;
}

unint64_t sub_261BA9DBC()
{
  result = qword_280D22128;
  if (!qword_280D22128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22128);
  }

  return result;
}

unint64_t sub_261BA9E18()
{
  result = qword_280D22148;
  if (!qword_280D22148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22148);
  }

  return result;
}

unint64_t sub_261BA9E6C()
{
  result = qword_280D22140;
  if (!qword_280D22140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22140);
  }

  return result;
}

unint64_t sub_261BA9EC4()
{
  result = qword_280D22138;
  if (!qword_280D22138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22138);
  }

  return result;
}

unint64_t sub_261BA9F60()
{
  result = qword_280D22130;
  if (!qword_280D22130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22130);
  }

  return result;
}

unint64_t sub_261BA9FB8()
{
  result = qword_280D22390;
  if (!qword_280D22390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22390);
  }

  return result;
}

unint64_t sub_261BAA054()
{
  result = qword_280D223D0;
  if (!qword_280D223D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223D0);
  }

  return result;
}

unint64_t sub_261BAA0AC()
{
  result = qword_280D223A8;
  if (!qword_280D223A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223A8);
  }

  return result;
}

unint64_t sub_261BAA104()
{
  result = qword_280D22388;
  if (!qword_280D22388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22388);
  }

  return result;
}

unint64_t sub_261BAA15C()
{
  result = qword_280D223B0;
  if (!qword_280D223B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223B0);
  }

  return result;
}

unint64_t sub_261BAA1B0()
{
  result = qword_280D223C8;
  if (!qword_280D223C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223C8);
  }

  return result;
}

unint64_t sub_261BAA204()
{
  result = qword_280D223C0;
  if (!qword_280D223C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223C0);
  }

  return result;
}

unint64_t sub_261BAA25C()
{
  result = qword_280D223B8;
  if (!qword_280D223B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223B8);
  }

  return result;
}

unint64_t sub_261BAA304()
{
  result = qword_280D223A0;
  if (!qword_280D223A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223A0);
  }

  return result;
}

unint64_t sub_261BAA35C()
{
  result = qword_280D22380;
  if (!qword_280D22380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22380);
  }

  return result;
}

unint64_t sub_261BAA3B4()
{
  result = qword_280D22398;
  if (!qword_280D22398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22398);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmartListType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SmartListType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_261BAA578()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB538);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB538);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double EarlyAlertEntity.init(representation:)@<D0>(uint64_t a2@<X8>)
{
  sub_261CFCDA4();
  sub_261CFEBD4();

  if (v10 == 5 || (v13 = v10, EarlyAlertEntity.Unit.init(representation:)(&v13), v3 = v14, v14 == 5) || (sub_261CFCDA4(), sub_261CFEBD4(), , (v11 & 1) != 0))
  {
    if (qword_27FED99A8 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDB538);
    v5 = sub_261CFF784();
    v6 = sub_261CFFE64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261AE2000, v5, v6, "Unable to convert representation to EarlyAlertEntity", v7, 2u);
      MEMORY[0x26671D560](v7, -1, -1);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v14 = v3;
    EarlyAlertEntity.init(unit:interval:)(&v14, v10, &v10);

    v9 = v12;
    *a2 = v10;
    result = *&v11;
    *(a2 + 8) = v11;
    *(a2 + 24) = v9;
  }

  return result;
}

RemindersAppIntents::EarlyAlertEntity::Unit_optional __swiftcall EarlyAlertEntity.Unit.init(representation:)(RemindersAppIntents::EarlyAlertEntityRepresentation::UnitRepresentation representation)
{
  v2 = v1;
  v3 = *representation;
  v4 = 0xE600000000000000;
  v5 = 0x6574756E696DLL;
  v6 = 0xE300000000000000;
  v7 = 7954788;
  v8 = 0xE400000000000000;
  v9 = 1801807223;
  if (v3 != 3)
  {
    v9 = 0x68746E6F6DLL;
    v8 = 0xE500000000000000;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (*representation)
  {
    v5 = 1920298856;
    v4 = 0xE400000000000000;
  }

  if (*representation <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 <= 1)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  result.value = EarlyAlertEntity.Unit.init(rawValue:)(*&v10).value;
  if (v17 == 5)
  {
    if (qword_27FED99A8 != -1)
    {
      swift_once();
    }

    v13 = sub_261CFF7A4();
    __swift_project_value_buffer(v13, qword_27FEDB538);
    v14 = sub_261CFF784();
    v15 = sub_261CFFE64();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261AE2000, v14, v15, "Unable to convert representation to unit", v16, 2u);
      MEMORY[0x26671D560](v16, -1, -1);
    }
  }

  *v2 = v17;
  return result;
}

unint64_t sub_261BAA9A0()
{
  result = qword_27FEDB550;
  if (!qword_27FEDB550)
  {
    type metadata accessor for EarlyAlertEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB550);
  }

  return result;
}

unint64_t sub_261BAA9FC()
{
  result = qword_27FEDB558;
  if (!qword_27FEDB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB558);
  }

  return result;
}

uint64_t sub_261BAAA50()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDB560);
  __swift_project_value_buffer(v6, qword_27FEDB560);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateGroupNameAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99B0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB560);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateGroupNameAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_261BAAFF8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for GroupEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261BAB184(a1, &v10 - v7);
  sub_261BAB184(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261BAB1E8(v8);
}

uint64_t UpdateGroupNameAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for GroupEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261BAB184(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t sub_261BAB184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261BAB1E8(uint64_t a1)
{
  v2 = type metadata accessor for GroupEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*UpdateGroupNameAppIntent.entity.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*UpdateGroupNameAppIntent.property.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BAB3DC()
{
  result = swift_getKeyPath();
  qword_27FEDB578 = result;
  return result;
}

uint64_t static UpdateGroupNameAppIntent.binding.getter()
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateGroupNameAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB578 = a1;
}

uint64_t (*static UpdateGroupNameAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BAB584@<X0>(void *a1@<X8>)
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB578;
  return sub_261CFCDA4();
}

uint64_t sub_261BAB604(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED99B8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB578 = v1;
}

uint64_t UpdateGroupNameAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = v38 - v2;
  v58 = sub_261CFD184();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v53 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = v38 - v11;
  v12 = sub_261CFD674();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD884();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFFA44();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFD6A4();
  v50 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v38[1] = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD70, &unk_261D06AA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v22 = *(v13 + 104);
  v39 = *MEMORY[0x277CC9110];
  v21 = v39;
  v40 = v12;
  v22(v15, v39, v12);
  v42 = v22;
  v41 = v13 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v22(v15, v21, v12);
  v23 = v55;
  sub_261CFD6C4();
  v24 = *(v19 + 56);
  v49 = v19 + 56;
  v51 = v24;
  v24(v23, 0, 1, v18);
  v25 = type metadata accessor for GroupEntity(0);
  (*(*(v25 - 8) + 56))(v52, 1, 1, v25);
  v26 = sub_261CFC834();
  v45 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v46 = v28;
  v47 = v27 + 56;
  v28(v56, 1, 1, v26);
  v28(v53, 1, 1, v26);
  v43 = *MEMORY[0x277CBA308];
  v29 = *(v60 + 104);
  v60 += 104;
  v44 = v29;
  v29(v57);
  sub_261BAD258(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  *v59 = sub_261CFCC34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = v39;
  v31 = v40;
  v32 = v42;
  v42(v15, v39, v40);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v15, v30, v31);
  v33 = v55;
  sub_261CFD6C4();
  v51(v33, 0, 1, v50);
  v34 = sub_261CFF994();
  v62 = 0;
  v63 = 0;
  (*(*(v34 - 8) + 56))(v54, 1, 1, v34);
  v46(v56, 1, 1, v45);
  v44(v57, v43, v58);
  v35 = sub_261CFCD24();
  v36 = v59;
  v59[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB580, &qword_261D06AB0);
  v61 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v36[2] = result;
  return result;
}

uint64_t UpdateGroupNameAppIntent.perform()(uint64_t a1)
{
  *(v2 + 88) = a1;
  v3 = sub_261CFD754();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  *(v2 + 112) = swift_task_alloc();
  v4 = sub_261CFC9D4();
  *(v2 + 120) = v4;
  *(v2 + 128) = *(v4 - 8);
  *(v2 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB588, &qword_261D06AC0);
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  v6 = type metadata accessor for GroupEntity(0);
  *(v2 + 184) = v6;
  *(v2 + 192) = *(v6 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = *v1;
  *(v2 + 232) = *(v1 + 16);
  *(v2 + 240) = sub_261CFFD24();
  *(v2 + 248) = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  *(v2 + 256) = v8;
  *(v2 + 264) = v7;

  return MEMORY[0x2822009F8](sub_261BAC1FC, v8, v7);
}

uint64_t sub_261BAC1FC()
{
  v12 = v0;
  v1 = v0[29];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261C8D338(v4, (v0 + 2), v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_261BAB1E8(v4);
  v5 = v11[1];
  v0[34] = v11[0];
  v0[35] = v5;
  v6 = v11[3];
  v0[36] = v11[2];
  v0[37] = v6;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBB4();
  v7 = v0[8];
  v0[9] = v0[7];
  v0[10] = v7;
  sub_261CFCBC4();

  sub_261B1B468(0, v3, v2, v1);
  v0[38] = sub_261CFFD14();
  v9 = sub_261CFFCF4();
  v0[39] = v9;
  v0[40] = v8;

  return MEMORY[0x2822009F8](sub_261BAC370, v9, v8);
}

uint64_t sub_261BAC370()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_261BAC464;
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[22];

  return sub_261C59FE4(v6, "UpdateGroupAppIntent", 20, 2, v4, v5, v2, v3);
}

uint64_t sub_261BAC464()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_261BACB40;
  }

  else
  {
    v5 = sub_261BAC5A0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261BAC5A0()
{

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return MEMORY[0x2822009F8](sub_261BAC604, v1, v2);
}

uint64_t sub_261BAC604()
{
  v35 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[19];
  v4 = v0[18];

  sub_261B01D28(&qword_27FEDB590, &qword_27FEDB588, &qword_261D06AC0, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261B7CD38(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    sub_261B7CDA8(v0[18]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    (*(v6 + 8))(v5, v7);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v11 = sub_261CFF7A4();
    __swift_project_value_buffer(v11, qword_27FED9EF8);
    sub_261CFD104();
    v12 = sub_261CFF784();
    v13 = sub_261CFFE64();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v34);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 104;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD00000000000004ALL, 0x8000000261D1B1E0, v34);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v26 = v0[21];
    v33 = v0[22];
    v28 = v0[19];
    v27 = v0[20];
    sub_261B01D70();
    swift_allocError();
    *v29 = 20;
    swift_willThrow();

    sub_261B7CDA8(v28);
    (*(v26 + 8))(v33, v27);

    v25 = v0[1];
  }

  else
  {
    v17 = v0[26];
    v18 = v0[25];
    v19 = v0[22];
    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[19];
    v23 = v0[17];
    v32 = v0[16];
    v24 = v0[14];
    v31 = v0[15];
    sub_261BAD1F4(v0[18], v18);
    sub_261B7CDA8(v22);
    (*(v20 + 8))(v19, v21);
    sub_261CFCBB4();
    sub_261BBF2B0(v24);
    sub_261BAB1E8(v17);
    sub_261CFC9E4();
    sub_261BAD258(&qword_280D22668, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
    sub_261BAD258(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC984();

    (*(v32 + 8))(v23, v31);
    sub_261BAB1E8(v18);

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_261BACB40()
{

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return MEMORY[0x2822009F8](sub_261BACBA4, v1, v2);
}

uint64_t sub_261BACBA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static UpdateGroupNameAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB598, &qword_261D06AC8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5A0, &qword_261D06AD0);
  MEMORY[0x28223BE20](v1);
  sub_261B31948();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5A8, &qword_261D06B00);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5B0, &unk_261D06B30);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BACE7C(uint64_t a1)
{
  v2 = type metadata accessor for GroupEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261BAB184(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t (*sub_261BACF0C(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261BACF80(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BACFF4()
{
  if (qword_27FED99B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261BAD06C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99B0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB560);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BAD11C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateGroupNameAppIntent.perform()(a1);
}

uint64_t sub_261BAD1B8(uint64_t a1)
{
  v2 = sub_261B31948();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261BAD1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261BAD258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261BAD2EC()
{
  result = qword_27FEDB5C0;
  if (!qword_27FEDB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB5C0);
  }

  return result;
}

unint64_t sub_261BAD344()
{
  result = qword_27FEDB5C8;
  if (!qword_27FEDB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB5C8);
  }

  return result;
}

uint64_t GroupEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F0, &qword_261D06CF0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F8, &qword_261D06D20);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[1] = result;
  return result;
}

uint64_t GroupEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BAD4D8, 0, 0);
}

uint64_t sub_261BAD4D8()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261BAEC14;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C5F7E8("GroupEntityQuery.entitiesForIdentifiers", 39, 2, v2, v3, v4);
}

uint64_t GroupEntityQuery.suggestedEntities()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BAD5E4, 0, 0);
}

uint64_t sub_261BAD5E4()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261BAEC0C;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C5B2BC(v4, "GroupEntityQuery.suggestedEntities", 34, 2, v2, v3);
}

uint64_t sub_261BAD6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BAD758, 0, 0);
}

uint64_t sub_261BAD758()
{
  if (sub_261CFD1F4())
  {
    swift_getKeyPath();
    sub_261BAEBC4(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    sub_261CFCD54();

    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = type metadata accessor for ListEntity(0);
  (*(*(v5 - 8) + 56))(v2, v1, 1, v5);
  sub_261B6BFE8(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v0[7] = v4;
  v0[8] = v3;
  v12 = (*(v7 + 24) + **(v7 + 24));
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_261BAD99C;
  v9 = v0[12];
  v10 = v0[9];

  return v12(v10, v0 + 7, v9, v6, v7);
}

uint64_t sub_261BAD99C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_261BADB28;
  }

  else
  {
    v2 = sub_261BADAB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261BADAB0()
{
  sub_261B59E9C(v0[12]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_261BADB28()
{
  sub_261B59E9C(v0[12]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_261BADBA0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F0, &qword_261D06CF0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB5F8, &qword_261D06D20);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[1] = result;
  return result;
}

uint64_t sub_261BADC58(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BADC80, 0, 0);
}

uint64_t sub_261BADC80()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261BADD64;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C5F7E8("GroupEntityQuery.entitiesForIdentifiers", 39, 2, v2, v3, v4);
}

uint64_t sub_261BADD64(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_261BADEC8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BADEF0, 0, 0);
}

uint64_t sub_261BADEF0()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261BADFC4;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C5B2BC(v4, "GroupEntityQuery.suggestedEntities", 34, 2, v2, v3);
}

uint64_t sub_261BADFC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261BAE0B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_261BAE68C();
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t GroupEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  return MEMORY[0x2822009F8](sub_261BAE198, 0, 0);
}

uint64_t sub_261BAE198()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_261BAEC10;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C5BAD8(v6, "GroupEntityQuery.entitiesMatchingString", 39, 2, v2, v3, v4, v5);
}

uint64_t sub_261BAE280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  return MEMORY[0x2822009F8](sub_261BAE2AC, 0, 0);
}

uint64_t sub_261BAE2AC()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_261BAE394;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C5BAD8(v6, "GroupEntityQuery.entitiesMatchingString", 39, 2, v2, v3, v4, v5);
}

uint64_t sub_261BAE394()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_261BAE48C()
{
  result = qword_27FEDB600;
  if (!qword_27FEDB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB600);
  }

  return result;
}

unint64_t sub_261BAE4E4()
{
  result = qword_27FEDB608;
  if (!qword_27FEDB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB608);
  }

  return result;
}

unint64_t sub_261BAE584()
{
  result = qword_27FEDB610;
  if (!qword_27FEDB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB610);
  }

  return result;
}

unint64_t sub_261BAE624()
{
  result = qword_27FEDB618;
  if (!qword_27FEDB618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB620, qword_261D06DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB618);
  }

  return result;
}

unint64_t sub_261BAE68C()
{
  result = qword_27FEDB628;
  if (!qword_27FEDB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB628);
  }

  return result;
}

uint64_t destroy for GroupEntityQuery(void *a1)
{
}

uint64_t *sub_261BAE71C(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for GroupEntityQuery(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for GroupEntityQuery(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t dispatch thunk of GroupEntityGroupQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261B01F5C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GroupEntityGroupQueryPerforming.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_261AF4BDC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of GroupEntityGroupQueryPerforming.suggestedEntities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_261BAEBC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261BAEC1C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB630);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB630);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BAEE4C()
{
  v26 = v0;

  if (qword_27FED99C0 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDB630);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446466;
    sub_261CFCBB4();
    sub_261B7C0F0(v4 + *(v5 + 40), v6);
    sub_261BAF290(v4, type metadata accessor for ReminderEntity);
    v9 = AppEntityID.entityIdentifierString.getter();
    v11 = v10;
    sub_261BAF290(v6, type metadata accessor for AppEntityID);
    v12 = sub_261B879C8(v9, v11, &v25);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    sub_261CFCBB4();
    v13 = *(v0 + 129);
    if (v13 == 2)
    {
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      *(v0 + 130) = v13 & 1;
      v15 = sub_261CFFAB4();
      v14 = v16;
    }

    v17 = sub_261B879C8(v15, v14, &v25);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_261AE2000, v2, v3, "[OpenReminderAppIntent] Open reminder with target reminderID: %{public}s, showDetail: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v18 = *(v0 + 64);
  v19 = *(v0 + 40);
  sub_261CFCBB4();
  v20 = *(v0 + 128);
  sub_261CFCBB4();
  sub_261BBF818(v20 & 1, v19);
  sub_261BAF290(v18, type metadata accessor for ReminderEntity);
  v21 = [objc_opt_self() defaultWorkspace];
  if (v21)
  {
    v22 = v21;
    sub_261D00034();
  }

  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  sub_261CFC9A4();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_261BAF1F0(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BAF290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BAF2F0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB648);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB648);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BAF514()
{
  v21 = v0;

  if (qword_27FED99C8 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDB648);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = v0[6];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    sub_261CFCBB4();
    sub_261B7C0F0(v4 + *(v6 + 20), v5);
    sub_261BAF87C(v4, type metadata accessor for ListEntity);
    v9 = AppEntityID.entityIdentifierString.getter();
    v11 = v10;
    sub_261BAF87C(v5, type metadata accessor for AppEntityID);
    v12 = sub_261B879C8(v9, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_261AE2000, v2, v3, "[OpenListAppIntent] Open list with target listID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v13 = v0[8];
  v14 = v0[5];
  sub_261CFCBB4();
  sub_261BBF268(v14, v19, v20);
  sub_261BAF87C(v13, type metadata accessor for ListEntity);
  v15 = [objc_opt_self() defaultWorkspace];
  if (v15)
  {
    v16 = v15;
    sub_261D00034();
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  sub_261CFC9A4();

  v17 = v0[1];

  return v17();
}

uint64_t sub_261BAF7DC(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BAF87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BAF8DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB660);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB660);
  if (qword_27FED9C88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF3F00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id QuickReminderViewController.Configuration.reminderChangeItem.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id QuickReminderViewController.PlatterStyle.backgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t QuickReminderViewController.PlatterStyle.cornerRadius.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void QuickReminderViewController.PlatterStyle.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

id static QuickReminderViewController.preferredPlatterStyle.getter@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() systemBackgroundColor];
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_261BAFBF0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_261BB4410;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_261AF30D4(v4, v5);
}

uint64_t sub_261BAFC90(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_261BB43D8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_261AF30D4(v3, v4);
  return sub_261AF31F8(v8, v9);
}

uint64_t sub_261BAFDF8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_261BB44D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_261AF30D4(v4, v5);
}

uint64_t sub_261BAFE98(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_261BB44E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_261AF30D4(v3, v4);
  return sub_261AF31F8(v8, v9);
}

uint64_t sub_261BB0000@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_261BB436C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_261AF30D4(v4, v5);
}

uint64_t sub_261BB00A0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_261BB4368;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_261AF30D4(v3, v4);
  return sub_261AF31F8(v8, v9);
}

uint64_t sub_261BB0188(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_261BB0210(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id QuickReminderViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QuickReminderViewController.init()()
{
  v3 = 0;
  v4 = 16843009;
  v0 = objc_allocWithZone(swift_getObjectType());
  v1 = QuickReminderViewController.init(configuration:)(&v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

id QuickReminderViewController.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v84 = sub_261CFE364();
  v89 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB690, &qword_261D06FB0);
  MEMORY[0x28223BE20](v85);
  v90 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB698, &qword_261D06FB8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v87 = &v79 - v12;
  MEMORY[0x28223BE20](v11);
  v88 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6A0, &unk_261D06FC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v79 - v15;
  v17 = type metadata accessor for QuickReminderViewController.InitialListAndReminder(0);
  v93 = *(v17 - 8);
  v94 = v17;
  MEMORY[0x28223BE20](v17);
  v96 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *(a1 + 8);
  v91 = *(a1 + 9);
  v92 = v20;
  LODWORD(v21) = *(a1 + 10);
  v22 = *(a1 + 11);
  v23 = &v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_reminderSaveDidFinishCancellable] = 0;
  v86 = OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_configurationUsesLastSelectedLocationInViewDidAppear;
  v99 = v2;
  v2[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_configurationUsesLastSelectedLocationInViewDidAppear] = 0;
  if (qword_27FED99D0 != -1)
  {
    swift_once();
  }

  v26 = sub_261CFF7A4();
  __swift_project_value_buffer(v26, qword_27FEDB660);
  v27 = v19;
  v28 = v19;
  v29 = sub_261CFF784();
  v30 = sub_261CFFE84();

  v31 = os_log_type_enabled(v29, v30);
  v97 = ObjectType;
  v98 = v21;
  v83 = v10;
  v95 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v100 = v80;
    *v32 = 136315138;
    v102 = v27;
    v81 = v27;
    v33 = v91;
    v34 = v92;
    v103 = v92;
    v104 = v91;
    v105 = v21;
    v106 = v22;
    v35 = v16;
    v36 = v28;
    v37 = QuickReminderViewController.Configuration.description.getter();
    v21 = v38;

    v16 = v35;
    v39 = sub_261B879C8(v37, v21, &v100);
    LOBYTE(v21) = v98;

    *(v32 + 4) = v39;
    _os_log_impl(&dword_261AE2000, v29, v30, "ReminderCreationUI: init {configuration: %s}", v32, 0xCu);
    v40 = v80;
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x26671D560](v40, -1, -1);
    v41 = v32;
    ObjectType = v97;
    MEMORY[0x26671D560](v41, -1, -1);

    v42 = v81;
  }

  else
  {

    v42 = v27;
    v33 = v91;
    v34 = v92;
  }

  v102 = v42;
  v103 = v34;
  v104 = v33;
  v105 = v21;
  v106 = v22;
  sub_261BB0E00(&v102, v16);
  if ((*(v93 + 48))(v16, 1, v94) == 1)
  {

    sub_261AE6A40(v16, &qword_27FEDB6A0, &unk_261D06FC0);
    v43 = _s19RemindersAppIntents27QuickReminderViewControllerC011createBlankfG0So06UIViewG0CyFZ_0();
    v44 = 0;
    v45 = 0;
    goto LABEL_28;
  }

  v46 = v22;
  sub_261BB2B74(v16, v96);
  v47 = sub_261CFE3A4();
  v48 = v47;
  v44 = v49;
  v51 = v50;
  if (v33)
  {
    swift_getObjectType();
    v52 = v48;
    sub_261CFE584();
  }

  else
  {
    v53 = v47;
  }

  v54 = v87;
  v55 = v88;
  v94 = v48;
  if (v46)
  {
    swift_getObjectType();
    sub_261CFE574();
  }

  sub_261CFDE54();
  v56 = sub_261CFDDA4();
  sub_261CFDE24();
  v58 = v57;

  v93 = v51;
  if (v58)
  {
    sub_261CFE354();
    v59 = v89;
    v60 = v84;
  }

  else
  {
    v59 = v89;
    v60 = v84;
    (*(v89 + 56))(v55, 1, 1, v84);
  }

  v61 = v90;
  (*(v59 + 104))(v54, *MEMORY[0x277D45D88], v60);
  (*(v59 + 56))(v54, 0, 1, v60);
  v62 = *(v85 + 48);
  sub_261AFB668(v55, v61, &qword_27FEDB698, &qword_261D06FB8);
  sub_261AFB668(v54, v61 + v62, &qword_27FEDB698, &qword_261D06FB8);
  v63 = v60;
  v64 = *(v59 + 48);
  if (v64(v61, 1, v63) == 1)
  {
    sub_261AE6A40(v54, &qword_27FEDB698, &qword_261D06FB8);
    v61 = v90;
    sub_261AE6A40(v55, &qword_27FEDB698, &qword_261D06FB8);
    v65 = v64(v61 + v62, 1, v63);
    v43 = v94;
    if (v65 == 1)
    {
      sub_261AE6A40(v61, &qword_27FEDB698, &qword_261D06FB8);
      v66 = v98;
LABEL_22:
      ObjectType = v97;
      v68 = v95;
      goto LABEL_24;
    }

LABEL_21:
    sub_261AE6A40(v61, &qword_27FEDB690, &qword_261D06FB0);
    v66 = 0;
    goto LABEL_22;
  }

  v67 = v83;
  sub_261AFB668(v61, v83, &qword_27FEDB698, &qword_261D06FB8);
  if (v64(v61 + v62, 1, v63) == 1)
  {
    sub_261AE6A40(v87, &qword_27FEDB698, &qword_261D06FB8);
    sub_261AE6A40(v88, &qword_27FEDB698, &qword_261D06FB8);
    (*(v89 + 8))(v67, v63);
    v43 = v94;
    goto LABEL_21;
  }

  v69 = v89;
  v70 = v82;
  (*(v89 + 32))(v82, v61 + v62, v63);
  sub_261BB2C34(&qword_27FEDB6D0, 255, MEMORY[0x277D45D90], MEMORY[0x277D45D98]);
  v71 = sub_261CFF974();
  v72 = *(v69 + 8);
  v72(v70, v63);
  sub_261AE6A40(v87, &qword_27FEDB698, &qword_261D06FB8);
  sub_261AE6A40(v88, &qword_27FEDB698, &qword_261D06FB8);
  v72(v67, v63);
  sub_261AE6A40(v61, &qword_27FEDB698, &qword_261D06FB8);
  v66 = v71 & v98;
  ObjectType = v97;
  v43 = v94;
  v68 = v95;
LABEL_24:
  v45 = v93;
  v99[v86] = v66 & 1;

  if ((v66 & 1) == 0 && ((v98 ^ 1) & 1) == 0)
  {
    swift_getObjectType();
    sub_261CFE594();
  }

  sub_261BB2BD8(v96);
LABEL_28:
  v73 = v99;
  v74 = &v99[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_quickReminderModuleInterface];
  *v74 = v44;
  *(v74 + 1) = v45;
  *&v73[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_contentViewController] = v43;
  v101.receiver = v73;
  v101.super_class = ObjectType;
  swift_unknownObjectRetain();
  v75 = objc_msgSendSuper2(&v101, sel_initWithNibName_bundle_, 0, 0);
  if (v44)
  {
    swift_getObjectType();
    sub_261BB2C34(&qword_27FEDB6C8, v76, type metadata accessor for QuickReminderViewController, &protocol conformance descriptor for QuickReminderViewController);
    v77 = v75;
    sub_261CFE564();
    swift_unknownObjectRelease();
  }

  return v75;
}

uint64_t type metadata accessor for QuickReminderViewController.InitialListAndReminder(uint64_t a1)
{
  result = qword_27FEDB700;
  if (!qword_27FEDB700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261BB0E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = sub_261CFE344();
  v93 = *(v3 - 8);
  v94 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v85 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v84 - v6;
  v90 = sub_261CFE884();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFE874();
  isa = v9[-1].isa;
  v92 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v84 - v13;
  v15 = sub_261CFE794();
  v97 = *(v15 - 8);
  v98 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v87 = &v84 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v86 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = &v84 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
  MEMORY[0x28223BE20](v24 - 8);
  v100 = &v84 - v25;
  v26 = *a1;
  v27 = *(a1 + 8);
  if (*a1)
  {
    v28 = v26;
    v29 = [v28 saveRequest];
    v30 = [v29 store];

    if (v30)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = 1;
      v32 = (v31 + 16);
      goto LABEL_6;
    }
  }

  v30 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v33 = swift_allocObject();
  v99 = v33;
  *(v33 + 16) = 1;
  v32 = (v33 + 16);
  if (v26)
  {
    v28 = v26;
    v31 = v99;
LABEL_6:
    v34 = v100;
    (*(v97 + 56))(v100, 1, 1, v98);
    if (!v27)
    {
LABEL_25:
      v48 = v95;
      (*(v93 + 56))(v95, 1, 1, v94);
      v45 = v30;
      goto LABEL_29;
    }

    v35 = v28;
    v36 = [v35 listID];
    v99 = v31;
    v37 = sub_261BB22E4(v31);
    v38 = v37;
    v84 = v35;
    if (v36)
    {
      v39 = v88;
      if (v37)
      {
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        v40 = sub_261D000F4();

        if (v40)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v39 = v88;
      if (!v37)
      {
LABEL_24:

        goto LABEL_25;
      }

      v36 = v37;
    }

LABEL_19:
    if (qword_27FED99D0 != -1)
    {
      swift_once();
    }

    v49 = sub_261CFF7A4();
    __swift_project_value_buffer(v49, qword_27FEDB660);
    v50 = sub_261CFF784();
    v51 = sub_261CFFE84();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v93;
    if (v52)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_261AE2000, v50, v51, "ReminderCreationUI: fetching initial list for usesLastSelectedList", v54, 2u);
      MEMORY[0x26671D560](v54, -1, -1);
    }

    sub_261CFE894();
    v55 = *v32;
    (*(v89 + 104))(v8, *MEMORY[0x277D45E70], v90);
    v56 = v55;
    sub_261CFE864();
    v57 = v87;
    v45 = v30;
    sub_261CFE844();
    (*(isa + 8))(v14, v92);
    v48 = v95;
    sub_261CFE784();
    v58 = v94;
    (*(v53 + 56))(v48, 0, 1, v94);
    v59 = v86;
    sub_261AFB668(v48, v86, &qword_27FEDB6F8, &qword_261D070B8);
    v60 = (*(v53 + 48))(v59, 1, v58);
    v61 = v60 == 1;
    v62 = v57;
    v34 = v100;
    if (v61)
    {
      (*(v97 + 8))(v62, v98);
      v28 = v84;

      sub_261AE6A40(v59, &qword_27FEDB6F8, &qword_261D070B8);
    }

    else
    {
      (*(v53 + 32))(v39, v59, v58);
      v68 = v85;
      (*(v53 + 16))(v85, v39, v58);
      v69 = v39;
      v70 = sub_261CFF784();
      v71 = sub_261CFFE84();
      if (os_log_type_enabled(v70, v71))
      {
        v73 = swift_slowAlloc();
        isa = swift_slowAlloc();
        *v73 = 138412290;
        v92 = v70;
        v74 = sub_261CFE334();
        v75 = *(v53 + 8);
        v75(v68, v58);
        v76 = v75;
        *(v73 + 4) = v74;
        v77 = isa;
        *isa = v74;
        v78 = v71;
        v79 = v92;
        _os_log_impl(&dword_261AE2000, v92, v78, "ReminderCreationUI: initial pending move target list: %@", v73, 0xCu);
        sub_261AE6A40(v77, &unk_27FEDA730, &unk_261D035C0);
        v80 = v77;
        v34 = v100;
        MEMORY[0x26671D560](v80, -1, -1);
        MEMORY[0x26671D560](v73, -1, -1);

        v81 = v84;
        v76(v88, v58);
        (*(v97 + 8))(v87, v98);
        v28 = v81;
      }

      else
      {

        v82 = v84;
        v83 = *(v53 + 8);
        v83(v68, v58);
        v83(v69, v58);
        (*(v97 + 8))(v87, v98);
        v28 = v82;
      }
    }

    goto LABEL_29;
  }

  if (qword_27FED99D0 != -1)
  {
    swift_once();
  }

  v41 = sub_261CFF7A4();
  __swift_project_value_buffer(v41, qword_27FEDB660);
  v42 = sub_261CFF784();
  v43 = sub_261CFFE84();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v30;
  v46 = v93;
  if (v44)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_261AE2000, v42, v43, "ReminderCreationUI: fetching initial list for reminder creation", v47, 2u);
    MEMORY[0x26671D560](v47, -1, -1);
  }

  v48 = v95;
  (*(v46 + 56))(v95, 1, 1, v94);
  sub_261CFE894();
  sub_261BB22E4(v99);
  (*(v89 + 104))(v8, *MEMORY[0x277D45E70], v90);
  sub_261CFE864();
  sub_261CFE844();
  (*(isa + 8))(v12, v92);
  v64 = v97;
  v63 = v98;
  v34 = v100;
  (*(v97 + 16))(v100, v18, v98);
  (*(v64 + 56))(v34, 0, 1, v63);
  v28 = sub_261CFE854();
  (*(v64 + 8))(v18, v63);
LABEL_29:

  v65 = v96;
  sub_261BB4448(v34, v96, &qword_27FEDB6F0, &qword_261D070B0);
  v66 = type metadata accessor for QuickReminderViewController.InitialListAndReminder(0);
  sub_261BB4448(v48, v65 + *(v66 + 24), &qword_27FEDB6F8, &qword_261D070B8);
  *(v65 + *(v66 + 20)) = v28;
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
}

Swift::Void __swiftcall QuickReminderViewController.viewDidLoad()()
{
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 setPreservesSuperviewLayoutMargins_];

  v3 = *&v0[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_contentViewController];
  [v0 addChildViewController_];
  v4 = [v3 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  [v6 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D06F80;
  v9 = [v5 leadingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v13;
  v14 = [v5 topAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v8 + 40) = v18;
  v19 = [v5 trailingAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v8 + 48) = v23;
  v24 = [v5 bottomAnchor];
  v25 = [v0 view];
  if (v25)
  {
    v26 = v25;
    v27 = objc_opt_self();
    v28 = [v26 bottomAnchor];

    v29 = [v24 constraintEqualToAnchor_];
    *(v8 + 56) = v29;
    sub_261B05020(0, &qword_27FEDB6D8, 0x277CCAAD0);
    v30 = sub_261CFFC54();

    [v27 activateConstraints_];

    [v3 didMoveToParentViewController_];
    return;
  }

LABEL_15:
  __break(1u);
}

Swift::Void __swiftcall QuickReminderViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  if (v1[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_configurationUsesLastSelectedLocationInViewDidAppear] == 1)
  {
    if (*&v1[OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_quickReminderModuleInterface])
    {
      swift_getObjectType();
      sub_261CFE594();
    }
  }
}

void *sub_261BB22E4(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  v3 = v1;
  if (v1 == 1)
  {
    sub_261CFDE54();
    v4 = sub_261CFDDA4();
    v3 = sub_261CFDE34();

    swift_beginAccess();
    v5 = *v2;
    *v2 = v3;
    v6 = v3;
    sub_261BB44B0(v5);
  }

  sub_261BB44C0(v1);
  return v3;
}

id QuickReminderViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_261CFFA54();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id QuickReminderViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261BB2530(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (qword_27FED99D0 != -1)
  {
    swift_once();
  }

  v8 = sub_261CFF7A4();
  __swift_project_value_buffer(v8, qword_27FEDB660);
  v9 = sub_261CFF784();
  v10 = sub_261CFFE84();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_261AE2000, v9, v10, "QuickReminderViewController: invoke saveDidFinishHandler", v11, 2u);
    MEMORY[0x26671D560](v11, -1, -1);
  }

  return a3(a1, a5);
}

uint64_t QuickReminderViewController.Configuration.description.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v18 = *(v0 + 10);
  v19 = *(v0 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA668, &qword_261D06FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_261D06F90;
  sub_261D00334();

  if (v2 && [v2 objectID])
  {
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v1 = sub_261CFFAB4();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x26671C210](v1, v7);

  *(v5 + 32) = 0xD000000000000014;
  *(v5 + 40) = 0x8000000261D1B410;
  sub_261D00334();

  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x26671C210](v8, v9);

  *(v5 + 48) = 0xD000000000000016;
  *(v5 + 56) = 0x8000000261D1B430;
  sub_261D00334();

  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x26671C210](v10, v11);

  *(v5 + 64) = 0xD000000000000019;
  *(v5 + 72) = 0x8000000261D1B450;
  sub_261D00334();

  if (v18)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v18)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x26671C210](v12, v13);

  *(v5 + 80) = 0xD00000000000001ALL;
  *(v5 + 88) = 0x8000000261D1B470;
  sub_261D00334();

  if (v19)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v19)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x26671C210](v14, v15);

  *(v5 + 96) = 0xD000000000000016;
  *(v5 + 104) = 0x8000000261D1B490;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6E0, &qword_261D06FD8);
  sub_261B01D28(&qword_27FEDB6E8, &qword_27FEDB6E0, &qword_261D06FD8, MEMORY[0x277D83958]);
  v16 = sub_261CFF954();

  return v16;
}

id _s19RemindersAppIntents27QuickReminderViewControllerC011createBlankfG0So06UIViewG0CyFZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_261D06FA0;
    v5 = [v2 widthAnchor];
    v6 = [v5 constraintEqualToConstant_];

    v7 = sub_261CFFFA4();
    *(v4 + 32) = v7;
    v8 = [v2 heightAnchor];
    v9 = [v8 constraintEqualToConstant_];

    v10 = sub_261CFFFA4();
    *(v4 + 40) = v10;
    sub_261B05020(0, &qword_27FEDB6D8, 0x277CCAAD0);
    v11 = sub_261CFFC54();

    [v3 activateConstraints_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261BB2B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickReminderViewController.InitialListAndReminder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261BB2BD8(uint64_t a1)
{
  v2 = type metadata accessor for QuickReminderViewController.InitialListAndReminder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261BB2C34(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s19RemindersAppIntents27QuickReminderViewControllerC05quickE9DidCancelyy0A6UICore09TTRIQuickE15ModuleInterface_pF_0()
{
  v1 = v0;
  if (qword_27FED99D0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDB660);
  v3 = sub_261CFF784();
  v4 = sub_261CFFE84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_261AE2000, v3, v4, "QuickReminderViewController: invoke cancelHandler", v5, 2u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler;
  result = swift_beginAccess();
  v8 = *v6;
  if (*v6)
  {
    v9 = *(v6 + 8);
    sub_261CFCDA4();
    v8(v1);
    return sub_261AF31F8(v8, v9);
  }

  return result;
}

void sub_261BB2DAC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_261CFE6F4();
  if (v2)
  {
    v3 = v2;
    if (qword_27FED99D0 != -1)
    {
      swift_once();
    }

    v4 = sub_261CFF7A4();
    __swift_project_value_buffer(v4, qword_27FEDB660);
    v5 = sub_261CFF784();
    v6 = sub_261CFFE84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261AE2000, v5, v6, "QuickReminderViewController: invoke commitHandler", v7, 2u);
      MEMORY[0x26671D560](v7, -1, -1);
    }

    v8 = v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_commitHandler;
    swift_beginAccess();
    v9 = *v8;
    if (*v8)
    {
      v10 = *(v8 + 8);
      sub_261CFCDA4();
      v9(v1, v3);
      sub_261AF31F8(v9, v10);
    }

    v11 = (v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_saveDidFinishHandler);
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {
      v13 = v11[1];
      sub_261CFCDA4();
      sub_261CFE6E4();
      v14 = swift_allocObject();
      v14[2] = v12;
      v14[3] = v13;
      v14[4] = v3;
      sub_261AF30D4(v12, v13);
      v15 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB720, &qword_261D09240);
      sub_261B01D28(&qword_27FEDB728, &qword_27FEDB720, &qword_261D09240, MEMORY[0x277CBCEB0]);
      v16 = sub_261CFF7E4();

      sub_261AF31F8(v12, v13);

      *(v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_reminderSaveDidFinishCancellable) = v16;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27FED99D0 != -1)
    {
      swift_once();
    }

    v17 = sub_261CFF7A4();
    __swift_project_value_buffer(v17, qword_27FEDB660);
    v18 = sub_261CFF784();
    v19 = sub_261CFFE64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_261AE2000, v18, v19, "QuickReminderViewController: unexpectedly got optimisticReminder=nil from quickReminderDidCommit", v20, 2u);
      MEMORY[0x26671D560](v20, -1, -1);
    }

    v21 = v1 + OBJC_IVAR____TtC19RemindersAppIntents27QuickReminderViewController_cancelHandler;
    swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = *(v21 + 8);
      sub_261CFCDA4();
      v22(v1);
      sub_261AF31F8(v22, v23);
    }
  }
}

uint64_t assignWithCopy for QuickReminderViewController.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  return a1;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t assignWithTake for QuickReminderViewController.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  return a1;
}

uint64_t getEnumTagSinglePayload for QuickReminderViewController.Configuration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for QuickReminderViewController.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for QuickReminderViewController.PlatterStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v7;
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for QuickReminderViewController.PlatterStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for QuickReminderViewController.PlatterStyle(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for QuickReminderViewController.PlatterStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *sub_261BB3480(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    v7 = sub_261CFE794();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = *(a3 + 24);
    v13 = *(a2 + v11);
    *(a1 + v11) = v13;
    v14 = sub_261CFE344();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v13;
    if (v16(a2 + v12, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
      memcpy(a1 + v12, a2 + v12, *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(a1 + v12, a2 + v12, v14);
      (*(v15 + 56))(a1 + v12, 0, 1, v14);
    }
  }

  return a1;
}

uint64_t sub_261BB36D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFE794();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 24);
  v7 = sub_261CFE344();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v6, v7);
  }

  return result;
}

char *sub_261BB3838(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  v11 = *&a2[v9];
  *&a1[v9] = v11;
  v12 = sub_261CFE344();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v11;
  if (v14(&a2[v10], 1, v12))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    memcpy(&a1[v10], &a2[v10], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(&a1[v10], &a2[v10], v12);
    (*(v13 + 56))(&a1[v10], 0, 1, v12);
  }

  return a1;
}

char *sub_261BB3A44(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *&a2[v12];
  v14 = *&a1[v12];
  *&a1[v12] = v13;
  v15 = v13;

  v16 = *(a3 + 24);
  v17 = sub_261CFE344();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  LODWORD(v14) = v19(&a1[v16], 1, v17);
  v20 = v19(&a2[v16], 1, v17);
  if (!v14)
  {
    if (!v20)
    {
      (*(v18 + 24))(&a1[v16], &a2[v16], v17);
      return a1;
    }

    (*(v18 + 8))(&a1[v16], v17);
    goto LABEL_12;
  }

  if (v20)
  {
LABEL_12:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    memcpy(&a1[v16], &a2[v16], *(*(v21 - 8) + 64));
    return a1;
  }

  (*(v18 + 16))(&a1[v16], &a2[v16], v17);
  (*(v18 + 56))(&a1[v16], 0, 1, v17);
  return a1;
}

char *sub_261BB3D14(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v10 = sub_261CFE344();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  return a1;
}

char *sub_261BB3F14(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = *&a1[v12];
  *&a1[v12] = *&a2[v12];

  v14 = *(a3 + 24);
  v15 = sub_261CFE344();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(&a1[v14], 1, v15);
  v19 = v17(&a2[v14], 1, v15);
  if (!v18)
  {
    if (!v19)
    {
      (*(v16 + 40))(&a1[v14], &a2[v14], v15);
      return a1;
    }

    (*(v16 + 8))(&a1[v14], v15);
    goto LABEL_12;
  }

  if (v19)
  {
LABEL_12:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    return a1;
  }

  (*(v16 + 32))(&a1[v14], &a2[v14], v15);
  (*(v16 + 56))(&a1[v14], 0, 1, v15);
  return a1;
}

void sub_261BB4208(uint64_t a1)
{
  sub_261BB4314(319, &qword_27FEDB710, MEMORY[0x277D45E60]);
  if (v1 <= 0x3F)
  {
    sub_261BB4314(319, &qword_27FEDB718, MEMORY[0x277D45D80]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_261BB4314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_261D00154();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_261BB439C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_261BB43D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_261BB4448(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_261BB44B0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_261BB44C0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t OpenSmartListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = sub_261CFD184();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v28 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v7 - 8);
  v26 = v25 - v8;
  v9 = sub_261CFD674();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD884();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_261CFFA44();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB748, &qword_261D070E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v10 + 104);
  v18(v12, v17, v9);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v18(v12, v17, v9);
  v19 = v26;
  sub_261CFD6C4();
  (*(v16 + 56))(v19, 0, 1, v15);
  LOBYTE(v34[0]) = 6;
  v20 = sub_261CFC834();
  v21 = *(*(v20 - 8) + 56);
  v21(v27, 1, 1, v20);
  v21(v28, 1, 1, v20);
  (*(v30 + 104))(v29, *MEMORY[0x277CBA308], v31);
  sub_261B94D00();
  v22 = sub_261CFCC04();
  v23 = v32;
  *v32 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB750, &qword_261D070E8);
  v33 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v23[1] = result;
  return result;
}

uint64_t sub_261BB4A50()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDB730);
  __swift_project_value_buffer(v6, qword_27FEDB730);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenSmartListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99D8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenSmartListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

void *sub_261BB5000@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261BB503C(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenSmartListAppIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenSmartListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261BB5204, v4, v3);
}

uint64_t sub_261BB5204()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_261BB52D8;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C58674(v4, "OpenSmartListAppIntent", 22, 2, v2, v3);
}

uint64_t sub_261BB52D8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_261BB5FD4;
  }

  else
  {
    v5 = sub_261BB5FD8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

unint64_t sub_261BB5418()
{
  result = qword_27FEDB758;
  if (!qword_27FEDB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB758);
  }

  return result;
}

uint64_t sub_261BB546C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_261CFFD24();
  v3[12] = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261BB5508, v5, v4);
}

uint64_t sub_261BB5508()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_261B1C224(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v1;
  v0[8] = v2;
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_261BB5674;
  v6 = v0[9];

  return v8(v6, v0 + 7, v3, v4);
}

uint64_t sub_261BB5674()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_261BB57F4;
  }

  else
  {
    v5 = sub_261BB5788;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261BB5788()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BB57F4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_261BB5898(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

unint64_t sub_261BB5914()
{
  result = qword_280D22CB0;
  if (!qword_280D22CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22CB0);
  }

  return result;
}

unint64_t sub_261BB596C()
{
  result = qword_280D22CB8[0];
  if (!qword_280D22CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D22CB8);
  }

  return result;
}

uint64_t sub_261BB5A2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99D8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BB5AD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261BB5B78, v4, v3);
}

uint64_t sub_261BB5B78()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_261BB5C4C;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C58674(v4, "OpenSmartListAppIntent", 22, 2, v2, v3);
}

uint64_t sub_261BB5C4C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_261BB5DEC;
  }

  else
  {
    v5 = sub_261BB5D88;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261BB5D88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BB5DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BB5E54(uint64_t a1)
{
  v2 = sub_261B318F4();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of OpenSmartListAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t DeleteSectionsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v1 = sub_261CFD184();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v25 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = sub_261CFD674();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFD884();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFFA44();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFD6A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB778, &qword_261D072C0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v12 + 104))(v14, *MEMORY[0x277CC9110], v11);
  sub_261CFD6C4();
  (*(v18 + 56))(v10, 1, 1, v17);
  v31 = 0;
  v19 = sub_261CFC834();
  v20 = *(*(v19 - 8) + 56);
  v20(v7, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, *MEMORY[0x277CBA308], v28);
  sub_261BB64D0();
  v21 = sub_261CFCC34();
  v22 = v29;
  *v29 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB780, &qword_261D072C8);
  v30 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v22[1] = result;
  return result;
}

unint64_t sub_261BB64D0()
{
  result = qword_280D224E0;
  if (!qword_280D224E0)
  {
    type metadata accessor for SectionEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D224E0);
  }

  return result;
}

uint64_t sub_261BB6530()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDB760);
  __swift_project_value_buffer(v6, qword_27FEDB760);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static DeleteSectionsAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99E0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB760);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteSectionsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

void *sub_261BB6ABC@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261BB6AF8(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

void (*DeleteSectionsAppIntent.entities.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA3C4;
}

uint64_t static DeleteSectionsAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB788, &qword_261D072D0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB790, &qword_261D072D8);
  MEMORY[0x28223BE20](v1);
  sub_261B318A0();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB798, &qword_261D07308);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t DeleteSectionsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = *v1;
  sub_261CFFD24();
  *(v2 + 136) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 144) = v4;
  *(v2 + 152) = v3;

  return MEMORY[0x2822009F8](sub_261BB6E5C, v4, v3);
}

uint64_t sub_261BB6E5C()
{
  v1 = v0[15];
  v2 = v0[16];
  sub_261B1CFCC(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[12] = v1;
  v0[13] = v2;
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_261BB6FC8;

  return v7(v0 + 7, v0 + 12, v3, v4);
}

uint64_t sub_261BB6FC8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[19];
    v5 = sub_261BB715C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v3 = v2[18];
    v4 = v2[19];
    v5 = sub_261BB70E4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261BB70E4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_261CFC9A4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BB715C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_261BB71CC()
{
  result = qword_27FEDB7A0;
  if (!qword_27FEDB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB7A0);
  }

  return result;
}

unint64_t sub_261BB725C()
{
  result = qword_27FEDB7A8;
  if (!qword_27FEDB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB7A8);
  }

  return result;
}

unint64_t sub_261BB72B4()
{
  result = qword_27FEDB7B0;
  if (!qword_27FEDB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB7B0);
  }

  return result;
}

uint64_t sub_261BB7340@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99E0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB760);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BB73E8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB788, &qword_261D072D0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB790, &qword_261D072D8);
  MEMORY[0x28223BE20](v3);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB798, &qword_261D07308);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BB7580(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return DeleteSectionsAppIntent.perform()(a1);
}

uint64_t sub_261BB7620(uint64_t a1)
{
  v2 = sub_261B318A0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of DeleteSectionsAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t ColorEntity.init(name:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a1;
  v27 = a2;
  v30 = a3;
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v11 - 8);
  v31 = 64;
  v32 = 0xE100000000000000;
  MEMORY[0x26671C210](a1, a2);
  v28 = v32;
  v29 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v12 = *MEMORY[0x277CC9110];
  v13 = *(v6 + 104);
  v13(v8, v12, v5);
  sub_261CFD6C4();
  v25 = sub_261CFCB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v13(v8, v12, v5);
  sub_261CFD6B4();
  v24 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v13(v8, v12, v5);
  sub_261CFD6B4();
  v23 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v13(v8, v12, v5);
  sub_261CFD6B4();
  v14 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v13(v8, v12, v5);
  sub_261CFD6C4();
  v15 = sub_261CFCB44();
  v31 = v26;
  v32 = v27;
  v16 = v25;
  sub_261CFCA14();
  v31 = 0;
  LOBYTE(v32) = 1;
  v17 = v24;
  sub_261CFCA14();
  v31 = 0;
  LOBYTE(v32) = 1;
  v18 = v23;
  sub_261CFCA14();
  v31 = 0;
  LOBYTE(v32) = 1;
  sub_261CFCA14();
  v31 = 0;
  LOBYTE(v32) = 1;
  result = sub_261CFCA14();
  v20 = v30;
  v21 = v28;
  *v30 = v29;
  v20[1] = v21;
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v18;
  v20[5] = v14;
  v20[6] = v15;
  return result;
}

uint64_t ColorEntity.init(id:name:red:green:blue:alpha:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13)
{
  v45 = a8;
  v44 = a7;
  v41 = a6;
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v33 = a9;
  v47 = a13;
  v46 = a12;
  v43 = a11;
  v42 = a10;
  v13 = sub_261CFD674();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFD884();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFFA44();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v19 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v14 + 104);
  v31 = v14 + 104;
  v30 = v20;
  v21(v16, v20, v13);
  sub_261CFD6C4();
  v35 = sub_261CFCB14();
  v22 = v33;
  v33[2] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v23 = v13;
  v21(v16, v20, v13);
  sub_261CFD6B4();
  v34 = sub_261CFCB44();
  v24 = v22;
  v22[3] = v34;
  sub_261CFF9B4();
  sub_261CFD874();
  v25 = v30;
  v29 = v23;
  v21(v16, v30, v23);
  sub_261CFD6B4();
  v32 = sub_261CFCB44();
  v24[4] = v32;
  sub_261CFF9B4();
  sub_261CFD874();
  v21(v16, v25, v23);
  sub_261CFD6B4();
  v24[5] = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v21(v16, v25, v29);
  sub_261CFD6C4();
  v24[6] = sub_261CFCB44();
  v26 = v37;
  *v24 = v36;
  v24[1] = v26;
  v48 = v38;
  v49 = v39;
  sub_261CFCA14();
  v48 = v40;
  LOBYTE(v49) = v41 & 1;
  sub_261CFCA14();
  v48 = v44;
  LOBYTE(v49) = v45 & 1;
  sub_261CFCA14();
  v48 = v42;
  LOBYTE(v49) = v43 & 1;
  sub_261CFCA14();
  v48 = v46;
  LOBYTE(v49) = v47 & 1;
  return sub_261CFCA14();
}

uint64_t ColorEntity.init(red:green:blue:alpha:)@<X0>(double a1@<X0>, int a2@<W1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v45 = a3;
  v46 = a1;
  v43 = sub_261CFD674();
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_261CFFA44();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v14 - 8);
  v49 = 0.0;
  v50 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA968, &qword_261D074F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_261D01420;
  v16 = sub_261BBB14C();
  v17 = MEMORY[0x277D83B88];
  v18 = MEMORY[0x277D83C10];
  *(v15 + 56) = MEMORY[0x277D83B88];
  *(v15 + 64) = v18;
  *(v15 + 32) = v16;
  v19 = sub_261BBB14C();
  *(v15 + 96) = v17;
  *(v15 + 104) = v18;
  *(v15 + 72) = v19;
  v20 = sub_261BBB14C();
  *(v15 + 136) = v17;
  *(v15 + 144) = v18;
  *(v15 + 112) = v20;
  v21 = sub_261CFFA84();
  v23 = v22;
  v47 = v21;
  v48 = v22;
  v44 = a2;
  if ((a2 & 1) == 0 && v46 >= 0.0 && v46 < 1.0)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_261D03450;
    v25 = sub_261BBB14C();
    *(v24 + 56) = v17;
    *(v24 + 64) = v18;
    *(v24 + 32) = v25;
    v26 = sub_261CFFA84();
    MEMORY[0x26671C210](v26);

    v21 = v47;
    v23 = v48;
  }

  MEMORY[0x26671C210](v21, v23);

  v41 = v50;
  v42 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v27 = *MEMORY[0x277CC9110];
  v28 = *(v40 + 104);
  v29 = v43;
  v28(v11, v27, v43);
  sub_261CFD6C4();
  v40 = sub_261CFCB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v11, v27, v29);
  sub_261CFD6B4();
  v39 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v11, v27, v29);
  sub_261CFD6B4();
  v38 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v11, v27, v29);
  sub_261CFD6B4();
  v30 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v11, v27, v29);
  sub_261CFD6C4();
  v31 = sub_261CFCB44();
  v49 = 0.0;
  v50 = 0;
  v32 = v40;
  sub_261CFCA14();
  v49 = a4;
  LOBYTE(v50) = 0;
  v33 = v39;
  sub_261CFCA14();
  v49 = a5;
  LOBYTE(v50) = 0;
  v34 = v38;
  sub_261CFCA14();
  v49 = a6;
  LOBYTE(v50) = 0;
  sub_261CFCA14();
  v49 = v46;
  LOBYTE(v50) = v44 & 1;
  result = sub_261CFCA14();
  v36 = v45;
  v37 = v41;
  *v45 = v42;
  v36[1] = v37;
  v36[2] = v32;
  v36[3] = v33;
  v36[4] = v34;
  v36[5] = v30;
  v36[6] = v31;
  return result;
}

uint64_t ColorEntity.id.getter()
{
  v1 = *v0;
  sub_261CFD104();
  return v1;
}

uint64_t ColorEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_261BB89E8(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.name.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BB8B68(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.red.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t sub_261BB8CF4(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.green.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BB8E80(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.blue.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BB900C(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.alpha.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BB9198()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDB7C8);
  __swift_project_value_buffer(v10, qword_27FEDB7C8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t static ColorEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB7C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ColorEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB7C8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ColorEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FEDB7C8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261BB96B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB7C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BB9774(uint64_t a1)
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB7C8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t ColorEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v24 - v3;
  v4 = sub_261CFD6A4();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v26 = &v24 - v9;
  v25 = sub_261CFDC94();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = v1[1];
  v15 = v1[3];
  v24 = v1[2];
  v17 = v1[4];
  v16 = v1[5];
  v18 = v1[6];
  v33 = v14;
  v34 = v13;
  v35 = v24;
  v36 = v15;
  v37 = v17;
  v38 = v16;
  v39 = v18;
  v19 = sub_261B42C3C(1);
  sub_261CFDCC4();
  sub_261CFDCB4();
  v20 = sub_261CFDC84();

  (*(v10 + 8))(v12, v25);
  v21 = v20;
  v22 = v26;
  sub_261CFD014();
  v33 = v14;
  v34 = v13;
  v35 = v24;
  v36 = v15;
  v37 = v17;
  v38 = v16;
  v39 = v18;
  sub_261BB9B60(v28);
  (*(v29 + 56))(v31, 1, 1, v30);
  sub_261BA9C98(v22, v27);
  sub_261CFD0A4();

  return sub_261BBB1CC(v22);
}

uint64_t sub_261BB9B60@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = sub_261CFD674();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFCA04();
  v10 = v21;
  if (v21)
  {
    v11 = v20;
    if (qword_27FED99F8 != -1)
    {
      v16 = v20;
      swift_once();
      v11 = v16;
    }

    v12 = qword_27FEF3E40;
    if (*(qword_27FEF3E40 + 16))
    {
      v17 = sub_261B37CE8(v11, v10);
      v14 = v13;

      if (v14)
      {
        (*(v7 + 16))(v9, *(v12 + 56) + *(v7 + 72) * v17, v6);
        return (*(v7 + 32))(v19, v9, v6);
      }
    }

    else
    {
    }
  }

  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v18);
  return sub_261CFD6C4();
}

uint64_t sub_261BB9E64@<X0>(void *a1@<X8>)
{
  if (qword_27FED99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDB7E0 + 1);
  v3 = qword_27FEDB7F0;
  *a1 = xmmword_27FEDB7E0;
  a1[1] = v2;
  a1[2] = v3;
  sub_261CFCDA4();
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t static ColorEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDB7E0 + 1);
  v3 = qword_27FEDB7F0;
  *a1 = xmmword_27FEDB7E0;
  a1[1] = v2;
  a1[2] = v3;
  sub_261CFCDA4();
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

double sub_261BB9FA4@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  sub_261CFD104();
  return result;
}

uint64_t sub_261BB9FB0(uint64_t a1)
{
  v2 = sub_261AFF5A0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261BBA000(uint64_t a1)
{
  v2 = sub_261BBB498();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static ColorEntity.defaultQuery.setter(uint64_t a1)
{
  v3 = *a1;
  v1 = *(a1 + 16);
  if (qword_27FED99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FEDB7E0 = v3;
  qword_27FEDB7F0 = v1;
}

uint64_t (*static ColorEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FED99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ColorEntity.init(name:red:green:blue:alpha:)@<X0>(double a1@<X0>, unint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, void *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v52 = a5;
  v53 = a3;
  v48 = sub_261CFD674();
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD884();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFFA44();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v18 - 8);
  *&v56 = 64;
  v57 = 0xE100000000000000;
  v49 = a1;
  v50 = a2;
  MEMORY[0x26671C210](*&a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA968, &qword_261D074F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_261D01420;
  v20 = sub_261BBB14C();
  v21 = MEMORY[0x277D83B88];
  v22 = MEMORY[0x277D83C10];
  *(v19 + 56) = MEMORY[0x277D83B88];
  *(v19 + 64) = v22;
  *(v19 + 32) = v20;
  v23 = sub_261BBB14C();
  *(v19 + 96) = v21;
  *(v19 + 104) = v22;
  *(v19 + 72) = v23;
  v24 = sub_261BBB14C();
  *(v19 + 136) = v21;
  *(v19 + 144) = v22;
  *(v19 + 112) = v24;
  v25 = sub_261CFFA84();
  v27 = v26;
  v54 = v25;
  v55 = v26;
  v51 = a4;
  if ((a4 & 1) == 0 && v53 >= 0.0 && v53 < 1.0)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_261D03450;
    v29 = sub_261BBB14C();
    *(v28 + 56) = v21;
    *(v28 + 64) = v22;
    *(v28 + 32) = v29;
    v30 = sub_261CFFA84();
    MEMORY[0x26671C210](v30);

    v25 = v54;
    v27 = v55;
  }

  MEMORY[0x26671C210](v25, v27);

  v46 = v57;
  v47 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = *MEMORY[0x277CC9110];
  v32 = *(v45 + 104);
  v33 = v48;
  v32(v15, v31, v48);
  sub_261CFD6C4();
  v45 = sub_261CFCB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v15, v31, v33);
  sub_261CFD6B4();
  v44 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v15, v31, v33);
  sub_261CFD6B4();
  v43 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v15, v31, v33);
  sub_261CFD6B4();
  v34 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v15, v31, v33);
  sub_261CFD6C4();
  v35 = sub_261CFCB44();
  v56 = v49;
  v57 = v50;
  v36 = v45;
  sub_261CFCA14();
  v56 = a6;
  LOBYTE(v57) = 0;
  v37 = v44;
  sub_261CFCA14();
  v56 = a7;
  LOBYTE(v57) = 0;
  v38 = v43;
  sub_261CFCA14();
  v56 = a8;
  LOBYTE(v57) = 0;
  sub_261CFCA14();
  v56 = v53;
  LOBYTE(v57) = v51 & 1;
  result = sub_261CFCA14();
  v40 = v52;
  v41 = v46;
  *v52 = v47;
  v40[1] = v41;
  v40[2] = v36;
  v40[3] = v37;
  v40[4] = v38;
  v40[5] = v34;
  v40[6] = v35;
  return result;
}

uint64_t sub_261BBA7F4()
{
  v0 = sub_261CFD884();
  MEMORY[0x28223BE20](v0 - 8);
  v57 = v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_261CFD674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFFA44();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB848, &qword_261D07720);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD230, &qword_261D0F9D0);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v64 = *(*(v7 - 8) + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D074D0;
  v58 = v9;
  v10 = (v9 + v8);
  v11 = v7;
  *v10 = 6579570;
  v10[1] = 0xE300000000000000;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_280D27028);
  v65 = *(v3 + 16);
  v60 = v12;
  v62 = v2;
  v65(v5, v12, v2);
  sub_261CFD874();
  sub_261CFD6C4();
  v63 = v10;
  v13 = (v10 + v64);
  v14 = v64;
  v61 = v3 + 16;
  *v13 = 0x65676E61726FLL;
  v13[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v15 = v65;
  v65(v5, v12, v2);
  sub_261CFD874();
  sub_261CFD6C4();
  v16 = 2 * v14;
  v17 = v63;
  v18 = (v63 + v16);
  v56 = *(v11 + 48);
  v19 = v11;
  *v18 = 0x776F6C6C6579;
  v18[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v20 = v62;
  v15(v5, v60, v62);
  sub_261CFD874();
  sub_261CFD6C4();
  v21 = v64;
  v22 = (v17 + v16 + v64);
  v59 = v19;
  *v22 = 0x6E65657267;
  v22[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v23 = v60;
  v65(v5, v60, v20);
  sub_261CFD874();
  sub_261CFD6C4();
  v24 = v63;
  v25 = (v63 + 4 * v21);
  v56 = *(v19 + 48);
  *v25 = 0x756C42746867696CLL;
  v25[1] = 0xE900000000000065;
  sub_261CFF9B4();
  v26 = v23;
  v27 = v23;
  v28 = v62;
  v29 = v65;
  v65(v5, v27, v62);
  sub_261CFD874();
  sub_261CFD6C4();
  v30 = (v24 + 5 * v21);
  v56 = *(v59 + 48);
  *v30 = 1702194274;
  v30[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v31 = v28;
  v29(v5, v26, v28);
  sub_261CFD874();
  sub_261CFD6C4();
  v32 = v64;
  v33 = (v63 + 6 * v64);
  v56 = *(v59 + 48);
  *v33 = 0x6F6769646E69;
  v33[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v29(v5, v26, v31);
  sub_261CFD874();
  sub_261CFD6C4();
  v34 = v32;
  v35 = 7 * v32;
  v56 = 8 * v32;
  v36 = v63;
  v37 = (v63 + v35);
  *v37 = 0x656C70727570;
  v37[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v38 = v26;
  v39 = v62;
  v40 = v65;
  v65(v5, v38, v62);
  sub_261CFD874();
  sub_261CFD6C4();
  v41 = &v36[v34];
  v42 = v36;
  v55[1] = *(v59 + 48);
  *v41 = 1802398064;
  v41[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v43 = v60;
  v40(v5, v60, v39);
  sub_261CFD874();
  sub_261CFD6C4();
  v44 = v64;
  v45 = (v42 + v56 + v64);
  *v45 = 1702063986;
  v45[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v46 = v62;
  v65(v5, v43, v62);
  sub_261CFD874();
  sub_261CFD6C4();
  v47 = v63;
  v48 = (v63 + 10 * v44);
  *v48 = 0x6E776F7262;
  v48[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v49 = v60;
  v50 = v46;
  v51 = v65;
  v65(v5, v60, v50);
  sub_261CFD874();
  sub_261CFD6C4();
  v52 = (v47 + 11 * v64);
  *v52 = 2036429415;
  v52[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v51(v5, v49, v62);
  sub_261CFD874();
  sub_261CFD6C4();
  v53 = sub_261C39E1C(v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEF3E40 = v53;
  return result;
}

uint64_t sub_261BBB14C(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (a1 >= 1.0)
  {
    return 255;
  }

  v1 = round(a1 * 255.0);
  if (*&v1 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v1 > -9.22337204e18)
  {
    if (v1 < 9.22337204e18)
    {
      return v1;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_261BBB1CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_261BBB238()
{
  result = qword_27FEDB7F8;
  if (!qword_27FEDB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB7F8);
  }

  return result;
}

unint64_t sub_261BBB290()
{
  result = qword_27FEDB800;
  if (!qword_27FEDB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB800);
  }

  return result;
}

unint64_t sub_261BBB2E8()
{
  result = qword_27FEDB808;
  if (!qword_27FEDB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB808);
  }

  return result;
}

unint64_t sub_261BBB340()
{
  result = qword_27FEDB810;
  if (!qword_27FEDB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB810);
  }

  return result;
}

unint64_t sub_261BBB398()
{
  result = qword_27FEDB818;
  if (!qword_27FEDB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB818);
  }

  return result;
}

unint64_t sub_261BBB3EC()
{
  result = qword_27FEDB820;
  if (!qword_27FEDB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB820);
  }

  return result;
}

unint64_t sub_261BBB440()
{
  result = qword_280D22680;
  if (!qword_280D22680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22680);
  }

  return result;
}

unint64_t sub_261BBB498()
{
  result = qword_27FEDB828;
  if (!qword_27FEDB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB828);
  }

  return result;
}

unint64_t sub_261BBB4F0()
{
  result = qword_27FEDB830;
  if (!qword_27FEDB830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB838, &qword_261D07640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB830);
  }

  return result;
}

unint64_t sub_261BBB558()
{
  result = qword_27FEDB840;
  if (!qword_27FEDB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB840);
  }

  return result;
}

uint64_t destroy for ColorEntity(void *a1)
{
}

void *initializeWithCopy for ColorEntity(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  a1[6] = a2[6];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

void *assignWithCopy for ColorEntity(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_261CFD104();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  a1[6] = a2[6];
  sub_261CFCDA4();

  return a1;
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

void *assignWithTake for ColorEntity(void *a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 8);

  *(a1 + 3) = *(a2 + 24);

  *(a1 + 5) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for ColorEntity(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ColorEntity(uint64_t result, int a2, int a3)
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

uint64_t sub_261BBB90C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v12 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_261BBBAB4(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_261BBBBF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_261D00274();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_261D00274();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_261BBDEB8(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_261BBE10C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_261BBBCE8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_261B42274(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261BBBDDC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB850);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB850);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BBC078()
{
  v1 = *(*(v0 + 120) + 16);
  *(v0 + 248) = v1;
  *(v0 + 256) = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_261CFCBB4();
  v2 = *(v0 + 40);
  *(v0 + 264) = v2;
  v3 = *(v2 + 16);
  *(v0 + 272) = v3;
  if (v3)
  {
    v4 = *(v0 + 184);
    *(v0 + 352) = *(*(v0 + 176) + 20);
    *(v0 + 356) = *(v4 + 80);
    *(v0 + 360) = *MEMORY[0x277D45D78];
    *(v0 + 364) = *MEMORY[0x277D45D70];
    *(v0 + 280) = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_77;
    }

    v5 = 0;
    while (1)
    {
      v6 = *(v0 + 352);
      v7 = *(v0 + 192);
      v8 = *(v0 + 168);
      sub_261BBE2C0(v2 + ((*(v0 + 356) + 32) & ~*(v0 + 356)) + *(*(v0 + 184) + 72) * v5, v7, type metadata accessor for GroupEntity);
      sub_261BBE2C0(v7 + v6, v8, type metadata accessor for AppEntityID);
      sub_261BBE328(v7, type metadata accessor for GroupEntity);
      v9 = objc_allocWithZone(MEMORY[0x277D44700]);
      v10 = sub_261CFD814();
      v11 = sub_261CFFA54();
      v12 = [v9 initWithUUID:v10 entityName:v11];
      *(v0 + 288) = v12;

      sub_261BBE328(v8, type metadata accessor for AppEntityID);
      if (qword_27FED9A00 != -1)
      {
        swift_once();
      }

      v13 = sub_261CFF7A4();
      *(v0 + 296) = __swift_project_value_buffer(v13, qword_27FEDB850);
      v14 = v12;
      v15 = sub_261CFF784();
      v16 = sub_261CFFE84();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&dword_261AE2000, v15, v16, "[DeleteRemindersListGroupsAppIntent] Delete group {listObjectID: %{public}@}", v17, 0xCu);
        sub_261AE6A40(v18, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v18, -1, -1);
        MEMORY[0x26671D560](v17, -1, -1);
      }

      v20 = *(v0 + 248);

      *(v0 + 48) = 0;
      v21 = [v20 fetchListWithObjectID:v14 error:v0 + 48];
      *(v0 + 304) = v21;
      v22 = *(v0 + 48);
      if (!v21)
      {
        v82 = *(v0 + 256);
        v83 = v22;

        sub_261CFD654();

        swift_willThrow();
        goto LABEL_64;
      }

      v23 = v21;
      v24 = *(v0 + 248);
      v25 = v22;
      v26 = [v23 accountID];
      *(v0 + 56) = 0;
      v27 = [v24 fetchAccountWithObjectID:v26 error:v0 + 56];
      *(v0 + 312) = v27;

      v28 = *(v0 + 56);
      if (!v27)
      {
        v84 = *(v0 + 256);
        v85 = v28;

        sub_261CFD654();

        swift_willThrow();
        goto LABEL_64;
      }

      v29 = *(v0 + 256);
      sub_261CFDE94();
      *(v0 + 72) = v27;
      v30 = v28;
      v31 = v27;
      v32 = v29;
      sub_261CFDF34();
      *(v0 + 320) = *(v0 + 64);
      if (![v23 isGroup])
      {

        v86 = v14;
        v87 = sub_261CFF784();
        v88 = sub_261CFFE74();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *v89 = 138543362;
          *(v89 + 4) = v86;
          *v90 = v86;
          v91 = v86;
          _os_log_impl(&dword_261AE2000, v87, v88, "[DeleteRemindersListGroupsAppIntent] Attempt to delete a regular list {listObjectID: %{public}@}", v89, 0xCu);
          sub_261AE6A40(v90, &unk_27FEDA730, &unk_261D035C0);
          MEMORY[0x26671D560](v90, -1, -1);
          MEMORY[0x26671D560](v89, -1, -1);
        }

        v92 = *(v0 + 256);

        sub_261B01D70();
        swift_allocError();
        *v93 = 20;
        swift_willThrow();

LABEL_64:

        v100 = *(v0 + 8);
        goto LABEL_65;
      }

      v33 = MEMORY[0x277D84F90];
      *(v0 + 80) = MEMORY[0x277D84F90];
      v34 = [v23 sublistContext];
      if (v34)
      {
        *(v0 + 104) = 0;
        v35 = v34;
        v36 = [v34 fetchListsWithError_];

        v37 = *(v0 + 104);
        if (!v36)
        {
          v103 = *(v0 + 256);
          v104 = v37;

          sub_261CFD654();

          swift_willThrow();

          goto LABEL_64;
        }

        sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
        v38 = sub_261CFFC64();
        v39 = v37;

        v33 = MEMORY[0x277D84F90];
        if (!(v38 >> 62))
        {
LABEL_14:
          v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_15;
        }
      }

      else
      {
        v38 = v33;
        if (!(v33 >> 62))
        {
          goto LABEL_14;
        }
      }

      v40 = sub_261D00274();
LABEL_15:
      v109 = v14;
      v110 = v23;
      if (v40)
      {
        v41 = 0;
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x26671CA10](v41, v38);
            v43 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (v41 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_74;
            }

            v42 = *(v38 + 8 * v41 + 32);
            v43 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
            }
          }

          v44 = *(v0 + 360);
          v45 = *(v0 + 152);
          v46 = *(v0 + 128);
          v47 = *(v0 + 136);
          *v45 = v42;
          (*(v47 + 104))(v45, v44, v46);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_261B4224C(0, *(v33 + 16) + 1, 1, v33);
          }

          v49 = *(v33 + 16);
          v48 = *(v33 + 24);
          if (v49 >= v48 >> 1)
          {
            v33 = sub_261B4224C((v48 > 1), v49 + 1, 1, v33);
          }

          v50 = *(v0 + 152);
          v51 = *(v0 + 128);
          v52 = *(v0 + 136);
          *(v33 + 16) = v49 + 1;
          (*(v52 + 32))(v33 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v49, v50, v51);
          ++v41;
        }

        while (v43 != v40);
      }

      v53 = [v110 sublistContext];
      if (v53)
      {
        *(v0 + 96) = 0;
        v54 = v53;
        v55 = [v53 fetchCustomSmartListsWithError_];

        v56 = *(v0 + 96);
        if (!v55)
        {
          v105 = *(v0 + 256);
          v106 = v56;

          sub_261CFD654();

          swift_willThrow();

          goto LABEL_64;
        }

        sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
        v57 = sub_261CFFC64();
        v58 = v56;

        if (!(v57 >> 62))
        {
LABEL_32:
          v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v59)
          {
            goto LABEL_33;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v57 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_32;
        }
      }

      v59 = sub_261D00274();
      if (v59)
      {
LABEL_33:
        v60 = 0;
        v111 = (v57 & 0xC000000000000001);
        v61 = v57 & 0xFFFFFFFFFFFFFF8;
        v62 = MEMORY[0x277D84F90];
        v63 = v57;
        while (1)
        {
          if (v111)
          {
            v64 = MEMORY[0x26671CA10](v60, v57);
            v65 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v60 >= *(v61 + 16))
            {
              goto LABEL_76;
            }

            v64 = *(v57 + 8 * v60 + 32);
            v65 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
              goto LABEL_75;
            }
          }

          v66 = *(v0 + 364);
          v68 = *(v0 + 136);
          v67 = *(v0 + 144);
          v69 = *(v0 + 128);
          *v67 = v64;
          (*(v68 + 104))(v67, v66, v69);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_261B4224C(0, v62[2] + 1, 1, v62);
          }

          v71 = v62[2];
          v70 = v62[3];
          if (v71 >= v70 >> 1)
          {
            v62 = sub_261B4224C((v70 > 1), v71 + 1, 1, v62);
          }

          v73 = *(v0 + 136);
          v72 = *(v0 + 144);
          v74 = *(v0 + 128);
          v62[2] = v71 + 1;
          (*(v73 + 32))(v62 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v71, v72, v74);
          ++v60;
          v57 = v63;
          if (v65 == v59)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_50:
      v62 = MEMORY[0x277D84F90];
LABEL_51:

      v75 = MEMORY[0x277D45D80];
      sub_261BBBAB4(v33, sub_261B4224C, MEMORY[0x277D45D80]);
      sub_261BBBAB4(v62, sub_261B4224C, v75);
      sub_261CFCBB4();
      v76 = *(v0 + 80);
      *(v0 + 328) = v76;
      if (*(v76 + 16))
      {
        sub_261CFCBB4();
        if (*(v0 + 369) == 2)
        {
          v107 = *(v0 + 216);
          *(v0 + 16) = *(v0 + 200);
          *(v0 + 32) = v107;
          v108 = swift_task_alloc();
          *(v0 + 336) = v108;
          *v108 = v0;
          v108[1] = sub_261BBCDD4;

          return sub_261BBE388(v0 + 16);
        }
      }

      v77 = *(v0 + 312);
      v78 = *(v0 + 304);
      v79 = *(v0 + 288);
      v80 = *(v0 + 272);
      v81 = *(v0 + 280) + 1;
      sub_261CFDE74();

      if (v81 == v80)
      {
        break;
      }

      v5 = *(v0 + 280) + 1;
      *(v0 + 280) = v5;
      v2 = *(v0 + 264);
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_77;
      }
    }
  }

  v94 = *(v0 + 256);

  *(v0 + 88) = 0;
  v95 = [v94 saveSynchronouslyWithError_];
  v96 = *(v0 + 88);
  v97 = *(v0 + 256);
  if (!v95)
  {
    v101 = v96;
    sub_261CFD654();

    swift_willThrow();
    goto LABEL_64;
  }

  v98 = *(v0 + 112);
  v98[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  v98[4] = sub_261B01D28(&qword_27FEDAFD8, &qword_27FEDAFD0, &qword_261D072B0, MEMORY[0x277CBA268]);
  __swift_allocate_boxed_opaque_existential_1(v98);
  v99 = v96;
  sub_261CFC9A4();

  v100 = *(v0 + 8);
LABEL_65:

  return v100();
}

uint64_t sub_261BBCDD4(char a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {

    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_261BBDC08;
  }

  else
  {
    *(v4 + 370) = a1 & 1;
    v5 = *(v4 + 232);
    v6 = *(v4 + 240);
    v7 = sub_261BBCF3C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_261BBCF3C()
{
  while (1)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 312);
    v3 = *(v0 + 288);
    v4 = *(v0 + 272);
    v5 = *(v0 + 280) + 1;
    sub_261CFDE74();

    if (v5 == v4)
    {
      break;
    }

    v6 = *(v0 + 280) + 1;
    *(v0 + 280) = v6;
    v7 = *(v0 + 264);
    if (v6 >= *(v7 + 16))
    {
      goto LABEL_74;
    }

    v8 = *(v0 + 352);
    v9 = *(v0 + 192);
    v10 = *(v0 + 168);
    sub_261BBE2C0(v7 + ((*(v0 + 356) + 32) & ~*(v0 + 356)) + *(*(v0 + 184) + 72) * v6, v9, type metadata accessor for GroupEntity);
    sub_261BBE2C0(v9 + v8, v10, type metadata accessor for AppEntityID);
    sub_261BBE328(v9, type metadata accessor for GroupEntity);
    v11 = objc_allocWithZone(MEMORY[0x277D44700]);
    v12 = sub_261CFD814();
    v13 = sub_261CFFA54();
    v14 = [v11 initWithUUID:v12 entityName:v13];
    *(v0 + 288) = v14;

    sub_261BBE328(v10, type metadata accessor for AppEntityID);
    if (qword_27FED9A00 != -1)
    {
      swift_once();
    }

    v15 = sub_261CFF7A4();
    *(v0 + 296) = __swift_project_value_buffer(v15, qword_27FEDB850);
    v16 = v14;
    v17 = sub_261CFF784();
    v18 = sub_261CFFE84();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_261AE2000, v17, v18, "[DeleteRemindersListGroupsAppIntent] Delete group {listObjectID: %{public}@}", v19, 0xCu);
      sub_261AE6A40(v20, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v20, -1, -1);
      MEMORY[0x26671D560](v19, -1, -1);
    }

    v22 = *(v0 + 248);

    *(v0 + 48) = 0;
    v23 = [v22 fetchListWithObjectID:v16 error:v0 + 48];
    *(v0 + 304) = v23;
    v24 = *(v0 + 48);
    if (!v23)
    {
      v86 = *(v0 + 256);
      v87 = v24;

      sub_261CFD654();

      swift_willThrow();
      goto LABEL_66;
    }

    v25 = v23;
    v26 = *(v0 + 248);
    v27 = v24;
    v28 = [v25 accountID];
    *(v0 + 56) = 0;
    v29 = [v26 fetchAccountWithObjectID:v28 error:v0 + 56];
    *(v0 + 312) = v29;

    v30 = *(v0 + 56);
    if (!v29)
    {
      v88 = *(v0 + 256);
      v89 = v30;

      sub_261CFD654();

      swift_willThrow();
      goto LABEL_66;
    }

    v31 = *(v0 + 256);
    sub_261CFDE94();
    *(v0 + 72) = v29;
    v32 = v30;
    v33 = v29;
    v34 = v31;
    sub_261CFDF34();
    *(v0 + 320) = *(v0 + 64);
    if (![v25 isGroup])
    {

      v90 = v16;
      v91 = sub_261CFF784();
      v92 = sub_261CFFE74();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = 138543362;
        *(v93 + 4) = v90;
        *v94 = v90;
        v95 = v90;
        _os_log_impl(&dword_261AE2000, v91, v92, "[DeleteRemindersListGroupsAppIntent] Attempt to delete a regular list {listObjectID: %{public}@}", v93, 0xCu);
        sub_261AE6A40(v94, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v94, -1, -1);
        MEMORY[0x26671D560](v93, -1, -1);
      }

      v96 = *(v0 + 256);

      sub_261B01D70();
      swift_allocError();
      *v97 = 20;
      swift_willThrow();

      goto LABEL_66;
    }

    v35 = MEMORY[0x277D84F90];
    *(v0 + 80) = MEMORY[0x277D84F90];
    v36 = [v25 sublistContext];
    if (v36)
    {
      *(v0 + 104) = 0;
      v37 = v36;
      v38 = [v36 fetchListsWithError_];

      v39 = *(v0 + 104);
      if (!v38)
      {
        v98 = *(v0 + 256);
        v99 = v39;

        sub_261CFD654();

        swift_willThrow();

        goto LABEL_66;
      }

      sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
      v40 = sub_261CFFC64();
      v41 = v39;

      v35 = MEMORY[0x277D84F90];
      if (!(v40 >> 62))
      {
LABEL_13:
        v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_14;
      }
    }

    else
    {
      v40 = v35;
      if (!(v35 >> 62))
      {
        goto LABEL_13;
      }
    }

    v42 = sub_261D00274();
LABEL_14:
    v106 = v16;
    v107 = v25;
    if (v42)
    {
      v43 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x26671CA10](v43, v40);
          v45 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v43 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v44 = *(v40 + 8 * v43 + 32);
          v45 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
          }
        }

        v46 = *(v0 + 360);
        v47 = *(v0 + 152);
        v48 = *(v0 + 128);
        v49 = *(v0 + 136);
        *v47 = v44;
        (*(v49 + 104))(v47, v46, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_261B4224C(0, *(v35 + 16) + 1, 1, v35);
        }

        v51 = *(v35 + 16);
        v50 = *(v35 + 24);
        if (v51 >= v50 >> 1)
        {
          v35 = sub_261B4224C((v50 > 1), v51 + 1, 1, v35);
        }

        v52 = *(v0 + 152);
        v53 = *(v0 + 128);
        v54 = *(v0 + 136);
        *(v35 + 16) = v51 + 1;
        (*(v54 + 32))(v35 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v51, v52, v53);
        ++v43;
      }

      while (v45 != v42);
    }

    v55 = [v107 sublistContext];
    if (v55)
    {
      *(v0 + 96) = 0;
      v56 = v55;
      v57 = [v55 fetchCustomSmartListsWithError_];

      v58 = *(v0 + 96);
      if (!v57)
      {
        v100 = *(v0 + 256);
        v101 = v58;

        sub_261CFD654();

        swift_willThrow();

        goto LABEL_66;
      }

      sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
      v59 = sub_261CFFC64();
      v60 = v58;

      if (v59 >> 62)
      {
LABEL_48:
        v61 = sub_261D00274();
        if (v61)
        {
LABEL_32:
          v62 = 0;
          v108 = (v59 & 0xC000000000000001);
          v63 = v59 & 0xFFFFFFFFFFFFFF8;
          v64 = MEMORY[0x277D84F90];
          v65 = v59;
          while (1)
          {
            if (v108)
            {
              v66 = MEMORY[0x26671CA10](v62, v59);
              v67 = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                goto LABEL_72;
              }
            }

            else
            {
              if (v62 >= *(v63 + 16))
              {
                goto LABEL_73;
              }

              v66 = *(v59 + 8 * v62 + 32);
              v67 = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                goto LABEL_72;
              }
            }

            v68 = *(v0 + 364);
            v70 = *(v0 + 136);
            v69 = *(v0 + 144);
            v71 = *(v0 + 128);
            *v69 = v66;
            (*(v70 + 104))(v69, v68, v71);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = sub_261B4224C(0, v64[2] + 1, 1, v64);
            }

            v73 = v64[2];
            v72 = v64[3];
            if (v73 >= v72 >> 1)
            {
              v64 = sub_261B4224C((v72 > 1), v73 + 1, 1, v64);
            }

            v75 = *(v0 + 136);
            v74 = *(v0 + 144);
            v76 = *(v0 + 128);
            v64[2] = v73 + 1;
            (*(v75 + 32))(v64 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v73, v74, v76);
            ++v62;
            v59 = v65;
            if (v67 == v61)
            {
              goto LABEL_50;
            }
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
        goto LABEL_48;
      }
    }

    v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_32;
    }

LABEL_49:
    v64 = MEMORY[0x277D84F90];
LABEL_50:

    v77 = MEMORY[0x277D45D80];
    sub_261BBBAB4(v35, sub_261B4224C, MEMORY[0x277D45D80]);
    sub_261BBBAB4(v64, sub_261B4224C, v77);
    sub_261CFCBB4();
    v78 = *(v0 + 80);
    *(v0 + 328) = v78;
    if (*(v78 + 16))
    {
      sub_261CFCBB4();
      if (*(v0 + 369) == 2)
      {
        v102 = *(v0 + 216);
        *(v0 + 16) = *(v0 + 200);
        *(v0 + 32) = v102;
        v103 = swift_task_alloc();
        *(v0 + 336) = v103;
        *v103 = v0;
        v103[1] = sub_261BBCDD4;

        return sub_261BBE388(v0 + 16);
      }
    }
  }

  v79 = *(v0 + 256);

  *(v0 + 88) = 0;
  v80 = [v79 saveSynchronouslyWithError_];
  v81 = *(v0 + 88);
  v82 = *(v0 + 256);
  if (v80)
  {
    v83 = *(v0 + 112);
    v83[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
    v83[4] = sub_261B01D28(&qword_27FEDAFD8, &qword_27FEDAFD0, &qword_261D072B0, MEMORY[0x277CBA268]);
    __swift_allocate_boxed_opaque_existential_1(v83);
    v84 = v81;
    sub_261CFC9A4();

    v85 = *(v0 + 8);
    goto LABEL_67;
  }

  v105 = v81;
  sub_261CFD654();

  swift_willThrow();
LABEL_66:

  v85 = *(v0 + 8);
LABEL_67:

  return v85();
}

uint64_t sub_261BBDC08()
{
  v1 = v0[36];

  v2 = v1;
  v3 = sub_261CFF784();
  v4 = sub_261CFFE74();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[36];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_261AE2000, v3, v4, "[DeleteRemindersListGroupsAppIntent] Could not confirm to delete the sublists {listObjectID: %{public}@}", v6, 0xCu);
    sub_261AE6A40(v7, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v9 = v0[43];
  v10 = v0[39];
  v11 = v0[38];
  v12 = v0[36];
  v13 = v0[32];

  sub_261B01D70();
  swift_allocError();
  *v14 = 15;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_261BBDE0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BBDEB8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_261D00274();
LABEL_9:
  result = sub_261D00354();
  *v2 = result;
  return result;
}

uint64_t sub_261BBDF58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D00274();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_261D00274();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261B01D28(&qword_27FEDB888, &qword_27FEDB880, &qword_261D07758, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB880, &qword_261D07758);
            v9 = sub_261B49564(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_261B05020(0, &qword_27FEDB878, 0x277D44780);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261BBE10C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D00274();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_261D00274();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261B01D28(&qword_27FEDB870, &qword_27FEDB868, &qword_261D07750, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB868, &qword_261D07750);
            v9 = sub_261B49794(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261BBE2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BBE328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BBE388(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v1[2] = swift_task_alloc();
  sub_261CFD884();
  v1[3] = swift_task_alloc();
  v3 = sub_261CFD674();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  sub_261CFFA44();
  v1[7] = swift_task_alloc();
  sub_261CFD6A4();
  v1[8] = swift_task_alloc();
  v4 = sub_261CFC834();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *(a1 + 8);
  v1[11] = v5;
  v1[12] = v6;

  return MEMORY[0x2822009F8](sub_261BBE564, 0, 0);
}

uint64_t sub_261BBE564()
{
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v11 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = __swift_project_value_buffer(v5, qword_280D27028);
  (*(v3 + 16))(v4, v7, v5);
  sub_261CFD874();
  sub_261CFD6C4();
  sub_261CFC844();
  *(v0 + 104) = sub_261CFCBD4();
  *(v0 + 128) = 1;
  (*(v2 + 16))(v6, v1, v11);
  (*(v2 + 56))(v6, 0, 1, v11);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_261BBE758;
  v9 = *(v0 + 16);

  return MEMORY[0x28210BA18](v0 + 128, v9);
}

uint64_t sub_261BBE758(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    sub_261AE6A40(*(v4 + 16), &qword_27FEDA1E8, &unk_261D02310);

    v5 = sub_261BBE98C;
  }

  else
  {
    v6 = *(v4 + 16);
    *(v4 + 129) = a1 & 1;
    sub_261AE6A40(v6, &qword_27FEDA1E8, &unk_261D02310);

    v5 = sub_261BBE8C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261BBE8C8()
{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

  v1 = *(v0 + 8);
  v2 = *(v0 + 129);

  return v1(v2);
}

uint64_t sub_261BBE98C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_261BBEA50@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v67 = a2;
  LODWORD(v73) = a1;
  v3 = sub_261CFD754();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SectionEntity(0);
  MEMORY[0x28223BE20](v5);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_261CFEF34();
  v7 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppEntityID(0);
  v11 = MEMORY[0x28223BE20](v10);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = type metadata accessor for SectionEntityID(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v62 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v63 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  v22 = sub_261CFEEC4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v73 == 2) | a1 & 1)
  {
    v26 = MEMORY[0x277D45120];
  }

  else
  {
    v26 = MEMORY[0x277D45118];
  }

  (*(v23 + 104))(v25, *v26, v22);
  v65 = v5;
  sub_261BC1028(v74 + *(v5 + 24), v21, type metadata accessor for SectionEntityID);
  sub_261BC0FC4(v21, v14);
  v27 = objc_allocWithZone(MEMORY[0x277D44700]);
  v28 = sub_261CFD814();
  v29 = sub_261CFFA54();
  v30 = [v27 initWithUUID:v28 entityName:v29];

  sub_261BC1090(v14, type metadata accessor for AppEntityID);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB8D8, &unk_261D07770) + 48);
  *v9 = v30;
  v72 = v23;
  v73 = v25;
  v32 = v23;
  v33 = v67;
  v34 = v25;
  v35 = v22;
  (*(v32 + 16))(&v9[v31], v34, v22);
  v36 = v66;
  (*(v7 + 104))(v9, *MEMORY[0x277D45238], v66);
  v37 = v30;
  sub_261CFEF24();
  (*(v7 + 8))(v9, v36);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v38 = sub_261CFF7A4();
  __swift_project_value_buffer(v38, qword_27FEDB890);
  v39 = v68;
  sub_261BC1028(v74, v68, type metadata accessor for SectionEntity);
  v40 = v69;
  v41 = v70;
  v42 = v71;
  (*(v70 + 16))(v69, v33, v71);
  v43 = sub_261CFF784();
  v44 = sub_261CFFE84();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v75 = v67;
    *v45 = 136315394;
    v46 = *(v65 + 24);
    LODWORD(v65) = v44;
    v74 = v37;
    v47 = v63;
    sub_261BC1028(v39 + v46, v63, type metadata accessor for SectionEntityID);
    v48 = v62;
    sub_261BC1028(v47, v62, type metadata accessor for SectionEntityID);
    v49 = v64;
    sub_261BC0FC4(v48, v64);
    v50 = AppEntityID.entityIdentifierString.getter();
    v66 = v35;
    v51 = v39;
    v52 = v40;
    v54 = v53;
    sub_261BC1090(v49, type metadata accessor for AppEntityID);
    sub_261BC1090(v47, type metadata accessor for SectionEntityID);
    sub_261BC1090(v51, type metadata accessor for SectionEntity);
    v55 = sub_261B879C8(v50, v54, &v75);

    *(v45 + 4) = v55;
    *(v45 + 12) = 2080;
    sub_261BC0F6C();
    v56 = sub_261D005F4();
    v58 = v57;
    (*(v41 + 8))(v52, v42);
    v59 = sub_261B879C8(v56, v58, &v75);

    *(v45 + 14) = v59;
    _os_log_impl(&dword_261AE2000, v43, v65, "[AppIntent] Open reminder with id: %s url: %s", v45, 0x16u);
    v60 = v67;
    swift_arrayDestroy();
    MEMORY[0x26671D560](v60, -1, -1);
    MEMORY[0x26671D560](v45, -1, -1);

    return (*(v72 + 8))(v73, v66);
  }

  else
  {

    (*(v41 + 8))(v40, v42);
    sub_261BC1090(v39, type metadata accessor for SectionEntity);
    return (*(v72 + 8))(v73, v35);
  }
}

Swift::Void __swiftcall URL.open()()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    sub_261D00034();
  }
}

void sub_261BBF2F8(const char *a1@<X3>, uint64_t (*a2)(void)@<X0>, uint64_t (*a3)(void)@<X1>, uint64_t (*a4)(void)@<X2>, uint64_t a5@<X8>, ...)
{
  v45 = a1;
  v46 = a5;
  v51 = a3;
  v52 = a4;
  v7 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v7);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_261CFD754();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2(0);
  MEMORY[0x28223BE20](v11);
  v47 = &v42 - v12;
  v13 = sub_261CFEF34();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB8D0, &qword_261D07768) + 48);
  v42 = v11;
  v49 = v5;
  v44 = v7;
  v18 = objc_allocWithZone(MEMORY[0x277D44700]);
  v19 = v46;
  v20 = sub_261CFD814();
  v21 = sub_261CFFA54();
  v22 = [v18 initWithUUID:v20 entityName:v21];

  *v16 = v22;
  v23 = *MEMORY[0x277D45140];
  v24 = sub_261CFEEE4();
  (*(*(v24 - 8) + 104))(&v16[v17], v23, v24);
  (*(v14 + 104))(v16, *MEMORY[0x277D451F8], v13);
  sub_261CFEF24();
  (*(v14 + 8))(v16, v13);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v25 = sub_261CFF7A4();
  __swift_project_value_buffer(v25, qword_27FEDB890);
  v26 = v47;
  sub_261BC1028(v49, v47, v51);
  v27 = v48;
  v28 = v19;
  v29 = v50;
  (*(v48 + 16))(v10, v28, v50);
  v30 = sub_261CFF784();
  v31 = sub_261CFFE84();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53 = v33;
    *v32 = 136315394;
    sub_261BC1028(v26 + *(v42 + 20), v43, type metadata accessor for AppEntityID);
    v34 = sub_261CFFAB4();
    v36 = v35;
    sub_261BC1090(v26, v52);
    v37 = sub_261B879C8(v34, v36, &v53);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    sub_261BC0F6C();
    v38 = sub_261D005F4();
    v40 = v39;
    (*(v27 + 8))(v10, v29);
    v41 = sub_261B879C8(v38, v40, &v53);

    *(v32 + 14) = v41;
    _os_log_impl(&dword_261AE2000, v30, v31, v45, v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v33, -1, -1);
    MEMORY[0x26671D560](v32, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v10, v29);
    sub_261BC1090(v26, v52);
  }
}

uint64_t sub_261BBF818@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v58 = a2;
  v4 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v4);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_261CFD754();
  v6 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReminderEntity(0);
  MEMORY[0x28223BE20](v8);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_261CFEF34();
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFEF14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v6;
  v54 = v14;
  if (a1)
  {
    v17 = *MEMORY[0x277D45180];
    v18 = sub_261CFEF04();
    (*(*(v18 - 8) + 104))(v16, v17, v18);
    (*(v14 + 104))(v16, *MEMORY[0x277D45168], v13);
  }

  else
  {
    sub_261CFEEF4();
  }

  v19 = v13;
  v20 = v16;
  v57 = v19;
  v21 = v19;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB8C8, &qword_261D07760) + 48);
  v51 = v8;
  v55 = v2;
  v53 = v4;
  v23 = objc_allocWithZone(MEMORY[0x277D44700]);
  v24 = sub_261CFD814();
  v25 = sub_261CFFA54();
  v26 = [v23 initWithUUID:v24 entityName:v25];

  *v12 = v26;
  v27 = v54;
  (*(v54 + 16))(&v12[v22], v20, v21);
  v28 = v56;
  (*(v10 + 104))(v12, *MEMORY[0x277D45248], v56);
  v29 = v58;
  sub_261CFEF24();
  (*(v10 + 8))(v12, v28);
  v30 = v27;
  v31 = v20;
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v32 = sub_261CFF7A4();
  __swift_project_value_buffer(v32, qword_27FEDB890);
  v33 = v59;
  sub_261BC1028(v55, v59, type metadata accessor for ReminderEntity);
  v34 = v60;
  v35 = v61;
  v36 = v62;
  (*(v61 + 16))(v60, v29, v62);
  v37 = sub_261CFF784();
  v38 = sub_261CFFE84();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v63 = v56;
    *v39 = 136315394;
    sub_261BC1028(v33 + *(v51 + 40), v52, type metadata accessor for AppEntityID);
    v40 = sub_261CFFAB4();
    v58 = v31;
    v42 = v41;
    sub_261BC1090(v33, type metadata accessor for ReminderEntity);
    v43 = sub_261B879C8(v40, v42, &v63);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    sub_261BC0F6C();
    v44 = sub_261D005F4();
    v46 = v45;
    (*(v35 + 8))(v34, v36);
    v47 = sub_261B879C8(v44, v46, &v63);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_261AE2000, v37, v38, "[AppIntent] Open reminder with id: %s url: %s", v39, 0x16u);
    v48 = v56;
    swift_arrayDestroy();
    MEMORY[0x26671D560](v48, -1, -1);
    MEMORY[0x26671D560](v39, -1, -1);

    return (*(v30 + 8))(v58, v57);
  }

  else
  {

    (*(v35 + 8))(v34, v36);
    sub_261BC1090(v33, type metadata accessor for ReminderEntity);
    return (*(v30 + 8))(v31, v57);
  }
}

void sub_261BBFE8C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_261CFD754();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFEF34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a1;
  v13[1] = a2;
  v14 = *MEMORY[0x277D450F0];
  v15 = sub_261CFEE94();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  (*(v11 + 104))(v13, *MEMORY[0x277D45210], v10);
  sub_261CFD104();
  sub_261CFEF24();
  (*(v11 + 8))(v13, v10);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v16 = sub_261CFF7A4();
  __swift_project_value_buffer(v16, qword_27FEDB890);
  (*(v7 + 16))(v9, a3, v6);
  sub_261CFD104();
  v17 = sub_261CFF784();
  v18 = sub_261CFFE84();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_261B879C8(a1, a2, &v26);
    *(v19 + 12) = 2080;
    sub_261BC0F6C();
    v21 = sub_261D005F4();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    v24 = sub_261B879C8(v21, v23, &v26);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_261AE2000, v17, v18, "[AppIntent] Open search with phrase: %s) url: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v20, -1, -1);
    MEMORY[0x26671D560](v19, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_261BC0220()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB890);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB890);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BC02E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_261CFD754();
  __swift_allocate_value_buffer(v3, qword_27FEDB8A8);
  v4 = __swift_project_value_buffer(v3, qword_27FEDB8A8);
  sub_261CFD744();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_261BC0418@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFD754();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFEF34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *MEMORY[0x277D45128];
  v13 = sub_261CFEED4();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  (*(v8 + 104))(v10, **(&unk_279AF9D98 + v11), v7);
  sub_261CFEF24();
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v14 = sub_261CFF7A4();
  __swift_project_value_buffer(v14, qword_27FEDB890);
  (*(v4 + 16))(v6, a1, v3);
  v15 = sub_261CFF784();
  v16 = sub_261CFFE84();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v11;
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v18 = 136315394;
    v31 = v17;
    v19 = sub_261CFFAB4();
    v21 = sub_261B879C8(v19, v20, &v32);
    v30 = v7;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_261BC0F6C();
    v23 = sub_261D005F4();
    v25 = v24;
    (*(v4 + 8))(v6, v3);
    v26 = sub_261B879C8(v23, v25, &v32);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_261AE2000, v15, v16, "[AppIntent] Open smart list type: %s url: %s", v18, 0x16u);
    v27 = v29;
    swift_arrayDestroy();
    MEMORY[0x26671D560](v27, -1, -1);
    MEMORY[0x26671D560](v18, -1, -1);

    return (*(v8 + 8))(v10, v30);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_261BC07C8(uint64_t a1@<X8>)
{
  v2 = sub_261CFD754();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFEF34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBB4();
  if (v25)
  {
    v10 = v24;
  }

  else
  {
    v10 = 0;
  }

  if (v25)
  {
    v11 = v25;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  *v9 = v10;
  v9[1] = v11;
  v12 = *MEMORY[0x277D45110];
  v13 = sub_261CFEEB4();
  (*(*(v13 - 8) + 104))(v9, v12, v13);
  (*(v7 + 104))(v9, *MEMORY[0x277D45230], v6);
  sub_261CFD104();
  sub_261CFEF24();
  (*(v7 + 8))(v9, v6);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v14 = sub_261CFF7A4();
  __swift_project_value_buffer(v14, qword_27FEDB890);
  (*(v3 + 16))(v5, a1, v2);
  sub_261CFD104();
  v15 = sub_261CFF784();
  v16 = sub_261CFFE84();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315394;
    v19 = sub_261B879C8(v10, v11, &v24);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2080;
    sub_261BC0F6C();
    v20 = sub_261D005F4();
    v22 = v21;
    (*(v3 + 8))(v5, v2);
    v23 = sub_261B879C8(v20, v22, &v24);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_261AE2000, v15, v16, "[AppIntent] Open list with name: %s url: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v18, -1, -1);
    MEMORY[0x26671D560](v17, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

void sub_261BC0B8C(uint64_t a1@<X8>)
{
  v2 = sub_261CFD754();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFEF34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFCBB4();
  if (v24)
  {
    if (v24[2])
    {
      sub_261B49EB8(v24);

      sub_261CFF024();

      goto LABEL_6;
    }
  }

  v10 = *MEMORY[0x277D45398];
  v11 = sub_261CFF034();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
LABEL_6:
  v12 = *MEMORY[0x277D45100];
  v13 = sub_261CFEEA4();
  (*(*(v13 - 8) + 104))(v9, v12, v13);
  (*(v7 + 104))(v9, *MEMORY[0x277D45218], v6);
  sub_261CFEF24();
  (*(v7 + 8))(v9, v6);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v14 = sub_261CFF7A4();
  __swift_project_value_buffer(v14, qword_27FEDB890);
  (*(v3 + 16))(v5, a1, v2);
  v15 = sub_261CFF784();
  v16 = sub_261CFFE84();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    sub_261BC0F6C();
    v19 = sub_261D005F4();
    v21 = v20;
    (*(v3 + 8))(v5, v2);
    v22 = sub_261B879C8(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_261AE2000, v15, v16, "[AppIntent] Open tags browser with url: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26671D560](v18, -1, -1);
    MEMORY[0x26671D560](v17, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_261BC0F6C()
{
  result = qword_27FEDB8C0;
  if (!qword_27FEDB8C0)
  {
    sub_261CFD754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB8C0);
  }

  return result;
}

uint64_t sub_261BC0FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEntityID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261BC1028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BC1090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BC116C(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*MoveRemindersToListAppIntent.reminders.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC12C4(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*MoveRemindersToListAppIntent.position.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC141C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B425D4(a1, &v10 - v7);
  sub_261B425D4(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B59E9C(v8);
}

uint64_t MoveRemindersToListAppIntent.targetList.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B425D4(a1, &v5 - v3);
  sub_261CFCBC4();
  return sub_261B59E9C(a1);
}

uint64_t (*MoveRemindersToListAppIntent.targetList.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261BC1668()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDB8E0);
  __swift_project_value_buffer(v6, qword_27FEDB8E0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static MoveRemindersToListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9A18 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB8E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MoveRemindersToListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static MoveRemindersToListAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDB8F8 = a1;
  return result;
}

uint64_t MoveRemindersToListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = &v41 - v2;
  v60 = sub_261CFD184();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v58 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v41 - v9;
  v10 = sub_261CFD674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFD6A4();
  v53 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *(v11 + 104);
  v46 = *MEMORY[0x277CC9110];
  v19 = v46;
  v48 = v10;
  v20(v13, v46, v10);
  v47 = v20;
  v49 = v11 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v13, v19, v10);
  v21 = v51;
  sub_261CFD6C4();
  v22 = *(v17 + 56);
  v52 = v17 + 56;
  v54 = v22;
  v22(v21, 0, 1, v16);
  v64 = 0;
  v23 = sub_261CFC834();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v50 = v24 + 56;
  v25(v57, 1, 1, v23);
  v25(v58, 1, 1, v23);
  v55 = *MEMORY[0x277CBA308];
  v26 = *(v62 + 104);
  v62 += 104;
  v56 = v26;
  v26(v59);
  sub_261BC3E74(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  *v61 = sub_261CFCC34();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v27 = v46;
  v28 = v48;
  v29 = v47;
  v47(v13, v46, v48);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v29(v13, v27, v28);
  v30 = v51;
  sub_261CFD6C4();
  v54(v30, 0, 1, v53);
  LOBYTE(v64) = 2;
  v42 = v23;
  v41 = v25;
  v25(v57, 1, 1, v23);
  v25(v58, 1, 1, v23);
  v56(v59, v55, v60);
  sub_261B07F3C();
  v61[1] = sub_261CFCC04();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = v46;
  v32 = v48;
  v33 = v47;
  v47(v13, v46, v48);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v33(v13, v31, v32);
  sub_261CFD6C4();
  v54(v30, 0, 1, v53);
  v34 = type metadata accessor for ListEntity(0);
  (*(*(v34 - 8) + 56))(v44, 1, 1, v34);
  v35 = v42;
  v36 = v41;
  v41(v57, 1, 1, v42);
  v36(v58, 1, 1, v35);
  v56(v59, v55, v60);
  sub_261BC3E74(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v37 = sub_261CFCC34();
  v38 = v61;
  v61[2] = v37;
  *(v38 + 24) = 2;
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB900, &qword_261D07780);
  v63 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v39[4] = result;
  return result;
}

uint64_t MoveRemindersToListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_261CFFD24();
  *(v2 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261BC27F4, v5, v4);
}

uint64_t sub_261BC27F4()
{
  sub_261BC3EBC(v0 + 2, (v0 + 7));
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_261BC28BC;
  v2 = v0[12];

  return sub_261C4F28C(v2, "MoveRemindersToListAppIntent", 28, 2, (v0 + 2));
}

uint64_t sub_261BC28BC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_261BC4414;
  }

  else
  {
    v5 = sub_261BC4418;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261BC29F8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_261CFFD24();
  v2[14] = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v2[15] = v4;
  v2[16] = v3;

  return MEMORY[0x2822009F8](sub_261BC2A90, v4, v3);
}

uint64_t sub_261BC2A90()
{
  v1 = *(v0 + 104);
  sub_261B1DD74(0);
  sub_261CFC664();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *v1;
  v5 = v1[1];
  *(v0 + 88) = *(v1 + 4);
  *(v0 + 72) = v5;
  *(v0 + 56) = v4;
  v9 = (*(v3 + 8) + **(v3 + 8));
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_261BC2BF8;
  v7 = *(v0 + 96);

  return v9(v7, v0 + 56, v2, v3);
}

uint64_t sub_261BC2BF8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_261BC2D78;
  }

  else
  {
    v5 = sub_261BC2D0C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261BC2D0C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BC2D78()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BC2DE4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v63 = a5;
  v62 = a4;
  v61 = a3;
  v60 = a1;
  v80 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v59 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = v53 - v10;
  v79 = sub_261CFD184();
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v77 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v16 - 8);
  v69 = v53 - v17;
  v18 = sub_261CFD674();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFD884();
  MEMORY[0x28223BE20](v22 - 8);
  v23 = sub_261CFFA44();
  MEMORY[0x28223BE20](v23 - 8);
  v24 = sub_261CFD6A4();
  v71 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v75 = v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = *(v19 + 104);
  v65 = *MEMORY[0x277CC9110];
  v27 = v65;
  v66 = v18;
  v28(v21, v65, v18);
  v64 = v28;
  v67 = v19 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v21, v27, v18);
  v29 = v69;
  sub_261CFD6C4();
  v30 = *(v25 + 56);
  v70 = v25 + 56;
  v72 = v30;
  v30(v29, 0, 1, v24);
  v83 = 0;
  v31 = sub_261CFC834();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v68 = v32 + 56;
  v33(v76, 1, 1, v31);
  v33(v77, 1, 1, v31);
  v73 = *MEMORY[0x277CBA308];
  v34 = *(v81 + 104);
  v81 += 104;
  v74 = v34;
  v34(v78);
  sub_261BC3E74(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v56 = sub_261CFCC34();
  *v80 = v56;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = v65;
  v36 = v66;
  v37 = v64;
  v64(v21, v65, v66);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v21, v35, v36);
  v38 = v69;
  sub_261CFD6C4();
  v72(v38, 0, 1, v71);
  LOBYTE(v83) = 2;
  v54 = v31;
  v53[0] = v33;
  v33(v76, 1, 1, v31);
  v33(v77, 1, 1, v31);
  v74(v78, v73, v79);
  sub_261B07F3C();
  v39 = v38;
  v55 = sub_261CFCC04();
  v80[1] = v55;
  v53[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  sub_261CFF9B4();
  sub_261CFD874();
  v40 = v65;
  v41 = v66;
  v42 = v64;
  v64(v21, v65, v66);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v42(v21, v40, v41);
  sub_261CFD6C4();
  v72(v39, 0, 1, v71);
  v43 = type metadata accessor for ListEntity(0);
  v44 = v58;
  (*(*(v43 - 8) + 56))(v58, 1, 1, v43);
  v45 = v54;
  v46 = v53[0];
  (v53[0])(v76, 1, 1, v54);
  v46(v77, 1, 1, v45);
  v74(v78, v73, v79);
  sub_261BC3E74(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v47 = sub_261CFCC34();
  v48 = v80;
  v80[2] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB900, &qword_261D07780);
  v82[0] = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v48[4] = sub_261CFC684();
  v49 = v48;
  v83 = v60;
  sub_261CFCBC4();
  LOBYTE(v83) = v57;
  sub_261CFCBC4();
  v50 = v61;
  sub_261B425D4(v61, v44);
  sub_261B425D4(v44, v59);
  sub_261CFCBC4();
  sub_261B59E9C(v44);
  *(v49 + 24) = v62;
  v51 = v63;
  sub_261AE498C(v63, &v83);
  sub_261AE498C(&v83, v82);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(v51);
  sub_261B59E9C(v50);
  return __swift_destroy_boxed_opaque_existential_0(&v83);
}

uint64_t sub_261BC39D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9A18 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB8E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BC3AC0(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_261CFFD24();
  *(v2 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261BC3B68, v5, v4);
}

uint64_t sub_261BC3B68()
{
  sub_261BC3EBC(v0 + 2, (v0 + 7));
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_261BC3C30;
  v2 = v0[12];

  return sub_261C4F28C(v2, "MoveRemindersToListAppIntent", 28, 2, (v0 + 2));
}

uint64_t sub_261BC3C30()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_261BC3DD0;
  }

  else
  {
    v5 = sub_261BC3D6C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261BC3D6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BC3DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BC3E38(uint64_t a1)
{
  v2 = sub_261B3184C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261BC3E74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261BC3EF8()
{
  result = qword_27FEDB908;
  if (!qword_27FEDB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB908);
  }

  return result;
}

unint64_t sub_261BC3F50()
{
  result = qword_27FEDB910;
  if (!qword_27FEDB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB910);
  }

  return result;
}

uint64_t destroy for MoveRemindersToListAppIntent(void *a1)
{
}

uint64_t initializeWithCopy for MoveRemindersToListAppIntent(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = a2[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for MoveRemindersToListAppIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  *(a1 + 24) = *(a2 + 24);
  a1[4] = a2[4];
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for MoveRemindersToListAppIntent(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for MoveRemindersToListAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for MoveRemindersToListAppIntent(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t dispatch thunk of MoveRemindersToListIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261BC43C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA238, &qword_261D02480);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_261BC441C(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_261D00274();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_261B39FA4(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_261D00224();
    }

    else
    {
      v3 = sub_261D001E4();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_261BC6DA0(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 stringRepresentation];
        v14 = sub_261CFFA74();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_261B39FA4((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_261D00244())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBAA8, &unk_261D07B50);
          v6 = sub_261CFFD94();
          sub_261D002C4();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_261B91FE4(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_261B91FE4(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_261B91FE4(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_261BC4784(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_261CFFDC4();
  if (!v19)
  {
    return sub_261CFFC94();
  }

  v41 = v19;
  v45 = sub_261D003E4();
  v32 = sub_261D003F4();
  sub_261D00394();
  result = sub_261CFFDB4();
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
      v22 = sub_261CFFDE4();
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
      sub_261D003D4();
      result = sub_261CFFDD4();
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

uint64_t RemindersInCalendarUtilities.Alert.ActionStyle.hashValue.getter()
{
  v1 = *v0;
  sub_261D006C4();
  MEMORY[0x26671CDA0](v1);
  return sub_261D006F4();
}

uint64_t sub_261BC4C38(uint64_t a1)
{
  sub_261D006C4();
  RemindersInCalendarUtilities.Alert.ActionStyle.hash(into:)();
  return sub_261D006F4();
}

uint64_t RemindersInCalendarUtilities.Alert.Action.title.getter()
{
  v1 = *v0;
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarUtilities.Alert.Action.init(title:style:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for RemindersInCalendarUtilities.Alert.Action(0, a5, a3, a4);
  v11 = *(*(a5 - 8) + 32);
  v12 = a6 + *(v10 + 32);

  return v11(v12, a4, a5);
}

uint64_t RemindersInCalendarUtilities.Alert.title.getter()
{
  v1 = *v0;
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarUtilities.Alert.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RemindersInCalendarUtilities.Alert.message.getter()
{
  v1 = *(v0 + 16);
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarUtilities.Alert.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RemindersInCalendarUtilities.Alert.actions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t RemindersInCalendarUtilities.Alert.init(title:message:actions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_261BC4F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_261CFE284();
  v21[5] = sub_261CFE264();
  v21[2] = a2;
  sub_261CFE254();
  v7 = sub_261CFFCC4();
  v10 = type metadata accessor for RemindersInCalendarUtilities.Alert.Action(0, a2, v8, v9);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_261BC4784(sub_261BC695C, v21, v7, v10, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v14 = sub_261CFE214();
  v16 = v15;
  v17 = sub_261CFE274();
  v19 = v18;
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a3 = v14;
  a3[1] = v16;
  a3[2] = v17;
  a3[3] = v19;
  a3[4] = v13;
  return result;
}

uint64_t sub_261BC505C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFE204();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  sub_261CFE254();
  sub_261CFE224();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D45D40])
  {
    v13 = 0;
LABEL_7:
    v14 = sub_261CFE234();
    v16 = v15;
    sub_261CFE244();
    *a3 = v14;
    *(a3 + 8) = v16;
    *(a3 + 16) = v13;
    v19 = type metadata accessor for RemindersInCalendarUtilities.Alert.Action(0, a2, v17, v18);
    return (*(v5 + 32))(a3 + *(v19 + 32), v7, a2);
  }

  if (v12 == *MEMORY[0x277D45D38])
  {
    v13 = 1;
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x277D45D30])
  {
    v13 = 2;
    goto LABEL_7;
  }

  result = sub_261D00604();
  __break(1u);
  return result;
}

uint64_t RemindersInCalendarUtilities.RequestPerformerConfiguration.alertPresenter.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_261AE49F0(a1, v1);
}

uint64_t RemindersInCalendarUtilities.RequestPerformerConfiguration.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s21DefaultAlertPresenterCMa();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_287444558;
  *a1 = result;
  return result;
}

__n128 RemindersInCalendarUtilities.RequestPerformer.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 32) = *a1;
  *(v2 + 48) = v4;
  *(v2 + 64) = *(a1 + 32);
  return result;
}

uint64_t RemindersInCalendarUtilities.RequestPerformer.init(configuration:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v2 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 32);
  return v1;
}

uint64_t sub_261BC53A8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_261BC697C(v0 + 32, v5);
    sub_261AE49F0(v5, v4);
    _s24AlertPresentationAdaptorCMa();
    v1 = swift_allocObject();
    sub_261AE49F0(v4, v1 + 16);
    v2 = sub_261BC69DC();
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    sub_261CFCDA4();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t RemindersInCalendarUtilities.RequestPerformer.deinit()
{
  swift_unknownObjectRelease();
  sub_261BC5470((v0 + 32));
  return v0;
}

uint64_t RemindersInCalendarUtilities.RequestPerformer.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_261BC5470((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of RemindersInCalendarAlertPresenting.present<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_261BC5638(void *a1)
{
}

void *sub_261BC567C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFD104();
  return a1;
}

void *sub_261BC56D4(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_261CFD104();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_261CFD104();

  a1[4] = a2[4];
  sub_261CFD104();

  return a1;
}

void *sub_261BC575C(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = *(a2 + 16);

  *(a1 + 3) = *(a2 + 24);

  return a1;
}

uint64_t sub_261BC57B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_261BC57FC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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