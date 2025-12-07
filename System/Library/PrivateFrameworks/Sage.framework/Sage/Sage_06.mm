uint64_t getEnumTagSinglePayload for SummarizationXPCRequest.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SummarizationXPCRequest.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B5E7AF8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B5E7B068(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B5E7B118()
{
  result = qword_1EB90F330;
  if (!qword_1EB90F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F330);
  }

  return result;
}

unint64_t sub_1B5E7B170()
{
  result = qword_1EB90F338;
  if (!qword_1EB90F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F338);
  }

  return result;
}

unint64_t sub_1B5E7B1C8()
{
  result = qword_1EB90F340;
  if (!qword_1EB90F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F340);
  }

  return result;
}

unint64_t sub_1B5E7B220()
{
  result = qword_1EB90F348;
  if (!qword_1EB90F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F348);
  }

  return result;
}

unint64_t sub_1B5E7B278()
{
  result = qword_1EB90F350;
  if (!qword_1EB90F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F350);
  }

  return result;
}

unint64_t sub_1B5E7B2D0()
{
  result = qword_1EB90F358;
  if (!qword_1EB90F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F358);
  }

  return result;
}

unint64_t sub_1B5E7B328()
{
  result = qword_1EB90F360;
  if (!qword_1EB90F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F360);
  }

  return result;
}

unint64_t sub_1B5E7B380()
{
  result = qword_1EB90F368;
  if (!qword_1EB90F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F368);
  }

  return result;
}

unint64_t sub_1B5E7B3D8()
{
  result = qword_1EB90F370;
  if (!qword_1EB90F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F370);
  }

  return result;
}

unint64_t sub_1B5E7B430()
{
  result = qword_1EB90F378;
  if (!qword_1EB90F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F378);
  }

  return result;
}

unint64_t sub_1B5E7B488()
{
  result = qword_1EB90F380;
  if (!qword_1EB90F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F380);
  }

  return result;
}

unint64_t sub_1B5E7B4E0()
{
  result = qword_1EB90F388;
  if (!qword_1EB90F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F388);
  }

  return result;
}

unint64_t sub_1B5E7B538()
{
  result = qword_1EB90F390;
  if (!qword_1EB90F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F390);
  }

  return result;
}

unint64_t sub_1B5E7B590()
{
  result = qword_1EB90F398;
  if (!qword_1EB90F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F398);
  }

  return result;
}

unint64_t sub_1B5E7B5E8()
{
  result = qword_1EB90F3A0;
  if (!qword_1EB90F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F3A0);
  }

  return result;
}

unint64_t sub_1B5E7B640()
{
  result = qword_1EB90F3A8;
  if (!qword_1EB90F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F3A8);
  }

  return result;
}

unint64_t sub_1B5E7B698()
{
  result = qword_1EB90F3B0;
  if (!qword_1EB90F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F3B0);
  }

  return result;
}

unint64_t sub_1B5E7B6F0()
{
  result = qword_1EB90F3B8;
  if (!qword_1EB90F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F3B8);
  }

  return result;
}

unint64_t sub_1B5E7B748()
{
  result = qword_1EB90F3C0;
  if (!qword_1EB90F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F3C0);
  }

  return result;
}

unint64_t sub_1B5E7B7A0()
{
  result = qword_1EB90F3C8;
  if (!qword_1EB90F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F3C8);
  }

  return result;
}

unint64_t sub_1B5E7B7F8()
{
  result = qword_1ED7D2400;
  if (!qword_1ED7D2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2400);
  }

  return result;
}

unint64_t sub_1B5E7B850()
{
  result = qword_1ED7D2408;
  if (!qword_1ED7D2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2408);
  }

  return result;
}

unint64_t sub_1B5E7B8A8()
{
  result = qword_1ED7D2388;
  if (!qword_1ED7D2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2388);
  }

  return result;
}

unint64_t sub_1B5E7B900()
{
  result = qword_1ED7D2390;
  if (!qword_1ED7D2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2390);
  }

  return result;
}

unint64_t sub_1B5E7B958()
{
  result = qword_1ED7D2398;
  if (!qword_1ED7D2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2398);
  }

  return result;
}

unint64_t sub_1B5E7B9B0()
{
  result = qword_1ED7D23A0;
  if (!qword_1ED7D23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23A0);
  }

  return result;
}

unint64_t sub_1B5E7BA08()
{
  result = qword_1ED7D2378;
  if (!qword_1ED7D2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2378);
  }

  return result;
}

unint64_t sub_1B5E7BA60()
{
  result = qword_1ED7D2380;
  if (!qword_1ED7D2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2380);
  }

  return result;
}

unint64_t sub_1B5E7BAB8()
{
  result = qword_1ED7D2338;
  if (!qword_1ED7D2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2338);
  }

  return result;
}

unint64_t sub_1B5E7BB10()
{
  result = qword_1ED7D2340;
  if (!qword_1ED7D2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2340);
  }

  return result;
}

unint64_t sub_1B5E7BB68()
{
  result = qword_1ED7D2368;
  if (!qword_1ED7D2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2368);
  }

  return result;
}

unint64_t sub_1B5E7BBC0()
{
  result = qword_1ED7D2370;
  if (!qword_1ED7D2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2370);
  }

  return result;
}

unint64_t sub_1B5E7BC18()
{
  result = qword_1ED7D2328;
  if (!qword_1ED7D2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2328);
  }

  return result;
}

unint64_t sub_1B5E7BC70()
{
  result = qword_1ED7D2330;
  if (!qword_1ED7D2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2330);
  }

  return result;
}

unint64_t sub_1B5E7BCC8()
{
  result = qword_1ED7D2348;
  if (!qword_1ED7D2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2348);
  }

  return result;
}

unint64_t sub_1B5E7BD20()
{
  result = qword_1ED7D2350;
  if (!qword_1ED7D2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2350);
  }

  return result;
}

unint64_t sub_1B5E7BD78()
{
  result = qword_1ED7D2308;
  if (!qword_1ED7D2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2308);
  }

  return result;
}

unint64_t sub_1B5E7BDD0()
{
  result = qword_1ED7D2310;
  if (!qword_1ED7D2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2310);
  }

  return result;
}

unint64_t sub_1B5E7BE28()
{
  result = qword_1ED7D23C0;
  if (!qword_1ED7D23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23C0);
  }

  return result;
}

unint64_t sub_1B5E7BE80()
{
  result = qword_1ED7D23C8;
  if (!qword_1ED7D23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23C8);
  }

  return result;
}

unint64_t sub_1B5E7BED8()
{
  result = qword_1ED7D23E0;
  if (!qword_1ED7D23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23E0);
  }

  return result;
}

unint64_t sub_1B5E7BF30()
{
  result = qword_1ED7D23E8;
  if (!qword_1ED7D23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23E8);
  }

  return result;
}

unint64_t sub_1B5E7BF88()
{
  result = qword_1ED7D23F0;
  if (!qword_1ED7D23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23F0);
  }

  return result;
}

unint64_t sub_1B5E7BFE0()
{
  result = qword_1ED7D23F8;
  if (!qword_1ED7D23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23F8);
  }

  return result;
}

unint64_t sub_1B5E7C038()
{
  result = qword_1ED7D23D0;
  if (!qword_1ED7D23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23D0);
  }

  return result;
}

unint64_t sub_1B5E7C090()
{
  result = qword_1ED7D23D8;
  if (!qword_1ED7D23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23D8);
  }

  return result;
}

unint64_t sub_1B5E7C0E8()
{
  result = qword_1ED7D2318;
  if (!qword_1ED7D2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2318);
  }

  return result;
}

unint64_t sub_1B5E7C140()
{
  result = qword_1ED7D2320;
  if (!qword_1ED7D2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2320);
  }

  return result;
}

unint64_t sub_1B5E7C198()
{
  result = qword_1ED7D22F8;
  if (!qword_1ED7D22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D22F8);
  }

  return result;
}

unint64_t sub_1B5E7C1F0()
{
  result = qword_1ED7D2300;
  if (!qword_1ED7D2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2300);
  }

  return result;
}

unint64_t sub_1B5E7C248()
{
  result = qword_1ED7D22C8;
  if (!qword_1ED7D22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D22C8);
  }

  return result;
}

unint64_t sub_1B5E7C2A0()
{
  result = qword_1ED7D22D0;
  if (!qword_1ED7D22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D22D0);
  }

  return result;
}

unint64_t sub_1B5E7C2F8()
{
  result = qword_1ED7D22D8;
  if (!qword_1ED7D22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D22D8);
  }

  return result;
}

unint64_t sub_1B5E7C350()
{
  result = qword_1ED7D22E0;
  if (!qword_1ED7D22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D22E0);
  }

  return result;
}

unint64_t sub_1B5E7C3A8()
{
  result = qword_1ED7D22B8;
  if (!qword_1ED7D22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D22B8);
  }

  return result;
}

unint64_t sub_1B5E7C400()
{
  result = qword_1ED7D22C0;
  if (!qword_1ED7D22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D22C0);
  }

  return result;
}

unint64_t sub_1B5E7C458()
{
  result = qword_1ED7D22E8;
  if (!qword_1ED7D22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D22E8);
  }

  return result;
}

unint64_t sub_1B5E7C4B0()
{
  result = qword_1ED7D22F0;
  if (!qword_1ED7D22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D22F0);
  }

  return result;
}

unint64_t sub_1B5E7C508()
{
  result = qword_1ED7D2358;
  if (!qword_1ED7D2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2358);
  }

  return result;
}

unint64_t sub_1B5E7C560()
{
  result = qword_1ED7D2360;
  if (!qword_1ED7D2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2360);
  }

  return result;
}

unint64_t sub_1B5E7C5B8()
{
  result = qword_1ED7D23A8;
  if (!qword_1ED7D23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23A8);
  }

  return result;
}

unint64_t sub_1B5E7C610()
{
  result = qword_1ED7D23B0;
  if (!qword_1ED7D23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D23B0);
  }

  return result;
}

uint64_t sub_1B5E7C664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationXPCRequest.Request(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5E7C6C8()
{
  result = qword_1EB90CF50;
  if (!qword_1EB90CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF50);
  }

  return result;
}

uint64_t sub_1B5E7C820(uint64_t a1)
{

  return sub_1B5EA5D10();
}

void sub_1B5E7C874()
{
  *(v1 - 280) = *(v0 + 16);
  *(v1 - 288) = *(v0 + 17);
  *(v1 - 296) = *(v0 + 24);
}

uint64_t sub_1B5E7C8D8(uint64_t a1)
{

  return sub_1B5EA5D10();
}

uint64_t sub_1B5E7C908@<X0>(char a1@<W8>)
{
  v7 = *(v3 - 256);
  *v7 = v5;
  *(v7 + 8) = v4;
  *(v7 + 16) = a1;
  *(v7 + 17) = v1;
  *(v7 + 24) = *(v6 - 160);
  *(v7 + 40) = v2;
  return v7;
}

uint64_t sub_1B5E7C930(uint64_t a1)
{

  return sub_1B5EA5D10();
}

uint64_t sub_1B5E7C998(uint64_t a1)
{

  return sub_1B5EA5DC0();
}

uint64_t sub_1B5E7C9BC(uint64_t a1)
{

  return sub_1B5EA5DC0();
}

uint64_t sub_1B5E7CA34(uint64_t a1, uint64_t a2)
{

  return sub_1B5EA5E00();
}

uint64_t sub_1B5E7CB20(unint64_t *a1)
{

  return sub_1B5E248A8(a1, v1, v2, &protocol conformance descriptor for VisualPromptSummarizableThread<A>);
}

uint64_t sub_1B5E7CB4C(uint64_t a1, uint64_t a2)
{

  return sub_1B5EA5E00();
}

void sub_1B5E7CB78(uint64_t a1@<X8>)
{
  v2 = *(v1 - 280);
  *(v1 - 160) = *(a1 - 256);
  *(v1 - 152) = v2;
}

void sub_1B5E7CBB0()
{
  *(v1 - 296) = v0[1];
  v2 = v0[3];
  *(v1 - 280) = v0[2];
  *(v1 - 288) = v2;
}

uint64_t sub_1B5E7CBF8()
{

  return swift_unknownObjectRelease();
}

__n128 sub_1B5E7CC90()
{
  v1 = *(v0 - 144);
  *(v0 - 240) = *(v0 - 160);
  *(v0 - 224) = v1;
  result = *(v0 - 128);
  v3 = *(v0 - 112);
  *(v0 - 208) = result;
  *(v0 - 192) = v3;
  *(v0 - 161) = 1;
  return result;
}

uint64_t sub_1B5E7CD30(uint64_t a1)
{

  return sub_1B5EA5EA0();
}

uint64_t sub_1B5E7CD48(uint64_t a1)
{

  return sub_1B5EA5EA0();
}

id sub_1B5E7CD88()
{

  return [v0 (v3 + 3842)];
}

uint64_t sub_1B5E7CDA8(uint64_t a1, uint64_t a2)
{

  return sub_1B5EA5E00();
}

uint64_t sub_1B5E7CDC8(uint64_t a1)
{

  return sub_1B5EA4130();
}

uint64_t sub_1B5E7CDF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684631414 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1819242338 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001B5EAA670 == a2;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001BLL && 0x80000001B5EAA690 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B5EA5F00();

          if (v10)
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

