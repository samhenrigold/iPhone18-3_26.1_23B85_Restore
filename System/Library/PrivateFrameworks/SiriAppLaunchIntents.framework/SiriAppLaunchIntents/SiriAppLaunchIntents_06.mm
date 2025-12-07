unint64_t sub_266146D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266146BF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_266146DB8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_266146C4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s7AppVerbOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7AppVerbOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266146F4C()
{
  result = qword_2814B3EC8;
  if (!qword_2814B3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EC8);
  }

  return result;
}

uint64_t sub_266146FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26614713C();
  v5 = sub_266147190();
  v6 = sub_2661471E4();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266147028()
{
  result = qword_28005C800;
  if (!qword_28005C800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C808, &qword_266193200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C800);
  }

  return result;
}

unint64_t sub_266147090()
{
  result = qword_2814B3ED8;
  if (!qword_2814B3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3ED8);
  }

  return result;
}

unint64_t sub_2661470E8()
{
  result = qword_2814B3EC0;
  if (!qword_2814B3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EC0);
  }

  return result;
}

unint64_t sub_26614713C()
{
  result = qword_2814B3ED0;
  if (!qword_2814B3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3ED0);
  }

  return result;
}

unint64_t sub_266147190()
{
  result = qword_2814B3EB0;
  if (!qword_2814B3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EB0);
  }

  return result;
}

unint64_t sub_2661471E4()
{
  result = qword_2814B3EB8;
  if (!qword_2814B3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EB8);
  }

  return result;
}

uint64_t sub_266147238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C810, &unk_266193310);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B40 = result;
  return result;
}

unint64_t sub_2661472A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618CEC0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266147300(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

unint64_t sub_266147364@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2661472A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266147394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266147300(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *_s22ConfirmationStateValueOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2661474A0()
{
  result = qword_2814B3DA8;
  if (!qword_2814B3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3DA8);
  }

  return result;
}

uint64_t sub_266147504(uint64_t a1, uint64_t a2)
{
  v4 = sub_266147690();
  v5 = sub_2661476E4();
  v6 = sub_266147738();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_26614757C()
{
  result = qword_28005C818;
  if (!qword_28005C818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C820, &qword_266193368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C818);
  }

  return result;
}

unint64_t sub_2661475E4()
{
  result = qword_28005C828;
  if (!qword_28005C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C828);
  }

  return result;
}

unint64_t sub_26614763C()
{
  result = qword_2814B3DA0;
  if (!qword_2814B3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3DA0);
  }

  return result;
}

unint64_t sub_266147690()
{
  result = qword_28005C830;
  if (!qword_28005C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C830);
  }

  return result;
}

unint64_t sub_2661476E4()
{
  result = qword_28005C838;
  if (!qword_28005C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C838);
  }

  return result;
}

unint64_t sub_266147738()
{
  result = qword_28005C840;
  if (!qword_28005C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C840);
  }

  return result;
}

BOOL sub_26614778C()
{
  if (qword_2814B3DB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent(0);
  sub_2660C98B4();
  sub_26618BDA0();
  if (v26)
  {

    return 1;
  }

  else
  {
    if (qword_2814B3D38 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_1_15(qword_2814B4AF0, v0, v1, v2, v3, v4, v5, v6, v22);
    if (qword_2814B3DD0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_1_15(qword_2814B4B50, v7, v8, v9, v10, v11, v12, v13, v23);
    if (qword_2814B3DB0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_1_15(qword_2814B4B30, v14, v15, v16, v17, v18, v19, v20, v24);
    return v25 != 2;
  }
}

uint64_t sub_2661478FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17(19, v1);
  qword_2814B4B00 = result;
  return result;
}

uint64_t sub_266147950()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17(27, v1);
  qword_2814B4B38 = result;
  return result;
}

uint64_t sub_2661479A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17(25, v1);
  qword_2814B4B50 = result;
  return result;
}

uint64_t sub_2661479F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17(18, v1);
  qword_2814B4AF0 = result;
  return result;
}

uint64_t sub_266147A4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C848, &qword_266193470);
  OUTLINED_FUNCTION_41_0(v0);
  OUTLINED_FUNCTION_0_17();
  result = OUTLINED_FUNCTION_3_17(28, v1);
  qword_2814B4B30 = result;
  return result;
}

_BYTE *_s10DeviceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266147B80()
{
  result = qword_2814B3E98;
  if (!qword_2814B3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3E98);
  }

  return result;
}

uint64_t sub_266147BD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618CEC0();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266147C34(char a1)
{
  if (a1)
  {
    return 0x69736976656C6574;
  }

  else
  {
    return 0x76745F656C707061;
  }
}

uint64_t sub_266147C94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266147BD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266147CC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266147C34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266147D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_266147E8C();
  v5 = sub_266147EE0();
  v6 = sub_266147F34();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266147D78()
{
  result = qword_28005C850;
  if (!qword_28005C850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C858, &qword_2661934B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C850);
  }

  return result;
}

unint64_t sub_266147DE0()
{
  result = qword_28005C860;
  if (!qword_28005C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C860);
  }

  return result;
}

unint64_t sub_266147E38()
{
  result = qword_2814B3E90;
  if (!qword_2814B3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3E90);
  }

  return result;
}

unint64_t sub_266147E8C()
{
  result = qword_28005C868;
  if (!qword_28005C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C868);
  }

  return result;
}

unint64_t sub_266147EE0()
{
  result = qword_28005C870;
  if (!qword_28005C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C870);
  }

  return result;
}

unint64_t sub_266147F34()
{
  result = qword_28005C878;
  if (!qword_28005C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C878);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26618BDA0();
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1, uint64_t a2)
{

  return sub_26618BB50();
}

uint64_t sub_266147FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B70 = result;
  return result;
}

uint64_t sub_266148030()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C880, &qword_2661935C0);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B78 = result;
  return result;
}

_BYTE *_s15InAppSearchVerbOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266148150()
{
  result = qword_2814B3F08;
  if (!qword_2814B3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F08);
  }

  return result;
}

BOOL sub_2661481A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618CEC0();

  return v2 != 0;
}

BOOL sub_266148218@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2661481A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266148274(uint64_t a1, uint64_t a2)
{
  v4 = sub_266148400();
  v5 = sub_266148454();
  v6 = sub_2661484A8();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_2661482EC()
{
  result = qword_28005C888;
  if (!qword_28005C888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C890, &qword_266193608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C888);
  }

  return result;
}

unint64_t sub_266148354()
{
  result = qword_28005C898;
  if (!qword_28005C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C898);
  }

  return result;
}

unint64_t sub_2661483AC()
{
  result = qword_2814B3F00;
  if (!qword_2814B3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3F00);
  }

  return result;
}

unint64_t sub_266148400()
{
  result = qword_28005C8A0;
  if (!qword_28005C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C8A0);
  }

  return result;
}

unint64_t sub_266148454()
{
  result = qword_28005C8A8;
  if (!qword_28005C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C8A8);
  }

  return result;
}

unint64_t sub_2661484A8()
{
  result = qword_28005C8B0;
  if (!qword_28005C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C8B0);
  }

  return result;
}

uint64_t sub_2661484FC(uint64_t a1)
{
  sub_26618B430();
  OUTLINED_FUNCTION_21_11();
  sub_26618B410();
  sub_26618B420();
  sub_26618B3E0();
  sub_26614B998();
  return sub_26618B3C0();
}

void sub_266148554()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v107 = v2;
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v111 = v4;
  v112 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_1();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v101 - v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_16();
  v108 = v12;
  OUTLINED_FUNCTION_18_2();
  v114 = sub_26618BA20();
  OUTLINED_FUNCTION_2_2();
  v116 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  v103 = v15 - v16;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v17);
  v109 = &v101 - v18;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_16();
  v115 = v20;
  OUTLINED_FUNCTION_18_2();
  v118 = sub_26618B280();
  OUTLINED_FUNCTION_2_2();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_6();
  v119 = v24;
  OUTLINED_FUNCTION_18_2();
  sub_26618B700();
  OUTLINED_FUNCTION_2_2();
  v105 = v26;
  v106 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_6();
  v113 = v27;
  v121[0] = MEMORY[0x277D84F90];
  v28 = sub_2661046B8();
  v29 = 0;
  v30 = 0;
  v31 = v1 & 0xC000000000000001;
  v32 = v1;
  v33 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v28 != v29)
  {
    if (v31)
    {
      v34 = MEMORY[0x26677C150](v29, v32);
    }

    else
    {
      if (v29 >= *(v33 + 16))
      {
        goto LABEL_35;
      }

      v34 = *(v32 + 8 * v29 + 32);
    }

    v35 = v34;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v120[1] = v34;
    sub_26614AF9C(v120);

    sub_266167094(v120[0]);
    ++v29;
  }

  v30 = v121[0];
  if (qword_2814B3DC8 == -1)
  {
    goto LABEL_10;
  }

LABEL_36:
  OUTLINED_FUNCTION_5_14(&qword_2814B3DC8);
LABEL_10:
  sub_26618BB60();
  sub_26618B6E0();
  v36 = sub_2661046B8();
  v104 = v11;
  v110 = v7;
  if (v36)
  {
    v37 = v36;
    v121[0] = MEMORY[0x277D84F90];
    sub_26612A520(0, v36 & ~(v36 >> 63), 0);
    if (v37 < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v102 = v30;
    v38 = 0;
    v39 = v121[0];
    v117 = (v22 + 32);
    do
    {
      if (v31)
      {
        v40 = MEMORY[0x26677C150](v38, v32);
      }

      else
      {
        v40 = *(v32 + 8 * v38 + 32);
      }

      v41 = v40;
      sub_266136804();
      if (qword_2814B3D48 != -1)
      {
        swift_once();
      }

      sub_26618BB60();
      v42 = v119;
      sub_26618B250();

      v121[0] = v39;
      v7 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v7 >= v43 >> 1)
      {
        v44 = OUTLINED_FUNCTION_38_2(v43);
        sub_26612A520(v44, v7 + 1, 1);
        v42 = v119;
        v39 = v121[0];
      }

      ++v38;
      *(v39 + 16) = v7 + 1;
      (*(v22 + 32))(v39 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v7, v42, v118);
    }

    while (v37 != v38);
    v30 = v102;
  }

  v45 = v113;
  v46 = sub_26618B6F0();

  (*(v105 + 8))(v45, v106);
  v121[0] = v30;
  sub_266167094(v46);
  v47 = v121[0];
  v48 = v115;
  v49 = sub_26614B42C(v115, v32);
  sub_26614A74C(v49);

  sub_26618B3A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D0, &qword_2661937B0);
  OUTLINED_FUNCTION_19_9();
  v52 = v51 & ~v50;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26618E190;
  v54 = v48;
  v55 = v114;
  v106 = *(v7 + 16);
  v106(v53 + v52, v54, v114);
  sub_26618B3C0();

  v119 = v49;
  sub_26618B390();
  v56 = v112;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v57 = __swift_project_value_buffer(v56, qword_2814B4A98);
  v58 = v111;
  v59 = v111 + 16;
  v60 = v108;
  v117 = *(v111 + 16);
  v118 = v57;
  v117(v108);

  v61 = sub_26618C690();
  v62 = sub_26618CAA0();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = OUTLINED_FUNCTION_49_0();
    v64 = OUTLINED_FUNCTION_45_1();
    v121[0] = v64;
    *v63 = 136315138;
    v65 = sub_2660FFFD4(v47);
    v67 = v66;

    v68 = v65;
    v56 = v112;
    v69 = sub_266103A98(v68, v67, v121);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_2660B7000, v61, v62, "DisplayHints for device disambiguation: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v55 = v114;
    OUTLINED_FUNCTION_7_2();
    v58 = v111;
    OUTLINED_FUNCTION_7_2();
  }

  else
  {
  }

  v113 = *(v58 + 8);
  v113(v60, v56);
  v70 = v104;
  v108 = v59;
  (v117)(v104, v118, v56);
  v71 = v109;
  v72 = v106;
  v106(v109, v115, v55);
  v73 = sub_26618C690();
  v74 = sub_26618CAA0();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_49_0();
    v76 = OUTLINED_FUNCTION_45_1();
    v121[0] = v76;
    *v75 = 136315138;
    v77 = v103;
    v72(v103, v71, v55);
    v78 = sub_2661459FC(v77);
    v79 = v55;
    v80 = v78;
    v82 = v81;
    v83 = *(v116 + 8);
    v83(v71, v79);
    v84 = sub_266103A98(v80, v82, v121);
    v56 = v112;

    *(v75 + 4) = v84;
    OUTLINED_FUNCTION_20_12(&dword_2660B7000, v85, v86, "Sending systemDialogActs: %s");
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  else
  {

    v83 = *(v116 + 8);
    v83(v71, v55);
  }

  v87 = v70;
  v88 = v113;
  v113(v87, v56);
  v89 = v110;
  (v117)(v110, v118, v56);

  v90 = sub_26618C690();
  v91 = sub_26618CAA0();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = OUTLINED_FUNCTION_49_0();
    v93 = OUTLINED_FUNCTION_45_1();
    v121[0] = v93;
    *v92 = 136315138;
    v94 = sub_2660FFFEC(v119);
    v118 = v83;
    v95 = v94;
    v97 = v96;

    v98 = sub_266103A98(v95, v97, v121);

    *(v92 + 4) = v98;
    OUTLINED_FUNCTION_22_7(&dword_2660B7000, v99, v100, "Donating rrEntitities: %s");
    __swift_destroy_boxed_opaque_existential_1(v93);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v88(v110, v56);
    v118(v115, v114);
  }

  else
  {

    v88(v89, v56);
    v83(v115, v114);
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_266148EFC()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26618AA00();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  if (v10)
  {
    v23 = v3;
    v26 = MEMORY[0x277D84F90];
    sub_26618CE00();
    type metadata accessor for Application();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v24 = v13;
    v25 = ObjCClassFromMetadata;
    v14 = v1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v24(v9, v14, v4);
      v17 = objc_allocWithZone(v25);
      v18 = sub_2661038FC(0, 0, 0, 0xE000000000000000);
      v19 = sub_26618A9F0();
      sub_266124AC0(v19, v20, v18, &selRef_setAppId_);
      v21 = sub_26618A9D0();
      sub_266124AC0(v21, v22, v18, &selRef_setName_);
      (*v16)(v9, v4);
      sub_26618CDE0();
      sub_26618CE10();
      sub_26618CE20();
      sub_26618CDF0();
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  sub_26618B430();
  sub_26614AC6C();

  sub_26618B390();
  OUTLINED_FUNCTION_7_1();
}

void sub_2661490E0()
{
  OUTLINED_FUNCTION_6_0();
  v122 = v0;
  v2 = v1;
  v119[2] = v3;
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v127 = v4;
  v128 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_1();
  v119[0] = v6 - v7;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v8);
  v124 = v119 - v9;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v10);
  v12 = v119 - v11;
  v119[1] = sub_26618B440();
  OUTLINED_FUNCTION_2_2();
  v123 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_6();
  v126 = v15;
  OUTLINED_FUNCTION_18_2();
  v132 = sub_26618B280();
  OUTLINED_FUNCTION_2_2();
  v134 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_6();
  v133 = v18;
  OUTLINED_FUNCTION_18_2();
  v121 = sub_26618B700();
  OUTLINED_FUNCTION_2_2();
  v120 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_6();
  v125 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D8, &qword_2661937B8);
  OUTLINED_FUNCTION_3_0(v22);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v23);
  v25 = v119 - v24;
  v26 = sub_26618B220();
  OUTLINED_FUNCTION_2_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_1();
  v135 = (v30 - v31);
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_16();
  v130 = v33;
  v34 = sub_2661046B8();
  v35 = 0;
  v137 = v2 & 0xC000000000000001;
  v138 = v2;
  v36 = v2 & 0xFFFFFFFFFFFFFF8;
  v37 = v34;
  v131 = v28;
  v38 = (v28 + 32);
  v136 = MEMORY[0x277D84F90];
  v129 = v36;
  while (v37 != v35)
  {
    if (v137)
    {
      v39 = MEMORY[0x26677C150](v35, v138);
    }

    else
    {
      if (v35 >= *(v36 + 16))
      {
        goto LABEL_45;
      }

      v39 = v138[v35 + 4];
    }

    v40 = v39;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v140[0] = v39;
    sub_26614A24C(v140, v25);

    if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
    {
      sub_2660C8040(v25, &qword_28005C8D8, &qword_2661937B8);
    }

    else
    {
      v41 = v37;
      v42 = v12;
      v43 = *v38;
      v44 = v130;
      (*v38)(v130, v25, v26);
      v43(v135, v44, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_17_10();
        sub_266129840(v50, v51, v52, v53);
        v136 = v54;
      }

      v46 = v136[2];
      v45 = v136[3];
      if (v46 >= v45 >> 1)
      {
        v55 = OUTLINED_FUNCTION_38_2(v45);
        sub_266129840(v55, v46 + 1, 1, v136);
        v136 = v56;
      }

      v136[2] = v46 + 1;
      OUTLINED_FUNCTION_9_13();
      (v43)(v48 + v47 + *(v49 + 72) * v46);
      v12 = v42;
      v37 = v41;
      v36 = v129;
    }

    ++v35;
  }

  if (qword_2814B3DC8 == -1)
  {
    goto LABEL_17;
  }

LABEL_46:
  OUTLINED_FUNCTION_5_14(&qword_2814B3DC8);
