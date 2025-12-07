unint64_t sub_26662ADA0()
{
  result = qword_28007F4F0;
  if (!qword_28007F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F4F0);
  }

  return result;
}

unint64_t sub_26662ADF4()
{
  result = qword_28007F4F8;
  if (!qword_28007F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F4F8);
  }

  return result;
}

unint64_t sub_26662AE48()
{
  result = qword_28007F500;
  if (!qword_28007F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F500);
  }

  return result;
}

uint64_t sub_26662AE9C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26662AEF4()
{
  result = qword_28007F510;
  if (!qword_28007F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F510);
  }

  return result;
}

unint64_t sub_26662AF48()
{
  result = qword_28007F518;
  if (!qword_28007F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F518);
  }

  return result;
}

unint64_t sub_26662AF9C()
{
  result = qword_28007F520;
  if (!qword_28007F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F520);
  }

  return result;
}

unint64_t sub_26662AFF0()
{
  result = qword_28007F528;
  if (!qword_28007F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F528);
  }

  return result;
}

uint64_t sub_26662B044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26662B0AC()
{
  result = qword_28007F530;
  if (!qword_28007F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F530);
  }

  return result;
}

unint64_t sub_26662B100()
{
  result = qword_28007F548;
  if (!qword_28007F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F548);
  }

  return result;
}

unint64_t sub_26662B154()
{
  result = qword_28007F550;
  if (!qword_28007F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F550);
  }

  return result;
}

unint64_t sub_26662B1A8()
{
  result = qword_28007F558;
  if (!qword_28007F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F558);
  }

  return result;
}

unint64_t sub_26662B1FC()
{
  result = qword_28007F560;
  if (!qword_28007F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F560);
  }

  return result;
}

uint64_t sub_26662B250(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F4C8, &qword_266678A50);
    v3 = OUTLINED_FUNCTION_43_3();
    sub_26662B494(v3, v4, v5);
    result = OUTLINED_FUNCTION_48_4();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26662B2D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_26662B338()
{
  result = qword_28007F5F8;
  if (!qword_28007F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F5F8);
  }

  return result;
}

uint64_t sub_26662B38C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F538, &unk_266678A58);
    OUTLINED_FUNCTION_0_39();
    v3 = OUTLINED_FUNCTION_43_3();
    sub_26662B494(v3, v4, v5);
    result = OUTLINED_FUNCTION_48_4();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26662B494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26662B4DC(uint64_t a1)
{
  sub_26662B604(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = type metadata accessor for Snippet.Event(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_26662B670(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_26662B714(319);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_26662B76C(319);
      if (v9 > 0x3F)
      {
        return v6;
      }

      v6 = type metadata accessor for Snippet.ComposeEventModel(319);
      if (v10 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_26662B7E8(319);
        v2 = v11;
        if (v12 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_26662B604(uint64_t a1)
{
  if (!qword_28156C478)
  {
    type metadata accessor for Snippet.Event(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28156C478);
    }
  }
}

void sub_26662B670(uint64_t a1)
{
  if (!qword_28156C540[0])
  {
    type metadata accessor for Snippet.Event(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F538, &unk_266678A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007E360, &unk_2666773F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_28156C540);
    }
  }
}

void sub_26662B714(uint64_t a1)
{
  if (!qword_28156C120)
  {
    type metadata accessor for Snippet.Event(255);
    v1 = sub_26666C508();
    if (!v2)
    {
      atomic_store(v1, &qword_28156C120);
    }
  }
}

void sub_26662B76C(uint64_t a1)
{
  if (!qword_28156C480[0])
  {
    type metadata accessor for Snippet.Event(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007E360, &unk_2666773F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_28156C480);
    }
  }
}

void sub_26662B7E8(uint64_t a1)
{
  if (!qword_28156C130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F4C8, &qword_266678A50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28156C130);
    }
  }
}

uint64_t getEnumTagSinglePayload for Snippet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Snippet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Snippet.SmartConfirmScheduleConflictCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26662BB50(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_42(a1);
}

_BYTE *sub_26662BB9C(_BYTE *result, int a2, int a3)
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

_BYTE *sub_26662BC58(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26662BD38()
{
  result = qword_28007F618;
  if (!qword_28007F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F618);
  }

  return result;
}

unint64_t sub_26662BD90()
{
  result = qword_28007F620;
  if (!qword_28007F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F620);
  }

  return result;
}

unint64_t sub_26662BDE8()
{
  result = qword_28007F628;
  if (!qword_28007F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F628);
  }

  return result;
}

unint64_t sub_26662BE40()
{
  result = qword_28007F630;
  if (!qword_28007F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F630);
  }

  return result;
}

unint64_t sub_26662BE98()
{
  result = qword_28007F638;
  if (!qword_28007F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F638);
  }

  return result;
}

unint64_t sub_26662BEF0()
{
  result = qword_28007F640;
  if (!qword_28007F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F640);
  }

  return result;
}

unint64_t sub_26662BF48()
{
  result = qword_28007F648;
  if (!qword_28007F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F648);
  }

  return result;
}

unint64_t sub_26662BFA0()
{
  result = qword_28007F650;
  if (!qword_28007F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F650);
  }

  return result;
}

unint64_t sub_26662BFF8()
{
  result = qword_28007F658;
  if (!qword_28007F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F658);
  }

  return result;
}

unint64_t sub_26662C050()
{
  result = qword_28007F660;
  if (!qword_28007F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F660);
  }

  return result;
}

unint64_t sub_26662C0A8()
{
  result = qword_28007F668;
  if (!qword_28007F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F668);
  }

  return result;
}

unint64_t sub_26662C100()
{
  result = qword_28007F670;
  if (!qword_28007F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F670);
  }

  return result;
}

unint64_t sub_26662C158()
{
  result = qword_28007F678;
  if (!qword_28007F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F678);
  }

  return result;
}

unint64_t sub_26662C1B0()
{
  result = qword_28007F680;
  if (!qword_28007F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F680);
  }

  return result;
}

unint64_t sub_26662C208()
{
  result = qword_28007F688;
  if (!qword_28007F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F688);
  }

  return result;
}

unint64_t sub_26662C260()
{
  result = qword_28007F690;
  if (!qword_28007F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F690);
  }

  return result;
}

unint64_t sub_26662C2B8()
{
  result = qword_28007F698;
  if (!qword_28007F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F698);
  }

  return result;
}

unint64_t sub_26662C310()
{
  result = qword_28007F6A0;
  if (!qword_28007F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6A0);
  }

  return result;
}

unint64_t sub_26662C368()
{
  result = qword_28007F6A8;
  if (!qword_28007F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6A8);
  }

  return result;
}

unint64_t sub_26662C3C0()
{
  result = qword_28007F6B0;
  if (!qword_28007F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6B0);
  }

  return result;
}

unint64_t sub_26662C418()
{
  result = qword_28007F6B8;
  if (!qword_28007F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6B8);
  }

  return result;
}

unint64_t sub_26662C470()
{
  result = qword_28007F6C0;
  if (!qword_28007F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6C0);
  }

  return result;
}

unint64_t sub_26662C4C8()
{
  result = qword_28007F6C8;
  if (!qword_28007F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6C8);
  }

  return result;
}

unint64_t sub_26662C520()
{
  result = qword_28007F6D0;
  if (!qword_28007F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6D0);
  }

  return result;
}

unint64_t sub_26662C578()
{
  result = qword_28007F6D8;
  if (!qword_28007F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6D8);
  }

  return result;
}

unint64_t sub_26662C5D0()
{
  result = qword_28007F6E0;
  if (!qword_28007F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6E0);
  }

  return result;
}

unint64_t sub_26662C628()
{
  result = qword_28007F6E8;
  if (!qword_28007F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6E8);
  }

  return result;
}

unint64_t sub_26662C680()
{
  result = qword_28007F6F0;
  if (!qword_28007F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6F0);
  }

  return result;
}

unint64_t sub_26662C6D8()
{
  result = qword_28007F6F8;
  if (!qword_28007F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F6F8);
  }

  return result;
}

unint64_t sub_26662C730()
{
  result = qword_28007F700;
  if (!qword_28007F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F700);
  }

  return result;
}

unint64_t sub_26662C788()
{
  result = qword_28007F708;
  if (!qword_28007F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F708);
  }

  return result;
}

unint64_t sub_26662C7E0()
{
  result = qword_28007F710;
  if (!qword_28007F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F710);
  }

  return result;
}

unint64_t sub_26662C838()
{
  result = qword_28007F718;
  if (!qword_28007F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F718);
  }

  return result;
}

unint64_t sub_26662C890()
{
  result = qword_28007F720;
  if (!qword_28007F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F720);
  }

  return result;
}

unint64_t sub_26662C8E8()
{
  result = qword_28007F728;
  if (!qword_28007F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F728);
  }

  return result;
}

unint64_t sub_26662C940()
{
  result = qword_28007F730;
  if (!qword_28007F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F730);
  }

  return result;
}

unint64_t sub_26662C998()
{
  result = qword_28007F738;
  if (!qword_28007F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F738);
  }

  return result;
}

unint64_t sub_26662C9F0()
{
  result = qword_28007F740;
  if (!qword_28007F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F740);
  }

  return result;
}

unint64_t sub_26662CA48()
{
  result = qword_28007F748;
  if (!qword_28007F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F748);
  }

  return result;
}

unint64_t sub_26662CAA0()
{
  result = qword_28007F750;
  if (!qword_28007F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F750);
  }

  return result;
}

unint64_t sub_26662CAF8()
{
  result = qword_28007F758;
  if (!qword_28007F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F758);
  }

  return result;
}

unint64_t sub_26662CB50()
{
  result = qword_28007F760;
  if (!qword_28007F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F760);
  }

  return result;
}

unint64_t sub_26662CBA8()
{
  result = qword_28007F768;
  if (!qword_28007F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F768);
  }

  return result;
}

unint64_t sub_26662CC00()
{
  result = qword_28007F770;
  if (!qword_28007F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F770);
  }

  return result;
}

unint64_t sub_26662CC58()
{
  result = qword_28007F778;
  if (!qword_28007F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F778);
  }

  return result;
}

unint64_t sub_26662CCB0()
{
  result = qword_28007F780;
  if (!qword_28007F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F780);
  }

  return result;
}

uint64_t sub_26662CD24(_OWORD *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v27[3] = a2;
  v27[4] = a3();
  v4 = swift_allocObject();
  v27[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 41) = *(a1 + 25);
  v6 = sub_266669E98();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v7 = sub_26666C168();
  __swift_project_value_buffer(v7, qword_28156D7E8);
  sub_26655358C(v27, v26);
  sub_26655358C(v27, v25);
  v8 = sub_26666C148();
  v9 = sub_26666C618();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315650;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v12 = sub_26666C7F8();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(v26);
    v15 = sub_2665BFC90(v12, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v16 = sub_26666C7F8();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(v25);
    v19 = sub_2665BFC90(v16, v18, &v24);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    if (v6)
    {
      v20 = 28271;
    }

    else
    {
      v20 = 6710895;
    }

    if (v6)
    {
      v21 = 0xE200000000000000;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = sub_2665BFC90(v20, v21, &v24);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_266549000, v8, v9, "[SiriCalendarFeatureManager] FeatureFlag: %s/%s=%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266789690](v11, -1, -1);
    MEMORY[0x266789690](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v6 & 1;
}

unint64_t sub_26662CFBC()
{
  result = qword_28007F788;
  if (!qword_28007F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F788);
  }

  return result;
}

unint64_t sub_26662D010()
{
  result = qword_28007F790;
  if (!qword_28007F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F790);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26666CA08();
}

uint64_t OUTLINED_FUNCTION_27_14(uint64_t a1)
{

  return sub_26666CA78();
}

void *OUTLINED_FUNCTION_41_2()
{

  return sub_26666C9E8();
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return swift_getWitnessTable();
}

uint64_t sub_26662D34C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_2665F65F8(a3, &v14 - v11);
  swift_unknownObjectRetain();

  return sub_26662D424(v12, a4, a5, x8_0);
}

uint64_t sub_26662D424@<X0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30[0] = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v30 - v14;
  if ((*(a6 + 16))(a5, a6))
  {
    (*(a6 + 8))(a5, a6);
    sub_2665F65F8(a4, v12);
    sub_26666C1F8();
    sub_266557D74(a4, &unk_28007F810, &unk_26667C710);
    v23 = sub_26666C228();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v23);
    if (!__swift_getEnumTagSinglePayload(v15, 1, v23))
    {
      v28 = v30[0];
      (*(*(v23 - 8) + 32))(v30[0], v15, v23);
      v26 = v28;
      v27 = 0;
      v25 = v23;
      return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
    }

    v20 = &qword_28007ED70;
    v21 = &qword_266671CC0;
    v22 = v15;
  }

  else
  {

    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v16 = sub_26666C168();
    __swift_project_value_buffer(v16, qword_28156D7E8);
    v17 = sub_26666C148();
    v18 = sub_26666C618();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266549000, v17, v18, "RREntityConvertible did not produce a USOEntity", v19, 2u);
      MEMORY[0x266789690](v19, -1, -1);
    }

    swift_unknownObjectRelease();
    v20 = &unk_28007F810;
    v21 = &unk_26667C710;
    v22 = a4;
  }

  sub_266557D74(v22, v20, v21);
  v25 = sub_26666C228();
  v26 = v30[0];
  v27 = 1;
  return __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
}

uint64_t sub_26662D780()
{
  if (qword_28007CDC8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF78, &unk_266679E20);
  __swift_project_value_buffer(v1, qword_280095748);
  sub_26666BAD8();
  OUTLINED_FUNCTION_0_40();
  v2();
  if (v0)
  {

    return 0;
  }

  else
  {

    return v4;
  }
}

uint64_t sub_26662D850()
{
  if (qword_28007CDC0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F800, &qword_266672968);
  __swift_project_value_buffer(v1, qword_280095730);
  sub_26666BAD8();
  OUTLINED_FUNCTION_0_40();
  v2();
  if (v0)
  {

    return 0;
  }

  else
  {

    return v4;
  }
}

uint64_t sub_26662DA68(uint64_t a1)
{
  OUTLINED_FUNCTION_70_2(a1);
  v1(v4, v2);
  return sub_26666CBC8();
}

uint64_t sub_26662DB14(uint64_t a1)
{
  OUTLINED_FUNCTION_70_2(a1);
  v1(v2);
  sub_26666C368();

  return sub_26666CBC8();
}

uint64_t sub_26662DB70(uint64_t a1)
{
  sub_26666CB88();
  MEMORY[0x266788EE0](a1);
  return sub_26666CBC8();
}

