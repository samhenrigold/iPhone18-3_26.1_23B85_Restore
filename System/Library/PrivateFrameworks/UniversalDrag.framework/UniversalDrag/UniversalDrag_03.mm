unint64_t sub_2706C04BC()
{
  result = qword_28081D7A8;
  if (!qword_28081D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D7A8);
  }

  return result;
}

unint64_t sub_2706C0510()
{
  result = qword_28081D7B0;
  if (!qword_28081D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D7B0);
  }

  return result;
}

unint64_t sub_2706C0564()
{
  result = qword_28081D7B8;
  if (!qword_28081D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D7B8);
  }

  return result;
}

unint64_t sub_2706C05B8()
{
  result = qword_28081D858;
  if (!qword_28081D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D858);
  }

  return result;
}

unint64_t sub_2706C060C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D620, &qword_2706EB9A0);
    OUTLINED_FUNCTION_58_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2706C0670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D278, &qword_2706EBB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2706C06E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_19_4(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28081D5E0, &qword_2706EB980);
    sub_2706BF718(v4);
    OUTLINED_FUNCTION_58_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2706C0774()
{
  result = qword_28081D898;
  if (!qword_28081D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D898);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasteboardAcquisitionError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PasteboardAcquisitionError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x2706C091CLL);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2706C0A28(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2706C0AC4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_2706C0B10(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706C0BD8);
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
          result = OUTLINED_FUNCTION_46(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PasteboardRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706C0D20);
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

_BYTE *sub_2706C0D58(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706C0E20);
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
          result = OUTLINED_FUNCTION_46(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2706C0E5C()
{
  result = qword_28081D8B8;
  if (!qword_28081D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8B8);
  }

  return result;
}

unint64_t sub_2706C0EB4()
{
  result = qword_28081D8C0;
  if (!qword_28081D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8C0);
  }

  return result;
}

unint64_t sub_2706C0F0C()
{
  result = qword_28081D8C8;
  if (!qword_28081D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8C8);
  }

  return result;
}

unint64_t sub_2706C0F64()
{
  result = qword_28081D8D0;
  if (!qword_28081D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8D0);
  }

  return result;
}

unint64_t sub_2706C0FBC()
{
  result = qword_28081D8D8;
  if (!qword_28081D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8D8);
  }

  return result;
}

unint64_t sub_2706C1014()
{
  result = qword_28081D8E0;
  if (!qword_28081D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8E0);
  }

  return result;
}

unint64_t sub_2706C106C()
{
  result = qword_28081D8E8;
  if (!qword_28081D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8E8);
  }

  return result;
}

unint64_t sub_2706C10C4()
{
  result = qword_28081D8F0;
  if (!qword_28081D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8F0);
  }

  return result;
}

unint64_t sub_2706C111C()
{
  result = qword_28081D8F8;
  if (!qword_28081D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D8F8);
  }

  return result;
}

unint64_t sub_2706C1174()
{
  result = qword_28081D900;
  if (!qword_28081D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D900);
  }

  return result;
}

unint64_t sub_2706C11CC()
{
  result = qword_28081D908;
  if (!qword_28081D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D908);
  }

  return result;
}

unint64_t sub_2706C1224()
{
  result = qword_28081D910;
  if (!qword_28081D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D910);
  }

  return result;
}

unint64_t sub_2706C127C()
{
  result = qword_28081D918;
  if (!qword_28081D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D918);
  }

  return result;
}

unint64_t sub_2706C12D4()
{
  result = qword_28081D920;
  if (!qword_28081D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D920);
  }

  return result;
}

unint64_t sub_2706C132C()
{
  result = qword_28081D928;
  if (!qword_28081D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D928);
  }

  return result;
}

unint64_t sub_2706C1384()
{
  result = qword_28081D930;
  if (!qword_28081D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D930);
  }

  return result;
}

unint64_t sub_2706C13DC()
{
  result = qword_28081D938;
  if (!qword_28081D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D938);
  }

  return result;
}

unint64_t sub_2706C1434()
{
  result = qword_28081D940;
  if (!qword_28081D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D940);
  }

  return result;
}

unint64_t sub_2706C148C()
{
  result = qword_28081D948;
  if (!qword_28081D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D948);
  }

  return result;
}

unint64_t sub_2706C14E4()
{
  result = qword_28081D950;
  if (!qword_28081D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D950);
  }

  return result;
}

unint64_t sub_2706C153C()
{
  result = qword_28081D958;
  if (!qword_28081D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D958);
  }

  return result;
}

unint64_t sub_2706C1594()
{
  result = qword_28081D960;
  if (!qword_28081D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D960);
  }

  return result;
}

unint64_t sub_2706C15EC()
{
  result = qword_28081D968;
  if (!qword_28081D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D968);
  }

  return result;
}

unint64_t sub_2706C1644()
{
  result = qword_28081D970;
  if (!qword_28081D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D970);
  }

  return result;
}

unint64_t sub_2706C169C()
{
  result = qword_28081D978;
  if (!qword_28081D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D978);
  }

  return result;
}

unint64_t sub_2706C16F4()
{
  result = qword_28081D980;
  if (!qword_28081D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D980);
  }

  return result;
}

unint64_t sub_2706C174C()
{
  result = qword_28081D988;
  if (!qword_28081D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D988);
  }

  return result;
}

unint64_t sub_2706C17A4()
{
  result = qword_28081D990;
  if (!qword_28081D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D990);
  }

  return result;
}

unint64_t sub_2706C17FC()
{
  result = qword_28081D998;
  if (!qword_28081D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D998);
  }

  return result;
}

unint64_t sub_2706C1854()
{
  result = qword_28081D9A0;
  if (!qword_28081D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9A0);
  }

  return result;
}

unint64_t sub_2706C18AC()
{
  result = qword_28081D9A8;
  if (!qword_28081D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9A8);
  }

  return result;
}

unint64_t sub_2706C1904()
{
  result = qword_28081D9B0;
  if (!qword_28081D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9B0);
  }

  return result;
}

unint64_t sub_2706C195C()
{
  result = qword_28081D9B8;
  if (!qword_28081D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9B8);
  }

  return result;
}

unint64_t sub_2706C19B4()
{
  result = qword_28081D9C0;
  if (!qword_28081D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9C0);
  }

  return result;
}

unint64_t sub_2706C1A0C()
{
  result = qword_28081D9C8;
  if (!qword_28081D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9C8);
  }

  return result;
}

unint64_t sub_2706C1A64()
{
  result = qword_28081D9D0;
  if (!qword_28081D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9D0);
  }

  return result;
}

unint64_t sub_2706C1ABC()
{
  result = qword_28081D9D8;
  if (!qword_28081D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9D8);
  }

  return result;
}

unint64_t sub_2706C1B14()
{
  result = qword_28081D9E0;
  if (!qword_28081D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9E0);
  }

  return result;
}

unint64_t sub_2706C1B6C()
{
  result = qword_28081D9E8;
  if (!qword_28081D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9E8);
  }

  return result;
}

unint64_t sub_2706C1BC4()
{
  result = qword_28081D9F0;
  if (!qword_28081D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9F0);
  }

  return result;
}

unint64_t sub_2706C1C1C()
{
  result = qword_28081D9F8;
  if (!qword_28081D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081D9F8);
  }

  return result;
}

unint64_t sub_2706C1C74()
{
  result = qword_28081DA00;
  if (!qword_28081DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA00);
  }

  return result;
}

unint64_t sub_2706C1CCC()
{
  result = qword_28081DA08;
  if (!qword_28081DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA08);
  }

  return result;
}

unint64_t sub_2706C1D24()
{
  result = qword_28081DA10;
  if (!qword_28081DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA10);
  }

  return result;
}

unint64_t sub_2706C1D7C()
{
  result = qword_28081DA18;
  if (!qword_28081DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA18);
  }

  return result;
}

unint64_t sub_2706C1DD4()
{
  result = qword_28081DA20;
  if (!qword_28081DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA20);
  }

  return result;
}

unint64_t sub_2706C1E2C()
{
  result = qword_28081DA28;
  if (!qword_28081DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA28);
  }

  return result;
}

unint64_t sub_2706C1E84()
{
  result = qword_28081DA30;
  if (!qword_28081DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA30);
  }

  return result;
}

unint64_t sub_2706C1EDC()
{
  result = qword_28081DA38;
  if (!qword_28081DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA38);
  }

  return result;
}

unint64_t sub_2706C1F34()
{
  result = qword_28081DA40;
  if (!qword_28081DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA40);
  }

  return result;
}

unint64_t sub_2706C1F8C()
{
  result = qword_28081DA48;
  if (!qword_28081DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA48);
  }

  return result;
}

unint64_t sub_2706C1FE4()
{
  result = qword_28081DA50;
  if (!qword_28081DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA50);
  }

  return result;
}

unint64_t sub_2706C203C()
{
  result = qword_28081DA58;
  if (!qword_28081DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA58);
  }

  return result;
}

unint64_t sub_2706C2094()
{
  result = qword_28081DA60;
  if (!qword_28081DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA60);
  }

  return result;
}

unint64_t sub_2706C20EC()
{
  result = qword_28081DA68;
  if (!qword_28081DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA68);
  }

  return result;
}

unint64_t sub_2706C2144()
{
  result = qword_28081DA70;
  if (!qword_28081DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA70);
  }

  return result;
}

unint64_t sub_2706C219C()
{
  result = qword_28081DA78;
  if (!qword_28081DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DA78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2)
{

  return sub_2706E5FFC();
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1)
{

  return sub_2706E60DC();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1)
{

  return sub_2706E605C();
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1)
{

  return sub_2706E608C();
}

char *OUTLINED_FUNCTION_42_1(uint64_t a1)
{

  return sub_2706BF820(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_46_1()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1)
{

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1)
{

  return MEMORY[0x2821FBB70](10, 0xE100000000000000, v1, a1);
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1)
{

  return sub_2706E608C();
}

char *OUTLINED_FUNCTION_54_1@<X0>(unint64_t a1@<X8>)
{

  return sub_2706BF820((a1 > 1), v1, 1);
}

void OUTLINED_FUNCTION_56_1()
{

  JUMPOUT(0x2743A5EF0);
}

uint64_t sub_2706C2654()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag18P2PPeerCoordinator_id;
  v2 = sub_2706E576C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for P2PPeerCoordinator(uint64_t a1)
{
  result = qword_28081DA88;
  if (!qword_28081DA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2706C2758(uint64_t a1)
{
  result = sub_2706E576C();
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

uint64_t sub_2706C27F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13UniversalDrag18P2PPeerCoordinator_id;
  v5 = sub_2706E576C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_2706C2894()
{
  result = qword_28081CF38;
  if (!qword_28081CF38)
  {
    sub_2706E576C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081CF38);
  }

  return result;
}

void sub_2706C28F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2706E576C();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v84 - v12;
  v91 = type metadata accessor for PasteboardMessage(0);
  v14 = MEMORY[0x28223BE20](v91);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v84 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v84 - v20;
  v22 = sub_270692D3C(a2, a3);
  v23 = MEMORY[0x2743A6D20](v22);
  sub_2706C7EE0(a2);
  if (v3)
  {
    objc_autoreleasePoolPop(v23);
    sub_270688E88(a2, a3);
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v24 = sub_2706E58DC();
    v25 = __swift_project_value_buffer(v24, qword_2808292F0);
    MEMORY[0x28223BE20](v25);
    *(&v84 - 2) = v3;
    sub_270694664(sub_270692C74, 0, sub_2706C938C, (&v84 - 4), v26, v27, v28, v29, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  }

  else
  {
    v84 = v11;
    v85 = 0;
    v31 = v88;
    v30 = v89;
    objc_autoreleasePoolPop(v23);
    sub_270688E88(a2, a3);
    sub_2706C9394(v19, v21, type metadata accessor for PasteboardMessage);
    sub_2706C9444(v21, v16, type metadata accessor for PasteboardMessage);
    v32 = v31;
    v33 = v30;
    v34 = v13;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        (*(v31 + 32))(v13, v16, v30);
        sub_27069F874();
        break;
      case 2u:
        v46 = *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40) + 48)];
        (*(v31 + 32))(v13, v16, v30);
        sub_27069FC2C(v13, v46);
        sub_270688D9C(v46);
        break;
      case 3u:
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA08, &qword_2706E7F38);
        v48 = v16;
        v49 = *(v47 + 48);
        v50 = *(v47 + 64);
        v91 = v21;
        v51 = v13;
        v52 = *(v31 + 32);
        v52(v13, v48, v33);
        v53 = v84;
        v52(v84, &v48[v49], v33);
        v54 = &v48[v50];
        v55 = v86;
        sub_2706C9394(v54, v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v56 = sub_2706DD84C();
        sub_2706C3314(v51, v53, v55, v56);

        sub_2706C93F0();
        v57 = *(v31 + 8);
        v57(v53, v33);
        v57(v51, v33);
        goto LABEL_19;
      case 4u:
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9F0, &qword_2706E7F30);
        v91 = v21;
        v36 = v13;
        v37 = v35[12];
        v38 = v16;
        v39 = v16[v35[16]];
        v40 = &v16[v35[20]];
        v41 = *v40;
        v42 = v40[8];
        (*(v31 + 32))(v36, v38, v30);
        v43 = &v38[v37];
        v44 = v86;
        sub_2706C9394(v43, v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v45 = sub_2706DD84C();
        sub_2706C37E0(v36, v44, v39, v41, v42, v45);

        sub_2706C93F0();
        (*(v31 + 8))(v36, v30);
        goto LABEL_19;
      case 5u:
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9D8, &qword_2706E7F28);
        v66 = v16;
        v67 = *(v65 + 48);
        v68 = &v16[*(v65 + 64)];
        v69 = v34;
        v70 = *v68;
        v71 = v68[1];
        (*(v32 + 32))(v69, v66, v30);
        v72 = &v66[v67];
        v73 = v86;
        sub_2706C9394(v72, v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v74 = sub_2706DD84C();
        sub_2706C3914(v69, v73, v70, v71, v74);

        sub_270688E88(v70, v71);
        sub_2706C93F0();
        (*(v32 + 8))(v69, v30);
        goto LABEL_19;
      case 6u:
        v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9C8, &qword_2706E7F20) + 48);
        (*(v31 + 32))(v13, v16, v30);
        v76 = v86;
        sub_2706C9394(&v16[v75], v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v77 = sub_2706DD84C();
        sub_2706C3A38(v34, v76, v77);

        goto LABEL_17;
      case 7u:
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
        v59 = v16;
        v60 = *(v58 + 48);
        v61 = *&v16[*(v58 + 64)];
        (*(v31 + 32))(v34, v59, v30);
        v62 = &v59[v60];
        v63 = v86;
        sub_2706C9394(v62, v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v64 = sub_2706DD84C();
        sub_2706C3C48(v34, v63, v61, v64);
        goto LABEL_16;
      case 8u:
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
        v79 = v16;
        v80 = *(v78 + 48);
        v61 = *&v16[*(v78 + 64)];
        (*(v31 + 32))(v34, v79, v30);
        v81 = &v79[v80];
        v82 = v86;
        sub_2706C9394(v81, v86, type metadata accessor for PasteboardDataTransferID);
        type metadata accessor for Completion();
        swift_allocObject();
        v83 = sub_2706DD84C();
        sub_2706C3B44(v34, v82, v61, v83);
LABEL_16:

        sub_270688D9C(v61);
LABEL_17:
        sub_2706C93F0();
        break;
      default:
        (*(v31 + 32))(v13, v16, v30);
        sub_27069F630();
        break;
    }

    (*(v31 + 8))(v34, v30);
LABEL_19:
    sub_2706C93F0();
  }
}

uint64_t sub_2706C3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v57 = a1;
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2706E576C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v15 = sub_2706E58DC();
  __swift_project_value_buffer(v15, qword_2808292F0);
  v53 = *(v12 + 16);
  v54 = v12 + 16;
  v53(v14, a2, v11);
  sub_2706C9444(a3, v10, type metadata accessor for PasteboardDataTransferID);
  v16 = sub_2706E58BC();
  v17 = sub_2706E5C1C();
  v18 = os_log_type_enabled(v16, v17);
  v55 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v50 = a3;
    v20 = v19;
    v49 = swift_slowAlloc();
    v58 = v49;
    *v20 = 136446466;
    v21 = sub_2706E572C();
    v23 = sub_2706B8734(8, v21, v22);
    v24 = MEMORY[0x2743A5EC0](v23);
    v51 = v4;
    v52 = a2;
    v25 = v24;
    v27 = v26;

    (*(v12 + 8))(v14, v11);
    v28 = sub_2706C83E8(v25, v27, &v58);

    *(v20 + 4) = v28;
    *(v20 + 12) = 2082;
    v29 = sub_2706E572C();
    v31 = sub_2706B8734(8, v29, v30);
    v32 = MEMORY[0x2743A5EC0](v31);
    v34 = v33;

    sub_2706C93F0();
    v35 = v32;
    a2 = v52;
    v36 = sub_2706C83E8(v35, v34, &v58);
    v5 = v51;

    *(v20 + 14) = v36;
    _os_log_impl(&dword_270680000, v16, v17, "Pasteboard Request: rep=%{public}s id=%{public}s", v20, 0x16u);
    v37 = v49;
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v37, -1, -1);
    v38 = v20;
    a3 = v50;
    MEMORY[0x2743A75B0](v38, -1, -1);
  }

  else
  {

    sub_2706C93F0();
    (*(v12 + 8))(v14, v11);
  }

  v39 = v57;
  sub_2706C3F98(0xD00000000000004BLL, 0x80000002706F10F0, v57, a3, v56);
  if (*(v5 + 88))
  {

    sub_2706B881C(a2);
    if (v40)
    {
      sub_27069FF6C(v39, v40);
    }

    else
    {
      v43 = v55;
      v44 = swift_allocBox();
      v53(v45, a2, v43);
      sub_270694B50();
      v46 = swift_allocError();
      *v47 = v44 | 0x2000000000000000;
      sub_2706DD768();
    }
  }

  else
  {
    sub_270694B50();
    v41 = swift_allocError();
    *v42 = 0xC000000000000000;
    sub_2706DD768();
  }
}

uint64_t sub_2706C37E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = sub_2706C4528(0xD000000000000043, 0x80000002706F1140, a1, a6);
  if (sub_270691700(a1))
  {
    sub_2706CBF94(a2, a3 & 1, a4, a5 & 1, v11);
  }

  else
  {
    v12 = sub_2706E576C();
    v13 = swift_allocBox();
    (*(*(v12 - 8) + 16))(v14, a1, v12);
    sub_270694B50();
    v15 = swift_allocError();
    *v16 = v13;
    sub_2706DD768();
  }
}

uint64_t sub_2706C3914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2706C4528(0xD000000000000040, 0x80000002706F1190, a1, a5);
  if (sub_270691700(a1))
  {
    sub_2706CC070(a2, a3, a4, v9);
  }

  else
  {
    v10 = sub_2706E576C();
    v11 = swift_allocBox();
    (*(*(v10 - 8) + 16))(v12, a1, v10);
    sub_270694B50();
    v13 = swift_allocError();
    *v14 = v11;
    sub_2706DD768();
  }
}

uint64_t sub_2706C3A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706C4528(0xD00000000000003FLL, 0x80000002706F11E0, a1, a3);
  if (sub_270691700(a1))
  {
    sub_2706CC138(a2, v5);
  }

  else
  {
    v6 = sub_2706E576C();
    v7 = swift_allocBox();
    (*(*(v6 - 8) + 16))(v8, a1, v6);
    sub_270694B50();
    v9 = swift_allocError();
    *v10 = v7;
    sub_2706DD768();
  }
}

void sub_2706C3B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_270691700(a1))
  {
    sub_2706CC1E8();
  }

  else
  {
    v5 = sub_2706E576C();
    v6 = swift_allocBox();
    (*(*(v5 - 8) + 16))(v7, a1, v5);
    sub_270694B50();
    v8 = swift_allocError();
    *v9 = v6;
    sub_2706DD768();
  }
}