LABEL_17:
  sub_26618BB60();
  sub_26618B6E0();
  v57 = sub_2661046B8();
  v58 = v127;
  v59 = v128;
  if (v57)
  {
    v60 = v57;
    v140[0] = MEMORY[0x277D84F90];
    sub_26612A520(0, v57 & ~(v57 >> 63), 0);
    if (v60 < 0)
    {
      __break(1u);
      return;
    }

    v135 = v12;
    v61 = 0;
    v62 = v140[0];
    do
    {
      if (v137)
      {
        v63 = MEMORY[0x26677C150](v61, v138);
      }

      else
      {
        v63 = v138[v61 + 4];
      }

      v64 = v63;
      sub_2660C9D30(v63);
      if (qword_2814B3D90 != -1)
      {
        swift_once();
      }

      sub_26618BB60();
      v65 = v133;
      sub_26618B250();

      v140[0] = v62;
      v67 = v62[2];
      v66 = v62[3];
      if (v67 >= v66 >> 1)
      {
        v70 = OUTLINED_FUNCTION_38_2(v66);
        sub_26612A520(v70, v67 + 1, 1);
        v65 = v133;
        v62 = v140[0];
      }

      ++v61;
      v62[2] = v67 + 1;
      OUTLINED_FUNCTION_9_13();
      (*(v69 + 32))(v62 + v68 + *(v69 + 72) * v67, v65, v132);
    }

    while (v60 != v61);
    v58 = v127;
    v59 = v128;
    v12 = v135;
  }

  v71 = v125;
  v72 = sub_26618B6F0();

  (*(v120 + 8))(v71, v121);
  v140[0] = v136;
  v73 = sub_266167094(v72);
  v74 = v140[0];
  sub_26614A74C(v73);

  sub_26618B3A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D0, &qword_2661937B0);
  v75 = *(sub_26618BA20() - 8);
  v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_26618E190;
  sub_26614A7C0(v138, v122 & 1, v77 + v76);
  sub_26618B3C0();
  sub_26614AC6C();
  sub_26618B390();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v78 = __swift_project_value_buffer(v58, qword_2814B4A98);
  v79 = *(v59 + 16);
  v137 = v78;
  v138 = v79;
  (v79)(v12);

  v80 = sub_26618C690();
  v81 = sub_26618CAA0();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = OUTLINED_FUNCTION_49_0();
    v83 = OUTLINED_FUNCTION_45_1();
    v140[0] = v83;
    *v82 = 136315138;
    v84 = v12;
    v85 = sub_2660FFFD4(v74);
    v87 = v86;

    v88 = sub_266103A98(v85, v87, v140);

    *(v82 + 4) = v88;
    _os_log_impl(&dword_2660B7000, v80, v81, "DisplayHints for app disambiguation: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    v58 = v127;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v89 = *(v59 + 8);
    v89(v84, v58);
  }

  else
  {

    v89 = *(v59 + 8);
    v89(v12, v58);
  }

  v90 = v124;
  v91 = v137;
  (v138)(v124, v137, v58);
  v92 = sub_26618C690();
  v93 = sub_26618CAA0();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = OUTLINED_FUNCTION_49_0();
    v95 = OUTLINED_FUNCTION_45_1();
    v139 = v95;
    *v94 = 136315138;
    v96 = v126;
    swift_beginAccess();
    v97 = sub_26618B3B0();
    swift_endAccess();
    v140[0] = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8E0, &unk_2661937C0);
    v98 = sub_26618C8D0();
    v100 = sub_266103A98(v98, v99, &v139);

    *(v94 + 4) = v100;
    _os_log_impl(&dword_2660B7000, v92, v93, "Sending systemDialogActs: %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v95);
    v58 = v127;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v89(v124, v58);
  }

  else
  {

    v89(v90, v58);
    v96 = v126;
  }

  swift_beginAccess();
  v101 = sub_26618B380();
  if (v101)
  {
    v102 = v101;
    swift_endAccess();
    v103 = v119[0];
    (v138)(v119[0], v91, v58);
    v104 = v103;
    v91 = sub_26618C690();
    v105 = sub_26618CAA0();
    if (os_log_type_enabled(v91, v105))
    {
      v106 = OUTLINED_FUNCTION_49_0();
      v107 = OUTLINED_FUNCTION_45_1();
      v140[0] = v107;
      *v106 = 136315138;
      v108 = v58;
      v109 = sub_2660FFFEC(v102);
      v111 = v110;

      v112 = sub_266103A98(v109, v111, v140);

      *(v106 + 4) = v112;
      OUTLINED_FUNCTION_20_12(&dword_2660B7000, v113, v114, "Donating rrEntitities: %s");
      __swift_destroy_boxed_opaque_existential_1(v107);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      v115 = v104;
      v116 = v108;
    }

    else
    {

      v115 = v103;
      v116 = v58;
    }

    v89(v115, v116);
    v117 = OUTLINED_FUNCTION_14_13();
    v96 = v126;
  }

  else
  {
    swift_endAccess();
    v117 = OUTLINED_FUNCTION_14_13();
  }

  v118 = v123;
  (*(v123 + 16))(v117, v96, v91);
  (*(v118 + 8))(v96, v91);
  OUTLINED_FUNCTION_7_1();
}

void sub_266149C64()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v59 = v2;
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v55 = v4;
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v54 = v5;
  OUTLINED_FUNCTION_18_2();
  sub_26618BA20();
  OUTLINED_FUNCTION_2_2();
  v52 = v7;
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_6();
  v50 = v8;
  OUTLINED_FUNCTION_18_2();
  v51 = sub_26618B9B0();
  OUTLINED_FUNCTION_2_2();
  v49 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_16();
  v48 = v15;
  OUTLINED_FUNCTION_18_2();
  v58 = sub_26618B8A0();
  OUTLINED_FUNCTION_2_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_24_1();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v47 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_16();
  v57 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  OUTLINED_FUNCTION_3_0(v27);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v47 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26618F7E0;
  *(v31 + 32) = v1;
  v32 = sub_26618BD60();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v32);

  MEMORY[0x26677B0A0](v31, v30);

  sub_2660C8040(v30, &qword_28005C8C8, &qword_2661937A8);
  sub_26618BAB0();
  v33 = v57;
  v34 = v58;
  (*(v17 + 32))(v57, v25, v58);
  v35 = v48;
  sub_26618B9A0();
  (*(v17 + 16))(v21, v33, v34);
  sub_26618B990();
  v36 = v50;
  sub_26618BA10();
  v37 = v49;
  v38 = v51;
  (*(v49 + 16))(v13, v35, v51);
  sub_26618BA00();
  v39 = v59;
  sub_26618B430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D0, &qword_2661937B0);
  OUTLINED_FUNCTION_19_9();
  v42 = v41 & ~v40;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_26618E190;
  v44 = v43 + v42;
  v45 = v53;
  (*(v13 + 16))(v44, v36, v53);
  sub_26618B3C0();
  OUTLINED_FUNCTION_21_11();

  (*(v13 + 8))(v36, v45);
  (*(v37 + 8))(v35, v38);
  (*(v17 + 8))(v57, v58);
  v46 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v46);
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26614A24C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_26618C6B0();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8B8, qword_266193710);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_26618B280();
  v43 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = *a1;
  sub_2660C9D30(v18);
  if (v19)
  {
    sub_2660C9D24(v18);
    if (v20)
    {
      v45 = v20;
      if (qword_2814B3D90 != -1)
      {
        swift_once();
      }

      sub_26618BB60();
      sub_26618B250();
      if (qword_2814B3D88 != -1)
      {
        swift_once();
      }

      sub_26618BB60();
      sub_26618B250();
      v21 = v43;
      v22 = *(v43 + 16);
      v22(v8, v17, v9);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      v22(v12, v15, v9);
      v23 = v46;
      sub_26618B200();
      v24 = *(v21 + 8);
      v24(v15, v9);
      v24(v17, v9);
      v25 = 0;
      goto LABEL_15;
    }
  }

  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v26 = v45;
  v27 = __swift_project_value_buffer(v45, qword_2814B4A98);
  v28 = v44;
  (*(v44 + 16))(v5, v27, v26);
  v29 = v18;
  v30 = sub_26618C690();
  v31 = sub_26618CAA0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136315138;
    v34 = v29;
    v35 = [v34 description];
    v36 = sub_26618C8B0();
    v38 = v37;

    v39 = sub_266103A98(v36, v38, &v47);

    *(v32 + 4) = v39;
    _os_log_impl(&dword_2660B7000, v30, v31, "Unable to add app to display hints: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x26677CC30](v33, -1, -1);
    MEMORY[0x26677CC30](v32, -1, -1);

    (*(v44 + 8))(v5, v45);
  }

  else
  {

    (*(v28 + 8))(v5, v26);
  }

  v25 = 1;
  v23 = v46;
LABEL_15:
  v40 = sub_26618B220();
  return __swift_storeEnumTagSinglePayload(v23, v25, 1, v40);
}

uint64_t sub_26614A74C(uint64_t a1)
{
  sub_26618B430();
  sub_26618B400();
  sub_26618B3E0();
  sub_26618B3D0();
  sub_26618B3F0();
  sub_26618B420();
  return sub_26618B410();
}

id sub_26614A7C0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v3) = a2;
  v31 = a3;
  v5 = sub_26618BA40();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_26618B980();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v38 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v29 - v14;
  result = sub_2661046B8();
  v16 = result;
  v17 = 0;
  v39 = a1 & 0xFFFFFFFFFFFFFF8;
  v40 = a1 & 0xC000000000000001;
  v35 = v11;
  v18 = (v11 + 32);
  v19 = MEMORY[0x277D84F90];
  v37 = v3;
  v36 = a1;
  while (1)
  {
    if (v16 == v17)
    {
      MEMORY[0x28223BE20](result);
      *(&v29 - 2) = v19;
      sub_26614E614(&qword_28005C8E8, MEMORY[0x277D5DD08], MEMORY[0x277D5DD00]);
      v26 = v30;
      v27 = v33;
      sub_26618C3F0();

      v28 = sub_26618BA20();
      MEMORY[0x28223BE20](v28);
      *(&v29 - 2) = v26;
      sub_26614E614(&qword_28005C7A0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
      sub_26618C3F0();
      return (*(v32 + 8))(v26, v27);
    }

    if (v40)
    {
      result = MEMORY[0x26677C150](v17, a1);
    }

    else
    {
      if (v17 >= *(v39 + 16))
      {
        goto LABEL_18;
      }

      result = *(a1 + 8 * v17 + 32);
    }

    v20 = result;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v41 = result;
    sub_26614C940(&v41, v3 & 1, v9);

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      result = sub_2660C8040(v9, &qword_28005BF28, &qword_26618F960);
    }

    else
    {
      v3 = *v18;
      v21 = v34;
      (*v18)(v34, v9, v10);
      v3(v38, v21, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26612970C(0, *(v19 + 16) + 1, 1, v19);
        v19 = v24;
      }

      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26612970C(v22 > 1, v23 + 1, 1, v19);
        v19 = v25;
      }

      *(v19 + 16) = v23 + 1;
      result = (v3)(v19 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23, v38, v10);
      LOBYTE(v3) = v37;
      a1 = v36;
    }

    ++v17;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_26614AC6C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0C0, &qword_26618FAD8);
  OUTLINED_FUNCTION_3_0(v2);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v48 = sub_26618C7A0();
  OUTLINED_FUNCTION_2_2();
  v46 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_24_1();
  v45 = (v8 - v9);
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_16();
  v44 = v11;
  OUTLINED_FUNCTION_18_2();
  v12 = sub_26618A5F0();
  OUTLINED_FUNCTION_2_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618A5E0();
  v18 = sub_26618A5D0();
  v20 = v19;
  (*(v14 + 8))(v17, v12);
  v21 = sub_2661046B8();
  v22 = 0;
  v23 = v1 & 0xC000000000000001;
  v24 = v1;
  v25 = v1 & 0xFFFFFFFFFFFFFF8;
  v43 = (v46 + 32);
  v47 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v21 == v22)
    {

      OUTLINED_FUNCTION_7_1();
      return;
    }

    if (v23)
    {
      v26 = MEMORY[0x26677C150](v22, v24);
    }

    else
    {
      if (v22 >= *(v25 + 16))
      {
        goto LABEL_17;
      }

      v26 = *(v24 + 8 * v22 + 32);
    }

    v27 = v26;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    sub_26614C10C(v22, v26, v18, v20, v5);

    if (__swift_getEnumTagSinglePayload(v5, 1, v48) == 1)
    {
      sub_2660C8040(v5, &qword_28005C0C0, &qword_26618FAD8);
      ++v22;
    }

    else
    {
      v28 = *v43;
      (*v43)(v44, v5, v48);
      v42 = v28;
      v28(v45, v44, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = OUTLINED_FUNCTION_17_10();
        sub_266129B70(v34, v35, v36, v37);
        v47 = v38;
      }

      v30 = *(v47 + 16);
      v29 = *(v47 + 24);
      if (v30 >= v29 >> 1)
      {
        v39 = OUTLINED_FUNCTION_38_2(v29);
        sub_266129B70(v39, v30 + 1, 1, v47);
        v47 = v40;
      }

      *(v47 + 16) = v30 + 1;
      OUTLINED_FUNCTION_9_13();
      v42(v32 + v31 + *(v33 + 72) * v30, v45, v48);
      ++v22;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_26614AF9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8B8, qword_266193710);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = v26 - v4;
  v5 = sub_26618B280();
  v32 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v29 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  sub_266136804();
  if (qword_2814B3D48 != -1)
  {
    swift_once();
  }

  sub_26618BB60();
  sub_26618B250();
  sub_26618C4C0();
  if (v16)
  {
    v17 = qword_2814B3DB8;

    if (v17 != -1)
    {
      swift_once();
    }

    v28 = v2;
    sub_26618BB60();
    v31 = v13;
    sub_26618B250();
    if (qword_2814B3DD0 != -1)
    {
      swift_once();
    }

    sub_26618BB60();
    v27 = v10;
    sub_26618B250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C738, &qword_266192DE0);
    v26[1] = *(*(sub_26618B220() - 8) + 72);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26618E180;
    v19 = v32;
    v20 = *(v32 + 16);
    v21 = v30;
    v26[0] = v15;
    v20(v30, v15, v5);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    v22 = v29;
    v20(v29, v31, v5);
    sub_26618B200();
    v20(v21, v15, v5);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    v23 = v27;
    v20(v22, v27, v5);
    sub_26618B200();
    v24 = *(v19 + 8);
    v24(v23, v5);
    v24(v31, v5);
    result = (v24)(v26[0], v5);
  }

  else
  {
    result = (*(v32 + 8))(v15, v5);
    v18 = MEMORY[0x277D84F90];
  }

  *v33 = v18;
  return result;
}

id sub_26614B42C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_26618BA40();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v49 = sub_26618B980();
  v47 = *(v49 - 8);
  v8 = MEMORY[0x28223BE20](v49);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v38 - v10;
  v11 = sub_26618A5F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  sub_26618A5E0();
  v15 = sub_26618A5D0();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  result = sub_2661046B8();
  v19 = result;
  v20 = 0;
  v21 = a2 & 0xC000000000000001;
  v22 = a2;
  v23 = a2 & 0xFFFFFFFFFFFFFF8;
  v44 = (v47 + 32);
  while (1)
  {
    if (v19 == v20)
    {

      MEMORY[0x28223BE20](v33);
      *(&v38 - 2) = v48;
      sub_26614E614(&qword_28005C8E8, MEMORY[0x277D5DD08], MEMORY[0x277D5DD00]);
      v34 = v40;
      v35 = v43;
      sub_26618C3F0();

      v36 = sub_26618BA20();
      MEMORY[0x28223BE20](v36);
      *(&v38 - 2) = v34;
      sub_26614E614(&qword_28005C7A0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
      sub_26618C3F0();
      v37 = v50;
      (*(v42 + 8))(v34, v35);
      return v37;
    }

    if (v21)
    {
      result = MEMORY[0x26677C150](v20, v22);
    }

    else
    {
      if (v20 >= *(v23 + 16))
      {
        goto LABEL_17;
      }

      result = *(v22 + 8 * v20 + 32);
    }

    v24 = result;
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    sub_26614D3D0(v20, result, v15, v17, &v50, v7);

    if (__swift_getEnumTagSinglePayload(v7, 1, v49) == 1)
    {
      result = sub_2660C8040(v7, &qword_28005BF28, &qword_26618F960);
      ++v20;
    }

    else
    {
      v26 = *v44;
      (*v44)(v45, v7, v49);
      v39 = v26;
      v26(v46, v45, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26612970C(0, *(v48 + 16) + 1, 1, v48);
        v48 = v31;
      }

      v28 = *(v48 + 16);
      v27 = *(v48 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_26612970C(v27 > 1, v28 + 1, 1, v48);
        v48 = v32;
      }

      v29 = v47;
      v30 = v48;
      *(v48 + 16) = v28 + 1;
      result = (v39)(v30 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v28, v46, v49);
      v20 = v25;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26614B998()
{
  v0 = sub_26618C6B0();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0);
  v41 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_26618BA20();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_26618B910();
  v38 = *(v45 - 8);
  v4 = MEMORY[0x28223BE20](v45);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = &v33 - v6;
  v44 = sub_26618B980();
  v36 = *(v44 - 8);
  v7 = MEMORY[0x28223BE20](v44);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = sub_26618B8A0();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_26618BA70();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v33 - v19;
  sub_26618C000();
  swift_allocObject();
  v21 = sub_26618BFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26618F7E0;
  *(v22 + 32) = v21;
  v23 = sub_26618BD60();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v23);

  v24 = MEMORY[0x26677B0A0](v22, v20);

  sub_2660C8040(v20, &qword_28005C8C8, &qword_2661937A8);
  sub_26618BA60();
  sub_26618BAB0();
  sub_26618BA50();
  sub_26618B970();
  (*(v46 + 16))(v15, v17, v47);
  sub_26618B960();
  v25 = v35;
  sub_26618B900();
  v26 = v36;
  (*(v36 + 16))(v33, v10, v44);
  sub_26618B8F0();
  v43 = v24;
  v27 = v37;
  sub_26618BA10();
  v28 = v38;
  (*(v38 + 16))(v34, v25, v45);
  sub_26618B9F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8D0, &qword_2661937B0);
  v29 = v39;
  v30 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26618E190;
  (*(v29 + 32))(v31 + v30, v27, v40);

  (*(v28 + 8))(v25, v45);
  (*(v26 + 8))(v10, v44);
  (*(v46 + 8))(v17, v47);
  return v31;
}

uint64_t sub_26614C10C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62[2] = a3;
  v63 = a1;
  v64 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C0, &qword_2661937A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v62 - v8;
  v10 = sub_26618C6B0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v62 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v62 - v18;
  v20 = sub_2660C9D24(a2);
  if (!v21)
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v10, qword_2814B4A98);
    (*(v11 + 16))(v14, v30, v10);
    v31 = a2;
    v32 = sub_26618C690();
    v33 = sub_26618CAA0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63 = v11;
      v36 = v35;
      v65 = v35;
      *v34 = 136315138;
      v37 = v31;
      v38 = [v37 description];
      v39 = sub_26618C8B0();
      v41 = v40;

      v42 = sub_266103A98(v39, v41, &v65);

      *(v34 + 4) = v42;
      _os_log_impl(&dword_2660B7000, v32, v33, "Unable to extract app name for rrEntity creation from: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x26677CC30](v36, -1, -1);
      MEMORY[0x26677CC30](v34, -1, -1);

      (*(v63 + 8))(v14, v10);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    goto LABEL_21;
  }

  v22 = v20;
  v23 = v21;
  v62[1] = a4;
  v24 = sub_2660C9D30(a2);
  if (!v25)
  {

    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v10, qword_2814B4A98);
    (*(v11 + 16))(v17, v43, v10);
    v44 = a2;
    v45 = sub_26618C690();
    v46 = sub_26618CAA0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63 = v11;
      v49 = v48;
      v65 = v48;
      *v47 = 136315138;
      v50 = v44;
      v51 = [v50 description];
      v52 = sub_26618C8B0();
      v54 = v53;

      v55 = sub_266103A98(v52, v54, &v65);

      *(v47 + 4) = v55;
      _os_log_impl(&dword_2660B7000, v45, v46, "Unable to extract app id for rrEntity creation from: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x26677CC30](v49, -1, -1);
      MEMORY[0x26677CC30](v47, -1, -1);

      (*(v63 + 8))(v17, v10);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    goto LABEL_21;
  }

  v26 = sub_26614C7D0(v24, v25, v22, v23);

  if (!MEMORY[0x26677B1D0](v26))
  {

    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v10, qword_2814B4A98);
    (*(v11 + 16))(v19, v56, v10);
    v57 = sub_26618C690();
    v58 = sub_26618CAB0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2660B7000, v57, v58, "Error converting common app entity builder to common app entity", v59, 2u);
      MEMORY[0x26677CC30](v59, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v19, v10);
LABEL_21:
    v29 = 1;
    v28 = v64;
    goto LABEL_22;
  }

  v27 = sub_26618C730();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v27);

  v28 = v64;
  sub_26618C760();

  sub_26618C720();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v27);
  sub_26618C780();

  v29 = 0;