uint64_t sub_26662DBB8()
{
  if (qword_28007CE70 != -1)
  {
    OUTLINED_FUNCTION_31_9(&qword_28007CE70);
  }

  OUTLINED_FUNCTION_36_6();
  OUTLINED_FUNCTION_0_41();
  sub_266633334(v0, v1, &unk_266679EEC);
  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v11 != 35)
  {
    sub_266631F50(v11);
    if (v4 == 6647407 && v3 == 0xE300000000000000)
    {
      goto LABEL_16;
    }

    sub_26666CAC8();
    OUTLINED_FUNCTION_52_4();
  }

  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v10 != 35)
  {
    sub_266631F50(v10);
    if (v7 != 6645876 || v6 != 0xE300000000000000)
    {
      v2 = sub_26666CAC8();

      return v2 & 1;
    }

LABEL_16:

    v2 = 1;
    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

void sub_26662DD18()
{
  OUTLINED_FUNCTION_28_0();
  v28 = type metadata accessor for CalendarEventAttendeeIntentNode(0);
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_10();
  v24 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v25 = v0;
  sub_26663019C();
  v10 = v9;
  v11 = 0;
  v29 = *(v9 + 16);
  v27 = 0x800000026667D510;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v29 == v11)
    {

      sub_26663045C(v26);

      OUTLINED_FUNCTION_27_0();
      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = *(v3 + 72);
    sub_2666334E8(v10 + v12 + v13 * v11, v8);
    if (qword_28007CEB0 != -1)
    {
      OUTLINED_FUNCTION_6_24();
      swift_once();
    }

    OUTLINED_FUNCTION_5_26();
    sub_266633334(&qword_28007F910, v14, &unk_26667AC58);
    OUTLINED_FUNCTION_55_3();
    sub_26666A528();
    v15 = 0xE400000000000000;
    switch(v30)
    {
      case 1:
        OUTLINED_FUNCTION_18_10();
        goto LABEL_12;
      case 2:
        OUTLINED_FUNCTION_9_23();
        goto LABEL_12;
      case 3:
LABEL_21:

        goto LABEL_27;
      case 4:
        OUTLINED_FUNCTION_38_3();
        goto LABEL_12;
      case 5:
        v15 = v27;
        goto LABEL_12;
      case 6:
        OUTLINED_FUNCTION_33_9();
        goto LABEL_12;
      case 7:
        goto LABEL_28;
      default:
LABEL_12:
        OUTLINED_FUNCTION_67_1();
        sub_26666CAC8();
        OUTLINED_FUNCTION_72_0();
        if (v1)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_66_1();
        OUTLINED_FUNCTION_50_2();
        switch(v17)
        {
          case 1:
            OUTLINED_FUNCTION_18_10();
            break;
          case 2:
            OUTLINED_FUNCTION_9_23();
            break;
          case 3:
            break;
          case 4:
            goto LABEL_21;
          case 5:
            v15 = v27;
            v16 = 0xD000000000000010;
            break;
          case 6:
            OUTLINED_FUNCTION_33_9();
            break;
          default:
            v15 = 0xE400000000000000;
            v16 = 1752459639;
            break;
        }

        OUTLINED_FUNCTION_42_7(v16, v15);
        OUTLINED_FUNCTION_72_0();
        if (v1)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_50_2();
        switch(v18)
        {
          case 1:
            OUTLINED_FUNCTION_18_10();
            break;
          case 2:
            OUTLINED_FUNCTION_9_23();
            break;
          case 4:
            OUTLINED_FUNCTION_38_3();
            break;
          case 5:
            goto LABEL_21;
          case 6:
            OUTLINED_FUNCTION_33_9();
            break;
          default:
            break;
        }

        v19 = sub_26666CAC8();

        if (v19)
        {
LABEL_27:
          sub_26663387C(v8);
          ++v11;
        }

        else
        {
LABEL_28:
          sub_26663354C(v8, v24);
          v20 = v26;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_29_8();
            v20 = v31;
          }

          v1 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v1 >= v22 >> 1)
          {
            v23 = OUTLINED_FUNCTION_57_1(v22);
            sub_266633824(v23, v1 + 1, 1);
            v20 = v31;
          }

          ++v11;
          *(v20 + 16) = v1 + 1;
          v26 = v20;
          sub_26663354C(v24, v20 + v12 + v1 * v13);
        }

        break;
    }
  }

  __break(1u);
}

BOOL sub_26662E0D4()
{
  if (qword_28007CE40 != -1)
  {
    OUTLINED_FUNCTION_2_20(&qword_28007CE40);
  }

  type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_41();
  sub_266633334(v0, v1, &unk_266679EEC);
  OUTLINED_FUNCTION_11_22();
  sub_26666A528();
  if (v18 != 16)
  {
    OUTLINED_FUNCTION_12_21(v18);
    v4 = v4 && v3 == 0xE300000000000000;
    if (!v4)
    {
      sub_26666CAC8();
      OUTLINED_FUNCTION_52_4();
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_11_22();
  sub_26666A528();
  if (v17 != 16)
  {
    OUTLINED_FUNCTION_12_21(v17);
    if (!v4 || v5 != 0xE800000000000000)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_11_22();
  sub_26666A528();
  if (v16 != 16)
  {
    OUTLINED_FUNCTION_12_21(v16);
    if (!v4 || v7 != 0xE500000000000000)
    {
LABEL_17:
      OUTLINED_FUNCTION_37_4();
      sub_26666CAC8();
      OUTLINED_FUNCTION_52_4();
      goto LABEL_30;
    }

LABEL_29:

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_11_22();
  sub_26666A528();
  if (v15 == 16)
  {
    return 0;
  }

  if (sub_2666315D8(v15) == 0x65736F706F7270 && v9 == 0xE700000000000000)
  {
    goto LABEL_29;
  }

  v11 = sub_26666CAC8();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  if (qword_28007CE68 != -1)
  {
    OUTLINED_FUNCTION_3_33(&qword_28007CE68);
  }

  OUTLINED_FUNCTION_25_12();
  v12 = sub_26666A538();
  v13 = sub_266603C24(21, v12);

  return !v13;
}

BOOL sub_26662E328()
{
  if (qword_28007CE40 != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_2_20(&qword_28007CE40);
  }

  type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_41();
  sub_266633334(v0, v1, &unk_266679EEC);
  OUTLINED_FUNCTION_25_12();
  sub_26666A528();
  if (v21 != 16)
  {
    if (sub_2666315D8(v21) == 0x7564656863736572 && v9 == 0xEA0000000000656CLL)
    {
      goto LABEL_29;
    }

    sub_26666CAC8();
    OUTLINED_FUNCTION_72_0();
  }

  OUTLINED_FUNCTION_25_12();
  sub_26666A528();
  if (v20 != 16)
  {
    v11 = sub_2666315D8(v20);
    if (v11 != 0x796669646F6DLL || v12 != 0xE600000000000000)
    {
      OUTLINED_FUNCTION_64_1(v11, v12, 0x796669646F6DLL);
      OUTLINED_FUNCTION_72_0();
      return 1;
    }

LABEL_29:
    v6 = 1;
LABEL_30:

    return v6;
  }

  OUTLINED_FUNCTION_25_12();
  sub_26666A528();
  if (v19 == 16)
  {
LABEL_5:
    if (qword_28007CE68 != -1)
    {
      OUTLINED_FUNCTION_3_33(&qword_28007CE68);
    }

    OUTLINED_FUNCTION_11_22();
    v2 = *(sub_26666A538() + 16);

    if (!v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_11_22();
    v3 = sub_26666A538();
    v4 = 0;
    v5 = *(v3 + 16);
    while (1)
    {
      v6 = v5 != v4;
      if (v5 == v4)
      {
        goto LABEL_30;
      }

      if (v4 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v7 = v4 + 1;
      v8 = sub_266603C24(*(v3 + v4 + 32), &unk_287803FC0);
      v4 = v7;
      if (v8)
      {
        goto LABEL_30;
      }
    }
  }

  v14 = sub_2666315D8(v19);
  if (v14 == 0x656D616E6572 && v15 == 0xE600000000000000)
  {
    goto LABEL_29;
  }

  v17 = OUTLINED_FUNCTION_64_1(v14, v15, 0x656D616E6572);

  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_26662E594()
{
  if (qword_28007CE40 != -1)
  {
    OUTLINED_FUNCTION_2_20(&qword_28007CE40);
  }

  OUTLINED_FUNCTION_36_6();
  OUTLINED_FUNCTION_0_41();
  sub_266633334(v0, v1, &unk_266679EEC);
  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v32 == 16)
  {
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v31 != 16)
  {
    OUTLINED_FUNCTION_12_21(v31);
    v4 = v4 && v3 == 0xE400000000000000;
    if (v4)
    {
      goto LABEL_48;
    }

    sub_26666CAC8();
    OUTLINED_FUNCTION_52_4();
  }

  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v30 != 16)
  {
    OUTLINED_FUNCTION_12_21(v30);
    if (!v4 || v5 != 0xE600000000000000)
    {
      OUTLINED_FUNCTION_37_4();
      OUTLINED_FUNCTION_64_1(v7, v8, v9);
      OUTLINED_FUNCTION_52_4();
LABEL_49:
      v2 = 1;
      return v2 & 1;
    }

    goto LABEL_48;
  }

  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v29 != 16)
  {
    OUTLINED_FUNCTION_12_21(v29);
    if (v4 && v10 == 0xE400000000000000)
    {
      goto LABEL_48;
    }

    sub_26666CAC8();
    OUTLINED_FUNCTION_52_4();
  }

  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v28 != 16)
  {
    OUTLINED_FUNCTION_12_21(v28);
    if (!v4 || v12 != 0xE500000000000000)
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v27 != 16)
  {
    OUTLINED_FUNCTION_12_21(v27);
    if (!v4 || v14 != 0xE700000000000000)
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v26 != 16)
  {
    OUTLINED_FUNCTION_12_21(v26);
    if (v4 && v16 == 0xE400000000000000)
    {
      goto LABEL_48;
    }

    sub_26666CAC8();
    OUTLINED_FUNCTION_52_4();
  }

  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v25 != 16)
  {
    OUTLINED_FUNCTION_12_21(v25);
    if (!v4 || v18 != 0xE500000000000000)
    {
LABEL_47:
      OUTLINED_FUNCTION_37_4();
      sub_26666CAC8();
      OUTLINED_FUNCTION_52_4();
      goto LABEL_49;
    }

LABEL_48:

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_4_33();
  sub_26666A528();
  if (v24 != 16)
  {
    v21 = sub_2666315D8(v24);
    if (v21 != 0x736974616877 || v22 != 0xE600000000000000)
    {
      v2 = OUTLINED_FUNCTION_64_1(v21, v22, 0x736974616877);

      return v2 & 1;
    }

    goto LABEL_48;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t sub_26662E8E4()
{
  if (qword_28007CE40 != -1)
  {
    OUTLINED_FUNCTION_2_20(&qword_28007CE40);
  }

  OUTLINED_FUNCTION_36_6();
  OUTLINED_FUNCTION_0_41();
  sub_266633334(v0, v1, &unk_266679EEC);
  OUTLINED_FUNCTION_15_2();
  sub_26666A528();
  if (v7 == 16)
  {
    v2 = 0;
  }

  else
  {
    v3 = sub_2666315D8(v7);
    if (v3 == 0x6574656C6564 && v4 == 0xE600000000000000)
    {

      v2 = 1;
    }

    else
    {
      v2 = OUTLINED_FUNCTION_64_1(v3, v4, 0x6574656C6564);
    }
  }

  return v2 & 1;
}

uint64_t sub_26662E9D4()
{
  if (qword_28007CE68 != -1)
  {
LABEL_10:
    OUTLINED_FUNCTION_3_33(&qword_28007CE68);
  }

  OUTLINED_FUNCTION_36_6();
  OUTLINED_FUNCTION_0_41();
  sub_266633334(v0, v1, &unk_266679EEC);
  OUTLINED_FUNCTION_15_2();
  v2 = sub_26666A538();
  v3 = 0;
  v4 = *(v2 + 16);
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v5 = *(v2 + v3++ + 32);
    if (sub_266603C24(v5, &unk_287804098))
    {
      goto LABEL_8;
    }
  }

  v5 = 40;
LABEL_8:

  return v5;
}

uint64_t sub_26662EAB8(uint64_t a1)
{
  result = sub_26662EB9C();
  if (result == 40)
  {
    if (qword_28007CE40 != -1)
    {
      OUTLINED_FUNCTION_2_20(&qword_28007CE40);
    }

    OUTLINED_FUNCTION_36_6();
    OUTLINED_FUNCTION_0_41();
    sub_266633334(v2, v3, &unk_266679EEC);
    OUTLINED_FUNCTION_15_2();
    sub_26666A528();
    if (v4 == 4)
    {
      return 20;
    }

    else if (v4 == 3)
    {
      return 21;
    }

    else if (v4 == 1 && sub_26662E9D4() == 40)
    {
      return 17;
    }

    else
    {
      return 40;
    }
  }

  return result;
}

uint64_t sub_26662EB9C()
{
  if (qword_28007CE68 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    OUTLINED_FUNCTION_36_6();
    OUTLINED_FUNCTION_0_41();
    sub_266633334(v0, v1, &unk_266679EEC);
    OUTLINED_FUNCTION_4_33();
    v2 = *(sub_26666A538() + 16);

    if (!v2)
    {
      return 40;
    }

    OUTLINED_FUNCTION_4_33();
    v3 = sub_26666A538();
    v4 = 0;
    v5 = *(v3 + 16);
    while (1)
    {
      if (v5 == v4)
      {
        v6 = 40;
LABEL_10:

        return v6;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      v6 = *(v3 + v4++ + 32);
      if (sub_266603C24(v6, &unk_287803E70))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_3_33(&qword_28007CE68);
  }
}

void sub_26662EC9C()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for CalendarEventAttendeeIntentNode(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8_10();
  v14 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_71_0();
  v6 = v5;
  v7 = 0;
  OUTLINED_FUNCTION_68_1("replace attendee");
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v0 == v7)
    {

      sub_26663045C(v15);
      OUTLINED_FUNCTION_79();

      OUTLINED_FUNCTION_27_0();
      return;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_51_4();
    if (qword_28007CEB0 != -1)
    {
      OUTLINED_FUNCTION_6_24();
      swift_once();
    }

    OUTLINED_FUNCTION_5_26();
    sub_266633334(&qword_28007F910, v8, &unk_26667AC58);
    OUTLINED_FUNCTION_55_3();
    sub_26666A528();
    switch(v16)
    {
      case 1:
        OUTLINED_FUNCTION_60_2();
        goto LABEL_10;
      case 2:
        OUTLINED_FUNCTION_47_5();
        goto LABEL_10;
      case 3:

        goto LABEL_13;
      case 6:
        OUTLINED_FUNCTION_65_3();
        goto LABEL_10;
      case 7:
        goto LABEL_11;
      default:
LABEL_10:
        OUTLINED_FUNCTION_67_1();
        v9 = sub_26666CAC8();

        if (v9)
        {
LABEL_13:
          sub_26663354C(v1, v14);
          v10 = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_29_8();
            v10 = v15;
          }

          v11 = *(v10 + 24);
          if (*(v10 + 16) >= v11 >> 1)
          {
            v12 = OUTLINED_FUNCTION_57_1(v11);
            v15 = v13;
            sub_266633824(v12, v13, 1);
          }

          OUTLINED_FUNCTION_58_0();
        }

        else
        {
LABEL_11:
          sub_26663387C(v1);
          ++v7;
        }

        break;
    }
  }

  __break(1u);
}

void sub_26662EF30()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for CalendarEventAttendeeIntentNode(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8_10();
  v16 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_71_0();
  v6 = v5;
  v7 = 0;
  OUTLINED_FUNCTION_68_1("replace attendee");
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v0 == v7)
    {

      sub_26663045C(v17);
      OUTLINED_FUNCTION_79();

      OUTLINED_FUNCTION_27_0();
      return;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_51_4();
    if (qword_28007CEB0 != -1)
    {
      OUTLINED_FUNCTION_6_24();
      swift_once();
    }

    OUTLINED_FUNCTION_5_26();
    sub_266633334(&qword_28007F910, v8, &unk_26667AC58);
    OUTLINED_FUNCTION_55_3();
    sub_26666A528();
    v9 = 0xE400000000000000;
    v10 = 1752459639;
    switch(v19)
    {
      case 1:
        v10 = OUTLINED_FUNCTION_60_2();
        goto LABEL_12;
      case 2:
        v10 = OUTLINED_FUNCTION_47_5();
        goto LABEL_12;
      case 3:
        v9 = 0xEC0000006565646ELL;
        v10 = 0x6574746120646461;
        goto LABEL_12;
      case 4:
        OUTLINED_FUNCTION_66_1();

        goto LABEL_15;
      case 5:
        v10 = 0xD000000000000010;
        v9 = v18;
        goto LABEL_12;
      case 6:
        v10 = OUTLINED_FUNCTION_65_3();
        goto LABEL_12;
      case 7:
        goto LABEL_13;
      default:
LABEL_12:
        v11 = OUTLINED_FUNCTION_42_7(v10, v9);

        if (v11)
        {
LABEL_15:
          sub_26663354C(v1, v16);
          v12 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_29_8();
            v12 = v17;
          }

          v13 = *(v12 + 24);
          if (*(v12 + 16) >= v13 >> 1)
          {
            v14 = OUTLINED_FUNCTION_57_1(v13);
            v17 = v15;
            sub_266633824(v14, v15, 1);
          }

          OUTLINED_FUNCTION_58_0();
        }

        else
        {
LABEL_13:
          sub_26663387C(v1);
          ++v7;
        }

        break;
    }
  }

  __break(1u);
}

void sub_26662F1A4(char a1)
{
  switch(a1)
  {
    case 6:
      OUTLINED_FUNCTION_14_15();
      break;
    case 7:
      OUTLINED_FUNCTION_8_23();
      break;
    case 8:
      OUTLINED_FUNCTION_13_17();
      break;
    case 10:
      OUTLINED_FUNCTION_10_21();
      break;
    case 11:
      OUTLINED_FUNCTION_15_15();
      break;
    case 21:
      OUTLINED_FUNCTION_40_4();
      break;
    case 22:
    case 23:
      OUTLINED_FUNCTION_45_5();
      break;
    default:
      return;
  }
}

BOOL sub_26662F520()
{
  if (qword_28007CE88 != -1)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_9(&qword_28007CE88);
  }

  OUTLINED_FUNCTION_36_6();
  OUTLINED_FUNCTION_0_41();
  sub_266633334(v0, v1, &unk_266679EEC);
  OUTLINED_FUNCTION_15_2();
  v2 = sub_26666A538();
  v3 = v2 + 40;
  v4 = -*(v2 + 16);
  v5 = -1;
  do
  {
    v6 = v4 + v5;
    if (v4 + v5 == -1)
    {
      break;
    }

    if (++v5 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = v3 + 16;

    v8 = sub_26666C958();

    v3 = v7;
  }

  while (v8 > 3);

  return v6 != -1;
}

uint64_t sub_26662F638()
{
  if (qword_28007CE30 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26662F694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F8C8, &qword_26667A0A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266679E30;
  if (qword_28007CE38 != -1)
  {
    swift_once();
  }

  v1 = qword_280095818;
  *(v0 + 56) = OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_16_16();
  *(v0 + 64) = sub_26655369C(v2, v3, v4, v5);
  *(v0 + 32) = v1;
  v6 = qword_28007CE40;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_2_20(&qword_28007CE40);
  }

  v7 = qword_280095820;
  *(v0 + 96) = OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_16_16();
  *(v0 + 104) = sub_26655369C(v8, v9, v10, v11);
  *(v0 + 72) = v7;
  v12 = qword_28007CE48;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280095828;
  *(v0 + 136) = OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_16_16();
  *(v0 + 144) = sub_26655369C(v14, v15, v16, v17);
  *(v0 + 112) = v13;
  v18 = qword_28007CE50;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_280095830;
  *(v0 + 176) = OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_16_16();
  *(v0 + 184) = sub_26655369C(v20, v21, v22, v23);
  *(v0 + 152) = v19;
  v24 = qword_28007CE58;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_280095838;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED10, &qword_26667A0A0);
  *(v0 + 216) = v26;
  OUTLINED_FUNCTION_1_40();
  v29 = sub_26655369C(v27, &qword_28007ED10, &qword_26667A0A0, v28);
  *(v0 + 224) = v29;
  *(v0 + 192) = v25;
  v30 = qword_28007CE60;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_280095840;
  *(v0 + 256) = v26;
  *(v0 + 264) = v29;
  *(v0 + 232) = v31;
  v32 = qword_28007CE68;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_3_33(&qword_28007CE68);
  }

  v33 = qword_280095848;
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F930, &qword_26667A0F8);
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_37_4();
  *(v0 + 304) = sub_26655369C(v34, v35, v36, v37);
  *(v0 + 272) = v33;
  v38 = qword_28007CE70;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_31_9(&qword_28007CE70);
  }

  v39 = qword_280095850;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F978, &qword_26667A118);
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_37_4();
  *(v0 + 344) = sub_26655369C(v40, v41, v42, v43);
  *(v0 + 312) = v39;
  v44 = qword_28007CE78;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = qword_280095858;
  *(v0 + 376) = v26;
  *(v0 + 384) = v29;
  *(v0 + 352) = v45;
  v46 = qword_28007CE80;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_34_8(&qword_28007CE80);
  }

  v47 = qword_280095860;
  v48 = type metadata accessor for CalendarEventAttendeeOntologyNode(0);
  v49 = MEMORY[0x277D5E210];
  *(v0 + 416) = v48;
  *(v0 + 424) = v49;
  *(v0 + 392) = v47;
  v50 = qword_28007CE88;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_32_9(&qword_28007CE88);
  }

  v51 = qword_280095868;
  *(v0 + 456) = v26;
  *(v0 + 464) = v29;
  *(v0 + 432) = v51;
  v52 = sub_26666A148();
  OUTLINED_FUNCTION_7(v52);

  result = sub_26666A138();
  qword_280095810 = result;
  return result;
}

