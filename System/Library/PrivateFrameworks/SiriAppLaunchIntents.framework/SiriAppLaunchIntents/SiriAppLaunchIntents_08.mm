unint64_t sub_2661743F4()
{
  result = qword_2814B42B0;
  if (!qword_2814B42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42B0);
  }

  return result;
}

unint64_t sub_266174448()
{
  result = qword_28005CDB0;
  if (!qword_28005CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDB0);
  }

  return result;
}

uint64_t sub_26617449C()
{
  OUTLINED_FUNCTION_70_2();
  v1(0);
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_19_7();
  v3(v2);
  return v0;
}

unint64_t sub_2661744F4()
{
  result = qword_28005CDC0;
  if (!qword_28005CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDC0);
  }

  return result;
}

unint64_t sub_266174548()
{
  result = qword_28005CDD0;
  if (!qword_28005CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDD0);
  }

  return result;
}

unint64_t sub_26617459C()
{
  result = qword_28005CDE0;
  if (!qword_28005CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDE0);
  }

  return result;
}

unint64_t sub_2661745F0()
{
  result = qword_2814B40B0;
  if (!qword_2814B40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B40B0);
  }

  return result;
}

unint64_t sub_266174644()
{
  result = qword_28005CDF0;
  if (!qword_28005CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CDF0);
  }

  return result;
}

uint64_t sub_266174698(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266174E24(uint64_t a1)
{
  result = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for AppLaunchDataModels.AppOffloadedModel(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_266174F10(uint64_t a1)
{
  sub_266174FFC(319, &qword_2814B4868, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_266174FFC(319, &qword_2814B4840, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_26617526C(319, &qword_2814B4880, MEMORY[0x277D62ED0], MEMORY[0x277D637C8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266174FFC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26618ABE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_266175110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_266174FFC(319, &qword_2814B4868, MEMORY[0x277D837D0]);
  if (v11 <= 0x3F)
  {
    a7(319, a4, a5, a6);
    if (v12 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26617526C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_49_3();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2661752F4(uint64_t a1)
{
  sub_26617526C(319, &qword_2814B4880, MEMORY[0x277D62ED0], MEMORY[0x277D637C8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_266174FFC(319, &qword_2814B4868, MEMORY[0x277D837D0]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_2661753FC(uint64_t a1)
{
  sub_266175A30(319, &qword_2814B4860, &qword_28005C3D8, qword_266192200);
  if (v1 <= 0x3F)
  {
    sub_266174FFC(319, &qword_2814B4868, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_266175A30(319, &qword_2814B4858, &qword_28005CBC8, &qword_266194BD8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_38Tm()
{
  OUTLINED_FUNCTION_58_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_136();
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
    v4 = v1 + *(v2 + 24);
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_index_39Tm()
{
  OUTLINED_FUNCTION_26_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA80, &qword_266194B48);
  OUTLINED_FUNCTION_39_3();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CA90, &qword_266194B58);
  }

  OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void sub_266175648(uint64_t a1)
{
  sub_266174FFC(319, &qword_2814B4868, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26617526C(319, &qword_2814B4880, MEMORY[0x277D62ED0], MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266175734(uint64_t a1)
{
  sub_266175A30(319, &qword_2814B4848, &qword_28005C200, &qword_266194C10);
  if (v1 <= 0x3F)
  {
    sub_266175A30(319, &qword_2814B4890, &qword_28005C1E8, &qword_266192910);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_58_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_39_3();
  if (*(v14 + 84) == v7)
  {
    v15 = OUTLINED_FUNCTION_136();
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v15 = v8 + *(v9 + 20);
  }

  return __swift_getEnumTagSinglePayload(v15, v7, v16);
}

uint64_t __swift_store_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_39_3();
  if (*(v11 + 84) == a3)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  }

  OUTLINED_FUNCTION_109();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void sub_266175964(uint64_t a1)
{
  sub_26617526C(319, &qword_2814B4898, type metadata accessor for AppLaunchDataModels.AppResultModel, MEMORY[0x277D637C8]);
  if (v1 <= 0x3F)
  {
    sub_266175A30(319, &qword_2814B4878, &qword_28005C4D0, &qword_266191AA8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266175A30(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26618ABE0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppLaunchDataModels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppLaunchDataModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266175C38(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_114(a1);
}

_BYTE *sub_266175C84(_BYTE *result, int a2, int a3)
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

uint64_t sub_266175D90(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_119(-1);
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
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_119(v8);
}

_BYTE *sub_266175E14(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_118(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_117(result, v6);
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
          result = OUTLINED_FUNCTION_83_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266175EF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_119(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_119(v8);
}

_BYTE *sub_266175F74(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_118(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_117(result, v6);
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
          result = OUTLINED_FUNCTION_83_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_266176040(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_119(-1);
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
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_119((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_119(v8);
}

_BYTE *sub_2661760C4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_118(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_117(result, v6);
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
          result = OUTLINED_FUNCTION_83_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266176194()
{
  result = qword_28005CE88;
  if (!qword_28005CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CE88);
  }

  return result;
}

unint64_t sub_2661761EC()
{
  result = qword_28005CE90;
  if (!qword_28005CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CE90);
  }

  return result;
}

unint64_t sub_266176244()
{
  result = qword_28005CE98;
  if (!qword_28005CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CE98);
  }

  return result;
}

unint64_t sub_26617629C()
{
  result = qword_28005CEA0;
  if (!qword_28005CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEA0);
  }

  return result;
}

unint64_t sub_2661762F4()
{
  result = qword_28005CEA8;
  if (!qword_28005CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEA8);
  }

  return result;
}

unint64_t sub_26617634C()
{
  result = qword_28005CEB0;
  if (!qword_28005CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEB0);
  }

  return result;
}

unint64_t sub_2661763A4()
{
  result = qword_28005CEB8;
  if (!qword_28005CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEB8);
  }

  return result;
}

unint64_t sub_2661763FC()
{
  result = qword_28005CEC0;
  if (!qword_28005CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEC0);
  }

  return result;
}

unint64_t sub_266176454()
{
  result = qword_28005CEC8;
  if (!qword_28005CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEC8);
  }

  return result;
}

unint64_t sub_2661764AC()
{
  result = qword_28005CED0;
  if (!qword_28005CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CED0);
  }

  return result;
}

unint64_t sub_266176504()
{
  result = qword_28005CED8;
  if (!qword_28005CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CED8);
  }

  return result;
}

unint64_t sub_26617655C()
{
  result = qword_28005CEE0;
  if (!qword_28005CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEE0);
  }

  return result;
}

unint64_t sub_2661765B4()
{
  result = qword_28005CEE8;
  if (!qword_28005CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEE8);
  }

  return result;
}

unint64_t sub_26617660C()
{
  result = qword_28005CEF0;
  if (!qword_28005CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEF0);
  }

  return result;
}

unint64_t sub_266176664()
{
  result = qword_28005CEF8;
  if (!qword_28005CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CEF8);
  }

  return result;
}

unint64_t sub_2661766BC()
{
  result = qword_28005CF00;
  if (!qword_28005CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF00);
  }

  return result;
}

unint64_t sub_266176714()
{
  result = qword_28005CF08;
  if (!qword_28005CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF08);
  }

  return result;
}

unint64_t sub_26617676C()
{
  result = qword_2814B42B8;
  if (!qword_2814B42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42B8);
  }

  return result;
}

unint64_t sub_2661767C4()
{
  result = qword_2814B42C0;
  if (!qword_2814B42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42C0);
  }

  return result;
}

unint64_t sub_26617681C()
{
  result = qword_2814B40A0;
  if (!qword_2814B40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B40A0);
  }

  return result;
}

unint64_t sub_266176874()
{
  result = qword_2814B40A8;
  if (!qword_2814B40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B40A8);
  }

  return result;
}

unint64_t sub_2661768CC()
{
  result = qword_2814B4090;
  if (!qword_2814B4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4090);
  }

  return result;
}

unint64_t sub_266176924()
{
  result = qword_2814B4098;
  if (!qword_2814B4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4098);
  }

  return result;
}

unint64_t sub_26617697C()
{
  result = qword_2814B40B8;
  if (!qword_2814B40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B40B8);
  }

  return result;
}

unint64_t sub_2661769D4()
{
  result = qword_2814B40C0[0];
  if (!qword_2814B40C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B40C0);
  }

  return result;
}

unint64_t sub_266176A2C()
{
  result = qword_2814B42C8;
  if (!qword_2814B42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42C8);
  }

  return result;
}

unint64_t sub_266176A84()
{
  result = qword_2814B42D0;
  if (!qword_2814B42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42D0);
  }

  return result;
}

unint64_t sub_266176ADC()
{
  result = qword_2814B42D8;
  if (!qword_2814B42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42D8);
  }

  return result;
}

unint64_t sub_266176B34()
{
  result = qword_2814B42E0[0];
  if (!qword_2814B42E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B42E0);
  }

  return result;
}

unint64_t sub_266176B8C()
{
  result = qword_2814B42A0;
  if (!qword_2814B42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42A0);
  }

  return result;
}

unint64_t sub_266176BE4()
{
  result = qword_2814B42A8;
  if (!qword_2814B42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B42A8);
  }

  return result;
}

unint64_t sub_266176C3C()
{
  result = qword_28005CF10;
  if (!qword_28005CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF10);
  }

  return result;
}

unint64_t sub_266176C94()
{
  result = qword_28005CF18;
  if (!qword_28005CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF18);
  }

  return result;
}

unint64_t sub_266176CEC()
{
  result = qword_28005CF20;
  if (!qword_28005CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF20);
  }

  return result;
}

unint64_t sub_266176D44()
{
  result = qword_28005CF28;
  if (!qword_28005CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF28);
  }

  return result;
}

unint64_t sub_266176D9C()
{
  result = qword_28005CF30;
  if (!qword_28005CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF30);
  }

  return result;
}

unint64_t sub_266176DF4()
{
  result = qword_28005CF38;
  if (!qword_28005CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF38);
  }

  return result;
}

unint64_t sub_266176E4C()
{
  result = qword_28005CF40;
  if (!qword_28005CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF40);
  }

  return result;
}

unint64_t sub_266176EA4()
{
  result = qword_28005CF48;
  if (!qword_28005CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF48);
  }

  return result;
}

unint64_t sub_266176EFC()
{
  result = qword_28005CF50;
  if (!qword_28005CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF50);
  }

  return result;
}

unint64_t sub_266176F54()
{
  result = qword_28005CF58;
  if (!qword_28005CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF58);
  }

  return result;
}

unint64_t sub_266176FAC()
{
  result = qword_28005CF60;
  if (!qword_28005CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF60);
  }

  return result;
}

unint64_t sub_266177004()
{
  result = qword_28005CF68;
  if (!qword_28005CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF68);
  }

  return result;
}

unint64_t sub_26617705C()
{
  result = qword_28005CF70;
  if (!qword_28005CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF70);
  }

  return result;
}

unint64_t sub_2661770B4()
{
  result = qword_28005CF78;
  if (!qword_28005CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF78);
  }

  return result;
}

unint64_t sub_26617710C()
{
  result = qword_2814B4288;
  if (!qword_2814B4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4288);
  }

  return result;
}

unint64_t sub_266177164()
{
  result = qword_2814B4290;
  if (!qword_2814B4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4290);
  }

  return result;
}

unint64_t sub_2661771BC()
{
  result = qword_28005CF80;
  if (!qword_28005CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF80);
  }

  return result;
}

unint64_t sub_266177214()
{
  result = qword_28005CF88;
  if (!qword_28005CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF88);
  }

  return result;
}

unint64_t sub_26617726C()
{
  result = qword_28005CF90;
  if (!qword_28005CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF90);
  }

  return result;
}

unint64_t sub_2661772C4()
{
  result = qword_28005CF98;
  if (!qword_28005CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CF98);
  }

  return result;
}

uint64_t sub_26617734C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2660C55C0(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_9(uint64_t a1)
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_15_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26618CF50();
}

uint64_t OUTLINED_FUNCTION_22_9(uint64_t a1, uint64_t a2)
{

  return sub_26618CF30();
}

uint64_t OUTLINED_FUNCTION_23_8(uint64_t a1)
{

  return sub_26618D0F0();
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_26618ABA0();
}

uint64_t OUTLINED_FUNCTION_34_7(uint64_t a1)
{

  return sub_26618D0F0();
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FD968](a1, a2, a3, a1);
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1)
{

  return sub_26618CF30();
}

uint64_t OUTLINED_FUNCTION_78_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_91()
{
  result = *(v0 - 160);
  *(v0 - 112) = *(*(v0 - 120) + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_115(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26618D0E0();
}

uint64_t OUTLINED_FUNCTION_120(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26618D0E0();
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26618D0E0();
}

void *OUTLINED_FUNCTION_122(uint64_t a1, ...)
{

  return sub_26618D090();
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26618CF30();
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26618CFA0();
}

uint64_t OUTLINED_FUNCTION_138()
{

  return sub_26618ABD0();
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26618CF30();
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266177DCC()
{
  result = qword_28005CFB0;
  if (!qword_28005CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CFB0);
  }

  return result;
}

const char *sub_266177E34(char a1)
{
  if (a1)
  {
    return "applaunch_watchos_cdtvc";
  }

  else
  {
    return "applaunch_QuickAction";
  }
}

uint64_t static AppSearchCommands.searchMarketplaceActionProperty(appName:marketplace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D471A0]) init];
  sub_2661783F4(a3, a4, v8);
  sub_26617844C(a1, a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26618E190;
  v10 = sub_26618AB80();
  v11 = MEMORY[0x277D63778];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 32));
  *boxed_opaque_existential_0 = v8;
  *(boxed_opaque_existential_0 + 8) = 0;
  (*(*(v10 - 8) + 104))();

  return sub_26618AB60();
}