void sub_2706C3C48(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v11 = sub_2706E58DC();
  __swift_project_value_buffer(v11, qword_2808292F0);
  sub_2706C9444(a2, v10, type metadata accessor for PasteboardDataTransferID);
  sub_270694BA4(a3);
  v12 = sub_2706E58BC();
  v13 = sub_2706E5C1C();
  sub_270688D9C(a3);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37[1] = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v38 = a1;
    v17 = v16;
    v41 = v16;
    *v15 = 136446466;
    v18 = sub_2706E572C();
    v20 = sub_2706B8734(8, v18, v19);
    v21 = MEMORY[0x2743A5EC0](v20);
    v39 = a4;
    v40 = a2;
    v22 = v21;
    v24 = v23;

    sub_2706C93F0();
    v25 = sub_2706C83E8(v22, v24, &v41);

    *(v15 + 4) = v25;
    *(v15 + 12) = 2082;
    v26 = sub_2706B96E0(a3);
    v28 = sub_2706C83E8(v26, v27, &v41);

    *(v15 + 14) = v28;
    a4 = v39;
    a2 = v40;
    _os_log_impl(&dword_270680000, v12, v13, "Pasteboard Receiver Error %{public}s: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v29 = v17;
    a1 = v38;
    MEMORY[0x2743A75B0](v29, -1, -1);
    MEMORY[0x2743A75B0](v15, -1, -1);
  }

  else
  {

    sub_2706C93F0();
  }

  v30 = sub_270691CE0(a2, a1);
  if (v30)
  {
    sub_2706AF208(a1, v30, v31, a3, a4);
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = swift_allocBox();
    sub_2706C9444(a2, v33, type metadata accessor for PasteboardDataTransferID);
    v34 = v32 | 0x4000000000000000;
    sub_270694B50();
    v35 = swift_allocError();
    *v36 = v34;
    sub_2706DD768();
  }
}

void *sub_2706C3F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a1;
  v25 = a2;
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v23 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2706E576C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = "start completed: ";
  (*(v12 + 16))(v14, a3, v11);
  sub_2706C9444(a4, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PasteboardDataTransferID);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = (v13 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v18 = v24;
  v19 = v25;
  *(v17 + 2) = a5;
  *(v17 + 3) = v18;
  v20 = v27;
  *(v17 + 4) = v19;
  *(v17 + 5) = v20;
  (*(v12 + 32))(&v17[v15], v14, v11);
  sub_2706C9394(v23, &v17[v16], type metadata accessor for PasteboardDataTransferID);
  type metadata accessor for Completion();
  swift_allocObject();

  return sub_2706DD8C4(0xD00000000000005CLL, v26 | 0x8000000000000000, 355, sub_2706C95E0, v17);
}

void sub_2706C4204(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for PasteboardMessage(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v15 = sub_2706E58DC();
    v16 = __swift_project_value_buffer(v15, qword_2808292F0);
    v17 = MEMORY[0x28223BE20](v16);
    *(&v32 - 2) = a3;
    *(&v32 - 1) = a4;
    MEMORY[0x28223BE20](v17);
    *(&v32 - 2) = a1;
    sub_270694664(sub_2706C96B0, v18, sub_2706C938C, (&v32 - 4), v19, v20, v21, v22, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, vars0, vars8);
    v33 = a1;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
    if (swift_dynamicCast())
    {
      v24 = v32;
    }

    else
    {
      v24 = 0xC000000000000040;
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
    v26 = *(v25 + 48);
    v27 = *(v25 + 64);
    v28 = sub_2706E576C();
    (*(*(v28 - 8) + 16))(v14, a6, v28);
    sub_2706C9444(a7, &v14[v26], type metadata accessor for PasteboardDataTransferID);
    *&v14[v27] = v24;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Completion();
    swift_allocObject();
    sub_270694BA4(v24);
    v29 = sub_2706DD84C();
    sub_2706928E0(v14, v29);

    sub_2706C93F0();
    sub_270694B50();
    v30 = swift_allocError();
    *v31 = v24;
    sub_270694BA4(v24);
    sub_2706DD768();

    sub_270688D9C(v24);
  }

  else
  {
    sub_2706DD768();
  }
}

void *sub_2706C4528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2706E576C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v16 = "start completed: ";
  (*(v10 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v12 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a4;
  *(v13 + 3) = a1;
  *(v13 + 4) = a2;
  *(v13 + 5) = v4;
  (*(v10 + 32))(&v13[v12], &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  type metadata accessor for Completion();
  swift_allocObject();

  return sub_2706DD8C4(0xD00000000000005CLL, v16 | 0x8000000000000000, 435, sub_2706C9780, v13);
}

void sub_2706C46D0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for PasteboardMessage(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v13 = sub_2706E58DC();
    v14 = __swift_project_value_buffer(v13, qword_2808292F0);
    v15 = MEMORY[0x28223BE20](v14);
    *(&v28 - 2) = a3;
    *(&v28 - 1) = a4;
    MEMORY[0x28223BE20](v15);
    *(&v28 - 2) = a1;
    sub_270694664(sub_2706C96B0, v16, sub_2706C938C, (&v28 - 4), v17, v18, v19, v20, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, vars0, vars8);
    v29 = a1;
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
    if (swift_dynamicCast())
    {
      v22 = v28;
    }

    else
    {
      v22 = 0xC000000000000040;
    }

    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40) + 48);
    v24 = sub_2706E576C();
    (*(*(v24 - 8) + 16))(v12, a6, v24);
    *&v12[v23] = v22;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Completion();
    swift_allocObject();
    sub_270694BA4(v22);
    v25 = sub_2706DD84C();
    sub_2706928E0(v12, v25);

    sub_2706C93F0();
    sub_270694B50();
    v26 = swift_allocError();
    *v27 = v22;
    sub_270694BA4(v22);
    sub_2706DD768();

    sub_270688D9C(v22);
  }

  else
  {
    sub_2706DD768();
  }
}

uint64_t sub_2706C49CC(uint64_t a1)
{
  sub_2706B462C(a1, v14);
  sub_2706E5F3C();
  v12 = MEMORY[0x277D84F90];
  v13 = sub_2706E59AC();
  v11 = sub_2706B46F4();
  v10[0] = swift_allocObject();
  sub_2706B45F4(&v12, v10[0] + 16);
  sub_270684F34(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], &type metadata for PropertyListTypeDecoder.RootDecoder, v11, v12, v13, v14[0], v14[1], v14[2], v14[3]);
  return sub_2706B4748(&v12);
}