void sub_26662FB5C(char a1)
{
  switch(a1)
  {
    case 13:
    case 15:
      OUTLINED_FUNCTION_40_4();
      break;
    case 23:
      OUTLINED_FUNCTION_45_5();
      break;
    default:
      return;
  }
}

uint64_t sub_26662FE1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED20, &unk_266676C60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_39_6();
  result = OUTLINED_FUNCTION_59_1(25, v1);
  qword_280095818 = result;
  return result;
}

uint64_t sub_26662FE70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F938, &unk_26667A100);
  OUTLINED_FUNCTION_7(v0);
  result = OUTLINED_FUNCTION_35_8();
  qword_280095820 = result;
  return result;
}

uint64_t sub_26662FEBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F960, &qword_26667A110);
  OUTLINED_FUNCTION_7(v0);
  result = OUTLINED_FUNCTION_35_8();
  qword_280095828 = result;
  return result;
}

uint64_t sub_26662FF08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECF8, &qword_266676C58);
  OUTLINED_FUNCTION_7(v0);
  result = OUTLINED_FUNCTION_35_8();
  qword_280095830 = result;
  return result;
}

uint64_t sub_26662FF54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED10, &qword_26667A0A0);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_39_6();
  result = OUTLINED_FUNCTION_59_1(18, v1);
  qword_280095838 = result;
  return result;
}

uint64_t sub_26662FFA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED10, &qword_26667A0A0);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_39_6();
  result = OUTLINED_FUNCTION_59_1(21, v1);
  qword_280095840 = result;
  return result;
}

uint64_t sub_26662FFFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F930, &qword_26667A0F8);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_39_6();
  result = OUTLINED_FUNCTION_59_1(23, v1);
  qword_280095848 = result;
  return result;
}

uint64_t sub_266630050()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F978, &qword_26667A118);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_39_6();
  result = OUTLINED_FUNCTION_59_1(22, v1);
  qword_280095850 = result;
  return result;
}

uint64_t sub_2666300D4()
{
  v0 = type metadata accessor for CalendarEventAttendeeOntologyNode(0);
  OUTLINED_FUNCTION_7(v0);
  if (qword_28007CED0 != -1)
  {
    swift_once();
  }

  result = sub_26666A0E8();
  qword_280095860 = result;
  return result;
}

void sub_26663019C()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for CalendarEventAttendeeIntentNode(0);
  OUTLINED_FUNCTION_3_0();
  v31 = v1;
  v32 = v0;
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26666A588();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28007CE80 != -1)
  {
    OUTLINED_FUNCTION_34_8(&qword_28007CE80);
  }

  v10 = qword_280095860;
  type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_41();
  sub_266633334(v11, v12, &unk_266679EEC);
  v30 = v10;
  v13 = sub_26666A518();
  v14 = *(v13 + 16);
  if (v14)
  {
    v17 = *(v6 + 16);
    v15 = v6 + 16;
    v16 = v17;
    v18 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    v27 = v13;
    v28 = v19;
    v29 = v15;
    v20 = (v15 - 8);
    v21 = MEMORY[0x277D84F90];
    do
    {
      v16(v9, v18, v4);
      v16(v3, v9, v4);
      v22 = *v20;
      v23 = v30;

      v22(v9, v4);
      *&v3[*(v32 + 20)] = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2665C655C();
        v21 = v25;
      }

      v24 = *(v21 + 16);
      if (v24 >= *(v21 + 24) >> 1)
      {
        sub_2665C655C();
        v21 = v26;
      }

      *(v21 + 16) = v24 + 1;
      sub_26663354C(v3, v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v24);
      v18 += v28;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26663045C(uint64_t a1)
{
  v69 = sub_26666B4B8();
  v2 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v75 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F918, &qword_26667A0D0);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F920, &qword_26667A0D8);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F928, &unk_26667A0E0);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D230, &qword_26666E2B8);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v54 - v11;
  v55 = sub_26666A588();
  v12 = *(v55 - 8);
  v13 = MEMORY[0x28223BE20](v55);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v54 - v15;
  v82 = sub_26666A3F8();
  v16 = *(v82 - 8);
  v17 = MEMORY[0x28223BE20](v82);
  v61 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v54 - v19;
  v79 = sub_26666B448();
  v20 = *(v79 - 8);
  v21 = MEMORY[0x28223BE20](v79);
  v78 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  v80 = type metadata accessor for CalendarEventAttendeeIntentNode(0);
  MEMORY[0x28223BE20](v80);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 0;
  }

  v29 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v73 = *(v25 + 72);
  v60 = (v12 + 32);
  v59 = (v12 + 16);
  v58 = (v12 + 8);
  v57 = (v16 + 32);
  v56 = (v16 + 8);
  v67 = *MEMORY[0x277D56008];
  v66 = (v2 + 104);
  v71 = v20 + 8;
  v72 = (v20 + 16);
  v74 = v20;
  v70 = v20 + 32;
  v30 = MEMORY[0x277D84F90];
  v31 = v55;
  do
  {
    v76 = v30;
    sub_2666334E8(v29, v27);
    sub_26666B438();
    if (qword_28007CEA0 != -1)
    {
      swift_once();
    }

    sub_266633334(&qword_28007F910, type metadata accessor for CalendarEventAttendeeIntentNode, &unk_26667AC58);
    sub_26666A528();
    if (v83)
    {
      sub_26666B3E8();
    }

    if (qword_28007CE90 != -1)
    {
      swift_once();
    }

    sub_26666A528();
    if (v83)
    {
      sub_26666B408();
    }

    if (qword_28007CE98 != -1)
    {
      swift_once();
    }

    v32 = v77;
    sub_26666A508();
    if (__swift_getEnumTagSinglePayload(v32, 1, v31) == 1)
    {
      sub_26656CAEC(v77, &qword_28007D230, &qword_26666E2B8);
    }

    else
    {
      v33 = v62;
      (*v60)(v62, v77, v31);
      (*v59)(v63, v33, v31);
      sub_26666A1A8();
      swift_allocObject();
      sub_26666A198();
      v34 = v61;
      sub_26666A3E8();
      (*v58)(v33, v31);
      (*v57)(v81, v34, v82);
      v35 = v64;
      sub_26666A758();
      v36 = v35;
      v37 = sub_26666A168();
      if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
      {
        sub_26656CAEC(v36, &qword_28007F928, &unk_26667A0E0);
      }

      else
      {
        sub_26666A158();
        (*(*(v37 - 8) + 8))(v36, v37);
        v31 = v55;
        sub_26666B3C8();
      }

      v38 = v65;
      sub_26666A7A8();
      if (v39)
      {
        sub_26666B428();
      }

      sub_26666A778();
      if (v40)
      {
        sub_26666B408();
      }

      sub_26666A788();
      if (v41)
      {
        sub_26666B3A8();
      }

      sub_26666A768();
      v42 = sub_26666A188();
      if (__swift_getEnumTagSinglePayload(v38, 1, v42) == 1)
      {
        sub_26656CAEC(v38, &qword_28007F920, &qword_26667A0D8);
      }

      else
      {
        sub_26666A178();
        (*(*(v42 - 8) + 8))(v38, v42);
        sub_26666B3D8();
      }

      sub_26666A748();
      if (v43)
      {
        sub_26666B3B8();
      }

      sub_26666A798();
      if (v44)
      {
        sub_26666B418();
      }

      (*v56)(v81, v82);
    }

    if (qword_28007CEB8 != -1)
    {
      swift_once();
    }

    sub_26666A528();
    if (v83)
    {
      (*v66)(v75, v67, v69);
      if (qword_28007CEC0 != -1)
      {
        swift_once();
      }

      sub_26666A528();
      v45 = v68;
      sub_26666B598();
      v46 = sub_26666B5A8();
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
      sub_26666B3F8();
    }

    (*v72)(v78, v24, v79);
    v47 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2665C6634();
      v47 = v51;
    }

    v48 = *(v47 + 16);
    v30 = v47;
    if (v48 >= *(v47 + 24) >> 1)
    {
      sub_2665C6634();
      v30 = v52;
    }

    v49 = v74;
    v50 = v79;
    (*(v74 + 8))(v24, v79);
    sub_26663387C(v27);
    *(v30 + 16) = v48 + 1;
    (*(v49 + 32))(v30 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, v78, v50);
    v29 += v73;
    --v28;
  }

  while (v28);
  return v30;
}