uint64_t static AppSearchCommands.searchAppStoreActionProperty(appName:)(uint64_t a1, uint64_t a2)
{
  v2 = static AppSearchCommands.searchAppStoreAceCommand(appName:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26618E190;
  v4 = sub_26618AB80();
  v5 = MEMORY[0x277D63778];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 32));
  *boxed_opaque_existential_0 = v2;
  *(boxed_opaque_existential_0 + 8) = 0;
  (*(*(v4 - 8) + 104))();

  return sub_26618AB60();
}

id static AppSearchCommands.searchAppStoreAceCommand(appName:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_26618A460();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618A450();
  sub_26618A440();
  MEMORY[0x2667797F0](0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4C0, qword_2661918E0);
  sub_26618A400();
  *(swift_allocObject() + 16) = xmmword_26618E250;
  sub_26618A3F0();
  sub_26618A3F0();
  sub_26618A3F0();
  sub_26618A410();
  v9 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_26618A420();
  v10 = sub_26618A500();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) != 1)
  {
    v11 = sub_26618A4D0();
    (*(*(v10 - 8) + 8))(v4, v10);
  }

  [v9 setPunchOutUri_];

  (*(v6 + 8))(v8, v5);
  return v9;
}

id static AppSearchCommands.searchMarketplaceAceCommand(appName:marketplace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D471A0]) init];
  sub_2661783F4(a3, a4, v8);
  sub_26617844C(a1, a2, v8);
  return v8;
}

void sub_2661783F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setMarketplace_];
}

void sub_26617844C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setKeyword_];
}

void sub_2661784E4(uint64_t a1)
{
  sub_26618CBD0();
  if (v1 <= 0x3F)
  {
    sub_2661786F0(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t *sub_2661785D0()
{

  v1 = *(*v0 + 104);
  v2 = sub_26618CBD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2661567CC(v0 + *(*v0 + 112));
  return v0;
}

uint64_t sub_266178680()
{
  sub_2661785D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2661786F0(uint64_t a1)
{
  if (!qword_2814B4A78)
  {
    sub_26618A5B0();
    v1 = sub_26618CBD0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814B4A78);
    }
  }
}

uint64_t sub_266178778@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  MEMORY[0x28223BE20](v1 - 8);
  v67 = &v60 - v2;
  OUTLINED_FUNCTION_18_2();
  sub_26618B8E0();
  OUTLINED_FUNCTION_2_2();
  v64 = v4;
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v63 = v5;
  OUTLINED_FUNCTION_18_2();
  v69 = sub_26618B980();
  OUTLINED_FUNCTION_2_2();
  v62 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_6();
  v61 = v8;
  OUTLINED_FUNCTION_18_2();
  v70 = sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v68 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_6();
  v66 = v11;
  OUTLINED_FUNCTION_18_2();
  sub_26618B7F0();
  OUTLINED_FUNCTION_2_2();
  v72 = v13;
  v73 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_6();
  v71 = v14;
  v15 = OUTLINED_FUNCTION_18_2();
  v75 = type metadata accessor for AppLaunchIntent(v15);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_4_6();
  v74 = v16;
  OUTLINED_FUNCTION_18_2();
  v17 = sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v25 = v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v60 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v60 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v60 - v36;
  sub_26618B770();
  v38 = (*(v25 + 88))(v37, v23);
  if (v38 != *MEMORY[0x277D5C128])
  {
    if (v38 == *MEMORY[0x277D5C150])
    {
      (*(v25 + 16))(v32, v37, v23);
      (*(v25 + 96))(v32, v23);
      v42 = OUTLINED_FUNCTION_33_1();
      v43(v42);
      if (sub_26618B7D0() == 0xD00000000000002ELL && 0x8000000266198300 == v44)
      {
      }

      else
      {
        v46 = sub_26618D000();

        if ((v46 & 1) == 0)
        {
          v47 = OUTLINED_FUNCTION_33_1();
          v48(v47);
          v40 = v23;
          v41 = v37;
LABEL_19:
          sub_26618B2B0();
          return (*(v25 + 8))(v41, v40);
        }
      }

      sub_26618B2A0();
      v53 = OUTLINED_FUNCTION_33_1();
      v54(v53);
      v40 = v23;
      v41 = v37;
      return (*(v25 + 8))(v41, v40);
    }

    v40 = v23;
    v41 = v37;
    if (v38 != *MEMORY[0x277D5C160])
    {
      goto LABEL_19;
    }

    (*(v25 + 16))(v29, v37, v40);
    (*(v25 + 96))(v29, v40);
    (*(v68 + 32))(v66, v29, v70);
    v49 = v63;
    sub_26618B820();
    v50 = sub_26618B8B0();
    (*(v64 + 8))(v49, v65);
    v51 = v67;
    sub_266139C58(v50, v67);

    v52 = v69;
    if (__swift_getEnumTagSinglePayload(v51, 1, v69) == 1)
    {
      sub_2661189FC(v51);
    }

    else
    {
      v56 = v61;
      v55 = v62;
      (*(v62 + 32))(v61, v51, v52);
      if (sub_26618B920() & 1) != 0 || (sub_26618B930() & 1) != 0 || (sub_26618B940())
      {
        sub_26618B2A0();
        (*(v55 + 8))(v56, v52);
        goto LABEL_26;
      }

      (*(v55 + 8))(v56, v52);
    }

    sub_26618B2B0();
LABEL_26:
    v57 = OUTLINED_FUNCTION_33_1();
    v58(v57);
    return (*(v25 + 8))(v41, v40);
  }

  (*(v25 + 16))(v35, v37, v23);
  (*(v25 + 96))(v35, v23);
  (*(v19 + 32))(v22, v35, v17);
  v39 = v74;
  (*(v19 + 16))(v74, v22, v17);
  v40 = v23;
  v41 = v37;
  if (qword_2814B3DC0 != -1)
  {
    swift_once();
  }

  sub_2660C98B4();
  sub_26618BDA0();
  if (v77 >= 2u)
  {
    sub_26618B290();
  }

  else
  {
    sub_26618B2A0();
  }

  sub_2660DD7D0(v39);
  (*(v19 + 8))(v22, v17);
  return (*(v25 + 8))(v41, v40);
}

void sub_266178F28(char a1)
{
  sub_26618C6B0();
  OUTLINED_FUNCTION_3_22();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_22();
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v7 = __swift_project_value_buffer(v2, qword_2814B4A80);
  (*(v5 + 16))(v1, v7, v2);
  v8 = sub_26618C690();
  v9 = sub_26618CAD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = 0x73736563637573;
    }

    else
    {
      v12 = 0x6572756C696166;
    }

    v13 = sub_266103A98(v12, 0xE700000000000000, aBlock);

    *(v10 + 4) = v13;
    OUTLINED_FUNCTION_5_17(&dword_2660B7000, v14, v15, "CoreAnalyticsService#reportSubmitToRemoteResults sending a com.apple.siri.applaunch.submitToRemoteResults event with result = %s.");
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26677CC30](v11, -1, -1);
    MEMORY[0x26677CC30](v10, -1, -1);
  }

  (*(v5 + 8))(v1, v2);
  v16 = OUTLINED_FUNCTION_6_18();
  v17 = swift_allocObject();
  *(v17 + 16) = a1 & 1;
  aBlock[4] = sub_2661798A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_24();
  aBlock[2] = v18;
  aBlock[3] = &block_descriptor_16;
  v19 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

uint64_t sub_2661791A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFB8, &qword_2661969C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E190;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_26618CA00();
  sub_2660CD344(0, &qword_28005C0D8, 0x277D82BB8);
  return sub_26618C850();
}

id sub_266179250(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2660CD344(0, &qword_28005C0D8, 0x277D82BB8);
    v4 = sub_26618C830();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2661792EC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = OUTLINED_FUNCTION_6_18();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a2;
  v8[4] = sub_26617989C;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  OUTLINED_FUNCTION_0_24();
  v8[2] = v6;
  v8[3] = &block_descriptor_10;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

uint64_t sub_2661793C4(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFB8, &qword_2661969C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E180;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000026619A440;
  v3 = sub_26618C8A0();

  *(inited + 48) = v3;
  *(inited + 56) = 0x7250656369766564;
  *(inited + 64) = 0xEF7974696D69786FLL;
  *(inited + 72) = sub_26618CA70();
  sub_2660CD344(0, &qword_28005C0D8, 0x277D82BB8);
  return sub_26618C850();
}

void sub_266179554(uint64_t a1)
{
  sub_26618C6B0();
  OUTLINED_FUNCTION_3_22();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_22();
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v7 = __swift_project_value_buffer(v2, qword_2814B4A80);
  (*(v5 + 16))(v1, v7, v2);
  v8 = sub_26618C690();
  v9 = sub_26618CAA0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    OUTLINED_FUNCTION_5_17(&dword_2660B7000, v11, v12, "sending com.apple.siri.applaunch.cdtvc.deviceDisambigSelectedSlot with spot %ld");
    MEMORY[0x26677CC30](v10, -1, -1);
  }

  (*(v5 + 8))(v1, v2);
  v13 = sub_26618C8A0();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  aBlock[4] = sub_26617987C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_24();
  aBlock[2] = v15;
  aBlock[3] = &block_descriptor_3;
  v16 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

uint64_t sub_26617976C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFB8, &qword_2661969C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E180;
  *(inited + 32) = 0x65636E6174736E69;
  *(inited + 40) = 0xE800000000000000;
  sub_2660CD344(0, &qword_2814B2BF8, 0x277CCABB0);
  *(inited + 48) = sub_26618CB80();
  *(inited + 56) = 1953460339;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_26618CA70();
  sub_2660CD344(0, &qword_28005C0D8, 0x277D82BB8);
  return sub_26618C850();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_5_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return sub_26618C8A0();
}

uint64_t sub_266179954(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_266179994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2661799FC()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_30_8(v1);
  OUTLINED_FUNCTION_3_0(v2);
  v3 = OUTLINED_FUNCTION_8_2();
  v4 = OUTLINED_FUNCTION_28_11(v3);
  v0[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_8_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v6);
  v7 = OUTLINED_FUNCTION_8_2();
  v8 = OUTLINED_FUNCTION_27_6(v7);
  OUTLINED_FUNCTION_3_0(v8);
  v0[9] = OUTLINED_FUNCTION_8_2();
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266179AF4()
{
  OUTLINED_FUNCTION_18();
  v0 = type metadata accessor for LaunchAppCATPatternsExecutor(0);
  OUTLINED_FUNCTION_26_9(v0);
  OUTLINED_FUNCTION_20_14();
  v1 = sub_26618C2D0();
  OUTLINED_FUNCTION_24_8(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_23_9(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_9(v3);

  return sub_2660BE88C(v5);
}

uint64_t sub_266179B94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_31_12(v5);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266179C94()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 64);
  v2 = sub_26618B440();
  OUTLINED_FUNCTION_12_14(v2);
  v3 = swift_task_alloc();
  *(v3 + 16) = 256;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  OUTLINED_FUNCTION_14_16();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_0_25(v6);
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v8);
}

uint64_t sub_266179D7C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266179E74()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_30_8(v1);
  OUTLINED_FUNCTION_3_0(v2);
  v3 = OUTLINED_FUNCTION_8_2();
  v4 = OUTLINED_FUNCTION_28_11(v3);
  v0[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_8_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v6);
  v7 = OUTLINED_FUNCTION_8_2();
  v8 = OUTLINED_FUNCTION_27_6(v7);
  OUTLINED_FUNCTION_3_0(v8);
  v0[9] = OUTLINED_FUNCTION_8_2();
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266179F6C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 24);
  v2 = type metadata accessor for CloseAppCATPatternsExecutor(0);
  OUTLINED_FUNCTION_26_9(v2);
  OUTLINED_FUNCTION_20_14();
  v3 = sub_26618C2D0();
  OUTLINED_FUNCTION_24_8(v3);
  v4 = *(v1 + 88);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_23_9(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_11_9(v6);

  return sub_2660BC904(v8, v4);
}

uint64_t sub_26617A020()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_31_12(v5);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26617A120()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 64);
  v2 = sub_26618B440();
  OUTLINED_FUNCTION_12_14(v2);
  v3 = swift_task_alloc();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  OUTLINED_FUNCTION_14_16();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_0_25(v6);
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v8);
}

uint64_t sub_26617A204()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26617A2FC()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[12];
  v2 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_2660FFE1C(v2);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_41_3();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_26617A3A8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[12];
  v2 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_2660FFE1C(v2);

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_26617A454()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_26617A4E0()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 144) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v6);
  *(v1 + 48) = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B6A0();
  *(v1 + 56) = v7;
  OUTLINED_FUNCTION_0_4(v7);
  *(v1 + 64) = v8;
  *(v1 + 72) = OUTLINED_FUNCTION_8_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v9);
  *(v1 + 80) = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v10);
  *(v1 + 88) = OUTLINED_FUNCTION_8_2();
  v11 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26617A5F8()
{
  OUTLINED_FUNCTION_1_0();
  type metadata accessor for LaunchAppCATPatternsExecutor(0);
  sub_26618C330();
  OUTLINED_FUNCTION_20_14();
  *(v0 + 96) = sub_26618C2D0();
  OUTLINED_FUNCTION_22_10(qword_26618E420);

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_26617A6E0;

  return v3(0);
}

uint64_t sub_26617A6E0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26617A7E8()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 80);
  v2 = sub_26618B440();
  OUTLINED_FUNCTION_12_14(v2);
  v3 = swift_task_alloc();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  OUTLINED_FUNCTION_14_16();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_26617A8E0;
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v6);
}