unint64_t sub_1B5E7CF9C(char a1)
{
  result = 1684631414;
  switch(a1)
  {
    case 1:
      result = 1819242338;
      break;
    case 2:
      result = 0x7972616D6D7573;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E7D030(uint64_t a1)
{
  v2 = sub_1B5E7DD18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E7D06C(uint64_t a1)
{
  v2 = sub_1B5E7DD18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E7D0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E7CDF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E7D0D8(uint64_t a1)
{
  v2 = sub_1B5E7DB08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E7D114(uint64_t a1)
{
  v2 = sub_1B5E7DB08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E7D150(uint64_t a1)
{
  v2 = sub_1B5E7DCC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E7D18C(uint64_t a1)
{
  v2 = sub_1B5E7DCC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E7D1C8(uint64_t a1)
{
  v2 = sub_1B5E7DBC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E7D204(uint64_t a1)
{
  v2 = sub_1B5E7DBC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E7D240(uint64_t a1)
{
  v2 = sub_1B5E7DC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E7D27C(uint64_t a1)
{
  v2 = sub_1B5E7DC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E7D2B8(uint64_t a1)
{
  v2 = sub_1B5E7DD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E7D2F4(uint64_t a1)
{
  v2 = sub_1B5E7DD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizationXPCResult.Result.encode(to:)(void *a1)
{
  sub_1B5DF33E0(&qword_1EB90F3D0, &unk_1B5EB9520);
  sub_1B5DF5DA8();
  v82 = v3;
  v83 = v2;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFA50C();
  v81 = v5;
  v79 = sub_1B5DF33E0(&qword_1EB90F3D8, &qword_1B5EB9E10);
  sub_1B5DF5EB8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFA50C();
  v80 = v7;
  sub_1B5DF33E0(&qword_1EB90F3E0, &unk_1B5EB9530);
  sub_1B5DF5DA8();
  v77 = v9;
  v78 = v8;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFA50C();
  v76 = v11;
  v74 = sub_1B5DF33E0(&qword_1EB90F3E8, &qword_1B5EB9E30);
  sub_1B5DF5EB8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFA50C();
  v75 = v13;
  sub_1B5DF33E0(&qword_1EB90F3F0, &qword_1B5EB9540);
  sub_1B5DF5DA8();
  v72 = v15;
  v73 = v14;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5DFA50C();
  v71 = v17;
  v69 = type metadata accessor for Summary(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFD7E8();
  v70 = v20 - v19;
  sub_1B5DF33E0(&qword_1EB90F3F8, &qword_1B5EB9548);
  sub_1B5DF5DA8();
  v67 = v22;
  v68 = v21;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - v24;
  v26 = sub_1B5DF33E0(&qword_1EB90F400, &qword_1B5EB9550);
  sub_1B5DF5DA8();
  v66 = v27;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65 - v29;
  type metadata accessor for SummarizationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5DFD7E8();
  v34 = v33 - v32;
  sub_1B5DF33E0(&qword_1EB90F408, &qword_1B5EB9558);
  sub_1B5DF5DA8();
  v85 = v36;
  v86 = v35;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v37);
  v38 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E7DB08();
  sub_1B5EA6040();
  sub_1B5E7DB5C(v84, v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = v70;
      sub_1B5E7F320(v34, v70, type metadata accessor for Summary);
      v89[0] = 2;
      sub_1B5E7DCC4();
      v61 = v71;
      sub_1B5E8014C(&type metadata for SummarizationXPCResult.Result.SummaryCodingKeys, v89);
      sub_1B5E800E8();
      sub_1B5E7F37C(v62, v63, &protocol conformance descriptor for Summary);
      v64 = v73;
      sub_1B5EA5EA0();
      (*(v72 + 8))(v61, v64);
      sub_1B5E7F3C4(v60, type metadata accessor for Summary);
      goto LABEL_7;
    case 2u:
      v43 = v75;
      sub_1B5E7DC14(v34, v75, &qword_1EB90F3E8, &qword_1B5EB9E30);
      v89[1] = 3;
      sub_1B5E7DC70();
      v44 = v76;
      v45 = v86;
      sub_1B5EA5E00();
      sub_1B5E801AC();
      sub_1B5E248A8(v46, v47, &qword_1B5EB9E30, v48);
      v49 = v78;
      sub_1B5EA5EA0();
      (*(v77 + 8))(v44, v49);
      sub_1B5DF4428(v43, &qword_1EB90F3E8, &qword_1B5EB9E30);
      v50 = sub_1B5E80110();
      v52 = v45;
      return v51(v50, v52);
    case 3u:
      v53 = v80;
      sub_1B5E7DC14(v34, v80, &qword_1EB90F3D8, &qword_1B5EB9E10);
      v89[2] = 4;
      sub_1B5E7DBC0();
      v54 = v81;
      v55 = v86;
      sub_1B5EA5E00();
      sub_1B5E801AC();
      sub_1B5E248A8(v56, v57, &qword_1B5EB9E10, v58);
      v59 = v83;
      sub_1B5EA5EA0();
      (*(v82 + 8))(v54, v59);
      sub_1B5DF4428(v53, &qword_1EB90F3D8, &qword_1B5EB9E10);
      v50 = sub_1B5E80110();
      v52 = v55;
      return v51(v50, v52);
    case 4u:
      v87 = 0;
      sub_1B5E7DD6C();
      sub_1B5E8014C(&type metadata for SummarizationXPCResult.Result.VoidCodingKeys, &v87);
      (*(v66 + 8))(v30, v26);
      v40 = sub_1B5E80110();
      return v41(v40, v38);
    default:
      v88 = 1;
      sub_1B5E7DD18();
      sub_1B5E8014C(&type metadata for SummarizationXPCResult.Result.BoolCodingKeys, &v88);
      v39 = v68;
      sub_1B5EA5E60();
      (*(v67 + 8))(v25, v39);
LABEL_7:
      v50 = sub_1B5E80110();
      v52 = v38;
      return v51(v50, v52);
  }
}

unint64_t sub_1B5E7DB08()
{
  result = qword_1ED7D2530;
  if (!qword_1ED7D2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2530);
  }

  return result;
}

uint64_t sub_1B5E7DB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationXPCResult.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5E7DBC0()
{
  result = qword_1EB90CF70;
  if (!qword_1EB90CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF70);
  }

  return result;
}

uint64_t sub_1B5E7DC14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B5DF33E0(a3, a4);
  sub_1B5DF5EB8();
  v5 = sub_1B5DFA488();
  v6(v5);
  return a2;
}

unint64_t sub_1B5E7DC70()
{
  result = qword_1EB90F418;
  if (!qword_1EB90F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F418);
  }

  return result;
}

unint64_t sub_1B5E7DCC4()
{
  result = qword_1EB90D4A0;
  if (!qword_1EB90D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D4A0);
  }

  return result;
}

unint64_t sub_1B5E7DD18()
{
  result = qword_1EB90D4A8;
  if (!qword_1EB90D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D4A8);
  }

  return result;
}

unint64_t sub_1B5E7DD6C()
{
  result = qword_1EB90F428;
  if (!qword_1EB90F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F428);
  }

  return result;
}

uint64_t SummarizationXPCResult.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  sub_1B5DF33E0(&qword_1EB90F430, &qword_1B5EB9560);
  sub_1B5DF5DA8();
  v116 = v3;
  v117 = v4;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFA50C();
  v128 = v6;
  v115 = sub_1B5DF33E0(&qword_1EB90F438, &qword_1B5EB9568);
  sub_1B5DF5DA8();
  v122 = v7;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFA50C();
  v121 = v9;
  sub_1B5DF33E0(&qword_1EB90F440, &qword_1B5EB9570);
  sub_1B5DF5DA8();
  v113 = v11;
  v114 = v10;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFA50C();
  v120 = v13;
  sub_1B5DF33E0(&qword_1EB90F448, &qword_1B5EB9578);
  sub_1B5DF5DA8();
  v111 = v15;
  v112 = v14;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5DFA50C();
  v119 = v17;
  v124 = sub_1B5DF33E0(&qword_1EB90F450, &qword_1B5EB9580);
  sub_1B5DF5DA8();
  v110 = v18;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFA50C();
  v118 = v20;
  sub_1B5DF33E0(&qword_1EB90F458, &unk_1B5EB9588);
  sub_1B5DF5DA8();
  v126 = v22;
  v127 = v21;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v104 - v24;
  v125 = type metadata accessor for SummarizationXPCResult.Result(0);
  sub_1B5DF5EB8();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v104 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v104 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v104 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v104 - v39;
  v41 = a1[3];
  v129 = a1;
  sub_1B5DF3BFC(a1, v41);
  sub_1B5E7DB08();
  v42 = v130;
  sub_1B5EA6030();
  if (v42)
  {
    goto LABEL_8;
  }

  v105 = v38;
  v106 = v35;
  v107 = v32;
  v108 = v29;
  v109 = v40;
  v43 = v127;
  sub_1B5EA5DE0();
  result = sub_1B5DFA434();
  if (v46 == v47 >> 1)
  {
LABEL_7:
    v60 = v125;
    v61 = sub_1B5EA5BF0();
    sub_1B5E8017C(v61, MEMORY[0x1E69E6B28]);
    v63 = v62;
    sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520);
    *v63 = v60;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    v64 = sub_1B5E8016C();
    v65(v64, v43);
LABEL_8:
    v66 = v129;
    return sub_1B5DF3FB8(v66);
  }

  v130 = v25;
  v104 = 0;
  if (v46 < (v47 >> 1))
  {
    v48 = *(v45 + v46);
    sub_1B5DFA42C();
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    v53 = v124;
    if (v50 == v52 >> 1)
    {
      v54 = v122;
      v55 = v123;
      switch(v48)
      {
        case 1:
          v132 = 1;
          sub_1B5E7DD18();
          sub_1B5E800C8(&type metadata for SummarizationXPCResult.Result.BoolCodingKeys);
          v94 = sub_1B5EA5D80();
          swift_unknownObjectRelease();
          v95 = sub_1B5E80120();
          v96(v95);
          v97 = sub_1B5E80100();
          v98(v97, v43);
          v99 = v94 & 1;
          v100 = v105;
          *v105 = v99;
          swift_storeEnumTagMultiPayload();
          sub_1B5E800B0();
          v102 = v100;
          goto LABEL_15;
        case 2:
          v133 = 2;
          sub_1B5E7DCC4();
          sub_1B5E800C8(&type metadata for SummarizationXPCResult.Result.SummaryCodingKeys);
          type metadata accessor for Summary(0);
          sub_1B5E800E8();
          sub_1B5E7F37C(v73, v74, &protocol conformance descriptor for Summary);
          v75 = v106;
          sub_1B5EA5DC0();
          v76 = v126;
          swift_unknownObjectRelease();
          v90 = sub_1B5E80120();
          v91(v90);
          (*(v76 + 8))(v130, v43);
          goto LABEL_14;
        case 3:
          v134 = 3;
          sub_1B5E7DC70();
          sub_1B5E800C8(&type metadata for SummarizationXPCResult.Result.TextAssistantSummaryCodingKeys);
          v77 = sub_1B5DFA488();
          sub_1B5DF33E0(v77, v78);
          sub_1B5E801AC();
          sub_1B5E248A8(v79, v80, &qword_1B5EB9E30, v81);
          v75 = v107;
          v82 = v115;
          v83 = v121;
          sub_1B5EA5DC0();
          swift_unknownObjectRelease();
          (*(v54 + 8))(v83, v82);
          v92 = sub_1B5E80100();
          v93(v92, v43);
LABEL_14:
          swift_storeEnumTagMultiPayload();
          sub_1B5E800B0();
          v102 = v75;
LABEL_15:
          v59 = v109;
          sub_1B5E7F320(v102, v109, v101);
          goto LABEL_16;
        case 4:
          v135 = 4;
          sub_1B5E7DBC0();
          sub_1B5E800C8(&type metadata for SummarizationXPCResult.Result.TextAssistantPartialSummaryCodingKeys);
          v67 = sub_1B5DFA488();
          sub_1B5DF33E0(v67, v68);
          sub_1B5E801AC();
          sub_1B5E248A8(v69, v70, &qword_1B5EB9E10, v71);
          v72 = v108;
          sub_1B5EA5DC0();
          swift_unknownObjectRelease();
          v84 = sub_1B5E801B8();
          v85(v84);
          v86 = sub_1B5E80100();
          v87(v86, v43);
          swift_storeEnumTagMultiPayload();
          sub_1B5E800B0();
          v59 = v109;
          sub_1B5E7F320(v72, v109, v88);
          v89 = v129;
          goto LABEL_17;
        default:
          v131 = 0;
          sub_1B5E7DD6C();
          v56 = v118;
          sub_1B5E800C8(&type metadata for SummarizationXPCResult.Result.VoidCodingKeys);
          swift_unknownObjectRelease();
          (*(v110 + 8))(v56, v53);
          v57 = sub_1B5E8016C();
          v58(v57, v43);
          v59 = v109;
          swift_storeEnumTagMultiPayload();
LABEL_16:
          v89 = v129;
LABEL_17:
          sub_1B5E800B0();
          sub_1B5E7F320(v59, v55, v103);
          v66 = v89;
          break;
      }

      return sub_1B5DF3FB8(v66);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5E7E864(uint64_t a1)
{
  v2 = type metadata accessor for SummarizationXPCResult.Result(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5E7DB5C(a1, v4);
  return sub_1B5E7E948(v4);
}

uint64_t sub_1B5E7E8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result;
  swift_beginAccess();
  return sub_1B5E7DB5C(v1 + v3, a1);
}

uint64_t sub_1B5E7E948(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result;
  swift_beginAccess();
  sub_1B5E80030(a1, v1 + v3);
  return swift_endAccess();
}

id SummarizationXPCResult.__allocating_init(result:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B5E7DB5C(a1, v3 + OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result);
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  sub_1B5E80098();
  sub_1B5E7F3C4(a1, v5);
  return v4;
}

id SummarizationXPCResult.init(result:)(uint64_t a1)
{
  sub_1B5E7DB5C(a1, v1 + OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SummarizationXPCResult(0);
  v3 = objc_msgSendSuper2(&v6, sel_init);
  sub_1B5E80098();
  sub_1B5E7F3C4(a1, v4);
  return v3;
}

id SummarizationXPCResult.init(coder:)(void *a1)
{
  sub_1B5DF33E0(&qword_1EB90F468, &qword_1B5EB9598);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for SummarizationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  sub_1B5E24370(v5);
  sub_1B5DF3658(v5, 0, 1, v6);
  sub_1B5E7F320(v5, v10, type metadata accessor for SummarizationXPCResult.Result);
  sub_1B5E7DB5C(v10, v1 + OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result);
  v11 = type metadata accessor for XPCValue();
  v15.receiver = v1;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_init);

  sub_1B5E7F3C4(v10, type metadata accessor for SummarizationXPCResult.Result);
  return v12;
}

void sub_1B5E7ECC4()
{
  type metadata accessor for SummarizationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DFD7E8();
  v4 = v3 - v2;
  v5 = OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result;
  sub_1B5E80130(v0 + OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result);
  sub_1B5E7DB5C(v0 + v5, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B5E80098();
  sub_1B5E7F3C4(v4, v7);
  if (EnumCaseMultiPayload != 4)
  {
    v8 = sub_1B5E7F43C();
    v9 = sub_1B5E8017C(&type metadata for SummarizationXPCResult.Error, v8);
    sub_1B5E80194(v9);
  }

  sub_1B5E801CC();
}

uint64_t sub_1B5E7ED90()
{
  type metadata accessor for SummarizationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5E2829C();
  v3 = OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result;
  swift_beginAccess();
  sub_1B5E7DB5C(v0 + v3, v1);
  sub_1B5E01DD8();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B5E80098();
    sub_1B5E7F3C4(v1, v4);
    v5 = sub_1B5E7F43C();
    v6 = sub_1B5E8017C(&type metadata for SummarizationXPCResult.Error, v5);
    sub_1B5E80194(v6);
  }

  else
  {
    v7 = *v1;
  }

  return v7 & 1;
}

void sub_1B5E7EE5C()
{
  type metadata accessor for SummarizationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5E2829C();
  v3 = OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result;
  sub_1B5E80130(v0 + OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result);
  sub_1B5E7DB5C(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B5E01DD8();
    sub_1B5E7F320(v4, v5, v6);
  }

  else
  {
    sub_1B5E80098();
    sub_1B5E7F3C4(v1, v7);
    v8 = sub_1B5E7F43C();
    v9 = sub_1B5E8017C(&type metadata for SummarizationXPCResult.Error, v8);
    sub_1B5E80194(v9);
  }

  sub_1B5E801CC();
}

void sub_1B5E7EF40()
{
  type metadata accessor for SummarizationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5E2829C();
  v3 = OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result;
  sub_1B5E80130(v0 + OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result);
  sub_1B5E7DB5C(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v4 = sub_1B5E01DD8();
    sub_1B5E7DC14(v4, v5, v6, v7);
  }

  else
  {
    sub_1B5E80098();
    sub_1B5E7F3C4(v1, v8);
    v9 = sub_1B5E7F43C();
    v10 = sub_1B5E8017C(&type metadata for SummarizationXPCResult.Error, v9);
    sub_1B5E80194(v10);
  }

  sub_1B5E801CC();
}

void sub_1B5E7F020()
{
  type metadata accessor for SummarizationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5E2829C();
  v3 = OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result;
  sub_1B5E80130(v0 + OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result);
  sub_1B5E7DB5C(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v4 = sub_1B5E01DD8();
    sub_1B5E7DC14(v4, v5, v6, v7);
  }

  else
  {
    sub_1B5E80098();
    sub_1B5E7F3C4(v1, v8);
    v9 = sub_1B5E7F43C();
    v10 = sub_1B5E8017C(&type metadata for SummarizationXPCResult.Error, v9);
    sub_1B5E80194(v10);
  }

  sub_1B5E801CC();
}

uint64_t sub_1B5E7F100()
{
  type metadata accessor for SummarizationXPCResult.Result(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5E2829C();
  v3 = OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result;
  sub_1B5E80130(v0 + OBJC_IVAR____TtC4Sage22SummarizationXPCResult_result);
  sub_1B5E7DB5C(v0 + v3, v1);
  if (qword_1ED7D2050 != -1)
  {
    swift_once();
  }

  sub_1B5E7F37C(&qword_1EB90CF68, type metadata accessor for SummarizationXPCResult.Result, &protocol conformance descriptor for SummarizationXPCResult.Result);
  sub_1B5E01DD8();
  sub_1B5EA4160();
  sub_1B5E80098();
  sub_1B5E7F3C4(v1, v4);
  return sub_1B5DFA488();
}

id SummarizationXPCResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SummarizationXPCResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarizationXPCResult(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B5E7F320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1B5DF5EB8();
  v4 = sub_1B5DFA488();
  v5(v4);
  return a2;
}

uint64_t sub_1B5E7F37C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5E7F3C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1B5DF5EB8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1B5E7F43C()
{
  result = qword_1EB90F470;
  if (!qword_1EB90F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F470);
  }

  return result;
}

uint64_t sub_1B5E7F498(uint64_t a1)
{
  result = type metadata accessor for SummarizationXPCResult.Result(319);
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

void sub_1B5E7F6F4(uint64_t a1)
{
  type metadata accessor for Summary(319);
  if (v1 <= 0x3F)
  {
    sub_1B5E7F7C0(319, qword_1ED7D2558, type metadata accessor for SummarizationClient.TextAssistantSummary);
    if (v2 <= 0x3F)
    {
      sub_1B5E7F7C0(319, &qword_1ED7D2550, type metadata accessor for SummarizationClient.TextAssistantPartialSummary);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B5E7F7C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SummarizationXPCResult.Result.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B5E7F954(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B5E7FA04()
{
  result = qword_1EB90F478;
  if (!qword_1EB90F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F478);
  }

  return result;
}

unint64_t sub_1B5E7FA5C()
{
  result = qword_1EB90F480;
  if (!qword_1EB90F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F480);
  }

  return result;
}

unint64_t sub_1B5E7FAB4()
{
  result = qword_1EB90F488;
  if (!qword_1EB90F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F488);
  }

  return result;
}

unint64_t sub_1B5E7FB0C()
{
  result = qword_1EB90F490;
  if (!qword_1EB90F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F490);
  }

  return result;
}

unint64_t sub_1B5E7FB64()
{
  result = qword_1EB90F498;
  if (!qword_1EB90F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F498);
  }

  return result;
}

unint64_t sub_1B5E7FBBC()
{
  result = qword_1EB90F4A0;
  if (!qword_1EB90F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F4A0);
  }

  return result;
}

unint64_t sub_1B5E7FC14()
{
  result = qword_1ED7D2500;
  if (!qword_1ED7D2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2500);
  }

  return result;
}

unint64_t sub_1B5E7FC6C()
{
  result = qword_1ED7D2508;
  if (!qword_1ED7D2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2508);
  }

  return result;
}

unint64_t sub_1B5E7FCC4()
{
  result = qword_1ED7D2510;
  if (!qword_1ED7D2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2510);
  }

  return result;
}

unint64_t sub_1B5E7FD1C()
{
  result = qword_1ED7D2518;
  if (!qword_1ED7D2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2518);
  }

  return result;
}

unint64_t sub_1B5E7FD74()
{
  result = qword_1ED7D24F0;
  if (!qword_1ED7D24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D24F0);
  }

  return result;
}

unint64_t sub_1B5E7FDCC()
{
  result = qword_1ED7D24F8;
  if (!qword_1ED7D24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D24F8);
  }

  return result;
}

unint64_t sub_1B5E7FE24()
{
  result = qword_1ED7D24E0;
  if (!qword_1ED7D24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D24E0);
  }

  return result;
}

unint64_t sub_1B5E7FE7C()
{
  result = qword_1ED7D24E8;
  if (!qword_1ED7D24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D24E8);
  }

  return result;
}

unint64_t sub_1B5E7FED4()
{
  result = qword_1ED7D24D0;
  if (!qword_1ED7D24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D24D0);
  }

  return result;
}

unint64_t sub_1B5E7FF2C()
{
  result = qword_1ED7D24D8;
  if (!qword_1ED7D24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D24D8);
  }

  return result;
}

unint64_t sub_1B5E7FF84()
{
  result = qword_1ED7D2520;
  if (!qword_1ED7D2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2520);
  }

  return result;
}

unint64_t sub_1B5E7FFDC()
{
  result = qword_1ED7D2528;
  if (!qword_1ED7D2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2528);
  }

  return result;
}

