uint64_t sub_22F15DFF8()
{
  v0 = EventLabel.rawValue.getter();
  v2 = v1;
  if (v0 == EventLabel.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22F742040();
  }

  return v5 & 1;
}

unint64_t sub_22F15E098()
{
  result = qword_27DAB14F8;
  if (!qword_27DAB14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB14F8);
  }

  return result;
}

uint64_t sub_22F15E0EC()
{
  sub_22F742170();
  EventLabel.rawValue.getter();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F15E154(uint64_t a1)
{
  EventLabel.rawValue.getter();
  sub_22F740D60();
}

uint64_t sub_22F15E1B8(uint64_t a1)
{
  sub_22F742170();
  EventLabel.rawValue.getter();
  sub_22F740D60();

  return sub_22F7421D0();
}

unint64_t sub_22F15E228@<X0>(unint64_t *a1@<X8>)
{
  result = EventLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22F15E254()
{
  result = qword_27DAB1500;
  if (!qword_27DAB1500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1508, &qword_22F771DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1500);
  }

  return result;
}

uint64_t sub_22F15E318(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F15E538();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_22F15E36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22F15E538();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t getEnumTagSinglePayload for EventLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F15E538()
{
  result = qword_27DAB1510;
  if (!qword_27DAB1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1510);
  }

  return result;
}

void sub_22F15E58C(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  LOBYTE(v6) = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_22F1229E8(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22F1256F0(v15, v5 & 1);
    v10 = sub_22F1229E8(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_22F7420C0();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_22F13419C();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  *(v21[7] + v10) = v6;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_22F741B00();
    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
    sub_22F741C50();
    MEMORY[0x231900B10](39, 0xE100000000000000);
    sub_22F741D40();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = (a1 + 72);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v25 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      if (!v7)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_22F1229E8(v8, v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_22F1256F0(v31, 1);
        v27 = sub_22F1229E8(v8, v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v7;
      *(v33[7] + v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v33[2] = v36;
      v5 += 24;
      if (v37 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_22F15E910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22F742170();
  sub_22F740D60();
  v6 = sub_22F7421D0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_22F15EA08(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22F742170();
  MEMORY[0x231901D30](a1);
  v4 = sub_22F7421D0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_22F15EAD4(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_22F742170(), sub_22F740D60(), , v4 = sub_22F7421D0(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v9 = 0x6557664F74726170;
          v10 = 0xEA00000000006B65;
        }

        else
        {
          if (v8 == 4)
          {
            v9 = 0x616559664F796164;
          }

          else
          {
            v9 = 0x6144664F74726170;
          }

          if (v8 == 4)
          {
            v10 = 0xE900000000000072;
          }

          else
          {
            v10 = 0xE900000000000079;
          }
        }
      }

      else if (*(*(a2 + 48) + v6))
      {
        if (v8 == 1)
        {
          v9 = 0x6E6F73616573;
        }

        else
        {
          v9 = 0x59664F6567646577;
        }

        if (v8 == 1)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xEB00000000726165;
        }
      }

      else
      {
        v10 = 0xE400000000000000;
        v9 = 1918985593;
      }

      v11 = 0xE900000000000079;
      v12 = 0x616559664F796164;
      if (a1 == 4)
      {
        v11 = 0xE900000000000072;
      }

      else
      {
        v12 = 0x6144664F74726170;
      }

      if (a1 == 3)
      {
        v12 = 0x6557664F74726170;
        v11 = 0xEA00000000006B65;
      }

      v13 = 0x59664F6567646577;
      if (a1 == 1)
      {
        v13 = 0x6E6F73616573;
      }

      v14 = 0xEB00000000726165;
      if (a1 == 1)
      {
        v14 = 0xE600000000000000;
      }

      if (!a1)
      {
        v13 = 1918985593;
        v14 = 0xE400000000000000;
      }

      v15 = a1 <= 2u ? v13 : v12;
      v16 = a1 <= 2u ? v14 : v11;
      if (v9 == v15 && v10 == v16)
      {
        break;
      }

      v17 = sub_22F742040();

      if ((v17 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_22F15EE1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_22F15EE84()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F15EECC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_22F15EF84()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F15EFC8(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22F15F078(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_22F15F0E0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F15F128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

unint64_t sub_22F15F1E0(void *a1)
{
  v2 = v1;
  v39[1] = *v1;
  v4 = sub_22F740460();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = sub_22F740560();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v43 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_logger;
  sub_22F740B80();
  *(v1 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup) = 0;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults) = 0;
  v39[0] = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults) = MEMORY[0x277D84F90];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v16 = [v15 librarySpecificFetchOptions];
  (*(v10 + 104))(v12, *MEMORY[0x277D3C570], v9);
  sub_22F740570();
  swift_allocObject();
  v17 = v15;
  v47 = v16;
  v18 = sub_22F740550();
  sub_22F740230();
  v19 = sub_22F740220();
  v48 = v17;
  v20 = [v17 librarySpecificFetchOptions];
  [v20 setFetchLimit_];
  result = [v19 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    v44 = v18;
    v45 = v20;
    v46 = v2;
    if (result)
    {
      v23 = 0;
      while (1)
      {
        v24 = [v19 objectAtIndexedSubscript_];
        v25 = a1[3];
        v26 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v25);
        v27 = sub_22F73F690();
        (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
        LOBYTE(v25) = CurationPlannerContext.isValidSocialGroupForElection(_:after:)(v24, v8, v25, v26);
        sub_22F15FCF0(v8);
        if (v25)
        {
          break;
        }

        ++v23;

        if (v22 == v23)
        {
          goto LABEL_6;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F771EB0;
      *(inited + 32) = v24;
      v34 = v40;
      v33 = v41;
      v35 = v42;
      (*(v41 + 104))(v40, *MEMORY[0x277D3C438], v42);
      v36 = v24;
      v37 = static CollectionTrigger.generateTriggerResults(from:type:)(inited, v34);

      (*(v33 + 8))(v34, v35);
      v28 = v46;
      v38 = v39[0];
      swift_beginAccess();
      *(v28 + v38) = v37;
    }

    else
    {
LABEL_6:
      v28 = v46;
      v29 = sub_22F740B70();
      v30 = sub_22F7415C0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22F0FC000, v29, v30, "No social groups were found with at least 1 exclusive asset. No social groups will be elected", v31, 2u);
        MEMORY[0x2319033A0](v31, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v28;
  }

  return result;
}

uint64_t CurationPlannerContext.isValidSocialGroupForElection(_:after:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 + 24);
  v51 = a3;
  v49 = v17;
  v18 = (v17)(a3, a4, v14);
  v19 = [v18 librarySpecificFetchOptions];

  [v19 setFetchLimit_];
  sub_22F12057C(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22F15FCF0(v11);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22F770DF0;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_22F153470();
    strcpy((v20 + 32), "creationDate");
    *(v20 + 45) = 0;
    *(v20 + 46) = -5120;
    v21 = sub_22F73F5B0();
    *(v20 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
    *(v20 + 104) = sub_22F15FD58();
    *(v20 + 72) = v21;
    v22 = sub_22F741560();
    [v19 setPredicate_];

    (*(v13 + 8))(v16, v12);
  }

  v23 = objc_opt_self();
  v24 = v50;
  v25 = [v23 fetchExclusiveAssetsForSocialGroup:v50 options:v19];
  if (!v25)
  {
    v44 = 0;
LABEL_27:

    return v44;
  }

  v26 = v25;
  if ([v25 count] < 1)
  {
    v44 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v27 = v49(v51, a4);
  v28 = [v27 librarySpecificFetchOptions];

  v50 = [objc_opt_self() fetchPersonsInSocialGroup:v24 option:v28];
  result = [v50 count];
  if ((result & 0x8000000000000000) == 0)
  {
    v45 = v28;
    v46 = v26;
    v47 = v19;
    if (result)
    {
      v30 = 0;
      v48 = result;
      v49 = (a4 + 32);
      do
      {
        v31 = [v50 objectAtIndexedSubscript_];
        v32 = v5;
        v33 = (*(a4 + 32))(v51, a4);
        result = [v31 uuid];
        if (!result)
        {
          goto LABEL_29;
        }

        v34 = result;
        v35 = sub_22F740E20();
        v37 = v36;

        if (*(v33 + 16))
        {
          sub_22F742170();
          sub_22F740D60();
          v38 = sub_22F7421D0();
          v39 = -1 << *(v33 + 32);
          v40 = v38 & ~v39;
          if ((*(v33 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
          {
            v41 = ~v39;
            while (1)
            {
              v42 = (*(v33 + 48) + 16 * v40);
              v43 = *v42 == v35 && v42[1] == v37;
              if (v43 || (sub_22F742040() & 1) != 0)
              {
                break;
              }

              v40 = (v40 + 1) & v41;
              if (((*(v33 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_9;
              }
            }

            v44 = 0;
            v19 = v50;
            v26 = v46;
            goto LABEL_25;
          }
        }

LABEL_9:
        ++v30;

        v5 = v32;
      }

      while (v30 != v48);
    }

    v44 = 1;
    v31 = v50;
    v26 = v45;
    v19 = v47;
LABEL_25:

    goto LABEL_26;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22F15FCF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F15FD58()
{
  result = qword_2810A8EF8;
  if (!qword_2810A8EF8)
  {
    sub_22F120634(255, &qword_2810A8F00, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A8EF8);
  }

  return result;
}

uint64_t FallbackSocialGroups.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FallbackSocialGroups.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_22F15FEFC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F15FF48()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_22F15FF90()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for FallbackSocialGroups(uint64_t a1)
{
  result = qword_2810AAA78;
  if (!qword_2810AAA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F160030(uint64_t a1)
{
  result = sub_22F740B90();
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

float sub_22F160338(void *a1, uint64_t a2, uint64_t a3, float (*a4)(uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = [a1 keywords];
  v8 = sub_22F741420();

  v9 = a4(v8, v6);

  return v9;
}

float sub_22F1603C8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 tagIDs];
  v6 = sub_22F741420();

  sub_22F160B5C(v6, a2, a3);
  v8 = v7;

  return v8;
}

uint64_t sub_22F160454(uint64_t a1, uint64_t a2)
{
  result = sub_22F15E910(0x6169636570534D5FLL, 0xE90000000000006CLL, a1);
  if ((result & 1) == 0)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v21 = a2 + 32;
      v7 = 1.0;
      v8 = 0.0;
LABEL_5:
      v9 = 0;
      v10 = (v21 + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      ++v6;
      v13 = 1 << *(a1 + 32);
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & *(a1 + 56);
      v16 = (v13 + 63) >> 6;
      while (v15)
      {
LABEL_14:
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v19 = (*(a1 + 48) + ((v9 << 10) | (16 * v18)));
        if (v11 != *v19 || v12 != v19[1])
        {
          result = sub_22F742040();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8 = v7 + v8;
      }

      while (1)
      {
        v17 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v17 >= v16)
        {
          v7 = v7 * 0.9;
          if (v6 == v5)
          {
            return result;
          }

          goto LABEL_5;
        }

        v15 = *(a1 + 56 + 8 * v17);
        ++v9;
        if (v15)
        {
          v9 = v17;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_22F1605C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
        sub_22F160DE4();
        v8 |= sub_22F741910();
      }

      while (v6);
      continue;
    }
  }

  if (v8)
  {
    v18 = *(a2 + 16);
    if (v18)
    {
      v11 = 0;
LABEL_15:
      ++v11;
      v12 = 1 << *(a1 + 32);
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(a1 + 56);
      v15 = (v12 + 63) >> 6;

      v16 = 0;
      do
      {
        if (!v14)
        {
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_29;
            }

            if (v17 >= v15)
            {
              break;
            }

            v14 = *(v3 + 8 * v17);
            ++v16;
            if (v14)
            {
              v16 = v17;
              goto LABEL_24;
            }
          }

          if (v11 == v18)
          {
            return;
          }

          goto LABEL_15;
        }

LABEL_24:
        v14 &= v14 - 1;
        sub_22F160DE4();
      }

      while ((sub_22F741910() & 1) == 0);
    }
  }
}

void sub_22F16083C(void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0.0;
  v32 = v6;
  v33 = v2;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
LABEL_9:
      while (2)
      {
        v10 = __clz(__rbit64(v5)) | (v7 << 6);
        v11 = (*(a2 + 48) + 16 * v10);
        v31 = *v11;
        v12 = *(*(a2 + 56) + 8 * v10);
        v37 = (v5 - 1) & v5;
        v38 = v11[1];

        v36 = v12;
        v13 = [a1 tagIDs];
        v14 = sub_22F741420();

        v15 = v14 + 56;
        v16 = 1 << *(v14 + 32);
        if (v16 < 64)
        {
          v17 = ~(-1 << v16);
        }

        else
        {
          v17 = -1;
        }

        v18 = v17 & *(v14 + 56);
        v19 = (v16 + 63) >> 6;
        v39 = v14;

        v20 = 0;
        v21 = 1.0;
        while (1)
        {
          while (1)
          {
            v22 = v20;
            if (!v18)
            {
              while (1)
              {
                v20 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v20 >= v19)
                {

                  goto LABEL_26;
                }

                v18 = *(v15 + 8 * v20);
                ++v22;
                if (v18)
                {
                  goto LABEL_17;
                }
              }

              __break(1u);
              goto LABEL_33;
            }

LABEL_17:
            v23 = (*(v39 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v18)))));
            v24 = *v23;
            v25 = v23[1];
            v18 &= v18 - 1;
            sub_22F740E20();
            sub_22F160DE4();

            v26 = sub_22F741910();

            if (v26)
            {
              break;
            }
          }

          if (v24 == v31 && v25 == v38)
          {
            break;
          }

          v28 = sub_22F742040();

          v21 = 0.0;
          if (v28)
          {

            v21 = 2.0;
            goto LABEL_26;
          }
        }

        v21 = 2.0;
LABEL_26:

        [v36 floatValue];
        v30 = v29;

        if (v8 <= (v21 * v30))
        {
          v8 = v21 * v30;
        }

        v6 = v32;
        v2 = v33;
        v5 = v37;
        if (v37)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22F160B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v11;
    v12 = v11[1];
    v7 &= v7 - 1;
    sub_22F740E20();
    sub_22F160DE4();

    v14 = sub_22F741910();

    if (v14)
    {
      if (v13 == a2 && v12 == a3)
      {

        return;
      }

      v16 = sub_22F742040();

      if (v16)
      {

        return;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

float sub_22F160D08()
{
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v0 = sub_22F740B90();
  __swift_project_value_buffer(v0, qword_2810B4D90);
  v1 = sub_22F740B70();
  v2 = sub_22F7415E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22F0FC000, v1, v2, "Don't expect to be using MoodKeywordScoreComputer", v3, 2u);
    MEMORY[0x2319033A0](v3, -1, -1);
  }

  return 1.0;
}

unint64_t sub_22F160DE4()
{
  result = qword_2810A93D0;
  if (!qword_2810A93D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A93D0);
  }

  return result;
}

uint64_t sub_22F160E38(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0F58, &qword_22F771310);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22F146578(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_22F13BA9C(v11, v4, &qword_27DAB0F58, &qword_22F771310);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22F146578((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_22F1207AC(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_27DAB13A0, &unk_22F7718B0);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_22F161070(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_22F741BD0();
    v4 = *(sub_22F73F690() - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      sub_22F73F5B0();
      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v5 += v6;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_22F161170(unint64_t a1)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v1 = sub_22F741D50();
  }

  else
  {
    v1 = a1;

    sub_22F742060();
  }

  return v1;
}

uint64_t sub_22F1611EC(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1318, &unk_22F772030);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22F14683C(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_22F13BA9C(v11, v4, &unk_27DAB0710, &qword_22F772040);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22F14683C((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_22F1207AC(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_27DAB1318, &unk_22F772030);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_22F161424(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1318, &unk_22F772030);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1308, &qword_22F7789B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22F1467FC(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_22F13BA9C(v11, v4, &qword_27DAB1318, &unk_22F772030);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22F1467FC((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_22F1207AC(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_27DAB1308, &qword_22F7789B0);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

char *sub_22F16165C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22F741A00();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_22F146934(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2319016F0](i, a1);
        sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_22F146934((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_22F107D08(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_22F146934((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_22F107D08(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_22F161858(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22F741A00();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_22F1469EC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2319016F0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_22F1469EC((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
        v16 = &protocol witness table for PHAssetCollection;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_22F100260(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_22F1469EC((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
        v16 = &protocol witness table for PHAssetCollection;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_22F100260(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_22F161A80(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (a1 >> 62)
  {
    v9 = sub_22F741A00();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v24 = MEMORY[0x277D84F90];
  result = sub_22F14667C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v24;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x2319016F0](v12, a1);
        v24 = v10;
        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_22F14667C((v14 > 1), v15 + 1, 1);
          v10 = v24;
        }

        ++v12;
        v22 = a2(0);
        v23 = sub_22F1626B8(a3, a4, a5);
        *&v21 = v13;
        *(v10 + 16) = v15 + 1;
        sub_22F100260(&v21, v10 + 40 * v15 + 32);
      }

      while (v9 != v12);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v17 = *v16;
        v24 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);

        if (v19 >= v18 >> 1)
        {
          sub_22F14667C((v18 > 1), v19 + 1, 1);
          v10 = v24;
        }

        v22 = a2(0);
        v23 = sub_22F1626B8(a3, a4, a5);
        *&v21 = v17;
        *(v10 + 16) = v19 + 1;
        sub_22F100260(&v21, v10 + 40 * v19 + 32);
        ++v16;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F161C68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_22F146B10(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1520, &unk_22F772020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB11E0, &unk_22F771610);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22F146B10((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v5;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22F161DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22F146B94(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_22F146B94((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_22F153470();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_22F100260(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22F161EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22F146934(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22F146934((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22F107D08(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22F161FB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22F146934(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22F146934((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22F107D08(&v8, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22F1620AC(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D28, &unk_22F772010);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1018, &qword_22F771448);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22F146EC4(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_22F13BA9C(v11, v4, &qword_27DAB0D28, &unk_22F772010);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22F146EC4((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_22F1207AC(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_27DAB1018, &qword_22F771448);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t PhotosGraphMomentsProducer.init(momentNodes:features:photoLibrary:graph:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void **PhotosGraphMomentsProducer.clusters(progressReporter:)()
{
  v2 = *v0;
  v3 = v0[2];
  static MomentGraphFeature.extractors(for:with:in:)(v0[1], *v0, v0[3], &v19);
  if (v1)
  {
    return v0;
  }

  v18 = v19;
  v16 = v3;
  v17 = *(&v19 + 1);
  v4 = v20;
  v5 = v21;
  v6 = [v2 array];
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v7 = sub_22F741180();

  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_16:

    v15 = MEMORY[0x277D84F90];
LABEL_17:
    sub_22F7416A0();
    v0 = sub_22F161A80(v15, type metadata accessor for MomentGraphCluster, &qword_27DAB1530, type metadata accessor for MomentGraphCluster, &protocol conformance descriptor for MomentGraphCluster);

    return v0;
  }

  while (1)
  {
    v22 = MEMORY[0x277D84F90];
    result = sub_22F741BD0();
    if (v8 < 0)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2319016F0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      *&v19 = v18;
      *(&v19 + 1) = v17;
      v20 = v4;
      v21 = v5;
      v14 = v16;

      sub_22F3F70A0(v13, v14, &v19);
      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      ++v10;
      if (v11 == v8)
      {

        v15 = v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v8 = sub_22F741A00();
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F162620(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22F162668(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22F1626B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22F162764(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MusicCacheInfoEntry();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22F162798()
{
  v0 = *aInfo_1;

  return v0;
}

BOOL _s11PhotosGraph14MusicCacheInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  memcpy(__dst, a1 + 2, sizeof(__dst));
  v6 = *a2;
  v7 = a2[1];
  memcpy(v21, a2 + 2, sizeof(v21));
  v8 = v4 == v6 && v5 == v7;
  if (v8 || (v9 = sub_22F742040(), result = 0, (v9 & 1) != 0))
  {
    memcpy(__src, a1 + 2, 0x120uLL);
    memcpy(&__src[288], a2 + 2, 0x120uLL);
    memcpy(v19, a1 + 2, sizeof(v19));
    if (sub_22F162DEC(v19) == 1)
    {
      memcpy(v16, a2 + 2, 0x120uLL);
      if (sub_22F162DEC(v16) == 1)
      {
        memcpy(v17, a1 + 2, sizeof(v17));
        sub_22F162E58(__dst, v15);
        sub_22F162E58(v21, v15);
        sub_22F120ADC(v17, &qword_27DAB1548, &qword_22F7720F8);
        return 1;
      }

      sub_22F162E58(__dst, v17);
      sub_22F162E58(v21, v17);
    }

    else
    {
      memcpy(v17, a1 + 2, sizeof(v17));
      memcpy(v15, a1 + 2, sizeof(v15));
      memcpy(v16, a2 + 2, 0x120uLL);
      if (sub_22F162DEC(v16) != 1)
      {
        memcpy(v14, a2 + 2, sizeof(v14));
        sub_22F162E58(__dst, v13);
        sub_22F162E58(v21, v13);
        sub_22F162E58(v17, v13);
        v11 = _s11PhotosGraph16MusicBagContentsV2eeoiySbAC_ACtFZ_0(v15, v14);
        memcpy(v12, v14, sizeof(v12));
        sub_22F162EC8(v12);
        memcpy(v13, v15, sizeof(v13));
        sub_22F162EC8(v13);
        memcpy(v14, a1 + 2, sizeof(v14));
        sub_22F120ADC(v14, &qword_27DAB1548, &qword_22F7720F8);
        return (v11 & 1) != 0;
      }

      memcpy(v14, a1 + 2, sizeof(v14));
      sub_22F162E58(__dst, v13);
      sub_22F162E58(v21, v13);
      sub_22F162E58(v17, v13);
      sub_22F162EC8(v14);
    }

    memcpy(v16, __src, sizeof(v16));
    sub_22F120ADC(v16, &qword_27DAB1550, &unk_22F772100);
    return 0;
  }

  return result;
}

uint64_t sub_22F162A88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
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

uint64_t sub_22F162AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22F162B94(id a1, uint64_t *a2)
{
  memcpy(__dst, a2 + 2, sizeof(__dst));
  v4 = objc_opt_self();

  v5 = sub_22F740DF0();

  v6 = [v4 entityForName:v5 inManagedObjectContext:a1];

  if (v6)
  {
    a1 = [objc_allocWithZone(type metadata accessor for MusicCacheInfoEntry()) initWithEntity:v6 insertIntoManagedObjectContext:a1];

    v7 = sub_22F740DF0();
    [a1 setVersion_];

    memcpy(__src, __dst, sizeof(__src));
    if (sub_22F162DEC(__src) != 1)
    {
      sub_22F73F350();
      swift_allocObject();
      sub_22F73F340();
      memcpy(v14, __src, sizeof(v14));
      sub_22F162E04();
      v8 = sub_22F73F330();
      if (v2)
      {
      }

      else
      {
        v11 = v8;
        v12 = v9;

        v13 = sub_22F73F4F0();
        sub_22F133BF0(v11, v12);
        [a1 setMusicBagContentsAsData_];
      }
    }
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_22F162D98()
{
  result = qword_27DAB1E00;
  if (!qword_27DAB1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1E00);
  }

  return result;
}

uint64_t sub_22F162DEC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22F162E04()
{
  result = qword_2810AB5C8;
  if (!qword_2810AB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB5C8);
  }

  return result;
}

uint64_t sub_22F162E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1548, &qword_22F7720F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F163068(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_22F1630C8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22F163114(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

double ImportantEntitiesTuningParameter.__allocating_init(withName:andParameter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a3 + 16);
  result = *(a3 + 40);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = *a3;
  *(v6 + 48) = v7;
  *(v6 + 56) = *(a3 + 24);
  *(v6 + 72) = result;
  return result;
}

uint64_t ImportantEntitiesTuningParameter.init(withName:andParameter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 40);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 48) = v4;
  *(v3 + 56) = *(a3 + 24);
  *(v3 + 72) = v5;
  return v3;
}

uint64_t ImportantEntitiesTuningParameter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F1632A0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_22F1632F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t ImportantEntitiesTuningEvent.__allocating_init(withGraph:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ImportantEntitiesTuningEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *ImportantEntitiesTuningResult.__allocating_init(inferredImportantEntitiesLocalIdentifiers:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *ImportantEntitiesTuningResult.init(inferredImportantEntitiesLocalIdentifiers:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *ImportantEntitiesTuningResult.deinit()
{

  return v0;
}

uint64_t ImportantEntitiesTuningResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ImportantEntitiesTuningMetrics.algorithmName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ImportantEntitiesTuningMetrics.parameterName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ImportantEntitiesTuningMetrics.__allocating_init(algorithmName:parameterName:truePositives:falsePositives:trueNegatives:falseNegatives:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = a8;
  v17 = a5 + a6;
  if (__OFADD__(a5, a6))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v17 < 1)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a5 / v17;
  }

  *(result + 80) = v18;
  *(result + 88) = v17 < 1;
  v19 = a5 + a8;
  if (__OFADD__(a5, a8))
  {
    goto LABEL_11;
  }

  if (v19 < 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = a5 / v19;
  }

  *(result + 96) = v20;
  *(result + 104) = v19 < 1;
  return result;
}

uint64_t ImportantEntitiesTuningMetrics.init(algorithmName:parameterName:truePositives:falsePositives:trueNegatives:falseNegatives:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = result;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  v9 = a5 + a6;
  if (__OFADD__(a5, a6))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v9 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a5 / v9;
  }

  *(v8 + 80) = v10;
  *(v8 + 88) = v9 < 1;
  v11 = a5 + a8;
  if (__OFADD__(a5, a8))
  {
    goto LABEL_11;
  }

  if (v11 < 1)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = a5 / v11;
  }

  *(v8 + 96) = v12;
  *(v8 + 104) = v11 < 1;
  return v8;
}

unint64_t sub_22F163710()
{
  v0 = sub_22F14E718(MEMORY[0x277D84F90]);
  v1 = sub_22F740DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v1, 0x687469726F676C61, 0xEE00656D616E5F6DLL, isUniquelyReferenced_nonNull_native);
  v3 = sub_22F740DF0();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v3, 0x6574656D61726170, 0xEE00656D616E5F72, v4);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v5 = sub_22F7417F0();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v5, 0xD000000000000011, 0x800000022F78F120, v6);
  v7 = sub_22F7417F0();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v7, 0x736F705F65757274, 0xEE00736576697469, v8);
  v9 = sub_22F7417F0();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v9, 0x6F705F65736C6166, 0xEF73657669746973, v10);
  v11 = sub_22F7417F0();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v11, 0x67656E5F65757274, 0xEE00736576697461, v12);
  v13 = sub_22F7417F0();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v13, 0x656E5F65736C6166, 0xEF73657669746167, v14);
  return v0;
}

uint64_t ImportantEntitiesTuningEventFactory.__allocating_init(withGraph:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t ImportantEntitiesTuningEventFactory.init(withGraph:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_22F1639FC()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  *(v0 + 24) = 1;
  v2 = *(v0 + 16);
  type metadata accessor for ImportantEntitiesTuningEvent();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  return v3;
}

uint64_t ImportantEntitiesTuningEventFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F163A8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22F1639FC();
  *a1 = result;
  return result;
}

void *ImportantEntitiesTuningEvaluator.__allocating_init(algorithmName:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ImportantEntitiesTuningEvaluator.init(algorithmName:parameterName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

void sub_22F163B1C(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (!v2)
  {
    goto LABEL_51;
  }

  v7 = 0;
  v52 = v2;
  v53 = a1 & 0xC000000000000001;
  v50 = a1 & 0xFFFFFFFFFFFFFF8;
  v51 = a1;
  do
  {
    if (v53)
    {
      a1 = MEMORY[0x2319016F0](v7, v51);
    }

    else
    {
      if (v7 >= *(v50 + 16))
      {
        goto LABEL_70;
      }
    }

    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      goto LABEL_64;
    }

    v54 = v9;
    v55 = v3;
    v56 = v4;
    v57 = v5;
    v58 = v6;
    v10 = *(a1 + 16);
    v62 = *(a1 + 32);
    v63 = *(a1 + 24);
    v11 = v10 + 56;
    v12 = 1 << *(v10 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v10 + 56);
    v15 = (v12 + 63) >> 6;

    v60 = v10;

    v59 = 0;
    v61 = 0;
    v16 = 0;
    if (v14)
    {
      while (2)
      {
        v17 = v16;
LABEL_21:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = (*(v60 + 48) + ((v17 << 10) | (16 * v18)));
        v21 = *v19;
        v20 = v19[1];
        if (*(v63 + 16))
        {
          sub_22F742170();

          sub_22F740D60();
          v22 = sub_22F7421D0();
          v23 = -1 << *(v63 + 32);
          v24 = v22 & ~v23;
          if (((*(v63 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_30;
          }

          v25 = ~v23;
          while (1)
          {
            v26 = (*(v63 + 48) + 16 * v24);
            a1 = *v26;
            if (*v26 == v21 && v26[1] == v20)
            {
              break;
            }

            a1 = sub_22F742040();
            if (a1)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v63 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          if (__OFADD__(v61, 1))
          {
            goto LABEL_63;
          }

          ++v61;
          sub_22F164408(v21, v20);

          v16 = v17;
          if (v14)
          {
            continue;
          }
        }

        else
        {

LABEL_30:
          if (*(v62 + 16))
          {
            sub_22F742170();
            sub_22F740D60();
            v28 = sub_22F7421D0();
            v29 = -1 << *(v62 + 32);
            v30 = v28 & ~v29;
            if ((*(v62 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
            {
              v31 = ~v29;
              while (1)
              {
                v32 = (*(v62 + 48) + 16 * v30);
                a1 = *v32;
                if (*v32 == v21 && v32[1] == v20)
                {
                  break;
                }

                a1 = sub_22F742040();
                if (a1)
                {
                  break;
                }

                v30 = (v30 + 1) & v31;
                if (((*(v62 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              if (__OFADD__(v59, 1))
              {
                goto LABEL_69;
              }

              ++v59;
              sub_22F164408(v21, v20);
            }
          }

LABEL_15:

          v16 = v17;
          if (v14)
          {
            continue;
          }
        }

        break;
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        v47 = a1;
        v2 = sub_22F741A00();
        a1 = v47;
        goto LABEL_3;
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_21;
      }
    }

    v34 = *(v62 + 16);

    v35 = *(v63 + 16);

    v6 = v58 + v61;
    if (__OFADD__(v58, v61))
    {
      goto LABEL_65;
    }

    v5 = v57 + v59;
    if (__OFADD__(v57, v59))
    {
      goto LABEL_66;
    }

    v4 = v56 + v34;
    if (__OFADD__(v56, v34))
    {
      goto LABEL_67;
    }

    v3 = v55 + v35;
    if (__OFADD__(v55, v35))
    {
      goto LABEL_68;
    }

    v7 = v54;
  }

  while (v54 != v52);
LABEL_51:
  v36 = v49[2];
  v37 = v49[3];
  v39 = v49[4];
  v38 = v49[5];
  v40 = v5;
  v41 = type metadata accessor for ImportantEntitiesTuningMetrics();
  v42 = swift_allocObject();
  *(v42 + 16) = v36;
  *(v42 + 24) = v37;
  *(v42 + 32) = v39;
  *(v42 + 40) = v38;
  *(v42 + 48) = v6;
  *(v42 + 56) = v40;
  *(v42 + 64) = v4;
  *(v42 + 72) = v3;
  v43 = v6 + v40;
  if (__OFADD__(v6, v40))
  {
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (v43 < 1)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = v6 / v43;
  }

  *(v42 + 80) = v44;
  *(v42 + 88) = v43 < 1;
  v45 = v6 + v3;
  if (__OFADD__(v6, v3))
  {
    goto LABEL_73;
  }

  if (v45 < 1)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = v6 / v45;
  }

  *(v42 + 96) = v46;
  *(v42 + 104) = v45 < 1;
  a2[3] = v41;
  a2[4] = &protocol witness table for ImportantEntitiesTuningMetrics;
  *a2 = v42;
}

uint64_t _s11PhotosGraph30ImportantEntitiesTuningMetricsCfd_0()
{

  return v0;
}

uint64_t sub_22F164044(uint64_t a1)
{

  return swift_deallocClassInstance();
}

uint64_t ImportantEntitiesTuningSubject.__allocating_init(withDetectionType:withGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 40) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  return result;
}

uint64_t ImportantEntitiesTuningSubject.init(withDetectionType:withGraph:truePositiveImportantEntitiesLocalIdentifiers:trueNegativeImportantEntitiesLocalIdentifiers:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return v4;
}

uint64_t sub_22F164124(void *a1, uint64_t a2)
{
  v2 = [a1 localIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22F740E20();
    v6 = v5;

    swift_beginAccess();
    sub_22F10BBDC(&v9, v4, v6);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FD8, qword_22F7723F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22F771340;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0xD000000000000067;
    *(v8 + 40) = 0x800000022F78F4A0;
    sub_22F742150();
  }
}

uint64_t sub_22F16424C(void *a1, uint64_t a2)
{
  v2 = [a1 localIdentifier];
  v3 = sub_22F740E20();
  v5 = v4;

  swift_beginAccess();
  sub_22F10BBDC(&v7, v3, v5);
  swift_endAccess();
}

unint64_t sub_22F1642DC()
{
  if (*(v0 + 40) == 1)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t ImportantEntitiesTuningSubject.deinit()
{

  return v0;
}

uint64_t ImportantEntitiesTuningSubject.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_22F164394@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22F165D18(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22F1643C4()
{
  if (*(*v0 + 40) == 1)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t sub_22F164408(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22F742170();
  sub_22F740D60();
  v6 = sub_22F7421D0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22F1165C4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_22F165170(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_22F164544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Song(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v2;
  v9 = *v2;
  sub_22F742170();
  v10 = *a1;
  v11 = a1[1];
  sub_22F740D60();
  v12 = sub_22F7421D0();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v26 = v5;
    v27 = a2;
    v15 = ~v13;
    v25 = v6;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_22F16630C(*(v9 + 48) + v16 * v14, v8, type metadata accessor for Song);
      if (*v8 == v10 && v8[1] == v11)
      {
        break;
      }

      v18 = sub_22F742040();
      sub_22F166374(v8, type metadata accessor for Song);
      if (v18)
      {
        goto LABEL_12;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v19 = 1;
        a2 = v27;
        goto LABEL_15;
      }
    }

    sub_22F166374(v8, type metadata accessor for Song);
LABEL_12:
    v20 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v29 = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F116928();
      v22 = v29;
    }

    a2 = v27;
    sub_22F1663D4(*(v22 + 48) + v16 * v14, v27, type metadata accessor for Song);
    sub_22F165334(v14);
    v19 = 0;
    *v20 = v29;
LABEL_15:
    v6 = v25;
    v5 = v26;
  }

  else
  {
    v19 = 1;
  }

  return (*(v6 + 56))(a2, v19, 1, v5);
}

uint64_t sub_22F1647B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v46 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  MEMORY[0x28223BE20](v56);
  v10 = &v46 - v9;
  v63 = type metadata accessor for SongSource(0);
  v49 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = v2;
  v13 = *v2;
  sub_22F742170();
  v62 = a1;
  SongSource.hash(into:)(v64);
  v14 = sub_22F7421D0();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  v61 = v13 + 56;
  if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
    return (*(v49 + 56))(v48, 1, 1, v63);
  }

  v59 = ~v15;
  v18 = *v62;
  v17 = v62[1];
  v55 = (v5 + 48);
  v50 = (v5 + 32);
  v54 = (v5 + 8);
  v60 = *(v49 + 72);
  v51 = v13;
  while (1)
  {
    v19 = *(v13 + 48);
    v58 = v60 * v16;
    sub_22F16630C(v19 + v60 * v16, v12, type metadata accessor for SongSource);
    v20 = *v12 == v18 && v12[1] == v17;
    if (!v20 && (sub_22F742040() & 1) == 0)
    {
      goto LABEL_5;
    }

    v21 = v17;
    v22 = v18;
    v23 = *(v63 + 28);
    v24 = *(v56 + 48);
    sub_22F12057C(v12 + v23, v10);
    sub_22F12057C(v62 + v23, &v10[v24]);
    v25 = *v55;
    if ((*v55)(v10, 1, v4) == 1)
    {
      v26 = v25(&v10[v24], 1, v4);
      v18 = v22;
      if (v26 != 1)
      {
        goto LABEL_4;
      }

      sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
      v17 = v21;
    }

    else
    {
      sub_22F12057C(v10, v57);
      if (v25(&v10[v24], 1, v4) == 1)
      {
        (*v54)(v57, v4);
        v18 = v22;
LABEL_4:
        sub_22F120ADC(v10, &unk_27DAB05B0, &unk_22F771430);
        v17 = v21;
LABEL_5:
        sub_22F166374(v12, type metadata accessor for SongSource);
        goto LABEL_6;
      }

      v27 = &v10[v24];
      v28 = v4;
      v29 = v57;
      v30 = v52;
      (*v50)(v52, v27, v28);
      sub_22F1662C8(&qword_2810AC700, MEMORY[0x277CC9598]);
      v53 = sub_22F740DE0();
      v31 = *v54;
      v32 = v30;
      v4 = v28;
      (*v54)(v32, v28);
      v33 = v29;
      v13 = v51;
      v31(v33, v28);
      sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
      v18 = v22;
      v17 = v21;
      if ((v53 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v34 = *(v63 + 32);
    v35 = (v12 + v34);
    v36 = *(v12 + v34 + 8);
    v37 = (v62 + v34);
    v38 = v37[1];
    if (!v36)
    {
      if (!v38)
      {
        break;
      }

      goto LABEL_5;
    }

    if (!v38)
    {
      goto LABEL_5;
    }

    if (*v35 == *v37 && v36 == v38)
    {
      break;
    }

    v40 = sub_22F742040();
    sub_22F166374(v12, type metadata accessor for SongSource);
    if (v40)
    {
      goto LABEL_27;
    }

LABEL_6:
    v16 = (v16 + 1) & v59;
    if (((*(v61 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return (*(v49 + 56))(v48, 1, 1, v63);
    }
  }

  sub_22F166374(v12, type metadata accessor for SongSource);
LABEL_27:
  v41 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v41;
  v64[0] = *v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22F116AB4();
    v43 = v64[0];
  }

  v44 = v48;
  sub_22F1663D4(*(v43 + 48) + v58, v48, type metadata accessor for SongSource);
  sub_22F1655D0(v16);
  *v41 = v64[0];
  return (*(v49 + 56))(v44, 0, 1, v63);
}

uint64_t sub_22F164E58(void *a1, unint64_t *a2, void *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = sub_22F741A50();

    if (v13)
    {
      v14 = sub_22F165000(v11, v12, a5, a2, a3);

      return v14;
    }

    return 0;
  }

  v17 = v5;
  sub_22F120634(0, a2, a3);
  v18 = sub_22F741800();
  v19 = -1 << *(v7 + 32);
  v20 = v18 & ~v19;
  if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v7 + 48) + 8 * v20);
    v23 = sub_22F741810();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v17;
  v27 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v20);
  sub_22F165B30(v20);
  result = v26;
  *v17 = v27;
  return result;
}

uint64_t sub_22F165000(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v9 = v5;

  v10 = sub_22F741A00();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v21 = v12;

  v13 = sub_22F741800();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_22F120634(0, a4, a5);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_22F741810();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_22F165B30(v15);
  result = sub_22F741810();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F165170(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22F741990();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22F742170();

        sub_22F740D60();
        v10 = sub_22F7421D0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_22F165334(int64_t a1)
{
  v22 = type metadata accessor for Song(0);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_22F741990();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v23 = v7;
      v12 = (v11 + 1) & v10;
      v13 = *(v3 + 72);
      while (1)
      {
        v14 = v13 * v9;
        sub_22F16630C(*(v6 + 48) + v13 * v9, v5, type metadata accessor for Song);
        sub_22F742170();
        sub_22F740D60();
        v15 = sub_22F7421D0();
        sub_22F166374(v5, type metadata accessor for Song);
        v16 = v15 & v10;
        if (a1 >= v12)
        {
          break;
        }

        if (v16 < v12)
        {
          goto LABEL_11;
        }

LABEL_12:
        v17 = v13 * a1;
        if (v13 * a1 < v14 || *(v6 + 48) + v13 * a1 >= (*(v6 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v9;
          if (v17 == v14)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v9;
LABEL_6:
        v9 = (v9 + 1) & v10;
        if (((*(v23 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {

          v7 = v23;
          goto LABEL_19;
        }
      }

      if (v16 < v12)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v16)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_19:
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v6 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v20;
    ++*(v6 + 36);
  }
}

void sub_22F1655D0(unint64_t a1)
{
  v39 = sub_22F73F690();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v32 - v6;
  v7 = type metadata accessor for SongSource(0);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *v1 + 56;
  v13 = -1 << *(*v1 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v40 = v8;
    v15 = ~v13;

    v16 = sub_22F741990();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v17 = *(v40 + 72);
      v35 = (v3 + 48);
      v36 = v17;
      v32 = (v3 + 8);
      v33 = (v3 + 32);
      v18 = v11;
      v19 = v17;
      v37 = (v16 + 1) & v15;
      while (1)
      {
        v40 = a1;
        v20 = v15;
        v21 = v12;
        v22 = v19 * v14;
        sub_22F16630C(*(v18 + 48) + v19 * v14, v10, type metadata accessor for SongSource);
        v23 = v18;
        sub_22F742170();
        sub_22F740D60();
        if (*&v10[v7[11] + 8])
        {
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v24 = v38;
        sub_22F12057C(&v10[v7[7]], v38);
        v25 = v39;
        if ((*v35)(v24, 1, v39) == 1)
        {
          sub_22F742190();
        }

        else
        {
          v26 = v34;
          (*v33)(v34, v24, v25);
          sub_22F742190();
          sub_22F1662C8(&qword_2810AC710, MEMORY[0x277CC9588]);
          sub_22F740D50();
          (*v32)(v26, v25);
        }

        if (*&v10[v7[8] + 8])
        {
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        if (*&v10[v7[12] + 8])
        {
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v12 = v21;
        v27 = sub_22F7421D0();
        sub_22F166374(v10, type metadata accessor for SongSource);
        v15 = v20;
        v28 = v27 & v20;
        a1 = v40;
        if (v40 >= v37)
        {
          v18 = v23;
          if (v28 < v37)
          {
            v19 = v36;
            goto LABEL_5;
          }

          v19 = v36;
          if (v40 < v28)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v18 = v23;
          v19 = v36;
          if (v28 < v37 && v40 < v28)
          {
            goto LABEL_5;
          }
        }

        if (v19 * v40 < v22 || *(v18 + 48) + v19 * v40 >= (*(v18 + 48) + v22 + v19))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_29;
        }

        a1 = v14;
        if (v19 * v40 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_29:
          a1 = v14;
        }

LABEL_5:
        v14 = (v14 + 1) & v20;
        if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_33;
        }
      }
    }

    v18 = v11;
LABEL_33:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v29 = *(v18 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v31;
    ++*(v18 + 36);
  }
}

unint64_t sub_22F165B30(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22F741990();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_22F741800();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_22F165D18(_OWORD *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84FA0];
  v5 = *(v2 + 16);
  v6 = a1[3];
  if (*(v2 + 40) == 1)
  {
    v15 = a1[2];
    v16 = v6;
    v17 = a1[4];
    type metadata accessor for ImportantEntitiesChildrenContainer(0);
    swift_allocObject();
    v7 = v5;
    swift_retain_n();
    v8 = sub_22F240428(v7, GEOLocationCoordinate2DMake, 0, sub_22F166444, v4);
    sub_22F278BCC(v8, &v15, 0);
  }

  else
  {
    v15 = a1[2];
    v16 = v6;
    v17 = a1[4];
    type metadata accessor for ImportantEntitiesPetContainer(0);
    swift_allocObject();
    v9 = v5;
    swift_retain_n();
    v10 = sub_22F349914(v9, GEOLocationCoordinate2DMake, 0, sub_22F16643C, v4);
    sub_22F27D3B4(v10, &v15, 0);
  }

  swift_beginAccess();
  v11 = *(v4 + 16);
  v13 = *(v2 + 24);
  v12 = *(v2 + 32);

  type metadata accessor for ImportantEntitiesTuningResult();
  result = swift_allocObject();
  result[2] = v11;
  result[3] = v13;
  result[4] = v12;
  return result;
}

unint64_t sub_22F165F2C()
{
  result = qword_27DAB1558;
  if (!qword_27DAB1558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1560, &qword_22F772170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1558);
  }

  return result;
}

uint64_t sub_22F1662C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22F73F690();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F16630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F166374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F1663D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SongSource.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SongSource.dateLastUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SongSource(0) + 20);

  return sub_22F12057C(v3, a1);
}

uint64_t type metadata accessor for SongSource(uint64_t a1)
{
  result = qword_2810AC240;
  if (!qword_2810AC240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SongSource.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SongSource(0) + 28);

  return sub_22F12057C(v3, a1);
}

uint64_t SongSource.geohash.getter()
{
  v1 = *(v0 + *(type metadata accessor for SongSource(0) + 32));

  return v1;
}

uint64_t SongSource.version.getter()
{
  v1 = *(v0 + *(type metadata accessor for SongSource(0) + 44));

  return v1;
}

uint64_t SongSource.category.getter()
{
  v1 = *(v0 + *(type metadata accessor for SongSource(0) + 48));

  return v1;
}

uint64_t SongSource.isInCache.setter(char a1)
{
  result = type metadata accessor for SongSource(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t SongSource.init(identifier:version:category:date:location:locationTolerance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>, unsigned __int8 *a10)
{
  v17 = *a10;
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for SongSource(0);
  v19 = (a9 + v18[11]);
  *v19 = a3;
  v19[1] = a4;
  sub_22F12057C(a7, a9 + v18[7]);
  v20 = (a9 + v18[12]);
  *v20 = a5;
  v20[1] = a6;
  if (a8)
  {
    if (v17 != 11)
    {
      type metadata accessor for Geohash();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 0;
      [a8 coordinate];
      v27 = v26;
      [a8 coordinate];
      sub_22F34AF8C(v17 + 1, v27, v28);
      v30 = v29;
      v32 = v31;
      swift_setDeallocating();

      v33 = (a9 + v18[8]);
      *v33 = v30;
      v33[1] = v32;
      [a8 coordinate];
      v34 = a9 + v18[9];
      *v34 = v35;
      v34[8] = 0;
      [a8 coordinate];
      v37 = v36;

      sub_22F120ADC(a7, &qword_27DAB0920, &qword_22F770B20);
      v23 = 0;
      v24 = v18[10];
      *(a9 + v24) = v37;
      goto LABEL_7;
    }

    sub_22F120ADC(a7, &qword_27DAB0920, &qword_22F770B20);
  }

  else
  {
    sub_22F120ADC(a7, &qword_27DAB0920, &qword_22F770B20);
  }

  v21 = (a9 + v18[8]);
  *v21 = 0;
  v21[1] = 0;
  v22 = a9 + v18[9];
  *v22 = 0;
  v23 = 1;
  v22[8] = 1;
  v24 = v18[10];
  *(a9 + v24) = 0;
LABEL_7:
  *(a9 + v24 + 8) = v23;
  v38 = v18[5];
  v39 = sub_22F73F690();
  result = (*(*(v39 - 8) + 56))(a9 + v38, 1, 1, v39);
  *(a9 + v18[6]) = 0;
  *(a9 + v18[13]) = 0;
  return result;
}

id SongSource.location.getter()
{
  v1 = type metadata accessor for SongSource(0);
  v2 = v0 + *(v1 + 36);
  if (*(v2 + 8))
  {
    return 0;
  }

  v3 = v0 + *(v1 + 40);
  if (*(v3 + 8))
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v2 longitude:*v3];
  }
}

uint64_t SongSource.hash(into:)(uint64_t a1)
{
  v2 = sub_22F73F690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_22F740D60();
  v9 = type metadata accessor for SongSource(0);
  if (*(v1 + v9[11] + 8))
  {
    sub_22F742190();
    sub_22F740D60();
  }

  else
  {
    sub_22F742190();
  }

  sub_22F12057C(v1 + v9[7], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_22F742190();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_22F742190();
    sub_22F168D10(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22F740D50();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + v9[8] + 8))
  {
    sub_22F742190();
    sub_22F740D60();
  }

  else
  {
    sub_22F742190();
  }

  if (!*(v1 + v9[12] + 8))
  {
    return sub_22F742190();
  }

  sub_22F742190();
  return sub_22F740D60();
}

uint64_t SongSource.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = *v0;
  v14 = v0[1];
  v51 = v13;
  v52 = v14;
  v15 = type metadata accessor for SongSource(0);
  v16 = (v1 + v15[11]);
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v49 = 2128928;
    v50 = 0xE300000000000000;

    MEMORY[0x231900B10](v18, v17);
    MEMORY[0x231900B10](v49, v50);
  }

  else
  {
  }

  v19 = (v1 + v15[12]);
  if (v19[1])
  {
    v20 = *v19;
    v49 = 2128928;
    v50 = 0xE300000000000000;
    MEMORY[0x231900B10](v20);
    MEMORY[0x231900B10](v49, v50);
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_22F12057C(v1 + v15[7], v6);
  v45 = *(v8 + 48);
  v22 = v45(v6, 1, v7);
  v44 = v8;
  v46 = v21;
  if (v22 == 1)
  {
    sub_22F120ADC(v6, &qword_27DAB0920, &qword_22F770B20);
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    v49 = 2128928;
    v50 = 0xE300000000000000;
    v23 = sub_22F73F5B0();
    v24 = [v21 stringFromDate_];

    v25 = sub_22F740E20();
    v27 = v26;

    MEMORY[0x231900B10](v25, v27);

    MEMORY[0x231900B10](v49, v50);

    (*(v8 + 8))(v12, v7);
  }

  v28 = (v1 + v15[8]);
  if (v28[1])
  {
    v29 = *v28;
    v49 = 2128928;
    v50 = 0xE300000000000000;
    MEMORY[0x231900B10](v29);
    MEMORY[0x231900B10](v49, v50);

    if ((*(v1 + v15[9] + 8) & 1) == 0 && (*(v1 + v15[10] + 8) & 1) == 0)
    {
      v49 = 0;
      v50 = 0xE000000000000000;
      MEMORY[0x231900B10](10272, 0xE200000000000000);
      sub_22F7413B0();
      MEMORY[0x231900B10](8236, 0xE200000000000000);
      sub_22F7413B0();
      MEMORY[0x231900B10](41, 0xE100000000000000);
      MEMORY[0x231900B10](v49, v50);
    }
  }

  v49 = 2112032;
  v50 = 0xE300000000000000;
  if (*(v1 + v15[13]))
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (*(v1 + v15[13]))
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v30, v31);

  MEMORY[0x231900B10](v49, v50);

  v32 = v47;
  sub_22F12057C(v1 + v15[5], v47);
  if (v45(v32, 1, v7) == 1)
  {
    sub_22F120ADC(v32, &qword_27DAB0920, &qword_22F770B20);
    v33 = v46;
  }

  else
  {
    v35 = v43;
    v34 = v44;
    (*(v44 + 32))(v43, v32, v7);
    v49 = 2128928;
    v50 = 0xE300000000000000;
    v36 = sub_22F73F5B0();
    v33 = v46;
    v37 = [v46 stringFromDate_];

    v38 = sub_22F740E20();
    v40 = v39;

    MEMORY[0x231900B10](v38, v40);

    MEMORY[0x231900B10](v49, v50);

    (*(v34 + 8))(v35, v7);
  }

  v49 = 2128928;
  v50 = 0xE300000000000000;
  v48 = *(v1 + v15[6]);
  v41 = sub_22F742010();
  MEMORY[0x231900B10](v41);

  MEMORY[0x231900B10](v49, v50);

  return v51;
}

uint64_t sub_22F1672C0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x79726F6765746163;
    if (a1 != 8)
    {
      v6 = 0x686361436E497369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656475746974616CLL;
    if (a1 != 5)
    {
      v7 = 0x64757469676E6F6CLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6E756F43676E6F73;
    v3 = 1702125924;
    if (a1 != 3)
    {
      v3 = 0x687361686F6567;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7473614C65746164;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22F16740C()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F167454(uint64_t a1)
{
  v2 = *v1;
  sub_22F742170();
  MEMORY[0x231901D30](v2);
  return sub_22F7421D0();
}

uint64_t sub_22F1674A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F1689C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F1674E0(uint64_t a1)
{
  v2 = sub_22F1683E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F16751C(uint64_t a1)
{
  v2 = sub_22F1683E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SongSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1568, &qword_22F772520);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1683E4();
  sub_22F742210();
  v8[31] = 0;
  sub_22F741F80();
  if (!v1)
  {
    type metadata accessor for SongSource(0);
    v8[30] = 1;
    sub_22F73F690();
    sub_22F168D10(&qword_2810AC718, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22F741F70();
    v8[29] = 2;
    sub_22F741FC0();
    v8[28] = 3;
    sub_22F741F70();
    v8[27] = 4;
    sub_22F741F20();
    v8[26] = 5;
    sub_22F741F40();
    v8[25] = 6;
    sub_22F741F40();
    v8[24] = 7;
    sub_22F741F20();
    v8[15] = 8;
    sub_22F741F20();
    v8[14] = 9;
    sub_22F741F90();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SongSource.hashValue.getter()
{
  sub_22F742170();
  SongSource.hash(into:)(v1);
  return sub_22F7421D0();
}

uint64_t SongSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1578, &qword_22F772528);
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v40 - v12;
  v14 = type metadata accessor for SongSource(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_22F1683E4();
  v44 = v13;
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v47);
  }

  v41 = v16;
  v42 = v14;
  v57 = 0;
  v18 = sub_22F741EB0();
  v19 = v41;
  *v41 = v18;
  v19[1] = v20;
  sub_22F73F690();
  v56 = 1;
  sub_22F168D10(&qword_27DAB1580, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_22F741EA0();
  v21 = v42;
  sub_22F168438(v9, v19 + v42[5]);
  v55 = 2;
  v40[1] = 0;
  *(v19 + v21[6]) = sub_22F741EF0();
  v54 = 3;
  sub_22F741EA0();
  sub_22F168438(v6, v19 + v21[7]);
  v53 = 4;
  v22 = sub_22F741E50();
  v23 = (v19 + v21[8]);
  *v23 = v22;
  v23[1] = v24;
  v52 = 5;
  v25 = sub_22F741E70();
  v26 = v19 + v21[9];
  *v26 = v25;
  v26[8] = v27 & 1;
  v51 = 6;
  v28 = sub_22F741E70();
  v29 = v19 + v21[10];
  *v29 = v28;
  v29[8] = v30 & 1;
  v50 = 7;
  v31 = sub_22F741E50();
  v32 = (v19 + v21[11]);
  *v32 = v31;
  v32[1] = v33;
  v49 = 8;
  v34 = sub_22F741E50();
  v35 = (v19 + v42[12]);
  *v35 = v34;
  v35[1] = v36;
  v48 = 9;
  v37 = sub_22F741EC0();
  (*(v46 + 8))(v44, v45);
  v38 = v41;
  *(v41 + v42[13]) = v37 & 1;
  sub_22F1684A8(v38, v43);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return sub_22F16850C(v38);
}

uint64_t sub_22F167FD8()
{
  sub_22F742170();
  SongSource.hash(into:)(v1);
  return sub_22F7421D0();
}

uint64_t sub_22F16801C(uint64_t a1)
{
  sub_22F742170();
  SongSource.hash(into:)(v2);
  return sub_22F7421D0();
}

uint64_t _s11PhotosGraph10SongSourceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_22F742040() & 1) == 0)
  {
    goto LABEL_9;
  }

  v27 = type metadata accessor for SongSource(0);
  v14 = *(v27 + 28);
  v15 = *(v11 + 48);
  sub_22F12057C(a1 + v14, v13);
  sub_22F12057C(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_22F12057C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_22F168D10(&qword_2810AC700, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v19 = sub_22F740DE0();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_22F120ADC(v13, &qword_27DAB0920, &qword_22F770B20);
      if (v19)
      {
        goto LABEL_12;
      }

LABEL_9:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_22F120ADC(v13, &unk_27DAB05B0, &unk_22F771430);
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_22F120ADC(v13, &qword_27DAB0920, &qword_22F770B20);
LABEL_12:
  v21 = *(v27 + 32);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  v17 = (v23 | v25) == 0;
  if (v23 && v25)
  {
    if (*v22 == *v24 && v23 == v25)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_22F742040();
    }
  }

  return v17 & 1;
}

unint64_t sub_22F1683E4()
{
  result = qword_27DAB1570;
  if (!qword_27DAB1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1570);
  }

  return result;
}

uint64_t sub_22F168438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1684A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F16850C(uint64_t a1)
{
  v2 = type metadata accessor for SongSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22F1685D8(uint64_t a1)
{
  sub_22F1686CC(319);
  if (v1 <= 0x3F)
  {
    sub_22F168724(319, &qword_2810A9390, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22F168724(319, &qword_2810A9278, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22F1686CC(uint64_t a1)
{
  if (!qword_2810AC6F0)
  {
    sub_22F73F690();
    v1 = sub_22F741860();
    if (!v2)
    {
      atomic_store(v1, &qword_2810AC6F0);
    }
  }
}

void sub_22F168724(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22F741860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SongSource.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SongSource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F1688C4()
{
  result = qword_27DAB1588;
  if (!qword_27DAB1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1588);
  }

  return result;
}

unint64_t sub_22F16891C()
{
  result = qword_27DAB1590;
  if (!qword_27DAB1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1590);
  }

  return result;
}

unint64_t sub_22F168974()
{
  result = qword_27DAB1598;
  if (!qword_27DAB1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1598);
  }

  return result;
}

uint64_t sub_22F1689C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473614C65746164 && a2 == 0xEF64657461647055 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F43676E6F73 && a2 == 0xE900000000000074 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x687361686F6567 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x686361436E497369 && a2 == 0xE900000000000065)
  {

    return 9;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22F168D10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PlaceZeroKeyword.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGPlaceZeroKeyword_title);

  return v1;
}

uint64_t PlaceZeroKeyword.address.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGPlaceZeroKeyword_address);

  return v1;
}

uint64_t sub_22F168E14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_22F168E7C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F168EC4(uint64_t a1)
{
  v3 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_22F168F7C()
{
  v1 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F168FC0(double a1)
{
  v3 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id PlaceZeroKeyword.__allocating_init(type:title:address:displayInfo:queryToken:addressNodeCollection:placeKind:score:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, char *a10, uint64_t a11)
{
  v21 = objc_allocWithZone(v11);
  v22 = *a10;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_type] = a1;
  v23 = &v21[OBJC_IVAR___PGPlaceZeroKeyword_title];
  *v23 = a2;
  v23[1] = a3;
  v24 = &v21[OBJC_IVAR___PGPlaceZeroKeyword_address];
  *v24 = a4;
  v24[1] = a5;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = a6;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = a7;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = a8;
  v21[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = v22;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_score] = a9;
  *&v21[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = a11;
  v26.receiver = v21;
  v26.super_class = v11;
  return objc_msgSendSuper2(&v26, sel_init);
}

id PlaceZeroKeyword.init(type:title:address:displayInfo:queryToken:addressNodeCollection:placeKind:score:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, char *a10, uint64_t a11)
{
  v12 = *a10;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_type] = a1;
  v13 = &v11[OBJC_IVAR___PGPlaceZeroKeyword_title];
  *v13 = a2;
  v13[1] = a3;
  v14 = &v11[OBJC_IVAR___PGPlaceZeroKeyword_address];
  *v14 = a4;
  v14[1] = a5;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = a6;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = a7;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = a8;
  v11[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = v12;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_score] = a9;
  *&v11[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = a11;
  v16.receiver = v11;
  v16.super_class = type metadata accessor for PlaceZeroKeyword();
  return objc_msgSendSuper2(&v16, sel_init);
}

id PlaceZeroKeyword.__allocating_init(name:address:locationOrAreaNode:isTopPlace:placeKind:options:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char *a7, uint64_t a8, void *a9)
{
  v11 = a6;
  swift_getObjectType();
  return sub_22F16ACE0(a1, a2, a3, a4, a5, v11, a7, a8, a9);
}

uint64_t PlaceZeroKeyword.PlaceZeroKeywordKind.rawValue.getter()
{
  v1 = 0x7465737265707573;
  v2 = 0x696F41706F74;
  if (*v0 != 2)
  {
    v2 = 1701670760;
  }

  if (*v0)
  {
    v1 = 0x6E69727275636572;
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

id PlaceZeroKeyword.__allocating_init(homeName:address:addressNode:isTopPlace:options:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, void *a8)
{
  v14 = objc_allocWithZone(MEMORY[0x277D3ADA8]);
  v15 = sub_22F740DF0();
  v16 = [v14 initWithText:v15 userCategory:10 matchType:2];

  v17 = sub_22F740E20();
  v19 = v18;
  v20 = MEMORY[0x277D837D0];
  v48 = MEMORY[0x277D837D0];
  *&v47 = a3;
  *(&v47 + 1) = a4;
  sub_22F107D08(&v47, v46);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F130630(v46, v17, v19, isUniquelyReferenced_nonNull_native);

  v22 = sub_22F740E20();
  v24 = v23;
  v48 = MEMORY[0x277D839B0];
  LOBYTE(v47) = a6;
  sub_22F107D08(&v47, v46);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_22F130630(v46, v22, v24, v25);

  v26 = sub_22F740E20();
  v28 = v27;
  v48 = v20;
  *&v47 = 1701670760;
  *(&v47 + 1) = 0xE400000000000000;
  sub_22F107D08(&v47, v46);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v45 = a7;
  sub_22F130630(v46, v26, v28, v29);

  v30 = a7;
  v31 = [objc_msgSend(a5 locationOrAreaNodeCollection)];
  swift_unknownObjectRelease();
  v32 = type metadata accessor for PlaceZeroKeyword();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR___PGPlaceZeroKeyword_type] = 6;
  v34 = &v33[OBJC_IVAR___PGPlaceZeroKeyword_title];
  *v34 = a1;
  v34[1] = a2;
  v35 = &v33[OBJC_IVAR___PGPlaceZeroKeyword_address];
  *v35 = a3;
  v35[1] = a4;
  *&v33[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v30;
  *&v33[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v16;
  *&v33[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v31;
  v33[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = 3;
  *&v33[OBJC_IVAR___PGPlaceZeroKeyword_score] = 0x7FEFFFFFFFFFFFFFLL;
  *&v33[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = a8;
  v44.receiver = v33;
  v44.super_class = v32;
  v36 = v16;
  v37 = v31;
  v38 = a8;
  v39 = objc_msgSendSuper2(&v44, sel_init);

  return v39;
}

unint64_t sub_22F1696C8()
{
  v1 = v0;
  v2 = sub_22F169A80(*(v0 + OBJC_IVAR___PGPlaceZeroKeyword_address), *(v0 + OBJC_IVAR___PGPlaceZeroKeyword_address + 8));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_22F740E20();
  v11 = v10;
  v12 = MEMORY[0x277D839F8];
  v42 = MEMORY[0x277D839F8];
  *v41 = v2;
  v13 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  sub_22F1217F0(v41, v9, v11);
  swift_endAccess();
  v14 = sub_22F740E20();
  v16 = v15;
  v42 = v12;
  v41[0] = v6;
  swift_beginAccess();
  sub_22F1217F0(v41, v14, v16);
  swift_endAccess();
  v17 = sub_22F740E20();
  v19 = v18;
  v42 = v12;
  v41[0] = v4;
  swift_beginAccess();
  sub_22F1217F0(v41, v17, v19);
  swift_endAccess();
  v20 = sub_22F740E20();
  v22 = v21;
  v42 = v12;
  v41[0] = v8;
  swift_beginAccess();
  sub_22F1217F0(v41, v20, v22);
  swift_endAccess();
  v23 = [*(v0 + OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection) momentNodes];
  v24 = sub_22F169CF4(v23);

  v25 = sub_22F740E20();
  v27 = v26;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v41[0] = v24;
  swift_beginAccess();
  sub_22F1217F0(v41, v25, v27);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7727B0;
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v29;
  v30 = *(v1 + OBJC_IVAR___PGPlaceZeroKeyword_type);
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v30;
  *(inited + 80) = sub_22F740E20();
  *(inited + 88) = v31;
  v32 = *(v1 + OBJC_IVAR___PGPlaceZeroKeyword_title);
  v33 = *(v1 + OBJC_IVAR___PGPlaceZeroKeyword_title + 8);
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v32;
  *(inited + 104) = v33;
  *(inited + 128) = sub_22F740E20();
  *(inited + 136) = v34;
  v35 = *(v1 + v13);
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  *(inited + 144) = v35;
  *(inited + 176) = sub_22F740E20();
  *(inited + 184) = v36;
  v37 = *(v1 + OBJC_IVAR___PGPlaceZeroKeyword_queryToken);
  *(inited + 216) = sub_22F120634(0, &qword_27DAB15E8, 0x277D3ADA8);
  *(inited + 192) = v37;

  v38 = v37;
  v39 = sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  return v39;
}

double sub_22F169A80(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MKCoordinateRegionForMapRect(*MEMORY[0x277CD4BB8]);
  v3 = [objc_allocWithZone(MEMORY[0x277CD4E38]) init];
  v4 = sub_22F740DF0();
  [v3 setNaturalLanguageQuery_];

  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  v12[4] = sub_22F16BCB4;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22F16AC08;
  v12[3] = &block_descriptor_0;
  v8 = _Block_copy(v12);

  v9 = v5;

  [v6 startWithCompletionHandler_];
  _Block_release(v8);

  sub_22F741620();
  swift_beginAccess();
  v10 = *(v2 + 16);

  return v10;
}

uint64_t sub_22F169CF4(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary) librarySpecificFetchOptions];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22F771350;
  v6 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22F771340;
  v8 = [a1 uuids];
  v9 = sub_22F741420();

  v10 = &qword_27DAB1608;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  *(v7 + 64) = sub_22F16BC6C(&qword_2810A9240, &qword_27DAB1608, &unk_22F772BB0, MEMORY[0x277CC9C78]);
  *(v7 + 32) = v9;
  *(v5 + 32) = sub_22F741560();
  v11 = [objc_opt_self() predicateForAssetWithLocation];
  if (!v11)
  {
    __break(1u);
    goto LABEL_46;
  }

  *(v5 + 40) = v11;
  v12 = sub_22F741160();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setInternalPredicate_];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F771350;
  v15 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v16 = sub_22F740DF0();
  v17 = [v15 initWithKey:v16 ascending:0];

  *(v14 + 32) = v17;
  v18 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v19 = sub_22F740DF0();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v14 + 40) = v20;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v21 = sub_22F741160();

  [v3 setSortDescriptors_];

  v22 = objc_opt_self();
  v23 = [v22 requiredFetchPropertySets];
  if (!v23)
  {
    sub_22F741180();
    v23 = sub_22F741160();
  }

  [v3 setFetchPropertySets_];

  [v3 setChunkSizeForFetch_];
  v4 = [objc_opt_self() fetchAssetsWithOptions_];
  v24 = [v22 representativeAssetsForMapDisplayFromAssets_];
  v25 = sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v6 = sub_22F741180();

  v9 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_40:
    v10 = sub_22F741A00();
    if (sub_22F741A00() < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

LABEL_46:
    if (v10 >= 3)
    {
      v48 = 3;
    }

    else
    {
      v48 = v10;
    }

    if (v10 >= 0)
    {
      v10 = v48;
    }

    else
    {
      v10 = 3;
    }

    result = sub_22F741A00();
    if (result >= v10)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v10)
  {
LABEL_9:
    if ((v6 & 0xC000000000000001) != 0)
    {

      if (v10)
      {
        sub_22F741B20();
        if (v10 != 1)
        {
          sub_22F741B20();
          if (v10 != 2)
          {
            sub_22F741B20();
          }
        }
      }
    }

    else
    {
    }

    if (v9)
    {
      v25 = sub_22F741DB0();
      v9 = v28;
      v27 = v29;
      v31 = v30;

      v10 = v31 >> 1;
    }

    else
    {
      v27 = 0;
      v25 = v6 & 0xFFFFFFFFFFFFFF8;
      v9 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v32 = v10 - v27;
    if (!__OFSUB__(v10, v27))
    {
      if (!v32)
      {
        swift_unknownObjectRelease();
        v6 = MEMORY[0x277D84F90];
        if (*(MEMORY[0x277D84F90] + 16))
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v51 = MEMORY[0x277D84F90];
      v6 = &v51;
      sub_22F146454(0, v32 & ~(v32 >> 63), 0);
      if ((v32 & 0x8000000000000000) == 0)
      {
        v49 = v4;
        v50 = v3;
        v6 = v51;
        if (v10 <= v27)
        {
          v33 = v27;
        }

        else
        {
          v33 = v10;
        }

        v3 = (v33 - v27);
        v4 = (v9 + 8 * v27);
        do
        {
          if (!v3)
          {
            __break(1u);
            goto LABEL_40;
          }

          v34 = *v4;
          v35 = [v34 localIdentifier];
          v36 = sub_22F740E20();
          v38 = v37;

          v51 = v6;
          v40 = *(v6 + 16);
          v39 = *(v6 + 24);
          v9 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            sub_22F146454((v39 > 1), v40 + 1, 1);
            v6 = v51;
          }

          *(v6 + 16) = v9;
          v41 = v6 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
          --v3;
          ++v4;
          --v32;
        }

        while (v32);
        swift_unknownObjectRelease();
        v4 = v49;
        v3 = v50;
        if (*(v6 + 16))
        {
          goto LABEL_37;
        }

LABEL_32:
        if ([v4 count] >= 1)
        {
          v42 = [v4 objectAtIndexedSubscript_];
          v43 = [v42 localIdentifier];

          v25 = sub_22F740E20();
          v10 = v44;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_34:
            v46 = *(v6 + 16);
            v45 = *(v6 + 24);
            if (v46 >= v45 >> 1)
            {
              v6 = sub_22F13E1A8((v45 > 1), v46 + 1, 1, v6);
            }

            *(v6 + 16) = v46 + 1;
            v47 = v6 + 16 * v46;
            *(v47 + 32) = v25;
            *(v47 + 40) = v10;
            return v6;
          }

LABEL_44:
          v6 = sub_22F13E1A8(0, *(v6 + 16) + 1, 1, v6);
          goto LABEL_34;
        }

LABEL_37:

        return v6;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t PlaceZeroKeyword.PlaceZeroKeywordKind.maximumNumberOfKeywordsAllowed.getter()
{
  if (*v0 - 1 >= 2)
  {
    return 15;
  }

  else
  {
    return 5;
  }
}

PhotosGraph::PlaceZeroKeyword::PlaceZeroKeywordKind_optional __swiftcall PlaceZeroKeyword.PlaceZeroKeywordKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F741E30();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F16A4C4()
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F16A588(uint64_t a1)
{
  sub_22F740D60();
}

uint64_t sub_22F16A638(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

void sub_22F16A704(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x7465737265707573;
  v4 = 0xE600000000000000;
  v5 = 0x696F41706F74;
  if (*v1 != 2)
  {
    v5 = 1701670760;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E69727275636572;
    v2 = 0xED00007069725467;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id PlaceZeroKeyword.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceZeroKeyword.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceZeroKeyword();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F16A904()
{
  v1 = *(*v0 + OBJC_IVAR___PGPlaceZeroKeyword_title);

  return v1;
}

double sub_22F16A944()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F16A990(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

double sub_22F16AA50()
{
  v1 = *v0;
  v2 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F16AA98(double a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

void sub_22F16AB88(void *a1, int a2, void *a3, dispatch_group_t group)
{
  if (a1)
  {
    [a1 boundingRegion];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    swift_beginAccess();
    a3[2] = v7;
    a3[3] = v9;
    a3[4] = v11;
    a3[5] = v13;
  }

  dispatch_group_leave(group);
}

void sub_22F16AC08(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

double sub_22F16AC94@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_22F13A100((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

id sub_22F16ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, char *a7, uint64_t a8, void *a9)
{
  v14 = *a7;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    swift_unknownObjectRetain();
    v17 = [v16 locationNodeCollection];
    v18 = [v17 parentLocationNodes];

    v19 = [v18 anyNode];
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    swift_unknownObjectRetain();
    v22 = [v21 stateOrBiggerParentLocationNode];
    swift_unknownObjectRelease();

    v19 = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7707D0;
  *(inited + 32) = sub_22F740E20();
  v24 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v25;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  *(inited + 80) = sub_22F740E20();
  *(inited + 88) = v26;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = a6 & 1;
  *(inited + 128) = sub_22F740E20();
  *(inited + 136) = v27;
  if (v14 > 1u)
  {
    if (v14 == 2)
    {
      v28 = 0xE600000000000000;
      v29 = 0x696F41706F74;
    }

    else
    {
      v28 = 0xE400000000000000;
      v29 = 1701670760;
    }
  }

  else if (v14)
  {
    v28 = 0xED00007069725467;
    v29 = 0x6E69727275636572;
  }

  else
  {
    v28 = 0xE800000000000000;
    v29 = 0x7465737265707573;
  }

  *(inited + 168) = v24;
  *(inited + 144) = v29;
  *(inited + 152) = v28;

  v30 = sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  v49 = a4;
  if (v19)
  {
    v31 = v19;
    v32 = _s11PhotosGraph16PlaceZeroKeywordC22locationNameByCategory3forSDySo8NSNumberCSSGSo19PGGraphLocationNodeC_tFZ_0(v31);

    v33 = sub_22F740DF0();
    v34 = a3;
    if (v32)
    {
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      sub_22F16C010();
      v35 = sub_22F740C80();

      goto LABEL_18;
    }
  }

  else
  {
    v34 = a3;
    v33 = sub_22F740DF0();
  }

  v35 = 0;
LABEL_18:
  v36 = [objc_allocWithZone(MEMORY[0x277D3ADA0]) initWithText:v33 locationNameByCategory:v35];

  [v36 setUserControlledCategoriesUseWildcard_];
  if (*(a8 + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v30;
    sub_22F16BCD4(a8, sub_22F16AC94, 0, isUniquelyReferenced_nonNull_native, &v53);

    v30 = v53;
  }

  else
  {
  }

  v38 = [objc_msgSend(a5 locationOrAreaNodeCollection)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v39 = dbl_22F772948[v14];
  v40 = type metadata accessor for PlaceZeroKeyword();
  v41 = objc_allocWithZone(v40);
  *&v41[OBJC_IVAR___PGPlaceZeroKeyword_type] = 2;
  v42 = &v41[OBJC_IVAR___PGPlaceZeroKeyword_title];
  *v42 = a1;
  v42[1] = a2;
  v43 = &v41[OBJC_IVAR___PGPlaceZeroKeyword_address];
  *v43 = v34;
  v43[1] = v49;
  *&v41[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v30;
  *&v41[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v36;
  *&v41[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v38;
  v41[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = v14;
  *&v41[OBJC_IVAR___PGPlaceZeroKeyword_score] = v39;
  *&v41[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = a9;
  v52.receiver = v41;
  v52.super_class = v40;
  v44 = v36;
  v45 = v38;
  v46 = a9;
  v47 = objc_msgSendSuper2(&v52, sel_init);

  return v47;
}

uint64_t _s11PhotosGraph16PlaceZeroKeywordC19searchIndexCategory3forSo08PLSearchgH0VSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_22F740E20() == a1 && v4 == a2)
  {

    return 1;
  }

  v6 = sub_22F742040();

  if (v6)
  {
    return 1;
  }

  if (sub_22F740E20() == a1 && v7 == a2)
  {

    return 2;
  }

  else
  {
    v9 = sub_22F742040();

    if (v9)
    {
      return 2;
    }

    else if (sub_22F740E20() == a1 && v11 == a2)
    {

      return 3;
    }

    else
    {
      v13 = sub_22F742040();

      if (v13)
      {
        return 3;
      }

      else if (sub_22F740E20() == a1 && v14 == a2)
      {

        return 5;
      }

      else
      {
        v15 = sub_22F742040();

        if (v15)
        {
          return 5;
        }

        else if (sub_22F740E20() == a1 && v16 == a2)
        {

          return 7;
        }

        else
        {
          v17 = sub_22F742040();

          if (v17)
          {
            return 7;
          }

          else if (sub_22F740E20() == a1 && v18 == a2)
          {

            return 10;
          }

          else
          {
            v19 = sub_22F742040();

            if (v19)
            {
              return 10;
            }

            else if (sub_22F740E20() == a1 && v20 == a2)
            {

              return 12;
            }

            else
            {
              v21 = sub_22F742040();

              if (v21)
              {
                return 12;
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
  }
}

void *_s11PhotosGraph16PlaceZeroKeywordC22locationNameByCategory3forSDySo8NSNumberCSSGSo19PGGraphLocationNodeC_tFZ_0(void *a1)
{
  v48 = sub_22F73F7C0();
  MEMORY[0x28223BE20](v48);
  v46 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = (v3 + 8);
  v4 = a1;
  v5 = MEMORY[0x277D84F98];
  v6 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v7 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v8 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
  while (1)
  {
    v9 = [v4 v6[262]];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22F740E20();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = _s11PhotosGraph16PlaceZeroKeywordC19searchIndexCategory3forSo08PLSearchgH0VSS_tFZ_0(v11, v13);

    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = [v4 name];
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = v15;
    v17 = v7;
    v18 = v6;
    v19 = sub_22F740E20();
    v21 = v20;
    if (v14 == 12)
    {
      v22 = v46;
      sub_22F73F780();
      v23 = sub_22F73F730();
      (*v47)(v22, v48);
      v24 = [v23 localizedStringForCountryCode_];

      if (v24)
      {

        v19 = sub_22F740E20();
        v21 = v25;
      }
    }

    else
    {
    }

    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v5;
    v28 = sub_22F122BD4(v26);
    v30 = v5[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (v5[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = v28;
        sub_22F1344C0();
        v28 = v44;
      }
    }

    else
    {
      sub_22F125C90(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_22F122BD4(v26);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_26;
      }
    }

    v6 = v18;
    v5 = v49;
    v7 = v17;
    if (v34)
    {
      v36 = (v49[7] + 16 * v28);
      *v36 = v19;
      v36[1] = v21;

      v8 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
    }

    else
    {
      v49[(v28 >> 6) + 8] |= 1 << v28;
      *(v5[6] + 8 * v28) = v26;
      v37 = (v5[7] + 16 * v28);
      *v37 = v19;
      v37[1] = v21;
      v38 = v5[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      v8 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
      if (v32)
      {
        goto LABEL_25;
      }

      v5[2] = v39;
    }

LABEL_21:
    v40 = [v4 v7[421]];
    v41 = [v40 v8[146]];

    v42 = [v41 anyNode];
    v43 = v42;

    if (!v43)
    {
      return v5;
    }

    v4 = v43;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

unint64_t sub_22F16B81C()
{
  result = qword_27DAB15F0;
  if (!qword_27DAB15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB15F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceZeroKeyword.PlaceZeroKeywordKind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlaceZeroKeyword.PlaceZeroKeywordKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22F16BC6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F16BCD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_22F2BB620(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_22F107D08(v47, v45);
  v14 = *a5;
  result = sub_22F1229E8(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_22F125CA4(v20, a4 & 1);
    result = sub_22F1229E8(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22F7420C0();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_22F1344D4();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_22F13A100(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_0(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0((v25 + v24));
    sub_22F107D08(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_22F107D08(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_22F2BB620(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_22F107D08(v47, v45);
        v34 = *a5;
        result = sub_22F1229E8(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_22F125CA4(v38, 1);
          result = sub_22F1229E8(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_22F13A100(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_0(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0((v33 + v32));
          sub_22F107D08(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_22F107D08(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_22F2BB620(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_22F0FF590(v48);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22F16C010()
{
  result = qword_2810A8EC8;
  if (!qword_2810A8EC8)
  {
    sub_22F120634(255, &qword_2810A8ED0, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A8EC8);
  }

  return result;
}

uint64_t Atomic.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t Atomic.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22F16C1FC(uint64_t a1)
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

id sub_22F16C2FC(void *a1, void *a2, char *a3, void *a4)
{
  v5 = v4;
  v92 = a2;
  v89 = sub_22F73F690();
  v93 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v14 = sub_22F73F470();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v86 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_photosChallengeInferredSuggestsSharing;
  *(v5 + 16) = a4;
  *(v5 + v20) = 2;
  v91 = a4;
  v21 = [a1 sharedLibraryDiagnostics];
  if (!v21)
  {
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v67 = sub_22F740B90();
    __swift_project_value_buffer(v67, qword_27DAD0E10);
    (*(v15 + 16))(v19, a3, v14);
    v68 = sub_22F740B70();
    v69 = sub_22F7415E0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v15;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87 = a1;
      v73 = v14;
      v93 = v72;
      v94 = v72;
      *v71 = 136315138;
      sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v74 = sub_22F742010();
      v76 = v75;
      v90 = a3;
      v77 = *(v70 + 8);
      v77(v19, v73);
      v78 = sub_22F145F20(v74, v76, &v94);

      *(v71 + 4) = v78;
      _os_log_impl(&dword_22F0FC000, v68, v69, "[SharedLibrarySimulationEvent] Initialization failed for event at %s- file does not have shared library diagnostics.", v71, 0xCu);
      v79 = v93;
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x2319033A0](v79, -1, -1);
      MEMORY[0x2319033A0](v71, -1, -1);

      v77(v90, v73);
    }

    else
    {

      v80 = *(v15 + 8);
      v80(a3, v14);
      v80(v19, v14);
    }

    type metadata accessor for PGSharedLibrarySimulationEvent(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v88 = v14;
  v90 = a3;
  v22 = v21;
  v23 = sub_22F740CA0();
  v24 = v92;
  v25 = v23;

  *(v5 + 24) = v25;
  *(v5 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset) = v24;
  v92 = v24;
  result = [v92 libraryScopeProperties];
  if (result)
  {
    v27 = result;
    v28 = [result assetIsPublishedToLibraryScope];

    *(v5 + 40) = v28;
    *(v5 + 32) = [a1 sharedLibraryMode];
    v29 = *(v15 + 16);
    v82 = OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_mdataFilePath;
    v83 = v29;
    v87 = a1;
    v30 = v90;
    v31 = v88;
    v84 = (v15 + 16);
    (v29)(v5 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_mdataFilePath, v90, v88);
    v32 = sub_22F73F450();
    v33 = (v5 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_name);
    *v33 = v32;
    v33[1] = v34;
    v35 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    *(v5 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_dateFormatter) = v35;
    v36 = v35;
    v37 = sub_22F740DF0();
    [v36 setDateFormat_];

    sub_22F16CC5C(v13);
    sub_22F16D08C();
    LOBYTE(v36) = sub_22F73F5D0();
    v38 = v13;
    v40 = v93 + 1;
    v39 = v93[1];
    v41 = v89;
    v39(v10, v89);
    v93 = v40;
    v85 = v39;
    v39(v38, v41);
    if ((v36 & 1) == 0)
    {
      (*(v15 + 8))(v30, v31);

      return v5;
    }

    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v42 = sub_22F740B90();
    __swift_project_value_buffer(v42, qword_27DAD0E10);

    v43 = sub_22F740B70();
    v44 = sub_22F7415E0();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v88;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v94 = v81;
      *v47 = 136315650;
      v48 = v5 + v82;
      LODWORD(v82) = v44;
      v49 = v86;
      (v83)(v86, v48, v46);
      sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v83 = v43;
      v50 = sub_22F742010();
      v51 = v46;
      v53 = v52;
      v84 = *(v15 + 8);
      v84(v49, v51);
      v54 = sub_22F145F20(v50, v53, &v94);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2080;
      sub_22F16CC5C(v38);
      sub_22F16F480(&qword_2810AC6F8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v55 = v89;
      v56 = sub_22F742010();
      v58 = v57;
      v59 = v85;
      v85(v38, v55);
      v60 = sub_22F145F20(v56, v58, &v94);

      *(v47 + 14) = v60;
      *(v47 + 22) = 2080;
      sub_22F16D08C();
      v61 = sub_22F742010();
      v63 = v62;
      v59(v38, v55);
      v64 = sub_22F145F20(v61, v63, &v94);

      *(v47 + 24) = v64;
      v65 = v83;
      _os_log_impl(&dword_22F0FC000, v83, v82, "[SharedLibrarySimulationEventFactory] Could not create event from file %s The timestamp %s was earlier than the last detection date %s!", v47, 0x20u);
      v66 = v81;
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v66, -1, -1);
      MEMORY[0x2319033A0](v47, -1, -1);

      v84(v90, v88);
    }

    else
    {

      (*(v15 + 8))(v90, v46);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F16CC5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v32 - v13;
  v15 = *(v2 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
  v16 = [v15 creationDate];
  if (v16)
  {
    v17 = v16;
    sub_22F73F640();

    v18 = *(v5 + 56);
    v18(v14, 0, 1, v4);
    sub_22F15FCF0(v14);
  }

  else
  {
    v36 = a1;
    v18 = *(v5 + 56);
    v18(v14, 1, 1, v4);
    sub_22F15FCF0(v14);
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v19 = sub_22F740B90();
    __swift_project_value_buffer(v19, qword_27DAD0E10);

    v20 = sub_22F740B70();
    v21 = sub_22F7415E0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = v22;
      v35 = swift_slowAlloc();
      v37 = v35;
      *v22 = 136315138;
      v34 = v21;
      sub_22F73F470();
      sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v23 = sub_22F742010();
      v25 = sub_22F145F20(v23, v24, &v37);

      v26 = v33;
      *(v33 + 1) = v25;
      _os_log_impl(&dword_22F0FC000, v20, v34, "[SharedLibrarySimulationEvent] Found nil creationDate for asset of event at %s.", v26, 0xCu);
      v27 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x2319033A0](v27, -1, -1);
      MEMORY[0x2319033A0](v26, -1, -1);
    }

    a1 = v36;
  }

  v28 = [v15 creationDate];
  if (v28)
  {
    v29 = v28;
    sub_22F73F640();

    v30 = *(v5 + 32);
    v30(v10, v7, v4);
    v18(v10, 0, 1, v4);
    return (v30)(a1, v10, v4);
  }

  else
  {
    v18(v10, 1, 1, v4);
    sub_22F73F650();
    result = (*(v5 + 48))(v10, 1, v4);
    if (result != 1)
    {
      return sub_22F15FCF0(v10);
    }
  }

  return result;
}

void sub_22F16D08C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (*(v2 + 16))
  {
    v3 = sub_22F1229E8(0xD000000000000020, 0x800000022F78F850);
    if (v4)
    {
      sub_22F13A100(*(v2 + 56) + 32 * v3, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(v18 + 16) && (v5 = sub_22F1229E8(0xD00000000000001ELL, 0x800000022F78F920), (v6 & 1) != 0))
        {
          sub_22F13A100(*(v18 + 56) + 32 * v5, v19);

          if (swift_dynamicCast())
          {
            v7 = *(v1 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_dateFormatter);
            v8 = sub_22F740DF0();

            v9 = [v7 dateFromString_];

            if (v9)
            {
              sub_22F73F640();

              return;
            }
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v10 = sub_22F740B90();
  __swift_project_value_buffer(v10, qword_27DAD0E10);

  v11 = sub_22F740B70();
  v12 = sub_22F7415E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v15 = sub_22F742010();
    v17 = sub_22F145F20(v15, v16, v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22F0FC000, v11, v12, "[SharedLibrarySimulationEvent] Could not find last detection date for event at %s.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2319033A0](v14, -1, -1);
    MEMORY[0x2319033A0](v13, -1, -1);
  }

  sub_22F73F550();
}

void sub_22F16D388()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    goto LABEL_21;
  }

  v2 = sub_22F1229E8(0xD000000000000020, 0x800000022F78F850);
  if ((v3 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_22F13A100(*(v1 + 56) + 32 * v2, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!*(v21 + 16))
  {
    goto LABEL_20;
  }

  v4 = sub_22F1229E8(0xD000000000000022, 0x800000022F78F8F0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_22F13A100(*(v21 + 56) + 32 * v4, v22);

  if (swift_dynamicCast())
  {
    v6 = 0.0;
    if (*(v21 + 16))
    {
      v7 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v8)
      {
        sub_22F13A100(*(v21 + 56) + 32 * v7, v22);
        if (swift_dynamicCast())
        {
          v6 = v21;
        }
      }
    }

    if (*(v21 + 16))
    {
      v9 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v10)
      {
        sub_22F13A100(*(v21 + 56) + 32 * v9, v22);
        if (swift_dynamicCast())
        {
          v6 = *&v21;
        }
      }
    }

    if (*(v21 + 16))
    {
      v11 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F790);
      if (v12)
      {
        sub_22F13A100(*(v21 + 56) + 32 * v11, v22);

        if ((swift_dynamicCast() & 1) != 0 && v6 == 1.0)
        {
          return;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v13 = sub_22F740B90();
  __swift_project_value_buffer(v13, qword_27DAD0E10);

  v14 = sub_22F740B70();
  v15 = sub_22F7415E0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[0] = v17;
    *v16 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_22F742010();
    v20 = sub_22F145F20(v18, v19, v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_22F0FC000, v14, v15, "[SharedLibrarySimulationEvent] Could not find sharedLibraryLastDiscoveryLocation distance for event at %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2319033A0](v17, -1, -1);
    MEMORY[0x2319033A0](v16, -1, -1);
  }
}

BOOL sub_22F16D74C()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = sub_22F1229E8(0xD000000000000016, 0x800000022F78F8B0);
    if (v3)
    {
      sub_22F13A100(*(v1 + 56) + 32 * v2, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v17 + 16))
        {
          v4 = sub_22F1229E8(0xD000000000000016, 0x800000022F78F8D0);
          if (v5)
          {
            sub_22F13A100(*(*&v17 + 56) + 32 * v4, v18);
            if (swift_dynamicCast())
            {

              return *&v17 == 1;
            }
          }
        }

        if (*(*&v17 + 16) && (v7 = sub_22F1229E8(0xD000000000000016, 0x800000022F78F8D0), (v8 & 1) != 0))
        {
          sub_22F13A100(*(*&v17 + 56) + 32 * v7, v18);

          if (swift_dynamicCast())
          {
            return v17 == 1.0;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  __swift_project_value_buffer(v9, qword_27DAD0E10);

  v10 = sub_22F740B70();
  v11 = sub_22F7415E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_22F742010();
    v16 = sub_22F145F20(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22F0FC000, v10, v11, "[SharedLibrarySimulationEvent] Could not find shareWhenAtHomeEnabled setting for event at %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319033A0](v13, -1, -1);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  return 1;
}

BOOL sub_22F16DA54()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = sub_22F1229E8(0xD000000000000020, 0x800000022F78F850);
    if (v3)
    {
      sub_22F13A100(*(v1 + 56) + 32 * v2, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v17 + 16))
        {
          v4 = sub_22F1229E8(0xD00000000000002BLL, 0x800000022F78F880);
          if (v5)
          {
            sub_22F13A100(*(*&v17 + 56) + 32 * v4, v18);
            if (swift_dynamicCast())
            {

              return *&v17 == 1;
            }
          }
        }

        if (*(*&v17 + 16) && (v7 = sub_22F1229E8(0xD00000000000002BLL, 0x800000022F78F880), (v8 & 1) != 0))
        {
          sub_22F13A100(*(*&v17 + 56) + 32 * v7, v18);

          if (swift_dynamicCast())
          {
            return v17 == 1.0;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  __swift_project_value_buffer(v9, qword_27DAD0E10);

  v10 = sub_22F740B70();
  v11 = sub_22F7415E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_22F742010();
    v16 = sub_22F145F20(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22F0FC000, v10, v11, "[SharedLibrarySimulationEvent] Could not find sharedLibraryLastLocationAcquiredDuringTrip flag for event at %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319033A0](v13, -1, -1);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  return 0;
}

BOOL sub_22F16DD60()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
    if (v3)
    {
      sub_22F13A100(*(v1 + 56) + 32 * v2, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v22 + 16) && (v4 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F7F0), (v5 & 1) != 0) && (sub_22F13A100(*(*&v22 + 56) + 32 * v4, v23), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0), (swift_dynamicCast() & 1) != 0) || *(*&v22 + 16) && (v6 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F810), (v7 & 1) != 0) && (sub_22F13A100(*(*&v22 + 56) + 32 * v6, v23), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0), (swift_dynamicCast() & 1) != 0))
        {

          v8 = *(*&v22 + 16);

          return v8 != 0;
        }

        if (*(*&v22 + 16))
        {
          v10 = sub_22F1229E8(0xD00000000000001CLL, 0x800000022F78F830);
          if (v11)
          {
            sub_22F13A100(*(*&v22 + 56) + 32 * v10, v23);
            if (swift_dynamicCast())
            {

              return *&v22 > 0;
            }
          }
        }

        if (*(*&v22 + 16) && (v12 = sub_22F1229E8(0xD00000000000001CLL, 0x800000022F78F830), (v13 & 1) != 0))
        {
          sub_22F13A100(*(*&v22 + 56) + 32 * v12, v23);

          if (swift_dynamicCast())
          {
            return v22 > 0.0;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  __swift_project_value_buffer(v14, qword_27DAD0E10);

  v15 = sub_22F740B70();
  v16 = sub_22F7415E0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = sub_22F742010();
    v21 = sub_22F145F20(v19, v20, v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22F0FC000, v15, v16, "[SharedLibrarySimulationEvent] Could not find hasContactInProximity array for event at %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2319033A0](v18, -1, -1);
    MEMORY[0x2319033A0](v17, -1, -1);
  }

  return 0;
}

uint64_t sub_22F16E154()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16) || (v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730), (v3 & 1) == 0) || (sub_22F13A100(*(v1 + 56) + 32 * v2, v18), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_18:
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v9 = sub_22F740B90();
    __swift_project_value_buffer(v9, qword_27DAD0E10);

    v10 = sub_22F740B70();
    v11 = sub_22F7415E0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;
      sub_22F73F470();
      sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v14 = sub_22F742010();
      v16 = sub_22F145F20(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22F0FC000, v10, v11, "[SharedLibrarySimulationEvent] Could not find locationAuthorizationStatus for event at %s.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2319033A0](v13, -1, -1);
      MEMORY[0x2319033A0](v12, -1, -1);
    }

    return 0;
  }

  if (!*(v17 + 16) || (v4 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F7D0), (v5 & 1) == 0) || (sub_22F13A100(*(v17 + 56) + 32 * v4, v18), (swift_dynamicCast() & 1) == 0))
  {
LABEL_10:
    if (*(v17 + 16) && (v7 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F7D0), (v8 & 1) != 0))
    {
      sub_22F13A100(*(v17 + 56) + 32 * v7, v18);

      result = swift_dynamicCast();
      if (result)
      {
        if ((v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (*&v17 > -2147483650.0)
          {
            if (*&v17 < 2147483650.0)
            {
              return *&v17;
            }

            goto LABEL_27;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  result = v17;
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v17 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

BOOL sub_22F16E4B0()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
    if (v3)
    {
      sub_22F13A100(*(v1 + 56) + 32 * v2, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v17 + 16))
        {
          v4 = sub_22F1229E8(0x7374736567677573, 0xEF676E6972616853);
          if (v5)
          {
            sub_22F13A100(*(*&v17 + 56) + 32 * v4, v18);
            if (swift_dynamicCast())
            {

              return *&v17 == 1;
            }
          }
        }

        if (*(*&v17 + 16) && (v7 = sub_22F1229E8(0x7374736567677573, 0xEF676E6972616853), (v8 & 1) != 0))
        {
          sub_22F13A100(*(*&v17 + 56) + 32 * v7, v18);

          if (swift_dynamicCast())
          {
            return v17 == 1.0;
          }
        }

        else
        {
        }
      }
    }
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  __swift_project_value_buffer(v9, qword_27DAD0E10);

  v10 = sub_22F740B70();
  v11 = sub_22F7415E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_22F742010();
    v16 = sub_22F145F20(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22F0FC000, v10, v11, "[SharedLibrarySimulationEvent] Could not find suggestsSharing for event at %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319033A0](v13, -1, -1);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  return 0;
}

BOOL sub_22F16E7C4()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    goto LABEL_16;
  }

  v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
  if ((v3 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_22F13A100(*(v1 + 56) + 32 * v2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(*&v19 + 16))
  {
    goto LABEL_15;
  }

  v4 = sub_22F1229E8(0x4C746E6572727563, 0xEF6E6F697461636FLL);
  if ((v5 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_22F13A100(*(*&v19 + 56) + 32 * v4, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(*&v19 + 16))
  {
    v6 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
    if (v7)
    {
      sub_22F13A100(*(*&v19 + 56) + 32 * v6, v20);
      if (swift_dynamicCast())
      {

        return *&v19 == 1;
      }
    }
  }

  if (!*(*&v19 + 16) || (v9 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770), (v10 & 1) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_22F13A100(*(*&v19 + 56) + 32 * v9, v20);

  if (swift_dynamicCast())
  {
    return v19 == 1.0;
  }

LABEL_16:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v11 = sub_22F740B90();
  __swift_project_value_buffer(v11, qword_27DAD0E10);

  v12 = sub_22F740B70();
  v13 = sub_22F7415E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136315138;
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_22F742010();
    v18 = sub_22F145F20(v16, v17, v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_22F0FC000, v12, v13, "[SharedLibrarySimulationEvent] Could not find currentLocationIsValid for event at %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2319033A0](v15, -1, -1);
    MEMORY[0x2319033A0](v14, -1, -1);
  }

  return 0;
}

char *sub_22F16EB3C()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22F13A100(*(v1 + 56) + 32 * v2, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (!*(v25 + 16))
  {
    goto LABEL_32;
  }

  v4 = sub_22F1229E8(0xD00000000000001CLL, 0x800000022F78F7B0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_22F13A100(*(v25 + 56) + 32 * v4, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(v25 + 16);
  if (!v6)
  {
LABEL_32:

    return MEMORY[0x277D84F90];
  }

  v24 = MEMORY[0x277D84F90];
  v7 = 32;
  do
  {
    v8 = *(v25 + v7);
    v9 = *(v8 + 16);

    v10 = 0.0;
    if (v9)
    {
      v11 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v12)
      {
        sub_22F13A100(*(v8 + 56) + 32 * v11, v26);
        if (swift_dynamicCast())
        {
          v10 = v25;
        }
      }
    }

    if (*(v8 + 16))
    {
      v13 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v14)
      {
        sub_22F13A100(*(v8 + 56) + 32 * v13, v26);
        if (swift_dynamicCast())
        {
          v10 = *&v25;
        }
      }
    }

    if (*(v8 + 16) && (v15 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F790), (v16 & 1) != 0) && (sub_22F13A100(*(v8 + 56) + 32 * v15, v26), (swift_dynamicCast() & 1) != 0) && *(v8 + 16) && (v17 = sub_22F1229E8(0x737569646172, 0xE600000000000000), (v18 & 1) != 0))
    {
      sub_22F13A100(*(v8 + 56) + 32 * v17, v26);

      if ((swift_dynamicCast() & 1) != 0 && v10 == 1.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_22F13E3E8(0, *(v24 + 2) + 1, 1, v24);
        }

        v19 = v24;
        v21 = *(v24 + 2);
        v20 = *(v24 + 3);
        if (v21 >= v20 >> 1)
        {
          v19 = sub_22F13E3E8((v20 > 1), v21 + 1, 1, v24);
        }

        *(v19 + 2) = v21 + 1;
        v24 = v19;
        v22 = &v19[16 * v21];
        *(v22 + 4) = v25;
        *(v22 + 5) = v25;
      }
    }

    else
    {
    }

    v7 += 8;
    --v6;
  }

  while (v6);

  return v24;
}

char *sub_22F16EEC4()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22F13A100(*(v1 + 56) + 32 * v2, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  if (!*(v25 + 16))
  {
    goto LABEL_32;
  }

  v4 = sub_22F1229E8(0xD000000000000018, 0x800000022F78F750);
  if ((v5 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_22F13A100(*(v25 + 56) + 32 * v4, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(v25 + 16);
  if (!v6)
  {
LABEL_32:

    return MEMORY[0x277D84F90];
  }

  v24 = MEMORY[0x277D84F90];
  v7 = 32;
  do
  {
    v8 = *(v25 + v7);
    v9 = *(v8 + 16);

    v10 = 0.0;
    if (v9)
    {
      v11 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v12)
      {
        sub_22F13A100(*(v8 + 56) + 32 * v11, v26);
        if (swift_dynamicCast())
        {
          v10 = v25;
        }
      }
    }

    if (*(v8 + 16))
    {
      v13 = sub_22F1229E8(0xD000000000000011, 0x800000022F78F770);
      if (v14)
      {
        sub_22F13A100(*(v8 + 56) + 32 * v13, v26);
        if (swift_dynamicCast())
        {
          v10 = *&v25;
        }
      }
    }

    if (*(v8 + 16) && (v15 = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F78F790), (v16 & 1) != 0) && (sub_22F13A100(*(v8 + 56) + 32 * v15, v26), (swift_dynamicCast() & 1) != 0) && *(v8 + 16) && (v17 = sub_22F1229E8(0x737569646172, 0xE600000000000000), (v18 & 1) != 0))
    {
      sub_22F13A100(*(v8 + 56) + 32 * v17, v26);

      if ((swift_dynamicCast() & 1) != 0 && v10 == 1.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_22F13E3E8(0, *(v24 + 2) + 1, 1, v24);
        }

        v19 = v24;
        v21 = *(v24 + 2);
        v20 = *(v24 + 3);
        if (v21 >= v20 >> 1)
        {
          v19 = sub_22F13E3E8((v20 > 1), v21 + 1, 1, v24);
        }

        *(v19 + 2) = v21 + 1;
        v24 = v19;
        v22 = &v19[16 * v21];
        *(v22 + 4) = v25;
        *(v22 + 5) = v25;
      }
    }

    else
    {
    }

    v7 += 8;
    --v6;
  }

  while (v6);

  return v24;
}

uint64_t sub_22F16F24C()
{

  v1 = OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_mdataFilePath;
  v2 = sub_22F73F470();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PGSharedLibrarySimulationEvent(uint64_t a1)
{
  result = qword_27DAB1610;
  if (!qword_27DAB1610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F16F380(uint64_t a1)
{
  result = sub_22F73F470();
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

uint64_t sub_22F16F480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static RecentlyUsedRanker.score(song:recentlyUsedSongs:currentDate:)(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if (!*(v11 + 16))
  {
    return swift_endAccess();
  }

  v12 = sub_22F1229E8(v9, v8);
  if ((v13 & 1) == 0)
  {
    return swift_endAccess();
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  result = swift_endAccess();
  v16 = *(v14 + 16);
  if (v16)
  {
    (*(v5 + 16))(v7, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v16 - 1), v4, 1.0);
    sub_22F73F590();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void *sub_22F16F69C(uint64_t isUniquelyReferenced_nonNull_native, void *a2, uint64_t a3)
{
  v66 = a3;
  v55 = type metadata accessor for Song(0);
  v61 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v77 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v54 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v54 - v13);
  v60 = sub_22F73F690();
  v15 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v54 - v18);
  if (qword_2810A9B08 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  v20 = qword_2810B4E08;
  *&v21 = CACurrentMediaTime();
  sub_22F1B560C("Recently Used Ranker", 20, 2u, v21, 0, v20, v76);
  v65 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_recentlyUsedSongs);
  v59 = v19;
  sub_22F73F680();
  v22 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
  v23 = ~v22;
  v24 = *(isUniquelyReferenced_nonNull_native + 56);
  v25 = -v22;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v70 = isUniquelyReferenced_nonNull_native;
  v71 = isUniquelyReferenced_nonNull_native + 56;
  v72 = v23;
  v73 = 0;
  v74 = v26 & v24;
  v75 = 0;
  v64 = OBJC_IVAR___PGMusicCurationRecentlyUsedSongs_mostRecentlyUsedSongIDDateMap;
  v56 = v15 + 16;
  v58 = (v15 + 8);

  v19 = MEMORY[0x277D84F98];
  v63 = isUniquelyReferenced_nonNull_native;
  v62 = v15;
  while (1)
  {
    v27 = v67;
    sub_22F3D4140(v67);
    sub_22F16FDD4(v27, v14);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
    if ((*(*(v28 - 8) + 48))(v14, 1, v28) == 1)
    {
      sub_22F0FF590(v70);
      sub_22F1B2BBC(0);
      sub_22F7416A0();
      (*v58)(v59, v60);

      if (v3)
      {
      }

      goto LABEL_29;
    }

    v68 = *v14;
    sub_22F15CB04(v14 + *(v28 + 48), v9);
    sub_22F15CAA0(v9, v77);
    v29 = *v9;
    v30 = v9[1];
    v31 = v65;
    v32 = v64;
    swift_beginAccess();
    v33 = *(v31 + v32);
    if (*(v33 + 16) && (v34 = sub_22F1229E8(v29, v30), (v35 & 1) != 0))
    {
      v36 = *(*(v33 + 56) + 8 * v34);
      swift_endAccess();
      v37 = *(v36 + 16);
      v38 = 1.0;
      if (v37)
      {
        v39 = v57;
        v40 = v60;
        (*(v15 + 16))(v57, v36 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * (v37 - 1), v60);
        sub_22F73F590();
        v42 = fabs(v41);
        (*(v15 + 8))(v39, v40);
        if (v42 < 5184000.0)
        {
          v38 = v42 / 5184000.0;
        }
      }
    }

    else
    {
      swift_endAccess();
      v38 = 1.0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v19;
    a2 = v19;
    v15 = sub_22F122A14(v77);
    v44 = v19[2];
    v45 = (v43 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_2;
    }

    v47 = v43;
    if (v19[3] < v46)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v69;
      if (v43)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_22F134678();
      isUniquelyReferenced_nonNull_native = v69;
      if (v47)
      {
LABEL_20:
        *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v15) = v38;
        sub_22F15CBD8(v77);
        goto LABEL_24;
      }
    }

LABEL_22:
    *(isUniquelyReferenced_nonNull_native + 8 * (v15 >> 6) + 64) |= 1 << v15;
    a2 = v77;
    sub_22F15CAA0(v77, *(isUniquelyReferenced_nonNull_native + 48) + *(v61 + 72) * v15);
    *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * v15) = v38;
    sub_22F15CBD8(a2);
    v50 = *(isUniquelyReferenced_nonNull_native + 16);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_31;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v52;
LABEL_24:
    sub_22F741680();
    v15 = v62;
    if (v3)
    {

      sub_22F0FF590(v70);
      (*v58)(v59, v60);
      sub_22F15CBD8(v9);
LABEL_29:

      return v19;
    }

    sub_22F15CBD8(v9);
    v19 = isUniquelyReferenced_nonNull_native;
  }

  sub_22F125F5C(v46, isUniquelyReferenced_nonNull_native);
  v48 = sub_22F122A14(v77);
  if ((v47 & 1) == (v49 & 1))
  {
    v15 = v48;
    isUniquelyReferenced_nonNull_native = v69;
    if (v47)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F16FDD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F16FE58()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22F16FE88(unint64_t a1, uint64_t a2)
{

  v44 = a2;
  v45 = sub_22F1515F8(a2);

  v52 = MEMORY[0x277D84F90];
  v43 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_45:
    v4 = sub_22F741A00();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
      v49 = a1 & 0xC000000000000001;
      v47 = a1;
      v46 = v4;
      while (1)
      {
        if (v49)
        {
          v6 = MEMORY[0x2319016F0](v5, a1);
          v7 = __OFADD__(v5, 1);
          v8 = v5 + 1;
          if (v7)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            v31 = v52;
            goto LABEL_47;
          }
        }

        else
        {
          if (v5 >= *(v48 + 16))
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v6 = swift_unknownObjectRetain();
          v7 = __OFADD__(v5, 1);
          v8 = v5 + 1;
          if (v7)
          {
            goto LABEL_37;
          }
        }

        v50 = v8;
        v9 = [v6 weightedKeywords];
        sub_22F170D8C();
        v10 = sub_22F740CA0();

        v11 = 1 << *(v10 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(v10 + 64);
        v14 = (v11 + 63) >> 6;

        v15 = 0;
        v16 = MEMORY[0x277D84F90];
        while (v13)
        {
LABEL_19:
          v18 = (*(v10 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
          v20 = *v18;
          v19 = v18[1];
          v51[0] = v20;
          v51[1] = v19;
          sub_22F160DE4();
          v21 = sub_22F7418B0();
          v22 = *(v21 + 16);
          a1 = *(v16 + 2);
          v23 = a1 + v22;
          if (__OFADD__(a1, v22))
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v24 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v23 > *(v16 + 3) >> 1)
          {
            if (a1 <= v23)
            {
              v26 = a1 + v22;
            }

            else
            {
              v26 = a1;
            }

            v16 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v26, 1, v16);
          }

          v13 &= v13 - 1;
          if (*(v24 + 16))
          {
            if ((*(v16 + 3) >> 1) - *(v16 + 2) < v22)
            {
              goto LABEL_42;
            }

            swift_arrayInitWithCopy();

            if (v22)
            {
              v27 = *(v16 + 2);
              v7 = __OFADD__(v27, v22);
              v28 = v27 + v22;
              if (v7)
              {
                goto LABEL_43;
              }

              *(v16 + 2) = v28;
            }
          }

          else
          {

            if (v22)
            {
              goto LABEL_41;
            }
          }
        }

        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v17 >= v14)
          {
            break;
          }

          v13 = *(v10 + 64 + 8 * v17);
          ++v15;
          if (v13)
          {
            v15 = v17;
            goto LABEL_19;
          }
        }

        if (*(v16 + 2))
        {
          v29 = sub_22F1515F8(v16);

          v30 = sub_22F1ABBB4(v45, v29)[2];

          a1 = v47;
          v5 = v50;
          if (v30)
          {
            sub_22F741BA0();
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {

          swift_unknownObjectRelease();
          a1 = v47;
          v5 = v50;
        }

        if (v5 == v46)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_47:

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v32 = sub_22F740B90();
  __swift_project_value_buffer(v32, qword_2810B4D90);

  v33 = sub_22F740B70();
  v34 = sub_22F7415C0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v51[0] = v36;
    *v35 = 134218498;
    if (v43)
    {
      v37 = sub_22F741A00();
    }

    else
    {
      v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v35 + 4) = v37;

    *(v35 + 12) = 2048;
    if (v31 < 0 || (v31 & 0x4000000000000000) != 0)
    {
      v38 = sub_22F741A00();
    }

    else
    {
      v38 = *(v31 + 16);
    }

    *(v35 + 14) = v38;

    *(v35 + 22) = 2080;
    v39 = MEMORY[0x231900D40](v44, MEMORY[0x277D837D0]);
    v41 = sub_22F145F20(v39, v40, v51);

    *(v35 + 24) = v41;
    _os_log_impl(&dword_22F0FC000, v33, v34, "[FlexSongsFilter keep] Songs before: %ld, Songs after: %ld withAnyMatchingKeywords: %s", v35, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x2319033A0](v36, -1, -1);
    MEMORY[0x2319033A0](v35, -1, -1);
  }

  else
  {
  }

  return v31;
}

uint64_t sub_22F1703D8(unint64_t a1, uint64_t a2)
{

  v46 = a2;
  v47 = sub_22F1515F8(a2);

  v54 = MEMORY[0x277D84F90];
  v45 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_46:
    v4 = sub_22F741A00();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v50 = a1 & 0xFFFFFFFFFFFFFF8;
      v51 = a1 & 0xC000000000000001;
      v49 = a1;
      v48 = v4;
      while (1)
      {
        if (v51)
        {
          v7 = MEMORY[0x2319016F0](v5, a1);
          v8 = __OFADD__(v5, 1);
          v9 = v5 + 1;
          if (v8)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            v33 = v54;
            goto LABEL_48;
          }
        }

        else
        {
          if (v5 >= *(v50 + 16))
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v7 = swift_unknownObjectRetain();
          v8 = __OFADD__(v5, 1);
          v9 = v5 + 1;
          if (v8)
          {
            goto LABEL_38;
          }
        }

        v52 = v9;
        v10 = [v7 weightedKeywords];
        sub_22F170D8C();
        v11 = sub_22F740CA0();

        v12 = 1 << *(v11 + 32);
        if (v12 < 64)
        {
          v13 = ~(-1 << v12);
        }

        else
        {
          v13 = -1;
        }

        v14 = v13 & *(v11 + 64);
        v15 = (v12 + 63) >> 6;

        v16 = 0;
        v17 = MEMORY[0x277D84F90];
        while (v14)
        {
LABEL_19:
          v19 = (*(v11 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
          v21 = *v19;
          v20 = v19[1];
          v53[0] = v21;
          v53[1] = v20;
          sub_22F160DE4();
          v22 = sub_22F7418B0();
          v23 = *(v22 + 16);
          a1 = *(v17 + 2);
          v24 = a1 + v23;
          if (__OFADD__(a1, v23))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v25 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v24 > *(v17 + 3) >> 1)
          {
            if (a1 <= v24)
            {
              v27 = a1 + v23;
            }

            else
            {
              v27 = a1;
            }

            v17 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v27, 1, v17);
          }

          v14 &= v14 - 1;
          if (*(v25 + 16))
          {
            if ((*(v17 + 3) >> 1) - *(v17 + 2) < v23)
            {
              goto LABEL_43;
            }

            swift_arrayInitWithCopy();

            if (v23)
            {
              v28 = *(v17 + 2);
              v8 = __OFADD__(v28, v23);
              v29 = v28 + v23;
              if (v8)
              {
                goto LABEL_44;
              }

              *(v17 + 2) = v29;
            }
          }

          else
          {

            if (v23)
            {
              goto LABEL_42;
            }
          }
        }

        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v18 >= v15)
          {
            break;
          }

          v14 = *(v11 + 64 + 8 * v18);
          ++v16;
          if (v14)
          {
            v16 = v18;
            goto LABEL_19;
          }
        }

        if (*(v17 + 2))
        {
          v30 = sub_22F1515F8(v17);

          sub_22F360C78(v47, v30);
          v32 = v31;

          a1 = v49;
          v5 = v52;
          if (v32)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            sub_22F741BA0();
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
          }

          v6 = v48;
        }

        else
        {

          swift_unknownObjectRelease();
          v6 = v48;
          a1 = v49;
          v5 = v52;
        }

        if (v5 == v6)
        {
          goto LABEL_39;
        }
      }
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_48:

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v34 = sub_22F740B90();
  __swift_project_value_buffer(v34, qword_2810B4D90);

  v35 = sub_22F740B70();
  v36 = sub_22F7415C0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53[0] = v38;
    *v37 = 134218498;
    if (v45)
    {
      v39 = sub_22F741A00();
    }

    else
    {
      v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v39;

    *(v37 + 12) = 2048;
    if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
    {
      v40 = sub_22F741A00();
    }

    else
    {
      v40 = *(v33 + 16);
    }

    *(v37 + 14) = v40;

    *(v37 + 22) = 2080;
    v41 = MEMORY[0x231900D40](v46, MEMORY[0x277D837D0]);
    v43 = sub_22F145F20(v41, v42, v53);

    *(v37 + 24) = v43;
    _os_log_impl(&dword_22F0FC000, v35, v36, "[FlexSongsFilter drop] Songs before: %ld, Songs after: %ld withOnlyMatchingKeywords: %s", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2319033A0](v38, -1, -1);
    MEMORY[0x2319033A0](v37, -1, -1);
  }

  else
  {
  }

  return v33;
}

uint64_t sub_22F170930(unint64_t a1, uint64_t a2)
{
  v3 = sub_22F7406F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  v7 = qword_2810B4DD8;
  *&v8 = CACurrentMediaTime();
  sub_22F1B560C("FlexCelebrationEventsFilter", 27, 2u, v8, 0, v7, v16);
  sub_22F7406E0();
  v9 = sub_22F7406C0();
  v10 = sub_22F7406D0();
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

  v9 = *(v10 + 16);
  if (!v9)
  {

    v11 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v11 = sub_22F10B348(*(v10 + 16), 0);
  v12 = sub_22F11A438(&v15, v11 + 4, v9, v10);
  sub_22F1534EC(v15);
  if (v12 == v9)
  {
LABEL_9:
    v13 = sub_22F16FE88(a1, v11);

    goto LABEL_10;
  }

  __break(1u);
LABEL_7:

  v13 = sub_22F1703D8(a1, v9);

LABEL_10:
  (*(v4 + 8))(v6, v3);
  sub_22F1B2BBC(0);

  return v13;
}

char *sub_22F170B4C(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___PGFlexMusicCurationParameters_features);
  if (v2)
  {
    v21 = a1;
    v3 = *(v2 + OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v6)
    {
LABEL_11:

      sub_22F7401A0();
      sub_22F160DE4();
      v12 = sub_22F7418B0();

      v13 = *(v12 + 16);
      v14 = *(v10 + 2);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_27;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v15 > *(v10 + 3) >> 1)
      {
        if (v14 <= v15)
        {
          v16 = v14 + v13;
        }

        else
        {
          v16 = v14;
        }

        result = sub_22F13E1A8(result, v16, 1, v10);
        v10 = result;
      }

      v6 &= v6 - 1;
      if (*(v12 + 16))
      {
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v13)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_30;
          }

          *(v10 + 2) = v19;
        }
      }

      else
      {

        if (v13)
        {
          goto LABEL_28;
        }
      }
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

        a1 = v21;
        goto LABEL_25;
      }

      v6 = *(v3 + 64 + 8 * v11);
      ++v9;
      if (v6)
      {
        v9 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_25:
    v20 = sub_22F170930(a1, v10);

    return v20;
  }

  return result;
}

unint64_t sub_22F170D8C()
{
  result = qword_2810A8ED0;
  if (!qword_2810A8ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8ED0);
  }

  return result;
}

uint64_t static EventElector.memoryUniqueIdentifiersToElect(graph:electionMode:)(void *a1, uint64_t a2, uint64_t a3)
{

  result = sub_22F171514(a2, a3);
  if (!v3)
  {
    v8 = result;
    v9 = sub_22F17173C(a1, result);
    v10 = sub_22F171DF4(a1, v8);
    return sub_22F144608(v10, v9);
  }

  return result;
}

void sub_22F170F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, void *a8, uint64_t a9)
{
  v29 = a2;
  v15 = objc_allocWithZone(PGGraphMemoryNodeCollection);
  v16 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v17 = [v15 initWithGraph:a6 elementIdentifiers:v16];

  v18 = [v17 elementIdentifiers];
  v19 = [a5 targetsForSources_];

  v32 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a6 elementIdentifiers:v19];
  v20 = [v32 anyNode];
  if (v20)
  {
    v31 = v20;
    if (a7 == 1)
    {
    }

    else
    {
      v22 = sub_22F742040();

      if ((v22 & 1) == 0)
      {
        if (a7)
        {
          v27 = sub_22F742040();

          if ((v27 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        if ([v31 isPartOfTrip] & 1) != 0 || (objc_msgSend(v31, sel_happensAtFrequentLocation))
        {
          goto LABEL_28;
        }
      }
    }

    [a8 neighborScoreWithMomentNode_];
    v24 = [objc_opt_self() breakoutOfRoutineTypeWithNeighborScore_];
    if (a7)
    {
      v25 = sub_22F742040();

      if (v25)
      {
        goto LABEL_16;
      }

      if (a7 == 2)
      {
        v26 = sub_22F742040();

        if ((v26 & 1) != 0 && v24 == 2)
        {
          goto LABEL_17;
        }

LABEL_20:
        v28 = sub_22F742040();

        if (v28)
        {
          goto LABEL_21;
        }

LABEL_28:

        v21 = v31;
        goto LABEL_29;
      }
    }

LABEL_16:
    if (v24 == 2)
    {
      goto LABEL_17;
    }

    if (a7 == 1)
    {

LABEL_21:
      if (v24 != 1 || ([v31 isPartOfTrip] & 1) != 0 || (objc_msgSend(v31, sel_happensAtFrequentLocation) & 1) != 0)
      {
        goto LABEL_28;
      }

LABEL_17:
      swift_beginAccess();

      sub_22F10BBDC(&v33, v30, a3);
      swift_endAccess();

      return;
    }

    goto LABEL_20;
  }

  v21 = v32;
LABEL_29:
}

uint64_t sub_22F1713B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = sub_22F740E20();
  v9 = v8;

  v6(a2, v7, v9, a4);
}

id EventElector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventElector.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventElector();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EventElector.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EventElector();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22F171514(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2 == 0xE000000000000000 || (sub_22F742040() & 1) != 0)
  {
    goto LABEL_17;
  }

  if (sub_22F740E20() == a1 && v4 == a2)
  {
    goto LABEL_16;
  }

  v6 = sub_22F742040();

  if (v6)
  {
    goto LABEL_17;
  }

  if (sub_22F740E20() == a1 && v7 == a2)
  {
    goto LABEL_16;
  }

  v9 = sub_22F742040();

  if (v9)
  {
    goto LABEL_17;
  }

  if (sub_22F740E20() == a1 && v10 == a2)
  {
LABEL_16:
  }

  else
  {
    v13 = sub_22F742040();

    if ((v13 & 1) == 0)
    {
      sub_22F741B00();

      MEMORY[0x231900B10](a1, a2);

      MEMORY[0x231900B10](0xD000000000000016, 0x800000022F78F9D0);
      sub_22F172030();
      swift_allocError();
      *v14 = 0xD000000000000011;
      v14[1] = 0x800000022F78F9B0;
      return swift_willThrow();
    }
  }

LABEL_17:
  v11 = sub_22F741E30();

  if (v11 == 2)
  {
    return 2;
  }

  else
  {
    return v11 == 1;
  }
}

uint64_t sub_22F17173C(uint64_t a1, unsigned __int8 a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84FA0];
  v5 = [objc_opt_self() memoryNodesOfCategory:1 inGraph:a1];
  if (a2 > 1u)
  {

    goto LABEL_6;
  }

  v6 = sub_22F742040();

  if (v6)
  {
LABEL_6:
    v21 = [v5 uniqueMemoryIdentifiers];
    v22 = sub_22F741420();

    return v22;
  }

  v24 = [objc_allocWithZone(PGNeighborScoreComputer) init];
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 momentOfMemory];
  v10 = [objc_msgSend(v8 graph)];
  swift_unknownObjectRelease();
  v11 = [v10 concreteGraph];

  if (v11)
  {
    v12 = [v8 elementIdentifiers];
    v13 = [v11 adjacencyWithSources:v12 relation:v9];

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    *(v14 + 32) = a2;
    v15 = v24;
    *(v14 + 40) = v24;
    *(v14 + 48) = v4;
    aBlock[4] = sub_22F171FE8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F1713B0;
    aBlock[3] = &block_descriptor_1;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    swift_unknownObjectRetain();
    v18 = v15;

    [v8 enumerateMemoryUniqueIdentifierUsingBlock_];
    _Block_release(v16);

    swift_unknownObjectRelease();
    swift_beginAccess();
    v19 = *(v4 + 16);

    return v19;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_22F171B10(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F772AE0;
  *(v2 + 32) = sub_22F740E20();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_22F740E20();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_22F740E20();
  *(v2 + 72) = v5;
  *(v2 + 80) = sub_22F740E20();
  *(v2 + 88) = v6;
  *(v2 + 96) = sub_22F740E20();
  *(v2 + 104) = v7;
  *(v2 + 112) = sub_22F740E20();
  *(v2 + 120) = v8;
  *(v2 + 128) = sub_22F740E20();
  *(v2 + 136) = v9;
  *(v2 + 144) = sub_22F740E20();
  *(v2 + 152) = v10;
  *(v2 + 160) = sub_22F740E20();
  *(v2 + 168) = v11;
  *(v2 + 176) = sub_22F740E20();
  *(v2 + 184) = v12;
  *(v2 + 192) = sub_22F740E20();
  *(v2 + 200) = v13;
  *(v2 + 208) = sub_22F740E20();
  *(v2 + 216) = v14;
  if (a1 == 1)
  {

LABEL_4:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F770E00;
    *(inited + 32) = sub_22F740E20();
    *(inited + 40) = v17;
    *(inited + 48) = sub_22F740E20();
    *(inited + 56) = v18;
    *(inited + 64) = sub_22F740E20();
    *(inited + 72) = v19;
    *(inited + 80) = sub_22F740E20();
    *(inited + 88) = v20;
    *(inited + 96) = sub_22F740E20();
    *(inited + 104) = v21;
    *(inited + 112) = sub_22F740E20();
    *(inited + 120) = v22;
    *(inited + 128) = sub_22F740E20();
    *(inited + 136) = v23;
    *(inited + 144) = sub_22F740E20();
    *(inited + 152) = v24;
    *(inited + 160) = sub_22F740E20();
    *(inited + 168) = v25;
    *(inited + 176) = sub_22F740E20();
    *(inited + 184) = v26;
    sub_22F144A14(inited);
    return v2;
  }

  v15 = sub_22F742040();

  if (v15)
  {
    goto LABEL_4;
  }

  return v2;
}

uint64_t sub_22F171DF4(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {

    goto LABEL_5;
  }

  v4 = sub_22F742040();

  if (v4)
  {
LABEL_5:
    v7 = [a1 meaningNodes];
    goto LABEL_6;
  }

  sub_22F171B10(a2);
  v5 = objc_opt_self();
  v6 = sub_22F741160();

  v7 = [v5 meaningNodesWithMeaningLabels:v6 inGraph:a1];

LABEL_6:
  v8 = [v7 featureNodeCollection];
  v9 = [v8 memoryNodes];
  v10 = [v9 subsetWithMemoryCategory_];

  v11 = [v10 uniqueMemoryIdentifiers];
  v12 = sub_22F741420();

  return v12;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F172030()
{
  result = qword_27DAB1638;
  if (!qword_27DAB1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1638);
  }

  return result;
}