LABEL_22:
  v60 = sub_26618C7A0();
  return __swift_storeEnumTagSinglePayload(v28, v29, 1, v60);
}

uint64_t sub_26614C7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_26618BC90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26618BC60();
  sub_26618BF10();
  swift_allocObject();
  v8 = sub_26618BF00();
  sub_26618BEF0();
  if (sub_26618BEE0())
  {
    sub_26618BB70();
  }

  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_26614C940@<X0>(void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v96 = sub_26618C6B0();
  v5 = *(v96 - 8);
  v6 = MEMORY[0x28223BE20](v96);
  v93 = (&v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v86 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v86 - v11;
  v13 = sub_26618B9E0();
  v91 = *(v13 - 8);
  v92 = v13;
  MEMORY[0x28223BE20](v13);
  v89 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_26618B8A0();
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v86 - v18;
  v20 = *a1;
  v21 = sub_2660C9D24(v20);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = sub_2660C9D30(v20);
    if (v26)
    {
      v27 = sub_26614C7D0(v25, v26, v23, v24);

      if (a2)
      {
        sub_26618C020();
        swift_allocObject();
        v28 = sub_26618C010();
      }

      else
      {
        sub_26618C000();
        swift_allocObject();
        v28 = sub_26618BFF0();
      }

      v59 = v28;
      v60 = v5;

      sub_26618C050();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_26618F7E0;
      *(v61 + 32) = v59;
      v62 = sub_26618BD60();
      __swift_storeEnumTagSinglePayload(v19, 1, 1, v62);
      v63 = MEMORY[0x26677B0A0](v61, v19);

      sub_2660C8040(v19, &qword_28005C8C8, &qword_2661937A8);
      v64 = v94;
      v65 = sub_26618BAB0();
      v66 = v96;
      if (!v64)
      {
        v87 = v27;
        MEMORY[0x28223BE20](v65);
        *(&v86 - 2) = v16;
        sub_26614E614(&qword_28005C8F0, MEMORY[0x277D5DC20], MEMORY[0x277D5DC08]);
        v80 = v89;
        v81 = v92;
        sub_26618C3F0();
        v94 = v59;
        v82 = sub_26618B980();
        MEMORY[0x28223BE20](v82);
        *(&v86 - 2) = v80;
        sub_26614E614(&qword_28005BF30, MEMORY[0x277D5DB80], MEMORY[0x277D5DB70]);
        v83 = v95;
        sub_26618C3F0();

        __swift_storeEnumTagSinglePayload(v83, 0, 1, v82);
        (*(v91 + 8))(v80, v81);
        return (*(v88 + 8))(v16, v90);
      }

      v92 = v63;
      if (qword_2814B2C40 != -1)
      {
        swift_once();
      }

      v67 = __swift_project_value_buffer(v66, qword_2814B4A98);
      v68 = v93;
      (*(v60 + 16))(v93, v67, v66);
      v69 = v64;
      v70 = sub_26618C690();
      v71 = sub_26618CAB0();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v94 = v59;
        v73 = v72;
        v74 = swift_slowAlloc();
        v87 = v27;
        v75 = v74;
        v98 = v74;
        *v73 = 136315138;
        v97 = v64;
        v76 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
        v77 = sub_26618C8D0();
        v79 = sub_266103A98(v77, v78, &v98);

        *(v73 + 4) = v79;
        _os_log_impl(&dword_2660B7000, v70, v71, "Error building system dialog act for disambiguation: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x26677CC30](v75, -1, -1);
        MEMORY[0x26677CC30](v73, -1, -1);

        (*(v60 + 8))(v93, v66);
      }

      else
      {

        (*(v60 + 8))(v68, v66);
      }
    }

    else
    {

      if (qword_2814B2C40 != -1)
      {
        swift_once();
      }

      v44 = v96;
      v45 = __swift_project_value_buffer(v96, qword_2814B4A98);
      v46 = v5;
      (*(v5 + 16))(v12, v45, v44);
      v47 = v20;
      v48 = sub_26618C690();
      v49 = sub_26618CAA0();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v98 = v93;
        *v50 = 136315138;
        v51 = v47;
        v52 = [v51 description];
        v53 = sub_26618C8B0();
        v54 = v46;
        v56 = v55;

        v57 = sub_266103A98(v53, v56, &v98);

        *(v50 + 4) = v57;
        _os_log_impl(&dword_2660B7000, v48, v49, "Unable to extract app id for SDA creation from: %s", v50, 0xCu);
        v58 = v93;
        __swift_destroy_boxed_opaque_existential_1(v93);
        MEMORY[0x26677CC30](v58, -1, -1);
        MEMORY[0x26677CC30](v50, -1, -1);

        (*(v54 + 8))(v12, v96);
      }

      else
      {

        (*(v46 + 8))(v12, v44);
      }
    }
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v29 = v96;
    v30 = __swift_project_value_buffer(v96, qword_2814B4A98);
    v31 = v5;
    (*(v5 + 16))(v10, v30, v29);
    v32 = v20;
    v33 = sub_26618C690();
    v34 = sub_26618CAA0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v98 = v93;
      *v35 = 136315138;
      v36 = v32;
      v37 = [v36 description];
      v38 = sub_26618C8B0();
      v39 = v31;
      v41 = v40;

      v42 = sub_266103A98(v38, v41, &v98);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_2660B7000, v33, v34, "Unable to extract app name for SDA creation from: %s", v35, 0xCu);
      v43 = v93;
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x26677CC30](v43, -1, -1);
      MEMORY[0x26677CC30](v35, -1, -1);

      (*(v39 + 8))(v10, v96);
    }

    else
    {

      (*(v31 + 8))(v10, v29);
    }
  }

  v85 = sub_26618B980();
  return __swift_storeEnumTagSinglePayload(v95, 1, 1, v85);
}

uint64_t sub_26614D3D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a4;
  v86 = a5;
  v83 = a3;
  v84 = a1;
  v93 = a6;
  v7 = sub_26618B9E0();
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_26618B8A0();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v89 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C0, &qword_2661937A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v73 - v14;
  v92 = sub_26618C7A0();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_26618C6B0();
  v17 = *(v94 - 8);
  v18 = MEMORY[0x28223BE20](v94);
  v82 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v73 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  v25 = sub_26618BC90();
  v90 = *(v25 - 8);
  v91 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618C4C0();
  if (v28)
  {
    v81 = v17;
    sub_266136804();
    sub_26618BC60();
    sub_26618BE30();
    swift_allocObject();
    v29 = sub_26618BE20();
    v80 = v27;
    sub_26618BB70();
    sub_26618BB20();
    swift_allocObject();
    v30 = sub_26618BB10();
    v79 = v29;
    v95 = v29;
    v31 = v30;
    sub_26618BD00();
    v32 = MEMORY[0x26677B1D0](v31);
    if (v32)
    {
      v33 = v32;
      sub_266136804();
      v34 = sub_26618C730();
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v34);

      v35 = v33;
      v36 = v88;
      v73 = v35;
      sub_26618C760();

      sub_26618C720();
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v34);
      sub_26618C780();
      v37 = v86;
      sub_2661294D4();
      v38 = *(*v37 + 16);
      sub_266129590();
      v39 = *v37;
      *(v39 + 16) = v38 + 1;
      v40 = v87;
      (*(v87 + 16))(v39 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v38, v36, v92);
      sub_26618C0A0();
      swift_allocObject();
      v41 = sub_26618C090();
      v95 = v31;

      sub_26618BCA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_26618F7E0;
      *(v42 + 32) = v41;
      v43 = sub_26618BD60();
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v43);
      v44 = MEMORY[0x26677B0A0](v42, v12);

      sub_2660C8040(v12, &qword_28005C8C8, &qword_2661937A8);
      v45 = sub_26618BAB0();
      v86 = v44;
      MEMORY[0x28223BE20](v45);
      sub_26614E614(&qword_28005C8F0, MEMORY[0x277D5DC20], MEMORY[0x277D5DC08]);
      v94 = v31;
      v67 = v75;
      v68 = v78;
      sub_26618C3F0();
      v69 = sub_26618B980();
      MEMORY[0x28223BE20](v69);
      sub_26614E614(&qword_28005BF30, MEMORY[0x277D5DB80], MEMORY[0x277D5DB70]);
      v70 = v93;
      sub_26618C3F0();

      (*(v40 + 8))(v36, v92);
      (*(v90 + 8))(v80, v91);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v69);
      (*(v77 + 8))(v67, v68);
      return (*(v74 + 8))(v89, v76);
    }

    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v60 = v94;
    v61 = __swift_project_value_buffer(v94, qword_2814B4A98);
    (*(v81 + 16))(v24, v61, v60);
    v62 = sub_26618C690();
    v63 = sub_26618CAB0();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v80;
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2660B7000, v62, v63, "Error converting UsoEntityBuilder to UsoEntity", v66, 2u);
      MEMORY[0x26677CC30](v66, -1, -1);
    }

    (*(v81 + 8))(v24, v60);
    (*(v90 + 8))(v65, v91);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v46 = v94;
    v47 = __swift_project_value_buffer(v94, qword_2814B4A98);
    (*(v17 + 16))(v22, v47, v46);
    v48 = a2;
    v49 = v17;
    v50 = sub_26618C690();
    v51 = sub_26618CAA0();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v95 = v53;
      *v52 = 136315138;
      v54 = v48;
      v55 = [v54 description];
      v56 = sub_26618C8B0();
      v58 = v57;

      v59 = sub_266103A98(v56, v58, &v95);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_2660B7000, v50, v51, "Unable to extract device name from: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x26677CC30](v53, -1, -1);
      MEMORY[0x26677CC30](v52, -1, -1);

      (*(v49 + 8))(v22, v94);
    }

    else
    {

      (*(v49 + 8))(v22, v46);
    }
  }

  v72 = sub_26618B980();
  return __swift_storeEnumTagSinglePayload(v93, 1, 1, v72);
}

uint64_t sub_26614E164(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(char *))
{
  a3(0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a2);
  return a4(v8);
}

unint64_t DisplayHint.description.getter()
{
  v0 = 0x3E6C696E3CLL;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8B8, qword_266193710);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_1();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_26618CD80();

  v16 = 0xD000000000000012;
  v17 = 0x8000000266199D30;
  sub_26618B210();
  v9 = sub_26618B280();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2660C8040(v8, &qword_28005C8B8, qword_266193710);
    v10 = 0xE500000000000000;
    v11 = 0x3E6C696E3CLL;
  }

  else
  {
    v11 = SemanticValue.description.getter();
    v10 = v12;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  MEMORY[0x26677BCF0](v11, v10);

  MEMORY[0x26677BCF0](0x79616C706964202CLL, 0xEA0000000000203ALL);
  sub_26618B1F0();
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_2660C8040(v5, &qword_28005C8B8, qword_266193710);
    v13 = 0xE500000000000000;
  }

  else
  {
    v0 = SemanticValue.description.getter();
    v13 = v14;
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  MEMORY[0x26677BCF0](v0, v13);

  MEMORY[0x26677BCF0](32032, 0xE200000000000000);
  return v16;
}

uint64_t SemanticValue.description.getter()
{
  sub_26618CD80();
  MEMORY[0x26677BCF0](0xD000000000000019, 0x8000000266199D50);
  v0 = sub_26618B260();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v0, v2);

  MEMORY[0x26677BCF0](0x6C6562616C202C22, 0xEB0000000022203ALL);
  v3 = sub_26618B240();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v3, v5);

  MEMORY[0x26677BCF0](0x4365646F6E202C22, 0xEF22203A7373616CLL);
  v6 = sub_26618B270();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v6, v8);

  MEMORY[0x26677BCF0](8200226, 0xE300000000000000);
  return 0;
}

uint64_t sub_26614E614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_5_14(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_20_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return sub_26618B400();
}

void OUTLINED_FUNCTION_22_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_26614E894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-v1];
  if (qword_2814B3DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent(0);
  sub_26614FBB8(&qword_2814B3D28, type metadata accessor for AppLaunchIntent, &unk_2661939B8);
  sub_26618BDA0();
  if (!sub_26614F494(v10[0], &unk_2877C9B58))
  {
    return 0;
  }

  if (qword_2814B3D40 != -1)
  {
    swift_once();
  }

  v3 = _s11ApplicationVMa(0);
  OUTLINED_FUNCTION_0_18();
  sub_26614FBB8(v4, v5, &unk_26619303C);
  sub_26618BD90();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    if (qword_2814B3D88 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_18();
    sub_26614FBB8(v6, v7, &unk_26619300C);
    sub_26618BDA0();
    v8 = v11;
    sub_266144A38(v2);
    if (!v8)
    {
      return 1;
    }

    return 0;
  }

  sub_266144988(v2);
  return 1;
}

uint64_t sub_26614EAF8()
{
  if (qword_2814B3E88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26614EB54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8F8, &qword_266193808);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B60 = result;
  return result;
}

uint64_t type metadata accessor for AppLaunchIntent(uint64_t a1)
{
  result = qword_2814B3CE0;
  if (!qword_2814B3CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26614EC04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B58 = result;
  return result;
}

uint64_t sub_26614EC70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B8, &qword_266192FF8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2661937D0;
  if (qword_2814B3D30 != -1)
  {
    swift_once();
  }

  v1 = qword_2814B4AE8;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7F8, &unk_2661939F0);
  *(v0 + 64) = sub_2660DB13C(&qword_2814B4808, &qword_28005C7F8, &unk_2661939F0, MEMORY[0x277D5E430]);
  *(v0 + 32) = v1;
  v2 = qword_2814B3D40;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_2814B4AF8;
  v4 = _s23ApplicationOntologyNodeCMa(0);
  v5 = MEMORY[0x277D5E210];
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_2814B3EF8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2814B4B78;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C880, &qword_2661935C0);
  *(v0 + 144) = sub_2660DB13C(&qword_2814B4818, &qword_28005C880, &qword_2661935C0, MEMORY[0x277D5E430]);
  *(v0 + 112) = v7;
  v8 = qword_2814B3EF0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2814B4B70;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  *(v0 + 176) = v10;
  v11 = sub_2660DB13C(&qword_2814B47E8, &qword_28005C7B0, &qword_266192FF0, MEMORY[0x277D5E430]);
  *(v0 + 184) = v11;
  *(v0 + 152) = v9;
  v12 = qword_2814B3DE0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2814B4B60;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8F8, &qword_266193808);
  *(v0 + 224) = sub_2660DB13C(&qword_2814B4810, &qword_28005C8F8, &qword_266193808, MEMORY[0x277D5E430]);
  *(v0 + 192) = v13;
  v14 = qword_2814B3DC8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_2814B4B48;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7C0, qword_266193A00);
  *(v0 + 264) = sub_2660DB13C(&qword_2814B4800, &qword_28005C7C0, qword_266193A00, MEMORY[0x277D5E430]);
  *(v0 + 232) = v15;
  v16 = qword_2814B3D48;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_2814B4B00;
  *(v0 + 296) = v10;
  *(v0 + 304) = v11;
  *(v0 + 272) = v17;
  v18 = qword_2814B3DB8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_2814B4B38;
  *(v0 + 336) = v10;
  *(v0 + 344) = v11;
  *(v0 + 312) = v19;
  v20 = qword_2814B3D38;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_2814B4AF0;
  *(v0 + 376) = v10;
  *(v0 + 384) = v11;
  *(v0 + 352) = v21;
  v22 = qword_2814B3DD0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_2814B4B50;
  *(v0 + 416) = v10;
  *(v0 + 424) = v11;
  *(v0 + 392) = v23;
  v24 = qword_2814B3DB0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_2814B4B30;
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C848, &qword_266193470);
  *(v0 + 464) = sub_2660DB13C(&qword_2814B47F8, &qword_28005C848, &qword_266193470, MEMORY[0x277D5E430]);
  *(v0 + 432) = v25;
  v26 = qword_2814B3DC0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_2814B4B40;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C810, &unk_266193310);
  *(v0 + 504) = sub_2660DB13C(&qword_2814B47F0, &qword_28005C810, &unk_266193310, MEMORY[0x277D5E430]);
  *(v0 + 472) = v27;
  v28 = qword_2814B3DD8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_2814B4B58;
  *(v0 + 536) = v10;
  *(v0 + 544) = v11;
  *(v0 + 512) = v29;
  sub_26618BB40();
  swift_allocObject();

  result = sub_26618BB30();
  qword_2814B4B68 = result;
  return result;
}