void sub_266631170(char a1)
{
  switch(a1)
  {
    case 4:
      OUTLINED_FUNCTION_45_5();
      break;
    default:
      return;
  }
}

unint64_t sub_2666312CC(char a1)
{
  sub_26666C7E8();

  sub_26662FB5C(a1);

  sub_2665E89D0(1);
  v2 = sub_26666C6C8();
  v4 = v3;

  sub_2665E8A54(1uLL);
  sub_2665E8AEC();

  sub_26666C3B8();

  MEMORY[0x266788710](v2, v4);

  return 0xD000000000000012;
}

uint64_t sub_2666313F0(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = OUTLINED_FUNCTION_61_0(0x6E6Fu);
      break;
    case 4:
      result = 7105633;
      break;
    case 5:
      result = 0x206D7269666E6F63;
      break;
    case 6:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2666314A0()
{
  OUTLINED_FUNCTION_27_15();
  sub_26666C958();
  OUTLINED_FUNCTION_79();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266631530@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2666314A0();
  *a1 = result;
  return result;
}

uint64_t sub_266631560()
{
  v1 = OUTLINED_FUNCTION_26_10();
  result = sub_2666313F0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2666315D8(char a1)
{
  result = 1684957542;
  switch(a1)
  {
    case 1:
      result = 0x73696E656877;
      break;
    case 2:
      result = 1763733348;
      break;
    case 3:
      result = 0x73696F6877;
      break;
    case 4:
      result = 0x73696572656877;
      break;
    case 5:
      result = 0x656C756465686373;
      break;
    case 6:
      result = 0x7564656863736572;
      break;
    case 7:
      result = 0x796669646F6DLL;
      break;
    case 8:
      result = 0x656D616E6572;
      break;
    case 9:
      result = 0x6574656C6564;
      break;
    case 10:
      result = 1684104562;
      break;
    case 11:
      result = 0x6B63656863;
      break;
    case 12:
      result = 0x65736F706F7270;
      break;
    case 13:
      result = 0x65726F7473;
      break;
    case 14:
      result = 6579297;
      break;
    case 15:
      result = 0x736974616877;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266631738()
{
  OUTLINED_FUNCTION_27_15();
  sub_26666C958();
  OUTLINED_FUNCTION_79();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26663177C()
{
  OUTLINED_FUNCTION_27_15();
  sub_26666C958();
  OUTLINED_FUNCTION_79();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2666317C0(char a1)
{
  result = 0x6D746E696F707061;
  switch(a1)
  {
    case 2:
      result = 0x676E697465656DLL;
      break;
    case 3:
      result = 0x73676E697465656DLL;
      break;
    case 4:
      result = 0x746E657665;
      break;
    case 5:
      result = 0x73746E657665;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266631914@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266631738();
  *a1 = result;
  return result;
}

uint64_t sub_266631944()
{
  v1 = OUTLINED_FUNCTION_26_10();
  result = sub_2666315D8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_266631A08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26663177C();
  *a1 = result;
  return result;
}

unint64_t sub_266631A38()
{
  v1 = OUTLINED_FUNCTION_26_10();
  result = sub_2666317C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_266631AB0()
{
  OUTLINED_FUNCTION_27_15();
  sub_26666CAE8();
  OUTLINED_FUNCTION_79();

  if (v0 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266631AFC()
{
  OUTLINED_FUNCTION_27_15();
  sub_26666CAE8();
  OUTLINED_FUNCTION_79();

  if (v0 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v0;
  }
}

void sub_266631B48(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_10_21();
      break;
    case 2:
      OUTLINED_FUNCTION_15_15();
      break;
    case 8:
      OUTLINED_FUNCTION_43_4();
      break;
    case 10:
      OUTLINED_FUNCTION_30_11();
      break;
    case 12:
      OUTLINED_FUNCTION_41_3(0x72696874u);
      break;
    case 13:
      OUTLINED_FUNCTION_41_3(0x72756F66u);
      break;
    case 14:
    case 15:
    case 19:
      OUTLINED_FUNCTION_45_5();
      break;
    case 16:
      OUTLINED_FUNCTION_20_18();
      break;
    case 17:
      OUTLINED_FUNCTION_41_3(0x68676965u);
      break;
    case 18:
      OUTLINED_FUNCTION_41_3(0x656E696Eu);
      break;
    case 20:
    case 23:
    case 24:
      OUTLINED_FUNCTION_46_1();
      break;
    case 21:
      OUTLINED_FUNCTION_19_19();
      break;
    case 22:
      OUTLINED_FUNCTION_22_10();
      break;
    case 25:
      OUTLINED_FUNCTION_13_17();
      break;
    case 26:
      OUTLINED_FUNCTION_44_5();
      break;
    case 27:
      OUTLINED_FUNCTION_14_15();
      break;
    case 28:
      OUTLINED_FUNCTION_8_23();
      break;
    case 29:
      OUTLINED_FUNCTION_21_10();
      break;
    case 30:
      OUTLINED_FUNCTION_23_13();
      break;
    case 32:
      OUTLINED_FUNCTION_49_2();
      break;
    case 34:
      OUTLINED_FUNCTION_61_0(0x6873u);
      break;
    default:
      return;
  }
}

unint64_t sub_266631D20()
{
  OUTLINED_FUNCTION_27_15();
  sub_26666C958();
  OUTLINED_FUNCTION_79();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266631D64(char a1)
{
  result = 1752459639;
  switch(a1)
  {
    case 1:
      result = 0x646564756C636E69;
      break;
    case 2:
      result = 0x646E657474417369;
      break;
    case 3:
      result = 0x6574746120646461;
      break;
    case 4:
      result = 0x612065766F6D6572;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x65726F6E6769;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266631E44()
{
  OUTLINED_FUNCTION_27_15();
  sub_26666C958();
  OUTLINED_FUNCTION_79();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266631E88()
{
  OUTLINED_FUNCTION_27_15();
  sub_26666C958();
  OUTLINED_FUNCTION_79();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266631ED4(char a1)
{
  if (a1)
  {
    return 0x64646120646E61;
  }

  else
  {
    return 6581857;
  }
}

unint64_t sub_266631F04()
{
  OUTLINED_FUNCTION_27_15();
  sub_26666CAE8();
  OUTLINED_FUNCTION_79();

  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

void sub_266631F50(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_10_21();
      break;
    case 2:
      OUTLINED_FUNCTION_15_15();
      break;
    case 8:
      OUTLINED_FUNCTION_43_4();
      break;
    case 10:
      OUTLINED_FUNCTION_30_11();
      break;
    case 12:
      OUTLINED_FUNCTION_41_3(0x72696874u);
      break;
    case 13:
      OUTLINED_FUNCTION_41_3(0x72756F66u);
      break;
    case 14:
    case 15:
    case 19:
      OUTLINED_FUNCTION_45_5();
      break;
    case 16:
      OUTLINED_FUNCTION_20_18();
      break;
    case 17:
      OUTLINED_FUNCTION_41_3(0x68676965u);
      break;
    case 18:
      OUTLINED_FUNCTION_41_3(0x656E696Eu);
      break;
    case 20:
    case 23:
    case 24:
      OUTLINED_FUNCTION_46_1();
      break;
    case 21:
      OUTLINED_FUNCTION_19_19();
      break;
    case 22:
      OUTLINED_FUNCTION_22_10();
      break;
    case 25:
      OUTLINED_FUNCTION_13_17();
      break;
    case 26:
      OUTLINED_FUNCTION_44_5();
      break;
    case 27:
      OUTLINED_FUNCTION_14_15();
      break;
    case 28:
      OUTLINED_FUNCTION_8_23();
      break;
    case 29:
      OUTLINED_FUNCTION_21_10();
      break;
    case 30:
      OUTLINED_FUNCTION_23_13();
      break;
    case 32:
      OUTLINED_FUNCTION_49_2();
      break;
    case 33:
      OUTLINED_FUNCTION_61_0(0x6874u);
      break;
    default:
      return;
  }
}

unint64_t sub_26663214C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266631AB0();
  *a1 = result;
  return result;
}

void sub_26663217C()
{
  v1 = OUTLINED_FUNCTION_26_10();
  sub_26662F1A4(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_266632240@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266631AFC();
  *a1 = result;
  return result;
}

void sub_266632270()
{
  v1 = OUTLINED_FUNCTION_26_10();
  sub_266631B48(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_266632334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266631D20();
  *a1 = result;
  return result;
}

unint64_t sub_266632364()
{
  v1 = OUTLINED_FUNCTION_26_10();
  result = sub_266631D64(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_266632428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266631E44();
  *a1 = result;
  return result;
}

void sub_266632458()
{
  v1 = OUTLINED_FUNCTION_26_10();
  sub_266631170(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_2666324F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266631E88();
  *a1 = result;
  return result;
}

uint64_t sub_266632524()
{
  v1 = OUTLINED_FUNCTION_26_10();
  result = sub_266631ED4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2666325E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266631F04();
  *a1 = result;
  return result;
}

void sub_266632618()
{
  v1 = OUTLINED_FUNCTION_26_10();
  sub_266631F50(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_266632690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_266632750(uint64_t a1)
{
  v2 = sub_266633334(&qword_28007F988, type metadata accessor for CalendarNLv3Intent, &unk_266679F1C);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_2666327CC(uint64_t a1)
{
  v2 = sub_266633334(&qword_28007F988, type metadata accessor for CalendarNLv3Intent, &unk_266679F1C);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_266632838(uint64_t a1)
{
  v2 = sub_266633334(&qword_28007F988, type metadata accessor for CalendarNLv3Intent, &unk_266679F1C);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_2666328C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F8C8, &qword_26667A0A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26666EED0;
  v1 = sub_26666A1A8();
  swift_allocObject();
  v2 = sub_26666A198();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;
  *(v0 + 32) = v2;
  sub_26666A108();
  swift_allocObject();
  result = sub_26666A0E8();
  qword_280095878 = result;
  return result;
}

uint64_t sub_2666329C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F8D0, &qword_26667A0B0);
  swift_allocObject();
  result = sub_26666A1B8();
  qword_280095888 = result;
  return result;
}

uint64_t sub_266632A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F8E0, &qword_26667A0B8);
  swift_allocObject();
  result = sub_26666A1B8();
  qword_280095890 = result;
  return result;
}

uint64_t sub_266632AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED10, &qword_26667A0A0);
  OUTLINED_FUNCTION_7(v6);
  result = sub_26666A1B8();
  *a5 = result;
  return result;
}

uint64_t sub_266632B28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F8F0, &qword_26667A0C0);
  swift_allocObject();
  result = sub_26666A1B8();
  qword_2800958A0 = result;
  return result;
}

uint64_t sub_266632B90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F900, &qword_26667A0C8);
  swift_allocObject();
  result = sub_26666A1B8();
  qword_2800958A8 = result;
  return result;
}

uint64_t sub_266632BFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F8C8, &qword_26667A0A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266679E40;
  if (qword_28007CE90 != -1)
  {
    swift_once();
  }

  v1 = qword_280095870;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED10, &qword_26667A0A0);
  *(v0 + 56) = v2;
  v3 = sub_26655369C(&qword_28007ED18, &qword_28007ED10, &qword_26667A0A0, MEMORY[0x277D5E430]);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_28007CE98;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280095878;
  v6 = sub_26666A108();
  v7 = MEMORY[0x277D5E210];
  *(v0 + 96) = v6;
  *(v0 + 104) = v7;
  *(v0 + 72) = v5;
  v8 = qword_28007CEA0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_280095880;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v9;
  v10 = qword_28007CEA8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280095888;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F8D0, &qword_26667A0B0);
  *(v0 + 184) = sub_26655369C(&qword_28007F8D8, &qword_28007F8D0, &qword_26667A0B0, MEMORY[0x277D5E430]);
  *(v0 + 152) = v11;
  v12 = qword_28007CEB0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280095890;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F8E0, &qword_26667A0B8);
  *(v0 + 224) = sub_26655369C(&qword_28007F8E8, &qword_28007F8E0, &qword_26667A0B8, MEMORY[0x277D5E430]);
  *(v0 + 192) = v13;
  v14 = qword_28007CEB8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_280095898;
  *(v0 + 256) = v2;
  *(v0 + 264) = v3;
  *(v0 + 232) = v15;
  v16 = qword_28007CEC0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_2800958A0;
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F8F0, &qword_26667A0C0);
  *(v0 + 304) = sub_26655369C(&qword_28007F8F8, &qword_28007F8F0, &qword_26667A0C0, MEMORY[0x277D5E430]);
  *(v0 + 272) = v17;
  v18 = qword_28007CEC8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_2800958A8;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F900, &qword_26667A0C8);
  *(v0 + 344) = sub_26655369C(&qword_28007F908, &qword_28007F900, &qword_26667A0C8, MEMORY[0x277D5E430]);
  *(v0 + 312) = v19;
  qword_2800958B0 = v0;
}

uint64_t sub_266633054()
{
  v0 = sub_26666A118();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t getEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventNoun(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventNoun(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266633238(uint64_t a1)
{
  result = sub_26666B208();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266633334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266633380()
{
  result = qword_28007F8A0;
  if (!qword_28007F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F8A0);
  }

  return result;
}

unint64_t sub_26663341C()
{
  result = qword_28007F8B8;
  if (!qword_28007F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F8B8);
  }

  return result;
}

unint64_t sub_266633474()
{
  result = qword_28007F8C0;
  if (!qword_28007F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F8C0);
  }

  return result;
}

uint64_t sub_2666334E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEventAttendeeIntentNode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26663354C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEventAttendeeIntentNode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2666335B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26666A588();
  OUTLINED_FUNCTION_18_2();
  (*(v6 + 16))(a3, a1);
  *(a3 + *(type metadata accessor for CalendarEventAttendeeIntentNode(0) + 20)) = a2;
}

uint64_t sub_266633650@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_18_2();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t sub_2666336C4(uint64_t a1)
{
  v2 = sub_266633334(&qword_28007FAF8, type metadata accessor for CalendarEventAttendeeIntentNode, &unk_26667A738);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_266633740(uint64_t a1)
{
  v2 = sub_266633334(&qword_28007FAF8, type metadata accessor for CalendarEventAttendeeIntentNode, &unk_26667A738);

  return MEMORY[0x2821C1920](a1, v2);
}

void *sub_2666337AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266633C60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26663387C(uint64_t a1)
{
  v2 = type metadata accessor for CalendarEventAttendeeIntentNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_266633AE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266634024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266633B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_48_5();
  sub_266633D70();
  *v3 = v4;
}

void *sub_266633BA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266634170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266633C20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266634280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266633C40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266634380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266633C60(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F990, &unk_26667A120);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_2665C7428(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE38, &qword_266677248);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_266633D70()
{
  OUTLINED_FUNCTION_28_0();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v22 = *(v7(0) - 8);
  if (v10)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v5(v8 + v23, v14, v19 + v23);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_266633F28()
{
  result = qword_28007F940;
  if (!qword_28007F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F940);
  }

  return result;
}

unint64_t sub_266633F7C()
{
  result = qword_28007F948;
  if (!qword_28007F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F948);
  }

  return result;
}

unint64_t sub_266633FD0()
{
  result = qword_28007F950;
  if (!qword_28007F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F950);
  }

  return result;
}

void *sub_266634024(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD30, &qword_2666725F0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_2665C7428(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_266634170(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5C0, &unk_266674E30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2665C730C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5C8, &unk_26667AC90);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_266634280(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F9A0, &qword_26667A158);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_2665C7344((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_266634380(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E608, &unk_26667A130);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2665C71F4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD9)
  {
    if (a2 + 39 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 39) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 40;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v5 = v6 - 40;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventAttributes(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2666348EC(uint64_t a1)
{
  result = sub_26666A588();
  if (v2 <= 0x3F)
  {
    result = sub_26666A108();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.JoinContact(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.EmailType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_266634B28(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CalendarNLv3Intent.AttendeeReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.AttendeeReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266634D6C()
{
  result = qword_28007F9B8;
  if (!qword_28007F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9B8);
  }

  return result;
}

unint64_t sub_266634E08()
{
  result = qword_28007F9D0;
  if (!qword_28007F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9D0);
  }

  return result;
}

unint64_t sub_266634E60()
{
  result = qword_28007F9D8;
  if (!qword_28007F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9D8);
  }

  return result;
}

unint64_t sub_266634EB8()
{
  result = qword_28007F9E0;
  if (!qword_28007F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9E0);
  }

  return result;
}

unint64_t sub_266634F54()
{
  result = qword_28007F9F8;
  if (!qword_28007F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9F8);
  }

  return result;
}

unint64_t sub_266634FAC()
{
  result = qword_28007FA00;
  if (!qword_28007FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA00);
  }

  return result;
}

unint64_t sub_266635004()
{
  result = qword_28007FA08;
  if (!qword_28007FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA08);
  }

  return result;
}

unint64_t sub_2666350A0()
{
  result = qword_28007FA20;
  if (!qword_28007FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA20);
  }

  return result;
}

unint64_t sub_2666350F8()
{
  result = qword_28007FA28;
  if (!qword_28007FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA28);
  }

  return result;
}

unint64_t sub_266635150()
{
  result = qword_28007FA30;
  if (!qword_28007FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA30);
  }

  return result;
}

unint64_t sub_2666351EC()
{
  result = qword_28007FA48;
  if (!qword_28007FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA48);
  }

  return result;
}

unint64_t sub_266635244()
{
  result = qword_28007FA50;
  if (!qword_28007FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA50);
  }

  return result;
}

unint64_t sub_2666352E4()
{
  result = qword_28007FA58;
  if (!qword_28007FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA58);
  }

  return result;
}