uint64_t DragController.DragSessionProxy.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double sub_2706C4AF4()
{
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_2706C4B24(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2706C4BB0()
{
  v0 = sub_27069EF80();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2706C4C20(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_2706C4C88(v2, v1);
}

uint64_t sub_2706C4C88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2706C4CE8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_11_1(v1 + 24, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_2706C4D60;
}

void sub_2706C4D60(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_2706C4DE4(uint64_t a1)
{
  v2 = sub_2706E576C();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_2706C4F2C(v4);
}

uint64_t sub_2706C4EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_2706C4F2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
  OUTLINED_FUNCTION_11_1(v1 + OBJC_IVAR____TtC13UniversalDrag14DragController_uuid, v6);
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

void sub_2706C5004(uint64_t a1)
{
  v2 = v1;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_2808292D8);

  oslog = sub_2706E58BC();
  v5 = sub_2706E5BEC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    v17 = &type metadata for DragController.State;
    v18 = v7;
    v16[0] = a1;

    v8 = sub_2706CB238(v16);
    v10 = sub_2706C83E8(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = *(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
    v17 = &type metadata for DragController.State;
    v16[0] = v11;

    v12 = sub_2706CB238(v16);
    v14 = sub_2706C83E8(v12, v13, &v18);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_270680000, oslog, v5, "DragController: %{public}s → %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v7, -1, -1);
    MEMORY[0x2743A75B0](v6, -1, -1);
  }
}

uint64_t sub_2706C51F0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
  *(v1 + OBJC_IVAR____TtC13UniversalDrag14DragController_state) = a1;

  sub_2706C5004(v2);
}

void sub_2706C5254()
{
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      return;
    }

    v1 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v1)
    {
LABEL_6:

      return;
    }

    __break(1u);
  }

  if (*(v1 + 16))
  {
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t DragController.__allocating_init()()
{
  v0 = swift_allocObject();
  DragController.init()();
  return v0;
}

uint64_t DragController.init()()
{
  *(v0 + 16) = 0x3FF0000000000000;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  sub_2706E574C();
  *(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_state) = 0x8000000000000000;
  v1 = (v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  *v1 = 0;
  v1[1] = 0;
  return v0;
}

void sub_2706C5374(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = (v5 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  v10 = *(v5 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  v11 = v9[1];
  *v9 = a2;
  v9[1] = a3;

  sub_27068F6BC(v10, v11);
  type metadata accessor for Completion();
  OUTLINED_FUNCTION_21_3();
  swift_allocObject();

  v12 = sub_2706DD84C();
  sub_2706C5FF8();

  sub_2706C80C0(a1, *&a4, *&a5, v12, 0);
}

void sub_2706C5494(void *a1)
{
  v1 = a1;
  sub_2706C5FF8();
  OUTLINED_FUNCTION_11_7();

  sub_2706C80C0(v2, v3, v4, v5, 3);
}

BOOL sub_2706C5540()
{
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      return 0;
    }

    v2 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v2)
    {
      v3 = *(v2 + 40) >> 61 >= 3uLL;
      return !v3;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
    goto LABEL_12;
  }

  v3 = *(v4 + 48) >= 5u;
  return !v3;
}

void sub_2706C55A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v92 = v6;
  v93 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  sub_2706E54DC();
  swift_allocObject();
  sub_2706E54CC();
  sub_2706C81B0();
  v11 = &type metadata for PeerDeviceEvent;
  sub_2706E54BC();
  v91 = v10;
  v12 = v95;
  v13 = v96;
  v15 = v97;
  v14 = v98;
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_28081C730);
  }

  v16 = sub_2706E58DC();
  __swift_project_value_buffer(v16, qword_2808292D8);
  v17 = OUTLINED_FUNCTION_6_9();
  sub_2706C8204(v17, v18);
  v19 = sub_2706E58BC();
  v20 = sub_2706E5BEC();
  v21 = OUTLINED_FUNCTION_6_9();
  sub_2706B2C20(v21, v22);
  if (os_log_type_enabled(v19, v20))
  {
    v23 = v5;
    v88 = OUTLINED_FUNCTION_29_1();
    v24 = OUTLINED_FUNCTION_28_1();
    v94[0] = OUTLINED_FUNCTION_46_2(v24);
    *v88 = 136446210;
    v98 = &type metadata for PeerDeviceEvent;
    OUTLINED_FUNCTION_21_3();
    v25 = swift_allocObject();
    v95 = v25;
    v25[2] = v12;
    v25[3] = v13;
    v25[4] = v15;
    v25[5] = v14;
    v26 = OUTLINED_FUNCTION_6_9();
    sub_2706C8204(v26, v27);
    v28 = sub_2706CB238(&v95);
    v30 = sub_2706C83E8(v28, v29, v94);

    LOBYTE(v11) = v88;
    *(v88 + 4) = v30;
    v5 = v23;
    v31 = v20;
    v32 = v19;
    _os_log_impl(&dword_270680000, v19, v31, "DragController peer event: %{public}s", v88, 0xCu);
    v19 = v89;
    __swift_destroy_boxed_opaque_existential_1(v89);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }

  switch((v13 >> 60) & 3)
  {
    case 1uLL:
      v46 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
      OUTLINED_FUNCTION_11_7();
      swift_beginAccess();
      v87 = *(v93 + 16);
      v87(v91, v5 + v46, v92);

      v47 = sub_2706E573C();
      v86 = *(v93 + 8);
      v86(v91, v92);
      if (v47)
      {
        v95 = v12;
        v96 = v13;
        v97 = 0;
        v98 = 0;
        v99 = 2;
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_36_3();

        sub_2706B2C20(v12, v13);
        OUTLINED_FUNCTION_11_7();
        v39 = 2;
LABEL_15:
        sub_2706C80C0(v35, v36, v37, v38, v39);
        return;
      }

      OUTLINED_FUNCTION_49_1();

      OUTLINED_FUNCTION_1_9("Drag SessionIDs don't match. ");
      sub_2706E572C();
      OUTLINED_FUNCTION_42_2();

      OUTLINED_FUNCTION_18_5();
      v87(v91, v5 + v46, v92);
      v68 = sub_2706E572C();
      v70 = v69;
      v86(v91, v92);
      MEMORY[0x2743A5EF0](v68, v70);

      OUTLINED_FUNCTION_12_8();
      v77 = 293;
      goto LABEL_49;
    case 2uLL:
      v95 = v12;
      v96 = v13 & 0xCFFFFFFFFFFFFFFFLL;
      v97 = 0;
      v98 = 0;
      v99 = 4;
      sub_270692D3C(v12, v13 & 0xCFFFFFFFFFFFFFFFLL);
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_36_3();

      v40 = OUTLINED_FUNCTION_6_9();
      sub_2706B2C20(v40, v41);
      OUTLINED_FUNCTION_11_7();
      v39 = 4;
      goto LABEL_15;
    case 3uLL:
      v42 = v14 | v15;
      if (v13 != 0x3000000000000000 || v42 | v12)
      {
        v48 = v13 == 0x3000000000000000 && v12 == 1;
        if (!v48 || v42)
        {
          v51 = v13 == 0x3000000000000000 && v12 == 2;
          if (!v51 || v42)
          {
            v63 = v13 == 0x3000000000000000 && v12 == 3;
            if (!v63 || v42)
            {
              OUTLINED_FUNCTION_11_7();
              swift_beginAccess();
              v66 = OUTLINED_FUNCTION_3_8();
              (v19)(v66);
              OUTLINED_FUNCTION_20_4();
              v67 = OUTLINED_FUNCTION_7_7();
              (v15)(v67);
              if (v11)
              {
                v45 = 4;
                goto LABEL_24;
              }

              OUTLINED_FUNCTION_16_9();

              OUTLINED_FUNCTION_1_9("Drag SessionIDs don't match. ");
              sub_2706E572C();
              OUTLINED_FUNCTION_42_2();

              OUTLINED_FUNCTION_18_5();
              v84 = OUTLINED_FUNCTION_14_7();
              v4(v84);
              sub_2706E572C();
              v85 = OUTLINED_FUNCTION_8_9();
              (v15)(v85);
              OUTLINED_FUNCTION_25_3();

              OUTLINED_FUNCTION_12_8();
              v77 = 317;
            }

            else
            {
              OUTLINED_FUNCTION_11_7();
              swift_beginAccess();
              v64 = OUTLINED_FUNCTION_3_8();
              (v19)(v64);
              OUTLINED_FUNCTION_20_4();
              v65 = OUTLINED_FUNCTION_7_7();
              (v15)(v65);
              if (v11)
              {
                v45 = 3;
                goto LABEL_24;
              }

              OUTLINED_FUNCTION_16_9();

              OUTLINED_FUNCTION_1_9("Drag SessionIDs don't match. ");
              sub_2706E572C();
              OUTLINED_FUNCTION_42_2();

              OUTLINED_FUNCTION_18_5();
              v82 = OUTLINED_FUNCTION_14_7();
              v4(v82);
              sub_2706E572C();
              v83 = OUTLINED_FUNCTION_8_9();
              (v15)(v83);
              OUTLINED_FUNCTION_25_3();

              OUTLINED_FUNCTION_12_8();
              v77 = 321;
            }
          }

          else
          {
            v52 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
            OUTLINED_FUNCTION_11_7();
            swift_beginAccess();
            v53 = *(v93 + 16);
            v53(v91, v5 + v52, v92);
            v54 = sub_2706E573C();
            v90 = v5;
            v55 = *(v93 + 8);
            v55(v91, v92);
            if (v54)
            {
              sub_2706E5A3C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_2706E8FC0;
              *(inited + 32) = sub_2706E5A3C();
              *(inited + 40) = v57;
              *(inited + 72) = MEMORY[0x277D837D0];
              *(inited + 48) = 0xD000000000000017;
              *(inited + 56) = 0x80000002706F0F30;
              v58 = sub_2706E59AC();
              v59 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v60 = OUTLINED_FUNCTION_15_1();
              v95 = sub_2706C82B8(v60, v61, -6700, v58);
              v96 = 0;
              v97 = 0;
              v98 = 0;
              v99 = 3;
              v62 = v95;
              sub_2706C5FF8();

              OUTLINED_FUNCTION_36_3();

              OUTLINED_FUNCTION_11_7();
              v39 = 3;
              goto LABEL_15;
            }

            OUTLINED_FUNCTION_49_1();

            OUTLINED_FUNCTION_1_9("Drag SessionIDs don't match. ");
            sub_2706E572C();
            OUTLINED_FUNCTION_42_2();

            OUTLINED_FUNCTION_18_5();
            v53(v91, v90 + v52, v92);
            sub_2706E572C();
            v55(v91, v92);
            OUTLINED_FUNCTION_25_3();

            OUTLINED_FUNCTION_12_8();
            v77 = 305;
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_7();
          swift_beginAccess();
          v49 = OUTLINED_FUNCTION_3_8();
          (v19)(v49);
          OUTLINED_FUNCTION_20_4();
          v50 = OUTLINED_FUNCTION_7_7();
          (v15)(v50);
          if (v11)
          {
            v45 = 2;
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_16_9();

          OUTLINED_FUNCTION_1_9("Drag SessionIDs don't match. ");
          sub_2706E572C();
          OUTLINED_FUNCTION_42_2();

          OUTLINED_FUNCTION_18_5();
          v80 = OUTLINED_FUNCTION_14_7();
          v4(v80);
          sub_2706E572C();
          v81 = OUTLINED_FUNCTION_8_9();
          (v15)(v81);
          OUTLINED_FUNCTION_25_3();

          OUTLINED_FUNCTION_12_8();
          v77 = 301;
        }

LABEL_49:
        OUTLINED_FUNCTION_48_2("Fatal error", v71, v72, v73, v74, "UniversalDrag/DragController.swift", v75, v76, v77, v86);
        __break(1u);
        JUMPOUT(0x2706C5FE8);
      }

      OUTLINED_FUNCTION_11_7();
      swift_beginAccess();
      v43 = OUTLINED_FUNCTION_3_8();
      (v19)(v43);
      OUTLINED_FUNCTION_20_4();
      v44 = OUTLINED_FUNCTION_7_7();
      (v15)(v44);
      if ((v11 & 1) == 0)
      {
        OUTLINED_FUNCTION_16_9();

        OUTLINED_FUNCTION_1_9("Drag SessionIDs don't match. ");
        sub_2706E572C();
        OUTLINED_FUNCTION_42_2();

        OUTLINED_FUNCTION_18_5();
        v78 = OUTLINED_FUNCTION_14_7();
        v4(v78);
        sub_2706E572C();
        v79 = OUTLINED_FUNCTION_8_9();
        (v15)(v79);
        OUTLINED_FUNCTION_25_3();

        OUTLINED_FUNCTION_12_8();
        v77 = 297;
        goto LABEL_49;
      }

      v45 = 1;
LABEL_24:
      v95 = v45;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 5;
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_36_3();

      return;
    default:
      v95 = v12;
      v96 = v13;
      v97 = v15;
      v98 = v14;
      v99 = 1;

      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_36_3();

      v33 = OUTLINED_FUNCTION_6_9();
      sub_2706B2C20(v33, v34);
      v35 = OUTLINED_FUNCTION_6_9();
      v39 = 1;
      goto LABEL_15;
  }
}

void sub_2706C5FF8()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_20_1();
  v198 = type metadata accessor for DragForwardingCoordinator.Event(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v199 = (v6 - v5);
  v202 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v204 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v200 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v203 = &v195 - v11;
  v13 = *v0;
  v12 = *(v0 + 8);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_28081C730);
  }

  v17 = sub_2706E58DC();
  v18 = __swift_project_value_buffer(v17, qword_2808292D8);

  v19 = OUTLINED_FUNCTION_24_2();
  sub_2706C912C(v19, v20, v21, v22, v16);
  v197 = v18;
  v23 = sub_2706E58BC();
  v24 = sub_2706E5BEC();

  v25 = OUTLINED_FUNCTION_24_2();
  sub_2706C80C0(v25, v26, v27, v28, v16);
  if (os_log_type_enabled(v23, v24))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v205 = v13;
    v196 = v30;
    v206 = v30;
    *v29 = 136315394;
    v31 = *(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
    v210 = &type metadata for DragController.State;
    *&v208 = v31;

    v32 = sub_2706CB238(&v208);
    v34 = sub_2706C83E8(v32, v33, &v206);
    v201 = v2;
    v35 = v34;

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    v210 = &type metadata for DragController.Event;
    v36 = swift_allocObject();
    *&v208 = v36;
    *(v36 + 16) = v205;
    *(v36 + 24) = v12;
    *(v36 + 32) = v14;
    *(v36 + 40) = v15;
    *(v36 + 48) = v16;
    v37 = OUTLINED_FUNCTION_31_4();
    sub_2706C912C(v37, v12, v14, v15, v16);
    v38 = sub_2706CB238(&v208);
    v40 = sub_2706C83E8(v38, v39, &v206);

    *(v29 + 14) = v40;
    v2 = v201;
    _os_log_impl(&dword_270680000, v23, v24, "DragController: %s - %s", v29, 0x16u);
    swift_arrayDestroy();
    v13 = v205;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  v41 = OBJC_IVAR____TtC13UniversalDrag14DragController_state;
  v42 = *(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_state);
  if (v42 >> 62)
  {
    if (v42 >> 62 == 1)
    {
      switch(v16)
      {
        case 2:
          if (*((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
          {
            *&v208 = v13;
            BYTE8(v208) = v12;

            sub_2706E03D4(&v208);
LABEL_48:

            goto LABEL_49;
          }

          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        case 3:
          v81 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (!v81)
          {
            goto LABEL_50;
          }

          if (v13)
          {
            OUTLINED_FUNCTION_47_2();
            swift_retain_n();

            v82 = v13;
          }

          else
          {
            v131 = sub_2706E5A3C();
            OUTLINED_FUNCTION_46_2(v131);
            v201 = v132;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
            v82 = 0;
            v133 = v14;
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_2706E8FC0;
            v135 = sub_2706E5A3C();
            v136 = v2;
            v137 = v15;
            v138 = v12;
            v139 = MEMORY[0x277D837D0];
            *(inited + 32) = v135;
            *(inited + 40) = v140;
            *(inited + 72) = v139;
            *(inited + 48) = 0x206E776F6E6B6E55;
            *(inited + 56) = 0xEF6572756C696166;
            OUTLINED_FUNCTION_47_2();
            swift_retain_n();

            v141 = v138;
            v142 = v137;
            v2 = v136;
            v143 = sub_2706E59AC();
            v144 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
            v145 = OUTLINED_FUNCTION_31_4();
            sub_2706C82B8(v145, v201, -6700, v143);
            v146 = OUTLINED_FUNCTION_20_1();
            sub_2706C80C0(v146, v141, v133, v142, 3);
          }

          v147 = OUTLINED_FUNCTION_24_2();
          sub_2706C912C(v147, v148, v149, v150, 3);
          sub_2706E0538(v82);
          if (*(v81 + 40) >> 61 < 3uLL)
          {

            OUTLINED_FUNCTION_47_2();

            goto LABEL_50;
          }

          v151 = OUTLINED_FUNCTION_40_1();
          OUTLINED_FUNCTION_2_5(v151, v152, v153, v154, v155, v156, v157, v158, v195);

          OUTLINED_FUNCTION_47_2();

          goto LABEL_78;
        case 4:
          goto LABEL_15;
        case 5:
          v83 = v14 | v12 | v15;
          if (v13 == 1 && !v83)
          {
            if (*((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
            {
              OUTLINED_FUNCTION_37_2();
              swift_storeEnumTagMultiPayload();

              sub_2706E05C8(v41);

              OUTLINED_FUNCTION_4_8();
              sub_2706C93F0();
LABEL_50:
              OUTLINED_FUNCTION_39_1();
              return;
            }

LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          if (v13 != 2 || v83)
          {
            if (v13 != 3 || v83)
            {
LABEL_62:
              if (v13 == 4 && !v83)
              {
                v118 = OUTLINED_FUNCTION_40_1();
                OUTLINED_FUNCTION_2_5(v118, v119, v120, v121, v122, v123, v124, v125, v195);
                OUTLINED_FUNCTION_11_1(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_uuid, &v208);
                v126 = OUTLINED_FUNCTION_27_4();
                v127(v126);
                swift_endAccess();
                v128 = OUTLINED_FUNCTION_35_2(xmmword_2706ED1C0);
                sub_2706C7064(v128, v129, v130);
                goto LABEL_50;
              }

              goto LABEL_83;
            }

            if (*((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
            {
              OUTLINED_FUNCTION_37_2();
              swift_storeEnumTagMultiPayload();

              sub_2706E05C8(v41);

              OUTLINED_FUNCTION_4_8();
              sub_2706C93F0();
            }

            else
            {
            }

            v168 = OUTLINED_FUNCTION_40_1();
            OUTLINED_FUNCTION_2_5(v168, v169, v170, v171, v172, v173, v174, v175, v195);
          }

          else
          {
            v114 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            if (!v114)
            {
              goto LABEL_50;
            }

            v115 = v199;
            swift_storeEnumTagMultiPayload();

            sub_2706E05C8(v115);
            OUTLINED_FUNCTION_4_8();
            sub_2706C93F0();
            if (*(v114 + 40) >> 61 < 3uLL)
            {
              goto LABEL_48;
            }

            v159 = OUTLINED_FUNCTION_40_1();
            OUTLINED_FUNCTION_2_5(v159, v160, v161, v162, v163, v164, v165, v166, v195);
          }

LABEL_78:
          OUTLINED_FUNCTION_11_1(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_uuid, &v208);
          v176 = OUTLINED_FUNCTION_27_4();
          v177(v176);
          swift_endAccess();
          goto LABEL_50;
        default:
          goto LABEL_83;
      }
    }

    switch(v16)
    {
      case 0:
        v43 = *&v12;
        v44 = *&v14;
        type metadata accessor for DragForwardingCoordinator();
        v45 = swift_allocObject();

        v47 = sub_2706C92B8(v46, v2, v45);
        OUTLINED_FUNCTION_50_1(v47);
        type metadata accessor for DragController.Context();
        v48 = swift_allocObject();
        *(v48 + 16) = 0;
        *(v48 + 24) = v45;

        sub_2706C51F0(v48 | 0x4000000000000000);
        OUTLINED_FUNCTION_11_7();
        swift_beginAccess();
        v49 = *(v2 + 16);
        v50 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
        OUTLINED_FUNCTION_11_7();
        swift_beginAccess();
        v51 = v204;
        v52 = v203;
        v53 = v202;
        (*(v204 + 16))(v203, v2 + v50, v202);
        sub_2706E02A8(v13, v52, v15, v43, v44, v49);

        (*(v51 + 8))(v52, v53);
        goto LABEL_50;
      case 1:
        v88 = *&v14;
        type metadata accessor for DragSurrogateCoordinator();
        v89 = swift_allocObject();

        v91 = sub_2706C922C(v90, v89);
        OUTLINED_FUNCTION_50_1(v91);
        type metadata accessor for DragController.Context();
        v92 = swift_allocObject();
        *(v92 + 16) = v89;
        *(v92 + 24) = 0;
        v93 = v204;
        v94 = OUTLINED_FUNCTION_45_2();
        v96 = *(v95 - 256);
        v97(v94);
        v98 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
        OUTLINED_FUNCTION_11_1(v2 + OBJC_IVAR____TtC13UniversalDrag14DragController_uuid, &v208);
        v99 = *(v93 + 40);

        v99(v2 + v98, v15, v96);
        swift_endAccess();

        sub_2706C51F0(v100);
        OUTLINED_FUNCTION_11_7();
        swift_beginAccess();
        sub_2706AFA40(v13, v12, 1.0 / *(v2 + 16), v88, *&v15);

        goto LABEL_49;
      case 2:
      case 3:
        goto LABEL_50;
      case 4:
        v109 = sub_2706E58BC();
        OUTLINED_FUNCTION_46_2(v109);
        v110 = sub_2706E5BEC();
        v111 = OUTLINED_FUNCTION_31_4();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_270680000, v205, v110, "Ignoring data requested/sent while idle.", v113, 2u);
          OUTLINED_FUNCTION_12_0();

          goto LABEL_72;
        }

        OUTLINED_FUNCTION_31_4();
        OUTLINED_FUNCTION_39_1();

        break;
      case 5:
        v101 = (v13 & 0xFFFFFFFFFFFFFFFELL) == 2 || v13 == 4;
        if (!v101 || v14 | v12 | v15)
        {
          goto LABEL_38;
        }

        goto LABEL_50;
      default:
LABEL_38:
        *&v208 = 0;
        *(&v208 + 1) = 0xE000000000000000;
        sub_2706E5E3C();
        OUTLINED_FUNCTION_34_4();
        OUTLINED_FUNCTION_43_2();
        *&v208 = *(v41 + v2);
        OUTLINED_FUNCTION_19_9(v102, v103, &type metadata for DragController.State);
        v104 = MEMORY[0x2743A5EF0](540945696, 0xE400000000000000);
        *&v208 = v13;
        *(&v208 + 1) = v12;
        v209 = v14;
        v210 = v15;
        LOBYTE(v211) = v16;
        OUTLINED_FUNCTION_19_9(v104, v105, &type metadata for DragController.Event);
        OUTLINED_FUNCTION_13_9();
        v108 = 370;
        goto LABEL_84;
    }
  }

  else
  {
    switch(v16)
    {
      case 2:
        if (!*(v42 + 16))
        {
          goto LABEL_80;
        }

        *&v208 = v13;
        BYTE8(v208) = v12;

        sub_2706AFAD4(&v208);
        goto LABEL_48;
      case 3:

        OUTLINED_FUNCTION_40_1();
        v84 = xmmword_2706EAA60;
        goto LABEL_30;
      case 4:
LABEL_15:
        v195 = v16;
        v199 = v14;
        v205 = v15;
        v54 = v12;
        v55 = v13;
        sub_2706C5254();
        if (!v60)
        {
          goto LABEL_86;
        }

        v61 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
        OUTLINED_FUNCTION_11_7();
        swift_beginAccess();
        v62 = v204;
        v63 = *(v204 + 16);
        v64 = v203;
        v65 = v202;
        v63(v203, v2 + v61, v202);
        v198 = v61;
        v201 = v2;
        v66 = v2 + v61;
        v67 = v200;
        v197 = v63;
        v63(v200, v66, v65);
        v68 = v55;
        OUTLINED_FUNCTION_26_4();
        sub_2706C912C(v69, v70, v71, v72, v73);
        v74 = sub_2706E573C();
        v75 = *(v62 + 8);
        v75(v67, v65);
        v204 = v62 + 8;
        v75(v64, v65);
        if (v74)
        {
          sub_2706C28F0(v201, v68, v54);
          OUTLINED_FUNCTION_26_4();
          sub_2706C80C0(v76, v77, v78, v79, v80);
LABEL_49:

          goto LABEL_50;
        }

        v206 = 0;
        v207 = 0xE000000000000000;
        sub_2706E5E3C();

        v206 = 0xD00000000000001DLL;
        v207 = 0x80000002706F0F10;
        v182 = v198;
        v183 = v201;
        v184 = OUTLINED_FUNCTION_45_2();
        v186 = *(v185 - 256);
        v187 = v197;
        (v197)(v184);
        v188 = sub_2706E572C();
        OUTLINED_FUNCTION_46_2(v188);
        v190 = v189;
        v75(v54, v186);
        v191 = OUTLINED_FUNCTION_31_4();
        MEMORY[0x2743A5EF0](v191, v190);

        OUTLINED_FUNCTION_18_5();
        v187(v54, v183 + v182, v186);
        v192 = sub_2706E572C();
        v194 = v193;
        v75(v54, v186);
        MEMORY[0x2743A5EF0](v192, v194);

        OUTLINED_FUNCTION_13_9();
        v108 = 439;
        goto LABEL_84;
      case 5:
        if (!(v14 | v12 | v13 | v15))
        {
          if (*(v42 + 16))
          {
            v208 = xmmword_2706E8FD0;
            v210 = 0;
            v211 = 0;
            v209 = 0;

            sub_2706AFBAC(&v208);
            goto LABEL_48;
          }

LABEL_82:
          __break(1u);
LABEL_83:
          *&v208 = 0;
          *(&v208 + 1) = 0xE000000000000000;

          sub_2706E5E3C();
          OUTLINED_FUNCTION_34_4();
          OUTLINED_FUNCTION_43_2();
          *&v208 = *(v41 + v2);
          OUTLINED_FUNCTION_19_9(v178, v179, &type metadata for DragController.State);
          v180 = MEMORY[0x2743A5EF0](540945696, 0xE400000000000000);
          *&v208 = v13;
          *(&v208 + 1) = v12;
          v209 = v14;
          v210 = v15;
          LOBYTE(v211) = v16;
          OUTLINED_FUNCTION_19_9(v180, v181, &type metadata for DragController.Event);
          OUTLINED_FUNCTION_13_9();
          v108 = 450;
LABEL_84:
          v195 = v108;
          while (1)
          {
            OUTLINED_FUNCTION_48_2("Fatal error", v56, v57, v106, v107, "UniversalDrag/DragController.swift", v58, v59, v195, v196);
            __break(1u);
LABEL_86:
            v106 = 0xD000000000000032;
            v107 = 0x80000002706F10B0;
          }
        }

        v83 = v14 | v12 | v15;
        if (v13 == 2 && !v83)
        {

          OUTLINED_FUNCTION_40_1();
          v84 = xmmword_2706EAA50;
LABEL_30:
          v85 = OUTLINED_FUNCTION_35_2(v84);
          sub_2706C7064(v85, v86, v87);
          goto LABEL_49;
        }

        if (v13 != 3 || v83)
        {
          goto LABEL_62;
        }

        if (*(v42 + 16))
        {
          v208 = xmmword_2706ED1D0;
          v210 = 0;
          v211 = 0;
          v209 = 0;

          sub_2706AFBAC(&v208);
        }

        else
        {
        }

        OUTLINED_FUNCTION_40_1();
LABEL_72:
        OUTLINED_FUNCTION_39_1();

        break;
      default:
        goto LABEL_83;
    }
  }
}

void sub_2706C7064(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_20_1();
  v7 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = *v3;
  v15 = v3[1];
  v17 = v3[2];
  v16 = v3[3];
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(v5 + 32);
    v41 = a3;
    sub_2706E550C();
    swift_allocObject();
    v43[0] = v14;
    v43[1] = v15;
    sub_2706E54FC();
    v43[2] = v17;
    v44 = v16;
    sub_2706C8C2C();
    v18 = sub_2706E54EC();
    v20 = v19;
    ObjectType = swift_getObjectType();
    v22 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
    OUTLINED_FUNCTION_11_7();
    swift_beginAccess();
    (*(v9 + 16))(v13, v5 + v22, v7);
    (*(v40 + 8))(v5, v18, v20, v13, a2, v41, ObjectType);
    sub_270688E88(v18, v20);
    swift_unknownObjectRelease();

    (*(v9 + 8))(v13, v7);
  }

  else
  {
    v23 = v15;
    if (qword_28081C730 != -1)
    {
      OUTLINED_FUNCTION_2_0(&qword_28081C730);
    }

    v24 = sub_2706E58DC();
    __swift_project_value_buffer(v24, qword_2808292D8);
    v25 = v14;
    OUTLINED_FUNCTION_33_3();
    sub_2706C8204(v26, v27);
    v28 = sub_2706E58BC();
    v29 = sub_2706E5BFC();
    OUTLINED_FUNCTION_33_3();
    sub_2706B2C20(v30, v31);
    if (os_log_type_enabled(v28, v29))
    {
      v32 = OUTLINED_FUNCTION_29_1();
      v33 = OUTLINED_FUNCTION_28_1();
      v45 = v33;
      *v32 = 136315138;
      v44 = &type metadata for PeerDeviceEvent;
      OUTLINED_FUNCTION_21_3();
      v34 = swift_allocObject();
      v43[0] = v34;
      v34[2] = v25;
      v34[3] = v23;
      v34[4] = v17;
      v34[5] = v16;
      OUTLINED_FUNCTION_33_3();
      sub_2706C8204(v35, v36);
      v37 = sub_2706CB238(v43);
      v39 = sub_2706C83E8(v37, v38, &v45);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_270680000, v28, v29, "DragController: no delegate to receive peer device event: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    if (a2)
    {
      a2();
    }
  }
}

uint64_t sub_2706C73B8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  OUTLINED_FUNCTION_20_1();
  v5 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = *v3;
  v13 = v3[1];
  v15 = v3[2];
  v14 = v3[3];
  sub_2706E550C();
  swift_allocObject();
  sub_2706E54FC();
  v41[0] = v12;
  v41[1] = v13;
  v41[2] = v15;
  v42 = v14;
  sub_2706C8C2C();
  v37 = sub_2706E54EC();
  v38 = v16;
  OUTLINED_FUNCTION_11_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v4 + 32);
    ObjectType = swift_getObjectType();
    v19 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
    OUTLINED_FUNCTION_11_7();
    swift_beginAccess();
    (*(v7 + 16))(v11, v4 + v19, v5);
    (*(v17 + 16))(v4, v37, v38, v11, a2, a3, ObjectType, v17);
    sub_270688E88(v37, v38);
    swift_unknownObjectRelease();

    return (*(v7 + 8))(v11, v5);
  }

  else
  {
    if (qword_28081C730 != -1)
    {
      OUTLINED_FUNCTION_2_0(&qword_28081C730);
    }

    v21 = sub_2706E58DC();
    __swift_project_value_buffer(v21, qword_2808292D8);
    v22 = OUTLINED_FUNCTION_23_4();
    sub_2706C8204(v22, v23);
    v24 = sub_2706E58BC();
    v25 = sub_2706E5BFC();
    v26 = OUTLINED_FUNCTION_23_4();
    sub_2706B2C20(v26, v27);
    if (os_log_type_enabled(v24, v25))
    {
      v28 = OUTLINED_FUNCTION_29_1();
      v29 = OUTLINED_FUNCTION_28_1();
      v40 = v29;
      *v28 = 136315138;
      v42 = &type metadata for PeerDeviceEvent;
      OUTLINED_FUNCTION_21_3();
      v30 = swift_allocObject();
      v41[0] = v30;
      v30[2] = v12;
      v30[3] = v13;
      v30[4] = v15;
      v30[5] = v14;
      v31 = OUTLINED_FUNCTION_23_4();
      sub_2706C8204(v31, v32);
      v33 = sub_2706CB238(v41);
      v35 = sub_2706C83E8(v33, v34, &v40);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_270680000, v24, v25, "DragController: no delegate to receive peer device pasteboard event: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }

    if (a2)
    {
      a2();
    }

    sub_270688E88(v37, v38);
  }
}

uint64_t DragController.deinit()
{
  sub_2706A59B4(v0 + 24);
  v1 = OBJC_IVAR____TtC13UniversalDrag14DragController_uuid;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);

  sub_27068F6BC(*(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler), *(v0 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler + 8));
  return v0;
}

uint64_t DragController.__deallocating_deinit()
{
  DragController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2706C7810(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  if (v2)
  {
    v5 = a1;

    v2(&v5);
    v3 = OUTLINED_FUNCTION_15_1();
    sub_27068F6BC(v3, v4);
  }
}

void sub_2706C786C(uint64_t a1, char a2, char *a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC13UniversalDrag14DragController_forwardingEventHandler);
  if (v4)
  {
    v11 = a2 & 1;
    v12 = a3;
    v6 = OUTLINED_FUNCTION_15_1();
    sub_2706A5AA4(v6, v7);
    v8 = a3;
    v4(&v11);
    v9 = OUTLINED_FUNCTION_15_1();
    sub_27068F6BC(v9, v10);
    sub_2706C8C14(v11, v12);
  }
}

uint64_t sub_2706C7908(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4, void (*a5)(void), ...)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  if (qword_28081C730 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_28081C730);
  }

  v11 = sub_2706E58DC();
  __swift_project_value_buffer(v11, qword_2808292D8);
  v12 = OUTLINED_FUNCTION_22_5();
  sub_2706C8204(v12, v13);
  v14 = sub_2706E58BC();
  v15 = sub_2706E5BEC();
  v16 = OUTLINED_FUNCTION_22_5();
  sub_2706B2C20(v16, v17);
  if (os_log_type_enabled(v14, v15))
  {
    buf = OUTLINED_FUNCTION_29_1();
    v27 = OUTLINED_FUNCTION_28_1();
    v29 = v27;
    *buf = 136315138;
    v31 = &type metadata for PeerDeviceEvent;
    OUTLINED_FUNCTION_21_3();
    v18 = swift_allocObject();
    v30[0] = v18;
    v18[2] = v7;
    v18[3] = v8;
    v18[4] = v9;
    v18[5] = v10;
    v19 = OUTLINED_FUNCTION_22_5();
    sub_2706C8204(v19, v20);
    v21 = sub_2706CB238(v30);
    v23 = a3;
    v24 = sub_2706C83E8(v21, v22, &v29);

    *(buf + 4) = v24;
    a3 = v23;
    _os_log_impl(&dword_270680000, v14, v15, a4, buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }

  v30[0] = v7;
  v30[1] = v8;
  v30[2] = v9;
  v31 = v10;

  sub_2706C7064(v30, a5, a3);
}

uint64_t sub_2706C7B0C(uint64_t a1)
{
  OUTLINED_FUNCTION_10_7(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_54_2(result);
    v2 = OUTLINED_FUNCTION_38_3();
    v3(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706C7B80(uint64_t a1)
{
  OUTLINED_FUNCTION_10_7(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_54_2(result);
    v2 = OUTLINED_FUNCTION_38_3();
    v3(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706C7BF8(uint64_t a1, char *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_10_7(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OUTLINED_FUNCTION_54_2(result);
    v7[0] = v4;
    (*(v3 + 24))(v2, v7, v6, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706C7C70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_7(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(v2, a2 == 0, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2706C7CF4(int a1, id a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      OUTLINED_FUNCTION_15_8();
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v7 = a2;
      sub_2706C5494(a2);
      v5 = 0;
      v6 = a2;
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_8();
    v6 = 0;
    v5 = 1;
  }

  OUTLINED_FUNCTION_10_7(v4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(v2, v5, v6, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  sub_2706B2B20(a2);
}

uint64_t sub_2706C7DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_10_7(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v5 + 64))(v2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_2706C7E5C(uint64_t a1)
{
  OUTLINED_FUNCTION_10_7(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_54_2(Strong);
  v5 = (*(v2 + 72))(v1, v4, v2);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_2706C7EE0(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = sub_2706E590C();
  v1 = sub_2706E56AC();
  v2 = OPACKDecodeNSData(v1);

  if (v2)
  {
    sub_2706E5D6C();
    swift_unknownObjectRelease();
    sub_270690AAC(&v12, v13);
    if (v11 == sub_2706E590C())
    {
      type metadata accessor for PropertyListTypeDecoder();
      swift_initStackObject();
      sub_2706C49CC(v13);
      return __swift_destroy_boxed_opaque_existential_1(v13);
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v4 = sub_2706E5A3C();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  *(inited + 32) = sub_2706E5A3C();
  *(inited + 40) = v8;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x80000002706F1220;
  v9 = sub_2706E59AC();
  v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_2706C82B8(v4, v6, v11, v9);
  return swift_willThrow();
}

void sub_2706C80C0(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:

      break;
    case 2:

      break;
    case 3:

      break;
    case 4:

      sub_270688E88(a1, a2);
      break;
    default:
      return;
  }
}

unint64_t sub_2706C81B0()
{
  result = qword_28081DAA8;
  if (!qword_28081DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DAA8);
  }

  return result;
}

void sub_2706C8204(uint64_t a1, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:

      break;
    case 2uLL:
      v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;

      sub_270692D3C(a1, v2);
      break;
    case 3uLL:
      return;
    default:

      break;
  }
}

id sub_2706C82B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2706E5A0C();

  if (a4)
  {
    v8 = sub_2706E598C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_2706C8368(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_2706E5E3C();
  return 0;
}

uint64_t sub_2706C83B0()
{
  sub_2706B2C20(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_21_3();

  return MEMORY[0x2821FE8E8](v1);
}

unint64_t sub_2706C83E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2706C8C80(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2706B462C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_2706C8500@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2706C4C5C(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t type metadata accessor for DragController(uint64_t a1)
{
  result = qword_28081DAB8;
  if (!qword_28081DAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2706C85AC(uint64_t a1)
{
  result = sub_2706E576C();
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

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B10ControllerC15ForwardingEventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706C8904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2706C896C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_2706C89BC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_13UniversalDrag0B10ControllerC5State33_E6CE935C2BCACFC1E057289D071BF1FDLLO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2706C8B28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2706C8B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2706C8BDC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

void sub_2706C8C14(int a1, char *a2)
{
  if ((a2 - 1) >= 2)
  {
  }
}

unint64_t sub_2706C8C2C()
{
  result = qword_28081DAC8;
  if (!qword_28081DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DAC8);
  }

  return result;
}

unint64_t sub_2706C8C80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2706C8D80(a5, a6);
    *a1 = v9;
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
    result = sub_2706E5ECC();
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

uint64_t sub_2706C8D80(uint64_t a1, unint64_t a2)
{
  v3 = sub_2706C8DCC(a1, a2);
  sub_2706C8EE4(&unk_28806AA38);
  return v3;
}

uint64_t sub_2706C8DCC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2706E5AAC())
  {
    result = sub_2706C8FC8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2706E5E1C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2706E5ECC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2706C8EE4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2706C9038(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2706C8FC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28081DAD0, "č");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2706C9038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28081DAD0, "č");
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
    if (v10 != a4 || &v13[v8] <= v12)
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

double sub_2706C912C(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:

      break;
    case 2:

      break;
    case 3:

      v6 = a1;
      break;
    case 4:

      result = sub_270692D3C(a1, a2);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2706C922C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 40) = 0;
  *(a2 + 48) = 7;
  *(a2 + 56) = 0;
  type metadata accessor for PasteboardController_iOS();
  swift_allocObject();
  v3 = sub_27069F2AC();
  *(a2 + 24) = &off_28806D8F8;
  *(a2 + 32) = v3;
  swift_unknownObjectWeakAssign();

  return a2;
}

uint64_t sub_2706C92B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = xmmword_2706ED1F0;
  type metadata accessor for PasteboardController_iOS();
  swift_allocObject();
  v4 = sub_27069F384();
  *(a3 + 24) = &off_28806D8B8;
  *(a3 + 32) = v4;
  swift_unknownObjectWeakAssign();

  return a3;
}

uint64_t sub_2706C934C()
{
  sub_2706C80C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706C9394(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6_0();
  v4 = OUTLINED_FUNCTION_15_1();
  v5(v4);
  return a2;
}

uint64_t sub_2706C93F0()
{
  v1 = OUTLINED_FUNCTION_20_1();
  v2(v1);
  OUTLINED_FUNCTION_6_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2706C9444(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6_0();
  v4 = OUTLINED_FUNCTION_15_1();
  v5(v4);
  return a2;
}

uint64_t sub_2706C94A0()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(*(type metadata accessor for PasteboardDataTransferID(0) - 8) + 80);
  v8 = (v4 + v6 + v7) & ~v7;

  v9 = *(v3 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2706C95E0()
{
  OUTLINED_FUNCTION_20_1();
  v2 = *(sub_2706E576C() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_44_1();

  sub_2706C9224(v0, v4, v5, v6, v7, v1 + v3, v1 + v8);
}

uint64_t sub_2706C96B8()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2706C9780()
{
  OUTLINED_FUNCTION_20_1();
  sub_2706E576C();
  OUTLINED_FUNCTION_44_1();

  sub_2706C921C(v0, v2, v3, v4, v5, v1 + v6);
}

uint64_t OPACKDecodeNSData(void *a1)
{
  v1 = a1;
  v2 = OPACKDecodeData();

  return v2;
}

uint64_t sub_2706C982C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B10ControllerC5Event33_E6CE935C2BCACFC1E057289D071BF1FDLLO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2706C98C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
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

uint64_t sub_2706C9900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2706C9948(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2706E574C();
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  result = v0;
  *(v2 - 248) = v1 + 8;
  return result;
}

double OUTLINED_FUNCTION_10_7(uint64_t a1, ...)
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_15_8()
{

  sub_2706C5FF8();
}

uint64_t OUTLINED_FUNCTION_16_9()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_2706E5E3C();
}

void OUTLINED_FUNCTION_18_5()
{

  JUMPOUT(0x2743A5EF0);
}

uint64_t OUTLINED_FUNCTION_19_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2706E5F2C();
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return sub_2706E573C();
}

void OUTLINED_FUNCTION_25_3()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_34_4()
{
  v1 = *(v0 - 168);
  *(v0 - 280) = *(v0 - 176);
  *(v0 - 272) = v1;
}

uint64_t OUTLINED_FUNCTION_35_2(__n128 a1)
{
  *(v1 - 176) = a1;
  *(v1 - 160) = 0;
  *(v1 - 152) = 0;
  return v1 - 176;
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_2706C51F0(0x8000000000000000);
}

void OUTLINED_FUNCTION_42_2()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_43_2()
{

  JUMPOUT(0x2743A5EF0);
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_2706E5F8C();
}

uint64_t OUTLINED_FUNCTION_49_1()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_2706E5E3C();
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1)
{

  return swift_weakAssign();
}

void OUTLINED_FUNCTION_51_2()
{

  sub_2706C5FF8();
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1)
{

  return swift_getObjectType();
}

uint64_t sub_2706C9DEC(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_2706C9E54(v2, v1);
}

uint64_t sub_2706C9E54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2706C9EB4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_2706C9F34;
}

void sub_2706C9F34(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t DragObserver_iOS.__allocating_init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DragObserver_iOS.init(machServiceName:)(a1, a2);
  return v4;
}

uint64_t DragObserver_iOS.init(machServiceName:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = [objc_allocWithZone(type metadata accessor for DragObserver_iOS.InternalDragObserver()) init];
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  sub_270690D44(0, &qword_28081DAE0, 0x277D75EE0);
  v6 = sub_2706CA0F4(a1, a2);
  *(v3 + 16) = v6;
  [v6 setDelegate_];
  swift_weakAssign();
  [*(v3 + 16) activate];
  return v3;
}

id sub_2706CA0F4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2706E5A0C();

  v4 = [v2 initWithMachServiceName_];

  return v4;
}

uint64_t DragObserver_iOS.deinit()
{
  [*(v0 + 16) invalidate];

  sub_2706A59B4(v0 + 32);
  return v0;
}

uint64_t DragObserver_iOS.__deallocating_deinit()
{
  DragObserver_iOS.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2706CA1DC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2706C9E28(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2706CA304(uint64_t a1)
{
  OUTLINED_FUNCTION_3_9(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2706CA380(uint64_t a1)
{
  OUTLINED_FUNCTION_3_9(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 24))(v1, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2706CA404(int a1, id a2)
{
  v3 = v2;
  [a2 setDelegate_];
  v5 = [a2 sessionIdentifier];
  v6 = OBJC_IVAR____TtCC13UniversalDrag16DragObserver_iOSP33_46F4F7DBF7EBE5237C36EDB049F4D13E20InternalDragObserver_trackedSessions;
  swift_beginAccess();
  v7 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v6);
  sub_27068FF28(v7, v5, isUniquelyReferenced_nonNull_native);
  *(v3 + v6) = v10;
  return swift_endAccess();
}

uint64_t sub_2706CA53C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC13UniversalDrag16DragObserver_iOSP33_46F4F7DBF7EBE5237C36EDB049F4D13E20InternalDragObserver_trackedSessions;
  swift_beginAccess();
  v5 = sub_27068F904(a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEE0, &unk_2706E9150);
    sub_2706E5F5C();
    v8 = *(*(v10 + 56) + 8 * v7);
    sub_270690D44(0, &qword_28081DB70, 0x277D75EE8);
    sub_2706E5F6C();
    *(v2 + v4) = v10;
  }

  return swift_endAccess();
}

void sub_2706CA730(void *a1, void *a2)
{
  if (swift_weakLoadStrong())
  {
    v4 = sub_2706CAFB4(a2);
    type metadata accessor for DragController.DragSessionProxy();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = a1;
    [v6 setDelegate_];
    sub_2706CA304(v5);
    v7 = [v6 sessionIdentifier];
    swift_beginAccess();
    v8 = sub_2706CAED8(v7);
    swift_endAccess();

    if (v4 && (v9 = sub_2706C2200(), , v9))
    {
    }

    else
    {
      if (qword_28081C730 != -1)
      {
        swift_once();
      }

      v10 = sub_2706E58DC();
      __swift_project_value_buffer(v10, qword_2808292D8);
      v11 = sub_2706E58BC();
      v12 = sub_2706E5BEC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_270680000, v11, v12, "got empty previews", v13, 2u);
        MEMORY[0x2743A75B0](v13, -1, -1);
      }
    }
  }
}

uint64_t sub_2706CA990()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_2706CA380(result);

    return v1 & 1;
  }

  return result;
}

id sub_2706CAA28()
{
  v1 = OBJC_IVAR____TtCC13UniversalDrag16DragObserver_iOSP33_46F4F7DBF7EBE5237C36EDB049F4D13E20InternalDragObserver_trackedSessions;
  sub_270690D44(0, &qword_28081DB70, 0x277D75EE8);
  *&v0[v1] = sub_2706E59AC();
  v2 = OBJC_IVAR____TtCC13UniversalDrag16DragObserver_iOSP33_46F4F7DBF7EBE5237C36EDB049F4D13E20InternalDragObserver_imageRetryCountBySession;
  *&v0[v2] = sub_2706E59AC();
  swift_weakInit();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DragObserver_iOS.InternalDragObserver();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2706CAB20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DragObserver_iOS.InternalDragObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2706CABB4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_27068F764(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_10();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF50, &qword_2706E9170);
  OUTLINED_FUNCTION_2_6(v6);
  v7 = *(v14 + 48);
  v8 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v9 + 8))(v7 + *(v9 + 72) * v5, v8);
  v10 = *(*(v14 + 56) + 8 * v5);
  type metadata accessor for _BasePasteboardController.DataSessionProvider();
  OUTLINED_FUNCTION_0_8();
  sub_2706CB024(v11, v12, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_5_9();
  *v2 = v14;
  return v10;
}

uint64_t sub_2706CACAC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_27068F764(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_10();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB90, &qword_2706E9188);
  OUTLINED_FUNCTION_2_6(v6);
  v7 = *(v14 + 48);
  v8 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v9 + 8))(v7 + *(v9 + 72) * v5, v8);
  v10 = *(*(v14 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D270, &unk_2706EA090);
  OUTLINED_FUNCTION_0_8();
  sub_2706CB024(v11, v12, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_5_9();
  *v2 = v14;
  return v10;
}

uint64_t sub_2706CADB0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_27068F860(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_10();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D290, &qword_2706EA0B0);
  OUTLINED_FUNCTION_2_6(v6);
  v7 = *(v11 + 48);
  type metadata accessor for PasteboardDataTransferID(0);
  OUTLINED_FUNCTION_6_0();
  sub_270687394(v7 + *(v8 + 72) * v5);
  v9 = *(*(v11 + 56) + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28081DB80, &qword_2706E92A8);
  sub_2706CB024(&qword_28081CF88, type metadata accessor for PasteboardDataTransferID, &unk_2706ED72C);
  sub_2706E5F6C();
  *v2 = v11;
  return v9;
}

uint64_t sub_2706CAED8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_27068F904(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CEE0, &unk_2706E9150);
  sub_2706E5F5C();
  v6 = *(*(v8 + 56) + 8 * v5);
  sub_270690D44(0, &qword_28081DB70, 0x277D75EE8);
  sub_2706E5F6C();
  *v2 = v8;
  return v6;
}

uint64_t sub_2706CAFB4(void *a1)
{
  v1 = [a1 previewUpdates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_270690D44(0, &qword_28081DB78, 0x277D75EF8);
  v3 = sub_2706E5B1C();

  return v3;
}

uint64_t sub_2706CB024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return sub_2706E5F5C();
}

double OUTLINED_FUNCTION_3_9(uint64_t a1, ...)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return sub_2706E5F6C();
}

uint64_t sub_2706CB0FC()
{
  MEMORY[0x2743A75B0](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2706CB178(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(*(a1 + 16));
  v4 = *(a2 + 16);
  type metadata accessor for Completions();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(a2 + 16) = v5;
  sub_2706D21F8(3, v6);
  os_unfair_lock_unlock(*(a1 + 16));

  return v4;
}

uint64_t sub_2706CB238(void *a1)
{
  v2 = sub_2706E663C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2706B462C(a1, v11);
  sub_2706E661C();
  sub_2706E662C();
  (*(v3 + 8))(v5, v2);
  sub_27068DE8C(v11);

  sub_2706CB3C0(v11, v9);
  if (!v10[3])
  {
    sub_2706CB430(v9);
    goto LABEL_5;
  }

  v6 = v9[0];
  v7 = v9[1];
  __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v7)
  {
LABEL_5:
    sub_2706B462C(a1, v9);
    v6 = sub_2706E5A4C();
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2706CB430(v11);

    return v6;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_2706CB430(v11);
  return v6;
}

uint64_t sub_2706CB3C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB98, "ʌ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706CB430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DB98, "ʌ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2706CB498()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v6 = sub_2706E58DC();
  v7 = __swift_project_value_buffer(v6, qword_2808292F0);
  v8 = MEMORY[0x28223BE20](v7);
  LOBYTE(v23) = v5 & 1;
  MEMORY[0x28223BE20](v8);
  sub_270694664(sub_2706CF620, v9, sub_2706A74AC, v22, v10, v11, v12, v13, v22[0], v22[1], v3, v22[3], v22[4], v22[5], v0, v23, v24, v25, v26, v27, v28, v29);
  if (v5)
  {
    type metadata accessor for Completion();
    OUTLINED_FUNCTION_21_3();
    swift_allocObject();
    OUTLINED_FUNCTION_15_9();
    v14 = sub_2706DD84C();
    sub_2706CBD18(v0, 0xC000000000000040, v14);
  }

  v15 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v25 = v15;
    v26 = v1;
    type metadata accessor for Completion();

    v24 = v16;
    v18 = (v16 + 40);
    do
    {
      v19 = *v18;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_21_3();
      swift_allocObject();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_15_9();
      v21 = sub_2706DD84C();
      (*(v19 + 64))(v3, v21, ObjectType, v19);
      swift_unknownObjectRelease();

      v18 += 2;
      --v17;
    }

    while (v17);

    v15 = v25;
    v1 = v26;
  }

  *(v1 + v15) = MEMORY[0x277D84F90];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2706B2770(v1, v3);
    swift_unknownObjectRelease();
  }

  sub_27069244C();
  OUTLINED_FUNCTION_16_0();
}

void sub_2706CB72C()
{
  switch(*(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state))
  {
    case 1:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v17 = sub_2706E58DC();
      __swift_project_value_buffer(v17, qword_2808292F0);
      OUTLINED_FUNCTION_13_10();

      oslog = sub_2706E58BC();
      v2 = sub_2706E5BFC();

      if (!os_log_type_enabled(oslog, v2))
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_14_8();
      v3 = swift_slowAlloc();
      OUTLINED_FUNCTION_11_8();
      v4 = swift_slowAlloc();
      v21 = v4;
      *v3 = 136446210;
      v18 = sub_2706CD480();
      sub_2706C83E8(v18, v19, &v21);
      OUTLINED_FUNCTION_13_10();

      *(v3 + 4) = v0;
      v7 = "%{public}s: Data Session deactivated while activating";
      goto LABEL_17;
    case 2:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v8 = sub_2706E58DC();
      __swift_project_value_buffer(v8, qword_2808292F0);
      OUTLINED_FUNCTION_13_10();

      v9 = sub_2706E58BC();
      v10 = sub_2706E5C1C();

      if (os_log_type_enabled(v9, v10))
      {
        OUTLINED_FUNCTION_14_8();
        v11 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_8();
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136446210;
        v13 = sub_2706CD480();
        v15 = sub_2706C83E8(v13, v14, &v21);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_270680000, v9, v10, "%{public}s: Data Session Deactivating", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        v16 = OUTLINED_FUNCTION_7_8();
        MEMORY[0x2743A75B0](v16);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
      }

      sub_2706CD468(3);

      sub_2706CD918(0, 0);
      break;
    case 3:
    case 4:
      return;
    default:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v1 = sub_2706E58DC();
      __swift_project_value_buffer(v1, qword_2808292F0);
      OUTLINED_FUNCTION_13_10();

      oslog = sub_2706E58BC();
      v2 = sub_2706E5BFC();

      if (os_log_type_enabled(oslog, v2))
      {
        OUTLINED_FUNCTION_14_8();
        v3 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_8();
        v4 = swift_slowAlloc();
        v21 = v4;
        *v3 = 136446210;
        v5 = sub_2706CD480();
        sub_2706C83E8(v5, v6, &v21);
        OUTLINED_FUNCTION_13_10();

        *(v3 + 4) = v0;
        v7 = "%{public}s: Data Session deactivated while inactive";
LABEL_17:
        _os_log_impl(&dword_270680000, oslog, v2, v7, v3, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v4);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
      }

      else
      {
LABEL_18:
      }

      break;
  }
}

uint64_t sub_2706CBAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PasteboardMessage(0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v10 + 16))(v9, a2);
  swift_storeEnumTagMultiPayload();
  sub_2706928E0(v9, a3);
  return sub_2706CF798();
}

uint64_t sub_2706CBBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = a3;
  v6 = type metadata accessor for PasteboardMessage(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA08, &qword_2706E7F38);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  v12 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
  v13 = sub_2706E576C();
  v14 = *(*(v13 - 8) + 16);
  v14(v8, a1 + v12, v13);
  v14(&v8[v10], a2, v13);
  sub_270690CD8(v17, &v8[v11]);
  swift_storeEnumTagMultiPayload();
  sub_2706928E0(v8, v18);
  return sub_2706CF798();
}

uint64_t sub_2706CBD18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PasteboardMessage(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CA18, &qword_2706E7F40) + 48);
  v10 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
  v11 = sub_2706E576C();
  (*(*(v11 - 8) + 16))(v8, a1 + v10, v11);
  *&v8[v9] = a2;
  swift_storeEnumTagMultiPayload();
  sub_270694BA4(a2);
  sub_2706928E0(v8, a3);
  return sub_2706CF798();
}

uint64_t sub_2706CBE48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PasteboardMessage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C9A0, &qword_2706E7F18);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  v14 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
  v15 = sub_2706E576C();
  (*(*(v15 - 8) + 16))(v10, a1 + v14, v15);
  sub_270690CD8(a3, &v10[v12]);
  *&v10[v13] = a2;
  swift_storeEnumTagMultiPayload();
  sub_270694BA4(a2);
  sub_2706928E0(v10, a4);
  return sub_2706CF798();
}

void sub_2706CBF94(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!sub_2706CE17C(a1))
  {
LABEL_4:
    OUTLINED_FUNCTION_16_10();

    sub_2706CE218();
    return;
  }

  if (a4)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v10 = v9;
  ObjectType = swift_getObjectType();
  (*(v10 + 48))(a2 & 1, a3, a5, ObjectType, v10);

  swift_unknownObjectRelease();
}

void sub_2706CC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_2706CE17C(a1))
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(a2, a3, a4, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_10();

    sub_2706CE218();
  }
}

void sub_2706CC138(uint64_t a1, uint64_t a2)
{
  if (sub_2706CE17C(a1))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 64))(0, a2, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_16_10();

    sub_2706CE218();
  }
}