uint64_t sub_1B5E80030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationXPCResult.Result(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E800C8(uint64_t a1)
{

  return sub_1B5EA5D10();
}

double sub_1B5E80130(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_1B5E8014C(uint64_t a1, uint64_t a2)
{

  return sub_1B5EA5E00();
}

uint64_t sub_1B5E8017C(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_1B5E80194(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t sub_1B5E801D8()
{
  sub_1B5E90A68();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x6966697373616C63;
    }

    else
    {
      v4 = 1953719668;
    }

    if (v3 == 1)
    {
      v5 = 0xEE006E6F69746163;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x6966697373616C63;
    }

    else
    {
      v2 = 1953719668;
    }

    if (v1 == 1)
    {
      v6 = 0xEE006E6F69746163;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B5E90940(v4);
  }

  return v8 & 1;
}

uint64_t sub_1B5E802C4(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000007974696CLL;
  v3 = 0x6962616C69617661;
  v4 = a1;
  v5 = 0x6962616C69617661;
  v6 = 0xEC0000007974696CLL;
  v7 = "streamingSummarization";
  switch(v4)
  {
    case 1:
      sub_1B5E905C4();
      sub_1B5E907EC();
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = sub_1B5E903E4();
      break;
    case 3:
      sub_1B5E905B0();
      sub_1B5E9059C();
      break;
    case 4:
      v5 = 0xD000000000000016;
      v6 = 0x80000001B5EA7560;
      break;
    case 5:
      v5 = sub_1B5E907DC();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6C69626967696C65;
      v2 = 0xEB00000000797469;
      break;
    case 2:
      v2 = 0xE700000000000000;
      sub_1B5E90A68();
      break;
    case 3:
      v3 = 0x7A6972616D6D7573;
      v2 = 0xED00006E6F697461;
      break;
    case 4:
      v3 = 0xD000000000000016;
      v2 = (v7 - 32) | 0x8000000000000000;
      break;
    case 5:
      v2 = 0xE400000000000000;
      v3 = 1953719668;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5EA5F00();
  }

  return v9 & 1;
}

uint64_t sub_1B5E80444(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x7373654D74786554;
  }

  else
  {
    v2 = 0x7373654D6C69614DLL;
  }

  if (a2)
  {
    v3 = 0x7373654D74786554;
  }

  else
  {
    v3 = 0x7373654D6C69614DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B5EA5F00();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B5E804D0(unsigned __int8 a1, char a2)
{
  v2 = 0x636967614DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x636967614DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x657369636E6F43;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x796C646E65697246;
      break;
    case 3:
      v5 = 0x69737365666F7250;
      v6 = 1818324591;
      goto LABEL_11;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x6574696C6F50;
      break;
    case 5:
      v5 = 0x65646E456E65704FLL;
      v3 = 0xE900000000000064;
      break;
    case 6:
      v5 = 0xD000000000000011;
      v3 = 0x80000001B5EA77D0;
      break;
    case 7:
      v3 = 0xE700000000000000;
      v5 = 0x7374656C6C7542;
      break;
    case 8:
      v3 = 0xE600000000000000;
      v5 = 0x73656C626154;
      break;
    case 9:
      v5 = 0x79617761656B6154;
      v3 = 0xE900000000000073;
      break;
    case 10:
      v5 = 0x616572666F6F7250;
      v6 = 1735289188;
LABEL_11:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      v2 = 0x657369636E6F43;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v2 = 0x796C646E65697246;
      break;
    case 3:
      v2 = 0x69737365666F7250;
      v8 = 1818324591;
      goto LABEL_23;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x6574696C6F50;
      break;
    case 5:
      v2 = 0x65646E456E65704FLL;
      v7 = 0xE900000000000064;
      break;
    case 6:
      sub_1B5E9067C();
      break;
    case 7:
      v7 = 0xE700000000000000;
      v2 = 0x7374656C6C7542;
      break;
    case 8:
      v7 = 0xE600000000000000;
      v2 = 0x73656C626154;
      break;
    case 9:
      v2 = 0x79617761656B6154;
      v7 = 0xE900000000000073;
      break;
    case 10:
      v2 = 0x616572666F6F7250;
      v8 = 1735289188;
LABEL_23:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B5E90940(v5);
  }

  return v10 & 1;
}

uint64_t sub_1B5E80778(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E75;
  switch(v4)
  {
    case 1:
      v6 = "classifyMailMessage";
      goto LABEL_5;
    case 2:
      v3 = 0x80000001B5EA74B0;
      v5 = 0xD000000000000018;
      break;
    case 3:
      v7 = "classifyUserNotification";
      goto LABEL_9;
    case 4:
      v7 = "classifyMailMessageThread";
LABEL_9:
      v3 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000019;
      break;
    case 5:
      v3 = 0x80000001B5EA7510;
      v5 = 0xD00000000000001ELL;
      break;
    case 6:
      break;
    case 7:
      v5 = 0x7966697373616C63;
      v3 = 0xEF6D726177657250;
      break;
    default:
      v6 = "cation";
LABEL_5:
      v3 = v6 | 0x8000000000000000;
      v5 = 0xD000000000000013;
      break;
  }

  v8 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v9 = "classifyMailMessage";
      goto LABEL_15;
    case 2:
      v8 = 0x80000001B5EA74B0;
      v2 = 0xD000000000000018;
      break;
    case 3:
      v10 = "classifyUserNotification";
      goto LABEL_19;
    case 4:
      v10 = "classifyMailMessageThread";
LABEL_19:
      v8 = v10 | 0x8000000000000000;
      v2 = 0xD000000000000019;
      break;
    case 5:
      v8 = 0x80000001B5EA7510;
      v2 = 0xD00000000000001ELL;
      break;
    case 6:
      break;
    case 7:
      v2 = 0x7966697373616C63;
      v8 = 0xEF6D726177657250;
      break;
    default:
      v9 = "cation";
LABEL_15:
      v8 = v9 | 0x8000000000000000;
      v2 = 0xD000000000000013;
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B5E90940(v5);
  }

  return v12 & 1;
}

uint64_t sub_1B5E80950()
{
  SummarizationClient.UseCase.rawValue.getter();
  v1 = v0;
  v3 = v2;
  SummarizationClient.UseCase.rawValue.getter();
  if (v1 == v5 && v3 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();
  }

  return v7 & 1;
}

uint64_t sub_1B5E809E4(unsigned __int8 a1, char a2)
{
  v2 = 0x696A6F6D6E6567;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x696A6F6D6E6567;
  switch(v4)
  {
    case 1:
      v5 = 0x706150636967616DLL;
      v3 = 0xEA00000000007265;
      break;
    case 2:
      v5 = 0xD000000000000014;
      v3 = 0x80000001B5EA7720;
      break;
    case 3:
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x706150636967616DLL;
      v6 = 0xEA00000000007265;
      break;
    case 2:
      v2 = 0xD000000000000014;
      v6 = 0x80000001B5EA7720;
      break;
    case 3:
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B5EA5F00();
  }

  return v8 & 1;
}

uint64_t sub_1B5E80B30(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000746E617473;
  v3 = 0x6973734174786574;
  v4 = a1;
  v5 = 0x6973734174786574;
  v6 = 0xED0000746E617473;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x6552697261666173;
      v7 = 1919247457;
      goto LABEL_5;
    case 3:
      v5 = 0x72506C6175736976;
      v7 = 1953525103;
LABEL_5:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      v5 = 0xD000000000000016;
      v6 = 0x80000001B5EA7740;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0x6552697261666173;
      v8 = 1919247457;
      goto LABEL_10;
    case 3:
      v3 = 0x72506C6175736976;
      v8 = 1953525103;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      v3 = 0xD000000000000016;
      v2 = 0x80000001B5EA7740;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B5EA5F00();
  }

  return v10 & 1;
}

uint64_t sub_1B5E80CA0(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000746E617473;
  v3 = 0x6973734174786574;
  v4 = a1;
  v5 = 0x6973734174786574;
  v6 = 0xED0000746E617473;
  switch(v4)
  {
    case 1:
      v5 = 0x6552697261666173;
      v6 = 0xEC00000072656461;
      break;
    case 2:
      v6 = 0x80000001B5EA76B0;
      v5 = 0xD000000000000014;
      break;
    case 3:
      v6 = 0x80000001B5EA76F0;
      v5 = 0xD000000000000018;
      break;
    case 4:
      v6 = 0x80000001B5EA7770;
      v5 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6552697261666173;
      v2 = 0xEC00000072656461;
      break;
    case 2:
      v2 = 0x80000001B5EA76B0;
      v3 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0x80000001B5EA76F0;
      v3 = 0xD000000000000018;
      break;
    case 4:
      v2 = 0x80000001B5EA7770;
      v3 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B5EA5F00();
  }

  return v8 & 1;
}

uint64_t SummarizationClient.UseCase.identifier.getter()
{
  sub_1B5EA5BC0();

  sub_1B5E90308();
  v2 = v0;
  SummarizationClient.UseCase.rawValue.getter();
  MEMORY[0x1B8C8A360]();

  return v2;
}

uint64_t *sub_1B5E80EB4(__n128 a1)
{
  if (qword_1ED7D21C0 != -1)
  {
    sub_1B5E90380(&qword_1ED7D21C0, a1);
  }

  return &qword_1ED7D21C8;
}

id static SummarizationXPCService.interface.getter(__n128 a1)
{
  if (qword_1ED7D21C0 != -1)
  {
    sub_1B5E90380(&qword_1ED7D21C0, a1);
  }

  sub_1B5E2D094(&qword_1ED7D21C8);
  v1 = qword_1ED7D21C8;

  return v1;
}

void static SummarizationXPCService.interface.setter(uint64_t a1, __n128 a2)
{
  if (qword_1ED7D21C0 != -1)
  {
    sub_1B5E90380(&qword_1ED7D21C0, a2);
  }

  sub_1B5E43294();
  v3 = qword_1ED7D21C8;
  qword_1ED7D21C8 = a1;
}

uint64_t static SummarizationXPCService.interface.modify(__n128 a1)
{
  if (qword_1ED7D21C0 != -1)
  {
    sub_1B5E90380(&qword_1ED7D21C0, a1);
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

id sub_1B5E81024@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  sub_1B5E80EB4(a2);
  swift_beginAccess();
  v3 = qword_1ED7D21C8;
  *a1 = qword_1ED7D21C8;

  return v3;
}

void sub_1B5E81084(id *a1)
{
  v1 = *a1;
  sub_1B5E80EB4(v2);
  swift_beginAccess();
  v3 = qword_1ED7D21C8;
  qword_1ED7D21C8 = v1;
}

uint64_t sub_1B5E81148()
{
  sub_1B5E6FB9C();
  sub_1B5E2D094(v1);
  v2 = *v0;

  return v2;
}

uint64_t sub_1B5E8119C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_1B5E81240(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t *sub_1B5E812C4(__n128 a1)
{
  if (qword_1ED7D21F8 != -1)
  {
    sub_1B5E90360(&qword_1ED7D21F8, a1);
  }

  return &qword_1ED7D21F0;
}

uint64_t static SummarizationXPCService.selectorClasses.getter(__n128 a1)
{
  if (qword_1ED7D21F8 != -1)
  {
    sub_1B5E90360(&qword_1ED7D21F8, a1);
  }

  sub_1B5E2D094(&qword_1ED7D21F0);
}

uint64_t static SummarizationXPCService.selectorClasses.setter(uint64_t a1, __n128 a2)
{
  if (qword_1ED7D21F8 != -1)
  {
    sub_1B5E90360(&qword_1ED7D21F8, a2);
  }

  sub_1B5E43294();
  qword_1ED7D21F0 = a1;
}

uint64_t static SummarizationXPCService.selectorClasses.modify(__n128 a1)
{
  if (qword_1ED7D21F8 != -1)
  {
    sub_1B5E90360(&qword_1ED7D21F8, a1);
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E81428@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  sub_1B5E812C4(a2);
  swift_beginAccess();
  *a1 = qword_1ED7D21F0;
}

uint64_t sub_1B5E8147C(uint64_t *a1)
{
  v1 = *a1;

  sub_1B5E812C4(v2);
  swift_beginAccess();
  qword_1ED7D21F0 = v1;
}

uint64_t sub_1B5E814D8()
{
  v0 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v0, qword_1ED7D21D8);
  v1 = sub_1B5DFD794(v0, qword_1ED7D21D8);
  if (qword_1ED7D2988 != -1)
  {
    swift_once();
  }

  v2 = sub_1B5DFD794(v0, qword_1ED7D2990);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B5E815A0(__n128 a1)
{
  if (qword_1ED7D21D0 != -1)
  {
    sub_1B5E90340(&qword_1ED7D21D0, a1);
  }

  v1 = sub_1B5EA53B0();

  return sub_1B5DFD794(v1, qword_1ED7D21D8);
}

uint64_t static SummarizationXPCService.logger.getter@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  if (qword_1ED7D21D0 != -1)
  {
    sub_1B5E90340(&qword_1ED7D21D0, a2);
  }

  v3 = sub_1B5EA53B0();
  v4 = sub_1B5DFD794(v3, qword_1ED7D21D8);
  sub_1B5E2D094(v4);
  sub_1B5E2D1D8();
  return (*(v5 + 16))(a1, v4, v3);
}

uint64_t static SummarizationXPCService.logger.setter(uint64_t a1, __n128 a2)
{
  if (qword_1ED7D21D0 != -1)
  {
    sub_1B5E90340(&qword_1ED7D21D0, a2);
  }

  v3 = sub_1B5EA53B0();
  sub_1B5DFD794(v3, qword_1ED7D21D8);
  swift_beginAccess();
  v4 = *(v3 - 8);
  v5 = sub_1B5E5F940();
  v6(v5);
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t static SummarizationXPCService.logger.modify(__n128 a1)
{
  if (qword_1ED7D21D0 != -1)
  {
    sub_1B5E90340(&qword_1ED7D21D0, a1);
  }

  v1 = sub_1B5EA53B0();
  sub_1B5E90818(v1, qword_1ED7D21D8);
  swift_beginAccess();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E817F4@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = sub_1B5E815A0(a2);
  swift_beginAccess();
  v4 = sub_1B5EA53B0();
  return (*(*(v4 - 8) + 16))(a1, v3, v4);
}

uint64_t sub_1B5E81870(uint64_t a1, __n128 a2)
{
  v3 = sub_1B5E815A0(a2);
  swift_beginAccess();
  v4 = sub_1B5EA53B0();
  (*(*(v4 - 8) + 24))(v3, a1, v4);
  return swift_endAccess();
}

void static SummarizationXPCService.customize(serverInterface:)(void *a1)
{
  v2 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setInterface:v2 forSelector:sel_performStreamingSummarizationRequest_delegate_ argumentIndex:1 ofReply:0];
}

uint64_t SummarizationClient.__allocating_init()(uint64_t a1)
{
  sub_1B5E907FC();
  v1 = swift_allocObject();
  SummarizationClient.init()();
  return v1;
}

uint64_t SummarizationClient.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  type metadata accessor for TextAssistantStreamingState();
  v2 = swift_allocObject();
  sub_1B5DF33E0(&qword_1EB90F4E8, &qword_1B5EB9D50);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = v3;
  *(v1 + 24) = v2;
  sub_1B5E90230(&qword_1ED7D2B78, v4, type metadata accessor for SummarizationClient, &protocol conformance descriptor for SummarizationClient);
  sub_1B5DF33E0(&qword_1EB90F4F0, &qword_1B5EB9D58);
  swift_allocObject();
  sub_1B5E9070C();

  *(v1 + 16) = sub_1B5EA4DA0();

  return v1;
}

uint64_t sub_1B5E81AD4()
{
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v0 = sub_1B5EA53B0();
  sub_1B5E90818(v0, qword_1ED7D2990);
  v1 = sub_1B5EA5380();
  v2 = sub_1B5EA5A40();
  if (os_log_type_enabled(v1, v2))
  {
    sub_1B5E909B8();
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B5DED000, v1, v2, "SummarizationClient.xpcConnectionWasInvalidated; client connection invalidated", v3, 2u);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  return sub_1B5E81BA8();
}

uint64_t sub_1B5E81BA8()
{
  v1 = v0;
  v2 = sub_1B5EA4100();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B5EA4110();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0[3] + 16);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = v0;
    v24 = v4;
    v11 = sub_1B5E6E2E4(v10, 0);
    v12 = sub_1B5E900D4(v28, v11 + 4, v10, v9);
    v13 = v28[0];
    v25 = v28[4];
    v26 = v12;

    result = sub_1B5E5ECC8(v13);
    if (v26 != v10)
    {
      __break(1u);
      return result;
    }

    v1 = v23;
    v4 = v24;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock((v8 + 24));
  v15 = v11[2];
  if (v15)
  {
    v26 = v11;
    ++v27;
    v16 = v11 + 5;
    do
    {

      sub_1B5EA40E0();
      sub_1B5DF6A60(MEMORY[0x1E69E7CC0]);
      sub_1B5E90230(&qword_1EB90DA80, 255, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1B5EA4220();
      v17 = sub_1B5EA40C0();
      (*v27)(v7, v5);
      v18 = v7;
      v19 = v5;
      v20 = v4;
      v21 = sub_1B5EA4230();

      v22 = sub_1B5EA5670();

      [v1 didEncounterTextAssistantStreamingError:v21 forRequestIdentifier:v22];

      v4 = v20;
      v5 = v19;
      v7 = v18;

      v16 += 2;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1B5E81EB4(uint64_t a1)
{
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v2 = sub_1B5EA53B0();
  sub_1B5DFD794(v2, qword_1ED7D2990);
  v3 = sub_1B5EA5380();
  v4 = sub_1B5EA5A40();
  if (os_log_type_enabled(v3, v4))
  {
    sub_1B5E909B8();
    *swift_slowAlloc() = 0;
    sub_1B5E909A4();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  return a1;
}

uint64_t SummarizationClient.deinit()
{

  return v0;
}

uint64_t SummarizationClient.__deallocating_deinit()
{
  SummarizationClient.deinit();
  v0 = sub_1B5E907FC();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B5E81FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SummarizationClient();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

void SummarizationClient.UseCase.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 3:
    case 5:
    case 0xB:
      sub_1B5E9095C();
      break;
    case 4:
    case 6:
      sub_1B5E906FC();
      break;
    case 7:
    case 8:
      return;
    case 9:
      sub_1B5E903B4();
      break;
    case 0xC:
      sub_1B5E90584();
      break;
    case 0xD:
      sub_1B5E9092C();
      break;
    case 0xE:
      sub_1B5E90520();
      break;
    case 0x10:
      sub_1B5E90898();
      break;
    case 0x11:
      sub_1B5E903E4();
      break;
    default:
      sub_1B5E90C28();
      sub_1B5E5FB20();
      break;
  }
}

Sage::SummarizationClient::UseCase_optional __swiftcall SummarizationClient.UseCase.init(rawValue:)(Swift::String rawValue)
{
  sub_1B5E905D8();
  sub_1B5EA5D00();
  sub_1B5E9070C();

  if (v2 >= 0x10)
  {
    v4 = 18;
  }

  else
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_1B5E82380(void *a1@<X8>)
{
  SummarizationClient.UseCase.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t SummarizationClient.AvailabilityParameters.useCases.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SummarizationClient.AvailabilityParameters.init(useCases:onBehalfOfProcess:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 4);
  *a3 = a1;

  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  return result;
}

void SummarizationClient.currentAvailablity(parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DFD8A8();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1B5EA4B90();
  v25 = sub_1B5E01CF8(v24);
  MEMORY[0x1EEE9AC00](v25);
  sub_1B5DFD7E8();
  v26 = sub_1B5DF33E0(&qword_1EB90F4F8, &qword_1B5EB9D60);
  sub_1B5E01CF8(v26);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v27);
  sub_1B5DFA50C();
  v28 = sub_1B5DF33E0(&qword_1EB90F500, &qword_1B5EB9D68);
  sub_1B5E01CF8(v28);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v29);
  sub_1B5DFA50C();
  sub_1B5E34DC8();
  v107 = sub_1B5EA4BE0();
  sub_1B5DF5DA8();
  v106 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5DFD7E8();
  v109 = v33 - v32;
  sub_1B5E34DC8();
  v114 = sub_1B5EA4C30();
  sub_1B5DF5DA8();
  v112 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1B5DFD7E8();
  v113 = v37 - v36;
  sub_1B5E34DC8();
  v38 = sub_1B5EA4C00();
  sub_1B5DF5DA8();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5DFD7E8();
  v115 = v43 - v42;
  v44 = sub_1B5E34DC8();
  type metadata accessor for SummarizationXPCRequest.Request(v44);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v45);
  sub_1B5DFD7E8();
  v48 = (v47 - v46);
  v49 = sub_1B5EA4340();
  sub_1B5DF5DA8();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  sub_1B5DFD7E8();
  v55 = v54 - v53;
  v56 = *v23;
  if (*(*v23 + 16))
  {
    v100 = v40;
    v101 = v38;
    v105 = *(v23 + 6);
    v104 = v23[2];
    v103 = v23[1];
    v57 = (v56 + 32);
    sub_1B5EA4330();
    v58 = sub_1B5EA4300();
    v102 = v59;
    (*(v51 + 8))(v55, v49);
    sub_1B5E90BB8();

    sub_1B5E9032C();
    sub_1B5E903F8(v60);
    SummarizationClient.UseCase.rawValue.getter();
    MEMORY[0x1B8C8A360]();

    v61 = v120[0];
    *v48 = v56;
    swift_storeEnumTagMultiPayload();
    *&v120[0] = v58;
    *(&v120[0] + 1) = v102;
    v120[1] = v61;
    v118[0] = v103;
    v118[1] = v104;
    v119 = v105;
    v116[0] = 0;
    v116[1] = 0;
    v117 = 0;
    v62 = objc_allocWithZone(type metadata accessor for SummarizationXPCRequest(0));

    v63 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v48, v120, v118, v116);
    sub_1B5E83434(v63);
    v83 = v82;

    v84 = *(v56 + 16);
    if (v84)
    {
      v118[0] = MEMORY[0x1E69E7CC0];
      sub_1B5E5C0FC(0, v84, 0);
      v85 = v118[0];
      sub_1B5E90480();
      v110 = v86;
      v111 = v87;
      sub_1B5E90480();
      v108 = v88;
      sub_1B5E90448(0x80000001B5EA7650);
      sub_1B5E90480();
      sub_1B5E90448(0x80000001B5EA75E0);
      sub_1B5E90480();
      sub_1B5E90480();
      while (2)
      {
        v89 = *v57++;
        *&v120[0] = 0;
        *(&v120[0] + 1) = 0xE000000000000000;
        sub_1B5EA5BC0();

        sub_1B5E9032C();
        sub_1B5E903F8(v90);
        sub_1B5E90A0C();
        v91 = 0x6973734174786574;
        switch(v89)
        {
          case 1:
            v91 = sub_1B5E905E8();
            v92 = &a13;
            goto LABEL_26;
          case 2:
            v91 = sub_1B5E90C28();
            v92 = &a14;
            goto LABEL_26;
          case 3:
            sub_1B5E9095C();
            v91 = v93 + 5;
            v92 = &a15;
            goto LABEL_26;
          case 4:
            v91 = sub_1B5E906FC();
            v92 = &a16;
            goto LABEL_26;
          case 5:
            sub_1B5E9095C();
            v91 = v95 + 14;
            v92 = &a17;
            goto LABEL_26;
          case 6:
            v91 = sub_1B5E906FC();
            v92 = &a18;
            goto LABEL_26;
          case 7:
            sub_1B5E9095C();
            v91 = v99 + 11;
            v63 = v108;
            goto LABEL_27;
          case 8:
            goto LABEL_27;
          case 9:
            v91 = sub_1B5E9050C();
            v63 = 0xEC00000072656461;
            goto LABEL_27;
          case 10:
            v91 = sub_1B5E90C28();
            v63 = 0x80000001B5EA76B0;
            goto LABEL_27;
          case 11:
            v91 = sub_1B5E905E8();
            v63 = 0x80000001B5EA76D0;
            goto LABEL_27;
          case 12:
            sub_1B5E9095C();
            v91 = v94 + 4;
            v63 = v110;
            goto LABEL_27;
          case 13:
            v63 = 0xE700000000000000;
            v91 = sub_1B5E9092C();
            goto LABEL_27;
          case 14:
            v91 = sub_1B5E90884();
            v63 = 0xEA00000000007265;
            goto LABEL_27;
          case 15:
            v91 = sub_1B5E90C28();
            v63 = v111;
            goto LABEL_27;
          case 16:
            v63 = 0xE700000000000000;
            v91 = sub_1B5E90898();
            goto LABEL_27;
          case 17:
            v63 = 0xE700000000000000;
            v91 = sub_1B5E903E4();
            goto LABEL_27;
          default:
            v91 = sub_1B5E90C28();
            v92 = &a10;
LABEL_26:
            v63 = *(v92 - 32);
LABEL_27:
            MEMORY[0x1B8C8A360](v91, v63);

            v96 = v120[0];
            v118[0] = v85;
            v98 = *(v85 + 16);
            v97 = *(v85 + 24);
            v63 = (v98 + 1);
            if (v98 >= v97 >> 1)
            {
              sub_1B5E5C0FC((v97 > 1), v98 + 1, 1);
              v85 = v118[0];
            }

            *(v85 + 16) = v63;
            *(v85 + 16 * v98 + 32) = v96;
            if (!--v84)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    (*(v112 + 104))(v113, *MEMORY[0x1E69A12A0], v114);
    sub_1B5EA4BF0();
    sub_1B5EA4C60();
    (*(v100 + 8))(v115, v101);
  }

  else
  {
    if (qword_1ED7D2988 != -1)
    {
      sub_1B5E25E6C();
      swift_once();
    }

    v64 = sub_1B5EA53B0();
    sub_1B5E90818(v64, qword_1ED7D2990);
    v65 = sub_1B5EA5380();
    v66 = sub_1B5EA5A50();
    if (os_log_type_enabled(v65, v66))
    {
      sub_1B5E909B8();
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1B5DED000, v65, v66, "parameters.useCases was empty", v67, 2u);
      sub_1B5E260EC();
      MEMORY[0x1B8C8B330]();
    }

    v68 = *MEMORY[0x1E69A12A0];
    v69 = *(v112 + 104);
    v69(v113, v68, v114);
    sub_1B5EA4BF0();
    sub_1B5DF33E0(&qword_1EB90F510, &qword_1B5EB9D80);
    v70 = sub_1B5EA4BC0();
    sub_1B5DF5DA8();
    v72 = v71;
    sub_1B5E90A2C();
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1B5EAFC20;
    (*(v72 + 104))(&v48[v73], *MEMORY[0x1E69A1160], v70);
    sub_1B5E0839C(v73);
    sub_1B5EA4BD0();
    (*(v106 + 104))(v109, *MEMORY[0x1E69A0F00], v107);
    v69(v113, v68, v114);
    sub_1B5EA4BF0();
    sub_1B5EA4C40();
    sub_1B5DF5DF0();
    sub_1B5DF3658(v74, v75, v76, v77);
    sub_1B5EA4C50();
    sub_1B5DF5DF0();
    sub_1B5DF3658(v78, v79, v80, v81);
    sub_1B5EA4C20();
    sub_1B5E90AF8(v109);
  }

  sub_1B5DFD8C0();
}

void sub_1B5E83434(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for SummarizationXPCRequest.Request(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7D2988 != -1)
  {
    swift_once();
  }

  v9 = sub_1B5EA53B0();
  v10 = sub_1B5DFD794(v9, qword_1ED7D2990);
  v11 = a1;
  v42 = v10;
  v12 = sub_1B5EA5380();
  v13 = sub_1B5EA5A60();

  if (os_log_type_enabled(v12, v13))
  {
    v40 = v4;
    v41 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45 = v15;
    *v14 = 136446722;
    swift_beginAccess();

    v16 = sub_1B5E5B1CC();

    *(v14 + 4) = v16;
    *(v14 + 12) = 2082;

    v17 = sub_1B5E5B1CC();

    *(v14 + 14) = v17;
    *(v14 + 22) = 2082;
    swift_beginAccess();
    sub_1B5E8FD18();
    SummarizationXPCRequest.Request.category.getter(v43);
    sub_1B5E8FD74(v8);
    v18 = sub_1B5E5B1CC();

    *(v14 + 24) = v18;
    _os_log_impl(&dword_1B5DED000, v12, v13, "SummarizationClient sending synchronous request with requestIdentifier=%{public}s, useCaseIdentifier=%{public}s, category=%{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C8B330](v15, -1, -1);
    MEMORY[0x1B8C8B330](v14, -1, -1);

    v4 = v40;
    v3 = v41;
  }

  else
  {
  }

  if (*(v4 + 16))
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v40 - 2) = v11;
    type metadata accessor for SummarizationXPCResult(0);

    v20 = v3;
    sub_1B5EA4D80();
    v21 = v3;
    if (v3)
    {

      v22 = v11;
      v23 = v3;
      v24 = sub_1B5EA5380();
      v25 = sub_1B5EA5A40();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v46 = v42;
        *v26 = 136446978;
        swift_beginAccess();

        v27 = sub_1B5E5B1CC();

        *(v26 + 4) = v27;
        *(v26 + 12) = 2082;

        v28 = sub_1B5E5B1CC();

        *(v26 + 14) = v28;
        *(v26 + 22) = 2082;
        swift_beginAccess();
        sub_1B5E8FD18();
        SummarizationXPCRequest.Request.category.getter(&v44);
        sub_1B5E8FD74(v8);
        v35 = sub_1B5E5B1CC();

        *(v26 + 24) = v35;
        *(v26 + 32) = 2114;
        v36 = v21;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 34) = v37;
        v38 = v41;
        *v41 = v37;
        _os_log_impl(&dword_1B5DED000, v24, v25, "Synchronous SummarizationClient request with requestIdentifier=%{public}s, useCaseIdentifier=%{public}s, category=%{public}s failed with error: %{public}@", v26, 0x2Au);
        sub_1B5DF4428(v38, &unk_1EB90F890, &qword_1B5EB6DC0);
        MEMORY[0x1B8C8B330](v38, -1, -1);
        v39 = v42;
        swift_arrayDestroy();
        MEMORY[0x1B8C8B330](v39, -1, -1);
        MEMORY[0x1B8C8B330](v26, -1, -1);
      }

      swift_willThrow();
    }

    else
    {

      v29 = v11;
      v30 = sub_1B5EA5380();
      v31 = sub_1B5EA5A60();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v43 = v33;
        *v32 = 136446210;
        swift_beginAccess();

        v34 = sub_1B5E5B1CC();

        *(v32 + 4) = v34;
        _os_log_impl(&dword_1B5DED000, v30, v31, "SummarizationClient received response for synchronous request with requestIdentifier=%{public}s", v32, 0xCu);
        sub_1B5DF3FB8(v33);
        MEMORY[0x1B8C8B330](v33, -1, -1);
        MEMORY[0x1B8C8B330](v32, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B5E83C34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E694C706F74 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736973706F6E7973 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B5E83D40(char a1)
{
  if (!a1)
  {
    return 0x6369706F74;
  }

  if (a1 == 1)
  {
    return 0x656E694C706F74;
  }

  return 0x736973706F6E7973;
}

uint64_t sub_1B5E83DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E83C34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E83DDC(uint64_t a1)
{
  v2 = sub_1B5E8DF24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E83E18(uint64_t a1)
{
  v2 = sub_1B5E8DF24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E83E54(uint64_t a1)
{
  v2 = sub_1B5E8DF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E83E90(uint64_t a1)
{
  v2 = sub_1B5E8DF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E83ECC(uint64_t a1)
{
  v2 = sub_1B5E8DFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E83F08(uint64_t a1)
{
  v2 = sub_1B5E8DFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E83F44(uint64_t a1)
{
  v2 = sub_1B5E8E020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E83F80(uint64_t a1)
{
  v2 = sub_1B5E8E020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SummarizationClient.SummarizationStyle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1B5DF7168();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  sub_1B5DF33E0(&qword_1EB90F518, &qword_1B5EB9D88);
  sub_1B5DF5DA8();
  v55 = v32;
  v56 = v31;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v33);
  sub_1B5DFA50C();
  v54 = v34;
  sub_1B5DF33E0(&qword_1EB90F520, &qword_1B5EB9D90);
  sub_1B5DF5DA8();
  v52 = v36;
  v53 = v35;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v37);
  sub_1B5DFA50C();
  v51 = v38;
  sub_1B5DF33E0(&qword_1EB90F528, &qword_1B5EB9D98);
  sub_1B5DF5DA8();
  v49 = v40;
  v50 = v39;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5E08868();
  v42 = sub_1B5DF33E0(&qword_1EB90F530, &qword_1B5EB9DA0);
  sub_1B5DF5DA8();
  v44 = v43;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v45);
  sub_1B5E08858();
  v46 = *v24;
  sub_1B5E0897C(v30, v30[3]);
  sub_1B5E8DF24();
  sub_1B5EA6040();
  if (v46)
  {
    if (v46 == 1)
    {
      a13 = 1;
      sub_1B5E8DFCC();
      v25 = v51;
      sub_1B5DFA494(&type metadata for SummarizationClient.SummarizationStyle.TopLineCodingKeys, &a13);
      v48 = v52;
      v47 = v53;
    }

    else
    {
      sub_1B5E909D8();
      sub_1B5E8DF78();
      v25 = v54;
      sub_1B5DFA494(&type metadata for SummarizationClient.SummarizationStyle.SynopsisCodingKeys, &a14);
      v48 = v55;
      v47 = v56;
    }
  }

  else
  {
    a12 = 0;
    sub_1B5E8E020();
    sub_1B5DFA494(&type metadata for SummarizationClient.SummarizationStyle.TopicCodingKeys, &a12);
    v48 = v49;
    v47 = v50;
  }

  (*(v48 + 8))(v25, v47);
  (*(v44 + 8))(v26, v42);
  sub_1B5DF7180();
}

uint64_t SummarizationClient.SummarizationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](v1);
  return sub_1B5EA6020();
}

void SummarizationClient.SummarizationStyle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  v85 = v23;
  v27 = v26;
  v80 = v28;
  v84 = sub_1B5DF33E0(&qword_1EB90F548, &qword_1B5EB9DA8);
  sub_1B5DF5DA8();
  v81 = v29;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5DFA50C();
  v83 = v31;
  sub_1B5DF33E0(&qword_1EB90F550, &qword_1B5EB9DB0);
  sub_1B5DF5DA8();
  v78 = v33;
  v79 = v32;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v34);
  sub_1B5E5F1E8();
  v35 = sub_1B5DF33E0(&qword_1EB90F558, &qword_1B5EB9DB8);
  sub_1B5DF5DA8();
  v77 = v36;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v72 - v38;
  v40 = sub_1B5DF33E0(&qword_1EB90F560, &qword_1B5EB9DC0);
  sub_1B5DF5DA8();
  v82 = v41;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v42);
  sub_1B5E5F57C();
  sub_1B5E0897C(v27, v27[3]);
  sub_1B5E8DF24();
  v43 = v85;
  sub_1B5EA6030();
  if (v43)
  {
    goto LABEL_10;
  }

  v74 = v35;
  v75 = v39;
  v76 = v24;
  v45 = v83;
  v44 = v84;
  v85 = v27;
  sub_1B5EA5DE0();
  sub_1B5DFA434();
  if (v47 == v48 >> 1)
  {
    goto LABEL_9;
  }

  v73 = 0;
  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    sub_1B5DFA42C();
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    v54 = v51 == v53 >> 1;
    v55 = v81;
    if (v54)
    {
      if (v49)
      {
        if (v49 == 1)
        {
          sub_1B5E8DFCC();
          v56 = v76;
          sub_1B5E90B78(&type metadata for SummarizationClient.SummarizationStyle.TopLineCodingKeys);
          v57 = v80;
          v58 = v40;
          v59 = v82;
          swift_unknownObjectRelease();
          (*(v78 + 8))(v56, v79);
          (*(v59 + 8))(v25, v58);
        }

        else
        {
          LODWORD(v79) = v49;
          sub_1B5E909D8();
          sub_1B5E8DF78();
          v64 = v73;
          sub_1B5EA5D10();
          v57 = v80;
          if (v64)
          {
            v65 = sub_1B5E9080C();
            v67(v65, v66);
            swift_unknownObjectRelease();
            v27 = v85;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v55 + 8))(v45, v44);
          v70 = sub_1B5E9080C();
          v71(v70);
          LOBYTE(v49) = v79;
        }
      }

      else
      {
        sub_1B5E8E020();
        v63 = v75;
        sub_1B5E90B78(&type metadata for SummarizationClient.SummarizationStyle.TopicCodingKeys);
        swift_unknownObjectRelease();
        (*(v77 + 8))(v63, v74);
        v68 = sub_1B5DFA4CC();
        v69(v68);
        v57 = v80;
      }

      *v57 = v49;
      sub_1B5DF3FB8(v85);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B5EA5BF0();
    swift_allocError();
    v61 = v60;
    sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520);
    *v61 = &type metadata for SummarizationClient.SummarizationStyle;
    sub_1B5EA5D20();
    sub_1B5EA5BE0();
    sub_1B5E2D1D8();
    (*(v62 + 104))(v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v82 + 8))(v25, v40);
    v27 = v85;
LABEL_10:
    sub_1B5DF3FB8(v27);
LABEL_11:
    sub_1B5DF7180();
    return;
  }

  __break(1u);
}

void SummarizationClient.prewarm(for:onBehalfOfProcess:requestIdentifier:completion:)()
{
  sub_1B5DFD8A8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v26 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v13);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5E5F1E8();
  v15 = *v12;
  v17 = *v10;
  v16 = v10[1];
  v18 = *(v10 + 4);
  sub_1B5EA5920();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v19, v20, v21, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v26;
  *(v23 + 40) = v7;
  *(v23 + 48) = v15;
  *(v23 + 56) = v17;
  *(v23 + 64) = v16;
  *(v23 + 72) = v18;
  *(v23 + 80) = v5;
  *(v23 + 88) = v3;
  *(v23 + 96) = v0;

  v24 = sub_1B5E5F940();
  sub_1B5E2C264(v24, v25);

  sub_1B5E2A07C(0, 0, v1, &unk_1B5EB9DD0, v23);

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E84A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v13;
  *(v8 + 48) = v12;
  *(v8 + 112) = v11;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 116) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 72) = type metadata accessor for SummarizationXPCRequest.Request(0);
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E84AE4, 0, 0);
}