unint64_t sub_266635380()
{
  result = qword_28007FA70;
  if (!qword_28007FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA70);
  }

  return result;
}

unint64_t sub_2666353D8()
{
  result = qword_28007FA78;
  if (!qword_28007FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA78);
  }

  return result;
}

unint64_t sub_266635430()
{
  result = qword_28007FA80;
  if (!qword_28007FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA80);
  }

  return result;
}

unint64_t sub_2666354CC()
{
  result = qword_28007FA98;
  if (!qword_28007FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA98);
  }

  return result;
}

unint64_t sub_266635524()
{
  result = qword_28007FAA0;
  if (!qword_28007FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAA0);
  }

  return result;
}

unint64_t sub_26663557C()
{
  result = qword_28007FAA8;
  if (!qword_28007FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAA8);
  }

  return result;
}

unint64_t sub_266635618()
{
  result = qword_28007FAC0;
  if (!qword_28007FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAC0);
  }

  return result;
}

unint64_t sub_266635670()
{
  result = qword_28007FAC8;
  if (!qword_28007FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAC8);
  }

  return result;
}

unint64_t sub_2666356C8()
{
  result = qword_28007FAD0;
  if (!qword_28007FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAD0);
  }

  return result;
}

unint64_t sub_266635764()
{
  result = qword_28007FAE8;
  if (!qword_28007FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAE8);
  }

  return result;
}

unint64_t sub_2666357BC()
{
  result = qword_28007FAF0;
  if (!qword_28007FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAF0);
  }

  return result;
}

unint64_t sub_266635810()
{
  result = qword_28007FB08;
  if (!qword_28007FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB08);
  }

  return result;
}

unint64_t sub_266635864()
{
  result = qword_28007FB10;
  if (!qword_28007FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB10);
  }

  return result;
}

unint64_t sub_2666358B8()
{
  result = qword_28007FB18;
  if (!qword_28007FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB18);
  }

  return result;
}

unint64_t sub_26663590C()
{
  result = qword_28007FB20;
  if (!qword_28007FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB20);
  }

  return result;
}

unint64_t sub_266635960()
{
  result = qword_28007FB28;
  if (!qword_28007FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB28);
  }

  return result;
}

unint64_t sub_2666359B4()
{
  result = qword_28007FB30;
  if (!qword_28007FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB30);
  }

  return result;
}

unint64_t sub_266635A08()
{
  result = qword_28007FB38;
  if (!qword_28007FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB38);
  }

  return result;
}

unint64_t sub_266635A5C()
{
  result = qword_28007FB40;
  if (!qword_28007FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB40);
  }

  return result;
}

unint64_t sub_266635AB0()
{
  result = qword_28007FB48;
  if (!qword_28007FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB48);
  }

  return result;
}

unint64_t sub_266635B04()
{
  result = qword_28007FB50;
  if (!qword_28007FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB50);
  }

  return result;
}

unint64_t sub_266635B58()
{
  result = qword_28007FB58;
  if (!qword_28007FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB58);
  }

  return result;
}

unint64_t sub_266635BAC()
{
  result = qword_28007FB60;
  if (!qword_28007FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB60);
  }

  return result;
}

unint64_t sub_266635C00()
{
  result = qword_28007FB68;
  if (!qword_28007FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB68);
  }

  return result;
}

unint64_t sub_266635C54()
{
  result = qword_28007FB70;
  if (!qword_28007FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB70);
  }

  return result;
}

unint64_t sub_266635CA8()
{
  result = qword_28007FB78;
  if (!qword_28007FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB78);
  }

  return result;
}

unint64_t sub_266635CFC()
{
  result = qword_28007FB80;
  if (!qword_28007FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB80);
  }

  return result;
}

unint64_t sub_266635D50()
{
  result = qword_28007FB88;
  if (!qword_28007FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB88);
  }

  return result;
}

unint64_t sub_266635DA4()
{
  result = qword_28007FB90;
  if (!qword_28007FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB90);
  }

  return result;
}

unint64_t sub_266635DF8()
{
  result = qword_28007FB98;
  if (!qword_28007FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB98);
  }

  return result;
}

unint64_t sub_266635E4C()
{
  result = qword_28007FBA0;
  if (!qword_28007FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBA0);
  }

  return result;
}

unint64_t sub_266635EA0()
{
  result = qword_28007FBA8;
  if (!qword_28007FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBA8);
  }

  return result;
}

unint64_t sub_266635EF4()
{
  result = qword_28007FBB0;
  if (!qword_28007FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBB0);
  }

  return result;
}

unint64_t sub_266635F48()
{
  result = qword_28007FBB8;
  if (!qword_28007FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBB8);
  }

  return result;
}

unint64_t sub_266635F9C()
{
  result = qword_28007FBC0;
  if (!qword_28007FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_33(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_29_8()
{
  v2 = *(v0 + 16) + 1;

  sub_266633824(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return sub_26666A1B8();
}

uint64_t OUTLINED_FUNCTION_42_7(uint64_t a1, uint64_t a2)
{

  return sub_26666CAC8();
}

uint64_t OUTLINED_FUNCTION_51_4()
{
  v5 = v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v0;

  return sub_2666334E8(v5, v2);
}

uint64_t OUTLINED_FUNCTION_52_4()
{
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  *(v1 + 16) = v0;
  *(v5 - 112) = v1;
  v7 = *(v5 - 120);

  return sub_26663354C(v7, v1 + v4 + v2 * v3);
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1, uint64_t a2)
{

  return sub_26666A1B8();
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26666CAC8();
}

void *OUTLINED_FUNCTION_70_2(uint64_t a1, ...)
{

  return sub_26666CB88();
}

void OUTLINED_FUNCTION_71_0()
{
  *(v1 - 128) = v0;

  sub_26663019C();
}

uint64_t OUTLINED_FUNCTION_72_0()
{
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

id sub_26663660C(id a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = [v2 setDateTimeRange]) != 0)
  {
    v5 = v4;
    sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
    v6 = [a1 setDateTimeRange];
    sub_2665D23CC();
    v8 = v7;
  }

  else
  {
    v8 = [a1 setDateTimeRange];
  }

  v9 = v8;
  v30 = sub_26659A284(a1);
  v11 = v10;
  v29 = sub_26659A290(a1);
  v13 = v12;
  v14 = [a1 setLocation];
  v15 = sub_26659A2F8(a1);
  v16 = sub_26659A304(a1);
  v17 = [a1 removeLocation];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 BOOLValue];
  }

  else
  {
    v19 = 2;
  }

  v20 = [a1 updateAllOccurrences];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 BOOLValue];
  }

  else
  {
    v22 = 2;
  }

  if (v16)
  {
    v23 = 1;
  }

  else
  {
    v23 = 3;
  }

  if (v15)
  {
    v24 = 1;
  }

  else
  {
    v24 = 3;
  }

  if (v13)
  {
    v25 = v29;
  }

  else
  {
    v25 = 0;
  }

  if (v11)
  {
    v26 = v30;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_266636A48(v26, v11, v25, v13, v9, v14, v15, 0, v24, v16, 0, v23, v19, v22);
  sub_2665671D8(v9);

  sub_2665671D8(v9);

  return v27;
}

id sub_26663684C(char a1, uint64_t a2, char a3)
{
  switch(a1)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_0_42();
      v4 = 0;
      v13 = 0;
      v14 = 1;
      goto LABEL_23;
    case 2:
      OUTLINED_FUNCTION_0_42();
      OUTLINED_FUNCTION_5_27();
      v15 = 1;
      goto LABEL_24;
    case 3:
      OUTLINED_FUNCTION_0_42();
      OUTLINED_FUNCTION_4_34();
      v16 = 1;
      return sub_266636A48(v3, v4, v13, v14, v15, v16, 0, 0, v19, v21, v23, v24[0], v24[1], v24[2]);
    case 4:
      if (a3)
      {
        v5 = 1;
      }

      else
      {
        v5 = a2;
      }

      v22 = 0;
      v25[2] = 2;
      *v25 = 515;
      if (a3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      v20 = v6;
      v7 = OUTLINED_FUNCTION_3_34();
      v12 = v5;
      goto LABEL_20;
    case 5:
      if (a3)
      {
        v5 = 1;
      }

      else
      {
        v5 = a2;
      }

      *&v25[1] = 514;
      v20 = 3;
      if (a3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      v25[0] = v6;
      v22 = v5;
      v7 = OUTLINED_FUNCTION_3_34();
      v12 = 0;
LABEL_20:
      v17 = sub_266636A48(v7, v8, v9, v10, v11, 0, v12, 0, v20, v22, 0, v25[0], v25[1], v25[2]);
      sub_2665671E8(v5, 0, v6);
      return v17;
    case 6:
      v21 = 0;
      v23 = 0;
      v24[2] = 3;
      *v24 = 515;
      v19 = 3;
      v3 = 0;
      v4 = 0;
      goto LABEL_22;
    default:
      v3 = OUTLINED_FUNCTION_0_42();
      v4 = 1;
LABEL_22:
      v13 = 0;
      v14 = 0;
LABEL_23:
      v15 = 0;
LABEL_24:
      v16 = 0;
      return sub_266636A48(v3, v4, v13, v14, v15, v16, 0, 0, v19, v21, v23, v24[0], v24[1], v24[2]);
  }
}

id sub_2666369A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCode:a1 userActivity:0];
  [v7 setConfirmationReason_];
  [v7 setUpdatedEvent_];
  sub_266582FEC(a3, v7);

  return v7;
}

id sub_266636A48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, unint64_t a7, unint64_t a8, char a9, unint64_t a10, unint64_t a11, char a12, char a13, char a14)
{
  v15 = v14;
  v22 = sub_26659A284(v15);
  if (a2)
  {
    if (a2 == 1)
    {
      v51 = 0;
      v24 = 0;
    }

    else
    {
      v51 = a1;
      v24 = a2;
    }

    v52 = v24;
  }

  else
  {
    v51 = v22;
    v52 = v23;
  }

  sub_266567120(a1, a2);
  v25 = sub_26659A290(v15);
  v27 = v26;
  if (a4)
  {
    if (a4 == 1)
    {
      v50 = 0;
      v28 = 0;
    }

    else
    {
      v50 = a3;
      v28 = a4;
    }

    v27 = v28;
  }

  else
  {
    v50 = v25;
  }

  sub_266567120(a3, a4);
  v29 = [v15 setDateTimeRange];
  v30 = v29;
  if (a5 == 1)
  {
    v49 = 0;
  }

  else if (a5)
  {
    v49 = a5;
  }

  else
  {
    v31 = v29;
    v49 = v30;
  }

  sub_26654C590(a5);

  v32 = [v15 setLocation];
  v33 = v32;
  if (a6 == 1)
  {
    v46 = 0;
  }

  else if (a6)
  {
    v46 = a6;
  }

  else
  {
    v34 = v32;
    v46 = v33;
  }

  sub_26654C590(a6);

  v35 = sub_26659A2F8(v15);
  v36 = sub_266566E24(v35, a7, a8, a9);

  v37 = sub_26659A304(v15);
  v38 = sub_266566E24(v37, a10, a11, a12);

  v39 = [v15 removeLocation];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 BOOLValue];
  }

  else
  {
    v41 = 2;
  }

  if (a13 != 2)
  {
    if (a13 == 3)
    {
      v41 = 2;
    }

    else
    {
      v41 = a13 & 1;
    }
  }

  v42 = [v15 updateAllOccurrences];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 BOOLValue];
  }

  else
  {
    v44 = 2;
  }

  if (a14 != 2)
  {
    if (a14 == 3)
    {
      v44 = 2;
    }

    else
    {
      v44 = a14 & 1;
    }
  }

  sub_266552C44(0, &qword_28007D210, 0x277CD42A8);
  return sub_266637070(v51, v52, v50, v27, v49, v46, v36, v38, v41, v44);
}

