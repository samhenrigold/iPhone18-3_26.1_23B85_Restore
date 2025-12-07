uint64_t get_enum_tag_for_layout_string_13SiriInference21HolidaysDBUpdateErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_BYTE *storeEnumTagSinglePayload for HolidaysDBUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

void sub_1DD4CAB30(uint64_t a1)
{
  sub_1DD63D078();
  if (v1 <= 0x3F)
  {
    sub_1DD4CAC60(319, &qword_1EE163958, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD4CAC60(319, &qword_1ECCDDB58, &unk_1F58B8D68, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1DD4CAC60(319, &qword_1ECCDDB60, &type metadata for HolidayCalendarInfo, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD4CAC60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DD4CACB4()
{
  result = qword_1ECCDDB68;
  if (!qword_1ECCDDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB68);
  }

  return result;
}

unint64_t sub_1DD4CAD0C()
{
  result = qword_1ECCDDB70;
  if (!qword_1ECCDDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB70);
  }

  return result;
}

unint64_t sub_1DD4CAD64()
{
  result = qword_1ECCDDB78;
  if (!qword_1ECCDDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB78);
  }

  return result;
}

unint64_t sub_1DD4CADB8()
{
  result = qword_1ECCDDB88;
  if (!qword_1ECCDDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB88);
  }

  return result;
}

unint64_t sub_1DD4CAE0C()
{
  result = qword_1ECCDDB90;
  if (!qword_1ECCDDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDB90);
  }

  return result;
}

unint64_t sub_1DD4CAE60()
{
  result = qword_1ECCDDBA0;
  if (!qword_1ECCDDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HolidayCalendarInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4CAF94()
{
  result = qword_1ECCDDBA8;
  if (!qword_1ECCDDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBA8);
  }

  return result;
}

unint64_t sub_1DD4CAFEC()
{
  result = qword_1ECCDDBB0;
  if (!qword_1ECCDDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBB0);
  }

  return result;
}

unint64_t sub_1DD4CB044()
{
  result = qword_1ECCDDBB8;
  if (!qword_1ECCDDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_27()
{

  return swift_getWitnessTable();
}

unint64_t sub_1DD4CB0C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_25();
  v11 = sub_1DD4061B8(0xD000000000000034, 0x80000001DD66E330, MEMORY[0x1E69E7CC0]);
  if (!v3)
  {
    a3 = sub_1DD58B560(v11);
    sub_1DD5D2E58();
    if (!v12)
    {

      v19 = sub_1DD4CA84C();
      OUTLINED_FUNCTION_4_42(&unk_1F58B8CF0, v19);
      *v20 = 0u;
      *(v20 + 16) = 0u;
      *(v20 + 32) = 0u;
      *(v20 + 48) = 2;
LABEL_8:
      swift_willThrow();
      return a3;
    }

    OUTLINED_FUNCTION_13_27();
    v17 = sub_1DD4CEA5C(v13, v14, v15, v16);
    if (v18)
    {

      v21 = sub_1DD4CF1AC();
      v22 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v21);
      OUTLINED_FUNCTION_9_36(xmmword_1DD653A70, v22, v23);
      goto LABEL_8;
    }

    a3 = v17;
    OUTLINED_FUNCTION_13_27();
    v29 = sub_1DD4CE934(v25, v26, v27, v28);
    if (v30)
    {
      v57 = v29;
      v58 = v30;
      OUTLINED_FUNCTION_13_27();
      v35 = sub_1DD4CE934(v31, v32, v33, v34);
      if (v36)
      {
        v54 = v35;
        v55 = v36;

        v40 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
        [v40 setFormatOptions_];
        v41 = sub_1DD63FDA8();
        v56 = v40;
        v42 = [v40 dateFromString_];

        if (v42)
        {

          sub_1DD63D048();

          (*(v9 + 32))(a1, v4, v7);
          v43 = sub_1DD63FDA8();
          v44 = [v56 dateFromString_];

          if (v44)
          {

            sub_1DD63D048();
          }

          else
          {
            v51 = sub_1DD4CA84C();
            v52 = OUTLINED_FUNCTION_4_42(&unk_1F58B8CF0, v51);
            *v53 = v54;
            v53[1] = v55;
            OUTLINED_FUNCTION_16_28(v52, v53);

            (*(v9 + 8))(a1, v7);
          }
        }

        else
        {

          v48 = sub_1DD4CA84C();
          v49 = OUTLINED_FUNCTION_4_42(&unk_1F58B8CF0, v48);
          *v50 = v57;
          v50[1] = v58;
          OUTLINED_FUNCTION_16_28(v49, v50);
        }

        return a3;
      }

      v45 = sub_1DD4CF1AC();
      v46 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v45);
      OUTLINED_FUNCTION_9_36(xmmword_1DD653A50, v46, v47);
      swift_willThrow();
    }

    else
    {
      v37 = sub_1DD4CF1AC();
      v38 = OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v37);
      OUTLINED_FUNCTION_9_36(xmmword_1DD653A60, v38, v39);
      swift_willThrow();
    }
  }

  return a3;
}

uint64_t sub_1DD4CB510(uint64_t a1)
{
  v4 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_25();
  v8 = sub_1DD4055B0();
  if (sqlite3_db_readonly(v8, 0) == 1)
  {
    v9 = sub_1DD4CA84C();
    v10 = OUTLINED_FUNCTION_4_42(&unk_1F58B8CF0, v9);
    return OUTLINED_FUNCTION_2_57(v10, v11);
  }

  else
  {
    v28 = a1;
    v13 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    [v13 setFormatOptions_];
    v14 = sub_1DD63CFA8();
    v15 = [v13 stringFromDate_];

    v27 = sub_1DD63FDD8();
    v17 = v16;

    v18 = [objc_opt_self() now];
    sub_1DD63D048();

    v19 = sub_1DD63CFA8();
    (*(v6 + 8))(v2, v4);
    v20 = [v13 stringFromDate_];

    v21 = sub_1DD63FDD8();
    v23 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    v25 = MEMORY[0x1E69E6530];
    *(inited + 16) = xmmword_1DD6444F0;
    *(inited + 56) = v25;
    *(inited + 64) = &off_1F58C4E98;
    *(inited + 32) = v28;
    v26 = MEMORY[0x1E69E6158];
    *(inited + 96) = MEMORY[0x1E69E6158];
    *(inited + 104) = &off_1F58C4E78;
    *(inited + 72) = v27;
    *(inited + 80) = v17;
    *(inited + 136) = v26;
    *(inited + 144) = &off_1F58C4E78;
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    sub_1DD4061B8(0xD000000000000028, 0x80000001DD66E4C0, inited);
    if (!v1)
    {
    }

    swift_setDeallocating();
    return sub_1DD46CB4C();
  }
}

uint64_t sub_1DD4CB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1DD4055B0();
  if (sqlite3_db_readonly(v9, 0) == 1)
  {
    v10 = sub_1DD4CA84C();
    v11 = OUTLINED_FUNCTION_4_42(&unk_1F58B8CF0, v10);
    return OUTLINED_FUNCTION_2_57(v11, v12);
  }

  if (!a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD643F90;
    v17 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &off_1F58C4E78;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    OUTLINED_FUNCTION_20_21(0xD000000000000027, 0x80000001DD66E3E0, inited);
    if (!v4)
    {

      swift_setDeallocating();
      sub_1DD46CB4C();
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1DD643F90;
      *(v20 + 56) = v17;
      *(v20 + 64) = &off_1F58C4E78;
      *(v20 + 32) = a1;
      *(v20 + 40) = a2;

      OUTLINED_FUNCTION_20_21(0xD000000000000028, 0x80000001DD66E410, v20);
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1DD643F80;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = &off_1F58C4E78;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 96) = v15;
  *(v14 + 104) = &off_1F58C4E78;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_20_21(0xD000000000000038, 0x80000001DD66E440, v14);
  if (!v4)
  {

    swift_setDeallocating();
    sub_1DD46CB4C();
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_1DD643F80;
    v19 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = &off_1F58C4E78;
    *(v18 + 72) = a3;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *(v18 + 96) = v19;
    *(v18 + 104) = &off_1F58C4E78;
    *(v18 + 80) = a4;

    OUTLINED_FUNCTION_20_21(0xD000000000000039, 0x80000001DD66E480, v18);

LABEL_10:
    swift_setDeallocating();
    return sub_1DD46CB4C();
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

uint64_t sub_1DD4CBA94(__int128 *a1)
{
  v3 = sub_1DD4055B0();
  if (sqlite3_db_readonly(v3, 0) == 1)
  {
    v4 = sub_1DD4CA84C();
    v5 = OUTLINED_FUNCTION_4_42(&unk_1F58B8CF0, v4);
    return OUTLINED_FUNCTION_2_57(v5, v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    v10 = a1[1];
    v56 = *a1;
    v9 = v56;
    *(inited + 16) = xmmword_1DD653A80;
    *(inited + 32) = v9;
    v11 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &off_1F58C4E78;
    v55 = v10;
    *(inited + 96) = v11;
    *(inited + 104) = &off_1F58C4E78;
    *(inited + 72) = v10;
    v12 = sub_1DD4CC2EC(*(a1 + 32));
    *(inited + 136) = v11;
    *(inited + 144) = &off_1F58C4E78;
    *(inited + 112) = v12;
    *(inited + 120) = v13;
    v14 = MEMORY[0x1E69E6530];
    v15 = *(a1 + 6);
    *(inited + 152) = *(a1 + 5);
    *(inited + 176) = v14;
    *(inited + 184) = &off_1F58C4E98;
    *(inited + 216) = v14;
    *(inited + 224) = &off_1F58C4E98;
    *(inited + 192) = v15;
    v16 = 0xEC00000065746144;
    v17 = 0x6574756C6F736241;
    switch(*(a1 + 56))
    {
      case 1:
        v16 = 0xE800000000000000;
        v17 = 0x7473694C65746144;
        break;
      case 2:
        v16 = 0x80000001DD668C70;
        v17 = 0xD000000000000017;
        break;
      case 3:
        v16 = 0x80000001DD668C90;
        v17 = 0xD000000000000014;
        break;
      default:
        break;
    }

    *(inited + 256) = v11;
    *(inited + 264) = &off_1F58C4E78;
    *(inited + 232) = v17;
    *(inited + 240) = v16;
    if (*(a1 + 72))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 280) = 0;
      *(inited + 288) = 0;
    }

    else
    {
      v18 = *(a1 + 8);
      v19 = &off_1F58C4E98;
      v20 = MEMORY[0x1E69E6530];
    }

    *(inited + 272) = v18;
    *(inited + 296) = v20;
    *(inited + 304) = v19;
    if (*(a1 + 88))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 320) = 0;
      *(inited + 328) = 0;
    }

    else
    {
      v21 = *(a1 + 10);
      v22 = &off_1F58C4E98;
      v23 = MEMORY[0x1E69E6530];
    }

    *(inited + 312) = v21;
    *(inited + 336) = v23;
    *(inited + 344) = v22;
    v24 = *(a1 + 89);
    if (v24 == 7)
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 360) = 0;
      *(inited + 368) = 0;
    }

    else
    {
      v25 = v24 + 1;
      v26 = &off_1F58C4E98;
      v27 = MEMORY[0x1E69E6530];
    }

    *(inited + 352) = v25;
    *(inited + 376) = v27;
    *(inited + 384) = v26;
    if (*(a1 + 104))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 400) = 0;
      *(inited + 408) = 0;
    }

    else
    {
      v28 = *(a1 + 12);
      v29 = &off_1F58C4E98;
      v30 = MEMORY[0x1E69E6530];
    }

    *(inited + 392) = v28;
    *(inited + 416) = v30;
    *(inited + 424) = v29;
    if (*(a1 + 120))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 440) = 0;
      *(inited + 448) = 0;
    }

    else
    {
      v31 = *(a1 + 14);
      v32 = &off_1F58C4E98;
      v33 = MEMORY[0x1E69E6530];
    }

    *(inited + 432) = v31;
    *(inited + 456) = v33;
    *(inited + 464) = v32;
    if (*(a1 + 136))
    {
      OUTLINED_FUNCTION_3_47();
      *(inited + 480) = 0;
      *(inited + 488) = 0;
    }

    else
    {
      v34 = *(a1 + 16);
      v35 = &off_1F58C4E98;
      v36 = MEMORY[0x1E69E6530];
    }

    *(inited + 472) = v34;
    *(inited + 496) = v36;
    *(inited + 504) = v35;
    v54 = a1[9];
    v37 = *(&v54 + 1);
    if (*(&v54 + 1))
    {
      v38 = &off_1F58C4E78;
      v39 = MEMORY[0x1E69E6158];
      v40 = v54;
    }

    else
    {
      v40 = 0;
      v39 = 0;
      v38 = 0;
      *(inited + 528) = 0;
    }

    *(inited + 512) = v40;
    *(inited + 520) = v37;
    *(inited + 536) = v39;
    *(inited + 544) = v38;
    v41 = *(a1 + 160);
    if (v41 == 12)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      *(inited + 568) = 0;
    }

    else
    {
      v42 = sub_1DD4CC2EC(v41);
      v45 = &off_1F58C4E78;
      v44 = MEMORY[0x1E69E6158];
    }

    *(inited + 552) = v42;
    *(inited + 560) = v43;
    *(inited + 576) = v44;
    *(inited + 584) = v45;
    v46 = *(a1 + 161);
    if (v46 == 2)
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      *(inited + 608) = 0;
    }

    else
    {
      v48 = 0x80000001DD668CC0;
      v51 = (v46 & 1) == 0;
      v47 = 0x697375427478656ELL;
      if (v51)
      {
        v48 = 0xEF7961447373656ELL;
      }

      else
      {
        v47 = 0xD000000000000012;
      }

      v50 = &off_1F58C4E78;
      v49 = MEMORY[0x1E69E6158];
    }

    *(inited + 592) = v47;
    *(inited + 600) = v48;
    *(inited + 616) = v49;
    *(inited + 624) = v50;
    v52 = *(a1 + 162);
    if (v52 == 2 || (v52 & 1) == 0)
    {
      *(inited + 664) = 0;
      *(inited + 632) = 0u;
      *(inited + 648) = 0u;
    }

    else
    {
      *(inited + 656) = v11;
      *(inited + 664) = &off_1F58C4E78;
      *(inited + 632) = 0x676E696E657665;
      *(inited + 640) = 0xE700000000000000;
    }

    sub_1DD406EC4(&v56, v53);
    sub_1DD406EC4(&v55, v53);
    sub_1DD3CDD14(&v54, v53, &unk_1ECCDFDF0, &unk_1DD644950);
    sub_1DD4061B8(0xD000000000000063, 0x80000001DD66E370, inited);
    if (!v1)
    {
    }

    swift_setDeallocating();
    return sub_1DD46CB4C();
  }
}

uint64_t sub_1DD4CBF1C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x697375427478656ELL;
  }
}