unint64_t sub_26614F2BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618CEC0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26614F314(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 7368801;
      break;
    case 2:
      result = 0x7265646C6F66;
      break;
    case 3:
      result = 0x6E696874656D6F73;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26614F3B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26614F2BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26614F3E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26614F314(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26614F420(uint64_t a1, uint64_t a2)
{
  v4 = sub_26614FC00();
  v5 = sub_26614FC54();
  v6 = sub_26614FCA8();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

BOOL sub_26614F494(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (v3)
  {
    if (*v4 == 8)
    {
      if (a1 == 8)
      {
        return v3 != 0;
      }
    }

    else
    {
      v5 = 0xE700000000000000;
      v6 = 0x6E776F6E6B6E75;
      switch(*v4)
      {
        case 1:
          v6 = 6647407;
          v5 = 0xE300000000000000;
          break;
        case 2:
          v5 = 0xE300000000000000;
          v6 = 7105633;
          break;
        case 3:
          v5 = 0xE400000000000000;
          v6 = 2037277037;
          break;
        case 4:
          v5 = 0xE300000000000000;
          v6 = 6645876;
          break;
        case 5:
          v5 = 0xE500000000000000;
          v6 = 0x6573656874;
          break;
        case 6:
          v5 = 0xE200000000000000;
          v6 = 29801;
          break;
        case 7:
          v5 = 0xE400000000000000;
          v6 = 1936287860;
          break;
        default:
          break;
      }

      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      switch(a1)
      {
        case 0:
          break;
        case 1:
          v8 = 6647407;
          v7 = 0xE300000000000000;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7105633;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 2037277037;
          break;
        case 4:
          v7 = 0xE300000000000000;
          v8 = 6645876;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x6573656874;
          break;
        case 6:
          v7 = 0xE200000000000000;
          v8 = 29801;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1936287860;
          break;
        default:
          goto LABEL_27;
      }

      if (v6 == v8 && v5 == v7)
      {

        return v3 != 0;
      }

      v10 = sub_26618D000();

      if (v10)
      {
        return v3 != 0;
      }
    }

LABEL_27:
    ++v4;
    --v3;
  }

  return v3 != 0;
}

_BYTE *storeEnumTagSinglePayload for AppLaunchIntent.AppNoun(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26614F79C(uint64_t a1)
{
  result = sub_26618C0E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26614F808@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26618C0E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26614F888(uint64_t a1)
{
  v2 = sub_26614FBB8(&qword_2814B3D20, type metadata accessor for AppLaunchIntent, &unk_266193840);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_26614F904(uint64_t a1)
{
  v2 = sub_26614FBB8(&qword_2814B3D20, type metadata accessor for AppLaunchIntent, &unk_266193840);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_26614F970(uint64_t a1)
{
  v2 = sub_26614FBB8(&qword_2814B3D20, type metadata accessor for AppLaunchIntent, &unk_266193840);

  return MEMORY[0x2821C0C70](a1, v2);
}

unint64_t sub_26614FA70()
{
  result = qword_2814B3EE8;
  if (!qword_2814B3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EE8);
  }

  return result;
}

unint64_t sub_26614FB0C()
{
  result = qword_28005C910;
  if (!qword_28005C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C910);
  }

  return result;
}

unint64_t sub_26614FB64()
{
  result = qword_2814B3EE0;
  if (!qword_2814B3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EE0);
  }

  return result;
}

uint64_t sub_26614FBB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26614FC00()
{
  result = qword_28005C918;
  if (!qword_28005C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C918);
  }

  return result;
}

unint64_t sub_26614FC54()
{
  result = qword_28005C920;
  if (!qword_28005C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C920);
  }

  return result;
}

unint64_t sub_26614FCA8()
{
  result = qword_28005C928;
  if (!qword_28005C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C928);
  }

  return result;
}

uint64_t sub_26614FD14()
{
  v0 = sub_26618C6B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 ams_activeiCloudAccount];
  if (v5 && (v6 = sub_266150000(v5), v7))
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v10 = [v4 ams_activeiTunesAccount];
    if (v10)
    {
      v8 = sub_266150000(v10);
      v9 = v11;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }
  }

  v12 = qword_2814B2C38;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, qword_2814B4A80);
  (*(v1 + 16))(v3, v13, v0);
  v14 = sub_26618C690();
  v15 = sub_26618CAA0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v24 = v0;
    v19 = v8;
    if (v9)
    {
      v20 = v9;
    }

    else
    {
      v8 = 7104878;
      v20 = 0xE300000000000000;
    }

    v21 = sub_266103A98(v8, v20, &v26);

    *(v17 + 4) = v21;
    v8 = v19;
    _os_log_impl(&dword_2660B7000, v14, v15, "AccountProvider.getSpeakingUserDSID() returned:%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x26677CC30](v18, -1, -1);
    MEMORY[0x26677CC30](v17, -1, -1);

    (*(v1 + 8))(v3, v24);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

uint64_t sub_266150000(void *a1)
{
  v2 = [a1 ams_altDSID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

uint64_t sub_266150080(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2661500C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266150124(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = *v5;
      v22[0] = *(v5 - 1);
      v22[1] = v7;

      a1(&v18, v22);
      if (v3)
      {
        break;
      }

      v8 = v19;
      if (v19)
      {
        v9 = v18;
        v10 = v20;
        v23 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266129A8C();
          v6 = v14;
        }

        v11 = *(v6 + 16);
        if (v11 >= *(v6 + 24) >> 1)
        {
          sub_266129A8C();
          v6 = v15;
        }

        *(v6 + 16) = v11 + 1;
        v12 = (v6 + 32 * v11);
        v12[4] = v9;
        v12[5] = v8;
        v13 = v23;
        v12[6] = v10;
        v12[7] = v13;
      }

      v5 += 2;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

void sub_266150268(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v12 = MEMORY[0x277D84F90];
  v5 = sub_2661046B8();
  for (i = 0; v5 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26677C150](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v7;
    a1(&v10, &v11);
    if (v3)
    {

      return;
    }

    if (v10)
    {
      MEMORY[0x26677BD40]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
    }
  }
}

uint64_t sub_2661503BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = sub_26618C6B0();
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26615049C, 0, 0);
}

uint64_t sub_26615049C()
{
  v1 = v0[32];
  if (v1)
  {
    v2 = v0[33];
    v3 = v0[31];
    v4 = v2[3];
    v5 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v4);
    v6 = (*(v5 + 16))(v3, v1, v2[10], v4, v5);
    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26618F7E0;
      *(v8 + 32) = v7;
LABEL_13:

      OUTLINED_FUNCTION_54();

      return v38(v8);
    }
  }

  v9 = v0[30];
  if (!v9)
  {
    if (qword_2814B2C48 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
    }

    v29 = v0[37];
    v30 = v0[34];
    v31 = v0[35];
    v32 = __swift_project_value_buffer(v30, qword_2814B4AB0);
    (*(v31 + 16))(v29, v32, v30);
    v33 = sub_26618C690();
    v34 = sub_26618CAA0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2660B7000, v33, v34, "App name is nil, will not proceed into corespotlight search", v35, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v36 = OUTLINED_FUNCTION_12_1();
    v37(v36);
    v8 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v0[33];
  v11 = v0[29];
  v40 = [objc_allocWithZone(MEMORY[0x277D47180]) init];
  v0[39] = v40;
  v0[2] = v11;
  v0[3] = v9;
  sub_2660CCD6C();
  v0[4] = sub_26618CC40();
  v0[5] = v12;
  v0[6] = 92;
  v0[7] = 0xE100000000000000;
  v0[8] = 23644;
  v0[9] = 0xE200000000000000;
  v13 = OUTLINED_FUNCTION_0_19((v0 + 6), (v0 + 8));
  v15 = v14;

  v0[10] = v13;
  v0[11] = v15;
  v0[12] = 34;
  v0[13] = 0xE100000000000000;
  v0[14] = 8796;
  v0[15] = 0xE200000000000000;
  v16 = OUTLINED_FUNCTION_0_19((v0 + 12), (v0 + 14));
  v18 = v17;

  v0[16] = v16;
  v0[17] = v18;
  v0[18] = 39;
  v0[19] = 0xE100000000000000;
  v0[20] = 10076;
  v0[21] = 0xE200000000000000;
  v19 = OUTLINED_FUNCTION_0_19((v0 + 18), (v0 + 20));
  v21 = v20;

  v0[22] = v19;
  v0[23] = v21;
  v0[24] = 42;
  v0[25] = 0xE100000000000000;
  v0[26] = 10844;
  v0[27] = 0xE200000000000000;
  v22 = OUTLINED_FUNCTION_0_19((v0 + 24), (v0 + 26));
  v24 = v23;

  MEMORY[0x26677BCF0](42, 0xE100000000000000);

  sub_2661513C8(v22, v24, v40);
  v25 = v10[8];
  v26 = v10[9];
  __swift_project_boxed_opaque_existential_1(v10 + 5, v25);
  v27 = swift_task_alloc();
  v0[40] = v27;
  v28 = sub_2660CD344(0, &qword_2814B2C08, 0x277D47188);
  *v27 = v0;
  v27[1] = sub_2661508F4;

  return MEMORY[0x2821BB6A0](v40, v25, v28, v26);
}

uint64_t sub_2661508F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_266150D1C;
  }

  else
  {
    v4 = sub_266150A08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_266150A08()
{
  v36 = v0;
  if (!sub_26615142C(*(v0 + 328)))
  {
    __break(1u);
    goto LABEL_16;
  }

  v1 = sub_2661046B8();

  if (!v1)
  {
    if (qword_2814B2C48 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
    }

    v10 = *(v0 + 304);
    v11 = *(v0 + 312);
    v12 = *(v0 + 272);
    v13 = *(v0 + 280);
    v14 = __swift_project_value_buffer(v12, qword_2814B4AB0);
    (*(v13 + 16))(v10, v14, v12);

    v15 = v11;
    v16 = sub_26618C690();
    v17 = sub_26618CAB0();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 312);
    if (v18)
    {
      v21 = *(v0 + 232);
      v20 = *(v0 + 240);
      v22 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_266103A98(v21, v20, v35);
      *(v22 + 12) = 2080;
      v23 = sub_2660C9D48(v19, &selRef_applicationName);
      v25 = v24;

      if (!v25)
      {
LABEL_17:
        __break(1u);
        return;
      }

      v26 = *(v0 + 304);
      v27 = *(v0 + 272);
      v28 = *(v0 + 280);
      v29 = sub_266103A98(v23, v25, v35);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_2660B7000, v16, v17, "Unable to find any apps for %s based on %s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v28 + 8))(v26, v27);
    }

    else
    {

      v30 = OUTLINED_FUNCTION_12_1();
      v31(v30);
    }

    v32 = *(v0 + 312);

    v9 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v2 = sub_26615142C(*(v0 + 328));
  if (!v2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  v6 = *(v0 + 264);
  v34 = *(v0 + 232);
  v7 = swift_task_alloc();
  *(v7 + 16) = v34;
  *(v7 + 32) = v6;
  sub_266150268(sub_26615149C, v7, v3);
  v9 = v8;

LABEL_12:

  OUTLINED_FUNCTION_54();

  v33(v9);
}

uint64_t sub_266150D1C()
{
  v25 = v0;
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v1 = *(v0 + 336);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = __swift_project_value_buffer(v4, qword_2814B4AB0);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26618C690();
  v8 = sub_26618CAB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 336);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 224) = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v13 = sub_26618C8D0();
    v15 = sub_266103A98(v13, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2660B7000, v7, v8, "AppsSearcher.searchApps AceCommand failed: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v16 = OUTLINED_FUNCTION_12_1();
    v17(v16);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_12_1();
    v19(v18);
  }

  v20 = *(v0 + 336);

  OUTLINED_FUNCTION_54();
  v22 = MEMORY[0x277D84F90];

  return v21(v22);
}

uint64_t sub_266150F50@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = sub_26618C6B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_2660C9D48(v15, &selRef_bundleId);
  if (v16)
  {

    sub_2660C5864(a4, v30);
    v17 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    result = sub_2660C9D48(v15, &selRef_bundleId);
    if (v19)
    {
      v20 = (*(v17 + 16))(result);

      *a5 = v20;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_2814B2C48 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v11, qword_2814B4AB0);
    (*(v12 + 16))(v14, v21, v11);

    v22 = sub_26618C690();
    v23 = sub_26618CAB0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v29 = a5;
      v25 = v24;
      v26 = swift_slowAlloc();
      v30[6] = v5;
      v27 = v26;
      v30[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_266103A98(a2, a3, v30);
      _os_log_impl(&dword_2660B7000, v22, v23, "Unable to find bundleId for: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x26677CC30](v27, -1, -1);
      v28 = v25;
      a5 = v29;
      MEMORY[0x26677CC30](v28, -1, -1);
    }

    result = (*(v12 + 8))(v14, v11);
    *a5 = 0;
  }

  return result;
}

uint64_t sub_266151210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2661512CC;

  return sub_2661503BC(a1, a2, a3, a4);
}

uint64_t sub_2661512CC(uint64_t a1)
{

  OUTLINED_FUNCTION_54();
  if (!v1)
  {
    v3 = a1;
  }

  return v4(v3);
}

void sub_2661513C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();

  [a3 setApplicationName_];
}

uint64_t sub_26615142C(void *a1)
{
  v1 = [a1 foundApps];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2660CD344(0, &qword_2814B2C00, 0x277D47970);
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1, uint64_t a2)
{

  return sub_26618CC00();
}

uint64_t get_enum_tag_for_layout_string_20SiriAppLaunchIntents13AppsResolving_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26615150C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26615154C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2661515C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 152) = a4;
  *(v6 + 160) = v5;
  *(v6 + 384) = a5;
  *(v6 + 136) = a2;
  *(v6 + 144) = a3;
  *(v6 + 128) = a1;
  v7 = sub_26618C600();
  *(v6 + 168) = v7;
  OUTLINED_FUNCTION_0_4(v7);
  *(v6 + 176) = v8;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  v9 = sub_26618C630();
  *(v6 + 200) = v9;
  OUTLINED_FUNCTION_0_4(v9);
  *(v6 + 208) = v10;
  *(v6 + 216) = swift_task_alloc();
  v11 = sub_26618C6B0();
  *(v6 + 224) = v11;
  OUTLINED_FUNCTION_0_4(v11);
  *(v6 + 232) = v12;
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266151784, 0, 0);
}

uint64_t sub_266151784()
{
  v81 = v0;
  if (qword_2814B2C48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v3 = *(v0 + 136);
  v4 = __swift_project_value_buffer(*(v0 + 224), qword_2814B4AB0);
  *(v0 + 296) = v4;
  v5 = *(v2 + 16);
  *(v0 + 304) = v5;
  *(v0 + 312) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v76 = v4;
  v77 = v5;
  (v5)(v1);

  v6 = sub_26618C690();
  v7 = sub_26618CAA0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 232);
  if (v8)
  {
    v70 = *(v0 + 144);
    v71 = *(v0 + 152);
    v72 = *(v0 + 224);
    v73 = *(v0 + 288);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v74 = v3;
    v12 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v12 = 136315394;
    *(v0 + 96) = v11;
    *(v0 + 104) = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
    v13 = sub_26618C8D0();
    v15 = sub_266103A98(v13, v14, &v80);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v0 + 112) = v70;
    *(v0 + 120) = v71;

    v16 = sub_26618C8D0();
    v18 = sub_266103A98(v16, v17, &v80);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_2660B7000, v6, v7, "AppsSearcher.searchApps with appName: %s and appID: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    v3 = v74;
    OUTLINED_FUNCTION_7_2();

    v19 = *(v9 + 8);
    v19(v73, v72);
  }

  else
  {

    v19 = *(v9 + 8);
    v20 = OUTLINED_FUNCTION_12_1();
    v19(v20, v21);
  }

  v75 = v19;
  *(v0 + 320) = v19;
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 280);
  v23 = *(v0 + 224);
  v24 = __swift_project_value_buffer(v23, qword_2814B4A80);
  v77(v22, v24, v23);
  sub_26618C610();
  sub_26618C5F0();
  v25 = sub_26618C620();
  v26 = sub_26618CB60();
  if (sub_26618CBB0())
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v25, v26, v28, "appsSearcherSearchApps", "", v27, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v30 = *(v0 + 184);
  v29 = *(v0 + 192);
  v31 = *(v0 + 168);
  v32 = *(v0 + 176);
  v33 = *(v0 + 160);

  (*(v32 + 16))(v30, v29, v31);
  sub_26618C670();
  swift_allocObject();
  *(v0 + 328) = sub_26618C660();
  v34 = OUTLINED_FUNCTION_12_1();
  v35(v34);
  sub_266152B9C(v33 + 80, v0 + 56);
  v36 = *(v0 + 224);
  if (*(v0 + 80))
  {
    v37 = *(v0 + 272);
    sub_2660B9EB8((v0 + 56), v0 + 16);
    v77(v37, v76, v36);

    v38 = sub_26618C690();
    v39 = sub_26618CAA0();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 272);
    v42 = *(v0 + 224);
    if (v40)
    {
      v43 = v3;
      v45 = *(v0 + 128);
      v44 = *(v0 + 136);
      v46 = OUTLINED_FUNCTION_49_0();
      v78 = v41;
      v80 = swift_slowAlloc();
      v47 = v80;
      *v46 = 136315138;
      v48 = v44 == 0;
      if (v44)
      {
        v49 = v45;
      }

      else
      {
        v49 = 0x3E6C696E3CLL;
      }

      if (v48)
      {
        v50 = 0xE500000000000000;
      }

      else
      {
        v50 = v43;
      }

      v51 = sub_266103A98(v49, v50, &v80);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_2660B7000, v38, v39, "AppsSearcher.searchApps aceAppsResolver is available, performing on device app search based on %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      v52 = v78;
    }

    else
    {

      v52 = v41;
    }

    v75(v52, v42);
    v59 = *(v0 + 40);
    v60 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v59);
    OUTLINED_FUNCTION_2_19();
    v79 = (v64 + *v64);
    v62 = swift_task_alloc();
    *(v0 + 336) = v62;
    *v62 = v0;
    v63 = sub_266151EFC;
  }

  else
  {
    v53 = *(v0 + 264);
    sub_2660C8040(v0 + 56, &qword_28005C930, qword_266193C48);
    v77(v53, v76, v36);
    v54 = sub_26618C690();
    v55 = sub_26618CAA0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2660B7000, v54, v55, "AppsSearcher.searchApps falling back to regexAppsResolver", v56, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v57 = *(v0 + 160);

    v58 = OUTLINED_FUNCTION_12_1();
    (v75)(v58);
    v59 = v57[8];
    v60 = v57[9];
    __swift_project_boxed_opaque_existential_1(v57 + 5, v59);
    OUTLINED_FUNCTION_2_19();
    v79 = (v61 + *v61);
    v62 = swift_task_alloc();
    *(v0 + 360) = v62;
    *v62 = v0;
    v63 = sub_26615212C;
  }

  v62[1] = v63;
  v65 = *(v0 + 144);
  v66 = *(v0 + 152);
  v68 = *(v0 + 128);
  v67 = *(v0 + 136);

  return v79(v68, v67, v65, v66, v59, v60);
}

uint64_t sub_266151EFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = sub_26615278C;
  }

  else
  {
    *(v4 + 352) = a1;
    v5 = sub_266152024;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_266152024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_47_3();
  __swift_destroy_boxed_opaque_existential_1(v16 + 2);
  OUTLINED_FUNCTION_0_20();
  v18 = v16[26];
  v17 = v16[27];
  v19 = v16[25];
  v30 = v16[24];
  v31 = v16[23];
  v32 = v20;
  sub_266152954();

  (*(v18 + 8))(v17, v19);

  OUTLINED_FUNCTION_36();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, v30, v31, v32, a14, a15, a16);
}

uint64_t sub_26615212C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_266152874;
  }

  else
  {
    v4 = sub_266152240;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266152240()
{
  v60 = v0;
  (*(v0 + 304))(*(v0 + 256), *(v0 + 296), *(v0 + 224));

  v1 = sub_26618C690();
  v2 = sub_26618CAA0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 368);
    v57 = *(v0 + 320);
    v4 = OUTLINED_FUNCTION_49_0();
    v5 = swift_slowAlloc();
    v59 = v5;
    *v4 = 136315138;
    v6 = type metadata accessor for Application();
    v7 = MEMORY[0x26677BD80](v3, v6);
    v9 = sub_266103A98(v7, v8, &v59);

    *(v4 + 4) = v9;
    OUTLINED_FUNCTION_41_1(&dword_2660B7000, v10, v11, "AppsSearcher.searchApps via regex found apps: %s");
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v12 = OUTLINED_FUNCTION_12_1();
    v57(v12);
  }

  else
  {
    v13 = *(v0 + 320);

    v14 = OUTLINED_FUNCTION_12_1();
    v13(v14);
  }

  v15 = *(v0 + 152);
  v16 = sub_2661046B8();
  if (!v16)
  {
    if (v15)
    {
      v18 = *(v0 + 152);
      v17 = *(v0 + 160);
      v19 = *(v0 + 144);
      v20 = v17[3];
      v21 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v20);
      v22 = (*(v21 + 16))(v19, v18, v17[20], v20, v21);
      if (v22)
      {
        v23 = v22;
        v24 = *(v0 + 304);
        v25 = *(v0 + 296);
        v26 = *(v0 + 248);
        v27 = *(v0 + 224);

        v24(v26, v25, v27);
        v28 = v23;
        v29 = sub_26618C690();
        LOBYTE(v26) = sub_26618CAA0();

        if (os_log_type_enabled(v29, v26))
        {
          v30 = OUTLINED_FUNCTION_49_0();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          *(v30 + 4) = v28;
          *v31 = v23;
          v32 = v28;
          OUTLINED_FUNCTION_41_1(&dword_2660B7000, v33, v34, "AppsSearcher.searchApps via bundleId found app: %@");
          sub_2660C8040(v31, &qword_28005C1F8, &unk_266190550);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();
        }

        v35 = *(v0 + 320);
        v36 = *(v0 + 248);
LABEL_15:
        v49 = *(v0 + 224);

        v35(v36, v49);
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_26618F7E0;
        v58 = v50;
        *(v50 + 32) = v28;
        goto LABEL_18;
      }
    }
  }

  v37 = *(v0 + 368);
  if (*(v0 + 384) == 1)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 160) + 120), *(*(v0 + 160) + 144));
    v38 = sub_26615398C(v37);
    if (v38)
    {
      v39 = v38;
      v40 = *(v0 + 304);
      v41 = *(v0 + 296);
      v42 = *(v0 + 240);
      v43 = *(v0 + 224);

      v40(v42, v41, v43);
      v28 = v39;
      v29 = sub_26618C690();
      LOBYTE(v42) = sub_26618CAA0();

      if (os_log_type_enabled(v29, v42))
      {
        v44 = OUTLINED_FUNCTION_49_0();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        *(v44 + 4) = v28;
        *v45 = v39;
        v46 = v28;
        OUTLINED_FUNCTION_41_1(&dword_2660B7000, v47, v48, "AppsSearcher.searchApps selected single app of: %@");
        sub_2660C8040(v45, &qword_28005C1F8, &unk_266190550);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      v35 = *(v0 + 320);
      v36 = *(v0 + 240);
      goto LABEL_15;
    }

    if (v16)
    {
      v56 = *(v0 + 368) & 0xC000000000000001;
      sub_2661046C8();
      if (v56)
      {
        v28 = MEMORY[0x26677C150](0, *(v0 + 368));
      }

      else
      {
        v28 = *(*(v0 + 368) + 32);
      }

      goto LABEL_16;
    }

    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v58 = *(v0 + 368);
  }