uint64_t sub_1B5E84AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1B5E60060();
  sub_1B5E9083C();
  v23 = *(v22 + 80);
  sub_1B5E90B98();

  sub_1B5E90308();
  SummarizationClient.UseCase.rawValue.getter();
  MEMORY[0x1B8C8A360]();

  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for SummarizationXPCRequest(0);
  sub_1B5E9086C(v24);
  sub_1B5E90688();

  sub_1B5E903D4();
  v28 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v23, v25, v26, v27);
  sub_1B5E90740(v28);
  v29 = swift_task_alloc();
  v30 = sub_1B5E90718(v29);
  *v30 = v31;
  v30[1] = sub_1B5E84C0C;
  sub_1B5E9043C();
  sub_1B5E5F958();

  return sub_1B5E84F28(v32);
}

uint64_t sub_1B5E84C0C()
{
  sub_1B5E01DFC();
  v3 = v2;
  sub_1B5E2CF58();
  sub_1B5E907CC();
  *v5 = v4;
  v6 = *v1;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (!v0)
  {
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E84D0C()
{
  sub_1B5E01DFC();
  v1 = v0[6];
  v2 = v0[11];
  if (v1)
  {
    v1(v0[2], v0[3]);
  }

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E84D8C()
{
  sub_1B5E34EC0();
  v1 = v0[6];
  if (v1)
  {
    v1(v0[2], v0[3]);
  }

  if (qword_1EB90D8E8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = sub_1B5EA53B0();
  sub_1B5E90818(v3, qword_1EB90D8F0);
  v4 = v2;
  v5 = sub_1B5EA5380();
  v6 = sub_1B5EA5A40();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  v9 = v0[11];
  if (v7)
  {
    v10 = sub_1B5E5FD88();
    v11 = sub_1B5E90BF8();
    *v10 = 138543362;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    sub_1B5E2D1F0(&dword_1B5DED000, v14, v15, "Prewarm failed with error: %{public}@");
    sub_1B5DF4428(v11, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  else
  {
  }

  sub_1B5E2CF4C();

  return v16();
}

uint64_t sub_1B5E84F28(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  type metadata accessor for SummarizationXPCRequest.Request(0);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E84FB8, 0, 0);
}

uint64_t sub_1B5E84FB8()
{
  v32 = v0;
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B5EA53B0();
  v0[18] = sub_1B5E90818(v2, qword_1ED7D2990);
  v3 = v1;
  v4 = sub_1B5EA5380();
  v5 = sub_1B5EA5A60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = v0[15];
    v8 = sub_1B5E5FC3C();
    swift_slowAlloc();
    *v8 = 136446722;
    sub_1B5E2D094(v7 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo);

    sub_1B5E5FB58();
    v9 = sub_1B5E5B1CC();

    *(v8 + 4) = v9;
    *(v8 + 12) = 2082;

    v10 = sub_1B5E5B1CC();

    *(v8 + 14) = v10;
    *(v8 + 22) = 2082;
    sub_1B5E2D094(v7 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_request);
    sub_1B5E904DC();
    sub_1B5E8FD18();
    SummarizationXPCRequest.Request.category.getter(&v31);
    sub_1B5E8FD74(v6);
    switch(v31)
    {
      case 1:
        sub_1B5E907EC();
        sub_1B5E905C4();
        break;
      case 2:
        sub_1B5E903E4();
        break;
      case 3:
        sub_1B5E9059C();
        sub_1B5E905B0();
        break;
      case 4:
        sub_1B5E9067C();
        break;
      case 5:
        sub_1B5E907DC();
        break;
      default:
        break;
    }

    v11 = sub_1B5E5B1CC();

    *(v8 + 24) = v11;
    _os_log_impl(&dword_1B5DED000, v4, v5, "SummarizationClient sending request with requestIdentifier=%{public}s, useCaseIdentifier=%{public}s, category=%{public}s", v8, 0x20u);
    swift_arrayDestroy();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  else
  {
  }

  v12 = v0[15];
  v13 = v0[16];
  v14 = OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo;
  v0[19] = OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo;
  v15 = (v12 + v14);
  sub_1B5E2D094(v12 + v14);
  v17 = *v15;
  v16 = v15[1];
  v0[20] = v16;
  v18 = swift_task_alloc();
  v0[21] = v18;
  *(v18 + 16) = v13;
  *(v18 + 24) = v12;
  v19 = swift_task_alloc();
  v0[22] = v19;
  v19[2] = v13;
  v19[3] = v17;
  v19[4] = v16;

  v20 = swift_task_alloc();
  v0[23] = v20;
  type metadata accessor for SummarizationXPCResult(0);
  *v20 = v0;
  v20[1] = sub_1B5E85358;
  sub_1B5E90AA4();

  return MEMORY[0x1EEE6DE18](v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1B5E85358()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E85474()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = sub_1B5EA5380();
  v4 = sub_1B5EA5A60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_1B5E5FD88();
    v13 = sub_1B5E5FC3C();
    *v5 = 136446210;

    v6 = sub_1B5E5B1CC();

    *(v5 + 4) = v6;
    sub_1B5E2D1F0(&dword_1B5DED000, v7, v8, "SummarizationClient received response for request with requestIdentifier=%{public}s");
    sub_1B5DF3FB8(v13);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330](v9);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330](v10);
  }

  sub_1B5E90998();

  return v11(v1);
}

uint64_t sub_1B5E855B4()
{
  v20 = v0;
  v1 = v0[24];
  v2 = v0[15];

  v3 = v2;
  v4 = v1;
  v5 = sub_1B5EA5380();
  v6 = sub_1B5EA5A40();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v18 = sub_1B5E90BF8();
    swift_slowAlloc();
    *v9 = 136446978;

    sub_1B5E5FB58();
    v10 = sub_1B5E5B1CC();

    *(v9 + 4) = v10;
    *(v9 + 12) = 2082;

    sub_1B5E5FB58();
    v11 = sub_1B5E5B1CC();

    *(v9 + 14) = v11;
    *(v9 + 22) = 2082;
    sub_1B5E2D094(v8 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_request);
    sub_1B5E904DC();
    sub_1B5E8FD18();
    SummarizationXPCRequest.Request.category.getter(v19);
    sub_1B5E8FD74(v7);
    switch(v19[0])
    {
      case 1:
        sub_1B5E907EC();
        sub_1B5E905C4();
        break;
      case 2:
        sub_1B5E903E4();
        break;
      case 3:
        sub_1B5E9059C();
        sub_1B5E905B0();
        break;
      case 4:
        sub_1B5E9067C();
        break;
      case 5:
        sub_1B5E907DC();
        break;
      default:
        break;
    }

    v12 = v0[24];
    v13 = sub_1B5E5B1CC();

    *(v9 + 24) = v13;
    *(v9 + 32) = 2114;
    v14 = v12;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v15;
    *v18 = v15;
    _os_log_impl(&dword_1B5DED000, v5, v6, "SummarizationClient request with requestIdentifier=%{public}s, useCaseIdentifier=%{public}s, category=%{public}s failed with error: %{public}@", v9, 0x2Au);
    sub_1B5DF4428(v18, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    swift_arrayDestroy();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  swift_willThrow();

  sub_1B5E2CF4C();

  return v16();
}

unint64_t SummarizationClient.PrewarmCategory.identifier.getter()
{
  v1 = 0xD000000000000016;
  v2 = *v0;
  sub_1B5EA5BC0();

  sub_1B5E90480();
  sub_1B5E90A0C();
  v3 = 0x6973734174786574;
  switch(v2)
  {
    case 1:
      break;
    case 2:
      v1 = 0xEC00000072656461;
      v3 = sub_1B5E9050C();
      break;
    case 3:
      v1 = 0xEC00000074706D6FLL;
      v3 = 0x72506C6175736976;
      break;
    default:
      v1 = 0x80000001B5EA7740;
      v3 = 0xD000000000000016;
      break;
  }

  MEMORY[0x1B8C8A360](v3, v1);

  return 0xD000000000000016;
}

uint64_t SummarizationClient.PrewarmCategory.rawValue.getter()
{
  result = 0x6973734174786574;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = sub_1B5E903B4();
      break;
    case 3:
      result = 0x72506C6175736976;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

Sage::SummarizationClient::PrewarmCategory_optional __swiftcall SummarizationClient.PrewarmCategory.init(rawValue:)(Swift::String rawValue)
{
  sub_1B5E905D8();
  sub_1B5EA5D00();
  sub_1B5E9070C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B5E85AC4@<X0>(uint64_t *a1@<X8>)
{
  result = SummarizationClient.PrewarmCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall SummarizationClient.prewarm(category:)(Sage::SummarizationClient::PrewarmCategory category)
{
  v1 = category;
  v2 = sub_1B5EA4340();
  sub_1B5DF5DA8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v8 = v7 - v6;
  v14 = 0xE090800u >> (8 * *v1);
  v12 = 0uLL;
  v13 = 0;
  sub_1B5EA4330();
  v9 = sub_1B5EA4300();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  SummarizationClient.prewarm(for:onBehalfOfProcess:requestIdentifier:)(&v14, &v12, v9, v11);
}

void SummarizationClient.TextAssistantSummarizationOptions.init()()
{
  HIBYTE(v13) = 0;
  sub_1B5E90458();
  v8 = sub_1B5E9054C(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, v14, v15);
  sub_1B5E909E4(v9, v8);
}

uint64_t static SummarizationClient.TextAssistantSummarizationOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB90D918 != -1)
  {
    swift_once();
  }

  v3 = byte_1EB90F4C9;
  v5 = qword_1EB90F4D0;
  v4 = unk_1EB90F4D8;
  v6 = dword_1EB90F4E0;
  *a1 = byte_1EB90F4C8;
  *(a1 + 1) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
}

Sage::SummarizationClient::TextAssistantSummarizationOptions::Source_optional __swiftcall SummarizationClient.TextAssistantSummarizationOptions.Source.init(rawValue:)(Swift::String rawValue)
{
  sub_1B5E905D8();
  sub_1B5EA5D00();
  sub_1B5E9070C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void SummarizationClient.TextAssistantSummarizationOptions.Source.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      sub_1B5E903B4();
      break;
    case 2:
      sub_1B5E90C28();
      sub_1B5E5FB20();
      break;
    case 3:
      sub_1B5E90584();
      break;
    case 4:
      sub_1B5E9095C();
      break;
    default:
      return;
  }
}

void sub_1B5E85E98(void *a1@<X8>)
{
  SummarizationClient.TextAssistantSummarizationOptions.Source.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B5E85FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_1B5E85FE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

void SummarizationClient.TextAssistantSummarizationOptions.init(source:useExternalIntelligence:originatingProcess:)()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 4);

  sub_1B5E9050C();
  switch(v5)
  {
    case 1:
      goto LABEL_5;
    case 2:
      sub_1B5E90C28();
      sub_1B5E9067C();
      goto LABEL_5;
    case 3:
    case 4:
      sub_1B5E9067C();
      sub_1B5E9095C();
LABEL_5:
      v10 = sub_1B5EA5F00();

      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    default:

LABEL_6:
      if (v7)
      {
LABEL_7:
      }

      else
      {
        if (qword_1ED7D2988 != -1)
        {
          sub_1B5E25E6C();
          swift_once();
        }

        v11 = sub_1B5EA53B0();
        sub_1B5E90818(v11, qword_1ED7D2990);
        v12 = sub_1B5EA5380();
        v13 = sub_1B5EA5A40();
        if (os_log_type_enabled(v12, v13))
        {
          sub_1B5E909B8();
          *swift_slowAlloc() = 0;
          sub_1B5E909A4();
          _os_log_impl(v14, v15, v16, v17, v18, v19);
          sub_1B5E260EC();
          MEMORY[0x1B8C8B330]();
        }
      }

      *v3 = v5;
      *(v3 + 1) = v1 & 1;
      *(v3 + 8) = v8;
      *(v3 + 16) = v7;
      *(v3 + 24) = v9;
      sub_1B5DFD8C0();
      return;
  }
}

void SummarizationClient.TextAssistantSummarizationOptions.init(source:originatingProcess:)(uint64_t a1@<X8>, _BYTE *a2@<X0>)
{

  HIBYTE(v19) = *a2;
  sub_1B5E90458();
  v12 = sub_1B5E9054C(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17, v18, v19, v20, v21);
  *a1 = v13;
  *(a1 + 1) = v14;
  *(a1 + 8) = v12;
  *(a1 + 24) = v15;
}

void SummarizationClient.TextAssistantSummarizationOptions.init(source:)(_BYTE *a1)
{
  HIBYTE(v14) = *a1;
  sub_1B5E90458();
  v9 = sub_1B5E9054C(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, v14, v15, v16);
  sub_1B5E909E4(v10, v9);
}

uint64_t sub_1B5E86298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001B5EA8AF0 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001B5EAA420 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B5E863B8(char a1)
{
  if (!a1)
  {
    return 0x656372756F73;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000012;
}

uint64_t sub_1B5E8641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E86470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E86298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E86498(uint64_t a1)
{
  v2 = sub_1B5E8E158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E864D4(uint64_t a1)
{
  v2 = sub_1B5E8E158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SummarizationClient.TextAssistantSummarizationOptions.encode(to:)()
{
  sub_1B5DF7168();
  sub_1B5DF33E0(&qword_1EB90F568, &qword_1B5EB9DD8);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5E08868();
  v2 = sub_1B5E5FB58();
  sub_1B5E0897C(v2, v3);
  sub_1B5E8E158();
  sub_1B5EA6040();
  sub_1B5E8E1AC();
  sub_1B5EA5EA0();
  if (!v0)
  {
    sub_1B5EA5E60();
    sub_1B5E909D8();
    sub_1B5E0617C();

    sub_1B5EA5E40();
  }

  v4 = sub_1B5E6FB20();
  v5(v4);
  sub_1B5DF7180();
}

void SummarizationClient.TextAssistantSummarizationOptions.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v4 = v3;
  sub_1B5DF33E0(&qword_1EB90F570, &qword_1B5EB9DE0);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5E08858();
  sub_1B5E0897C(v2, v2[3]);
  sub_1B5E8E158();
  sub_1B5EA6030();
  if (!v0)
  {
    sub_1B5E8E200();
    sub_1B5E907B0();
    sub_1B5EA5DC0();
    v6 = v10;
    LOBYTE(v10) = 1;
    v7 = sub_1B5EA5D80();
    sub_1B5E909D8();
    sub_1B5E062DC();
    sub_1B5E907B0();
    sub_1B5EA5D60();
    v8 = sub_1B5E26048();
    v9(v8);

    *v4 = v6;
    *(v4 + 1) = v7 & 1;
    *(v4 + 8) = v10;
    *(v4 + 16) = v11;
    *(v4 + 24) = v12;
  }

  sub_1B5DF3FB8(v2);

  sub_1B5DF7180();
}

uint64_t sub_1B5E869EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF72C8();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E86A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B5E86A74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B5E86C74@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v12 = *a2;
  v13 = a7(0, a4, a5, a6);
  v14 = *(v13 + 44);
  *(a8 + v14) = 2;
  v15 = *(v13 + 48);
  type metadata accessor for InferenceEnvironmentInfo(0);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v16, v17, v18, v19);
  sub_1B5E2D1D8();
  (*(v20 + 32))(a8, a1, a4);
  *(a8 + v14) = v12;

  return sub_1B5DF346C(a3, a8 + v15);
}

uint64_t sub_1B5E86D60@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *(a6(0, a3, a4, a5) + 44);
  *(a7 + v11) = 2;
  type metadata accessor for InferenceEnvironmentInfo(0);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v12, v13, v14, v15);
  sub_1B5E2D1D8();
  result = (*(v16 + 32))(a7, a1, a3);
  *(a7 + v11) = v10;
  return result;
}

uint64_t sub_1B5E86E10()
{
  sub_1B5E6FB9C();
  v3 = v1 == 0x746E65746E6F63 && v2 == 0xE700000000000000;
  if (v3 || (sub_1B5E0888C(0x746E65746E6F63) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0xD000000000000014 && 0x80000001B5EA8C50 == v0;
    if (v5 || (v6 = sub_1B5E90C28(), (sub_1B5E0888C(v6) & 1) != 0))
    {

      return 1;
    }

    else if (v1 == 0xD000000000000018 && 0x80000001B5EA7840 == v0)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5E0888C(0xD000000000000018);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B5E86F00(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void))
{
  sub_1B5EA5FD0();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E86F8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B5E86FE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1B5E87074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  v26 = v25;
  v27(255);
  swift_getWitnessTable();
  v28 = sub_1B5EA5EC0();
  sub_1B5DF5DA8();
  v30 = v29;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5E5F1E8();
  sub_1B5E0897C(v26, v26[3]);
  sub_1B5EA6040();
  sub_1B5EA5EA0();
  if (!v23)
  {
    sub_1B5E1E0E0();
    sub_1B5EA5E40();
    type metadata accessor for InferenceEnvironmentInfo(0);
    sub_1B5E904F4();
    sub_1B5E90230(v32, 255, v33, &protocol conformance descriptor for InferenceEnvironmentInfo);
    sub_1B5EA5E40();
  }

  (*(v30 + 8))(v24, v28);
  sub_1B5DF7180();
}

void sub_1B5E872C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1B5DF7168();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v61 = v37;
  v38 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
  sub_1B5E01CF8(v38);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v39);
  sub_1B5DFA50C();
  v64 = v40;
  v63 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5DFD7E8();
  v65 = v43 - v42;
  v28(255, v34, v32, v30);
  swift_getWitnessTable();
  v66 = sub_1B5EA5DF0();
  sub_1B5DF5DA8();
  v62 = v44;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v45);
  sub_1B5E5F1E8();
  v46 = v26(0, v34, v32, v30);
  sub_1B5DF5DA8();
  v60 = v47;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v48);
  sub_1B5E08868();
  v50 = *(v49 + 44);
  *(v32 + v50) = 2;
  v51 = *(v49 + 48);
  v52 = type metadata accessor for InferenceEnvironmentInfo(0);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v53, v54, v55, v52);
  v56 = sub_1B5E9080C();
  sub_1B5E0897C(v56, v57);
  sub_1B5EA6030();
  if (v24)
  {
    sub_1B5DF3FB8(v36);
    sub_1B5DF4428(v32 + v51, &qword_1EB90D990, &qword_1B5EAE990);
  }

  else
  {
    sub_1B5EA5DC0();
    (*(v63 + 32))(v32, v65, v34);
    sub_1B5E1E990();
    sub_1B5EA5D60();
    *(v32 + v50) = a13;
    sub_1B5E904F4();
    sub_1B5E90230(v58, 255, v59, &protocol conformance descriptor for InferenceEnvironmentInfo);
    sub_1B5EA5D60();
    (*(v62 + 8))(v28, v66);
    sub_1B5DF346C(v64, v32 + v51);
    (*(v60 + 16))(v61, v32, v46);
    sub_1B5DF3FB8(v36);
    (*(v60 + 8))(v32, v46);
  }

  sub_1B5DF7180();
}

