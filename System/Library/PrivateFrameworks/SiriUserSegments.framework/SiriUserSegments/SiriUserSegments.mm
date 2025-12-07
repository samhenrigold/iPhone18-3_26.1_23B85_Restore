_DWORD *sub_2695899D8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2695899E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269589A60(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_269589AF0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_269589B2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269589B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2695B0A18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_269589C1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2695B0A18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_269589CD4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 <= 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 7;
    if (v4 >= 7)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
    v11 = *(*(EnablementStatus - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, EnablementStatus);
  }
}

_BYTE *sub_269589D84(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
    v8 = *(*(EnablementStatus - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, EnablementStatus);
  }

  return result;
}

uint64_t sub_269589E34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_269589E84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269589ED8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2695B0C88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_269589F84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2695B0C88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26958A028(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *a1;
    if (v4 <= 7)
    {
      v5 = 7;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 7;
    if (v4 >= 7)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_26958A0E8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *result = a2 + 7;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26958A194(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_2695B0C78();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  v15 = *(*(EnablementStatus - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, EnablementStatus);
}

uint64_t sub_26958A30C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2695B0C78();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  v15 = *(*(EnablementStatus - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, EnablementStatus);
}

uint64_t static SegmentStore.readLastRecordedSegments()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2695B0B48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26958A570(v6);
  if (!v1)
  {
    sub_26958A8F0(v6, a1);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_26958A570@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v26 = sub_2695B0DE8();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2695B0B48();
  v3 = *(v23 - 8);
  v4 = MEMORY[0x28223BE20](v23);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_2695B0FB8();
  v14 = [v12 containerURLForSecurityApplicationGroupIdentifier_];

  if (v14)
  {
    sub_2695B0B38();

    v15 = v23;
    (*(v3 + 32))(v11, v9, v23);
    sub_2695B0DD8();
    sub_2695B0B18();
    v16 = *(v24 + 8);
    v17 = v26;
    v16(v2, v26);
    sub_2695B0DC8();
    sub_2695B0B18();
    v16(v2, v17);
    v18 = *(v3 + 8);
    v18(v6, v15);
    return (v18)(v11, v15);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2695B1208();
    MEMORY[0x26D6414B0](0xD00000000000001ALL, 0x80000002695B38B0);
    MEMORY[0x26D6414B0](0xD000000000000029, 0x80000002695B3880);
    MEMORY[0x26D6414B0](0xD00000000000002ALL, 0x80000002695B38D0);
    v20 = v27;
    v21 = v28;
    sub_26958B580();
    swift_allocError();
    *v22 = v20;
    v22[1] = v21;
    return swift_willThrow();
  }
}

uint64_t sub_26958A8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2695B0B48();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v10 = sub_2695B0EF8();
  __swift_project_value_buffer(v10, qword_2814B2250);
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_2695B0ED8();
  v12 = sub_2695B1128();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a2;
    v14 = v13;
    v26 = swift_slowAlloc();
    v27 = v2;
    v29 = v26;
    *v14 = 136315394;
    *(v14 + 4) = sub_26959CE44(0xD00000000000001FLL, 0x80000002695B3860, &v29);
    *(v14 + 12) = 2080;
    sub_26958B538(&qword_2814B1FD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v15 = sub_2695B1318();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = sub_26959CE44(v15, v17, &v29);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_269588000, v11, v12, "SegmentStore.%s from: %s", v14, 0x16u);
    v19 = v26;
    swift_arrayDestroy();
    v20 = v19;
    v3 = v27;
    MEMORY[0x26D641DE0](v20, -1, -1);
    MEMORY[0x26D641DE0](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  result = sub_2695B0B58();
  if (!v3)
  {
    v23 = result;
    v24 = v22;
    sub_2695B0AA8();
    swift_allocObject();
    sub_2695B0A98();
    type metadata accessor for SegmentsSummary(0);
    sub_26958B538(&qword_28031D000, type metadata accessor for SegmentsSummary, &protocol conformance descriptor for SegmentsSummary);
    sub_2695B0A88();
    sub_26958B49C(v23, v24);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26958ACE4(uint64_t a1, int a2)
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

uint64_t sub_26958AD2C(uint64_t result, int a2, int a3)
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

uint64_t sub_26958AD84(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v58[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2695B0B48();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v52 = &v48 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v11 = sub_2695B0EF8();
  __swift_project_value_buffer(v11, qword_2814B2250);
  isa = v4[2].isa;
  v50 = v4 + 2;
  isa(v10, a2, v3);
  v12 = sub_2695B0ED8();
  v13 = sub_2695B1128();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    p_isa = &v4->isa;
    v15 = v14;
    v48 = swift_slowAlloc();
    v58[0] = v48;
    *v15 = 136315394;
    *(v15 + 4) = sub_26959CE44(0x3A5F286574697277, 0xEC000000293A6F74, v58);
    *(v15 + 12) = 2080;
    sub_26958B538(&qword_2814B1FD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_2695B1318();
    v17 = a2;
    v19 = v18;
    v54 = p_isa[1];
    v54(v10, v3);
    v20 = sub_26959CE44(v16, v19, v58);
    a2 = v17;

    *(v15 + 14) = v20;
    _os_log_impl(&dword_269588000, v12, v13, "SegmentStore.%s to: %s", v15, 0x16u);
    v21 = v48;
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v21, -1, -1);
    MEMORY[0x26D641DE0](v15, -1, -1);
  }

  else
  {

    v54 = v4[1].isa;
    v54(v10, v3);
  }

  sub_2695B0AE8();
  swift_allocObject();
  sub_2695B0AD8();
  sub_2695B0AB8();
  type metadata accessor for SegmentsSummary(0);
  sub_26958B538(&unk_28031CF88, type metadata accessor for SegmentsSummary, &protocol conformance descriptor for SegmentsSummary);
  v22 = v56;
  v23 = sub_2695B0AC8();
  if (!v22)
  {
    v55 = v23;
    v56 = v24;
    v25 = [objc_opt_self() defaultManager];
    v26 = v52;
    sub_2695B0B28();
    v27 = sub_2695B0B08();
    v54(v26, v3);
    v58[0] = 0;
    LODWORD(v26) = [v25 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v58];

    if (v26)
    {
      v28 = v58[0];
    }

    else
    {
      v29 = v58[0];
      v30 = sub_2695B0AF8();

      swift_willThrow();
      v31 = v51;
      isa(v51, a2, v3);
      MEMORY[0x26D641C60](v30);
      v32 = sub_2695B0ED8();
      v33 = sub_2695B1138();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        LODWORD(v52) = v33;
        v35 = v34;
        p_isa = swift_slowAlloc();
        v58[0] = p_isa;
        *v35 = 136315394;
        sub_26958B538(&qword_2814B1FD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v50 = v32;
        v36 = sub_2695B1318();
        v38 = v37;
        v54(v31, v3);
        v39 = sub_26959CE44(v36, v38, v58);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        v57 = v30;
        MEMORY[0x26D641C60](v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031CF98, qword_2695B2630);
        v40 = sub_2695B0FC8();
        v42 = sub_26959CE44(v40, v41, v58);

        *(v35 + 14) = v42;
        v43 = v50;
        _os_log_impl(&dword_269588000, v50, v52, "SegmentStore.write(): Unable to create the store directory for path: %s, error: %s", v35, 0x16u);
        v44 = p_isa;
        swift_arrayDestroy();
        MEMORY[0x26D641DE0](v44, -1, -1);
        MEMORY[0x26D641DE0](v35, -1, -1);
      }

      else
      {

        v54(v31, v3);
      }
    }

    v45 = v55;
    v46 = v56;
    sub_2695B0B88();
    sub_26958B49C(v45, v46);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26958B49C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26958B538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26958B580()
{
  result = qword_28031D008;
  if (!qword_28031D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D008);
  }

  return result;
}

void sub_26958B610(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SiriUserSegmentsFeatureFlag.hashValue.getter()
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

uint64_t sub_26958B738()
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

uint64_t sub_26958B7A4(uint64_t a1)
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

unint64_t sub_26958B7E8()
{
  result = qword_28031D090;
  if (!qword_28031D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D090);
  }

  return result;
}

unint64_t sub_26958B868()
{
  result = qword_28031D098;
  if (!qword_28031D098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031D0A0, &qword_2695B1ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D098);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriUserSegmentsFeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriUserSegmentsFeatureFlag(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for SiriFirstEnablementStatus(uint64_t a1)
{
  result = qword_2814B1FA8;
  if (!qword_2814B1FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26958BA90(uint64_t a1)
{
  sub_26958BAE8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_26958BAE8()
{
  if (!qword_2814B1FC0)
  {
    v0 = sub_2695B0C78();
    if (!v1)
    {
      atomic_store(v0, &qword_2814B1FC0);
    }
  }
}

unint64_t sub_26958BB30()
{
  v1 = sub_2695B0C18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2695B0C78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  MEMORY[0x28223BE20](EnablementStatus - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26958D34C(v0, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v13 = (*(*(v12 - 8) + 48))(v11, 3, v12);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      return 0x616E45726576656ELL;
    }

    else
    {
      return 0x6D726554676E6F6CLL;
    }
  }

  else if (v13)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_2695B1208();

    v19 = 0xD000000000000016;
    v20 = 0x80000002695B3970;
    sub_2695AC8F0(v4);
    v14 = sub_2695B0BB8();
    v16 = v15;
    (*(v2 + 8))(v4, v1);
    MEMORY[0x26D6414B0](v14, v16);

    MEMORY[0x26D6414B0](41, 0xE100000000000000);
    v17 = v19;
    (*(v6 + 8))(v8, v5);
    return v17;
  }
}

uint64_t sub_26958BE54()
{
  v1 = *v0;
  sub_2695B1388();
  MEMORY[0x26D641850](v1);
  return sub_2695B13A8();
}

uint64_t sub_26958BEC8(uint64_t a1)
{
  v2 = *v1;
  sub_2695B1388();
  MEMORY[0x26D641850](v2);
  return sub_2695B13A8();
}

uint64_t sub_26958BF0C()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x796C746E65636572;
  if (*v0 != 2)
  {
    v2 = 0x6D726554676E6F6CLL;
  }

  if (*v0)
  {
    v1 = 0x616E45726576656ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26958BFA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26958E060(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26958BFE8(uint64_t a1)
{
  v2 = sub_26958D2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958C024(uint64_t a1)
{
  v2 = sub_26958D2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26958C060(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0B0, &qword_2695B2040);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v29 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0B8, &qword_2695B2048);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v29 - v4;
  v5 = sub_2695B0C78();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0C0, &qword_2695B2050);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0C8, &qword_2695B2058);
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  MEMORY[0x28223BE20](EnablementStatus - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0D0, &qword_2695B2060);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26958D2F8();
  sub_2695B13C8();
  sub_26958D34C(v43, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v21 = (*(*(v20 - 8) + 48))(v15, 3, v20);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v45 = 1;
      sub_26958D458();
      sub_2695B12E8();
      (*(v32 + 8))(v9, v33);
    }

    else
    {
      v47 = 3;
      sub_26958D3B0();
      v28 = v34;
      sub_2695B12E8();
      (*(v36 + 8))(v28, v38);
    }
  }

  else
  {
    if (!v21)
    {
      v23 = v39;
      v22 = v40;
      v24 = v35;
      (*(v39 + 32))(v35, v15, v40);
      v46 = 2;
      sub_26958D404();
      v25 = v37;
      sub_2695B12E8();
      sub_26958D5B0(&qword_28031D0F0, MEMORY[0x277CC9580]);
      v26 = v42;
      sub_2695B1308();
      (*(v41 + 8))(v25, v26);
      (*(v23 + 8))(v24, v22);
      return (*(v17 + 8))(v19, v16);
    }

    v44 = 0;
    sub_26958D4AC();
    sub_2695B12E8();
    (*(v30 + 8))(v12, v31);
  }

  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_26958C660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D108, &qword_2695B2068);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v55 = &v41 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D110, &qword_2695B2070);
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D118, &qword_2695B2078);
  v46 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D120, &qword_2695B2080);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D128, &qword_2695B2088);
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  v13 = MEMORY[0x28223BE20](EnablementStatus);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26958D2F8();
  v19 = v57;
  sub_2695B13B8();
  if (!v19)
  {
    v57 = EnablementStatus;
    v42 = v15;
    v43 = v17;
    v20 = v53;
    v21 = v54;
    v22 = v55;
    v23 = sub_2695B12D8();
    v24 = *(v23 + 16);
    if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 4) : (v26 = 1), v26))
    {
      v27 = sub_2695B1248();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D130, &qword_2695B2090);
      *v29 = v57;
      sub_2695B12A8();
      sub_2695B1238();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v56 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v23 + 32) > 1u)
      {
        v34 = v56;
        if (v25 == 2)
        {
          v61 = 2;
          sub_26958D404();
          v35 = v51;
          sub_2695B1298();
          sub_2695B0C78();
          sub_26958D5B0(&qword_28031D138, MEMORY[0x277CC95A0]);
          v36 = v42;
          v37 = v48;
          sub_2695B12C8();
          (*(v50 + 8))(v35, v37);
          (*(v34 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
          (*(*(v38 - 8) + 56))(v36, 0, 3, v38);
          v33 = v43;
          sub_26958D54C(v36, v43);
        }

        else
        {
          v62 = 3;
          sub_26958D3B0();
          sub_2695B1298();
          (*(v47 + 8))(v22, v49);
          (*(v34 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
          v33 = v43;
          (*(*(v40 - 8) + 56))(v43, 3, 3, v40);
        }

        v31 = v52;
      }

      else
      {
        v31 = v52;
        if (*(v23 + 32))
        {
          v60 = 1;
          sub_26958D458();
          sub_2695B1298();
          (*(v46 + 8))(v20, v21);
          (*(v56 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
          v33 = v43;
          (*(*(v39 - 8) + 56))(v43, 2, 3, v39);
        }

        else
        {
          v59 = 0;
          sub_26958D4AC();
          sub_2695B1298();
          (*(v44 + 8))(v8, v45);
          (*(v56 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
          v33 = v43;
          (*(*(v32 - 8) + 56))(v43, 1, 3, v32);
        }
      }

      sub_26958D54C(v33, v31);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_26958CF14(uint64_t a1)
{
  v2 = sub_26958D3B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958CF50(uint64_t a1)
{
  v2 = sub_26958D3B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26958CFA4(uint64_t a1)
{
  v2 = sub_26958D458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958CFE0(uint64_t a1)
{
  v2 = sub_26958D458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26958D024()
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

uint64_t sub_26958D090(uint64_t a1)
{
  sub_2695B1388();
  MEMORY[0x26D641850](0);
  return sub_2695B13A8();
}

uint64_t sub_26958D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1716482913 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2695B1328();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26958D174(uint64_t a1)
{
  v2 = sub_26958D404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958D1B0(uint64_t a1)
{
  v2 = sub_26958D404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26958D204(uint64_t a1)
{
  v2 = sub_26958D4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26958D240(uint64_t a1)
{
  v2 = sub_26958D4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26958D2F8()
{
  result = qword_28031D0D8;
  if (!qword_28031D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D0D8);
  }

  return result;
}

uint64_t sub_26958D34C(uint64_t a1, uint64_t a2)
{
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  (*(*(EnablementStatus - 8) + 16))(a2, a1, EnablementStatus);
  return a2;
}

unint64_t sub_26958D3B0()
{
  result = qword_28031D0E0;
  if (!qword_28031D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D0E0);
  }

  return result;
}

unint64_t sub_26958D404()
{
  result = qword_28031D0E8;
  if (!qword_28031D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D0E8);
  }

  return result;
}

unint64_t sub_26958D458()
{
  result = qword_28031D0F8;
  if (!qword_28031D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D0F8);
  }

  return result;
}

unint64_t sub_26958D4AC()
{
  result = qword_28031D100;
  if (!qword_28031D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D100);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_26958D54C(uint64_t a1, uint64_t a2)
{
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  (*(*(EnablementStatus - 8) + 32))(a2, a1, EnablementStatus);
  return a2;
}

uint64_t sub_26958D5B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2695B0C78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26958D5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2695B0C78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  MEMORY[0x28223BE20](EnablementStatus - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D140, &qword_2695B2098);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_26958D34C(a1, &v22 - v13);
  sub_26958D34C(a2, &v14[v15]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 3, v16);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v17(&v14[v15], 3, v16) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v17(&v14[v15], 3, v16) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_26958D8F0(v14);
    v19 = 0;
    return v19 & 1;
  }

  if (!v18)
  {
    sub_26958D34C(v14, v10);
    if (!v17(&v14[v15], 3, v16))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = sub_2695B0C48();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_26958D958(v14);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  if (v17(&v14[v15], 3, v16) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_26958D958(v14);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_26958D8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D140, &qword_2695B2098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26958D958(uint64_t a1)
{
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  (*(*(EnablementStatus - 8) + 8))(a1, EnablementStatus);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriFirstEnablementStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriFirstEnablementStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriFirstEnablementStatus.RecentlyEnabledCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriFirstEnablementStatus.RecentlyEnabledCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_26958DC44()
{
  result = qword_28031D148;
  if (!qword_28031D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D148);
  }

  return result;
}

unint64_t sub_26958DC9C()
{
  result = qword_28031D150;
  if (!qword_28031D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D150);
  }

  return result;
}

unint64_t sub_26958DCF4()
{
  result = qword_28031D158;
  if (!qword_28031D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D158);
  }

  return result;
}

unint64_t sub_26958DD4C()
{
  result = qword_28031D160;
  if (!qword_28031D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D160);
  }

  return result;
}

unint64_t sub_26958DDA4()
{
  result = qword_28031D168;
  if (!qword_28031D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D168);
  }

  return result;
}

unint64_t sub_26958DDFC()
{
  result = qword_28031D170;
  if (!qword_28031D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D170);
  }

  return result;
}

unint64_t sub_26958DE54()
{
  result = qword_28031D178;
  if (!qword_28031D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D178);
  }

  return result;
}

unint64_t sub_26958DEAC()
{
  result = qword_28031D180;
  if (!qword_28031D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D180);
  }

  return result;
}

unint64_t sub_26958DF04()
{
  result = qword_28031D188;
  if (!qword_28031D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D188);
  }

  return result;
}

unint64_t sub_26958DF5C()
{
  result = qword_28031D190;
  if (!qword_28031D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D190);
  }

  return result;
}

unint64_t sub_26958DFB4()
{
  result = qword_28031D198;
  if (!qword_28031D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D198);
  }

  return result;
}

unint64_t sub_26958E00C()
{
  result = qword_28031D1A0;
  if (!qword_28031D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D1A0);
  }

  return result;
}

uint64_t sub_26958E060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2695B1328() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616E45726576656ELL && a2 == 0xEC00000064656C62 || (sub_2695B1328() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xEF64656C62616E45 || (sub_2695B1328() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726554676E6F6CLL && a2 == 0xEF64656C62616E45)
  {

    return 3;
  }

  else
  {
    v6 = sub_2695B1328();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26958E1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1E0, &qword_2695B2560);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1E8, &unk_2695B31E0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26958E338, 0, 0);
}

uint64_t sub_26958E338()
{
  sub_2695B0E28();
  sub_2695B0BA8();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  sub_2695B0BA8();
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_26958E448;
  v6 = *(v0 + 64);

  return MEMORY[0x2821377A8](v0 + 16, v6, v2, 0, v4, 0, 0, 1);
}

uint64_t sub_26958E448()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_26958F55C;
  }

  else
  {
    v2 = sub_26958E55C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26958E55C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v9 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2695B0DF8();
  sub_26958F514(&qword_28031D1F0, &qword_28031D1E0, &qword_2695B2560, MEMORY[0x277CF1760]);
  sub_2695B0D78();
  (*(v5 + 8))(v4, v6);
  swift_allocObject();
  (*(v3 + 16))(v9, v1, v2);
  sub_26958F514(&qword_28031D1F8, &qword_28031D1E8, &unk_2695B31E0, MEMORY[0x277CE4878]);
  sub_2695B10F8();
  sub_2695B0EC8();

  sub_2695B10E8();
  (*(v3 + 8))(v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26958E770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1A8, &qword_2695B2528);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B0, &qword_2695B2530);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26958E8B4, 0, 0);
}