uint64_t sub_26617A8E0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26617A9D8()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_21_13();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_26617AA58()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v5);
  v1[6] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B6A0();
  v1[7] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_8_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v8);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v9);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v10 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26617AB6C()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  type metadata accessor for LaunchAppCATPatternsExecutor(0);

  sub_26618C330();
  OUTLINED_FUNCTION_20_14();
  *(v0 + 96) = sub_26618C2D0();
  OUTLINED_FUNCTION_22_10(&qword_26618E418);

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_11_9(v1);
  OUTLINED_FUNCTION_41_3();

  return v6(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26617AC60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26617AD7C()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 80);
  v2 = sub_26618B440();
  OUTLINED_FUNCTION_12_14(v2);
  v3 = swift_task_alloc();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  OUTLINED_FUNCTION_14_16();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_26617AE74;
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v6);
}

uint64_t sub_26617AE74()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26617AF6C()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[14];
  v2 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_2660FFE1C(v2);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_41_3();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_26617B018()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[14];
  v2 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_2660FFE1C(v2);

  OUTLINED_FUNCTION_21_13();

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_26617B0B8()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_21_13();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

void sub_26617B14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26618A500();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v37 - v11;
  v12 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v41 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  v18 = OUTLINED_FUNCTION_3_0(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  sub_26617B97C(a1, a2);
  v21 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_26618A4F0();
  if (__swift_getEnumTagSinglePayload(v20, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {

    v22 = sub_26618A4D0();
    v39 = *(v6 + 8);
    v39(v20, v4);
    [v21 setPunchOutUri_];

    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v12, qword_2814B4A98);
    v24 = v41;
    (*(v14 + 16))(v41, v23, v12);
    v25 = v21;
    v26 = sub_26618C690();
    v27 = v14;
    v28 = sub_26618CAA0();
    if (!os_log_type_enabled(v26, v28))
    {

      (*(v27 + 8))(v24, v12);
      return;
    }

    v37 = v27;
    v38 = v12;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 136315138;
    v31 = [v25 punchOutUri];

    if (v31)
    {
      sub_26618A4E0();

      v32 = v40;
      (*(v6 + 32))(v40, v10, v4);
      sub_26617BF98();
      v33 = sub_26618CFD0();
      v35 = v34;
      v39(v32, v4);
      v36 = sub_266103A98(v33, v35, &v42);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_2660B7000, v26, v28, "Adding button punchout: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26677CC30](v30, -1, -1);
      MEMORY[0x26677CC30](v29, -1, -1);

      (*(v37 + 8))(v41, v38);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_26617B588()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_30_8(v1);
  OUTLINED_FUNCTION_3_0(v2);
  v3 = OUTLINED_FUNCTION_8_2();
  v4 = OUTLINED_FUNCTION_28_11(v3);
  v0[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_8_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v6);
  v7 = OUTLINED_FUNCTION_8_2();
  v8 = OUTLINED_FUNCTION_27_6(v7);
  OUTLINED_FUNCTION_3_0(v8);
  v0[9] = OUTLINED_FUNCTION_8_2();
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26617B680()
{
  OUTLINED_FUNCTION_18();
  v0 = type metadata accessor for CloseAppCATPatternsExecutor(0);
  OUTLINED_FUNCTION_26_9(v0);
  OUTLINED_FUNCTION_20_14();
  v1 = sub_26618C2D0();
  OUTLINED_FUNCTION_24_8(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_23_9(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_9(v3);

  return sub_2660BC638(v5);
}

uint64_t sub_26617B720()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_31_12(v5);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26617B820()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = sub_26618C020();
  OUTLINED_FUNCTION_41_0(v3);
  sub_26618C010();
  v4 = sub_26618BF10();
  OUTLINED_FUNCTION_41_0(v4);
  sub_26618BF00();
  sub_26618C050();

  sub_266149C64();

  sub_26618B1B0();
  v5 = swift_task_alloc();
  *(v5 + 16) = 256;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_10(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_25(v8);

  return MEMORY[0x2821BB480](v10);
}

unint64_t sub_26617B97C(uint64_t a1, uint64_t a2)
{
  result = 0xD000000000000024;
  if (a2)
  {
    MEMORY[0x26677BCF0](a1);
    MEMORY[0x26677BCF0](47, 0xE100000000000000);

    return 0xD000000000000024;
  }

  return result;
}

uint64_t sub_26617B9FC()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_30_8(v1);
  OUTLINED_FUNCTION_3_0(v2);
  v3 = OUTLINED_FUNCTION_8_2();
  v4 = OUTLINED_FUNCTION_28_11(v3);
  v0[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_8_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v6);
  v7 = OUTLINED_FUNCTION_8_2();
  v8 = OUTLINED_FUNCTION_27_6(v7);
  OUTLINED_FUNCTION_3_0(v8);
  v0[9] = OUTLINED_FUNCTION_8_2();
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26617BAF4()
{
  OUTLINED_FUNCTION_18();
  v0 = type metadata accessor for LaunchAppCATPatternsExecutor(0);
  OUTLINED_FUNCTION_26_9(v0);
  OUTLINED_FUNCTION_20_14();
  v1 = sub_26618C2D0();
  OUTLINED_FUNCTION_24_8(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_23_9(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_9(v3);

  return sub_2660BEEE8(v5);
}

uint64_t sub_26617BB94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_31_12(v5);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26617BC94()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = sub_26618C000();
  OUTLINED_FUNCTION_41_0(v3);
  sub_26618BFF0();
  v4 = sub_26618BF10();
  OUTLINED_FUNCTION_41_0(v4);
  sub_26618BF00();
  sub_26618C050();

  sub_266149C64();

  sub_26618B1B0();
  v5 = swift_task_alloc();
  *(v5 + 16) = 256;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  OUTLINED_FUNCTION_2_22();
  sub_26618B620();

  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_10(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_25(v8);

  return MEMORY[0x2821BB480](v10);
}

uint64_t sub_26617BDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCF0, &unk_26618E2F0);
  v7 = OUTLINED_FUNCTION_3_0(v6);
  result = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  if (a4)
  {
    swift_bridgeObjectRetain_n();
    sub_26618C2F0();
    v11 = sub_26618C300();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    found = type metadata accessor for LaunchAppRemoteDevicesNotFoundParameters(0);
    return sub_2660BDBE8(v10, a1 + *(found + 24));
  }

  return result;
}

uint64_t sub_26617BEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  sub_26618B650();
  sub_26618B680();
  sub_2660FFDAC(a4, v8);
  sub_26618B660();

  return sub_26618B670();
}

unint64_t sub_26617BF98()
{
  result = qword_28005C2F0;
  if (!qword_28005C2F0)
  {
    sub_26618A500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C2F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_26618B1B0();
}

uint64_t OUTLINED_FUNCTION_21_13()
{
}

uint64_t OUTLINED_FUNCTION_26_9(uint64_t a1)
{

  return sub_26618C330();
}

uint64_t OUTLINED_FUNCTION_27_6(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_26618C340();
}

uint64_t OUTLINED_FUNCTION_28_11(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_26618B6A0();
}

uint64_t OUTLINED_FUNCTION_30_8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_26618B1E0();
}

uint64_t OUTLINED_FUNCTION_31_12(uint64_t a1)
{
  *(v1 + 96) = a1;
  *(v1 + 104) = v2;
}

uint64_t sub_26617C174()
{
  sub_26618A3E0();
  swift_allocObject();
  result = sub_26618A3D0();
  qword_2814B31C0 = result;
  return result;
}

uint64_t sub_26617C1B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_26617C208(char a1)
{
  if (a1)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 0x6D7269666E6F63;
  }
}

uint64_t sub_26617C23C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26617C208(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26617C268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26618CB20();
  OUTLINED_FUNCTION_2_2();
  v74 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_6();
  v72 = v11;
  sub_26618C7E0();
  OUTLINED_FUNCTION_2_2();
  v63 = v13;
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_6();
  v62 = v14;
  sub_26618CB10();
  OUTLINED_FUNCTION_2_2();
  v78 = v16;
  v79 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_69_0();
  v71 = v17;
  MEMORY[0x28223BE20](v18);
  v76 = &v59 - v19;
  v20 = sub_26618C820();
  OUTLINED_FUNCTION_2_2();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_69_0();
  v70 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  v28 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v77 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_6();
  v75 = v31;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_26618CD80();

  v80 = 0xD000000000000019;
  v81 = 0x800000026619A490;
  MEMORY[0x26677BCF0](a1, a2);
  v33 = v80;
  v32 = v81;
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v28, qword_2814B4A80);
  (*(v77 + 16))(v75, v34, v28);
  v67 = v28;
  v35 = *(v22 + 16);
  v73 = a3;
  v69 = v35;
  v35(v27, a3, v20);
  v66 = v20;
  v68 = *(v78 + 16);
  v68(v76, a4, v79);

  v36 = v32;
  v37 = sub_26618C690();
  v38 = sub_26618CAA0();

  v39 = os_log_type_enabled(v37, v38);
  v65 = v36;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v61 = v8;
    v41 = v40;
    v42 = swift_slowAlloc();
    v60 = a4;
    v59 = v42;
    v80 = v42;
    *v41 = 136315650;
    *(v41 + 4) = sub_266103A98(v33, v36, &v80);
    *(v41 + 12) = 1024;
    v43 = v62;
    sub_26618C810();
    v44 = sub_26618C7D0();
    (*(v63 + 8))(v43, v64);
    v45 = v66;
    (*(v22 + 8))(v27, v66);
    *(v41 + 14) = v44;
    *(v41 + 18) = 2048;
    v46 = v76;
    v47 = sub_26618CB00();
    v48 = v46;
    v49 = v79;
    (*(v78 + 8))(v48, v79);
    *(v41 + 20) = v47;
    _os_log_impl(&dword_2660B7000, v37, v38, "Creating DispatchQueue: %s with qos: %u and attributes: %llu", v41, 0x1Cu);
    v50 = v59;
    __swift_destroy_boxed_opaque_existential_1(v59);
    a4 = v60;
    MEMORY[0x26677CC30](v50, -1, -1);
    v51 = v41;
    v8 = v61;
    MEMORY[0x26677CC30](v51, -1, -1);

    v52 = OUTLINED_FUNCTION_2_23();
    v53(v52);
    v54 = v45;
  }

  else
  {
    v55 = v79;
    (*(v78 + 8))(v76, v79);
    v54 = v66;
    (*(v22 + 8))(v27, v66);

    v56 = OUTLINED_FUNCTION_2_23();
    v57(v56);
    v49 = v55;
  }

  sub_26617C874();
  v69(v70, v73, v54);
  v68(v71, a4, v49);
  (*(v74 + 104))(v72, *MEMORY[0x277D85260], v8);
  return sub_26618CB40();
}

unint64_t sub_26617C874()
{
  result = qword_28005CFC0;
  if (!qword_28005CFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005CFC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppLaunchError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26617C9AC()
{
  result = qword_28005CFC8;
  if (!qword_28005CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005CFC8);
  }

  return result;
}

uint64_t sub_26617CA00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26618A620();
  MEMORY[0x28223BE20](v6);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v7 = 0;
  if ((sub_26618B1A0() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_26618B100();
    sub_26618A610();
    sub_2660CCD6C();
    v8 = sub_26618CC00();
    v10 = v9;

    v11 = [objc_opt_self() sharedInstance];
    if (v11)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_26617CCEC(a1, a2, 0x736C6562614CLL, 0xE600000000000000, v13, v8, v10, v11);

      if (v14)
      {
        v7 = sub_26618C8B0();

        v15 = OUTLINED_FUNCTION_0_26();
        v16(v15);
      }

      else
      {
        v19 = OUTLINED_FUNCTION_0_26();
        v20(v19);
        return 0;
      }
    }

    else
    {
      v17 = OUTLINED_FUNCTION_0_26();
      v18(v17);

      return 0;
    }
  }

  return v7;
}

id sub_26617CCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_26618C8A0();
  v11 = sub_26618C8A0();

  v12 = sub_26618C8A0();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  return v13;
}

uint64_t sub_26617CDCC(void *a1)
{
  if (a1[2] != 1)
  {
    return 0;
  }

  v1 = a1[4];
  v2 = a1[5];
  if (v1 == 0xD000000000000012 && 0x8000000266199A10 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[6];
    if (OUTLINED_FUNCTION_3_23())
    {
      v4 = 0;
    }

    else
    {
    }

    if (v1 != 0xD000000000000012)
    {
      goto LABEL_13;
    }
  }

  if (0x8000000266199A10 != v2)
  {
LABEL_13:
    OUTLINED_FUNCTION_3_23();
  }

  return v4;
}

BOOL sub_26617CE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26618D090();
  sub_26618C910();
  v6 = sub_26618D0C0();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_26618D000();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_26617CF7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = OUTLINED_FUNCTION_5_18();
  v15 = v14(v13);
  if (v15)
  {
    v16 = v15;
    sub_2660C9D24(v15);
    if (v17)
    {
    }

    else
    {
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_4_21();
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_2814B4A80);
      OUTLINED_FUNCTION_28_1();
      v27(v12);

      v28 = sub_26618C690();
      v29 = sub_26618CAB0();

      v38 = v28;
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136315138;
        v32 = OUTLINED_FUNCTION_5_18();
        v35 = sub_266103A98(v32, v33, v34);

        *(v30 + 4) = v35;
        v36 = v38;
        _os_log_impl(&dword_2660B7000, v38, v29, "Marketplace.init failed to initialized marketplace because could not retrieve name for LSAppRecord for bundle id: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x26677CC30]();
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x26677CC30]();
      }

      else
      {
      }

      (*(v6 + 8))(v12, v4);
    }
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_4_21();
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v18(v10);

    v19 = sub_26618C690();
    v20 = sub_26618CAB0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      v23 = OUTLINED_FUNCTION_5_18();
      v26 = sub_266103A98(v23, v24, v25);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2660B7000, v19, v20, "Marketplace.init failed to initialized marketplace because could not find LSAppRecord for bundle id: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    else
    {
    }

    (*(v6 + 8))(v10, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_5_18();
}

