__n128 sub_22BE8EE68(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22BE8EE7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22BE8EEBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_22BE8EF14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BE8EF28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22BE8EF68(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22BE8EFDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_22BE8F01C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_22BE8F0B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BE8F310(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _s30IntelligenceFlowPlannerSupport7SessionOwet_0_0(unsigned __int8 *a1, int a2)
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

  return sub_22BE25A30(a1);
}

_BYTE *sub_22BE8F434(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE8F4E4()
{
  result = qword_27D908118;
  if (!qword_27D908118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908118);
  }

  return result;
}

unint64_t sub_22BE8F53C()
{
  result = qword_27D908120;
  if (!qword_27D908120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908120);
  }

  return result;
}

unint64_t sub_22BE8F594()
{
  result = qword_27D908128;
  if (!qword_27D908128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908128);
  }

  return result;
}

unint64_t sub_22BE8F5EC()
{
  result = qword_27D908130;
  if (!qword_27D908130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908130);
  }

  return result;
}

unint64_t sub_22BE8F644()
{
  result = qword_27D908138;
  if (!qword_27D908138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908138);
  }

  return result;
}

unint64_t sub_22BE8F69C()
{
  result = qword_27D908140;
  if (!qword_27D908140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908140);
  }

  return result;
}

unint64_t sub_22BE8F6F4()
{
  result = qword_27D908148;
  if (!qword_27D908148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908148);
  }

  return result;
}

unint64_t sub_22BE8F74C()
{
  result = qword_27D908150;
  if (!qword_27D908150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908150);
  }

  return result;
}

unint64_t sub_22BE8F7A4()
{
  result = qword_27D908158;
  if (!qword_27D908158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908158);
  }

  return result;
}

unint64_t sub_22BE8F7FC()
{
  result = qword_27D908160;
  if (!qword_27D908160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908160);
  }

  return result;
}

unint64_t sub_22BE8F854()
{
  result = qword_27D908168;
  if (!qword_27D908168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908168);
  }

  return result;
}

unint64_t sub_22BE8F8AC()
{
  result = qword_27D908170;
  if (!qword_27D908170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908170);
  }

  return result;
}

unint64_t sub_22BE8F904()
{
  result = qword_27D908178;
  if (!qword_27D908178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908178);
  }

  return result;
}

unint64_t sub_22BE8F95C()
{
  result = qword_27D908180;
  if (!qword_27D908180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908180);
  }

  return result;
}

unint64_t sub_22BE8F9B4()
{
  result = qword_27D908188;
  if (!qword_27D908188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908188);
  }

  return result;
}

unint64_t sub_22BE8FA0C()
{
  result = qword_27D908190;
  if (!qword_27D908190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908190);
  }

  return result;
}

unint64_t sub_22BE8FA64()
{
  result = qword_27D908198;
  if (!qword_27D908198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908198);
  }

  return result;
}

unint64_t sub_22BE8FAB8()
{
  result = qword_27D9081A0;
  if (!qword_27D9081A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081A0);
  }

  return result;
}

unint64_t sub_22BE8FB0C()
{
  result = qword_27D9081A8;
  if (!qword_27D9081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081A8);
  }

  return result;
}

uint64_t sub_22BE8FB98()
{

  return swift_getWitnessTable();
}

uint64_t sub_22BE8FBE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6465727265666564 && a2 == 0xED000065756C6156)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE8FC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8FBE8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE8FCBC(uint64_t a1)
{
  v2 = sub_22BE8FE40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8FCF8(uint64_t a1)
{
  v2 = sub_22BE8FE40();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolExecutionSessionResolveInput.encode(to:)()
{
  sub_22BE1B980();
  sub_22BE5CE4C(&qword_27D9081B0, &qword_22C279B20);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE23094();
  v1 = sub_22BE8FE40();
  sub_22BE1B02C(&type metadata for ToolExecutionSessionResolveInput.CodingKeys, v2, v1);
  sub_22C272764();
  sub_22BE2307C();
  sub_22BE9046C(v3, v4, MEMORY[0x277D72908]);
  sub_22BE1BE20();
  sub_22C273FA4();
  v5 = sub_22BE184A8();
  v6(v5);
  sub_22BE1965C();
}

unint64_t sub_22BE8FE40()
{
  result = qword_27D9081B8;
  if (!qword_27D9081B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081B8);
  }

  return result;
}

void ToolExecutionSessionResolveInput.init(from:)()
{
  sub_22BE19130();
  sub_22BE1A1AC(v2);
  sub_22C272764();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE2564C(v4);
  sub_22BE5CE4C(&qword_27D9081C8, &qword_22C279B28);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE1AED0();
  v7 = type metadata accessor for ToolExecutionSessionResolveInput(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE188B0();
  sub_22BE24FA0();
  v9 = sub_22BE8FE40();
  sub_22BE23C18(&type metadata for ToolExecutionSessionResolveInput.CodingKeys, v10, v9);
  if (!v1)
  {
    sub_22BE2307C();
    v13 = sub_22BE9046C(v11, v12, MEMORY[0x277D72920]);
    sub_22BE19160(v13, v14);
    v15 = sub_22BE1B2F4();
    v16(v15);
    v17 = sub_22BE28714();
    v18(v17);
    sub_22BE26968();
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BE900B8(uint64_t a1)
{
  v2 = sub_22BE9023C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE900F4(uint64_t a1)
{
  v2 = sub_22BE9023C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolExecutionSessionResolveOutput.encode(to:)()
{
  sub_22BE1B980();
  sub_22BE5CE4C(&qword_27D9081D8, &qword_22C279B30);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE23094();
  v1 = sub_22BE9023C();
  sub_22BE1B02C(&type metadata for ToolExecutionSessionResolveOutput.CodingKeys, v2, v1);
  sub_22C272874();
  sub_22BE18CB0();
  sub_22BE9046C(v3, v4, MEMORY[0x277D72A80]);
  sub_22BE1BE20();
  sub_22C273FA4();
  v5 = sub_22BE184A8();
  v6(v5);
  sub_22BE1965C();
}

unint64_t sub_22BE9023C()
{
  result = qword_27D9081E0;
  if (!qword_27D9081E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081E0);
  }

  return result;
}

void ToolExecutionSessionResolveOutput.init(from:)()
{
  sub_22BE19130();
  sub_22BE1A1AC(v2);
  sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE2564C(v4);
  sub_22BE5CE4C(&qword_27D9081E8, &qword_22C279B38);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE1AED0();
  v7 = type metadata accessor for ToolExecutionSessionResolveOutput(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE188B0();
  sub_22BE24FA0();
  v9 = sub_22BE9023C();
  sub_22BE23C18(&type metadata for ToolExecutionSessionResolveOutput.CodingKeys, v10, v9);
  if (!v1)
  {
    sub_22BE18CB0();
    v13 = sub_22BE9046C(v11, v12, MEMORY[0x277D72A98]);
    sub_22BE19160(v13, v14);
    v15 = sub_22BE1B2F4();
    v16(v15);
    v17 = sub_22BE28714();
    v18(v17);
    sub_22BE26968();
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BE9046C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BE904B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BE9055C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  sub_22BE18000();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t sub_22BE905DC@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a2(0);
  sub_22BE18000();
  v7 = *(v6 + 32);

  return v7(a3, a1, v5);
}

uint64_t sub_22BE90644(uint64_t a1)
{
  v2 = sub_22BE907C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE90680(uint64_t a1)
{
  v2 = sub_22BE907C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolExecutionSessionHydrateInput.encode(to:)()
{
  sub_22BE1B980();
  sub_22BE5CE4C(&qword_27D9081F0, &qword_22C279B40);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE23094();
  v1 = sub_22BE907C8();
  sub_22BE1B02C(&type metadata for ToolExecutionSessionHydrateInput.CodingKeys, v2, v1);
  sub_22C272874();
  sub_22BE18CB0();
  sub_22BE9046C(v3, v4, MEMORY[0x277D72A80]);
  sub_22BE1BE20();
  sub_22C273FA4();
  v5 = sub_22BE184A8();
  v6(v5);
  sub_22BE1965C();
}

unint64_t sub_22BE907C8()
{
  result = qword_27D9081F8;
  if (!qword_27D9081F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9081F8);
  }

  return result;
}

void ToolExecutionSessionHydrateInput.init(from:)()
{
  sub_22BE19130();
  sub_22BE1A1AC(v2);
  sub_22C272874();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE2564C(v4);
  sub_22BE5CE4C(&qword_27D908200, &unk_22C279B48);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22BE1AED0();
  v7 = type metadata accessor for ToolExecutionSessionHydrateInput(v6);
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE188B0();
  sub_22BE24FA0();
  v9 = sub_22BE907C8();
  sub_22BE23C18(&type metadata for ToolExecutionSessionHydrateInput.CodingKeys, v10, v9);
  if (!v1)
  {
    sub_22BE18CB0();
    v13 = sub_22BE9046C(v11, v12, MEMORY[0x277D72A98]);
    sub_22BE19160(v13, v14);
    v15 = sub_22BE1B2F4();
    v16(v15);
    v17 = sub_22BE28714();
    v18(v17);
    sub_22BE26968();
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BE90A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE90AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE90B1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE90B90(uint64_t a1)
{
  v2 = sub_22BE90D14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE90BCC(uint64_t a1)
{
  v2 = sub_22BE90D14();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolExecutionSessionHydrateOutput.encode(to:)()
{
  sub_22BE1B980();
  sub_22BE5CE4C(&qword_27D908208, &qword_22C279B58);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE23094();
  v1 = sub_22BE90D14();
  sub_22BE1B02C(&type metadata for ToolExecutionSessionHydrateOutput.CodingKeys, v2, v1);
  sub_22C272874();
  sub_22BE18CB0();
  sub_22BE9046C(v3, v4, MEMORY[0x277D72A80]);
  sub_22BE1BE20();
  sub_22C273F34();
  v5 = sub_22BE184A8();
  v6(v5);
  sub_22BE1965C();
}

unint64_t sub_22BE90D14()
{
  result = qword_27D908210;
  if (!qword_27D908210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908210);
  }

  return result;
}

void ToolExecutionSessionHydrateOutput.init(from:)()
{
  sub_22BE19130();
  sub_22BE1A1AC(v3);
  v4 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-v6];
  v8 = sub_22BE5CE4C(&qword_27D908218, &qword_22C279B60);
  sub_22BE179D8();
  v18 = v9;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v13 = type metadata accessor for ToolExecutionSessionHydrateOutput(0);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE188B0();
  sub_22BE1BD3C(v0, v0[3]);
  sub_22BE90D14();
  sub_22C274214();
  if (!v1)
  {
    sub_22C272874();
    sub_22BE18CB0();
    sub_22BE9046C(v15, v16, MEMORY[0x277D72A98]);
    sub_22C273E44();
    (*(v18 + 8))(v12, v8);
    sub_22BE90AAC(v7, v2);
    sub_22BE26968();
  }

  sub_22BE26B64(v0);
  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22BE91088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BE910F8(uint64_t a1)
{
  if (!qword_27D908260)
  {
    sub_22C272874();
    v1 = sub_22C273844();
    if (!v2)
    {
      atomic_store(v1, &qword_27D908260);
    }
  }
}

_BYTE *sub_22BE91180(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE91230()
{
  result = qword_27D908268;
  if (!qword_27D908268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908268);
  }

  return result;
}

unint64_t sub_22BE91288()
{
  result = qword_27D908270;
  if (!qword_27D908270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908270);
  }

  return result;
}

unint64_t sub_22BE912E0()
{
  result = qword_27D908278;
  if (!qword_27D908278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908278);
  }

  return result;
}

unint64_t sub_22BE91338()
{
  result = qword_27D908280;
  if (!qword_27D908280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908280);
  }

  return result;
}

unint64_t sub_22BE91390()
{
  result = qword_27D908288;
  if (!qword_27D908288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908288);
  }

  return result;
}

unint64_t sub_22BE913E8()
{
  result = qword_27D908290;
  if (!qword_27D908290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908290);
  }

  return result;
}

unint64_t sub_22BE91440()
{
  result = qword_27D908298;
  if (!qword_27D908298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908298);
  }

  return result;
}

unint64_t sub_22BE91498()
{
  result = qword_27D9082A0;
  if (!qword_27D9082A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082A0);
  }

  return result;
}

unint64_t sub_22BE914F0()
{
  result = qword_27D9082A8;
  if (!qword_27D9082A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082A8);
  }

  return result;
}

unint64_t sub_22BE91548()
{
  result = qword_27D9082B0;
  if (!qword_27D9082B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082B0);
  }

  return result;
}

unint64_t sub_22BE915A0()
{
  result = qword_27D9082B8;
  if (!qword_27D9082B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082B8);
  }

  return result;
}

unint64_t sub_22BE915F8()
{
  result = qword_27D9082C0;
  if (!qword_27D9082C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9082C0);
  }

  return result;
}

uint64_t dispatch thunk of EventSending.sendAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22BE85C2C;

  return v9(a1, a2, a3);
}

uint64_t ODPEventPayload.description.getter()
{
  type metadata accessor for ODPEventPayload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v4 = (v3 - v2);
  sub_22BE274A8(v0, v3 - v2);
  v5 = 0x65746172656E6547;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1ADA8(v4, type metadata accessor for ODPEventPayload);
      return 0x736F706D6F636544;
    case 2u:
      sub_22BE1ADA8(v4, type metadata accessor for ODPEventPayload);
      return 0x6F6365446B736154;
    case 3u:
    case 0xFu:
      sub_22BE1ADA8(v4, type metadata accessor for ODPEventPayload);
      sub_22BE184BC();
      return v6 | 3;
    case 4u:
      sub_22BE1ADA8(v4, type metadata accessor for ODPEventPayload);
      return 0x6576656972746552;
    case 5u:
      sub_22BE1ADA8(v4, type metadata accessor for ODPEventPayload);
      sub_22BE1B30C();
      return 0xD000000000000016;
    case 7u:
      sub_22BE92E14();
      sub_22BE18CC8();
      sub_22BE1ADA8(v4, v9);
      goto LABEL_22;
    case 8u:
      sub_22BE1ADA8(v4, type metadata accessor for ODPEventPayload);
      sub_22BE1B30C();
      return 0xD000000000000015;
    case 9u:

      sub_22BE1B30C();
      sub_22BE26B64(v4 + 2);
      return 0xD000000000000016;
    case 0xAu:
      sub_22BE26B64(v4);
      return 0x656E65476E616C50;
    case 0xBu:
    case 0x12u:
      sub_22BE92E14();
      sub_22BE1B30C();
      sub_22BE26B64(v4);
      return v5;
    case 0xCu:
      sub_22BE26B64(v4);
      return 0x5065747563657845;
    case 0xDu:
      sub_22BE26B64(v4);
      return 0x636578456E616C50;
    case 0xEu:
      sub_22BE1ADA8(v4, type metadata accessor for ODPEventPayload);
      sub_22BE184BC();
      return v7 | 1;
    case 0x10u:
      sub_22BE1ADA8(v4, type metadata accessor for Session.Event);
      return 0x697263736E617254;
    case 0x11u:
      sub_22BE1ADA8(v4, type metadata accessor for ODPEventPayload);
      return 0x64656C696146;
    case 0x13u:
      sub_22BE1B30C();
      sub_22BE26B64(v4);
      return 0xD000000000000022;
    case 0x14u:
      sub_22BE184BC();
      return v8 | 2;
    case 0x15u:
      return v5;
    case 0x16u:
      return 0x74616C756D726F46;
    case 0x17u:
      goto LABEL_25;
    case 0x18u:
      return 0x6E616C706552;
    case 0x19u:
      sub_22BE92E14();
LABEL_22:
      sub_22BE1B30C();
      break;
    case 0x1Au:
      v5 = 0x706D6F436B736154;
      break;
    default:
      sub_22BE1ADA8(v4, type metadata accessor for ODPEventPayload);
LABEL_25:
      sub_22BE184BC();
      v5 = v10 | 4;
      break;
  }

  return v5;
}