uint64_t sub_26958E8B4()
{
  sub_2695B0E28();
  sub_2695B0BA8();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  sub_2695B0BA8();
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_26958E9C4;
  v6 = *(v0 + 64);

  return MEMORY[0x2821377A8](v0 + 16, v6, v2, 0, v4, 0, 0, 1);
}

uint64_t sub_26958E9C4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_26958ECEC;
  }

  else
  {
    v2 = sub_26958EAD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26958EAD8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2695B0E08();
  sub_26958F514(&qword_28031D1C0, &qword_28031D1A8, &qword_2695B2528, MEMORY[0x277CF1760]);
  sub_2695B0D78();
  (*(v6 + 8))(v5, v7);
  swift_allocObject();
  (*(v4 + 16))(v1, v2, v3);
  sub_26958F514(&qword_28031D1C8, &qword_28031D1B0, &qword_2695B2530, MEMORY[0x277CE4878]);
  sub_2695B10F8();
  sub_2695B0DB8();

  sub_2695B10E8();
  (*(v4 + 8))(v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26958ECEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26958ED64(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_26958ED84, 0, 0);
}

uint64_t sub_26958ED84()
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D200, &qword_2695B2578);
  v2 = sub_26958F514(&qword_28031D208, &qword_28031D200, &qword_2695B2578, MEMORY[0x277CE4870]);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_26958EE94;

  return MEMORY[0x282200308](v0 + 40, v1, v2);
}

uint64_t sub_26958EE94()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26958F564, 0, 0);
  }

  else
  {
    swift_endAccess();
    **(v2 + 48) = *(v2 + 40);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26958EFD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_26958EFF8, 0, 0);
}

uint64_t sub_26958EFF8()
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1D0, &qword_2695B2550);
  v2 = sub_26958F514(&qword_28031D1D8, &qword_28031D1D0, &qword_2695B2550, MEMORY[0x277CE4870]);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_26958F108;

  return MEMORY[0x282200308](v0 + 40, v1, v2);
}

