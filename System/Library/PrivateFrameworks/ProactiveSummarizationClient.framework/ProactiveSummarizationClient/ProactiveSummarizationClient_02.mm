uint64_t sub_1CFCFFF3C()
{
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  return v0;
}

unint64_t sub_1CFCFFF94()
{
  result = qword_1EC4F7228[0];
  if (!qword_1EC4F7228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F7228);
  }

  return result;
}

unint64_t sub_1CFD00008()
{
  result = qword_1EC4F2E60;
  if (!qword_1EC4F2E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E60);
  }

  return result;
}

unint64_t sub_1CFD0005C()
{
  result = qword_1EC4F2E68;
  if (!qword_1EC4F2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E68);
  }

  return result;
}

unint64_t sub_1CFD000B0()
{
  result = qword_1EC4F2E70;
  if (!qword_1EC4F2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E70);
  }

  return result;
}

unint64_t sub_1CFD00104()
{
  result = qword_1EC4F2E80;
  if (!qword_1EC4F2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E80);
  }

  return result;
}

unint64_t sub_1CFD00158()
{
  result = qword_1EC4F2E90;
  if (!qword_1EC4F2E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E90);
  }

  return result;
}

unint64_t sub_1CFD001AC()
{
  result = qword_1EC4F2E98;
  if (!qword_1EC4F2E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2E98);
  }

  return result;
}

unint64_t sub_1CFD00200()
{
  result = qword_1EC4F2EA8;
  if (!qword_1EC4F2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EA8);
  }

  return result;
}

void *sub_1CFD00254(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1CFD00354()
{
  result = qword_1EC4F2EE0;
  if (!qword_1EC4F2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EE0);
  }

  return result;
}

unint64_t sub_1CFD003AC()
{
  result = qword_1EC4F2EE8;
  if (!qword_1EC4F2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EE8);
  }

  return result;
}

unint64_t sub_1CFD00404()
{
  result = qword_1EC4F2EF0;
  if (!qword_1EC4F2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EF0);
  }

  return result;
}

unint64_t sub_1CFD0045C()
{
  result = qword_1EC4F2EF8;
  if (!qword_1EC4F2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2EF8);
  }

  return result;
}

unint64_t sub_1CFD004B4()
{
  result = qword_1EC4F2F00;
  if (!qword_1EC4F2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F00);
  }

  return result;
}

unint64_t sub_1CFD0050C()
{
  result = qword_1EC4F2F08;
  if (!qword_1EC4F2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F08);
  }

  return result;
}

void sub_1CFD00588(uint64_t a1)
{
  type metadata accessor for SummarizationFeedback.UIKind(319);
  if (v1 <= 0x3F)
  {
    sub_1CFD0062C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFD0062C(uint64_t a1)
{
  if (!qword_1EDDD2B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2F10, &qword_1CFD53AC0);
    v1 = sub_1CFD49338();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDD2B18);
    }
  }
}

void sub_1CFD006B8(uint64_t a1)
{
  sub_1CFCE8918();
  if (v1 <= 0x3F)
  {
    sub_1CFD00730();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CFD00730()
{
  if (!qword_1EDDD3120)
  {
    v0 = type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD3120);
    }
  }
}

uint64_t getEnumTagSinglePayload for SummarizationFeedback.Presentation(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 16)) - 65282);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 16)) - 65282);
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 16)) - 65282);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationFeedback.Presentation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        result[2] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        result[2] = 0;
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
        *(result + 2) = 0;
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CFD0092C(uint64_t a1)
{
  result = type metadata accessor for SummarizationResponse(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationFeedback.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationFeedback.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SummarizationFeedbackClient.send(summarizationFeedback:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CFCEFD40;

  return v6(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFD00D38(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CFD00D78(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFD00DD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 168))
    {
      return OUTLINED_FUNCTION_3_2(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_192();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v3);
}

uint64_t sub_1CFD00E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MailEntity.Thread.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *_s28ProactiveSummarizationClient21SummarizationFeedbackV18MailThreadFeedbackV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationFeedback.UIKind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationFeedback.UIKind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s28ProactiveSummarizationClient21SummarizationFeedbackV6UIKindO14MailCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CFD01254()
{
  result = qword_1EC4F81B0[0];
  if (!qword_1EC4F81B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F81B0);
  }

  return result;
}

unint64_t sub_1CFD012AC()
{
  result = qword_1EC4F83C0[0];
  if (!qword_1EC4F83C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F83C0);
  }

  return result;
}

unint64_t sub_1CFD01304()
{
  result = qword_1EC4F85D0[0];
  if (!qword_1EC4F85D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F85D0);
  }

  return result;
}

unint64_t sub_1CFD0135C()
{
  result = qword_1EC4F87E0[0];
  if (!qword_1EC4F87E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F87E0);
  }

  return result;
}

unint64_t sub_1CFD013B4()
{
  result = qword_1EC4F89F0;
  if (!qword_1EC4F89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F89F0);
  }

  return result;
}

unint64_t sub_1CFD0140C()
{
  result = qword_1EC4F8C00[0];
  if (!qword_1EC4F8C00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F8C00);
  }

  return result;
}

unint64_t sub_1CFD01464()
{
  result = qword_1EC4F8E10[0];
  if (!qword_1EC4F8E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F8E10);
  }

  return result;
}

unint64_t sub_1CFD014BC()
{
  result = qword_1EC4F9020[0];
  if (!qword_1EC4F9020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9020);
  }

  return result;
}

unint64_t sub_1CFD01514()
{
  result = qword_1EC4F9130;
  if (!qword_1EC4F9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9130);
  }

  return result;
}

unint64_t sub_1CFD0156C()
{
  result = qword_1EC4F9138[0];
  if (!qword_1EC4F9138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9138);
  }

  return result;
}

unint64_t sub_1CFD015C4()
{
  result = qword_1EC4F91C0;
  if (!qword_1EC4F91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F91C0);
  }

  return result;
}

unint64_t sub_1CFD0161C()
{
  result = qword_1EC4F91C8[0];
  if (!qword_1EC4F91C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F91C8);
  }

  return result;
}

unint64_t sub_1CFD01674()
{
  result = qword_1EC4F9250;
  if (!qword_1EC4F9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9250);
  }

  return result;
}

unint64_t sub_1CFD016CC()
{
  result = qword_1EC4F9258[0];
  if (!qword_1EC4F9258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9258);
  }

  return result;
}

unint64_t sub_1CFD01724()
{
  result = qword_1EC4F92E0;
  if (!qword_1EC4F92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F92E0);
  }

  return result;
}

unint64_t sub_1CFD0177C()
{
  result = qword_1EC4F92E8[0];
  if (!qword_1EC4F92E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F92E8);
  }

  return result;
}

unint64_t sub_1CFD017D4()
{
  result = qword_1EC4F9370;
  if (!qword_1EC4F9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9370);
  }

  return result;
}

unint64_t sub_1CFD0182C()
{
  result = qword_1EC4F9378;
  if (!qword_1EC4F9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9378);
  }

  return result;
}

unint64_t sub_1CFD01884()
{
  result = qword_1EC4F9400;
  if (!qword_1EC4F9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9400);
  }

  return result;
}

unint64_t sub_1CFD018DC()
{
  result = qword_1EC4F9408[0];
  if (!qword_1EC4F9408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9408);
  }

  return result;
}

unint64_t sub_1CFD01934()
{
  result = qword_1EC4F9490;
  if (!qword_1EC4F9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9490);
  }

  return result;
}

unint64_t sub_1CFD0198C()
{
  result = qword_1EC4F9498[0];
  if (!qword_1EC4F9498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9498);
  }

  return result;
}

unint64_t sub_1CFD019E4()
{
  result = qword_1EC4F9520;
  if (!qword_1EC4F9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9520);
  }

  return result;
}

unint64_t sub_1CFD01A3C()
{
  result = qword_1EC4F9528[0];
  if (!qword_1EC4F9528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9528);
  }

  return result;
}

unint64_t sub_1CFD01A90()
{
  result = qword_1EC4F2F18;
  if (!qword_1EC4F2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F18);
  }

  return result;
}

unint64_t sub_1CFD01AE4()
{
  result = qword_1EC4F2F20;
  if (!qword_1EC4F2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F20);
  }

  return result;
}

unint64_t sub_1CFD01B38()
{
  result = qword_1EC4F2F28;
  if (!qword_1EC4F2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2F28);
  }

  return result;
}

uint64_t sub_1CFD01B90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1CFD01C10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_1CFD01C20(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F68, &qword_1CFD4CFD0);
  OUTLINED_FUNCTION_18_2(v2);
  v5 = *(v1 + ((*(v4 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F68, &qword_1CFD4CFD0);
  sub_1CFD49238();
  OUTLINED_FUNCTION_162(v5 + 16, v6);
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v10 = result + 4;
    v9 = result[4];
    if (v9)
    {
      v11 = result[5];
      v12 = v9;
      v13 = v11;

      CFRunLoopSourceInvalidate(v12);
      CFUserNotificationCancel(v13);

      v14 = v8[4];
      v15 = v8[5];
      v16 = v8[6];
      v17 = v8[7];
      *v10 = 0u;
      v10[1] = 0u;
      sub_1CFD00254(v14, v15, v16, v17);
    }
  }

  return result;
}

void *sub_1CFD01D7C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    v6 = a2;
  }

  return result;
}

unint64_t sub_1CFD01DC4()
{
  result = qword_1EC4F2FA8;
  if (!qword_1EC4F2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2FA8);
  }

  return result;
}

uint64_t sub_1CFD01E18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CFD01E2C(a1, a2);
  }

  return a1;
}