uint64_t sub_266636D30(char a1, void *a2, unint64_t a3, char a4, char a5)
{
  v7 = v5;
  switch(a1)
  {
    case 1:
      result = sub_2665F044C(a2);
      if (!v6)
      {
        OUTLINED_FUNCTION_0_42();
        goto LABEL_15;
      }

      return result;
    case 2:
      result = sub_2665F01A0(a2);
      if (!v6)
      {
        v13 = result;
        if (a5)
        {
          v14 = [v7 setDateTimeRange];
          if (v14)
          {
            v15 = v14;
            sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
            v16 = v13;
            sub_2665D23CC();
            v18 = v17;

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_5_27();
            OUTLINED_FUNCTION_6_25();
            v27 = sub_266636A48(v19, v20, v21, v22, v23, v24, v25, v26, v66, v67, v68, v69[0], v69[1], v69[2]);

            return v27;
          }
        }

        v28 = v13;
        OUTLINED_FUNCTION_0_42();
        OUTLINED_FUNCTION_5_27();
        OUTLINED_FUNCTION_6_25();
        v27 = sub_266636A48(v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0], v69[1], v69[2]);

        goto LABEL_27;
      }

      return result;
    case 3:
      result = sub_2665F0414(a2);
      if (!v6)
      {
        v28 = result;
        OUTLINED_FUNCTION_0_42();
        OUTLINED_FUNCTION_4_34();
        v27 = sub_266636A48(v29, v30, v31, v32, v33, v28, 0, 0, v66, v67, v68, v69[0], v69[1], v69[2]);
LABEL_27:

        return v27;
      }

      return result;
    case 4:
      if (a4)
      {
        result = sub_2665F0314(a2);
        if (!v6)
        {
          v10 = result;
          a3 = 0;
          v11 = 1;
LABEL_23:
          OUTLINED_FUNCTION_1_41();
          v66 = v11;
          v50 = OUTLINED_FUNCTION_3_34();
          v55 = 0;
          v56 = v10;
          v57 = a3;
          goto LABEL_30;
        }
      }

      else
      {
        result = sub_2665F01D8(a2);
        if (!v6)
        {
          v10 = result;
          v11 = 2;
          goto LABEL_23;
        }
      }

      return result;
    case 5:
      if (a4)
      {
        result = sub_2665F0314(a2);
        if (v6)
        {
          return result;
        }

        v10 = result;
        a3 = 0;
        v11 = 1;
      }

      else
      {
        result = sub_2665F01D8(a2);
        if (v6)
        {
          return result;
        }

        v10 = result;
        v11 = 2;
      }

      *&v69[1] = 514;
      v69[0] = v11;
      v67 = v10;
      v68 = a3;
      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_6_25();
LABEL_30:
      v27 = sub_266636A48(v50, v51, v52, v53, v54, v55, v56, v57, v66, v67, v68, v69[0], v69[1], v69[2]);
      sub_2665671E8(v10, a3, v11);
      return v27;
    case 6:
      result = sub_2665F0564(a2);
      if (!v6)
      {
        v70 = result & 1;
        OUTLINED_FUNCTION_2_35();
        OUTLINED_FUNCTION_6_25();
        return sub_266636A48(v42, v43, v44, v45, v46, v47, v48, v49, v66, 0, 0, 3, 2, v70);
      }

      return result;
    default:
      result = sub_2665F044C(a2);
      if (v6)
      {
        return result;
      }

      OUTLINED_FUNCTION_1_41();
      v66 = 3;
LABEL_15:
      OUTLINED_FUNCTION_6_25();
      v27 = sub_266636A48(v34, v35, v36, v37, v38, v39, v40, v41, v66, v67, v68, v69[0], v69[1], v69[2]);

      return v27;
  }
}

unint64_t INUpdateEventIntentResponseCode.description.getter(uint64_t a1)
{
  v1 = 0xD00000000000001ELL;
  if (a1 != 7)
  {
    v1 = 0;
  }

  if (a1 == 6)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return v1;
  }
}

id sub_266637070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = v16;
  if (a2)
  {
    v18 = sub_26666C2F8();
  }

  else
  {
    v18 = 0;
  }

  [v16 setTargetEventIdentifier_];

  if (a4)
  {
    v19 = sub_26666C2F8();
  }

  else
  {
    v19 = 0;
  }

  [v16 setSetTitle_];

  [v16 setSetDateTimeRange_];
  [v16 setSetLocation_];
  if (a7)
  {
    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v20 = sub_26666C488();
  }

  else
  {
    v20 = 0;
  }

  [v16 setAddParticipants_];

  if (a8)
  {
    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v21 = sub_26666C488();
  }

  else
  {
    v21 = 0;
  }

  [v16 setRemoveParticipants_];

  if (a9 == 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  [v16 setRemoveLocation_];

  if (a10 == 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  [v16 setUpdateAllOccurrences_];

  return v16;
}

BOOL sub_266637388(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_26666C768();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

void sub_2666373CC()
{

  v1 = sub_266637CC8(v0, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL);
  v2 = v1[2];
  if (v2)
  {
    v43 = MEMORY[0x277D84F90];
    sub_2666337AC(0, v2, 0);
    v3 = v43;
    v6 = sub_2666395B4(v1);
    v7 = 0;
    v8 = v1 + 8;
    v38 = v4;
    v39 = v2;
    v37 = v1 + 9;
    v40 = v1 + 8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((v8[v6 >> 6] & (1 << v6)) == 0)
      {
        goto LABEL_41;
      }

      if (*(v1 + 9) != v4)
      {
        goto LABEL_42;
      }

      v42 = v4;
      v41 = v5;
      v10 = v1[7];
      v11 = (v1[6] + 16 * v6);
      v12 = v1;
      v13 = *v11;
      v14 = v11[1];
      v15 = *(v10 + 8 * v6);

      v16 = sub_266637F2C(v13, v14, v15, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL);

      v18 = *(v43 + 16);
      v17 = *(v43 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2666337AC((v17 > 1), v18 + 1, 1);
      }

      *(v43 + 16) = v18 + 1;
      *(v43 + 8 * v18 + 32) = v16;
      v19 = 1 << *(v12 + 32);
      if (v6 >= v19)
      {
        goto LABEL_43;
      }

      v1 = v12;
      v8 = v40;
      v20 = v40[v9];
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_44;
      }

      if (*(v1 + 9) != v42)
      {
        goto LABEL_45;
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
        v24 = &v37[v9];
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_2665E829C(v6, v42, v41 & 1);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        sub_2665E829C(v6, v42, v41 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v7;
      v6 = v19;
      v4 = v38;
      if (v7 == v39)
      {

        goto LABEL_22;
      }
    }
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_22:
    v27 = 0;
    v28 = *(v3 + 16);
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28 == v27)
      {

        return;
      }

      if (v27 >= *(v3 + 16))
      {
        break;
      }

      v30 = *(v3 + 8 * v27 + 32);
      v31 = *(v30 + 16);
      v32 = *(v29 + 16);
      if (__OFADD__(v32, v31))
      {
        goto LABEL_38;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v32 + v31 > *(v29 + 24) >> 1)
      {
        sub_2665C6184();
        v29 = v33;
      }

      if (*(v30 + 16))
      {
        if ((*(v29 + 24) >> 1) - *(v29 + 16) < v31)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v31)
        {
          v34 = *(v29 + 16);
          v35 = __OFADD__(v34, v31);
          v36 = v34 + v31;
          if (v35)
          {
            goto LABEL_47;
          }

          *(v29 + 16) = v36;
        }
      }

      else
      {

        if (v31)
        {
          goto LABEL_39;
        }
      }

      ++v27;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_266637788(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_35();
  v3 = v2;
  v5 = v4;
  if (!sub_2665C485C())
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v9 = sub_26666C168();
    __swift_project_value_buffer(v9, qword_28156D7E8);
    v10 = sub_26666C148();
    v11 = sub_26666C618();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_266549000, v10, v11, "[ParticipantResolutionUtil] no participant on intent, returning notRequired", v12, 2u);
      MEMORY[0x266789690](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26666E050;
    sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
    *(v13 + 32) = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_22;
  }

  sub_2665C4864();
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x266788B60](0, v5);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;
  if (sub_2665C485C() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26666E050;
    *(v8 + 32) = sub_2666383DC(v7, v3 & 1);

LABEL_22:
    OUTLINED_FUNCTION_5_28();
    return;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v14 = sub_26666C168();
  __swift_project_value_buffer(v14, qword_28156D7E8);
  v15 = sub_26666C148();
  v16 = sub_26666C618();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_266549000, v15, v16, "[ParticipantResolutionUtil] more than one participant on intent, return success with skeletons", v17, 2u);
    MEMORY[0x266789690](v17, -1, -1);
  }

  v18 = sub_2665C485C();
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = v18;
  sub_26666C898();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = objc_opt_self();
    v21 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x266788B60](v21, v5);
      }

      else
      {
        v22 = *(v5 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      [v20 successWithResolvedPerson_];

      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    while (v19 != v21);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_266637AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_35();
  v8 = v7;
  sub_2665C485C();
  OUTLINED_FUNCTION_3_35();
  while (1)
  {
    if (v3 == v4)
    {
      OUTLINED_FUNCTION_5_28();
      return;
    }

    if (v5)
    {
      v9 = MEMORY[0x266788B60](v4, v8);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v9 = *(v8 + 8 * v4 + 32);
    }

    v10 = v9;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if ([v9 type] == 1)
    {
      sub_26666C868();
      OUTLINED_FUNCTION_2_36();
      sub_26666C8A8();
      OUTLINED_FUNCTION_2_36();
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_266637BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_35();
  v8 = v7;
  sub_2665C485C();
  OUTLINED_FUNCTION_3_35();
  while (1)
  {
    if (v3 == v4)
    {
      OUTLINED_FUNCTION_5_28();
      return;
    }

    if (v5)
    {
      v9 = MEMORY[0x266788B60](v4, v8);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_15;
      }

      v9 = *(v8 + 8 * v4 + 32);
    }

    v10 = v9;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v11 = [v9 personHandle];
    if (v11 && (v12 = v11, v13 = [v11 type], v12, v13 == 1))
    {
      sub_26666C868();
      OUTLINED_FUNCTION_2_36();
      sub_26666C8A8();
      OUTLINED_FUNCTION_2_36();
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void *sub_266637CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v5 = sub_2665C485C();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x266788B60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = sub_26658160C(v7);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v12 = a3;

      v11 = a2;
    }

    v14 = sub_2665C53A8(v11, v12);
    v15 = v4[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_25;
    }

    v18 = v13;
    if (v4[3] < v17)
    {
      sub_266639238(v17, 1);
      v4 = v31;
      v19 = sub_2665C53A8(v11, v12);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_27;
      }

      v14 = v19;
    }

    if (v18)
    {

      v22 = (v4[7] + 8 * v14);
      MEMORY[0x2667887C0](v21);
      if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_26666E050;
      *(v23 + 32) = v8;
      v4[(v14 >> 6) + 8] |= 1 << v14;
      v24 = (v4[6] + 16 * v14);
      *v24 = v11;
      v24[1] = v12;
      *(v4[7] + 8 * v14) = v23;
      v25 = v4[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v4[2] = v27;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:

  result = sub_26666CB08();
  __break(1u);
  return result;
}

uint64_t sub_266637F2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 == a4 && a2 == a5;
  if (v6 || (sub_26666CAC8() & 1) != 0)
  {
    if (a3 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
    {
      v8 = MEMORY[0x277D84F90];
      if (!i)
      {
        return MEMORY[0x277D84F90];
      }

      v41 = MEMORY[0x277D84F90];
      sub_266633C40(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v9 = 0;
      v10 = v41;
      v40 = a3 & 0xC000000000000001;
      v38 = a3 & 0xFFFFFFFFFFFFFF8;
      v39 = a3;
      v37 = a3 + 32;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v40)
        {
          v12 = MEMORY[0x266788B60](v9, v39);
        }

        else
        {
          if (v9 >= *(v38 + 16))
          {
            goto LABEL_47;
          }

          v12 = *(v37 + 8 * v9);
        }

        v13 = v12;
        ++v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FBC8, &qword_26667ACE8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26666EED0;
        *(inited + 32) = [v13 personHandle];
        v15 = *(inited + 32);
        if (v15)
        {
          v16 = v15;
          MEMORY[0x2667887C0]();
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26666C4B8();
          }

          sub_26666C4E8();
        }

        swift_setDeallocating();
        sub_2666391F0(&qword_28007FBD0, &qword_26667ACF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_26666E050;
        *(v17 + 32) = v13;
        a3 = *(v41 + 16);
        v18 = *(v41 + 24);
        v19 = v13;
        if (a3 >= v18 >> 1)
        {
          sub_266633C40((v18 > 1), a3 + 1, 1);
        }

        *(v41 + 16) = a3 + 1;
        v20 = (v41 + 24 * a3);
        v20[4] = v19;
        v20[5] = v8;
        v20[6] = v17;
        if (v11 == i)
        {
          return v10;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }

    __break(1u);
LABEL_51:
    if (!sub_26666C768())
    {
      return MEMORY[0x277D84F90];
    }

    goto LABEL_27;
  }

  if (a3 >> 62)
  {
    goto LABEL_51;
  }

  if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return MEMORY[0x277D84F90];
  }

LABEL_27:
  v21 = a3 & 0xC000000000000001;
  sub_2665C4864();
  if ((a3 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x266788B60](0, a3);
  }

  else
  {
    v22 = *(a3 + 32);
  }

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E608, &unk_26667A130);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26666EED0;
  v24 = a3;
  v25 = sub_2665C485C();
  v26 = MEMORY[0x277D84F90];
  if (!v25)
  {
    a3 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v27 = v25;
  v42 = MEMORY[0x277D84F90];
  result = sub_26666C898();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    do
    {
      if (v21)
      {
        v30 = MEMORY[0x266788B60](v29, v24);
      }

      else
      {
        v30 = *(v24 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      v32 = [v30 personHandle];

      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    while (v27 != v29);
    a3 = v42;
LABEL_38:
    v33 = 0;
    v43 = v26;
    v34 = *(a3 + 16);
    while (v34 != v33)
    {
      if (v33 >= *(a3 + 16))
      {
        goto LABEL_48;
      }

      v35 = *(a3 + 8 * v33++ + 32);
      if (v35)
      {
        v36 = v35;
        MEMORY[0x2667887C0]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26666C4B8();
        }

        sub_26666C4E8();
        v26 = v43;
      }
    }

    *(v10 + 32) = v23;
    *(v10 + 40) = v26;
    *(v10 + 48) = v24;

    return v10;
  }

  __break(1u);
  return result;
}

id sub_2666383DC(char *a1, char a2)
{
  LOBYTE(i) = a2;
  v3 = a1;
  sub_26658160C(a1);
  if (v4)
  {

    if (sub_2666394DC(v3))
    {
      v5 = sub_2665C485C();

      if (!v5)
      {
        if (qword_28156C150 != -1)
        {
          swift_once();
        }

        v48 = sub_26666C168();
        __swift_project_value_buffer(v48, qword_28156D7E8);
        v49 = sub_26666C148();
        v50 = sub_26666C618();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_266549000, v49, v50, "[ParticipantResolutionUtil] contactIdentifier is not nil participant is fully resolved, returning success", v51, 2u);
          MEMORY[0x266789690](v51, -1, -1);
        }

        v52 = [objc_opt_self() successWithResolvedPerson_];
        goto LABEL_70;
      }
    }
  }

  if (sub_2666394DC(v3))
  {
    sub_2666373CC();
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (qword_28156C150 != -1)
  {
    goto LABEL_83;
  }

LABEL_8:
  v8 = sub_26666C168();
  __swift_project_value_buffer(v8, qword_28156D7E8);
  v3 = v3;

  v9 = sub_26666C148();
  v10 = sub_26666C618();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    if (sub_2666394DC(v3))
    {
      v12 = sub_2665C485C();
    }

    else
    {
      v12 = 0;
    }

    *(v11 + 4) = v12;

    *(v11 + 12) = 2048;
    *(v11 + 14) = *(v7 + 16);

    _os_log_impl(&dword_266549000, v9, v10, "[ParticipantResolutionUtil] Single Participant has %ld siriMatches (%ld consolidated)", v11, 0x16u);
    MEMORY[0x266789690](v11, -1, -1);
  }

  else
  {
  }

  v13 = *(v7 + 16);
  if (!v13)
  {

    v18 = sub_26666C148();
    v19 = sub_26666C618();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_266549000, v18, v19, "[ParticipantResolutionUtil] No contact matches found returning success with skeleton", v20, 2u);
      MEMORY[0x266789690](v20, -1, -1);
    }

    goto LABEL_69;
  }

  if (v13 == 1)
  {
    v15 = *(v7 + 40);
    v14 = *(v7 + 48);
    v16 = *(v7 + 32);

    v17 = sub_266638C80(v3, v16, v15, v14, i & 1);

    return v17;
  }

  v61 = *(v7 + 16);
  v21 = 0;
  v60 = v7 + 32;
  v22 = (v7 + 48);
  do
  {
    if (v61 == v21)
    {

      v18 = sub_26666C148();
      v53 = sub_26666C618();
      if (os_log_type_enabled(v18, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_266549000, v18, v53, "[ParticipantResolutionUtil] No matched contact contains an email handle, returning success with skeleton", v54, 2u);
        MEMORY[0x266789690](v54, -1, -1);
      }

LABEL_69:

      v52 = [objc_opt_self() successWithResolvedPerson_];
LABEL_70:

      return v52;
    }

    if (v21 >= *(v7 + 16))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      swift_once();
      goto LABEL_8;
    }

    ++v21;
    v23 = v22 + 3;
    v24 = *(v22 - 1);
    i = *v22;
    v25 = *(v22 - 2);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v26 = v25;
    sub_266637AD4(v26, v24, v27);
    v29 = sub_266637388(v28);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v22 = v23;
  }

  while (!v29);
  v30 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v30, v3))
  {
    i = swift_slowAlloc();
    *i = 0;
    _os_log_impl(&dword_266549000, v30, v3, "[ParticipantResolutionUtil] Disambiguating siri matches", i, 2u);
    MEMORY[0x266789690](i, -1, -1);
  }

  v31 = 0;
  v63 = MEMORY[0x277D84F90];
  v32 = v61;
  v59 = v7;
  while (v31 != v32)
  {
    if (v31 >= *(v7 + 16))
    {
      goto LABEL_76;
    }

    v33 = *(v60 + 24 * v31 + 16);
    if (v33 >> 62)
    {
      v34 = sub_26666C768();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    i = v63 >> 62;
    if (v63 >> 62)
    {
      v35 = sub_26666C768();
    }

    else
    {
      v35 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = (v35 + v34);
    if (__OFADD__(v35, v34))
    {
      goto LABEL_77;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (i)
      {
LABEL_39:
        sub_26666C768();
      }

LABEL_40:
      v63 = sub_26666C828();
      v36 = v63 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_41;
    }

    if (i)
    {
      goto LABEL_39;
    }

    v36 = v63 & 0xFFFFFFFFFFFFFF8;
    if (v3 > *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_40;
    }

LABEL_41:
    v62 = v31 + 1;
    v37 = *(v36 + 16);
    v38 = (*(v36 + 24) >> 1) - v37;
    i = v36 + 8 * v37;
    if (v33 >> 62)
    {
      if (v33 < 0)
      {
        v3 = v33;
      }

      else
      {
        v3 = (v33 & 0xFFFFFFFFFFFFFF8);
      }

      v39 = sub_26666C768();
      if (!v39)
      {
        goto LABEL_58;
      }

      v7 = v39;
      v40 = sub_26666C768();
      if (v38 < v40)
      {
        goto LABEL_81;
      }

      if (v7 < 1)
      {
        goto LABEL_82;
      }

      v58 = v40;
      v41 = i + 32;
      sub_26663954C();
      for (i = 0; i != v7; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
        v42 = sub_2665C4548(v64, i, v33);
        v44 = *v43;
        (v42)(v64, 0);
        *(v41 + 8 * i) = v44;
      }

      v32 = v61;
      v3 = v58;
LABEL_54:

      v7 = v59;
      v31 = v62;
      if (v3 < v34)
      {
        goto LABEL_78;
      }

      if (v3 > 0)
      {
        v45 = *(v36 + 16);
        v46 = __OFADD__(v45, v3);
        v47 = &v3[v45];
        if (v46)
        {
          goto LABEL_79;
        }

        *(v36 + 16) = v47;
      }
    }

    else
    {
      v3 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        if (v38 < v3)
        {
          goto LABEL_80;
        }

        sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
        swift_arrayInitWithCopy();
        goto LABEL_54;
      }

LABEL_58:

      v7 = v59;
      v31 = v62;
      if (v34 > 0)
      {
        goto LABEL_78;
      }
    }
  }

  v56 = objc_opt_self();
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v57 = sub_26666C488();

  v17 = [v56 disambiguationWithPeopleToDisambiguate_];

  return v17;
}