uint64_t sub_26958F108()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26958F24C, 0, 0);
  }

  else
  {
    swift_endAccess();
    **(v2 + 48) = *(v2 + 40);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26958F24C()
{
  v1 = *(v0 + 72);
  swift_endAccess();

  **(v0 + 48) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26958F2C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26958F370;

  return sub_26958EFD8(a1, v1);
}

uint64_t sub_26958F370()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26958F464(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26958F560;

  return sub_26958ED64(a1, v1);
}

uint64_t sub_26958F514(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26958F568(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26958F680;

  return v7(a1, a2);
}

uint64_t sub_26958F680(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_26958F78C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031CF98, qword_2695B2630);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26958F880()
{
  v1 = [objc_opt_self() sharedStatusController];
  v0[19] = v1;
  v2 = [objc_opt_self() activeAccount];
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26958F9F8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D210, &qword_2695B2628);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26958F78C;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 getSubscriptionStatusForUserIdentity:v2 bypassingCache:0 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26958F9F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_26958FB78;
  }

  else
  {
    v2 = sub_26958FB08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26958FB08()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26958FB78(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[19];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_26958FC00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26958FD1C()
{
  v1 = *v0;
  sub_2695B1388();
  MEMORY[0x26D641850](v1);
  return sub_2695B13A8();
}

uint64_t sub_26958FD90(uint64_t a1)
{
  v2 = *v1;
  sub_2695B1388();
  MEMORY[0x26D641850](v2);
  return sub_2695B13A8();
}

unint64_t *sub_26958FDD4@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t type metadata accessor for SiriUsageMetrics(uint64_t a1)
{
  result = qword_28031D220;
  if (!qword_28031D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26958FE6C(uint64_t a1)
{
  result = sub_2695B0A18();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProductId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269590054()
{
  v1 = 0x6E61747369737361;
  if (*v0 != 1)
  {
    v1 = 0x6F69746174636964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_2695900C0()
{
  result = qword_28031D230;
  if (!qword_28031D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D230);
  }

  return result;
}

uint64_t sub_26959017C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v105 = a3;
  v113 = a1;
  v114 = a2;
  v7 = sub_2695B0A78();
  v8 = *(v7 - 8);
  v108 = v7;
  v109 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v112 = &v95 - v11;
  v12 = sub_2695B0C98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2695B0D48();
  v17 = *(v16 - 8);
  v110 = v16;
  v111 = v17;
  MEMORY[0x28223BE20](v16);
  v116 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v95 - v20;
  v22 = sub_2695B0C78();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  result = MEMORY[0x28223BE20](v24);
  if (*(v4 + 16) != 1)
  {
    if (*(v4 + 17))
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    *a4 = v28;
    return result;
  }

  v104 = v27;
  v106 = &v95 - v26;
  sub_269591050(v114, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    result = sub_2695910C0(v21);
    *a4 = 0;
    return result;
  }

  v96 = a4;
  v97 = v5;
  v114 = v23;
  v29 = *(v23 + 32);
  v103 = v22;
  v29(v106, v21);
  (*(v13 + 104))(v15, *MEMORY[0x277CC9830], v12);
  sub_2695B0CA8();
  (*(v13 + 8))(v15, v12);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D238, &qword_2695B33C0);
  v31 = sub_2695B0D38();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v101 = *(v32 + 72);
  v102 = v30;
  v34 = swift_allocObject();
  v99 = xmmword_2695B2770;
  *(v34 + 16) = xmmword_2695B2770;
  v35 = *MEMORY[0x277CC9998];
  v100 = *(v32 + 104);
  v100(v34 + v33, v35, v31);
  sub_269591E84(v34);
  swift_setDeallocating();
  v98 = *(v32 + 8);
  v98(v34 + v33, v31);
  swift_deallocClassInstance();
  v36 = v112;
  sub_2695B0CD8();

  v37 = sub_2695B0A48();
  if (v38)
  {
    v115[0] = 0;
    v115[1] = 0xE000000000000000;
    sub_2695B1208();

    v115[0] = 0xD000000000000010;
    v115[1] = 0x80000002695B3A20;
    sub_269592AB8(&qword_28031D240, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v39 = v108;
    v40 = sub_2695B1318();
    MEMORY[0x26D6414B0](v40);

    v41 = v115[0];
    v42 = v115[1];
    sub_2695921A4();
    swift_allocError();
    *v43 = v41;
    v43[1] = v42;
    swift_willThrow();
    (*(v109 + 8))(v36, v39);
LABEL_16:
    v59 = v114;
    v60 = v103;
LABEL_17:
    (*(v111 + 8))(v116, v110);
    return (*(v59 + 8))(v106, v60);
  }

  v95 = v37;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v44 = sub_2695B0EF8();
  __swift_project_value_buffer(v44, qword_2814B2250);
  v45 = sub_2695B0ED8();
  v46 = sub_2695B1128();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = v95;
    _os_log_impl(&dword_269588000, v45, v46, "ActivitySegmentMetrics: assistant last active: %ld months ago", v47, 0xCu);
    v48 = v47;
    v36 = v112;
    MEMORY[0x26D641DE0](v48, -1, -1);
  }

  v49 = swift_allocObject();
  *(v49 + 16) = v99;
  v100(v49 + v33, *MEMORY[0x277CC9968], v31);
  sub_269591E84(v49);
  swift_setDeallocating();
  v98(v49 + v33, v31);
  swift_deallocClassInstance();
  v50 = v107;
  sub_2695B0CD8();

  v51 = sub_2695B0A28();
  if (v52)
  {
    v115[0] = 0;
    v115[1] = 0xE000000000000000;
    sub_2695B1208();

    strcpy(v115, "day is nil in ");
    HIBYTE(v115[1]) = -18;
    sub_269592AB8(&qword_28031D240, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v53 = v108;
    v54 = sub_2695B1318();
    MEMORY[0x26D6414B0](v54);

    v55 = v115[0];
    v56 = v115[1];
    sub_2695921A4();
    swift_allocError();
    *v57 = v55;
    v57[1] = v56;
    swift_willThrow();
    v58 = *(v109 + 8);
    v58(v50, v53);
    v58(v36, v53);
    goto LABEL_16;
  }

  v61 = v51;
  v62 = sub_2695B0ED8();
  v63 = sub_2695B1128();
  v64 = os_log_type_enabled(v62, v63);
  v59 = v114;
  v60 = v103;
  if (v64)
  {
    v65 = swift_slowAlloc();
    *v65 = 134217984;
    *(v65 + 4) = v61;
    _os_log_impl(&dword_269588000, v62, v63, "ActivitySegmentMetrics: assistant last active: %ld days ago", v65, 0xCu);
    v66 = v65;
    v36 = v112;
    MEMORY[0x26D641DE0](v66, -1, -1);
  }

  v67 = v97;
  if (v95 >= 6)
  {
    v72 = v108;
    v73 = *(v109 + 8);
    v73(v50, v108);
    v73(v36, v72);
    (*(v111 + 8))(v116, v110);
    result = (*(v59 + 8))(v106, v60);
    v74 = 3;
LABEL_29:
    *v96 = v74;
    return result;
  }

  if (v61 >= 28)
  {
    v75 = v108;
    v76 = *(v109 + 8);
    v76(v50, v108);
    v76(v36, v75);
    (*(v111 + 8))(v116, v110);
    result = (*(v59 + 8))(v106, v60);
    v74 = 4;
    goto LABEL_29;
  }

  if (v61 >= 14)
  {
    v77 = v108;
    v78 = *(v109 + 8);
    v78(v50, v108);
    v78(v36, v77);
    (*(v111 + 8))(v116, v110);
    result = (*(v59 + 8))(v106, v60);
    v74 = 5;
    goto LABEL_29;
  }

  if (v61 >= 7)
  {
    v79 = v108;
    v80 = *(v109 + 8);
    v80(v50, v108);
    v80(v36, v79);
    (*(v111 + 8))(v116, v110);
    result = (*(v59 + 8))(v106, v60);
    *v96 = 6;
  }

  else
  {
    v68 = v104;
    (*(v59 + 16))(v104, v113, v60);
    v69 = v105;

    result = sub_2695921F8(v68, v69);
    if (v67)
    {
      v70 = v108;
      v71 = *(v109 + 8);
      v71(v50, v108);
      v71(v36, v70);
      goto LABEL_17;
    }

    v81 = *(result + 16);
    if (v81)
    {
      v82 = 0;
      v83 = 32;
      do
      {
        v84 = *(result + v83);
        v85 = __CFADD__(v82, v84);
        v82 += v84;
        if (v85)
        {
          __break(1u);
          return result;
        }

        v83 += 8;
        --v81;
      }

      while (v81);
      if (v82 == 1)
      {

        v86 = v108;
        v87 = *(v109 + 8);
        v87(v50, v108);
        v87(v36, v86);
        (*(v111 + 8))(v116, v110);
        result = (*(v59 + 8))(v106, v60);
        v74 = 7;
        goto LABEL_29;
      }

      if (v82 - 4 >= 0xFFFFFFFFFFFFFFFDLL)
      {

        v90 = v108;
        v91 = *(v109 + 8);
        v91(v50, v108);
        v91(v36, v90);
        (*(v111 + 8))(v116, v110);
        result = (*(v59 + 8))(v106, v60);
        v74 = 8;
      }

      else
      {
        if (v82 < 4)
        {
          goto LABEL_39;
        }

        v92 = sub_269590F40(result);

        v93 = v108;
        v94 = *(v109 + 8);
        v94(v50, v108);
        v94(v36, v93);
        (*(v111 + 8))(v116, v110);
        result = (*(v59 + 8))(v106, v60);
        if (v92)
        {
          v74 = 10;
        }

        else
        {
          v74 = 9;
        }
      }

      goto LABEL_29;
    }

LABEL_39:

    v88 = v108;
    v89 = *(v109 + 8);
    v89(v50, v108);
    v89(v36, v88);
    (*(v111 + 8))(v116, v110);
    result = (*(v59 + 8))(v106, v60);
    *v96 = 0;
  }

  return result;
}

BOOL sub_269590F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 >= 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_26959F360(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          v3 = sub_26959F360((v6 > 1), v7 + 1, 1, v3);
        }

        *(v3 + 2) = v7 + 1;
        *&v3[8 * v7 + 32] = v4;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = *(v3 + 2);

  return v8 > 2;
}

uint64_t sub_269591050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695910C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269591138(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  v105 = a6;
  v96 = a5;
  v104 = a4;
  v103 = type metadata accessor for SiriUsageMetrics(0);
  v10 = MEMORY[0x28223BE20](v103);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v102 = &v93 - v14;
  MEMORY[0x28223BE20](v13);
  v98 = &v93 - v15;
  v16 = sub_2695B0A78();
  v100 = *(v16 - 8);
  v101 = v16;
  MEMORY[0x28223BE20](v16);
  v99 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2695B0C78();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v97 = &v93 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v93 - v25;
  sub_2695B0A08();
  if (v27 != a7)
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v49 = sub_2695B0EF8();
    __swift_project_value_buffer(v49, qword_2814B2250);
    sub_2695929F8(a1, v12);
    v50 = sub_2695B0ED8();
    v51 = sub_2695B1128();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v106[0] = v53;
      *v52 = 136315138;
      sub_2695B0A18();
      sub_269592AB8(&qword_28031D258, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
      v54 = sub_2695B1318();
      v56 = v55;
      sub_269592A5C(v12);
      v57 = sub_26959CE44(v54, v56, v106);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_269588000, v50, v51, "SiriActivityWeek.init(): metrics time interval: %s is not equal to one day", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x26D641DE0](v53, -1, -1);
      MEMORY[0x26D641DE0](v52, -1, -1);

      goto LABEL_17;
    }

    v75 = v12;
LABEL_16:
    sub_269592A5C(v75);
    goto LABEL_17;
  }

  sub_2695B09F8();
  v94 = a2;
  v28 = sub_2695B0D08();
  v29 = *(v19 + 8);
  v29(v26, v18);
  v30 = v18;
  v31 = v19;
  if ((v28 & 1) == 0)
  {
    v95 = v29;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v58 = sub_2695B0EF8();
    __swift_project_value_buffer(v58, qword_2814B2250);
    v59 = a1;
    v60 = v102;
    sub_2695929F8(v59, v102);
    (*(v19 + 16))(v22, v104, v30);
    v61 = sub_2695B0ED8();
    v62 = sub_2695B1128();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v60;
      v64 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v106[0] = v104;
      *v64 = 136315394;
      sub_2695B0A18();
      sub_269592AB8(&qword_28031D258, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
      v65 = sub_2695B1318();
      v67 = v66;
      sub_269592A5C(v63);
      v68 = sub_26959CE44(v65, v67, v106);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      sub_269592AB8(&qword_28031D250, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v69 = sub_2695B1318();
      v70 = v30;
      v72 = v71;
      v95(v22, v70);
      v73 = sub_26959CE44(v69, v72, v106);

      *(v64 + 14) = v73;
      _os_log_impl(&dword_269588000, v61, v62, "SiriActivityWeek.init(): metrics time interval: %s is not aligned with weekEnding date: %s", v64, 0x16u);
      v74 = v104;
      swift_arrayDestroy();
      MEMORY[0x26D641DE0](v74, -1, -1);
      MEMORY[0x26D641DE0](v64, -1, -1);

      goto LABEL_17;
    }

    v95(v22, v30);
    v75 = v60;
    goto LABEL_16;
  }

  if (*(a1 + *(v103 + 20)) != 1)
  {
LABEL_17:
    v76 = 0;
    v77 = 1;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D238, &qword_2695B33C0);
  v32 = sub_2695B0D38();
  v95 = v29;
  v33 = v32;
  v34 = *(v32 - 8);
  v35 = *(v34 + 80);
  v102 = v19 + 8;
  v36 = (v35 + 32) & ~v35;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2695B2770;
  (*(v34 + 104))(v37 + v36, *MEMORY[0x277CC9968], v33);
  sub_269591E84(v37);
  swift_setDeallocating();
  v38 = v33;
  v39 = v95;
  (*(v34 + 8))(v37 + v36, v38);
  swift_deallocClassInstance();
  v93 = a1;
  sub_2695B09D8();
  v40 = v99;
  v41 = v104;
  sub_2695B0CD8();

  v39(v26, v30);
  v42 = sub_2695B0A28();
  if (v43)
  {
    v106[0] = 0;
    v106[1] = 0xE000000000000000;
    sub_2695B1208();

    strcpy(v106, "day is nil in ");
    HIBYTE(v106[1]) = -18;
    sub_269592AB8(&qword_28031D240, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v44 = v101;
    v45 = sub_2695B1318();
    MEMORY[0x26D6414B0](v45);

    v46 = v106[0];
    v47 = v106[1];
    sub_2695921A4();
    swift_allocError();
    *v48 = v46;
    v48[1] = v47;
    swift_willThrow();
    (*(v100 + 8))(v40, v44);
    return;
  }

  v94 = v42;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v79 = sub_2695B0EF8();
  __swift_project_value_buffer(v79, qword_2814B2250);
  v80 = v97;
  (*(v31 + 16))(v97, v41, v30);
  v81 = v98;
  sub_2695929F8(v93, v98);
  v82 = v30;
  v83 = sub_2695B0ED8();
  v84 = sub_2695B1128();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v106[0] = v104;
    *v85 = 134218498;
    v86 = v94;
    *(v85 + 4) = v94;
    *(v85 + 12) = 2080;
    sub_269592AB8(&qword_28031D250, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v87 = sub_2695B1318();
    v89 = v88;
    v95(v80, v82);
    v90 = sub_26959CE44(v87, v89, v106);

    *(v85 + 14) = v90;
    *(v85 + 22) = 2048;
    v91 = *(v98 + *(v103 + 24));
    sub_269592A5C(v98);
    *(v85 + 24) = v91;
    _os_log_impl(&dword_269588000, v83, v84, "SiriActivityWeek: assistant valid turn count from %ld days before %s is %lu", v85, 0x20u);
    v92 = v104;
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x26D641DE0](v92, -1, -1);
    MEMORY[0x26D641DE0](v85, -1, -1);

    (*(v100 + 8))(v40, v101);
  }

  else
  {
    sub_269592A5C(v81);

    v39(v80, v82);
    (*(v100 + 8))(v40, v101);
    v86 = v94;
  }

  v76 = 0;
  v77 = 1;
  if ((v86 & 0x8000000000000000) == 0 && v86 < v96)
  {
    v77 = 0;
    v76 = *(v93 + *(v103 + 24));
  }

LABEL_18:
  v78 = v105;
  *v105 = v76;
  *(v78 + 8) = v77;
}

uint64_t sub_269591CA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for SiriUsageMetrics(0);
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v20, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v13 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26959F360(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v19 = v14 + 1;
      v17 = v8;
      v18 = *(v8 + 16);
      result = sub_26959F360((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v19;
      v8 = result;
    }

    *(v8 + 16) = v16;
    *(v8 + 8 * v14 + 32) = v13;
  }

  while (v7 != v4);
  return v8;
}

void *sub_269591E34(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_269591E54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_269591E84(uint64_t a1)
{
  v2 = sub_2695B0D38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D260, &qword_2695B2810);
    v9 = sub_2695B11E8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_269592AB8(&qword_28031D268, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_2695B0F58();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_269592AB8(&qword_28031D270, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_2695B0FA8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2695921A4()
{
  result = qword_28031D248;
  if (!qword_28031D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D248);
  }

  return result;
}

uint64_t sub_2695921F8(char *a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_2695B0A78();
  v65 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2695B0C98();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2695B0D48();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2695B0C78();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v68 = v3;
  v15 = sub_2695B0EF8();
  __swift_project_value_buffer(v15, qword_2814B2250);
  (*(v12 + 16))(v14, a1, v11);
  v16 = sub_2695B0ED8();
  v17 = sub_2695B1128();
  v18 = os_log_type_enabled(v16, v17);
  v60 = v12;
  v61 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v54 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v53 = v10;
    v22 = v21;
    v66 = v21;
    *v20 = 136315138;
    sub_269592AB8(&qword_28031D250, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v23 = sub_2695B1318();
    v24 = v11;
    v26 = v25;
    v58 = *(v12 + 8);
    v58(v14, v24);
    v27 = sub_26959CE44(v23, v26, &v66);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_269588000, v16, v17, "SiriActivityWeek.init() week ending: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v28 = v22;
    v10 = v53;
    MEMORY[0x26D641DE0](v28, -1, -1);
    v29 = v20;
    a1 = v54;
    MEMORY[0x26D641DE0](v29, -1, -1);
  }

  else
  {

    v58 = *(v12 + 8);
    v58(v14, v11);
  }

  v31 = v56;
  v30 = v57;
  (*(v56 + 104))(v7, *MEMORY[0x277CC9830], v57);
  sub_2695B0CA8();
  (*(v31 + 8))(v7, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D238, &qword_2695B33C0);
  v32 = sub_2695B0D38();
  v33 = *(v32 - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2695B2780;
  v37 = v36 + v35;
  v38 = *(v33 + 104);
  v38(v37, *MEMORY[0x277CC9980], v32);
  v38(v37 + v34, *MEMORY[0x277CC99A0], v32);
  v38(v37 + 2 * v34, *MEMORY[0x277CC99A8], v32);
  sub_269591E84(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v39 = v64;
  sub_2695B0CE8();

  sub_2695B0A38();
  if (v40 & 1) != 0 || (sub_2695B0A58(), (v41) || (v42 = v39, v43 = sub_2695B0A68(), (v44))
  {

    v66 = 0;
    v67 = 0xE000000000000000;
    sub_2695B1208();
    MEMORY[0x26D6414B0](0xD000000000000031, 0x80000002695B3A40);
    sub_269592AB8(&qword_28031D240, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v45 = v68;
    v46 = sub_2695B1318();
    MEMORY[0x26D6414B0](v46);

    v42 = v66;
    v47 = v67;
    sub_2695921A4();
    swift_allocError();
    *v48 = v42;
    v48[1] = v47;
    swift_willThrow();
  }

  else
  {
    MEMORY[0x28223BE20](v43);
    *(&v52 - 6) = 0x40F5180000000000;
    *(&v52 - 5) = v10;
    *(&v52 - 4) = v39;
    *(&v52 - 3) = a1;
    *(&v52 - 2) = 7;
    v50 = v55;
    v51 = sub_269591CA0(sub_2695929D4, (&v52 - 8), v59);
    v45 = v68;
    if (!v50)
    {
      v42 = v51;

      (*(v65 + 8))(v39, v45);
      (*(v62 + 8))(v10, v63);
      v58(a1, v61);
      return v42;
    }
  }

  (*(v65 + 8))(v39, v45);
  (*(v62 + 8))(v10, v63);
  v58(a1, v61);
  return v42;
}

uint64_t sub_2695929F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUsageMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269592A5C(uint64_t a1)
{
  v2 = type metadata accessor for SiriUsageMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269592AB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269592B00(uint64_t a1, int a2)
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

uint64_t sub_269592B48(uint64_t result, int a2, int a3)
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

uint64_t sub_269592B94()
{
  sub_2695B1208();
  MEMORY[0x26D6414B0](0xD000000000000023, 0x80000002695B3AC0);
  v1 = *v0;
  v2 = 0xEB0000000072656DLL;
  v3 = 0x6F7473754377656ELL;
  v4 = 0x80000002695B36F0;
  v5 = 0xD00000000000001ALL;
  if (v1 != 6)
  {
    v5 = 7104878;
    v4 = 0xE300000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x73646F50726961;
  if (v1 != 4)
  {
    v7 = 0x6D6F44736D6D6F63;
    v6 = 0xED0000746E616E69;
  }

  if (*v0 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 7496035;
  if (v1 != 2)
  {
    v9 = 0xD000000000000011;
    v8 = 0x80000002695B36C0;
  }

  if (*v0)
  {
    v3 = 0x6F69746174636964;
    v2 = 0xE90000000000006ELL;
  }

  if (*v0 > 1u)
  {
    v3 = v9;
    v2 = v8;
  }

  if (*v0 <= 3u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 3u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x26D6414B0](v10, v11);

  MEMORY[0x26D6414B0](0xD000000000000014, 0x80000002695B3AF0);
  type metadata accessor for NewCustomerSegment.Result(0);
  v12 = sub_26958BB30();
  MEMORY[0x26D6414B0](v12);

  MEMORY[0x26D6414B0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_269592D74(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 200) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for NewCustomerSegment.Result(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  *(v4 + 80) = EnablementStatus;
  *(v4 + 88) = *(EnablementStatus - 8);
  *(v4 + 96) = swift_task_alloc();
  v6 = sub_2695B0C18();
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D278, &qword_2695B3490);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v7 = sub_2695B0C78();
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269592F98, 0, 0);
}

uint64_t sub_269592F98()
{
  v53 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = sub_2695B0EF8();
  *(v0 + 176) = __swift_project_value_buffer(v7, qword_2814B2250);
  (*(v2 + 16))(v1, v6, v3);
  sub_269595A7C(v5, v4, &qword_28031D278, &qword_2695B3490);
  v8 = sub_2695B0ED8();
  v9 = sub_2695B1128();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  if (v10)
  {
    v50 = v9;
    v51 = v8;
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v44 = *(v0 + 104);
    v17 = *(v0 + 88);
    v47 = *(v0 + 136);
    v48 = *(v0 + 80);
    v46 = *(v0 + 200);
    v45 = *(v0 + 144);
    v18 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v18 = 136315650;
    sub_2695AC8F0(v16);
    v19 = sub_2695B0BB8();
    v21 = v20;
    (*(v15 + 8))(v16, v44);
    (*(v12 + 8))(v11, v14);
    v22 = sub_26959CE44(v19, v21, &v52);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v46;
    *(v18 + 18) = 2080;
    sub_269595A7C(v45, v47, &qword_28031D278, &qword_2695B3490);
    v23 = (*(v17 + 48))(v47, 1, v48);
    v24 = *(v0 + 136);
    if (v23 == 1)
    {
      sub_269595B54(*(v0 + 136), &qword_28031D278, &qword_2695B3490);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v26 = sub_26958BB30();
      v25 = v27;
      sub_269594868(v24, type metadata accessor for SiriFirstEnablementStatus);
    }

    sub_269595B54(*(v0 + 144), &qword_28031D278, &qword_2695B3490);
    v28 = sub_26959CE44(v26, v25, &v52);

    *(v18 + 20) = v28;
    _os_log_impl(&dword_269588000, v51, v50, "Starting NewCustomerSegment.calculate(now: %s, currentAssistantEnabled: %{BOOL}d, lastKnown: %s", v18, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v49, -1, -1);
    MEMORY[0x26D641DE0](v18, -1, -1);
  }

  else
  {

    sub_269595B54(v13, &qword_28031D278, &qword_2695B3490);
    (*(v12 + 8))(v11, v14);
  }

  v29 = *(v0 + 128);
  v30 = *(v0 + 80);
  v31 = *(v0 + 88);
  sub_269595A7C(*(v0 + 32), v29, &qword_28031D278, &qword_2695B3490);
  v32 = *(v31 + 48);
  v33 = v32(v29, 1, v30);
  v34 = *(v0 + 128);
  v35 = *(v0 + 96);
  if (v33 == 1)
  {
    v36 = *(v0 + 80);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
    (*(*(v37 - 8) + 56))(v35, 1, 3, v37);
    if (v32(v34, 1, v36) != 1)
    {
      sub_269595B54(*(v0 + 128), &qword_28031D278, &qword_2695B3490);
    }
  }

  else
  {
    sub_2695948C8(*(v0 + 128), *(v0 + 96), type metadata accessor for SiriFirstEnablementStatus);
  }

  v38 = swift_task_alloc();
  *(v0 + 184) = v38;
  *v38 = v0;
  v38[1] = sub_269593464;
  v39 = *(v0 + 96);
  v40 = *(v0 + 72);
  v41 = *(v0 + 200);
  v42 = *(v0 + 24);

  return sub_269593B5C(v40, v42, v41, v39);
}

uint64_t sub_269593464()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_269593800;
  }

  else
  {
    v2 = sub_269593578;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_269593578()
{
  v15 = v0;
  sub_269594800(v0[9], v0[8], type metadata accessor for NewCustomerSegment.Result);
  v1 = sub_2695B0ED8();
  v2 = sub_2695B1128();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  v5 = v0[8];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_26959CE44(0xD000000000000031, 0x80000002695B3A80, &v14);
    *(v6 + 12) = 2080;
    v8 = sub_269592B94();
    v10 = v9;
    sub_269594868(v5, type metadata accessor for NewCustomerSegment.Result);
    v11 = sub_26959CE44(v8, v10, &v14);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_269588000, v1, v2, "Ended NewCustomerSegment.%s -> %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v7, -1, -1);
    MEMORY[0x26D641DE0](v6, -1, -1);
  }

  else
  {

    sub_269594868(v5, type metadata accessor for NewCustomerSegment.Result);
  }

  sub_269594868(v4, type metadata accessor for SiriFirstEnablementStatus);
  sub_2695948C8(v0[9], v0[2], type metadata accessor for NewCustomerSegment.Result);

  v12 = v0[1];

  return v12();
}

uint64_t sub_269593800()
{
  v23 = v0;
  v1 = v0[24];
  v3 = v0[6];
  v2 = v0[7];
  sub_269594800(v0[12], &v2[*(v0[5] + 20)], type metadata accessor for SiriFirstEnablementStatus);
  *v2 = 7;
  sub_269594800(v2, v3, type metadata accessor for NewCustomerSegment.Result);
  MEMORY[0x26D641C60](v1);
  v4 = sub_2695B0ED8();
  v5 = sub_2695B1128();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  v8 = v0[12];
  v9 = v0[6];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_26959CE44(0xD000000000000031, 0x80000002695B3A80, &v22);
    *(v10 + 12) = 2112;
    MEMORY[0x26D641C60](v7);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    *(v10 + 22) = 2080;
    v14 = sub_269592B94();
    v21 = v8;
    v16 = v15;
    sub_269594868(v9, type metadata accessor for NewCustomerSegment.Result);
    v17 = sub_26959CE44(v14, v16, &v22);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_269588000, v4, v5, "Ended NewCustomerSegment.%s with error: %@ -> %s", v10, 0x20u);
    sub_269595B54(v11, &qword_28031D280, &unk_2695B28C0);
    MEMORY[0x26D641DE0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v12, -1, -1);
    MEMORY[0x26D641DE0](v10, -1, -1);

    v18 = v21;
  }

  else
  {

    sub_269594868(v9, type metadata accessor for NewCustomerSegment.Result);
    v18 = v8;
  }

  sub_269594868(v18, type metadata accessor for SiriFirstEnablementStatus);
  sub_2695948C8(v0[7], v0[2], type metadata accessor for NewCustomerSegment.Result);

  v19 = v0[1];

  return v19();
}

uint64_t sub_269593B5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 112) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  *(v4 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0);
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_2695B0C78();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D290, &qword_2695B28D8);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269593CCC, 0, 0);
}

uint64_t sub_269593CCC()
{
  v1 = *(v0 + 80);
  sub_269594800(*(v0 + 32), v1, type metadata accessor for SiriFirstEnablementStatus);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
  *(v0 + 88) = v2;
  v3 = *(v2 - 8);
  *(v0 + 96) = v3;
  v4 = (*(v3 + 48))(v1, 3, v2);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (qword_2814B1FD8 != -1)
      {
        swift_once();
      }

      v25 = sub_2695B0EF8();
      __swift_project_value_buffer(v25, qword_2814B2250);
      v26 = sub_2695B0ED8();
      v27 = sub_2695B1128();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_269588000, v26, v27, "NewCustomerSegment - previously determined not a new customer", v28, 2u);
        MEMORY[0x26D641DE0](v28, -1, -1);
      }

      v29 = *(v0 + 16);

      goto LABEL_20;
    }

    if (*(v0 + 112))
    {
      if (qword_2814B1FD8 != -1)
      {
        swift_once();
      }

      v12 = sub_2695B0EF8();
      __swift_project_value_buffer(v12, qword_2814B2250);
      v13 = sub_2695B0ED8();
      v14 = sub_2695B1128();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_269588000, v13, v14, "NewCustomerSegment - transitioned from disabled to enabled, new customer", v15, 2u);
        MEMORY[0x26D641DE0](v15, -1, -1);
      }

      v16 = *(v0 + 56);
      v17 = *(v0 + 64);
      v19 = *(v0 + 16);
      v18 = *(v0 + 24);

      v20 = v19 + *(type metadata accessor for NewCustomerSegment.Result(0) + 20);
      (*(v17 + 16))(v20, v18, v16);
      v21 = v20;
      goto LABEL_38;
    }

    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v32 = sub_2695B0EF8();
    __swift_project_value_buffer(v32, qword_2814B2250);
    v33 = sub_2695B0ED8();
    v34 = sub_2695B1128();
    if (!os_log_type_enabled(v33, v34))
    {
LABEL_30:
      v38 = *(v0 + 16);

      v21 = v38 + *(type metadata accessor for NewCustomerSegment.Result(0) + 20);
      v30 = 7;
      v31 = 2;
      goto LABEL_39;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "NewCustomerSegment - always was and still is disabled, not a Siri user.";
LABEL_29:
    _os_log_impl(&dword_269588000, v33, v34, v36, v35, 2u);
    MEMORY[0x26D641DE0](v35, -1, -1);
    goto LABEL_30;
  }

  if (!v4)
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = *(*(v0 + 64) + 32);
    v8(*(v0 + 72), *(v0 + 80), *(v0 + 56));
    v9 = sub_2695B0C98();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = sub_2695B0D68();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = sub_2695AB4A4(v7, v5, v6);
    sub_269595B54(v6, &unk_28031D360, &unk_2695B2B50);
    sub_269595B54(v5, &qword_28031D288, &qword_2695B28D0);
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v39 = sub_2695B0EF8();
    __swift_project_value_buffer(v39, qword_2814B2250);
    v40 = sub_2695B0ED8();
    v41 = sub_2695B1128();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v11;
      _os_log_impl(&dword_269588000, v40, v41, "NewCustomerSegment - was recently enabled at previous check, %ld days ago", v42, 0xCu);
      MEMORY[0x26D641DE0](v42, -1, -1);
    }

    v43 = *(v0 + 72);
    if (v11 > 28)
    {
      v29 = *(v0 + 16);
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_20:
      v21 = v29 + *(type metadata accessor for NewCustomerSegment.Result(0) + 20);
      v30 = 7;
      v31 = 3;
LABEL_39:
      v47 = *(v0 + 16);
      (*(*(v0 + 96) + 56))(v21, v31, 3, *(v0 + 88));
      *v47 = v30;

      v48 = *(v0 + 8);

      return v48();
    }

    v44 = *(v0 + 56);
    v45 = *(v0 + 16);
    v46 = v45 + *(type metadata accessor for NewCustomerSegment.Result(0) + 20);
    v8(v46, v43, v44);
    v21 = v46;
LABEL_38:
    v31 = 0;
    v30 = 0;
    goto LABEL_39;
  }

  if ((*(v0 + 112) & 1) == 0)
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v37 = sub_2695B0EF8();
    __swift_project_value_buffer(v37, qword_2814B2250);
    v33 = sub_2695B0ED8();
    v34 = sub_2695B1128();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_30;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "NewCustomerSegment 0 never checked before, assume current disabled state is the long term status quo.";
    goto LABEL_29;
  }

  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  *v22 = v0;
  v22[1] = sub_26959442C;
  v23 = *(v0 + 24);

  return sub_269595660(v23);
}