double sub_26617D350@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  if (sub_26617CE90(v14, v15, a2))
  {
    sub_2660C5864(a3, v30);

    v16 = sub_26617CF7C(v30, v14, v15);
    if (v17)
    {
      *a4 = v16;
      a4[1] = v17;
      a4[2] = v18;
      a4[3] = v19;
      return result;
    }

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_4_21();
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_2814B4A80);
    OUTLINED_FUNCTION_28_1();
    v21(v13);

    v22 = sub_26618C690();
    v23 = sub_26618CAB0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = v23;
      v25 = v24;
      v26 = swift_slowAlloc();
      v29 = v22;
      v30[0] = v26;
      v27 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_266103A98(v14, v15, v30);
      v28 = v29;
      _os_log_impl(&dword_2660B7000, v29, v31, "MarketplaceUtils.getMarketplacesRepresentedInResults could not find the LSApplicationRecord for marketplace with id: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    else
    {
    }

    (*(v10 + 8))(v13, v8);
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_23()
{

  return sub_26618D000();
}

uint64_t sub_26617D5D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v68 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFD0, "jb");
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v55 - v7;
  OUTLINED_FUNCTION_18_2();
  sub_26618B8E0();
  OUTLINED_FUNCTION_2_2();
  v66 = v9;
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_69_0();
  v63 = v10;
  MEMORY[0x28223BE20](v11);
  v64 = &v55 - v12;
  OUTLINED_FUNCTION_18_2();
  v74 = sub_26618B980();
  OUTLINED_FUNCTION_2_2();
  v62 = v13;
  MEMORY[0x28223BE20](v14);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_18_2();
  v73 = sub_26618B9E0();
  OUTLINED_FUNCTION_2_2();
  v60 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_69_0();
  v59 = v18;
  MEMORY[0x28223BE20](v19);
  v71 = &v55 - v20;
  OUTLINED_FUNCTION_18_2();
  v72 = sub_26618B8A0();
  OUTLINED_FUNCTION_2_2();
  v70 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_69_0();
  v58 = v23;
  MEMORY[0x28223BE20](v24);
  v69 = &v55 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v55 - v27;
  v29 = sub_26618BC90();
  OUTLINED_FUNCTION_2_2();
  v56 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618C000();
  swift_allocObject();
  v34 = sub_26618BFF0();
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v34;
  v37 = (*(v35 + 16))(a2);
  if (v37)
  {

    sub_26618BF10();
    swift_allocObject();
    sub_26618BF00();
    sub_26618BEF0();
    if (sub_26618BEE0())
    {

      sub_26618BC60();
      sub_26618BB70();

      (*(v56 + 8))(v33, v29);
    }

    sub_26618C050();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26618F7E0;
  *(v38 + 32) = v34;
  v39 = sub_26618BD60();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v39);

  v40 = MEMORY[0x26677B0A0](v38, v28);

  sub_26617DD1C(v28);
  v41 = v69;
  v57 = v40;
  sub_26618BAB0();
  v56 = v36;
  v42 = v71;
  sub_26618B9D0();
  (*(v70 + 16))(v58, v41, v72);
  sub_26618B9C0();
  v43 = v61;
  sub_26618B970();
  v44 = v60;
  (*(v60 + 16))(v59, v42, v73);
  sub_26618B950();
  v45 = v64;
  sub_26618B8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C730, &qword_266192DD8);
  v46 = v62;
  v47 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_26618E190;
  (*(v46 + 16))(v48 + v47, v43, v74);
  sub_26618B8C0();
  v50 = v66;
  v49 = v67;
  (*(v66 + 16))(v63, v45, v67);
  v51 = *MEMORY[0x277D5DA78];
  v52 = sub_26618B890();
  v53 = v65;
  (*(*(v52 - 8) + 104))(v65, v51, v52);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
  sub_26618B830();

  (*(v50 + 8))(v45, v49);
  (*(v46 + 8))(v43, v74);
  (*(v44 + 8))(v71, v73);
  return (*(v70 + 8))(v69, v72);
}

uint64_t sub_26617DD1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C8C8, &qword_2661937A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26617DD84(char a1)
{
  result = 0x416C6C6174736E69;
  switch(a1)
  {
    case 1:
    case 12:
      OUTLINED_FUNCTION_0_27();
      result = v5 + 2;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 4:
    case 8:
      OUTLINED_FUNCTION_0_27();
      result = v8 + 7;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      OUTLINED_FUNCTION_0_27();
      result = v6 + 1;
      break;
    case 7:
      OUTLINED_FUNCTION_0_27();
      result = v4 - 2;
      break;
    case 9:
    case 13:
      OUTLINED_FUNCTION_0_27();
      result = v7 + 5;
      break;
    case 10:
      return result;
    case 11:
      result = 0x704165766F6D6572;
      break;
    default:
      OUTLINED_FUNCTION_0_27();
      result = v3 + 3;
      break;
  }

  return result;
}

uint64_t sub_26617DF3C()
{
  type metadata accessor for DeepLaunchIntent();
  type metadata accessor for DeepLaunchIntentResponse();
  sub_26618AF60();
  sub_26618C360();
  swift_allocObject();
  sub_26618C350();
  sub_26618AEC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFE0, &qword_266196C78);
  sub_26618AF20();
  sub_26618B810();
  v0 = sub_26618B470();
  swift_allocObject();
  v1 = sub_26618B460();
  v6 = v0;
  v7 = MEMORY[0x277D5BD58];
  *&v5 = v1;
  type metadata accessor for DeepLaunchHandleIntentStrategy();
  v2 = swift_allocObject();
  sub_2660B9EB8(&v8, v2 + 16);
  sub_2660B9EB8(&v5, v2 + 56);
  *&v8 = v2;
  sub_26617EA44(&qword_28005D008, type metadata accessor for DeepLaunchHandleIntentStrategy, &unk_2661916B8);
  sub_26618AEB0();

  sub_26618AF10();
  v3 = type metadata accessor for DeepLaunchUnsupportedValueStrategy();
  *&v8 = sub_26610EEB8(v3);
  sub_26617EA44(&qword_28005D010, type metadata accessor for DeepLaunchUnsupportedValueStrategy, &unk_266191890);
  sub_26618AEF0();

  sub_26618AF40();
}

uint64_t sub_26617E18C()
{
  v0 = sub_26618C360();
  OUTLINED_FUNCTION_41_0(v0);
  result = sub_26618C350();
  qword_2814B4B80 = result;
  return result;
}

uint64_t sub_26617E1F4()
{
  type metadata accessor for LaunchAppWrapperFlow(0);
  sub_26618B600();
  sub_26618B0E0();
  sub_2660E2DA4();
  sub_26617EA44(qword_2814B3C80, type metadata accessor for LaunchAppWrapperFlow, &unk_2661904F0);
  v0 = sub_26618AF90();

  return v0;
}

uint64_t sub_26617E2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFD8, &qword_266196C70);
  OUTLINED_FUNCTION_3_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFE0, &qword_266196C78);
  OUTLINED_FUNCTION_3_5();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  sub_26617DF3C();
  (*(v12 + 16))(v16, v18, v10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFE8, &qword_266196C80);
  OUTLINED_FUNCTION_41_0(v19);
  sub_26618AF70();
  v24 = a1;
  type metadata accessor for DeepLaunchFlowStrategy();
  sub_26617EA44(&qword_28005CFF0, type metadata accessor for DeepLaunchFlowStrategy, &unk_266191568);

  sub_26618B2F0();
  if (qword_2814B3F10 != -1)
  {
    swift_once();
  }

  v20 = sub_26618B2E0();
  (*(v6 + 8))(v9, v4);
  v24 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005CFF8, &qword_266196C88);
  sub_26617E590();
  v21 = sub_26618AF90();

  (*(v12 + 8))(v18, v10);
  return v21;
}

unint64_t sub_26617E590()
{
  result = qword_28005D000;
  if (!qword_28005D000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005CFF8, &qword_266196C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D000);
  }

  return result;
}

uint64_t sub_26617E5F4()
{
  sub_26618B0E0();
  sub_26618B040();
  v0 = type metadata accessor for HomeScreenFlow(0);
  OUTLINED_FUNCTION_41_0(v0);
  *&v4 = sub_2660DE86C(&v4, &v3);
  sub_26617EA44(&qword_28005C190, type metadata accessor for HomeScreenFlow, &unk_266190098);
  v1 = sub_26618AF90();

  return v1;
}

uint64_t sub_26617E6AC()
{
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8(&qword_2814B4A70);
  }

  v0 = static InstalledAppProvider.shared;
  v3[3] = type metadata accessor for InstalledAppProvider();
  v3[4] = &protocol witness table for InstalledAppProvider;
  v3[0] = v0;

  sub_26618B600();
  sub_26618B0E0();
  sub_26618B040();
  sub_2660E2B44();
  v1 = sub_26618AF90();
  sub_26617E760(v3);
  return v1;
}

uint64_t sub_26617E7B4(uint64_t a1)
{
  sub_26618B810();
  if (qword_2814B4A70 != -1)
  {
    OUTLINED_FUNCTION_13_8(&qword_2814B4A70);
  }

  v1 = static InstalledAppProvider.shared;
  v21 = type metadata accessor for InstalledAppProvider();
  v22 = &protocol witness table for InstalledAppProvider;
  *&v20 = v1;

  sub_26618B600();
  sub_26618B0E0();
  v2 = type metadata accessor for BaseDialogProvider();
  v3 = swift_allocObject();
  sub_26618B040();
  v16[4] = &off_2877CAA90;
  v16[3] = v2;
  v16[0] = v3;
  v4 = type metadata accessor for QRCodeFlow(0);
  v5 = OUTLINED_FUNCTION_41_0(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v16, v2);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v11 = (v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_dialogProvider);
  v11[3] = v2;
  v11[4] = &off_2877CAA90;
  *v11 = v10;
  v12 = OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_input;
  v13 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v5 + v12, 1, 1, v13);
  sub_2660B9EB8(&v23, v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_deviceState);
  sub_2660B9EB8(&v20, v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_installedAppProvider);
  sub_2660B9EB8(&v19, v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_outputPublisher);
  sub_2660B9EB8(&v18, v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_aceService);
  sub_2660B9EB8(&v17, v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_eventSender);
  __swift_destroy_boxed_opaque_existential_1(v16);
  *&v23 = v5;
  sub_26617EA44(&qword_28005C2B0, type metadata accessor for QRCodeFlow, &unk_2661907E0);
  v14 = sub_26618AF90();

  return v14;
}