id sub_266638C80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v10 = sub_26666C168();
  __swift_project_value_buffer(v10, qword_28156D7E8);
  v11 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v12 = v11;
  v13 = sub_26666C148();
  v14 = sub_26666C618();
  if (os_log_type_enabled(v13, v14))
  {
    v50 = a1;
    v15 = a5;
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    sub_266637AD4(v16, a3, v17);
    v18 = sub_2665C485C();

    *(v16 + 4) = v18;

    _os_log_impl(&dword_266549000, v13, v14, "[ParticipantResolutionUtil] Siri matches contains one contact with %ld email handles", v16, 0xCu);
    v19 = v16;
    a5 = v15;
    a1 = v50;
    MEMORY[0x266789690](v19, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v13 = v12;
  }

  sub_266637BBC(v20, v21, a4);
  v22 = sub_2665C485C();

  if (v22)
  {
    sub_266637BBC(v23, v24, a4);
    v25 = sub_2665C485C();

    v26 = sub_26666C148();
    v27 = sub_26666C618();
    v28 = os_log_type_enabled(v26, v27);
    if (v25 == 1)
    {
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v51 = v30;
        *v29 = 136315138;
        if (a5)
        {
          v31 = 0xD000000000000014;
        }

        else
        {
          v31 = 0x73736563637573;
        }

        if (a5)
        {
          v32 = 0x800000026667F8F0;
        }

        else
        {
          v32 = 0xE700000000000000;
        }

        v33 = sub_2665BFC90(v31, v32, &v51);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_266549000, v26, v27, "[ParticipantResolutionUtil] Matched contact has a single email handle, returning %s with person", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x266789690](v30, -1, -1);
        MEMORY[0x266789690](v29, -1, -1);
      }

      sub_266637BBC(v34, v35, a4);
      v37 = v36;
      v38 = v36 & 0xC000000000000001;
      sub_2665C4864();
      if (v38)
      {
        v39 = MEMORY[0x266788B60](0, v37);
      }

      else
      {
        v39 = *(v37 + 32);
      }

      v40 = v39;

      v41 = objc_opt_self();
      if (a5)
      {
        v42 = [v41 confirmationRequiredWithPersonToConfirm_];
      }

      else
      {
        v42 = [v41 successWithResolvedPerson_];
      }

      v49 = v42;

      return v49;
    }

    if (v28)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_266549000, v26, v27, "[ParticipantResolutionUtil] Matched contact has multiple email handles, returning success with skeleton", v47, 2u);
      MEMORY[0x266789690](v47, -1, -1);
    }

    v46 = [objc_opt_self() successWithResolvedPerson_];
  }

  else
  {
    v43 = sub_26666C148();
    v44 = sub_26666C618();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_266549000, v43, v44, "[ParticipantResolutionUtil] Matched contact does not have a email handle, returning success with skeleton", v45, 2u);
      MEMORY[0x266789690](v45, -1, -1);
    }

    v46 = [objc_opt_self() successWithResolvedPerson_];
  }

  return v46;
}