uint64_t sub_1DD4CBF64(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4CBFB8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x697375427478656ELL;
  }

  if (v2)
  {
    v4 = 0xEF7961447373656ELL;
  }

  else
  {
    v4 = 0x80000001DD668CC0;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x697375427478656ELL;
  }

  if (a2)
  {
    v6 = 0x80000001DD668CC0;
  }

  else
  {
    v6 = 0xEF7961447373656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

uint64_t sub_1DD4CC08C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD4CBF64(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD4CC0BC()
{
  v1 = OUTLINED_FUNCTION_19_22();
  result = sub_1DD4CBF1C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DD4CC1E8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD4C61F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD4CC214()
{
  v1 = OUTLINED_FUNCTION_19_22();
  result = sub_1DD4CC1C4(v1);
  *v0 = result;
  return result;
}

unint64_t sub_1DD4CC2EC(char a1)
{
  result = 0x5453494844445542;
  switch(a1)
  {
    case 1:
      result = 0x4553454E494843;
      break;
    case 2:
      result = 0x574552424548;
      break;
    case 3:
      result = 0x49524A4948;
      break;
    case 4:
      result = 0x55444E4948;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x43494D414C5349;
      break;
    case 7:
      result = 0x4149524F47455247;
      break;
    case 8:
      result = 0x4553454E4150414ALL;
      break;
    case 9:
      result = 0x4E41494C554ALL;
      break;
    case 10:
      result = 0x4E414953524550;
      break;
    case 11:
      result = 4411218;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD4CC41C(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD4CC468(unsigned __int8 a1, char a2)
{
  v2 = 0x5453494844445542;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x5453494844445542;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x4553454E494843;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x574552424548;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x49524A4948;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x55444E4948;
      break;
    case 5:
      v5 = 0xD000000000000010;
      v3 = 0x80000001DD668C10;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x43494D414C5349;
      break;
    case 7:
      v5 = 0x4149524F47455247;
      v3 = 0xE90000000000004ELL;
      break;
    case 8:
      v5 = 0x4553454E4150414ALL;
      break;
    case 9:
      v3 = 0xE600000000000000;
      v5 = 0x4E41494C554ALL;
      break;
    case 10:
      v3 = 0xE700000000000000;
      v5 = 0x4E414953524550;
      break;
    case 11:
      v3 = 0xE300000000000000;
      v5 = 4411218;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x4553454E494843;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x574552424548;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x49524A4948;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x55444E4948;
      break;
    case 5:
      v2 = 0xD000000000000010;
      v6 = 0x80000001DD668C10;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x43494D414C5349;
      break;
    case 7:
      v2 = 0x4149524F47455247;
      v6 = 0xE90000000000004ELL;
      break;
    case 8:
      v2 = 0x4553454E4150414ALL;
      break;
    case 9:
      v6 = 0xE600000000000000;
      v2 = 0x4E41494C554ALL;
      break;
    case 10:
      v6 = 0xE700000000000000;
      v2 = 0x4E414953524550;
      break;
    case 11:
      v6 = 0xE300000000000000;
      v2 = 4411218;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

unint64_t sub_1DD4CC728@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD4CC41C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DD4CC758()
{
  v1 = OUTLINED_FUNCTION_19_22();
  result = sub_1DD4CC2EC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1DD4CC860(char a1)
{
  result = 0x6574756C6F736241;
  switch(a1)
  {
    case 1:
      result = 0x7473694C65746144;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD4CC8F8(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD4CC944(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6574756C6F736241;
  v4 = a1;
  v5 = 0x6574756C6F736241;
  v6 = 0xEC00000065746144;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x7473694C65746144;
      break;
    case 2:
      v6 = 0x80000001DD668C70;
      v5 = 0xD000000000000017;
      break;
    case 3:
      v5 = 0xD000000000000014;
      v6 = 0x80000001DD668C90;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7473694C65746144;
      break;
    case 2:
      v2 = 0x80000001DD668C70;
      v3 = 0xD000000000000017;
      break;
    case 3:
      v3 = 0xD000000000000014;
      v2 = 0x80000001DD668C90;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

unint64_t sub_1DD4CCAC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD4CC8F8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DD4CCAF4()
{
  v1 = OUTLINED_FUNCTION_19_22();
  result = sub_1DD4CC860(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DD4CCBFC(uint64_t *a1, uint64_t a2)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_21_19(*(a1 + 32));
  if (v5 && v2 == v8)
  {
  }

  else
  {
    v10 = OUTLINED_FUNCTION_17_27(v7);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48) || (sub_1DD3B0AD8(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  if (a1[9])
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v11)
    {
      return 0;
    }
  }

  if (a1[11])
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v12)
    {
      return 0;
    }
  }

  v13 = *(a1 + 89);
  v14 = *(a2 + 89);
  if (v13 == 7)
  {
    if (v14 != 7)
    {
      return 0;
    }
  }

  else if (v13 != v14)
  {
    return 0;
  }

  if (a1[13])
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v15)
    {
      return 0;
    }
  }

  if (a1[15])
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v16)
    {
      return 0;
    }
  }

  if (a1[17])
  {
    if (!*(a2 + 136))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_14();
    if (v17)
    {
      return 0;
    }
  }

  v18 = a1[19];
  v19 = *(a2 + 152);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = a1[18] == *(a2 + 144) && v18 == v19;
    if (!v20 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = *(a1 + 160);
  v22 = *(a2 + 160);
  if (v21 == 12)
  {
    if (v22 != 12)
    {
      return 0;
    }

LABEL_65:
    v27 = *(a1 + 161);
    v28 = *(a2 + 161);
    if (v27 == 2)
    {
      if (v28 != 2)
      {
        return 0;
      }
    }

    else if (v28 == 2 || (sub_1DD3B0CFC(v27 & 1, v28 & 1) & 1) == 0)
    {
      return 0;
    }

    v29 = *(a1 + 162);
    v30 = *(a2 + 162);
    if (v29 == 2)
    {
      if (v30 != 2)
      {
        return 0;
      }
    }

    else if (v30 == 2 || ((v30 ^ v29) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v22 != 12)
  {
    v23 = OUTLINED_FUNCTION_21_19(v21);
    if (v5 && v2 == v24)
    {
    }

    else
    {
      v26 = OUTLINED_FUNCTION_17_27(v23);

      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_65;
  }

  return 0;
}

uint64_t sub_1DD4CCEC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796164696C6F68 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1918985593 && a2 == 0xE400000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6572727563636FLL && a2 == 0xEA00000000006563;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 7954788 && a2 == 0xE300000000000000;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656577666F796164 && a2 == 0xE90000000000006BLL;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6964726F796164 && a2 == 0xEA00000000006C61;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x65766974616C6572 && a2 == 0xEA00000000006F74;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x80000001DD66E310 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x646576726573626FLL && a2 == 0xE800000000000000;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x676E696E657665 && a2 == 0xE700000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1DD640CD8();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
    }
  }
}

unint64_t sub_1DD4CD38C(char a1)
{
  result = 0x796164696C6F68;
  switch(a1)
  {
    case 1:
      result = 0x7972746E756F63;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 1918985593;
      break;
    case 4:
      result = 0x6E6572727563636FLL;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x68746E6F6DLL;
      break;
    case 7:
      result = 7954788;
      break;
    case 8:
      result = 0x656577666F796164;
      break;
    case 9:
      result = 0x6E6964726F796164;
      break;
    case 10:
      result = 0x74657366666FLL;
      break;
    case 11:
      result = 0x6E6F697461727564;
      break;
    case 12:
      result = 0x65766974616C6572;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x646576726573626FLL;
      break;
    case 15:
      result = 0x676E696E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4CD524(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDBE8, &qword_1DD653C98);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4CF3C4();
  sub_1DD640EF8();
  v14 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    OUTLINED_FUNCTION_0_90(1);
    sub_1DD640C18();
    v14 = v3[32];
    v13 = 2;
    sub_1DD4CAE60();
    OUTLINED_FUNCTION_11_32();
    sub_1DD640C68();
    v14 = 3;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C48();
    v14 = 4;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C48();
    v14 = v3[56];
    v13 = 5;
    sub_1DD4CF514();
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C68();
    OUTLINED_FUNCTION_0_90(6);
    sub_1DD640BF8();
    OUTLINED_FUNCTION_0_90(7);
    sub_1DD640BF8();
    v14 = v3[89];
    v13 = 8;
    sub_1DD4CF568();
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C08();
    OUTLINED_FUNCTION_0_90(9);
    sub_1DD640BF8();
    OUTLINED_FUNCTION_0_90(10);
    sub_1DD640BF8();
    OUTLINED_FUNCTION_0_90(11);
    sub_1DD640BF8();
    OUTLINED_FUNCTION_0_90(12);
    sub_1DD640BC8();
    v14 = v3[160];
    v13 = 13;
    OUTLINED_FUNCTION_11_32();
    sub_1DD640C08();
    v14 = v3[161];
    v13 = 14;
    sub_1DD4CF5BC();
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C08();
    v14 = 15;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640BD8();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1DD4CD870@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDBC0, &qword_1DD653C90);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4CF3C4();
  sub_1DD640ED8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v33 = a2;
    OUTLINED_FUNCTION_6_44();
    v32 = sub_1DD640B28();
    v35 = v6;
    OUTLINED_FUNCTION_1_68(1);
    v31 = sub_1DD640B28();
    v34 = v7;
    sub_1DD4CAE0C();
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B78();
    OUTLINED_FUNCTION_1_68(3);
    v30 = sub_1DD640B58();
    OUTLINED_FUNCTION_1_68(4);
    v29 = sub_1DD640B58();
    sub_1DD4CF418();
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B78();
    OUTLINED_FUNCTION_1_68(6);
    v28 = sub_1DD640B08();
    v77 = v8 & 1;
    OUTLINED_FUNCTION_1_68(7);
    v27 = sub_1DD640B08();
    v75 = v9 & 1;
    sub_1DD4CF46C();
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B18();
    OUTLINED_FUNCTION_1_68(9);
    v10 = sub_1DD640B08();
    v72 = v11 & 1;
    OUTLINED_FUNCTION_6_44();
    v12 = sub_1DD640B08();
    v70 = v13 & 1;
    OUTLINED_FUNCTION_6_44();
    v26 = sub_1DD640B08();
    v68 = v14 & 1;
    LOBYTE(v37[0]) = 12;
    OUTLINED_FUNCTION_6_44();
    v25 = sub_1DD640AD8();
    v16 = v15;
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B18();
    LOBYTE(v36[0]) = 14;
    sub_1DD4CF4C0();
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_6_44();
    sub_1DD640B18();
    v66 = 15;
    OUTLINED_FUNCTION_6_44();
    v24 = sub_1DD640AE8();
    v17 = OUTLINED_FUNCTION_8_38();
    v18(v17);
    v36[0] = v32;
    v36[1] = v35;
    v36[2] = v31;
    v36[3] = v34;
    LOBYTE(v36[4]) = 0;
    v36[5] = v30;
    v36[6] = v29;
    LOBYTE(v36[7]) = 0;
    *(&v36[7] + 1) = *v78;
    HIDWORD(v36[7]) = *&v78[3];
    v36[8] = v28;
    LODWORD(v80) = v77;
    LOBYTE(v36[9]) = v77;
    *(&v36[9] + 1) = *v76;
    HIDWORD(v36[9]) = *&v76[3];
    v36[10] = v27;
    v23 = v75;
    LOWORD(v36[11]) = v75;
    *(&v36[11] + 2) = v73;
    HIWORD(v36[11]) = v74;
    v36[12] = v10;
    v22 = v72;
    LOBYTE(v36[13]) = v72;
    *(&v36[13] + 1) = *v71;
    HIDWORD(v36[13]) = *&v71[3];
    v36[14] = v12;
    v21 = v70;
    LOBYTE(v36[15]) = v70;
    HIDWORD(v36[15]) = *&v69[3];
    *(&v36[15] + 1) = *v69;
    v36[16] = v26;
    v20 = v68;
    LOBYTE(v36[17]) = v68;
    HIDWORD(v36[17]) = *&v67[3];
    *(&v36[17] + 1) = *v67;
    v36[18] = v25;
    v36[19] = v16;
    LOWORD(v36[20]) = 3084;
    BYTE2(v36[20]) = v24;
    sub_1DD4CA79C(v36, v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37[0] = v32;
    v37[1] = v35;
    v37[2] = v31;
    v37[3] = v34;
    v38 = 0;
    *v39 = v79[0];
    *&v39[3] = *(v79 + 3);
    v40 = v30;
    v41 = v29;
    v42 = 0;
    *v43 = *v78;
    *&v43[3] = *&v78[3];
    v44 = v28;
    v45 = v80;
    *&v46[3] = *&v76[3];
    *v46 = *v76;
    v47 = v27;
    v48 = v23;
    v49 = 0;
    v50 = v73;
    v51 = v74;
    v52 = v10;
    v53 = v22;
    *v54 = *v71;
    *&v54[3] = *&v71[3];
    v55 = v12;
    v56 = v21;
    *&v57[3] = *&v69[3];
    *v57 = *v69;
    v58 = v26;
    v59 = v20;
    *&v60[3] = *&v67[3];
    *v60 = *v67;
    v61 = v25;
    v62 = v16;
    v63 = 12;
    v64 = 12;
    v65 = v24;
    sub_1DD4CA7F8(v37);
    return memcpy(v33, v36, 0xA3uLL);
  }
}

uint64_t sub_1DD4CDF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4CCEC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4CDFA0(uint64_t a1)
{
  v2 = sub_1DD4CF3C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4CDFDC(uint64_t a1)
{
  v2 = sub_1DD4CF3C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DD4CE018@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DD4CD870(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xA3uLL);
  }

  return result;
}

uint64_t sub_1DD4CE080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t i)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  v11 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 96) = v11;
  *(inited + 104) = &off_1F58C4E78;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  v12 = sub_1DD4CC2EC(i);
  *(inited + 136) = v11;
  *(inited + 144) = &off_1F58C4E78;
  *(inited + 112) = v12;
  *(inited + 120) = v13;

  v14 = sub_1DD4061B8(0xD00000000000004CLL, 0x80000001DD66E2C0, inited);
  if (v24)
  {
    swift_setDeallocating();
    sub_1DD46CB4C();
  }

  else
  {
    v16 = v14;
    swift_setDeallocating();
    sub_1DD46CB4C();
    sub_1DD58B560(v16);
    for (i = MEMORY[0x1E69E7CC0]; ; memcpy((i + 168 * v20 + 32), __src, 0xA3uLL))
    {
      sub_1DD5D2E58();
      v18 = v17;
      if (!v17)
      {
        break;
      }

      sub_1DD4CE2DC(v19, v18, __src);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3C032C();
        i = v21;
      }

      v20 = *(i + 16);
      if (v20 >= *(i + 24) >> 1)
      {
        sub_1DD3C032C();
        i = v22;
      }

      *(i + 16) = v20 + 1;
    }
  }

  return i;
}

uint64_t sub_1DD4CE2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1DD4CE934(0x796164696C6F68, 0xE700000000000000, a1, a2);
  if (!v3)
  {
    v9 = v8;
    if (!v8)
    {
      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653AE0;
LABEL_5:
      *v13 = v14;
      *(v13 + 16) = 0;
      *(v13 + 24) = 3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = sub_1DD4CE934(0x7972746E756F63, 0xE700000000000000, a1, a2);
    v15 = v12;
    if (!v12)
    {
      sub_1DD4CF1AC();
      swift_allocError();
      *v18 = xmmword_1DD653AD0;
      *(v18 + 16) = 0;
      *(v18 + 24) = 3;
      swift_willThrow();
    }

    v16 = v11;
    v17 = sub_1DD4CECB8(0x7261646E656C6163, 0xE800000000000000, a1, a2);
    v19 = v17;
    if (v17 == 12)
    {

      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653AC0;
      goto LABEL_5;
    }

    v20 = sub_1DD4CEA5C(1918985593, 0xE400000000000000, a1, a2);
    if (v21)
    {

      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653AB0;
      goto LABEL_5;
    }

    v49 = v20;
    v22 = sub_1DD4CEA5C(0x6E6572727563636FLL, 0xEA00000000006563, a1, a2);
    if (v23)
    {

      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653AA0;
      goto LABEL_5;
    }

    v48 = v22;
    v50 = sub_1DD4CEF20(1701869940, 0xE400000000000000, a1, a2);
    if (v50 == 4)
    {

      sub_1DD4CF1AC();
      swift_allocError();
      v14 = xmmword_1DD653A90;
      goto LABEL_5;
    }

    v47 = sub_1DD4CEA5C(0x68746E6F6DLL, 0xE500000000000000, a1, a2);
    v46 = v24;
    v45 = sub_1DD4CEA5C(7954788, 0xE300000000000000, a1, a2);
    v44 = v25;
    v43 = sub_1DD4CEB84(0x656577666F796164, 0xE90000000000006BLL, a1, a2);
    v42 = sub_1DD4CEA5C(0x6E6964726F796164, 0xEA00000000006C61, a1, a2);
    v41 = v26;
    v40 = sub_1DD4CEA5C(0x74657366666FLL, 0xE600000000000000, a1, a2);
    v39 = v27;
    v38 = sub_1DD4CEA5C(0x6E6F697461727564, 0xE800000000000000, a1, a2);
    v37 = v28;
    v35 = sub_1DD4CE934(0x65766974616C6572, 0xEA00000000006F74, a1, a2);
    v36 = v29;
    v34 = sub_1DD4CECB8(0xD000000000000010, 0x80000001DD66E310, a1, a2);
    v33 = sub_1DD4CEDEC(0x646576726573626FLL, 0xE800000000000000, a1, a2);
    result = sub_1DD4CE934(0x676E697472617473, 0xE800000000000000, a1, a2);
    if (v30)
    {
      if (result == 0x676E696E657665 && v30 == 0xE700000000000000)
      {
        v32 = 1;
      }

      else
      {
        v32 = sub_1DD640CD8();
      }
    }

    else
    {
      v32 = 0;
    }

    *a3 = v10;
    *(a3 + 8) = v9;
    *(a3 + 16) = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v19;
    *(a3 + 40) = v49;
    *(a3 + 48) = v48;
    *(a3 + 56) = v50;
    *(a3 + 64) = v47;
    *(a3 + 72) = v46 & 1;
    *(a3 + 80) = v45;
    *(a3 + 88) = v44 & 1;
    *(a3 + 89) = v43;
    *(a3 + 96) = v42;
    *(a3 + 104) = v41 & 1;
    *(a3 + 112) = v40;
    *(a3 + 120) = v39 & 1;
    *(a3 + 128) = v38;
    *(a3 + 136) = v37 & 1;
    *(a3 + 144) = v35;
    *(a3 + 152) = v36;
    *(a3 + 160) = v34;
    *(a3 + 161) = v33;
    *(a3 + 162) = v32 & 1;
  }

  return result;
}

unint64_t sub_1DD4CE934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    v11 = sub_1DD4CF1AC();
    OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v11);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = v10;
    *(v12 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(a4 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if ((swift_dynamicCast() & 1) != 0 && v14)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DD4CEA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(a4 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v13, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DD4CEB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(a4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v13, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    result = sub_1DD4C61F8(v12);
    if (result != 7)
    {
      return result;
    }

    __break(1u);
  }

  return 7;
}

unint64_t sub_1DD4CECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(a4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v13, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    result = sub_1DD4CC41C(v12);
    if (result != 12)
    {
      return result;
    }

    __break(1u);
  }

  return 12;
}

unint64_t sub_1DD4CEDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(a4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v13, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    result = sub_1DD4CBF64(v12);
    if (result != 2)
    {
      return result;
    }

    __break(1u);
  }

  return 2;
}

unint64_t sub_1DD4CEF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DD59B63C(a1, a2, a3);
  if (v8)
  {

    v10 = sub_1DD59402C(v9);
    sub_1DD4CF1AC();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(a4 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a4 + 40 * result + 32, v13, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    result = sub_1DD4CC8F8(v12);
    if (result != 4)
    {
      return result;
    }

    __break(1u);
  }

  return 4;
}

unint64_t sub_1DD4CF054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t a5@<X2>)
{
  result = sub_1DD59B63C(a1, a2, a5);
  if (v10)
  {

    v12 = sub_1DD59402C(v11);
    v13 = sub_1DD4CF1AC();
    OUTLINED_FUNCTION_4_42(&type metadata for QueryError, v13);
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = v12;
    *(v14 + 24) = 1;
    return swift_willThrow();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(a3 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_1DD3CDD14(a3 + 40 * result + 32, v18, &qword_1ECCDCF98, &qword_1DD6547F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
  if (swift_dynamicCast())
  {
    sub_1DD63D008();
    v15 = sub_1DD63D078();
    v16 = a4;
    v17 = 0;
  }

  else
  {
    v15 = sub_1DD63D078();
    v16 = a4;
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
}

unint64_t sub_1DD4CF1AC()
{
  result = qword_1EE1632E0;
  if (!qword_1EE1632E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1632E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference15HolidaysDBErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DD4CF238(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD4CF278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD4CF2CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DD4CF308(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 163))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1DD4CF348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 162) = 0;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 163) = 1;
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

    *(result + 163) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD4CF3C4()
{
  result = qword_1ECCDDBC8;
  if (!qword_1ECCDDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBC8);
  }

  return result;
}

unint64_t sub_1DD4CF418()
{
  result = qword_1ECCDDBD0;
  if (!qword_1ECCDDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBD0);
  }

  return result;
}

unint64_t sub_1DD4CF46C()
{
  result = qword_1ECCDDBD8;
  if (!qword_1ECCDDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBD8);
  }

  return result;
}

unint64_t sub_1DD4CF4C0()
{
  result = qword_1ECCDDBE0;
  if (!qword_1ECCDDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBE0);
  }

  return result;
}

unint64_t sub_1DD4CF514()
{
  result = qword_1ECCDDBF0;
  if (!qword_1ECCDDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBF0);
  }

  return result;
}

unint64_t sub_1DD4CF568()
{
  result = qword_1ECCDDBF8;
  if (!qword_1ECCDDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDBF8);
  }

  return result;
}