uint64_t sub_26617EA44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26617EA8C()
{
  v0 = sub_26618CB10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26618C820();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618C800();
  sub_26618CAF0();
  v8 = sub_26617C268(0xD000000000000016, 0x800000026619A630, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_28005D018 = v8;
  return result;
}

uint64_t sub_26617EC24()
{
  v0 = sub_26618CB10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26618C820();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618C800();
  sub_26618CAF0();
  v8 = sub_26617C268(0xD000000000000028, 0x800000026619A600, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_28005D020 = v8;
  return result;
}

void sub_26617EDBC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_266184A08(0xD000000000000016, 0x800000026619A630, v0);
  qword_28005D028 = v0;
}

uint64_t AppLaunchFlowProvider.init()@<X0>(void *a2@<X8>)
{
  a2[3] = &type metadata for AppLaunchFlowFactoryImpl;
  a2[4] = &off_2877CD5D8;
  sub_26618B810();
  v3 = type metadata accessor for QuickActionScopeProvider();
  swift_allocObject();
  v4 = sub_26615F964();
  a2[13] = v3;
  a2[14] = &off_2877CC4A8;
  a2[10] = v4;
  a2[18] = &type metadata for AppLaunchFeatureFlagsImpl;
  a2[19] = &off_2877CD168;
  v5 = sub_26618C460();
  v6 = sub_26618C450();
  a2[28] = &type metadata for ReferenceResolver;
  a2[29] = &off_2877CC6F0;
  v7 = swift_allocObject();
  a2[25] = v7;
  v7[5] = v5;
  v7[6] = &off_2877CC660;
  v7[2] = v6;
  v8 = type metadata accessor for PommesResponseLoggingProvider();
  result = swift_allocObject();
  a2[23] = v8;
  a2[24] = &off_2877CC418;
  a2[20] = result;
  return result;
}

uint64_t static AppLaunchFlowProvider.warmup(refId:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v2 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v46 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 - v5;
  v8 = sub_26618C7C0();
  OUTLINED_FUNCTION_2_2();
  v45 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  sub_26618C820();
  OUTLINED_FUNCTION_2_2();
  v43 = v15;
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v18 = v17 - v16;
  v19 = sub_26618A5B0();
  OUTLINED_FUNCTION_2_2();
  v21 = v20;
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  if (qword_28005BCB8 != -1)
  {
    swift_once();
  }

  if ([qword_28005D028 tryLock])
  {
    sub_26618A5A0();
    if (qword_28005BCA8 != -1)
    {
      swift_once();
    }

    v46 = qword_28005D018;
    (*(v21 + 16))(v26, v28, v19);
    v29 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v30 = swift_allocObject();
    (*(v21 + 32))(v30 + v29, v26, v19);
    aBlock[4] = sub_2661846D8;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_266184BF8;
    aBlock[3] = &block_descriptor_4;
    v31 = _Block_copy(aBlock);
    sub_26618C7F0();
    v47 = MEMORY[0x277D84F90];
    sub_266184A60(&qword_28005D030, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D038, &qword_266196C90);
    sub_266184750();
    sub_26618CC90();
    MEMORY[0x26677BEF0](0, v18, v13, v31);
    _Block_release(v31);
    (*(v45 + 8))(v13, v8);
    (*(v43 + 8))(v18, v44);
    (*(v21 + 8))(v28, v19);
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v33 = __swift_project_value_buffer(v2, qword_2814B4A80);
    v34 = v46;
    (*(v46 + 16))(v7, v33, v2);
    v35 = v42;

    v36 = sub_26618C690();
    v37 = sub_26618CAD0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_49_0();
      v39 = OUTLINED_FUNCTION_45_1();
      aBlock[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_266103A98(v41, v35, aBlock);
      _os_log_impl(&dword_2660B7000, v36, v37, "AppLaunchFlowProvider#warmup already in warmup. Rejecting warmup request for: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    return (*(v34 + 8))(v7, v2);
  }
}

uint64_t sub_26617F480(uint64_t a1)
{
  v46 = a1;
  v1 = sub_26618A5B0();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v45 = v2;
  v47 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26618C7C0();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_26618C820();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_26618C600();
  isa = v43[-1].isa;
  v7 = MEMORY[0x28223BE20](v43);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v42 - v10;
  v12 = sub_26618C630();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28005BC40 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_28005D100);
  (*(v13 + 16))(v15, v16, v12);
  sub_26618C5F0();
  v17 = sub_26618C620();
  v18 = sub_26618CB60();
  v19 = sub_26618CBB0();
  v54 = v3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v17, v18, v21, "appLaunchFlowProviderWarmup", "enableTelemetry=YES", v20, 2u);
    v22 = v20;
    v3 = v54;
    MEMORY[0x26677CC30](v22, -1, -1);
  }

  v23 = v43;
  (*(isa + 2))(v9, v11, v43);
  sub_26618C670();
  swift_allocObject();
  v44 = sub_26618C660();
  (*(isa + 1))(v11, v23);
  (*(v13 + 8))(v15, v12);
  v24 = dispatch_group_create();
  dispatch_group_enter(v24);
  if (qword_28005BCB0 != -1)
  {
    swift_once();
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v61 = sub_266184AA8;
  v62 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v42[4] = &v59;
  v59 = sub_266184BF8;
  v60 = &block_descriptor_9;
  v26 = _Block_copy(&aBlock);
  v43 = v24;
  v27 = v50;
  sub_26618C7F0();
  v56 = MEMORY[0x277D84F90];
  v28 = sub_266184A60(&qword_28005D030, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D038, &qword_266196C90);
  v30 = sub_266184750();
  v31 = v52;
  v42[2] = v29;
  v42[1] = v30;
  v42[3] = v28;
  sub_26618CC90();
  MEMORY[0x26677BEF0](0, v27, v31, v26);
  _Block_release(v26);
  v53 = *(v53 + 8);
  (v53)(v31, v3);
  v51 = *(v51 + 8);
  (v51)(v27, v55);

  if (qword_28005BCA8 != -1)
  {
    swift_once();
  }

  v42[0] = qword_28005D018;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  (*(v48 + 16))(v47, v46, v49);
  v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v36 = (v45 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v33 + 32))(v37 + v35, v32, v34);
  *(v37 + v36) = v44;
  v61 = sub_266184AB0;
  v62 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_266184BF8;
  v60 = &block_descriptor_15;
  v38 = _Block_copy(&aBlock);

  sub_26618C7F0();
  v56 = MEMORY[0x277D84F90];
  v39 = v54;
  sub_26618CC90();
  v40 = v43;
  sub_26618CAE0();
  _Block_release(v38);

  (v53)(v31, v39);
  (v51)(v27, v55);
}

uint64_t sub_26617FC84(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C010, &qword_2661922A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_26618CA40();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v7 = a1;
  sub_2660CC534(0, 0, v4, &unk_266196D50, v6);
}

uint64_t sub_26617FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26618C6B0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26617FE28, 0, 0);
}

uint64_t sub_26617FE28()
{
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26617FEF0;

  return sub_266159A38();
}

uint64_t sub_26617FEF0()
{

  return MEMORY[0x2822009F8](sub_26617FFEC, 0, 0);
}

uint64_t sub_26617FFEC()
{
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A80);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAD0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "AppLaunchFlowProvider#warmup InstalledAppProvider completed warmup", v7, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  dispatch_group_leave(v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_26618013C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v45 = sub_26618C640();
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26618C600();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26618C630();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26618A5B0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = sub_26618C6B0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_2814B4A80);
  (*(v15 + 16))(v17, v18, v14);
  (*(v9 + 16))(v13, a1, v8);
  v19 = sub_26618C690();
  v20 = sub_26618CAD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v6;
    v22 = v21;
    *v21 = 134217984;
    v23 = v44;
    sub_26618A5A0();
    sub_26618A530();
    v25 = v24;
    v42 = v15;
    v26 = *(v9 + 8);
    v26(v23, v8);
    v26(v13, v8);
    v15 = v42;
    *(v22 + 1) = v25;
    _os_log_impl(&dword_2660B7000, v19, v20, "AppLaunchFlowProvider#warmup completed in %f seconds", v22, 0xCu);
    v27 = v22;
    v6 = v43;
    MEMORY[0x26677CC30](v27, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  (*(v15 + 8))(v17, v14);
  v29 = v50;
  v28 = v51;
  v30 = v48;
  v31 = v46;
  if (qword_28005BCB8 != -1)
  {
    swift_once();
  }

  [qword_28005D028 unlock];
  v32 = v49;
  if (qword_28005BC40 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v6, qword_28005D100);
  (*(v29 + 16))(v32, v33, v6);
  v34 = sub_26618C620();
  sub_26618C650();
  v35 = sub_26618CB50();
  if (sub_26618CBB0())
  {

    sub_26618C680();

    v36 = v45;
    v37 = v6;
    if ((*(v30 + 88))(v31, v45) == *MEMORY[0x277D85B00])
    {
      v38 = "[Error] Interval already ended";
    }

    else
    {
      (*(v30 + 8))(v31, v36);
      v38 = "";
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_26618C5E0();
    _os_signpost_emit_with_name_impl(&dword_2660B7000, v34, v35, v40, "appLaunchFlowProviderWarmup", v38, v39, 2u);
    MEMORY[0x26677CC30](v39, -1, -1);
    v6 = v37;
  }

  (*(v52 + 8))(v28, v53);
  return (*(v29 + 8))(v32, v6);
}

uint64_t sub_266180794(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t AppLaunchFlowProvider.findFlow(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v185 = a2;
  v180 = sub_26618B7B0();
  OUTLINED_FUNCTION_2_2();
  v174 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_5();
  v173 = v6;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v7);
  v176 = &v162 - v8;
  OUTLINED_FUNCTION_18_2();
  v182 = sub_26618B7F0();
  OUTLINED_FUNCTION_2_2();
  v179 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_69_0();
  v172 = v11;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17_5();
  v178 = v13;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v14);
  v181 = (&v162 - v15);
  OUTLINED_FUNCTION_18_2();
  v170 = sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v169 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v168 = v19 - v18;
  OUTLINED_FUNCTION_18_2();
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v186 = v21;
  v187 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_5();
  v175 = v24;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_5();
  v177 = v26;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v28);
  v184 = (&v162 - v29);
  OUTLINED_FUNCTION_18_2();
  v30 = sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v32 = v31;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v162 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v162 - v37;
  v39 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v162 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = (&v162 - v48);
  v50 = *(v41 + 16);
  v167 = a1;
  v51 = a1;
  v52 = v50;
  (v50)(&v162 - v48, v51, v39);
  v53 = (*(v41 + 88))(v49, v39);
  if (v53 == *MEMORY[0x277D5C128])
  {
    v54 = OUTLINED_FUNCTION_7_18();
    v55(v54);
    (*(v32 + 32))(v38, v49, v30);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v187, qword_2814B4A80);
    OUTLINED_FUNCTION_3_24();
    v56(v184);
    (*(v32 + 16))(v36, v38, v30);
    v57 = sub_26618C690();
    v58 = sub_26618CAD0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_49_0();
      v181 = v59;
      v182 = OUTLINED_FUNCTION_45_1();
      *&v188 = v182;
      *v59 = 136315138;
      sub_266184A60(&qword_2814B47E0, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
      v60 = sub_26618CFD0();
      v62 = v61;
      v63 = OUTLINED_FUNCTION_13_10();
      v49(v63);
      v64 = sub_266103A98(v60, v62, &v188);

      v65 = v181;
      *(v181 + 1) = v64;
      _os_log_impl(&dword_2660B7000, v57, v58, "Received NLv3 parse: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v182);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v186 + 8))(v184, v187);
    }

    else
    {

      v84 = OUTLINED_FUNCTION_13_10();
      v49(v84);
      (*(v41 + 8))(v184, v187);
    }

    sub_266181928(v38, v185);
    return (v49)(v38, v30);
  }

  if (v53 == *MEMORY[0x277D5C150])
  {
    v66 = OUTLINED_FUNCTION_7_18();
    v67(v66);
    v68 = v179;
    v69 = v181;
    v70 = v182;
    (*(v179 + 32))(v181, v49, v182);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v71 = v187;
    __swift_project_value_buffer(v187, qword_2814B4A80);
    OUTLINED_FUNCTION_3_24();
    v72 = v177;
    v73(v177);
    v74 = *(v68 + 16);
    v75 = v178;
    v74(v178, v69, v70);
    v76 = sub_26618C690();
    v77 = sub_26618CAD0();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_49_0();
      v184 = OUTLINED_FUNCTION_45_1();
      *&v188 = v184;
      *v78 = 136315138;
      v74(v172, v75, v182);
      v79 = sub_26618C8D0();
      v80 = v41;
      v82 = v81;
      OUTLINED_FUNCTION_11_10();
      v75();
      v83 = sub_266103A98(v79, v82, &v188);

      *(v78 + 4) = v83;
      _os_log_impl(&dword_2660B7000, v76, v77, "Received direct invocation parse: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v184);
      OUTLINED_FUNCTION_7_2();
      v70 = v182;
      OUTLINED_FUNCTION_7_2();

      (*(v80 + 8))(v72, v187);
    }

    else
    {

      OUTLINED_FUNCTION_11_10();
      v75();
      (*(v41 + 8))(v72, v71);
    }

    v104 = v181;
    sub_266183B18(v181);
    return (v75)(v104, v70);
  }

  if (v53 == *MEMORY[0x277D5C140])
  {
    v86 = OUTLINED_FUNCTION_7_18();
    v87(v86);
    v88 = v174;
    v89 = v176;
    v90 = v180;
    (*(v174 + 32))(v176, v49, v180);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v91 = v187;
    __swift_project_value_buffer(v187, qword_2814B4A80);
    OUTLINED_FUNCTION_3_24();
    v92 = v175;
    v93(v175);
    v94 = v173;
    v184 = *(v88 + 16);
    v184(v173, v89, v90);
    v95 = sub_26618C690();
    v96 = sub_26618CAD0();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = OUTLINED_FUNCTION_49_0();
      v182 = OUTLINED_FUNCTION_45_1();
      *&v188 = v182;
      *v97 = 136315138;
      v98 = v166;
      v184(v166, v94, v90);
      v99 = sub_26618C8D0();
      v101 = v100;
      OUTLINED_FUNCTION_11_10();
      v98(v94, v180);
      v102 = sub_266103A98(v99, v101, &v188);
      v90 = v180;

      *(v97 + 4) = v102;
      _os_log_impl(&dword_2660B7000, v95, v96, "Received Pegasus results parse: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v182);
      OUTLINED_FUNCTION_7_2();
      v89 = v176;
      OUTLINED_FUNCTION_7_2();

      v103 = v98;
      (*(v41 + 8))(v175, v187);
    }

    else
    {

      v103 = *(v88 + 8);
      v103(v94, v90);
      (*(v41 + 8))(v92, v91);
    }

    *(&v189 + 1) = v90;
    v190 = &off_2877CAAC8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v188);
    v184(boxed_opaque_existential_0, v89, v90);
    OUTLINED_FUNCTION_16_12();
    v103(v89, v90);
    return __swift_destroy_boxed_opaque_existential_1(&v188);
  }

  if (v53 == *MEMORY[0x277D5C148])
  {
    v105 = OUTLINED_FUNCTION_7_18();
    v106(v105);
    v107 = *v49;
    v190 = 0;
    v188 = 0u;
    v189 = 0u;
    sub_26618C410();
    sub_2660D30C4(&v188, &qword_28005D048, &qword_266196C98);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v108 = v187;
    __swift_project_value_buffer(v187, qword_2814B4A80);
    OUTLINED_FUNCTION_3_24();
    v109 = v171;
    v110(v171);
    v111 = v107;
    v112 = sub_26618C690();
    v113 = sub_26618CAD0();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = OUTLINED_FUNCTION_49_0();
      v115 = OUTLINED_FUNCTION_45_1();
      *&v188 = v115;
      *v114 = 136315138;
      v116 = v111;
      v117 = [v116 description];
      v118 = v41;
      v119 = sub_26618C8B0();
      v121 = v120;

      v122 = sub_266103A98(v119, v121, &v188);

      *(v114 + 4) = v122;
      _os_log_impl(&dword_2660B7000, v112, v113, "Received Pommes response parse: %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v115);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v118 + 8))(v171, v187);
    }

    else
    {

      (*(v41 + 8))(v109, v108);
    }

    *(&v189 + 1) = sub_26618C430();
    v190 = &off_2877CAAD8;
    *&v188 = v111;
    OUTLINED_FUNCTION_16_12();
    return __swift_destroy_boxed_opaque_existential_1(&v188);
  }

  if (v53 == *MEMORY[0x277D5C160])
  {
    (*(v41 + 96))(v49, v39);
    (*(v169 + 32))(v168, v49, v170);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v124 = v187;
    v125 = __swift_project_value_buffer(v187, qword_2814B4A80);
    v126 = v186;
    v127 = v164;
    (*(v186 + 16))(v164, v125, v124);
    v128 = OUTLINED_FUNCTION_17_13();
    v52(v128);
    v184 = v52;
    v129 = sub_26618C690();
    v130 = sub_26618CAD0();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = OUTLINED_FUNCTION_49_0();
      v182 = OUTLINED_FUNCTION_45_1();
      *&v188 = v182;
      *v131 = 136315138;
      v132 = v163;
      v184(v163, v47, v39);
      v133 = sub_266145588(v132);
      v134 = v127;
      v135 = v133;
      v137 = v136;
      (*(v41 + 8))(v47, v39);
      v138 = sub_266103A98(v135, v137, &v188);

      *(v131 + 4) = v138;
      _os_log_impl(&dword_2660B7000, v129, v130, "Received USO parse: %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v182);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v126 + 8))(v134, v187);
    }

    else
    {

      (*(v41 + 8))(v47, v39);
      (*(v126 + 8))(v127, v124);
    }

    v157 = v170;
    *(&v189 + 1) = v170;
    v190 = &off_2877CAAB8;
    v158 = __swift_allocate_boxed_opaque_existential_0(&v188);
    v159 = v169;
    v160 = v168;
    (*(v169 + 16))(v158, v168, v157);
    OUTLINED_FUNCTION_16_12();
    (*(v159 + 8))(v160, v157);
    return __swift_destroy_boxed_opaque_existential_1(&v188);
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v139 = v187;
  v140 = __swift_project_value_buffer(v187, qword_2814B4A80);
  v141 = v186;
  v142 = v165;
  (*(v186 + 16))(v165, v140, v139);
  v143 = v162;
  v144 = OUTLINED_FUNCTION_17_13();
  v52(v144);
  v145 = v52;
  v146 = sub_26618C690();
  v147 = sub_26618CAB0();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = OUTLINED_FUNCTION_49_0();
    v184 = v145;
    v149 = v148;
    v182 = v148;
    v183 = OUTLINED_FUNCTION_45_1();
    *&v188 = v183;
    *v149 = 136315138;
    v150 = v163;
    v184(v163, v143, v39);
    v151 = sub_266145588(v150);
    v153 = v152;
    LODWORD(v184) = v147;
    v154 = OUTLINED_FUNCTION_12_15();
    v147(v154);
    v155 = sub_266103A98(v151, v153, &v188);

    v156 = v182;
    *(v182 + 4) = v155;
    _os_log_impl(&dword_2660B7000, v146, v184, "Received unknown parse: %s", v156, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v183);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v141 + 8))(v165, v187);
  }

  else
  {

    v161 = OUTLINED_FUNCTION_12_15();
    v147(v161);
    (*(v141 + 8))(v142, v187);
  }

  sub_26618AFF0();
  return (v147)(v49, v39);
}