LABEL_18:
  v52 = *(v0 + 208);
  v51 = *(v0 + 216);
  v53 = *(v0 + 200);
  sub_266152954();

  (*(v52 + 8))(v51, v53);

  v54 = *(v0 + 8);

  return v54(v58);
}

uint64_t sub_26615278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_47_3();
  __swift_destroy_boxed_opaque_existential_1((v17 + 16));
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_4_18();

  (*(v18 + 8))(v19, v16);

  OUTLINED_FUNCTION_36();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_266152874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_4_18();

  (*(v17 + 8))(v18, v16);

  OUTLINED_FUNCTION_36();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_266152954()
{
  v0 = sub_26618C640();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26618C600();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26618C620();
  sub_26618C650();
  v9 = sub_26618CB50();
  if (sub_26618CBB0())
  {

    sub_26618C680();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v8, v9, v12, "appsSearcherSearchApps", v10, v11, 2u);
    MEMORY[0x26677CC30](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_266152B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C930, qword_266193C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return sub_266152954();
}

id sub_266152C70(uint64_t a1, uint64_t a2)
{
  sub_2660CD344(0, &qword_28005C938, 0x277D46F48);
  sub_2660CD344(0, &qword_28005C940, 0x277D46FA0);

  v4 = sub_266152D60(a1, a2);
  v5 = sub_266152DC4(v4);
  v8 = v5;
  if (v5)
  {
    v9 = [v5 currentState];
    if (v9)
    {
      v10 = v9;
      v6 = [v9 isRunning];

      return v6;
    }
  }

  return 0;
}

id sub_266152D60(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618C8A0();

  v3 = [swift_getObjCClassFromMetadata() predicateMatchingBundleIdentifier_];

  return v3;
}

id sub_266152DC4(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_26618A4C0();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_266152E98()
{
  v1 = sub_26618C6B0();
  OUTLINED_FUNCTION_1_16(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266152F40()
{
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  __swift_project_value_buffer(v0[2], qword_2814B4A80);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v6, v7, "Shell not available, unable to hide scenes");
    MEMORY[0x26677CC30](v5, -1, -1);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v9 + 8))(v8, v10);
  sub_2660D3004();
  v11 = swift_allocError();
  OUTLINED_FUNCTION_4_19(v11, v12, v13, v14, v15, v16, v17, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_266153094()
{
  v1 = sub_26618C6B0();
  OUTLINED_FUNCTION_1_16(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26615313C()
{
  v1 = sub_26618C6B0();
  OUTLINED_FUNCTION_1_16(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2661531E4()
{
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  __swift_project_value_buffer(v0[2], qword_2814B4A80);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v6, v7, "Shell not available, unable to close scene");
    MEMORY[0x26677CC30](v5, -1, -1);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v9 + 8))(v8, v10);
  sub_2660D3004();
  v11 = swift_allocError();
  OUTLINED_FUNCTION_4_19(v11, v12, v13, v14, v15, v16, v17, v18);

  v19 = v0[1];

  return v19();
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 4;

  return swift_willThrow();
}

id sub_266153380(uint64_t a1, unint64_t a2)
{
  v5 = sub_26618C6B0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v15 = InstalledAppProvider.getRecord(byBundleId:for:)(a1, a2, 0);
  if (!v15)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v5, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v28(v9);

    v29 = sub_26618C690();
    v30 = sub_26618CAB0();

    if (os_log_type_enabled(v29, v30))
    {
      swift_slowAlloc();
      v31 = OUTLINED_FUNCTION_3_18();
      v40 = v31;
      *a1 = 136315138;
      *(a1 + 4) = sub_266103A98(a1, a2, &v40);
      _os_log_impl(&dword_2660B7000, v29, v30, "CarPlayUtil.hasCarPlaySupport ApplicationRecord for %s not found.", a1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  v16 = v15;
  v17 = [objc_opt_self() declarationForAppRecord_];
  if (!v17)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v5, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v32(v12);

    v33 = sub_26618C690();
    v34 = sub_26618CAB0();

    if (os_log_type_enabled(v33, v34))
    {
      swift_slowAlloc();
      v35 = OUTLINED_FUNCTION_3_18();
      v40 = v35;
      *a1 = 136315138;
      *(a1 + 4) = sub_266103A98(a1, a2, &v40);
      _os_log_impl(&dword_2660B7000, v33, v34, "Unable to get CarPlayAppDeclaration for %s", a1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }

    (*(v6 + 8))(v12, v5);
    return 0;
  }

  v18 = v17;
  v19 = [*(v2 + 16) effectivePolicyForAppDeclaration_];
  v20 = [v19 isCarPlaySupported];
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  __swift_project_value_buffer(v5, qword_2814B4A80);
  OUTLINED_FUNCTION_28_1();
  v21(v14);

  v22 = sub_26618C690();
  v23 = sub_26618CAA0();
  v39 = v5;
  v24 = v6;
  v25 = v23;

  if (os_log_type_enabled(v22, v25))
  {
    swift_slowAlloc();
    v37 = a1;
    v26 = OUTLINED_FUNCTION_3_18();
    v38 = v19;
    v27 = v26;
    v40 = v26;
    *a1 = 136315394;
    *(a1 + 4) = sub_266103A98(v37, a2, &v40);
    *(a1 + 12) = 1024;
    *(a1 + 14) = v20;
    _os_log_impl(&dword_2660B7000, v22, v25, "CarPlaySupportProvider support for %s = %{BOOL}d", a1, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  else
  {
  }

  (*(v24 + 8))(v14, v39);
  return v20;
}

uint64_t sub_2661538B4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_266153910()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF8A28]) init];
  [v1 setGeoSupported_];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return swift_slowAlloc();
}

id sub_26615398C(unint64_t a1)
{
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v173 = v3;
  v174 = v2;
  v4 = MEMORY[0x28223BE20](v2);
  v175 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v170 = &v166 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v166 - v8;
  sub_26618A5B0();
  OUTLINED_FUNCTION_2_2();
  v177 = v11;
  *&v178 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v15 = sub_26618A660();
  OUTLINED_FUNCTION_2_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v21 = v20 - v19;
  v22 = sub_26618A670();
  OUTLINED_FUNCTION_2_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_4();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v166 - v30;
  if (sub_2661046B8() == 1 && sub_2661046B8())
  {
    sub_2661046C8();
    if ((a1 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x26677C150](0, a1);
    }

    else
    {
      return *(a1 + 32);
    }
  }

  v179 = a1;
  v169 = v9;
  sub_2660CD344(0, &qword_28005C950, 0x277CFE1E8);
  v172 = sub_266154B28(0x466E692F7070612FLL, 0xEC0000007375636FLL);
  sub_26618A650();
  (*(v17 + 104))(v21, *MEMORY[0x277CC9998], v15);
  sub_26618A5A0();
  sub_26618A640();
  v34 = *(v177 + 8);
  v35 = v14;
  v36 = v178;
  v34(v35, v178);
  (*(v17 + 8))(v21, v15);
  (*(v24 + 8))(v28, v22);
  v37 = 0;
  if (__swift_getEnumTagSinglePayload(v31, 1, v36) != 1)
  {
    v37 = sub_26618A550();
    v34(v31, v36);
  }

  isUniquelyReferenced_nonNull_native = objc_opt_self();
  v39 = [isUniquelyReferenced_nonNull_native predicateForEventsWithStartDateAfter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v40 = swift_allocObject();
  v178 = xmmword_26618F7E0;
  *(v40 + 16) = xmmword_26618F7E0;
  v41 = v172;
  *(v40 + 32) = v172;
  v42 = swift_allocObject();
  *(v42 + 16) = v178;
  v172 = v41;
  v43 = [isUniquelyReferenced_nonNull_native startDateSortDescriptorAscending_];
  v45 = v173;
  v44 = v174;
  if (!v43)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    sub_26618D030();
    __break(1u);
    goto LABEL_119;
  }

  v46 = v43;
  sub_2660CD344(0, &qword_28005C958, 0x277CFE1E0);
  *(v42 + 32) = v46;
  v171 = v39;
  v47 = sub_266154B8C(v39, v40, 0, 150, v42);
  sub_2660C5864(v176, v181);
  v48 = v182;
  v49 = v183;
  __swift_project_boxed_opaque_existential_1(v181, v182);
  v50 = *(v49 + 8);
  v51 = v47;
  v63 = v50(v47, v48, v49);
  v168 = 0;

  v64 = v63;
  __swift_destroy_boxed_opaque_existential_1(v181);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v66 = v170;
    goto LABEL_46;
  }

  v181[0] = 0;
  sub_2660CD344(0, &qword_28005C968, 0x277CFE1D8);
  sub_26618C9A0();

  v65 = v181[0];
  v66 = v170;
  if (!v181[0])
  {
LABEL_46:
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v87 = __swift_project_value_buffer(v44, qword_2814B4A80);
    (*(v45 + 16))(v66, v87, v44);
    v88 = v64;
    v89 = sub_26618C690();
    v90 = sub_26618CAB0();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v181[0] = v92;
      *v91 = 136315138;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C960, &qword_266193DC0);
      v93 = sub_26618C8D0();
      v95 = sub_266103A98(v93, v94, v181);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_2660B7000, v89, v90, "CoreDuetAppSelectionResolver#resolve could not convert core duet response to array of _DKEvent, actual class: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      OUTLINED_FUNCTION_4_20();
      (*(v45 + 8))(v170, v44);
    }

    else
    {

      OUTLINED_FUNCTION_4_20();
      (*(v45 + 8))(v66, v44);
    }

    return 0;
  }

  v167 = v64;
  v170 = v51;
  v181[0] = MEMORY[0x277D84F90];
  v67 = sub_2661046B8();
  v177 = v65;
  *&v178 = v67;
  v68 = 0;
  v175 = v65 + 32;
  v176 = v65 & 0xC000000000000001;
  isUniquelyReferenced_nonNull_native = v179;
  v69 = v179 & 0xC000000000000001;
  v70 = v179 & 0xFFFFFFFFFFFFFF8;
LABEL_15:
  if (v68 == v178)
  {
    v68 = v181[0];
    *&v178 = sub_2661046B8();
    if (!v178)
    {

      OUTLINED_FUNCTION_4_20();
      return 0;
    }

    type metadata accessor for Application();
    v175 = sub_26618C850();
    v97 = sub_2661046B8();
    v75 = 0;
    v176 = v68;
    while (1)
    {
      while (1)
      {
        if (v97 == v75)
        {
          v123 = sub_26618C850();
          v124 = 0;
          v70 = 0;
          v125 = v68 & 0xC000000000000001;
          while (v178 != v124)
          {
            if (v125)
            {
              v126 = MEMORY[0x26677C150](v124, v68);
            }

            else
            {
              if (v124 >= *(v68 + 16))
              {
                goto LABEL_106;
              }

              v126 = *(v68 + 8 * v124 + 32);
            }

            v127 = v126;
            if (__OFADD__(v124, 1))
            {
              goto LABEL_105;
            }

            v128 = [v126 value];
            if (!v128)
            {
              goto LABEL_115;
            }

            v129 = sub_26615674C(v128);
            if (!v130)
            {
              goto LABEL_116;
            }

            v50 = v129;
            v131 = v130;
            sub_2661567BC(v70);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v181[0] = v123;
            v132 = OUTLINED_FUNCTION_3_19();
            v134 = sub_266129F20(v132, v133);
            if (__OFADD__(*(v123 + 16), (v135 & 1) == 0))
            {
              goto LABEL_107;
            }

            v70 = v134;
            v68 = v135;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C978, qword_266193DD0);
            v136 = sub_26618CE40();
            v123 = v181[0];
            if (v136)
            {
              v137 = OUTLINED_FUNCTION_3_19();
              v139 = sub_266129F20(v137, v138);
              if ((v68 & 1) != (v140 & 1))
              {
                goto LABEL_118;
              }

              v70 = v139;
            }

            if (v68)
            {
            }

            else
            {
              OUTLINED_FUNCTION_6_14(v123 + 8 * (v70 >> 6));
              v142 = (v141 + 16 * v70);
              *v142 = v50;
              v142[1] = v131;
              *(*(v123 + 56) + 8 * v70) = 0;
              v143 = *(v123 + 16);
              v74 = __OFADD__(v143, 1);
              v144 = v143 + 1;
              if (v74)
              {
                goto LABEL_109;
              }

              *(v123 + 16) = v144;
            }

            v145 = *(v123 + 56);
            v146 = *(v145 + 8 * v70);
            v74 = __OFADD__(v146, 1);
            v147 = v146 + 1;
            v68 = v176;
            if (v74)
            {
              goto LABEL_108;
            }

            *(v145 + 8 * v70) = v147;

            ++v124;
            v70 = sub_266154C94;
          }

          v181[0] = sub_2660DCF1C(v123);
          isUniquelyReferenced_nonNull_native = v168;
          sub_266155248(v181, v68);
          if (!isUniquelyReferenced_nonNull_native)
          {

            v75 = v181[0];
            i = v170;
            isUniquelyReferenced_nonNull_native = v167;
            if (!*(v181[0] + 16))
            {
              goto LABEL_99;
            }

            v50 = *(v181[0] + 32);
            v78 = *(v181[0] + 40);
            v148 = qword_2814B2C38;

            if (v148 != -1)
            {
LABEL_113:
              OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
            }

            v149 = v174;
            v150 = __swift_project_value_buffer(v174, qword_2814B4A80);
            v151 = v173;
            v152 = v169;
            (*(v173 + 16))(v169, v150, v149);

            v153 = sub_26618C690();
            v154 = sub_26618CAA0();

            if (os_log_type_enabled(v153, v154))
            {
              v155 = swift_slowAlloc();
              v179 = v78;
              v156 = v155;
              v157 = swift_slowAlloc();
              *&v178 = v50;
              v158 = v157;
              v181[0] = v157;
              *v156 = 136315138;
              v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C638, &unk_266192360);
              v160 = MEMORY[0x26677BD80](v75, v159);
              v162 = v161;

              v163 = sub_266103A98(v160, v162, v181);

              *(v156 + 4) = v163;
              _os_log_impl(&dword_2660B7000, v153, v154, "App values: %s", v156, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v158);
              OUTLINED_FUNCTION_7_2();
              OUTLINED_FUNCTION_7_2();

              (*(v151 + 8))(v152, v174);
            }

            else
            {

              (*(v151 + 8))(v152, v149);
            }

            v164 = OUTLINED_FUNCTION_3_19();
            v33 = sub_2661582D8(v164, v165, v175);

            OUTLINED_FUNCTION_4_20();
            sub_2661567BC(v70);
            return v33;
          }

LABEL_119:

          __break(1u);
          return result;
        }

        if (v69)
        {
          v98 = MEMORY[0x26677C150](v75, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v75 >= *(v70 + 16))
          {
            goto LABEL_104;
          }

          v98 = *(isUniquelyReferenced_nonNull_native + v75 + 4);
        }

        v99 = v98;
        v100 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_103;
        }

        v101 = sub_2660C9D30(v98);
        if (v102)
        {
          break;
        }

        ++v75;
      }

      v50 = v101;
      v78 = v102;
      v166 = v99;
      v103 = v175;
      swift_isUniquelyReferenced_nonNull_native();
      v181[0] = v103;
      v104 = OUTLINED_FUNCTION_3_19();
      v106 = sub_266129F20(v104, v105);
      v107 = *(v103 + 16);
      LODWORD(v175) = v108;
      if (__OFADD__(v107, (v108 & 1) == 0))
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v109 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C970, &qword_266193DC8);
      if (sub_26618CE40())
      {
        v110 = OUTLINED_FUNCTION_3_19();
        v112 = sub_266129F20(v110, v111);
        isUniquelyReferenced_nonNull_native = v179;
        v68 = v176;
        if ((v175 & 1) != (v113 & 1))
        {
          goto LABEL_118;
        }

        v109 = v112;
        if (v175)
        {
LABEL_69:

          v175 = v181[0];
          v120 = *(v181[0] + 56);
          v121 = *(v120 + 8 * v109);
          v122 = v166;
          *(v120 + 8 * v109) = v166;

          goto LABEL_70;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v179;
        v68 = v176;
        if (v175)
        {
          goto LABEL_69;
        }
      }

      v114 = v181[0];
      OUTLINED_FUNCTION_6_14(v181[0] + 8 * (v109 >> 6));
      v116 = (v115 + 16 * v109);
      *v116 = v50;
      v116[1] = v78;
      v117 = v166;
      *(*(v114 + 56) + 8 * v109) = v166;

      v118 = *(v114 + 16);
      v74 = __OFADD__(v118, 1);
      v119 = v118 + 1;
      if (v74)
      {
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v175 = v114;
      *(v114 + 16) = v119;
LABEL_70:
      v75 = v100;
    }
  }

  v71 = v176;
  sub_2661046C8();
  if (v71)
  {
    v72 = MEMORY[0x26677C150](v68, v65);
  }

  else
  {
    v72 = *(v175 + 8 * v68);
  }

  v73 = v72;
  v74 = __OFADD__(v68++, 1);
  if (v74)
  {
    __break(1u);
LABEL_103:
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
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    v52 = __swift_project_value_buffer(v68, qword_2814B4A80);
    v53 = v175;
    (*(v70 + 16))(v175, v52, v68);
    v54 = isUniquelyReferenced_nonNull_native;
    v55 = isUniquelyReferenced_nonNull_native;
    v56 = sub_26618C690();
    v57 = sub_26618CAB0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v181[0] = v59;
      *v58 = 136315138;
      swift_getErrorValue();
      v60 = sub_26618D040();
      v62 = sub_266103A98(v60, v61, v181);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_2660B7000, v56, v57, "CoreDuetAppSelectionResolver#resolve error querying core duet - %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      OUTLINED_FUNCTION_4_20();
      (*(v70 + 8))(v175, v68);
    }

    else
    {

      OUTLINED_FUNCTION_4_20();
      (*(v70 + 8))(v53, v68);
    }

    return 0;
  }

  v75 = sub_2661046B8();
  for (i = 0; ; ++i)
  {
    if (v75 == i)
    {

      v65 = v177;
      goto LABEL_15;
    }

    if (v69)
    {
      v77 = MEMORY[0x26677C150](i, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (i >= *(v70 + 16))
      {
        goto LABEL_98;
      }

      v77 = *(isUniquelyReferenced_nonNull_native + i + 4);
    }

    v78 = v77;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v79 = sub_2660C9D30(v77);
    v50 = v80;
    v81 = [v73 value];
    if (!v81)
    {
      __break(1u);
      goto LABEL_112;
    }

    v82 = sub_26615674C(v81);
    v84 = v83;
    if (!v50)
    {

      if (!v84)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (!v83)
    {

LABEL_37:

      goto LABEL_38;
    }

    if (v79 == v82 && v50 == v83)
    {

LABEL_42:
      sub_26618CDE0();
      sub_26618CE10();
      sub_26618CE20();
      sub_26618CDF0();
      isUniquelyReferenced_nonNull_native = v179;
      v65 = v177;
      goto LABEL_15;
    }

    v86 = sub_26618D000();

    if (v86)
    {
      goto LABEL_42;
    }

LABEL_38:
    isUniquelyReferenced_nonNull_native = v179;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:

  OUTLINED_FUNCTION_4_20();

  sub_2661567BC(v70);
  return 0;
}

id sub_266154B28(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618C8A0();

  v3 = [swift_getObjCClassFromMetadata() eventStreamWithName_];

  return v3;
}

id sub_266154B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_2660CD344(0, &qword_28005C950, 0x277CFE1E8);
  v9 = sub_26618C990();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2660CD344(0, &qword_28005C980, 0x277CCAC98);
  v10 = sub_26618C990();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() eventQueryWithPredicate:a1 eventStreams:v9 offset:a3 limit:a4 sortDescriptors:v10];

  return v11;
}