void sub_2706CC1E8()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  if (sub_2706CE17C(v4))
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    ObjectType = swift_getObjectType();
    sub_270694B50();
    OUTLINED_FUNCTION_18_6();
    v9 = swift_allocError();
    *v10 = v7 | 0xA000000000000000;
    v11 = *(v6 + 64);
    sub_270694BA4(v3);

    v11(v9, v1, ObjectType, v6);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_16_0();
  }

  else
  {
    sub_270694B50();
    OUTLINED_FUNCTION_18_6();
    swift_allocError();
    *v13 = v3;
    sub_270694BA4(v3);
    sub_2706DD768();
    OUTLINED_FUNCTION_16_0();
  }
}

uint64_t sub_2706CC330(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_20_1();
  v5 = type metadata accessor for PasteboardDataTransferID(v4);
  v6 = OUTLINED_FUNCTION_16_3(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  (*(a2 + 32))(v2, a2);
  sub_2706E572C();
  v7 = OUTLINED_FUNCTION_4_9();
  v10 = sub_2706B8734(v7, v8, v9);
  v11 = MEMORY[0x2743A5EC0](v10);

  OUTLINED_FUNCTION_2_7();
  sub_2706CF798();
  MEMORY[0x2743A5EF0](58, 0xE100000000000000);
  v12 = sub_2706E671C();
  MEMORY[0x2743A5EF0](v12);

  return v11;
}

uint64_t sub_2706CC428(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {

      return v8;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    v12 = *(a3 + 16 * v6 + 32);
    v13 = v12;
    swift_unknownObjectRetain();
    v9 = v5(&v13);
    if (v3)
    {

      swift_unknownObjectRelease();
      return v8;
    }

    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v14 = v8;
      if ((result & 1) == 0)
      {
        result = sub_2706BF8C4(0, *(v8 + 16) + 1, 1);
        v8 = v14;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_2706BF8C4((v10 > 1), v11 + 1, 1);
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + 16 * v11 + 32) = v12;
    }

    else
    {
      result = swift_unknownObjectRelease();
    }

    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2706CC58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v4 = v3;
  v7 = type metadata accessor for PasteboardDataTransferID(0);
  v8 = OUTLINED_FUNCTION_16_3(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v90 = v10 - v9;
  v94 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v87 = v15;
  v88 = &v82[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v82[-v16];
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v18 = sub_2706E58DC();
  v19 = __swift_project_value_buffer(v18, qword_2808292F0);
  v20 = *(v12 + 16);
  v92 = a1;
  v85 = v20;
  v86 = v12 + 16;
  v20(v17, a1, v94);

  swift_unknownObjectRetain();
  v21 = sub_2706E58BC();
  v22 = sub_2706E5C1C();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_11_8();
    v23 = swift_slowAlloc();
    v91 = v19;
    v83 = v22;
    v24 = v23;
    v84 = swift_slowAlloc();
    v93[0] = v84;
    *v24 = 136446722;
    v25 = sub_2706CD480();
    v27 = sub_2706C83E8(v25, v26, v93);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    sub_2706E572C();
    v28 = OUTLINED_FUNCTION_4_9();
    v31 = sub_2706B8734(v28, v29, v30);
    v32 = MEMORY[0x2743A5EC0](v31);
    v34 = v33;

    v35 = OUTLINED_FUNCTION_21_6();
    v36(v35);
    v37 = sub_2706C83E8(v32, v34, v93);

    *(v24 + 14) = v37;
    *(v24 + 22) = 2082;
    ObjectType = swift_getObjectType();
    (*(v89 + 32))(ObjectType);
    sub_2706E572C();
    v39 = OUTLINED_FUNCTION_4_9();
    v42 = sub_2706B8734(v39, v40, v41);
    v43 = MEMORY[0x2743A5EC0](v42);
    v45 = v44;

    OUTLINED_FUNCTION_2_7();
    sub_2706CF798();
    v46 = sub_2706C83E8(v43, v45, v93);

    *(v24 + 24) = v46;
    _os_log_impl(&dword_270680000, v21, v83, "Session %{public}s Request Representation: rep=%{public}s id=%{public}s", v24, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_10();
    MEMORY[0x2743A75B0]();
    OUTLINED_FUNCTION_8_10();
    MEMORY[0x2743A75B0]();
  }

  else
  {

    v47 = OUTLINED_FUNCTION_21_6();
    v48(v47);
  }

  if (*(v4 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state) == 3 && (v49 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers, swift_beginAccess(), !*(*(v4 + v49) + 16)))
  {

    v68 = sub_2706E58BC();
    sub_2706E5BFC();

    v69 = OUTLINED_FUNCTION_20_5();
    if (os_log_type_enabled(v69, v70))
    {
      OUTLINED_FUNCTION_14_8();
      swift_slowAlloc();
      OUTLINED_FUNCTION_9_8();
      v71 = swift_slowAlloc();
      v93[0] = v71;
      *v21 = 136446210;
      v72 = sub_2706CD480();
      sub_2706C83E8(v72, v73, v93);
      OUTLINED_FUNCTION_13_10();

      *(v21 + 4) = v4;
      OUTLINED_FUNCTION_6_10();
      _os_log_impl(v74, v75, v76, v77, v78, v79);
      __swift_destroy_boxed_opaque_existential_1(v71);
      OUTLINED_FUNCTION_8_10();
      MEMORY[0x2743A75B0]();
      v80 = OUTLINED_FUNCTION_7_8();
      MEMORY[0x2743A75B0](v80);
    }

    sub_270694B50();
    OUTLINED_FUNCTION_18_6();
    swift_allocError();
    *v81 = 0xC000000000000010;
    return swift_willThrow();
  }

  else
  {
    v50 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
    swift_beginAccess();
    sub_2706E25E4();
    v51 = *(*(v4 + v50) + 16);
    sub_2706E26B4(v51);
    v52 = *(v4 + v50);
    *(v52 + 16) = v51 + 1;
    v53 = v52 + 16 * v51;
    *(v53 + 32) = a2;
    v54 = v89;
    *(v53 + 40) = v89;
    *(v4 + v50) = v52;
    swift_endAccess();
    v91 = "ons";
    v55 = swift_allocObject();
    *(v55 + 24) = v54;
    swift_unknownObjectWeakInit();
    v56 = v88;
    v57 = v94;
    v85(v88, v92, v94);
    v58 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v55;
    *(v59 + 24) = v4;
    (*(v12 + 32))(v59 + v58, v56, v57);
    type metadata accessor for Completion();
    OUTLINED_FUNCTION_21_3();
    swift_allocObject();
    OUTLINED_FUNCTION_13_10();

    swift_unknownObjectRetain();
    v60 = OUTLINED_FUNCTION_15_9();
    v63 = sub_2706DD8C4(v60, v61, 124, v62, v59);
    v64 = swift_getObjectType();
    (*(v54 + 40))(v63, v64, v54);
    v65 = v90;
    (*(v54 + 32))(v64, v54);
    OUTLINED_FUNCTION_21_3();
    swift_allocObject();
    OUTLINED_FUNCTION_15_9();
    v66 = sub_2706DD84C();
    sub_2706CBBB8(v4, v92, v65, v66);

    OUTLINED_FUNCTION_2_7();
    return sub_2706CF798();
  }
}

void sub_2706CCC3C(uint64_t a1)
{
  v3 = v1;
  switch(*(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state))
  {
    case 1:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v42 = sub_2706E58DC();
      __swift_project_value_buffer(v42, qword_2808292F0);
      OUTLINED_FUNCTION_24_3();
      v43 = sub_2706E58BC();
      sub_2706E5C1C();

      v44 = OUTLINED_FUNCTION_20_5();
      if (os_log_type_enabled(v44, v45))
      {
        OUTLINED_FUNCTION_14_8();
        swift_slowAlloc();
        OUTLINED_FUNCTION_9_8();
        v46 = swift_slowAlloc();
        v60[0] = v46;
        *v2 = 136446210;
        v47 = sub_2706CD480();
        v49 = sub_2706C83E8(v47, v48, v60);

        *(v2 + 4) = v49;
        OUTLINED_FUNCTION_6_10();
        _os_log_impl(v50, v51, v52, v53, v54, v55);
        __swift_destroy_boxed_opaque_existential_1(v46);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
        v56 = OUTLINED_FUNCTION_7_8();
        MEMORY[0x2743A75B0](v56);
      }

      v57 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_completions);
      swift_beginAccess();

      MEMORY[0x2743A5F60](v58);
      sub_2706E2658(*((*(v57 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_2706E5B4C();
      swift_endAccess();
      goto LABEL_20;
    case 2:
    case 3:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v4 = sub_2706E58DC();
      __swift_project_value_buffer(v4, qword_2808292F0);
      OUTLINED_FUNCTION_24_3();
      v5 = sub_2706E58BC();
      sub_2706E5C1C();

      v6 = OUTLINED_FUNCTION_20_5();
      if (os_log_type_enabled(v6, v7))
      {
        OUTLINED_FUNCTION_14_8();
        swift_slowAlloc();
        OUTLINED_FUNCTION_9_8();
        v8 = swift_slowAlloc();
        v60[0] = v8;
        *v2 = 136446210;
        v9 = sub_2706CD480();
        v11 = sub_2706C83E8(v9, v10, v60);

        *(v2 + 4) = v11;
        OUTLINED_FUNCTION_6_10();
        _os_log_impl(v12, v13, v14, v15, v16, v17);
        __swift_destroy_boxed_opaque_existential_1(v8);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
        v18 = OUTLINED_FUNCTION_7_8();
        MEMORY[0x2743A75B0](v18);
      }

      sub_2706DD768();
      break;
    case 4:
      sub_2706B2CD4();
      v19 = sub_2706E483C(4294960587, 0xD00000000000001DLL, 0x80000002706F14C0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/PasteboardDataSession.swift", 93, 2, 84);
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v20 = sub_2706E58DC();
      v21 = __swift_project_value_buffer(v20, qword_2808292F0);
      MEMORY[0x28223BE20](v21);
      v59[2] = v19;

      sub_2706940CC(sub_2706A74AC, v59, v21, v3);
      v22 = v19;
      sub_2706DD768();

      break;
    default:
      if (qword_28081C738 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v23 = sub_2706E58DC();
      __swift_project_value_buffer(v23, qword_2808292F0);
      OUTLINED_FUNCTION_24_3();
      v24 = sub_2706E58BC();
      sub_2706E5C1C();

      v25 = OUTLINED_FUNCTION_20_5();
      if (os_log_type_enabled(v25, v26))
      {
        OUTLINED_FUNCTION_14_8();
        swift_slowAlloc();
        OUTLINED_FUNCTION_9_8();
        v27 = swift_slowAlloc();
        v60[0] = v27;
        *v2 = 136446210;
        v28 = sub_2706CD480();
        v30 = sub_2706C83E8(v28, v29, v60);

        *(v2 + 4) = v30;
        OUTLINED_FUNCTION_6_10();
        _os_log_impl(v31, v32, v33, v34, v35, v36);
        __swift_destroy_boxed_opaque_existential_1(v27);
        OUTLINED_FUNCTION_8_10();
        MEMORY[0x2743A75B0]();
        v37 = OUTLINED_FUNCTION_7_8();
        MEMORY[0x2743A75B0](v37);
      }

      v38 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_completions);
      swift_beginAccess();

      MEMORY[0x2743A5F60](v39);
      sub_2706E2658(*((*(v38 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_2706E5B4C();
      swift_endAccess();

      sub_2706CD468(1);
      v40 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
      type metadata accessor for Completion();
      OUTLINED_FUNCTION_21_3();
      swift_allocObject();
      OUTLINED_FUNCTION_24_3();
      v41 = sub_2706DD8C4(0xD00000000000005DLL, 0x80000002706F1430, 68, sub_2706CF62C, v1);
      sub_2706CBAD4(v1, v1 + v40, v41, 0);
LABEL_20:

      break;
  }
}

uint64_t sub_2706CD1DC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v10 = *v6;
    v7 = v10;
    swift_unknownObjectRetain();
    v8 = a1(&v10);
    if (v3)
    {
      break;
    }

    if (v8)
    {
      return v7;
    }

    swift_unknownObjectRelease();
    ++v6;
    if (!--v5)
    {
      return 0;
    }
  }

  swift_unknownObjectRelease();
  return v7;
}

void sub_2706CD29C(char a1)
{
  v2 = v1;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_2808292D8);

  oslog = sub_2706E58BC();
  v5 = sub_2706E5BEC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    v17 = &type metadata for PasteboardDataSession.State;
    v18 = v7;
    LOBYTE(v16[0]) = a1;
    v8 = sub_2706CB238(v16);
    v10 = sub_2706C83E8(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = *(v2 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state);
    v17 = &type metadata for PasteboardDataSession.State;
    LOBYTE(v16[0]) = v11;
    v12 = sub_2706CB238(v16);
    v14 = sub_2706C83E8(v12, v13, &v18);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_270680000, oslog, v5, "PasteboardDataSession: %{public}s → %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v7, -1, -1);
    MEMORY[0x2743A75B0](v6, -1, -1);
  }
}

void sub_2706CD468(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state);
  *(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state) = a1;
  sub_2706CD29C(v2);
}

uint64_t sub_2706CD480()
{
  v1 = v0;
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, *(v1 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_contents) + OBJC_IVAR____TtC13UniversalDrag18PasteboardContents_source, v2);
  v9 = sub_2706E572C();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  v12 = sub_2706B8734(8, v9, v11);
  v13 = MEMORY[0x2743A5EC0](v12);

  v22 = v13;
  MEMORY[0x2743A5EF0](58, 0xE100000000000000);
  sub_2706E572C();
  v14 = OUTLINED_FUNCTION_4_9();
  v17 = sub_2706B8734(v14, v15, v16);
  v18 = MEMORY[0x2743A5EC0](v17);
  v20 = v19;

  MEMORY[0x2743A5EF0](v18, v20);

  return v22;
}

void sub_2706CD600()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_completions;
  type metadata accessor for Completions();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F90];
  *(v15 + 16) = MEMORY[0x277D84F90];
  *(v0 + v14) = v15;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state) = 0;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers) = v16;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_delegate + 8) = 0;
  v17 = swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_controller) = v6;
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_contents) = v4;
  *(v17 + 8) = v2;
  swift_unknownObjectWeakAssign();

  sub_2706E575C();

  swift_unknownObjectRelease();
  (*(v9 + 32))(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id, v13, v7);
  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706CD77C(uint64_t a1, uint64_t a2)
{
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v3 = sub_2706E58DC();
  __swift_project_value_buffer(v3, qword_2808292F0);

  v4 = sub_2706E58BC();
  v5 = sub_2706E5C1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_2706CD480();
    v10 = sub_2706C83E8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_270680000, v4, v5, "%{public}s: Data Session Activated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743A75B0](v7, -1, -1);
    MEMORY[0x2743A75B0](v6, -1, -1);
  }

  sub_2706CD468(2);

  sub_2706DAAE8(a1);
}