uint64_t sub_266181928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_26618C6B0();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v53 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = type metadata accessor for AppLaunchIntent(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v21 = sub_26618C0E0();
  (*(*(v21 - 8) + 16))(v20, a1, v21);
  if (qword_2814B3D30 != -1)
  {
    swift_once();
  }

  sub_266184A60(&qword_2814B3D28, type metadata accessor for AppLaunchIntent, &unk_2661939B8);
  sub_26618BDA0();
  if (!LOBYTE(v58[0]))
  {
    goto LABEL_7;
  }

  if (LOBYTE(v58[0]) == 1)
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v28 = v56;
    v29 = __swift_project_value_buffer(v56, qword_2814B4A80);
    v30 = v55;
    (*(v55 + 16))(v12, v29, v28);
    v31 = sub_26618C690();
    v32 = sub_26618CAD0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2660B7000, v31, v32, "AppLaunchFlowProvider.findFlow() returning closeAppFlow", v33, 2u);
      MEMORY[0x26677CC30](v33, -1, -1);
    }

    (*(v30 + 8))(v12, v28);
    type metadata accessor for CloseAppWrapperFlow(0);
    v58[0] = sub_2660DD940();
    sub_266184A60(&qword_28005C168, type metadata accessor for CloseAppWrapperFlow, &unk_26618FFD0);
    sub_26618AF90();

    goto LABEL_18;
  }

  if (LOBYTE(v58[0]) == 11)
  {
    if (qword_2814B3DD8 != -1)
    {
      swift_once();
    }

    sub_26618BDA0();
    if (!v58[1])
    {
      if (qword_2814B2C38 != -1)
      {
        swift_once();
      }

      v47 = v56;
      v48 = __swift_project_value_buffer(v56, qword_2814B4A80);
      v49 = v55;
      (*(v55 + 16))(v9, v48, v47);
      v50 = sub_26618C690();
      v51 = sub_26618CAD0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_2660B7000, v50, v51, "AppLaunchFlowProvider.findFlow() returning launchAppWrapperFlow when an appProvider is not specified", v52, 2u);
        MEMORY[0x26677CC30](v52, -1, -1);
      }

      (*(v49 + 8))(v9, v47);
      goto LABEL_12;
    }

LABEL_28:
    sub_26618AFF0();
    return sub_2660DD7D0(v20);
  }

  if (LOBYTE(v58[0]) != 5)
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v34 = v56;
    v35 = __swift_project_value_buffer(v56, qword_2814B4A80);
    v36 = v55;
    (*(v55 + 16))(v6, v35, v34);
    sub_266184888(v20, v18);
    v37 = sub_26618C690();
    v38 = sub_26618CAB0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v58[0] = v54;
      *v39 = 136315138;
      v40 = v38;
      sub_26618BDA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D050, &qword_266196D28);
      v41 = sub_26618C8D0();
      v43 = v42;
      sub_2660DD7D0(v18);
      v44 = sub_266103A98(v41, v43, v58);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_2660B7000, v37, v40, "Unexpected verb: %s", v39, 0xCu);
      v45 = v54;
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x26677CC30](v45, -1, -1);
      MEMORY[0x26677CC30](v39, -1, -1);

      (*(v36 + 8))(v6, v56);
    }

    else
    {

      sub_2660DD7D0(v18);
      (*(v36 + 8))(v6, v34);
    }

    goto LABEL_28;
  }

LABEL_7:
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v22 = v56;
  v23 = __swift_project_value_buffer(v56, qword_2814B4A80);
  v24 = v55;
  (*(v55 + 16))(v14, v23, v22);
  v25 = sub_26618C690();
  v26 = sub_26618CAD0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2660B7000, v25, v26, "AppLaunchFlowProvider.findFlow() returning launchAppWrapperFlow", v27, 2u);
    MEMORY[0x26677CC30](v27, -1, -1);
  }

  (*(v24 + 8))(v14, v22);
LABEL_12:
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_26617E1F4();
LABEL_18:
  sub_26618B000();

  return sub_2660DD7D0(v20);
}

uint64_t sub_266182128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D058, &qword_266196D30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v179 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v177 = &v169 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v178 = &v169 - v9;
  MEMORY[0x28223BE20](v8);
  v174 = &v169 - v10;
  v186 = sub_26618C6B0();
  v184 = *(v186 - 8);
  v11 = MEMORY[0x28223BE20](v186);
  v13 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v176 = &v169 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v180 = &v169 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v172 = &v169 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v171 = &v169 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v175 = &v169 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v173 = &v169 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v170 = &v169 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v169 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v169 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v182 = &v169 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v181 = &v169 - v37;
  MEMORY[0x28223BE20](v36);
  v183 = &v169 - v38;
  v39 = sub_26618A620();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v169 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v188 = (*(v43 + 8))(v44, v43);
  if (v188)
  {
    v190[3] = &type metadata for Features;
    v190[4] = sub_2661848EC();
    LOBYTE(v190[0]) = 0;
    v45 = sub_26618B880();
    __swift_destroy_boxed_opaque_existential_1(v190);
    if (v45)
    {
      v46 = sub_26613C14C();
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        v50 = sub_26613B704();
        if (!v51)
        {

          if (qword_2814B2C38 != -1)
          {
            swift_once();
          }

          v75 = v186;
          v76 = __swift_project_value_buffer(v186, qword_2814B4A80);
          v77 = v184;
          (*(v184 + 16))(v30, v76, v75);
          v78 = sub_26618C690();
          v79 = sub_26618CAD0();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            *v80 = 0;
            _os_log_impl(&dword_2660B7000, v78, v79, "AppLaunchFlowProvider.findFlow() returning noFlow because appName is not present in USO", v80, 2u);
            MEMORY[0x26677CC30](v80, -1, -1);
          }

          (*(v77 + 8))(v30, v75);
          goto LABEL_46;
        }

        v52 = v51;
        v179 = v50;
        v180 = v48;
        v53 = v185;
        __swift_project_boxed_opaque_existential_1(v185 + 5, v185[8]);
        if (sub_26618B140() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v53 + 5, v53[8]), (sub_26618B160()))
        {
          __swift_project_boxed_opaque_existential_1(v53 + 10, v53[13]);
          __swift_project_boxed_opaque_existential_1(v53 + 5, v53[8]);
          sub_26618B100();
          v54 = sub_26615FEEC();
          v55 = v53;
          v56 = (v40 + 8);
          v57 = *(v40 + 8);
          v57(v42, v39);
          if (v54)
          {
            v58 = __swift_project_boxed_opaque_existential_1(v55 + 25, v55[28]);
            v59 = sub_2660FA19C(v58, v188);
            if (v59[2])
            {
              v61 = v59[4];
              v60 = v59[5];

              v62 = v184;
              v63 = v186;
            }

            else
            {

              v112 = sub_26613B704();
              v62 = v184;
              v63 = v186;
              if (!v113)
              {
                goto LABEL_53;
              }

              v61 = v112;
              v60 = v113;
            }

            __swift_project_boxed_opaque_existential_1(v185 + 10, v185[13]);
            if (sub_26616000C(v61, v60))
            {

LABEL_53:
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v114 = __swift_project_value_buffer(v63, qword_2814B4A80);
              v115 = v182;
              (*(v62 + 16))(v182, v114, v63);

              v116 = sub_26618C690();
              v117 = sub_26618CAD0();

              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v119 = swift_slowAlloc();
                v190[0] = v119;
                *v118 = 136315394;
                v120 = sub_266103A98(v179, v52, v190);

                *(v118 + 4) = v120;
                *(v118 + 12) = 2080;
                v121 = sub_266103A98(v180, v49, v190);

                *(v118 + 14) = v121;
                _os_log_impl(&dword_2660B7000, v116, v117, "AppLaunchFlowProvider.findFlow() returning deepLaunchWrapperFlow for App: %s and Action: %s", v118, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x26677CC30](v119, -1, -1);
                MEMORY[0x26677CC30](v118, -1, -1);

                (*(v62 + 8))(v182, v63);
              }

              else
              {

                (*(v62 + 8))(v115, v63);
              }

              type metadata accessor for DeepLaunchWrapperFlow(0);
              v190[0] = sub_2660CE048();
              v89 = &qword_28005C070;
              v90 = type metadata accessor for DeepLaunchWrapperFlow;
              v91 = &unk_26618F770;
LABEL_63:
              sub_266184A60(v89, v90, v91);
              sub_26618AF90();

              goto LABEL_24;
            }

            if (qword_2814B2C38 != -1)
            {
              swift_once();
            }

            v122 = __swift_project_value_buffer(v63, qword_2814B4A80);
            v123 = v181;
            (*(v62 + 16))(v181, v122, v63);

            v124 = sub_26618C690();
            v125 = sub_26618CAD0();

            if (os_log_type_enabled(v124, v125))
            {
              v126 = swift_slowAlloc();
              v127 = swift_slowAlloc();
              v190[0] = v127;
              *v126 = 136315138;
              v128 = sub_266103A98(v61, v60, v190);

              *(v126 + 4) = v128;
              _os_log_impl(&dword_2660B7000, v124, v125, "AppLaunchFlowProvider.findFlow() returning noFlow because app %s is not in scope", v126, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v127);
              MEMORY[0x26677CC30](v127, -1, -1);
              MEMORY[0x26677CC30](v126, -1, -1);
            }

            else
            {
            }

            (*(v62 + 8))(v123, v63);
          }

          else
          {

            if (qword_2814B2C38 != -1)
            {
              swift_once();
            }

            v92 = v186;
            v93 = __swift_project_value_buffer(v186, qword_2814B4A80);
            v94 = v184;
            v95 = v183;
            (*(v184 + 16))(v183, v93, v92);
            sub_266184940(v185, v190);
            v96 = sub_26618C690();
            v97 = sub_26618CAD0();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v182 = v56;
              v99 = v98;
              v100 = swift_slowAlloc();
              v189 = v100;
              *v99 = 136315138;
              LODWORD(v185) = v97;
              __swift_project_boxed_opaque_existential_1(v191, v192);
              sub_26618B100();
              v101 = sub_26618A610();
              v103 = v102;
              v57(v42, v39);
              sub_266184978(v190);
              v104 = sub_266103A98(v101, v103, &v189);

              *(v99 + 4) = v104;
              _os_log_impl(&dword_2660B7000, v96, v185, "AppLaunchFlowProvider.findFlow() returning noFlow because it is not available in %s", v99, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v100);
              MEMORY[0x26677CC30](v100, -1, -1);
              MEMORY[0x26677CC30](v99, -1, -1);

              (*(v94 + 8))(v183, v186);
            }

            else
            {

              (*(v94 + 8))(v95, v92);
              sub_266184978(v190);
            }
          }