uint64_t ODPEventPayload.debugDescription.getter()
{
  type metadata accessor for Session.Event(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v4 = v3 - v2;
  type metadata accessor for ODPEventPayload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  sub_22BE274A8(v0, v7 - v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = 0x7265755172657355;
      v12 = 0xEB00000000203A79;
      goto LABEL_22;
    case 2u:
      v39 = *v8;
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      *&v69 = v41 - 2;
      *(&v69 + 1) = v40;
      v42 = MEMORY[0x2318ABC00](v39, MEMORY[0x277D837D0]);
      goto LABEL_17;
    case 3u:
    case 6u:
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = 0x3D726F727245;
      v12 = 0xE600000000000000;
      goto LABEL_22;
    case 4u:
      v56 = *v8;
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      *&v69 = v58;
      *(&v69 + 1) = v57;
      v42 = MEMORY[0x2318ABBB0](v56, MEMORY[0x277D837D0]);
LABEL_17:
      v59 = v42;
      v60 = v43;

      MEMORY[0x2318AB8D0](v59, v60);
      goto LABEL_23;
    case 5u:
      v24 = *v8;
      v23 = *(v8 + 8);
      v25 = *(v8 + 16);
      sub_22BE1BE3C();
      sub_22C273AA4();
      MEMORY[0x2318AB8D0](0x207972657551, 0xE600000000000000);
      v26 = MEMORY[0x2318ABBB0](v24, MEMORY[0x277D837D0]);
      v28 = v27;

      MEMORY[0x2318AB8D0](v26, v28);

      sub_22BE1918C();
      MEMORY[0x2318AB8D0](v29 + 1, v30 | 0x8000000000000000);
      v31 = sub_22BE5CE4C(&qword_27D9082C8, &qword_22C27A1E0);
      v32 = MEMORY[0x2318ABBB0](v23, v31);
      v34 = v33;

      MEMORY[0x2318AB8D0](v32, v34);

      v35 = sub_22BE1A1BC();
      MEMORY[0x2318AB8D0](v35);
      v36 = MEMORY[0x2318ABBB0](v25, v31);
      v38 = v37;

      MEMORY[0x2318AB8D0](v36, v38);

      MEMORY[0x2318AB8D0](93, 0xE100000000000000);
      return sub_22BE19454();
    case 7u:
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = 0x2D2074706D6F7250;
      v12 = 0xE900000000000020;
      goto LABEL_22;
    case 8u:
      v13 = *v8;
      v14 = *(v8 + 8);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      v17 = v22 + 15;
      goto LABEL_19;
    case 9u:
      sub_22BE92370((v8 + 16), &v69);
      sub_22C273AA4();
      sub_22BE3AF78();
      sub_22BE1918C();
      MEMORY[0x2318AB8D0](v61 - 3, v62 | 0x8000000000000000);
      v63 = sub_22C2730E4();
      v65 = v64;

      MEMORY[0x2318AB8D0](v63, v65);

      v20 = 0x6D61726150200A20;
      v21 = 0xEF203A7372657465;
      goto LABEL_26;
    case 0xAu:
      sub_22BE188C8();
      sub_22C273AA4();
      sub_22BE3AF78();
      sub_22BE1918C();
      v20 = v19 - 1;
      goto LABEL_15;
    case 0xBu:
    case 0xDu:
      sub_22BE188C8();
      sub_22C273AA4();
      sub_22BE3AF78();
      v20 = sub_22BE1A1BC();
      goto LABEL_26;
    case 0xCu:
      sub_22BE188C8();
      sub_22C273AA4();
      sub_22BE3AF78();
      sub_22BE1918C();
      v20 = v55 + 14;
LABEL_15:
      v21 = v18 | 0x8000000000000000;
      goto LABEL_26;
    case 0xEu:
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = 0x203A726F727245;
      v12 = 0xE700000000000000;
LABEL_22:
      *&v69 = v11;
      *(&v69 + 1) = v12;
      MEMORY[0x2318AB8D0](v9, v10);
      goto LABEL_23;
    case 0xFu:
      v13 = *v8;
      v14 = *(v8 + 8);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      v17 = v16 + 13;
      goto LABEL_19;
    case 0x10u:
      sub_22BE3F9A8(v8, v4);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      Session.Event.Payload.description.getter(v46, v47, v48, v49, v50, v51, v52, v53, v67, v68, v45 - 2, v54, v70, v71, v72, v73, v74, v75, v76, v77);
      MEMORY[0x2318AB8D0]();

      MEMORY[0x2318AB8D0](0x64657474696D6520, 0xE800000000000000);
      sub_22BE1ADA8(v4, type metadata accessor for Session.Event);
      return sub_22BE19454();
    case 0x11u:
      v13 = *v8;
      v14 = *(v8 + 8);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      goto LABEL_19;
    case 0x12u:
      sub_22BE188C8();
      sub_22C273AA4();
      sub_22BE3AF78();
      v20 = 0x762074757074754FLL;
      v21 = 0xEE00203A65756C61;
LABEL_26:
      MEMORY[0x2318AB8D0](v20, v21);
      sub_22BE5CE4C(&qword_27D9082C8, &qword_22C27A1E0);
      sub_22C273C24();
      sub_22BE26B64(&v69);
      break;
    case 0x13u:
      sub_22BE1B990();
      sub_22BE26B64(v8);
      break;
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x18u:
      return sub_22BE19454();
    case 0x17u:
    case 0x19u:
    case 0x1Au:
      sub_22BE1B990();
      break;
    default:
      v13 = *v8;
      v14 = *(v8 + 8);
      sub_22BE1BE3C();
      sub_22C273AA4();

      sub_22BE17B64();
      v17 = v44 + 14;
LABEL_19:
      *&v69 = v17;
      *(&v69 + 1) = v15;
      MEMORY[0x2318AB8D0](v13, v14);
LABEL_23:

      break;
  }

  return sub_22BE19454();
}

_OWORD *sub_22BE92370(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t ODPEvent.description.getter()
{
  sub_22BE382D8();
  sub_22C273AA4();

  sub_22C26E164();
  sub_22BE92478();
  v0 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v0);

  MEMORY[0x2318AB8D0](0x20726F6620, 0xE500000000000000);
  v1 = ODPEventPayload.description.getter();
  MEMORY[0x2318AB8D0](v1);

  return 0xD000000000000015;
}

unint64_t sub_22BE92478()
{
  result = qword_28107F330;
  if (!qword_28107F330)
  {
    sub_22C26E164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107F330);
  }

  return result;
}

unint64_t ODPEvent.debugDescription.getter()
{
  sub_22BE382D8();
  sub_22C273AA4();

  sub_22C26E164();
  sub_22BE92478();
  v0 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v0);

  MEMORY[0x2318AB8D0](0xD000000000000010, 0x800000022C2D3540);
  v1 = ODPEventPayload.debugDescription.getter();
  MEMORY[0x2318AB8D0](v1);

  return 0xD000000000000015;
}

uint64_t ODPEvent.deinit()
{
  sub_22BE18CC8();
  sub_22BE1ADA8(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport8ODPEvent_timestamp;
  sub_22C26E164();
  sub_22BE18000();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_22BE9271C(uint64_t a1)
{
  v1 = sub_22BE92980();
  if (v2 <= 0x3F)
  {
    v3 = sub_22BE929A8();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_22BE92BB4(319, &qword_28106DBF8, sub_22BE929D0);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_22BE92BB4(319, &qword_28106DC00, sub_22BE929D0);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_22BE92A20(319);
    if (v7 > 0x3F)
    {
      return v3;
    }

    v3 = sub_22BE92AB0();
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_22BE92AD8(319);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_22BE92BB4(319, &qword_28106DBA0, sub_22BE92B50);
    if (v10 > 0x3F)
    {
      return v3;
    }

    sub_22BE92BB4(319, &qword_28106DBA8, sub_22BE92B50);
    if (v11 > 0x3F)
    {
      return v3;
    }

    sub_22BE92BB4(319, &qword_28106DBC0, sub_22BE92B50);
    if (v12 > 0x3F)
    {
      return v3;
    }

    sub_22BE92BB4(319, &qword_28106DBB0, sub_22BE92B50);
    if (v13 > 0x3F)
    {
      return v3;
    }

    sub_22BE92BB4(319, &qword_28106E938, type metadata accessor for Session.Event);
    if (v14 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_22BE92BB4(319, &qword_28106DBB8, sub_22BE92B50);
      v1 = v15;
      if (v16 <= 0x3F)
      {
        v1 = sub_22BE92C00();
        if (v17 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_22BE92980()
{
  result = qword_28106DE10;
  if (!qword_28106DE10)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28106DE10);
  }

  return result;
}

uint64_t sub_22BE929A8()
{
  result = qword_28106DE08;
  if (!qword_28106DE08)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28106DE08);
  }

  return result;
}

void sub_22BE929D0()
{
  if (!qword_28106DBF0)
  {
    v0 = sub_22C2735B4();
    if (!v1)
    {
      atomic_store(v0, &qword_28106DBF0);
    }
  }
}

void sub_22BE92A20(uint64_t a1)
{
  if (!qword_28106DC08)
  {
    sub_22BE7431C(&qword_27D908050, &qword_22C278EB0);
    sub_22BE7431C(&qword_27D9082D0, &qword_22C27A2C8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28106DC08);
    }
  }
}

uint64_t sub_22BE92AB0()
{
  result = qword_28106DDF8;
  if (!qword_28106DDF8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28106DDF8);
  }

  return result;
}

void sub_22BE92AD8(uint64_t a1)
{
  if (!qword_28106DE00)
  {
    sub_22BE7431C(&qword_27D9082C8, &qword_22C27A1E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28106DE00);
    }
  }
}

unint64_t sub_22BE92B50()
{
  result = qword_28106DB98;
  if (!qword_28106DB98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28106DB98);
  }

  return result;
}

void sub_22BE92BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BE92C00()
{
  result = qword_28106DAC0;
  if (!qword_28106DAC0)
  {
    result = MEMORY[0x277D84F70] + 8;
    atomic_store(MEMORY[0x277D84F70] + 8, &qword_28106DAC0);
  }

  return result;
}

uint64_t sub_22BE92C34(uint64_t a1)
{
  result = type metadata accessor for ODPEventPayload(319);
  if (v2 <= 0x3F)
  {
    result = sub_22C26E164();
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

__n128 sub_22BE92D38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BE92D4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_22BE92DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t static ImpendingRequestDetectedTelemetry.insert(sessionState:clientRequestId:queryEventId:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47[0] = a3;
  v47[1] = a1;
  v5 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v8 = v47 - v7;
  v9 = sub_22BE5CE4C(&qword_27D9082E0, &qword_22C27A3B8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = v47 - v11;
  v13 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  v17 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v20 = v47 - v19;
  v21 = sub_22C271E24();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Session.Transcript.formingTraceIds()(v24);
  v25 = sub_22C26E1D4();
  sub_22BE18000();
  (*(v26 + 16))(v20, v47[0], v25);
  sub_22BE187DC();
  sub_22BE19DC4(v27, v28, v29, v25);
  sub_22C271D84();

  sub_22C271D94();
  type metadata accessor for TelemetryStream();
  sub_22C271F74();
  sub_22C271F84();
  sub_22BE187DC();
  sub_22BE19DC4(v30, v31, v32, v33);
  sub_22BE346D4(v24, v16);
  sub_22BE931A0(v16);
  sub_22C271F04();
  v34 = *MEMORY[0x277D1F710];
  v35 = sub_22C271D44();
  sub_22BE18000();
  (*(v36 + 104))(v12, v34, v35);
  sub_22BE187DC();
  sub_22BE19DC4(v37, v38, v39, v35);
  sub_22C271D54();
  v40 = *MEMORY[0x277D1F680];
  v41 = sub_22C271CC4();
  sub_22BE18000();
  (*(v42 + 104))(v8, v40, v41);
  sub_22BE187DC();
  sub_22BE19DC4(v43, v44, v45, v41);
  sub_22C271CE4();
  static TelemetryStream.insert(_:)(a4);
  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_22BE931A0(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BE9325C()
{
  v0 = sub_22C2720A4();
  sub_22BE952A4(v0, qword_27D9082F8);
  sub_22BE199F4(v0, qword_27D9082F8);
  return sub_22C272094();
}

uint64_t static PlatformPnRTelemetry.failed(_:_:_:_:)(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19668();
  v9 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  v11 = type metadata accessor for Session.Transcript(0);
  sub_22BE26400(*(a3 + *(v11 + 32)), v4);
  v12 = type metadata accessor for Session.Event(0);
  sub_22BE25A50(v12);
  if (v13)
  {
    sub_22BE33928(v4, &qword_27D908310, &qword_22C27A410);
  }

  else
  {
    Session.Event.formingTraceIds()();
    sub_22BE34278(v4);
  }

  v14 = sub_22C271E24();
  sub_22BE2B7A4(v14);
  static PlatformPnRTelemetry.failed(_:_:_:_:)();
  return sub_22BE33928(v5, &qword_27D908318, &unk_22C27A418);
}

void static PlatformPnRTelemetry.failed(_:_:_:_:)()
{
  sub_22BE19460();
  v46 = v3;
  v47 = v0;
  v48 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE29080();
  sub_22BE179D8();
  v45 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  v44 = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v18);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1AEF0();
  v20 = sub_22C271E24();
  sub_22BE179D8();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  v26 = v25 - v24;
  v27 = *v8;
  v28 = *v6;
  sub_22BE34640(v48, v1);
  if (sub_22BE1AEA8(v1, 1, v20) == 1)
  {
    sub_22BE33928(v1, &qword_27D908318, &unk_22C27A418);
    if (qword_27D906348 != -1)
    {
      sub_22BE17B78(&qword_27D906348);
    }

    v29 = sub_22C2720A4();
    sub_22BE199F4(v29, qword_27D9082F8);
    v30 = sub_22C272084();
    v31 = sub_22C2737A4();
    if (sub_22BE251A8(v31))
    {
      *swift_slowAlloc() = 0;
      sub_22BE19E74(&dword_22BE15000, v32, v33, "Nil traceIds (likely due to no Transcript Events), skipping Telemetry Biome stream insertion");
      sub_22BE183C8();
    }
  }

  else
  {
    (*(v22 + 32))(v26, v1, v20);
    type metadata accessor for TelemetryStream();
    sub_22C271F74();
    sub_22C271F84();
    sub_22BE187DC();
    sub_22BE19DC4(v34, v35, v36, v37);
    sub_22BE346D4(v26, v2);
    sub_22BE33928(v2, &qword_27D9082E8, &unk_22C27A3C0);
    v50 = v27;
    v49 = v28;
    v38 = v44;
    sub_22BE93788();
    v39 = v45;
    v40 = *(v45 + 8);
    v41 = sub_22BE1B328();
    v40(v41);
    (*(v39 + 32))(v17, v38, v11);
    static TelemetryStream.insert(_:)(v17);
    v42 = sub_22BE1B328();
    v40(v42);
    (*(v22 + 8))(v26, v20);
  }

  sub_22BE1AABC();
}

void sub_22BE93788()
{
  sub_22BE19460();
  v114 = v1;
  v122 = v2;
  v4 = v3;
  v118 = v5;
  v124 = v6;
  v7 = sub_22BE5CE4C(&qword_27D9082E0, &qword_22C27A3B8);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v123 = v9;
  v10 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  v121 = v12;
  v13 = sub_22BE5CE4C(&qword_27D908358, &unk_22C27AB08);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v120 = v15;
  sub_22BE183BC();
  sub_22C271CC4();
  sub_22BE179D8();
  v112 = v17;
  v113 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  v111 = v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19490();
  v110 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19490();
  v109 = v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  sub_22BE19E94();
  v108 = v24;
  v25 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  v26 = sub_22BE19448(v25);
  MEMORY[0x28223BE20](v26);
  sub_22BE17B98();
  v107[2] = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19490();
  v107[1] = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19490();
  v107[0] = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  v34 = v107 - v33;
  MEMORY[0x28223BE20](v35);
  v36 = sub_22C271D74();
  sub_22BE179D8();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  sub_22BE179EC();
  v42 = v41 - v40;
  v43 = sub_22BE5CE4C(&qword_27D908360, &unk_22C27AB18);
  sub_22BE19448(v43);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  v46 = v107 - v45;
  v119 = sub_22C271EF4();
  sub_22BE179D8();
  v115 = v47;
  MEMORY[0x28223BE20](v48);
  sub_22BE179EC();
  sub_22BE2BB64();
  sub_22C271F54();
  sub_22BE179D8();
  v116 = v50;
  v117 = v49;
  MEMORY[0x28223BE20](v49);
  sub_22BE179EC();
  v53 = (v52 - v51);
  v54 = *v4;
  v55 = *v114;
  (*(v38 + 16))(v124, v118, v36);
  v114 = v53;
  sub_22C271F44();
  sub_22C271EE4();
  type metadata accessor for TelemetryStream();
  sub_22BE95898(v55, v46);
  v118 = v0;
  MEMORY[0x2318AA5D0](v46);
  switch(v54 >> 5)
  {
    case 2u:
      v125 = v54 & 0x1F;
      v67 = v124;
      sub_22BE35210(v124, &v125, v42);
      goto LABEL_6;
    case 3u:
      v126 = v54 & 0x1F;
      v67 = v124;
      sub_22BE93F64(v124, &v126, v42);
LABEL_6:
      (*(v38 + 8))(v67, v36);
      (*(v38 + 32))(v67, v42, v36);
      goto LABEL_13;
    case 4u:
      sub_22BE1B318();
      sub_22BE1C27C();
      v61 = v108;
      v62 = sub_22BE23C3C();
      v63(v62);
      (*(v0 + 32))(v34, v61, v36);
      sub_22BE187DC();
      sub_22BE19DC4(v64, v65, v66, v36);
      break;
    case 5u:
    case 6u:
      sub_22BE1B318();
      sub_22BE1C27C();
      v71 = sub_22BE23C3C();
      v72(v71);
      goto LABEL_11;
    case 7u:
      v68 = v111;
      sub_22BE3C7EC();
      v70 = MEMORY[0x277D1F6E8];
      if ((v54 & 1) == 0)
      {
        v70 = MEMORY[0x277D1F6E0];
      }

      v36 = v113;
      v69(v68, *v70, v113);
LABEL_11:
      v73 = sub_22BE22BD8();
      v74(v73);
      v75 = sub_22BE19198();
      sub_22BE3D114(v75, v76, v77, v36);
      break;
    default:
      v56 = sub_22BE28988();
      v57(v56);
      sub_22BE187DC();
      sub_22BE19DC4(v58, v59, v60, v36);
      break;
  }

  sub_22C271CE4();
LABEL_13:
  v78 = v123;
  v80 = v118;
  v79 = v119;
  v81 = v115;
  (*(v115 + 16))(v120, v118, v119);
  v82 = sub_22C271F14();
  sub_22BE18000();
  sub_22BE354D0();
  v86(v83, v84, v85);
  sub_22BE187DC();
  sub_22BE19DC4(v87, v88, v89, v82);
  v90 = v114;
  sub_22C271F34();
  v91 = sub_22C26E1D4();
  sub_22BE18000();
  v92 = sub_22BE1AB1C();
  v93(v92);
  sub_22BE187DC();
  sub_22BE19DC4(v94, v95, v96, v91);
  sub_22C271F24();
  v98 = v116;
  v97 = v117;
  (*(v116 + 16))(v78, v90, v117);
  v99 = sub_22C271D44();
  sub_22BE18000();
  sub_22BE354D0();
  v103(v100, v101, v102);
  sub_22BE187DC();
  sub_22BE19DC4(v104, v105, v106, v99);
  sub_22C271D54();
  (*(v81 + 8))(v80, v79);
  (*(v98 + 8))(v90, v97);
  sub_22BE1AABC();
}

uint64_t sub_22BE93F64@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1AEF0();
  v9 = *a2;
  sub_22C271D74();
  sub_22BE18000();
  (*(v10 + 16))(a3, a1);
  switch(v9)
  {
    case 0:
      v11 = MEMORY[0x277D1F690];
      break;
    case 1:
      v11 = MEMORY[0x277D1F670];
      break;
    case 2:
      v11 = MEMORY[0x277D1F698];
      break;
    case 3:
      v11 = MEMORY[0x277D1F6D0];
      break;
    case 4:
      v11 = MEMORY[0x277D1F6B8];
      break;
    case 6:
      v11 = MEMORY[0x277D1F6C0];
      break;
    default:
      if (qword_27D906348 != -1)
      {
        sub_22BE17B78(&qword_27D906348);
      }

      v12 = sub_22C2720A4();
      sub_22BE199F4(v12, qword_27D9082F8);
      v13 = sub_22C272084();
      v14 = sub_22C2737A4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v29 = v16;
        *v15 = 136315138;
        v17 = sub_22C273094();
        v19 = sub_22BE61C88(v17, v18, &v29);

        *(v15 + 4) = v19;
        sub_22BE339A0(&dword_22BE15000, v20, v21, "Warning! Telemetry for %s should be added!");
        sub_22BE26B64(v16);
        sub_22BE183C8();
        sub_22BE183C8();
      }

      *v3 = 0;
      v11 = MEMORY[0x277D1F6F0];
      break;
  }

  v22 = *v11;
  v23 = sub_22C271CC4();
  sub_22BE18000();
  (*(v24 + 104))(v3, v22, v23);
  sub_22BE187DC();
  sub_22BE19DC4(v25, v26, v27, v23);
  return sub_22C271CE4();
}

uint64_t sub_22BE941E0(void **a1)
{
  v3 = sub_22BE5CE4C(&qword_27D908360, &unk_22C27AB18);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  v5 = *a1;

  sub_22C271EB4();
  type metadata accessor for TelemetryStream();
  sub_22BE95898(v5, v1);
  sub_22C271E94();
  return sub_22C271EA4();
}

uint64_t sub_22BE94328()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t LLMCacheManagerTarget.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

uint64_t GMSCallEndedData.modelIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

IntelligenceFlowPlannerSupport::GMSCallEndedData __swiftcall GMSCallEndedData.init(gmsTarget:modelIdentifier:)(IntelligenceFlowPlannerSupport::GMSTarget gmsTarget, Swift::String modelIdentifier)
{
  *v2 = *gmsTarget;
  *(v2 + 8) = modelIdentifier;
  result.modelIdentifier = modelIdentifier;
  result.gmsTarget = gmsTarget;
  return result;
}

void HandleEndedPayload.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v1;
}

uint64_t HandleEndedPayload.init(error:eventIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void Session.Event.formingTelemetryEvent(state:contextId:)()
{
  sub_22BE19460();
  v2 = sub_22C271E24();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1B72C();
  v11 = sub_22C271D74();
  sub_22BE179D8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE2BB64();
  type metadata accessor for TelemetryStream();
  sub_22C271F74();
  sub_22C271F84();
  sub_22BE187DC();
  sub_22BE19DC4(v15, v16, v17, v18);
  Session.Event.formingTraceIds()();
  sub_22BE346D4(v8, v0);
  (*(v4 + 8))(v8, v2);
  sub_22BE33928(v0, &qword_27D9082E8, &unk_22C27A3C0);
  type metadata accessor for PlatformPnRTelemetry();
  sub_22BE34990();
  (*(v13 + 8))(v1, v11);
  sub_22BE1AABC();
}

unint64_t sub_22BE946C0()
{
  result = qword_27D908320;
  if (!qword_27D908320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908320);
  }

  return result;
}

unint64_t sub_22BE94718()
{
  result = qword_27D908328;
  if (!qword_27D908328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908328);
  }

  return result;
}