uint64_t sub_266639138()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_1_42();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26663919C()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_1_42();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2666391F0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_1_42();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_266639238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FBD8, &qword_26667ACF8);
  v34 = v4;
  result = sub_26666C938();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_26660B3E0(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_26666CB88();
    sub_26666C368();
    result = sub_26666CBC8();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2666394DC(void *a1)
{
  v1 = [a1 siriMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666C498();

  return v3;
}

unint64_t sub_26663954C()
{
  result = qword_28007E540;
  if (!qword_28007E540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007E538, &unk_266674AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E540);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_266639618(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_266639658(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata accessor for CalendarDateTimeResolver(uint64_t a1)
{
  result = qword_28156CFE8;
  if (!qword_28156CFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266639784(uint64_t a1)
{
  result = sub_266639820();
  if (v2 <= 0x3F)
  {
    result = sub_266668D98();
    if (v3 <= 0x3F)
    {
      result = sub_26666B558();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_266639820()
{
  result = qword_28156CA48[0];
  if (!qword_28156CA48[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_28156CA48);
  }

  return result;
}

uint64_t sub_26663987C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26663990C;

  return sub_266618ABC();
}

uint64_t sub_26663990C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  *(*v4 + 32) = a1;

  if (v3)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 40) = a3;

    return MEMORY[0x2822009F8](sub_266639A5C, 0, 0);
  }
}

uint64_t sub_266639A5C()
{
  if (*(v0 + 40))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 16);
    v4 = sub_26666B668();
    v5 = MEMORY[0x277D56158];
    if (v2 >= 0.0)
    {
      v5 = MEMORY[0x277D56150];
    }

    (*(*(v4 - 8) + 104))(v3, *v5, v4);
    v1 = 0;
  }

  v6 = *(v0 + 16);
  v7 = sub_26666B668();
  __swift_storeEnumTagSinglePayload(v6, v1, 1, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_266639B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v6);
  v5[8] = OUTLINED_FUNCTION_19();
  v7 = sub_266668D98();
  v5[9] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v5[10] = v8;
  v5[11] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FBF8, &qword_26667ADE0);
  OUTLINED_FUNCTION_3_3(v9);
  v5[12] = OUTLINED_FUNCTION_19();
  v10 = sub_26666B668();
  v5[13] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v5[14] = v11;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v12 = sub_26666C0B8();
  v5[17] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v5[18] = v13;
  v5[19] = OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](sub_266639D0C, 0, 0);
}

uint64_t sub_266639D0C()
{
  if (qword_28007CDA0 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[7];
  v5 = sub_26666C0E8();
  v0[20] = __swift_project_value_buffer(v5, qword_280095698);
  sub_26666C0A8();
  OUTLINED_FUNCTION_7_25();
  v0[21] = sub_26658E0BC(v6, v7, v8, v9);
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_266639E60;
  v11 = v0[12];

  return sub_26663987C(v11);
}

uint64_t sub_266639E60()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_26663A374;
  }

  else
  {
    v2 = sub_266639F7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_266639F7C()
{
  v42 = v0;
  v1 = v0[12];
  v2 = v0[13];
  OUTLINED_FUNCTION_10_22();
  if (v3)
  {
    (*(v0[14] + 104))(v0[16], *MEMORY[0x277D56150], v2);
    OUTLINED_FUNCTION_10_22();
    if (!v3)
    {
      sub_266557D74(v0[12], &qword_28007FBF8, &qword_26667ADE0);
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[16], v1, v2);
  }

  v4 = v0[15];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
  v39 = v0[16];
  v40 = v0[6];
  sub_26666B688();
  type metadata accessor for CalendarDateTimeResolver(0);
  v9 = OUTLINED_FUNCTION_9_24();
  v10(v9);
  (*(v5 + 16))(v4, v39, v6);
  v11 = sub_26663A748();
  sub_26655E020(v40, v8);
  sub_266647B08(v7, v4, v11 & 1, v8);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v12 = sub_26666C168();
  v13 = __swift_project_value_buffer(v12, qword_28156D7E8);

  v14 = sub_26666C148();
  v15 = sub_26666C618();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_5_29();
    v17 = OUTLINED_FUNCTION_13_0();
    v41[0] = v17;
    *v16 = 136315138;
    v0[2] = v13;
    sub_26666B998();
    sub_26663AEAC();
    v18 = sub_26666CAA8();
    v20 = sub_2665BFC90(v18, v19, v41);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_266549000, v14, v15, "[CalendarDateTimeResolver] Making recommendation for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v21 = sub_26666C148();
  v22 = sub_26666C618();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_5_29();
    v24 = OUTLINED_FUNCTION_13_0();
    v41[0] = v24;
    *v23 = 136315138;
    if (sub_26666B908())
    {
      v25 = sub_26663A7D0();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v28 = sub_2665BFC90(v25, v27, v41);

    *(v23 + 4) = v28;
    OUTLINED_FUNCTION_15_16(&dword_266549000, v29, v30, "[CalendarDateTimeResolver] DateTimeQuery Occurring In: %s");
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  sub_26666B538();
  v31 = OUTLINED_FUNCTION_1_43();
  v32(v31);

  OUTLINED_FUNCTION_7_25();
  sub_26658E2D0(v33, v34, v35, v36);

  v37 = v0[1];

  return v37();
}

uint64_t sub_26663A374()
{
  v40 = v0;
  __swift_storeEnumTagSinglePayload(v0[12], 1, 1, v0[13]);
  (*(v0[14] + 104))(v0[16], *MEMORY[0x277D56150], v0[13]);
  OUTLINED_FUNCTION_10_22();
  if (!v1)
  {
    sub_266557D74(v0[12], &qword_28007FBF8, &qword_26667ADE0);
  }

  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  v37 = v0[16];
  v38 = v0[6];
  sub_26666B688();
  type metadata accessor for CalendarDateTimeResolver(0);
  v7 = OUTLINED_FUNCTION_9_24();
  v8(v7);
  (*(v3 + 16))(v2, v37, v4);
  v9 = sub_26663A748();
  sub_26655E020(v38, v6);
  sub_266647B08(v5, v2, v9 & 1, v6);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v10 = sub_26666C168();
  v11 = __swift_project_value_buffer(v10, qword_28156D7E8);

  v12 = sub_26666C148();
  v13 = sub_26666C618();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_5_29();
    v15 = OUTLINED_FUNCTION_13_0();
    v39[0] = v15;
    *v14 = 136315138;
    v0[2] = v11;
    sub_26666B998();
    sub_26663AEAC();
    v16 = sub_26666CAA8();
    v18 = sub_2665BFC90(v16, v17, v39);

    *(v14 + 4) = v18;
    OUTLINED_FUNCTION_15_16(&dword_266549000, v19, v20, "[CalendarDateTimeResolver] Making recommendation for %s");
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v21 = sub_26666C148();
  v22 = sub_26666C618();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_5_29();
    v24 = OUTLINED_FUNCTION_13_0();
    v39[0] = v24;
    *v23 = 136315138;
    if (sub_26666B908())
    {
      v25 = sub_26663A7D0();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v28 = sub_2665BFC90(v25, v27, v39);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_266549000, v21, v22, "[CalendarDateTimeResolver] DateTimeQuery Occurring In: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  sub_26666B538();
  v29 = OUTLINED_FUNCTION_1_43();
  v30(v29);

  OUTLINED_FUNCTION_7_25();
  sub_26658E2D0(v31, v32, v33, v34);

  v35 = v0[1];

  return v35();
}

uint64_t sub_26663A748()
{
  if ((sub_26663ACF8(MEMORY[0x277D56410], sub_26663ACCC) & 1) != 0 || (v0 = sub_26663ACF8(MEMORY[0x277D56418], sub_26663AD68), (v0 & 1) == 0))
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_26663AE38(v0) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_26663A7D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC00, &qword_26667ADF0);
  v1 = OUTLINED_FUNCTION_3_3(v0);
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - v2;
  v4 = sub_26666B988();
  OUTLINED_FUNCTION_3_0();
  v24 = v5;
  MEMORY[0x28223BE20](v6);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC08, &qword_26667ADF8);
  v9 = OUTLINED_FUNCTION_3_3(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = sub_26666B878();
  OUTLINED_FUNCTION_3_0();
  v22 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  if (sub_26666B8B8())
  {
    sub_26666B8F8();
    OUTLINED_FUNCTION_4_36();
    v25 = 0x5B7472617473;
    v26 = 0xE600000000000000;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  if (sub_26666B8A8())
  {
    sub_26666B8F8();
    OUTLINED_FUNCTION_4_36();
    v25 = 1533308517;
    v26 = 0xE400000000000000;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  if (sub_26666B898())
  {
    sub_26666B8F8();
    OUTLINED_FUNCTION_4_36();
    v25 = 5993569;
    v26 = 0xE300000000000000;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  if (sub_26666B8C8())
  {
    sub_26666B978();
    OUTLINED_FUNCTION_4_36();
    v25 = 0x6E6F697461727564;
    v26 = 0xE90000000000005BLL;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  if (sub_26666B8D8())
  {
    sub_26666B978();
    OUTLINED_FUNCTION_4_36();
    v25 = 0x6C61767265746E69;
    v26 = 0xE90000000000005BLL;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  sub_26666B888();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_266557D74(v11, &qword_28007FC08, &qword_26667ADF8);
  }

  else
  {
    v17 = v22;
    (*(v22 + 32))(v16, v11, v12);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_26666C7E8();
    MEMORY[0x266788710](0x5664656E69666564, 0xED00005B65756C61);
    sub_26666C8F8();
    OUTLINED_FUNCTION_11_23();
    MEMORY[0x266788710](v25, v26);

    (*(v17 + 8))(v16, v12);
  }

  sub_26666B8E8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_266557D74(v3, &qword_28007FC00, &qword_26667ADF0);
  }

  else
  {
    v19 = v23;
    v18 = v24;
    (*(v24 + 32))(v23, v3, v4);
    v25 = 0;
    v26 = 0xE000000000000000;
    MEMORY[0x266788710](0x656966696C617571, 0xEA00000000005B72);
    sub_26666C8F8();
    OUTLINED_FUNCTION_11_23();
    MEMORY[0x266788710](v25, v26);

    (*(v18 + 8))(v19, v4);
  }

  return v27;
}

uint64_t sub_26663ACF8(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (a1())
  {
    v3 = 1;
  }

  else
  {
    if (!sub_26666B908())
    {
      v3 = 0;
      return v3 & 1;
    }

    v3 = a2();
  }

  return v3 & 1;
}

uint64_t sub_26663AD94(uint64_t a1)
{
  if (sub_26666B898() && (v1 = OUTLINED_FUNCTION_12_22(), , (v1 & 1) != 0) || sub_26666B8A8() && (v2 = OUTLINED_FUNCTION_12_22(), , (v2 & 1) != 0))
  {
    v3 = 1;
  }

  else if (sub_26666B8B8())
  {
    v3 = OUTLINED_FUNCTION_12_22();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_26663AE38(uint64_t a1)
{
  if (sub_26666B938())
  {
LABEL_2:

    return 1;
  }

  result = sub_26666B908();
  if (result)
  {
    v2 = sub_26666B898();

    if (!v2)
    {
      return 0;
    }

    v3 = sub_26666B938();

    if (!v3)
    {
      return 0;
    }

    goto LABEL_2;
  }

  return result;
}

unint64_t sub_26663AEAC()
{
  result = qword_28007F138;
  if (!qword_28007F138)
  {
    sub_26666B998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F138);
  }

  return result;
}

void OUTLINED_FUNCTION_2_37()
{

  JUMPOUT(0x266788710);
}

void OUTLINED_FUNCTION_3_36()
{

  JUMPOUT(0x266788710);
}

uint64_t OUTLINED_FUNCTION_4_36()
{
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11_23()
{

  JUMPOUT(0x266788710);
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return sub_26663ACF8(v1, v0);
}

void OUTLINED_FUNCTION_15_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OpenEventDetailsAppIntent.target.setter(uint64_t a1)
{

  sub_26666BFE8();
}

void (*OpenEventDetailsAppIntent.target.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26666BFC8();
  return sub_266594930;
}

uint64_t _s19SiriCalendarIntents25OpenEventDetailsAppIntentV6targetAA0E20EntityRepresentationCvpfP_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC10, &qword_26667AE00);
  swift_allocObject();
  return sub_26666BFB8();
}

uint64_t sub_26663B210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v74 = a4;
  v78 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3F0, &unk_26666F120);
  v9 = OUTLINED_FUNCTION_3_3(v8);
  v10 = MEMORY[0x28223BE20](v9);
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v68 - v15;
  v17 = sub_26666A258();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v77 = a2;
  sub_26659236C(a2, v16, &qword_28007D3F0, &unk_26666F120);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
  v25 = MEMORY[0x277D84F90];
  v76 = v19;
  if (EnumTagSinglePayload == 1)
  {
    sub_266557D74(v16, &qword_28007D3F0, &unk_26666F120);
    v26 = v17;
    if (a1)
    {
      v70 = v17;
      v71 = v14;
      v72 = a3;
      swift_getKeyPath();
      v81 = v25;
      v26 = sub_2665C485C();
      v27 = 0;
      v14 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v26 == v27)
        {

          v26 = v70;
          goto LABEL_28;
        }

        if (v14)
        {
          v28 = MEMORY[0x266788B60](v27, a1);
        }

        else
        {
          if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v28 = *(a1 + 8 * v27 + 32);
        }

        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v79 = v28;

        swift_getAtKeyPath();

        ++v27;
        if (v80)
        {
          MEMORY[0x2667887C0](v30);
          OUTLINED_FUNCTION_4_37();
          if (v31)
          {
            OUTLINED_FUNCTION_106();
          }

          sub_26666C4E8();
          v25 = v81;
          v27 = v29;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_36:
    if (qword_28156C150 == -1)
    {
LABEL_37:
      v55 = sub_26666C168();
      __swift_project_value_buffer(v55, qword_28156D7E8);
      sub_26659236C(v77, v14, &qword_28007D3F0, &unk_26666F120);
      v56 = sub_26666C148();
      v57 = sub_26666C618();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v81 = v59;
        *v58 = 136315138;
        v60 = v73;
        sub_26659236C(v14, v73, &qword_28007D3F0, &unk_26666F120);
        if (__swift_getEnumTagSinglePayload(v60, 1, v26) == 1)
        {
          sub_266557D74(v60, &qword_28007D3F0, &unk_26666F120);
          v61 = 0xE500000000000000;
          v62 = 0x3E6C696E3CLL;
        }

        else
        {
          v63 = sub_26666A248();
          v64 = v26;
          v62 = v63;
          v61 = v65;
          (*(v76 + 8))(v60, v64);
        }

        sub_266557D74(v14, &qword_28007D3F0, &unk_26666F120);
        v66 = sub_2665BFC90(v62, v61, &v81);

        *(v58 + 4) = v66;
        _os_log_impl(&dword_266549000, v56, v57, "[ContactResolving] No Participants with person values in list, listFilter: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        sub_266557D74(v14, &qword_28007D3F0, &unk_26666F120);
      }

      return 0;
    }

LABEL_49:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
    goto LABEL_37;
  }

  v32 = (*(v19 + 32))(v23, v16, v17);
  v26 = v17;
  if (!a1)
  {
    (*(v19 + 8))(v23, v17);
    goto LABEL_36;
  }

  v70 = v17;
  v71 = v14;
  v72 = a3;
  MEMORY[0x28223BE20](v32);
  v69 = v23;
  *(&v68 - 2) = v23;
  sub_2665C7724(sub_2665C90D4, (&v68 - 4), a1);
  v34 = v33;
  v81 = v25;
  v26 = sub_2665C485C();
  v14 = 0;
  while (v26 != v14)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](v14, v34);
    }

    else
    {
      if (v14 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }
    }

    v35 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_46;
    }

    v36 = sub_26666A918();

    ++v14;
    if (v36)
    {
      MEMORY[0x2667887C0](v37);
      OUTLINED_FUNCTION_4_37();
      if (v31)
      {
        OUTLINED_FUNCTION_106();
      }

      sub_26666C4E8();
      v25 = v81;
      v14 = v35;
    }
  }

  v26 = v70;
  (*(v76 + 8))(v69, v70);
LABEL_28:
  v38 = sub_2665C485C();
  v14 = v71;
  v39 = v72;
  if (!v38)
  {

    goto LABEL_36;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v40 = sub_26666C168();
  __swift_project_value_buffer(v40, qword_28156D7E8);

  v41 = sub_26666C148();
  v42 = sub_26666C618();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v81 = v44;
    *v43 = 136315138;
    v45 = sub_26666A648();
    v46 = MEMORY[0x2667887F0](v25, v45);
    v48 = sub_2665BFC90(v46, v47, &v81);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_266549000, v41, v42, "[ContactResolving] Attempting to do SRR reference resolution on %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v49 = v75;
  v50 = v74;
  MEMORY[0x28223BE20](v51);
  *(&v68 - 2) = v39;
  sub_2665C1F68();
  v53 = v52;

  v54 = sub_26663B9AC(v53, v50, v49);

  return v54;
}

uint64_t sub_26663B9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26666B5C8();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  if (qword_28007CED8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2800958C8);
  (*(v8 + 16))(v12, v13, v6);
  v14 = (*(a3 + 8))(a1, v12, a2, a3);
  (*(v8 + 8))(v12, v6);
  return v14;
}

uint64_t sub_26663BC70()
{
  v0 = sub_26666B5E8();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  v2 = sub_266668D98();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v25 = sub_26666B518();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC18, &unk_26667AEC0);
  v11 = OUTLINED_FUNCTION_3_3(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = sub_26666B658();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v21 = sub_26666B5C8();
  __swift_allocate_value_buffer(v21, qword_2800958C8);
  __swift_project_value_buffer(v21, qword_2800958C8);
  (*(v16 + 104))(v20, *MEMORY[0x277D56148], v14);
  sub_26666B6B8();
  v22 = sub_26666B6C8();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
  (*(v5 + 104))(v9, *MEMORY[0x277D560D0], v25);
  sub_266668D88();
  sub_26666B5D8();
  return sub_26666B5B8();
}

void *sub_26663BF1C@<X0>(void *a2@<X8>)
{
  result = sub_26666A3D8();
  *a2 = v4;
  return result;
}

uint64_t sub_26663BF58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = sub_26666A2E8();
  v7 = *(v57 - 8);
  v8 = MEMORY[0x28223BE20](v57);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F918, &qword_26667A0D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v45 - v13;
  v15 = sub_26666B448();
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_26659236C(a2, &v54, &qword_28007D3F8, &qword_26667B390);
  if (!v55)
  {
    sub_266557D74(&v54, &qword_28007D3F8, &qword_26667B390);
    return sub_26666A638();
  }

  sub_26654B7D8(&v54, v56);
  v18 = __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  v19 = sub_2665922D0(v17, *v18);
  if (!v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
    return sub_26666A638();
  }

  v20 = v19;
  v46 = v15;
  v47 = a3;
  v48 = v3;
  sub_26666A638();
  v21 = sub_26666B5A8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v21);
  sub_26666B3F8();

  v22 = sub_26666A1F8();
  v45[1] = v20;

  v23 = 0;
  v24 = *(v22 + 16);
  v52 = v7 + 16;
  v53 = v24;
  while (1)
  {
    if (v53 == v23)
    {

      v7 = v47;
      v10 = v46;
      v23 = v50;
      goto LABEL_22;
    }

    if (v23 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    (*(v7 + 16))(v10, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v57);
    if (sub_26666A2B8() == 0xD00000000000001BLL && 0x800000026667F960 == v25)
    {
      break;
    }

    v27 = sub_26666CAC8();

    if (v27)
    {
      goto LABEL_17;
    }

    (*(v7 + 8))(v10, v57);
    ++v23;
  }

LABEL_17:

  v29 = v49;
  v30 = v57;
  (*(v7 + 32))(v49, v10, v57);
  v31 = sub_26666A2D8();
  v33 = v32;
  (*(v7 + 8))(v29, v30);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v34 = sub_26666C168();
  __swift_project_value_buffer(v34, qword_28156D7E8);

  v35 = sub_26666C148();
  v36 = sub_26666C618();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v46;
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v54 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_2665BFC90(v31, v33, &v54);
    _os_log_impl(&dword_266549000, v35, v36, "[ContactResolving] Resolving SRR contact via id: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x266789690](v40, -1, -1);
    MEMORY[0x266789690](v39, -1, -1);
  }

  v7 = v47;
  v23 = v50;
  sub_26666B3E8();
  v10 = v38;
LABEL_22:
  if (qword_28156C150 == -1)
  {
    goto LABEL_23;
  }

LABEL_27:
  swift_once();
LABEL_23:
  v41 = sub_26666C168();
  __swift_project_value_buffer(v41, qword_28156D7E8);
  v42 = sub_26666C148();
  v43 = sub_26666C618();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_266549000, v42, v43, "[ContactResolving] Using SRR resolved contact for contact query; removing handle", v44, 2u);
    MEMORY[0x266789690](v44, -1, -1);
  }

  (*(v23 + 32))(v7, v51, v10);
  return __swift_destroy_boxed_opaque_existential_1(v56);
}