void SummarizationClient.isLanguageEligibleForSummarization(_:options:requestIdentifier:)()
{
  sub_1B5DF7168();
  *(&v28 + 1) = v1;
  v27 = v2;
  *&v28 = v3;
  v5 = v4;
  type metadata accessor for SummarizationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  v9 = v8 - v7;
  v10 = *v5;
  v11 = v5[1];
  v13 = *(v5 + 1);
  v12 = *(v5 + 2);
  v26 = *(v5 + 6);
  sub_1B5E9053C();
  v16 = v15 >> v14;
  sub_1B5E90BD8();

  sub_1B5E90308();
  *&v33[0] = v17;
  *(&v33[0] + 1) = v18;
  LOBYTE(v31[0]) = v16;
  SummarizationClient.UseCase.rawValue.getter();
  MEMORY[0x1B8C8A360]();

  v19 = v33[0];
  v20 = v9 + *(sub_1B5DF33E0(&qword_1EB90F1B8, &qword_1B5EB7810) + 48);
  sub_1B5EA4350();
  sub_1B5DF5EB8();
  (*(v21 + 16))(v9, v27);
  *v20 = v10;
  *(v20 + 1) = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v12;
  *(v20 + 24) = v26;
  swift_storeEnumTagMultiPayload();
  v33[0] = v28;
  v33[1] = v19;
  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v22 = objc_allocWithZone(type metadata accessor for SummarizationXPCRequest(0));

  v23 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v9, v33, v31, v29);
  sub_1B5E83434(v23);
  if (v0)
  {
  }

  else
  {
    v25 = v24;
    sub_1B5E7ED90();
  }

  sub_1B5DF7180();
}