unint64_t sub_1DD4CF5BC()
{
  result = qword_1ECCDDC00;
  if (!qword_1ECCDDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HolidaysDBRow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        break;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD4CF6EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD4CF7C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD4CF89C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD4CF974(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        break;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4CFA4C()
{
  result = qword_1ECCDDC08;
  if (!qword_1ECCDDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC08);
  }

  return result;
}

unint64_t sub_1DD4CFAAC()
{
  result = qword_1ECCDDC10;
  if (!qword_1ECCDDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC10);
  }

  return result;
}

unint64_t sub_1DD4CFB00()
{
  result = qword_1ECCDDC18;
  if (!qword_1ECCDDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC18);
  }

  return result;
}

unint64_t sub_1DD4CFB54()
{
  result = qword_1ECCDDC20;
  if (!qword_1ECCDDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC20);
  }

  return result;
}

unint64_t sub_1DD4CFBAC()
{
  result = qword_1ECCDDC28;
  if (!qword_1ECCDDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC28);
  }

  return result;
}

unint64_t sub_1DD4CFC04()
{
  result = qword_1ECCDDC30;
  if (!qword_1ECCDDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC30);
  }

  return result;
}

unint64_t sub_1DD4CFC5C()
{
  result = qword_1ECCDDC38;
  if (!qword_1ECCDDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC38);
  }

  return result;
}

unint64_t sub_1DD4CFCB0()
{
  result = qword_1ECCDDC40;
  if (!qword_1ECCDDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC40);
  }

  return result;
}

unint64_t sub_1DD4CFD04()
{
  result = qword_1ECCDDC48;
  if (!qword_1ECCDDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC48);
  }

  return result;
}

unint64_t sub_1DD4CFD58()
{
  result = qword_1ECCDDC50;
  if (!qword_1ECCDDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC50);
  }

  return result;
}

unint64_t sub_1DD4CFDAC()
{
  result = qword_1ECCDDC58;
  if (!qword_1ECCDDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC58);
  }

  return result;
}

void sub_1DD4CFE8C(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    v3 = sub_1DD58716C();
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v4;
  sub_1DD4D3414(v5);
  *a1 = v3;
}

uint64_t sub_1DD4CFF04(char a1, uint64_t a2)
{
  v5 = dispatch_semaphore_create(1);
  *(v2 + 16) = a1;
  *(v2 + 24) = v5;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_1DD4CFF44()
{
  v1 = v0;
  v2 = *(v0 + 24);

  v3 = v2;
  sub_1DD6404F8();
  sub_1DD4CFFC0(v1, &v5);
  sub_1DD640508();

  return v5;
}

void sub_1DD4CFFC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1DD63CE68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v26[-v8];
  v10 = *(a1 + 32);
  if (v10)
  {
    *a2 = v10;
  }

  else
  {
    sub_1DD4D02D4(*(a1 + 16), &v26[-v8]);
    if (v2)
    {
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v15 = sub_1DD63F9F8();
      __swift_project_value_buffer(v15, qword_1EE16EFE0);
      v16 = v2;
      v17 = sub_1DD63F9D8();
      v18 = sub_1DD640378();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v19 = 136315138;
        swift_getErrorValue();
        v27 = v18;
        v20 = sub_1DD640D88();
        v22 = a2;
        v23 = sub_1DD39565C(v20, v21, &v29);

        *(v19 + 4) = v23;
        a2 = v22;
        _os_log_impl(&dword_1DD38D000, v17, v27, "Caught error while trying to open holidays database: %s", v19, 0xCu);
        v24 = v28;
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1E12B3DA0](v24, -1, -1);
        MEMORY[0x1E12B3DA0](v19, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v28 = a2;
      v11 = sub_1DD63CDD8();
      v13 = v12;
      v14 = *(a1 + 16);
      type metadata accessor for Connection();
      swift_allocObject();
      v25 = sub_1DD4055EC(v11, v13, v14);
      (*(v6 + 8))(v9, v5);
      *(a1 + 32) = v25;

      a2 = v28;
    }

    *a2 = *(a1 + 32);
  }
}

uint64_t sub_1DD4D02D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v8 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DD643F90;
  v10 = sub_1DD6408F8();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1DD392BD8();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  OUTLINED_FUNCTION_9_37();
  sub_1DD63F998();

  if (qword_1EE162910 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE162918;
  sub_1DD6404F8();
  sub_1DD4D0518(a1 & 1, a2);
  sub_1DD640508();

  sub_1DD6404C8();
  sub_1DD63F9A8();
  return (*(v3 + 8))(v7, v17);
}

uint64_t sub_1DD4D0518@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v5 = sub_1DD63CE68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  result = sub_1DD6282D8(0xD000000000000010, 0x80000001DD66E620);
  if (!v2)
  {
    v16[9] = a1;
    v17 = a2;
    v13 = [objc_opt_self() defaultManager];
    sub_1DD63CE58();
    v14 = sub_1DD63FDA8();

    v15 = [v13 fileExistsAtPath_];

    if ((v15 & 1) == 0)
    {
      sub_1DD4D1138();
      sub_1DD4D0C88(v8, v11);
      (*(v6 + 8))(v8, v5);
    }

    return (*(v6 + 32))(v17, v11, v5);
  }

  return result;
}

uint64_t sub_1DD4D0964(uint64_t a1)
{
  v33 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v32 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v31 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  sub_1DD63D288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v19 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD643F90;
  (*(v21 + 104))(v23 + v22, *MEMORY[0x1E6969A00], v19);
  sub_1DD56BDEC();
  v24 = [objc_opt_self() now];
  sub_1DD63D048();

  sub_1DD63D1F8();

  (*(v2 + 8))(v6, v33);
  (*(v8 + 8))(v12, v32);
  sub_1DD63C968();
  LOBYTE(v21) = v25;
  result = (*(v14 + 8))(v18, v31);
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v27 = sub_1DD640CB8();
    v29 = v28;

    MEMORY[0x1E12B2260](v27, v29);

    return a1;
  }

  return result;
}

uint64_t sub_1DD4D0C88(uint64_t a1, void *a2)
{
  v17 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v8 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DD643F90;
  v10 = sub_1DD6408F8();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1DD392BD8();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  OUTLINED_FUNCTION_9_37();
  sub_1DD63F998();

  sub_1DD4D0E74(v15, a1, a2);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return (*(v3 + 8))(v7, v17);
}

void sub_1DD4D0E74(uint64_t a1, uint64_t a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_1DD63CE68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DD4D0964(0xD000000000000011);
  sub_1DD6282D8(v12, v13);
  if (!v3)
  {
    sub_1DD628448();
    v21[1] = a3;
    v21[0] = objc_opt_self();
    v14 = [v21[0] defaultManager];
    v15 = sub_1DD63CE08();
    v16 = sub_1DD63CE08();
    v22[0] = 0;
    v17 = [v14 copyItemAtURL:v15 toURL:v16 error:v22];

    if (v17)
    {
      v18 = v22[0];
      v19 = [v21[0] defaultManager];
      sub_1DD640348();

      sub_1DD3ADFD0(v7, &qword_1ECCDBF78, &unk_1DD644440);
    }

    else
    {
      v20 = v22[0];
      sub_1DD63CD98();

      swift_willThrow();
    }

    (*(v9 + 8))(v11, v8);
  }
}

void sub_1DD4D1138()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1DD63C6B4(0x73796164696C6F68, 0xE800000000000000, 0x336574696C7173, 0xE700000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1DD63CE48();
  }

  else
  {
    type metadata accessor for HolidaysDBHolidayResolverError(0);
    v4 = sub_1DD4D33BC();
    OUTLINED_FUNCTION_13_28(v4);
    OUTLINED_FUNCTION_12_28(v5, 0x80000001DD66E5B0);
    swift_willThrow();
  }
}

dispatch_semaphore_t sub_1DD4D124C()
{
  result = dispatch_semaphore_create(1);
  qword_1EE162918 = result;
  return result;
}