unint64_t sub_22BE94770()
{
  result = qword_27D908330;
  if (!qword_27D908330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908330);
  }

  return result;
}

unint64_t sub_22BE947C8()
{
  result = qword_27D908338;
  if (!qword_27D908338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908338);
  }

  return result;
}

unint64_t sub_22BE94820()
{
  result = qword_27D908340;
  if (!qword_27D908340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908340);
  }

  return result;
}

unint64_t sub_22BE94878()
{
  result = qword_27D908348;
  if (!qword_27D908348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908348);
  }

  return result;
}

unint64_t sub_22BE948D0()
{
  result = qword_27D908350;
  if (!qword_27D908350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908350);
  }

  return result;
}

_BYTE *sub_22BE9493C(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PlannerServiceTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlannerServiceTarget(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseGenerationTarget(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ResponseGenerationTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ExecutorRequestTarget(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExecutorRequestTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GMSTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LLMCacheManagerTarget(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22BE94FA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22BE94FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BE95034(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 5;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_22BE9507C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 32 * -a2;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HydrationOptions(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *sub_22BE95140(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22BE951F4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22BE95248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *sub_22BE952A4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t Session.Transcript.formingTraceIds()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C26E1D4();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  v26 = sub_22C271E24();
  sub_22BE179D8();
  v25 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v14 = v13 - v12;
  v15 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = sub_22BE3E508();
  v18 = type metadata accessor for Session.Event(v17);
  sub_22BE18000();
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  v22 = v21 - v20;
  v23 = type metadata accessor for Session.Transcript(0);
  sub_22BE2642C(*(v1 + *(v23 + 32)), type metadata accessor for Session.Event, type metadata accessor for Session.Event, v1);
  if (sub_22BE1AEA8(v1, 1, v18) == 1)
  {
    sub_22BE33928(v1, &qword_27D908310, &qword_22C27A410);
    sub_22C271E14();
    if (qword_28107B210 != -1)
    {
      sub_22BE188F0(&qword_28107B210);
    }

    sub_22C2742D4();
    if (__src[3] == 1)
    {
      *&__dst[0] = 0;
      BYTE8(__dst[0]) = 1;
      memset(&__dst[1], 0, 72);
    }

    else
    {
      memcpy(__dst, __src, 0x58uLL);
    }

    sub_22BE341BC(__dst);
    sub_22C271DE4();
    (*(v5 + 16))(v9, v1, v3);
    sub_22C271E04();

    sub_22C271DA4();

    sub_22C271DB4();

    sub_22C271DC4();
    return (*(v25 + 32))(a1, v14, v26);
  }

  else
  {
    sub_22BE3F9A8(v1, v22);
    Session.Event.formingTraceIds()();
    return sub_22BE34278(v22);
  }
}

uint64_t sub_22BE956EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_22C26EB64();
    sub_22BE18000();
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    sub_22BE187DC();
    v11 = v6;
  }

  else
  {
    sub_22C26EB64();
    v8 = sub_22BE3116C();
  }

  return sub_22BE19DC4(v8, v9, v10, v11);
}

uint64_t sub_22BE9579C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 0;
  }

  if (result >= a2)
  {
    __break(1u);
    return result;
  }

  return a2 - 1;
}

uint64_t sub_22BE957C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + v1 + 31);
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 8);
}

uint64_t sub_22BE957F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_22BE95898@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    sub_22C271E64();
    v4 = [v3 domain];
    sub_22C273024();

    sub_22C271E44();
    [v3 code];
    sub_22C271E34();
    [v3 code];
    sub_22C271E54();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_22C271E74();

  return sub_22BE19DC4(a2, v5, 1, v6);
}

uint64_t sub_22BE9598C()
{
  v0 = sub_22C2720A4();
  sub_22BE952A4(v0, qword_27D908368);
  sub_22BE199F4(v0, qword_27D908368);
  return sub_22C272094();
}

uint64_t sub_22BE959E4()
{
  sub_22C271E84();
  sub_22BE95BB4();
  return sub_22C271F64();
}

unint64_t sub_22BE95BB4()
{
  result = qword_28107F178;
  if (!qword_28107F178)
  {
    sub_22C271E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107F178);
  }

  return result;
}

uint64_t sub_22BE95C0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_22BE95C6C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116018(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v8[0] = v2 + 32;
  v8[1] = v7;
  sub_22BEB7D0C(v8);
  *a1 = v2;
}