void SummarizationClient.isTextEligibleForSummarization(_:options:requestIdentifier:)()
{
  sub_1B5DF7168();
  *(&v25 + 1) = v1;
  v24 = v2;
  *&v25 = v3;
  v5 = v4;
  v7 = v6;
  type metadata accessor for SummarizationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7E8();
  v11 = v10 - v9;
  v12 = *v5;
  v23 = v5[1];
  v13 = *(v5 + 1);
  v14 = *(v5 + 2);
  v15 = *(v5 + 6);
  sub_1B5E9053C();
  sub_1B5E90BD8();

  sub_1B5E90308();
  *&v30[0] = v16;
  *(&v30[0] + 1) = v17;
  SummarizationClient.UseCase.rawValue.getter();
  MEMORY[0x1B8C8A360]();

  v18 = v30[0];
  *v11 = v24;
  *(v11 + 8) = v7;
  *(v11 + 16) = v12;
  *(v11 + 17) = v23;
  *(v11 + 24) = v13;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  swift_storeEnumTagMultiPayload();
  v30[0] = v25;
  v30[1] = v18;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v19 = objc_allocWithZone(type metadata accessor for SummarizationXPCRequest(0));

  v20 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v11, v30, v28, v26);
  sub_1B5E83434(v20);
  if (v0)
  {
  }

  else
  {
    v22 = v21;
    sub_1B5E7ED90();
  }

  sub_1B5DF7180();
}

uint64_t SummarizationClient.isTextEligibleForSummarization(_:options:requestIdentifier:)()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v0;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 16) = v7;
  v8 = type metadata accessor for SummarizationXPCRequest.Request(0);
  *(v1 + 56) = v8;
  sub_1B5E01CF8(v8);
  *(v1 + 64) = sub_1B5E2D0C8();
  *(v1 + 124) = *v3;
  *(v1 + 125) = *(v3 + 1);
  *(v1 + 72) = *(v3 + 8);
  *(v1 + 120) = *(v3 + 24);
  v9 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E87B78()
{
  v1 = *(v0 + 124);
  sub_1B5E9053C();
  v24 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 125);
  v4 = *(v0 + 64);
  v23 = *(v0 + 72);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_1B5EA5BC0();

  sub_1B5E90308();
  sub_1B5E90914();
  MEMORY[0x1B8C8A360]();

  *v4 = v6;
  *(v4 + 8) = v5;
  *(v4 + 16) = v1;
  *(v4 + 17) = v3;
  *(v4 + 24) = v23;
  *(v4 + 32) = v2;
  *(v4 + 40) = v24;
  swift_storeEnumTagMultiPayload();
  sub_1B5E909F8();
  v7 = objc_allocWithZone(type metadata accessor for SummarizationXPCRequest(0));
  sub_1B5E90688();

  v16 = sub_1B5E90B18(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23);
  sub_1B5E90740(v16);
  v17 = swift_task_alloc();
  v18 = sub_1B5E90718(v17);
  *v18 = v19;
  v18[1] = sub_1B5E87D00;
  v20 = sub_1B5E9043C();

  return sub_1B5E84F28(v20);
}

uint64_t sub_1B5E87D00()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E87E04()
{
  sub_1B5E34EC0();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = sub_1B5E7ED90();

  sub_1B5E90998();
  if (v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 & 1;
  }

  return v5(v6);
}

uint64_t sub_1B5E87E9C()
{
  sub_1B5E01DFC();

  sub_1B5E90998();

  return v1(0);
}

uint64_t SummarizationClient.summarize(_:options:requestIdentifier:)()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  v9 = type metadata accessor for SummarizationXPCRequest.Request(0);
  *(v1 + 64) = v9;
  sub_1B5E01CF8(v9);
  *(v1 + 72) = sub_1B5E2D0C8();
  *(v1 + 132) = *v3;
  *(v1 + 133) = *(v3 + 1);
  *(v1 + 80) = *(v3 + 8);
  *(v1 + 128) = *(v3 + 24);
  v10 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E87FAC()
{
  v1 = *(v0 + 132);
  v2 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  HIDWORD(v21) = *(v0 + 133);
  v5 = *(v0 + 72);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_1B5EA5BC0();

  sub_1B5E90308();
  sub_1B5E90914();
  MEMORY[0x1B8C8A360]();

  *v5 = v7;
  *(v5 + 8) = v6;
  *(v5 + 16) = v1;
  *(v5 + 17) = BYTE4(v21);
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  swift_storeEnumTagMultiPayload();
  sub_1B5E909F8();
  v8 = objc_allocWithZone(type metadata accessor for SummarizationXPCRequest(0));
  sub_1B5E90688();
  swift_bridgeObjectRetain_n();

  *(v0 + 96) = sub_1B5E90B18(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  *v17 = v0;
  v17[1] = sub_1B5E88148;
  v18 = sub_1B5E9043C();

  return sub_1B5E84F28(v18);
}

uint64_t sub_1B5E88148()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8824C()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  sub_1B5E7EF40();

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E882D4()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

void SummarizationClient.partialSummaries(for:options:requestIdentifier:)()
{
  sub_1B5DFD8A8();
  v62 = v2;
  v63 = v0;
  v65 = v3;
  v5 = v4;
  v61 = v6;
  v59 = v7;
  v60 = type metadata accessor for SummarizationXPCRequest.Request(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7E8();
  v11 = v10 - v9;
  v12 = sub_1B5DF33E0(&qword_1EB90F580, &unk_1B5EB9E00);
  sub_1B5DF5DA8();
  v14 = v13;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5E08868();
  v64 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF5DA8();
  v56 = v16;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = *v5;
  v21 = v5[1];
  v22 = *(v5 + 2);
  v58 = *(v5 + 1);
  v57 = *(v5 + 6);
  sub_1B5DF33E0(&qword_1EB90F3D8, &qword_1B5EB9E10);
  (*(v14 + 104))(v1, *MEMORY[0x1E69E8790], v12);
  sub_1B5EA5970();
  (*(v14 + 8))(v1, v12);
  sub_1B5E9053C();
  v25 = v24 >> v23;
  sub_1B5E90BB8();

  sub_1B5E90308();
  *&v70[0] = v26;
  *(&v70[0] + 1) = v27;
  LOBYTE(v66[0]) = v25;
  SummarizationClient.UseCase.rawValue.getter();
  MEMORY[0x1B8C8A360]();

  v29 = *(&v70[0] + 1);
  v28 = *&v70[0];
  v30 = v61;
  *v11 = v59;
  *(v11 + 8) = v30;
  *(v11 + 16) = v20;
  *(v11 + 17) = v21;
  v31 = v58;
  *(v11 + 24) = v58;
  *(v11 + 32) = v22;
  v32 = v57;
  *(v11 + 40) = v57;
  swift_storeEnumTagMultiPayload();
  v33 = v62;
  v34 = v65;
  *&v70[0] = v62;
  *(&v70[0] + 1) = v65;
  v70[1] = __PAIR128__(v29, v28);
  v66[0] = 0;
  v66[1] = 0;
  v67 = 0;
  v68[0] = v31;
  v68[1] = v22;
  v69 = v32;
  v35 = objc_allocWithZone(type metadata accessor for SummarizationXPCRequest(0));
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v36 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v11, v70, v66, v68);
  v37 = v63;
  v38 = *(v63 + 24);
  v39 = v33;
  sub_1B5E88B70();
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v38;
  v41[3] = v39;
  v41[4] = v34;
  v41[5] = v40;

  v60 = v38;

  v61 = v19;
  sub_1B5EA5980();
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v42 = sub_1B5EA53B0();
  sub_1B5DFD794(v42, qword_1ED7D2990);
  v43 = v36;
  v44 = sub_1B5EA5380();
  v45 = sub_1B5EA5A60();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = sub_1B5E90C10();
    *&v70[0] = sub_1B5E90980();
    *v46 = 136446466;
    sub_1B5E2D094(v43 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo);

    v47 = sub_1B5E5B1CC();

    *(v46 + 4) = v47;
    *(v46 + 12) = 2082;

    v48 = sub_1B5E5B1CC();

    *(v46 + 14) = v48;
    _os_log_impl(&dword_1B5DED000, v44, v45, "SummarizationClient sending streaming request with requestIdentifier=%{public}s, useCaseIdentifier=%{public}s", v46, 0x16u);
    swift_arrayDestroy();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    v37 = v63;
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  if (*(v37 + 16))
  {

    MEMORY[0x1EEE9AC00](v49);
    *(&v56 - 2) = v43;
    *(&v56 - 1) = v37;
    sub_1B5EA4D70();

    v50 = v43;
    v51 = sub_1B5EA5380();
    v52 = sub_1B5EA5A60();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = sub_1B5E5FD88();
      v54 = sub_1B5E5FC3C();
      v68[0] = v54;
      *v53 = 136446210;
      sub_1B5E2D094(v50 + OBJC_IVAR____TtC4Sage23SummarizationXPCRequest_requestInfo);

      sub_1B5E26048();
      v55 = sub_1B5E5B1CC();

      *(v53 + 4) = v55;
      _os_log_impl(&dword_1B5DED000, v51, v52, "SummarizationClient streaming request with requestIdentifier=%{public}s was successful", v53, 0xCu);
      sub_1B5DF3FB8(v54);
      sub_1B5E260EC();
      MEMORY[0x1B8C8B330]();
      sub_1B5E260EC();
      MEMORY[0x1B8C8B330]();
    }

    else
    {
    }

    (*(v56 + 8))(v61, v64);
    sub_1B5DFD8C0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B5E88B70()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1B5E8FC2C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1B5E88BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B5E88C48();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B5E88C9C(a3, a4);
  }

  return result;
}

void sub_1B5E88C48()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1B5E8FC10(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1B5E88C9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  v8 = sub_1B5EA5920();
  sub_1B5DF3658(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_1B5E639C0(0, 0, v7, &unk_1B5EBAFB8, v9);

  if (qword_1ED7D2988 != -1)
  {
    swift_once();
  }

  v10 = sub_1B5EA53B0();
  sub_1B5DFD794(v10, qword_1ED7D2990);

  v11 = sub_1B5EA5380();
  v12 = sub_1B5EA5A60();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15[1] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v11, v12, "Summarization request with identifier %{public}s was cancelled by client.", v13, 0xCu);
    sub_1B5DF3FB8(v14);
    MEMORY[0x1B8C8B330](v14, -1, -1);
    MEMORY[0x1B8C8B330](v13, -1, -1);
  }
}

void SummarizationClient.didProduceTextAssistantPartialSummary(_:forRequestIdentifier:)()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v37 = v3;
  v4 = sub_1B5DF33E0(&qword_1EB90F588, &unk_1B5EB9E18);
  sub_1B5DF5DA8();
  v34 = v5;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFA50C();
  v33 = v7;
  v8 = sub_1B5DF33E0(&qword_1EB90F3D8, &qword_1B5EB9E10);
  v9 = sub_1B5E01CF8(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E7CB8C();
  v32[1] = v10;
  MEMORY[0x1EEE9AC00](v11);
  v38 = v32 - v12;
  v13 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  sub_1B5E01CF8(v13);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  v17 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF5DA8();
  v19 = v18;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5E5F1E8();
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v35 = v1;
  v36 = v19;
  v21 = sub_1B5EA53B0();
  sub_1B5E90818(v21, qword_1ED7D2990);

  v22 = sub_1B5EA5380();
  v23 = sub_1B5EA5A60();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = sub_1B5E90C10();
    v32[0] = v2;
    v25 = v24;
    v39 = sub_1B5E90980();
    *v25 = 136446466;
    *(v25 + 4) = sub_1B5E5B1CC();
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v22, v23, "%{public}s called for requestIdentifier: %{public}s", v25, 0x16u);
    sub_1B5E908AC();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  sub_1B5E6FB20();
  sub_1B5E89300(v26);
  v27 = sub_1B5DF46E0(v16, 1, v17);
  v28 = v38;
  if (v27 == 1)
  {
    sub_1B5DF4428(v16, &qword_1EB90ECD8, &qword_1B5EB70B0);
  }

  else
  {
    (*(v36 + 32))(v35, v16, v17);
    sub_1B5E7F020();
    sub_1B5E8E2D0();
    v29 = v33;
    sub_1B5EA5990();
    (*(v34 + 8))(v29, v4);
    sub_1B5DF4428(v28, &qword_1EB90F3D8, &qword_1B5EB9E10);
    v30 = sub_1B5E9080C();
    v31(v30);
  }

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E89300@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  sub_1B5E89CA0(v15 - v5);
  v7 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  if (sub_1B5DF46E0(v6, 1, v7) == 1)
  {
    sub_1B5DF4428(v6, &qword_1EB90ECD8, &qword_1B5EB70B0);
    if (qword_1ED7D2988 != -1)
    {
      swift_once();
    }

    v8 = sub_1B5EA53B0();
    sub_1B5DFD794(v8, qword_1ED7D2990);

    v9 = sub_1B5EA5380();
    v10 = sub_1B5EA5A40();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15[1] = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1B5E5B1CC();
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_1B5E5B1CC();
      _os_log_impl(&dword_1B5DED000, v9, v10, "%{public}s: no continuation found for: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C8B330](v12, -1, -1);
      MEMORY[0x1B8C8B330](v11, -1, -1);
    }

    v13 = 1;
  }

  else
  {
    (*(*(v7 - 8) + 32))(a3, v6, v7);
    v13 = 0;
  }

  return sub_1B5DF3658(a3, v13, 1, v7);
}

void SummarizationClient.didEncounterTextAssistantStreamingError(_:forRequestIdentifier:)()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  sub_1B5E01CF8(v5);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5E08858();
  v7 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF5DA8();
  v22 = v8;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v12 = sub_1B5EA53B0();
  sub_1B5E90818(v12, qword_1ED7D2990);

  v13 = sub_1B5EA5380();
  v14 = sub_1B5EA5A60();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_1B5E90C10();
    v21[0] = v4;
    v16 = v15;
    v17 = sub_1B5E90980();
    v21[1] = v2;
    v23 = v17;
    *v16 = 136446466;
    sub_1B5E90A20();
    *(v16 + 4) = sub_1B5E5B1CC();
    *(v16 + 12) = 2082;
    sub_1B5E5F940();
    *(v16 + 14) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v13, v14, "%{public}s called for requestIdentifier: %{public}s", v16, 0x16u);
    sub_1B5E908AC();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    v4 = v21[0];
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  else
  {

    sub_1B5E90A20();
  }

  sub_1B5E6FB20();
  sub_1B5E89300(v18);
  if (sub_1B5DF46E0(v1, 1, v7) == 1)
  {
    sub_1B5DF4428(v1, &qword_1EB90ECD8, &qword_1B5EB70B0);
  }

  else
  {
    v19 = v22;
    (*(v22 + 32))(v11, v1, v7);
    v23 = v4;
    v20 = v4;
    sub_1B5EA59A0();
    sub_1B5E6FB20();
    sub_1B5E88C48();
    (*(v19 + 8))(v11, v7);
  }

  sub_1B5DFD8C0();
}

Swift::Void __swiftcall SummarizationClient.didFinishTextAssistantStreaming(forRequestIdentifier:)(Swift::String forRequestIdentifier)
{
  sub_1B5DFD8A8();
  v3 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  sub_1B5E01CF8(v3);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E5F57C();
  v5 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF5DA8();
  v7 = v6;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E08858();
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v9 = sub_1B5EA53B0();
  sub_1B5E90818(v9, qword_1ED7D2990);

  v10 = sub_1B5EA5380();
  v11 = sub_1B5EA5A60();

  if (os_log_type_enabled(v10, v11))
  {
    v16 = v7;
    v12 = sub_1B5E90C10();
    sub_1B5E90980();
    *v12 = 136446466;
    *(v12 + 4) = sub_1B5E5B1CC();
    *(v12 + 12) = 2082;
    sub_1B5E5F940();
    *(v12 + 14) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v10, v11, "%{public}s called for requestIdentifier: %{public}s", v12, 0x16u);
    sub_1B5E908AC();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    v7 = v16;
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  sub_1B5E6FB20();
  sub_1B5E89300(v13);
  if (sub_1B5DF46E0(v1, 1, v5) == 1)
  {
    sub_1B5DF4428(v1, &qword_1EB90ECD8, &qword_1B5EB70B0);
  }

  else
  {
    v14 = sub_1B5E26048();
    v15(v14);
    sub_1B5EA59A0();
    sub_1B5E6FB20();
    sub_1B5E88C48();
    (*(v7 + 8))(v2, v5);
  }

  sub_1B5DFD8C0();
}