uint64_t HolidaysDatabase.__deallocating_deinit()
{
  HolidaysDatabase.deinit();
  OUTLINED_FUNCTION_10_1();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4D1304(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  v8 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  if (sub_1DD4CFF44())
  {
    v32 = a2;
    v15 = *(type metadata accessor for HolidayResolutionContext(0) + 24);
    v16 = sub_1DD63D128();
    if (v17)
    {
      v18 = v17;
      v30 = v16;
      v31 = a3;
      if (qword_1EE166460 != -1)
      {
        OUTLINED_FUNCTION_4_2(&qword_1EE166460);
      }

      v19 = qword_1EE16F0C0;
      sub_1DD63F9B8();
      sub_1DD6404D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DD643F90;
      v21 = sub_1DD6408F8();
      v23 = v22;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1DD392BD8();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      OUTLINED_FUNCTION_7_37();
      sub_1DD63F998();

      sub_1DD4D166C(a1, v32, v30, v18, v31, v5, &v34);

      sub_1DD6404C8();
      OUTLINED_FUNCTION_7_37();
      sub_1DD63F9A8();

      if (v4)
      {
        return (*(v10 + 8))(v14, v8);
      }

      else
      {
        (*(v10 + 8))(v14, v8);
        return v34;
      }
    }

    else
    {
      type metadata accessor for HolidaysDBHolidayResolverError(0);
      sub_1DD4D33BC();
      swift_allocError();
      v28 = v27;
      v29 = sub_1DD63D168();
      (*(*(v29 - 8) + 16))(v28, &a3[v15], v29);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for HolidaysDBHolidayResolverError(0);
    v25 = sub_1DD4D33BC();
    OUTLINED_FUNCTION_13_28(v25);
    OUTLINED_FUNCTION_12_28(v26, 0x80000001DD66E570);
    return swift_willThrow();
  }
}

uint64_t sub_1DD4D166C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X4>, int *a6@<X6>, uint64_t *a7@<X8>)
{
  v92 = a6;
  v94 = a1;
  v85 = a7;
  v11 = sub_1DD63CBB8();
  v12 = *(v11 - 8);
  v82 = v11;
  v83 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v84 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1632D8 != -1)
  {
    goto LABEL_124;
  }

  while (1)
  {
    v14 = sub_1DD63F9F8();
    __swift_project_value_buffer(v14, qword_1EE16EFE0);

    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640368();

    v17 = os_log_type_enabled(v15, v16);
    v86 = a5;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v91 = a3;
      v20 = v19;
      v95[0] = v19;
      *v18 = 136315138;
      v21 = v94;
      *(v18 + 4) = sub_1DD39565C(v94, a2, v95);
      _os_log_impl(&dword_1DD38D000, v15, v16, "Resolving holiday: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      a3 = v91;
      MEMORY[0x1E12B3DA0](v20, -1, -1);
      v22 = v18;
      a5 = v86;
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }

    else
    {

      v21 = v94;
    }

    v23 = MEMORY[0x1E69E7CC0];
    v97 = MEMORY[0x1E69E7CC0];
    LOBYTE(v95[0]) = *a5;
    v24 = sub_1DD4CFE78(v95);
    v25 = v93;
    result = sub_1DD4CE080(v21, a2, a3, a4, v24);
    if (v25)
    {
      return result;
    }

    v80 = v23;
    v81 = 0;
    v91 = *(result + 16);
    if (!v91)
    {
      break;
    }

    v27 = 0;
    v79[1] = result;
    v90 = result + 32;
    a4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      memcpy(__dst, (v90 + 168 * v27), 0xA3uLL);
      sub_1DD4CA79C(__dst, v95);
      v28 = sub_1DD4D229C(__dst, a5);
      sub_1DD4CA7F8(__dst);
      a2 = v28 >> 62 ? sub_1DD6407B8() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a3 = a4 >> 62;
      v29 = a4 >> 62 ? sub_1DD6407B8() : *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v30 = v29 + a2;
      if (__OFADD__(v29, a2))
      {
        break;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!a3)
        {
          a3 = a4 & 0xFFFFFFFFFFFFFF8;
          if (v30 <= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_1DD6407B8();
        goto LABEL_19;
      }

      if (a3)
      {
        goto LABEL_18;
      }

LABEL_19:
      a4 = sub_1DD640918();
      a3 = a4 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v93 = v27;
      v94 = a4;
      v31 = *(a3 + 16);
      a4 = (*(a3 + 24) >> 1) - v31;
      v32 = a3 + 8 * v31;
      if (v28 >> 62)
      {
        v34 = sub_1DD6407B8();
        if (v34)
        {
          v35 = v34;
          v89 = sub_1DD6407B8();
          if (a4 < v89)
          {
            goto LABEL_119;
          }

          if (v35 < 1)
          {
            goto LABEL_121;
          }

          v87 = a3;
          v88 = a2;
          a4 = v32 + 32;
          sub_1DD4D42A8(&qword_1ECCDDC70, &qword_1ECCDDC68, &unk_1DD654410);
          for (i = 0; i != v35; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDC68, &unk_1DD654410);
            v37 = sub_1DD5B5E38(v95, i, v28);
            v39 = *v38;

            v37(v95, 0);
            *(a4 + 8 * i) = v39;
          }

          a5 = v86;
          a3 = v87;
          a2 = v88;
          v33 = v89;
          goto LABEL_30;
        }
      }

      else
      {
        v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33)
        {
          if (a4 < v33)
          {
            goto LABEL_120;
          }

          type metadata accessor for DateTime.Date();
          swift_arrayInitWithCopy();
LABEL_30:

          if (v33 < a2)
          {
            goto LABEL_113;
          }

          if (v33 > 0)
          {
            v40 = *(a3 + 16);
            v41 = __OFADD__(v40, v33);
            v42 = v40 + v33;
            if (v41)
            {
              goto LABEL_118;
            }

            *(a3 + 16) = v42;
          }

          goto LABEL_35;
        }
      }

      if (a2 > 0)
      {
        goto LABEL_113;
      }

LABEL_35:
      a4 = v94;
      v27 = v93 + 1;
      if (v93 + 1 == v91)
      {

        v97 = a4;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    swift_once();
  }

  a4 = MEMORY[0x1E69E7CC0];
LABEL_40:
  result = sub_1DD3CC020();
  if (result <= 1)
  {
    *v85 = a4;
    return result;
  }

  v43 = type metadata accessor for HolidayResolutionContext(0);
  v94 = *(v43 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v44 = sub_1DD63D2B8();
  v45 = *(v44 - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1DD6444F0;
  v49 = v48 + v47;
  v50 = *(v45 + 104);
  a4 = v45 + 104;
  v50(v49, *MEMORY[0x1E6969A68], v44);
  v50(v49 + v46, *MEMORY[0x1E6969A78], v44);
  v50(v49 + 2 * v46, *MEMORY[0x1E6969A48], v44);
  sub_1DD56BDEC();
  v92 = v43;
  sub_1DD3D856C(v51, v84);

  v52 = sub_1DD63CA28();
  if (v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = v52;
  }

  v55 = sub_1DD63CAB8();
  if (v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = v55;
  }

  v58 = sub_1DD63CA98();
  if (v59)
  {
    v60 = 0;
  }

  else
  {
    v60 = v58;
  }

  v93 = type metadata accessor for DateTime.Date();
  swift_allocObject();
  v94 = DateTime.Date.init(withDay:month:year:)(v54, v57, v60);
  v61 = v81;
  sub_1DD4CFE8C(&v97, v62);
  v81 = v61;
  v63 = v97;
  v95[0] = MEMORY[0x1E69E7CC0];
  v64 = sub_1DD3CC020();
  a3 = 0;
  a5 = (v63 & 0xC000000000000001);
  a2 = v63 & 0xFFFFFFFFFFFFFF8;
  while (v64 != a3)
  {
    if (a5)
    {
      a4 = MEMORY[0x1E12B2C10](a3, v63);
    }

    else
    {
      if (a3 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_115;
      }

      a4 = *(v63 + 8 * a3 + 32);
    }

    if (__OFADD__(a3, 1))
    {
      goto LABEL_114;
    }

    if (static DateTime.Date.< infix(_:_:)(a4, v94))
    {
      sub_1DD640958();
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
    }

    else
    {
    }

    ++a3;
  }

  a3 = 0;
  v91 = v95[0];
  v95[0] = MEMORY[0x1E69E7CC0];
  while (v64 != a3)
  {
    if (a5)
    {
      v65 = MEMORY[0x1E12B2C10](a3, v63);
    }

    else
    {
      if (a3 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_117;
      }

      v65 = *(v63 + 8 * a3 + 32);
    }

    if (__OFADD__(a3, 1))
    {
      goto LABEL_116;
    }

    if (static DateTime.Date.<= infix(_:_:)(v65))
    {
    }

    else
    {
      sub_1DD640958();
      a4 = *(v95[0] + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
    }

    ++a3;
  }

  v66 = v95[0];
  v67 = v86[v92[10]];
  if (v67 != 20)
  {

    v73 = MEMORY[0x1E69E7CC0];
    if (v67 == 19)
    {

      sub_1DD43C104(v91);
      v74 = v78;

      if (v74)
      {
LABEL_106:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1DD643B80;
        *(v73 + 32) = v74;
      }
    }

    else if (v67 == 17)
    {

      if (sub_1DD3CC020())
      {
        sub_1DD408BFC();
        if ((v66 & 0xC000000000000001) != 0)
        {
          v74 = MEMORY[0x1E12B2C10](0, v66);
        }

        else
        {
          v74 = *(v66 + 32);
        }

        goto LABEL_106;
      }
    }

    else
    {
    }

    result = (*(v83 + 8))(v84, v82);
    *v85 = v73;
    return result;
  }

  v95[0] = MEMORY[0x1E69E7CC0];
  sub_1DD43C104(v91);
  v69 = v68;

  if (v69)
  {
    MEMORY[0x1E12B23F0](v70);
    if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD640138();
    }

    sub_1DD640168();
    v80 = v95[0];
  }

  a3 = sub_1DD3CC020();
  v71 = 0;
  do
  {
    if (a3 == v71)
    {

      v75 = v80;
      goto LABEL_97;
    }

    if (a5)
    {
      a4 = MEMORY[0x1E12B2C10](v71, v63);
    }

    else
    {
      if (v71 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      a4 = *(v63 + 8 * v71 + 32);
    }

    if (__OFADD__(v71, 1))
    {
      goto LABEL_122;
    }

    v72 = static DateTime.Date.== infix(_:_:)(a4, v94);

    ++v71;
  }

  while (!v72);

  MEMORY[0x1E12B23F0](v76);
  if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD640138();
  }

  sub_1DD640168();
  v75 = v95[0];
LABEL_97:
  if (sub_1DD3CC020())
  {
    sub_1DD408BFC();
    if ((v66 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B2C10](0, v66);
    }

    else
    {
    }

    MEMORY[0x1E12B23F0](v77);
    if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD640138();
    }

    sub_1DD640168();
    v75 = v95[0];

    result = (*(v83 + 8))(v84, v82);
  }

  else
  {
    (*(v83 + 8))(v84, v82);
  }

  *v85 = v75;
  return result;
}

uint64_t sub_1DD4D229C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v103 - v5;
  v111 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  switch(*(a1 + 56))
  {
    case 1:
      v59 = a2 + *(type metadata accessor for HolidayResolutionContext(0) + 36);
      if ((*(v59 + 8) & 1) == 0 && *(a1 + 40) != *v59)
      {
        return MEMORY[0x1E69E7CC0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      OUTLINED_FUNCTION_10_1();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DD643B80;
      v60 = *(a1 + 80);
      v61 = *(a1 + 88);
      v62 = *(a1 + 64);
      v63 = *(a1 + 72);
      v64 = *(a1 + 40);
      v120[0] = 7;
      OUTLINED_FUNCTION_8_39();
      LOBYTE(v116) = 7;
      v115 = 7;
      v65 = type metadata accessor for DateTime.Date();
      OUTLINED_FUNCTION_16_29(v65);
      OUTLINED_FUNCTION_5_51();
      OUTLINED_FUNCTION_11_33();
      LOBYTE(v108) = v66;
      LOBYTE(v105) = v66;
      v103 = v67;
      v104 = 0;
      v32 = v60;
      v33 = v61;
      v34 = v62;
      v35 = v63;
      v36 = v64;
      v37 = 0;
      goto LABEL_13;
    case 2:
      v38 = *(a1 + 152);
      if (!v38)
      {
        if (qword_1EE1632D8 != -1)
        {
          goto LABEL_43;
        }

        goto LABEL_15;
      }

      v39 = *(a1 + 144);

      v40 = sub_1DD5C04D8(v39);
      if (v40 == 7)
      {
        v41 = v39;
        if (qword_1EE1632D8 != -1)
        {
          OUTLINED_FUNCTION_5(&qword_1EE1632D8);
        }

        v42 = sub_1DD63F9F8();
        __swift_project_value_buffer(v42, qword_1EE16EFE0);

        sub_1DD4CA79C(a1, v120);
        v43 = sub_1DD63F9D8();
        v44 = sub_1DD640378();

        sub_1DD4CA7F8(a1);
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v120 = v46;
          *v45 = 136315906;
          *(v45 + 4) = sub_1DD39565C(v41, v38, v120);
          *(v45 + 12) = 2080;
          *(v45 + 14) = sub_1DD39565C(*a1, *(a1 + 8), v120);
          *(v45 + 22) = 2080;
          *(v45 + 24) = sub_1DD39565C(*(a1 + 16), *(a1 + 24), v120);
          *(v45 + 32) = 2080;
          v47 = sub_1DD4CC2EC(*(a1 + 32));
          v49 = sub_1DD39565C(v47, v48, v120);

          *(v45 + 34) = v49;
          _os_log_impl(&dword_1DD38D000, v43, v44, "The relative holiday '%s' for %s:%s.%s is invalid.", v45, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1E12B3DA0](v46, -1, -1);
          v50 = v45;
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      sub_1DD4D2FF8(v40, *(a1 + 160), v120);
      sub_1DD3C2388(v120, v117);
      v75 = type metadata accessor for HolidayResolutionContext(0);
      v76 = v75;
      v77 = a2 + *(v75 + 36);
      if ((*(v77 + 8) & 1) == 0)
      {
        v101 = sub_1DD4D2D6C(*v77, *(a1 + 112), *(a1 + 120), a2 + *(v75 + 28), v117, a1);
        __swift_destroy_boxed_opaque_existential_1(v117);
        if (!v101)
        {
          __swift_destroy_boxed_opaque_existential_1(v120);
          return MEMORY[0x1E69E7CC0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        OUTLINED_FUNCTION_10_1();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1DD643B80;
        *(v20 + 32) = v101;
        v102 = v120;
        goto LABEL_40;
      }

      (*(v15 + 104))(v19, *MEMORY[0x1E6969A68], v13);
      v109 = v76;
      v78 = sub_1DD63D2C8();
      result = (*(v15 + 8))(v19, v13);
      v116 = MEMORY[0x1E69E7CC0];
      v80 = v78 - 1;
      if (__OFSUB__(v78, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (__OFADD__(v78, 1))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v110 = a2;
      if (v78 + 1 >= v80)
      {
        v81 = *(v109 + 7);
        v107 = (v8 + 32);
        v106 = (v8 + 8);
        v20 = MEMORY[0x1E69E7CC0];
        v82 = 2;
        v83 = *(a1 + 112);
        LODWORD(v109) = *(a1 + 120);
        a1 = v111;
        v105 = v83;
        v104 = v6;
        v108 = v81;
        while (1)
        {
          v84 = v118;
          v85 = v119;
          __swift_project_boxed_opaque_existential_1(v117, v118);
          sub_1DD5C0524(v80, v83, v109, v110 + v81, v84, v85, v6);
          if (__swift_getEnumTagSinglePayload(v6, 1, a1) == 1)
          {
            sub_1DD3ADFD0(v6, &qword_1ECCDC4F8, &unk_1DD646910);
          }

          else
          {
            (*v107)(v12, v6, a1);
            v86 = sub_1DD63CB48();
            if (v87)
            {
              LOBYTE(v88) = 7;
            }

            else
            {
              v88 = 0x705040302010006uLL >> (8 * sub_1DD4C61F8(v86));
            }

            v89 = sub_1DD63CA28();
            v91 = v90;
            v92 = sub_1DD63CAB8();
            v94 = v93;
            v115 = 7;
            v114 = 12;
            v113 = v88;
            v95 = sub_1DD63C9C8();
            v97 = v96;
            (*v106)(v12, v111);
            v112 = 7;
            v98 = type metadata accessor for DateTime.Date();
            OUTLINED_FUNCTION_16_29(v98);
            DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v89, v91 & 1, v92, v94 & 1, v80, 0, &v115, 0, &v114, 0, 1, &v113, v95, v97 & 1, &v112, 0);

            MEMORY[0x1E12B23F0](v99);
            if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DD640138();
            }

            sub_1DD640168();

            v20 = v116;
            a1 = v111;
            v81 = v108;
            v83 = v105;
            v6 = v104;
          }

          if (!v82)
          {
            break;
          }

          --v82;
          if (__OFADD__(v80++, 1))
          {
            __break(1u);
LABEL_43:
            OUTLINED_FUNCTION_5(&qword_1EE1632D8);
LABEL_15:
            v68 = sub_1DD63F9F8();
            __swift_project_value_buffer(v68, qword_1EE16EFE0);
            sub_1DD4CA79C(a1, v120);
            v43 = sub_1DD63F9D8();
            v69 = sub_1DD640378();
            sub_1DD4CA7F8(a1);
            if (os_log_type_enabled(v43, v69))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              *v120 = v71;
              *v70 = 136315650;
              *(v70 + 4) = sub_1DD39565C(*a1, *(a1 + 8), v120);
              *(v70 + 12) = 2080;
              *(v70 + 14) = sub_1DD39565C(*(a1 + 16), *(a1 + 24), v120);
              *(v70 + 22) = 2080;
              v72 = sub_1DD4CC2EC(*(a1 + 32));
              v74 = sub_1DD39565C(v72, v73, v120);

              *(v70 + 24) = v74;
              _os_log_impl(&dword_1DD38D000, v43, v69, "The relative holiday for %s:%s.%s is missing.", v70, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12B3DA0](v71, -1, -1);
              v50 = v70;
LABEL_17:
              MEMORY[0x1E12B3DA0](v50, -1, -1);
            }

LABEL_18:

            return MEMORY[0x1E69E7CC0];
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v120);
        v102 = v117;
LABEL_40:
        __swift_destroy_boxed_opaque_existential_1(v102);
        return v20;
      }

LABEL_46:
      __break(1u);
      return result;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      OUTLINED_FUNCTION_10_1();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DD643B80;
      v51 = a2 + *(type metadata accessor for HolidayResolutionContext(0) + 36);
      v52 = *v51;
      v53 = *(v51 + 8);
      v120[0] = 7;
      OUTLINED_FUNCTION_8_39();
      v54 = *(a1 + 64);
      v55 = *(a1 + 72);
      LOBYTE(v116) = *(a1 + 89);
      v56 = *(a1 + 96);
      v57 = *(a1 + 104);
      v115 = 7;
      v58 = type metadata accessor for DateTime.Date();
      OUTLINED_FUNCTION_16_29(v58);
      OUTLINED_FUNCTION_5_51();
      LOBYTE(v108) = v57;
      v106 = &v116;
      v107 = v56;
      LOBYTE(v105) = 1;
      v103 = v117;
      v104 = 0;
      v32 = 0;
      v33 = 1;
      v34 = v54;
      v35 = v55;
      v36 = v52;
      v37 = v53;
      goto LABEL_13;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      OUTLINED_FUNCTION_10_1();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DD643B80;
      v21 = *(a1 + 80);
      v22 = *(a1 + 88);
      v23 = a2;
      v24 = *(a1 + 64);
      v25 = *(a1 + 72);
      v26 = v23 + *(type metadata accessor for HolidayResolutionContext(0) + 36);
      v27 = *v26;
      v28 = *(v26 + 8);
      v120[0] = 7;
      OUTLINED_FUNCTION_8_39();
      LOBYTE(v116) = 7;
      v115 = 7;
      v29 = type metadata accessor for DateTime.Date();
      OUTLINED_FUNCTION_16_29(v29);
      OUTLINED_FUNCTION_5_51();
      OUTLINED_FUNCTION_11_33();
      LOBYTE(v108) = v30;
      LOBYTE(v105) = v30;
      v103 = v31;
      v104 = 0;
      v32 = v21;
      v33 = v22;
      v34 = v24;
      v35 = v25;
      v36 = v27;
      v37 = v28;
LABEL_13:
      *(v20 + 32) = DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v32, v33, v34, v35, v36, v37, v120, 0, v103, v104, v105, v106, v107, v108, v109, v110);
      return v20;
  }
}

uint64_t sub_1DD4D2D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_1DD63CBB8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a5[3];
  v18 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v17);
  sub_1DD5C0524(a1, *(a6 + 112), *(a6 + 120), a4, v17, v18, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1DD3ADFD0(v12, &qword_1ECCDC4F8, &unk_1DD646910);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v20 = sub_1DD63CB48();
    v21 = 7;
    if ((v22 & 1) == 0)
    {
      v23 = sub_1DD4C61F8(v20);
      v21 = sub_1DD4CFE58(v23);
    }

    v32 = sub_1DD63CA28();
    v25 = v24;
    v26 = sub_1DD63CAB8();
    v28 = v27;
    v36 = 7;
    v35 = 12;
    v34 = v21;
    v29 = sub_1DD63C9C8();
    v31 = v30;
    (*(v14 + 8))(v16, v13);
    v33 = 7;
    type metadata accessor for DateTime.Date();
    swift_allocObject();
    return DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v32, v25 & 1, v26, v28 & 1, a1, 0, &v36, 0, &v35, 0, 1, &v34, v29, v31 & 1, &v33, 0);
  }
}

void sub_1DD4D2FF8(char a1@<W0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  sub_1DD63D188();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  switch(a1)
  {
    case 1:
      Advent = type metadata accessor for FirstAdvent(0);
      swift_allocObject();
      v8 = sub_1DD4C145C();
      v9 = &off_1F58B84E8;
      goto LABEL_12;
    case 2:
      a3[3] = &type metadata for Thanksgiving;
      a3[4] = &off_1F58C36A8;
      return;
    case 3:
      v18 = type metadata accessor for SolsticeAndEquinox(0);
      v19 = OUTLINED_FUNCTION_14_28(v18, &off_1F58C0750);
      v20 = OUTLINED_FUNCTION_3_48();
      v21(v20);
      OUTLINED_FUNCTION_15_26();
      v22 = OUTLINED_FUNCTION_4_45();
      v23(v22);
      *(v19 + *(v18 + 20)) = 0;
      return;
    case 4:
      v10 = type metadata accessor for SolsticeAndEquinox(0);
      v11 = OUTLINED_FUNCTION_14_28(v10, &off_1F58C0750);
      v12 = OUTLINED_FUNCTION_3_48();
      v13(v12);
      OUTLINED_FUNCTION_15_26();
      v14 = OUTLINED_FUNCTION_4_45();
      v15(v14);
      v16 = *(v10 + 20);
      v17 = 1;
      goto LABEL_10;
    case 5:
      v24 = type metadata accessor for SolsticeAndEquinox(0);
      v11 = OUTLINED_FUNCTION_14_28(v24, &off_1F58C0750);
      v25 = OUTLINED_FUNCTION_3_48();
      v26(v25);
      OUTLINED_FUNCTION_15_26();
      v27 = OUTLINED_FUNCTION_4_45();
      v28(v27);
      v16 = *(v24 + 20);
      v17 = 2;
      goto LABEL_10;
    case 6:
      v29 = type metadata accessor for SolsticeAndEquinox(0);
      v11 = OUTLINED_FUNCTION_14_28(v29, &off_1F58C0750);
      v30 = OUTLINED_FUNCTION_3_48();
      v31(v30);
      OUTLINED_FUNCTION_15_26();
      v32 = OUTLINED_FUNCTION_4_45();
      v33(v32);
      v16 = *(v29 + 20);
      v17 = 3;
LABEL_10:
      *(v11 + v16) = v17;
      break;
    default:
      if (a2 == 9)
      {
        Advent = type metadata accessor for JulianEasterHoliday();
        v8 = swift_allocObject();
        v9 = &off_1F58B9A60;
      }

      else
      {
        Advent = type metadata accessor for GregorianEasterHoliday();
        v8 = swift_allocObject();
        v9 = &off_1F58B86C0;
      }

LABEL_12:
      a3[3] = Advent;
      a3[4] = v9;
      *a3 = v8;
      break;
  }
}

uint64_t sub_1DD4D3310(uint64_t result, uint64_t (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_1DD640158();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t type metadata accessor for HolidaysDBHolidayResolverError(uint64_t a1)
{
  result = qword_1ECCDDCA8;
  if (!qword_1ECCDDCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD4D33BC()
{
  result = qword_1ECCDDC60;
  if (!qword_1ECCDDC60)
  {
    type metadata accessor for HolidaysDBHolidayResolverError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDC60);
  }

  return result;
}

void sub_1DD4D3414(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1DD640CA8();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1DD4D3310(v3 / 2, type metadata accessor for DateTime.Date);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1DD4D35C0(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1DD4D3508(0, v3, 1, a1);
  }
}

uint64_t sub_1DD4D3508(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    type metadata accessor for DateTime.Date();
    v8 = v7 + 8 * v4 - 8;
    v9 = v6 - v4;
    while (2)
    {
      result = *(v7 + 8 * v4);
      v10 = v9;
      v11 = v8;
      do
      {
        result = static DateTime.Date.< infix(_:_:)(result, *v11);
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v7)
        {
          __break(1u);
          return result;
        }

        v12 = *v11;
        result = v11[1];
        *v11 = result;
        v11[1] = v12;
        --v11;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v8 += 8;
      --v9;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD4D35C0(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v84 = v9 + 16;
      v85 = *(v9 + 2);
      for (i = v9; v85 >= 2; v9 = i)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v86 = &v9[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = *(v88 + 1);
        sub_1DD4D3B8C((*a3 + 8 * *v86), (*a3 + 8 * *v88), (*a3 + 8 * v89), v10);
        if (v5)
        {
          break;
        }

        if (v89 < v87)
        {
          goto LABEL_118;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_119;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_120;
        }

        v85 = *v84 - 1;
        sub_1DD4EC4E4(v88 + 16, v90, v88);
        *v84 = v85;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v9 = sub_1DD4EC2B8();
    goto LABEL_94;
  }

  v7 = a3;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      goto LABEL_21;
    }

    v12 = v8;
    v13 = v8 + 1;
    v95 = *(*v7 + 8 * v11);
    v14 = (*v7 + 8 * v8);
    v15 = 8 * v8;
    v17 = *v14;
    v16 = v14 + 2;
    type metadata accessor for DateTime.Date();
    v18 = static DateTime.Date.< infix(_:_:)(v95, v17);
    v96 = v12;
    v19 = (v12 + 2);
    do
    {
      v20 = v19;
      if (v13 + 1 >= v6)
      {
        v13 = v6;
        if (v18)
        {
          goto LABEL_8;
        }

LABEL_20:
        v11 = v13;
        v10 = v96;
        goto LABEL_21;
      }

      ++v13;
      v21 = static DateTime.Date.< infix(_:_:)(*v16, *(v16 - 1));
      ++v16;
      v19 = v20 + 1;
    }

    while (v18 == v21);
    if (!v18)
    {
      goto LABEL_20;
    }

LABEL_8:
    v11 = v13;
    v10 = v96;
    if (v11 < v96)
    {
      goto LABEL_124;
    }

    if (v96 < v11)
    {
      if (v6 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v6;
      }

      v23 = 8 * v22 - 8;
      v24 = v11;
      v25 = v96;
      do
      {
        if (v25 != --v24)
        {
          v26 = *v7;
          if (!*v7)
          {
            goto LABEL_131;
          }

          v27 = *(v26 + v15);
          *(v26 + v15) = *(v26 + v23);
          *(v26 + v23) = v27;
        }

        ++v25;
        v23 -= 8;
        v15 += 8;
      }

      while (v25 < v24);
    }

LABEL_21:
    v28 = v7[1];
    if (v11 >= v28)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_123;
    }

    if (v11 - v10 >= a4)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_125;
    }

    if (&v10[a4] >= v28)
    {
      v29 = v7[1];
    }

    else
    {
      v29 = &v10[a4];
    }

    if (v29 < v10)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v11 == v29)
    {
      goto LABEL_38;
    }

    v30 = v10;
    v31 = *a3;
    type metadata accessor for DateTime.Date();
    v32 = v31 + 8 * v11 - 8;
    v97 = v30;
    v33 = &v30[-v11];
LABEL_31:
    v34 = v11;
    v35 = *(v31 + 8 * v11);
    v36 = v33;
    v37 = v32;
LABEL_32:
    if (static DateTime.Date.< infix(_:_:)(v35, *v37))
    {
      break;
    }

LABEL_36:
    v11 = v34 + 1;
    v32 += 8;
    --v33;
    if ((v34 + 1) != v29)
    {
      goto LABEL_31;
    }

    v11 = v29;
    v10 = v97;
LABEL_38:
    v7 = a3;
LABEL_39:
    if (v11 < v10)
    {
      goto LABEL_122;
    }

    v93 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v9 = v82;
    }

    v40 = *(v9 + 2);
    v41 = v40 + 1;
    if (v40 >= *(v9 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v9 = v83;
    }

    *(v9 + 2) = v41;
    v42 = v9 + 32;
    v43 = &v9[16 * v40 + 32];
    *v43 = v10;
    v43[1] = v93;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v40)
    {
      v99 = v9;
      while (1)
      {
        v44 = v41 - 1;
        v45 = &v42[16 * v41 - 16];
        v46 = &v9[16 * v41];
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_60:
          if (v50)
          {
            goto LABEL_109;
          }

          v62 = *v46;
          v61 = *(v46 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_112;
          }

          v66 = *(v45 + 1);
          v67 = v66 - *v45;
          if (__OFSUB__(v66, *v45))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v64, v67))
          {
            goto LABEL_117;
          }

          if (v64 + v67 >= v49)
          {
            if (v49 < v67)
            {
              v44 = v41 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v41 < 2)
        {
          goto LABEL_111;
        }

        v69 = *v46;
        v68 = *(v46 + 1);
        v57 = __OFSUB__(v68, v69);
        v64 = v68 - v69;
        v65 = v57;
LABEL_75:
        if (v65)
        {
          goto LABEL_114;
        }

        v71 = *v45;
        v70 = *(v45 + 1);
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_116;
        }

        if (v72 < v64)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v7)
        {
          goto LABEL_129;
        }

        v76 = &v42[16 * v44 - 16];
        v77 = *v76;
        v10 = v44;
        v78 = &v42[16 * v44];
        v79 = *(v78 + 1);
        sub_1DD4D3B8C((*v7 + 8 * *v76), (*v7 + 8 * *v78), (*v7 + 8 * v79), v98);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v79 < v77)
        {
          goto LABEL_104;
        }

        v5 = v7;
        v80 = *(v99 + 2);
        if (v10 > v80)
        {
          goto LABEL_105;
        }

        *v76 = v77;
        *(v76 + 1) = v79;
        if (v10 >= v80)
        {
          goto LABEL_106;
        }

        v41 = v80 - 1;
        sub_1DD4EC4E4(v78 + 16, v80 - 1 - v10, v78);
        v9 = v99;
        *(v99 + 2) = v80 - 1;
        v81 = v80 > 2;
        v7 = v5;
        v5 = 0;
        if (!v81)
        {
          goto LABEL_89;
        }
      }

      v51 = &v42[16 * v41];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_107;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_108;
      }

      v58 = *(v46 + 1);
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_110;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_113;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = *(v45 + 1);
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_121;
        }

        if (v49 < v75)
        {
          v44 = v41 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v6 = v7[1];
    v8 = v93;
    if (v93 >= v6)
    {
      goto LABEL_92;
    }
  }

  if (v31)
  {
    v38 = *v37;
    v35 = v37[1];
    *v37 = v35;
    v37[1] = v38;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_1DD4D3B8C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1DD3C2520(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      v13 = *v4;
      type metadata accessor for DateTime.Date();
      if (!static DateTime.Date.< infix(_:_:)(v12, v13))
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6++;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v14 = v4;
    v15 = v7 == v4++;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v14;
    goto LABEL_13;
  }

  sub_1DD3C2520(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v16 = v6 - 1;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    type metadata accessor for DateTime.Date();
    v20 = static DateTime.Date.< infix(_:_:)(v18, v19);
    v21 = v5 + 8;
    if (v20)
    {
      v15 = v21 == v6--;
      if (!v15)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != v21)
    {
      *v5 = *(v10 - 1);
    }

    --v10;
  }

LABEL_28:
  v22 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, 8 * v22);
  }

  return 1;
}