void sub_22BE95CD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22BE70138(0, v2, 0);
    v3 = v32;
    v6 = sub_22C259374();
    v7 = 0;
    v8 = a1 + 64;
    v27 = v4;
    v28 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_23;
      }

      v30 = v7;
      v31 = v4;
      v29 = v5;
      v10 = (*(a1 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(*(a1 + 56) + 8 * v6);
      swift_bridgeObjectRetain_n();
      sub_22BEA7680(v13);
      sub_22BEA7680(v13);

      sub_22BE63574(v13);

      MEMORY[0x2318AB8D0](61, 0xE100000000000000);
      v14 = AST.Expr.description.getter();
      MEMORY[0x2318AB8D0](v14);

      sub_22BE63574(v13);
      v15 = v3;
      v33 = v3;
      v16 = *(v3 + 16);
      v17 = *(v15 + 24);
      if (v16 >= v17 >> 1)
      {
        sub_22BE70138(v17 > 1, v16 + 1, 1);
        v15 = v33;
      }

      *(v15 + 16) = v16 + 1;
      v18 = v15 + 16 * v16;
      *(v18 + 32) = v12;
      *(v18 + 40) = v11;
      v19 = 1 << *(a1 + 32);
      if (v6 >= v19)
      {
        goto LABEL_24;
      }

      v8 = a1 + 64;
      v20 = *(a1 + 64 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v3 = v15;
      if (*(a1 + 36) != v31)
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (a1 + 72 + 8 * v9);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_22BE2FC64(v6, v31, v29 & 1);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        sub_22BE2FC64(v6, v31, v29 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v30 + 1;
      v6 = v19;
      v4 = v27;
      if (v30 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_22BE95FFC()
{
  sub_22BE19460();
  sub_22BE3635C();
  v3 = sub_22C26E614();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v29 = v7;
  v8 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  v31 = v10;
  v30 = sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE19E64();
  type metadata accessor for VariableSetter(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v12);
  sub_22BE3D12C();
  sub_22BEC0338();
  MEMORY[0x28223BE20](v13);
  sub_22BEC0024();
  v14 = *(v1 + 16);
  if (v14 == *(v2 + 16) && v14 && v1 != v2)
  {
    sub_22BEBFEA0();
    v16 = v1 + v15;
    v17 = v2 + v15;
    v27 = *(v18 + 72);
    v28 = v3;
    while (1)
    {
      sub_22BEBFD70();
      sub_22BEBFD70();
      sub_22BEA36D4();
      if ((v19 & 1) == 0 || (sub_22C272844() & 1) == 0)
      {
        break;
      }

      v20 = *(v30 + 48);
      sub_22BE22868();
      sub_22BE22868();
      sub_22BE181B0(v0);
      if (v21)
      {
        sub_22BE181B0(v0 + v20);
        if (!v21)
        {
          goto LABEL_17;
        }

        sub_22BE33928(v0, &qword_27D908FF8, &qword_22C27FC50);
        sub_22BE23504();
        sub_22BEBFDC4();
        sub_22BE39EAC();
        sub_22BEBFDC4();
      }

      else
      {
        sub_22BE22868();
        sub_22BE181B0(v0 + v20);
        if (v21)
        {
          sub_22BEC061C();
          v25(v31, v3);
LABEL_17:
          sub_22BE33928(v0, &qword_27D909028, &qword_22C27FC68);
          break;
        }

        sub_22BEC03BC();
        v22(v29, v0 + v20, v3);
        sub_22BE251C4();
        sub_22BEBFCD4(&unk_27D909030);
        v26 = sub_22C272FD4();
        v23 = *(v5 + 8);
        v24 = sub_22BE2565C();
        v23(v24);
        (v23)(v31, v3);
        sub_22BE33928(v0, &qword_27D908FF8, &qword_22C27FC50);
        sub_22BE23504();
        sub_22BEBFDC4();
        sub_22BE39EAC();
        sub_22BEBFDC4();
        if ((v26 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v17 += v27;
      v16 += v27;
      --v14;
      v3 = v28;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    sub_22BE23504();
    sub_22BEBFDC4();
    sub_22BE39EAC();
    sub_22BEBFDC4();
  }

LABEL_19:
  sub_22BE1AABC();
}

void sub_22BE967DC()
{
  sub_22BE19460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0) - 8;
  MEMORY[0x28223BE20](v7);
  sub_22BE3D12C();
  MEMORY[0x28223BE20](v8);
  sub_22BEC0578();
  v9 = *(v5 + 16);
  if (v9 == *(v3 + 16) && v9 && v5 != v3)
  {
    sub_22BEBFEA0();
    v11 = v5 + v10;
    v12 = v3 + v10;
    v14 = *(v13 + 72);
    do
    {
      sub_22BE1AB1C();
      sub_22BEBFD70();
      sub_22BE1B5E0();
      sub_22BEBFD70();
      v15 = sub_22BE1B328();
      v16 = v1(v15);
      sub_22BE1AB74();
      sub_22BEBFDC4();
      sub_22BE200D4();
      sub_22BEBFDC4();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v12 += v14;
      v11 += v14;
      sub_22BEC0018();
    }

    while (!v17);
  }

  sub_22BE1AABC();
}

uint64_t sub_22BE9693C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_22BE969C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v25;
  a20 = v26;
  v27 = sub_22BE3FDB4();
  v28 = type metadata accessor for ContextProtoAliasTypes(v27);
  sub_22BE18000();
  MEMORY[0x28223BE20](v29);
  sub_22BE179EC();
  sub_22BE1AB80();
  v30 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v30);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  sub_22BE3FF64(v32);
  v133 = sub_22BE5CE4C(&unk_27D909110, &unk_22C27FD10);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE486B0(v34, v118);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  sub_22BE38A28(v36);
  v37 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
  sub_22BE19448(v37);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1A174();
  sub_22BE32BE4(v39);
  v138 = sub_22BE5CE4C(&byte_27D909120, &unk_22C27FD20);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE181D0(v41, v118);
  v144 = type metadata accessor for ContextProtoEntityMatch(0);
  sub_22BE179D8();
  v141 = v42;
  MEMORY[0x28223BE20](v43);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v44);
  v46 = &v118 - v45;
  v146 = sub_22C272594();
  sub_22BE179D8();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  sub_22BEC07BC(v50);
  v51 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v51);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE4104C(v53, v118);
  v139 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  sub_22BE1B01C();
  type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v55);
  sub_22BE3D12C();
  v147 = (v56 - v57);
  sub_22BE467D8();
  MEMORY[0x28223BE20](v58);
  sub_22BEC036C();
  v145 = v59;
  sub_22BEC0478();
  if (v73 && v61 && v22 != v20)
  {
    v132 = v60;
    v122 = v28;
    sub_22BEBFEA0();
    v63 = v22 + v62;
    v64 = 0;
    v129 = v20 + v62;
    v120 = v48 + 32;
    v121 = (v48 + 8);
    v66 = *(v65 + 72);
    v119 = v21;
    v131 = v67;
    v124 = v63;
    v123 = v66;
    while (1)
    {
      sub_22BEBFD70();
      if (v64 == v131)
      {
        break;
      }

      sub_22BEBFD70();
      LODWORD(v68) = *(v132 + 20);
      v69 = *(v139 + 48);
      sub_22BE22868();
      sub_22BE22868();
      sub_22BE1AB5C(v23, 1, v146);
      v130 = v64;
      if (v73)
      {
        sub_22BE1AB5C(v23 + v69, 1, v146);
        if (!v73)
        {
          goto LABEL_92;
        }

        v70 = sub_22BE1B18C();
        sub_22BE33928(v70, v71, &qword_22C294AA0);
      }

      else
      {
        v72 = v135;
        sub_22BE22868();
        sub_22BE1AB5C(v23 + v69, 1, v146);
        if (v73)
        {
          sub_22BE33554();
          v115(v72, v146);
LABEL_92:
          sub_22BE33928(v23, &qword_27D909130, &unk_22C27FD30);
LABEL_100:
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          goto LABEL_101;
        }

        sub_22BE33554();
        v74(v134, v23 + v69, v146);
        sub_22BEBFE88();
        sub_22BEBFCD4(&unk_27D909148);
        sub_22BE1A8C4();
        LOBYTE(v68) = sub_22C272FD4();
        v75 = *v121;
        v76 = sub_22BE1C2A0();
        v75(v76);
        v77 = sub_22BE232C8();
        v75(v77);
        v78 = sub_22BE1B18C();
        sub_22BE33928(v78, v79, &qword_22C294AA0);
        if ((v68 & 1) == 0)
        {
          goto LABEL_100;
        }
      }

      v80 = *v145;
      v81 = *v147;
      v82 = *(*v145 + 16);
      if (v82 != (*v147)[2])
      {
        goto LABEL_100;
      }

      if (v82 && v80 != v81)
      {
        v83 = 0;
        sub_22BE3519C();
        v128 = v80 + v84;
        v127 = v81 + v84;
        v118 = v80;
        v126 = v81;
        v125 = v82;
        do
        {
          if (v83 >= *(v80 + 16))
          {
            goto LABEL_104;
          }

          sub_22BE37314();
          sub_22BEBFD70();
          if (v83 >= v81[2])
          {
            goto LABEL_105;
          }

          sub_22BE37314();
          sub_22BEC0444(&a18);
          sub_22BEBFD70();
          v85 = *v46 == *v24 && *(v46 + 1) == *(v24 + 8);
          if (!v85 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_99;
          }

          v86 = *(v46 + 2) == *(v24 + 16) && *(v46 + 3) == *(v24 + 24);
          if (!v86 && (sub_22C274014() & 1) == 0 || *(v46 + 4) != *(v24 + 32) || *(v46 + 5) != *(v24 + 40) || *(v46 + 12) != *(v24 + 48))
          {
            goto LABEL_99;
          }

          LODWORD(v68) = *(v138 + 48);
          v87 = v142;
          v81 = &qword_27D909118;
          v88 = &unk_22C294B60;
          sub_22BE22868();
          sub_22BE22868();
          v89 = sub_22BE26188();
          v90 = matched;
          sub_22BE1AB5C(v89, v91, matched);
          if (v73)
          {
            sub_22BEBFF2C();
            if (!v73)
            {
              goto LABEL_94;
            }

            sub_22BE33928(v87, &qword_27D909118, &unk_22C294B60);
            sub_22BEC0768();
          }

          else
          {
            v92 = v137;
            sub_22BE22868();
            sub_22BEBFF2C();
            if (v93)
            {
              sub_22BEC025C();
              sub_22BEBFDC4();
LABEL_94:
              v116 = &byte_27D909120;
              v117 = &unk_22C27FD20;
              goto LABEL_98;
            }

            sub_22BE29350();
            if (v92[1])
            {
              if (!byte_27D909120)
              {
                goto LABEL_97;
              }
            }

            else
            {
              sub_22BEC02E4();
              if (v94)
              {
                goto LABEL_97;
              }
            }

            if (v92[3])
            {
              if (!v143[24])
              {
                goto LABEL_97;
              }
            }

            else
            {
              sub_22BEC02E4();
              if (v95)
              {
                goto LABEL_97;
              }
            }

            v96 = *(v90 + 24);
            v68 = *(v133 + 48);
            v97 = v136;
            sub_22BE22868();
            sub_22BE44808();
            sub_22BEC0400();
            sub_22BE1AB5C(v98, v99, v100);
            if (v73)
            {
              sub_22BE1AB5C(v97 + v68, 1, v96);
              v101 = v97;
              v87 = v142;
              if (!v73)
              {
                goto LABEL_96;
              }

              sub_22BE33928(v97, &qword_27D909108, &unk_22C2B5E20);
            }

            else
            {
              sub_22BE44808();
              sub_22BE1AB5C(v97 + v68, 1, v96);
              if (v102)
              {
                sub_22BEC028C();
                sub_22BEBFDC4();
                v101 = v97;
                v87 = v142;
LABEL_96:
                sub_22BE33928(v101, &unk_27D909110, &unk_22C27FD10);
                goto LABEL_97;
              }

              sub_22BEC004C();
              LOBYTE(v68) = v119;
              sub_22BEBFC80();
              v103 = v137;
              sub_22BEC04C8();
              v87 = v142;
              if (!v73)
              {
LABEL_90:
                sub_22BEBFDC4();
                sub_22BEBFDC4();
                sub_22BE33928(v136, &qword_27D909108, &unk_22C2B5E20);
LABEL_97:
                sub_22BEBFDC4();
                sub_22BE2565C();
                sub_22BEBFDC4();
                v116 = &qword_27D909118;
                v117 = &unk_22C294B60;
LABEL_98:
                sub_22BE33928(v87, v116, v117);
LABEL_99:
                sub_22BEBFDC4();
                sub_22BE25EFC();
                sub_22BEBFDC4();
                goto LABEL_100;
              }

              if (v104 && v105 != v106)
              {
                while (v104)
                {
                  sub_22BEC04B8();
                  if (!v73)
                  {
                    goto LABEL_90;
                  }

                  sub_22BEC04A8();
                  if (v73)
                  {
                    goto LABEL_62;
                  }
                }

                __break(1u);
                goto LABEL_103;
              }

LABEL_62:
              v81 = v103;
              sub_22C2704B4();
              sub_22BE18CE0();
              sub_22BEBFCD4(&qword_27D9090E0);
              sub_22C272FD4();
              sub_22BE35F5C();
              sub_22BEBFDC4();
              v87 = v142;
              sub_22BEBFDC4();
              sub_22BE33928(v136, &qword_27D909108, &unk_22C2B5E20);
              if ((v68 & 1) == 0)
              {
                goto LABEL_97;
              }
            }

            sub_22C2704B4();
            sub_22BE18CE0();
            sub_22BEBFCD4(&qword_27D9090E0);
            v88 = v143;
            sub_22C272FD4();
            sub_22BE3C460();
            sub_22BEBFDC4();
            sub_22BE38FD8();
            sub_22BEBFDC4();
            sub_22BE33928(v87, &qword_27D909118, &unk_22C294B60);
            v80 = v118;
            sub_22BEC0768();
            if ((v68 & 1) == 0)
            {
              goto LABEL_99;
            }
          }

          if (v46[52] != *(v24 + 52))
          {
            goto LABEL_99;
          }

          v107 = *(v46 + 7) == *(v24 + 56) && *(v46 + 8) == *(v24 + 64);
          if (!v107 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_99;
          }

          v108 = *(v46 + 9) == *(v24 + 72) && *(v46 + 10) == *(v24 + 80);
          if (!v108 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_99;
          }

          v109 = *(v144 + 52);
          v110 = &v46[v109];
          v111 = *&v46[v109 + 8];
          v112 = (v24 + v109);
          v113 = v112[1];
          if (v111)
          {
            if (!v113)
            {
              goto LABEL_99;
            }

            v114 = *v110 == *v112 && v111 == v113;
            if (!v114 && (sub_22C274014() & 1) == 0)
            {
              goto LABEL_99;
            }
          }

          else if (v113)
          {
            goto LABEL_99;
          }

          sub_22C2704B4();
          sub_22BE18CE0();
          sub_22BEBFCD4(&qword_27D9090E0);
          sub_22C272FD4();
          sub_22BE3C9F4();
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          if ((v68 & 1) == 0)
          {
            goto LABEL_100;
          }

          ++v83;
        }

        while (v83 != v88);
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22C272FD4();
      sub_22BEC00C4();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      if (v68)
      {
        v64 = v130 + 1;
        if (v130 + 1 != v131)
        {
          continue;
        }
      }

      goto LABEL_101;
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
  }

  else
  {
LABEL_101:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE97814()
{
  sub_22BE19460();
  v5 = sub_22BE3FDB4();
  type metadata accessor for TranscriptProtoStatementID(v5);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v6);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v7);
  sub_22BE339C0();
  if (v10 && v4 && v3 != v0)
  {
    sub_22BEBFEA0();
    sub_22BE32350();
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      if (*v2 != *v1)
      {
        break;
      }

      v8 = *(v2 + 16);
      v9 = *(v1 + 16);
      if (v8)
      {
        if (!v9)
        {
          break;
        }

        v10 = *(v2 + 8) == *(v1 + 8) && v8 == v9;
        if (!v10 && (sub_22C274014() & 1) == 0)
        {
          break;
        }
      }

      else if (v9)
      {
        break;
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEBFFDC();
      sub_22BE1A5A0();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v0)
      {
        sub_22BEBFEE8();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_22BE191A8();
    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_22:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE979E0()
{
  sub_22BE19460();
  v6 = sub_22BE1BC30();
  v40 = type metadata accessor for TranscriptProtoStatementID(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE336DC();
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE20168(v10, v35);
  v11 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE22BFC();
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v13);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v15);
  sub_22BE3D12C();
  sub_22BEC0338();
  MEMORY[0x28223BE20](v16);
  sub_22BEC0024();
  v17 = *(v5 + 16);
  if (v17 == *(v1 + 16) && v17 && v5 != v1)
  {
    sub_22BEBFEA0();
    sub_22BEC0568();
    v38 = v0;
    v36 = updated;
    v37 = v11;
    while (1)
    {
      sub_22BEBFD70();
      if (!v17)
      {
        break;
      }

      sub_22BE194C4();
      sub_22BEBFD70();
      sub_22BE3CC40();
      v20 = v20 && v18 == v19;
      if (!v20 && (sub_22C274014() & 1) == 0 || *(v4 + 16) != *(v3 + 16))
      {
        goto LABEL_44;
      }

      v21 = *(v11 + 48);
      sub_22BE22868();
      sub_22BEC067C();
      sub_22BE1AB5C(v2, 1, v40);
      if (v20)
      {
        sub_22BE181B0(v2 + v21);
        if (!v20)
        {
          goto LABEL_42;
        }

        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BEC067C();
        sub_22BE181B0(v2 + v21);
        if (v22)
        {
          sub_22BE184EC();
          sub_22BEBFDC4();
LABEL_42:
          v33 = &qword_27D909100;
          v34 = &unk_22C27FD00;
          goto LABEL_43;
        }

        sub_22BE1BE4C();
        sub_22BEBFC80();
        if (*v39 != *v38)
        {
          goto LABEL_40;
        }

        v23 = *(v39 + 16);
        v24 = *(v38 + 16);
        if (v23)
        {
          if (!v24 || (*(v39 + 8) == *(v38 + 8) ? (v25 = v23 == v24) : (v25 = 0), !v25 && (sub_22C274014() & 1) == 0))
          {
LABEL_40:
            sub_22BE191A8();
            sub_22BEBFDC4();
            sub_22BE3C968();
            sub_22BEBFDC4();
            v33 = &qword_27D9090F8;
            v34 = &unk_22C2AE4A0;
LABEL_43:
            sub_22BE33928(v2, v33, v34);
LABEL_44:
            sub_22BEC01E4();
            sub_22BEBFDC4();
            sub_22BE39EAC();
            sub_22BEBFDC4();
            goto LABEL_45;
          }
        }

        else if (v24)
        {
          goto LABEL_40;
        }

        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22C272FD4();
        sub_22BE1A5A0();
        sub_22BEBFDC4();
        sub_22BE3C968();
        sub_22BEBFDC4();
        sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
        updated = v36;
        v11 = v37;
        if ((v40 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v26 = *(updated + 28);
      v27 = (v4 + v26);
      v28 = *(v4 + v26 + 8);
      v29 = (v3 + v26);
      v30 = *(v3 + v26 + 8);
      if (v28)
      {
        if (!v30)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (*v27 != *v29)
        {
          LOBYTE(v30) = 1;
        }

        if (v30)
        {
          goto LABEL_44;
        }
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v31 = sub_22BEC0A34();
      sub_22BEC01E4();
      sub_22BEBFDC4();
      sub_22BE39EAC();
      sub_22BEBFDC4();
      if (v31)
      {
        sub_22BE385A8();
        v20 = v17 == 1;
        v17 = v32;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
LABEL_45:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE97E88()
{
  sub_22BE19460();
  v7 = sub_22BE1BC30();
  v34 = type metadata accessor for TranscriptProtoStatementID(v7);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE336DC();
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  v33 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v12);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v13);
  sub_22BE3D12C();
  sub_22BEC0338();
  MEMORY[0x28223BE20](v14);
  sub_22BEC0024();
  v15 = *(v6 + 16);
  if (v15 == *(v1 + 16) && v15 && v6 != v1)
  {
    sub_22BEBFEA0();
    sub_22BEC0568();
    v32 = v0;
    while (1)
    {
      sub_22BEBFD70();
      sub_22BE194C4();
      sub_22BEBFD70();
      sub_22BE3CC40();
      v18 = v18 && v16 == v17;
      if (!v18 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      v19 = *(v5 + 24);
      v20 = *(v4 + 24);
      if (v19)
      {
        if (!v20)
        {
          break;
        }

        v21 = *(v5 + 16) == *(v4 + 16) && v19 == v20;
        if (!v21 && (sub_22C274014() & 1) == 0)
        {
          break;
        }
      }

      else if (v20)
      {
        break;
      }

      v22 = *(v33 + 48);
      sub_22BE22868();
      sub_22BE44808();
      v23 = sub_22BE26188();
      sub_22BE1AB5C(v23, v24, v34);
      if (v18)
      {
        sub_22BE181B0(v3 + v22);
        if (!v18)
        {
          goto LABEL_43;
        }

        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BE1B328();
        sub_22BE44808();
        sub_22BE181B0(v3 + v22);
        if (v25)
        {
          sub_22BE184EC();
          sub_22BEBFDC4();
LABEL_43:
          v30 = &qword_27D909100;
          v31 = &unk_22C27FD00;
LABEL_44:
          sub_22BE33928(v3, v30, v31);
          break;
        }

        sub_22BE1BE4C();
        sub_22BEBFC80();
        if (*v2 != *v32)
        {
          goto LABEL_41;
        }

        v26 = *(v2 + 16);
        v27 = *(v32 + 16);
        if (v26)
        {
          if (!v27 || (*(v2 + 8) == *(v32 + 8) ? (v28 = v26 == v27) : (v28 = 0), !v28 && (sub_22C274014() & 1) == 0))
          {
LABEL_41:
            sub_22BE191A8();
            sub_22BEBFDC4();
            sub_22BE1AB74();
            sub_22BEBFDC4();
            v30 = &qword_27D9090F8;
            v31 = &unk_22C2AE4A0;
            goto LABEL_44;
          }
        }

        else if (v27)
        {
          goto LABEL_41;
        }

        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22C272FD4();
        sub_22BE1A5A0();
        sub_22BEBFDC4();
        sub_22BE1AB74();
        sub_22BEBFDC4();
        sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v34 & 1) == 0)
        {
          break;
        }
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v29 = sub_22BEC0A34();
      sub_22BE3C100();
      sub_22BEBFDC4();
      sub_22BE39EAC();
      sub_22BEBFDC4();
      if (v29)
      {
        sub_22BE385A8();
        sub_22BEC0018();
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

    sub_22BE3C100();
    sub_22BEBFDC4();
    sub_22BE39EAC();
    sub_22BEBFDC4();
  }

LABEL_46:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE98350()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v60 = v9;
  v58 = sub_22BE5CE4C(&qword_27D909150, &unk_22C2AE7B0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE20168(v11, v53);
  v65 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidateEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE18928();
  MEMORY[0x28223BE20](v13);
  v57 = &v53 - v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E94();
  sub_22BE252B8(v16);
  v17 = sub_22BE5CE4C(&qword_27D909158, &qword_22C27FD50);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E64();
  v63 = sub_22BE5CE4C(&qword_27D909160, &qword_22C27FD58);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B72C();
  v61 = type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v20);
  sub_22BE3D12C();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v53 - v25;
  v27 = *(v6 + 16);
  if (v27 != *(v4 + 16) || !v27 || v6 == v4)
  {
    goto LABEL_46;
  }

  v53 = v7;
  v54 = v2;
  v59 = v1;
  sub_22BEBFEA0();
  v29 = v6 + v28;
  v30 = v4 + v28;
  v32 = *(v31 + 72);
  v55 = v26;
  v56 = v23;
  while (1)
  {
    sub_22BEBFD70();
    if (!v27)
    {
      __break(1u);
      return;
    }

    v64 = v27;
    sub_22BEBFD70();
    v33 = *(v63 + 48);
    v34 = v26;
    sub_22BE3C968();
    sub_22BE22868();
    sub_22BE22868();
    v35 = v65;
    sub_22BE1AB5C(v0, 1, v65);
    if (v36)
    {
      sub_22BE1AB5C(v0 + v33, 1, v35);
      v26 = v34;
      if (v36)
      {
        goto LABEL_34;
      }

      sub_22BEC019C();
      sub_22BEBFDC4();
      sub_22BE25EFC();
LABEL_41:
      sub_22BEBFDC4();
      sub_22BE33928(v0, &qword_27D909160, &qword_22C27FD58);
      goto LABEL_46;
    }

    sub_22BE22868();
    sub_22BE1AB5C(v0 + v33, 1, v35);
    if (v36)
    {
      sub_22BEC019C();
      sub_22BEBFDC4();
      sub_22BE1804C();
      sub_22BEBFDC4();
      sub_22BEC01B4();
      goto LABEL_41;
    }

    sub_22BEBFC80();
    v37 = (v62 + *(v58 + 48));
    sub_22BEBFD70();
    sub_22BEBFD70();
    sub_22BE38FD8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_22BE384C8();
    v38 = v54;
    sub_22BEBFD70();
    v40 = *v38;
    v39 = v38[1];
    sub_22BE336E8();
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      goto LABEL_44;
    }

    v41 = *v37;
    v42 = v37[1];
    v43 = v40 == v41 && v39 == v42;
    v26 = v55;
    if (v43)
    {
    }

    else
    {
      sub_22BE392D4();
      v44 = sub_22C274014();

      if ((v44 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_33:
    sub_22BEBFDC4();
    sub_22BEBFDC4();
    sub_22BEBFDC4();
LABEL_34:
    v50 = sub_22BE260B8();
    sub_22BE33928(v50, v51, &qword_22C27FD50);
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v52 = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BE33BE8();
    sub_22BEBFDC4();
    if (v52)
    {
      v27 = v64 - 1;
      v30 += v32;
      v29 += v32;
      if (v64 != 1)
      {
        continue;
      }
    }

    goto LABEL_46;
  }

  sub_22BE384C8();
  v45 = v57;
  sub_22BEBFD70();
  sub_22BE336E8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE184EC();
    sub_22BEBFDC4();
LABEL_44:
    sub_22BE33928(v62, &qword_27D909150, &unk_22C2AE7B0);
    goto LABEL_45;
  }

  sub_22BE1BE4C();
  v46 = v60;
  sub_22BEBFC80();
  v26 = v55;
  if (*v45 != *v46)
  {
    goto LABEL_38;
  }

  v47 = *(v45 + 2);
  v48 = *(v46 + 16);
  if (!v47)
  {
    if (v48)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (v48)
  {
    v49 = *(v45 + 1) == *(v46 + 8) && v47 == v48;
    if (v49 || (sub_22C274014() & 1) != 0)
    {
LABEL_31:
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      if ((sub_22C272FD4() & 1) == 0)
      {
        goto LABEL_38;
      }

      sub_22BEC022C();
      sub_22BEBFDC4();
      sub_22BE2565C();
      sub_22BEBFDC4();
      goto LABEL_33;
    }
  }

LABEL_38:
  sub_22BEC022C();
  sub_22BEBFDC4();
  sub_22BE2565C();
  sub_22BEBFDC4();
LABEL_39:
  sub_22BEC01B4();
  sub_22BEBFDC4();
LABEL_45:
  sub_22BEBFDC4();
  sub_22BE1804C();
  sub_22BEBFDC4();
  sub_22BE33928(v0, &qword_27D909158, &qword_22C27FD50);
  sub_22BEBFDC4();
  sub_22BE3C968();
  sub_22BEBFDC4();
LABEL_46:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE98ABC()
{
  sub_22BE19460();
  v4 = sub_22BE39048();
  type metadata accessor for TranscriptProtoAstflatValueEnum(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20310(v9, v18);
  sub_22BE5CE4C(&qword_27D909180, &qword_22C27FD78);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoASTFlatValue(v11);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v12);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v13);
  sub_22BE18024();
  if (!v17 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0();
  sub_22BE25BF4(v14);
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    sub_22BE3A1F0();
    sub_22BE22868();
    sub_22BEC02A4();
    sub_22BE19678(v2);
    if (!v17)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v17)
    {
      goto LABEL_19;
    }

    v15 = sub_22BE1B328();
    sub_22BE33928(v15, v16, &qword_22C27FD70);
LABEL_13:
    sub_22BE3CED8();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    sub_22BEC02C4();
    sub_22BEC00DC();
    sub_22BEBFDC4();
    sub_22BE392D4();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BE27220();
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE200D4();
  sub_22BE431D8();
  sub_22BE19678(v2 + v0);
  if (!v17)
  {
    sub_22BE29350();
    sub_22BEC0610();
    static TranscriptProtoAstflatValueEnum.== infix(_:_:)();
    sub_22BE3C1D0();
    sub_22BEBFDC4();
    sub_22BE260B8();
    sub_22BEBFDC4();
    sub_22BE33928(v2, &qword_27D909178, &qword_22C27FD70);
    if ((v0 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  sub_22BEC0154();
  sub_22BEBFDC4();
LABEL_19:
  sub_22BE33928(v2, &qword_27D909180, &qword_22C27FD78);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE98E20()
{
  sub_22BE19460();
  v28 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v11);
  sub_22BE26800();
  v12 = *(v5 + 16);
  if (v12 == *(v3 + 16) && v12 && v5 != v3)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = v5 + v13;
    v15 = v3 + v13;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v18 = (v16 - 8);
    v26 = *(v16 + 56);
    v27 = v17;
    while (1)
    {
      v19 = sub_22BE1B18C();
      v27(v19);
      if (!v12)
      {
        break;
      }

      v20 = sub_22BE36658();
      v21 = v16;
      v27(v20);
      sub_22BEBFCD4(v28);
      sub_22BEC0354();
      v22 = sub_22C272FD4();
      v23 = *v18;
      v24 = sub_22BE431C0();
      v23(v24);
      (v23)(v0, v7);
      if (v22)
      {
        v15 += v26;
        v14 += v26;
        v25 = v12-- == 1;
        v16 = v21;
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_22BE1AABC();
  }
}

void sub_22BE98FD4()
{
  sub_22BE19460();
  v6 = v5;
  v7 = sub_22BE17BC4();
  v91 = type metadata accessor for ContextProtoSampleInvocation(v7);
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v11);
  sub_22BE181E4();
  v12 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v16 = v15 - v14;
  v17 = sub_22BE5CE4C(&qword_27D9090C0, &qword_22C27FCC8);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE23E58();
  v84 = sub_22BE5CE4C(&qword_27D9090C8, &unk_22C27FCD0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v85 = v20;
  v21 = sub_22BE183BC();
  v88 = type metadata accessor for ContextProtoRetrievedTool.Definition(v21);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v86 = v23;
  v24 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  sub_22BE19448(v24);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE181D0(v26, v74[0]);
  v87 = sub_22BE5CE4C(&qword_27D9090D8, &unk_22C27FCE0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  v90 = v28;
  v29 = sub_22BE183BC();
  v89 = type metadata accessor for ContextProtoRetrievedTool(v29);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v30);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v31);
  v33 = v74 - v32;
  sub_22BEC0478();
  if (!v45 || !v34 || v0 == v6)
  {
LABEL_56:
    sub_22BE1AABC();
    return;
  }

  sub_22BEBFEA0();
  v81 = v6 + v35;
  v82 = v33;
  v36 = 0;
  v38 = *(v37 + 72);
  v74[1] = v16;
  v74[2] = v9;
  v78 = v4;
  v79 = v12;
  v83 = v39;
  v76 = v38;
  v77 = v0 + v35;
  while (1)
  {
    sub_22BE2BCC4();
    sub_22BEBFD70();
    if (v36 == v83)
    {
      goto LABEL_58;
    }

    v80 = v36;
    sub_22BE2BCC4();
    sub_22BEBFD70();
    v40 = v90;
    v41 = *(v87 + 48);
    sub_22BE22868();
    sub_22BE22868();
    v42 = sub_22BE36214();
    LOBYTE(v36) = v88;
    sub_22BE1AB5C(v42, v43, v88);
    if (v45)
    {
      sub_22BE181B0(v40 + v41);
      v44 = v82;
      if (!v45)
      {
        goto LABEL_50;
      }

      sub_22BE33928(v40, &qword_27D9090D0, &unk_22C294B30);
      goto LABEL_21;
    }

    v75 = v3;
    sub_22BE22868();
    sub_22BE181B0(v40 + v41);
    if (v45)
    {
      sub_22BE1B9A8();
      sub_22BEBFDC4();
LABEL_50:
      v71 = &qword_27D9090D8;
      v72 = &unk_22C27FCE0;
      v73 = v40;
LABEL_54:
      sub_22BE33928(v73, v71, v72);
LABEL_55:
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      goto LABEL_56;
    }

    sub_22BE36C70();
    sub_22BEBFC80();
    v46 = v85;
    v47 = *(v84 + 48);
    sub_22BE200E0();
    sub_22BE22868();
    sub_22BE22868();
    v48 = sub_22BE36214();
    sub_22BE1AB5C(v48, v49, v12);
    v44 = v82;
    if (v45)
    {
      sub_22BE1AB5C(v46 + v47, 1, v12);
      v3 = v75;
      if (!v45)
      {
        goto LABEL_52;
      }

      v50 = sub_22BE1804C();
      sub_22BE33928(v50, v51, &qword_22C27FCC8);
      goto LABEL_20;
    }

    sub_22BE22868();
    sub_22BE1AB5C(v46 + v47, 1, v12);
    v3 = v75;
    if (v52)
    {
      sub_22BE3CCBC();
      sub_22BEBFDC4();
LABEL_52:
      sub_22BE33928(v46, &qword_27D9090C8, &unk_22C27FCD0);
LABEL_53:
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      v71 = &qword_27D9090D0;
      v72 = &unk_22C294B30;
      v73 = v90;
      goto LABEL_54;
    }

    sub_22BE28E28();
    sub_22BEBFC80();
    static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)();
    v54 = v53;
    sub_22BEBFDC4();
    sub_22BE25EFC();
    sub_22BEBFDC4();
    sub_22BE33928(v46, &qword_27D9090C0, &qword_22C27FCC8);
    if ((v54 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_20:
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v55 = sub_22C272FD4();
    v36 = type metadata accessor for ContextProtoRetrievedTool.Definition;
    sub_22BEBFDC4();
    sub_22BEBFDC4();
    sub_22BE33928(v90, &qword_27D9090D0, &unk_22C294B30);
    if ((v55 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_21:
    if (*v44 != *v3)
    {
      goto LABEL_55;
    }

    v56 = *(v44 + 1);
    v57 = *(v3 + 8);
    v58 = *(v56 + 16);
    if (v58 != *(v57 + 16))
    {
      goto LABEL_55;
    }

    if (v58 && v56 != v57)
    {
      sub_22BE3CF48();
      v61 = v59 + v60;
      v63 = v62 + v60;
      v65 = *(v64 + 72);
      while (1)
      {
        sub_22BEC010C();
        sub_22BE3CC34();
        sub_22BEBFD70();
        sub_22BEC010C();
        sub_22BE25C08();
        sub_22BEBFD70();
        v66 = *v2 == *v1 && *(v2 + 8) == *(v1 + 8);
        if (!v66 && (sub_22C274014() & 1) == 0 || *(v2 + 16) != *(v1 + 16))
        {
          break;
        }

        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22C272FD4();
        sub_22BE3F358();
        sub_22BEBFDC4();
        sub_22BE36658();
        sub_22BEBFDC4();
        if ((v36 & 1) == 0)
        {
          goto LABEL_55;
        }

        v63 += v65;
        v61 += v65;
        if (!--v58)
        {
          goto LABEL_34;
        }
      }

      sub_22BEC00F4();
      sub_22BEBFDC4();
      sub_22BE200D4();
      sub_22BEBFDC4();
      goto LABEL_55;
    }

LABEL_34:
    if (v44[16] != *(v3 + 16))
    {
      goto LABEL_55;
    }

    sub_22BEC04C8();
    if (!v45)
    {
      goto LABEL_55;
    }

    if (v67 && v68 != v69)
    {
      break;
    }

LABEL_44:
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v70 = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BEBFDC4();
    if (v70)
    {
      v12 = v79;
      v36 = (v80 + 1);
      if ((v80 + 1) != v83)
      {
        continue;
      }
    }

    goto LABEL_56;
  }

  while (v67)
  {
    sub_22BEC04B8();
    if (!v45)
    {
      goto LABEL_55;
    }

    sub_22BEC04A8();
    if (v45)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_22BE9983C()
{
  sub_22BE19460();
  sub_22BE1BC30();
  v2 = sub_22C2725B4();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BEBFF98(v11, v48);
  v59 = sub_22BE5CE4C(&qword_27D909278, &unk_22C27FE60);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE20310(v13, v49);
  v63 = sub_22C2725C4();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v19 = v18 - v17;
  v20 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE2BA30(v22, v50);
  v61 = sub_22BE5CE4C(&qword_27D909288, &unk_22C27FE70);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE23AA4(v24);
  type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v25);
  sub_22BE3D12C();
  MEMORY[0x28223BE20](v26);
  sub_22BEC036C();
  v27 = *(v1 + 16);
  if (v27 != *(v0 + 16) || !v27 || v1 == v0)
  {
    goto LABEL_29;
  }

  v53 = v19;
  sub_22BEBFEA0();
  v29 = v1 + v28;
  v30 = v0 + v28;
  v54 = (v15 + 8);
  v51 = v8;
  v52 = (v4 + 8);
  v56 = *(v31 + 72);
  v57 = v2;
  while (1)
  {
    sub_22BE236C8();
    sub_22BEBFD70();
    sub_22BE3E79C();
    sub_22BEBFD70();
    v32 = *(v61 + 48);
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE1AB5C(v62, 1, v63);
    if (v33)
    {
      sub_22BE1AB5C(v62 + v32, 1, v63);
      if (!v33)
      {
        goto LABEL_24;
      }

      sub_22BE33928(v62, &qword_27D909280, &unk_22C294B50);
    }

    else
    {
      sub_22BE22868();
      sub_22BE1AB5C(v62 + v32, 1, v63);
      if (v33)
      {
        (*v54)(v58, v63);
LABEL_24:
        v45 = &qword_27D909288;
        v46 = &unk_22C27FE70;
        v47 = v62;
        goto LABEL_27;
      }

      (*(v15 + 32))(v53, v62 + v32, v63);
      v34 = sub_22BEBFCD4(&qword_27D909298);
      v55 = sub_22BE37DB4(v34);
      v35 = *v54;
      (*v54)(v53, v63);
      v35(v58, v63);
      sub_22BE33928(v62, &qword_27D909280, &unk_22C294B50);
      if ((v55 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v36 = *(v59 + 48);
    sub_22BE22868();
    sub_22BE22868();
    v37 = sub_22BE26188();
    sub_22BE1AB5C(v37, v38, v57);
    if (!v33)
    {
      break;
    }

    sub_22BE1AB5C(v64 + v36, 1, v57);
    if (!v33)
    {
      goto LABEL_26;
    }

    sub_22BE33928(v64, &qword_27D909270, &unk_22C2CB810);
LABEL_19:
    sub_22C2704B4();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v44 = sub_22C272FD4();
    sub_22BEBFDC4();
    sub_22BE1B5E0();
    sub_22BEBFDC4();
    if (v44)
    {
      v30 += v56;
      v29 += v56;
      if (--v27)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  sub_22BE22868();
  v39 = sub_22BE41DA8();
  sub_22BE1AB5C(v39, v40, v57);
  if (!v41)
  {
    (*(v4 + 32))(v51, v64 + v36, v57);
    sub_22BEBFCD4(&qword_27D909290);
    v42 = sub_22C272FD4();
    v43 = *v52;
    (*v52)(v51, v57);
    v43(v60, v57);
    sub_22BE33928(v64, &qword_27D909270, &unk_22C2CB810);
    if ((v42 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  (*v52)(v60, v57);
LABEL_26:
  v45 = &qword_27D909278;
  v46 = &unk_22C27FE60;
  v47 = v64;
LABEL_27:
  sub_22BE33928(v47, v45, v46);
LABEL_28:
  sub_22BEBFDC4();
  sub_22BE39EAC();
  sub_22BEBFDC4();
LABEL_29:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE99FA4()
{
  sub_22BE19460();
  v5 = sub_22BE3FDB4();
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(v5);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v6);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v7);
  sub_22BE339C0();
  if (v10 && v4 && v3 != v0)
  {
    sub_22BEBFEA0();
    sub_22BE32350();
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      sub_22BEC04E8();
      v10 = v10 && v8 == v9;
      if (!v10 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      v11 = *(v2 + 32);
      v12 = *(v1 + 32);
      if (v11)
      {
        if (!v12)
        {
          break;
        }

        v13 = *(v2 + 24) == *(v1 + 24) && v11 == v12;
        if (!v13 && (sub_22C274014() & 1) == 0)
        {
          break;
        }
      }

      else if (v12)
      {
        break;
      }

      if (*(v2 + 16) != *(v1 + 16))
      {
        break;
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v14 = sub_22BEBFFDC();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v14)
      {
        sub_22BEBFEE8();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_27:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9A1A8()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22BE17BC4();
  v5 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE1AB80();
  v7 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE181D0(v9, v43);
  sub_22BE5CE4C(&qword_27D9090F0, &unk_22C27FCF0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoStatementID(v11);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE3BF90(v13);
  v14 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE2BA30(v16, v44);
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE29250(v18, v45);
  v19 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v20);
  sub_22BE3D12C();
  sub_22BE467D8();
  MEMORY[0x28223BE20](v21);
  sub_22BE239A8();
  v22 = *(v0 + 16);
  if (v22 != *(v3 + 16) || !v22 || v0 == v3)
  {
    goto LABEL_43;
  }

  sub_22BEBFEA0();
  sub_22BE44724(v23);
  while (1)
  {
    sub_22BEBFD70();
    sub_22BE1AB74();
    sub_22BEBFD70();
    sub_22BEC040C();
    sub_22BEC0694();
    sub_22BEC0694();
    sub_22BEBFF60(v49);
    if (v24)
    {
      sub_22BEBFF60(v49 + v3);
      if (!v24)
      {
        goto LABEL_37;
      }

      sub_22BE33928(v49, &qword_27D9090F8, &unk_22C2AE4A0);
    }

    else
    {
      sub_22BEC0694();
      sub_22BEBFF60(v49 + v3);
      if (v24)
      {
        sub_22BE184EC();
        sub_22BEBFDC4();
LABEL_37:
        v40 = &qword_27D909100;
        v41 = &unk_22C27FD00;
LABEL_38:
        v42 = v49;
        goto LABEL_41;
      }

      sub_22BE1BE4C();
      sub_22BE2BB28();
      sub_22BEBFC80();
      sub_22BEC0750();
      if (!v24)
      {
        goto LABEL_35;
      }

      v25 = *(v48 + 16);
      if (*(v47 + 16))
      {
        if (!v25 || ((sub_22BEC073C(), v24) ? (v28 = v26 == v27) : (v28 = 0), !v28 && (sub_22C274014() & 1) == 0))
        {
LABEL_35:
          sub_22BE191A8();
          sub_22BEBFDC4();
          sub_22BE291B0();
          sub_22BEBFDC4();
          v40 = &qword_27D9090F8;
          v41 = &unk_22C2AE4A0;
          goto LABEL_38;
        }
      }

      else if (v25)
      {
        goto LABEL_35;
      }

      sub_22BEC0994();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEC06C8();
      sub_22BE1A5A0();
      sub_22BEBFDC4();
      sub_22BE1B18C();
      sub_22BEBFDC4();
      v29 = v19;
      v19 = v46;
      sub_22BE33928(v29, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((v3 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    sub_22BE487A0();
    sub_22BE22868();
    sub_22BE35E38();
    v30 = sub_22BE26188();
    sub_22BE1AB5C(v30, v31, v5);
    if (!v24)
    {
      break;
    }

    sub_22BEBFF2C();
    if (!v24)
    {
      goto LABEL_40;
    }

    v32 = sub_22BE232C8();
    sub_22BE33928(v32, v33, &qword_22C2B5A90);
LABEL_30:
    sub_22C2704B4();
    sub_22BE18CE0();
    v39 = sub_22BEBFCD4(&qword_27D9090E0);
    v3 = sub_22BE3FE80(v39);
    sub_22BEBFDC4();
    sub_22BE1B18C();
    sub_22BEBFDC4();
    if (v3)
    {
      sub_22BEC0378();
      if (!v24)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  sub_22BEC09F4();
  sub_22BEBFF2C();
  if (!v34)
  {
    sub_22BE3CB48();
    static ContextProtoDynamicEnumerationEntity.== infix(_:_:)();
    v36 = v35;
    v19 = v46;
    sub_22BEBFDC4();
    sub_22BE1B18C();
    sub_22BEBFDC4();
    v37 = sub_22BE232C8();
    sub_22BE33928(v37, v38, &qword_22C2B5A90);
    if ((v36 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  sub_22BEBFDC4();
LABEL_40:
  v40 = &qword_27D9090F0;
  v41 = &unk_22C27FCF0;
  v42 = v1;
LABEL_41:
  sub_22BE33928(v42, v40, v41);
LABEL_42:
  sub_22BEBFDC4();
  sub_22BEBFDC4();
LABEL_43:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9A770()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22BE17BC4();
  v5 = type metadata accessor for ContextProtoRetrievedContext(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE1AB80();
  v7 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE181D0(v9, v43);
  sub_22BE5CE4C(&qword_27D9091B0, &qword_22C27FDA8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoStatementID(v11);
  sub_22BE18000();
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  sub_22BE3BF90(v13);
  v14 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v14);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE2BA30(v16, v44);
  sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE29250(v18, v45);
  v19 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v20);
  sub_22BE3D12C();
  sub_22BE467D8();
  MEMORY[0x28223BE20](v21);
  sub_22BE239A8();
  v22 = *(v0 + 16);
  if (v22 != *(v3 + 16) || !v22 || v0 == v3)
  {
    goto LABEL_43;
  }

  sub_22BEBFEA0();
  sub_22BE44724(v23);
  while (1)
  {
    sub_22BEBFD70();
    sub_22BE1AB74();
    sub_22BEBFD70();
    sub_22BEC040C();
    sub_22BEC0694();
    sub_22BEC0694();
    sub_22BEBFF60(v49);
    if (v24)
    {
      sub_22BEBFF60(v49 + v3);
      if (!v24)
      {
        goto LABEL_37;
      }

      sub_22BE33928(v49, &qword_27D9090F8, &unk_22C2AE4A0);
    }

    else
    {
      sub_22BEC0694();
      sub_22BEBFF60(v49 + v3);
      if (v24)
      {
        sub_22BE184EC();
        sub_22BEBFDC4();
LABEL_37:
        v40 = &qword_27D909100;
        v41 = &unk_22C27FD00;
LABEL_38:
        v42 = v49;
        goto LABEL_41;
      }

      sub_22BE1BE4C();
      sub_22BE2BB28();
      sub_22BEBFC80();
      sub_22BEC0750();
      if (!v24)
      {
        goto LABEL_35;
      }

      v25 = *(v48 + 16);
      if (*(v47 + 16))
      {
        if (!v25 || ((sub_22BEC073C(), v24) ? (v28 = v26 == v27) : (v28 = 0), !v28 && (sub_22C274014() & 1) == 0))
        {
LABEL_35:
          sub_22BE191A8();
          sub_22BEBFDC4();
          sub_22BE291B0();
          sub_22BEBFDC4();
          v40 = &qword_27D9090F8;
          v41 = &unk_22C2AE4A0;
          goto LABEL_38;
        }
      }

      else if (v25)
      {
        goto LABEL_35;
      }

      sub_22BEC0994();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEC06C8();
      sub_22BE1A5A0();
      sub_22BEBFDC4();
      sub_22BE1B18C();
      sub_22BEBFDC4();
      v29 = v19;
      v19 = v46;
      sub_22BE33928(v29, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((v3 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    sub_22BE487A0();
    sub_22BE22868();
    sub_22BE35E38();
    v30 = sub_22BE26188();
    sub_22BE1AB5C(v30, v31, v5);
    if (!v24)
    {
      break;
    }

    sub_22BEBFF2C();
    if (!v24)
    {
      goto LABEL_40;
    }

    v32 = sub_22BE232C8();
    sub_22BE33928(v32, v33, &qword_22C27FDA0);
LABEL_30:
    sub_22C2704B4();
    sub_22BE18CE0();
    v39 = sub_22BEBFCD4(&qword_27D9090E0);
    v3 = sub_22BE3FE80(v39);
    sub_22BEBFDC4();
    sub_22BE1B18C();
    sub_22BEBFDC4();
    if (v3)
    {
      sub_22BEC0378();
      if (!v24)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  sub_22BEC09F4();
  sub_22BEBFF2C();
  if (!v34)
  {
    sub_22BE3CB48();
    static ContextProtoRetrievedContext.== infix(_:_:)();
    v36 = v35;
    v19 = v46;
    sub_22BEBFDC4();
    sub_22BE1B18C();
    sub_22BEBFDC4();
    v37 = sub_22BE232C8();
    sub_22BE33928(v37, v38, &qword_22C27FDA0);
    if ((v36 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  sub_22BEBFDC4();
LABEL_40:
  v40 = &qword_27D9091B0;
  v41 = &qword_22C27FDA8;
  v42 = v1;
LABEL_41:
  sub_22BE33928(v42, v40, v41);
LABEL_42:
  sub_22BEBFDC4();
  sub_22BEBFDC4();
LABEL_43:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9AD38()
{
  sub_22BE19460();
  v3 = sub_22BE1BC30();
  type metadata accessor for ContextProtoAliasTypes(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE190A8(v5);
  v6 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  sub_22BE190A8(v8);
  v140 = sub_22BE5CE4C(&unk_27D909110, &unk_22C27FD10);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  sub_22BE190A8(v10);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  sub_22BE190A8(v12);
  v13 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE2C638(v15, v130);
  v144 = sub_22BE5CE4C(&byte_27D909120, &unk_22C27FD20);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v151 = v17;
  v18 = sub_22BE183BC();
  v155 = type metadata accessor for ContextProtoEntityMatch(v18);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  v163 = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE2BB70(v22, v23, v24, v25, v26, v27, v28, v29, v131);
  v148 = sub_22C272594();
  sub_22BE179D8();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  sub_22BE190A8(v33);
  v34 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v34);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE1A174();
  v146 = v36;
  v147 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE4104C(v38, v132);
  v157 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v39);
  sub_22BE17A44();
  sub_22BEC03A4(v40);
  v41 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  sub_22BE19448(v41);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BEBFF98(v43, v133);
  v154 = sub_22BE5CE4C(&qword_27D909140, &unk_22C27FD40);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE29250(v45, v134);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  sub_22BEC097C(v47);
  v48 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v48);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE1A174();
  sub_22BEC07BC(v50);
  v51 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE1B72C();
  type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v53);
  sub_22BE3D12C();
  v160 = v54 - v55;
  sub_22BE467D8();
  MEMORY[0x28223BE20](v56);
  sub_22BEC036C();
  v162 = v57;
  sub_22BEC0478();
  if (v67 && v58 && v2 != v1)
  {
    sub_22BEBFEA0();
    v136 = (v31 + 8);
    v59 = 0;
    v60 = v153;
    v137 = v51;
    v143 = v61;
    while (1)
    {
      sub_22BE46D80();
      sub_22BEC0444(&v165);
      sub_22BEBFD70();
      if (v59 == v143)
      {
        break;
      }

      v138 = v59;
      sub_22BE46D80();
      sub_22BEC0444(&v163);
      sub_22BEBFD70();
      v62 = *(v51 + 48);
      sub_22BEC0964();
      sub_22BE22868();
      sub_22BE22868();
      v63 = sub_22BE391E8();
      sub_22BEBFF10(v63, v64);
      if (v67)
      {
        sub_22BE1C14C(v0 + v62);
        if (!v67)
        {
          goto LABEL_117;
        }

        v65 = sub_22BE260B8();
        sub_22BE33928(v65, v66, &unk_22C2AE4A0);
      }

      else
      {
        sub_22BE22868();
        sub_22BE1C14C(v0 + v62);
        if (v67)
        {
          sub_22BE184EC();
          sub_22BEBFDC4();
LABEL_117:
          v123 = &qword_27D909100;
          v124 = &unk_22C27FD00;
LABEL_118:
          v125 = v0;
LABEL_132:
          sub_22BE33928(v125, v123, v124);
LABEL_133:
          sub_22BEBFDC4();
          sub_22BEC0964();
          sub_22BEBFDC4();
          goto LABEL_134;
        }

        sub_22BE1BE4C();
        sub_22BEBFC80();
        sub_22BEC0750();
        if (!v67)
        {
          goto LABEL_114;
        }

        v68 = *(v152 + 16);
        v69 = *(v149 + 16);
        if (v68)
        {
          if (!v69 || (*(v152 + 8) == *(v149 + 8) ? (v70 = v68 == v69) : (v70 = 0), !v70 && (sub_22C274014() & 1) == 0))
          {
LABEL_114:
            sub_22BE33BF4();
            sub_22BEBFDC4();
            sub_22BEBFDC4();
            v123 = &qword_27D9090F8;
            v124 = &unk_22C2AE4A0;
            goto LABEL_118;
          }
        }

        else if (v69)
        {
          goto LABEL_114;
        }

        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22C272FD4();
        sub_22BE1A5A0();
        sub_22BEBFDC4();
        v51 = v137;
        sub_22BEBFDC4();
        sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((v149 & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      v71 = *(v154 + 48);
      sub_22BE22868();
      v72 = &qword_22C2B5A80;
      sub_22BE22868();
      v73 = sub_22BE26188();
      sub_22BE1AB5C(v73, v74, v157);
      if (v67)
      {
        sub_22BE1AB5C(v161 + v71, 1, v157);
        if (!v67)
        {
          goto LABEL_120;
        }

        sub_22BE33928(v161, &qword_27D909138, &qword_22C2B5A80);
      }

      else
      {
        sub_22BE22868();
        v75 = sub_22BE41DA8();
        sub_22BE1AB5C(v75, v76, v157);
        if (v77)
        {
          sub_22BEBFDC4();
LABEL_120:
          v123 = &qword_27D909140;
          v124 = &unk_22C27FD40;
LABEL_131:
          v125 = v161;
          goto LABEL_132;
        }

        sub_22BEBFC80();
        v78 = *(v147 + 48);
        sub_22BE22868();
        sub_22BEC067C();
        v79 = v148;
        sub_22BEBFF10(v60, 1);
        if (v67)
        {
          sub_22BE1C14C(v60 + v78);
          if (!v67)
          {
            goto LABEL_122;
          }

          v80 = sub_22BE392D4();
          sub_22BE33928(v80, v81, &qword_22C294AA0);
          v82 = v159;
        }

        else
        {
          sub_22BEC067C();
          sub_22BE1C14C(v60 + v78);
          if (v83)
          {
            sub_22BE33554();
            v126 = sub_22BE200E0();
            v127(v126);
LABEL_122:
            sub_22BE33928(v60, &qword_27D909130, &unk_22C27FD30);
LABEL_130:
            sub_22BEBFDC4();
            sub_22BE33FCC();
            sub_22BEBFDC4();
            v123 = &qword_27D909138;
            v124 = &qword_22C2B5A80;
            goto LABEL_131;
          }

          sub_22BE33554();
          v84(v141, v60 + v78, v148);
          sub_22BEBFE88();
          sub_22BEBFCD4(&unk_27D909148);
          sub_22BE33560();
          LOBYTE(v78) = sub_22C272FD4();
          v85 = *v136;
          v86 = sub_22BE232C8();
          v85(v86);
          (v85)(v146, v148);
          v51 = v137;
          sub_22BE33928(v153, &qword_27D909128, &qword_22C294AA0);
          v82 = v159;
          if ((v78 & 1) == 0)
          {
            goto LABEL_130;
          }
        }

        v87 = *(*v82 + 16);
        if (v87 != *(*v158 + 16))
        {
          goto LABEL_130;
        }

        if (v87 && *v82 != *v158)
        {
          sub_22BE3CF48();
          v90 = *(v89 + 72);
          v135 = v90;
          do
          {
            v91 = v88;
            v92 = v90 * v88;
            sub_22BE37314();
            sub_22BEBFD70();
            if (v91 == v87)
            {
              goto LABEL_137;
            }

            sub_22BE37314();
            sub_22BEC0444(&v160);
            sub_22BE2BB28();
            sub_22BEBFD70();
            v93 = *v164 == *v92 && *(v164 + 8) == *(v92 + 8);
            if (!v93 && (sub_22C274014() & 1) == 0)
            {
              goto LABEL_129;
            }

            sub_22BEC08DC();
            v96 = v67 && v94 == v95;
            if (!v96 && (sub_22C274014() & 1) == 0 || *(v164 + 32) != *(v163 + 32) || *(v164 + 40) != *(v163 + 40) || *(v164 + 48) != *(v163 + 48))
            {
              goto LABEL_129;
            }

            v78 = *(v144 + 48);
            v97 = v151;
            sub_22BE22868();
            sub_22BEC0A6C();
            v98 = sub_22BE36214();
            sub_22BE1AB5C(v98, v99, matched);
            if (v67)
            {
              sub_22BE1AB5C(v151 + v78, 1, matched);
              if (!v67)
              {
                goto LABEL_124;
              }

              sub_22BE33928(v151, &qword_27D909118, &unk_22C294B60);
            }

            else
            {
              sub_22BEC0A6C();
              sub_22BE1AB5C(v151 + v78, 1, matched);
              if (v100)
              {
                sub_22BEC025C();
                sub_22BEBFDC4();
LABEL_124:
                v128 = &byte_27D909120;
                v129 = &unk_22C27FD20;
                goto LABEL_128;
              }

              sub_22BEBFC80();
              if (*(v156 + 8))
              {
                if (!*(v145 + 8))
                {
                  goto LABEL_127;
                }
              }

              else
              {
                sub_22BEC02E4();
                if (v101)
                {
                  goto LABEL_127;
                }
              }

              if (*(v156 + 24))
              {
                if (!*(v145 + 24))
                {
                  goto LABEL_127;
                }
              }

              else
              {
                sub_22BEC02E4();
                if (v102)
                {
                  goto LABEL_127;
                }
              }

              v78 = *(v140 + 48);
              sub_22BE22868();
              sub_22BEC067C();
              sub_22BEBFF10(v142, 1);
              if (v67)
              {
                sub_22BE1C14C(v142 + v78);
                v97 = v151;
                if (!v67)
                {
                  goto LABEL_126;
                }

                v103 = sub_22BE392D4();
                sub_22BE33928(v103, v104, &unk_22C2B5E20);
                v105 = matched;
                v51 = v137;
              }

              else
              {
                sub_22BEC067C();
                sub_22BE1C14C(v142 + v78);
                if (v106)
                {
                  sub_22BEC028C();
                  sub_22BEBFDC4();
                  v97 = v151;
LABEL_126:
                  sub_22BE33928(v142, &unk_27D909110, &unk_22C27FD10);
                  goto LABEL_127;
                }

                sub_22BEC004C();
                LOBYTE(v78) = v139;
                sub_22BEBFC80();
                sub_22BEC04C8();
                v97 = v151;
                v51 = v137;
                if (!v67)
                {
LABEL_115:
                  sub_22BEBFDC4();
                  sub_22BEBFDC4();
                  sub_22BE33928(v142, &qword_27D909108, &unk_22C2B5E20);
LABEL_127:
                  sub_22BEBFDC4();
                  sub_22BEBFDC4();
                  v128 = &qword_27D909118;
                  v129 = &unk_22C294B60;
LABEL_128:
                  sub_22BE33928(v97, v128, v129);
LABEL_129:
                  sub_22BEBFDC4();
                  sub_22BEC0610();
                  sub_22BEBFDC4();
                  goto LABEL_130;
                }

                if (v107 && v108 != v109)
                {
                  while (v107)
                  {
                    sub_22BEC04B8();
                    if (!v67)
                    {
                      goto LABEL_115;
                    }

                    sub_22BEC04A8();
                    if (v67)
                    {
                      goto LABEL_85;
                    }
                  }

                  goto LABEL_136;
                }

LABEL_85:
                sub_22BEC0A84();
                sub_22BE18CE0();
                sub_22BEBFCD4(&qword_27D9090E0);
                sub_22C272FD4();
                sub_22BE35F5C();
                sub_22BEBFDC4();
                v97 = v151;
                sub_22BEBFDC4();
                sub_22BE33928(v142, &qword_27D909108, &unk_22C2B5E20);
                v105 = matched;
                if ((v139 & 1) == 0)
                {
                  goto LABEL_127;
                }
              }

              v110 = v97;
              v111 = *(v105 + 28);
              sub_22C2704B4();
              sub_22BE18CE0();
              sub_22BEBFCD4(&qword_27D9090E0);
              sub_22BEC0724(v156 + v111);
              sub_22BE3C460();
              sub_22BEBFDC4();
              sub_22BEBFDC4();
              sub_22BE33928(v110, &qword_27D909118, &unk_22C294B60);
              if ((v78 & 1) == 0)
              {
                goto LABEL_129;
              }
            }

            if (*(v164 + 52) != *(v163 + 52))
            {
              goto LABEL_129;
            }

            v112 = *(v164 + 56) == *(v163 + 56) && *(v164 + 64) == *(v163 + 64);
            if (!v112 && (sub_22C274014() & 1) == 0)
            {
              goto LABEL_129;
            }

            v113 = *(v164 + 72) == *(v163 + 72) && *(v164 + 80) == *(v163 + 80);
            if (!v113 && (sub_22C274014() & 1) == 0)
            {
              goto LABEL_129;
            }

            v114 = *(v155 + 52);
            v115 = (v164 + v114);
            v116 = *(v164 + v114 + 8);
            v117 = (v163 + v114);
            v118 = v117[1];
            if (v116)
            {
              if (!v118)
              {
                goto LABEL_129;
              }

              v119 = *v115 == *v117 && v116 == v118;
              if (!v119 && (sub_22C274014() & 1) == 0)
              {
                goto LABEL_129;
              }
            }

            else if (v118)
            {
              goto LABEL_129;
            }

            sub_22C2704B4();
            sub_22BE18CE0();
            sub_22BEBFCD4(&qword_27D9090E0);
            sub_22C272FD4();
            sub_22BE3C9F4();
            v79 = v120;
            sub_22BEBFDC4();
            sub_22BE232C8();
            v82 = v159;
            sub_22BEBFDC4();
            if ((v78 & 1) == 0)
            {
              goto LABEL_130;
            }

            v88 = v91 + 1;
            v90 = v135;
          }

          while (v91 + 1 != v87);
        }

        sub_22BEC0A54();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        sub_22BEC0724(v82 + v79);
        sub_22BEC00C4();
        v72 = v121;
        sub_22BEBFDC4();
        v60 = v153;
        sub_22BEBFDC4();
        sub_22BE33928(v161, &qword_27D909138, &qword_22C2B5A80);
        if ((v78 & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      sub_22BEC0A54();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v122 = sub_22BEC0724(v72 + v162);
      sub_22BEBFDC4();
      sub_22BE200E0();
      sub_22BEBFDC4();
      if (v122)
      {
        v59 = v138 + 1;
        if (v138 + 1 != v143)
        {
          continue;
        }
      }

      goto LABEL_134;
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
  }

  else
  {
LABEL_134:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE9C024()
{
  sub_22BE19460();
  v6 = sub_22BE39048();
  v57 = type metadata accessor for TranscriptProtoCandidate(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE336DC();
  v8 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE29250(v10, v45[0]);
  v56 = sub_22BE5CE4C(&qword_27D9091C0, &qword_22C27FDB8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_22BE22BFC();
  v54 = type metadata accessor for TranscriptProtoParameter(v12);
  sub_22BE179D8();
  v59 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BE18928();
  MEMORY[0x28223BE20](v15);
  sub_22BE1C17C();
  v16 = type metadata accessor for TranscriptProtoParameterSet(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v17);
  sub_22BE3D12C();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = (v45 - v22);
  sub_22BEC0478();
  if (v38 && v24 && v2 != v1)
  {
    sub_22BEBFEA0();
    v48 = v1 + v26;
    v49 = v0;
    v28 = *(v27 + 72);
    v46 = v23;
    v47 = v20;
    v45[1] = v2 + v26;
    v45[2] = v16;
    v51 = v29;
    v45[0] = v28;
    while (1)
    {
      v30 = v25;
      sub_22BEBFD70();
      v50 = v30;
      if (v30 == v51)
      {
        break;
      }

      sub_22BEBFD70();
      v31 = *v23;
      v32 = *v20;
      v58 = v31;
      v33 = *(v31 + 16);
      v34 = *(v32 + 16);
      v55 = v33;
      if (v33 != v34)
      {
LABEL_38:
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        goto LABEL_39;
      }

      if (v55 && v58 != v32)
      {
        v35 = 0;
        sub_22BE3519C();
        v52 = v32 + v36;
        v53 = v58 + v36;
        while (v35 < *(v58 + 16))
        {
          v37 = *(v59 + 72) * v35;
          sub_22BE32E2C();
          sub_22BEBFD70();
          if (v35 >= *(v32 + 16))
          {
            goto LABEL_41;
          }

          sub_22BE32E2C();
          sub_22BEBFD70();
          v38 = *v5 == *v4 && *(v5 + 8) == *(v4 + 8);
          if (!v38 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v5 + 24))
          {
            if (!*(v4 + 24))
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_22BEC02E4();
            if (v39)
            {
              goto LABEL_37;
            }
          }

          sub_22BEC075C();
          sub_22BE22868();
          sub_22BE22868();
          v40 = sub_22BE26188();
          sub_22BEBFF10(v40, v41);
          if (v38)
          {
            sub_22BE1C14C(v3 + v37);
            if (!v38)
            {
              goto LABEL_36;
            }

            sub_22BE33928(v3, &qword_27D9091B8, &qword_22C27FDB0);
          }

          else
          {
            sub_22BE22868();
            sub_22BE1C14C(v3 + v37);
            if (v42)
            {
              sub_22BE324C8();
              sub_22BEBFDC4();
LABEL_36:
              sub_22BE33928(v3, &qword_27D9091C0, &qword_22C27FDB8);
LABEL_37:
              sub_22BEC016C();
              sub_22BEBFDC4();
              sub_22BE33FCC();
              sub_22BEBFDC4();
              goto LABEL_38;
            }

            sub_22BEBFC80();
            sub_22BE29264();
            static TranscriptProtoCandidate.== infix(_:_:)();
            sub_22BE3E29C();
            sub_22BEBFDC4();
            sub_22BEBFDC4();
            sub_22BE33928(v3, &qword_27D9091B8, &qword_22C27FDB0);
            if ((v37 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          sub_22C2704B4();
          sub_22BE18CE0();
          v43 = sub_22BEBFCD4(&qword_27D9090E0);
          sub_22BE391F4(v43);
          sub_22BE464C0();
          sub_22BEBFDC4();
          sub_22BE2C254();
          sub_22BEBFDC4();
          if ((v37 & 1) == 0)
          {
            goto LABEL_38;
          }

          if (v55 == ++v35)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

LABEL_31:
      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v23 = v46;
      v20 = v47;
      v44 = sub_22C272FD4();
      sub_22BEBFDC4();
      sub_22BE38970();
      sub_22BEBFDC4();
      if (v44)
      {
        v25 = v50 + 1;
        if (v50 + 1 != v51)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    __break(1u);
  }

  else
  {
LABEL_39:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE9C600()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v42 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE336DC();
  v8 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = sub_22BE5CE4C(&qword_27D9091C0, &qword_22C27FDB8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BE22BFC();
  v44 = type metadata accessor for TranscriptProtoParameter(v14);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v15);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = *(v6 + 16);
  if (v19 == *(v4 + 16) && v19 && v6 != v4)
  {
    v39 = v0;
    v40 = v11;
    sub_22BEBFEA0();
    v21 = v6 + v20;
    v41 = *(v22 + 72);
    v38 = v12;
    while (1)
    {
      sub_22BEC0664();
      sub_22BE1B18C();
      sub_22BEBFD70();
      v23 = *v18 == *v2 && *(v18 + 1) == *(v2 + 8);
      if (!v23 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      if (v18[24])
      {
        if (!*(v2 + 24))
        {
          break;
        }
      }

      else
      {
        sub_22BEC02E4();
        if (v24)
        {
          break;
        }
      }

      v43 = v21;
      v25 = *(v12 + 48);
      sub_22BE22868();
      sub_22BE22868();
      v26 = sub_22BE26188();
      v27 = v42;
      sub_22BE1AB5C(v26, v28, v42);
      if (v23)
      {
        v29 = sub_22BE41DA8();
        sub_22BE1AB5C(v29, v30, v27);
        if (!v23)
        {
          goto LABEL_27;
        }

        v31 = sub_22BE232C8();
        sub_22BE33928(v31, v32, &qword_22C27FDB0);
        v21 = v43;
      }

      else
      {
        sub_22BE22868();
        v33 = sub_22BE41DA8();
        sub_22BE1AB5C(v33, v34, v27);
        if (v35)
        {
          sub_22BE324C8();
          sub_22BEBFDC4();
LABEL_27:
          sub_22BE33928(v1, &qword_27D9091C0, &qword_22C27FDB8);
          break;
        }

        sub_22BE29350();
        sub_22BE3C968();
        static TranscriptProtoCandidate.== infix(_:_:)();
        sub_22BE3E29C();
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        sub_22BE33928(v1, &qword_27D9091B8, &qword_22C27FDB0);
        v12 = v38;
        v21 = v43;
        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      v36 = sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BE391F4(v36);
      sub_22BE464C0();
      sub_22BEBFDC4();
      sub_22BE2C254();
      sub_22BEBFDC4();
      if (v25)
      {
        sub_22BEC0808();
        if (!v23)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    sub_22BEC016C();
    sub_22BEBFDC4();
    sub_22BE33FCC();
    sub_22BEBFDC4();
  }

LABEL_29:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9C9E8()
{
  sub_22BE19460();
  v5 = sub_22BE3FDB4();
  type metadata accessor for TranscriptProtoSpeechPackage.Token(v5);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v6);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v7);
  sub_22BE339C0();
  if (v10 && v4 && v3 != v0)
  {
    sub_22BEBFEA0();
    sub_22BE32350();
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      sub_22BEC04E8();
      v10 = v10 && v8 == v9;
      if (!v10 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      sub_22BEC0484();
      if (!v10 || v2[3] != v1[3] || v2[4] != v1[4] || v2[5] != v1[5])
      {
        break;
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v11 = sub_22BEBFFDC();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v11)
      {
        sub_22BEBFEE8();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_22BE37528();
    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_22:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9CC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v24;
  a20 = v25;
  v26 = sub_22BE39048();
  v129 = type metadata accessor for TranscriptProtoStatementID(v26);
  sub_22BE18000();
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  sub_22BEC097C(v28);
  v29 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE23AA4(v31);
  v128 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE20168(v33, v113[0]);
  v139 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v34);
  sub_22BE17A44();
  v134 = v35;
  v36 = sub_22BE5CE4C(&qword_27D909208, &unk_22C2AE560);
  sub_22BE19448(v36);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE181D0(v38, v113[0]);
  v130 = sub_22BE5CE4C(&qword_27D909210, &unk_22C27FE00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  v141 = v40;
  sub_22BE183BC();
  v132 = sub_22C272594();
  sub_22BE179D8();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  sub_22BE17A44();
  sub_22BE39F68(v44);
  v45 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v45);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1A174();
  v127 = v47;
  v48 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE2C64C();
  v50 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_22BE179D8();
  v135 = v51;
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  v142 = v53;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v54);
  sub_22BE1C17C();
  type metadata accessor for TranscriptProtoQueryResults(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v55);
  sub_22BE3D12C();
  v136 = (v56 - v57);
  sub_22BE467D8();
  MEMORY[0x28223BE20](v58);
  v60 = v113 - v59;
  sub_22BEC0478();
  if (v83 && v62 && v21 != v20)
  {
    v113[2] = v61;
    sub_22BEBFEA0();
    v64 = v21 + v63;
    v115 = v20 + v63;
    v113[3] = v42 + 32;
    v114 = (v42 + 8);
    v65 = 0;
    v67 = *(v66 + 72);
    v118 = v48;
    v120 = v50;
    v123 = v68;
    v113[1] = v64;
    v113[0] = v67;
    while (1)
    {
      sub_22BEC013C();
      sub_22BEBFD70();
      if (v65 == v123)
      {
        break;
      }

      v119 = v65;
      sub_22BEC013C();
      sub_22BEC0444(&a12);
      v69 = v136;
      sub_22BEBFD70();
      v70 = *v60;
      v71 = *(*v60 + 16);
      v131 = *v69;
      if (v71 != *(v131 + 16))
      {
LABEL_78:
        sub_22BEBFDC4();
        sub_22BE3C968();
        sub_22BEBFDC4();
        goto LABEL_79;
      }

      if (v71 && v70 != v131)
      {
        v72 = 0;
        sub_22BE3519C();
        v122 = v70 + v73;
        v121 = v131 + v73;
        v133 = v22;
        v124 = v60;
        v117 = v70;
        v116 = v74;
        while (v72 < *(v70 + 16))
        {
          sub_22BE35D1C();
          sub_22BEBFD70();
          if (v72 >= *(v131 + 16))
          {
            goto LABEL_81;
          }

          sub_22BE35D1C();
          sub_22BEC0444(&a18);
          sub_22BEBFD70();
          v75 = *(v48 + 48);
          sub_22BE22868();
          sub_22BE22868();
          v76 = v132;
          sub_22BE1AB5C(v23, 1, v132);
          if (v83)
          {
            v77 = sub_22BEC07C8();
            sub_22BE1AB5C(v77, v78, v76);
            v79 = v133;
            v60 = v124;
            if (!v83)
            {
              goto LABEL_69;
            }

            sub_22BE33928(v23, &qword_27D909128, &qword_22C294AA0);
          }

          else
          {
            v80 = v127;
            sub_22BE22868();
            v81 = sub_22BEC07C8();
            sub_22BE1AB5C(v81, v82, v76);
            v60 = v124;
            if (v83)
            {
              sub_22BE33554();
              v111(v80, v76);
LABEL_69:
              v109 = &qword_27D909130;
              v110 = &unk_22C27FD30;
              v112 = v23;
              goto LABEL_76;
            }

            sub_22BE33554();
            v84 = v126;
            v85(v126, v23 + v75, v76);
            sub_22BEBFE88();
            sub_22BEBFCD4(&unk_27D909148);
            sub_22BEC081C();
            v75 = sub_22C272FD4();
            v86 = v23;
            v87 = v80;
            v88 = *v114;
            (*v114)(v84, v76);
            v89 = v87;
            v23 = v86;
            v88(v89, v76);
            sub_22BE33928(v86, &qword_27D909128, &qword_22C294AA0);
            v79 = v133;
            if ((v75 & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          if (*v79 != *v142)
          {
            goto LABEL_77;
          }

          sub_22BEC075C();
          sub_22BE22868();
          sub_22BE22868();
          v90 = sub_22BE391E8();
          sub_22BE1AB5C(v90, v91, v139);
          if (v83)
          {
            sub_22BE1AB5C(v141 + v75, 1, v139);
            if (!v83)
            {
              goto LABEL_71;
            }

            sub_22BE33928(v141, &qword_27D909208, &unk_22C2AE560);
          }

          else
          {
            v92 = v141;
            sub_22BE22868();
            sub_22BE1AB5C(v92 + v75, 1, v139);
            if (v93)
            {
              sub_22BEBFDC4();
LABEL_71:
              v109 = &qword_27D909210;
              v110 = &unk_22C27FE00;
LABEL_72:
              v112 = v141;
LABEL_76:
              sub_22BE33928(v112, v109, v110);
LABEL_77:
              sub_22BEBFDC4();
              sub_22BE2565C();
              sub_22BEBFDC4();
              goto LABEL_78;
            }

            v94 = v134;
            sub_22BEBFC80();
            if (*(v137 + 9))
            {
              if ((*(v94 + 9) & 1) == 0)
              {
                goto LABEL_67;
              }
            }

            else
            {
              if (*(v94 + 9))
              {
                goto LABEL_67;
              }

              v95 = *v137;
              v96 = *v134;
              if (v137[1])
              {
                if (v95)
                {
                  if ((v134[1] & 1) == 0 || !v96)
                  {
                    goto LABEL_67;
                  }
                }

                else if ((v134[1] & 1) == 0 || v96)
                {
                  goto LABEL_67;
                }
              }

              else if ((v134[1] & 1) != 0 || v95 != v96)
              {
LABEL_67:
                sub_22BEBFDC4();
                sub_22BEBFDC4();
                v109 = &qword_27D909208;
                v110 = &unk_22C2AE560;
                goto LABEL_72;
              }
            }

            sub_22BEC0A84();
            sub_22BE18CE0();
            sub_22BEBFCD4(&qword_27D9090E0);
            v75 = sub_22C272FD4();
            sub_22BEBFDC4();
            sub_22BE33FD8();
            sub_22BEBFDC4();
            sub_22BE33928(v141, &qword_27D909208, &unk_22C2AE560);
            if ((v75 & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          sub_22BEC075C();
          sub_22BE22868();
          sub_22BE22868();
          v97 = sub_22BE26188();
          sub_22BEBFF10(v97, v98);
          if (v83)
          {
            sub_22BE1C14C(v140 + v75);
            if (!v83)
            {
              goto LABEL_74;
            }

            v99 = sub_22BEC0964();
            sub_22BE33928(v99, v100, &unk_22C2AE4A0);
          }

          else
          {
            v101 = v140;
            sub_22BE22868();
            sub_22BE1C14C(v101 + v75);
            if (v102)
            {
              sub_22BE184EC();
              sub_22BEBFDC4();
LABEL_74:
              v109 = &qword_27D909100;
              v110 = &unk_22C27FD00;
LABEL_75:
              v112 = v140;
              goto LABEL_76;
            }

            sub_22BE1BE4C();
            v75 = v125;
            sub_22BEBFC80();
            sub_22BEC0750();
            if (!v83)
            {
              goto LABEL_66;
            }

            v103 = *(v138 + 16);
            v104 = *(v75 + 16);
            if (v103)
            {
              if (!v104 || (*(v138 + 8) == *(v75 + 8) ? (v105 = v103 == v104) : (v105 = 0), !v105 && (sub_22C274014() & 1) == 0))
              {
LABEL_66:
                sub_22BE33BF4();
                sub_22BEBFDC4();
                sub_22BEBFDC4();
                v109 = &qword_27D9090F8;
                v110 = &unk_22C2AE4A0;
                goto LABEL_75;
              }
            }

            else if (v104)
            {
              goto LABEL_66;
            }

            sub_22C2704B4();
            sub_22BE18CE0();
            sub_22BEBFCD4(&qword_27D9090E0);
            sub_22C272FD4();
            sub_22BE1A5A0();
            sub_22BEBFDC4();
            v60 = v124;
            sub_22BEBFDC4();
            v106 = sub_22BE200D4();
            sub_22BE33928(v106, v107, &unk_22C2AE4A0);
            if ((v75 & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          sub_22C2704B4();
          sub_22BE18CE0();
          sub_22BEBFCD4(&qword_27D9090E0);
          sub_22C272FD4();
          sub_22BE3E29C();
          v22 = v133;
          sub_22BEBFDC4();
          sub_22BE2C254();
          sub_22BEBFDC4();
          v48 = v118;
          v70 = v117;
          if ((v75 & 1) == 0)
          {
            goto LABEL_78;
          }

          if (v116 == ++v72)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
        break;
      }

LABEL_62:
      sub_22BEC0A84();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v108 = sub_22C272FD4();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      if (v108)
      {
        v65 = v119 + 1;
        if (v119 + 1 != v123)
        {
          continue;
        }
      }

      goto LABEL_79;
    }

    __break(1u);
  }

  else
  {
LABEL_79:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE9D9B4()
{
  sub_22BE19460();
  v4 = sub_22BE39048();
  type metadata accessor for TranscriptProtoShimParameterEnum(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20310(v9, v20);
  sub_22BE5CE4C(&qword_27D909220, &qword_22C27FE10);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoShimParameter(v11);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v12);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v13);
  sub_22BE18024();
  if (!v17 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0();
  sub_22BE25BF4(v14);
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    sub_22BE3A1F0();
    sub_22BE22868();
    sub_22BEC02A4();
    sub_22BE19678(v2);
    if (!v17)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v17)
    {
      goto LABEL_19;
    }

    v15 = sub_22BE1B328();
    sub_22BE33928(v15, v16, &unk_22C2CC930);
LABEL_13:
    sub_22BE3CED8();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v0 = sub_22BEC02C4();
    sub_22BEBFDC4();
    sub_22BE392D4();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BE27220();
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE200D4();
  sub_22BE431D8();
  sub_22BE19678(v2 + v0);
  if (!v17)
  {
    sub_22BE29350();
    sub_22BEC0610();
    static TranscriptProtoShimParameterEnum.== infix(_:_:)();
    v19 = v18;
    sub_22BEBFDC4();
    sub_22BE260B8();
    sub_22BEBFDC4();
    sub_22BE33928(v2, &qword_27D909218, &unk_22C2CC930);
    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  sub_22BEBFDC4();
LABEL_19:
  sub_22BE33928(v2, &qword_27D909220, &qword_22C27FE10);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9DD00()
{
  sub_22BE19460();
  v4 = sub_22BE39048();
  type metadata accessor for TranscriptProtoUitype(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20310(v9, v20);
  sub_22BE5CE4C(&qword_27D9091E8, &unk_22C27FDE0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoUIType(v11);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v12);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v13);
  sub_22BE18024();
  if (!v17 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0();
  sub_22BE25BF4(v14);
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    sub_22BE3A1F0();
    sub_22BE22868();
    sub_22BEC02A4();
    sub_22BE19678(v2);
    if (!v17)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v17)
    {
      goto LABEL_19;
    }

    v15 = sub_22BE1B328();
    sub_22BE33928(v15, v16, &qword_22C27FDD8);
LABEL_13:
    sub_22BE3CED8();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v0 = sub_22BEC02C4();
    sub_22BEBFDC4();
    sub_22BE392D4();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BE27220();
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE200D4();
  sub_22BE431D8();
  sub_22BE19678(v2 + v0);
  if (!v17)
  {
    sub_22BE29350();
    sub_22BEC0610();
    static TranscriptProtoUitype.== infix(_:_:)();
    v19 = v18;
    sub_22BEBFDC4();
    sub_22BE260B8();
    sub_22BEBFDC4();
    sub_22BE33928(v2, &qword_27D9091E0, &qword_22C27FDD8);
    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  sub_22BEBFDC4();
LABEL_19:
  sub_22BE33928(v2, &qword_27D9091E8, &unk_22C27FDE0);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9E04C()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  v52 = v7;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v8);
  sub_22BE2BB70(v9, v10, v11, v12, v13, v14, v15, v16, v46);
  sub_22BE5CE4C(&qword_27D9091C8, &qword_22C27FDC0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE2C638(v18, v47);
  v19 = type metadata accessor for TranscriptProtoLabel(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  sub_22BE38A28(v21);
  v22 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE25CD0();
  sub_22BE5CE4C(&qword_27D9091D8, &qword_22C27FDD0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE2C64C();
  type metadata accessor for TranscriptProtoUILabel(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v25);
  sub_22BE3D12C();
  sub_22BE239A8();
  MEMORY[0x28223BE20](v26);
  sub_22BE36504();
  v27 = *(v5 + 16);
  if (v27 == *(v3 + 16) && v27 && v5 != v3)
  {
    sub_22BEBFEA0();
    v29 = v5 + v28;
    v30 = v3 + v28;
    v50 = v1;
    v51 = *(v31 + 72);
    v48 = v19;
    v49 = v0;
    while (1)
    {
      sub_22BE1B5E0();
      sub_22BEBFD70();
      if (!v27)
      {
        break;
      }

      sub_22BEBFD70();
      sub_22BE22868();
      sub_22BE22868();
      sub_22BE1AB5C(v1, 1, v19);
      if (v38)
      {
        v32 = sub_22BEC07C8();
        sub_22BE1AB5C(v32, v33, v19);
        if (!v38)
        {
          goto LABEL_29;
        }

        v34 = v1;
        v35 = v0;
        sub_22BE33928(v34, &qword_27D9091D0, &qword_22C27FDC8);
      }

      else
      {
        sub_22BE22868();
        v36 = sub_22BEC07C8();
        sub_22BE1AB5C(v36, v37, v19);
        if (v38)
        {
          sub_22BEBFDC4();
LABEL_29:
          sub_22BE33928(v1, &qword_27D9091D8, &qword_22C27FDD0);
LABEL_31:
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          goto LABEL_32;
        }

        sub_22BEBFC80();
        sub_22BEBFD70();
        sub_22BEBFD70();
        sub_22BEBFC80();
        sub_22BEBFC80();
        v39 = *v53 == *v52 && v53[1] == v52[1];
        if (!v39 && (sub_22C274014() & 1) == 0 || ((sub_22BEC08DC(), v38) ? (v42 = v40 == v41) : (v42 = 0), !v42 && (sub_22C274014() & 1) == 0))
        {
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          sub_22BEBFDC4();
          sub_22BE33928(v1, &qword_27D9091D0, &qword_22C27FDC8);
          goto LABEL_31;
        }

        sub_22C2704B4();
        sub_22BE18CE0();
        sub_22BEBFCD4(&qword_27D9090E0);
        v43 = sub_22C272FD4();
        sub_22BEBFDC4();
        sub_22BE37490();
        sub_22BEBFDC4();
        sub_22BEBFDC4();
        v44 = v1;
        v35 = v49;
        sub_22BEBFDC4();
        sub_22BE33928(v44, &qword_27D9091D0, &qword_22C27FDC8);
        v19 = v48;
        if ((v43 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v45 = sub_22C272FD4();
      sub_22BEBFDC4();
      sub_22BEBFDC4();
      if (v45)
      {
        v30 += v51;
        v29 += v51;
        v38 = v27-- == 1;
        v0 = v35;
        v1 = v50;
        if (!v38)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    sub_22BE1B1B8();
    sub_22BE1AABC();
  }
}

void sub_22BE9E6B4()
{
  sub_22BE19460();
  v4 = sub_22BE39048();
  type metadata accessor for TranscriptProtoVisualOutputType(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D9091F8, &qword_22C2AE6C0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20310(v9, v20);
  sub_22BE5CE4C(&qword_27D909200, &unk_22C27FDF0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoVisualOutput(v11);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v12);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v13);
  sub_22BE18024();
  if (!v17 || !v3 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0();
  sub_22BE25BF4(v14);
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    sub_22BE3A1F0();
    sub_22BE22868();
    sub_22BEC02A4();
    sub_22BE19678(v2);
    if (!v17)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v17)
    {
      goto LABEL_19;
    }

    v15 = sub_22BE1B328();
    sub_22BE33928(v15, v16, &qword_22C2AE6C0);
LABEL_13:
    sub_22BE3CED8();
    sub_22BE18CE0();
    sub_22BEBFCD4(&qword_27D9090E0);
    v0 = sub_22BEC02C4();
    sub_22BEBFDC4();
    sub_22BE392D4();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BE27220();
      if (!v17)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE200D4();
  sub_22BE431D8();
  sub_22BE19678(v2 + v0);
  if (!v17)
  {
    sub_22BE29350();
    sub_22BEC0610();
    static TranscriptProtoVisualOutputType.== infix(_:_:)();
    v19 = v18;
    sub_22BEBFDC4();
    sub_22BE260B8();
    sub_22BEBFDC4();
    sub_22BE33928(v2, &qword_27D9091F8, &qword_22C2AE6C0);
    if ((v19 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  sub_22BEBFDC4();
LABEL_19:
  sub_22BE33928(v2, &qword_27D909200, &unk_22C27FDF0);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9EA48()
{
  sub_22BE19460();
  v3 = sub_22BE3FDB4();
  type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(v3);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v4);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v5);
  sub_22BE339C0();
  if (v6 && v2 && v1 != v0)
  {
    sub_22BEBFEA0();
    sub_22BE32350();
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      sub_22BE9C9E8();
      if ((v7 & 1) == 0)
      {
        break;
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      v8 = sub_22BEBFFDC();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v8)
      {
        sub_22BEBFEE8();
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    sub_22BEC00AC();
    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_13:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9EBEC()
{
  sub_22BE19460();
  sub_22BE39048();
  v28 = sub_22C272594();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE20168(v9, v23);
  sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE22BFC();
  type metadata accessor for TranscriptProtoVariableSetter(v11);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v12);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v13);
  v14 = *(v1 + 16);
  if (v14 != *(v0 + 16) || !v14 || v1 == v0)
  {
    goto LABEL_21;
  }

  sub_22BEBFEA0();
  v26 = v2;
  while (1)
  {
    sub_22BEC0664();
    sub_22BE1B18C();
    sub_22BEBFD70();
    sub_22BEC075C();
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE19678(v2);
    if (!v15)
    {
      break;
    }

    sub_22BE19678(v2 + v0);
    if (!v15)
    {
      goto LABEL_19;
    }

    sub_22BE33928(v2, &qword_27D909128, &qword_22C294AA0);
LABEL_12:
    sub_22BEA4E60();
    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_22BEC0A54();
    sub_22BE18CE0();
    v21 = sub_22BEBFCD4(&qword_27D9090E0);
    v0 = sub_22BE391F4(v21);
    sub_22BEBFDC4();
    sub_22BE2C254();
    sub_22BEBFDC4();
    if (v0)
    {
      sub_22BEC0808();
      v2 = v26;
      if (!v15)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  sub_22BE22868();
  sub_22BE19678(v2 + v0);
  if (!v15)
  {
    sub_22BEC03BC();
    v16(v25, v2 + v0, v28);
    sub_22BEBFE88();
    sub_22BEBFCD4(&unk_27D909148);
    sub_22BE29264();
    v24 = sub_22C272FD4();
    v17 = *(v4 + 8);
    v18 = sub_22BE25EFC();
    v17(v18);
    v19 = sub_22BE19454();
    v17(v19);
    sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  sub_22BEC061C();
  v22(v27, v28);
LABEL_19:
  sub_22BE33928(v2, &qword_27D909130, &unk_22C27FD30);
LABEL_20:
  sub_22BEBFDC4();
  sub_22BE33FCC();
  sub_22BEBFDC4();
LABEL_21:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

void sub_22BE9F068()
{
  sub_22BE19460();
  sub_22BE3635C();
  v5 = sub_22C26E684();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  sub_22BE252B8(v9);
  v10 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE20310(v12, v39);
  v44 = sub_22BE5CE4C(&qword_27D9092B8, &qword_22C27FEA0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v14);
  sub_22BE3D12C();
  sub_22BEC0338();
  MEMORY[0x28223BE20](v15);
  sub_22BEC0024();
  v16 = *(v3 + 16);
  if (v16 == *(v4 + 16) && v16 && v3 != v4)
  {
    sub_22BEBFEA0();
    v18 = v3 + v17;
    v19 = v4 + v17;
    v41 = *(v20 + 72);
    v42 = v5;
    v21 = &qword_27D907240;
    while (1)
    {
      sub_22BEBFD70();
      if (!v16)
      {
        break;
      }

      sub_22BEBFD70();
      sub_22BE3CC40();
      v24 = v24 && v22 == v23;
      if (!v24 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_31;
      }

      v25 = *(v2 + 24);
      v26 = *(v1 + 24);
      if (v25)
      {
        if (!v26)
        {
          goto LABEL_31;
        }

        v27 = *(v2 + 16) == *(v1 + 16) && v25 == v26;
        if (!v27 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if (v26)
      {
        goto LABEL_31;
      }

      v46 = v16;
      v28 = v21;
      v29 = *(v44 + 48);
      sub_22BE22868();
      sub_22BE22868();
      sub_22BE181B0(v0);
      if (v24)
      {
        sub_22BE181B0(v0 + v29);
        if (!v24)
        {
          goto LABEL_30;
        }

        v30 = sub_22BE354DC();
        sub_22BE33928(v30, v31, &unk_22C2B5B80);
        sub_22BEBFDC4();
        sub_22BE33560();
        sub_22BEBFDC4();
      }

      else
      {
        sub_22BE22868();
        sub_22BE181B0(v0 + v29);
        if (v32)
        {
          sub_22BEC03BC();
          v38(v45, v5);
LABEL_30:
          sub_22BE33928(v0, &qword_27D9092B8, &qword_22C27FEA0);
LABEL_31:
          sub_22BEBFDC4();
          sub_22BE39EAC();
          sub_22BEBFDC4();
          goto LABEL_32;
        }

        (*(v7 + 32))(v43, v0 + v29, v5);
        sub_22BE17BAC();
        sub_22BEBFCD4(&qword_27D9071B0);
        sub_22BE232C8();
        v40 = sub_22C272FD4();
        v33 = *(v7 + 8);
        v34 = sub_22BE1804C();
        v33(v34);
        v35 = sub_22BE431C0();
        v33(v35);
        v36 = sub_22BE1AB74();
        sub_22BE33928(v36, v37, &unk_22C2B5B80);
        sub_22BEBFDC4();
        sub_22BE1AEE4();
        v21 = v28;
        sub_22BEBFDC4();
        if ((v40 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v5 = v42;
      v19 += v41;
      v18 += v41;
      v16 = v46 - 1;
      if (v46 == 1)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    sub_22BE1AABC();
  }
}

void sub_22BE9F4F8()
{
  sub_22BE19460();
  v5 = sub_22BE3FDB4();
  type metadata accessor for ContextProtoSampleInvocation(v5);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v6);
  sub_22BE3D12C();
  sub_22BE232D4();
  MEMORY[0x28223BE20](v7);
  sub_22BE339C0();
  if (v10 && v4 && v3 != v0)
  {
    sub_22BEBFEA0();
    sub_22BE32350();
    while (1)
    {
      sub_22BE1B328();
      sub_22BEBFD70();
      sub_22BE38970();
      sub_22BEBFD70();
      sub_22BEC04E8();
      v10 = v10 && v8 == v9;
      if (!v10 && (sub_22C274014() & 1) == 0 || *(v2 + 16) != *(v1 + 16))
      {
        break;
      }

      sub_22C2704B4();
      sub_22BE18CE0();
      sub_22BEBFCD4(&qword_27D9090E0);
      sub_22BEBFFDC();
      sub_22BE3F358();
      sub_22BEBFDC4();
      sub_22BE354DC();
      sub_22BEBFDC4();
      if (v0)
      {
        sub_22BEBFEE8();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_22BEC00F4();
    sub_22BEBFDC4();
    sub_22BE1AB74();
    sub_22BEBFDC4();
  }

LABEL_18:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t sub_22BE9F6A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_22BE9F710()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v43 = sub_22C26E684();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v41 = v8;
  v45 = sub_22BE5CE4C(&qword_27D9092D0, &off_22C27FEB8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE234F4();
  type metadata accessor for AnswerSynthesisExpression.ExtractionCandidate(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v10);
  sub_22BE3D12C();
  v42 = (v11 - v12);
  sub_22BE467D8();
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE239A8();
  MEMORY[0x28223BE20](v15);
  sub_22BEC0578();
  v16 = *(v4 + 16);
  if (v16 != *(v2 + 16) || !v16 || v4 == v2)
  {
    goto LABEL_24;
  }

  sub_22BEBFEA0();
  v18 = v4 + v17;
  v19 = v2 + v17;
  v38 = v0;
  v39 = (v6 + 8);
  v40 = v20;
  v22 = *(v21 + 72);
  while (1)
  {
    sub_22BEBFD70();
    sub_22BEBFD70();
    v23 = (v0 + *(v45 + 48));
    sub_22BE3AF28();
    sub_22BEBFD70();
    sub_22BE376A8();
    sub_22BEBFD70();
    sub_22BE1AEE4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_22BEC0030();
    sub_22BEBFD70();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BEC061C();
      v37(v40, v43);
      goto LABEL_22;
    }

    v33 = sub_22BE39EAC();
    v34(v33);
    v44 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
    v35 = *v39;
    v0 = v38;
    (*v39)(v41, v43);
    v36 = sub_22BE31038();
    v35(v36);
    sub_22BE27B5C();
    if ((v44 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_18:
    sub_22BEC0274();
    sub_22BEBFDC4();
    sub_22BE200D4();
    sub_22BEBFDC4();
    v19 += v22;
    v18 += v22;
    if (!--v16)
    {
      goto LABEL_24;
    }
  }

  sub_22BEC0030();
  sub_22BEBFD70();
  v25 = *v42;
  v24 = v42[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v23;
    v27 = v23[1];
    if (v25 == v26 && v24 == v27)
    {
    }

    else
    {
      v29 = sub_22BE2C254();
      v32 = sub_22BE2BC78(v29, v30, v31);

      if ((v32 & 1) == 0)
      {
        sub_22BE27B5C();
        goto LABEL_23;
      }
    }

    sub_22BE27B5C();
    goto LABEL_18;
  }

LABEL_22:
  sub_22BE33928(v0, &qword_27D9092D0, &off_22C27FEB8);
LABEL_23:
  sub_22BEC0274();
  sub_22BEBFDC4();
  sub_22BE200D4();
  sub_22BEBFDC4();
LABEL_24:
  sub_22BE1AABC();
}

uint64_t sub_22BE9FB10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22BE9FBB0()
{
  sub_22BE19460();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v1 + 64);
    v4 = (v0 + 64);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      v10 = *v3;
      v11 = *(v4 - 4) == *(v3 - 4) && *(v4 - 3) == *(v3 - 3);
      if (!v11 && (sub_22C274014() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v8)
        {
          break;
        }

        if (v5 == v9 && v6 == v8)
        {
          if (v7 != v10)
          {
            break;
          }

          goto LABEL_22;
        }

        v13 = sub_22BE18040();
        if ((sub_22BE2BC78(v13, v14, v9) & 1) == 0)
        {
          break;
        }
      }

      else if (v8)
      {
        break;
      }

      if ((v7 ^ v10))
      {
        break;
      }

LABEL_22:
      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  sub_22BE1AABC();
}

void sub_22BE9FD3C()
{
  sub_22BE19460();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v7);
  sub_22BE3D12C();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = *(v4 + 16);
  if (v14 == *(v2 + 16) && v14 && v4 != v2)
  {
    sub_22BEBFEA0();
    v16 = v4 + v15;
    v17 = v2 + v15;
    v19 = *(v18 + 72);
    while (1)
    {
      sub_22BEBFD70();
      sub_22BE38FD8();
      sub_22BEBFD70();
      sub_22BE1AB1C();
      if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        break;
      }

      v20 = v22(&v13[*(v6 + 20)], v10 + *(v6 + 20));
      sub_22BE200D4();
      sub_22BEBFDC4();
      sub_22BE291B0();
      sub_22BEBFDC4();
      if (v20)
      {
        v17 += v19;
        v16 += v19;
        if (--v14)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    sub_22BE200D4();
    sub_22BEBFDC4();
    sub_22BE291B0();
    sub_22BEBFDC4();
  }

LABEL_11:
  sub_22BE1AABC();
}

void sub_22BE9FFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v3 += 8;
      v4 += 8;

      sub_22BE18040();
      sub_22BEA0078();
      v6 = v5;

      if ((v6 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

void sub_22BEA0078()
{
  sub_22BE19460();
  sub_22BE3635C();
  v56 = sub_22C26E614();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v50 = v8;
  v9 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  sub_22BE3BF90(v11);
  v52 = sub_22BE5CE4C(&qword_27D909028, &qword_22C27FC68);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E64();
  v55 = type metadata accessor for Candidate(0);
  sub_22BE1A1D0();
  MEMORY[0x28223BE20](v13);
  sub_22BE23C48();
  MEMORY[0x28223BE20](v14);
  sub_22BEC0578();
  v15 = *(v3 + 16);
  if (v15 != *(v4 + 16) || !v15 || v3 == v4)
  {
    goto LABEL_55;
  }

  sub_22BEBFEA0();
  v17 = v3 + v16;
  v18 = v4 + v16;
  v46 = (v6 + 32);
  v47 = (v6 + 8);
  v49 = *(v19 + 72);
  v20 = v55;
  v51 = v2;
  while (1)
  {
    sub_22BE3CC34();
    sub_22BEBFD70();
    sub_22BEBFD70();
    sub_22BE3AF28();
    if ((sub_22C272844() & 1) == 0)
    {
LABEL_52:
      sub_22BE1C288();
      sub_22BEBFDC4();
      sub_22BE200D4();
      sub_22BEBFDC4();
      goto LABEL_55;
    }

    v21 = 0xEB00000000797265;
    switch(*(v1 + *(v20 + 20)))
    {
      case 1:
        sub_22BEC0950();
        v21 = 0xEE007972616C7562;
        break;
      case 2:
        v21 = 0x800000022C2D29F0;
        break;
      case 3:
        sub_22BEC0904();
        v22 = 5391173;
        goto LABEL_13;
      case 4:
        sub_22BEC093C();
        v21 = 0xEF79727473696765;
        break;
      case 5:
        sub_22BEC08C8();
        v22 = 6649196;
LABEL_13:
        v21 = v22 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 6:
        v21 = 0xEA00000000007470;
        sub_22BEC08B4();
        break;
      case 7:
        sub_22BEC08F0();
        v21 = 0xEA00000000006863;
        break;
      default:
        break;
    }

    v53 = v17;
    sub_22BEC08A0();
    v25 = 0xEB00000000797265;
    switch(v26)
    {
      case 1:
        sub_22BE3C778();
        v25 = 0xEE007972616C7562;
        break;
      case 2:
        v24 = 0xD000000000000014;
        v25 = 0x800000022C2D29F0;
        break;
      case 3:
        sub_22BEC0878();
        v27 = 5391173;
        goto LABEL_22;
      case 4:
        sub_22BEC088C();
        v25 = 0xEF79727473696765;
        break;
      case 5:
        sub_22BEC083C();
        v27 = 6649196;
LABEL_22:
        v25 = v27 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 6:
        v25 = 0xEA00000000007470;
        sub_22BEC0828();
        break;
      case 7:
        sub_22BE464AC();
        v25 = 0xEA00000000006863;
        break;
      default:
        break;
    }

    v28 = v23 == v24 && v21 == v25;
    if (v28)
    {
    }

    else
    {
      v29 = sub_22BE2BC78(v23, v21, v24);

      if ((v29 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v30 = *(v20 + 24);
    v31 = *(v1 + v30);
    v32 = *(v1 + v30 + 8);
    v33 = (v2 + v30);
    v34 = *v33;
    v35 = *(v33 + 8);
    if (v32 == 1)
    {
      v36 = v54;
      if (v31)
      {
        if (!v34)
        {
          v35 = 0;
        }

        if ((v35 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v34)
        {
          v35 = 0;
        }

        if ((v35 & 1) == 0)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      sub_22BEC02E4();
      v36 = v54;
      if (v37)
      {
        goto LABEL_52;
      }
    }

    if ((_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      goto LABEL_52;
    }

    v38 = *(v52 + 48);
    sub_22BEC0628();
    sub_22BE22868();
    sub_22BEC0628();
    sub_22BE22868();
    sub_22BE19678(v0);
    if (!v28)
    {
      break;
    }

    sub_22BE1C288();
    sub_22BEBFDC4();
    sub_22BE3C968();
    sub_22BEBFDC4();
    sub_22BE19678(v0 + v38);
    if (!v28)
    {
      goto LABEL_54;
    }

    sub_22BE33928(v0, &qword_27D908FF8, &qword_22C27FC50);
    v20 = v55;
LABEL_50:
    v18 += v49;
    v17 = v53 + v49;
    --v15;
    v2 = v51;
    if (!v15)
    {
      goto LABEL_55;
    }
  }

  sub_22BEC0628();
  sub_22BE22868();
  sub_22BE19678(v0 + v38);
  if (!v39)
  {
    (*v46)(v50, v0 + v38, v56);
    sub_22BE251C4();
    sub_22BEBFCD4(&unk_27D909030);
    sub_22BE38970();
    v48 = sub_22C272FD4();
    v40 = v0;
    v41 = v36;
    v42 = *v47;
    v43 = sub_22BE1804C();
    v42(v43);
    sub_22BEBFDC4();
    sub_22BE200E0();
    sub_22BEBFDC4();
    v44 = v41;
    v0 = v40;
    v20 = v55;
    (v42)(v44, v56);
    sub_22BE33928(v0, &qword_27D908FF8, &qword_22C27FC50);
    if ((v48 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

  sub_22BE1C288();
  sub_22BEBFDC4();
  sub_22BE39EAC();
  sub_22BEBFDC4();
  sub_22BEC03BC();
  v45(v36, v56);
LABEL_54:
  sub_22BE33928(v0, &qword_27D909028, &qword_22C27FC68);
LABEL_55:
  sub_22BE1AABC();
}