uint64_t sub_26959442C(char a1)
{
  *(*v1 + 113) = a1;

  return MEMORY[0x2822009F8](sub_26959452C, 0, 0);
}

uint64_t sub_26959452C()
{
  if (*(v0 + 113) == 1)
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v1 = sub_2695B0EF8();
    __swift_project_value_buffer(v1, qword_2814B2250);
    v2 = sub_2695B0ED8();
    v3 = sub_2695B1128();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_269588000, v2, v3, "NewCustomerSegment - never checked before, has evidence of recent onboarding.", v4, 2u);
      MEMORY[0x26D641DE0](v4, -1, -1);
    }

    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);

    v9 = v8 + *(type metadata accessor for NewCustomerSegment.Result(0) + 20);
    (*(v6 + 16))(v9, v7, v5);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v12 = sub_2695B0EF8();
    __swift_project_value_buffer(v12, qword_2814B2250);
    v13 = sub_2695B0ED8();
    v14 = sub_2695B1128();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_269588000, v13, v14, "NewCustomerSegment - never checked before, assume current enabled state is the long term status quo.", v15, 2u);
      MEMORY[0x26D641DE0](v15, -1, -1);
    }

    v16 = *(v0 + 16);

    v9 = v16 + *(type metadata accessor for NewCustomerSegment.Result(0) + 20);
    v11 = 7;
    v10 = 3;
  }

  v17 = *(v0 + 16);
  (*(*(v0 + 96) + 56))(v9, v10, 3, *(v0 + 88));
  *v17 = v11;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t type metadata accessor for NewCustomerSegment.Result(uint64_t a1)
{
  result = qword_28031D2B8;
  if (!qword_28031D2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269594800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269594868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2695948C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269594930(_BYTE *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 7)
  {
    if (v5 != 7)
    {
      return 0;
    }
  }

  else if (v5 == 7 || (sub_2695A438C(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for NewCustomerSegment.Result(0) + 20);

  return sub_26958D5F4(&a1[v6], &a2[v6]);
}

uint64_t sub_2695949B4(uint64_t a1)
{
  v1[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D298, &qword_2695B28F0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A0, &qword_2695B28F8);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A8, &unk_2695B2900);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_2695B0D38();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_2695B0C78();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269594C24, 0, 0);
}

uint64_t sub_269594C24()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  sub_2695B0E98();
  sub_2695959D8();
  v5 = sub_2695B0E78();
  v0[21] = v5;
  (*(v3 + 104))(v2, *MEMORY[0x277CC9968], v4);
  sub_2695ABE9C(-28, v1);
  (*(v3 + 8))(v2, v4);
  sub_269595A24();
  result = sub_2695B0F98();
  if (result)
  {
    v19 = v0[20];
    v21 = v0[19];
    v7 = v0[17];
    v8 = v0[16];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v12 = v0[3];
    v13 = *(v7 + 32);
    v13(v9, v0[18], v8);
    (*(v7 + 16))(v9 + *(v11 + 48), v12, v8);
    sub_269595A7C(v9, v10, &qword_28031D2A8, &unk_2695B2900);
    v18 = *(v11 + 48);
    v13(v19, v10, v8);
    v20 = v5;
    v14 = *(v7 + 8);
    v14(v10 + v18, v8);
    sub_269595AE4(v9, v10);
    v13(v19 + *(v21 + 36), v10 + *(v11 + 48), v8);
    v14(v10, v8);
    v15 = swift_task_alloc();
    v0[22] = v15;
    *v15 = v0;
    v15[1] = sub_269594F38;
    v16 = v0[20];
    v17 = v0[9];

    return sub_26958E770(v17, v20, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269594F38()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_26959557C;
  }

  else
  {
    v2 = sub_26959504C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26959504C()
{
  sub_2695B10C8();
  v0[24] = 0;
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_269595104;
  v2 = v0[4];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
}

uint64_t sub_269595104()
{

  return MEMORY[0x2822009F8](sub_269595200, 0, 0);
}

uint64_t sub_269595200(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = v4;
  v5 = v4[2];
  v6 = v4[24];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (__OFADD__(v6++, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  a1 = sub_2695B0D98();
  if (!a1)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

  v8 = a1;
  v9 = [a1 getAnyEventType];

  if (v9 != 47)
  {
    v4[24] = v6;
    v24 = swift_task_alloc();
    v4[25] = v24;
    *v24 = v4;
    v24[1] = sub_269595104;
    a4 = v4[4];
    a1 = v4 + 2;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822003E8](a1, a2, a3, a4);
  }

LABEL_5:
  (*(v4[5] + 8))(v4[6], v4[4], a3, a4);
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v10 = sub_2695B0EF8();
  __swift_project_value_buffer(v10, qword_2814B2250);
  v11 = sub_2695B0ED8();
  v12 = sub_2695B1128();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v4[20];
  v14 = v4[21];
  v16 = v4[8];
  v17 = v4[9];
  v18 = v4[7];
  if (v13)
  {
    v27 = v4[20];
    v26 = v4[9];
    v19 = swift_slowAlloc();
    v25 = v18;
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_26959CE44(0xD000000000000026, 0x80000002695B3B10, &v28);
    *(v19 + 12) = 1024;
    *(v19 + 14) = v5 != 0;
    *(v19 + 18) = 2048;
    *(v19 + 20) = v6;
    _os_log_impl(&dword_269588000, v11, v12, "NewCustomerSegment.%s result: %{BOOL}d from %ld events", v19, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x26D641DE0](v20, -1, -1);
    MEMORY[0x26D641DE0](v19, -1, -1);

    (*(v16 + 8))(v26, v25);
    v21 = v27;
  }

  else
  {

    (*(v16 + 8))(v17, v18);
    v21 = v15;
  }

  sub_269595B54(v21, &qword_28031D1B8, &qword_2695B2538);

  v22 = v4[1];

  return v22(v5 != 0);
}

uint64_t sub_26959557C()
{
  v1 = *(v0 + 160);

  sub_269595B54(v1, &qword_28031D1B8, &qword_2695B2538);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_269595660(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2695956F4;

  return sub_2695949B4(a1);
}

uint64_t sub_2695956F4(char a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_269595830, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1 & 1);
  }
}

uint64_t sub_269595830()
{
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_2695B0EF8();
  __swift_project_value_buffer(v2, qword_2814B2250);
  MEMORY[0x26D641C60](v1);
  v3 = sub_2695B0ED8();
  v4 = sub_2695B1138();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x26D641C60](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_269588000, v3, v4, "Failed to check SELF events for Siri grading opt-in: %@", v7, 0xCu);
    sub_269595B54(v8, &qword_28031D280, &unk_2695B28C0);
    MEMORY[0x26D641DE0](v8, -1, -1);
    MEMORY[0x26D641DE0](v7, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0);
}

unint64_t sub_2695959D8()
{
  result = qword_28031D2B0;
  if (!qword_28031D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28031D2B0);
  }

  return result;
}

unint64_t sub_269595A24()
{
  result = qword_28031D390;
  if (!qword_28031D390)
  {
    sub_2695B0C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D390);
  }

  return result;
}

uint64_t sub_269595A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269595AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A8, &unk_2695B2900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269595B54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_269595BDC(uint64_t a1)
{
  sub_269595C60();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SiriFirstEnablementStatus(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269595C60()
{
  if (!qword_28031D2C8)
  {
    v0 = sub_2695B1198();
    if (!v1)
    {
      atomic_store(v0, &qword_28031D2C8);
    }
  }
}

uint64_t sub_269595CB0()
{
  v0 = sub_2695B0EF8();
  __swift_allocate_value_buffer(v0, qword_2814B2250);
  __swift_project_value_buffer(v0, qword_2814B2250);
  return sub_2695B0EE8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_269595D94@<X0>(char *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a4;
  v53 = a1;
  v54 = a2;
  v5 = sub_2695B0F08();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v47 - v8;
  v9 = sub_2695B0F48();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D300, &qword_2695B2B68);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v47 - v17;
  v19 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D308, &qword_2695B2B70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2695B29B0;
  v21 = sub_2695B10B8();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v54;
  v22[5] = a3;
  v22[6] = sub_26959EC50;
  v22[7] = v20;
  v22[8] = v19;
  swift_retain_n();

  v23 = v19;
  sub_2695965B0(0, 0, v18, &unk_2695B2B80, v22);

  sub_2695B0F28();
  v24 = v53;
  sub_2695B0F38();
  v25 = *(v10 + 8);
  v25(v13, v9);
  v54 = v23;
  sub_2695B1168();
  v25(v15, v9);
  if (sub_2695B0F18())
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v26 = sub_2695B0EF8();
    __swift_project_value_buffer(v26, qword_2814B2250);
    v28 = v50;
    v27 = v51;
    v29 = *(v51 + 16);
    v30 = v52;
    v29(v50, v24, v52);
    v31 = sub_2695B0ED8();
    v32 = sub_2695B1148();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v55 = v53;
      *v33 = 136315138;
      LODWORD(v48) = v32;
      v29(v49, v28, v30);
      v34 = sub_2695B0FC8();
      v36 = v35;
      (*(v27 + 8))(v28, v30);
      v37 = sub_26959CE44(v34, v36, &v55);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_269588000, v31, v48, "a thread was blocked by a semaphore awaiting a Task and timed out after %s seconds", v33, 0xCu);
      v38 = v53;
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x26D641DE0](v38, -1, -1);
      MEMORY[0x26D641DE0](v33, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v28, v30);
    }

    v40 = "t result from async Task";
    v41 = 0xD00000000000002FLL;
    goto LABEL_10;
  }

  v39 = *(v20 + 24);
  if (v39 == 2)
  {
    v40 = "ot be calculated from ";
    v41 = 0xD000000000000028;
LABEL_10:
    v42 = v40 | 0x8000000000000000;
    sub_26959ED78();
    swift_allocError();
    *v43 = v41;
    v43[1] = v42;
    swift_willThrow();
  }

  v45 = *(v20 + 16);
  sub_26959CE1C(v45, *(v20 + 24));

  v46 = v47;
  *v47 = v45;
  v46[1] = v39;
  return result;
}