void sub_1B5E89CA0(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1B5E8FB4C((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t SummarizationClient.summarize(_:options:)()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  v5 = sub_1B5EA4340();
  *(v1 + 64) = v5;
  sub_1B5E01C50(v5);
  *(v1 + 72) = v6;
  *(v1 + 80) = sub_1B5E2D0C8();
  v7 = sub_1B5DF33E0(&qword_1EB90F3E8, &qword_1B5EB9E30);
  sub_1B5E01CF8(v7);
  *(v1 + 88) = sub_1B5E2D0C8();
  *(v1 + 144) = *v3;
  *(v1 + 145) = *(v3 + 1);
  *(v1 + 96) = *(v3 + 8);
  *(v1 + 44) = *(v3 + 24);
  v8 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  sub_1B5E01DFC();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = type metadata accessor for SummarizationXPCRequest.Request(0);
  v1[21] = v4;
  sub_1B5E01CF8(v4);
  v1[22] = sub_1B5E2D0C8();
  sub_1B5E909C4();
  v5 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  sub_1B5E01DFC();
  v4 = sub_1B5E90B58(v2, v3);
  v1[5] = v4;
  sub_1B5E01CF8(v4);
  v5 = sub_1B5E2D0C8();
  v6 = *v0;
  v1[6] = v5;
  v1[7] = v6;
  sub_1B5E90414();
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  sub_1B5E01DFC();
  v4 = sub_1B5E90B58(v2, v3);
  v1[5] = v4;
  sub_1B5E01CF8(v4);
  v5 = sub_1B5E2D0C8();
  v6 = *v0;
  v1[6] = v5;
  v1[7] = v6;
  sub_1B5E90414();
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  sub_1B5E2CED8();
  v3 = v2;
  v1[26] = v4;
  v1[27] = v0;
  v5 = type metadata accessor for SummarizationXPCRequest.Request(0);
  v1[28] = v5;
  sub_1B5E01CF8(v5);
  v6 = sub_1B5E2D0C8();
  v7 = *v3;
  v1[29] = v6;
  v1[30] = v7;
  sub_1B5E909C4();
  v8 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  sub_1B5E2CED8();
  v4 = sub_1B5E90B38(v3);
  v2[4] = v4;
  sub_1B5E01CF8(v4);
  v5 = sub_1B5E2D0C8();
  v6 = *v1;
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = *v0;
  sub_1B5E90414();
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  sub_1B5E2CED8();
  v4 = sub_1B5E90B38(v3);
  v2[4] = v4;
  sub_1B5E01CF8(v4);
  v5 = sub_1B5E2D0C8();
  v6 = *v1;
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = *v0;
  sub_1B5E90414();
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E89DF0()
{
  v1 = *(v0 + 44);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 145);
  v5 = *(v0 + 144);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v15 = *(v0 + 64);
  v8 = [*(v0 + 48) string];
  sub_1B5EA56A0();
  v10 = v9;

  *(v0 + 112) = v10;
  *(v0 + 16) = v5;
  *(v0 + 17) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_1B5EA4330();
  sub_1B5EA4300();
  *(v0 + 120) = v11;
  (*(v7 + 8))(v6, v15);
  v12 = swift_task_alloc();
  *(v0 + 128) = v12;
  *v12 = v0;
  v12[1] = sub_1B5E89F40;
  sub_1B5E90AA4();

  return SummarizationClient.summarize(_:options:requestIdentifier:)();
}

uint64_t sub_1B5E89F40()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 136) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E8A058()
{
  sub_1B5E34EC0();
  v1 = *(v0 + 88);
  sub_1B5E8E32C();
  v2 = *v1;

  v3 = sub_1B5E8A178(v2);
  sub_1B5DF4428(v1, &qword_1EB90F3E8, &qword_1B5EB9E30);

  sub_1B5E90998();

  return v4(v3);
}

uint64_t sub_1B5E8A114()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v0();
}

id sub_1B5E8A178(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B5E5F940();
  sub_1B5EA5670();
  sub_1B5E9070C();

  v3 = [v2 initWithString_];

  return v3;
}

uint64_t sub_1B5E8A26C()
{
  sub_1B5E60060();
  sub_1B5E9083C();
  v2 = *(v0 + 176);

  sub_1B5EA5BC0();

  sub_1B5E90308();
  sub_1B5E90914();
  MEMORY[0x1B8C8A360]();

  sub_1B5DF33E0(&qword_1EB90F208, &qword_1B5EB7840);
  sub_1B5E9048C();
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v5;
  v1[1] = v3;
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SummarizationXPCRequest(0);
  sub_1B5E9086C(v6);
  sub_1B5E063C0(v0 + 16, v0 + 80);

  sub_1B5E903D4();
  *(v0 + 184) = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v2, v7, v8, v9);
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_1B5E8A3F4;
  sub_1B5E9043C();
  sub_1B5E5F958();

  return sub_1B5E84F28(v11);
}

uint64_t sub_1B5E8A3F4()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E907CC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v4;
  *(v2 + 208) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B5E8A4F4()
{
  sub_1B5E34EC0();
  sub_1B5E7EE5C();
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B5E8A5A4()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E8A684()
{
  sub_1B5E60060();
  sub_1B5E9083C();
  sub_1B5E90A7C();
  sub_1B5E90A20();
  sub_1B5DF33E0(&qword_1EB90F1E8, &qword_1B5EB7830);
  sub_1B5E904C0();
  sub_1B5E8FD18();
  sub_1B5E90A54();
  swift_storeEnumTagMultiPayload();
  v1 = sub_1B5E90660();
  sub_1B5E9086C(v1);
  sub_1B5E90968();

  sub_1B5E903D4();
  v5 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v0, v2, v3, v4);
  sub_1B5E90740(v5);
  v6 = swift_task_alloc();
  v7 = sub_1B5E90718(v6);
  *v7 = v8;
  v7[1] = sub_1B5E8A79C;
  sub_1B5E9043C();
  sub_1B5E5F958();

  return sub_1B5E84F28(v9);
}

uint64_t sub_1B5E8A79C()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8A8A0()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  sub_1B5E7EE5C();

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8A928()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E8AA08()
{
  sub_1B5E60060();
  sub_1B5E9083C();
  sub_1B5E90A7C();
  sub_1B5E90A20();
  sub_1B5DF33E0(&qword_1EB90F1D0, &qword_1B5EB7820);
  sub_1B5E8FD18();
  sub_1B5E90A54();
  swift_storeEnumTagMultiPayload();
  v1 = sub_1B5E90660();
  sub_1B5E9086C(v1);
  sub_1B5E90968();

  sub_1B5E903D4();
  v5 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v0, v2, v3, v4);
  sub_1B5E90740(v5);
  v6 = swift_task_alloc();
  v7 = sub_1B5E90718(v6);
  *v7 = v8;
  v7[1] = sub_1B5E8AB34;
  sub_1B5E9043C();
  sub_1B5E5F958();

  return sub_1B5E84F28(v9);
}

uint64_t sub_1B5E8AB34()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8ACCC()
{
  sub_1B5E90AC0();
  sub_1B5E5FC6C();
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  sub_1B5EA5BC0();

  sub_1B5E90308();
  sub_1B5E90914();
  MEMORY[0x1B8C8A360]();

  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v3;
  v5 = *(v0 + 64);
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *v1 = v2;
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  v8 = *(v0 + 112);
  *(v1 + 56) = *(v0 + 128);
  *(v1 + 40) = v8;
  *(v1 + 24) = v7;
  *(v1 + 8) = v6;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SummarizationXPCRequest(0);
  sub_1B5E90694();
  objc_allocWithZone(v9);

  sub_1B5E0647C(v0 + 16, v0 + 144);

  v10 = sub_1B5E90428();
  *(v0 + 248) = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v10, v11, v12, v13);
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = sub_1B5E8AE6C;
  sub_1B5E9043C();
  sub_1B5E906E0();

  return sub_1B5E84F28(v15);
}

uint64_t sub_1B5E8AE6C()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E907CC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v4;
  *(v2 + 272) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B5E8AF6C()
{
  sub_1B5E34EC0();
  sub_1B5E7EE5C();
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B5E8B01C()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E8B10C()
{
  sub_1B5E5FC6C();
  sub_1B5E90A90();
  sub_1B5E90724();
  swift_storeEnumTagMultiPayload();
  v1 = sub_1B5E90660();
  sub_1B5E9086C(v1);
  sub_1B5E90968();

  sub_1B5E903D4();
  v5 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v0, v2, v3, v4);
  sub_1B5E90740(v5);
  v6 = swift_task_alloc();
  v7 = sub_1B5E90718(v6);
  *v7 = v8;
  v7[1] = sub_1B5E8B210;
  v9 = sub_1B5E9043C();

  return sub_1B5E84F28(v9);
}

uint64_t sub_1B5E8B210()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8B314()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  sub_1B5E7EE5C();

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8B39C()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E8B48C()
{
  sub_1B5E5FC6C();
  sub_1B5E90A90();
  sub_1B5E90724();
  swift_storeEnumTagMultiPayload();
  v1 = sub_1B5E90660();
  sub_1B5E9086C(v1);
  sub_1B5E90968();

  sub_1B5E903D4();
  v5 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v0, v2, v3, v4);
  sub_1B5E90740(v5);
  v6 = swift_task_alloc();
  v7 = sub_1B5E90718(v6);
  *v7 = v8;
  v7[1] = sub_1B5E8B590;
  v9 = sub_1B5E9043C();

  return sub_1B5E84F28(v9);
}

uint64_t sub_1B5E8B590()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

Sage::SummarizationClient::VisualPromptUseCase_optional __swiftcall SummarizationClient.VisualPromptUseCase.init(rawValue:)(Swift::String rawValue)
{
  sub_1B5E905D8();
  sub_1B5EA5D00();
  sub_1B5E9070C();

  if (v2 >= 3)
  {
    v4 = 4;
  }

  else
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SummarizationClient.VisualPromptUseCase.rawValue.getter()
{
  result = 0x696A6F6D6E6567;
  switch(*v0)
  {
    case 1:
      result = sub_1B5E90520();
      break;
    case 2:
      result = sub_1B5E90C28();
      break;
    case 3:
      result = sub_1B5E90898();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E8B790@<X0>(uint64_t *a1@<X8>)
{
  result = SummarizationClient.VisualPromptUseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B5E8B89C(uint64_t a1)
{
  v2 = sub_1B5E8E370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E8B8D8(uint64_t a1)
{
  v2 = sub_1B5E8E370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SummarizationClient.VisualPromptOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  v25 = v24;
  v26 = sub_1B5DF33E0(&qword_1EB90F590, &qword_1B5EB9E80);
  sub_1B5DF5DA8();
  v28 = v27;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v29);
  sub_1B5E5F57C();
  sub_1B5E0897C(v25, v25[3]);
  sub_1B5E8E370();
  sub_1B5EA6040();
  sub_1B5E065E0();
  sub_1B5EA5EA0();
  (*(v28 + 8))(v23, v26);
  sub_1B5DF7180();
}

void SummarizationClient.VisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1B5DF7168();
  v16 = v15;
  v18 = v17;
  v19 = sub_1B5DF33E0(&qword_1EB90F5A0, &qword_1B5EB9E88);
  sub_1B5DF5DA8();
  v21 = v20;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v22);
  sub_1B5E5F57C();
  sub_1B5E0897C(v16, v16[3]);
  sub_1B5E8E370();
  sub_1B5EA6030();
  if (!v13)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    (*(v21 + 8))(v14, v19);
    *v18 = a13;
  }

  sub_1B5DF3FB8(v16);
  sub_1B5DF7180();
}

uint64_t SummarizationClient.summarize(requestIdentifier:text:options:)()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  v9 = type metadata accessor for SummarizationXPCRequest.Request(0);
  *(v1 + 64) = v9;
  sub_1B5E01CF8(v9);
  *(v1 + 72) = sub_1B5E2D0C8();
  *(v1 + 112) = *v3;
  v10 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8BC34()
{
  sub_1B5E60060();
  sub_1B5E9083C();
  v1 = *(v0 + 112);
  switch(v1)
  {
    case 3:
      sub_1B5E5F958();

      result = MEMORY[0x1EEE6B1D8](v13);
      break;
    default:
      v2 = *(v0 + 72);
      v4 = *(v0 + 40);
      v3 = *(v0 + 48);
      sub_1B5E90B98();

      sub_1B5E90308();
      sub_1B5E90914();
      MEMORY[0x1B8C8A360]();

      *v2 = v4;
      *(v2 + 8) = v3;
      *(v2 + 16) = v1;
      swift_storeEnumTagMultiPayload();
      v5 = sub_1B5E90660();
      sub_1B5E9086C(v5);
      sub_1B5E90688();

      sub_1B5E903D4();
      *(v0 + 80) = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v2, v6, v7, v8);
      v9 = swift_task_alloc();
      *(v0 + 88) = v9;
      *v9 = v0;
      v9[1] = sub_1B5E8BDBC;
      sub_1B5E9043C();
      sub_1B5E5F958();

      result = sub_1B5E84F28(v10);
      break;
  }

  return result;
}

uint64_t sub_1B5E8BDBC()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8BEC0()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  sub_1B5E7EE5C();

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8BF48()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t SummarizationClient.summarize(requestIdentifier:message:options:)()
{
  sub_1B5E2CED8();
  v6 = sub_1B5E90560(v3, v4, v5);
  *(v2 + 48) = v6;
  sub_1B5E01CF8(v6);
  *(v2 + 56) = sub_1B5E2D0C8();
  v7 = v1[1];
  *(v2 + 64) = *v1;
  *(v2 + 80) = v7;
  *(v2 + 128) = *v0;
  *(v2 + 129) = v0[1];
  *(v2 + 130) = v0[2];
  v8 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  sub_1B5E01DFC();
  v5 = sub_1B5E908C8(v1, v2, v3, v4);
  *(v0 + 56) = v5;
  sub_1B5E01CF8(v5);
  v6 = sub_1B5E2D0C8();
  sub_1B5E906A0(v6);
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  sub_1B5E01DFC();
  v5 = sub_1B5E908C8(v1, v2, v3, v4);
  *(v0 + 56) = v5;
  sub_1B5E01CF8(v5);
  v6 = sub_1B5E2D0C8();
  sub_1B5E906A0(v6);
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E8C048()
{
  sub_1B5E90ADC();
  v1 = *(v0 + 128);
  switch(v1)
  {
    case 3:
      sub_1B5E90634();

      result = MEMORY[0x1EEE6B1D8](v18);
      break;
    default:
      v20 = *(v0 + 129);
      v21 = *(v0 + 130);
      v3 = *(v0 + 80);
      v2 = *(v0 + 88);
      v5 = *(v0 + 64);
      v4 = *(v0 + 72);
      v6 = *(v0 + 56);
      sub_1B5EA5BC0();

      sub_1B5E90308();
      SummarizationClient.UseCase.rawValue.getter();
      MEMORY[0x1B8C8A360]();

      *v6 = v5;
      *(v6 + 8) = v4;
      *(v6 + 16) = v3;
      *(v6 + 24) = v2;
      *(v6 + 32) = v1;
      *(v6 + 33) = v20;
      *(v6 + 34) = v21;
      swift_storeEnumTagMultiPayload();
      sub_1B5E90694();
      v7 = objc_allocWithZone(type metadata accessor for SummarizationXPCRequest(0));
      sub_1B5E90688();

      *(v0 + 96) = sub_1B5E906C0(v8, v9, v10, v11, v12, v13);
      v14 = swift_task_alloc();
      *(v0 + 104) = v14;
      *v14 = v0;
      v14[1] = sub_1B5E8C220;
      sub_1B5E9043C();
      sub_1B5E90634();

      result = sub_1B5E84F28(v15);
      break;
  }

  return result;
}

uint64_t sub_1B5E8C220()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8C324()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  sub_1B5E7EE5C();

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8C3AC()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E8C620()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8C924()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8CA28()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  sub_1B5E7EE5C();

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8CAB0()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t SummarizationClient.summarize(requestIdentifier:thread:options:)()
{
  sub_1B5E2CED8();
  v4 = sub_1B5E90560(v1, v2, v3);
  *(v0 + 48) = v4;
  sub_1B5E01CF8(v4);
  v5 = sub_1B5E2D0C8();
  sub_1B5E90A40(v5);
  v6 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  sub_1B5E2CED8();
  v4 = sub_1B5E90560(v1, v2, v3);
  *(v0 + 48) = v4;
  sub_1B5E01CF8(v4);
  v5 = sub_1B5E2D0C8();
  sub_1B5E90A40(v5);
  v6 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B5E8CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1B5E90AC0();
  a27 = v31;
  a28 = v32;
  sub_1B5E5FC6C();
  a26 = v28;
  v33 = 13;
  switch(*(v28 + 104))
  {
    case 1:
      v33 = 14;
      goto LABEL_4;
    case 2:
      v33 = 15;
      goto LABEL_4;
    case 3:
      sub_1B5E906E0();

      return MEMORY[0x1EEE6B1D8](v49);
    default:
LABEL_4:
      sub_1B5E9074C();

      sub_1B5E90308();
      a9 = v34;
      a10 = v35;
      a16 = v33;
      sub_1B5E90914();
      MEMORY[0x1B8C8A360]();

      sub_1B5E90854();
      swift_storeEnumTagMultiPayload();
      a9 = v30;
      a10 = v29;
      a11 = &a9;
      a12 = v33;
      sub_1B5E908F8();
      sub_1B5E90694();
      v37 = objc_allocWithZone(v36);
      sub_1B5E90688();

      v38 = sub_1B5E90428();
      v42 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v38, v39, v40, v41);
      sub_1B5E90848(v42);
      v43 = swift_task_alloc();
      v44 = sub_1B5E90830(v43);
      *v44 = v45;
      v44[1] = sub_1B5E8CCF4;
      sub_1B5E9043C();
      sub_1B5E906E0();

      return sub_1B5E84F28(v46);
  }
}

uint64_t sub_1B5E8CCF4()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8CDF8()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  sub_1B5E7EE5C();

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8CE80()
{
  sub_1B5E01DFC();

  sub_1B5E2CF4C();

  return v1();
}

uint64_t sub_1B5E8CF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1B5E90AC0();
  a27 = v31;
  a28 = v32;
  sub_1B5E5FC6C();
  a26 = v28;
  v33 = 13;
  switch(*(v28 + 104))
  {
    case 1:
      v33 = 14;
      goto LABEL_4;
    case 2:
      v33 = 15;
      goto LABEL_4;
    case 3:
      sub_1B5E906E0();

      return MEMORY[0x1EEE6B1D8](v49);
    default:
LABEL_4:
      sub_1B5E9074C();

      sub_1B5E90308();
      a9 = v34;
      a10 = v35;
      a16 = v33;
      sub_1B5E90914();
      MEMORY[0x1B8C8A360]();

      sub_1B5E90854();
      swift_storeEnumTagMultiPayload();
      a9 = v30;
      a10 = v29;
      a11 = &a9;
      a12 = v33;
      sub_1B5E908F8();
      sub_1B5E90694();
      v37 = objc_allocWithZone(v36);
      sub_1B5E90688();

      v38 = sub_1B5E90428();
      v42 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v38, v39, v40, v41);
      sub_1B5E90848(v42);
      v43 = swift_task_alloc();
      v44 = sub_1B5E90830(v43);
      *v44 = v45;
      v44[1] = sub_1B5E8D0C4;
      sub_1B5E9043C();
      sub_1B5E906E0();

      return sub_1B5E84F28(v46);
  }
}