unint64_t sub_1DD4D3DA8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1DD6407B8();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1DD4D3E4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1DD6407B8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1DD3CC020();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1DD63F538();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1DD4D42A8(&qword_1ECCDDCA0, &qword_1ECCDDC98, &unk_1DD654430);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDC98, &unk_1DD654430);
          v9 = sub_1DD5B5E38(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4D3FC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1DD6407B8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1DD3CC020();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DateTimeConstraint();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1DD4D42A8(&qword_1ECCDDC80, &qword_1ECCDDC78, &qword_1DD654420);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDC78, &qword_1DD654420);
          v9 = sub_1DD5B5E38(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4D4134(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1DD6407B8();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1DD3CC020();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DateTime.DateTimeRange();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1DD4D42A8(&qword_1ECCDDC90, &qword_1ECCDDC88, &qword_1DD654428);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDC88, &qword_1DD654428);
          v9 = sub_1DD5B5E38(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4D42A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DD4D4304(uint64_t a1)
{
  result = sub_1DD63D168();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_28@<X0>(unint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  *a2 = v3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a2[1] = a3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_13_28(uint64_t a1)
{

  return swift_allocError();
}

uint64_t *OUTLINED_FUNCTION_14_28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t sub_1DD4D444C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 getLocalFileUrl];
  if (v3)
  {
    v4 = v3;
    sub_1DD63CE48();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1DD63CE68();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void sub_1DD4D44CC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a2 = 0;
  }

  sub_1DD4D44F8(a1, a2);
}

void sub_1DD4D44F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1DD4D45B8;
    v4[3] = &block_descriptor_7;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 startDownload_];
  _Block_release(v3);
}

id sub_1DD4D4628()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69B1948]) init];
  [v0 setDiscretionary_];
  result = [v0 setAllowsCellularAccess_];
  qword_1EE16EF20 = v0;
  return result;
}

uint64_t sub_1DD4D468C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCB8, &qword_1DD654528);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___assetURL;
  swift_beginAccess();
  sub_1DD3CDD14(v2 + v11, v10, &qword_1ECCDDCB8, &qword_1DD654528);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    return sub_1DD4D5B84(v10, a1);
  }

  sub_1DD3ADFD0(v10, &qword_1ECCDDCB8, &qword_1DD654528);
  v13 = v2[5];
  v14 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v13);
  (*(v14 + 24))(v13, v14);
  sub_1DD3CDD14(a1, v7, &qword_1ECCDBF78, &unk_1DD644440);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1DD4D5B14(v7, v2 + v11);
  return swift_endAccess();
}

uint64_t sub_1DD4D4858@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v11 = OUTLINED_FUNCTION_3(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = v1[5];
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v14);
  if (((*(v15 + 8))(v14, v15) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    sub_1DD4D468C(v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v3))
    {
      sub_1DD3ADFD0(v13, &qword_1ECCDBF78, &unk_1DD644440);
      v16 = a1;
      v17 = 1;
    }

    else
    {
      (*(v5 + 16))(v9, v13, v3);
      sub_1DD3ADFD0(v13, &qword_1ECCDBF78, &unk_1DD644440);
      sub_1DD63CE18();
      (*(v5 + 8))(v9, v3);
      v16 = a1;
      v17 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

void sub_1DD4D4A9C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1DD63FDA8();
  if (qword_1EE161B58 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE16EF20;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  OUTLINED_FUNCTION_0_91();
  v9[1] = 1107296256;
  v9[2] = sub_1DD4D45B8;
  v9[3] = &block_descriptor_26;
  v8 = _Block_copy(v9);

  [v4 startCatalogDownload:v5 options:v6 then:v8];
  _Block_release(v8);
}

void sub_1DD4D4BDC(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    sub_1DD4D5C0C();
    v4 = swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 1;
    a2();
  }

  else
  {
    a2();
  }
}

void sub_1DD4D4C70(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E69B18E8]);
  v7 = sub_1DD4D5C84(0xD00000000000002BLL, 0x80000001DD66E710);
  if (v7)
  {
    v8 = v7;
    [v7 returnTypes_];
    if (qword_1EE1632D8 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EE1632D8);
    }

    v9 = sub_1DD63F9F8();
    __swift_project_value_buffer(v9, qword_1EE16EFE0);
    v10 = v8;
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640358();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v8;
      v15 = v10;
      _os_log_impl(&dword_1DD38D000, v11, v12, "Starting MobileAsset query %@", v13, 0xCu);
      sub_1DD3ADFD0(v14, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    v16 = swift_allocObject();
    v16[2] = v10;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    OUTLINED_FUNCTION_0_91();
    v25[1] = 1107296256;
    v25[2] = sub_1DD4D53C8;
    v25[3] = &block_descriptor_20_0;
    v17 = _Block_copy(v25);
    v18 = v10;

    [v18 queryMetaData_];
    _Block_release(v17);
  }

  else
  {
    if (qword_1EE1632D8 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EE1632D8);
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16EFE0);
    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640378();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DD38D000, v20, v21, "MobileAsset query init failed", v22, 2u);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }

    sub_1DD4D5C0C();
    v23 = swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 3;
    a2(v23, 1);
  }
}

void sub_1DD4D4FB4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  if (a1)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD63F9F8();
    __swift_project_value_buffer(v6, qword_1EE16EFE0);
    v7 = sub_1DD63F9D8();
    v8 = sub_1DD640378();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_1DD38D000, v7, v8, "Query returned error %ld", v9, 0xCu);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
    }

    sub_1DD4D5C0C();
    v10 = swift_allocError();
    *v11 = a1;
    *(v11 + 8) = 0;
    a4(v10, 1);

    return;
  }

  v13 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v14 = sub_1DD4D5D60(a2);
  if (v14)
  {
    v15 = v14;
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1EE16EFE0);

    v17 = sub_1DD63F9D8();
    v18 = sub_1DD640368();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315138;
      v21 = sub_1DD4D6018();
      v22 = MEMORY[0x1E12B2430](v15, v21);
      v24 = sub_1DD39565C(v22, v23, &v34);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1DD38D000, v17, v18, "Query returned results %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
    }

    v25 = sub_1DD3CC020();
    if (v25)
    {
      v26 = v25;
      if (v25 < 1)
      {
        __break(1u);
        return;
      }

      v27 = 0;
      v13 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1E12B2C10](v27, v15);
        }

        else
        {
          v28 = *(v15 + 8 * v27 + 32);
        }

        v29 = v28;
        type metadata accessor for HolidaysDBMobileAsset(0);
        v30 = swift_allocObject();
        v31 = v29;
        v32 = sub_1DD4D5DC0(v31, v30);
        if (v32)
        {
          if (*(v32 + 56) >= a3)
          {

            MEMORY[0x1E12B23F0](v33);
            if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DD640138();
            }

            sub_1DD640168();

            v13 = v35;
            goto LABEL_27;
          }
        }

LABEL_27:
        if (v26 == ++v27)
        {
          goto LABEL_30;
        }
      }
    }

    v13 = MEMORY[0x1E69E7CC0];
LABEL_30:
  }

  a4(v13, 0);
}

uint64_t sub_1DD4D53D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1DD4D5428(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(v6 + 32);

  v8(sub_1DD4D5C7C, v7, v5, v6);
}

void sub_1DD4D54E8(uint64_t a1, void (*a2)(void))
{
  if (a1 != 10 && a1)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16EFE0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_1DD38D000, v5, v6, "Download failed with code %ld", v7, 0xCu);
      MEMORY[0x1E12B3DA0](v7, -1, -1);
    }

    sub_1DD4D5C0C();
    v8 = swift_allocError();
    *v9 = a1;
    *(v9 + 8) = 1;
    a2();
  }

  else
  {
    (a2)(0);
  }
}

uint64_t sub_1DD4D565C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdate(0);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  sub_1DD4D4858(v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1DD3ADFD0(v12, &qword_1ECCDBF78, &unk_1DD644440);
    sub_1DD4D5C0C();
    swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 3;
    return swift_willThrow();
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
    sub_1DD4CA4A4(v19);
    if (v2)
    {
      return (*(v15 + 8))(v19, v13);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v22);
      *(&v23 - 2) = a2;
      *(&v23 - 1) = v8;
      sub_1DD4064AC(0, sub_1DD4D5C60, (&v23 - 4));
      (*(v15 + 8))(v19, v13);
      return sub_1DD4C9BB0(v8);
    }
  }
}

uint64_t sub_1DD4D58C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DD3ADFD0(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___assetURL, &qword_1ECCDDCB8, &qword_1DD654528);
  sub_1DD3ADFD0(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___versiondate, &qword_1ECCDDCC0, &unk_1DD654530);
  sub_1DD3EB430(*(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday), *(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday + 8));
  sub_1DD3EB430(*(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country), *(v0 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country + 8));
  return v0;
}