void sub_2706CD918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
    swift_beginAccess();
    swift_unknownObjectRetain_n();
    v7 = sub_2706CF800((v3 + v6), a1, a2);
    v8 = *(*(v3 + v6) + 16);
    if (v8 < v7)
    {
      __break(1u);
      swift_endAccess();
      __break(1u);
      return;
    }

    sub_2706D9AD0(v7, v8);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  v9 = *(v3 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_state);
  if (qword_28081C738 != -1)
  {
    swift_once();
  }

  v10 = sub_2706E58DC();
  __swift_project_value_buffer(v10, qword_2808292F0);
  swift_unknownObjectRetain();
  swift_retain_n();
  v11 = sub_2706E58BC();
  v12 = sub_2706E5C1C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v13 = 136315650;
    v15 = sub_2706CD480();
    v17 = sub_2706C83E8(v15, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    if (a1)
    {
      ObjectType = swift_getObjectType();
      v19 = sub_2706CC330(ObjectType, a2);
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v22 = sub_2706C83E8(v19, v21, v27);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2048;
    v23 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
    swift_beginAccess();
    v24 = *(*(v3 + v23) + 16);

    *(v13 + 24) = v24;

    _os_log_impl(&dword_270680000, v11, v12, "%s: Receiver Finished id=%{public}s, %ld remaining", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v14, -1, -1);
    MEMORY[0x2743A75B0](v13, -1, -1);
  }

  else
  {
  }

  if (v9 == 3)
  {
    v25 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
    swift_beginAccess();
    if (!*(*(v3 + v25) + 16))
    {
      type metadata accessor for Completion();
      swift_allocObject();

      v26 = sub_2706DD8C4(0xD00000000000005DLL, 0x80000002706F1430, 216, sub_2706CF7F8, v3);
      sub_2706CBAD4(v3, v3 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id, v26, 1);
    }
  }
}