void sub_266154C9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v65 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = sub_26618A5B0();
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  if (a1[2] != a2[2])
  {
    return;
  }

  v70 = v23;
  v71 = v16;
  v73 = v3;
  v74 = v18;
  v66 = v24;
  v67 = v10;
  v68 = v13;
  v69 = &v65 - v22;
  v72 = v21;
  v26 = *a1;
  v25 = a1[1];
  v27 = *a2;
  v75 = a2[1];
  v76 = v27;
  v28 = sub_2661046B8();
  v29 = 0;
  v77 = a3 & 0xC000000000000001;
  v30 = a3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v28 == v29)
    {
      v31 = a3;
      v33 = 0;
      goto LABEL_20;
    }

    if (v77)
    {
      v31 = a3;
      v32 = MEMORY[0x26677C150](v29, a3);
    }

    else
    {
      if (v29 >= *(v30 + 16))
      {
        goto LABEL_56;
      }

      v31 = a3;
      v32 = *(a3 + 8 * v29 + 32);
    }

    v33 = v32;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return;
    }

    v34 = [v32 value];
    if (!v34)
    {
      goto LABEL_59;
    }

    v35 = sub_26615674C(v34);
    if (v36)
    {
      break;
    }

LABEL_15:

    ++v29;
    a3 = v31;
  }

  if (v35 != v26 || v36 != v25)
  {
    v38 = sub_26618D000();

    if (v38)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_20:
  v39 = 0;
  v40 = v74;
  while (2)
  {
    if (v28 == v39)
    {
      v42 = 0;
      goto LABEL_37;
    }

    if (v77)
    {
      v41 = MEMORY[0x26677C150](v39, v31);
    }

    else
    {
      if (v39 >= *(v30 + 16))
      {
        goto LABEL_58;
      }

      v41 = *(v31 + 8 * v39 + 32);
    }

    v42 = v41;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_57;
    }

    v43 = [v41 value];
    if (!v43)
    {
      goto LABEL_60;
    }

    v44 = sub_26615674C(v43);
    if (!v45)
    {
LABEL_33:

      ++v39;
      continue;
    }

    break;
  }

  if (v44 != v76 || v45 != v75)
  {
    v47 = sub_26618D000();

    if (v47)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_37:
  v48 = v72;
  if (!v33)
  {

    __swift_storeEnumTagSinglePayload(v40, 1, 1, v48);
    goto LABEL_44;
  }

  v49 = [v33 startDate];
  if (v49)
  {
    v50 = v49;
    v51 = v71;
    sub_26618A590();

    v52 = 0;
  }

  else
  {
    v52 = 1;
    v51 = v71;
  }

  __swift_storeEnumTagSinglePayload(v51, v52, 1, v48);
  sub_266156834(v51, v40);
  if (__swift_getEnumTagSinglePayload(v40, 1, v48) != 1)
  {
    v55 = v69;
    v54 = v70;
    v56 = *(v70 + 32);
    v56(v69, v40, v48);
    if (v42)
    {
      v57 = [v42 startDate];
      if (v57)
      {
        v58 = v57;
        v59 = v67;
        sub_26618A590();

        v60 = 0;
      }

      else
      {
        v60 = 1;
        v59 = v67;
      }

      __swift_storeEnumTagSinglePayload(v59, v60, 1, v48);
      v61 = v68;
      sub_266156834(v59, v68);
      if (__swift_getEnumTagSinglePayload(v61, 1, v48) != 1)
      {
        v62 = v66;
        v56(v66, v61, v48);
        v63 = v69;
        sub_26618A560();

        v64 = *(v70 + 8);
        v64(v62, v48);
        v64(v63, v48);
        return;
      }

      (*(v70 + 8))(v69, v48);
    }

    else
    {
      (*(v54 + 8))(v55, v48);

      v61 = v68;
      __swift_storeEnumTagSinglePayload(v68, 1, 1, v48);
    }

    v53 = v61;
    goto LABEL_53;
  }

LABEL_44:
  v53 = v40;
LABEL_53:
  sub_2661567CC(v53);
}

uint64_t sub_266155248(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_266138F94();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_2661552E4(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2661552E4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_26618CFC0();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C638, &unk_266192360);
        v8 = sub_26618C9E0();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_266155584(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_26615542C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_26615542C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = (*a4 + 24 * a3 - 24);
    v10 = a1 - a3;
    while (2)
    {
      v11 = (v8 + 24 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v23 = v10;
      v26 = v9;
      do
      {
        v25[0] = v12;
        v25[1] = v13;
        v25[2] = v14;
        v15 = v9[1];
        v16 = v9[2];
        v24[0] = *v9;
        v24[1] = v15;
        v24[2] = v16;

        sub_266154C9C(v25, v24, a5);
        if (v5)
        {
        }

        v18 = v17;

        if ((v18 & 1) == 0)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        v13 = v9[4];
        v14 = v9[5];
        v20 = v9[2];
        v12 = v9[3];
        *(v9 + 3) = *v9;
        v9[5] = v20;
        *v9 = v12;
        v9[1] = v13;
        v9[2] = v14;
        v9 -= 3;
      }

      while (!__CFADD__(v10++, 1));
      ++v7;
      v9 = v26 + 3;
      v10 = v23 - 1;
      if (v7 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_266155584(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v183 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v189 = v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v198 = v180 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v190 = v180 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v180 - v15;
  v17 = sub_26618A5B0();
  v18 = MEMORY[0x28223BE20](v17);
  v186 = v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v197 = v180 - v21;
  v200 = a3;
  v22 = a3[1];
  v210 = a5;
  if (v22 < 1)
  {
    swift_bridgeObjectRetain_n();
    v25 = MEMORY[0x277D84F90];
LABEL_153:
    v202 = *v183;
    if (v202)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_155;
    }

    goto LABEL_205;
  }

  v182 = a4;
  v23 = a5 & 0xFFFFFFFFFFFFFF8;
  v203 = (a5 & 0xFFFFFFFFFFFFFF8);
  if (a5 < 0)
  {
    v23 = a5;
  }

  v180[1] = v23;
  v202 = (a5 & 0xC000000000000001);
  v195 = (v20 + 32);
  v185 = (v20 + 8);
  swift_bridgeObjectRetain_n();
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v188 = v16;
  v187 = v17;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v191 = v24;
    if (v24 + 1 >= v22)
    {
      v44 = v210;
      goto LABEL_26;
    }

    j = v25;
    v28 = *v200;
    v29 = (*v200 + 24 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    v207 = v30;
    v208 = v31;
    v209 = v32;
    v33 = (v28 + 24 * v26);
    v34 = *v33;
    v35 = v33[1];
    v36 = v33[2];
    v204 = v34;
    v205 = v35;
    v206 = v36;

    v37 = v201;
    sub_266154C9C(&v207, &v204, v210);
    v201 = v37;
    if (v37)
    {
LABEL_163:
      swift_bridgeObjectRelease_n();

      goto LABEL_165;
    }

    v39 = v38;

    v40 = 24 * v26;
    v41 = v26;
    v42 = (v28 + 24 * v26 + 64);
    v43 = v41 + 2;
    v44 = v210;
    do
    {
      v45 = v43;
      if (v27 + 1 >= v22)
      {
        v27 = v22;
        if ((v39 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_12:
        v26 = v191;
        if (v27 >= v191)
        {
          v25 = j;
          if (v191 < v27)
          {
            if (v22 >= v45)
            {
              v54 = v45;
            }

            else
            {
              v54 = v22;
            }

            v55 = 24 * v54 - 8;
            v56 = v27;
            v57 = v191;
            do
            {
              if (v57 != --v56)
              {
                v58 = *v200;
                if (!*v200)
                {
                  goto LABEL_203;
                }

                v59 = v58 + v40;
                v60 = (v58 + v55);
                v61 = *v59;
                v62 = *(v59 + 16);
                v63 = *v60;
                *v59 = *(v60 - 1);
                *(v59 + 16) = v63;
                *(v60 - 1) = v61;
                *v60 = v62;
              }

              ++v57;
              v55 -= 24;
              v40 += 24;
            }

            while (v57 < v56);
          }

          goto LABEL_26;
        }

        goto LABEL_197;
      }

      v47 = *(v42 - 1);
      v46 = *v42;
      v48 = *(v42 - 3);
      v207 = *(v42 - 2);
      v208 = v47;
      v209 = v46;
      v49 = *(v42 - 4);
      v204 = *(v42 - 5);
      v205 = v49;
      v206 = v48;

      v50 = v44;
      v51 = v201;
      sub_266154C9C(&v207, &v204, v50);
      v201 = v51;
      if (v51)
      {
        goto LABEL_163;
      }

      v53 = v52;

      v42 += 3;
      ++v27;
      v43 = v45 + 1;
      v44 = v210;
    }

    while (((v39 ^ v53) & 1) == 0);
    if (v39)
    {
      goto LABEL_12;
    }

LABEL_25:
    v25 = j;
    v26 = v191;
LABEL_26:
    v64 = v200[1];
    if (v27 < v64)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_193;
      }

      if (v27 - v26 < v182)
      {
        v65 = v26 + v182;
        if (__OFADD__(v26, v182))
        {
          __break(1u);
        }

        else
        {
          if (v65 >= v64)
          {
            v65 = v200[1];
          }

          if (v65 >= v26)
          {
            if (v27 == v65)
            {
              goto LABEL_34;
            }

            j = v25;
            v117 = *v200;
            v181 = v65;
            v184 = v117;
            while (1)
            {
              v118 = v117 + 24 * v27;
              v25 = *v118;
              v119 = *(v118 + 8);
              v120 = *(v118 + 16);
              v121 = v27;
              v194 = v27;
              while (1)
              {
                v122 = v117 + 24 * v121;
                v123 = v122 - 24;
                v124 = *(v122 - 24);
                v125 = *(v122 - 8);
                if (v120 != v125)
                {
                  break;
                }

                v192 = v117 + 24 * v121;
                v193 = v122 - 24;
                v196 = v121;
                v126 = *(v122 - 16);
                if (v44 >> 62)
                {
                  v162 = sub_26618CCD0();
                  v44 = v210;
                  v127 = v162;
                }

                else
                {
                  v127 = *(v203 + 2);
                }

                for (i = 0; ; ++i)
                {
                  if (v127 == i)
                  {
                    v130 = 0;
                    goto LABEL_111;
                  }

                  if (v202)
                  {
                    v129 = MEMORY[0x26677C150](i, v44);
                  }

                  else
                  {
                    if (i >= *(v203 + 2))
                    {
                      goto LABEL_170;
                    }

                    v129 = *(v44 + 8 * i + 32);
                  }

                  v130 = v129;
                  if (__OFADD__(i, 1))
                  {
                    __break(1u);
LABEL_170:
                    __break(1u);
LABEL_171:
                    __break(1u);
LABEL_172:
                    __break(1u);
LABEL_173:
                    __break(1u);
LABEL_174:
                    __break(1u);
LABEL_175:
                    __break(1u);
LABEL_176:
                    __break(1u);
LABEL_177:
                    __break(1u);
LABEL_178:
                    __break(1u);
LABEL_179:
                    __break(1u);
LABEL_180:
                    __break(1u);
LABEL_181:
                    __break(1u);
LABEL_182:
                    __break(1u);
LABEL_183:
                    __break(1u);
LABEL_184:
                    __break(1u);
LABEL_185:
                    __break(1u);
LABEL_186:
                    __break(1u);
LABEL_187:
                    __break(1u);
LABEL_188:
                    __break(1u);
LABEL_189:
                    __break(1u);
LABEL_190:
                    __break(1u);
LABEL_191:
                    __break(1u);
LABEL_192:
                    __break(1u);
LABEL_193:
                    __break(1u);
LABEL_194:
                    v25 = sub_266138DB8(v25);
LABEL_155:
                    v166 = v25 + 16;
                    v167 = *(v25 + 2);
                    for (j = v25; ; v25 = j)
                    {
                      if (v167 < 2)
                      {

                        return swift_bridgeObjectRelease_n();
                      }

                      v168 = *v200;
                      if (!*v200)
                      {
                        goto LABEL_202;
                      }

                      v169 = &v25[16 * v167];
                      v25 = *v169;
                      v170 = v166;
                      v171 = &v166[16 * v167];
                      v172 = *(v171 + 1);
                      v173 = (v168 + 24 * *v169);
                      v203 = (v168 + 24 * *v171);
                      v174 = v168 + 24 * v172;
                      v175 = v210;

                      v176 = v173;
                      v177 = v201;
                      sub_266156394(v176, v203, v174, v202, v175);
                      v201 = v177;
                      if (v177)
                      {
                        break;
                      }

                      if (v172 < v25)
                      {
                        goto LABEL_177;
                      }

                      if (v167 - 2 >= *v170)
                      {
                        goto LABEL_178;
                      }

                      v166 = v170;
                      *v169 = v25;
                      *(v169 + 1) = v172;
                      v178 = *v170 - v167;
                      if (*v170 < v167)
                      {
                        goto LABEL_179;
                      }

                      v167 = *v170 - 1;
                      sub_266138DCC(v171 + 16, v178, v171);
                      *v170 = v167;
                    }

                    swift_bridgeObjectRelease_n();
                  }

                  v131 = [v129 value];
                  if (!v131)
                  {
                    goto LABEL_198;
                  }

                  v132 = sub_26615674C(v131);
                  if (v133)
                  {
                    break;
                  }

LABEL_104:

                  v44 = v210;
                }

                if (v132 != v25 || v133 != v119)
                {
                  v135 = sub_26618D000();

                  if (v135)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_104;
                }

LABEL_110:
                v44 = v210;
LABEL_111:
                v136 = 0;
                while (2)
                {
                  if (v127 == v136)
                  {
                    v25 = 0;
                    goto LABEL_128;
                  }

                  if (v202)
                  {
                    v137 = MEMORY[0x26677C150](v136, v44);
                  }

                  else
                  {
                    if (v136 >= *(v203 + 2))
                    {
                      goto LABEL_172;
                    }

                    v137 = *(v44 + 8 * v136 + 32);
                  }

                  v25 = v137;
                  if (__OFADD__(v136, 1))
                  {
                    goto LABEL_171;
                  }

                  v138 = [v137 value];
                  if (!v138)
                  {
                    goto LABEL_199;
                  }

                  v139 = sub_26615674C(v138);
                  if (!v140)
                  {
LABEL_124:

                    ++v136;
                    v44 = v210;
                    continue;
                  }

                  break;
                }

                if (v139 != v124 || v140 != v126)
                {
                  v142 = sub_26618D000();

                  if (v142)
                  {
                    goto LABEL_128;
                  }

                  goto LABEL_124;
                }

LABEL_128:
                v143 = v188;
                v144 = v187;
                if (!v130)
                {

                  __swift_storeEnumTagSinglePayload(v143, 1, 1, v144);
                  goto LABEL_145;
                }

                v145 = [v130 startDate];
                if (v145)
                {
                  v146 = v145;
                  v147 = v190;
                  sub_26618A590();

                  v148 = 0;
                }

                else
                {
                  v148 = 1;
                  v147 = v190;
                }

                __swift_storeEnumTagSinglePayload(v147, v148, 1, v144);
                sub_266156834(v147, v143);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v143, 1, v144);
                v150 = v198;
                if (EnumTagSinglePayload == 1)
                {

LABEL_145:
                  v163 = v143;
LABEL_149:
                  sub_2661567CC(v163);

                  v44 = v210;
                  v27 = v194;
                  v26 = v191;
                  v117 = v184;
                  goto LABEL_150;
                }

                v151 = *v195;
                (*v195)(v197, v143, v144);
                if (!v25)
                {
                  (*v185)(v197, v144);

                  __swift_storeEnumTagSinglePayload(v150, 1, 1, v144);
LABEL_148:
                  v163 = v150;
                  goto LABEL_149;
                }

                v152 = [v25 startDate];
                if (v152)
                {
                  v153 = v152;
                  v154 = v189;
                  sub_26618A590();

                  v155 = v154;
                  v156 = 0;
                }

                else
                {
                  v156 = 1;
                  v155 = v189;
                }

                __swift_storeEnumTagSinglePayload(v155, v156, 1, v144);
                v157 = v155;
                v150 = v198;
                sub_266156834(v157, v198);
                if (__swift_getEnumTagSinglePayload(v150, 1, v144) == 1)
                {
                  (*v185)(v197, v144);

                  goto LABEL_148;
                }

                v158 = v186;
                v151(v186, v150, v144);
                v159 = v197;
                v160 = sub_26618A560();

                v161 = *v185;
                (*v185)(v158, v144);
                v161(v159, v144);

                v44 = v210;
                v123 = v193;
                v27 = v194;
                v26 = v191;
                v122 = v192;
                v117 = v184;
                v121 = v196;
                if ((v160 & 1) == 0)
                {
                  goto LABEL_150;
                }

LABEL_139:
                if (!v117)
                {
                  goto LABEL_201;
                }

                --v121;
                v25 = *v122;
                v119 = *(v122 + 8);
                v120 = *(v122 + 16);
                *v122 = *v123;
                *(v122 + 16) = *(v123 + 16);
                *v123 = v25;
                *(v123 + 8) = v119;
                *(v123 + 16) = v120;
                if (v121 == v26)
                {
                  goto LABEL_150;
                }
              }

              if (v125 < v120)
              {
                goto LABEL_139;
              }

LABEL_150:
              if (++v27 == v181)
              {
                v27 = v181;
                v25 = j;
                goto LABEL_34;
              }
            }
          }
        }

        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_201:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_202:

        __break(1u);
LABEL_203:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_204:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_205:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }
    }

LABEL_34:
    if (v27 < v26)
    {
      goto LABEL_192;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2661299B0();
      v25 = v164;
    }

    v67 = *(v25 + 2);
    v68 = v67 + 1;
    if (v67 >= *(v25 + 3) >> 1)
    {
      sub_2661299B0();
      v25 = v165;
    }

    *(v25 + 2) = v68;
    v69 = v25 + 32;
    v70 = &v25[16 * v67 + 32];
    v71 = v194;
    *v70 = v26;
    *(v70 + 1) = v71;
    j = *v183;
    if (!j)
    {
      goto LABEL_204;
    }

    if (v67)
    {
      break;
    }

LABEL_84:
    v22 = v200[1];
    v24 = v194;
    if (v194 >= v22)
    {
      goto LABEL_153;
    }
  }

  v196 = v25 + 32;
  while (1)
  {
    v72 = v68 - 1;
    v73 = &v69[16 * v68 - 16];
    v74 = &v25[16 * v68];
    if (v68 >= 4)
    {
      v79 = &v69[16 * v68];
      v80 = *(v79 - 8);
      v81 = *(v79 - 7);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_180;
      }

      v84 = *(v79 - 6);
      v83 = *(v79 - 5);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_181;
      }

      v86 = *(v74 + 1);
      v87 = v86 - *v74;
      if (__OFSUB__(v86, *v74))
      {
        goto LABEL_183;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_186;
      }

      if (v88 >= v82)
      {
        v102 = *v73;
        v101 = *(v73 + 1);
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_191;
        }

        if (v77 < v103)
        {
          v72 = v68 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_55;
    }

    if (v68 == 3)
    {
      v75 = *(v25 + 4);
      v76 = *(v25 + 5);
      v85 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      v78 = v85;
LABEL_55:
      if (v78)
      {
        goto LABEL_182;
      }

      v90 = *v74;
      v89 = *(v74 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_185;
      }

      v94 = *(v73 + 1);
      v95 = v94 - *v73;
      if (__OFSUB__(v94, *v73))
      {
        goto LABEL_188;
      }

      if (__OFADD__(v92, v95))
      {
        goto LABEL_190;
      }

      if (v92 + v95 >= v77)
      {
        if (v77 < v95)
        {
          v72 = v68 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    if (v68 < 2)
    {
      goto LABEL_184;
    }

    v97 = *v74;
    v96 = *(v74 + 1);
    v85 = __OFSUB__(v96, v97);
    v92 = v96 - v97;
    v93 = v85;
LABEL_70:
    if (v93)
    {
      goto LABEL_187;
    }

    v99 = *v73;
    v98 = *(v73 + 1);
    v85 = __OFSUB__(v98, v99);
    v100 = v98 - v99;
    if (v85)
    {
      goto LABEL_189;
    }

    if (v100 < v92)
    {
      goto LABEL_84;
    }

LABEL_77:
    if (v72 - 1 >= v68)
    {
      goto LABEL_173;
    }

    v104 = *v200;
    if (!*v200)
    {
      goto LABEL_200;
    }

    v105 = v25;
    v106 = &v69[16 * v72 - 16];
    v107 = *v106;
    v108 = v72;
    v109 = &v69[16 * v72];
    v110 = *(v109 + 1);
    v111 = (v104 + 24 * *v106);
    v112 = (v104 + 24 * *v109);
    v113 = v104 + 24 * v110;
    v25 = v210;

    v114 = v111;
    v115 = v201;
    sub_266156394(v114, v112, v113, j, v25);
    v201 = v115;
    if (v115)
    {
      break;
    }

    if (v110 < v107)
    {
      goto LABEL_174;
    }

    v25 = v105;
    v116 = *(v105 + 2);
    if (v108 > v116)
    {
      goto LABEL_175;
    }

    *v106 = v107;
    *(v106 + 1) = v110;
    if (v108 >= v116)
    {
      goto LABEL_176;
    }

    v68 = v116 - 1;
    sub_266138DCC(v109 + 16, v116 - 1 - v108, v109);
    *(v105 + 2) = v116 - 1;
    v69 = v196;
    if (v116 <= 2)
    {
      goto LABEL_84;
    }
  }

  swift_bridgeObjectRelease_n();
LABEL_165:
}

uint64_t sub_266156394(char *a1, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v11 = (a3 - a2) / 24;
  v61 = a5;
  if (v9 < v11)
  {
    sub_266129E30(a1, (a2 - a1) / 24, a4);
    v12 = &v6[3 * v9];
    v13 = a3;
    while (1)
    {
      if (v6 >= v12 || v7 >= v13)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v15 = v7[1];
      v16 = v7;
      v17 = v7[2];
      v58 = *v7;
      v59 = v15;
      v60 = v17;
      v18 = v6[1];
      v19 = v6[2];
      v55 = *v6;
      v56 = v18;
      v57 = v19;

      sub_266154C9C(&v58, &v55, v61);
      if (v5)
      {

        v45 = (v12 - v6) / 24;
        if (v8 < v6 || v8 >= &v6[3 * v45])
        {
          v43 = 24 * v45;
          v44 = v8;
          v47 = v6;
          goto LABEL_54;
        }

        if (v8 != v6)
        {
          v43 = 24 * v45;
          v44 = v8;
LABEL_51:
          v47 = v6;
LABEL_54:
          memmove(v44, v47, v43);
        }

        goto LABEL_55;
      }

      v21 = v20;

      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = v16;
      v7 = v16 + 3;
      v13 = a3;
      if (v8 != v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 24;
    }

    v22 = v6;
    v23 = v8 == v6;
    v6 += 3;
    v13 = a3;
    v7 = v16;
    if (v23)
    {
      goto LABEL_13;
    }

LABEL_12:
    v24 = *v22;
    *(v8 + 2) = v22[2];
    *v8 = v24;
    goto LABEL_13;
  }

  sub_266129E30(a2, (a3 - a2) / 24, a4);
  v54 = &v6[3 * v11];
  v25 = a3;
  __src = v6;
LABEL_15:
  v26 = 0;
  v51 = v7 - 3;
  while (1)
  {
    v12 = &v54[v26 / 8];
    if (&v54[v26 / 8] <= v6 || v7 <= a1)
    {
LABEL_29:
      v41 = (v12 - v6) / 24;
      if (v7 < v6 || v7 >= &v6[3 * v41])
      {
        memmove(v7, v6, 24 * v41);
      }

      else if (v7 != v6)
      {
        v43 = 24 * v41;
        v44 = v7;
        goto LABEL_51;
      }

      goto LABEL_55;
    }

    v28 = v25;
    v30 = *(v12 - 2);
    v29 = v12 - 3;
    v31 = *(v12 - 1);
    v58 = *(v12 - 3);
    v59 = v30;
    v60 = v31;
    v32 = *(v7 - 2);
    v33 = v7;
    v34 = *(v7 - 1);
    v55 = *(v7 - 3);
    v56 = v32;
    v57 = v34;

    sub_266154C9C(&v58, &v55, v61);
    if (v5)
    {
      break;
    }

    v36 = v35;

    v37 = (v28 + v26);
    v38 = v28 + v26 - 24;
    if (v36)
    {
      v54 = (v54 + v26);
      v25 = v28 + v26 - 24;
      v6 = __src;
      v7 = v51;
      if (v37 != v33)
      {
        v40 = *v51;
        *(v38 + 16) = v51[2];
        *v38 = v40;
        v7 = v51;
        v25 = v38;
      }

      goto LABEL_15;
    }

    v25 = v28;
    if (&v54[v26 / 8] != (v28 + v26))
    {
      v39 = *v29;
      *(v28 + v26 - 8) = v29[2];
      *v38 = v39;
    }

    v26 -= 24;
    v6 = __src;
    v7 = v33;
  }

  v47 = __src;
  v48 = (v54 - __src + v26) / 24;
  if (v7 < __src || v7 >= &__src[3 * v48])
  {
    v43 = 24 * v48;
    v44 = v7;
    goto LABEL_54;
  }

  if (v7 != __src)
  {
    v43 = 24 * v48;
    v44 = v7;
    goto LABEL_54;
  }

LABEL_55:

  return 1;
}

uint64_t sub_26615674C(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26618C8B0();

  return v3;
}

uint64_t sub_2661567BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2661567CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266156834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_4_20()
{
  v2 = *(v0 - 264);
}

id sub_2661568EC(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CFE208]) init];
  v7[0] = 0;
  v3 = [v2 executeQuery:a1 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_26618A4C0();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2661569E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C998, &qword_266193EC0);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  sub_2661571A4(&unk_2877C9A20, 1, &v9 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) != 1;
  sub_2660C8040(v5, &qword_28005C998, &qword_266193EC0);
  return sub_266156ACC(a1, v7) & 0x101;
}

uint64_t sub_266156ACC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v71 = v4;
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v70 = v6 - v5;
  OUTLINED_FUNCTION_18_2();
  sub_26618A660();
  OUTLINED_FUNCTION_2_2();
  v79 = v8;
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v77 = v10 - v9;
  OUTLINED_FUNCTION_18_2();
  v78 = sub_26618A670();
  OUTLINED_FUNCTION_2_2();
  v76 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v74 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C948, &unk_266193DB0);
  v16 = OUTLINED_FUNCTION_3_0(v15);
  MEMORY[0x28223BE20](v16);
  v75 = &v68 - v17;
  OUTLINED_FUNCTION_18_2();
  v73 = sub_26618A5B0();
  OUTLINED_FUNCTION_2_2();
  v81 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_24_1();
  v69 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C998, &qword_266193EC0);
  v26 = OUTLINED_FUNCTION_3_0(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_24_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v68 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_1();
  v36 = v34 - v35;
  v38 = MEMORY[0x28223BE20](v37);
  v68 = &v68 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v68 - v40;
  sub_2661571A4(&unk_2877C99C8, v2, v32);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_2660C8040(v32, &qword_28005C998, &qword_266193EC0);
    sub_2661571A4(&unk_2877C99F0, v2 & 1, v29);
    if (__swift_getEnumTagSinglePayload(v29, 1, v33) == 1)
    {
      sub_2660C8040(v29, &qword_28005C998, &qword_266193EC0);
      v42 = 0;
      v43 = 0;
    }

    else
    {
      sub_266157674(v29, v36);
      v58 = *(v36 + *(v33 + 48));
      sub_2660C8040(v36, &qword_28005C990, &unk_266193EB0);
      v43 = 0;
      v42 = v58 > 2;
    }
  }

  else
  {
    sub_266157674(v32, v41);
    sub_26618A5A0();
    v44 = v74;
    sub_26618A650();
    v45 = v79;
    v46 = v80;
    v47 = v77;
    (*(v79 + 104))(v77, *MEMORY[0x277CC9968], v80);
    v48 = v75;
    sub_26618A640();
    (*(v45 + 8))(v47, v46);
    (*(v76 + 8))(v44, v78);
    v49 = v73;
    if (__swift_getEnumTagSinglePayload(v48, 1, v73) == 1)
    {
      v80 = v41;
      sub_2660C8040(v48, &qword_28005C948, &unk_266193DB0);
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      v50 = v72;
      v51 = __swift_project_value_buffer(v72, qword_2814B4A98);
      v53 = v70;
      v52 = v71;
      (*(v71 + 16))(v70, v51, v50);
      v54 = sub_26618C690();
      v55 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_16_4(v55))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v56, v57, "SiriRemembersStoreProvider.getValidAggregateEntityUsage: Unable to create date range. We have to try to confirm");
        OUTLINED_FUNCTION_28_3();
      }

      (*(v52 + 8))(v53, v50);
      (*(v81 + 8))(v24, v49);
      sub_2660C8040(v80, &qword_28005C990, &unk_266193EB0);
      v43 = 256;
    }

    else
    {
      v59 = v81;
      v60 = v69;
      (*(v81 + 32))(v69, v48, v49);
      v61 = v68;
      sub_2661576E4(v41, v68);
      sub_26618A580();
      v63 = v62;
      v64 = *(v59 + 8);
      v64(v61, v49);
      sub_26618A580();
      v66 = v65 >= v63;
      v64(v60, v49);
      v64(v24, v49);
      sub_2660C8040(v41, &qword_28005C990, &unk_266193EB0);
      v43 = v66 << 8;
    }

    v42 = 1;
  }

  return v43 | v42;
}