LABEL_46:
          sub_26618AFF0();
        }

        if (qword_2814B2C38 != -1)
        {
          swift_once();
        }

        v105 = v186;
        v106 = __swift_project_value_buffer(v186, qword_2814B4A80);
        v107 = v184;
        (*(v184 + 16))(v33, v106, v105);
        v108 = sub_26618C690();
        v109 = sub_26618CAD0();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          v111 = "AppLaunchFlowProvider.findFlow() returning noFlow because device is not iOS";
LABEL_44:
          _os_log_impl(&dword_2660B7000, v108, v109, v111, v110, 2u);
          MEMORY[0x26677CC30](v110, -1, -1);
        }

LABEL_45:

        (*(v107 + 8))(v33, v105);
        goto LABEL_46;
      }
    }

    if (sub_26618C0C0() == 0xD000000000000013 && 0x800000026619A580 == v64)
    {
    }

    else
    {
      v66 = sub_26618D000();

      if ((v66 & 1) == 0)
      {
        if ((sub_2661444D4() & 1) == 0)
        {
          sub_26613BA0C();
          switch(v81)
          {
            case 1:
              goto LABEL_74;
            case 2:
            case 3:
              v129 = v179;
              sub_266184404(v188, v179);
              v130 = sub_26618B020();
              if (__swift_getEnumTagSinglePayload(v129, 1, v130) != 1)
              {
                goto LABEL_86;
              }

              sub_2660D30C4(v129, &qword_28005D058, &qword_266196D30);
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v131 = v186;
              v132 = __swift_project_value_buffer(v186, qword_2814B4A80);
              v133 = v184;
              v134 = v175;
              (*(v184 + 16))(v175, v132, v131);
              v135 = sub_26618C690();
              v136 = sub_26618CAD0();
              if (os_log_type_enabled(v135, v136))
              {
                v137 = swift_slowAlloc();
                *v137 = 0;
                _os_log_impl(&dword_2660B7000, v135, v136, "AppLaunchFlowProvider.findFlow() returning closeAppFlow", v137, 2u);
                MEMORY[0x26677CC30](v137, -1, -1);
              }

              (*(v133 + 8))(v134, v131);
              type metadata accessor for CloseAppWrapperFlow(0);
              v190[0] = sub_2660DD940();
              v89 = &qword_28005C168;
              v90 = type metadata accessor for CloseAppWrapperFlow;
              v91 = &unk_26618FFD0;
              goto LABEL_63;
            case 4:
              v129 = v174;
              sub_266183CE8(v188, v174);
              v130 = sub_26618B020();
              if (__swift_getEnumTagSinglePayload(v129, 1, v130) != 1)
              {
                goto LABEL_86;
              }

              sub_2660D30C4(v129, &qword_28005D058, &qword_266196D30);
LABEL_74:
              v129 = v178;
              sub_266183EEC(v178);
              v130 = sub_26618B020();
              if (__swift_getEnumTagSinglePayload(v129, 1, v130) != 1)
              {
                goto LABEL_86;
              }

              sub_2660D30C4(v129, &qword_28005D058, &qword_266196D30);
              if (sub_26613EAFC())
              {
                if (qword_2814B2C38 != -1)
                {
                  swift_once();
                }

                v105 = v186;
                v138 = __swift_project_value_buffer(v186, qword_2814B4A80);
                v107 = v184;
                v33 = v170;
                (*(v184 + 16))(v170, v138, v105);
                v108 = sub_26618C690();
                v109 = sub_26618CAD0();
                if (os_log_type_enabled(v108, v109))
                {
                  v110 = swift_slowAlloc();
                  *v110 = 0;
                  v111 = "AppLaunchFlowProvider.findFlow() parse is verbless or summarise genre, which we cannot handle, returning .noFlow";
                  goto LABEL_44;
                }

                goto LABEL_45;
              }

LABEL_80:
              v129 = v177;
              v139 = v185;
              sub_266183F90(v188, v177);
              v130 = sub_26618B020();
              if (__swift_getEnumTagSinglePayload(v129, 1, v130) != 1)
              {
LABEL_86:

                return (*(*(v130 - 8) + 32))(v187, v129, v130);
              }

              sub_2660D30C4(v129, &qword_28005D058, &qword_266196D30);
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v140 = v186;
              v141 = __swift_project_value_buffer(v186, qword_2814B4A80);
              v142 = v184;
              v143 = v173;
              (*(v184 + 16))(v173, v141, v140);
              v144 = sub_26618C690();
              v145 = sub_26618CAD0();
              if (os_log_type_enabled(v144, v145))
              {
                v146 = swift_slowAlloc();
                *v146 = 0;
                _os_log_impl(&dword_2660B7000, v144, v145, "AppLaunchFlowProvider.findFlow() returning launchAppWrapperFlow", v146, 2u);
                MEMORY[0x26677CC30](v146, -1, -1);
              }

              (*(v142 + 8))(v143, v140);
              __swift_project_boxed_opaque_existential_1(v139, v139[3]);
              sub_26617E1F4();
              goto LABEL_24;
            case 5:
            case 7:
            case 8:
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v82 = v186;
              v83 = __swift_project_value_buffer(v186, qword_2814B4A80);
              v84 = v184;
              v85 = v180;
              (*(v184 + 16))(v180, v83, v82);
              v86 = sub_26618C690();
              v87 = sub_26618CAD0();
              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                *v88 = 0;
                _os_log_impl(&dword_2660B7000, v86, v87, "AppLaunchFlowProvider.findFlow() returning removeAppFlow", v88, 2u);
                MEMORY[0x26677CC30](v88, -1, -1);
              }

              (*(v84 + 8))(v85, v82);
              type metadata accessor for RemoveAppFlow(0);
              v190[0] = sub_2660ED764();
              v89 = &qword_28005C2E0;
              v90 = type metadata accessor for RemoveAppFlow;
              v91 = &unk_266190928;
              goto LABEL_63;
            case 6:
              v158 = a1[3];
              __swift_project_boxed_opaque_existential_1(a1, v158);
              sub_2660C9080(v158);
              if (v159)
              {
                v160 = v184;
                v161 = v186;
                if (qword_2814B2C38 != -1)
                {
                  swift_once();
                }

                v162 = __swift_project_value_buffer(v161, qword_2814B4A80);
                v163 = v171;
                (*(v160 + 16))(v171, v162, v161);
                v164 = sub_26618C690();
                v165 = sub_26618CAD0();
                if (os_log_type_enabled(v164, v165))
                {
                  v166 = swift_slowAlloc();
                  *v166 = 0;
                  _os_log_impl(&dword_2660B7000, v164, v165, "AppLaunchFlowProvider.findFlow() returning installAppFlow", v166, 2u);
                  MEMORY[0x26677CC30](v166, -1, -1);
                }

                (*(v160 + 8))(v163, v161);
                v167 = type metadata accessor for InstallAppFlow(0);
                v190[0] = sub_2660DF91C(v167);
                v89 = &qword_28005C1E0;
                v90 = type metadata accessor for InstallAppFlow;
                v91 = &unk_266190188;
                goto LABEL_63;
              }

              v107 = v184;
              v105 = v186;
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v168 = __swift_project_value_buffer(v105, qword_2814B4A80);
              v33 = v172;
              (*(v107 + 16))(v172, v168, v105);
              v108 = sub_26618C690();
              v109 = sub_26618CAB0();
              if (os_log_type_enabled(v108, v109))
              {
                v110 = swift_slowAlloc();
                *v110 = 0;
                v111 = "AppLaunchFlowProvider.findFlow() received install USOTask, but will NOT handle because request did not originate from Pegasus";
                goto LABEL_44;
              }

              break;
            case 9:
              if (qword_2814B2C38 != -1)
              {
                swift_once();
              }

              v147 = v186;
              v148 = __swift_project_value_buffer(v186, qword_2814B4A80);
              v149 = v184;
              v150 = v176;
              (*(v184 + 16))(v176, v148, v147);

              v151 = sub_26618C690();
              v152 = sub_26618CAB0();

              if (os_log_type_enabled(v151, v152))
              {
                v153 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                v190[0] = v154;
                *v153 = 136315138;
                v155 = sub_26618C0B0();
                v157 = sub_266103A98(v155, v156, v190);

                *(v153 + 4) = v157;
                _os_log_impl(&dword_2660B7000, v151, v152, "Unknown USO verb: %s", v153, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v154);
                MEMORY[0x26677CC30](v154, -1, -1);
                MEMORY[0x26677CC30](v153, -1, -1);
              }

              (*(v149 + 8))(v150, v147);
              goto LABEL_46;
            default:
              goto LABEL_80;
          }

          goto LABEL_45;
        }

        v67 = __swift_project_boxed_opaque_existential_1(v185, v185[3]);
        sub_26617E7B4(v67);
LABEL_24:
        sub_26618B000();
      }
    }

    __swift_project_boxed_opaque_existential_1(v185, v185[3]);
    sub_26617E6AC();
    goto LABEL_24;
  }

  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v68 = v186;
  v69 = __swift_project_value_buffer(v186, qword_2814B4A80);
  v70 = v184;
  (*(v184 + 16))(v13, v69, v68);
  v71 = sub_26618C690();
  v72 = sub_26618CAB0();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_2660B7000, v71, v72, "No USO task found in input", v73, 2u);
    MEMORY[0x26677CC30](v73, -1, -1);
  }

  (*(v70 + 8))(v13, v68);
  return sub_26618AFF0();
}

uint64_t sub_266183B18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26618B7D0();
  v5 = v3;
  v6 = v4 == 0xD000000000000022 && 0x800000026619A520 == v3;
  if (v6 || (sub_26618D000() & 1) != 0)
  {

    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_26617E1F4();
    sub_26618B000();
  }

  if (v4 == 0xD000000000000021 && 0x800000026619A550 == v5)
  {

    goto LABEL_18;
  }

  v9 = sub_26618D000();

  if (v9)
  {
LABEL_18:
    type metadata accessor for CloseAppWrapperFlow(0);
    sub_2660DD940();
    sub_266184A60(&qword_28005C168, type metadata accessor for CloseAppWrapperFlow, &unk_26618FFD0);
    sub_26618AF90();

    sub_26618B000();
  }

  return sub_26618AFF0();
}

uint64_t sub_266183CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005D068, &unk_266196D38);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_26618B590();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_project_boxed_opaque_existential_1((v2 + 200), *(v2 + 224));
  v11 = sub_2660FA19C(v10, a1);
  v17[0] = 0xD000000000000011;
  v17[1] = 0x800000026619A5A0;
  v16 = v17;
  LOBYTE(a1) = sub_266158320(sub_26615DA50, v15, v11);

  if (a1)
  {
    sub_26618B800();
    sub_26618C270();
    sub_26618B580();
    sub_26618B010();
    (*(v7 + 8))(v9, v6);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_26618B020();
  return __swift_storeEnumTagSinglePayload(a2, v12, 1, v13);
}

uint64_t sub_266183EEC@<X0>(uint64_t a2@<X8>)
{
  sub_26618BDF0();
  if (v6)
  {
    sub_26618BF80();
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_2660D30C4(v5, &qword_28005C0A8, qword_26618FAE0);
  }

  v3 = sub_26618B020();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v3);
}

uint64_t sub_266183F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_26618C6B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2661844A8())
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_26617E5F4();
    sub_26618B000();

    v10 = sub_26618B020();
    v11 = a2;
    v12 = 0;
LABEL_20:

    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  }

  v34 = v9;
  v35 = v7;
  v36 = v6;
  v37 = a2;
  v13 = __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
  v14 = sub_2660FA19C(v13, a1);
  v15 = v14;
  v16 = *(v14 + 16);
  if (!v16)
  {
LABEL_19:

    v10 = sub_26618B020();
    v11 = v37;
    v12 = 1;
    goto LABEL_20;
  }

  v17 = 0;
  v38 = 0x800000026619A5C0;
  v18 = (v14 + 40);
  while (1)
  {
    if (v17 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v19 = *(v18 - 1);
    v20 = *v18;
    v21 = v19 == 0xD000000000000019 && 0x8000000266198E10 == v20;
    if (!v21 && (sub_26618D000() & 1) == 0)
    {
      break;
    }

    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    if (sub_26618B190())
    {

      type metadata accessor for URLBasedLaunchFlow(0);
      v39 = sub_2660F2FD0();
      sub_266184A60(&qword_28005C320, type metadata accessor for URLBasedLaunchFlow, &unk_266190AE8);
      sub_26618AF90();

      v24 = v37;
      goto LABEL_27;
    }

LABEL_18:
    ++v17;
    v18 += 2;
    if (v16 == v17)
    {
      goto LABEL_19;
    }
  }

  v22 = v19 == 0xD000000000000018 && v38 == v20;
  if (!v22 && (sub_26618D000() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (qword_2814B2C38 == -1)
  {
    goto LABEL_24;
  }

LABEL_29:
  swift_once();
LABEL_24:
  v25 = v36;
  v26 = __swift_project_value_buffer(v36, qword_2814B4A80);
  v28 = v34;
  v27 = v35;
  (*(v35 + 16))(v34, v26, v25);
  v29 = sub_26618C690();
  v30 = sub_26618CAD0();
  v31 = os_log_type_enabled(v29, v30);
  v24 = v37;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2660B7000, v29, v30, "AppLaunchFlowProvider.findFlow() returning LaunchQuickNoteFlow", v32, 2u);
    MEMORY[0x26677CC30](v32, -1, -1);
  }

  (*(v27 + 8))(v28, v25);
  type metadata accessor for LaunchQuickNoteFlow(0);
  v39 = sub_2660E9D60();
  sub_266184A60(&qword_28005C260, type metadata accessor for LaunchQuickNoteFlow, &unk_2661906E0);
  sub_26618AF90();

LABEL_27:
  sub_26618B000();

  v33 = sub_26618B020();
  return __swift_storeEnumTagSinglePayload(v24, 0, 1, v33);
}