uint64_t sub_1CFD01E2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_1CFD01E84()
{
  result = qword_1EDDD27B0[0];
  if (!qword_1EDDD27B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD27B0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1CFD02008(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1CFD02070(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1CFD020E8()
{
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25();
  v3 = OUTLINED_FUNCTION_27();
  v4(v3);
  return v0;
}

uint64_t sub_1CFD02140()
{
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_25();
  v3 = OUTLINED_FUNCTION_27();
  v4(v3);
  return v0;
}

_BYTE *_s28ProactiveSummarizationClient21SummarizationFeedbackV7FeatureOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void sub_1CFD0228C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1CFD022DC()
{
  result = qword_1EC4F95B0[0];
  if (!qword_1EC4F95B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F95B0);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_19_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6449656C646E7562;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

_OWORD *OUTLINED_FUNCTION_22_3(char a1)
{
  *(v1 + 80) = v2;

  return sub_1CFCFFB84((v1 + 88), v3, a1);
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_46_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_47_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_48_1()
{
  *(v0 + 144) = v2;
  *(v0 + 120) = v3;
  sub_1CFD01C10((v0 + 120), (v0 + 88));

  return v1;
}

BOOL OUTLINED_FUNCTION_49_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_65()
{
  v3 = v0[130];
  *(v1 - 256) = v0[131];
  *(v1 - 248) = v3;
  v4 = v0[128];
  *(v1 - 240) = v0[129];
  *(v1 - 232) = v4;
  v5 = v0[125];
  *(v1 - 224) = v0[127];
  *(v1 - 216) = v5;
  v6 = v0[121];
  *(v1 - 208) = v0[122];
  *(v1 - 200) = v6;
}

void OUTLINED_FUNCTION_77()
{

  JUMPOUT(0x1D3874700);
}

void OUTLINED_FUNCTION_86()
{

  JUMPOUT(0x1D3874700);
}

uint64_t OUTLINED_FUNCTION_88@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;

  return sub_1CFCFE374(v1, sub_1CFCFF25C);
}

void OUTLINED_FUNCTION_94()
{

  JUMPOUT(0x1D3874700);
}

BOOL OUTLINED_FUNCTION_95(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_101()
{

  JUMPOUT(0x1D3873940);
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1CFD494F8();
}

BOOL OUTLINED_FUNCTION_109_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_110(uint64_t a1)
{

  return sub_1CFCF0B10(a1, type metadata accessor for SummarizableItem);
}

uint64_t OUTLINED_FUNCTION_120()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_121()
{

  JUMPOUT(0x1D3874700);
}

id OUTLINED_FUNCTION_124(void *a1)
{

  return [a1 (v1 + 3448)];
}

BOOL OUTLINED_FUNCTION_126(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_128@<X0>(char a1@<W8>)
{
  *(v1 + v2) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_129(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1CFD495A8();
}

uint64_t OUTLINED_FUNCTION_130()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_141(void *a1)
{

  return [a1 (v2 + 3448)];
}

void OUTLINED_FUNCTION_144()
{
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
}

_OWORD *OUTLINED_FUNCTION_151()
{

  return sub_1CFD01C10((v0 + 120), (v0 + 88));
}

uint64_t OUTLINED_FUNCTION_153()
{

  return sub_1CFD02140();
}

uint64_t OUTLINED_FUNCTION_154(uint64_t result)
{
  v1[18] = result;
  v1[19] = 1684957547;
  v1[20] = 0xE400000000000000;
  return result;
}

void OUTLINED_FUNCTION_161()
{
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
}

uint64_t OUTLINED_FUNCTION_162(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_163()
{
}

void OUTLINED_FUNCTION_164()
{
}

uint64_t OUTLINED_FUNCTION_165(uint64_t a1)
{

  return sub_1CFCE3050(a1, v1, v2);
}

void OUTLINED_FUNCTION_168()
{

  sub_1CFD21098();
}

uint64_t OUTLINED_FUNCTION_191()
{
}

uint64_t OUTLINED_FUNCTION_193()
{
}

BOOL OUTLINED_FUNCTION_194(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t SummarizableItem.identifier.setter()
{
  OUTLINED_FUNCTION_30();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SummarizableItem.bundle.setter()
{
  OUTLINED_FUNCTION_30();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SummarizableItem.textContent.setter()
{
  OUTLINED_FUNCTION_30();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SummarizableItem.htmlContent.setter()
{
  OUTLINED_FUNCTION_30();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SummarizableItem.sender.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 64), 0x41uLL);
  memcpy(a1, (v1 + 64), 0x41uLL);
  return sub_1CFD0373C(__dst, &v4, &qword_1EC4F3048, &unk_1CFD4D240);
}

void *SummarizableItem.sender.setter(const void *a1)
{
  memcpy(__dst, (v1 + 64), 0x41uLL);
  sub_1CFCE3050(__dst, &qword_1EC4F3048, &unk_1CFD4D240);
  return memcpy((v1 + 64), a1, 0x41uLL);
}

uint64_t SummarizableItem.recipients.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t type metadata accessor for SummarizableItem(uint64_t a1)
{
  result = qword_1EDDD37B0;
  if (!qword_1EDDD37B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFD0373C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_25();
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return a2;
}

uint64_t SummarizableItem.dateReceived.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_16_2() + 40);

  return sub_1CFCE281C(v0, v2);
}

uint64_t SummarizableItem.isRead.setter(char a1)
{
  result = type metadata accessor for SummarizableItem(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t SummarizableItem.subject.getter()
{
  type metadata accessor for SummarizableItem(0);

  return OUTLINED_FUNCTION_27();
}

uint64_t SummarizableItem.subject.setter()
{
  OUTLINED_FUNCTION_30();
  v3 = (v1 + *(type metadata accessor for SummarizableItem(0) + 48));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SummarizableItem.init(identifier:bundle:textContent:htmlContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 64) = xmmword_1CFD4D230;
  *(a9 + 136) = 0;
  v17 = type metadata accessor for SummarizableItem(0);
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0;
  v18 = v17[10];
  v19 = sub_1CFD48CC8();
  result = __swift_storeEnumTagSinglePayload(a9 + v18, 1, 1, v19);
  *(a9 + v17[11]) = 2;
  v21 = (a9 + v17[12]);
  *v21 = 0;
  v21[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_1CFD03A48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (OUTLINED_FUNCTION_20(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E7562 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_20(0x656C646E7562, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E6F4374786574 && a2 == 0xEB00000000746E65;
      if (v7 || (OUTLINED_FUNCTION_20(0x746E6F4374786574, 0xEB00000000746E65) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E6F436C6D7468 && a2 == 0xEB00000000746E65;
        if (v8 || (OUTLINED_FUNCTION_20(0x746E6F436C6D7468, 0xEB00000000746E65) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_20(0x7265646E6573, 0xE600000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
            if (v10 || (OUTLINED_FUNCTION_20(0x6E65697069636572, 0xEA00000000007374) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = OUTLINED_FUNCTION_14_4();
              v13 = a1 == v11 && a2 == v12;
              if (v13 || (OUTLINED_FUNCTION_20(v11, v12) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = a1 == 0x646165527369 && a2 == 0xE600000000000000;
                if (v14 || (OUTLINED_FUNCTION_20(0x646165527369, 0xE600000000000000) & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v16 = OUTLINED_FUNCTION_20(0x7463656A627573, 0xE700000000000000);

                  if (v16)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1CFD03C8C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C646E7562;
      break;
    case 2:
      v3 = 1954047348;
      goto LABEL_6;
    case 3:
      v3 = 1819112552;
LABEL_6:
      result = v3 | 0x746E6F4300000000;
      break;
    case 4:
      result = 0x7265646E6573;
      break;
    case 5:
      result = 0x6E65697069636572;
      break;
    case 6:
      result = OUTLINED_FUNCTION_14_4();
      break;
    case 7:
      result = 0x646165527369;
      break;
    case 8:
      result = 0x7463656A627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD03D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD03A48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD03DB8(uint64_t a1)
{
  v2 = sub_1CFD041C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFD03DF4(uint64_t a1)
{
  v2 = sub_1CFD041C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizableItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3050, &unk_1CFD4D250);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD041C0();
  sub_1CFD497A8();
  __dst[0] = 0;
  OUTLINED_FUNCTION_5_1();
  sub_1CFD495E8();
  if (!v2)
  {
    __dst[0] = 1;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495E8();
    __dst[0] = 2;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495B8();
    __dst[87] = 3;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495B8();
    memcpy(__dst, (v3 + 64), 0x41uLL);
    memcpy(__src, (v3 + 64), sizeof(__src));
    __dst[86] = 4;
    sub_1CFD0373C(__dst, v13, &qword_1EC4F3048, &unk_1CFD4D240);
    sub_1CFCDF174();
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495D8();
    memcpy(v13, __src, 0x41uLL);
    sub_1CFCE3050(v13, &qword_1EC4F3048, &unk_1CFD4D240);
    v12 = *(v3 + 136);
    __dst[85] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    sub_1CFD048E4(&qword_1EC4F2AB0, sub_1CFCDF174, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495D8();
    type metadata accessor for SummarizableItem(0);
    LOBYTE(v12) = 6;
    sub_1CFD48CC8();
    sub_1CFCEBB9C(&qword_1EC4F2A90, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495D8();
    LOBYTE(v12) = 7;
    OUTLINED_FUNCTION_7_5();
    sub_1CFD495C8();
    LOBYTE(v12) = 8;
    OUTLINED_FUNCTION_5_1();
    sub_1CFD495B8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1CFD041C0()
{
  result = qword_1EC4F9840[0];
  if (!qword_1EC4F9840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9840);
  }

  return result;
}

uint64_t SummarizableItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3058, &qword_1CFD4D260);
  OUTLINED_FUNCTION_37();
  v45 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for SummarizableItem(0);
  OUTLINED_FUNCTION_25();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 4) = xmmword_1CFD4D230;
  v49 = v12 + 64;
  *(v12 + 5) = 0u;
  *(v12 + 6) = 0u;
  *(v12 + 7) = 0u;
  v12[128] = 0;
  v13 = *(v10 + 40);
  v14 = sub_1CFD48CC8();
  v15 = v13;
  v50 = v12;
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v47 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1CFD041C0();
  v18 = v48;
  sub_1CFD49788();
  if (v18)
  {
    OUTLINED_FUNCTION_11_4();
    v19 = v15;
    v22 = v49;
    OUTLINED_FUNCTION_13_4();
    v23 = v50;
    if (v17)
    {
    }

    memcpy(__dst, v22, 0x41uLL);
    sub_1CFCE3050(__dst, &qword_1EC4F3048, &unk_1CFD4D240);

    return sub_1CFCE3050(v23 + v19, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
  }

  else
  {
    v48 = v14;
    v43 = v8;
    __dst[0] = 0;
    OUTLINED_FUNCTION_6_5();
    v20 = sub_1CFD49548();
    v21 = v15;
    v24 = v50;
    *v50 = v20;
    v24[1] = v25;
    __dst[0] = 1;
    OUTLINED_FUNCTION_6_5();
    v26 = sub_1CFD49548();
    v27 = v49;
    v24[2] = v26;
    v24[3] = v28;
    __dst[0] = 2;
    OUTLINED_FUNCTION_6_5();
    v24[4] = sub_1CFD49518();
    v24[5] = v29;
    __dst[0] = 3;
    OUTLINED_FUNCTION_5_4();
    v24[6] = sub_1CFD49518();
    v24[7] = v30;
    v42 = v30;
    __dst[95] = 4;
    sub_1CFCDF450();
    OUTLINED_FUNCTION_6_5();
    sub_1CFD49538();
    memcpy(__src, __dst, sizeof(__src));
    memcpy(v53, v27, 0x41uLL);
    sub_1CFCE3050(v53, &qword_1EC4F3048, &unk_1CFD4D240);
    memcpy(v27, __src, 0x41uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    __dst[94] = 5;
    sub_1CFD048E4(&qword_1EC4F2B18, sub_1CFCDF450, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_6_5();
    sub_1CFD49538();
    v31 = v50;
    v50[17] = v51;
    LOBYTE(v51) = 6;
    sub_1CFCEBB9C(&qword_1EC4F2B08, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_6_5();
    sub_1CFD49538();
    sub_1CFCE281C(v5, v31 + v21);
    LOBYTE(v51) = 7;
    OUTLINED_FUNCTION_5_4();
    v32 = sub_1CFD49528();
    v33 = v31;
    v34 = v43;
    *(v33 + *(v43 + 44)) = v32;
    LOBYTE(v51) = 8;
    OUTLINED_FUNCTION_5_4();
    v35 = sub_1CFD49518();
    v37 = v36;
    v38 = (v33 + *(v34 + 48));
    v39 = OUTLINED_FUNCTION_0_5();
    v40(v39);
    *v38 = v35;
    v38[1] = v37;
    sub_1CFD0495C(v33, v44);
    OUTLINED_FUNCTION_13_4();
    return sub_1CFD049C0(v33);
  }
}

uint64_t sub_1CFD048E4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFD0495C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizableItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFD049C0(uint64_t a1)
{
  v2 = type metadata accessor for SummarizableItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFD04A74(uint64_t a1)
{
  sub_1CFD04BF0(319, qword_1EDDD3340, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1CFD04BF0(319, &qword_1EDDD2868, &type metadata for EntityHandle);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1CFD04B8C(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1CFCE4010(319);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1CFD04BF0(319, &unk_1EDDD3760, MEMORY[0x1E69E6370]);
    if (v8 > 0x3F)
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

void sub_1CFD04B8C(uint64_t a1)
{
  if (!qword_1EDDD3330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    v1 = sub_1CFD49338();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDD3330);
    }
  }
}

void sub_1CFD04BF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1CFD49338();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SummarizableItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SummarizableItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFD04DA4()
{
  result = qword_1EC4F9A50[0];
  if (!qword_1EC4F9A50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9A50);
  }

  return result;
}

unint64_t sub_1CFD04DFC()
{
  result = qword_1EC4F9B60;
  if (!qword_1EC4F9B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9B60);
  }

  return result;
}

unint64_t sub_1CFD04E54()
{
  result = qword_1EC4F9B68[0];
  if (!qword_1EC4F9B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9B68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  v2 = *(v0 - 344);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return type metadata accessor for SummarizableItem(0);
}

uint64_t ResolvedTapback.sender.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x41uLL);
  memcpy(a1, (v1 + 8), 0x41uLL);
  return sub_1CFCDB100(__dst, &v4);
}

BOOL static ResolvedTapback.== infix(_:_:)(char *__src, char *a2)
{
  v3 = __src + 8;
  v4 = *__src;
  memcpy(__dst, __src + 8, 0x41uLL);
  v6 = *a2;
  v5 = (a2 + 8);
  memcpy(v14, v5, 0x41uLL);
  if (sub_1CFD0511C(v4, v6))
  {
    memcpy(__srca, v3, 0x41uLL);
    memcpy(v9, v5, 0x41uLL);
    sub_1CFCDB100(__dst, v12);
    sub_1CFCDB100(v14, v12);
    v7 = static EntityHandle.== infix(_:_:)(__srca, v9);
    memcpy(v11, v9, 0x41uLL);
    sub_1CFCDB1BC(v11);
    memcpy(v12, __srca, 0x41uLL);
    sub_1CFCDB1BC(v12);
  }

  else
  {
    return 0;
  }

  return v7;
}

BOOL sub_1CFD0511C(char a1, char a2)
{
  sub_1CFD05A10();
  sub_1CFD49108();
  sub_1CFD49108();
  return v4 == v3;
}

uint64_t sub_1CFD05194(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CFD49668() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CFD49668();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CFD05258(char a1)
{
  if (a1)
  {
    return 0x7265646E6573;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1CFD0528C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD05194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD052B4(uint64_t a1)
{
  v2 = sub_1CFD05518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFD052F0(uint64_t a1)
{
  v2 = sub_1CFD05518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResolvedTapback.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3060, &qword_1CFD4D440);
  OUTLINED_FUNCTION_37();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  v10 = *v1;
  memcpy(__dst, v1 + 8, 0x41uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD05518();
  sub_1CFD497A8();
  __src[0] = v10;
  v12[0] = 0;
  sub_1CFCDF20C();
  sub_1CFD49618();
  if (!v2)
  {
    memcpy(__src, __dst, sizeof(__src));
    __dst[95] = 1;
    sub_1CFCDB100(__dst, v12);
    sub_1CFCDF174();
    sub_1CFD49618();
    memcpy(v12, __src, 0x41uLL);
    sub_1CFCDB1BC(v12);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1CFD05518()
{
  result = qword_1EC4F9BF0[0];
  if (!qword_1EC4F9BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9BF0);
  }

  return result;
}

uint64_t ResolvedTapback.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3068, &qword_1CFD4D448);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &__src[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD05518();
  sub_1CFD49788();
  if (!v2)
  {
    v23 = 0;
    v11 = sub_1CFCDF5A0();
    OUTLINED_FUNCTION_0_6(&type metadata for TapbackType, v12, v13, v14, v11);
    v15 = __src[0];
    v23 = 1;
    v16 = sub_1CFCDF450();
    OUTLINED_FUNCTION_0_6(&type metadata for EntityHandle, v17, v18, v19, v16);
    (*(v7 + 8))(v10, v5);
    memcpy(&v22[7], __src, 0x41uLL);
    *a2 = v15;
    memcpy(a2 + 1, v22, 0x48uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CFD05760(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1CFD057B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResolvedTapback.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFD0590C()
{
  result = qword_1EC4F9E80[0];
  if (!qword_1EC4F9E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9E80);
  }

  return result;
}

unint64_t sub_1CFD05964()
{
  result = qword_1EC4F9F90;
  if (!qword_1EC4F9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F9F90);
  }

  return result;
}

unint64_t sub_1CFD059BC()
{
  result = qword_1EC4F9F98[0];
  if (!qword_1EC4F9F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F9F98);
  }

  return result;
}

unint64_t sub_1CFD05A10()
{
  result = qword_1EC4F3070;
  if (!qword_1EC4F3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3070);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1CFD49578();
}

uint64_t NotificationEntity.uniqueId.setter()
{
  OUTLINED_FUNCTION_30();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.domainId.setter()
{
  OUTLINED_FUNCTION_30();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t NotificationEntity.donatingBundleId.setter()
{
  OUTLINED_FUNCTION_30();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t NotificationEntity.absoluteTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationEntity(0) + 28);
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_25();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NotificationEntity(uint64_t a1)
{
  result = qword_1EDDD6010;
  if (!qword_1EDDD6010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NotificationEntity.absoluteTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for NotificationEntity(v2) + 28);
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_25();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t NotificationEntity.absoluteTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.appBundleId.getter()
{
  type metadata accessor for NotificationEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.appBundleId.setter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for NotificationEntity(0);
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.appBundleId.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.title.getter()
{
  type metadata accessor for NotificationEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.title.setter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for NotificationEntity(0);
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.title.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.subtitle.getter()
{
  type metadata accessor for NotificationEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.subtitle.setter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for NotificationEntity(0);
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.subtitle.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.body.getter()
{
  type metadata accessor for NotificationEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.body.setter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for NotificationEntity(0);
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.body.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.threadId.getter()
{
  type metadata accessor for NotificationEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.threadId.setter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for NotificationEntity(0);
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.threadId.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.category.getter()
{
  type metadata accessor for NotificationEntity(0);
  OUTLINED_FUNCTION_28();
  return OUTLINED_FUNCTION_27();
}

uint64_t NotificationEntity.category.setter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for NotificationEntity(0);
  result = OUTLINED_FUNCTION_41();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NotificationEntity.category.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isGroupMessage.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t NotificationEntity.isGroupMessage.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isTimeSensitive.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t NotificationEntity.isTimeSensitive.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isCritical.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 64)) = v0;
  return result;
}

uint64_t NotificationEntity.isCritical.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isCommunicationNotification.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 68)) = v0;
  return result;
}

uint64_t NotificationEntity.isCommunicationNotification.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.isSpotlightUpdate.setter()
{
  result = OUTLINED_FUNCTION_36_3();
  *(v1 + *(result + 72)) = v0;
  return result;
}

uint64_t NotificationEntity.isSpotlightUpdate.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.attachments.getter()
{
  type metadata accessor for NotificationEntity(0);
}

uint64_t NotificationEntity.attachments.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for NotificationEntity(v2) + 76);

  *(v1 + v3) = v0;
  return result;
}

uint64_t NotificationEntity.attachments.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.senderHandles.getter()
{
  type metadata accessor for NotificationEntity(0);
}

uint64_t NotificationEntity.senderHandles.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for NotificationEntity(v2) + 80);

  *(v1 + v3) = v0;
  return result;
}

uint64_t NotificationEntity.senderHandles.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.recipientHandles.getter()
{
  type metadata accessor for NotificationEntity(0);
}

uint64_t NotificationEntity.recipientHandles.setter()
{
  v2 = OUTLINED_FUNCTION_21();
  v3 = *(type metadata accessor for NotificationEntity(v2) + 84);

  *(v1 + v3) = v0;
  return result;
}

uint64_t NotificationEntity.recipientHandles.modify()
{
  v0 = OUTLINED_FUNCTION_21();
  type metadata accessor for NotificationEntity(v0);
  return OUTLINED_FUNCTION_23();
}

uint64_t NotificationEntity.init(uniqueId:domainId:donatingBundleId:absoluteTimestamp:appBundleId:title:subtitle:body:threadId:category:isGroupMessage:isTimeSensitive:isCritical:isCommunicationNotification:isSpotlightUpdate:attachments:senderHandles:recipientHandles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, char a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = type metadata accessor for NotificationEntity(0);
  v31 = &a9[v30[8]];
  v32 = &a9[v30[9]];
  v33 = &a9[v30[10]];
  v34 = &a9[v30[11]];
  v35 = &a9[v30[12]];
  v36 = &a9[v30[13]];
  v37 = v30[15];
  v43 = v30[16];
  v44 = v30[14];
  v41 = v30[18];
  v42 = v30[17];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v38 = v30[7];
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_25();
  result = (*(v39 + 32))(&a9[v38], a7);
  *v31 = a8;
  *(v31 + 1) = a10;
  *v32 = a11;
  *(v32 + 1) = a12;
  *v33 = a13;
  *(v33 + 1) = a14;
  *v34 = a15;
  *(v34 + 1) = a16;
  *v35 = a17;
  *(v35 + 1) = a18;
  *v36 = a19;
  *(v36 + 1) = a20;
  a9[v44] = a21;
  a9[v37] = a22;
  a9[v43] = a23;
  a9[v42] = a24;
  a9[v41] = a25;
  *&a9[v30[19]] = a26;
  *&a9[v30[20]] = a27;
  *&a9[v30[21]] = a28;
  return result;
}

uint64_t NotificationEntity.messageForCommunicationNotification.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_1CFD48CC8();
  OUTLINED_FUNCTION_37();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for NotificationEntity(0);
  v11 = *(v1 + *(v10 + 68));
  if (v11 != 2 && (v11 & 1) != 0 && (v12 = v10, v13 = *(v1 + *(v10 + 80)), *(v13 + 16)))
  {
    memcpy(__dst, (v13 + 32), 0x41uLL);
    v34 = *v1;
    v33 = v1[1];
    v32 = v1[2];
    v31 = v1[3];
    v14 = v1[5];
    v30 = v1[4];
    (*(v5 + 16))(v9, v1 + v12[7], v3);
    v15 = (v1 + v12[8]);
    v16 = v15[1];
    v29 = *v15;
    v17 = (v1 + v12[12]);
    v18 = v17[1];
    v28 = *v17;
    memcpy(v38, __dst, 0x41uLL);
    v19 = *(v1 + v12[21]);
    v20 = (v1 + v12[11]);
    if (v20[1])
    {
      v27 = *v20;
      v26 = v20[1];
    }

    else
    {
      v27 = 0;
      v26 = 0xE000000000000000;
    }

    v23 = *(v1 + v12[19]);
    v24 = *(v1 + v12[14]);
    v37 = 10;
    v36 = 15;
    sub_1CFCDB100(__dst, v35);

    MessageEntity.init(uniqueId:domainId:donatingBundleId:absoluteTimestamp:appBundleId:conversationId:conversationUUID:inlineThreadId:accountHandles:senderHandle:recipientHandles:content:attachments:isNew:isTwoFactorCode:isFromMe:isFromKnownSender:isGroupThread:isJunk:isRead:isPinned:isBusinessChat:tapbackAssociatedMessageId:tapbackType:messageEffect:messageType:messagesService:ownerIdentifier:isSpotlightUpdate:fileProtectionType:)(v34, v33, v32, v31, v30, v14, v9, v29, a1, v16, v28, v18, 0, 0, 0, 0, 0, v38, v19, v27, v26, v23, 1, 2, 0, 2, v24, 2, 0, 2, 2, 0, 0, &v37, &v36, 0, 0, 0, 0, 0, 0, 2, 0);
    v25 = type metadata accessor for MessageEntity(0);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v25);
  }

  else
  {
    v21 = type metadata accessor for MessageEntity(0);

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v21);
  }
}

uint64_t static NotificationEntity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CFD49668() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[4] == a2[4] && v8 == v9;
    if (!v10 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = type metadata accessor for NotificationEntity(0);
  if ((sub_1CFD48CA8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  if (v14)
  {
    if (!v12)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v13);
    v17 = v4 && v15 == v16;
    if (!v17 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  if (v20)
  {
    if (!v18)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v19);
    v23 = v4 && v21 == v22;
    if (!v23 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  if (v26)
  {
    if (!v24)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v25);
    v29 = v4 && v27 == v28;
    if (!v29 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  if (v32)
  {
    if (!v30)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v31);
    v35 = v4 && v33 == v34;
    if (!v35 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  if (v38)
  {
    if (!v36)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v37);
    v41 = v4 && v39 == v40;
    if (!v41 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_0();
  if (v44)
  {
    if (!v42)
    {
      return 0;
    }

    OUTLINED_FUNCTION_19(v43);
    v47 = v4 && v45 == v46;
    if (!v47 && (sub_1CFD49668() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_4();
  if (v4)
  {
    if (v48 != 2)
    {
      return 0;
    }
  }

  else if (v48 == 2 || ((v48 ^ v49) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_4();
  if (v4)
  {
    if (v50 != 2)
    {
      return 0;
    }
  }

  else if (v50 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_4();
  if (v4)
  {
    if (v52 != 2)
    {
      return 0;
    }
  }

  else if (v52 == 2 || ((v52 ^ v53) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22_4();
  if (v4)
  {
    if (v54 == 2)
    {
      goto LABEL_103;
    }

    return 0;
  }

  if (v54 == 2 || ((v54 ^ v55) & 1) != 0)
  {
    return 0;
  }

LABEL_103:
  if (*(a1 + v11[18]) != *(a2 + v11[18]) || (sub_1CFCDCC38(*(a1 + v11[19]), *(a2 + v11[19])) & 1) == 0 || (sub_1CFCDCB14(*(a1 + v11[20]), *(a2 + v11[20])) & 1) == 0)
  {
    return 0;
  }

  v56 = v11[21];
  v57 = *(a1 + v56);
  v58 = *(a2 + v56);

  return sub_1CFCDCB14(v57, v58);
}

uint64_t sub_1CFD06EE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_20(0x6449657571696E75, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496E69616D6F64 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_20(0x64496E69616D6F64, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001CFD5D690 == a2;
      if (v7 || (OUTLINED_FUNCTION_20(0xD000000000000010, 0x80000001CFD5D690) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001CFD5D6B0 == a2;
        if (v8 || (OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D6B0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_56();
          v11 = a1 == v9 && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_20(v9, v10) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
            if (v12 || (OUTLINED_FUNCTION_20(0x656C746974, 0xE500000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
              if (v13 || (OUTLINED_FUNCTION_20(0x656C746974627573, 0xE800000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = a1 == 2036625250 && a2 == 0xE400000000000000;
                if (v14 || (OUTLINED_FUNCTION_20(2036625250, 0xE400000000000000) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = a1 == 0x6449646165726874 && a2 == 0xE800000000000000;
                  if (v15 || (OUTLINED_FUNCTION_20(0x6449646165726874, 0xE800000000000000) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v16 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
                    if (v16 || (OUTLINED_FUNCTION_20(0x79726F6765746163, 0xE800000000000000) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v17 = OUTLINED_FUNCTION_32_2();
                      v19 = a1 == v17 && a2 == v18;
                      if (v19 || (OUTLINED_FUNCTION_20(v17, v18) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v20 = OUTLINED_FUNCTION_31_2();
                        v22 = a1 == v20 && a2 == v21;
                        if (v22 || (OUTLINED_FUNCTION_20(v20, v21) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v23 = a1 == 0x6369746972437369 && a2 == 0xEA00000000006C61;
                          if (v23 || (OUTLINED_FUNCTION_20(0x6369746972437369, 0xEA00000000006C61) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v24 = a1 == 0xD00000000000001BLL && 0x80000001CFD5E1C0 == a2;
                            if (v24 || (OUTLINED_FUNCTION_20(0xD00000000000001BLL, 0x80000001CFD5E1C0) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v25 = a1 == 0xD000000000000011 && 0x80000001CFD5D770 == a2;
                              if (v25 || (OUTLINED_FUNCTION_20(0xD000000000000011, 0x80000001CFD5D770) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v26 = OUTLINED_FUNCTION_57();
                                v28 = a1 == v26 && a2 == v27;
                                if (v28 || (OUTLINED_FUNCTION_20(v26, v27) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v29 = OUTLINED_FUNCTION_30_2();
                                  v31 = a1 == v29 && a2 == v30;
                                  if (v31 || (OUTLINED_FUNCTION_20(v29, v30) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0xD000000000000010 && 0x80000001CFD5D6F0 == a2)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v33 = OUTLINED_FUNCTION_20(0xD000000000000010, 0x80000001CFD5D6F0);

                                    if (v33)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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
  }
}

uint64_t sub_1CFD07308(char a1)
{
  result = 0x6449657571696E75;
  switch(a1)
  {
    case 1:
      v3 = 0x6E69616D6F64;
      goto LABEL_19;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 14:
      result = 0xD000000000000011;
      break;
    case 4:
      result = OUTLINED_FUNCTION_56();
      break;
    case 5:
      result = 0x656C746974;
      break;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      result = 2036625250;
      break;
    case 8:
      v3 = 0x646165726874;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 9:
      result = 0x79726F6765746163;
      break;
    case 10:
      result = OUTLINED_FUNCTION_32_2();
      break;
    case 11:
      result = OUTLINED_FUNCTION_31_2();
      break;
    case 12:
      result = 0x6369746972437369;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = OUTLINED_FUNCTION_57();
      break;
    case 16:
      result = OUTLINED_FUNCTION_30_2();
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD074D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD06EE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFD07504(uint64_t a1)
{
  v2 = sub_1CFD079CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFD07540(uint64_t a1)
{
  v2 = sub_1CFD079CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3078, &qword_1CFD4D640);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD079CC();
  sub_1CFD497A8();
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_0_7();
  sub_1CFD495E8();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    LOBYTE(v17) = 2;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    v11 = type metadata accessor for NotificationEntity(0);
    LOBYTE(v17) = 3;
    sub_1CFD48CC8();
    OUTLINED_FUNCTION_17_5();
    sub_1CFD089C0(v12, v13, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    OUTLINED_FUNCTION_34(v11[8]);
    LOBYTE(v17) = 4;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[9]);
    LOBYTE(v17) = 5;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[10]);
    LOBYTE(v17) = 6;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[11]);
    LOBYTE(v17) = 7;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[12]);
    LOBYTE(v17) = 8;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_34(v11[13]);
    LOBYTE(v17) = 9;
    OUTLINED_FUNCTION_0_7();
    sub_1CFD495B8();
    OUTLINED_FUNCTION_1_7(10);
    sub_1CFD495C8();
    OUTLINED_FUNCTION_1_7(11);
    sub_1CFD495C8();
    OUTLINED_FUNCTION_1_7(12);
    sub_1CFD495C8();
    OUTLINED_FUNCTION_1_7(13);
    sub_1CFD495C8();
    OUTLINED_FUNCTION_1_7(14);
    sub_1CFD495F8();
    v17 = *(v3 + v11[19]);
    v16 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD082E0(&qword_1EC4F2AC0, &qword_1EC4F2AC8, &protocol conformance descriptor for EntityAttachment, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    v17 = *(v3 + v11[20]);
    v16 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    sub_1CFD07A20(&qword_1EC4F2AB0, sub_1CFCDF174, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    v17 = *(v3 + v11[21]);
    v16 = 17;
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1CFD079CC()
{
  result = qword_1EC4FA020[0];
  if (!qword_1EC4FA020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FA020);
  }

  return result;
}

uint64_t sub_1CFD07A20(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NotificationEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_37();
  v35 = v6;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3080, &qword_1CFD4D648);
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v10);
  v38 = type metadata accessor for NotificationEntity(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v37 = (v13 - v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFD079CC();
  sub_1CFD49788();
  if (v2)
  {
    OUTLINED_FUNCTION_6_6();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_14_5();
    *v37 = sub_1CFD49548();
    v37[1] = v14;
    v37[2] = OUTLINED_FUNCTION_4_4(1);
    v37[3] = v15;
    v37[4] = OUTLINED_FUNCTION_4_4(2);
    v37[5] = v16;
    LOBYTE(v39) = 3;
    OUTLINED_FUNCTION_17_5();
    sub_1CFD089C0(v17, v18, MEMORY[0x1E6969558]);
    OUTLINED_FUNCTION_14_5();
    sub_1CFD49578();
    (*(v35 + 32))(v37 + v38[7], v9, v36);
    v19 = OUTLINED_FUNCTION_4_4(4);
    OUTLINED_FUNCTION_60(v19, v20, v38[8]);
    v21 = OUTLINED_FUNCTION_4_4(5);
    OUTLINED_FUNCTION_60(v21, v22, v38[9]);
    v23 = OUTLINED_FUNCTION_4_4(6);
    OUTLINED_FUNCTION_60(v23, v24, v38[10]);
    v25 = OUTLINED_FUNCTION_4_4(7);
    OUTLINED_FUNCTION_60(v25, v26, v38[11]);
    v27 = OUTLINED_FUNCTION_4_4(8);
    OUTLINED_FUNCTION_60(v27, v28, v38[12]);
    v29 = OUTLINED_FUNCTION_4_4(9);
    v30 = (v37 + v38[13]);
    *v30 = v29;
    v30[1] = v31;
    OUTLINED_FUNCTION_2_6(10);
    *(v37 + v38[14]) = sub_1CFD49528();
    OUTLINED_FUNCTION_2_6(11);
    *(v37 + v38[15]) = sub_1CFD49528();
    OUTLINED_FUNCTION_2_6(12);
    *(v37 + v38[16]) = sub_1CFD49528();
    OUTLINED_FUNCTION_2_6(13);
    *(v37 + v38[17]) = sub_1CFD49528();
    OUTLINED_FUNCTION_2_6(14);
    *(v37 + v38[18]) = sub_1CFD49558() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD082E0(&qword_1EC4F2B20, &qword_1EC4F2B28, &protocol conformance descriptor for EntityAttachment, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_14_5();
    sub_1CFD49578();
    *(v37 + v38[19]) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2AA8, &unk_1CFD49F00);
    sub_1CFD07A20(&qword_1EC4F2B18, sub_1CFCDF450, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_14_5();
    sub_1CFD49578();
    *(v37 + v38[20]) = v39;
    OUTLINED_FUNCTION_14_5();
    sub_1CFD49578();
    v32 = OUTLINED_FUNCTION_10_2();
    v33(v32);
    *(v37 + v38[21]) = v39;
    sub_1CFD08964(v37, a2, type metadata accessor for NotificationEntity);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_27();
    return sub_1CFD08A08();
  }
}

uint64_t sub_1CFD082E0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4F2AB8, &qword_1CFD4D060);
    sub_1CFD089C0(a2, type metadata accessor for EntityAttachment, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFD083B4(uint64_t a1)
{
  result = sub_1CFD089C0(&qword_1EDDD2E08, type metadata accessor for NotificationEntity, &protocol conformance descriptor for NotificationEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CFD08418(uint64_t a1)
{
  *(a1 + 8) = sub_1CFD089C0(&qword_1EDDD2E10, type metadata accessor for NotificationEntity, &protocol conformance descriptor for NotificationEntity);
  result = sub_1CFD089C0(&qword_1EDDD2E18, type metadata accessor for NotificationEntity, &protocol conformance descriptor for NotificationEntity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CFD084F8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_3();
  sub_1CFD086A8(v2, v3, v4, v5);
  OUTLINED_FUNCTION_37_3();
  if (!(!v7 & v6))
  {
    v8 = sub_1CFD48CC8();
    if (v9 > 0x3F)
    {
      return v8;
    }

    else
    {
      v10 = MEMORY[0x1E69E6370];
      v11 = OUTLINED_FUNCTION_16_3();
      sub_1CFD086A8(v11, v12, v10, v13);
      OUTLINED_FUNCTION_37_3();
      if (!(!v7 & v6))
      {
        sub_1CFD08650(319);
        OUTLINED_FUNCTION_37_3();
        if (!(!v7 & v6))
        {
          sub_1CFD086A8(319, &qword_1EDDD3338, &type metadata for EntityHandle, MEMORY[0x1E69E62F8]);
          OUTLINED_FUNCTION_37_3();
          if (!(!v7 & v6))
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1CFD08650(uint64_t a1)
{
  if (!qword_1EDDD3320)
  {
    type metadata accessor for EntityAttachment(255);
    v1 = sub_1CFD49218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDD3320);
    }
  }
}

void sub_1CFD086A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for NotificationEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotificationEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFD08860()
{
  result = qword_1EC4FA230[0];
  if (!qword_1EC4FA230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FA230);
  }

  return result;
}

unint64_t sub_1CFD088B8()
{
  result = qword_1EC4FA340;
  if (!qword_1EC4FA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA340);
  }

  return result;
}

unint64_t sub_1CFD08910()
{
  result = qword_1EC4FA348[0];
  if (!qword_1EC4FA348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FA348);
  }

  return result;
}

uint64_t sub_1CFD08964(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_25();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

uint64_t sub_1CFD089C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFD08A08()
{
  v1 = OUTLINED_FUNCTION_21();
  v2(v1);
  OUTLINED_FUNCTION_25();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_4_4@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1CFD49518();
}

void OUTLINED_FUNCTION_6_6()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_36_3()
{

  return type metadata accessor for NotificationEntity(0);
}

uint64_t sub_1CFD08C48()
{
  v0 = sub_1CFD48E38();
  __swift_allocate_value_buffer(v0, qword_1EDDD3788);
  v1 = OUTLINED_FUNCTION_27();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_139();
  return sub_1CFD48E28();
}

uint64_t sub_1CFD08CC4()
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
  }

  v0 = sub_1CFD48E38();

  return __swift_project_value_buffer(v0, qword_1EDDD3788);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.summarizationClient.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
  }

  v2 = sub_1CFD48E38();
  __swift_project_value_buffer(v2, qword_1EDDD3788);
  OUTLINED_FUNCTION_29_2();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1CFD08E34(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

Swift::String __swiftcall SummarizationPipelineRequest.caseString()()
{
  v0 = sub_1CFD0B5C4(type metadata accessor for SummarizationPipelineRequest, type metadata accessor for SummarizationPipelineRequest);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1CFD08EC0()
{
  sub_1CFD09A68();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD08EF8()
{
  sub_1CFD09A68();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD08F68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD0B728();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD08F90()
{
  sub_1CFD09A14();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD08FC8()
{
  sub_1CFD09A14();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD09000()
{
  sub_1CFD09B94();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD09038()
{
  sub_1CFD09B94();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD09070()
{
  sub_1CFD09C98();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD090A8()
{
  sub_1CFD09C98();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD090E0()
{
  sub_1CFD09ABC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD09118()
{
  sub_1CFD09ABC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD09150()
{
  sub_1CFD09D34();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD09188()
{
  sub_1CFD09D34();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationPipelineRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_143();
  v21 = v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3088, &qword_1CFD4D8D0);
  OUTLINED_FUNCTION_37();
  v76 = v22;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v24);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3090, &qword_1CFD4D8D8);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v26);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3098, &qword_1CFD4D8E0);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v28);
  type metadata accessor for FeedbackRequest(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_89_0(v31 - v30);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30A0, &qword_1CFD4D8E8);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v33);
  type metadata accessor for ModelInputContentRequest(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30A8, &qword_1CFD4D8F0);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_4();
  type metadata accessor for SummarizationPipelineRequest(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_0();
  v43 = (v42 - v41);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30B0, &unk_1CFD4D8F8);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_178(v21, v21[3]);
  sub_1CFD09A14();
  sub_1CFD497A8();
  sub_1CFD125F4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1CFD09C40();
      LOBYTE(v80[0]) = 1;
      sub_1CFD09C98();
      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_24_4();
      sub_1CFD495A8();
      OUTLINED_FUNCTION_58_1();
      sub_1CFD09CEC(v65, 255, v66, &protocol conformance descriptor for ModelInputContentRequest);
      OUTLINED_FUNCTION_124_0(v37);
      v67 = OUTLINED_FUNCTION_19_3();
      v68(v67, v71);
      v59 = type metadata accessor for ModelInputContentRequest;
      v60 = v37;
      goto LABEL_8;
    case 2u:
      sub_1CFD09C40();
      LOBYTE(v80[0]) = 2;
      sub_1CFD09B94();
      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_24_4();
      sub_1CFD495A8();
      OUTLINED_FUNCTION_49_1();
      sub_1CFD09CEC(v55, 255, v56, &protocol conformance descriptor for FeedbackRequest);
      OUTLINED_FUNCTION_124_0(v72);
      v57 = OUTLINED_FUNCTION_19_3();
      v58(v57, v73);
      v59 = type metadata accessor for FeedbackRequest;
      v60 = v72;
LABEL_8:
      sub_1CFD09BE8(v60, v59);
      v69 = OUTLINED_FUNCTION_17_6();
      v70(v69);
      goto LABEL_9;
    case 3u:
      memcpy(v80, v43, 0x51uLL);
      sub_1CFD09ABC();
      OUTLINED_FUNCTION_108_0();
      OUTLINED_FUNCTION_24_4();
      sub_1CFD495A8();
      memcpy(v79, v80, 0x51uLL);
      sub_1CFD09B10();
      OUTLINED_FUNCTION_124_0(v79);
      v61 = OUTLINED_FUNCTION_19_3();
      v62(v61, v74);
      v63 = OUTLINED_FUNCTION_17_6();
      v64(v63);
      sub_1CFD09B64(v80);
      goto LABEL_9;
    case 4u:
      v54 = *v43;
      sub_1CFD09A68();
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      v80[0] = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
      OUTLINED_FUNCTION_67(&qword_1EDDD2B28, MEMORY[0x1E69E6160]);
      sub_1CFD49618();
      (*(v76 + 8))(v75, v77);
      v51 = OUTLINED_FUNCTION_30_3();
      v53 = v78;
      goto LABEL_4;
    default:
      v45 = *v43;
      v46 = v43[1];
      v47 = *(v43 + 16);
      v48 = *(v43 + 17);
      sub_1CFD09D34();
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      v80[0] = v45;
      v80[1] = v46;
      LOBYTE(v80[2]) = v47;
      BYTE1(v80[2]) = v48;
      sub_1CFCE6E60();
      OUTLINED_FUNCTION_124_0(v80);
      v49 = OUTLINED_FUNCTION_19_3();
      v50(v49, v38);
      v51 = OUTLINED_FUNCTION_30_3();
      v53 = v78;
LABEL_4:
      v52(v51, v53);

LABEL_9:
      OUTLINED_FUNCTION_142();
      return;
  }
}

unint64_t sub_1CFD09A14()
{
  result = qword_1EDDD5990[0];
  if (!qword_1EDDD5990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD5990);
  }

  return result;
}

unint64_t sub_1CFD09A68()
{
  result = qword_1EDDD54D8[0];
  if (!qword_1EDDD54D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD54D8);
  }

  return result;
}

unint64_t sub_1CFD09ABC()
{
  result = qword_1EC4FA3D0;
  if (!qword_1EC4FA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3D0);
  }

  return result;
}

unint64_t sub_1CFD09B10()
{
  result = qword_1EC4F30B8;
  if (!qword_1EC4F30B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F30B8);
  }

  return result;
}

unint64_t sub_1CFD09B94()
{
  result = qword_1EC4FA3D8;
  if (!qword_1EC4FA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3D8);
  }

  return result;
}

uint64_t sub_1CFD09BE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_25();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CFD09C40()
{
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  return v0;
}

unint64_t sub_1CFD09C98()
{
  result = qword_1EC4FA3E0;
  if (!qword_1EC4FA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3E0);
  }

  return result;
}

uint64_t sub_1CFD09CEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1CFD09D34()
{
  result = qword_1EC4FA3E8;
  if (!qword_1EC4FA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3E8);
  }

  return result;
}

void SummarizationPipelineRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_143();
  v25 = v24;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30D0, &qword_1CFD4D908);
  OUTLINED_FUNCTION_37();
  v117 = v26;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_22_1();
  v121 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30D8, &qword_1CFD4D910);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_22_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30E0, &qword_1CFD4D918);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22_1();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30E8, &qword_1CFD4D920);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30F0, &qword_1CFD4D928);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89_0(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F30F8, &unk_1CFD4D930);
  OUTLINED_FUNCTION_37();
  v119 = v36;
  v120 = v35;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_16_4();
  v118 = type metadata accessor for SummarizationPipelineRequest(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_9_0();
  v114 = (v39 - v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_134_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_133_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_73_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_137_0();
  v122 = v25;
  v46 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_178(v46, v47);
  v48 = sub_1CFD09A14();
  OUTLINED_FUNCTION_120_0(&type metadata for SummarizationPipelineRequest.CodingKeys, v49, v48);
  if (!v20)
  {
    v50 = v22;
    v51 = sub_1CFD49588();
    v52 = sub_1CFCE83C4(v51, 0);
    if (v54 == v53 >> 1)
    {
      v56 = v118;
      v55 = v119;
    }

    else
    {
      OUTLINED_FUNCTION_74_0();
      v124 = v22;
      OUTLINED_FUNCTION_135_0();
      if (v61 == v62)
      {
        __break(1u);
        return;
      }

      v63 = *(v60 + v58);
      sub_1CFCE840C(v58 + 1, v57, v52, v60, v58, v59);
      v65 = v64;
      v67 = v66;
      swift_unknownObjectRelease();
      if (v65 == v67 >> 1)
      {
        switch(v63)
        {
          case 1:
            LOBYTE(v123[0]) = 1;
            sub_1CFD09C98();
            OUTLINED_FUNCTION_108_0();
            OUTLINED_FUNCTION_42_2(v87, v88, v89, v90, v91);
            type metadata accessor for ModelInputContentRequest(0);
            OUTLINED_FUNCTION_58_1();
            sub_1CFD09CEC(v92, 255, v93, &protocol conformance descriptor for ModelInputContentRequest);
            OUTLINED_FUNCTION_102_0();
            sub_1CFD49578();
            OUTLINED_FUNCTION_136_0();
            swift_unknownObjectRelease();
            v110 = OUTLINED_FUNCTION_19_3();
            v111(v110, v115);
            v112 = OUTLINED_FUNCTION_18_3();
            v113(v112);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_7_6();
            goto LABEL_18;
          case 2:
            LOBYTE(v123[0]) = 2;
            v79 = sub_1CFD09B94();
            OUTLINED_FUNCTION_42_2(&type metadata for SummarizationPipelineRequest.FeedbackCodingKeys, v123, v80, v81, v79);
            type metadata accessor for FeedbackRequest(0);
            OUTLINED_FUNCTION_49_1();
            sub_1CFD09CEC(v82, 255, v83, &protocol conformance descriptor for FeedbackRequest);
            OUTLINED_FUNCTION_108_0();
            OUTLINED_FUNCTION_98_0();
            sub_1CFD49578();
            OUTLINED_FUNCTION_136_0();
            swift_unknownObjectRelease();
            v97 = OUTLINED_FUNCTION_17_6();
            v98(v97);
            v99 = OUTLINED_FUNCTION_18_3();
            v100(v99);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_7_6();
            goto LABEL_18;
          case 3:
            LOBYTE(v123[0]) = 3;
            v84 = sub_1CFD09ABC();
            OUTLINED_FUNCTION_42_2(&type metadata for SummarizationPipelineRequest.PriorityFeedbackCodingKeys, v123, v85, v86, v84);
            sub_1CFD1250C();
            sub_1CFD49578();
            swift_unknownObjectRelease();
            v101 = OUTLINED_FUNCTION_140();
            v102(v101);
            (*(v119 + 8))(v22, v120);
            memcpy(v23, v123, 0x51uLL);
            goto LABEL_17;
          case 4:
            LOBYTE(v123[0]) = 4;
            v76 = sub_1CFD09A68();
            OUTLINED_FUNCTION_42_2(&type metadata for SummarizationPipelineRequest.BundleIdRedactionCodingKeys, v123, v77, v78, v76);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
            OUTLINED_FUNCTION_71_0(&qword_1EDDD2B20, MEMORY[0x1E69E6190]);
            sub_1CFD49578();
            OUTLINED_FUNCTION_136_0();
            swift_unknownObjectRelease();
            (*(v117 + 8))(v121, v116);
            v94 = OUTLINED_FUNCTION_18_3();
            v95(v94);
            *v114 = v123[0];
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_7_6();
            OUTLINED_FUNCTION_146_0();
            v96 = v122;
            goto LABEL_19;
          default:
            LOBYTE(v123[0]) = 0;
            v68 = sub_1CFD09D34();
            OUTLINED_FUNCTION_42_2(&type metadata for SummarizationPipelineRequest.SummarizationCodingKeys, v123, v69, v70, v68);
            sub_1CFCE84E4();
            OUTLINED_FUNCTION_24_4();
            sub_1CFD49578();
            OUTLINED_FUNCTION_136_0();
            swift_unknownObjectRelease();
            v103 = OUTLINED_FUNCTION_17_6();
            v104(v103);
            v105 = OUTLINED_FUNCTION_18_3();
            v106(v105);
            v107 = v123[1];
            v108 = v123[2];
            v109 = BYTE1(v123[2]);
            *v21 = v123[0];
            *(v21 + 8) = v107;
            *(v21 + 16) = v108;
            *(v21 + 17) = v109;
LABEL_17:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_7_6();
LABEL_18:
            OUTLINED_FUNCTION_146_0();
            v96 = v122;
LABEL_19:
            OUTLINED_FUNCTION_7_6();
            sub_1CFD09C40();
            v75 = v96;
            break;
        }

        goto LABEL_12;
      }

      v56 = v118;
      v55 = v119;
      v50 = v124;
    }

    sub_1CFD49448();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00);
    *v72 = v56;
    v73 = sub_1CFD49508();
    OUTLINED_FUNCTION_65_0(v73);
    OUTLINED_FUNCTION_29_2();
    (*(v74 + 104))(v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v50, v120);
  }

  v75 = v122;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v75);
  OUTLINED_FUNCTION_142();
}

uint64_t sub_1CFD0A82C()
{
  OUTLINED_FUNCTION_137();
  v3 = v1 == 0x726F727265 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_20(0x726F727265, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x73736563637573 && v0 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_20(0x73736563637573, 0xE700000000000000);
    OUTLINED_FUNCTION_37_0();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CFD0A8CC(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1CFD0A900(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1CFD49668();
    OUTLINED_FUNCTION_37_0();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFD0A9C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD0A82C();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD0A9EC()
{
  sub_1CFD125A0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0AA24()
{
  sub_1CFD125A0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0AA74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFD0B90C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFD0AAA0()
{
  sub_1CFD126A0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0AAD8()
{
  sub_1CFD126A0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0AB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFD0A900(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CFD0AB54()
{
  sub_1CFD1264C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0AB8C()
{
  sub_1CFD1264C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationPipelineResult.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_143();
  v57 = v23;
  v58 = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3118, &qword_1CFD4D940);
  OUTLINED_FUNCTION_37();
  v55 = v28;
  v56 = v27;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_22_1();
  v54 = v30;
  v52[3] = type metadata accessor for SummarizationPipelineResponse(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_0();
  v53 = v33 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3120, &qword_1CFD4D948);
  OUTLINED_FUNCTION_37();
  v52[1] = v35;
  v52[2] = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v36);
  type metadata accessor for SummarizationPipelineResult(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3128, &qword_1CFD4D950);
  OUTLINED_FUNCTION_37();
  v40 = v39;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v52 - v42;
  OUTLINED_FUNCTION_178(v26, v26[3]);
  sub_1CFD125A0();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v53;
    sub_1CFD09C40();
    sub_1CFD1264C();
    v45 = v54;
    sub_1CFD495A8();
    OUTLINED_FUNCTION_57_1();
    sub_1CFD09CEC(v46, 255, v47, &protocol conformance descriptor for SummarizationPipelineResponse);
    v48 = v56;
    sub_1CFD49618();
    (*(v55 + 8))(v45, v48);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v44, v49);
  }

  else
  {
    sub_1CFD126A0();
    sub_1CFD495A8();
    sub_1CFD495E8();

    v50 = OUTLINED_FUNCTION_101_0();
    v51(v50);
  }

  (*(v40 + 8))(v43, v38);
  OUTLINED_FUNCTION_142();
}

void SummarizationPipelineResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_143();
  v93 = v25;
  v28 = v27;
  v84 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3130, &qword_1CFD4D958);
  OUTLINED_FUNCTION_37();
  v87 = v30;
  v88 = v31;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22_1();
  v89 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3138, &qword_1CFD4D960);
  OUTLINED_FUNCTION_37();
  v85 = v35;
  v86 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_22_1();
  v91 = v37;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3140, &qword_1CFD4D968);
  OUTLINED_FUNCTION_37();
  v90 = v38;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_4();
  v40 = type metadata accessor for SummarizationPipelineResult(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_73_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v82 - v44;
  OUTLINED_FUNCTION_178(v28, v28[3]);
  sub_1CFD125A0();
  v46 = v93;
  sub_1CFD49788();
  if (!v46)
  {
    v82[0] = v26;
    v82[1] = v24;
    v82[2] = v45;
    v83 = v40;
    v93 = v28;
    v47 = sub_1CFD49588();
    v48 = sub_1CFCE83C4(v47, 0);
    if (v50 != v49 >> 1)
    {
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_135_0();
      if (v55 == v56)
      {
        __break(1u);
        return;
      }

      v94 = *(v54 + v52);
      sub_1CFCE840C(v52 + 1, v51, v48, v54, v52, v53);
      v58 = v57;
      v60 = v59;
      swift_unknownObjectRelease();
      if (v58 == v60 >> 1)
      {
        if (v94)
        {
          sub_1CFD1264C();
          OUTLINED_FUNCTION_43_2();
          sub_1CFD494F8();
          type metadata accessor for SummarizationPipelineResponse(0);
          OUTLINED_FUNCTION_57_1();
          sub_1CFD09CEC(v69, 255, v70, &protocol conformance descriptor for SummarizationPipelineResponse);
          sub_1CFD49578();
          swift_unknownObjectRelease();
          v71 = OUTLINED_FUNCTION_101_0();
          v72(v71);
          v73 = OUTLINED_FUNCTION_140();
          v74(v73);
        }

        else
        {
          sub_1CFD126A0();
          OUTLINED_FUNCTION_43_2();
          sub_1CFD494F8();
          v89 = sub_1CFD49548();
          v76 = v75;
          swift_unknownObjectRelease();
          v77 = OUTLINED_FUNCTION_138_0();
          v78(v77);
          v79 = OUTLINED_FUNCTION_68_0();
          v80(v79);
          v81 = v82[0];
          *v82[0] = v89;
          *(v81 + 8) = v76;
        }

        swift_storeEnumTagMultiPayload();
        sub_1CFD09C40();
        sub_1CFD09C40();
        v68 = v93;
        goto LABEL_10;
      }
    }

    v61 = v83;
    sub_1CFD49448();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00);
    *v63 = v61;
    v64 = sub_1CFD49508();
    OUTLINED_FUNCTION_65_0(v64);
    OUTLINED_FUNCTION_29_2();
    (*(v65 + 104))(v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    v66 = OUTLINED_FUNCTION_25_3();
    v67(v66);
    v28 = v93;
  }

  v68 = v28;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v68);
  OUTLINED_FUNCTION_142();
}

Swift::String __swiftcall SummarizationPipelineResponse.caseString()()
{
  v0 = sub_1CFD0B5C4(type metadata accessor for SummarizationPipelineResponse, type metadata accessor for SummarizationPipelineResponse);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_1CFD0B5C4(void (*a1)(void), uint64_t a2)
{
  a1(0);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1CFD125F4();
  OUTLINED_FUNCTION_32_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 4u:
      v3 = 0xD000000000000011;
      OUTLINED_FUNCTION_127();
      break;
    case 2u:
      OUTLINED_FUNCTION_127();
      v3 = 0x6B63616264656566;
      break;
    case 3u:
      OUTLINED_FUNCTION_127();
      v3 = 0xD000000000000010;
      break;
    default:
      OUTLINED_FUNCTION_127();
      v3 = 0x7A6972616D6D7573;
      break;
  }

  return v3;
}

uint64_t sub_1CFD0B728()
{
  OUTLINED_FUNCTION_137();
  v2 = OUTLINED_FUNCTION_117_0();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_20(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    v7 = v4 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_20(0xD000000000000011, v6) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == 0x6B63616264656566 && v0 == 0xE800000000000000;
      if (v8 || (OUTLINED_FUNCTION_20(0x6B63616264656566, 0xE800000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v1 == 0xD000000000000010 && 0x80000001CFD5E220 == v0;
        if (v9 || (OUTLINED_FUNCTION_20(0xD000000000000010, 0x80000001CFD5E220) & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_106_0();
          if (v4 && v10 == v0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_20(0xD000000000000011, v10);
            OUTLINED_FUNCTION_37_0();
            if (v1)
            {
              return 4;
            }

            else
            {
              return 5;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CFD0B868(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_117_0();
  switch(v3)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6B63616264656566;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD0B90C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1CFD49668();
    OUTLINED_FUNCTION_37_0();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFD0B974()
{
  sub_1CFD12748();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0B9AC()
{
  sub_1CFD12748();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0B9E4()
{
  sub_1CFD126F4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BA1C()
{
  sub_1CFD126F4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0BA54()
{
  sub_1CFD12844();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BA8C()
{
  sub_1CFD12844();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0BAC4()
{
  sub_1CFD128EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BAFC()
{
  sub_1CFD128EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0BB34()
{
  sub_1CFD1279C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BB6C()
{
  sub_1CFD1279C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0BBA4()
{
  sub_1CFD12940();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0BBDC()
{
  sub_1CFD12940();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationPipelineResponse.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3148, &qword_1CFD4D970);
  OUTLINED_FUNCTION_37();
  v57 = v4;
  v58 = v3;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22_1();
  v56 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3150, &qword_1CFD4D978);
  OUTLINED_FUNCTION_37();
  v54 = v8;
  v55 = v7;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_1();
  v53 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3158, &qword_1CFD4D980);
  OUTLINED_FUNCTION_37();
  v51 = v12;
  v52 = v11;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22_1();
  v49 = v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3160, &qword_1CFD4D988);
  OUTLINED_FUNCTION_37();
  v48 = v15;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22_1();
  v47 = v17;
  type metadata accessor for ModelInputContentResponse(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v46 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3168, &qword_1CFD4D990);
  OUTLINED_FUNCTION_37();
  v44 = v22;
  v45 = v21;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16_4();
  type metadata accessor for SummarizationResponse(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  type metadata accessor for SummarizationPipelineResponse(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3170, &qword_1CFD4D998);
  OUTLINED_FUNCTION_37();
  v59 = v29;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_178(v2, v2[3]);
  sub_1CFD126F4();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_1_8();
  sub_1CFD125F4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1CFD09C40();
      sub_1CFD128EC();
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      OUTLINED_FUNCTION_59_1();
      sub_1CFD09CEC(v42, 255, v43, &protocol conformance descriptor for ModelInputContentResponse);
      sub_1CFD49618();
      (*(v48 + 8))(v47, v50);
      sub_1CFD09BE8(v46, type metadata accessor for ModelInputContentResponse);
      v33 = OUTLINED_FUNCTION_100_0();
      v35 = v59;
      goto LABEL_8;
    case 2u:
      sub_1CFD12844();
      v36 = v49;
      v37 = v59;
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      sub_1CFD12898();
      v38 = v52;
      OUTLINED_FUNCTION_131_0();
      sub_1CFD49618();
      v39 = v51;
      goto LABEL_6;
    case 3u:
      sub_1CFD1279C();
      v36 = v53;
      v37 = v59;
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      sub_1CFD127F0();
      v38 = v55;
      OUTLINED_FUNCTION_131_0();
      sub_1CFD49618();
      v39 = v54;
      goto LABEL_6;
    case 4u:
      sub_1CFD12748();
      v36 = v56;
      v37 = v59;
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
      OUTLINED_FUNCTION_67(&qword_1EDDD2B28, MEMORY[0x1E69E6160]);
      v38 = v58;
      OUTLINED_FUNCTION_131_0();
      sub_1CFD49618();
      v39 = v57;
LABEL_6:
      (*(v39 + 8))(v36, v38);
      v40 = OUTLINED_FUNCTION_100_0();
      v41(v40, v37);

      break;
    default:
      sub_1CFD09C40();
      sub_1CFD12940();
      OUTLINED_FUNCTION_47_2();
      sub_1CFD495A8();
      OUTLINED_FUNCTION_50_1();
      sub_1CFD09CEC(v31, 255, v32, &protocol conformance descriptor for SummarizationResponse);
      OUTLINED_FUNCTION_124_0(v27);
      (*(v44 + 8))(v0, v45);
      sub_1CFD09BE8(v27, type metadata accessor for SummarizationResponse);
      v33 = OUTLINED_FUNCTION_100_0();
      v35 = v59;
LABEL_8:
      v34(v33, v35);
      break;
  }

  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

void SummarizationPipelineResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_143();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3190, &qword_1CFD4D9A0);
  OUTLINED_FUNCTION_37();
  v112 = v26;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_22_1();
  v116 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3198, &qword_1CFD4D9A8);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_22_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31A0, &qword_1CFD4D9B0);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31A8, &qword_1CFD4D9B8);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_22_1();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31B0, &qword_1CFD4D9C0);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31B8, &qword_1CFD4D9C8);
  OUTLINED_FUNCTION_37();
  v114 = v34;
  v115 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_16_4();
  v113 = type metadata accessor for SummarizationPipelineResponse(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_0();
  v109 = (v37 - v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_134_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_133_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_73_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_105();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_137_0();
  v117 = v25;
  v44 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_178(v44, v45);
  v46 = sub_1CFD126F4();
  OUTLINED_FUNCTION_120_0(&type metadata for SummarizationPipelineResponse.CodingKeys, v47, v46);
  if (!v20)
  {
    v48 = v21;
    v49 = sub_1CFD49588();
    v50 = sub_1CFCE83C4(v49, 0);
    if (v52 == v51 >> 1)
    {
      v54 = v113;
      v53 = v114;
    }

    else
    {
      OUTLINED_FUNCTION_74_0();
      v119 = v21;
      OUTLINED_FUNCTION_135_0();
      if (v59 == v60)
      {
        __break(1u);
        return;
      }

      v61 = *(v58 + v56);
      sub_1CFCE840C(v56 + 1, v55, v50, v58, v56, v57);
      v63 = v62;
      v65 = v64;
      swift_unknownObjectRelease();
      if (v63 == v65 >> 1)
      {
        switch(v61)
        {
          case 1:
            v118[0].n128_u8[0] = 1;
            v85 = sub_1CFD128EC();
            OUTLINED_FUNCTION_39_1(&type metadata for SummarizationPipelineResponse.ModelInputContentCodingKeys, v118, v86, v87, v85);
            type metadata accessor for ModelInputContentResponse(0);
            OUTLINED_FUNCTION_59_1();
            sub_1CFD09CEC(v88, 255, v89, &protocol conformance descriptor for ModelInputContentResponse);
            OUTLINED_FUNCTION_102_0();
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            v105 = OUTLINED_FUNCTION_25_3();
            v106(v105);
            v107 = OUTLINED_FUNCTION_15_4();
            v108(v107);
            goto LABEL_17;
          case 2:
            v118[0].n128_u8[0] = 2;
            v79 = sub_1CFD12844();
            OUTLINED_FUNCTION_39_1(&type metadata for SummarizationPipelineResponse.FeedbackCodingKeys, v118, v80, v81, v79);
            sub_1CFD129E8();
            OUTLINED_FUNCTION_24_4();
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            v93 = OUTLINED_FUNCTION_17_6();
            v94(v93);
            v95 = OUTLINED_FUNCTION_15_4();
            v96(v95);
            OUTLINED_FUNCTION_130_0(&a11, v118[0]);
            goto LABEL_17;
          case 3:
            v118[0].n128_u8[0] = 3;
            v82 = sub_1CFD1279C();
            OUTLINED_FUNCTION_39_1(&type metadata for SummarizationPipelineResponse.PriorityFeedbackCodingKeys, v118, v83, v84, v82);
            sub_1CFD12994();
            OUTLINED_FUNCTION_24_4();
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            v97 = OUTLINED_FUNCTION_17_6();
            v98(v97);
            v99 = OUTLINED_FUNCTION_15_4();
            v100(v99);
            OUTLINED_FUNCTION_130_0(&a12, v118[0]);
            goto LABEL_17;
          case 4:
            v118[0].n128_u8[0] = 4;
            v76 = sub_1CFD12748();
            OUTLINED_FUNCTION_39_1(&type metadata for SummarizationPipelineResponse.BundleIdRedactionCodingKeys, v118, v77, v78, v76);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
            OUTLINED_FUNCTION_71_0(&qword_1EDDD2B20, MEMORY[0x1E69E6190]);
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            (*(v112 + 8))(v116, v111);
            v90 = OUTLINED_FUNCTION_15_4();
            v91(v90);
            *v109 = v118[0].n128_u64[0];
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_2_7();
            OUTLINED_FUNCTION_146_0();
            v92 = v117;
            goto LABEL_18;
          default:
            v118[0].n128_u8[0] = 0;
            v66 = sub_1CFD12940();
            OUTLINED_FUNCTION_39_1(&type metadata for SummarizationPipelineResponse.SummarizationCodingKeys, v118, v67, v68, v66);
            type metadata accessor for SummarizationResponse(0);
            OUTLINED_FUNCTION_50_1();
            sub_1CFD09CEC(v69, 255, v70, &protocol conformance descriptor for SummarizationResponse);
            OUTLINED_FUNCTION_102_0();
            sub_1CFD49578();
            OUTLINED_FUNCTION_114();
            swift_unknownObjectRelease();
            v101 = OUTLINED_FUNCTION_19_3();
            v102(v101, v110);
            v103 = OUTLINED_FUNCTION_15_4();
            v104(v103);
LABEL_17:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_2_7();
            OUTLINED_FUNCTION_146_0();
            v92 = v117;
LABEL_18:
            OUTLINED_FUNCTION_2_7();
            sub_1CFD09C40();
            v75 = v92;
            break;
        }

        goto LABEL_12;
      }

      v54 = v113;
      v53 = v114;
      v48 = v119;
    }

    sub_1CFD49448();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00);
    *v72 = v54;
    v73 = sub_1CFD49508();
    OUTLINED_FUNCTION_65_0(v73);
    OUTLINED_FUNCTION_29_2();
    (*(v74 + 104))(v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v48, v115);
  }

  v75 = v117;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v75);
  OUTLINED_FUNCTION_142();
}

uint64_t FeedbackRequest.init(summarizationFeedback:modelInputContentKind:)()
{
  sub_1CFD09C40();
  type metadata accessor for FeedbackRequest(0);
  OUTLINED_FUNCTION_56_1();
  return sub_1CFD09C40();
}

uint64_t sub_1CFD0CE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 == 0xD000000000000015 && 0x80000001CFD5E2E0 == a2;
  if (v5 || (v6 = a1, v7 = OUTLINED_FUNCTION_139(), (OUTLINED_FUNCTION_20(v7, v8) & 1) != 0))
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_106_0();
    if (v5 && v10 == a2)
    {

      return 1;
    }

    else
    {
      v12 = OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_20(v12, v13);
      OUTLINED_FUNCTION_37_0();
      if (v6)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

uint64_t sub_1CFD0CEF0(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_147_0(a1);
  MEMORY[0x1D3874010](v1 & 1);
  return sub_1CFD49758();
}

unint64_t sub_1CFD0CF30(char a1)
{
  v1 = "summarizationFeedback";
  if (a1)
  {
    v1 = "modelInputContentKind";
  }

  return (v1 - 32) | 0x8000000000000000;
}

uint64_t sub_1CFD0CF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1CFD0CE48(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1CFD0CFA0()
{
  sub_1CFD12A3C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0CFD8()
{
  sub_1CFD12A3C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t FeedbackRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31D8, &qword_1CFD4D9D0);
  OUTLINED_FUNCTION_37();
  v6 = v5;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_178(a1, a1[3]);
  sub_1CFD12A3C();
  sub_1CFD497A8();
  type metadata accessor for SummarizationFeedback(0);
  OUTLINED_FUNCTION_55_1();
  sub_1CFD09CEC(v8, 255, v9, &protocol conformance descriptor for SummarizationFeedback);
  OUTLINED_FUNCTION_98_0();
  sub_1CFD49618();
  if (!v1)
  {
    type metadata accessor for FeedbackRequest(0);
    type metadata accessor for ModelInputContentKind(0);
    OUTLINED_FUNCTION_54_1();
    sub_1CFD09CEC(v10, 255, v11, &protocol conformance descriptor for ModelInputContentKind);
    OUTLINED_FUNCTION_98_0();
    sub_1CFD49618();
  }

  return (*(v6 + 8))(v2, v4);
}

void FeedbackRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_143();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v57 = v28;
  v58 = type metadata accessor for ModelInputContentKind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  v60 = type metadata accessor for SummarizationFeedback(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_0();
  v61 = v32 - v31;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F31F0, &qword_1CFD4D9D8);
  OUTLINED_FUNCTION_37();
  v59 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v55 - v35;
  v37 = type metadata accessor for FeedbackRequest(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  OUTLINED_FUNCTION_178(v27, v27[3]);
  sub_1CFD12A3C();
  sub_1CFD49788();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v55 = v37;
    v56 = v27;
    v42 = v59;
    v43 = v41;
    a13 = 0;
    OUTLINED_FUNCTION_55_1();
    v46 = sub_1CFD09CEC(v44, 255, v45, &protocol conformance descriptor for SummarizationFeedback);
    v47 = v62;
    OUTLINED_FUNCTION_142_0(v60, &a13, v48, v49, v46);
    sub_1CFD09C40();
    a12 = 1;
    OUTLINED_FUNCTION_54_1();
    v52 = sub_1CFD09CEC(v50, 255, v51, &protocol conformance descriptor for ModelInputContentKind);
    OUTLINED_FUNCTION_142_0(v58, &a12, v53, v54, v52);
    (*(v42 + 8))(v36, v47);
    OUTLINED_FUNCTION_56_1();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_53_1();
    sub_1CFD125F4();
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_1CFD09BE8(v43, type metadata accessor for FeedbackRequest);
  }

  OUTLINED_FUNCTION_142();
}

ProactiveSummarizationClient::FeedbackResponse __swiftcall FeedbackResponse.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1CFD0D524@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFD0F0CC(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CFD0D550()
{
  sub_1CFD12A90();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0D588()
{
  sub_1CFD12A90();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void __swiftcall PriorityFeedbackRequest.init(requestType:bundleId:label:title:body:subtitle:isCommunicationType:)(ProactiveSummarizationClient::PriorityFeedbackRequest *__return_ptr retstr, ProactiveSummarizationClient::PriorityFeedbackRequestType requestType, Swift::String bundleId, Swift::Int label, Swift::String title, Swift::String body, Swift::String_optional subtitle, Swift::Bool isCommunicationType)
{
  retstr->requestType = *requestType;
  retstr->bundleId = bundleId;
  retstr->label = label;
  retstr->title = title;
  retstr->body = body;
  retstr->subtitle = subtitle;
  retstr->isCommunicationType = isCommunicationType;
}

void __swiftcall PriorityFeedbackRequest.init(requestType:bundleId:label:title:body:subtitle:)(ProactiveSummarizationClient::PriorityFeedbackRequest *__return_ptr retstr, ProactiveSummarizationClient::PriorityFeedbackRequestType requestType, Swift::String bundleId, Swift::Int label, Swift::String title, Swift::String body, Swift::String_optional subtitle)
{
  retstr->requestType = *requestType;
  retstr->bundleId = bundleId;
  retstr->label = label;
  retstr->title = title;
  retstr->body = body;
  retstr->subtitle = subtitle;
  retstr->isCommunicationType = 0;
}

uint64_t sub_1CFD0D774()
{
  OUTLINED_FUNCTION_137();
  v2 = OUTLINED_FUNCTION_123_0();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_20(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0x6449656C646E7562 && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_20(0x6449656C646E7562, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == 0x6C6562616CLL && v0 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_20(0x6C6562616CLL, 0xE500000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v1 == 0x656C746974 && v0 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_20(0x656C746974, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = v1 == 2036625250 && v0 == 0xE400000000000000;
          if (v9 || (OUTLINED_FUNCTION_20(2036625250, 0xE400000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = v1 == 0x656C746974627573 && v0 == 0xE800000000000000;
            if (v10 || (OUTLINED_FUNCTION_20(0x656C746974627573, 0xE800000000000000) & 1) != 0)
            {

              return 5;
            }

            else if (v1 == 0xD000000000000013 && 0x80000001CFD5E320 == v0)
            {

              return 6;
            }

            else
            {
              OUTLINED_FUNCTION_20(0xD000000000000013, 0x80000001CFD5E320);
              OUTLINED_FUNCTION_37_0();
              if (v1)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CFD0D938(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_123_0();
  switch(v3)
  {
    case 1:
      result = 0x6449656C646E7562;
      break;
    case 2:
      result = 0x6C6562616CLL;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 2036625250;
      break;
    case 5:
      result = 0x656C746974627573;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD0DA00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD0D774();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD0DA30()
{
  sub_1CFD12AE4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0DA68()
{
  sub_1CFD12AE4();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void PriorityFeedbackRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_143();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3218, &qword_1CFD4D9F0);
  OUTLINED_FUNCTION_37();
  v31 = v30;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_147();
  v33 = OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_178(v33, v34);
  sub_1CFD12AE4();
  sub_1CFD497A8();
  sub_1CFD12B38();
  sub_1CFD49618();
  if (!v27)
  {
    OUTLINED_FUNCTION_70_0();
    sub_1CFD495E8();
    sub_1CFD49608();
    OUTLINED_FUNCTION_70_0();
    sub_1CFD495E8();
    OUTLINED_FUNCTION_70_0();
    sub_1CFD495E8();
    OUTLINED_FUNCTION_70_0();
    sub_1CFD495B8();
    sub_1CFD495F8();
  }

  (*(v31 + 8))(v28, v29);
  OUTLINED_FUNCTION_142();
}

void PriorityFeedbackRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_143();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3228, &qword_1CFD4D9F8);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_178(v26, v26[3]);
  sub_1CFD12AE4();
  sub_1CFD49788();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    LOBYTE(v48[0]) = 0;
    sub_1CFD12B8C();
    sub_1CFD49578();
    OUTLINED_FUNCTION_13_6(1);
    v30 = sub_1CFD49548();
    v47 = v31;
    OUTLINED_FUNCTION_13_6(2);
    v45 = sub_1CFD49568();
    OUTLINED_FUNCTION_13_6(3);
    v44 = sub_1CFD49548();
    v46 = v32;
    OUTLINED_FUNCTION_13_6(4);
    v43 = sub_1CFD49548();
    v42 = v30;
    v60 = v49[0];
    v34 = v33;
    OUTLINED_FUNCTION_13_6(5);
    v35 = sub_1CFD49518();
    v37 = v36;
    v41 = v35;
    v38 = sub_1CFD49558();
    v39 = OUTLINED_FUNCTION_27_4();
    v40(v39);
    LOBYTE(v48[0]) = v60;
    v48[1] = v42;
    v48[2] = v47;
    v48[3] = v45;
    v48[4] = v44;
    v48[5] = v46;
    v48[6] = v43;
    v48[7] = v34;
    v48[8] = v41;
    v48[9] = v37;
    LOBYTE(v48[10]) = v38 & 1;
    memcpy(v28, v48, 0x51uLL);
    sub_1CFD12BE0(v48, v49);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v49[0] = v60;
    v50 = v42;
    v51 = v47;
    v52 = v45;
    v53 = v44;
    v54 = v46;
    v55 = v43;
    v56 = v34;
    v57 = v41;
    v58 = v37;
    v59 = v38 & 1;
    sub_1CFD09B64(v49);
  }

  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

Swift::String __swiftcall PriorityFeedbackRequestType.caseString()()
{
  v1 = 0xE800000000000000;
  v2 = 0x705573626D756874;
  switch(*v0)
  {
    case 1:
      v2 = OUTLINED_FUNCTION_61_1();
      break;
    case 2:
      v2 = OUTLINED_FUNCTION_60_1();
      break;
    case 3:
      v2 = OUTLINED_FUNCTION_75_0();
      break;
    default:
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1CFD0E15C()
{
  OUTLINED_FUNCTION_137();
  v3 = v1 == 0x705573626D756874 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_20(0x705573626D756874, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6F4473626D756874 && v0 == 0xEA00000000006E77;
    if (v5 || (OUTLINED_FUNCTION_20(0x6F4473626D756874, 0xEA00000000006E77) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0x61646152656C6966 && v0 == 0xE900000000000072;
      if (v6 || (OUTLINED_FUNCTION_20(0x61646152656C6966, 0xE900000000000072) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = OUTLINED_FUNCTION_75_0();
        if (v1 == v7 && v0 == v8)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_20(v7, v8);
          OUTLINED_FUNCTION_37_0();
          if (v1)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_1CFD0E274(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_147_0(a1);
  MEMORY[0x1D3874010](v1);
  return sub_1CFD49758();
}

uint64_t sub_1CFD0E2B4(char a1)
{
  result = 0x705573626D756874;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_61_1();
      break;
    case 2:
      result = OUTLINED_FUNCTION_60_1();
      break;
    case 3:
      result = OUTLINED_FUNCTION_75_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFD0E314@<X0>(_BYTE *a1@<X8>)
{
  result = j__swift_bridgeObjectRelease();
  *a1 = 1;
  return result;
}

uint64_t sub_1CFD0E344()
{
  sub_1CFD12C6C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E37C()
{
  sub_1CFD12C6C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0E3BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD0E15C();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD0E3E4()
{
  sub_1CFD12C18();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E41C()
{
  sub_1CFD12C18();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0E454()
{
  sub_1CFD12CC0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E48C()
{
  sub_1CFD12CC0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0E4C4()
{
  sub_1CFD12D14();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E4FC()
{
  sub_1CFD12D14();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFD0E534()
{
  sub_1CFD12D68();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0E56C()
{
  sub_1CFD12D68();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void PriorityFeedbackRequestType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_143();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3238, &qword_1CFD4DA00);
  OUTLINED_FUNCTION_37();
  v62 = v29;
  v63 = v28;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22_1();
  v61 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3240, &qword_1CFD4DA08);
  OUTLINED_FUNCTION_37();
  v59 = v33;
  v60 = v32;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_22_1();
  v58 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3248, &qword_1CFD4DA10);
  OUTLINED_FUNCTION_37();
  v56 = v37;
  v57 = v36;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_22_1();
  v55 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3250, &qword_1CFD4DA18);
  OUTLINED_FUNCTION_37();
  v53 = v41;
  v54 = v40;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_16_4();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3258, &qword_1CFD4DA20);
  OUTLINED_FUNCTION_37();
  v45 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v53 - v47;
  v49 = *v24;
  OUTLINED_FUNCTION_178(v27, v27[3]);
  sub_1CFD12C18();
  sub_1CFD497A8();
  switch(v49)
  {
    case 1:
      sub_1CFD12D14();
      v50 = v55;
      OUTLINED_FUNCTION_43_2();
      sub_1CFD495A8();
      v52 = v56;
      v51 = v57;
      goto LABEL_6;
    case 2:
      sub_1CFD12CC0();
      v50 = v58;
      OUTLINED_FUNCTION_43_2();
      sub_1CFD495A8();
      v52 = v59;
      v51 = v60;
      goto LABEL_6;
    case 3:
      sub_1CFD12C6C();
      v50 = v61;
      OUTLINED_FUNCTION_43_2();
      sub_1CFD495A8();
      v52 = v62;
      v51 = v63;
LABEL_6:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      sub_1CFD12D68();
      sub_1CFD495A8();
      (*(v53 + 8))(v25, v54);
      break;
  }

  (*(v45 + 8))(v48, v43);
  OUTLINED_FUNCTION_142();
}

uint64_t PriorityFeedbackRequestType.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_147_0(a1);
  MEMORY[0x1D3874010](v2);
  return sub_1CFD49758();
}

void PriorityFeedbackRequestType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_143();
  v104 = v24;
  v28 = v27;
  v100 = v29;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3260, &qword_1CFD4DA28);
  OUTLINED_FUNCTION_37();
  v99 = v30;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_22_1();
  v102 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3268, &qword_1CFD4DA30);
  OUTLINED_FUNCTION_37();
  v96 = v34;
  v97 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_22_1();
  v98 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3270, &qword_1CFD4DA38);
  OUTLINED_FUNCTION_37();
  v94 = v38;
  v95 = v37;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v87 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3278, &qword_1CFD4DA40);
  OUTLINED_FUNCTION_37();
  v93 = v43;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_16_4();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3280, &qword_1CFD4DA48);
  OUTLINED_FUNCTION_37();
  v101 = v46;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_178(v28, v28[3]);
  sub_1CFD12C18();
  v48 = v104;
  sub_1CFD49788();
  if (!v48)
  {
    v90 = v42;
    v91 = v26;
    v92 = v41;
    v49 = v102;
    v50 = v103;
    v104 = v28;
    v51 = v25;
    v52 = sub_1CFD49588();
    v53 = sub_1CFCE83C4(v52, 0);
    if (v55 != v54 >> 1)
    {
      OUTLINED_FUNCTION_74_0();
      v89 = 0;
      OUTLINED_FUNCTION_135_0();
      if (v60 == v61)
      {
        __break(1u);
        return;
      }

      v62 = *(v59 + v57);
      sub_1CFCE840C(v57 + 1, v56, v53, v59, v57, v58);
      v64 = v63;
      v66 = v65;
      swift_unknownObjectRelease();
      if (v64 == v66 >> 1)
      {
        v67 = v100;
        v88 = v62;
        v68 = v62;
        v69 = v99;
        switch(v68)
        {
          case 1:
            sub_1CFD12D14();
            v77 = v92;
            OUTLINED_FUNCTION_63_0();
            v82 = v89;
            sub_1CFD494F8();
            if (v82)
            {
              goto LABEL_17;
            }

            swift_unknownObjectRelease();
            v80 = v94;
            v79 = v95;
            goto LABEL_19;
          case 2:
            sub_1CFD12CC0();
            v77 = v98;
            OUTLINED_FUNCTION_63_0();
            v78 = v89;
            sub_1CFD494F8();
            if (v78)
            {
              goto LABEL_17;
            }

            swift_unknownObjectRelease();
            v80 = v96;
            v79 = v97;
LABEL_19:
            (*(v80 + 8))(v77, v79);
            goto LABEL_20;
          case 3:
            sub_1CFD12C6C();
            OUTLINED_FUNCTION_63_0();
            v81 = v89;
            sub_1CFD494F8();
            if (v81)
            {
              goto LABEL_17;
            }

            swift_unknownObjectRelease();
            (*(v69 + 8))(v49, v50);
            goto LABEL_20;
          default:
            sub_1CFD12D68();
            v70 = v91;
            OUTLINED_FUNCTION_63_0();
            v71 = v89;
            sub_1CFD494F8();
            if (v71)
            {
LABEL_17:
              v83 = OUTLINED_FUNCTION_110_0();
              v84(v83);
              swift_unknownObjectRelease();
              v28 = v104;
              goto LABEL_10;
            }

            swift_unknownObjectRelease();
            (*(v93 + 8))(v70, v90);
LABEL_20:
            v85 = OUTLINED_FUNCTION_110_0();
            v86(v85);
            *v67 = v88;
            __swift_destroy_boxed_opaque_existential_1(v104);
            break;
        }

        goto LABEL_11;
      }
    }

    v72 = v101;
    sub_1CFD49448();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00);
    *v74 = &type metadata for PriorityFeedbackRequestType;
    v75 = sub_1CFD49508();
    OUTLINED_FUNCTION_65_0(v75);
    OUTLINED_FUNCTION_29_2();
    (*(v76 + 104))(v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v72 + 8))(v51, v45);
    v28 = v104;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_11:
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

void _s28ProactiveSummarizationClient16FeedbackResponseV5errorACSS_tcfC_0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (_MergedGlobals_0 != -1)
  {
    OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
  }

  v7 = sub_1CFD48E38();
  __swift_project_value_buffer(v7, qword_1EDDD3788);

  v8 = sub_1CFD48E18();
  sub_1CFD492F8();

  if (OUTLINED_FUNCTION_119_0())
  {
    OUTLINED_FUNCTION_97();
    v11 = OUTLINED_FUNCTION_77_0();
    *v3 = 136315138;
    *(v3 + 4) = sub_1CFCFE9A4(a1, a2, &v11);
    OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v9, v10, "Error occurred: %s");
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_69();
  }

  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1CFD0F0CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1CFD49668();
    OUTLINED_FUNCTION_37_0();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFD0F138(uint64_t a1)
{
  OUTLINED_FUNCTION_147_0(a1);
  MEMORY[0x1D3874010](0);
  return sub_1CFD49758();
}

uint64_t sub_1CFD0F174()
{
  sub_1CFD12DBC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFD0F1AC()
{
  sub_1CFD12DBC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1CFD0F218()
{
  OUTLINED_FUNCTION_143();
  v14 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_37();
  v6 = v5;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v13 = *v0;
  v10 = OUTLINED_FUNCTION_140();
  v12 = OUTLINED_FUNCTION_178(v10, v11);
  v14(v12);
  sub_1CFD497A8();
  OUTLINED_FUNCTION_131_0();
  sub_1CFD495B8();
  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_142();
}

void sub_1CFD0F364()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v4 = v3;
  v15 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_4();
  v9 = OUTLINED_FUNCTION_178(v4, v4[3]);
  v2(v9);
  sub_1CFD49788();
  if (!v0)
  {
    v10 = sub_1CFD49518();
    v12 = v11;
    v13 = OUTLINED_FUNCTION_140();
    v14(v13);
    *v15 = v10;
    v15[1] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_142();
}

uint64_t SummarizationPipelineClient.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t SummarizationPipelineClient.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t SummarizationPipelineClient.deinit()
{
  if (*(v0 + 112))
  {

    sub_1CFD48E88();
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SummarizationPipelineClient.__deallocating_deinit()
{
  SummarizationPipelineClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SummarizationPipelineClient.summarizeItems(_:options:)()
{
  OUTLINED_FUNCTION_66_0();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 40) = v5;
  v6 = type metadata accessor for SummarizationPipelineResponse(0);
  *(v1 + 64) = v6;
  OUTLINED_FUNCTION_6_2(v6);
  *(v1 + 72) = OUTLINED_FUNCTION_148_0();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v7 = type metadata accessor for SummarizationPipelineRequest(0);
  *(v1 + 104) = v7;
  OUTLINED_FUNCTION_6_2(v7);
  *(v1 + 112) = OUTLINED_FUNCTION_26_0();
  v8 = type metadata accessor for SummarizationPipelineResult(0);
  *(v1 + 120) = v8;
  OUTLINED_FUNCTION_6_2(v8);
  *(v1 + 128) = OUTLINED_FUNCTION_148_0();
  v9 = swift_task_alloc();
  v10 = *v3;
  *(v1 + 136) = v9;
  *(v1 + 144) = v10;
  *(v1 + 34) = *(v3 + 8);
  *(v1 + 35) = *(v3 + 9);
  v11 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v11);
}

uint64_t sub_1CFD0F6EC()
{
  OUTLINED_FUNCTION_66_0();
  v16 = v0;
  v1 = *(v0 + 35);
  v2 = *(v0 + 34);
  v3 = *(v0 + 112);
  v13 = *(v0 + 144);
  v14 = v2;
  v15 = v1;

  v18.requestedSummaryStyles.rawValue = &v13;
  SummarizationRequest.init(items:options:)(v4, v18);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 33);
  *v3 = *(v0 + 16);
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 17) = v7;
  OUTLINED_FUNCTION_71();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 152) = v8;
  *v8 = v9;
  v8[1] = sub_1CFD0F7DC;
  v10 = *(v0 + 136);
  v11 = *(v0 + 112);

  return sub_1CFD0FD58(v10, v11);
}

uint64_t sub_1CFD0F7DC()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v3 = v2;
  v5 = *(v4 + 112);
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_8_5();
  sub_1CFD09BE8(v5, v6);
  if (v0)
  {
    v7 = sub_1CFD0FCB8;
  }

  else
  {
    v7 = sub_1CFD0F910;
  }

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1CFD0F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      v38 = v12[17];
      v39 = v12[12];
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v39, v40);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v38, v41);
      sub_1CFD09C40();

      OUTLINED_FUNCTION_23_1();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v14, v15);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v16 = sub_1CFD48E38();
    v17 = __swift_project_value_buffer(v16, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v18 = sub_1CFD48E18();
    v19 = sub_1CFD492F8();
    v20 = OUTLINED_FUNCTION_95(v19);
    v21 = v12[10];
    if (v20)
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v17 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v21, v22);
      v23 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v23, v24, v25);
      OUTLINED_FUNCTION_129_0();
      *(v17 + 4) = v21;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v26, v27, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v21, v42);
    }

    v35 = v12[17];
    v43 = v12[12];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v44 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v44, v45);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v43, v46);
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v28 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v28, qword_1EDDD3788);
    v29 = sub_1CFD48E18();
    sub_1CFD492F8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v13 = 136315138;
      v30 = OUTLINED_FUNCTION_51_0();
      *(v13 + 4) = sub_1CFCFE9A4(v30, v31, v32);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v33, v34, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v35 = v12[17];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v36, v37);
  }

  sub_1CFD09BE8(v35, type metadata accessor for SummarizationPipelineResult);

  OUTLINED_FUNCTION_23_1();
LABEL_16:
  OUTLINED_FUNCTION_82();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_1CFD0FCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_27_1();

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_144_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1CFD0FD58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_62_1();
}

uint64_t sub_1CFD0FD70()
{
  v1 = sub_1CFD1205C();
  v0[5] = v1;
  v2 = v1;
  v4 = v0[3];
  v3 = v0[4];
  v6 = sub_1CFD09CEC(&qword_1EDDD2AF8, v5, type metadata accessor for SummarizationPipelineClient, &protocol conformance descriptor for SummarizationPipelineClient);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = type metadata accessor for SummarizationPipelineResult(0);
  *v8 = v0;
  v8[1] = sub_1CFD0FF04;
  v10 = v0[2];

  return MEMORY[0x1EEE6DE38](v10, v3, v6, 0x75716552646E6573, 0xEF293A5F28747365, sub_1CFD15130, v7, v9);
}

uint64_t sub_1CFD0FF04()
{
  OUTLINED_FUNCTION_18_1();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v3 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {
    v4 = sub_1CFD1007C;
  }

  else
  {

    v4 = sub_1CFD10020;
  }

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1CFD10020()
{
  OUTLINED_FUNCTION_18_1();

  OUTLINED_FUNCTION_23_1();

  return v0();
}

uint64_t sub_1CFD1007C()
{
  OUTLINED_FUNCTION_18_1();

  OUTLINED_FUNCTION_23_1();

  return v0();
}

uint64_t sub_1CFD100E0()
{
  OUTLINED_FUNCTION_18_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for SummarizationPipelineResponse(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_6_2(v4);
  v1[6] = OUTLINED_FUNCTION_118_0();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for SummarizationPipelineRequest(0);
  v1[10] = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v1[11] = OUTLINED_FUNCTION_26_0();
  v6 = type metadata accessor for SummarizationPipelineResult(0);
  v1[12] = v6;
  OUTLINED_FUNCTION_6_2(v6);
  v1[13] = OUTLINED_FUNCTION_118_0();
  v1[14] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1CFD101D8()
{
  OUTLINED_FUNCTION_18_1();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 120) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_0(v1);

  return sub_1CFD0FD58(v3, v4);
}

uint64_t sub_1CFD1028C()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v4 = v3;
  v5 = *(v2 + 88);
  *v4 = *v1;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_8_5();
  sub_1CFD09BE8(v5, v6);
  if (v0)
  {
    v7 = sub_1CFD10760;
  }

  else
  {
    v7 = sub_1CFD103CC;
  }

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1CFD103CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = v12[14];
      OUTLINED_FUNCTION_99_0();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v13, v16);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v15, v17);
      sub_1CFD09C40();

      OUTLINED_FUNCTION_23_1();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v28, v29);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v30 = sub_1CFD48E38();
    v31 = __swift_project_value_buffer(v30, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v32 = sub_1CFD48E18();
    v33 = sub_1CFD492F8();
    v34 = OUTLINED_FUNCTION_95(v33);
    v35 = v12[7];
    if (v34)
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v31 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v35, v36);
      v37 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v37, v38, v39);
      OUTLINED_FUNCTION_129_0();
      *(v31 + 4) = v35;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v40, v41, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v35, v42);
    }

    v25 = v12[14];
    v43 = v12[9];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v44 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v44, v45);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v43, v46);
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v18 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v18, qword_1EDDD3788);
    v19 = sub_1CFD48E18();
    sub_1CFD492F8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v14 = 136315138;
      v20 = OUTLINED_FUNCTION_51_0();
      *(v14 + 4) = sub_1CFCFE9A4(v20, v21, v22);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v23, v24, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v25 = v12[14];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v26 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v26, v27);
  }

  sub_1CFD09BE8(v25, type metadata accessor for SummarizationPipelineResult);
  OUTLINED_FUNCTION_143_0();

  OUTLINED_FUNCTION_23_1();
LABEL_16:
  OUTLINED_FUNCTION_82();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_1CFD10760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_99_0();

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_144_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1CFD107F8()
{
  OUTLINED_FUNCTION_18_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for SummarizationPipelineResponse(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_6_2(v4);
  v1[6] = OUTLINED_FUNCTION_118_0();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for SummarizationPipelineRequest(0);
  v1[10] = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v1[11] = OUTLINED_FUNCTION_26_0();
  v6 = type metadata accessor for SummarizationPipelineResult(0);
  v1[12] = v6;
  OUTLINED_FUNCTION_6_2(v6);
  v1[13] = OUTLINED_FUNCTION_118_0();
  v1[14] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1CFD108F0()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_53_1();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 120) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_0(v1);

  return sub_1CFD0FD58(v3, v4);
}

uint64_t sub_1CFD10994()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v4 = v3;
  v5 = *(v2 + 88);
  *v4 = *v1;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_8_5();
  sub_1CFD09BE8(v5, v6);
  if (v0)
  {
    v7 = sub_1CFD152B4;
  }

  else
  {
    v7 = sub_1CFD10AD4;
  }

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1CFD10AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v15 = v12[14];
      OUTLINED_FUNCTION_99_0();
      v16 = v12[2];
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v13, v17);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v15, v18);
      *v16 = *v14;

      OUTLINED_FUNCTION_23_1();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v29, v30);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v31 = sub_1CFD48E38();
    v32 = __swift_project_value_buffer(v31, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v33 = sub_1CFD48E18();
    v34 = sub_1CFD492F8();
    v35 = OUTLINED_FUNCTION_95(v34);
    v36 = v12[7];
    if (v35)
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v32 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v36, v37);
      v38 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v38, v39, v40);
      OUTLINED_FUNCTION_129_0();
      *(v32 + 4) = v36;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v41, v42, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v36, v43);
    }

    v26 = v12[14];
    v44 = v12[9];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v45 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v45, v46);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v44, v47);
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v19 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v19, qword_1EDDD3788);
    v20 = sub_1CFD48E18();
    sub_1CFD492F8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v14 = 136315138;
      v21 = OUTLINED_FUNCTION_51_0();
      *(v14 + 4) = sub_1CFCFE9A4(v21, v22, v23);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v24, v25, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v26 = v12[14];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v27 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v27, v28);
  }

  sub_1CFD09BE8(v26, type metadata accessor for SummarizationPipelineResult);
  OUTLINED_FUNCTION_143_0();

  OUTLINED_FUNCTION_23_1();
LABEL_16:
  OUTLINED_FUNCTION_82();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
}

uint64_t SummarizationPipelineClient.priorityFeedback(for:)()
{
  OUTLINED_FUNCTION_66_0();
  v3 = v2;
  v1[25] = v2;
  v1[26] = v0;
  v1[24] = v4;
  v5 = type metadata accessor for SummarizationPipelineResponse(0);
  v1[27] = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v1[28] = OUTLINED_FUNCTION_148_0();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v6 = type metadata accessor for SummarizationPipelineRequest(0);
  v1[32] = v6;
  OUTLINED_FUNCTION_6_2(v6);
  v1[33] = OUTLINED_FUNCTION_26_0();
  v7 = type metadata accessor for SummarizationPipelineResult(0);
  v1[34] = v7;
  OUTLINED_FUNCTION_6_2(v7);
  v1[35] = OUTLINED_FUNCTION_148_0();
  v1[36] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x51uLL);
  v8 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1CFD10F64()
{
  OUTLINED_FUNCTION_18_1();
  memcpy(*(v0 + 264), *(v0 + 200), 0x51uLL);
  OUTLINED_FUNCTION_71();
  swift_storeEnumTagMultiPayload();
  sub_1CFD12BE0(v0 + 16, v0 + 104);
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 296) = v1;
  *v1 = v2;
  v1[1] = sub_1CFD11024;
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);

  return sub_1CFD0FD58(v3, v4);
}

uint64_t sub_1CFD11024()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 304) = v0;

  sub_1CFD09BE8(*(v2 + 264), type metadata accessor for SummarizationPipelineRequest);
  if (v0)
  {
    v5 = sub_1CFD11508;
  }

  else
  {
    v5 = sub_1CFD11174;
  }

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1CFD11174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v14 = v12[36];
      v16 = v12[30];
      v15 = v12[31];
      v17 = v12[24];
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v15, v18);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v14, v19);
      *v17 = *v16;

      OUTLINED_FUNCTION_23_1();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v30, v31);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v32 = sub_1CFD48E38();
    v33 = __swift_project_value_buffer(v32, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v34 = sub_1CFD48E18();
    v35 = sub_1CFD492D8();
    v36 = OUTLINED_FUNCTION_95(v35);
    v37 = v12[29];
    if (v36)
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v33 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v37, v38);
      v39 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v39, v40, v41);
      OUTLINED_FUNCTION_129_0();
      *(v33 + 4) = v37;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v42, v43, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v37, v44);
    }

    v27 = v12[36];
    v45 = v12[31];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v46 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v46, v47);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v45, v48);
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v20 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v20, qword_1EDDD3788);
    v21 = sub_1CFD48E18();
    sub_1CFD492D8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v13 = 136315138;
      v22 = OUTLINED_FUNCTION_51_0();
      *(v13 + 4) = sub_1CFCFE9A4(v22, v23, v24);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v25, v26, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v27 = v12[36];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v28 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v28, v29);
  }

  sub_1CFD09BE8(v27, type metadata accessor for SummarizationPipelineResult);

  OUTLINED_FUNCTION_23_1();
LABEL_16:
  OUTLINED_FUNCTION_82();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
}

uint64_t sub_1CFD11508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_27_1();

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_144_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t SummarizationPipelineClient.bundleIdRedaction(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_62_1();
}

uint64_t sub_1CFD115C0()
{
  OUTLINED_FUNCTION_66_0();
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FA0, &qword_1CFD4D000);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_1CFD4BE60;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1CFD116A0;

  return SummarizationPipelineClient.bundleIdRedaction(for:)();
}

uint64_t sub_1CFD116A0()
{
  OUTLINED_FUNCTION_18_1();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    v5 = sub_1CFD118BC;
  }

  else
  {

    v5 = sub_1CFD117B8;
  }

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1CFD117B8()
{
  OUTLINED_FUNCTION_66_0();
  if (*(*(v0 + 56) + 16))
  {

    v1 = OUTLINED_FUNCTION_51_0();

    return v2(v1);
  }

  else
  {

    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    *v4 = 0xD000000000000017;
    *(v4 + 8) = 0x80000001CFD5E260;
    *(v4 + 16) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_23_1();

    return v5();
  }
}

uint64_t sub_1CFD118BC()
{
  OUTLINED_FUNCTION_18_1();

  OUTLINED_FUNCTION_23_1();

  return v0();
}

uint64_t SummarizationPipelineClient.bundleIdRedaction(for:)()
{
  OUTLINED_FUNCTION_18_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for SummarizationPipelineResponse(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_6_2(v3);
  v1[5] = OUTLINED_FUNCTION_118_0();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for SummarizationPipelineRequest(0);
  v1[9] = v4;
  OUTLINED_FUNCTION_6_2(v4);
  v1[10] = OUTLINED_FUNCTION_26_0();
  v5 = type metadata accessor for SummarizationPipelineResult(0);
  v1[11] = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v1[12] = OUTLINED_FUNCTION_118_0();
  v1[13] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1CFD11A0C()
{
  OUTLINED_FUNCTION_18_1();
  *v0[10] = v0[2];
  swift_storeEnumTagMultiPayload();

  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  v0[14] = v1;
  *v1 = v2;
  v1[1] = sub_1CFD11AC0;
  v3 = v0[13];
  v4 = v0[10];

  return sub_1CFD0FD58(v3, v4);
}

uint64_t sub_1CFD11AC0()
{
  OUTLINED_FUNCTION_66_0();
  v2 = *v1;
  OUTLINED_FUNCTION_20_4();
  *v4 = v3;
  v5 = *(v2 + 80);
  *v4 = *v1;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_8_5();
  sub_1CFD09BE8(v5, v6);
  if (v0)
  {
    v7 = sub_1CFD11FBC;
  }

  else
  {
    v7 = sub_1CFD11C00;
  }

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1CFD11C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_4_5();
  sub_1CFD125F4();
  OUTLINED_FUNCTION_71();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_7();
    sub_1CFD09C40();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v14 = v12[13];
      v15 = v12[8];
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v15, v16);
      OUTLINED_FUNCTION_5_5();
      sub_1CFD09BE8(v14, v17);

      OUTLINED_FUNCTION_82();

      return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v37, v38);
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v39 = sub_1CFD48E38();
    v40 = __swift_project_value_buffer(v39, qword_1EDDD3788);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_71();
    sub_1CFD125F4();
    v41 = sub_1CFD48E18();
    v42 = sub_1CFD492F8();
    v43 = OUTLINED_FUNCTION_95(v42);
    v44 = v12[6];
    if (v43)
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_111();
      *v40 = 136315138;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_68_0();
      sub_1CFD125F4();
      OUTLINED_FUNCTION_64_0();
      sub_1CFD48FF8();
      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v44, v45);
      v46 = OUTLINED_FUNCTION_64_0();
      sub_1CFCFE9A4(v46, v47, v48);
      OUTLINED_FUNCTION_129_0();
      *(v40 + 4) = v44;
      OUTLINED_FUNCTION_46_2(&dword_1CFCD7000, v49, v50, "Error: %s");
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_86();
    }

    else
    {

      OUTLINED_FUNCTION_0_8();
      sub_1CFD09BE8(v44, v51);
    }

    v34 = v12[13];
    v52 = v12[8];
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    OUTLINED_FUNCTION_32_1();
    sub_1CFD48FF8();
    OUTLINED_FUNCTION_128_0();
    OUTLINED_FUNCTION_38_2();
    v53 = swift_allocError();
    OUTLINED_FUNCTION_44_2(v53, v54);
    OUTLINED_FUNCTION_0_8();
    sub_1CFD09BE8(v52, v55);
  }

  else
  {
    if (_MergedGlobals_0 != -1)
    {
      OUTLINED_FUNCTION_3_5(&_MergedGlobals_0);
    }

    v27 = sub_1CFD48E38();
    OUTLINED_FUNCTION_116_0(v27, qword_1EDDD3788);
    v28 = sub_1CFD48E18();
    sub_1CFD492F8();
    OUTLINED_FUNCTION_125_0();
    if (OUTLINED_FUNCTION_119_0())
    {
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_109_1();
      *v13 = 136315138;
      v29 = OUTLINED_FUNCTION_51_0();
      *(v13 + 4) = sub_1CFCFE9A4(v29, v30, v31);
      OUTLINED_FUNCTION_32_3(&dword_1CFCD7000, v32, v33, "Error: %s");
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_69();
    }

    v34 = v12[13];
    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    v35 = swift_allocError();
    OUTLINED_FUNCTION_45_2(v35, v36);
  }

  sub_1CFD09BE8(v34, type metadata accessor for SummarizationPipelineResult);

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_82();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
}

uint64_t sub_1CFD11FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_27_1();

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_144_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1CFD1205C()
{
  v2 = sub_1CFD48E68();
  v3 = OUTLINED_FUNCTION_6_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  if (*(v0 + 112))
  {
  }

  sub_1CFD48E98();
  sub_1CFD05A8C();

  sub_1CFD48E58();
  OUTLINED_FUNCTION_68_0();
  result = sub_1CFD48E48();
  if (!v1)
  {
    *(v0 + 112) = result;

    if (*(v0 + 112))
    {
    }

    sub_1CFD12E10();
    OUTLINED_FUNCTION_38_2();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CFD12174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32A8, &qword_1CFD4F918);
  OUTLINED_FUNCTION_37();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_4();
  (*(v7 + 16))(v3, a1, v5);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, v3, v5);
  type metadata accessor for SummarizationPipelineRequest(0);
  type metadata accessor for SummarizationPipelineResult(0);
  sub_1CFD09CEC(&qword_1EDDD2B08, 255, type metadata accessor for SummarizationPipelineRequest, &protocol conformance descriptor for SummarizationPipelineRequest);
  sub_1CFD09CEC(&qword_1EDDD2B10, 255, type metadata accessor for SummarizationPipelineResult, &protocol conformance descriptor for SummarizationPipelineResult);
  sub_1CFD48E78();
}

uint64_t sub_1CFD1236C(uint64_t a1)
{
  v3 = type metadata accessor for SummarizationPipelineResult(0);
  v4 = OUTLINED_FUNCTION_6_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v11 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32B0, &unk_1CFD4F920);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_147();
  sub_1CFD151B0(a1, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32A8, &qword_1CFD4F918);
    return sub_1CFD49228();
  }

  else
  {
    sub_1CFD09C40();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_51_0();
    sub_1CFD125F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F32A8, &qword_1CFD4F918);
    sub_1CFD49238();
    OUTLINED_FUNCTION_5_5();
    return sub_1CFD09BE8(v7, v10);
  }
}

unint64_t sub_1CFD1250C()
{
  result = qword_1EC4F3100;
  if (!qword_1EC4F3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3100);
  }

  return result;
}

unint64_t sub_1CFD125A0()
{
  result = qword_1EDDD6000;
  if (!qword_1EDDD6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6000);
  }

  return result;
}

uint64_t sub_1CFD125F4()
{
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  return v0;
}

unint64_t sub_1CFD1264C()
{
  result = qword_1EDDD5CD8[0];
  if (!qword_1EDDD5CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD5CD8);
  }

  return result;
}

unint64_t sub_1CFD126A0()
{
  result = qword_1EC4FA3F0;
  if (!qword_1EC4FA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3F0);
  }

  return result;
}

unint64_t sub_1CFD126F4()
{
  result = qword_1EDDD5008[0];
  if (!qword_1EDDD5008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD5008);
  }

  return result;
}

unint64_t sub_1CFD12748()
{
  result = qword_1EDDD4B40[0];
  if (!qword_1EDDD4B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD4B40);
  }

  return result;
}

unint64_t sub_1CFD1279C()
{
  result = qword_1EC4FA3F8;
  if (!qword_1EC4FA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA3F8);
  }

  return result;
}

unint64_t sub_1CFD127F0()
{
  result = qword_1EC4F3178;
  if (!qword_1EC4F3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3178);
  }

  return result;
}

unint64_t sub_1CFD12844()
{
  result = qword_1EC4FA400;
  if (!qword_1EC4FA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA400);
  }

  return result;
}

unint64_t sub_1CFD12898()
{
  result = qword_1EC4F3180;
  if (!qword_1EC4F3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3180);
  }

  return result;
}

unint64_t sub_1CFD128EC()
{
  result = qword_1EC4FA408;
  if (!qword_1EC4FA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA408);
  }

  return result;
}

unint64_t sub_1CFD12940()
{
  result = qword_1EC4FA410;
  if (!qword_1EC4FA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA410);
  }

  return result;
}

unint64_t sub_1CFD12994()
{
  result = qword_1EC4F31C0;
  if (!qword_1EC4F31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F31C0);
  }

  return result;
}

unint64_t sub_1CFD129E8()
{
  result = qword_1EC4F31C8;
  if (!qword_1EC4F31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F31C8);
  }

  return result;
}

unint64_t sub_1CFD12A3C()
{
  result = qword_1EC4FA418;
  if (!qword_1EC4FA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA418);
  }

  return result;
}

unint64_t sub_1CFD12A90()
{
  result = qword_1EC4FA420;
  if (!qword_1EC4FA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA420);
  }

  return result;
}

unint64_t sub_1CFD12AE4()
{
  result = qword_1EC4FA428;
  if (!qword_1EC4FA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA428);
  }

  return result;
}

unint64_t sub_1CFD12B38()
{
  result = qword_1EC4F3220;
  if (!qword_1EC4F3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3220);
  }

  return result;
}

unint64_t sub_1CFD12B8C()
{
  result = qword_1EC4F3230;
  if (!qword_1EC4F3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3230);
  }

  return result;
}

unint64_t sub_1CFD12C18()
{
  result = qword_1EC4FA430;
  if (!qword_1EC4FA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA430);
  }

  return result;
}

unint64_t sub_1CFD12C6C()
{
  result = qword_1EC4FA438;
  if (!qword_1EC4FA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA438);
  }

  return result;
}

unint64_t sub_1CFD12CC0()
{
  result = qword_1EC4FA440;
  if (!qword_1EC4FA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA440);
  }

  return result;
}

unint64_t sub_1CFD12D14()
{
  result = qword_1EC4FA448;
  if (!qword_1EC4FA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA448);
  }

  return result;
}

unint64_t sub_1CFD12D68()
{
  result = qword_1EC4FA450;
  if (!qword_1EC4FA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FA450);
  }

  return result;
}

unint64_t sub_1CFD12DBC()
{
  result = qword_1EC4FA458[0];
  if (!qword_1EC4FA458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FA458);
  }

  return result;
}

unint64_t sub_1CFD12E10()
{
  result = qword_1EC4F3298;
  if (!qword_1EC4F3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3298);
  }

  return result;
}

unint64_t sub_1CFD12E68()
{
  result = qword_1EC4F32A0;
  if (!qword_1EC4F32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F32A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28ProactiveSummarizationClient0b8PipelineC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFD12EEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_3_2(*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_3_2(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }
}

uint64_t sub_1CFD12F28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CFD12F6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1CFD12F94()
{
  v0 = type metadata accessor for ModelInputContentRequest(319);
  if (v1 <= 0x3F)
  {
    v13 = v0;
    v2 = type metadata accessor for FeedbackRequest(319);
    if (v3 <= 0x3F)
    {
      v14 = v2;
      sub_1CFD13018();
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_122(v4, v5, v6, v7, v8, v9, v10, v11, v12, &type metadata for SummarizationRequest, v13, v14, &type metadata for PriorityFeedbackRequest, v15);
        OUTLINED_FUNCTION_141_0();
      }
    }
  }
}

void sub_1CFD13018()
{
  if (!qword_1EDDD3318)
  {
    v0 = sub_1CFD49218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD3318);
    }
  }
}

void sub_1CFD13068(uint64_t a1)
{
  sub_1CFD130D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    OUTLINED_FUNCTION_141_0();
  }
}

void sub_1CFD130D0()
{
  if (!qword_1EDDD31C8[0])
  {
    v0 = type metadata accessor for SummarizationPipelineResponse(0);
    if (!v1)
    {
      atomic_store(v0, qword_1EDDD31C8);
    }
  }
}

void sub_1CFD13118()
{
  v0 = type metadata accessor for SummarizationResponse(319);
  if (v1 <= 0x3F)
  {
    v13 = v0;
    v2 = type metadata accessor for ModelInputContentResponse(319);
    if (v3 <= 0x3F)
    {
      v14 = v2;
      sub_1CFD13018();
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_122(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, &type metadata for FeedbackResponse, &type metadata for PriorityFeedbackResponse, v15);
        OUTLINED_FUNCTION_141_0();
      }
    }
  }
}

uint64_t sub_1CFD131C4(uint64_t a1)
{
  result = type metadata accessor for SummarizationFeedback(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModelInputContentKind(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_141_0();
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CFD13270(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1CFD132B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFD13328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_3_2(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_3_2(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v4);
}

uint64_t sub_1CFD13378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_1CFD13440(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PriorityFeedbackRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *storeEnumTagSinglePayload for PriorityFeedbackRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD13720(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD13818(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}