uint64_t sub_2661571A4@<X0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v60 = a2;
  v64 = a4;
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v59 = &v57 - v11;
  OUTLINED_FUNCTION_18_2();
  sub_26618A5B0();
  OUTLINED_FUNCTION_2_2();
  v57 = v13;
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C988, &qword_2661949F0);
  v18 = OUTLINED_FUNCTION_3_0(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = sub_26618C190();
  OUTLINED_FUNCTION_2_2();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_4();
  v27 = v26 - v25;
  v28 = sub_26618C4D0();
  if (!v29)
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v41 = v63;
    v42 = __swift_project_value_buffer(v63, qword_2814B4A98);
    v43 = v62;
    (*(v62 + 16))(v9, v42, v41);
    v44 = sub_26618C690();
    v45 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v45))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v46, v47, "SiriRemembersStoreProvider.getEventData: Unable to search Siri Remembers for a nil roomName");
      OUTLINED_FUNCTION_28_3();
    }

    (*(v43 + 8))(v9, v41);
    goto LABEL_13;
  }

  v30 = v28;
  v31 = v29;
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v32 = v61;
  sub_266164D78(v30, v31, v60, v20);

  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_2660C8040(v20, &qword_28005C988, &qword_2661949F0);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v33 = v63;
    v34 = __swift_project_value_buffer(v63, qword_2814B4A98);
    v35 = v62;
    v36 = v59;
    (*(v62 + 16))(v59, v34, v33);
    v37 = sub_26618C690();
    v38 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v38))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v39, v40, "SiriRemembersStoreProvider.getEventData: Did not find any previous interactions");
      OUTLINED_FUNCTION_28_3();
    }

    (*(v35 + 8))(v36, v33);
LABEL_13:
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
    v49 = v64;
    v50 = 1;
    return __swift_storeEnumTagSinglePayload(v49, v50, 1, v48);
  }

  (*(v23 + 32))(v27, v20, v21);
  sub_26618C180();
  if (v32)
  {
    v51 = sub_2660C93E8();
  }

  else
  {
    v51 = sub_2660C95D4();
  }

  v52 = v51;
  (*(v23 + 8))(v27, v21);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  v54 = *(v53 + 48);
  v55 = v64;
  (*(v57 + 32))(v64, v16, v58);
  *(v55 + v54) = v52;
  v49 = v55;
  v50 = 0;
  v48 = v53;
  return __swift_storeEnumTagSinglePayload(v49, v50, 1, v48);
}

uint64_t sub_266157674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661576E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C990, &unk_266193EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriRemembersResult(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriRemembersResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_266157808(unsigned __int8 a1, char a2)
{
  v2 = 0x656369766544;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1836019538;
    }

    else
    {
      v4 = 0x797469746E45;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656369766544;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1836019538;
    }

    else
    {
      v2 = 0x797469746E45;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15(v4);
  }

  return v8 & 1;
}

uint64_t sub_2661578DC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C65636E6163;
  }

  else
  {
    v3 = 0x6D7269666E6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6C65636E6163;
  }

  else
  {
    v5 = 0x6D7269666E6F63;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15(v3);
  }

  return v8 & 1;
}

uint64_t sub_26615796C(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15(v4);
  }

  return v8 & 1;
}

uint64_t sub_266157A38(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x69736976656C6574;
  }

  else
  {
    v3 = 0x76745F656C707061;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v5 = 0x69736976656C6574;
  }

  else
  {
    v5 = 0x76745F656C707061;
  }

  if (a2)
  {
    v6 = 0xEA00000000006E6FLL;
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
    v8 = OUTLINED_FUNCTION_6_15(v3);
  }

  return v8 & 1;
}

uint64_t sub_266157AD0()
{
  OUTLINED_FUNCTION_8_14();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = 6647407;
      v2 = 0xE300000000000000;
      break;
    case 2:
      v2 = 0xE300000000000000;
      v5 = 7105633;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v5 = 2037277037;
      break;
    case 4:
      v2 = 0xE300000000000000;
      v5 = 6645876;
      break;
    case 5:
      v2 = 0xE500000000000000;
      v5 = 0x6573656874;
      break;
    case 6:
      v2 = 0xE200000000000000;
      v5 = 29801;
      break;
    case 7:
      v2 = 0xE400000000000000;
      v5 = 1936287860;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v1 = 6647407;
      v6 = 0xE300000000000000;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v1 = 7105633;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v1 = 2037277037;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v1 = 6645876;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v1 = 0x6573656874;
      break;
    case 6:
      v6 = 0xE200000000000000;
      v1 = 29801;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v1 = 1936287860;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15(v5);
  }

  return v8 & 1;
}

uint64_t sub_266157C5C()
{
  OUTLINED_FUNCTION_23_7();
  v3 = 1852141679;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_25_10();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_19_10();
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_18_11();
      break;
    case 4:
      v3 = OUTLINED_FUNCTION_22_8();
      v0 = 0xE90000000000006CLL;
      break;
    case 5:
      v3 = 2036427888;
      break;
    case 6:
      v0 = 0xE600000000000000;
      v3 = 0x686372616573;
      break;
    case 7:
      v0 = 0xE600000000000000;
      v5 = 1633972341;
      goto LABEL_8;
    case 8:
      v3 = 0x537070416E65706FLL;
      v0 = 0xEF63696669636570;
      break;
    case 9:
      v0 = 0xE600000000000000;
      v5 = 1634038371;
LABEL_8:
      v3 = v5 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 10:
      v3 = 0x6170206863746566;
      v0 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_24_6();
      break;
    case 2:
      OUTLINED_FUNCTION_17_11();
      break;
    case 3:
      OUTLINED_FUNCTION_16_10();
      break;
    case 4:
      OUTLINED_FUNCTION_27_4();
      v6 = 0xE90000000000006CLL;
      break;
    case 5:
      v2 = 2036427888;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v2 = 0x686372616573;
      break;
    case 7:
      v6 = 0xE600000000000000;
      v7 = 1633972341;
      goto LABEL_20;
    case 8:
      v2 = 0x537070416E65706FLL;
      v6 = 0xEF63696669636570;
      break;
    case 9:
      v6 = 0xE600000000000000;
      v7 = 1634038371;
LABEL_20:
      v2 = v7 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 10:
      v2 = 0x6170206863746566;
      v6 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6_15(v3);
  }

  return v9 & 1;
}

uint64_t sub_266157E54()
{
  OUTLINED_FUNCTION_8_14();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE300000000000000;
      v5 = 7368801;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v5 = 0x7265646C6F66;
      break;
    case 3:
      v5 = 0x6E696874656D6F73;
      v2 = 0xE900000000000067;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v6 = 0xE300000000000000;
      v1 = 7368801;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v1 = 0x7265646C6F66;
      break;
    case 3:
      v1 = 0x6E696874656D6F73;
      v6 = 0xE900000000000067;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_15(v5);
  }

  return v8 & 1;
}