uint64_t sub_2706CDC80(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(a2 + 24);
    if (a1)
    {
      v33 = a1;
      v14 = a1;
      v15 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
      if (swift_dynamicCast())
      {
        v16 = v32;
        if (v32 >> 61 == 5)
        {

          sub_270688D9C(v16);
          goto LABEL_10;
        }
      }

      else
      {
        v16 = 0xC000000000000040;
      }

      if (qword_28081C738 != -1)
      {
        swift_once();
      }

      v17 = sub_2706E58DC();
      v18 = __swift_project_value_buffer(v17, qword_2808292F0);
      v19 = v18;
      MEMORY[0x28223BE20](v18);
      *(&v31 - 4) = a3;
      *(&v31 - 3) = a4;
      v29 = v12;
      v30 = v13;
      v20 = a1;
      sub_270694BF4(sub_2706CF7EC, (&v31 - 6), v19, a1, v21, v22, v23, v24, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
      ObjectType = swift_getObjectType();
      (*(v13 + 32))(ObjectType, v13);
      type metadata accessor for Completion();
      swift_allocObject();
      v26 = sub_2706DD84C();
      sub_2706CBE48(a3, v16, v10, v26);

      sub_270688D9C(v16);

      sub_2706CF798();
    }

LABEL_10:
    v27 = swift_unknownObjectRetain();
    sub_2706CD918(v27, v13);
    return swift_unknownObjectRelease_n();
  }

  result = sub_2706E5F8C();
  __break(1u);
  return result;
}

uint64_t sub_2706CDF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PasteboardDataTransferID(0);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2706E5E3C();

  v6 = sub_2706CD480();
  MEMORY[0x2743A5EF0](v6);

  MEMORY[0x2743A5EF0](0xD000000000000015, 0x80000002706F1540);
  v7 = sub_2706E572C();
  v9 = sub_2706B8734(8, v7, v8);
  v10 = MEMORY[0x2743A5EC0](v9);
  v12 = v11;

  MEMORY[0x2743A5EF0](v10, v12);

  MEMORY[0x2743A5EF0](1029990688, 0xE400000000000000);
  ObjectType = swift_getObjectType();
  (*(a4 + 32))(ObjectType, a4);
  v14 = sub_2706E572C();
  v16 = sub_2706B8734(8, v14, v15);
  v17 = MEMORY[0x2743A5EC0](v16);
  v19 = v18;

  sub_2706CF798();
  MEMORY[0x2743A5EF0](v17, v19);

  return 0x206E6F6973736553;
}

uint64_t sub_2706CE17C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v7[2] = a1;

  v5 = sub_2706CD1DC(sub_2706CFC2C, v7, v4);

  return v5;
}