uint64_t sub_269596324(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_269596424;

  return v12(a1);
}

uint64_t sub_269596424()
{

  return MEMORY[0x2822009F8](sub_269596520, 0, 0);
}

uint64_t sub_269596520()
{
  v8 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_26959CE1C(v6, v3);
  v2(&v6);
  sub_26959F0F8(v6, v7);
  sub_2695B1178();
  v4 = v0[1];

  return v4();
}

uint64_t sub_2695965B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D300, &qword_2695B2B68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26959EDCC(a3, v25 - v10, &qword_28031D300, &qword_2695B2B68);
  v12 = sub_2695B10B8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26959EE34(v11, &qword_28031D300, &qword_2695B2B68);
  }

  else
  {
    sub_2695B10A8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2695B1088();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2695B0FD8() + 32;
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

      sub_26959EE34(a3, &qword_28031D300, &qword_2695B2B68);

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

  sub_26959EE34(a3, &qword_28031D300, &qword_2695B2B68);
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

uint64_t sub_2695968A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v26 = a1;
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = sub_2695B0C78();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_26959EDCC(a2, v9, &unk_28031D370, &unk_2695B2800);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_26959EE34(v9, &unk_28031D370, &unk_2695B2800);
    return sub_26959EDCC(v26, v27, &unk_28031D370, &unk_2695B2800);
  }

  else
  {
    v19 = *(v11 + 32);
    v19(v16, v9, v10);
    sub_26959EDCC(v26, v7, &unk_28031D370, &unk_2695B2800);
    if (v17(v7, 1, v10) == 1)
    {
      sub_26959EE34(v7, &unk_28031D370, &unk_2695B2800);
      v20 = v27;
      v19(v27, v16, v10);
      return (*(v11 + 56))(v20, 0, 1, v10);
    }

    else
    {
      v19(v14, v7, v10);
      sub_26959EB0C(&qword_28031D390, MEMORY[0x277CC9590]);
      v21 = sub_2695B0F88();
      v22 = (v21 & 1) == 0;
      if (v21)
      {
        v23 = v14;
      }

      else
      {
        v23 = v16;
      }

      if (v22)
      {
        v24 = v14;
      }

      else
      {
        v24 = v16;
      }

      (*(v11 + 8))(v23, v10);
      v25 = v27;
      v19(v27, v24, v10);
      return (*(v11 + 56))(v25, 0, 1, v10);
    }
  }
}

void static SegmentationTask.perform()(uint64_t *a1@<X8>)
{
  v4 = sub_2695B0F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 60;
  (*(v5 + 104))(v7, *MEMORY[0x277D85188], v4);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_269595D94(v7, &stru_2695B29E8, v8, &v21);
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);

    v10 = v21;
    v9 = v22;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v11 = sub_2695B0EF8();
    __swift_project_value_buffer(v11, qword_2814B2250);
    sub_26959CE1C(v10, v9);
    v12 = sub_2695B0ED8();
    v13 = sub_2695B1128();
    sub_26959CE30(v10, v9);
    if (os_log_type_enabled(v12, v13))
    {
      v20 = a1;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      if (v9)
      {
        if (v9 == 1)
        {
          v16 = 0xE700000000000000;
          v17 = 0x64657070696B73;
        }

        else
        {
          v21 = 0x3A6572756C696166;
          v22 = 0xE900000000000020;
          sub_26959CE1C(v10, v9);
          MEMORY[0x26D6414B0](v10, v9);
          sub_26959CE30(v10, v9);
          v17 = v21;
          v16 = v22;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        v17 = 0x73736563637573;
      }

      v18 = sub_26959CE44(v17, v16, &v23);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_269588000, v12, v13, "SegmentationTask.perform() result: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x26D641DE0](v15, -1, -1);
      MEMORY[0x26D641DE0](v14, -1, -1);

      a1 = v20;
    }

    else
    {
    }

    *a1 = v10;
    a1[1] = v9;
  }
}

uint64_t sub_269596EFC(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_269596F9C;

  return static SegmentationTask.performAsync()(a1);
}

uint64_t sub_269596F9C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2695970D0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2695970D0()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_2695B1208();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x26D6414B0](0x687420726F727245, 0xEE00203A6E776F72);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031CF98, qword_2695B2630);
  sub_2695B1268();

  v3 = v0[3];
  *v2 = v0[2];
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t static SegmentationTask.performAsync()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_2695B0B48();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_2695B0C78();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269597300, 0, 0);
}

uint64_t sub_269597300()
{
  if (_s16SiriUserSegments16SegmentationTaskC9isEnabledSbyFZ_0())
  {
    v1 = v0[19];
    v2 = v0[20];
    sub_2695B0C58();
    sub_26959C2FC(v1, v2);
    v4 = v0[18];
    v3 = v0[19];
    v5 = v0[17];
    v7 = v0[16];
    v8 = *(v4 + 8);
    v0[21] = v8;
    v0[22] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v3, v5);
    type metadata accessor for SegmentStore();
    sub_26958A570(v7);
    v10 = objc_opt_self();
    v11 = [v10 sharedPreferences];
    v12 = [v11 assistantIsEnabled];

    v13 = [v10 sharedPreferences];
    v14 = [v13 dictationIsEnabled];

    v0[5] = &type metadata for AIMLInstrumentationStreamSource;
    v0[6] = &off_287A1A368;
    v0[10] = &type metadata for ITunesCloudMusicSubscriptionStatusController;
    v0[11] = &off_287A19D98;
    v15 = swift_task_alloc();
    v0[23] = v15;
    if (v14)
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    *v15 = v0;
    v15[1] = sub_26959757C;
    v17 = v0[20];
    v18 = v0[16];

    return sub_26959781C(v17, v18, 7, v16 | v12, (v0 + 2), (v0 + 7));
  }

  else
  {
    *v0[12] = xmmword_2695B29C0;

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_26959757C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = v2[21];
  if (v0)
  {
    v4 = v2[20];
    v5 = v2[17];
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3(v4, v5);
    v6 = sub_269597788;
  }

  else
  {
    v7 = v2[20];
    v8 = v2[17];
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3(v7, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 7);
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v6 = sub_269597708;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_269597708()
{
  v1 = *(v0 + 96);
  *v1 = 0;
  v1[1] = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_269597788()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26959781C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = v6;
  *(v7 + 54) = a4;
  *(v7 + 144) = a3;
  *(v7 + 152) = a5;
  *(v7 + 128) = a1;
  *(v7 + 136) = a2;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  *(v7 + 176) = EnablementStatus;
  *(v7 + 184) = *(EnablementStatus - 8);
  *(v7 + 192) = swift_task_alloc();
  v9 = type metadata accessor for SegmentsSummary(0);
  *(v7 + 200) = v9;
  *(v7 + 208) = *(v9 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D278, &qword_2695B3490);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = type metadata accessor for NewCustomerSegment.Result(0);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = type metadata accessor for SegmentFlagLastSeenResult(0);
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A8, &unk_2695B2900);
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  *(v7 + 336) = swift_task_alloc();
  v10 = type metadata accessor for SiriUsageMetrics(0);
  *(v7 + 344) = v10;
  *(v7 + 352) = *(v10 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2D0, &unk_2695B2B20);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();
  *(v7 + 520) = swift_task_alloc();
  *(v7 + 528) = swift_task_alloc();
  *(v7 + 536) = swift_task_alloc();
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 560) = swift_task_alloc();
  *(v7 + 568) = swift_task_alloc();
  *(v7 + 576) = swift_task_alloc();
  *(v7 + 584) = swift_task_alloc();
  *(v7 + 592) = swift_task_alloc();
  *(v7 + 600) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2D8, &qword_2695B2B30);
  *(v7 + 608) = swift_task_alloc();
  *(v7 + 616) = swift_task_alloc();
  v11 = sub_2695B0C78();
  *(v7 + 624) = v11;
  *(v7 + 632) = *(v11 - 8);
  *(v7 + 640) = swift_task_alloc();
  *(v7 + 648) = swift_task_alloc();
  *(v7 + 656) = swift_task_alloc();
  *(v7 + 664) = swift_task_alloc();
  *(v7 + 672) = swift_task_alloc();
  *(v7 + 680) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269597D8C, 0, 0);
}

uint64_t sub_269597D8C()
{
  v46 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[85];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[16];
  v5 = sub_2695B0EF8();
  v0[86] = __swift_project_value_buffer(v5, qword_2814B2250);
  v6 = *(v2 + 16);
  v0[87] = v6;
  v0[88] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_2695B0ED8();
  v8 = sub_2695B1128();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[85];
  v11 = v0[79];
  v12 = &unk_2695B2000;
  v13 = v0[78];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45[0] = v44;
    *v14 = 136315138;
    sub_26959EB0C(&qword_28031D250, MEMORY[0x277CC95B8]);
    v15 = sub_2695B1318();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v13);
    v19 = v15;
    v12 = &unk_2695B2000;
    v20 = sub_26959CE44(v19, v17, v45);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_269588000, v7, v8, "SegmentationTask.perform() calculationDate: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x26D641DE0](v44, -1, -1);
    MEMORY[0x26D641DE0](v14, -1, -1);
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v13);
  }

  v0[89] = v18;
  v21 = v0[76];
  v22 = v0[17];
  v23 = *(v0[26] + 56);
  v23(v0[77], 1, 1, v0[25]);
  type metadata accessor for SegmentStore();
  sub_26958A8F0(v22, v21);
  v24 = v0[77];
  v25 = v0[76];
  v23(v25, 0, 1, v0[25]);
  sub_26959EAA4(v25, v24, &qword_28031D2D8, &qword_2695B2B30);
  v26 = v0[77];
  v28 = v0[25];
  v27 = v0[26];
  v29 = *(v27 + 48);
  v0[90] = v29;
  v0[91] = (v27 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v29(v26, 1, v28))
  {
    (*(v0[79] + 56))(v0[75], 1, 1, v0[78]);
  }

  else
  {
    sub_26959EDCC(v26 + *(v28 + 28), v0[75], &unk_28031D370, &unk_2695B2800);
  }

  v30 = sub_2695B0ED8();
  v31 = sub_2695B1128();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v0[75];
    v33 = v0[74];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45[0] = v35;
    *v34 = v12[243];
    swift_beginAccess();
    sub_26959EDCC(v32, v33, &unk_28031D370, &unk_2695B2800);
    v36 = sub_2695B0FC8();
    v38 = sub_26959CE44(v36, v37, v45);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_269588000, v30, v31, "SegmentationTask: initial assistantLastActive: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x26D641DE0](v35, -1, -1);
    MEMORY[0x26D641DE0](v34, -1, -1);
  }

  v39 = swift_task_alloc();
  v0[92] = v39;
  *v39 = v0;
  v39[1] = sub_269598334;
  v40 = v0[18];
  v41 = v0[19];
  v42 = v0[16];

  return sub_2695A7E94(v42, v40, v41);
}