uint64_t sub_266184404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_2661844A8())
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_26617E5F4();
    sub_26618B000();

    v5 = 0;
  }

  else
  {
    v6 = __swift_project_boxed_opaque_existential_1(v2 + 25, v2[28]);
    sub_2660FA19C(v6, a1);

    v5 = 1;
  }

  v7 = sub_26618B020();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v7);
}

BOOL sub_2661844A8()
{
  v0 = sub_26613D5E4();
  v1 = sub_26613C2C0(v0);
  v2 = sub_2661394E8(0x6C7070612E6D6F63, 0xEE00656D6F482E65);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E180;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x8000000266199B40;
  v6 = (sub_266184590(inited, v1) & 1) == 0 && sub_26617CE90(0xD000000000000019, 0x8000000266199B40, v1);

  return v6;
}

uint64_t sub_266184590(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v16 = result + 32;
  v6 = a2 + 56;
LABEL_2:
  if (v4 == v5)
  {
LABEL_14:

    return v4 == v5;
  }

  if (v4 < *(v3 + 16))
  {
    if (*(a2 + 16))
    {
      v7 = (v16 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_26618D090();

      sub_26618C910();
      v10 = sub_26618D0C0();
      v11 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v6 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(a2 + 48) + 16 * v12);
        if (*v13 != v9 || v13[1] != v8)
        {
          v15 = sub_26618D000();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        ++v4;
        goto LABEL_2;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2661846D8()
{
  v1 = *(sub_26618A5B0() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26617F480(v2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266184750()
{
  result = qword_28005D040;
  if (!qword_28005D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005D038, &qword_266196C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D040);
  }

  return result;
}

uint64_t sub_2661847BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_2661847FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266184888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2661848EC()
{
  result = qword_28005D060;
  if (!qword_28005D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D060);
  }

  return result;
}

void sub_2661849D0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_266184A08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26618C8A0();
  [a3 setName_];
}

uint64_t sub_266184A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266184AB0()
{
  v1 = *(sub_26618A5B0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26618013C(v0 + v2, v3);
}

uint64_t sub_266184B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26611BBA8;

  return sub_26617FD68(a1, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_16_12()
{
  v2 = *(v0 - 152);

  return sub_266182128((v0 - 128), v2);
}

uint64_t sub_266184C98()
{
  sub_2660BC49C();
  result = sub_26618CBC0();
  qword_2814B4AC8 = result;
  return result;
}

uint64_t sub_266184D44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26618C6B0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_26618C6A0();
}

uint64_t LaunchAppApplicationUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

id LaunchAppIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LaunchAppIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id LaunchAppIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for LaunchAppIntent();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LaunchAppIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26618C8A0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id LaunchAppIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for LaunchAppIntent();
  v12 = OUTLINED_FUNCTION_0_28(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id LaunchAppIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_19(a1, a2);

  v5 = sub_26618C8A0();

  if (v3)
  {
    v6 = sub_26618C830();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id LaunchAppIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_19(a1, a2);

  v5 = sub_26618C8A0();

  if (v3)
  {
    v6 = sub_26618C830();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for LaunchAppIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t LaunchAppIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2661852DC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LaunchAppIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t LaunchAppIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___LaunchAppIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2661853A0(uint64_t a1)
{
  v3 = OBJC_IVAR___LaunchAppIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *LaunchAppIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LaunchAppIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id LaunchAppIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LaunchAppIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___LaunchAppIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LaunchAppIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id LaunchAppIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LaunchAppIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___LaunchAppIntentResponse_code) = 0;
  v13 = type metadata accessor for LaunchAppIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LaunchAppIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id LaunchAppIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___LaunchAppIntentResponse_code) = 0;
  v13 = type metadata accessor for LaunchAppIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id LaunchAppIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id LaunchAppIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LaunchAppIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LaunchAppIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266185904@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LaunchAppApplicationUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static LaunchAppApplicationResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id LaunchAppApplicationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id LaunchAppApplicationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for LaunchAppApplicationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266185B98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266185BD4()
{
  result = qword_28005D078;
  if (!qword_28005D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D078);
  }

  return result;
}

unint64_t sub_266185C2C()
{
  result = qword_28005D080;
  if (!qword_28005D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D080);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1, uint64_t a2)
{

  return sub_26618C8A0();
}

uint64_t CloseAppApplicationUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

id CloseAppIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloseAppIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CloseAppIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for CloseAppIntent();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id CloseAppIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26618C8A0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id CloseAppIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for CloseAppIntent();
  v12 = OUTLINED_FUNCTION_0_28(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id CloseAppIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_19(a1, a2);

  v5 = sub_26618C8A0();

  if (v3)
  {
    v6 = sub_26618C830();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id CloseAppIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_19(a1, a2);

  v5 = sub_26618C8A0();

  if (v3)
  {
    v6 = sub_26618C830();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for CloseAppIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t CloseAppIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2661861D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CloseAppIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t CloseAppIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___CloseAppIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26618629C(uint64_t a1)
{
  v3 = OBJC_IVAR___CloseAppIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *CloseAppIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___CloseAppIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id CloseAppIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloseAppIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___CloseAppIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloseAppIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CloseAppIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CloseAppIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___CloseAppIntentResponse_code) = 0;
  v13 = type metadata accessor for CloseAppIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id CloseAppIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id CloseAppIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___CloseAppIntentResponse_code) = 0;
  v13 = type metadata accessor for CloseAppIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id CloseAppIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id CloseAppIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CloseAppIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CloseAppIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266186804@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = CloseAppApplicationUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static CloseAppApplicationResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id CloseAppApplicationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id CloseAppApplicationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for CloseAppApplicationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266186A98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266186AD4()
{
  result = qword_28005D090;
  if (!qword_28005D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D090);
  }

  return result;
}

unint64_t sub_266186B2C()
{
  result = qword_28005D098;
  if (!qword_28005D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D098);
  }

  return result;
}

uint64_t DeepLaunchPageNameUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

id DeepLaunchIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeepLaunchIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DeepLaunchIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for DeepLaunchIntent();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id DeepLaunchIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26618C8A0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DeepLaunchIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for DeepLaunchIntent();
  v12 = OUTLINED_FUNCTION_0_28(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id DeepLaunchIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_19(a1, a2);

  v5 = sub_26618C8A0();

  if (v3)
  {
    v6 = sub_26618C830();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id DeepLaunchIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_19(a1, a2);

  v5 = sub_26618C8A0();

  if (v3)
  {
    v6 = sub_26618C830();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for DeepLaunchIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t DeepLaunchIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2661870A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeepLaunchIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t DeepLaunchIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___DeepLaunchIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26618716C(uint64_t a1)
{
  v3 = OBJC_IVAR___DeepLaunchIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *DeepLaunchIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DeepLaunchIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DeepLaunchIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeepLaunchIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___DeepLaunchIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeepLaunchIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DeepLaunchIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeepLaunchIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___DeepLaunchIntentResponse_code) = 0;
  v13 = type metadata accessor for DeepLaunchIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id DeepLaunchIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DeepLaunchIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___DeepLaunchIntentResponse_code) = 0;
  v13 = type metadata accessor for DeepLaunchIntentResponse();
  v9 = OUTLINED_FUNCTION_0_28(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id DeepLaunchIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DeepLaunchIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DeepLaunchIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_26618C830();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeepLaunchIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id static DeepLaunchPageNameResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id sub_2661877E4(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id sub_26618788C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_26618C830();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_2661879E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266187A1C()
{
  result = qword_28005D0A8;
  if (!qword_28005D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0A8);
  }

  return result;
}

unint64_t sub_266187A74()
{
  result = qword_28005D0B0;
  if (!qword_28005D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0B0);
  }

  return result;
}

unint64_t sub_266187ACC()
{
  result = qword_28005D0B8;
  if (!qword_28005D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0B8);
  }

  return result;
}

unint64_t InAppVerb.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266187B78@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = InAppVerb.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static InAppVerbResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static InAppVerbResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id InAppVerbResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id InAppVerbResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for InAppVerbResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id InAppVerbResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppVerbResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266187EB8()
{
  result = qword_28005D0C0;
  if (!qword_28005D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0C0);
  }

  return result;
}

unint64_t AppReference.init(rawValue:)(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266187F30@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AppReference.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static AppReferenceResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static AppReferenceResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id AppReferenceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AppReferenceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppReferenceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AppReferenceResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppReferenceResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266188270()
{
  result = qword_28005D0C8;
  if (!qword_28005D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0C8);
  }

  return result;
}

uint64_t sub_266188328(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_122(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_4_23(v4, v5, v6);

  return sub_26618D0C0();
}

uint64_t sub_266188390(uint64_t a1)
{
  OUTLINED_FUNCTION_122(a1);
  OUTLINED_FUNCTION_5_19();
  sub_26618C910();
  return sub_26618D0C0();
}

uint64_t sub_2661883D0(uint64_t a1)
{
  OUTLINED_FUNCTION_122(a1);
  sub_266188774();
  return sub_26618D0C0();
}

uint64_t sub_266188410(uint64_t a1)
{
  OUTLINED_FUNCTION_122(a1);
  MEMORY[0x26677C460](a1);
  return sub_26618D0C0();
}

uint64_t sub_266188450(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_7_19();
  }

  sub_26618C910();
}

uint64_t sub_2661884C0(uint64_t a1, unsigned __int8 a2)
{
  sub_26618C910();
}

uint64_t sub_266188534(uint64_t a1, char a2)
{
  sub_26618C910();
}

uint64_t sub_2661885A4()
{
  OUTLINED_FUNCTION_0_29();
  sub_26618C910();
}

uint64_t sub_266188678()
{
  OUTLINED_FUNCTION_3_25();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_6_19();
      break;
    case 2:
      OUTLINED_FUNCTION_1_20();
      break;
    case 3:
      OUTLINED_FUNCTION_2_24();
      break;
    case 4:
      OUTLINED_FUNCTION_8_17();
      break;
    case 6:
      OUTLINED_FUNCTION_5_19();
      break;
    default:
      break;
  }

  sub_26618C910();
}

uint64_t sub_266188774()
{
  OUTLINED_FUNCTION_0_29();
  sub_26618C910();
}

uint64_t sub_266188830()
{
  OUTLINED_FUNCTION_3_25();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_6_19();
      break;
    case 5:
      OUTLINED_FUNCTION_2_24();
      break;
    case 6:
      OUTLINED_FUNCTION_1_20();
      break;
    case 7:
      OUTLINED_FUNCTION_8_17();
      break;
    case 9:
      OUTLINED_FUNCTION_0_29();
      break;
    default:
      break;
  }

  sub_26618C910();
}

uint64_t sub_266188924(uint64_t a1)
{
  sub_26618D090();
  OUTLINED_FUNCTION_5_19();
  sub_26618C910();
  return sub_26618D0C0();
}

uint64_t sub_266188968(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_12(a1, a2);
  sub_266188774();
  return sub_26618D0C0();
}

uint64_t sub_2661889D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_26618D090();
  v5 = a3(a2);
  OUTLINED_FUNCTION_4_23(v5, v6, v7);

  return sub_26618D0C0();
}

uint64_t sub_266188A28(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_12(a1, a2);
  sub_26618C910();

  return sub_26618D0C0();
}

uint64_t sub_266188AA4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_12(a1, a2);
  sub_26618C910();

  return sub_26618D0C0();
}

uint64_t sub_266188B24(uint64_t a1, uint64_t a2)
{
  sub_26618D090();
  MEMORY[0x26677C460](a2);
  return sub_26618D0C0();
}

uint64_t sub_266188B68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_12(a1, a2);
  if (!v2)
  {
    OUTLINED_FUNCTION_7_19();
  }

  sub_26618C910();

  return sub_26618D0C0();
}

unint64_t AppNoun.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266188C38@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AppNoun.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static AppNounResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static AppNounResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id AppNounResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AppNounResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppNounResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AppNounResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppNounResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266188F78()
{
  result = qword_28005D0D0;
  if (!qword_28005D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005D0D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_26618C910();
}

void *OUTLINED_FUNCTION_10_12(uint64_t a1, uint64_t a2, ...)
{

  return sub_26618D090();
}

id static ApplicationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ApplicationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static ApplicationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26618922C();

    sub_26618CE90();
  }

  else
  {

    sub_26618D010();
    sub_26618922C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26618922C();
  v2 = sub_26618C990();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ApplicationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_26618922C()
{
  result = qword_28005D0D8;
  if (!qword_28005D0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005D0D8);
  }

  return result;
}

id static ApplicationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ApplicationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id Application.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_21();
  if (v2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26618C8A0();

  if (v1)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id Application.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_21();
  if (v2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26618C8A0();

  if (v1)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for Application();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id Application.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Application.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Application();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ApplicationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ApplicationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ApplicationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266189A00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_26618CE80();
}

id InAppSearchCriteria.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_21();
  if (v2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26618C8A0();

  if (v1)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id InAppSearchCriteria.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_21();
  if (v2)
  {
    v3 = sub_26618C8A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_26618C8A0();

  if (v1)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for InAppSearchCriteria();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id InAppSearchCriteria.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InAppSearchCriteria.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InAppSearchCriteria();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static InAppSearchCriteriaResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___InAppSearchCriteriaResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static InAppSearchCriteriaResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_26618922C();

    sub_26618CE90();
  }

  else
  {

    sub_26618D010();
    sub_26618922C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_26618922C();
  v2 = sub_26618C990();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___InAppSearchCriteriaResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id static InAppSearchCriteriaResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___InAppSearchCriteriaResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id InAppSearchCriteriaResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_26618C830();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id InAppSearchCriteriaResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_26618C830();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for InAppSearchCriteriaResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_26618A360(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_26618CE80();
}