uint64_t sub_1B5E8D0C4()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t SummarizationClient.testTaskCancellation(sleepDuration:)()
{
  sub_1B5E01DFC();
  v1[3] = v0;
  v1[2] = v2;
  v3 = type metadata accessor for SummarizationXPCRequest.Request(0);
  v1[4] = v3;
  sub_1B5E01CF8(v3);
  v1[5] = sub_1B5E2D0C8();
  v4 = sub_1B5EA4340();
  v1[6] = v4;
  sub_1B5E01C50(v4);
  v1[7] = v5;
  v1[8] = sub_1B5E2D0C8();
  v6 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B5E8D294()
{
  sub_1B5E5FC6C();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  sub_1B5EA4330();
  sub_1B5EA4300();
  (*(v2 + 8))(v1, v4);
  sub_1B5E9067C();
  *v3 = v5;
  swift_storeEnumTagMultiPayload();
  sub_1B5E908F8();
  sub_1B5E90694();
  v7 = objc_allocWithZone(v6);
  v8 = sub_1B5E90428();
  v12 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v8, v9, v10, v11);
  sub_1B5E90848(v12);
  v13 = swift_task_alloc();
  v14 = sub_1B5E90830(v13);
  *v14 = v15;
  v14[1] = sub_1B5E8D3C4;
  v16 = sub_1B5E9043C();

  return sub_1B5E84F28(v16);
}

uint64_t sub_1B5E8D3C4()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v6 = *v2;
  sub_1B5E2CE38();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8D4C8()
{
  sub_1B5E2CED8();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  sub_1B5E7ECC4();

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B5E8D57C, 0, 0);
}

uint64_t sub_1B5E8D57C(uint64_t a1, void (*a2)(void *a1, uint64_t a2, uint64_t a3), uint64_t a3, uint64_t a4)
{
  v5 = *(v4[3] + 16);
  v4[5] = v5;
  if (v5)
  {
    sub_1B5E2CED8();
    v6 = v4[4];
    v7 = swift_task_alloc();
    v4[6] = v7;
    *(v7 + 16) = v6;

    v8 = swift_task_alloc();
    v4[7] = v8;
    a4 = type metadata accessor for SummarizationXPCResult(0);
    *v8 = v4;
    v8[1] = sub_1B5E8D674;
    a1 = v4[2];
    a2 = sub_1B5E8FDD0;
    a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4);
}

uint64_t sub_1B5E8D674()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1B5E5F8EC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1B5E2CF4C();

    return v10();
  }
}

void sub_1B5E8D79C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = a6;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B5E2B774;
  v15[3] = a7;
  v14 = _Block_copy(v15);

  [a1 performSummarizationRequest:a4 with:v14];
  _Block_release(v14);
}

uint64_t sub_1B5E8D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E8D8A0, 0, 0);
}

void sub_1B5E8D8A0()
{
  sub_1B5E34EC0();
  if (*(v0[3] + 16))
  {
    v2 = v0[4];
    v1 = v0[5];
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    sub_1B5EA4D70();

    sub_1B5E2CF4C();

    v4();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B5E8D980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v8 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - v12;
  v14 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - v16;
  sub_1B5E4D920(a2, a3, *a1, v13);
  if (sub_1B5DF46E0(v13, 1, v14) == 1)
  {
    sub_1B5DF4428(v13, &qword_1EB90ECD8, &qword_1B5EB70B0);
  }

  else
  {
    v25[1] = a1;
    v26 = a2;
    (*(v15 + 32))(v17, v13, v14);
    if (qword_1ED7D2988 != -1)
    {
      swift_once();
    }

    v18 = sub_1B5EA53B0();
    sub_1B5DFD794(v18, qword_1ED7D2990);

    v19 = sub_1B5EA5380();
    v20 = sub_1B5EA5A40();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v4;
      v23 = v22;
      v28 = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_1B5E5B1CC();
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_1B5E5B1CC();
      _os_log_impl(&dword_1B5DED000, v19, v20, "%{public}s called with existing continuation for request identifier %{public}s. Cancelling existing stream to prevent leak.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C8B330](v23, -1, -1);
      MEMORY[0x1B8C8B330](v21, -1, -1);
    }

    sub_1B5EA58E0();
    sub_1B5E90230(&qword_1EB90F688, 255, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v24 = swift_allocError();
    sub_1B5EA55B0();
    v28 = v24;
    sub_1B5EA59A0();
    (*(v15 + 8))(v17, v14);
    a2 = v26;
  }

  (*(v15 + 16))(v11, v27, v14);
  sub_1B5DF3658(v11, 0, 1, v14);

  sub_1B5E44070(v11, a2, a3);
}

void sub_1B5E8DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  v8 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF3658(v7, 1, 1, v8);

  sub_1B5E44070(v7, a2, a3);
}

uint64_t sub_1B5E8DE3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1B5E5AE4C(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
    v11 = a4;
    v12 = 1;
  }

  return sub_1B5DF3658(v11, v12, 1, v13);
}

unint64_t sub_1B5E8DF24()
{
  result = qword_1EB90D598;
  if (!qword_1EB90D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D598);
  }

  return result;
}

unint64_t sub_1B5E8DF78()
{
  result = qword_1EB90F538;
  if (!qword_1EB90F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F538);
  }

  return result;
}

unint64_t sub_1B5E8DFCC()
{
  result = qword_1EB90D570;
  if (!qword_1EB90D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D570);
  }

  return result;
}

unint64_t sub_1B5E8E020()
{
  result = qword_1EB90F540;
  if (!qword_1EB90F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F540);
  }

  return result;
}

uint64_t sub_1B5E8E074()
{
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  v1[1] = sub_1B5E2C184;
  sub_1B5E90778();
  sub_1B5E90AA4();

  return sub_1B5E84A2C(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1B5E8E158()
{
  result = qword_1EB90D5C8[0];
  if (!qword_1EB90D5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB90D5C8);
  }

  return result;
}

unint64_t sub_1B5E8E1AC()
{
  result = qword_1EB90D5B0;
  if (!qword_1EB90D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D5B0);
  }

  return result;
}

unint64_t sub_1B5E8E200()
{
  result = qword_1EB90F578;
  if (!qword_1EB90F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F578);
  }

  return result;
}

uint64_t sub_1B5E8E2D0()
{
  sub_1B5E6FB9C();
  sub_1B5DF33E0(v2, v3);
  sub_1B5DF5EB8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

unint64_t sub_1B5E8E32C()
{
  result = qword_1EB90CD80;
  if (!qword_1EB90CD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB90CD80);
  }

  return result;
}

unint64_t sub_1B5E8E370()
{
  result = qword_1EB90F598;
  if (!qword_1EB90F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F598);
  }

  return result;
}

uint64_t sub_1B5E8E3C4(uint64_t a1, uint64_t a2)
{
  result = sub_1B5E90230(&qword_1ED7D2B78, a2, type metadata accessor for SummarizationClient, &protocol conformance descriptor for SummarizationClient);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B5E8E46C()
{
  result = qword_1EB90F5A8;
  if (!qword_1EB90F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F5A8);
  }

  return result;
}

unint64_t sub_1B5E8E4C4()
{
  result = qword_1EB90D548;
  if (!qword_1EB90D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D548);
  }

  return result;
}

unint64_t sub_1B5E8E51C()
{
  result = qword_1EB90F5B0;
  if (!qword_1EB90F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F5B0);
  }

  return result;
}

unint64_t sub_1B5E8E574()
{
  result = qword_1EB90F5B8;
  if (!qword_1EB90F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F5B8);
  }

  return result;
}

unint64_t sub_1B5E8E5CC()
{
  result = qword_1EB90F5C0[0];
  if (!qword_1EB90F5C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB90F5C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationClient.UseCase(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SummarizationClient.UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1B5E8E814(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1B5E8E828(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1B5E8E868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B5E8E8D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 28))
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

uint64_t sub_1B5E8E924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SummarizationClient.TextAssistantSummarizationOptions.Source(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1B5E8EA60()
{
  if (!qword_1ED7D2BA8[0])
  {
    v0 = sub_1B5EA5AD0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED7D2BA8);
    }
  }
}

void sub_1B5E8EAB0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B5E8EA60();
    if (v2 <= 0x3F)
    {
      sub_1B5DF47A0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B5E8EB50(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = sub_1B5EA4350();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 - 1;
  if (v7 <= v12 - 1)
  {
    v14 = v12 - 1;
  }

  else
  {
    v14 = v7;
  }

  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  if (v10)
  {
    v17 = 23;
  }

  else
  {
    v17 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v16 | 7;
  if (v14 >= a2)
  {
LABEL_35:
    if (v7 >= v13)
    {

      return sub_1B5DF46E0(a1, v7, v5);
    }

    else
    {
      v25 = &a1[v15 + 1 + v18] & ~v18;
      if (v11 > 0x7FFFFFFE)
      {
        sub_1B5E903A0();
        sub_1B5E903A0();
        sub_1B5E903A0();
        v27 = sub_1B5DF46E0((v29 + v28 + 16) & v30, v31, v32);
        LODWORD(v26) = v27 - 1;
      }

      else
      {
        v26 = *(v25 + 16);
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        v27 = v26 + 1;
      }

      if (v27 < 2)
      {
        LODWORD(v26) = 0;
      }

      if (v26 >= 2)
      {
        return (v26 - 1);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v19 = ((v15 + v18 + 1) & ~v18) + ((v17 + *(*(result - 8) + 64) + ((v16 + 136) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v19 <= 3)
    {
      v20 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      LODWORD(v21) = 4;
    }

    else
    {
      LODWORD(v21) = 2;
    }

    if (v20 < 0x100)
    {
      LODWORD(v21) = 1;
    }

    if (v20 >= 2)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = a1[v19];
        if (!a1[v19])
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      case 2:
        v22 = *&a1[v19];
        if (!*&a1[v19])
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *&a1[v19];
        if (!v22)
        {
          goto LABEL_35;
        }

LABEL_31:
        v23 = (v22 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        result = v14 + (v24 | v23) + 1;
        break;
      default:
        goto LABEL_35;
    }
  }

  return result;
}

void sub_1B5E8EDE8(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1B5EA4350();
  v11 = 0;
  sub_1B5E01C50(v10);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16 - 1;
  if (v9 <= v16 - 1)
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = v9;
  }

  v19 = *(v8 + 64);
  v20 = *(v13 + 80);
  v21 = (v19 + (v20 | 7) + 1) & ~(v20 | 7);
  v22 = (v20 + 136) & ~v20;
  v23 = *(v12 + 64);
  if (v14)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v21 + ((v22 + v24 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 < a3)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v11 = v27;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v18 < a2)
  {
    v28 = ~v18 + a2;
    bzero(a1, v21 + ((v22 + v24 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v25 <= 3)
    {
      v29 = (v28 >> 8) + 1;
    }

    else
    {
      v29 = 1;
    }

    if (v25 > 3)
    {
      *a1 = v28;
    }

    else
    {
      *a1 = v28;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v25) = v29;
        break;
      case 2:
        *(a1 + v25) = v29;
        break;
      case 3:
        goto LABEL_68;
      case 4:
        *(a1 + v25) = v29;
        break;
      default:
        return;
    }

    return;
  }

  switch(v11)
  {
    case 1:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_68:
      __break(1u);
      return;
    case 4:
      *(a1 + v25) = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 >= v17)
      {
        v33 = a1;
        v34 = a2;
        v35 = v9;
        v36 = v7;
LABEL_43:

        sub_1B5DF3658(v33, v34, v35, v36);
        return;
      }

      v30 = ((a1 + v19 + (v20 | 7) + 1) & ~(v20 | 7));
      if (v17 < a2)
      {
        v31 = ((v22 + v24 + 23) & 0xFFFFFFF8) + 9;
        v32 = a2 - v16;
        bzero(v30, v31);
        if (v31 <= 3)
        {
LABEL_64:
          *v30 = v32;
        }

        else
        {
LABEL_41:
          *v30 = v32;
        }

        return;
      }

      if (v15 <= 0x7FFFFFFE)
      {
        if (a2 > 0x7FFFFFFD)
        {
          *(v30 + 1) = 0;
          *(v30 + 2) = 0;
          *(v30 + 2) = a2 - 2147483646;
        }

        else
        {
          *(v30 + 2) = (a2 + 1);
        }

        return;
      }

      sub_1B5E903A0();
      sub_1B5E903A0();
      sub_1B5E903A0();
      v30 = ((v39 + v38 + 16) & v41);
      if (a2 < v40)
      {
        v34 = (a2 + 2);
        v33 = ((v39 + v38 + 16) & v41);
        goto LABEL_43;
      }

      if (v37 <= 3)
      {
        v42 = ~(-1 << (8 * v37));
      }

      else
      {
        v42 = -1;
      }

      if (v37)
      {
        v32 = v42 & (a2 - v40);
        if (v37 <= 3)
        {
          v43 = v37;
        }

        else
        {
          v43 = 4;
        }

        bzero(v30, v37);
        switch(v43)
        {
          case 2:
            *v30 = v32;
            break;
          case 3:
            *v30 = v32;
            v30[2] = BYTE2(v32);
            break;
          case 4:
            goto LABEL_41;
          default:
            goto LABEL_64;
        }
      }

      return;
  }
}

_BYTE *sub_1B5E8F18C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B5E8F264(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1B5E8F320(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5E8F430()
{
  result = qword_1EB90F648;
  if (!qword_1EB90F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F648);
  }

  return result;
}

unint64_t sub_1B5E8F488()
{
  result = qword_1EB90F650;
  if (!qword_1EB90F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F650);
  }

  return result;
}

unint64_t sub_1B5E8F518()
{
  result = qword_1EB90F658;
  if (!qword_1EB90F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F658);
  }

  return result;
}

unint64_t sub_1B5E8F570()
{
  result = qword_1EB90F660;
  if (!qword_1EB90F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F660);
  }

  return result;
}

unint64_t sub_1B5E8F5C8()
{
  result = qword_1EB90F668;
  if (!qword_1EB90F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F668);
  }

  return result;
}

unint64_t sub_1B5E8F690()
{
  result = qword_1EB90D5B8;
  if (!qword_1EB90D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D5B8);
  }

  return result;
}

unint64_t sub_1B5E8F6E8()
{
  result = qword_1EB90D5C0;
  if (!qword_1EB90D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D5C0);
  }

  return result;
}

unint64_t sub_1B5E8F740()
{
  result = qword_1EB90D578;
  if (!qword_1EB90D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D578);
  }

  return result;
}

unint64_t sub_1B5E8F798()
{
  result = qword_1EB90D580;
  if (!qword_1EB90D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D580);
  }

  return result;
}

unint64_t sub_1B5E8F7F0()
{
  result = qword_1EB90D560;
  if (!qword_1EB90D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D560);
  }

  return result;
}

unint64_t sub_1B5E8F848()
{
  result = qword_1EB90D568;
  if (!qword_1EB90D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D568);
  }

  return result;
}

unint64_t sub_1B5E8F8A0()
{
  result = qword_1EB90D550;
  if (!qword_1EB90D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D550);
  }

  return result;
}

unint64_t sub_1B5E8F8F8()
{
  result = qword_1EB90D558;
  if (!qword_1EB90D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D558);
  }

  return result;
}

unint64_t sub_1B5E8F950()
{
  result = qword_1EB90D588;
  if (!qword_1EB90D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D588);
  }

  return result;
}

unint64_t sub_1B5E8F9A8()
{
  result = qword_1EB90D590;
  if (!qword_1EB90D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D590);
  }

  return result;
}

unint64_t sub_1B5E8F9FC()
{
  result = qword_1EB90F670;
  if (!qword_1EB90F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F670);
  }

  return result;
}

unint64_t sub_1B5E8FA50()
{
  result = qword_1EB90D5A8;
  if (!qword_1EB90D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D5A8);
  }

  return result;
}

unint64_t sub_1B5E8FAA4()
{
  result = qword_1EB90F678;
  if (!qword_1EB90F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F678);
  }

  return result;
}

unint64_t sub_1B5E8FAF8()
{
  result = qword_1EB90F680;
  if (!qword_1EB90F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F680);
  }

  return result;
}

uint64_t sub_1B5E8FB68()
{
  sub_1B5E34EC0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1B5E2CEE4(v2);
  *v3 = v4;
  v3[1] = sub_1B5E2CDCC;
  v5 = sub_1B5E90778();

  return sub_1B5E8D87C(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_1B5E8FC4C()
{
  sub_1B5E2CED8();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = sub_1B5E2CEE4(v5);
  *v6 = v7;
  v6[1] = sub_1B5E2C184;

  return sub_1B5E8D558(v2, v4, v3);
}

uint64_t sub_1B5E8FD18()
{
  sub_1B5E6FB9C();
  v2(0);
  sub_1B5DF5EB8();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1B5E8FD74(uint64_t a1)
{
  v2 = type metadata accessor for SummarizationXPCRequest.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B5E8FE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B5E8FE68()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1B5EA4EE0();
  sub_1B5DF5DA8();
  v41 = v8;
  v42 = v9;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E7CB8C();
  v40 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v32 - v12;
  v14 = v1 + 56;
  v13 = *(v1 + 56);
  v38 = -1 << *(v1 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!v5)
  {
    v19 = 0;
LABEL_22:
    v31 = ~v38;
    *v7 = v1;
    v7[1] = v14;
    v7[2] = v31;
    v7[3] = v19;
    v7[4] = v16;
    sub_1B5DFD8C0();
    return;
  }

  v17 = v3;
  if (!v3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v33 = v7;
    v34 = v1 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = v17;
    while (v18 < v17)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            v7 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v1;
      v24 = *(v1 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v29(v39, v28, v26);
      v30 = sub_1B5E6FB20();
      (v29)(v30);
      v17 = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        v7 = v33;
        v14 = v34;
        v1 = v23;
        goto LABEL_22;
      }

      v5 += v27;
      v19 = v21;
      v1 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

void *sub_1B5E900D4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5E90230(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1B5E90340(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E90360(uint64_t a1, __n128 a2)
{

  return swift_once();
}

uint64_t sub_1B5E90380(uint64_t a1, __n128 a2)
{

  return swift_once();
}