uint64_t sub_269598334(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 744) = a1;
  *(v3 + 752) = v1;

  if (v1)
  {
    v4 = sub_269599624;
  }

  else
  {
    v4 = sub_26959844C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26959844C()
{
  v134 = v0;
  v1 = v0[93];
  v2 = v0[87];
  v3 = v0[84];
  v4 = v0[78];
  v5 = v0[75];
  v6 = v0[72];
  v7 = *(v0 + 27);
  v8 = v0[16];
  type metadata accessor for ActivitySegmentCalculator();
  inited = swift_initStackObject();
  v0[95] = inited;
  *(inited + 16) = v7 & 1;
  *(inited + 17) = HIBYTE(v7) & 1;
  v10 = 1;
  swift_beginAccess();
  sub_26959EDCC(v5, v6, &unk_28031D370, &unk_2695B2800);
  v2(v3, v8, v4);
  v11 = *(v1 + 16);

  v132 = v0;
  if (v11)
  {
    v13 = v0[43];
    v12 = v0[44];
    v14 = v0[93] + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v12 + 72);
    v16 = -1;
    do
    {
      v17 = v0[47];
      sub_26959E9DC(v14, v17, type metadata accessor for SiriUsageMetrics);
      v18 = v0[47];
      if (*(v17 + *(v13 + 20)) == 1)
      {
        if (*(v18 + *(v13 + 24)))
        {
          v19 = v132[89];
          v20 = v132[82];
          v21 = v132[78];
          sub_2695B09D8();
          sub_26959EB0C(&qword_28031D390, MEMORY[0x277CC9590]);
          v22 = sub_2695B0F78();
          v19(v20, v21);
          v0 = v132;
          v18 = v132[47];
          if ((v22 & 1) == 0)
          {
            sub_26959E974(v18, v132[51], type metadata accessor for SiriUsageMetrics);
            v10 = 0;
            v23 = -v16;
            goto LABEL_10;
          }
        }
      }

      sub_26959EA44(v18, type metadata accessor for SiriUsageMetrics);
      v14 += v15;
      --v16;
    }

    while (v11 + v16 != -1);
    v10 = 1;
    v23 = v11;
  }

  else
  {
    v23 = 0;
  }

LABEL_10:
  v24 = v132[51];
  v25 = v132[50];
  v26 = v132[44];
  v27 = v132[43];
  v28 = 1;
  v120 = *(v26 + 56);
  v120(v24, v10, 1, v27);
  sub_26959E90C(v24, v25, &qword_28031D2D0, &unk_2695B2B20);
  v122 = *(v26 + 48);
  if (v122(v25, 1, v27) != 1)
  {
    v29 = v132[46];
    sub_26959E974(v132[50], v29, type metadata accessor for SiriUsageMetrics);
    sub_2695B09D8();
    sub_26959EA44(v29, type metadata accessor for SiriUsageMetrics);
    v28 = 0;
  }

  v30 = v132[79];
  v31 = v132[78];
  v32 = v132[70];
  v33 = *(v30 + 56);
  v132[96] = v33;
  v125 = v33;
  v33(v32, v28, 1, v31);
  v34 = *(v30 + 48);
  v132[97] = v34;
  v132[98] = (v30 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v121 = v34;
  if (v34(v32, 1, v31) != 1)
  {
    v37 = v132[79];
    v39 = v132[43];
    v38 = v132[44];
    v42 = *(v37 + 32);
    v41 = v37 + 32;
    v40 = v42;
    v42(v132[83], v132[70], v132[78]);
    v128 = v38;
    v43 = (v41 + 24) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v36 = v132;
    v126 = v39;
    while (v23 == v11)
    {
LABEL_18:
      v120(v36[49], 1, 1, v36[43]);
      v23 = v11;
LABEL_19:
      v44 = v36[48];
      v45 = v36[43];
      sub_26959E90C(v36[49], v44, &qword_28031D2D0, &unk_2695B2B20);
      v46 = 1;
      if (v122(v44, 1, v45) != 1)
      {
        v47 = v36[46];
        sub_26959E974(v36[48], v47, type metadata accessor for SiriUsageMetrics);
        sub_2695B09D8();
        sub_26959EA44(v47, type metadata accessor for SiriUsageMetrics);
        v46 = 0;
      }

      v48 = v36[78];
      v49 = v36[69];
      v125(v49, v46, 1, v48);
      v50 = v121(v49, 1, v48);
      v51 = v36[83];
      if (v50 == 1)
      {
        v67 = v36[78];
        v68 = v36[71];
        sub_26959EE34(v36[69], &unk_28031D370, &unk_2695B2800);
        (v40)(v68, v51, v67);
        v35 = 0;
        goto LABEL_33;
      }

      (v40)(v36[81], v36[69], v36[78]);
      sub_26959EB0C(&qword_28031D390, MEMORY[0x277CC9590]);
      v52 = sub_2695B0F78();
      v53 = v36[89];
      if (v52)
      {
        v54 = v36[83];
        v55 = v36[81];
        v56 = v36[78];
        v53(v54, v56);
        (v40)(v54, v55, v56);
      }

      else
      {
        v53(v36[81], v36[78]);
      }

      v39 = v126;
      v38 = v128;
    }

    while (v23 < v11)
    {
      sub_26959E9DC(v36[93] + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v23, v36[45], type metadata accessor for SiriUsageMetrics);
      v57 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_66;
      }

      v58 = v36[45];
      if (*(v58 + *(v39 + 20)) == 1 && *(v58 + *(v39 + 24)))
      {
        v59 = v40;
        v60 = v41;
        v61 = v43;
        v130 = v132[89];
        v62 = v132[82];
        v63 = v132[78];
        sub_2695B09D8();
        sub_26959EB0C(&qword_28031D390, MEMORY[0x277CC9590]);
        v64 = sub_2695B0F78();
        v130(v62, v63);
        v36 = v132;
        v58 = v132[45];
        if ((v64 & 1) == 0)
        {
          v65 = v132[49];
          v66 = v132[43];
          sub_26959E974(v58, v65, type metadata accessor for SiriUsageMetrics);
          v120(v65, 0, 1, v66);
          v23 = v57;
          v43 = v61;
          v41 = v60;
          v40 = v59;
          goto LABEL_19;
        }

        v43 = v61;
        v41 = v60;
        v40 = v59;
        v39 = v126;
        v38 = v128;
      }

      sub_26959EA44(v58, type metadata accessor for SiriUsageMetrics);
      ++v23;
      if (v57 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    if (v11)
    {
      v102 = 0x64656C6261736964;
    }

    else
    {
      v102 = 0x6E776F6E6B6E75;
    }

    if (v11)
    {
      v103 = 0xE800000000000000;
    }

    else
    {
      v103 = 0xE700000000000000;
    }

    goto LABEL_74;
  }

  sub_26959EE34(v132[70], &unk_28031D370, &unk_2695B2800);
  v35 = 1;
  v36 = v132;
LABEL_33:
  v69 = v36[89];
  v70 = v36;
  v71 = v36[84];
  v72 = v70[79];
  v73 = v70[78];
  v74 = v70[75];
  v75 = v70[73];
  v76 = v70[72];
  v77 = v70[71];
  v125(v77, v35, 1, v73);
  sub_2695968A8(v76, v77, v75);

  v70[99] = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v69(v71, v73);
  sub_26959EE34(v77, &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v76, &unk_28031D370, &unk_2695B2800);
  sub_26959EAA4(v75, v74, &unk_28031D370, &unk_2695B2800);
  v78 = sub_2695B0ED8();
  v79 = sub_2695B1128();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = v70[75];
    v81 = v70[74];
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v133[0] = v83;
    *v82 = 136315138;
    sub_26959EDCC(v80, v81, &unk_28031D370, &unk_2695B2800);
    v84 = sub_2695B0FC8();
    v86 = sub_26959CE44(v84, v85, v133);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_269588000, v78, v79, "SegmentationTask: updated assistantLastActive: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v83);
    MEMORY[0x26D641DE0](v83, -1, -1);
    MEMORY[0x26D641DE0](v82, -1, -1);
  }

  v87 = v70[94];
  v88 = v70[93];
  v89 = v70[68];
  v90 = v70[16];
  sub_26959EDCC(v70[75], v89, &unk_28031D370, &unk_2695B2800);
  sub_26959017C(v90, v89, v88, v133);
  v70[100] = v87;
  v91 = v70[68];
  if (v87)
  {
    sub_26959EE34(v91, &unk_28031D370, &unk_2695B2800);

    v92 = v70[77];
    sub_26959EE34(v70[75], &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v92, &qword_28031D2D8, &qword_2695B2B30);

    v93 = v70[1];

    return v93();
  }

  sub_26959EE34(v91, &unk_28031D370, &unk_2695B2800);
  LODWORD(v11) = LOBYTE(v133[0]);
  *(v70 + 122) = v133[0];
  v38 = sub_2695B0ED8();
  v40 = sub_2695B1128();
  if (!os_log_type_enabled(v38, v40))
  {

    goto LABEL_75;
  }

  v23 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v133[0] = v36;
  *v23 = 136315138;
  if (v11 > 4)
  {
    v95 = 0x80000002695B37D0;
    v96 = 0xD00000000000001ALL;
    v97 = 0x80000002695B37F0;
    v98 = 0xD00000000000001BLL;
    if (v11 != 9)
    {
      v98 = 0xD000000000000014;
      v97 = 0x80000002695B3810;
    }

    if (v11 != 8)
    {
      v96 = v98;
      v95 = v97;
    }

    v99 = 0x80000002695B3770;
    v100 = 0x80000002695B3790;
    v101 = 0xD000000000000012;
    if (v11 != 6)
    {
      v101 = 0xD000000000000016;
      v100 = 0x80000002695B37B0;
    }

    if (v11 == 5)
    {
      v101 = 0xD000000000000013;
    }

    else
    {
      v99 = v100;
    }

    if (v11 <= 7)
    {
      v102 = v101;
    }

    else
    {
      v102 = v96;
    }

    if (v11 <= 7)
    {
      v103 = v99;
    }

    else
    {
      v103 = v95;
    }

    goto LABEL_74;
  }

  if (v11 <= 1)
  {
    goto LABEL_67;
  }

  if (v11 == 2)
  {
    v103 = 0xED0000796C6E4F6ELL;
    v102 = 0x6F69746174636964;
  }

  else
  {
    if (v11 == 3)
    {
      v102 = 0xD000000000000016;
    }

    else
    {
      v102 = 0xD000000000000018;
    }

    if (v11 == 3)
    {
      v103 = 0x80000002695B3730;
    }

    else
    {
      v103 = 0x80000002695B3750;
    }
  }

LABEL_74:
  v104 = sub_26959CE44(v102, v103, v133);

  *(v23 + 4) = v104;
  _os_log_impl(&dword_269588000, v38, v40, "SegmentationTask: activitySegment calculated: %s", v23, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  MEMORY[0x26D641DE0](v36, -1, -1);
  MEMORY[0x26D641DE0](v23, -1, -1);

  v70 = v132;
LABEL_75:
  sub_2695B0C28();
  sub_26959EB0C(&qword_28031D390, MEMORY[0x277CC9590]);
  result = sub_2695B0F98();
  if (result)
  {
    v131 = v70[90];
    v123 = v70[89];
    v105 = v70[87];
    v106 = v70[82];
    v107 = v70[79];
    v108 = v70[78];
    v109 = v70[42];
    v124 = v70[41];
    v110 = v70[39];
    v111 = v70[40];
    v112 = v70[38];
    v127 = v70[25];
    v129 = v70[77];
    v113 = v70[16];
    v114 = *(v107 + 32);
    v70[101] = v114;
    v70[102] = (v107 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v114(v111, v106, v108);
    v105(v111 + *(v112 + 48), v113, v108);
    sub_26959EDCC(v111, v110, &qword_28031D2A8, &unk_2695B2900);
    v115 = *(v112 + 48);
    v114(v109, v110, v108);
    v123(v110 + v115, v108);
    sub_26959E90C(v111, v110, &qword_28031D2A8, &unk_2695B2900);
    v114(v109 + *(v124 + 36), v110 + *(v112 + 48), v108);
    v123(v110, v108);
    if (v131(v129, 1, v127))
    {
      v125(v70[67], 1, 1, v70[78]);
    }

    else
    {
      sub_26959EDCC(v70[77] + *(v70[25] + 32), v70[67], &unk_28031D370, &unk_2695B2800);
    }

    v116 = swift_task_alloc();
    v70[103] = v116;
    *v116 = v70;
    v116[1] = sub_269599960;
    v117 = v70[67];
    v118 = v70[42];
    v119 = v70[37];

    return sub_2695A8E28(v119, v118, v117);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269599624()
{
  v1 = v0[77];
  sub_26959EE34(v0[75], &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v1, &qword_28031D2D8, &qword_2695B2B30);

  v2 = v0[1];

  return v2();
}

uint64_t sub_269599960()
{
  v1 = *v0;
  v2 = *(*v0 + 536);
  v5 = *v0;

  sub_26959EE34(v2, &unk_28031D370, &unk_2695B2800);
  v3 = swift_task_alloc();
  *(v1 + 832) = v3;
  *v3 = v5;
  v3[1] = sub_269599ABC;

  return sub_26959AF04(v1 + 53);
}

uint64_t sub_269599ABC()
{

  return MEMORY[0x2822009F8](sub_269599BB8, 0, 0);
}

uint64_t sub_269599BB8()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 616);
  v3 = *(v0 + 200);
  *(v0 + 123) = *(v0 + 53);
  if (v1(v2, 1, v3))
  {
    (*(v0 + 768))(*(v0 + 528), 1, 1, *(v0 + 624));
  }

  else
  {
    sub_26959EDCC(v2 + *(v3 + 36), *(v0 + 528), &unk_28031D370, &unk_2695B2800);
  }

  v4 = *(v0 + 720);
  v5 = *(v0 + 616);
  v6 = *(v0 + 528);
  v7 = *(v0 + 200);
  sub_2695A1AD8(*(v0 + 336), v6, *(v0 + 288));
  sub_26959EE34(v6, &unk_28031D370, &unk_2695B2800);
  if (v4(v5, 1, v7))
  {
    (*(v0 + 768))(*(v0 + 520), 1, 1, *(v0 + 624));
  }

  else
  {
    sub_26959EDCC(*(v0 + 616) + *(*(v0 + 200) + 40), *(v0 + 520), &unk_28031D370, &unk_2695B2800);
  }

  v8 = *(v0 + 720);
  v9 = *(v0 + 616);
  v10 = *(v0 + 520);
  v11 = *(v0 + 200);
  sub_26959B310(*(v0 + 128), v10, *(v0 + 744), *(v0 + 280));

  sub_26959EE34(v10, &unk_28031D370, &unk_2695B2800);
  v12 = 1;
  if (!v8(v9, 1, v11))
  {
    sub_26959E9DC(*(v0 + 616) + *(*(v0 + 200) + 44), *(v0 + 248), type metadata accessor for SiriFirstEnablementStatus);
    v12 = 0;
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 176);
  v15 = *(*(v0 + 184) + 56);
  *(v0 + 840) = v15;
  v16 = *(v0 + 54);
  v15(v13, v12, 1, v14);
  v17 = swift_task_alloc();
  *(v0 + 848) = v17;
  *v17 = v0;
  v17[1] = sub_269599E40;
  v18 = *(v0 + 264);
  v19 = *(v0 + 248);
  v20 = *(v0 + 128);

  return sub_269592D74(v18, v20, v16 & 1, v19);
}

uint64_t sub_269599E40()
{
  v1 = *(*v0 + 248);

  sub_26959EE34(v1, &qword_28031D278, &qword_2695B3490);

  return MEMORY[0x2822009F8](sub_269599F68, 0, 0);
}

uint64_t sub_269599F68()
{
  v112 = v0;
  v104 = *(v0 + 840);
  v92 = *(v0 + 123);
  v102 = *(v0 + 122);
  v108 = *(v0 + 776);
  v88 = *(v0 + 696);
  v1 = *(v0 + 640);
  v2 = *(v0 + 624);
  v89 = *(v0 + 512);
  v90 = *(v0 + 600);
  v91 = *(v0 + 504);
  v94 = *(v0 + 496);
  v106 = *(v0 + 472);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  v96 = *(v0 + 256);
  v97 = *(v0 + 488);
  v95 = *(v0 + 224);
  v100 = *(v0 + 176);
  v98 = *(v0 + 240);
  v8 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2E0, &qword_2695B2B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2695B29D0;
  *(inited + 32) = *v4;
  *(inited + 33) = v92;
  *(inited + 34) = *v3;
  *(inited + 35) = *v6;
  *(inited + 36) = *v7;
  v93 = sub_26959E82C(inited);
  swift_setDeallocating();
  v88(v1, v8, v2);
  sub_26959EDCC(v90, v89, &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(&v4[*(v5 + 20)], v91, &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(&v3[*(v5 + 20)], v94, &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(&v6[*(v5 + 20)], v97, &unk_28031D370, &unk_2695B2800);
  sub_26959E9DC(&v7[*(v96 + 20)], v98, type metadata accessor for SiriFirstEnablementStatus);
  v10 = 1;
  v104(v98, 0, 1, v100);
  *v95 = v102;
  sub_2695B0BA8();
  sub_2695B0B98();
  *(v95 + 8) = v93;
  sub_26959EDCC(v89, v106, &unk_28031D370, &unk_2695B2800);
  if (v108(v106, 1, v2) != 1)
  {
    v11 = *(v0 + 712);
    v12 = *(v0 + 656);
    v13 = *(v0 + 624);
    (*(v0 + 808))(v12, *(v0 + 472), v13);
    sub_2695B0BA8();
    sub_2695B0B98();
    v11(v12, v13);
    v10 = 0;
  }

  v14 = *(v0 + 776);
  v15 = *(v0 + 624);
  v16 = *(v0 + 504);
  v17 = *(v0 + 480);
  v18 = *(v0 + 456);
  v19 = *(v0 + 224);
  v20 = *(v0 + 200);
  v21 = 1;
  v110 = *(*(v0 + 632) + 56);
  v110(v17, v10, 1, v15);
  sub_26959E90C(v17, v19 + *(v20 + 28), &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(v16, v18, &unk_28031D370, &unk_2695B2800);
  if (v14(v18, 1, v15) != 1)
  {
    v22 = *(v0 + 712);
    v23 = *(v0 + 656);
    v24 = *(v0 + 624);
    (*(v0 + 808))(v23, *(v0 + 456), v24);
    sub_2695B0BA8();
    sub_2695B0B98();
    v22(v23, v24);
    v21 = 0;
  }

  v25 = *(v0 + 776);
  v26 = *(v0 + 624);
  v27 = *(v0 + 496);
  v28 = *(v0 + 464);
  v29 = *(v0 + 440);
  v30 = *(v0 + 224);
  v31 = *(v0 + 200);
  v32 = 1;
  v110(v28, v21, 1, v26);
  sub_26959E90C(v28, v30 + *(v31 + 32), &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(v27, v29, &unk_28031D370, &unk_2695B2800);
  if (v25(v29, 1, v26) != 1)
  {
    v33 = *(v0 + 712);
    v34 = *(v0 + 656);
    v35 = *(v0 + 624);
    (*(v0 + 808))(v34, *(v0 + 440), v35);
    sub_2695B0BA8();
    sub_2695B0B98();
    v33(v34, v35);
    v32 = 0;
  }

  v36 = *(v0 + 776);
  v37 = *(v0 + 624);
  v38 = *(v0 + 488);
  v39 = *(v0 + 448);
  v40 = *(v0 + 424);
  v41 = *(v0 + 224);
  v42 = *(v0 + 200);
  v109 = 1;
  v110(v39, v32, 1, v37);
  sub_26959E90C(v39, v41 + *(v42 + 36), &unk_28031D370, &unk_2695B2800);
  sub_26959EDCC(v38, v40, &unk_28031D370, &unk_2695B2800);
  if (v36(v40, 1, v37) != 1)
  {
    v43 = *(v0 + 712);
    v44 = *(v0 + 656);
    v45 = *(v0 + 624);
    (*(v0 + 808))(v44, *(v0 + 424), v45);
    sub_2695B0BA8();
    sub_2695B0B98();
    v43(v44, v45);
    v109 = 0;
  }

  v101 = *(v0 + 712);
  v46 = *(v0 + 640);
  v47 = *(v0 + 624);
  v49 = *(v0 + 504);
  v48 = *(v0 + 512);
  v50 = *(v0 + 496);
  v51 = *(v0 + 432);
  v103 = *(v0 + 224);
  v99 = *(v0 + 200);
  v52 = *(v0 + 184);
  v105 = *(v0 + 176);
  v107 = *(v0 + 240);
  sub_26959EE34(*(v0 + 488), &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v50, &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v49, &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v48, &unk_28031D370, &unk_2695B2800);
  v101(v46, v47);
  v110(v51, v109, 1, v47);
  sub_26959E90C(v51, v103 + *(v99 + 40), &unk_28031D370, &unk_2695B2800);
  v53 = *(v52 + 48);
  v54 = v53(v107, 1, v105);
  v55 = *(v0 + 240);
  v56 = *(v0 + 192);
  if (v54 == 1)
  {
    v57 = *(v0 + 176);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
    (*(*(v58 - 8) + 56))(v56, 1, 3, v58);
    if (v53(v55, 1, v57) != 1)
    {
      sub_26959EE34(*(v0 + 240), &qword_28031D278, &qword_2695B3490);
    }
  }

  else
  {
    sub_26959E974(*(v0 + 240), *(v0 + 192), type metadata accessor for SiriFirstEnablementStatus);
  }

  v60 = *(v0 + 224);
  v59 = *(v0 + 232);
  v61 = *(v0 + 216);
  sub_26959E974(*(v0 + 192), v60 + *(*(v0 + 200) + 44), type metadata accessor for SiriFirstEnablementStatus);
  sub_26959E974(v60, v59, type metadata accessor for SegmentsSummary);
  sub_26959E9DC(v59, v61, type metadata accessor for SegmentsSummary);
  v62 = sub_2695B0ED8();
  v63 = sub_2695B1128();
  v64 = os_log_type_enabled(v62, v63);
  v65 = *(v0 + 216);
  if (v64)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v111[0] = v67;
    *v66 = 136315138;
    v68 = SegmentsSummary.description.getter();
    v70 = v69;
    sub_26959EA44(v65, type metadata accessor for SegmentsSummary);
    v71 = sub_26959CE44(v68, v70, v111);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_269588000, v62, v63, "SegmentationTask ended: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x26D641DE0](v67, -1, -1);
    MEMORY[0x26D641DE0](v66, -1, -1);
  }

  else
  {

    sub_26959EA44(v65, type metadata accessor for SegmentsSummary);
  }

  v72 = *(v0 + 800);
  sub_26958AD84(*(v0 + 232), *(v0 + 136));
  if (v72)
  {
    v73 = *(v0 + 336);
    v75 = *(v0 + 288);
    v74 = *(v0 + 296);
    v76 = *(v0 + 280);
    v77 = *(v0 + 264);
    sub_26959EA44(*(v0 + 232), type metadata accessor for SegmentsSummary);
    sub_26959EA44(v77, type metadata accessor for NewCustomerSegment.Result);
    sub_26959EA44(v76, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EA44(v75, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EA44(v74, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EE34(v73, &qword_28031D1B8, &qword_2695B2538);
    v78 = *(v0 + 616);
    sub_26959EE34(*(v0 + 600), &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v78, &qword_28031D2D8, &qword_2695B2B30);
  }

  else
  {
    v80 = *(v0 + 616);
    v81 = *(v0 + 600);
    v82 = *(v0 + 336);
    v84 = *(v0 + 288);
    v83 = *(v0 + 296);
    v85 = *(v0 + 280);
    v86 = *(v0 + 264);
    sub_26959EA44(*(v0 + 232), type metadata accessor for SegmentsSummary);
    sub_26959EA44(v86, type metadata accessor for NewCustomerSegment.Result);
    sub_26959EA44(v85, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EA44(v84, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EA44(v83, type metadata accessor for SegmentFlagLastSeenResult);
    sub_26959EE34(v82, &qword_28031D1B8, &qword_2695B2538);
    sub_26959EE34(v81, &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v80, &qword_28031D2D8, &qword_2695B2B30);
  }

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_26959AF04(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26959AFA8;

  return sub_26958F864();
}

uint64_t sub_26959AFA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_26959B160;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_26959B0D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26959B0D0()
{
  v1 = *(v0 + 40);
  v2 = [v1 statusType];

  if (((v2 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v3 = 7;
  }

  else
  {
    v3 = 3;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26959B160()
{
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_2695B0EF8();
  __swift_project_value_buffer(v2, qword_2814B2250);
  MEMORY[0x26D641C60](v1);
  v3 = sub_2695B0ED8();
  v4 = sub_2695B1138();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x26D641C60](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_269588000, v3, v4, "Unable to calculate music segment: %@", v7, 0xCu);
    sub_26959EE34(v8, &qword_28031D280, &unk_2695B28C0);
    MEMORY[0x26D641DE0](v8, -1, -1);
    MEMORY[0x26D641DE0](v7, -1, -1);
  }

  else
  {
  }

  **(v0 + 16) = 7;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26959B310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v124 = a2;
  v127 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  MEMORY[0x28223BE20](v6 - 8);
  v126 = &v122 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0);
  MEMORY[0x28223BE20](v8 - 8);
  v125 = &v122 - v9;
  v10 = type metadata accessor for SiriUsageMetrics(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v133 = &v122 - v16;
  MEMORY[0x28223BE20](v15);
  v149 = &v122 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2D0, &unk_2695B2B20);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v145 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v150 = &v122 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v141 = &v122 - v24;
  MEMORY[0x28223BE20](v23);
  v142 = (&v122 - v25);
  v26 = sub_2695B0C78();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v152 = &v122 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v147 = &v122 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v139 = &v122 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v122 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v42 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40);
  v130 = &v122 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v138 = &v122 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v131 = &v122 - v48;
  MEMORY[0x28223BE20](v47);
  v129 = &v122 - v49;
  v50 = *(v27 + 16);
  v148 = v38;
  v123 = a1;
  v151 = v26;
  v50(v38, a1, v26);
  v51 = *(a3 + 2);

  v132 = v27;
  v153 = a3;
  v128 = v30;
  if (v51)
  {
    v52 = (v27 + 8);
    v53 = &a3[(*(v11 + 80) + 32) & ~*(v11 + 80)];
    v54 = *(v11 + 72);
    v55 = -1;
    v56 = v149;
    v143 = v54;
    v144 = v52;
    do
    {
      sub_26959E9DC(v53, v56, type metadata accessor for SiriUsageMetrics);
      if (*(v56 + *(v10 + 20)) == 2)
      {
        if (*(v56 + *(v10 + 24)))
        {
          v57 = v147;
          sub_2695B09D8();
          sub_26959EB0C(&qword_28031D390, MEMORY[0x277CC9590]);
          v58 = v151;
          v59 = sub_2695B0F78();
          v60 = v57;
          v54 = v143;
          v61 = v58;
          v56 = v149;
          (*v144)(v60, v61);
          if ((v59 & 1) == 0)
          {
            sub_26959E974(v56, v142, type metadata accessor for SiriUsageMetrics);
            v62 = 0;
            v63 = -v55;
            goto LABEL_9;
          }
        }
      }

      sub_26959EA44(v56, type metadata accessor for SiriUsageMetrics);
      --v55;
      v53 += v54;
    }

    while (v51 + v55 != -1);
    v62 = 1;
    v63 = v51;
LABEL_9:
    v30 = v128;
  }

  else
  {
    v62 = 1;
    v63 = 0;
  }

  v64 = 1;
  v65 = v142;
  v134 = *(v11 + 56);
  v135 = v11 + 56;
  v134(v142, v62, 1, v10);
  v66 = v65;
  v67 = v141;
  sub_26959E90C(v66, v141, &qword_28031D2D0, &unk_2695B2B20);
  v136 = *(v11 + 48);
  v137 = v11 + 48;
  if (v136(v67, 1, v10) != 1)
  {
    v68 = v133;
    sub_26959E974(v67, v133, type metadata accessor for SiriUsageMetrics);
    sub_2695B09D8();
    sub_26959EA44(v68, type metadata accessor for SiriUsageMetrics);
    v64 = 0;
  }

  v69 = v132;
  v70 = v131;
  v71 = v64;
  v72 = v151;
  v142 = *(v132 + 56);
  v143 = v132 + 56;
  (v142)(v131, v71, 1, v151);
  v140 = *(v69 + 48);
  v141 = v69 + 48;
  if (v140(v70, 1, v72) != 1)
  {
    v75 = v69 + 32;
    v144 = *(v69 + 32);
    (v144)(v139, v70, v72);
    v149 = (v69 + 8);
    v76 = v152;
    v146 = v51;
    while (1)
    {
      v77 = v150;
      if (v63 != v51)
      {
        break;
      }

LABEL_18:
      v134(v77, 1, 1, v10);
      v63 = v51;
LABEL_19:
      v78 = v145;
      sub_26959E90C(v77, v145, &qword_28031D2D0, &unk_2695B2B20);
      v79 = 1;
      v80 = v136(v78, 1, v10);
      v81 = v138;
      if (v80 != 1)
      {
        v82 = v133;
        sub_26959E974(v145, v133, type metadata accessor for SiriUsageMetrics);
        sub_2695B09D8();
        sub_26959EA44(v82, type metadata accessor for SiriUsageMetrics);
        v79 = 0;
      }

      v83 = v79;
      v72 = v151;
      (v142)(v81, v83, 1, v151);
      v84 = v140(v81, 1, v72);
      v85 = v81;
      v86 = v139;
      if (v84 == 1)
      {
        sub_26959EE34(v85, &unk_28031D370, &unk_2695B2800);
        v74 = v129;
        (v144)(v129, v86, v72);
        v73 = 0;
        v30 = v128;
        goto LABEL_32;
      }

      (v144)(v76, v85, v72);
      sub_26959EB0C(&qword_28031D390, MEMORY[0x277CC9590]);
      v87 = sub_2695B0F78();
      v88 = *v149;
      if (v87)
      {
        v88(v86, v72);
        (v144)(v86, v76, v72);
      }

      else
      {
        v88(v76, v72);
      }
    }

    while (v63 < v51)
    {
      sub_26959E9DC(&v153[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v63], v14, type metadata accessor for SiriUsageMetrics);
      v90 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_46;
      }

      if (v14[*(v10 + 20)] == 2)
      {
        if (*&v14[*(v10 + 24)])
        {
          v91 = v11;
          v92 = v75;
          v93 = v10;
          v94 = v147;
          sub_2695B09D8();
          sub_26959EB0C(&qword_28031D390, MEMORY[0x277CC9590]);
          v95 = v151;
          v96 = sub_2695B0F78();
          v97 = v94;
          v10 = v93;
          v75 = v92;
          v11 = v91;
          v51 = v146;
          v98 = v95;
          v77 = v150;
          (*v149)(v97, v98);
          if ((v96 & 1) == 0)
          {
            sub_26959E974(v14, v77, type metadata accessor for SiriUsageMetrics);
            v134(v77, 0, 1, v10);
            ++v63;
            v76 = v152;
            goto LABEL_19;
          }
        }
      }

      sub_26959EA44(v14, type metadata accessor for SiriUsageMetrics);
      ++v63;
      v89 = v90 == v51;
      v76 = v152;
      if (v89)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    swift_once();
    v111 = sub_2695B0EF8();
    __swift_project_value_buffer(v111, qword_2814B2250);
    MEMORY[0x26D641C60](v11);
    v112 = sub_2695B0ED8();
    v113 = sub_2695B1138();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      MEMORY[0x26D641C60](v11);
      v116 = _swift_stdlib_bridgeErrorToNSError();
      *(v114 + 4) = v116;
      *v115 = v116;
      _os_log_impl(&dword_269588000, v112, v113, "Unable to calculate dictation segment: %@", v114, 0xCu);
      sub_26959EE34(v115, &qword_28031D280, &unk_2695B28C0);
      MEMORY[0x26D641DE0](v115, -1, -1);
      MEMORY[0x26D641DE0](v114, -1, -1);
    }

    else
    {
    }

    v106 = *(type metadata accessor for SegmentFlagLastSeenResult(0) + 20);
    v105 = v127;
    goto LABEL_42;
  }

  sub_26959EE34(v70, &unk_28031D370, &unk_2695B2800);
  v73 = 1;
  v74 = v129;
LABEL_32:
  (v142)(v74, v73, 1, v72);

  v99 = v132;
  v153 = *(v132 + 8);
  (v153)(v148, v72);
  v100 = v130;
  sub_2695968A8(v74, v124, v130);
  sub_26959EDCC(v100, v42, &unk_28031D370, &unk_2695B2800);
  v101 = v140(v42, 1, v72);
  v102 = v126;
  v103 = v125;
  v104 = v72;
  if (v101 == 1)
  {
    sub_26959EE34(v100, &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v74, &unk_28031D370, &unk_2695B2800);
    sub_26959EE34(v42, &unk_28031D370, &unk_2695B2800);
    v105 = v127;
    v42 = v72;
LABEL_34:
    v106 = *(type metadata accessor for SegmentFlagLastSeenResult(0) + 20);
LABEL_42:
    result = (v142)(&v105[v106], 1, 1, v42);
    v120 = 7;
    goto LABEL_43;
  }

  v107 = *(v99 + 32);
  v107(v30, v42, v72);
  v108 = sub_2695B0C98();
  (*(*(v108 - 8) + 56))(v103, 1, 1, v108);
  v109 = sub_2695B0D68();
  (*(*(v109 - 8) + 56))(v102, 1, 1, v109);
  v110 = sub_2695AB4A4(v123, v103, v102);
  v42 = v72;
  v117 = v99 + 32;
  v118 = v110;
  v132 = v117;
  sub_26959EE34(v102, &unk_28031D360, &unk_2695B2B50);
  sub_26959EE34(v103, &qword_28031D288, &qword_2695B28D0);
  sub_26959EE34(v130, &unk_28031D370, &unk_2695B2800);
  sub_26959EE34(v129, &unk_28031D370, &unk_2695B2800);
  if (v118 >= 28)
  {
    (v153)(v30, v72);
    v105 = v127;
    goto LABEL_34;
  }

  v119 = *(type metadata accessor for SegmentFlagLastSeenResult(0) + 20);
  v105 = v127;
  v107(&v127[v119], v30, v104);
  v120 = 1;
  result = (v142)(&v105[v119], 0, 1, v104);
LABEL_43:
  *v105 = v120;
  return result;
}

uint64_t sub_26959C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = a1;
  v31 = sub_2695B0C78();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2695B0D38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = sub_2695B0C98();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2695B0D48();
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, *MEMORY[0x277CC9830], v13);
  sub_2695B0CA8();
  (*(v14 + 8))(v16, v13);
  v19 = v31;
  (*(v4 + 104))(v6, *MEMORY[0x277CC9968], v3);
  sub_2695B0CF8();
  v20 = v6;
  v21 = v33;
  (*(v4 + 8))(v20, v3);
  sub_26959EDCC(v12, v10, &unk_28031D370, &unk_2695B2800);
  if ((*(v21 + 48))(v10, 1, v19) == 1)
  {
    sub_26959EE34(v10, &unk_28031D370, &unk_2695B2800);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_2695B1208();

    v35 = 0xD000000000000026;
    v36 = 0x80000002695B3BB0;
    sub_26959EB0C(&qword_28031D250, MEMORY[0x277CC95B8]);
    v22 = sub_2695B1318();
    MEMORY[0x26D6414B0](v22);

    v23 = v35;
    v24 = v36;
    sub_26959EBA4();
    swift_allocError();
    *v25 = v23;
    v25[1] = v24;
    swift_willThrow();
  }

  else
  {
    v27 = v29;
    (*(v21 + 32))(v29, v10, v19);
    sub_2695B0CC8();
    (*(v21 + 8))(v27, v19);
  }

  sub_26959EE34(v12, &unk_28031D370, &unk_2695B2800);
  return (*(v34 + 8))(v18, v37);
}

uint64_t SegmentationTaskResult.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x73736563637573;
  }

  if (v1 == 1)
  {
    return 0x64657070696B73;
  }

  MEMORY[0x26D6414B0](*v0);
  return 0x3A6572756C696166;
}

uint64_t sub_26959C8D8()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x73736563637573;
  }

  if (v1 == 1)
  {
    return 0x64657070696B73;
  }

  MEMORY[0x26D6414B0](*v0);
  return 0x3A6572756C696166;
}

uint64_t sub_26959C968(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26959C9B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26959CAAC;

  return v6(a1);
}

uint64_t sub_26959CAAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26959CBA4(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_26959CC2C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26959CE44(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26959CC88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26959CD28;

  return sub_269596EFC(a1);
}

uint64_t sub_26959CD28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26959CE1C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_26959CE30(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_26959CE44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26959CF10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26958FC00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_26959CF10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26959D01C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2695B1258();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26959D01C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26959D068(a1, a2);
  sub_26959D198(&unk_287A197A0);
  return v3;
}

void *sub_26959D068(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26959D284(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2695B1258();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2695B1008();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26959D284(v10, 0);
        result = sub_2695B11F8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26959D198(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26959D2F8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26959D284(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2F8, &qword_2695B2B60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26959D2F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2F8, &qword_2695B2B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_26959D3EC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26959D3FC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_26959D470(uint64_t a1, uint64_t a2)
{
  sub_2695B1388();
  sub_2695B0FE8();
  v4 = sub_2695B13A8();

  return sub_26959D4E8(a1, a2, v4);
}

unint64_t sub_26959D4E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2695B1328())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26959D5A0(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_2695A3B60(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 <= 2)
      {
        if (*(*(v4 + 48) + v7))
        {
          if (v8 == 1)
          {
            v9 = 0x6F69746174636964;
          }

          else
          {
            v9 = 7496035;
          }

          if (v8 == 1)
          {
            v10 = 0xE90000000000006ELL;
          }

          else
          {
            v10 = 0xE300000000000000;
          }
        }

        else
        {
          v9 = 0x6F7473754377656ELL;
          v10 = 0xEB0000000072656DLL;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v8 == 5)
        {
          v9 = 0x6D6F44736D6D6F63;
          v10 = 0xED0000746E616E69;
        }

        else
        {
          v9 = 0xD00000000000001ALL;
          v10 = 0x80000002695B36F0;
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0xD000000000000011;
        }

        else
        {
          v9 = 0x73646F50726961;
        }

        if (v8 == 3)
        {
          v10 = 0x80000002695B36C0;
        }

        else
        {
          v10 = 0xE700000000000000;
        }
      }

      v11 = 0xD00000000000001ALL;
      if (v3 == 5)
      {
        v11 = 0x6D6F44736D6D6F63;
      }

      v12 = 0xED0000746E616E69;
      if (v3 != 5)
      {
        v12 = 0x80000002695B36F0;
      }

      v13 = 0x73646F50726961;
      if (v3 == 3)
      {
        v13 = 0xD000000000000011;
      }

      v14 = 0xE700000000000000;
      if (v3 == 3)
      {
        v14 = 0x80000002695B36C0;
      }

      if (v3 <= 4u)
      {
        v11 = v13;
        v12 = v14;
      }

      v15 = 0x6F69746174636964;
      if (v3 != 1)
      {
        v15 = 7496035;
      }

      v16 = 0xE90000000000006ELL;
      if (v3 != 1)
      {
        v16 = 0xE300000000000000;
      }

      if (!v3)
      {
        v15 = 0x6F7473754377656ELL;
        v16 = 0xEB0000000072656DLL;
      }

      v17 = v3 <= 2u ? v15 : v11;
      v18 = v3 <= 2u ? v16 : v12;
      if (v9 == v17 && v10 == v18)
      {
        break;
      }

      v19 = sub_2695B1328();

      if (v19)
      {
        goto LABEL_50;
      }

      v7 = (v7 + 1) & v24;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_50:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_48:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    sub_26959DBE0(v3, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v25;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_26959D890(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2E8, &qword_2695B2B48);
  result = sub_2695B11D8();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_2695B1388();
      sub_2695B0FE8();

      result = sub_2695B13A8();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26959DBE0(uint64_t result, unint64_t a2, char a3)
{
  v27 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_55;
  }

  if (a3)
  {
    sub_26959D890(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_26959DF18();
      goto LABEL_55;
    }

    sub_26959E058(v5 + 1);
  }

  v7 = *v3;
  result = sub_2695A3B60(*(*v3 + 40), v27);
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 <= 2)
      {
        if (*(*(v7 + 48) + a2))
        {
          if (v10 == 1)
          {
            v11 = 0x6F69746174636964;
          }

          else
          {
            v11 = 7496035;
          }

          if (v10 == 1)
          {
            v12 = 0xE90000000000006ELL;
          }

          else
          {
            v12 = 0xE300000000000000;
          }
        }

        else
        {
          v11 = 0x6F7473754377656ELL;
          v12 = 0xEB0000000072656DLL;
        }
      }

      else if (*(*(v7 + 48) + a2) > 4u)
      {
        if (v10 == 5)
        {
          v11 = 0x6D6F44736D6D6F63;
          v12 = 0xED0000746E616E69;
        }

        else
        {
          v11 = 0xD00000000000001ALL;
          v12 = 0x80000002695B36F0;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0xD000000000000011;
        }

        else
        {
          v11 = 0x73646F50726961;
        }

        if (v10 == 3)
        {
          v12 = 0x80000002695B36C0;
        }

        else
        {
          v12 = 0xE700000000000000;
        }
      }

      v13 = 0xD00000000000001ALL;
      if (v27 == 5)
      {
        v13 = 0x6D6F44736D6D6F63;
      }

      v14 = 0xED0000746E616E69;
      if (v27 != 5)
      {
        v14 = 0x80000002695B36F0;
      }

      v15 = 0x73646F50726961;
      if (v27 == 3)
      {
        v15 = 0xD000000000000011;
      }

      v16 = 0xE700000000000000;
      if (v27 == 3)
      {
        v16 = 0x80000002695B36C0;
      }

      if (v27 <= 4u)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0x6F69746174636964;
      if (v27 != 1)
      {
        v17 = 7496035;
      }

      v18 = 0xE90000000000006ELL;
      if (v27 != 1)
      {
        v18 = 0xE300000000000000;
      }

      if (!v27)
      {
        v17 = 0x6F7473754377656ELL;
        v18 = 0xEB0000000072656DLL;
      }

      v19 = v27 <= 2u ? v17 : v13;
      v20 = v27 <= 2u ? v18 : v14;
      if (v11 == v19 && v12 == v20)
      {
        goto LABEL_58;
      }

      v21 = sub_2695B1328();

      if (v21)
      {
        goto LABEL_59;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_55:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v27;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_58:

LABEL_59:
  result = sub_2695B1338();
  __break(1u);
  return result;
}

void *sub_26959DF18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2E8, &qword_2695B2B48);
  v2 = *v0;
  v3 = sub_2695B11C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26959E058(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2E8, &qword_2695B2B48);
  result = sub_2695B11D8();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_2695B1388();
      sub_2695B0FE8();

      result = sub_2695B13A8();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t _s16SiriUserSegments16SegmentationTaskC9isEnabledSbyFZ_0()
{
  v9[3] = &type metadata for SiriUserSegmentsFeatureFlag;
  v9[4] = sub_26959EBF8();
  if (qword_28031CF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_28031D218 + 2))
  {
    v7 = sub_2695B1218();
    v8 = v0;
    MEMORY[0x26D6414B0](47, 0xE100000000000000);
    v1 = sub_2695B1218();
    MEMORY[0x26D6414B0](v1);

    swift_beginAccess();
    v2 = off_28031D218;
    if (*(off_28031D218 + 2))
    {
      v3 = sub_26959D470(v7, v8);
      if (v4)
      {
        v5 = *(v2[7] + v3);
        if (v5 != 2)
        {
          swift_endAccess();

          goto LABEL_9;
        }
      }
    }

    swift_endAccess();
  }

  LOBYTE(v5) = sub_2695B0D88();
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return v5 & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t _s16SiriUserSegments22SegmentationTaskResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_26959CE30(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_26959CE30(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_2695B1328();
      sub_26959CE1C(v4, v5);
      sub_26959CE1C(v2, v3);
      sub_26959CE30(v2, v3);
      sub_26959CE30(v4, v5);
      return v11 & 1;
    }

    sub_26959CE1C(v9, v3);
    sub_26959CE1C(v2, v3);
    sub_26959CE30(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_26959CE1C(*a2, *(a2 + 8));
    sub_26959CE1C(v2, v3);
    sub_26959CE30(v2, v3);
    sub_26959CE30(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_26959CE30(*a1, 1uLL);
  sub_26959CE30(v4, 1uLL);
  return v6;
}

uint64_t get_enum_tag_for_layout_string_16SiriUserSegments22SegmentationTaskResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26959E6D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26959E728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_26959E788(void *result, int a2)
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

uint64_t sub_26959E7B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26959EB50();
  result = MEMORY[0x26D6415C0](v2, &type metadata for SegmentFlags, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26959D5A0(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26959E82C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 != 7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_26959F63C(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          v3 = sub_26959F63C((v6 > 1), v7 + 1, 1, v3);
        }

        *(v3 + 2) = v7 + 1;
        v3[v7 + 32] = v4;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = sub_26959E7B8(v3);

  return v8;
}

uint64_t sub_26959E90C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26959E974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26959E9DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26959EA44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26959EAA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26959EB0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2695B0C78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26959EB50()
{
  result = qword_2814B1E98[0];
  if (!qword_2814B1E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B1E98);
  }

  return result;
}

unint64_t sub_26959EBA4()
{
  result = qword_28031D2F0;
  if (!qword_28031D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D2F0);
  }

  return result;
}

unint64_t sub_26959EBF8()
{
  result = qword_2814B1E18;
  if (!qword_2814B1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B1E18);
  }

  return result;
}

uint64_t sub_26959EC50(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  sub_26959F0F8(v4, v5);

  return sub_26959F108(v2, v3);
}

uint64_t sub_26959EC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26959F1AC;

  return sub_269596324(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_26959ED78()
{
  result = qword_28031D310;
  if (!qword_28031D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D310);
  }

  return result;
}

uint64_t sub_26959EDCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26959EE34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26959EE94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26959F1B0;

  return sub_26959C9B4(a1, v4);
}

uint64_t sub_26959EF4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26959F004;

  return sub_26959C9B4(a1, v4);
}

uint64_t sub_26959F004()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26959F0F8(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_26959CE30(a1, a2);
  }

  return a1;
}

uint64_t sub_26959F108(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_26959CE1C(a1, a2);
  }

  return a1;
}

uint64_t sub_26959F118(uint64_t a1, int a2)
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

uint64_t sub_26959F160(uint64_t result, int a2, int a3)
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

uint64_t sub_26959F1B4()
{
  result = v0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_26959F1C4(unint64_t *a1)
{
  v3 = a1[1];
  v1[22] = sub_26959F920(v3);
  v1[26] = sub_2695A0440(v3, &selRef_punchOut);
  v4 = a1[2];
  v1[23] = sub_2695A05CC(v4, &selRef_ended);
  sub_26959FCF4(v3);
  v1[24] = v5 & 1;
  v1[21] = sub_2695A005C(v3) & 1;
  v6 = sub_2695A023C(v4);
  v1[27] = (v6 | sub_2695A0440(v4, &selRef_requestMitigated)) & 1;
  v7 = *a1;
  v1[20] = sub_2695A05CC(v7, &selRef_cancelled);
  v8 = sub_2695A079C(v3);
  v1[25] = v8;
  v9 = 1;
  if ((v1[22] & 1) == 0 && !v1[26])
  {
    v9 = v1[23] | v1[24];
  }

  if ((v1[21] | v1[27]))
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v1[20] | v8) ^ 1) & v9;
  }

  v1[16] = v10 & 1;
  v1[17] = sub_2695A09C4(v3);
  result = sub_2695A0CF8(v7, v3);
  v1[18] = result & 1;
  v1[19] = result & 1 & v1[17];
  return result;
}

char *sub_26959F360(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D340, &qword_2695B2CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_26959F464(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D350, &qword_2695B2D00);
  v10 = *(type metadata accessor for SiriUsageMetrics(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SiriUsageMetrics(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26959F63C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D348, &qword_2695B2CF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_26959F730(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D328, &qword_2695B2CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_26959F824(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

BOOL sub_26959F920(unint64_t a1)
{
  v27 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_53:
    v3 = sub_2695B1278();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x26D6416E0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_48;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
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
      goto LABEL_53;
    }

    v10 = [v7 uufrSaid];

    ++v4;
    if (v10)
    {
      MEMORY[0x26D6414F0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2695B1058();
      }

      sub_2695B1068();
      v26 = v27;
      v4 = v9;
    }
  }

  v11 = 0;
  v27 = v6;
  v25 = v6;
  while (v3 != v11)
  {
    if (v5)
    {
      v12 = MEMORY[0x26D6416E0](v11, a1);
    }

    else
    {
      if (v11 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      v12 = *(a1 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_49;
    }

    v15 = [v12 uufrShown];

    ++v11;
    if (v15)
    {
      MEMORY[0x26D6414F0]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2695B1058();
      }

      sub_2695B1068();
      v25 = v6;
      v11 = v14;
    }
  }

  v16 = 0;
  v27 = v6;
  while (v3 != v16)
  {
    if (v5)
    {
      v17 = MEMORY[0x26D6416E0](v16, a1);
    }

    else
    {
      if (v16 >= *(v2 + 16))
      {
        goto LABEL_52;
      }

      v17 = *(a1 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_51;
    }

    v20 = [v17 uufrPresented];

    ++v16;
    if (v20)
    {
      MEMORY[0x26D6414F0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2695B1058();
      }

      sub_2695B1068();
      v6 = v27;
      v16 = v19;
    }
  }

  if (v26 >> 62)
  {
    v21 = sub_2695B1278();
  }

  else
  {
    v21 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {

LABEL_43:

    return 1;
  }

  if (v25 >> 62)
  {
    v22 = sub_2695B1278();
  }

  else
  {
    v22 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    goto LABEL_43;
  }

  if (v6 >> 62)
  {
    v24 = sub_2695B1278();
  }

  else
  {
    v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v24 != 0;
}

void sub_26959FCF4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a1 & 0xC000000000000001;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v35 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_2695B1278();
  v4 = a1 & 0xC000000000000001;
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v35 = MEMORY[0x277D84F90];
  do
  {
    v6 = v5;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x26D6416E0](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 invocation];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 keyboardInvocationContext];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v5 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = [v11 keyboardPresented];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_26959F730(0, *(v35 + 2) + 1, 1, v35);
    }

    v15 = *(v35 + 2);
    v14 = *(v35 + 3);
    if (v15 >= v14 >> 1)
    {
      v35 = sub_26959F730((v14 > 1), v15 + 1, 1, v35);
    }

    *(v35 + 2) = v15 + 1;
    v35[v15 + 32] = v12;
  }

  while (v5 != v3);
LABEL_24:
  v16 = *(v35 + 2);
  v17 = (v35 + 32);
  do
  {
    if (v16-- == 0)
    {
      break;
    }

    v19 = *v17++;
  }

  while (v19 != 1);

  if (v3)
  {
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    v22 = 0x279C65000uLL;
    do
    {
      v23 = v20;
      while (1)
      {
        if (v4)
        {
          v24 = MEMORY[0x26D6416E0](v23, a1);
        }

        else
        {
          if (v23 >= *(v2 + 16))
          {
            goto LABEL_51;
          }

          v24 = *(a1 + 8 * v23 + 32);
        }

        v25 = v24;
        v20 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          return;
        }

        v26 = [v24 invocation];
        if (v26)
        {
          break;
        }

        ++v23;
        if (v20 == v3)
        {
          goto LABEL_46;
        }
      }

      v27 = *(v22 + 3584);
      v28 = v26;
      v29 = [v26 v27];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_26959F824(0, *(v21 + 2) + 1, 1, v21, &qword_28031D338, &qword_2695B2CE8);
      }

      v31 = *(v21 + 2);
      v30 = *(v21 + 3);
      if (v31 >= v30 >> 1)
      {
        v21 = sub_26959F824((v30 > 1), v31 + 1, 1, v21, &qword_28031D338, &qword_2695B2CE8);
      }

      *(v21 + 2) = v31 + 1;
      *&v21[4 * v31 + 32] = v29;
      v22 = 0x279C65000;
    }

    while (v20 != v3);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

LABEL_46:
  v32 = *(v21 + 2);
  v33 = 32;
  do
  {
    if (!v32)
    {
      break;
    }

    v34 = *&v21[v33];
    v33 += 4;
    --v32;
  }

  while (v34 != 11);
}

uint64_t sub_2695A005C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_2695B1278();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = 0x279C65000uLL;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6416E0](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 ueiRequestCategorization];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = *(v6 + 3544);
    v12 = v10;
    v13 = [v10 v11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_26959F824(0, *(v5 + 2) + 1, 1, v5, &qword_28031D318, "f!");
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_26959F824((v14 > 1), v15 + 1, 1, v5, &qword_28031D318, "f!");
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v13;
    v6 = 0x279C65000;
  }

  while (v4 != v3);
LABEL_23:
  v16 = *(v5 + 2);
  if (v16)
  {
    v17 = (v5 + 32);
    do
    {
      v18 = v16-- != 0;
      v19 = v18;
      if (!v18)
      {
        break;
      }

      v20 = *v17++;
    }

    while (v20 != 2);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

BOOL sub_2695A023C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_2695B1278();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D6416E0](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 requestContext];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 cancelled];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = [v11 reason];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_26959F824(0, *(v5 + 2) + 1, 1, v5, &qword_28031D330, &qword_2695B2CE0);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_26959F824((v14 > 1), v15 + 1, 1, v5, &qword_28031D330, &qword_2695B2CE0);
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v12;
  }

  while (v4 != v3);
LABEL_24:
  v16 = *(v5 + 2);
  v17 = 32;
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *&v5[v17];
    v17 += 4;
  }

  while (v20 != 1);
  v21 = v18 != 0;

  return v21;
}