uint64_t sub_1DD4D594C()
{
  sub_1DD4D58C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HolidaysDBMobileAsset(uint64_t a1)
{
  result = qword_1EE161B20;
  if (!qword_1EE161B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD4D59F8(uint64_t a1)
{
  sub_1DD46CF80(319, &qword_1EE163830, &qword_1ECCDBF78, &unk_1DD644440);
  if (v1 <= 0x3F)
  {
    sub_1DD46CF80(319, &qword_1EE163818, &qword_1ECCDEBC0, &qword_1DD6445A0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1DD4D5B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCB8, &qword_1DD654528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4D5B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1DD4D5C0C()
{
  result = qword_1EE161398;
  if (!qword_1EE161398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161398);
  }

  return result;
}

id sub_1DD4D5C84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD63FDA8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithType_];

  return v4;
}

uint64_t sub_1DD4D5CF4(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

uint64_t sub_1DD4D5D60(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD4D6018();
  v3 = sub_1DD640118();

  return v3;
}

uint64_t sub_1DD4D5DC0(void *a1, uint64_t a2)
{
  v14[3] = sub_1DD4D6018();
  v14[4] = &off_1F58B90B8;
  v14[0] = a1;
  v4 = OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___assetURL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___versiondate;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  __swift_storeEnumTagSinglePayload(a2 + v6, 1, 1, v7);
  *(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday) = xmmword_1DD642F70;
  *(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country) = xmmword_1DD642F70;
  sub_1DD3C2388(v14, a2 + 16);
  result = sub_1DD4D5CF4(a1);
  if (result)
  {
    v9 = result;
    strcpy(v10, "UpdateVersion");
    HIWORD(v10[1]) = -4864;
    sub_1DD640848();
    sub_1DD59BADC(v11, v9, &v12);

    sub_1DD400AF4(v11);
    if (v13)
    {
      if (swift_dynamicCast())
      {
        *(a2 + 56) = v10[0];
LABEL_7:
        __swift_destroy_boxed_opaque_existential_1(v14);
        return a2;
      }
    }

    else
    {
      sub_1DD3ADFD0(&v12, &qword_1ECCDB980, &unk_1DD643DC0);
    }

    __swift_destroy_boxed_opaque_existential_1((a2 + 16));
    sub_1DD3ADFD0(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___assetURL, &qword_1ECCDDCB8, &qword_1DD654528);
    sub_1DD3ADFD0(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___versiondate, &qword_1ECCDDCC0, &unk_1DD654530);
    sub_1DD3EB430(*(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday), *(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___holiday + 8));
    sub_1DD3EB430(*(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country), *(a2 + OBJC_IVAR____TtC13SiriInference21HolidaysDBMobileAsset____lazy_storage___country + 8));
    type metadata accessor for HolidaysDBMobileAsset(0);
    swift_deallocPartialClassInstance();
    a2 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD4D6018()
{
  result = qword_1ECCDDCC8;
  if (!qword_1ECCDDCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDDCC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HolidaysDBMobileAssetError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HolidaysDBMobileAssetError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1DD4D60E8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DD4D6100(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DD4D614C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCE8, &unk_1DD654728);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v8 = *(v7 + 56);
  sub_1DD4DB480(a1, &v11 - v5);
  sub_1DD4DB480(a2, &v6[v8]);
  type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(a1)
  {
    case 1:
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 2:
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 3:
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 4:
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 5:
      if (EnumCaseMultiPayload == 5)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    case 6:
      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 7:
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 8:
      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    default:
      if (EnumCaseMultiPayload)
      {
LABEL_17:
        sub_1DD390754(v6, &qword_1ECCDDCE8, &unk_1DD654728);
        return 0;
      }

      else
      {
LABEL_13:
        sub_1DD4DB404(&v6[v8]);
LABEL_15:
        sub_1DD4DB404(v6);
        return 1;
      }
  }
}

id sub_1DD4D62C8(uint64_t a1)
{
  if (qword_1EE166628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE166630;

  return [v2 addOperation_];
}

void sub_1DD4D633C(uint64_t a1, uint64_t a2)
{
  v19[0] = a2;
  v3 = sub_1DD63D078();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD6403B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HolidaysDBUpdater(0);
  v11 = sub_1DD4D65E4();
  v12 = *(v11 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction);
  v13 = *(v11 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction + 8);

  if (qword_1EE166628 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE166630;
  v19[1] = qword_1EE166630;
  (*(v4 + 16))(v6, a1, v3);
  v15 = v14;
  sub_1DD6403C8();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v13;
  v17 = v19[0];
  v16[4] = v19[0];
  type metadata accessor for BackgroundQueue();
  sub_1DD4DBEB0(&qword_1EE162D90, type metadata accessor for BackgroundQueue, MEMORY[0x1E6969EE8]);

  v18 = v17;
  sub_1DD63FB38();

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DD4D65E4()
{
  if (qword_1EE1625B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1625B8;
  v2 = sub_1DD4B6E0C(v1, v0);

  return v2;
}

dispatch_semaphore_t sub_1DD4D6798()
{
  result = dispatch_semaphore_create(1);
  qword_1EE1625B8 = result;
  return result;
}

uint64_t sub_1DD4D67BC(uint64_t a1, char *a2)
{
  v52 = a2;
  v4 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v53 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction);
  *v22 = sub_1DD4D62C8;
  v22[1] = 0;
  v23 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_delayedRequeueFunction);
  *v23 = sub_1DD4D633C;
  v23[1] = 0;
  v24 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_catalogUpdateFunction);
  *v24 = sub_1DD4D6668;
  v24[1] = 0;
  v25 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction);
  *v25 = sub_1DD4D66A8;
  v25[1] = 0;
  v26 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_downloadFunction);
  *v26 = sub_1DD4D66F8;
  v26[1] = 0;
  v27 = (v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_installUpdateFunction);
  *v27 = sub_1DD4D6748;
  v27[1] = 0;
  type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion) = a1;
  sub_1DD63CF58();
  v50 = *(v6 + 32);
  v50(v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck, v21, v4);
  v28 = sub_1DD4CFF04(0, 0);

  v51 = v18;
  sub_1DD63CF58();
  v29 = sub_1DD4CFF44();
  if (v29)
  {
    v35 = sub_1DD4CB0C8(v15, v12, v29);

    v36 = *(v6 + 8);
    v36(v15, v4);
    v37 = v51;
    v36(v51, v4);
    *(v28 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion) = v35;
    v38 = v50;
    v50(v37, v12, v4);
  }

  else
  {
    if (qword_1EE1632D8 != -1)
    {
      OUTLINED_FUNCTION_5(&qword_1EE1632D8);
    }

    v30 = sub_1DD63F9F8();
    __swift_project_value_buffer(v30, qword_1EE16EFE0);
    v31 = sub_1DD63F9D8();
    v32 = sub_1DD640388();
    v33 = os_log_type_enabled(v31, v32);
    v38 = v50;
    v37 = v51;
    if (v33)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DD38D000, v31, v32, "Cannot open database.", v34, 2u);
      OUTLINED_FUNCTION_0_1();
    }
  }

  v39 = v52;
  OUTLINED_FUNCTION_1_69();
  sub_1DD4DBEB0(v40, v41, MEMORY[0x1E6969548]);
  v42 = sub_1DD63FD78();
  v43 = *(v6 + 8);
  v44 = v53;
  if (v42)
  {
    v43(v39, v4);
    v45 = v44;
    v46 = v37;
  }

  else
  {
    v43(v37, v4);
    v45 = v44;
    v46 = v39;
  }

  v38(v45, v46, v4);
  v47 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck;
  swift_beginAccess();
  (*(v6 + 40))(v28 + v47, v44, v4);
  swift_endAccess();

  return v28;
}

id static HolidaysDBUpdater.xpcActivityOperation(activity:)(uint64_t a1)
{
  v2 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  v6 = [objc_opt_self() now];
  sub_1DD63D048();

  v7 = objc_allocWithZone(type metadata accessor for HolidaysDBPollingOperation(0));
  swift_unknownObjectRetain();
  return sub_1DD4DB314(v5, a1);
}

void sub_1DD4D6E78(uint64_t a1)
{
  v2 = v1;
  v40 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v40 - v14;
  v16 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v40 - v22);
  sub_1DD4DBF5C(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1DD390754(v15, &qword_1ECCDDCF0, &qword_1DD654738);
  }

  else
  {
    sub_1DD4DBFCC(v15, v23);
    v24 = sub_1DD4D65E4();
    OUTLINED_FUNCTION_11_34(v24);
    swift_beginAccess();
    sub_1DD4DBEF8(v23, &v15[v2]);
    swift_endAccess();
  }

  v25 = sub_1DD4D65E4();
  OUTLINED_FUNCTION_11_34(v25);
  swift_beginAccess();
  sub_1DD4DB480(&v15[v2], v20);

  if (swift_getEnumCaseMultiPayload())
  {
    v26 = *(sub_1DD4D65E4() + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction);

    v27 = [objc_allocWithZone(type metadata accessor for HolidaysDBUpdaterOperation()) init];
    v26();

    sub_1DD4DB404(v20);
    return;
  }

  v28 = v40;
  (*(v5 + 32))(v12, v20, v40);
  if (qword_1EE1632D8 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EE1632D8);
  }

  v29 = sub_1DD63F9F8();
  __swift_project_value_buffer(v29, qword_1EE16EFE0);
  (*(v5 + 16))(v9, v12, v28);
  v30 = sub_1DD63F9D8();
  v31 = sub_1DD640368();
  if (!os_log_type_enabled(v30, v31))
  {
    v37 = OUTLINED_FUNCTION_10_35();
    v23(v37, v28);
    goto LABEL_14;
  }

  v32 = swift_slowAlloc();
  *v32 = 134217984;
  sub_1DD63CFF8();
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v33 < 9.22337204e18)
  {
    v34 = v33;
    v35 = OUTLINED_FUNCTION_10_35();
    v36 = v40;
    v23(v35, v40);
    *(v32 + 4) = v34;
    _os_log_impl(&dword_1DD38D000, v30, v31, "Backing off for %ld", v32, 0xCu);
    v28 = v36;
    OUTLINED_FUNCTION_0_1();
LABEL_14:

    v38 = *(sub_1DD4D65E4() + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_delayedRequeueFunction);

    v39 = [objc_allocWithZone(type metadata accessor for HolidaysDBUpdaterOperation()) init];
    v38(v12, v39);

    v23(v12, v28);
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1DD4D72F0()
{
  v1 = v0;
  type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  if (qword_1EE1632D8 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EE1632D8);
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16EFE0);

  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640358();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
    swift_beginAccess();
    sub_1DD4DB480(v1 + v11, v5);
    v12 = sub_1DD63FE38();
    v14 = sub_1DD39565C(v12, v13, &v19);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DD38D000, v7, v8, "HolidaysDBUpdater wakeup, state=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v15 = sub_1DD6408F8();
  v17 = v16;

  sub_1DD636B8C(v15, v17, v1);
}

uint64_t sub_1DD4D7508(uint64_t a1)
{
  v15 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DD643F90;
  v9 = sub_1DD6408F8();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1DD392BD8();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  OUTLINED_FUNCTION_7_38();
  sub_1DD63F998();

  sub_1DD4D774C(a1);
  if (v14)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_7_38();
    sub_1DD63F9A8();
    result = (*(v2 + 8))(v6, v15);
    __break(1u);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_7_38();
    sub_1DD63F9A8();
    return (*(v2 + 8))(v6, v15);
  }

  return result;
}

void sub_1DD4D774C(uint64_t a1)
{
  v2 = sub_1DD63D078();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v12 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
  swift_beginAccess();
  sub_1DD4DB480(a1 + v12, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD4D7F3C(*v11, *(v11 + 1));
      goto LABEL_6;
    case 2u:
      sub_1DD4D82D0(*v11, *(v11 + 1));
      goto LABEL_6;
    case 3u:
      sub_1DD4D8FE0(*v11, *(v11 + 1), v11[16]);
LABEL_6:

      break;
    case 4u:
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v13 = sub_1DD63F9F8();
      __swift_project_value_buffer(v13, qword_1EE16EFE0);
      v14 = sub_1DD63F9D8();
      v15 = sub_1DD640368();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1DD38D000, v14, v15, "Asset updates finished; not requeueing.", v16, 2u);
        MEMORY[0x1E12B3DA0](v16, -1, -1);
      }

      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1DD4DBEF8(v8, a1 + v12);
      swift_endAccess();
      break;
    case 5u:
      sub_1DD4D7C98();
      break;
    case 6u:
      sub_1DD4D7DD8();
      break;
    case 7u:
      return;
    case 8u:
      sub_1DD4D81E8();
      break;
    default:
      (*(v3 + 32))(v5, v11, v2);
      sub_1DD4D7A78(v5);
      (*(v3 + 8))(v5, v2);
      break;
  }
}

uint64_t sub_1DD4D7A78(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_1DD63D078();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() now];
  sub_1DD63D048();

  sub_1DD4DBEB0(&qword_1EE166638, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  LOBYTE(v8) = sub_1DD63FD68();
  (*(v5 + 8))(v7, v4);
  v9 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v10 = 0;
  }

  __swift_storeEnumTagSinglePayload(v3, v10, 1, v9);
  sub_1DD4D6E78(v3);
  return sub_1DD390754(v3, &qword_1ECCDDCF0, &qword_1DD654738);
}

uint64_t sub_1DD4D7C98()
{
  v1 = *v0;
  v2 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v5 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
  swift_beginAccess();
  sub_1DD4DBEF8(v4, v0 + v5);
  swift_endAccess();
  v6 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_catalogUpdateFunction);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;

  v6(sub_1DD4DC030, v7);
}

uint64_t sub_1DD4D7DD8()
{
  v1 = *v0;
  v2 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v5 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
  swift_beginAccess();
  sub_1DD4DBEF8(v4, v0 + v5);
  result = swift_endAccess();
  v7 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction);
    v10 = swift_allocObject();
    *(v10 + 16) = v1;

    v9(v8, sub_1DD4DC038, v10);
  }

  return result;
}

uint64_t sub_1DD4D7F3C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v19 - v7);
  if (sub_1DD3CC020() <= a2)
  {
    v15 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
    sub_1DD4D6E78(v8);
    return sub_1DD390754(v8, &qword_1ECCDDCF0, &qword_1DD654738);
  }

  sub_1DD408BFC();
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1E12B2C10](a2, a1);
  }

  else
  {
    v9 = *(a1 + 8 * a2 + 32);
  }

  v10 = v9[5];
  v11 = v9[6];
  __swift_project_boxed_opaque_existential_1(v9 + 2, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12 <= 6 && ((1 << v12) & 0x4C) != 0)
  {
    *v8 = a1;
    v8[1] = a2 + 1;
    v14 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);

    sub_1DD4D6E78(v8);

    return sub_1DD390754(v8, &qword_1ECCDDCF0, &qword_1DD654738);
  }

  v17 = *(v2 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_downloadFunction);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v5;

  v17(v9, sub_1DD4DC050, v18);
}

void sub_1DD4D81E8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *v0;
    v5 = *(v1 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;

    v5(v3, sub_1DD4DC05C, v6);
  }
}

uint64_t sub_1DD4D82D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = sub_1DD63CE68();
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v60 = (&v53 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v53 - v20;
  if (sub_1DD3CC020() <= a2)
  {
    *v21 = a1;
    *(v21 + 1) = 0;
    v21[16] = 0;
    v33 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v33);

    sub_1DD4D6E78(v21);
  }

  else
  {
    v57 = v6;
    sub_1DD408BFC();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x1E12B2C10](a2, a1);
    }

    else
    {
      v58 = *(a1 + 8 * a2 + 32);
    }

    v22 = sub_1DD4CFF44();
    if (v22)
    {
      v55 = a1;
      v56 = v22;
      v23 = v58;
      sub_1DD4D4858(v12);
      v24 = v13;
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
      {
        v39 = v59;
        v40 = *(v59 + 32);
        v54 = v24;
        v40(v60, v12, v24);
        v41 = *(v3 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_installUpdateFunction);

        v41(v23, v56);

        *(sub_1DD4D65E4() + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion) = v23[7];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DD643F90;
        strcpy((inited + 32), "UpdateVersion");
        *(inited + 46) = -4864;
        v61 = v23[7];
        sub_1DD640CB8();
        v43 = sub_1DD63FDA8();

        *(inited + 48) = v43;
        sub_1DD395950();
        v44 = sub_1DD63FC88();
        sub_1DD399F2C(0xD000000000000017, 0x80000001DD66E980, v44);

        v45 = v23[5];
        v46 = v23[6];
        __swift_project_boxed_opaque_existential_1(v23 + 2, v45);
        (*(v46 + 48))(v45, v46);
        *v21 = v55;
        *(v21 + 1) = a2 + 1;
        v47 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v21, 0, 1, v47);

        sub_1DD4D6E78(v21);

        sub_1DD390754(v21, &qword_1ECCDDCF0, &qword_1DD654738);
        return (*(v39 + 8))(v60, v54);
      }

      sub_1DD390754(v12, &qword_1ECCDBF78, &unk_1DD644440);
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v25 = sub_1DD63F9F8();
      __swift_project_value_buffer(v25, qword_1EE16EFE0);

      v26 = sub_1DD63F9D8();
      LODWORD(v27) = sub_1DD640388();

      v28 = os_log_type_enabled(v26, v27);
      v29 = v55;
      if (v28)
      {
        v30 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = v60;
        *v30 = 136315138;
        sub_1DD4D468C(v9);
        if (__swift_getEnumTagSinglePayload(v9, 1, v13))
        {
          sub_1DD390754(v9, &qword_1ECCDBF78, &unk_1DD644440);
          v31 = 0xE500000000000000;
          v32 = 0x296C696E28;
        }

        else
        {
          LODWORD(v54) = v27;
          v27 = v59;
          (*(v59 + 16))(v16, v9, v13);
          sub_1DD390754(v9, &qword_1ECCDBF78, &unk_1DD644440);
          v32 = sub_1DD63CDD8();
          v31 = v49;
          (*(v27 + 8))(v16, v13);
          LOBYTE(v27) = v54;
        }

        v50 = sub_1DD39565C(v32, v31, &v61);

        *(v30 + 4) = v50;
        _os_log_impl(&dword_1DD38D000, v26, v27, "Asset at %s does not conform.", v30, 0xCu);
        v51 = v60;
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1E12B3DA0](v51, -1, -1);
        MEMORY[0x1E12B3DA0](v30, -1, -1);
      }

      *v21 = v29;
      *(v21 + 1) = 0;
      v21[16] = 1;
      v52 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v52);

      sub_1DD4D6E78(v21);
    }

    else
    {
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v34 = sub_1DD63F9F8();
      __swift_project_value_buffer(v34, qword_1EE16EFE0);
      v35 = sub_1DD63F9D8();
      v36 = sub_1DD640388();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DD38D000, v35, v36, "Can't access database", v37, 2u);
        MEMORY[0x1E12B3DA0](v37, -1, -1);
      }

      *v21 = a1;
      *(v21 + 1) = 0;
      v21[16] = 1;
      v38 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v38);

      sub_1DD4D6E78(v21);
    }
  }

  return sub_1DD390754(v21, &qword_1ECCDDCF0, &qword_1DD654738);
}