uint64_t sub_266157F78()
{
  OUTLINED_FUNCTION_23_7();
  v3 = 1852141679;
  switch(v4)
  {
    case 1:
      v3 = 0x736972616D6D7573;
      v0 = 0xE900000000000065;
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_25_10();
      break;
    case 3:
      v3 = 1953068401;
      break;
    case 4:
      v0 = 0xE600000000000000;
      v3 = 0x627265566F6ELL;
      break;
    case 5:
      v3 = OUTLINED_FUNCTION_18_11();
      break;
    case 6:
      v3 = OUTLINED_FUNCTION_19_10();
      break;
    case 7:
      v3 = OUTLINED_FUNCTION_22_8();
      v0 = 0xE90000000000006CLL;
      break;
    case 8:
      v0 = 0xE600000000000000;
      v3 = 0x6574656C6564;
      break;
    case 9:
      v0 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v5 = 0xE400000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x736972616D6D7573;
      v5 = 0xE900000000000065;
      break;
    case 2:
      OUTLINED_FUNCTION_24_6();
      break;
    case 3:
      v2 = 1953068401;
      break;
    case 4:
      v5 = 0xE600000000000000;
      v2 = 0x627265566F6ELL;
      break;
    case 5:
      OUTLINED_FUNCTION_16_10();
      break;
    case 6:
      OUTLINED_FUNCTION_17_11();
      break;
    case 7:
      OUTLINED_FUNCTION_27_4();
      v5 = 0xE90000000000006CLL;
      break;
    case 8:
      v5 = 0xE600000000000000;
      v2 = 0x6574656C6564;
      break;
    case 9:
      v5 = 0xE700000000000000;
      OUTLINED_FUNCTION_8_14();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_6_15(v3);
  }

  return v7 & 1;
}

uint64_t *InstalledAppProvider.shared.unsafeMutableAddressor()
{
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8(&qword_2814B4A70);
  }

  return &static InstalledAppProvider.shared;
}

uint64_t sub_266158174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2661581C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_266129F20(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

double sub_266158220@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_266129F20(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2660CD384(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_266158284(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_266129FDC(a1), (v2 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

void *sub_2661582D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_266129F20(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

BOOL sub_266158320(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_266158400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266158430(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_266158438@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266158468(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_266158470@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2661584A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2661584A4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_2661584C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2661584FC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2661584FC(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_26615852C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26615855C(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_2661585D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2661585F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266158174(a1);
  *a2 = result;
  return result;
}

void *sub_26615861C(uint64_t a1)
{
  type metadata accessor for InstalledAppProvider();
  swift_allocObject();
  result = sub_2661588F4();
  static InstalledAppProvider.shared = result;
  return result;
}

uint64_t static InstalledAppProvider.shared.getter()
{
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8(&qword_2814B4A70);
  }
}

id sub_2661586A4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_26615CEE8(0xD000000000000018, 0x8000000266197AF0);
  qword_28005C9A0 = result;
  return result;
}

uint64_t sub_2661586F4()
{
  v0 = sub_26618C850();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_266139580(1, 0xD000000000000019, 0x80000002661979C0, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_266139580(3, 0xD00000000000001BLL, 0x8000000266199F90, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_266139580(3, 0xD000000000000018, 0x8000000266198C10, v3);
  qword_2814B47B0 = v0;
  return result;
}

uint64_t sub_2661587F4()
{
  v0 = sub_26618C850();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_266139580(1, 0xD000000000000014, 0x8000000266199F30, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_266139580(1, 0xD000000000000012, 0x8000000266199F50, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_266139580(1, 0xD000000000000016, 0x8000000266199F70, v3);
  qword_28005C9A8 = v0;
  return result;
}

void *sub_2661588F4()
{
  v1 = v0;
  v2 = *v0;
  swift_defaultActor_initialize();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_26615DCE4;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C9C8, qword_2661941B8);
  swift_allocObject();
  v1[14] = sub_26615E80C(&unk_2661941B0, v4, 120.0);
  return v1;
}

uint64_t sub_2661589E8()
{
  v133 = sub_26618A5B0();
  v126 = *(v133 - 8);
  v0 = MEMORY[0x28223BE20](v133);
  v121 = &v120 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x28223BE20](v0);
  v125 = &v120 - v3;
  MEMORY[0x28223BE20](v2);
  v135 = &v120 - v4;
  v5 = sub_26618C6B0();
  v138 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v140 = &v120 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v134 = &v120 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v120 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v137 = &v120 - v15;
  MEMORY[0x28223BE20](v14);
  v145 = &v120 - v16;
  v144 = sub_26618C600();
  v17 = *(v144 - 8);
  v18 = MEMORY[0x28223BE20](v144);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v120 - v21;
  v23 = sub_26618C630();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC40 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v23, qword_28005D100);
  (*(v24 + 16))(v26, v27, v23);
  sub_26618C5F0();
  v28 = sub_26618C620();
  v29 = sub_26618CB60();
  v30 = sub_26618CBB0();
  v132 = v5;
  if (v30)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v28, v29, v32, "installedAppProviderInstalledApps", "enableTelemetry=YES", v31, 2u);
    v33 = v31;
    v5 = v132;
    MEMORY[0x26677CC30](v33, -1, -1);
  }

  v34 = v144;
  (*(v17 + 16))(v20, v22, v144);
  sub_26618C670();
  swift_allocObject();
  v124 = sub_26618C660();
  (*(v17 + 8))(v22, v34);
  (*(v24 + 8))(v26, v23);
  if (qword_28005BC38 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v5, qword_28005D0E8);
  v36 = v138;
  v37 = *(v138 + 16);
  v38 = v145;
  v143 = v35;
  v144 = v138 + 16;
  v142 = v37;
  (v37)(v145);
  v39 = sub_26618C690();
  v40 = sub_26618CAA0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2660B7000, v39, v40, "InstalledAppProvider.lsRecordApps() starting", v41, 2u);
    MEMORY[0x26677CC30](v41, -1, -1);
  }

  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v42 = v44;
  v44(v38, v5);
  sub_26618A5A0();
  v45 = swift_allocObject();
  v123 = v45;
  v46 = MEMORY[0x277D84F90];
  *(v45 + 16) = MEMORY[0x277D84F90];
  v47 = v45 + 16;
  v130 = swift_allocObject();
  *(v130 + 16) = v46;
  v48 = [objc_opt_self() enumeratorWithOptions_];
  v141 = "installedAppProviderWarm";
  v49 = &off_279BC8000;
  v50 = &off_279BC8000;
  *&v51 = 136315138;
  v136 = v51;
  v122 = v46;
  v129 = v46;
  v138 = v43;
  v139 = v44;
  v145 = v48;
  v128 = v47;
  while (1)
  {
    v52 = [v48 v49[383]];
    if (!v52)
    {
      break;
    }

    v53 = v52;
    v54 = v52;
    if ([v54 v50[375]])
    {
    }

    else
    {
      v55 = sub_2660C9CB4(v54);
      if (v56)
      {
        v57 = v55;
        v58 = v56;
        v59 = qword_28005BC98;

        if (v59 != -1)
        {
          swift_once();
        }

        v60 = qword_28005C9A0;
        if (qword_28005C9A0)
        {
          v61 = sub_26618C8A0();
          v62 = [v60 BOOLForKey_];

          if (v62)
          {
            v63 = v43;
            v64 = v137;
            v142(v137, v143, v5);

            v65 = sub_26618C690();
            v66 = sub_26618CAA0();

            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              v146[0] = v68;
              *v67 = v136;
              *(v67 + 4) = sub_266103A98(v57, v58, v146);
              _os_log_impl(&dword_2660B7000, v65, v66, "Checking bundle: %s", v67, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v68);
              MEMORY[0x26677CC30](v68, -1, -1);
              v69 = v67;
              v5 = v132;
              v70 = v138;
              MEMORY[0x26677CC30](v69, -1, -1);

              v71 = v64;
              v43 = v70;
            }

            else
            {

              v71 = v64;
              v43 = v63;
            }

            v42 = v139;
            v139(v71, v5);
          }
        }

        if (qword_2814B4A70 != -1)
        {
          swift_once();
        }

        v77 = v54;
        v78 = InstalledAppProvider.shouldIgnoreApp(bundleId:lsRecord:for:)(v57, v58, v53, 1);

        if (v78)
        {
          if (v60)
          {

            v89 = sub_26618C8A0();
            v90 = [v60 BOOLForKey_];

            if (v90)
            {
              v91 = v120;
              v142(v120, v143, v5);

              v92 = sub_26618C690();
              v93 = sub_26618CAA0();

              if (os_log_type_enabled(v92, v93))
              {
                v94 = swift_slowAlloc();
                v95 = swift_slowAlloc();
                v146[0] = v95;
                *v94 = v136;
                *(v94 + 4) = sub_266103A98(v57, v58, v146);
                _os_log_impl(&dword_2660B7000, v92, v93, "Ignoring app: %s", v94, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v95);
                v96 = v95;
                v42 = v139;
                MEMORY[0x26677CC30](v96, -1, -1);
                MEMORY[0x26677CC30](v94, -1, -1);
              }

              v42(v91, v5);
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_266129600();
            v129 = v102;
          }

          v48 = v145;
          v97 = *(v129 + 16);
          if (v97 >= *(v129 + 24) >> 1)
          {
            sub_266129600();
            v129 = v103;
          }

          v98 = v129;
          *(v129 + 16) = v97 + 1;
          v99 = v98 + 16 * v97;
          *(v99 + 32) = v57;
          *(v99 + 40) = v58;
          v49 = &off_279BC8000;
          v50 = &off_279BC8000;
        }

        else
        {
          if (v60)
          {
            v79 = sub_26618C8A0();
            v80 = [v60 BOOLForKey_];

            if (v80)
            {
              v81 = v134;
              v142(v134, v143, v5);

              v82 = sub_26618C690();
              v83 = sub_26618CAA0();

              if (os_log_type_enabled(v82, v83))
              {
                v84 = swift_slowAlloc();
                v85 = swift_slowAlloc();
                v146[0] = v85;
                *v84 = v136;
                *(v84 + 4) = sub_266103A98(v57, v58, v146);
                _os_log_impl(&dword_2660B7000, v82, v83, "Allowing app: %s", v84, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v85);
                v86 = v85;
                v42 = v139;
                MEMORY[0x26677CC30](v86, -1, -1);
                MEMORY[0x26677CC30](v84, -1, -1);
              }

              v42(v81, v5);
            }
          }

          type metadata accessor for Application();
          v87 = v77;
          v88 = sub_2660C990C(v87);
          v49 = &off_279BC8000;
          v50 = &off_279BC8000;
          if (v88)
          {
            v100 = v88;
            v101 = v128;
            MEMORY[0x26677BD40]();
            if (*((*v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26618C9D0();
            }

            sub_26618C9F0();

            v122 = *v101;
            v48 = v145;
            v50 = &off_279BC8000;
          }

          else
          {

            v48 = v145;
          }
        }
      }

      else
      {
        v72 = v140;
        v142(v140, v143, v5);
        v73 = sub_26618C690();
        v74 = sub_26618CAB0();
        v49 = &off_279BC8000;
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_2660B7000, v73, v74, "InstalledAppProvider.lsRecordApps() error missing bundle identifier for LSApplicationRecord", v75, 2u);
          v76 = v75;
          v48 = v145;
          MEMORY[0x26677CC30](v76, -1, -1);
        }

        else
        {
        }

        v42(v72, v5);
        v50 = &off_279BC8000;
      }
    }
  }

  *(v130 + 16) = v129;
  v142(v131, v143, v5);
  v104 = v126;
  v105 = v125;
  v106 = v133;
  (*(v126 + 16))(v125, v135, v133);
  v107 = sub_26618C690();
  v108 = sub_26618CAA0();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 134218240;
    v110 = v121;
    sub_26618A5A0();
    sub_26618A530();
    v112 = v111;
    v113 = *(v104 + 8);
    v114 = v123;

    v113(v110, v133);
    v113(v105, v133);
    *(v109 + 4) = v112;
    *(v109 + 12) = 2048;
    *(v109 + 14) = sub_2661046B8();

    _os_log_impl(&dword_2660B7000, v107, v108, "InstalledAppProvider.lsRecordApps() complete in %fms with %ld apps", v109, 0x16u);
    v115 = v109;
    v106 = v133;
    MEMORY[0x26677CC30](v115, -1, -1);

    v116 = v127;
  }

  else
  {

    v113 = *(v104 + 8);
    v113(v105, v106);
    v116 = v127;
    v114 = v123;
  }

  v139(v131, v5);

  v117 = v130;

  sub_26615A9AC(v116, v114, v117);

  v113(v135, v106);
  swift_beginAccess();
  v118 = *(v114 + 16);

  sub_26615A5B4();

  return v118;
}

uint64_t sub_2661599CC(void *a1, uint64_t (*a2)(void))
{
  *a1 = a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_266159A38()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v0;
  v2 = sub_26618C600();
  v1[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = sub_26618C6B0();
  v1[7] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[8] = v5;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = sub_26618C630();
  v1[11] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[12] = v7;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266159BAC, v0, 0);
}

uint64_t sub_266159BAC()
{
  if (qword_28005BC38 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_28005BC38);
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = __swift_project_value_buffer(v0[7], qword_28005D0E8);
  v25 = *(v2 + 16);
  v26 = v3;
  v25(v1);
  sub_26618C610();
  sub_26618C5F0();
  v4 = sub_26618C620();
  v5 = sub_26618CB60();
  if (sub_26618CBB0())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v4, v5, v7, "installedAppProviderWarm", "enableTelemetry=YES", v6, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v8 = v0[12];
  v9 = v0[11];
  v10 = v0[9];
  v11 = v0[6];
  v23 = v0[13];
  v24 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];

  (*(v13 + 16))(v12, v11, v14);
  sub_26618C670();
  swift_allocObject();
  v0[14] = sub_26618C660();
  (*(v13 + 8))(v11, v14);
  (*(v8 + 8))(v23, v9);
  (v25)(v10, v26, v24);
  v15 = sub_26618C690();
  v16 = sub_26618CAD0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2660B7000, v15, v16, "InstalledAppProvider.warm() warming app search", v17, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v19 = v0[8];
  v18 = v0[9];
  v20 = v0[7];

  (*(v19 + 8))(v18, v20);
  v21 = swift_task_alloc();
  v0[15] = v21;
  *v21 = v0;
  v21[1] = sub_266159E94;

  return sub_26615C28C();
}

uint64_t sub_266159E94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_266159FA0, v2, 0);
}

uint64_t sub_266159FA0()
{
  sub_26615A04C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26615A04C()
{
  v0 = sub_26618C640();
  v22 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26618C600();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26618C6B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26618C630();
  v10 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC38 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_28005D0E8);
  (*(v7 + 16))(v9, v13, v6);
  sub_26618C610();
  v14 = sub_26618C620();
  sub_26618C650();
  v15 = sub_26618CB50();
  if (sub_26618CBB0())
  {

    sub_26618C680();

    v16 = v22;
    if ((*(v22 + 88))(v2, v0) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v2, v0);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v14, v15, v19, "installedAppProviderWarm", v17, v18, 2u);
    MEMORY[0x26677CC30](v18, -1, -1);
  }

  (*(v3 + 8))(v5, v24);
  return (*(v10 + 8))(v12, v23);
}

uint64_t sub_26615A42C()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26615A4D0;

  return sub_26615C28C();
}

uint64_t sub_26615A4D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_5_7();

  return v4(v3);
}

uint64_t sub_26615A5B4()
{
  v0 = sub_26618C640();
  v19 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v17[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_26618C600();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_26618C630();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28005BC40 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_28005D100);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_26618C620();
  sub_26618C650();
  v18 = sub_26618CB50();
  if (sub_26618CBB0())
  {

    sub_26618C680();

    v12 = v19;
    if ((*(v19 + 88))(v2, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v2, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v11, v18, v15, "installedAppProviderInstalledApps", v13, v14, 2u);
    MEMORY[0x26677CC30](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v20);
  return (*(v7 + 8))(v9, v6);
}

void sub_26615A8F8()
{
  if (qword_28005BC98 != -1)
  {
    swift_once();
  }

  v0 = qword_28005C9A0;
  if (qword_28005C9A0)
  {
    v1 = sub_26618C8A0();
    v2 = [v0 BOOLForKey_];

    if (v2)
    {

      sub_26615BB34();
    }
  }
}

uint64_t sub_26615A9AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_28005BC98 != -1)
  {
    swift_once();
  }

  v5 = qword_28005C9A0;
  if (qword_28005C9A0)
  {
    v6 = sub_26618C8A0();
    v7 = [v5 BOOLForKey_];

    if (v7)
    {
      sub_26615AA7C(a2, a3);
    }
  }
}

uint64_t sub_26615AA7C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26618C6B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC38 != -1)
  {
LABEL_21:
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_28005D0E8);
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_26618C690();
  v10 = sub_26618CAA0();

  if (os_log_type_enabled(v9, v10))
  {
    v39 = v10;
    v40 = a2;
    v41 = v9;
    v42 = v7;
    v43 = v5;
    v44 = v4;
    v4 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47 = v37;
    v38 = v4;
    *v4 = 136315394;
    swift_beginAccess();
    v11 = *(a1 + 16);
    v12 = sub_2661046B8();
    v7 = (v11 & 0xFFFFFFFFFFFFFF8);

    a2 = 0;
    v36 = 0;
    a1 = MEMORY[0x277D84F90];
    while (v12 != a2)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26677C150](a2, v11);
      }

      else
      {
        if (a2 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v13 = *(v11 + 8 * a2 + 32);
      }

      v4 = v13;
      v14 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v5 = sub_2660C9D30(v13);
      v16 = v15;

      ++a2;
      if (v16)
      {
        v17 = a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266129600();
          v17 = v19;
        }

        v4 = *(v17 + 16);
        a1 = v17;
        if (v4 >= *(v17 + 24) >> 1)
        {
          sub_266129600();
          a1 = v20;
        }

        *(a1 + 16) = v4 + 1;
        v18 = a1 + 16 * v4;
        *(v18 + 32) = v5;
        *(v18 + 40) = v16;
        a2 = v14;
      }
    }

    v46[0] = a1;

    v22 = v36;
    sub_26615CFA0(v46);
    if (v22)
    {

      __break(1u);
    }

    else
    {

      v23 = sub_26610047C(v46[0]);
      v25 = v24;

      v26 = sub_266103A98(v23, v25, &v47);

      v27 = v38;
      *(v38 + 4) = v26;
      *(v27 + 12) = 2080;
      v28 = v40;
      swift_beginAccess();
      v45 = *(v28 + 16);
      swift_bridgeObjectRetain_n();
      sub_26615CFA0(&v45);
      v29 = v39;

      v30 = sub_26610047C(v45);
      v32 = v31;

      v33 = sub_266103A98(v30, v32, &v47);

      *(v27 + 14) = v33;
      v34 = v41;
      _os_log_impl(&dword_2660B7000, v41, v29, "Launchable apps: %s\nIgnored apps: %s", v27, 0x16u);
      v35 = v37;
      swift_arrayDestroy();
      MEMORY[0x26677CC30](v35, -1, -1);
      MEMORY[0x26677CC30](v27, -1, -1);

      return (*(v43 + 8))(v42, v44);
    }
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}