void sub_2706CE218()
{
  OUTLINED_FUNCTION_21_0();
  v24 = v1;
  v3 = v2;
  v5 = v4;
  if (qword_28081C738 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v6 = sub_2706E58DC();
  v7 = __swift_project_value_buffer(v6, qword_2808292F0);
  MEMORY[0x28223BE20](v7);
  v22 = v0;
  v23 = v5;
  sub_270694BA4(v3);
  sub_270694BF8();
  v26 = type metadata accessor for Completion();
  OUTLINED_FUNCTION_21_3();
  swift_allocObject();
  v27 = "ons";
  OUTLINED_FUNCTION_15_9();
  v8 = sub_2706DD84C();
  sub_2706CBE48(v0, v3, v5, v8);

  v9 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_transfers;
  v10 = swift_beginAccess();
  v11 = *(v0 + v9);
  MEMORY[0x28223BE20](v10);
  v22 = v5;

  v25 = sub_2706CC428(sub_2706CF9F8, &v21, v11);
  v12 = *(v25 + 16);
  if (v12)
  {
    sub_270694B50();
    v13 = (v25 + 40);
    do
    {
      v14 = *v13;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_18_6();
      v16 = swift_allocError();
      *v17 = v3;
      OUTLINED_FUNCTION_21_3();
      swift_allocObject();
      sub_270694BA4(v3);
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_15_9();
      v18 = sub_2706DD84C();
      (*(v14 + 64))(v16, v18, ObjectType, v14);

      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  if (v24)
  {
    sub_270694B50();
    OUTLINED_FUNCTION_18_6();
    v19 = swift_allocError();
    *v20 = v3;
    sub_270694BA4(v3);

    sub_2706DD768();
  }

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706CE4F4()
{
  sub_2706E5E3C();
  v0 = sub_2706CD480();

  MEMORY[0x2743A5EF0](0xD000000000000016, 0x80000002706F1590);
  v1 = sub_2706E572C();
  v3 = sub_2706B8734(8, v1, v2);
  v4 = MEMORY[0x2743A5EC0](v3);
  v6 = v5;

  MEMORY[0x2743A5EF0](v4, v6);

  return v0;
}

uint64_t sub_2706CE5D0(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for PasteboardDataTransferID(0);
  v4 = OUTLINED_FUNCTION_16_3(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  (*(v5 + 32))(ObjectType, v5);
  LOBYTE(a1) = sub_2706E573C();
  OUTLINED_FUNCTION_2_7();
  sub_2706CF798();
  return a1 & 1;
}

uint64_t sub_2706CE694(uint64_t a1, char a2)
{
  sub_2706E5E3C();
  v3 = sub_2706CD480();

  MEMORY[0x2743A5EF0](0xD000000000000025, 0x80000002706F1490);
  if (a2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2743A5EF0](v4, v5);

  return v3;
}

void sub_2706CE75C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v5 = sub_2706E58DC();
    v6 = __swift_project_value_buffer(v5, qword_2808292F0);
    MEMORY[0x28223BE20](v6);
    sub_270694664(sub_2706CF9E8, a2, sub_2706A5A60, v19, v7, v8, v9, v10, v19[0], v19[1], a1, v19[3], v19[4], v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8]);
  }

  else
  {
    if (qword_28081C738 != -1)
    {
      swift_once();
    }

    v11 = sub_2706E58DC();
    __swift_project_value_buffer(v11, qword_2808292F0);

    v12 = sub_2706E58BC();
    v13 = sub_2706E5C1C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v16 = sub_2706CD480();
      v18 = sub_2706C83E8(v16, v17, v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_270680000, v12, v13, "%s: Pasteboard Data Session Finished", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x2743A75B0](v15, -1, -1);
      MEMORY[0x2743A75B0](v14, -1, -1);
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2706B2770(a2, 0);
    swift_unknownObjectRelease();
  }

  sub_27069244C();
}

uint64_t sub_2706CE9B4()
{
  sub_2706E5E3C();
  v0 = sub_2706CD480();

  MEMORY[0x2743A5EF0](0xD000000000000022, 0x80000002706F1560);
  return v0;
}

uint64_t sub_2706CEA3C()
{
  v1 = OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_id;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);

  sub_2706A59B4(v0 + OBJC_IVAR____TtC13UniversalDrag21PasteboardDataSession_delegate);
  return v0;
}

uint64_t sub_2706CEAE4()
{
  sub_2706CEA3C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706CEB64(uint64_t a1)
{
  result = sub_2706E576C();
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

_BYTE *storeEnumTagSinglePayload for PasteboardDataSession.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706CECF4);
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

uint64_t sub_2706CED40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2706E576C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2706CED9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2706E576C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2706CEE08(uint64_t a1)
{
  result = sub_2706E576C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2706CEEBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2706E631C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2706CEF44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DC08, &qword_2706ED858);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706CF584();
  sub_2706E66AC();
  sub_2706E576C();
  OUTLINED_FUNCTION_1_11();
  sub_2706CF5D8(v8, v9, MEMORY[0x277CC95F8]);
  sub_2706E60DC();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_2706CF0A0()
{
  OUTLINED_FUNCTION_20_1();
  sub_2706E576C();
  OUTLINED_FUNCTION_1_11();
  sub_2706CF5D8(v0, v1, MEMORY[0x277CC9600]);

  return sub_2706E59DC();
}

uint64_t sub_2706CF110()
{
  sub_2706E65EC();
  sub_2706E576C();
  OUTLINED_FUNCTION_1_11();
  sub_2706CF5D8(v0, v1, MEMORY[0x277CC9600]);
  sub_2706E59DC();
  return sub_2706E660C();
}

uint64_t sub_2706CF188@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v25 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v28 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DBF8, &qword_2706ED850);
  OUTLINED_FUNCTION_4();
  v26 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for PasteboardDataTransferID(0);
  v15 = OUTLINED_FUNCTION_16_3(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706CF584();
  sub_2706E668C();
  if (!v2)
  {
    v19 = v25;
    v20 = v27;
    OUTLINED_FUNCTION_1_11();
    sub_2706CF5D8(v21, v22, MEMORY[0x277CC9618]);
    sub_2706E605C();
    (*(v26 + 8))(v13, v9);
    (*(v19 + 32))(v18, v28, v4);
    sub_2706A66AC(v18, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2706CF3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706CEEBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2706CF404(uint64_t a1)
{
  v2 = sub_2706CF584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706CF440(uint64_t a1)
{
  v2 = sub_2706CF584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706CF4B8()
{
  sub_2706E65EC();
  sub_2706E576C();
  OUTLINED_FUNCTION_1_11();
  sub_2706CF5D8(v0, v1, MEMORY[0x277CC9600]);
  sub_2706E59DC();
  return sub_2706E660C();
}

unint64_t sub_2706CF530()
{
  result = qword_28081DBF0;
  if (!qword_28081DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DBF0);
  }

  return result;
}

unint64_t sub_2706CF584()
{
  result = qword_28081DC00;
  if (!qword_28081DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DC00);
  }

  return result;
}

uint64_t sub_2706CF5D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2706CF634()
{
  MEMORY[0x2743A7670](v0 + 16);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706CF66C()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2706CF72C()
{
  OUTLINED_FUNCTION_20_1();
  v2 = sub_2706E576C();
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_2706CDC80(v0, v4, v5, v6);
}

uint64_t sub_2706CF798()
{
  v1 = OUTLINED_FUNCTION_20_1();
  v2(v1);
  OUTLINED_FUNCTION_6_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2706CF800(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_2706CF958(v6, a2);
  v9 = result;
  if (v3)
  {
    goto LABEL_4;
  }

  if (v8)
  {
    v9 = *(v6 + 16);
LABEL_4:
    swift_unknownObjectRelease();
    return v9;
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v12 = *(v6 + 16);
      if (v10 == v12)
      {
        break;
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (*(v6 + i) != a2)
      {
        if (v10 != v9)
        {
          if (v9 >= v12)
          {
            goto LABEL_19;
          }

          v15 = *(v6 + i);
          v14 = *(v6 + 32 + 16 * v9);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2706CF9D4(v6);
            v6 = v13;
          }

          *(v6 + 16 * v9 + 32) = v15;
          result = swift_unknownObjectRelease();
          if (v10 >= *(v6 + 16))
          {
            goto LABEL_20;
          }

          *(v6 + i) = v14;
          result = swift_unknownObjectRelease();
          *a1 = v6;
        }

        ++v9;
      }

      ++v10;
    }

    goto LABEL_4;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2706CF958(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 32); ; i += 2)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_2706CFA18()
{
  sub_270688D9C(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

_BYTE *storeEnumTagSinglePayload for PasteboardDataTransferID.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2706CFAECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2706CFB28()
{
  result = qword_28081DC10;
  if (!qword_28081DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DC10);
  }

  return result;
}

unint64_t sub_2706CFB80()
{
  result = qword_28081DC18;
  if (!qword_28081DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DC18);
  }

  return result;
}

unint64_t sub_2706CFBD8()
{
  result = qword_28081DC20;
  if (!qword_28081DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DC20);
  }

  return result;
}

double OUTLINED_FUNCTION_24_3()
{

  return result;
}

uint64_t sub_2706CFD6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2706CFE04(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_2706CFE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = sub_2706E611C();
    MEMORY[0x2743A5EF0](v4);

    a2 = 0x2065646F63;
  }

  return a2;
}

uint64_t sub_2706CFF10(uint64_t a1)
{
  v1 = archive_entry_filetype();

  if (((v1 + 0x4000) >> 12) | (16 * (v1 + 0x4000))) < 0xBu && ((0x569u >> (((v1 + 0x4000) >> 12) | (16 * v1))))
  {
    return asc_2706F194D[(((v1 + 0x4000) >> 12) | (16 * (v1 + 0x4000)))];
  }

  if (v1 == 40960)
  {
    return 6;
  }

  return 4;
}

uint64_t sub_2706CFF94(uint64_t a1)
{
  result = archive_entry_clone();
  if (result)
  {
    v3 = result;

    *(v1 + 16) = v3;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2706CFFE0()
{
  archive_entry_free();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706D0038()
{
  type metadata accessor for FileAttributeKey(0);
  OUTLINED_FUNCTION_12_9();
  sub_2706DA580(v0, v1, &unk_2706E7E30);
  v2 = sub_2706E59AC();
  v3 = *MEMORY[0x277CCA180];
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v11 = sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
  *&v10 = v4;
  sub_270690AAC(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_270690038(v9, v3, isUniquelyReferenced_nonNull_native);

  if (archive_entry_ctime_is_set())
  {
    v6 = *MEMORY[0x277CCA108];
    archive_entry_ctime();
    archive_entry_ctime_nsec();
    v11 = sub_2706E571C();
    __swift_allocate_boxed_opaque_existential_1(&v10);
    sub_2706E56FC();
    sub_270690AAC(&v10, v9);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_270690038(v9, v6, v7);
  }

  return v2;
}

uint64_t sub_2706D0234()
{
  result = archive_entry_symlink();
  if (result)
  {
    return sub_2706E5A9C();
  }

  return result;
}

uint64_t sub_2706D0278@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  OUTLINED_FUNCTION_16_3(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  if (a1(*(v5 + 16)))
  {

    sub_2706CFF10(v11);
    sub_2706E565C();
    v12 = OUTLINED_FUNCTION_23_5();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v3);
    sub_2706E560C();
    sub_2706ADE58(v10);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
  }

  else
  {
    v14 = sub_2706E565C();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  }
}

uint64_t sub_2706D03AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  OUTLINED_FUNCTION_16_3(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_32_3();
  v3 = sub_2706E565C();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  sub_2706D0260(v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) != 1)
  {
    (*(v5 + 32))(v9, v0, v3);
    sub_2706E564C();
    sub_2706E564C();
    v10 = sub_2706E5ABC();

    if ((v10 & 1) == 0)
    {
      (*(v5 + 8))(v9, v3);
      return 0;
    }

    type metadata accessor for ArchiveEntry();
    OUTLINED_FUNCTION_19_0();
    swift_allocObject();
    OUTLINED_FUNCTION_21_7();

    v12 = sub_2706CFF94(v11);
    v13 = sub_2706E564C();
    v15 = v14;
    if (v13 == sub_2706E564C() && v15 == v16)
    {
    }

    else
    {
      v18 = sub_2706E631C();

      if ((v18 & 1) == 0)
      {
        v19 = sub_2706E564C();
        v21 = v20;
        v22 = sub_2706E564C();
        v24 = v23;

        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v22;
        }

        v26 = 7;
        if (((v24 >> 60) & ((v22 & 0x800000000000000) == 0)) != 0)
        {
          v26 = 11;
        }

        v27 = sub_2706D06A0(v26 | (v25 << 16), v19, v21);
        v29 = v28;
        v31 = v30;
        v33 = v32;

        MEMORY[0x2743A5EC0](v27, v29, v31, v33);

        v34 = OUTLINED_FUNCTION_35_3();
        sub_2706D9D60(v34, v35, v12);

        goto LABEL_18;
      }
    }

    archive_entry_set_pathname_utf8();
LABEL_18:
    (*(v5 + 8))(v9, v3);
    return v12;
  }

  sub_2706ADE58(v0);
  return 0;
}

unint64_t sub_2706D06A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_2706E5ADC();

    return v4;
  }

  return result;
}

uint64_t *sub_2706D0750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = archive_read_new();
  OUTLINED_FUNCTION_20_6();
  swift_allocObject();
  v8 = sub_2706D0CD8(v7);
  if (!v3)
  {

    sub_2706D081C(v9, v8, v6);
    v8[3] = a2;
    v8[4] = a3;

    OUTLINED_FUNCTION_33_4();
    archive_read_open();
  }

  return v8;
}

uint64_t sub_2706D081C(uint64_t a1, uint64_t a2, char a3)
{
  set_format = archive_read_set_format();
  if (set_format == 1)
  {

    return 1;
  }

  else if (set_format)
  {
    v5 = archive_errno();
    if (archive_error_string())
    {
      v6 = sub_2706E5A9C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D0908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  data_into_fd = archive_read_data_into_fd();
  if (data_into_fd == 1)
  {

    return 1;
  }

  else if (data_into_fd)
  {
    v5 = archive_errno();
    if (archive_error_string())
    {
      v6 = sub_2706E5A9C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D0A2C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 && a3)
  {
    v4 = MEMORY[0x2743A6D20](a1);

    v5 = sub_2706D0BA4(a3);

    objc_autoreleasePoolPop(v4);
    return v5;
  }

  else
  {
    archive_set_static_error();
    return -1;
  }
}

uint64_t *sub_2706D0AAC()
{
  archive_read_disk_new();
  OUTLINED_FUNCTION_20_6();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_28_3();
  v2 = sub_2706D0CD8(v1);
  if (!v0)
  {
    sub_2706E55FC();
    if (v7)
    {
      archive_errno();
      if (archive_error_string())
      {
        sub_2706E5A9C();
      }

      v3 = sub_2706DA0E4();
      v4 = OUTLINED_FUNCTION_11_6(&type metadata for ArchiveError, v3);
      OUTLINED_FUNCTION_36_4(v4, v5);
    }
  }

  return v2;
}

uint64_t sub_2706D0BA4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);

  v6 = v4(v5);
  v8 = v7;

  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  *(v2 + 40) = v6;
  *(v2 + 48) = v8;
  if (v8 >> 60 == 15)
  {
    sub_2706A3BA4(v9, v10);
    return 0;
  }

  else
  {
    sub_2706A6E0C(v6, v8);
    sub_270692D3C(v6, v8);
    sub_2706A3BA4(v9, v10);
    v12 = sub_2706E56AC();
    v13 = [v12 bytes];
    v14 = v12;
    *a1 = v13;
    v15 = MEMORY[0x2743A5B30](v6, v8);
    sub_2706A3BA4(v6, v8);
    sub_2706A3BA4(v6, v8);
    return v15;
  }
}

uint64_t *sub_2706D0CD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2706E54AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[3] = sub_2706D0744;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0xF000000000000000;
  if (a1)
  {
    v2[2] = a1;
  }

  else
  {
    MEMORY[0x2743A5D60](v6);
    v9 = sub_2706E58EC();
    if ((v9 & 0x100000000) != 0)
    {
      v10 = 5;
    }

    else
    {
      v10 = v9;
    }

    v13 = v10;
    sub_2706D9998(MEMORY[0x277D84F90]);
    sub_2706DA580(&qword_28081DDE0, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    sub_2706E556C();
    sub_2706E549C();
    (*(v5 + 8))(v8, v4);
    swift_willThrow();

    sub_2706A3BA4(v2[5], v2[6]);
    swift_deallocPartialClassInstance();
  }

  return v2;
}

void *sub_2706D0EB4()
{
  archive_read_free();

  sub_2706A3BA4(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t sub_2706D0EE4()
{
  sub_2706D0EB4();
  v0 = OUTLINED_FUNCTION_20_6();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706D0F34()
{
  type metadata accessor for ArchiveEntry();
  OUTLINED_FUNCTION_19_0();
  v0 = swift_allocObject();
  result = archive_entry_new();
  if (result)
  {
    *(v0 + 16) = result;
    next_header2 = archive_read_next_header2();
    if (next_header2 != -20)
    {
      if (next_header2 == 1)
      {

        return 0;
      }

      else if (next_header2)
      {
        archive_errno();
        if (archive_error_string())
        {
          sub_2706E5A9C();
        }

        v3 = sub_2706DA0E4();
        v4 = OUTLINED_FUNCTION_11_6(&type metadata for ArchiveError, v3);
        OUTLINED_FUNCTION_36_4(v4, v5);
      }
    }

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2706D1010()
{
  v1 = sub_2706E54AC();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_29_3();
  data_block = archive_read_data_block();
  if (data_block)
  {
    if (data_block == 1)
    {
      return 0;
    }

    v7 = archive_errno();
    if (archive_error_string())
    {
      v8 = sub_2706E5A9C();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = sub_2706DA0E4();
    OUTLINED_FUNCTION_11_6(&type metadata for ArchiveError, v11);
    *v12 = v7;
    *(v12 + 8) = v8;
    *(v12 + 16) = v10;
  }

  else
  {
    sub_2706D9998(MEMORY[0x277D84F90]);
    sub_2706DA580(&qword_28081DDE0, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    sub_2706E556C();
    sub_2706E549C();
    (*(v3 + 8))(v0, v1);
  }

  swift_willThrow();
  return sub_270688E88(0, 0xC000000000000000);
}

void *sub_2706D1230(uint64_t a1)
{
  v2 = a1;
  archive_write_new();
  OUTLINED_FUNCTION_23_1();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_21_7();
  v4 = sub_2706D1408(v3, v2);
  if (!v1)
  {
    OUTLINED_FUNCTION_33_4();
    archive_write_open2();
  }

  return v4;
}

uint64_t sub_2706D12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a3)
  {

    v6 = sub_2706D1370(a3, a4 + a3);

    return v6;
  }

  else
  {
    archive_set_static_error();
    return -1;
  }
}

uint64_t sub_2706D1370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 24);

  v7 = v6(a1, a2);

  return v7;
}

void *sub_2706D1408(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = sub_2706E54AC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[3] = sub_2706D1228;
  v4[4] = 0;
  if (a1)
  {
    v4[2] = a1;

    sub_2706D1620(v12, v4, a2);
    if (v3)
    {
    }

    else
    {

      sub_2706D170C(v13, v4);
    }
  }

  else
  {
    MEMORY[0x2743A5D60](v9);
    v14 = sub_2706E58EC();
    if ((v14 & 0x100000000) != 0)
    {
      v15 = 5;
    }

    else
    {
      v15 = v14;
    }

    v17[3] = v15;
    sub_2706D9998(MEMORY[0x277D84F90]);
    sub_2706DA580(&qword_28081DDE0, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
    sub_2706E556C();
    sub_2706E549C();
    (*(v8 + 8))(v11, v7);
    swift_willThrow();

    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_2706D1620(uint64_t a1, uint64_t a2, char a3)
{
  v3 = archive_write_set_format();
  if (v3 == 1)
  {

    return 1;
  }

  else if (v3)
  {
    v5 = archive_errno();
    if (archive_error_string())
    {
      v6 = sub_2706E5A9C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D170C(uint64_t a1, uint64_t a2)
{
  v2 = archive_write_set_bytes_per_block();
  if (v2 == 1)
  {

    return 1;
  }

  else if (v2)
  {
    v4 = archive_errno();
    if (archive_error_string())
    {
      v5 = sub_2706E5A9C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D17EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = archive_write_header();
  if (v3 >= 2)
  {
    v4 = archive_errno();
    if (archive_error_string())
    {
      v5 = sub_2706E5A9C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7;
    swift_willThrow();
  }

  else
  {
  }

  return v3;
}

uint64_t sub_2706D18D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(*(a2 + 16));
  if (v3 == 1)
  {

    return 1;
  }

  else if (v3)
  {
    v5 = archive_errno();
    if (archive_error_string())
    {
      v6 = sub_2706E5A9C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2706DA0E4();
    OUTLINED_FUNCTION_11_6(&type metadata for ArchiveError, v9);
    *v10 = v5;
    *(v10 + 8) = v6;
    *(v10 + 16) = v8;
    swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2706D19AC()
{
  archive_write_free();

  return v0;
}

uint64_t sub_2706D19D4()
{
  sub_2706D19AC();
  v0 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2706D1A8C(uint64_t a1, void (*a2)(uint64_t))
{

  result = sub_2706D17EC(v2, v2, a1);
  if (!v3)
  {
    a2(result);

    return sub_2706D18D4(v7, v2, MEMORY[0x277D824E8]);
  }

  return result;
}

uint64_t sub_2706D1B14(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v13 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x2706D1BE8);
      }

      v14 = a1;

      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v14;
      v11 = v13;
      return sub_2706D9F08(v10, v11, v9, v2);
    case 2uLL:
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);

      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v8;
      v11 = v7;
      return sub_2706D9F08(v10, v11, v9, v2);
    case 3uLL:

      v6 = 0;
      v5 = 0;
      return sub_2706D9E04(v6, v5, v2);
    default:

      v5 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = a1;
      return sub_2706D9E04(v6, v5, v2);
  }
}

uint64_t sub_2706D1C58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  sub_2706DA1AC(a2, a3);
  sub_2706E25B4();
  v6 = *(*(a1 + 32) + 16);
  sub_2706E2684(v6);
  v7 = *(a1 + 32);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(a1 + 32) = v7;
  swift_endAccess();
  return sub_2706E5CEC();
}

uint64_t sub_2706D1D04@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_2706E5CDC();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  sub_2706D1D84(v2, a1);
  os_unfair_lock_unlock(*(v4 + 16));
}

void sub_2706D1D84(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    sub_2706DA1D8(v5, v6);
    sub_2706D9BD0(0, 1);
    swift_endAccess();
    v7 = v6 & 0x3000000000000000;
    if ((v6 & 0x3000000000000000) == 0x3000000000000000)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    if ((v6 & 0x3000000000000000) != 0x3000000000000000)
    {
      v7 = v6;
    }

    *a2 = v8;
    a2[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2706D1E2C()
{

  return v0;
}

uint64_t sub_2706D1E5C()
{
  sub_2706D1E2C();
  v0 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_2706D1EA0()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  v0[2] = v1;
  v3 = dispatch_semaphore_create(0);
  v4 = MEMORY[0x277D84F90];
  v0[3] = v3;
  v0[4] = v4;
  return v0;
}

uint64_t sub_2706D1F30()
{
  v0 = sub_2706E58DC();
  __swift_allocate_value_buffer(v0, qword_28081DC28);
  __swift_project_value_buffer(v0, qword_28081DC28);
  return sub_2706E58CC();
}

void sub_2706D1FA8(void *a1)
{
  v2 = v1;
  if (qword_28081C748 != -1)
  {
    swift_once();
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_28081DC28);

  sub_2706DA380(a1);
  oslog = sub_2706E58BC();
  v5 = sub_2706E5BEC();
  sub_2706DA390(a1);

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136446722;
    v8 = sub_2706E572C();
    v10 = sub_2706B8734(8, v8, v9);
    v11 = MEMORY[0x2743A5EC0](v10);
    v13 = v12;

    v14 = sub_2706C83E8(v11, v13, &v25);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2082;
    v24 = &type metadata for ArchiveTransferSource.State;
    v23[0] = a1;
    sub_2706DA380(a1);
    v15 = sub_2706CB238(v23);
    v17 = sub_2706C83E8(v15, v16, &v25);

    *(v6 + 14) = v17;
    *(v6 + 22) = 2082;
    v18 = *(v2 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state);
    v24 = &type metadata for ArchiveTransferSource.State;
    v23[0] = v18;
    sub_2706DA380(v18);
    v19 = sub_2706CB238(v23);
    v21 = sub_2706C83E8(v19, v20, &v25);

    *(v6 + 24) = v21;
    _os_log_impl(&dword_270680000, oslog, v5, "%{public}s %{public}s → %{public}s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v7, -1, -1);
    MEMORY[0x2743A75B0](v6, -1, -1);
  }
}

void sub_2706D21F8(void *a1, __n128 a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state);
  *(v2 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state) = a1;
  sub_2706DA380(a1);
  sub_2706D1FA8(v4);
  sub_2706DA390(v4);

  sub_2706DA390(a1);
}

void sub_2706D2258()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v25 = v2;
  v26 = v3;
  sub_2706E5C3C();
  OUTLINED_FUNCTION_4();
  v23 = v5;
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v22 = v7 - v6;
  sub_2706E5C2C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v9 = sub_2706E594C();
  v10 = OUTLINED_FUNCTION_16_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  type metadata accessor for Completions();
  OUTLINED_FUNCTION_19_0();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F90];
  v0[2] = v11;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_19_0();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  v0[3] = v12;
  v0[4] = sub_2706D1F04;
  v0[5] = 0;
  v21 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_queue;
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  sub_2706E593C();
  OUTLINED_FUNCTION_11_9();
  sub_2706DA580(v14, v15, MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DE00, &unk_2706EDCB8);
  sub_270690C38(&qword_28081DE08, &qword_28081DE00, &unk_2706EDCB8);
  sub_2706E5D7C();
  (*(v23 + 104))(v22, *MEMORY[0x277D85260], v24);
  *(v0 + v21) = sub_2706E5C7C();
  *(v0 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state) = 0;
  v16 = v0 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_size;
  *v16 = 0;
  v16[8] = 1;
  v17 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_id;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v18 + 32))(v1 + v17, v25);
  v19 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url;
  sub_2706E565C();
  OUTLINED_FUNCTION_6_0();
  (*(v20 + 32))(v1 + v19, v26);
  OUTLINED_FUNCTION_16_0();
}

void sub_2706D2578()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_2706E592C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_29_3();
  v8 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_queue);
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v5;
  v9[4] = v3;
  v20[4] = sub_2706DA48C;
  v20[5] = v9;
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_4_10(COERCE_DOUBLE(1107296256));
  v20[2] = v10;
  v20[3] = &block_descriptor_120;
  v11 = _Block_copy(v20);
  v12 = v8;

  sub_2706E593C();
  OUTLINED_FUNCTION_6_11();
  sub_2706DA580(v13, v14, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  OUTLINED_FUNCTION_8_11();
  sub_2706E5D7C();
  v15 = OUTLINED_FUNCTION_18_7();
  MEMORY[0x2743A60D0](v15);
  _Block_release(v11);

  v16 = OUTLINED_FUNCTION_14_9();
  v17(v16);
  v18 = OUTLINED_FUNCTION_19_10();
  v19(v18);

  OUTLINED_FUNCTION_16_0();
}

void sub_2706D27AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v5 = sub_2706E592C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2706E594C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a1 + 24);
  v14 = *(v13 + 16);

  os_unfair_lock_lock(v14);
  if (*(a1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state))
  {
    v16 = a2;
    os_unfair_lock_unlock(*(v13 + 16));

    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v17 = sub_2706E58DC();
    __swift_project_value_buffer(v17, qword_28081DC28);

    v18 = sub_2706E58BC();
    v19 = sub_2706E5BFC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446210;
      v22 = sub_2706E572C();
      v24 = sub_2706B8734(8, v22, v23);
      v25 = MEMORY[0x2743A5EC0](v24);
      v27 = v26;

      v28 = sub_2706C83E8(v25, v27, aBlock);

      *(v20 + 4) = v28;
      _os_log_impl(&dword_270680000, v18, v19, "%{public}s cannot size archive, archiver not idle", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x2743A75B0](v21, -1, -1);
      MEMORY[0x2743A75B0](v20, -1, -1);
    }

    sub_270690D44(0, &qword_28081D250, 0x277CCA9B8);
    v58 = sub_2706E4830(16, 0xD000000000000011, 0x80000002706F18B0, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/Utility/Archive.swift", 87, 2, 460);
    sub_2706D3100(v58, a1, v16, v59);
    v29 = v58;
  }

  else
  {
    v58 = v10;
    sub_2706D21F8(1, v15);
    os_unfair_lock_unlock(*(v13 + 16));

    v56 = sub_2706D45CC();
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v57 = v6;
    v30 = sub_2706E58DC();
    __swift_project_value_buffer(v30, qword_28081DC28);

    v31 = sub_2706E58BC();
    v32 = sub_2706E5BEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v54 = v31;
      v53 = v32;
      v34 = v33;
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136446466;
      v36 = sub_2706E572C();
      v38 = sub_2706B8734(8, v36, v37);
      v39 = MEMORY[0x2743A5EC0](v38);
      v55 = a2;
      v41 = v40;

      v42 = sub_2706C83E8(v39, v41, aBlock);
      a2 = v55;

      *(v34 + 4) = v42;
      *(v34 + 12) = 2048;
      v43 = v56;
      *(v34 + 14) = v56;
      v44 = v54;
      _os_log_impl(&dword_270680000, v54, v53, "%{public}s sizing completed: %llu", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x2743A75B0](v35, -1, -1);
      MEMORY[0x2743A75B0](v34, -1, -1);
    }

    else
    {

      v43 = v56;
    }

    v45 = *(a1 + 24);
    v46 = *(v45 + 16);

    os_unfair_lock_lock(v46);
    v47 = a1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_size;
    *v47 = v43;
    *(v47 + 8) = 0;
    sub_2706D21F8(0, v48);
    os_unfair_lock_unlock(*(v45 + 16));

    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
    v49 = sub_2706E5C4C();
    v50 = swift_allocObject();
    v50[2] = a2;
    v50[3] = v59;
    v50[4] = v43;
    aBlock[4] = sub_2706DA4C8;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2706DA6A0;
    aBlock[3] = &block_descriptor_126;
    v51 = _Block_copy(aBlock);

    sub_2706E593C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2706DA580(&qword_28081CEF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
    sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
    sub_2706E5D7C();
    MEMORY[0x2743A60D0](0, v12, v8, v51);
    _Block_release(v51);

    (*(v57 + 8))(v8, v5);
    (*(v58 + 1))(v12, v9);
  }
}

uint64_t sub_2706D3100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2706E592C();
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2706E594C();
  v21 = *(v11 - 8);
  v22 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_2706CB21C(v14, a2);

  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v16 = sub_2706E5C4C();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  v17[5] = v15;
  aBlock[4] = sub_2706DA544;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2706DA6A0;
  aBlock[3] = &block_descriptor_132;
  v18 = _Block_copy(aBlock);

  v19 = a1;

  sub_2706E593C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2706DA580(&qword_28081CEF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  sub_2706E5D7C();
  MEMORY[0x2743A60D0](0, v13, v10, v18);
  _Block_release(v18);

  (*(v23 + 8))(v10, v8);
  return (*(v21 + 8))(v13, v22);
}

void sub_2706D3484()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  sub_2706E592C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_29_3();
  v6 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_queue);
  OUTLINED_FUNCTION_11_3();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v3;
  v18[4] = sub_2706DA3B8;
  v18[5] = v7;
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_4_10(COERCE_DOUBLE(1107296256));
  v18[2] = v8;
  v18[3] = &block_descriptor_105;
  v9 = _Block_copy(v18);
  v10 = v6;

  sub_2706E593C();
  OUTLINED_FUNCTION_6_11();
  sub_2706DA580(v11, v12, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  OUTLINED_FUNCTION_8_11();
  sub_2706E5D7C();
  v13 = OUTLINED_FUNCTION_18_7();
  MEMORY[0x2743A60D0](v13);
  _Block_release(v9);

  v14 = OUTLINED_FUNCTION_14_9();
  v15(v14);
  v16 = OUTLINED_FUNCTION_19_10();
  v17(v16);

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706D36AC(char *a1, uint64_t a2)
{
  v3 = sub_2706E592C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2706E594C();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2706E565C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + 3);
  v13 = *(v12 + 16);

  os_unfair_lock_lock(v13);
  sub_2706D4168(a1, aBlock);
  os_unfair_lock_unlock(*(v12 + 16));

  if (aBlock[0])
  {
    v41 = v6;
    sub_2706D4A58();

    v40 = sub_2706CB21C(v14, a1);

    v42 = v4;
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v15 = sub_2706E58DC();
    __swift_project_value_buffer(v15, qword_28081DC28);

    v16 = sub_2706E58BC();
    v17 = sub_2706E5BEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v18 = 136446467;
      LODWORD(v38) = v17;
      v19 = sub_2706E572C();
      v21 = sub_2706B8734(8, v19, v20);
      v22 = MEMORY[0x2743A5EC0](v21);
      v24 = v23;

      v25 = sub_2706C83E8(v22, v24, aBlock);

      *(v18 + 4) = v25;
      *(v18 + 12) = 2081;
      (*(v9 + 16))(v11, &a1[OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url], v8);
      sub_2706DA580(&qword_28081D288, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v26 = sub_2706E611C();
      v28 = v27;
      (*(v9 + 8))(v11, v8);
      v29 = sub_2706C83E8(v26, v28, aBlock);

      *(v18 + 14) = v29;
      _os_log_impl(&dword_270680000, v16, v38, "%{public}s completed: %{private}s", v18, 0x16u);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v30, -1, -1);
      MEMORY[0x2743A75B0](v18, -1, -1);
    }

    v31 = v41;
    v32 = v43;
    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
    v43 = sub_2706E5C4C();
    aBlock[4] = sub_2706DA44C;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2706DA6A0;
    aBlock[3] = &block_descriptor_114;
    v33 = _Block_copy(aBlock);

    sub_2706E593C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2706DA580(&qword_28081CEF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
    sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
    v34 = v45;
    sub_2706E5D7C();
    v35 = v43;
    MEMORY[0x2743A60D0](0, v32, v34, v33);
    _Block_release(v33);

    (*(v42 + 8))(v34, v3);
    (*(v44 + 8))(v32, v31);
  }

  *(a1 + 4) = nullsub_1;
  *(a1 + 5) = 0;
}

void sub_2706D4168(uint64_t a1@<X0>, char *a3@<X8>)
{
  v5 = *(a1 + 16);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v6);
  sub_2706E2658(*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  if (*(a1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state))
  {
    v8 = 0;
  }

  else
  {
    sub_2706D21F8(2, v7);
    v8 = 1;
  }

  *a3 = v8;
}

void sub_2706D4274(void *a1, uint64_t a2)
{
  v3 = v2;
  v9 = 0;
  v6 = *(v3 + 24);
  v7 = *(v6 + 16);

  v8 = a1;

  os_unfair_lock_lock(v7);
  sub_2706D433C(v3, a2, a1, &v9);
  os_unfair_lock_unlock(*(v6 + 16));

  if (v9 == 1)
  {
    sub_2706DD768();
  }
}

void sub_2706D433C(uint64_t result, uint64_t a2, void *a3, _BYTE *a4)
{
  v4 = *(result + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state);
  if ((v4 - 1) < 2)
  {
    v7 = *(result + 16);
    swift_beginAccess();

    MEMORY[0x2743A5F60](v8);
    sub_2706E2658(*((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_2706E5B4C();
    swift_endAccess();

    v9 = a3;
    sub_2706D21F8(a3, v10);
  }

  else
  {
    if (v4)
    {
      v5 = v4 == 3;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *a4 = 1;
    }

    else
    {
      v11 = *(result + 16);
      swift_beginAccess();

      sub_2706DA380(v4);

      MEMORY[0x2743A5F60](v12);
      sub_2706E2658(*((*(v11 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_2706E5B4C();
      swift_endAccess();

      v13 = v4;
      sub_2706D21F8(v4, v14);
      sub_2706DA390(v4);
    }
  }
}

uint64_t sub_2706D44C8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state);
  if (v3 >= 3)
  {
    if (v3 == 3)
    {
      result = sub_2706E5F8C();
      __break(1u);
    }

    else
    {
      swift_willThrow();
      v5 = *(v1 + 16);
      v6 = v3;
      os_unfair_lock_unlock(v5);
    }
  }

  else
  {
    os_unfair_lock_unlock(*(v1 + 16));
  }

  return result;
}

uint64_t sub_2706D45CC()
{
  v2 = v1;
  v3 = v0;
  v63 = sub_2706E565C();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v62 = &v58 - v11;
  if (qword_28081C748 != -1)
  {
    OUTLINED_FUNCTION_2_8(&qword_28081C748);
  }

  v12 = sub_2706E58DC();
  __swift_project_value_buffer(v12, qword_28081DC28);
  OUTLINED_FUNCTION_21_7();

  v13 = sub_2706E58BC();
  v14 = sub_2706E5BEC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_27_1();
    v60 = v9;
    v16 = v15;
    v59 = OUTLINED_FUNCTION_26_1();
    v64 = v59;
    *v16 = 136446467;
    LODWORD(v58) = v14;
    v17 = sub_2706E572C();
    v19 = OUTLINED_FUNCTION_1_1(v17, v18);
    v20 = MEMORY[0x2743A5EC0](v19);
    v61 = v1;
    v21 = v20;
    v23 = v22;

    v24 = sub_2706C83E8(v21, v23, &v64);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2081;
    v25 = v62;
    v26 = v63;
    (*(v5 + 16))(v62, v3 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url, v63);
    OUTLINED_FUNCTION_1_12();
    sub_2706DA580(v27, v28, MEMORY[0x277CC9290]);
    sub_2706E611C();
    v29 = v26;
    (*(v5 + 8))(v25, v26);
    v30 = OUTLINED_FUNCTION_35_3();
    v33 = sub_2706C83E8(v30, v31, v32);
    v2 = v61;

    *(v16 + 14) = v33;
    _os_log_impl(&dword_270680000, v13, v58, "%{public}s sizing started: %{private}s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    v9 = v60;
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    v29 = v63;
  }

  type metadata accessor for ArchiveReader();
  v34 = v5;
  v35 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url;
  v36 = v34 + 16;
  v37 = *(v34 + 16);
  v37(v9, v3 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url, v29);
  v38 = sub_2706D0AAC();
  v39 = v29;
  if (v2)
  {
    v41 = *(v34 + 8);
    v40 = v34 + 8;
    v41(v9, v29);
  }

  else
  {
    v42 = v38;
    v43 = *(v34 + 8);
    v61 = v34 + 8;
    v58 = v43;
    v59 = v37;
    v43(v9, v39);
    v40 = 0;
    v60 = v35;
    while (sub_2706D0F34())
    {
      v44 = v36;
      v45 = v3 + v35;
      v46 = v42;
      v47 = v62;
      v48 = v40;
      v49 = v3;
      v50 = v63;
      v59(v62, v45, v63);
      v51 = sub_2706D03AC();

      v52 = v47;
      v42 = v46;
      v35 = v60;
      v53 = v50;
      v3 = v49;
      v40 = v48;
      v58(v52, v53);
      if (!v51)
      {
        break;
      }

      sub_2706D44C8();
      v54 = sub_2706D01FC();

      v55 = __CFADD__(v48, v54);
      v40 = v48 + v54;
      v36 = v44;
      if (v55)
      {
        __break(1u);
        break;
      }
    }

    sub_2706D18D4(v56, v42, MEMORY[0x277D824D0]);
  }

  return v40;
}

void sub_2706D4A58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  OUTLINED_FUNCTION_16_3(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  v103 = &v85 - v4;
  v5 = sub_2706E565C();
  OUTLINED_FUNCTION_4();
  v102 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v100 = &v85 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v85 - v15;
  MEMORY[0x28223BE20](v14);
  v101 = &v85 - v17;
  if (qword_28081C748 != -1)
  {
    OUTLINED_FUNCTION_2_8(&qword_28081C748);
  }

  v18 = sub_2706E58DC();
  v19 = __swift_project_value_buffer(v18, qword_28081DC28);

  v95 = v19;
  v20 = sub_2706E58BC();
  v21 = sub_2706E5BEC();

  v22 = os_log_type_enabled(v20, v21);
  v96 = v10;
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_27_1();
    v99 = v0;
    v24 = v23;
    v98 = OUTLINED_FUNCTION_26_1();
    v105 = v98;
    *v24 = 136446467;
    v25 = v104;
    v26 = sub_2706E572C();
    v28 = OUTLINED_FUNCTION_1_1(v26, v27);
    v30 = v29;
    v31 = MEMORY[0x2743A5EC0](v28);
    LODWORD(v97) = v21;
    v32 = v31;
    v34 = v33;

    sub_2706C83E8(v32, v34, &v105);
    OUTLINED_FUNCTION_28_3();

    *(v24 + 4) = v30;
    *(v24 + 12) = 2081;
    v35 = v101;
    v36 = v102;
    (v102[2])(v101, v25 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url, v5);
    OUTLINED_FUNCTION_1_12();
    sub_2706DA580(v37, v38, MEMORY[0x277CC9290]);
    v39 = sub_2706E611C();
    v41 = v40;
    (v36[1])(v35, v5);
    sub_2706C83E8(v39, v41, &v105);
    OUTLINED_FUNCTION_28_3();

    *(v24 + 14) = v39;
    _os_log_impl(&dword_270680000, v20, v97, "%{public}s writing started: %{private}s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    v1 = v99;
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    v36 = v102;
  }

  type metadata accessor for ArchiveReader();
  v42 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url;
  v43 = v36[2];
  v43(v16, v104 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url, v5);
  v102 = sub_2706D0AAC();
  if (v1)
  {
    (v36[1])(v16, v5);
  }

  else
  {
    v98 = v43;
    v99 = v36 + 2;
    v94 = v42;
    v45 = v36 + 1;
    v44 = v36[1];
    v44(v16, v5);
    type metadata accessor for ArchiveWriter();
    v46 = sub_2706D1230(2);
    v47 = dispatch_semaphore_create(0);
    OUTLINED_FUNCTION_11_3();
    v48 = swift_allocObject();
    *(v48 + 16) = v104;
    *(v48 + 24) = v47;
    v46[3] = sub_2706DA2A0;
    v46[4] = v48;
    v93 = v46;

    v86 = v47;

    v88 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_id;
    v92 = (v36 + 4);
    *&v49 = 136446467;
    v87 = v49;
    v50 = v96;
    v51 = v44;
    v97 = v44;
    while (sub_2706D0F34())
    {
      v52 = v45;
      v53 = v101;
      v98(v101, v104 + v94, v5);
      v54 = sub_2706D03AC();

      v51(v53, v5);
      if (!v54)
      {
        break;
      }

      v55 = v103;
      sub_2706D021C(v103);
      if (__swift_getEnumTagSinglePayload(v55, 1, v5) == 1)
      {

        sub_2706ADE58(v103);
        v51 = v97;
      }

      else
      {
        v56 = v100;
        (*v92)(v100, v103, v5);
        sub_2706D44C8();
        v57 = v97;
        v98(v50, v56, v5);

        v58 = sub_2706E58BC();
        v59 = sub_2706E5BDC();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = OUTLINED_FUNCTION_27_1();
          v61 = OUTLINED_FUNCTION_26_1();
          v90 = v58;
          v91 = v61;
          v105 = v61;
          *v60 = v87;
          v62 = sub_2706E572C();
          v64 = OUTLINED_FUNCTION_1_1(v62, v63);
          v65 = MEMORY[0x2743A5EC0](v64);
          v67 = v66;

          v68 = sub_2706C83E8(v65, v67, &v105);
          v69 = v100;

          *(v60 + 4) = v68;
          *(v60 + 12) = 2081;
          v89 = v59;
          v70 = v60;
          OUTLINED_FUNCTION_1_12();
          sub_2706DA580(&qword_28081D288, v71, MEMORY[0x277CC9290]);
          v72 = v96;
          v73 = sub_2706E611C();
          v75 = v74;
          v76 = v72;
          v45 = v52;
          v97(v76, v5);
          sub_2706C83E8(v73, v75, &v105);
          OUTLINED_FUNCTION_28_3();

          *(v70 + 14) = v73;
          v77 = v90;
          _os_log_impl(&dword_270680000, v90, v89, "%{public}s archiving: %{private}s", v70, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_12_0();
        }

        else
        {

          v79 = OUTLINED_FUNCTION_22_6();
          v78 = v57(v79);
          v69 = v100;
        }

        MEMORY[0x28223BE20](v78);
        v80 = v102;
        *(&v85 - 6) = v54;
        *(&v85 - 5) = v80;
        *(&v85 - 4) = v104;
        *(&v85 - 3) = v69;
        *(&v85 - 2) = v93;
        sub_2706D1A8C(v54, sub_2706DA2BC);

        v81 = OUTLINED_FUNCTION_22_6();
        v51 = v97;
        (v97)(v81);
        v50 = v96;
      }
    }

    OUTLINED_FUNCTION_10_8();
    sub_2706D18D4(v82, v83, v84);
  }
}

uint64_t sub_2706D52F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = a4;
  v5 = v4;
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2706D571C(a1, v7);
  v10 = v9;
  if (qword_28081C748 != -1)
  {
    swift_once();
  }

  v11 = sub_2706E58DC();
  __swift_project_value_buffer(v11, qword_28081DC28);
  sub_270692D3C(v8, v10);
  sub_270692D3C(v8, v10);

  v12 = sub_2706E58BC();
  v13 = sub_2706E5BEC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v14 = 136446466;
    v15 = sub_2706E572C();
    v17 = sub_2706B8734(8, v15, v16);
    v18 = MEMORY[0x2743A5EC0](v17);
    v20 = v19;

    v21 = sub_2706C83E8(v18, v20, v32);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2048;
    switch(v10 >> 62)
    {
      case 1uLL:
        sub_270688E88(v8, v10);
        LODWORD(v22) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          __break(1u);
          JUMPOUT(0x2706D570CLL);
        }

        v22 = v22;
        break;
      case 2uLL:
        v24 = *(v8 + 16);
        v23 = *(v8 + 24);
        sub_270688E88(v8, v10);
        v22 = v23 - v24;
        if (__OFSUB__(v23, v24))
        {
          __break(1u);
          goto LABEL_13;
        }

        break;
      case 3uLL:
LABEL_13:
        sub_270688E88(v8, v10);
        v22 = 0;
        break;
      default:
        sub_270688E88(v8, v10);
        v22 = BYTE6(v10);
        break;
    }

    *(v14 + 14) = v22;
    sub_270688E88(v8, v10);
    _os_log_impl(&dword_270680000, v12, v13, "%{public}s writing bytes: %ld", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x2743A75B0](v31, -1, -1);
    MEMORY[0x2743A75B0](v14, -1, -1);

    v5 = v4;
  }

  else
  {
    sub_270688E88(v8, v10);
    sub_270688E88(v8, v10);
  }

  v25 = a3;
  sub_2706D44C8();
  if (!v5)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = MEMORY[0x2743A5B30](v8, v10);
    v27 = *(a3 + 32);
    v28 = swift_allocObject();
    v28[2] = a3;
    v28[3] = v26;
    v29 = v33;
    v28[4] = v33;

    v29;
    v27(v8, v10, sub_2706DA33C, v28);

    sub_2706E5CDC();
    swift_beginAccess();
    v25 = *(v26 + 16);
    if (v25 != -1)
    {
      sub_270688E88(v8, v10);

      return v25;
    }

    v25 = sub_270690D44(0, &qword_28081D250, 0x277CCA9B8);
    sub_2706E4830(5, 0xD00000000000001ALL, 0x80000002706F1780, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/Utility/Archive.swift", 87, 2, 589);
    swift_willThrow();
  }

  sub_270688E88(v8, v10);
  return v25;
}

unint64_t sub_2706D571C(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_2706E566C();
    }

    else
    {
      sub_2706E555C();
      swift_allocObject();
      sub_2706E551C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2706E568C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2706D57CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v6 = sub_2706E58DC();
    __swift_project_value_buffer(v6, qword_28081DC28);
    v7 = a1;

    v8 = sub_2706E58BC();
    v9 = sub_2706E5BFC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136446466;
      v12 = sub_2706E572C();
      v14 = sub_2706B8734(8, v12, v13);
      v15 = MEMORY[0x2743A5EC0](v14);
      v17 = v16;

      v18 = sub_2706C83E8(v15, v17, v24);

      *(v10 + 4) = v18;
      *(v10 + 12) = 2082;
      v19 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
      v20 = sub_2706E5A4C();
      v22 = sub_2706C83E8(v20, v21, v24);

      *(v10 + 14) = v22;
      _os_log_impl(&dword_270680000, v8, v9, "%{public}s error while writing: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v11, -1, -1);
      MEMORY[0x2743A75B0](v10, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    *(a3 + 16) = -1;
  }

  return sub_2706E5CEC();
}

void sub_2706D5A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2706E565C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_2706CFF10(v14);
  if (v15 != 4)
  {
    if (v15 == 2)
    {

      sub_2706D18D4(v16, a2, MEMORY[0x277D824D8]);
    }

    return;
  }

  v53 = a3;
  v17 = *(a3 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_size) * 0.00000381469727;
  if (*(a3 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_size + 8))
  {
    v17 = 0.0;
  }

  v18 = ceil(v17);
  if (v18 == INFINITY)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    JUMPOUT(0x2706D5F8CLL);
  }

  sub_270690D44(0, &qword_28081D258, 0x277CCA9F8);
  (*(v11 + 16))(v13, a4, v10);
  v19 = sub_2706D5F9C(v13, &selRef_fileHandleForReadingFromURL_error_);
  if (!v5)
  {
    v21 = v19;
    v22 = 0;
    v51 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_id;
    v52 = v18;
    *&v20 = 136446978;
    v50 = v20;
    v56 = a5;
    v49 = v19;
    while (1)
    {
      v23 = MEMORY[0x2743A6D20]();
      v24 = sub_2706E5BCC();
      v26 = v25;
      objc_autoreleasePoolPop(v23);
      if (v26 >> 60 == 15)
      {
        break;
      }

      v57 = v22;
      v27 = __OFADD__(v22, 1);
      v28 = v22 + 1;
      if (v27)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (qword_28081C748 != -1)
      {
        swift_once();
      }

      v29 = sub_2706E58DC();
      __swift_project_value_buffer(v29, qword_28081DC28);
      sub_2706A6E0C(v24, v26);
      sub_2706A6E0C(v24, v26);

      v30 = sub_2706E58BC();
      v31 = sub_2706E5BEC();

      if (os_log_type_enabled(v30, v31))
      {
        v55 = v31;
        v32 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v58 = v54;
        *v32 = v50;
        v33 = sub_2706E572C();
        v35 = sub_2706B8734(8, v33, v34);
        v36 = MEMORY[0x2743A5EC0](v35);
        v38 = v37;

        v39 = sub_2706C83E8(v36, v38, &v58);

        *(v32 + 4) = v39;
        *(v32 + 12) = 2048;
        *(v32 + 14) = v28;
        *(v32 + 22) = 2048;
        *(v32 + 24) = v52;
        *(v32 + 32) = 2048;
        v40 = v57;
        switch(v26 >> 62)
        {
          case 1uLL:
            sub_2706A3BA4(v24, v26);
            LODWORD(v41) = HIDWORD(v24) - v24;
            if (__OFSUB__(HIDWORD(v24), v24))
            {
              goto LABEL_34;
            }

            v41 = v41;
LABEL_25:
            v44 = v55;
            *(v32 + 34) = v41;
            sub_2706A3BA4(v24, v26);
            _os_log_impl(&dword_270680000, v30, v44, "%{public}s reading (%ld/%ld) bytes: %ld", v32, 0x2Au);
            v45 = v54;
            __swift_destroy_boxed_opaque_existential_1(v54);
            MEMORY[0x2743A75B0](v45, -1, -1);
            MEMORY[0x2743A75B0](v32, -1, -1);

            v21 = v49;
            break;
          case 2uLL:
            v43 = *(v24 + 16);
            v42 = *(v24 + 24);
            sub_2706A3BA4(v24, v26);
            v41 = v42 - v43;
            if (!__OFSUB__(v42, v43))
            {
              goto LABEL_25;
            }

            goto LABEL_33;
          case 3uLL:
            sub_2706A3BA4(v24, v26);
            v41 = 0;
            goto LABEL_25;
          default:
            sub_2706A3BA4(v24, v26);
            v41 = BYTE6(v26);
            goto LABEL_25;
        }
      }

      else
      {
        sub_2706A3BA4(v24, v26);
        sub_2706A3BA4(v24, v26);

        v40 = v57;
      }

      v46 = sub_2706D44C8();
      v47 = MEMORY[0x2743A6D20](v46);
      sub_2706D1B14(v24, v26);
      objc_autoreleasePoolPop(v47);
      sub_2706A3BA4(v24, v26);
      v22 = v40 + 1;
    }
  }
}

id sub_2706D5F9C(uint64_t a1, SEL *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2706E55DC();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v14[0];
  if (v5)
  {
    sub_2706E565C();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 8);
    v9 = v6;
    v10 = OUTLINED_FUNCTION_35_3();
    v8(v10);
  }

  else
  {
    v11 = v14[0];
    sub_2706E558C();

    swift_willThrow();
    sub_2706E565C();
    OUTLINED_FUNCTION_6_0();
    (*(v12 + 8))(a1);
  }

  return v5;
}

char *sub_2706D60E0()
{

  v1 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_id;
  sub_2706E576C();
  OUTLINED_FUNCTION_6_0();
  (*(v2 + 8))(v0 + v1);

  sub_2706DA390(*(v0 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state));
  v3 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url;
  sub_2706E565C();
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_2706D61E8(uint64_t a1)
{
  result = sub_2706E576C();
  if (v2 <= 0x3F)
  {
    result = sub_2706E565C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2706D62F0()
{
  v1 = sub_2706E576C();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_id, v1);
  v8 = sub_2706E572C();
  v10 = v9;
  (*(v3 + 8))(v7, v1);
  v11 = sub_2706B8734(8, v8, v10);
  v12 = MEMORY[0x2743A5EC0](v11);

  return v12;
}

void sub_2706D6404(char a1)
{
  if (qword_28081C748 != -1)
  {
    swift_once();
  }

  v3 = sub_2706E58DC();
  __swift_project_value_buffer(v3, qword_28081DC28);

  oslog = sub_2706E58BC();
  v4 = sub_2706E5BEC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446722;
    v7 = sub_2706D62F0();
    v9 = sub_2706C83E8(v7, v8, &v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v19 = &type metadata for ArchiveTransferDestination.State;
    LOBYTE(v18[0]) = a1;
    v10 = sub_2706CB238(v18);
    v12 = sub_2706C83E8(v10, v11, &v20);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2082;
    v13 = *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state);
    v19 = &type metadata for ArchiveTransferDestination.State;
    LOBYTE(v18[0]) = v13;
    v14 = sub_2706CB238(v18);
    v16 = sub_2706C83E8(v14, v15, &v20);

    *(v5 + 24) = v16;
    _os_log_impl(&dword_270680000, oslog, v4, "%{public}s: %{public}s → %{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v6, -1, -1);
    MEMORY[0x2743A75B0](v5, -1, -1);
  }
}

void sub_2706D65FC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state);
  *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state) = a1;
  sub_2706D6404(v2);
}

void sub_2706D6614()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v38 = v2;
  v39 = v3;
  v36 = v4;
  v37 = v5;
  v35 = v6;
  v40 = v8;
  v41 = v7;
  sub_2706E5C3C();
  OUTLINED_FUNCTION_4();
  v32 = v10;
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v31 = v12 - v11;
  sub_2706E5C2C();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v14 = sub_2706E594C();
  v15 = OUTLINED_FUNCTION_16_3(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v16 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_completions;
  type metadata accessor for Completions();
  OUTLINED_FUNCTION_19_0();
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v1 + v16) = v17;
  v18 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_dataQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DE10, &qword_2706EDCC8);
  swift_allocObject();
  *(v1 + v18) = sub_2706D1EA0();
  *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state) = 0;
  v30 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_queue;
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  sub_2706E593C();
  OUTLINED_FUNCTION_11_9();
  sub_2706DA580(v19, v20, MEMORY[0x277D85238]);
  v21 = OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  sub_270690C38(&qword_28081DE08, &qword_28081DE00, &unk_2706EDCB8);
  sub_2706E5D7C();
  (*(v32 + 104))(v31, *MEMORY[0x277D85260], v33);
  *(v1 + v30) = sub_2706E5C7C();
  v23 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_id;
  v34 = sub_2706E576C();
  v24 = *(v34 - 8);
  (*(v24 + 16))(v1 + v23, v41, v34);
  v25 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode;
  v26 = sub_2706E565C();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v1 + v25, v40, v26);
  type metadata accessor for ArchiveTransferDestination.Mode(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Completion();
  swift_allocObject();
  sub_2706A5AA4(v35, v36);
  sub_2706DD8C4(v37, v38, v39, v35, v36);
  v28 = *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v29);
  sub_2706E2658(*((*(v28 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  sub_27068F6BC(v35, v36);
  (*(v27 + 8))(v40, v26);
  (*(v24 + 8))(v41, v34);
  OUTLINED_FUNCTION_16_0();
}