uint64_t sub_1DD4D8FE0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v136 = *v3;
  v8 = sub_1DD63CE68();
  v133 = *(v8 - 8);
  v134 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v126[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = &v126[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v126[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v131 = &v126[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v130 = &v126[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v126[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v126[-v23];
  v25 = sub_1DD63D078();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v126[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v135 = &v126[-v30];
  if (sub_1DD3CC020() > a2)
  {
    sub_1DD408BFC();
    v128 = a2;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1E12B2C10](a2);
    }

    else
    {
      v31 = *(a1 + 8 * a2 + 32);
    }

    v33 = v31[5];
    v32 = v31[6];
    __swift_project_boxed_opaque_existential_1(v31 + 2, v33);
    v34 = (*(v32 + 8))(v33, v32);
    if ((v34 - 2) < 2)
    {
      LODWORD(v36) = a3;
      if (*(v4 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_localDBVersion) < v31[7])
      {
        sub_1DD4D4858(v21);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v134);
        sub_1DD390754(v21, &qword_1ECCDBF78, &unk_1DD644440);
        v35 = a1;
        if (EnumTagSinglePayload != 1)
        {
          if (qword_1EE1632D8 != -1)
          {
            swift_once();
          }

          v79 = sub_1DD63F9F8();
          __swift_project_value_buffer(v79, qword_1EE16EFE0);

          v80 = sub_1DD63F9D8();
          v81 = sub_1DD640368();

          v82 = os_log_type_enabled(v80, v81);
          v83 = v131;
          if (v82)
          {
            v84 = v31;
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v137 = v86;
            *v85 = 136315138;
            v130 = v84;
            sub_1DD4D468C(v83);
            v87 = v134;
            if (__swift_getEnumTagSinglePayload(v83, 1, v134))
            {
              v88 = 0x296C696E28;
              sub_1DD390754(v83, &qword_1ECCDBF78, &unk_1DD644440);
              v89 = 0xE500000000000000;
            }

            else
            {
              v121 = v133;
              v122 = *(v133 + 16);
              v127 = v36;
              v36 = v132;
              v122(v132, v83, v87);
              sub_1DD390754(v83, &qword_1ECCDBF78, &unk_1DD644440);
              v88 = sub_1DD63CDD8();
              v89 = v123;
              v124 = v36;
              LOBYTE(v36) = v127;
              (*(v121 + 8))(v124, v87);
            }

            v125 = sub_1DD39565C(v88, v89, &v137);

            *(v85 + 4) = v125;
            _os_log_impl(&dword_1DD38D000, v80, v81, "Will retry installing asset at %s", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v86);
            MEMORY[0x1E12B3DA0](v86, -1, -1);
            MEMORY[0x1E12B3DA0](v85, -1, -1);
          }

          else
          {
          }

          goto LABEL_52;
        }

        if (qword_1EE1632D8 != -1)
        {
          swift_once();
        }

        v50 = sub_1DD63F9F8();
        __swift_project_value_buffer(v50, qword_1EE16EFE0);

        v51 = v31;
        v52 = sub_1DD63F9D8();
        v53 = sub_1DD640368();

        v54 = os_log_type_enabled(v52, v53);
        v55 = v130;
        if (v54)
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v137 = v57;
          *v56 = 136315138;
          v58 = v51;
          sub_1DD4D468C(v55);
          v59 = v134;
          if (__swift_getEnumTagSinglePayload(v55, 1, v134))
          {
            v60 = 0x296C696E28;
            sub_1DD390754(v55, &qword_1ECCDBF78, &unk_1DD644440);
            v61 = 0xE500000000000000;
          }

          else
          {
            v115 = v55;
            v116 = v133;
            v117 = *(v133 + 16);
            v127 = v36;
            v36 = v132;
            v117(v132, v115, v59);
            sub_1DD390754(v115, &qword_1ECCDBF78, &unk_1DD644440);
            v60 = sub_1DD63CDD8();
            v61 = v118;
            v119 = v36;
            LOBYTE(v36) = v127;
            (*(v116 + 8))(v119, v134);
          }

          v120 = sub_1DD39565C(v60, v61, &v137);

          *(v56 + 4) = v120;
          _os_log_impl(&dword_1DD38D000, v52, v53, "Purging malformed asset %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          MEMORY[0x1E12B3DA0](v57, -1, -1);
          MEMORY[0x1E12B3DA0](v56, -1, -1);
        }

        else
        {
          v58 = v51;
        }

        v109 = v58[5];
        v110 = v58[6];
        v111 = v58 + 2;
        goto LABEL_51;
      }

      v35 = a1;
      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v62 = sub_1DD63F9F8();
      __swift_project_value_buffer(v62, qword_1EE16EFE0);

      v63 = sub_1DD63F9D8();
      v64 = sub_1DD640368();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = v31;
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v137 = v67;
        *v66 = 136315138;
        v130 = v65;
        sub_1DD4D468C(v24);
        v68 = v134;
        if (__swift_getEnumTagSinglePayload(v24, 1, v134))
        {
          v69 = 0x296C696E28;
          sub_1DD390754(v24, &qword_1ECCDBF78, &unk_1DD644440);
          v70 = 0xE500000000000000;
        }

        else
        {
          v97 = v133;
          v98 = *(v133 + 16);
          v127 = v36;
          v36 = v132;
          v98(v132, v24, v68);
          sub_1DD390754(v24, &qword_1ECCDBF78, &unk_1DD644440);
          v99 = v68;
          v69 = sub_1DD63CDD8();
          v70 = v100;
          v101 = v36;
          LOBYTE(v36) = v127;
          (*(v97 + 8))(v101, v99);
        }

        v102 = sub_1DD39565C(v69, v70, &v137);

        *(v66 + 4) = v102;
        _os_log_impl(&dword_1DD38D000, v63, v64, "Purging completed update %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1E12B3DA0](v67, -1, -1);
        v103 = v66;
        goto LABEL_49;
      }
    }

    else
    {
      v35 = a1;
      LODWORD(v36) = a3;
      if (v34 == 1)
      {
LABEL_52:
        v112 = v128 + 1;
        v47 = v135;
        *v135 = v35;
        *(v47 + 8) = v112;
        *(v47 + 16) = v36 & 1;
        v113 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v47, 0, 1, v113);

        sub_1DD4D6E78(v47);

        return sub_1DD390754(v47, &qword_1ECCDDCF0, &qword_1DD654738);
      }

      if (v34 == 4)
      {
        if (qword_1EE1632D8 != -1)
        {
          swift_once();
        }

        v37 = sub_1DD63F9F8();
        __swift_project_value_buffer(v37, qword_1EE16EFE0);

        v38 = sub_1DD63F9D8();
        v39 = sub_1DD640368();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = v31;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v137 = v42;
          *v41 = 136315138;
          v130 = v40;
          sub_1DD4D468C(v14);
          v43 = v134;
          if (__swift_getEnumTagSinglePayload(v14, 1, v134))
          {
            v44 = 0x296C696E28;
            sub_1DD390754(v14, &qword_1ECCDBF78, &unk_1DD644440);
            v45 = 0xE500000000000000;
          }

          else
          {
            v90 = v133;
            v91 = *(v133 + 16);
            v127 = v36;
            v36 = v132;
            v91(v132, v14, v43);
            sub_1DD390754(v14, &qword_1ECCDBF78, &unk_1DD644440);
            v44 = sub_1DD63CDD8();
            v45 = v92;
            v93 = v36;
            LOBYTE(v36) = v127;
            (*(v90 + 8))(v93, v43);
          }

          v94 = sub_1DD39565C(v44, v45, &v137);

          *(v41 + 4) = v94;
          _os_log_impl(&dword_1DD38D000, v38, v39, "Purging stuck download %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x1E12B3DA0](v42, -1, -1);
          MEMORY[0x1E12B3DA0](v41, -1, -1);

          v31 = v130;
        }

        else
        {
        }

        v95 = v31[5];
        v96 = v31[6];
        __swift_project_boxed_opaque_existential_1(v31 + 2, v95);
        (*(v96 + 40))(v95, v96);
        goto LABEL_50;
      }

      if (qword_1EE1632D8 != -1)
      {
        swift_once();
      }

      v71 = sub_1DD63F9F8();
      __swift_project_value_buffer(v71, qword_1EE16EFE0);

      v63 = sub_1DD63F9D8();
      v72 = sub_1DD640368();

      if (os_log_type_enabled(v63, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v137 = v74;
        *v73 = 136315138;
        v130 = v31;
        v75 = v129;
        sub_1DD4D468C(v129);
        v76 = v134;
        if (__swift_getEnumTagSinglePayload(v75, 1, v134))
        {
          v77 = 0x296C696E28;
          sub_1DD390754(v75, &qword_1ECCDBF78, &unk_1DD644440);
          v78 = 0xE500000000000000;
        }

        else
        {
          v104 = v133;
          v105 = *(v133 + 16);
          v127 = v36;
          v36 = v132;
          v105(v132, v75, v76);
          sub_1DD390754(v75, &qword_1ECCDBF78, &unk_1DD644440);
          v77 = sub_1DD63CDD8();
          v78 = v106;
          v107 = v36;
          LOBYTE(v36) = v127;
          (*(v104 + 8))(v107, v76);
        }

        v108 = sub_1DD39565C(v77, v78, &v137);

        *(v73 + 4) = v108;
        _os_log_impl(&dword_1DD38D000, v63, v72, "Purging odd-state asset %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x1E12B3DA0](v74, -1, -1);
        v103 = v73;
LABEL_49:
        MEMORY[0x1E12B3DA0](v103, -1, -1);

        v31 = v130;
        goto LABEL_50;
      }
    }

LABEL_50:
    v109 = v31[5];
    v110 = v31[6];
    v111 = v31 + 2;
LABEL_51:
    __swift_project_boxed_opaque_existential_1(v111, v109);
    (*(v110 + 48))(v109, v110);
    goto LABEL_52;
  }

  if (a3)
  {
    v46 = [objc_opt_self() now];
    sub_1DD63D048();

    v47 = v135;
    sub_1DD63CF98();
    (*(v26 + 8))(v28, v25);
    v48 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  }

  else
  {
    v48 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    v47 = v135;
  }

  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
  sub_1DD4D6E78(v47);
  return sub_1DD390754(v47, &qword_1ECCDDCF0, &qword_1DD654738);
}

void sub_1DD4D9ED0(void *a1)
{
  v2 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v24 - v6 + 24;
  if (a1)
  {
    v8 = a1;
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD63F9F8();
    __swift_project_value_buffer(v9, qword_1EE16EFE0);
    v10 = a1;
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640378();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v13 = 136315138;
      swift_getErrorValue();
      v14 = sub_1DD640D88();
      v16 = sub_1DD39565C(v14, v15, v24);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_1DD38D000, v11, v12, "Downloading catalog failed: %s", v13, 0xCu);
      v17 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12B3DA0](v17, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    v18 = sub_1DD4D65E4();
    swift_storeEnumTagMultiPayload();
    v19 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
    swift_beginAccess();
    sub_1DD4DBEF8(v4, v18 + v19);
    swift_endAccess();

    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640368();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DD38D000, v20, v21, "setting state to .ready and returning", v22, 2u);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24 - v6 + 24, 1, 1, v2);
    sub_1DD4D6E78(v7);
    sub_1DD390754(v7, &qword_1ECCDDCF0, &qword_1DD654738);
  }
}

uint64_t sub_1DD4DA218(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v34 - v7 + 24);
  v9 = sub_1DD63D078();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v13 = [objc_opt_self() now];
  sub_1DD63D048();

  v14 = sub_1DD4D65E4();
  v15 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck;
  swift_beginAccess();
  (*(v10 + 24))(v14 + v15, v12, v9);
  swift_endAccess();

  v16 = qword_1EE1632D8;
  if (a2)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD63F9F8();
    __swift_project_value_buffer(v17, qword_1EE16EFE0);
    v18 = a1;
    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640378();
    sub_1DD4DC044(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v34[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = sub_1DD640D88();
      v26 = sub_1DD39565C(v24, v25, v34);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1DD38D000, v19, v20, "Asset query failed: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }

    sub_1DD63CF98();
  }

  else
  {

    if (v16 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD63F9F8();
    __swift_project_value_buffer(v27, qword_1EE16EFE0);

    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640358();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = sub_1DD3CC020();
      sub_1DD4DC044(a1, 0);
      _os_log_impl(&dword_1DD38D000, v28, v29, "Found %ld new updates.", v30, 0xCu);
      MEMORY[0x1E12B3DA0](v30, -1, -1);
    }

    else
    {
      sub_1DD4DC044(a1, 0);
    }

    if (sub_1DD3CC020())
    {
      *v8 = a1;
      v8[1] = 0;
    }

    else
    {
      sub_1DD4DC044(a1, 0);
    }
  }

  v31 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v31);
  sub_1DD4D6E78(v8);
  sub_1DD390754(v8, &qword_1ECCDDCF0, &qword_1DD654738);
  return (*(v10 + 8))(v12, v9);
}

void sub_1DD4DA690(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  if (a1)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD63F9F8();
    __swift_project_value_buffer(v9, qword_1EE16EFE0);
    v10 = a1;
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640378();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1DD640D88();
      v17 = sub_1DD39565C(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DD38D000, v11, v12, "Downloading asset failed: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    *v8 = a2;
    *(v8 + 1) = 0;
    v8[16] = 1;
    v18 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
    goto LABEL_9;
  }

  if (!__OFADD__(a3, 1))
  {
    *v8 = a2;
    *(v8 + 1) = a3 + 1;
    v18 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);

    sub_1DD4D6E78(v8);
    sub_1DD390754(v8, &qword_1ECCDDCF0, &qword_1DD654738);
    return;
  }

  __break(1u);
}

uint64_t sub_1DD4DA8F0(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1DD63D078();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v31 - v11);
  v13 = qword_1EE1632D8;
  if (a2)
  {
    if (qword_1EE1632D8 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD63F9F8();
    __swift_project_value_buffer(v14, qword_1EE16EFE0);
    v15 = a1;
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640378();
    sub_1DD4DC044(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = sub_1DD640D88();
      v23 = sub_1DD39565C(v21, v22, &v32);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1DD38D000, v16, v17, "Asset query failed: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
    }

    v24 = [objc_opt_self() now];
    sub_1DD63D048();

    sub_1DD63CF98();
    (*(v7 + 8))(v9, v6);
    v25 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  }

  else
  {

    if (v13 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD63F9F8();
    __swift_project_value_buffer(v26, qword_1EE16EFE0);

    v27 = sub_1DD63F9D8();
    v28 = sub_1DD640358();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = sub_1DD3CC020();
      sub_1DD4DC044(a1, 0);
      _os_log_impl(&dword_1DD38D000, v27, v28, "Refreshed %ld updates.", v29, 0xCu);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
    }

    else
    {
      sub_1DD4DC044(a1, 0);
    }

    if (sub_1DD3CC020())
    {
      *v12 = a1;
      v12[1] = 0;
    }

    else
    {
      sub_1DD4DC044(a1, 0);
    }

    v25 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  }

  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v25);
  sub_1DD4D6E78(v12);
  return sub_1DD390754(v12, &qword_1ECCDDCF0, &qword_1DD654738);
}

uint64_t sub_1DD4DAD24()
{
  sub_1DD4DB404(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state);
  v1 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck;
  sub_1DD63D078();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_requeueFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_delayedRequeueFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_catalogUpdateFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_findUpdatesFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_downloadFunction);

  OUTLINED_FUNCTION_6_45(OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_installUpdateFunction);
}

uint64_t HolidaysDBUpdater.deinit()
{
  v0 = HolidaysDatabase.deinit();
  sub_1DD4DB404(v0 + OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state);
  v1 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_lastCheck;
  sub_1DD63D078();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_8_40();
  OUTLINED_FUNCTION_8_40();
  OUTLINED_FUNCTION_8_40();
  OUTLINED_FUNCTION_8_40();
  OUTLINED_FUNCTION_8_40();
  OUTLINED_FUNCTION_8_40();
  return v0;
}

uint64_t HolidaysDBUpdater.__deallocating_deinit()
{
  HolidaysDBUpdater.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4DAF00(__n128 a1)
{
  v2 = OBJC_IVAR____TtC13SiriInference26HolidaysDBUpdaterOperation____lazy_storage___updater;
  if (*(v1 + OBJC_IVAR____TtC13SiriInference26HolidaysDBUpdaterOperation____lazy_storage___updater))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13SiriInference26HolidaysDBUpdaterOperation____lazy_storage___updater);
  }

  else
  {
    type metadata accessor for HolidaysDBUpdater(0);
    v3 = sub_1DD4D65E4();
    *(v1 + v2) = v3;
  }

  return v3;
}

uint64_t HolidaysDBUpdaterOperation.isReady.getter()
{
  v0 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v15 = sub_1DD4DAF00(v14);
  v16 = OBJC_IVAR____TtC13SiriInference17HolidaysDBUpdater_state;
  swift_beginAccess();
  sub_1DD4DB480(v15 + v16, v13);

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1DD4DB404(v13);
    v17 = 1;
  }

  else
  {
    (*(v2 + 32))(v9, v13, v0);
    v18 = [objc_opt_self() now];
    sub_1DD63D048();

    OUTLINED_FUNCTION_1_69();
    sub_1DD4DBEB0(v19, v20, MEMORY[0x1E6969548]);
    LOBYTE(v18) = sub_1DD63FD68();
    v21 = *(v2 + 8);
    v21(v6, v0);
    v21(v9, v0);
    v17 = v18 ^ 1;
  }

  return v17 & 1;
}

id sub_1DD4DB1BC()
{
  v0 = objc_allocWithZone(swift_getObjectType());

  return [v0 init];
}

Swift::Void __swiftcall HolidaysDBUpdaterOperation.main()()
{
  if (([v0 isCancelled] & 1) == 0)
  {
    sub_1DD4DAF00(v1);
    sub_1DD4D72F0();
  }
}

id HolidaysDBUpdaterOperation.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13SiriInference26HolidaysDBUpdaterOperation____lazy_storage___updater] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1DD4DB314(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC13SiriInference26HolidaysDBPollingOperation_runDate;
  v7 = sub_1DD63D078();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  if (a2)
  {
    v9 = XPCActivityOperation.init(activity:)(a2);
  }

  else
  {
    v12.receiver = v2;
    v12.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v12, sel_init);
  }

  v10 = v9;
  (*(v8 + 8))(a1, v7);
  return v10;
}

uint64_t sub_1DD4DB404(uint64_t a1)
{
  v2 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4DB480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL HolidaysDBPollingOperation.isReady.getter()
{
  v1 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = [objc_opt_self() now];
  sub_1DD63D048();

  (*(v3 + 16))(v7, v0 + OBJC_IVAR____TtC13SiriInference26HolidaysDBPollingOperation_runDate, v1);
  OUTLINED_FUNCTION_1_69();
  sub_1DD4DBEB0(v12, v13, MEMORY[0x1E6969548]);
  v14 = sub_1DD63FD68();
  v15 = *(v3 + 8);
  v15(v7, v1);
  v15(v10, v1);
  return (v14 & 1) == 0;
}

id sub_1DD4DB698()
{
  ObjectType = swift_getObjectType();
  sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, v0 + OBJC_IVAR____TtC13SiriInference26HolidaysDBPollingOperation_runDate);
  v7 = *(v0 + OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity);
  v8 = objc_allocWithZone(ObjectType);
  swift_unknownObjectRetain();
  return sub_1DD4DB314(v5, v7);
}

Swift::Void __swiftcall HolidaysDBPollingOperation.main()()
{
  if ((sub_1DD6395C4() & 1) == 0)
  {
    type metadata accessor for HolidaysDBUpdater(0);
    sub_1DD4D65E4();
    sub_1DD4D72F0();
  }
}

id HolidaysDBPollingOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1DD4DB8CC()
{
  v1 = OBJC_IVAR____TtC13SiriInference26HolidaysDBPollingOperation_runDate;
  sub_1DD63D078();
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id sub_1DD4DB930()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD4DB9F8(uint64_t a1)
{
  result = type metadata accessor for HolidaysDBUpdater.UpdaterState(319);
  if (v2 <= 0x3F)
  {
    result = sub_1DD63D078();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DD4DBB2C(uint64_t a1)
{
  result = sub_1DD63D078();
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

void sub_1DD4DBBD4(uint64_t a1)
{
  sub_1DD63D078();
  if (v1 <= 0x3F)
  {
    sub_1DD4DBC5C(319);
    if (v2 <= 0x3F)
    {
      sub_1DD4DBCD0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1DD4DBC5C(uint64_t a1)
{
  if (!qword_1EE1602D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDDCD8, &qword_1DD654680);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE1602D8);
    }
  }
}

void sub_1DD4DBCD0(uint64_t a1)
{
  if (!qword_1EE1602E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDDCD8, &qword_1DD654680);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE1602E0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HolidaysDBUpdater.ShouldRetry(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4DBE2C()
{
  result = qword_1ECCDDCE0;
  if (!qword_1ECCDDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDCE0);
  }

  return result;
}

uint64_t sub_1DD4DBEB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD4DBEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4DBF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF0, &qword_1DD654738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4DBFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HolidaysDBUpdater.UpdaterState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DD4DC044(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1DD4DC0A8()
{
  sub_1DD5D3268(0);
  v1 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD5D2E58();
    if (v0)
    {
      break;
    }

    if (!v2)
    {
      return v1;
    }

    v21 = v2;
    sub_1DD4DD9E4(&v21, &v15);

    v3 = v16;
    if (v16)
    {
      v4 = v17;
      v5 = v18;
      v6 = v19;
      v7 = v20;
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3C03FC(0, *(v1 + 16) + 1, 1, v1);
        v1 = v11;
      }

      v9 = *(v1 + 16);
      v8 = *(v1 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DD3C03FC(v8 > 1, v9 + 1, 1, v1);
        v1 = v12;
      }

      *(v1 + 16) = v9 + 1;
      v10 = (v1 + 48 * v9);
      v10[4] = v14;
      v10[5] = v3;
      v10[6] = v4;
      v10[7] = v5;
      v10[8] = v6;
      v10[9] = v7;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DD4DC214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DD42A2D4(0, 0, 0, a4, a5, a6, a7);
  v8 = v25;
  sub_1DD5D3268(0);
  while (1)
  {
    sub_1DD5D2E58();
    if (v7)
    {
      break;
    }

    if (!v9)
    {
      return v8;
    }

    if (!*(v9 + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      break;
    }

    sub_1DD4DDC08(v9 + 32, &v20, &qword_1ECCDCF98, &qword_1DD6547F0);
    if (!v21)
    {
      goto LABEL_11;
    }

    sub_1DD3AA4A8(&v20, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    swift_dynamicCast();

    v14 = v23;
    v15 = v24;
    v25 = v8;
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1DD42A2D4(v16 > 1, v17 + 1, 1, v10, v11, v12, v13);
      v8 = v25;
    }

    *(v8 + 16) = v17 + 1;
    v18 = v8 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1DD4DC398(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v32 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD64D850;
  *(inited + 32) = swift_getKeyPath();
  v34 = inited + 32;
  KeyPath = swift_getKeyPath();
  v6 = 0;
  result = 0;
  *(inited + 40) = KeyPath;
  v8 = inited & 0xC000000000000001;
  v38 = inited;
  v35 = inited & 0xFFFFFFFFFFFFFF8;
  *&v9 = 134218242;
  v36 = v9;
  v37 = a1;
  while (1)
  {
    v42 = v6;
    if (v8)
    {
      v10 = MEMORY[0x1E12B2C10](result, v38);
      goto LABEL_6;
    }

    if (result >= *(v35 + 16))
    {
      break;
    }

    v10 = *(v34 + 8 * result);

LABEL_6:
    v11 = sub_1DD4DC850(a1, v10);
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v12 = sub_1DD63F9F8();
    v13 = __swift_project_value_buffer(v12, qword_1EE16F068);

    v40 = v13;
    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();

    v41 = v15;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v16 = v36;
      *(v16 + 4) = *(v11 + 16);

      *(v16 + 12) = 2080;
      v45[0] = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF8, &qword_1DD6547E8);
      v17 = sub_1DD63FE38();
      v19 = v8;
      v20 = sub_1DD39565C(v17, v18, v46);

      *(v16 + 14) = v20;
      v8 = v19;
      _os_log_impl(&dword_1DD38D000, v14, v41, "HypocorismGenerator found %ld expansions for '%s'", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v39);
      a1 = v37;
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    if (*(v11 + 16))
    {
      swift_setDeallocating();
      sub_1DD46CABC();
      return v11;
    }

    v6 = 1;
    result = 1;
    if (v42)
    {
      swift_setDeallocating();
      sub_1DD46CABC();
      sub_1DD4DDC08(a1, v33, &qword_1ECCDBC18, &unk_1DD6459A0);
      v21 = sub_1DD63F9D8();
      v22 = sub_1DD640368();
      if (os_log_type_enabled(v21, v22))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v44 = v25;
        *v24 = 136315138;
        v26 = v33;
        memcpy(v45, v33, sizeof(v45));
        memcpy(v43, v33, sizeof(v43));
        v27 = sub_1DD3C9478(v45, v46);
        v28 = ContactQuery.description.getter(v27);
        v30 = v29;
        memcpy(v46, v43, sizeof(v46));
        sub_1DD3C9580(v46);
        sub_1DD390754(v26, &qword_1ECCDBC18, &unk_1DD6459A0);
        v31 = sub_1DD39565C(v28, v30, &v44);

        *(v24 + 4) = v31;
        _os_log_impl(&dword_1DD38D000, v21, v22, "HypocorismGenerator found no available expansions query: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        sub_1DD390754(v33, &qword_1ECCDBC18, &unk_1DD6459A0);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4DC850(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v32 = __src;
  memcpy(__srca, __src, sizeof(__srca));
  sub_1DD3C9478(__dst, v37);
  swift_getAtKeyPath();
  memcpy(v37, __srca, 0x108uLL);
  sub_1DD3C9580(v37);
  v5 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v5 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v31 = a2;
    type metadata accessor for HypocorismGenerator(0);
    v6 = v2;
    v7 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v33, v34, 1, 1);

    v8 = *(v7 + 16);

    v9 = 0;
    v10 = (v7 + 40);
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v8 == v9)
      {
        swift_bridgeObjectRelease_n();
        return v11;
      }

      if (v9 >= *(v7 + 16))
      {
        break;
      }

      v13 = *(v10 - 1);
      v12 = *v10;

      v14 = sub_1DD4DCC14(v9, v13, v12, v6, v32, v7, v31);

      v15 = *(v14 + 16);
      v16 = *(v11 + 16);
      if (__OFADD__(v16, v15))
      {
        goto LABEL_25;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v15 > *(v11 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v11 = v17;
      }

      if (*(v14 + 16))
      {
        v18 = (*(v11 + 24) >> 1) - *(v11 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
        if (v18 < v15)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = *(v11 + 16);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_28;
          }

          *(v11 + 16) = v21;
        }
      }

      else
      {

        if (v15)
        {
          goto LABEL_26;
        }
      }

      v10 += 2;
      ++v9;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (qword_1EE165FB0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v22 = sub_1DD63F9F8();
  __swift_project_value_buffer(v22, qword_1EE16F068);

  v23 = sub_1DD63F9D8();
  v24 = sub_1DD640368();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    __srca[0] = v26;
    *v25 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDCF8, &qword_1DD6547E8);
    v27 = sub_1DD63FE38();
    v29 = sub_1DD39565C(v27, v28, __srca);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1DD38D000, v23, v24, "HypocorismExpander skipping for '%s' since name value is blank", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1E12B3DA0](v26, -1, -1);
    MEMORY[0x1E12B3DA0](v25, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD4DCC14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2;
  v13 = sub_1DD4DD0DC(a2, a3);
  v14 = qword_1EE165FB0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1EE16F068);

  v16 = sub_1DD63F9D8();
  v17 = sub_1DD640368();

  if (os_log_type_enabled(v16, v17))
  {
    v32 = a7;
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = a6;
    v33 = v30;
    *v18 = 136315394;
    *(v18 + 4) = sub_1DD39565C(v11, a3, &v33);
    *(v18 + 12) = 2080;
    v19 = MEMORY[0x1E12B2430](v13, MEMORY[0x1E69E6158]);
    v29 = v11;
    v21 = v17;
    v22 = a1;
    v23 = sub_1DD39565C(v19, v20, &v33);

    *(v18 + 14) = v23;
    a1 = v22;
    _os_log_impl(&dword_1DD38D000, v16, v21, "HypocorismGenerator expanded %s to %s", v18, 0x16u);
    swift_arrayDestroy();
    a6 = v31;
    MEMORY[0x1E12B3DA0](v30, -1, -1);
    v24 = v18;
    a7 = v32;
    MEMORY[0x1E12B3DA0](v24, -1, -1);

    v11 = v29;
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v25);
  v28[2] = v11;
  v28[3] = a3;
  v28[4] = a5;
  v28[5] = a6;
  v28[6] = a1;
  v28[7] = a7;
  v26 = sub_1DD471094(MEMORY[0x1E69E7CC0], sub_1DD4DDBE4, v28, v13);

  return v26;
}

uint64_t sub_1DD4DD0DC(uint64_t a1, uint64_t a2)
{
  if (sub_1DD582448())
  {
    v3 = sub_1DD63FE58();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD643F90;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &off_1F58C4E78;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    v7 = sub_1DD4061B8(0xD0000000000000A0, 0x80000001DD66EA90, inited);
    if (v2)
    {

      swift_setDeallocating();
      v8 = inited;
      sub_1DD46CB4C();
    }

    else
    {
      v13 = v7;
      swift_setDeallocating();
      sub_1DD46CB4C();
      v8 = sub_1DD4DC214(v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v9 = sub_1DD63F9F8();
    __swift_project_value_buffer(v9, qword_1EE16F068);
    v10 = sub_1DD63F9D8();
    v11 = sub_1DD640378();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DD38D000, v10, v11, "HypocorismGenerator: could not open hypocorism db", v12, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

void sub_1DD4DD2C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v29[1] = a8;
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v31 = *(v29[0] - 8);
  MEMORY[0x1EEE9AC00](v29[0]);
  v30 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  v19 = *a2;
  v20 = a2[1];
  v34 = a3;
  v35 = a4;
  v32 = v19;
  v33 = v20;
  sub_1DD3B7F10();
  if (sub_1DD640698())
  {
    sub_1DD4DDC08(a5, v18, &qword_1ECCDBC18, &unk_1DD6459A0);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((a7 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1DD586AF0();
      a6 = v28;
      if ((a7 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(a6 + 16) > a7)
        {
          v21 = a6 + 16 * a7;
          *(v21 + 32) = v19;
          *(v21 + 40) = v20;

          v34 = a6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
          sub_1DD4477A4();
          v22 = sub_1DD63FD58();
          v24 = v23;

          v34 = v22;
          v35 = v24;
          swift_setAtWritableKeyPath();
          v18[*(v29[0] + 36) + 336] = 1;
          v25 = v30;
          sub_1DD4DDC08(v18, v30, &qword_1ECCDBC18, &unk_1DD6459A0);
          sub_1DD3BDF94();
          v26 = *(*a1 + 16);
          sub_1DD3BE158();
          sub_1DD390754(v18, &qword_1ECCDBC18, &unk_1DD6459A0);
          v27 = *a1;
          *(v27 + 16) = v26 + 1;
          sub_1DD4DDCBC(v25, v27 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, &qword_1ECCDBC18, &unk_1DD6459A0);
          *a1 = v27;
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1DD4DD570()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5];
  __swift_allocate_value_buffer(v7, qword_1EE16F050);
  v8 = __swift_project_value_buffer(v0, qword_1EE16F050);
  sub_1DD628068(0xD000000000000013, v3);
  swift_storeEnumTagMultiPayload();
  sub_1DD4DDCBC(v3, v6, &qword_1ECCDCCA0, &qword_1DD64AED0);
  return sub_1DD4DDCBC(v6, v8, &qword_1ECCDCCA0, &qword_1DD64AED0);
}

uint64_t static HypocorismDB.superSlowFetchEverything()()
{
  result = sub_1DD4409F8(&v3);
  if (!v0)
  {
    sub_1DD4061B8(0xD00000000000003CLL, 0x80000001DD66E9A0, MEMORY[0x1E69E7CC0]);

    v2 = sub_1DD4DC0A8();

    return v2;
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RunTimeDataDB(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for RunTimeDataDB(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for HypocorismGenerator(uint64_t a1)
{
  result = qword_1EE162118;
  if (!qword_1EE162118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD4DD908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD4DD98C(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for StringTokenizer(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD4DD98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EE160500)
  {
    v4 = type metadata accessor for DBLoader(0, &type metadata for HypocorismDB, &off_1F58B93E8, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE160500);
    }
  }
}

uint64_t sub_1DD4DD9E4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 16) != 3)
  {
    goto LABEL_17;
  }

  sub_1DD4DDC08(v3 + 32, v4, &qword_1ECCDCF98, &qword_1DD6547F0);
  if (!v5)
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_17:
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
    return result;
  }

  if (*(v3 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    sub_1DD4DDC08(v3 + 72, v4, &qword_1ECCDCF98, &qword_1DD6547F0);
    if (!v5)
    {
LABEL_13:

LABEL_14:
      result = sub_1DD390754(v4, &qword_1ECCDCF98, &qword_1DD6547F0);
      goto LABEL_17;
    }

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (*(v3 + 16) >= 3uLL)
    {
      sub_1DD4DDC08(v3 + 112, v4, &qword_1ECCDCF98, &qword_1DD6547F0);
      if (v5)
      {
        if (swift_dynamicCast())
        {
        }

        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4DDC08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7();
  (*(v6 + 16))(v4, v5);
  return v4;
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

uint64_t sub_1DD4DDCBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7();
  (*(v6 + 32))(v4, v5);
  return v4;
}

unint64_t sub_1DD4DDD28(char a1)
{
  result = 0x54494C51532E4244;
  switch(a1)
  {
    case 1:
    case 2:
    case 71:
      OUTLINED_FUNCTION_1_70();
      result = v11 - 16;
      break;
    case 3:
      result = 0xD000000000000030;
      break;
    case 4:
    case 7:
    case 33:
      OUTLINED_FUNCTION_1_70();
      result = v19 - 8;
      break;
    case 5:
      OUTLINED_FUNCTION_1_70();
      result = v16 - 9;
      break;
    case 6:
    case 17:
      OUTLINED_FUNCTION_1_70();
      result = v17 - 14;
      break;
    case 8:
    case 13:
    case 69:
      OUTLINED_FUNCTION_1_70();
      result = v9 - 7;
      break;
    case 9:
      OUTLINED_FUNCTION_1_70();
      result = v18 - 3;
      break;
    case 10:
    case 20:
    case 32:
    case 68:
      OUTLINED_FUNCTION_1_70();
      result = v34 - 2;
      break;
    case 11:
    case 18:
    case 21:
      OUTLINED_FUNCTION_1_70();
      result = v22 - 1;
      break;
    case 12:
      result = 0xD000000000000030;
      break;
    case 14:
      result = 0xD000000000000030;
      break;
    case 15:
    case 42:
      OUTLINED_FUNCTION_1_70();
      result = v7 - 11;
      break;
    case 16:
    case 28:
    case 31:
      OUTLINED_FUNCTION_1_70();
      result = v27 - 10;
      break;
    case 19:
      result = 0xD000000000000030;
      break;
    case 22:
    case 25:
      OUTLINED_FUNCTION_1_70();
      result = v29 | 1;
      break;
    case 23:
    case 26:
    case 44:
      OUTLINED_FUNCTION_1_70();
      result = v21 | 2;
      break;
    case 24:
      result = 0xD000000000000030;
      break;
    case 27:
      OUTLINED_FUNCTION_1_70();
      result = v26 | 3;
      break;
    case 29:
      OUTLINED_FUNCTION_1_70();
      result = v20 - 6;
      break;
    case 30:
      OUTLINED_FUNCTION_1_70();
      result = v12 - 5;
      break;
    case 34:
      v5 = 13;
      goto LABEL_11;
    case 35:
      OUTLINED_FUNCTION_1_70();
      result = v6 | 0xE;
      break;
    case 36:
      result = 0xD000000000000030;
      break;
    case 37:
    case 39:
      OUTLINED_FUNCTION_1_70();
      result = v28 | 6;
      break;
    case 38:
    case 45:
      OUTLINED_FUNCTION_1_70();
      result = v32 | 7;
      break;
    case 40:
      OUTLINED_FUNCTION_1_70();
      result = v13 | 8;
      break;
    case 41:
      OUTLINED_FUNCTION_1_70();
      result = v24 - 4;
      break;
    case 43:
      v5 = 11;
LABEL_11:
      result = v5 | 0xD000000000000030;
      break;
    case 46:
    case 49:
      return result;
    case 47:
      OUTLINED_FUNCTION_1_70();
      result = v4 - 30;
      break;
    case 48:
    case 56:
      OUTLINED_FUNCTION_1_70();
      result = v8 - 31;
      break;
    case 50:
    case 57:
    case 58:
      OUTLINED_FUNCTION_1_70();
      result = v23 - 21;
      break;
    case 51:
    case 65:
      OUTLINED_FUNCTION_1_70();
      result = v33 - 28;
      break;
    case 52:
      result = 0x6863746170736944;
      break;
    case 53:
    case 54:
      OUTLINED_FUNCTION_1_70();
      result = v30 - 17;
      break;
    case 55:
      OUTLINED_FUNCTION_1_70();
      result = v31 - 24;
      break;
    case 59:
      OUTLINED_FUNCTION_1_70();
      result = v25 - 22;
      break;
    case 60:
      result = 0x727245726568744FLL;
      break;
    case 61:
      OUTLINED_FUNCTION_1_70();
      result = v14 - 18;
      break;
    case 62:
    case 70:
      OUTLINED_FUNCTION_1_70();
      result = v15 - 12;
      break;
    case 63:
      OUTLINED_FUNCTION_1_70();
      result = v10 - 20;
      break;
    case 64:
      result = 0x74756F656D6954;
      break;
    case 66:
      result = 0x6570706172776E55;
      break;
    case 67:
      result = 0x656C69462E4C5255;
      break;
    default:
      OUTLINED_FUNCTION_1_70();
      result = v3 - 15;
      break;
  }

  return result;
}