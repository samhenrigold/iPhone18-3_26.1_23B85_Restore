unint64_t sub_1ABB3DF50()
{
  result = qword_1EB4D3088;
  if (!qword_1EB4D3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3088);
  }

  return result;
}

unint64_t sub_1ABB3DFA4()
{
  result = qword_1ED871318;
  if (!qword_1ED871318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871318);
  }

  return result;
}

uint64_t sub_1ABB3DFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1ABB3E048(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    return sub_1ABB3E058(result);
  }

  return result;
}

void *sub_1ABB3E058(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1ABB3E180()
{
  result = qword_1EB4CE768;
  if (!qword_1EB4CE768)
  {
    sub_1ABF23924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE768);
  }

  return result;
}

void *sub_1ABB3E1D8(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_1ABB3E238(void *result)
{
  if (result != 1)
  {
    return sub_1ABB3E1D8(result);
  }

  return result;
}

uint64_t sub_1ABB3E374(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1ABB3E388(result, a2, a3, a4, a5, SBYTE2(a5));
  }

  return result;
}

uint64_t sub_1ABB3E388(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      goto LABEL_6;
    case 1:
    case 2:
LABEL_6:

      break;
    case 3:
    case 4:

      break;
    default:
      return v7;
  }

  return v7;
}

unint64_t sub_1ABB3E45C()
{
  result = qword_1ED871290;
  if (!qword_1ED871290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871290);
  }

  return result;
}

unint64_t sub_1ABB3E4B0()
{
  result = qword_1EB4D30E0;
  if (!qword_1EB4D30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D30E0);
  }

  return result;
}

unint64_t sub_1ABB3E504()
{
  result = qword_1EB4D30F0;
  if (!qword_1EB4D30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D30F0);
  }

  return result;
}

uint64_t sub_1ABB3E5B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1ABAD219C(a3, a4);
  sub_1ABA7BBB0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1ABB3E614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchableViewDatabaseTable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB3E678(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1ABB3E6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3090, &qword_1ABF3AC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CandidateGenerationAlgorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1E)
  {
    if (a2 + 226 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 226) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 227;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v5 >= 0x1D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for CandidateGenerationAlgorithm(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1D)
  {
    v6 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
          *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABB3E8B0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_1ABB3E8DC(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 7 | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 6) & 7 | 0x80;
  }

  *result = v2;
  return result;
}

unint64_t sub_1ABB3E91C()
{
  result = qword_1EB4D3110;
  if (!qword_1EB4D3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3110);
  }

  return result;
}

unint64_t sub_1ABB3E970()
{
  result = qword_1ED8715A0;
  if (!qword_1ED8715A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8715A0);
  }

  return result;
}

unint64_t sub_1ABB3E9C4()
{
  result = qword_1EB4CED20;
  if (!qword_1EB4CED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED20);
  }

  return result;
}

unint64_t sub_1ABB3EA18()
{
  result = qword_1EB4D3148;
  if (!qword_1EB4D3148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3148);
  }

  return result;
}

unint64_t sub_1ABB3EA6C()
{
  result = qword_1ED8710C8;
  if (!qword_1ED8710C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8710C8);
  }

  return result;
}

unint64_t sub_1ABB3EAC0()
{
  result = qword_1ED86B440;
  if (!qword_1ED86B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B440);
  }

  return result;
}

unint64_t sub_1ABB3EB14()
{
  result = qword_1ED86CF48;
  if (!qword_1ED86CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86CF48);
  }

  return result;
}

unint64_t sub_1ABB3EB68()
{
  result = qword_1ED868CA8[0];
  if (!qword_1ED868CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED868CA8);
  }

  return result;
}

unint64_t sub_1ABB3EBBC()
{
  result = qword_1ED871310;
  if (!qword_1ED871310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveGlobalKnowledge.ExternalIdentifierType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CandidateGenerationAlgorithm.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABB3EDB4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABB3EE64()
{
  result = qword_1EB4D3180;
  if (!qword_1EB4D3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3180);
  }

  return result;
}

unint64_t sub_1ABB3EEBC()
{
  result = qword_1EB4D3188;
  if (!qword_1EB4D3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3188);
  }

  return result;
}

unint64_t sub_1ABB3EF14()
{
  result = qword_1EB4D3190;
  if (!qword_1EB4D3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3190);
  }

  return result;
}

unint64_t sub_1ABB3EF6C()
{
  result = qword_1ED871570;
  if (!qword_1ED871570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871570);
  }

  return result;
}

unint64_t sub_1ABB3EFC4()
{
  result = qword_1ED871578;
  if (!qword_1ED871578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871578);
  }

  return result;
}

unint64_t sub_1ABB3F01C()
{
  result = qword_1ED871580;
  if (!qword_1ED871580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871580);
  }

  return result;
}

unint64_t sub_1ABB3F074()
{
  result = qword_1ED871588;
  if (!qword_1ED871588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871588);
  }

  return result;
}

unint64_t sub_1ABB3F0CC()
{
  result = qword_1ED871560;
  if (!qword_1ED871560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871560);
  }

  return result;
}

unint64_t sub_1ABB3F124()
{
  result = qword_1ED871568;
  if (!qword_1ED871568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871568);
  }

  return result;
}

unint64_t sub_1ABB3F17C()
{
  result = qword_1ED871550;
  if (!qword_1ED871550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871550);
  }

  return result;
}

unint64_t sub_1ABB3F1D4()
{
  result = qword_1ED871558;
  if (!qword_1ED871558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871558);
  }

  return result;
}

unint64_t sub_1ABB3F22C()
{
  result = qword_1ED8710B8;
  if (!qword_1ED8710B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8710B8);
  }

  return result;
}

unint64_t sub_1ABB3F284()
{
  result = qword_1ED8710C0;
  if (!qword_1ED8710C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8710C0);
  }

  return result;
}

unint64_t sub_1ABB3F2DC()
{
  result = qword_1ED871590;
  if (!qword_1ED871590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871590);
  }

  return result;
}

unint64_t sub_1ABB3F334()
{
  result = qword_1ED871598;
  if (!qword_1ED871598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871598);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CharacterList(_BYTE *result, int a2, int a3)
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

uint64_t ClientProcessIdentifier.identifier.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 16) && v1 != 1)
  {
    v2 = sub_1ABB3F4F4();
  }

  else
  {
    v2 = *v0;
  }

  v3 = sub_1ABA7BE8C();
  sub_1ABB3F4DC(v3, v4, v1);
  return v2;
}

uint64_t sub_1ABB3F4DC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB3F4F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1ABB408F0(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v5 = sub_1ABF237F4();
    sub_1ABA7AA24(v5, qword_1ED871B40);

    v6 = sub_1ABF237D4();
    v7 = sub_1ABF24644();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1ABADD6D8(v3, v4, &v11);
      _os_log_impl(&dword_1ABA78000, v6, v7, "ClientProcessIdentifier: Got main bundle identifier: %s", v8, 0xCu);
      sub_1ABA84B54(v9);
      MEMORY[0x1AC5AB8B0](v9, -1, -1);
      MEMORY[0x1AC5AB8B0](v8, -1, -1);
    }

    return v3;
  }

  else
  {
    result = sub_1ABF24CD4();
    __break(1u);
  }

  return result;
}

uint64_t static ClientProcessIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_20;
    }

    v21 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1ABF25054();
      v23 = sub_1ABA7BE8C();
      v25 = sub_1ABA7EE88(v23, v24, 0);
      v27 = sub_1ABA7EE88(v25, v26, 0);
      sub_1ABB3F860(v27, v28, 0);
      v18 = sub_1ABA7BE8C();
      v20 = 0;
      goto LABEL_15;
    }

    v57 = sub_1ABA7EE88(v21, v2, 0);
    v59 = sub_1ABA7EE88(v57, v58, 0);
    sub_1ABB3F860(v59, v60, 0);
    v42 = sub_1ABA7EDF8();
    v44 = 0;
LABEL_24:
    sub_1ABB3F860(v42, v43, v44);
    return 1;
  }

  if (v4 != 1)
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_20;
    }

    v40 = sub_1ABA7EDF8();
    sub_1ABB3F860(v40, v41, 2u);
    v42 = 0;
    v43 = 0;
    v44 = 2;
    goto LABEL_24;
  }

  if (v7 != 1)
  {
LABEL_20:
    v31 = sub_1ABA7BE8C();
    v33 = sub_1ABA7EE88(v31, v32, v7);
    v35 = sub_1ABA7EE88(v33, v34, v4);
    sub_1ABB3F860(v35, v36, v4);
    v37 = sub_1ABA7BE8C();
    sub_1ABB3F860(v37, v38, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    sub_1ABA7EDF8();
    v9 = sub_1ABF25054();
    v10 = sub_1ABA7BE8C();
    sub_1ABB3F4DC(v10, v11, 1u);
    v12 = sub_1ABA7D230();
    sub_1ABB3F4DC(v12, v13, v14);
    v15 = sub_1ABA7D230();
    sub_1ABB3F860(v15, v16, v17);
    v18 = sub_1ABA7BE8C();
    v20 = 1;
LABEL_15:
    sub_1ABB3F860(v18, v19, v20);
    return v9 & 1;
  }

  v39 = 1;
  v45 = sub_1ABA7D230();
  sub_1ABB3F4DC(v45, v46, v47);
  v48 = sub_1ABA7D230();
  sub_1ABB3F4DC(v48, v49, v50);
  v51 = sub_1ABA7D230();
  sub_1ABB3F860(v51, v52, v53);
  v54 = sub_1ABA7D230();
  sub_1ABB3F860(v54, v55, v56);
  return v39;
}

uint64_t sub_1ABB3F860(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB3F878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365636F72506E69 && a2 == 0xE900000000000073;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001ABF88030 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001ABF88050 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABB3F9A4(char a1)
{
  if (!a1)
  {
    return 0x7365636F72506E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000010;
}

uint64_t sub_1ABB3FA10(uint64_t a1)
{
  v2 = sub_1ABB4003C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3FA4C(uint64_t a1)
{
  v2 = sub_1ABB4003C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3FA88(uint64_t a1)
{
  v2 = sub_1ABB3FFE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3FAC4(uint64_t a1)
{
  v2 = sub_1ABB3FFE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3FB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB3F878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB3FB30(uint64_t a1)
{
  v2 = sub_1ABB3FF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3FB6C(uint64_t a1)
{
  v2 = sub_1ABB3FF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3FBA8(uint64_t a1)
{
  v2 = sub_1ABB40090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3FBE4(uint64_t a1)
{
  v2 = sub_1ABB40090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientProcessIdentifier.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D3198, &qword_1ABF3B390);
  sub_1ABA7BB64();
  v34 = v4;
  v35 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v28 - v6;
  sub_1ABAD219C(&qword_1EB4D31A0, &qword_1ABF3B398);
  sub_1ABA7BB64();
  v31 = v8;
  v32 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAD219C(&qword_1EB4D31A8, &qword_1ABF3B3A0);
  sub_1ABA7BB64();
  v29 = v11;
  v30 = v10;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v38 = sub_1ABAD219C(&qword_1EB4D31B0, &qword_1ABF3B3A8);
  sub_1ABA7BB64();
  v16 = v15;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v20 = *v1;
  v36 = v1[1];
  v37 = v20;
  v21 = *(v1 + 16);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB3FF94();
  sub_1ABF252E4();
  if (!v21)
  {
    v40 = 1;
    sub_1ABB4003C();
    sub_1ABA7E3C0(&type metadata for ClientProcessIdentifier.ApplicationIdentifierCodingKeys, &v40);
    v24 = v32;
    sub_1ABF24F34();
    v25 = sub_1ABA8150C();
    v26(v25, v24);
    return (*(v16 + 8))(v19, v21);
  }

  if (v21 == 1)
  {
    v41 = 2;
    sub_1ABB3FFE8();
    v22 = v33;
    sub_1ABA7E3C0(&type metadata for ClientProcessIdentifier.BundleIdentifierCodingKeys, &v41);
    v23 = v35;
    sub_1ABF24F34();
    (*(v34 + 8))(v22, v23);
    return (*(v16 + 8))(v19, v21);
  }

  v39 = 0;
  sub_1ABB40090();
  sub_1ABA7E3C0(&type metadata for ClientProcessIdentifier.InProcessCodingKeys, &v39);
  (*(v29 + 8))(v14, v30);
  return (*(v16 + 8))(v19, v21);
}

unint64_t sub_1ABB3FF94()
{
  result = qword_1EB4D31B8;
  if (!qword_1EB4D31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31B8);
  }

  return result;
}

unint64_t sub_1ABB3FFE8()
{
  result = qword_1EB4D31C0;
  if (!qword_1EB4D31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31C0);
  }

  return result;
}

unint64_t sub_1ABB4003C()
{
  result = qword_1EB4D31C8;
  if (!qword_1EB4D31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31C8);
  }

  return result;
}

unint64_t sub_1ABB40090()
{
  result = qword_1EB4D31D0;
  if (!qword_1EB4D31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31D0);
  }

  return result;
}

uint64_t ClientProcessIdentifier.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      return MEMORY[0x1AC5AA8A0](0);
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1AC5AA8A0](v2);

  return sub_1ABF23D34();
}

uint64_t ClientProcessIdentifier.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1ABF25234();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1AC5AA8A0](0);
      return sub_1ABF25294();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1AC5AA8A0](v2);
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t ClientProcessIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  sub_1ABAD219C(&qword_1EB4D31D8, &qword_1ABF3B3B0);
  sub_1ABA7BB64();
  v68 = v3;
  v69 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v62 - v6;
  sub_1ABAD219C(&qword_1EB4D31E0, &qword_1ABF3B3B8);
  sub_1ABA7BB64();
  v66 = v7;
  v67 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1ABAD219C(&qword_1EB4D31E8, &qword_1ABF3B3C0);
  sub_1ABA7BB64();
  v65 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D31F0, &unk_1ABF3B3C8);
  sub_1ABA7BB64();
  v71 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB3FF94();
  v20 = v73;
  sub_1ABF252C4();
  if (v20)
  {
    goto LABEL_12;
  }

  v63 = v10;
  v64 = v14;
  v73 = a1;
  v21 = v19;
  sub_1ABF24EA4();
  result = sub_1ABAD4EA4();
  if (v24 == v25 >> 1)
  {
    goto LABEL_10;
  }

  v62 = 0;
  if (v24 < (v25 >> 1))
  {
    v26 = *(v23 + v24);
    sub_1ABAD4E90();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      if (v26)
      {
        v31 = v26 == 1;
        v32 = v62;
        if (v31)
        {
          v75 = 1;
          sub_1ABB4003C();
          sub_1ABF24D94();
          v33 = v70;
          if (v32)
          {
LABEL_17:
            sub_1ABA836AC();
            v45();
            goto LABEL_18;
          }

          v34 = v19;
          v35 = v66;
          v52 = sub_1ABF24E14();
          v54 = v53;
          swift_unknownObjectRelease();
          v55 = sub_1ABA8150C();
          v56(v55, v35);
          sub_1ABA836AC();
          v57(v34, v15);
          v58 = 0;
        }

        else
        {
          v76 = 2;
          sub_1ABB3FFE8();
          sub_1ABF24D94();
          v33 = v70;
          if (v32)
          {
            goto LABEL_17;
          }

          v48 = v19;
          v67 = v15;
          v49 = v68;
          v50 = sub_1ABF24E14();
          v51 = v71;
          v62 = 0;
          v52 = v50;
          v54 = v59;
          swift_unknownObjectRelease();
          v60 = sub_1ABA8150C();
          v61(v60, v49);
          (*(v51 + 8))(v48, v67);
          v58 = 1;
        }
      }

      else
      {
        v74 = 0;
        sub_1ABB40090();
        v41 = v64;
        v42 = v62;
        sub_1ABF24D94();
        if (v42)
        {
          sub_1ABA836AC();
          v43 = sub_1ABA7EDF8();
          v44(v43);
LABEL_18:
          swift_unknownObjectRelease();
          goto LABEL_11;
        }

        swift_unknownObjectRelease();
        (*(v65 + 8))(v41, v63);
        sub_1ABA836AC();
        v46 = sub_1ABA7EDF8();
        v47(v46);
        v52 = 0;
        v54 = 0;
        v58 = 2;
        v33 = v70;
      }

      *v33 = v52;
      *(v33 + 8) = v54;
      *(v33 + 16) = v58;
      v40 = v73;
      return sub_1ABA84B54(v40);
    }

LABEL_10:
    v36 = sub_1ABF24B44();
    swift_allocError();
    v38 = v37;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v38 = &type metadata for ClientProcessIdentifier;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA836AC();
    v39(v21, v15);
LABEL_11:
    a1 = v73;
LABEL_12:
    v40 = a1;
    return sub_1ABA84B54(v40);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB4086C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1ABF25234();
  ClientProcessIdentifier.hash(into:)(v4);
  return sub_1ABF25294();
}

uint64_t sub_1ABB408F0(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1ABF23C04();

  return v3;
}

unint64_t sub_1ABB40964()
{
  result = qword_1EB4D31F8;
  if (!qword_1EB4D31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D31F8);
  }

  return result;
}

uint64_t sub_1ABB409B8(uint64_t a1)
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

uint64_t sub_1ABB409D4(uint64_t result, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ClientProcessIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABB40AF8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABB40BA8()
{
  result = qword_1EB4D3200;
  if (!qword_1EB4D3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3200);
  }

  return result;
}

unint64_t sub_1ABB40C00()
{
  result = qword_1EB4D3208;
  if (!qword_1EB4D3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3208);
  }

  return result;
}

unint64_t sub_1ABB40C58()
{
  result = qword_1EB4D3210;
  if (!qword_1EB4D3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3210);
  }

  return result;
}

unint64_t sub_1ABB40CB0()
{
  result = qword_1EB4D3218;
  if (!qword_1EB4D3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3218);
  }

  return result;
}

unint64_t sub_1ABB40D08()
{
  result = qword_1EB4D3220;
  if (!qword_1EB4D3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3220);
  }

  return result;
}

unint64_t sub_1ABB40D60()
{
  result = qword_1EB4D3228;
  if (!qword_1EB4D3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3228);
  }

  return result;
}

unint64_t sub_1ABB40DB8()
{
  result = qword_1EB4D3230;
  if (!qword_1EB4D3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3230);
  }

  return result;
}

unint64_t sub_1ABB40E10()
{
  result = qword_1EB4D3238;
  if (!qword_1EB4D3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3238);
  }

  return result;
}

unint64_t sub_1ABB40E68()
{
  result = qword_1EB4D3240;
  if (!qword_1EB4D3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3240);
  }

  return result;
}

unint64_t sub_1ABB40EC0()
{
  result = qword_1EB4D3248;
  if (!qword_1EB4D3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3248);
  }

  return result;
}

unint64_t sub_1ABB40F18()
{
  result = qword_1EB4D3250;
  if (!qword_1EB4D3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3250);
  }

  return result;
}

uint64_t CLLocation.CodingKeys.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1ABF24D84();

  v6 = 8;
  if (v4 < 8)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t CLLocation.CodingKeys.init(stringValue:)@<X0>(_BYTE *a3@<X8>)
{
  result = CLLocation.CodingKeys.init(rawValue:)(&v5);
  *a3 = v5;
  return result;
}

unint64_t sub_1ABB41020()
{
  result = 0x656475746974616CLL;
  switch(*v0)
  {
    case 1:
      result = 0x64757469676E6F6CLL;
      break;
    case 2:
      result = 0x6564757469746C61;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6465657073;
      break;
    case 6:
      result = 0x657372756F63;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB41130@<X0>(uint64_t *a1@<X8>)
{
  result = CLLocation.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABB41164(uint64_t a1)
{
  v2 = sub_1ABB4151C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB411A0(uint64_t a1)
{
  v2 = sub_1ABB4151C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CLLocation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v27 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABAD219C(&qword_1EB4D3258, &qword_1ABF3B960);
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB4151C();
  sub_1ABF252E4();
  [v2 coordinate];
  v36[1] = 0;
  v29 = v9;
  v15 = v28;
  sub_1ABF24F54();
  if (!v15)
  {
    v28 = v8;
    [v2 coordinate];
    v18.n128_u64[0] = v17;
    v36[0] = 1;
    sub_1ABA8F010(v36, v18);
    [v2 altitude];
    v35 = 2;
    sub_1ABA8F010(&v35, v19);
    [v2 horizontalAccuracy];
    v34 = 3;
    sub_1ABA8F010(&v34, v20);
    [v2 verticalAccuracy];
    v33 = 4;
    sub_1ABA8F010(&v33, v21);
    [v2 speed];
    v32 = 5;
    sub_1ABA8F010(&v32, v22);
    [v2 course];
    v31 = 6;
    sub_1ABA8F010(&v31, v23);
    v24 = [v2 timestamp];
    v25 = v28;
    sub_1ABF21E64();

    v30 = 7;
    sub_1ABB41570();
    sub_1ABF24F84();
    (*(v27 + 8))(v25, v4);
  }

  return (*(v11 + 8))(v14, v29);
}

unint64_t sub_1ABB4151C()
{
  result = qword_1EB4D3260;
  if (!qword_1EB4D3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3260);
  }

  return result;
}

unint64_t sub_1ABB41570()
{
  result = qword_1ED86B860;
  if (!qword_1ED86B860)
  {
    sub_1ABF21EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B860);
  }

  return result;
}

id CLLocation.init(model:)(CLLocationDegrees *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = CLLocationCoordinate2DMake(*a1, a1[1]);
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];
  type metadata accessor for CodableLocation(0);
  v9 = sub_1ABF21E34();
  v10 = [v2 initWithCoordinate:v9 altitude:v3.latitude horizontalAccuracy:v3.longitude verticalAccuracy:v4 course:v5 speed:v8 timestamp:{v6, v7}];

  sub_1ABAFEF58(a1);
  return v10;
}

unint64_t sub_1ABB416C0()
{
  result = qword_1EB4D3268;
  if (!qword_1EB4D3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3268);
  }

  return result;
}

unint64_t sub_1ABB41718()
{
  result = qword_1EB4D3270;
  if (!qword_1EB4D3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3270);
  }

  return result;
}

unint64_t sub_1ABB41770()
{
  result = qword_1EB4D3278;
  if (!qword_1EB4D3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3278);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void sub_1ABB41900(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 64);
  if ((v2 - 1) >= 8)
  {
    LOBYTE(v2) = 6;
  }

  *a2 = v2;
}

uint64_t sub_1ABB4191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = *MEMORY[0x1E69E9840];
  if (((1 << *(a6 + 64)) & 0x1FA) != 0)
  {
    v8 = v6;
    v46 = MEMORY[0x1E69E7CD0];
    v9 = sub_1ABE713BC();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;

        sub_1ABB1840C(v57, v12, v13);

        v11 += 2;
        --v10;
      }

      while (v10);

      v14 = v46;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CD0];
    }

    if (*(v14 + 16))
    {
      v15 = sub_1ABE713BC();
      v16 = sub_1ABB30FDC(v15);
      v18 = v17;

      if (v18)
      {
        v19 = sub_1ABB24D04(v16, v18);
        if ((v20 & 1) == 0)
        {
          v45 = v19;
          (*(*v8 + 224))(v57);
          v36 = LOBYTE(v57[0]) << 8;
          LOBYTE(v48[0]) = 0;
          v48[1] = 0;
          LOBYTE(v49) = 0;
          v50 = v14;
          LOBYTE(v51) = 0;
          v52 = 0;
          LOBYTE(v53) = 0;
          v54 = 0;
          LOBYTE(v55) = 0;
          v56 = 0;
          v37 = v48[0];
          v38 = v49;
          v39 = v51;
          v40 = v53;
          v41 = v55;
          v57[0] = v48[0];
          v57[1] = 0;
          v57[2] = v49;
          v57[3] = v14;
          v57[4] = v51;
          v57[5] = 0;
          v57[6] = v53;
          v57[7] = 0;
          v57[8] = v55;
          v57[9] = 0;
          v57[11] = 0;
          v58 = 32;
          sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1ABF34740;
          *(v42 + 32) = v36;
          *(v42 + 40) = v45;
          *(v42 + 120) = 0;
          *(v42 + 136) = 0x80;
          sub_1ABB42048(v57, v47);
          v34 = 1;
          sub_1ABAD8FB0(1, 2, 1, v42);
          v44 = v43;
          *(v43 + 16) = 2;
          *(v43 + 144) = v37;
          *(v43 + 152) = 0;
          *(v43 + 160) = v38;
          *(v43 + 168) = v14;
          *(v43 + 176) = v39;
          *(v43 + 184) = 0;
          *(v43 + 192) = v40;
          *(v43 + 200) = 0;
          *(v43 + 208) = v41;
          *(v43 + 216) = 0;
          *(v43 + 232) = 0;
          *(v43 + 248) = 32;
          sub_1ABB420A4(v48);
          *a1 = 0;
          *(a1 + 8) = v44;
          *(a1 + 88) = 0;
          *(a1 + 104) = -96;
          return v34;
        }
      }

      if (qword_1ED86E458 != -1)
      {
        sub_1ABA8F02C(&qword_1ED86E458);
      }

      v21 = sub_1ABF237F4();
      sub_1ABA7AA24(v21, qword_1ED86E460);

      v22 = sub_1ABF237D4();
      v23 = sub_1ABF24664();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v57[0] = v25;
        *v24 = 136315138;
        sub_1ABE713BC();
        v26 = MEMORY[0x1AC5A9750]();
        v28 = v27;

        v29 = sub_1ABADD6D8(v26, v28, v57);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_1ABA78000, v22, v23, "Comparison operator expects 1 numeric 'object' arg. instead got: %s", v24, 0xCu);
        sub_1ABA84B54(v25);
        MEMORY[0x1AC5AB8B0](v25, -1, -1);
        MEMORY[0x1AC5AB8B0](v24, -1, -1);
      }
    }

    else
    {

      if (qword_1ED86E458 != -1)
      {
        sub_1ABA8F02C(&qword_1ED86E458);
      }

      v30 = sub_1ABF237F4();
      sub_1ABA7AA24(v30, qword_1ED86E460);
      v31 = sub_1ABF237D4();
      v32 = sub_1ABF24664();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1ABA78000, v31, v32, "Comparison operator must have at least 1 predicate", v33, 2u);
        MEMORY[0x1AC5AB8B0](v33, -1, -1);
      }
    }
  }

  v34 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v34;
}

uint64_t sub_1ABB41DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      memcpy(__dst, v6, 0x58uLL);
      if (__dst[7])
      {
        v9 = __dst[6];
      }

      else
      {
        v9 = 0;
      }

      if (__dst[7])
      {
        v10 = __dst[7];
      }

      else
      {
        v10 = 0xE000000000000000;
      }

      sub_1ABB242A4(__dst, v19);

      v11 = sub_1ABE713BC();
      v19[0] = v9;
      v19[1] = v10;
      MEMORY[0x1EEE9AC00](v11);
      v12 = sub_1ABB2F764();

      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD8758();
          v8 = v14;
        }

        v13 = *(v8 + 16);
        if (v13 >= *(v8 + 24) >> 1)
        {
          sub_1ABAD8758();
          v8 = v15;
        }

        *(v8 + 16) = v13 + 1;
        memcpy((v8 + 88 * v13 + 32), __dst, 0x58uLL);
        if (!v7)
        {
LABEL_18:

          v3 = a3;
          v5 = MEMORY[0x1E69E7CC0];
          break;
        }
      }

      else
      {
        sub_1ABB24250(__dst);
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      --v7;
      v6 += 88;
    }
  }

  type metadata accessor for ResultGraph();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1ABF239C4();
  *(v16 + 24) = v5;
  LOBYTE(__dst[0]) = 0;
  sub_1ABE489A8(v3, __dst);
}

uint64_t ConfidenceComputable.init(confidence:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double sub_1ABB4214C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1ABA93E20(a2, v6);
  return v5 + (*(v7 + 8))(v6, v7);
}

uint64_t static ConfidenceComputableProtocol.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABB423DC(a1, a2, a3, &unk_1F2095FE8, sub_1ABB4220C);
}

{
  return sub_1ABB42AA8(a1, a2, a3, &unk_1F2096010, sub_1ABB42290);
}

double sub_1ABB42290()
{
  sub_1ABA7EEA4();
  sub_1ABA7BE98();
  sub_1ABA8F04C();
  return v0 + v1();
}

double sub_1ABB4231C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1ABA93E20(a2, v6);
  return v5 - (*(v7 + 8))(v6, v7);
}

uint64_t static ConfidenceComputableProtocol.- infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABB423DC(a1, a2, a3, &unk_1F2096060, sub_1ABB4252C);
}

{
  return sub_1ABB42AA8(a1, a2, a3, &unk_1F2096088, sub_1ABB425B0);
}

uint64_t sub_1ABB424B8()
{
  sub_1ABA8E6C4();
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_1ABB425B0()
{
  sub_1ABA7EEA4();
  sub_1ABA7BE98();
  sub_1ABA8F04C();
  return v1() - v0;
}

double sub_1ABB4263C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1ABA93E20(a2, v6);
  return v5 * (*(v7 + 8))(v6, v7);
}

uint64_t static ConfidenceComputableProtocol.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABB42AA8(a1, a2, a3, &unk_1F20960D8, sub_1ABB42DD4);
}

{
  return sub_1ABB42B8C(a1, a2, a3, &unk_1F2096100, sub_1ABB4271C);
}

double sub_1ABB42720()
{
  sub_1ABA7EEA4();
  sub_1ABA7BE98();
  sub_1ABA8F04C();
  return v0 * v1();
}

uint64_t sub_1ABB427AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  sub_1ABA7BD7C();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v12 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  sub_1ABA93E64(a1, v21);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v12 + 32))(v18 + v17, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  result = sub_1ABA946C0(v21, v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *a6 = a5;
  a6[1] = v18;
  return result;
}

double sub_1ABB428F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v6 = a2[3];
  v7 = a2[4];
  sub_1ABA93E20(a2, v6);
  return v5 / (*(v7 + 8))(v6, v7);
}

uint64_t sub_1ABB42978()
{
  sub_1ABA8E6C4();
  v3 = *(v2 + 80);
  v4 = sub_1ABA94808();
  v5(v4);
  sub_1ABA84B54((v0 + v1));

  return MEMORY[0x1EEE6BDD0](v0, v1 + 40, v3 | 7);
}

uint64_t sub_1ABB42A0C()
{
  sub_1ABA7BD7C();
  sub_1ABA7BE98();
  return v3(v0 + v2, v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t static ConfidenceComputableProtocol./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABB42AA8(a1, a2, a3, &unk_1F2096150, sub_1ABB42DD8);
}

{
  return sub_1ABB42B8C(a1, a2, a3, &unk_1F2096178, sub_1ABB42CC4);
}

uint64_t sub_1ABB42C50()
{
  sub_1ABA8E6C4();
  v3 = *(v2 + 80);
  v4 = sub_1ABA94808();
  v5(v4);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v3 | 7);
}

double sub_1ABB42CC8()
{
  sub_1ABA7EEA4();
  sub_1ABA7BE98();
  sub_1ABA8F04C();
  return v1() / v0;
}

uint64_t sub_1ABB42D48(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1ABB42D88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1ABB42DE0()
{
  v8 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      v29 = MEMORY[0x1E69E7CC0];
      if (*(v8 + 16))
      {
        v38 = MEMORY[0x1E69E7CC0];
        sub_1ABA7D268();
        sub_1ABA7BEAC();
        do
        {
          v30 = sub_1ABA7EEBC();
          (v3)(v30);
          sub_1ABA836EC();
          sub_1ABA8E6D8();
          if (v11)
          {
            sub_1ABA7E3F4();
          }

          sub_1ABA932BC();
          if (v13)
          {
            sub_1ABA8F06C(v31);
            v29 = v38;
          }

          sub_1ABA80798();
        }

        while (!v11);
      }

      sub_1ABD23888(v29);

    case 2:
      v15 = *(v8 + 16);
      if (v15)
      {
        sub_1ABA7D268();
        sub_1ABA7BEAC();
        v16 = v15;
        do
        {
          v17 = *(v2 - 2);
          v18 = *v2;

          v17(v19);
          sub_1ABA836EC();
          sub_1ABA8E6D8();
          if (v11)
          {
            sub_1ABA7E3F4();
            if (!v11 & v13)
            {
              if (v4 <= v5)
              {
                v7 = v4;
              }

              else
              {
                v7 = v5;
              }
            }
          }

          v21 = *(v1 + 16);
          v20 = *(v1 + 24);
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            sub_1ABA8F06C(v20);
          }

          *(v1 + 16) = v22;
          *(v1 + 8 * v21 + 32) = v18 * v7;
          v2 += 4;
          --v16;
        }

        while (v16);
      }

      else
      {
        v1 = MEMORY[0x1E69E7CC0];
        v22 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v22)
        {
        }
      }

      v32 = 0.0;
      v33 = 32;
      do
      {
        v32 = v32 + *(v1 + v33);
        v33 += 8;
        --v22;
      }

      while (v22);

    case 3:
      v23 = *(v8 + 16);
      if (v23)
      {
        v37 = MEMORY[0x1E69E7CC0];
        sub_1ABADE01C(0, v23, 0);
        v24 = v37;
        v25 = v8 + 56;
        do
        {
          v26 = sub_1ABA7EEBC();
          (v3)(v26);
          sub_1ABA836EC();
          sub_1ABA8E6D8();
          if (v11)
          {
            sub_1ABA7E3F4();
            if (!v11 & v13)
            {
              if (v4 <= 1.0)
              {
                v7 = v4;
              }

              else
              {
                v7 = 1.0;
              }
            }
          }

          v3 = *(v37 + 16);
          v27 = *(v37 + 24);
          v28 = (v3 + 1);
          if (v3 >= v27 >> 1)
          {
            sub_1ABA8F06C(v27);
          }

          *(v37 + 16) = v28;
          *(v37 + 8 * v3 + 32) = v6 * v7;
          v25 += 32;
          --v23;
        }

        while (v23);
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
        v28 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v28)
        {
        }
      }

      v34 = 0.0;
      v35 = 32;
      do
      {
        v34 = v34 + *(v24 + v35) - v34 * *(v24 + v35);
        v35 += 8;
        --v28;
      }

      while (v28);

    case 4:
      return (v8)();
    default:
      v9 = MEMORY[0x1E69E7CC0];
      if (*(v8 + 16))
      {
        v36 = MEMORY[0x1E69E7CC0];
        sub_1ABA7D268();
        sub_1ABA7BEAC();
        do
        {
          v10 = sub_1ABA7EEBC();
          (v3)(v10);
          sub_1ABA836EC();
          sub_1ABA8E6D8();
          if (v11)
          {
            sub_1ABA7E3F4();
          }

          sub_1ABA932BC();
          if (v13)
          {
            sub_1ABA8F06C(v12);
            v9 = v36;
          }

          sub_1ABA80798();
        }

        while (!v11);
      }

      sub_1ABD9E114(v9);
  }
}

uint64_t sub_1ABB43134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = off_1F2096230[v5];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v5;
  *a2 = 1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
}

uint64_t ConfidenceLinkDependency.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

unint64_t sub_1ABB43248()
{
  result = qword_1EB4D3280;
  if (!qword_1EB4D3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3280);
  }

  return result;
}

uint64_t sub_1ABB432A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_1ABB432E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

_BYTE *storeEnumTagSinglePayload for ConfidenceLinkDependency(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABB43418(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:

      break;
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB43464()
{
  sub_1ABB43418(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

void *sub_1ABB43540@<X0>(char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v10 = *(v4 + 1);
  v9 = *(v4 + 2);

  result = ValueConfidenceMaps.init(_:)(v11).maps._rawValue;
  if (!v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v15;
    *(v14 + 24) = 0;
    *(v14 + 32) = a2;
    *(v14 + 40) = v8;
    *(v14 + 48) = v10;
    *(v14 + 56) = v9;
    *(a4 + 8) = a3;
    *(a4 + 16) = v14;
    *a4 = 1;
  }

  return result;
}

uint64_t ConfidenceNode.customMap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v9 = *(v3 + 1);
  v8 = *(v3 + 2);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = 2;
  *(v10 + 40) = v7;
  *(v10 + 48) = v9;
  *(v10 + 56) = v8;
  *(a3 + 8) = sub_1ABB444E0;
  *(a3 + 16) = v10;
  *a3 = 1;
}

IntelligencePlatform::ValueConfidenceMaps __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ValueConfidenceMaps.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = *(a1._rawValue + 2);
  if (v4 < 2)
  {

    sub_1ABB43A34();
    swift_allocError();
    *v10 = 0xD000000000000035;
    v10[1] = 0x80000001ABF88160;
    return swift_willThrow();
  }

  else
  {
    v5 = v4 + 1;
    for (i = 40; --v5; i += 16)
    {
      v7 = *(a1._rawValue + i);
      if (v7 < 0.0 || v7 > 1.0)
      {

        sub_1ABB43A34();
        swift_allocError();
        *v9 = 0;
        v9[1] = 0;
        return swift_willThrow();
      }
    }

    rawValue = a1._rawValue;

    sub_1ABB43A88(&rawValue);
    if (v2)
    {

      __break(1u);
    }

    else
    {

      *v3 = rawValue;
    }
  }

  return result;
}

uint64_t sub_1ABB437A8(double a1)
{
  v2 = (*v1 + 32);
  v3 = -1;
  v4 = *(*v1 + 16);
  do
  {
    if (!v4)
    {
      return *(*v1 + 16) - 2;
    }

    v5 = *v2;
    v2 += 2;
    ++v3;
    --v4;
  }

  while (v5 <= a1);
  if (v3)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1ABB437E8(__n128 a1)
{
  v2 = a1.n128_f64[0];
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      (v3)(a1);
      return;
    }

    v4 = sub_1ABB437A8(a1.n128_f64[0]);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = *(v3 + 16);
      if (v4 < v5)
      {
        if (v4 + 1 < v5)
        {
          v6 = (v3 + 32 + 16 * v4);
          v7 = (v3 + 32 + 16 * (v4 + 1));
          v8 = (*v6 + *v7) * -0.5;
          v9 = (*v6 - *v7) * 0.5;
          v10 = log(1.00001 / ((v6[1] + v7[1]) * 0.5 + 0.5 + 0.000005) + -1.0);
          exp((v2 + v8) / (v9 / v10));
          return;
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1ABB437A8(a1.n128_f64[0]);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v12 = *(v3 + 16);
  if (v11 >= v12)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 + 1 >= v12)
  {
LABEL_17:
    __break(1u);
  }
}

Swift::Double __swiftcall Double.clampToValidConfidence()()
{
  if (result <= 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1ABB439B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB439DC()
{
  sub_1ABB439B0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1ABB43A34()
{
  result = qword_1EB4D3288;
  if (!qword_1EB4D3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3288);
  }

  return result;
}

uint64_t sub_1ABB43A88(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A284();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABB43BE8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABB43AF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB43B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

void *sub_1ABB43B98(void *result, int a2)
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

uint64_t sub_1ABB43BE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D3290, &unk_1ABF3BEC0);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABB43D5C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1ABB43CEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABB43CEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABB43D5C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v79 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v10 < v15) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >= *v31)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v8 = v77;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v78;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_56:
            if (v44)
            {
              goto LABEL_96;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_99;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_104;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v35 < 2)
          {
            goto LABEL_98;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_71:
          if (v59)
          {
            goto LABEL_101;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_103;
          }

          if (v66 < v58)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v38 - 1 >= v35)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_1ABB4435C((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v82);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v73 < v71)
          {
            goto LABEL_91;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_92;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_93;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_85;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_94;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_95;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_97;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_100;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_105;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v81;
      a4 = v79;
      if (v81 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1ABB44230(&v84, *a1, a3);
LABEL_89:
}

uint64_t sub_1ABB44230(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABB4435C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABB4435C(char *a1, double *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1ABAC9278(a1, (a2 - a1) / 16, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 2;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 2;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1ABAC9278(a2, (a3 - a2) / 16, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  v14 = v6 - 2;
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 2 == v6;
      v6 -= 2;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

void *sub_1ABB444E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a8;
  v9 = v8;
  v70 = a2;
  v71 = a4;
  v69 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v64 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v57 = a5;
  v58 = &v52 - v16;
  v55 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7AC18();
  v67 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v52 - v21;
  sub_1ABF247E4();
  sub_1ABA7BB64();
  v53 = v23;
  v54 = v22;
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7AC18();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7AC18();
  v66 = v31 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v63 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v62 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a6;
  v72 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v59 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v52 - v38;
  v40 = sub_1ABF23F14();
  v73 = sub_1ABF24C04();
  v68 = sub_1ABF24C14();
  sub_1ABF24BB4();
  (*(v63 + 16))(v62, v60, a3);
  v71 = v39;
  v63 = a3;
  result = sub_1ABF23F04();
  if (v40 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v40)
  {
    v42 = (v64 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1ABF24864();
      result = sub_1ABA7E1E0(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v69(v29, v65);
      if (v9)
      {
        v50 = sub_1ABA7D288();
        v51(v50);

        (*(v55 + 32))(v56, v65, v57);
        return (*v42)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v29, AssociatedTypeWitness);
      sub_1ABF24BF4();
      if (!--v40)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = (v64 + 32);
  v44 = (v64 + 8);
  v45 = v58;
  while (1)
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v26, 1, AssociatedTypeWitness) == 1)
    {
      v46 = sub_1ABA7D288();
      v47(v46);
      (*(v53 + 8))(v26, v54);
      return v73;
    }

    (*v43)(v45, v26, AssociatedTypeWitness);
    v69(v45, v67);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v44)(v45, AssociatedTypeWitness);
    sub_1ABF24BF4();
  }

  (*v44)(v45, AssociatedTypeWitness);
  v48 = sub_1ABA7D288();
  v49(v48);

  return (*(v55 + 32))(v56, v67, v57);
}

double ConfidenceLink.confidence.getter()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = (*(v0 + 1))();
  v4 = v3;
  if (v1 == 1)
  {
    v4 = 0.0;
    if (v3 > 0.0)
    {
      v4 = 1.0;
      if (v3 <= 1.0)
      {
        v4 = v3;
      }
    }
  }

  return v2 * v4;
}

uint64_t ConfidenceNode.init(dependency:shouldClampToValidConfidence:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v7;
  *a3 = a2;
  *(a3 + 8) = sub_1ABB43458;
  *(a3 + 16) = result;
  return result;
}

uint64_t ConfidenceNode.apply(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v8 = *(v2 + 1);
  v7 = *(v2 + 2);
  v9 = *(a1 + 16);
  sub_1ABA807B4();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v9;
  *(v10 + 40) = v6;
  *(v10 + 48) = v8;
  *(v10 + 56) = v7;
  *(a2 + 8) = sub_1ABB43A20;
  *(a2 + 16) = v10;
  *a2 = 1;
  sub_1ABB44E4C(v4, v5, v9);
}

double ConfidenceNode.confidence.getter()
{
  v1 = *v0;
  v0[1]();
  if (v1 == 1)
  {
    if (result <= 0.0)
    {
      result = 0.0;
    }

    if (result > 1.0)
    {
      return 1.0;
    }
  }

  return result;
}

uint64_t ConfidenceLink.node(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = *(v1 + 3);
  sub_1ABAD219C(&qword_1EB4D3298, &qword_1ABF3BED0);
  sub_1ABA807B4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1ABF34740;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;
  *(v7 + 48) = v4;
  *(v7 + 56) = v6;

  sub_1ABB43134(v7, a1);
}

uint64_t ConfidenceNode.init(computing:shouldClampToValidConfidence:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *a4 = a3;
  return result;
}

uint64_t ConfidenceNode.init(value:shouldClampToValidConfidence:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  return result;
}

uint64_t sub_1ABB44E4C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t ConfidenceNode.link(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
}

uint64_t ConfidenceNode.normalize(by:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *v2;
  v9 = *(v2 + 1);
  v8 = *(v2 + 2);
  sub_1ABA807B4();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  *(v10 + 40) = v4;
  *(v10 + 48) = v6;
  *(v10 + 56) = v5;
  *(a2 + 8) = sub_1ABB45040;
  *(a2 + 16) = v10;
  *a2 = 1;
}

void sub_1ABB44F2C(char a1, double (*a2)(void), uint64_t a3, char a4, double (*a5)(void))
{
  a2();
  if (a1)
  {
    a2();
    a2();
  }

  else
  {
    a2();
    a2();
  }

  if (a4)
  {
    a5();
  }

  else
  {
    a5();
  }
}

void *Sequence<>.link(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1ABF24AD4();
  sub_1ABA7BB64();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17[-v11];
  MEMORY[0x1AC5A95D0](a1, a2, v10);
  v18 = a3;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1ABB444E4(sub_1ABB451CC, v17, v6, &type metadata for ConfidenceLink, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);
  (*(v8 + 8))(v12, v6);
  return v15;
}

uint64_t sub_1ABB451A0@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = a3;
}

void *Sequence<>.normalize()(uint64_t a1, uint64_t a2)
{
  v6[4] = 0;
  sub_1ABF23FB4();
  v6[2] = v6[5];
  return sub_1ABB444E4(sub_1ABB453BC, v6, a1, &type metadata for ConfidenceNode, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v4);
}

double sub_1ABB4529C@<D0>(double *a1@<X0>, double (**a2)(void)@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1]();
  v7 = v6;
  if (v5 == 1)
  {
    v7 = 0.0;
    if (v6 > 0.0)
    {
      v7 = 1.0;
      if (v6 <= 1.0)
      {
        v7 = v6;
      }
    }
  }

  result = v4 + v7;
  *a3 = v4 + v7;
  return result;
}

uint64_t sub_1ABB45314@<X0>(double (**a1)(void)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = a1[1]();
  if (v5 == 1)
  {
    v7 = 0.0;
    if (v6 > 0.0)
    {
      v7 = v6;
    }

    v6 = 1.0;
    if (v7 <= 1.0)
    {
      v6 = v7;
    }
  }

  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = a3;
  *(a2 + 8) = sub_1ABB45478;
  *(a2 + 16) = result;
  *a2 = 1;
  return result;
}

uint64_t sub_1ABB453D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1ABB45418(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1ABB45508(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1ABAA10A0();
  v5(v4);
  sub_1ABA82748();
  v6 = v2();
  sub_1ABAB4C48(v8);
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1ABB45668(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1ABAA10A0();
  v5(v4);
  sub_1ABA82748();
  v6 = v2();
  sub_1ABAB4C48(v8);
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1ABB456EC(uint64_t a1, uint64_t a2)
{
  sub_1ABB4DFB0(sub_1ABAAA4F4);
  v5 = *(*v2 + 16);
  result = sub_1ABB4E3B4(v5, sub_1ABAAA4F4);
  v7 = *v2;
  *(v7 + 16) = v5 + 1;
  v8 = v7 + 16 * v5;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *v2 = v7;
  return result;
}

void sub_1ABB4576C(char a1)
{
  sub_1ABB4DFB0(sub_1ABAD8AA4);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABA97490();
  *(v4 + v2 + 32) = a1;
  *v1 = v4;
}

uint64_t sub_1ABB457D4(uint64_t a1)
{
  sub_1ABB4DFB0(sub_1ABAD96B8);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABAA280C();
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  result = (*(v5 + 32))(v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2, a1);
  *v1 = v3;
  return result;
}

__n128 sub_1ABB458D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a3)(BOOL))
{
  sub_1ABB4DFB0(a2);
  v6 = *(*v3 + 16);
  sub_1ABB4E3B4(v6, a3);
  v7 = *v3;
  *(v7 + 16) = v6 + 1;
  v8 = v7 + (v6 << 6);
  v9 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a1 + 32);
  result = *(a1 + 41);
  *(v8 + 73) = result;
  *v3 = v7;
  return result;
}

__n128 sub_1ABB45974(uint64_t a1)
{
  sub_1ABB4DFB0(sub_1ABAD95D8);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABA97490();
  v5 = v4 + 40 * v2;
  result = *a1;
  v7 = *(a1 + 16);
  *(v5 + 32) = *a1;
  *(v5 + 48) = v7;
  *(v5 + 64) = *(a1 + 32);
  *v1 = v4;
  return result;
}

__n128 sub_1ABB459EC(uint64_t a1)
{
  sub_1ABB4DFB0(sub_1ABAD9508);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABA97490();
  v5 = v4 + 56 * v2;
  v6 = *(a1 + 16);
  *(v5 + 32) = *a1;
  *(v5 + 48) = v6;
  result = *(a1 + 32);
  *(v5 + 64) = result;
  *(v5 + 80) = *(a1 + 48);
  *v1 = v4;
  return result;
}

void *sub_1ABB45A6C(const void *a1)
{
  sub_1ABB4DFB0(sub_1ABAD9440);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABAA280C();
  result = memcpy((v3 + 88 * v2 + 32), a1, 0x58uLL);
  *v1 = v3;
  return result;
}

void *sub_1ABB45AE4(const void *a1)
{
  sub_1ABB4DFB0(sub_1ABAD9378);
  sub_1ABAA3BEC();
  sub_1ABAB5C5C();
  sub_1ABAA280C();
  result = memcpy((v3 + 112 * v2 + 32), a1, 0x70uLL);
  *v1 = v3;
  return result;
}

void sub_1ABB45B5C(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  v31 = *(a1 + 16);
  v30 = a1 + 32;
  v32 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v3 = v2;
LABEL_3:
    if (v3 == v31)
    {
      break;
    }

    if (v3 >= v31)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_35;
    }

    v4 = (v30 + 56 * v3);
    v5 = *v4;
    v6 = v4[1];
    v8 = v4[2];
    v7 = v4[3];
    v33 = *(v4 + 32);
    v10 = v4[5];
    v9 = v4[6];
    v38 = 0;
    v39 = 0xE000000000000000;
    v34 = v5;
    if (v6)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v40 = v10;

    v37 = v9;

    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC5A9410](v11, v12);

    MEMORY[0x1AC5A9410](95, 0xE100000000000000);
    v13 = v8;
    if (v7)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    if (v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    MEMORY[0x1AC5A9410](v14, v15);

    v16 = v38;
    v17 = v39;
    v18 = *a2;
    if (*(*a2 + 16))
    {
      v36 = v2;
      sub_1ABF25234();

      sub_1ABF23D34();
      v19 = sub_1ABF25294();
      v20 = ~(-1 << *(v18 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v18 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(v18 + 48) + 16 * v21);
        if (*v22 != v16 || v22[1] != v17)
        {
          v24 = sub_1ABF25054();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        v3 = v36;
        goto LABEL_3;
      }

      v2 = v36;
    }

    sub_1ABB1840C(&v38, v16, v17);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABAD9928();
      v32 = v28;
    }

    v25 = v40;
    v26 = *(v32 + 16);
    if (v26 >= *(v32 + 24) >> 1)
    {
      sub_1ABAD9928();
      v32 = v29;
    }

    *(v32 + 16) = v26 + 1;
    v27 = v32 + 56 * v26;
    *(v27 + 32) = v34;
    *(v27 + 40) = v6;
    *(v27 + 48) = v13;
    *(v27 + 56) = v7;
    *(v27 + 64) = v33;
    *(v27 + 72) = v25;
    *(v27 + 80) = v37;
  }
}

void sub_1ABB45E44(uint64_t (*result)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v21 = *(a3 + 16);
  v7 = (a3 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v21 == v6)
    {
      goto LABEL_15;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    v22[0] = v9;
    v22[1] = v10;

    v11 = v5(v22);
    if (v3)
    {

LABEL_15:

      return;
    }

    if (v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1ABA83F84();
        sub_1ABADDBD4(v13, v14, v15);
        v8 = v23;
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1ABADDBD4(v16 > 1, v17 + 1, 1);
        v8 = v23;
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 16 * v17;
      *(v18 + 32) = v9;
      *(v18 + 40) = v10;
      v4 = a3;
      v5 = result;
    }

    else
    {
    }

    v7 += 2;
    ++v6;
  }

  __break(1u);
}

IntelligencePlatform::ContactFinder __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactFinder.init()()
{
  v2 = v1;
  v265 = v0;
  v291 = *MEMORY[0x1E69E9840];
  sub_1ABF21CF4();
  sub_1ABA7BB64();
  v277 = v3;
  v278 = v4;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v264 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v266 = &v246 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v246 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v276 = &v246 - v13;
  if (qword_1ED871EA0 != -1)
  {
LABEL_129:
    swift_once();
  }

  v14 = qword_1ED871EA8;
  v15 = sub_1ABF23BD4();
  v16 = sub_1ABB4EB08(v15, 1852797802, 0xE400000000000000, v14);

  if (!v16)
  {
    sub_1ABB32C5C();
    swift_allocError();
    *v20 = 0xD000000000000034;
    *(v20 + 8) = 0x80000001ABF881D0;
    *(v20 + 16) = 4;
    v21 = swift_willThrow();
    goto LABEL_139;
  }

  sub_1ABF21CA4();

  (*(v278 + 32))(v276, v11, v277);
  v267 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v17 = objc_autoreleasePoolPush();
  v18 = sub_1ABF21D34();
  if (v2)
  {
    v270 = v2;
    objc_autoreleasePoolPop(v17);
    goto LABEL_7;
  }

  v25 = v18;
  v26 = v19;
  sub_1ABF217F4();
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABB4EB7C();
  sub_1ABF217D4();
  v270 = 0;
  sub_1ABA96210(v25, v26);

  v275 = v286;
  v283 = v287;
  v284 = aBlock;
  v254 = v288;
  v257 = v289;
  objc_autoreleasePoolPop(v17);
  v31 = [objc_opt_self() predicateForMeContact];
  v248 = sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1ABF3BF70;
  v33 = *MEMORY[0x1E695C258];
  v34 = *MEMORY[0x1E695C240];
  *(v32 + 32) = *MEMORY[0x1E695C258];
  *(v32 + 40) = v34;
  v35 = *MEMORY[0x1E695C3A8];
  v36 = *MEMORY[0x1E695C2F0];
  *(v32 + 48) = *MEMORY[0x1E695C3A8];
  *(v32 + 56) = v36;
  v37 = *MEMORY[0x1E695C230];
  v38 = *MEMORY[0x1E695C390];
  *(v32 + 64) = *MEMORY[0x1E695C230];
  *(v32 + 72) = v38;
  v39 = *MEMORY[0x1E695C310];
  *(v32 + 80) = *MEMORY[0x1E695C310];
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v44 = v37;
  v45 = v38;
  v46 = v39;
  sub_1ABAD219C(&qword_1EB4D3320, &qword_1ABF3BFF0);
  v252 = v32;
  v47 = sub_1ABF240C4();
  aBlock = 0;
  v253 = v31;
  v48 = [v267 unifiedContactsMatchingPredicate:v31 keysToFetch:v47 error:&aBlock];

  v49 = aBlock;
  if (v48)
  {
    sub_1ABAFF390(0, &unk_1EB4D3340, 0x1E695CD58);
    v11 = sub_1ABF240D4();
    v50 = v49;
  }

  else
  {
    v51 = aBlock;
    v52 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v53 = sub_1ABF237F4();
    sub_1ABA7AA24(v53, qword_1ED871B20);
    v48 = sub_1ABF237D4();
    v54 = sub_1ABF24664();
    if (os_log_type_enabled(v48, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1ABA78000, v48, v54, "Error querying me contact", v55, 2u);
      sub_1ABA7BC34();
    }

    v270 = 0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (!sub_1ABAAB7F4(v11))
  {

    sub_1ABA95454();
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v86 = sub_1ABF237F4();
    sub_1ABA7AA24(v86, qword_1ED871B20);
    v87 = sub_1ABF237D4();
    v88 = sub_1ABF24664();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_1ABA78000, v87, v88, "No me contact found", v89, 2u);
      sub_1ABA7BC34();
    }

    sub_1ABB32C5C();
    v90 = swift_allocError();
    *v91 = 0xD000000000000034;
    *(v91 + 8) = 0x80000001ABF881D0;
    *(v91 + 16) = 4;
    v270 = v90;
    swift_willThrow();

    sub_1ABAA1E8C();
    sub_1ABA97750();

LABEL_7:
    v27 = sub_1ABAA2504();
    v28(v27);
    sub_1ABA8A034();

LABEL_8:
    v30 = 0;
LABEL_9:
    v21 = sub_1ABAC9398(v30, 0);
    goto LABEL_139;
  }

  sub_1ABAAB7C0(0, (v11 & 0xC000000000000001) == 0, v11);
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_135;
  }

  for (i = *(v11 + 32); ; i = MEMORY[0x1AC5AA170](0, v11))
  {
    v57 = i;

    v58 = [v57 contactRelations];
    sub_1ABAD219C(&qword_1EB4D3328, &unk_1ABF3BFF8);
    sub_1ABA7D000();
    v59 = sub_1ABF240D4();

    v60 = static ContactFinder.expand(relationships:)(v59);

    v255 = v57;
    v61 = [v57 contactRelations];
    v62 = sub_1ABF240D4();

    aBlock = v62;

    v249 = v60;
    sub_1ABD7E1A0(v63);
    v64 = aBlock;
    v274 = sub_1ABAAB7F4(aBlock);
    v11 = 0;
    v272 = v64 & 0xC000000000000001;
    v271 = v64 & 0xFFFFFFFFFFFFFF8;
    v273 = v64;
    v247 = v64 + 32;
    v2 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v65 = v257;
    while (1)
    {
      v66 = v275;
      if (v274 == v11)
      {
        break;
      }

      if (v272)
      {
        v67 = MEMORY[0x1AC5AA170](v11, v273);
      }

      else
      {
        if (v11 >= *(v271 + 16))
        {
          goto LABEL_127;
        }

        v67 = *(v273 + 8 * v11 + 32);
      }

      v68 = v67;
      v69 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v70 = [v67 label];
      if (v70)
      {
        v71 = v70;
        v72 = sub_1ABF23C04();
        v74 = v73;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v2 = v78;
        }

        v76 = *(v2 + 16);
        v75 = *(v2 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_1ABA7BBEC(v75);
          sub_1ABAAA4F4();
          v2 = v79;
        }

        *(v2 + 16) = v76 + 1;
        v77 = v2 + 16 * v76;
        *(v77 + 32) = v72;
        *(v77 + 40) = v74;
        v11 = v69;
        goto LABEL_21;
      }

      ++v11;
    }

    v80 = sub_1ABE8AE5C(v2);
    aBlock = v284;
    v286 = v66;
    v287 = v283;
    v288 = v254;
    v289 = v65;
    v81 = v270;
    v82 = sub_1ABB4B8C8(&aBlock, v80);
    v270 = v81;
    if (v81)
    {
      v83 = sub_1ABAA2504();
      v84(v83);
      sub_1ABA8A034();

      sub_1ABAA1B9C();
      sub_1ABA95454();
      sub_1ABAA1E8C();
      sub_1ABA97EFC();

      goto LABEL_8;
    }

    v258 = v82;
    v246 = v80;
    v92 = MEMORY[0x1E69E7CC8];
    if (v274)
    {
      v93 = 0;
      v94 = 0;
      while (1)
      {
        if (v272)
        {
          v95 = MEMORY[0x1AC5AA170](v94, v273);
        }

        else
        {
          if (v94 >= *(v271 + 16))
          {
            __break(1u);
LABEL_137:
            sub_1ABA7BE6C(&qword_1ED871B18);
LABEL_115:
            v230 = sub_1ABF237F4();
            sub_1ABA7AA24(v230, qword_1ED871B20);
            v231 = v66;
            v232 = sub_1ABF237D4();
            v233 = sub_1ABF24644();

            if (os_log_type_enabled(v232, v233))
            {
              v234 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              *v234 = 138412290;
              v236 = v66;
              v237 = _swift_stdlib_bridgeErrorToNSError();
              *(v234 + 4) = v237;
              *v235 = v237;
              _os_log_impl(&dword_1ABA78000, v232, v233, "ContactFinder couldn't open Photo Library due to %@", v234, 0xCu);
              sub_1ABB24B18(v235);
              sub_1ABA7BC34();
              sub_1ABA7BC34();
            }

            sub_1ABAA1E8C();
            sub_1ABA97EFC();

            sub_1ABA97750();
            sub_1ABA90C7C();

            v238 = sub_1ABA95744();
            (v94)(v238);
            (v94)(v276, v66);
            v270 = 0;
LABEL_123:
            v228 = MEMORY[0x1E69E7CC8];
            v227 = MEMORY[0x1E69E7CC8];
            goto LABEL_124;
          }

          v95 = *(v247 + 8 * v94);
        }

        v11 = v95;
        v250 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_133;
        }

        v256 = [v95 value];
        v96 = [v11 label];
        v251 = v11;
        if (v96)
        {
          v97 = v96;
          v262 = sub_1ABF23C04();
          v263 = v98;
        }

        else
        {
          v262 = 0;
          v263 = 0;
        }

        v99 = [v256 name];
        v100 = sub_1ABF23C04();
        v102 = v101;

        v103 = v270;
        v104 = sub_1ABB4C700(v100, v102, v267);
        v270 = v103;
        if (v103)
        {

          sub_1ABAA1E8C();
          sub_1ABA97EFC();

          sub_1ABAA1B9C();
          sub_1ABA95454();

          sub_1ABA97750();
          sub_1ABA90C7C();
          v202 = sub_1ABAA2504();
          v203(v202);
          swift_bridgeObjectRelease_n();

          sub_1ABA8A034();

          v30 = v93;
          goto LABEL_9;
        }

        v66 = v104;

        v11 = v258;
        if (v66 >> 62)
        {
          v105 = sub_1ABF24CA4();
        }

        else
        {
          v105 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v263;
        if (v105)
        {
          v106 = 0;
          v269 = v66 & 0xC000000000000001;
          v260 = v66 & 0xFFFFFFFFFFFFFF8;
          v259 = v66 + 32;
          v268 = v105;
          v261 = v66;
          do
          {
            if (v269)
            {
              v107 = v106;
              v108 = MEMORY[0x1AC5AA170](v106, v66);
            }

            else
            {
              if (v106 >= *(v260 + 16))
              {
                __break(1u);
                goto LABEL_131;
              }

              v107 = v106;
              v108 = *(v259 + 8 * v106);
            }

            v282 = v108;
            v109 = __OFADD__(v107, 1);
            v110 = v107 + 1;
            if (v109)
            {
              goto LABEL_128;
            }

            v279 = v110;
            if (v2 && *(v11 + 16))
            {

              v117 = sub_1ABA94FC8(v262, v2, v111, v112, v113, v114, v115, v116, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
              v119 = v118;

              if (v119)
              {
                v281 = *(*(*(v11 + 56) + 8 * v117) + 16);
                if (v281)
                {

                  v2 = 0;
                  v121 = (v120 + 40);
                  v280 = v120;
                  while (1)
                  {
                    if (v2 >= *(v120 + 16))
                    {
                      __break(1u);
LABEL_109:
                      __break(1u);
                      goto LABEL_110;
                    }

                    v122 = *(v121 - 1);
                    v123 = *v121;

                    v11 = [v282 identifier];
                    v124 = sub_1ABF23C04();
                    v283 = v125;
                    v284 = v124;

                    sub_1ABAC9398(v93, 0);
                    swift_isUniquelyReferenced_nonNull_native();
                    v126 = sub_1ABAA1720();
                    sub_1ABA94FC8(v126, v123, v127, v128, v129, v130, v131, v132, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
                    sub_1ABAB5450();
                    if (v109)
                    {
                      goto LABEL_109;
                    }

                    v93 = v133;
                    v39 = v134;
                    v135 = sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
                    v136 = sub_1ABAB5278(v135);
                    v92 = aBlock;
                    if (v136)
                    {
                      v11 = aBlock;
                      v143 = sub_1ABA94FC8(v122, v123, v137, v138, v139, v140, v141, v142, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
                      if ((v39 & 1) != (v144 & 1))
                      {
LABEL_138:
                        v21 = sub_1ABF25104();
                        __break(1u);
                        goto LABEL_139;
                      }

                      v93 = v143;
                    }

                    if (v39)
                    {
                    }

                    else
                    {
                      sub_1ABAA1278(&v92[8 * (v93 >> 6)]);
                      v146 = (v145 + 16 * v93);
                      *v146 = v122;
                      v146[1] = v123;
                      *(*(v92 + 7) + 8 * v93) = MEMORY[0x1E69E7CC0];
                      v147 = *(v92 + 2);
                      v109 = __OFADD__(v147, 1);
                      v148 = v147 + 1;
                      if (v109)
                      {
                        __break(1u);
                        goto LABEL_126;
                      }

                      *(v92 + 2) = v148;
                    }

                    v149 = *(v92 + 7);
                    v150 = *(v149 + 8 * v93);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *(v149 + 8 * v93) = v150;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_1ABA7BEF0();
                      sub_1ABAAA4F4();
                      v150 = v156;
                      *(v149 + 8 * v93) = v156;
                    }

                    v153 = *(v150 + 16);
                    v152 = *(v150 + 24);
                    if (v153 >= v152 >> 1)
                    {
                      sub_1ABA7BBEC(v152);
                      sub_1ABAAA4F4();
                      v150 = v157;
                      *(v149 + 8 * v93) = v157;
                    }

                    ++v2;
                    *(v150 + 16) = v153 + 1;
                    v154 = v150 + 16 * v153;
                    v155 = v283;
                    *(v154 + 32) = v284;
                    *(v154 + 40) = v155;
                    v121 += 2;
                    sub_1ABAA5F38();
                    v120 = v280;
                    if (v281 == v2)
                    {

                      sub_1ABAA5F38();
                      v11 = v258;
                      break;
                    }
                  }
                }
              }

              v2 = v263;
              v66 = v261;
            }

            v106 = v279;
          }

          while (v279 != v268);
        }

        v94 = v250;
        if (v250 == v274)
        {
          goto LABEL_88;
        }
      }
    }

    v93 = 0;
LABEL_88:
    v158 = sub_1ABAE3058();
    if (!v158)
    {

      sub_1ABAA1B9C();
      v39 = 0;
      goto LABEL_111;
    }

    v159 = v158;
    v281 = *(v158 + 16);
    if (!v281)
    {
      break;
    }

    v11 = 0;
    v160 = 0;
    v161 = (v158 + 40);
    v280 = v158;
    while (1)
    {
      v162 = *(v159 + 16);
      v284 = v160;
      if (v160 >= v162)
      {
        break;
      }

      v164 = *(v161 - 1);
      v163 = *v161;

      v165 = [v255 identifier];
      v166 = sub_1ABF23C04();
      v282 = v167;
      v283 = v166;

      sub_1ABAC9398(v11, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v168 = sub_1ABAA1720();
      sub_1ABA94FC8(v168, v163, v169, v170, v171, v172, v173, v174, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
      sub_1ABAB5450();
      if (v109)
      {
        goto LABEL_132;
      }

      v39 = v175;
      v177 = v176;
      v178 = sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
      v179 = sub_1ABAB5278(v178);
      v92 = aBlock;
      if (v179)
      {
        v11 = aBlock;
        v186 = sub_1ABA94FC8(v164, v163, v180, v181, v182, v183, v184, v185, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255);
        if ((v177 & 1) != (v187 & 1))
        {
          goto LABEL_138;
        }

        v39 = v186;
      }

      if (v177)
      {
      }

      else
      {
        sub_1ABAA1278(&v92[8 * (v39 >> 6)]);
        v189 = (v188 + 16 * v39);
        *v189 = v164;
        v189[1] = v163;
        *(*(v92 + 7) + 8 * v39) = MEMORY[0x1E69E7CC0];
        v190 = *(v92 + 2);
        v109 = __OFADD__(v190, 1);
        v191 = v190 + 1;
        if (v109)
        {
          goto LABEL_134;
        }

        *(v92 + 2) = v191;
      }

      v192 = *(v92 + 7);
      v193 = *(v192 + 8 * v39);
      v194 = swift_isUniquelyReferenced_nonNull_native();
      *(v192 + 8 * v39) = v193;
      if ((v194 & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v193 = v200;
        *(v192 + 8 * v39) = v200;
      }

      v196 = *(v193 + 16);
      v195 = *(v193 + 24);
      if (v196 >= v195 >> 1)
      {
        sub_1ABA7BBEC(v195);
        sub_1ABAAA4F4();
        v193 = v201;
        *(v192 + 8 * v39) = v201;
      }

      v197 = v283;
      v160 = v284 + 1;
      *(v193 + 16) = v196 + 1;
      v198 = v193 + 16 * v196;
      v199 = v282;
      *(v198 + 32) = v197;
      *(v198 + 40) = v199;
      v161 += 2;
      v11 = sub_1ABB4F3FC;
      v159 = v280;
      if (v281 == v160)
      {
        sub_1ABAA1B9C();

        v39 = sub_1ABB4F3FC;
        goto LABEL_111;
      }
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    ;
  }

LABEL_110:
  sub_1ABAA1B9C();

  v39 = 0;
LABEL_111:

  sub_1ABA95454();
  v205 = [objc_opt_self() systemPhotoLibraryURL];
  v206 = v266;
  sub_1ABF21CA4();

  sub_1ABAFF390(0, &qword_1EB4D3330, 0x1E69789A8);
  v207 = v264;
  (*(v278 + 16))(v264, v206, v277);
  v94 = sub_1ABB4C92C(v207);
  aBlock = 0;
  v208 = [v94 openAndWaitWithUpgrade:0 error:&aBlock];
  v209 = aBlock;
  if (!v208)
  {
    v229 = aBlock;
    v66 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED871B18 != -1)
    {
      goto LABEL_137;
    }

    goto LABEL_115;
  }

  v210 = objc_opt_self();
  v211 = v209;
  v212 = [v210 fetchOptionsWithInclusiveDefaultsForPhotoLibrary_];
  if (!v212)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v239 = sub_1ABF237F4();
    sub_1ABA7AA24(v239, qword_1ED871B20);
    v240 = sub_1ABF237D4();
    v241 = sub_1ABF24664();
    if (os_log_type_enabled(v240, v241))
    {
      v242 = swift_slowAlloc();
      *v242 = 0;
      _os_log_impl(&dword_1ABA78000, v240, v241, "Couldn't fetch option for ContactFinder", v242, 2u);
      sub_1ABA7BC34();
    }

    sub_1ABAA1E8C();
    sub_1ABA97EFC();
    sub_1ABA97750();
    sub_1ABA90C7C();
    v243 = sub_1ABA95744();
    (v94)(v243);
    (v94)(v276, v241);
    goto LABEL_123;
  }

  v213 = v212;
  v214 = swift_allocObject();
  *(v214 + 16) = xmmword_1ABF3BF80;
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  *(v214 + 32) = sub_1ABF24794();
  *(v214 + 40) = sub_1ABF24794();
  v215 = sub_1ABA826A8();
  sub_1ABB4EBD0(v215, v216);
  v217 = swift_allocObject();
  v284 = v39;
  v283 = v94;
  v218 = MEMORY[0x1E69E7CC8];
  *(v217 + 16) = MEMORY[0x1E69E7CC8];
  v219 = swift_allocObject();
  *(v219 + 16) = v218;
  v220 = [objc_opt_self() fetchPersonsWithOptions_];
  v221 = swift_allocObject();
  *(v221 + 16) = v217;
  *(v221 + 24) = v219;
  v289 = sub_1ABB4EC54;
  v290 = v221;
  aBlock = MEMORY[0x1E69E9820];
  v286 = 1107296256;
  v287 = sub_1ABB4CE58;
  v288 = &unk_1F2074850;
  v222 = v92;
  v223 = _Block_copy(&aBlock);

  [v220 enumerateObjectsUsingBlock_];
  v224 = v223;
  v92 = v222;
  _Block_release(v224);

  sub_1ABAA1E8C();
  sub_1ABA97EFC();

  sub_1ABA97750();
  sub_1ABA90C7C();
  v225 = v277;
  v226 = *(v278 + 8);
  v226(v266, v277);
  v226(v276, v225);
  swift_beginAccess();
  v227 = *(v217 + 16);
  v39 = v284;
  swift_beginAccess();
  v228 = *(v219 + 16);

LABEL_124:
  sub_1ABAC9398(v93, 0);
  sub_1ABAC9398(v39, 0);
  sub_1ABA8A034();
  v244 = v265;
  *v265 = v245;
  v244[1] = v92;
  v244[2] = v228;
  v244[3] = v227;
LABEL_139:
  result.contactsIDToPhotosIDMap._rawValue = v24;
  result.aliasToPhotosIDsMap._rawValue = v23;
  result.aliasToContactIDsMap._rawValue = v22;
  result.contactStore.super.isa = v21;
  return result;
}

void ContactFinder.search(_:)(unint64_t a1, uint64_t a2)
{
  v5 = v3;
  v170 = *(v2 + 16);
  v190 = *v2;
  v191 = *(v2 + 24);
  v209 = MEMORY[0x1E69E7CD0];
  v203 = a1;
  v204 = a2;
  v6 = sub_1ABAE3058();
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    goto LABEL_23;
  }

  v4 = *(v6 + 16);
  if (!v4)
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v199 = v7;
    goto LABEL_24;
  }

  v186 = v6;
  v8 = (v6 + 40);
  v188 = xmmword_1ABF34740;
  v199 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = *(v8 - 1);
    v10 = *v8;

    v11 = sub_1ABB4CEDC(v9, v10, v190);
    if (v5)
    {

      v11 = 0;
      v12 = 0;
    }

    if (v11)
    {
      v19 = v12;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    if (v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v193 = v19;
    if (*(v191 + 16) && (v21 = sub_1ABA94FC8(v9, v10, v13, v14, v15, v16, v17, v18, v170, v171, v173, v175, v177, *(&v177 + 1), v179, v181, v184, v186), (v22 & 1) != 0))
    {
      v23 = (*(v191 + 56) + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      swift_bridgeObjectRetain_n();
      sub_1ABB1840C(&v205, v25, v24);
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    inited = swift_initStackObject();
    inited[2].n128_u64[1] = sub_1ABAB59E4(inited, v188, v27, v28, v29, v30, v31, v32, v33, v170, v171, v173, v175, v177, *(&v177 + 1), v179, v181, v184, v186, v188.n128_i64[0], v188.n128_i64[1], v190, v191, v193, v198, v199, 0, v203, v204);
    v205 = v20;

    sub_1ABD7DA50(inited);
    v34 = v205;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAD9928();
      v199 = v38;
    }

    v36 = *(v199 + 16);
    v35 = *(v199 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1ABA7BBEC(v35);
      sub_1ABAD9928();
      v199 = v39;
    }

    *(v199 + 16) = v36 + 1;
    v37 = v199 + 56 * v36;
    *(v37 + 32) = v9;
    *(v37 + 40) = v10;
    *(v37 + 48) = v25;
    *(v37 + 56) = v24;
    *(v37 + 64) = 1;
    *(v37 + 72) = v34;
    *(v37 + 80) = v194;
    v8 += 2;
    --v4;
    v5 = v200;
  }

  while (v4);

LABEL_24:
  v40 = sub_1ABB4C700(v203, v204, v190);
  v174 = v5;
  if (v5)
  {

    return;
  }

  v41 = v40;
  v182 = sub_1ABAAB7F4(v40);
  if (v182)
  {
    v42 = 0;
    v179 = v41 & 0xC000000000000001;
    v171 = v41 + 32;
    v177 = xmmword_1ABF3BF90;
    v175 = v41;
    while (1)
    {
      sub_1ABAAB7C0(v42, v179 == 0, v41);
      v43 = v179 ? MEMORY[0x1AC5AA170](v42, v41) : *(v171 + 8 * v42);
      v44 = v43;
      v45 = __OFADD__(v42, 1);
      v46 = (v42 + 1);
      if (v45)
      {
        break;
      }

      v190 = v46;
      sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_1ABF3BF90;
      v48 = [v44 givenName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      *(v47 + 32) = v4;
      *(v47 + 40) = v41;
      v49 = [v44 middleName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      *(v47 + 48) = v4;
      *(v47 + 56) = v41;
      v50 = [v44 familyName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      *(v47 + 64) = v4;
      *(v47 + 72) = v41;
      v51 = [v44 givenName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      v205 = v4;
      v206 = v41;

      MEMORY[0x1AC5A9410](32, 0xE100000000000000);

      v52 = v205;
      v53 = v206;
      v54 = [v44 familyName];
      v55 = sub_1ABF23C04();
      v57 = v56;

      v205 = v52;
      v206 = v53;

      MEMORY[0x1AC5A9410](v55, v57);

      v58 = v206;
      *(v47 + 80) = v205;
      *(v47 + 88) = v58;
      v59 = [v44 previousFamilyName];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      *(v47 + 96) = v53;
      *(v47 + 104) = v55;
      v195 = v44;
      v60 = [v44 nickname];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      v61 = 0;
      *(v47 + 112) = v53;
      *(v47 + 120) = v55;
      v62 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v63 = (v47 + 40 + 16 * v61);
      while (v61 != 6)
      {
        if (v61 > 5)
        {
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        ++v61;
        v64 = *(v63 - 1);
        v65 = *v63;
        v63 += 2;
        v66 = HIBYTE(v65) & 0xF;
        if ((v65 & 0x2000000000000000) == 0)
        {
          v66 = v64 & 0xFFFFFFFFFFFFLL;
        }

        if (v66)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v205 = v62;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v68 = sub_1ABA83F84();
            sub_1ABADDBD4(v68, v69, v70);
            v62 = v205;
          }

          v72 = *(v62 + 16);
          v71 = *(v62 + 24);
          if (v72 >= v71 >> 1)
          {
            v74 = sub_1ABA7BBEC(v71);
            sub_1ABADDBD4(v74, v72 + 1, 1);
            v62 = v205;
          }

          *(v62 + 16) = v72 + 1;
          v73 = v62 + 16 * v72;
          *(v73 + 32) = v64;
          *(v73 + 40) = v65;
          goto LABEL_33;
        }
      }

      swift_setDeallocating();
      sub_1ABB4DB5C();
      sub_1ABE8AE5C(v62);
      sub_1ABA90630();
      v76 = sub_1ABB45668(v75);
      v77 = [v195 identifier];
      sub_1ABF23C04();
      sub_1ABA7AC4C();
      v78 = sub_1ABA826A8();
      v80 = sub_1ABA94FF4(v78, v79);
      v82 = v81;

      if (v82)
      {

        sub_1ABB1840C(&v205, v80, v82);
      }

      v184 = v82;
      v83 = [v195 emailAddresses];
      sub_1ABAD219C(&qword_1EB4D3328, &unk_1ABF3BFF8);
      sub_1ABA89740();
      v84 = sub_1ABF240D4();

      v85 = sub_1ABAAB7F4(v84);
      v186 = v80;
      v188.n128_u64[0] = v76;
      if (v85)
      {
        v86 = v85;
        v205 = MEMORY[0x1E69E7CC0];
        sub_1ABADDBD4(0, v85 & ~(v85 >> 63), 0);
        if (v86 < 0)
        {
          goto LABEL_115;
        }

        v87 = 0;
        v88 = v205;
        v201 = v84 & 0xC000000000000001;
        v89 = v84;
        do
        {
          if (v201)
          {
            v90 = sub_1ABA826A8();
            v91 = MEMORY[0x1AC5AA170](v90);
          }

          else
          {
            v91 = *(v84 + 8 * v87 + 32);
          }

          v92 = v91;
          v93 = [v91 value];
          v94 = sub_1ABF23C64();
          v96 = v95;

          v205 = v88;
          v98 = *(v88 + 16);
          v97 = *(v88 + 24);
          if (v98 >= v97 >> 1)
          {
            v100 = sub_1ABA7BBEC(v97);
            sub_1ABADDBD4(v100, v98 + 1, 1);
            v88 = v205;
          }

          ++v87;
          *(v88 + 16) = v98 + 1;
          v99 = v88 + 16 * v98;
          *(v99 + 32) = v94;
          *(v99 + 40) = v96;
          v84 = v89;
        }

        while (v86 != v87);
      }

      else
      {

        v88 = MEMORY[0x1E69E7CC0];
      }

      v101 = [v195 identifier];
      v102 = sub_1ABF23C04();
      v4 = v103;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAD9928();
        v199 = v107;
      }

      v41 = v175;
      v105 = *(v199 + 16);
      v104 = *(v199 + 24);
      if (v105 >= v104 >> 1)
      {
        sub_1ABA7BBEC(v104);
        sub_1ABAD9928();
        v199 = v108;
      }

      *(v199 + 16) = v105 + 1;
      v106 = v199 + 56 * v105;
      *(v106 + 32) = v102;
      *(v106 + 40) = v4;
      *(v106 + 48) = v186;
      *(v106 + 56) = v184;
      *(v106 + 64) = 0;
      *(v106 + 72) = v188.n128_u64[0];
      *(v106 + 80) = v88;
      v42 = v190;
      if (v190 == v182)
      {
        goto LABEL_62;
      }
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

LABEL_62:

  v109 = sub_1ABAE3058();
  if (!v109)
  {
LABEL_83:
    v205 = MEMORY[0x1E69E7CD0];
    sub_1ABB45B5C(v199, &v205);
    v136 = 0;
    v185 = *(v137 + 16);
    v187 = v137;
    v183 = v137 + 32;
    v172 = MEMORY[0x1E69E7CC0];
    while (v136 != v185)
    {
      if (v136 >= *(v187 + 16))
      {
        goto LABEL_112;
      }

      v138 = (v183 + 56 * v136);
      v180 = *v138;
      v139 = v138[3];
      v178 = v138[2];
      v176 = *(v138 + 32);
      v141 = v138[5];
      v140 = v138[6];
      v192 = v138[1];
      v197 = v136 + 1;
      v142 = *(v141 + 16);

      swift_bridgeObjectRetain_n();
      v189 = v140;

      v143 = 0;
      v144 = v141 + 40;
      v145 = MEMORY[0x1E69E7CC0];
LABEL_87:
      v146 = (v144 + 16 * v143);
      while (v142 != v143)
      {
        if (v143 >= *(v141 + 16))
        {
          __break(1u);
          goto LABEL_111;
        }

        v147 = *(v146 - 1);
        v148 = *v146;
        sub_1ABA826A8();
        if (sub_1ABF23C84() == v203 && v149 == v204)
        {

LABEL_97:
          v152 = swift_isUniquelyReferenced_nonNull_native();
          v207 = v145;
          if ((v152 & 1) == 0)
          {
            v153 = sub_1ABA83F84();
            sub_1ABADDBD4(v153, v154, v155);
            v145 = v207;
          }

          v157 = *(v145 + 16);
          v156 = *(v145 + 24);
          if (v157 >= v156 >> 1)
          {
            v159 = sub_1ABA7BBEC(v156);
            sub_1ABADDBD4(v159, v157 + 1, 1);
            v145 = v207;
          }

          ++v143;
          *(v145 + 16) = v157 + 1;
          v158 = v145 + 16 * v157;
          *(v158 + 32) = v147;
          *(v158 + 40) = v148;
          v144 = v141 + 40;
          goto LABEL_87;
        }

        v151 = sub_1ABF25054();

        if (v151)
        {
          goto LABEL_97;
        }

        v146 += 2;
        ++v143;
      }

      v160 = *(v145 + 16);

      if (v160)
      {
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v162 = v172;
        v208 = v172;
        if ((v161 & 1) == 0)
        {
          v163 = sub_1ABA83F84();
          sub_1ABADDF4C(v163, v164, v165);
          v162 = v208;
        }

        v167 = *(v162 + 16);
        v166 = *(v162 + 24);
        if (v167 >= v166 >> 1)
        {
          v169 = sub_1ABA7BBEC(v166);
          sub_1ABADDF4C(v169, v167 + 1, 1);
          v162 = v208;
        }

        *(v162 + 16) = v167 + 1;
        v172 = v162;
        v168 = v162 + 56 * v167;
        *(v168 + 32) = v180;
        *(v168 + 40) = v192;
        *(v168 + 48) = v178;
        *(v168 + 56) = v139;
        *(v168 + 64) = v176;
        *(v168 + 72) = v141;
        *(v168 + 80) = v189;
        v136 = v197;
      }

      else
      {

        v136 = v197;
      }
    }

    return;
  }

  v110 = v109;
  v111 = *(v109 + 16);
  if (!v111)
  {
LABEL_82:

    goto LABEL_83;
  }

  v112 = 0;
  v202 = v109 + 32;
  v196 = xmmword_1ABF34740;
  while (v112 < *(v110 + 16))
  {
    v113 = (v202 + 16 * v112);
    v115 = *v113;
    v114 = v113[1];
    v116 = v209;
    if (*(v209 + 16))
    {
      sub_1ABF25234();

      sub_1ABF23D34();
      v117 = sub_1ABF25294();
      v118 = ~(-1 << *(v116 + 32));
      while (1)
      {
        v119 = v117 & v118;
        if (((*(v116 + 56 + (((v117 & v118) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v117 & v118)) & 1) == 0)
        {
          break;
        }

        v120 = (*(v116 + 48) + 16 * v119);
        if (*v120 != v115 || v120[1] != v114)
        {
          v122 = sub_1ABF25054();
          v117 = v119 + 1;
          if ((v122 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_81;
      }
    }

    else
    {
    }

    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v123 = swift_allocObject();
    v123[2].n128_u64[1] = sub_1ABAB59E4(v123, v196, v124, v125, v126, v127, v128, v129, v130, v170, v171, v174, v175, v177, *(&v177 + 1), v179, v182, v184, v186, v188.n128_i64[0], v188.n128_i64[1], v190, v191, v196.n128_i64[0], v196.n128_i64[1], v199, v202, v203, v204);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAD9928();
      v199 = v134;
    }

    v132 = *(v199 + 16);
    v131 = *(v199 + 24);
    if (v132 >= v131 >> 1)
    {
      sub_1ABA7BBEC(v131);
      sub_1ABAD9928();
      v199 = v135;
    }

    *(v199 + 16) = v132 + 1;
    v133 = v199 + 56 * v132;
    *(v133 + 32) = 0;
    *(v133 + 40) = 0;
    *(v133 + 48) = v115;
    *(v133 + 56) = v114;
    *(v133 + 64) = 0;
    *(v133 + 72) = v123;
    *(v133 + 80) = MEMORY[0x1E69E7CC0];
    sub_1ABB1840C(&v205, v115, v114);
LABEL_81:

    if (++v112 == v111)
    {
      goto LABEL_82;
    }
  }

LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
}

void static ContactFinderResult.== infix(_:_:)()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  if (v3)
  {
    if (!v8)
    {
      goto LABEL_26;
    }

    v13 = *v0 == *v2 && v3 == v8;
    if (!v13 && (sub_1ABF25054() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v8)
  {
    goto LABEL_26;
  }

  if (v5)
  {
    if (v10)
    {
      if (v4 != v9 || v5 != v10)
      {
        if ((sub_1ABF25054() & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      if (v6 == v11)
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    sub_1ABA7BC1C();
    return;
  }

  if (v10)
  {
    goto LABEL_26;
  }

LABEL_19:
  if ((v6 ^ v11))
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((sub_1ABB48494(v7, v12) & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1ABA7D000();
  sub_1ABA7BC1C();

  sub_1ABB48494(v15, v16);
}

uint64_t sub_1ABB48494(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1ABF25054() & 1) == 0)
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

uint64_t sub_1ABB48520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KGQ.Value(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        v16 = sub_1ABA7ECFC();
        sub_1ABB4EFA0(v16, v17, v18);
        sub_1ABB4EFA0(v14, v6, type metadata accessor for KGQ.Value);
        v19 = sub_1ABD77CCC(v10, v6);
        sub_1ABB4EFFC(v6, type metadata accessor for KGQ.Value);
        sub_1ABB4EFFC(v10, type metadata accessor for KGQ.Value);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void sub_1ABB486C4()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for KGQ.Value(0);
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1ABA7AC18();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = *(v3 + 16);
  if (v11 == *(v1 + 16) && v11 && v3 != v1)
  {
    v12 = 0;
    v44 = v1 + 32;
    v45 = v3 + 32;
    v42 = 0x80000001ABF85AA0;
    v43 = v11;
    while (v12 != v11)
    {
      v13 = v12 + 1;
      v14 = (v45 + 24 * v12);
      v15 = *(v14 + 1);
      v16 = v14[16];
      v17 = *v14;
      v18 = (v44 + 24 * v12);
      v19 = *v18;
      v20 = *(v18 + 1);
      v48 = v18[16];
      v21 = 0xE400000000000000;
      v22 = 1701667182;
      switch(v17)
      {
        case 1:
          v22 = 0x6D614E7473726966;
          goto LABEL_21;
        case 2:
          v21 = 0xE800000000000000;
          v22 = 0x656D614E7473616CLL;
          break;
        case 3:
          v21 = 0xE700000000000000;
          v22 = 0x73736572646461;
          break;
        case 4:
          v21 = 0xE800000000000000;
          v22 = 0x7961646874726962;
          break;
        case 5:
          v22 = 0x6D754E656E6F6870;
          v23 = 7497058;
          goto LABEL_24;
        case 6:
          v22 = 0x6464416C69616D65;
          v24 = 1936942450;
          goto LABEL_28;
        case 7:
          v22 = sub_1ABA7CFCC(0x616C6572u);
          v24 = 1885956211;
LABEL_28:
          v21 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 8:
          v21 = 0xE800000000000000;
          v22 = 0x6565646E65747461;
          break;
        case 9:
          v22 = 0x49746361746E6F63;
          v23 = 7300718;
          goto LABEL_24;
        case 10:
          v21 = 0xE800000000000000;
          v25 = 1633906540;
          goto LABEL_34;
        case 11:
          v22 = 1836020326;
          break;
        case 12:
          v21 = 0xE200000000000000;
          v22 = 28532;
          break;
        case 13:
          v22 = 0xD000000000000010;
          v21 = v42;
          break;
        case 14:
          v21 = 0xE800000000000000;
          v22 = 0x7473657265746E69;
          break;
        case 15:
          v21 = 0xE600000000000000;
          v22 = 0x6E6F73726570;
          break;
        case 16:
          v22 = 0x6765746143707061;
          v23 = 7959151;
LABEL_24:
          v21 = v23 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 17:
          v22 = 0x7461447472617473;
LABEL_21:
          v21 = 0xE900000000000065;
          break;
        case 18:
          v21 = 0xE700000000000000;
          v22 = 0x65746144646E65;
          break;
        case 19:
          v21 = 0xE800000000000000;
          v25 = 1634891108;
LABEL_34:
          v22 = sub_1ABA7CFCC(v25);
          break;
        case 20:
          v22 = 1701869940;
          break;
        case 21:
          v21 = 0xE500000000000000;
          v22 = 0x74696D696CLL;
          break;
        case 22:
          v21 = 0xE700000000000000;
          v22 = 0x63734174726F73;
          break;
        case 23:
          v21 = 0xE800000000000000;
          v22 = 0x6373654474726F73;
          break;
        case 24:
          v21 = 0xE600000000000000;
          v22 = 0x656372756F73;
          break;
        case 25:
          v21 = 0xE500000000000000;
          v22 = 0x65756C6176;
          break;
        default:
          break;
      }

      v26 = 0xE400000000000000;
      v27 = 1701667182;
      switch(v19)
      {
        case 1:
          v27 = 0x6D614E7473726966;
          goto LABEL_51;
        case 2:
          v26 = 0xE800000000000000;
          v27 = 0x656D614E7473616CLL;
          break;
        case 3:
          v26 = 0xE700000000000000;
          v27 = 0x73736572646461;
          break;
        case 4:
          v26 = 0xE800000000000000;
          v27 = 0x7961646874726962;
          break;
        case 5:
          v27 = 0x6D754E656E6F6870;
          v28 = 7497058;
          goto LABEL_54;
        case 6:
          v27 = 0x6464416C69616D65;
          v29 = 1936942450;
          goto LABEL_58;
        case 7:
          sub_1ABAB57D4();
          v29 = 1885956211;
LABEL_58:
          v26 = v29 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 8:
          v26 = 0xE800000000000000;
          v27 = 0x6565646E65747461;
          break;
        case 9:
          v27 = 0x49746361746E6F63;
          v28 = 7300718;
          goto LABEL_54;
        case 10:
          v26 = 0xE800000000000000;
          goto LABEL_64;
        case 11:
          v27 = 1836020326;
          break;
        case 12:
          v26 = 0xE200000000000000;
          v27 = 28532;
          break;
        case 13:
          v27 = 0xD000000000000010;
          v26 = v42;
          break;
        case 14:
          v26 = 0xE800000000000000;
          v27 = 0x7473657265746E69;
          break;
        case 15:
          v26 = 0xE600000000000000;
          v27 = 0x6E6F73726570;
          break;
        case 16:
          v27 = 0x6765746143707061;
          v28 = 7959151;
LABEL_54:
          v26 = v28 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 17:
          v27 = 0x7461447472617473;
LABEL_51:
          v26 = 0xE900000000000065;
          break;
        case 18:
          v26 = 0xE700000000000000;
          v27 = 0x65746144646E65;
          break;
        case 19:
          v26 = 0xE800000000000000;
LABEL_64:
          sub_1ABAB57D4();
          break;
        case 20:
          v27 = 1701869940;
          break;
        case 21:
          v26 = 0xE500000000000000;
          v27 = 0x74696D696CLL;
          break;
        case 22:
          v26 = 0xE700000000000000;
          v27 = 0x63734174726F73;
          break;
        case 23:
          v26 = 0xE800000000000000;
          v27 = 0x6373654474726F73;
          break;
        case 24:
          v26 = 0xE600000000000000;
          v27 = 0x656372756F73;
          break;
        case 25:
          v26 = 0xE500000000000000;
          v27 = 0x65756C6176;
          break;
        default:
          break;
      }

      if (v22 == v27 && v21 == v26)
      {
      }

      else
      {
        v31 = sub_1ABF25054();

        if ((v31 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      v32 = *(v15 + 16);
      if (v32 != *(v20 + 16))
      {
LABEL_88:

        goto LABEL_89;
      }

      v46 = v16;
      v47 = v13;
      if (v32 && v15 != v20)
      {
        v33 = 0;
        v34 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v35 = v15 + v34;
        v36 = v20 + v34;
        while (v33 < *(v15 + 16))
        {
          v37 = *(v49 + 72) * v33;
          sub_1ABB4EFA0(v35 + v37, v10, type metadata accessor for KGQ.Value);
          if (v33 >= *(v20 + 16))
          {
            goto LABEL_91;
          }

          sub_1ABB4EFA0(v36 + v37, v7, type metadata accessor for KGQ.Value);
          v38 = sub_1ABA7ECFC();
          v40 = sub_1ABD77CCC(v38, v39);
          sub_1ABB4EFFC(v7, type metadata accessor for KGQ.Value);
          sub_1ABB4EFFC(v10, type metadata accessor for KGQ.Value);
          if ((v40 & 1) == 0)
          {
            goto LABEL_88;
          }

          if (v32 == ++v33)
          {
            goto LABEL_81;
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
        break;
      }

LABEL_81:

      v11 = v43;
      v12 = v47;
      if (v46 != v48 || v47 == v43)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_89:
    sub_1ABA7BC1C();
  }
}

void sub_1ABB48E4C()
{
  sub_1ABA7E2A8();
  sub_1ABAA2FC8();
  if (v10 && v0 && v1 != v2)
  {
    v3 = (v1 + 32);
    v4 = (v2 + 32);
    do
    {
      v5 = *v4;
      v6 = 0xE600000000000000;
      v7 = 0x6E6F73726570;
      switch(*v3)
      {
        case 1:
          v7 = sub_1ABA7CFCC(0x616C6572u);
          v6 = 0xEC00000070696873;
          break;
        case 2:
          v7 = 0x49746361746E6F63;
          v6 = 0xEB000000006F666ELL;
          break;
        case 3:
          v6 = 0xE500000000000000;
          v7 = 0x746E657665;
          break;
        case 4:
          v7 = 0x69746E6565726373;
          v6 = 0xEA0000000000656DLL;
          break;
        case 5:
          v6 = 0xE800000000000000;
          v7 = sub_1ABA7CFCC(0x61636F6Cu);
          break;
        default:
          break;
      }

      v8 = 0xE600000000000000;
      v9 = 0x6E6F73726570;
      switch(v5)
      {
        case 1:
          sub_1ABAB57D4();
          v8 = 0xEC00000070696873;
          break;
        case 2:
          v9 = 0x49746361746E6F63;
          v8 = 0xEB000000006F666ELL;
          break;
        case 3:
          v8 = 0xE500000000000000;
          v9 = 0x746E657665;
          break;
        case 4:
          v9 = 0x69746E6565726373;
          v8 = 0xEA0000000000656DLL;
          break;
        case 5:
          v8 = 0xE800000000000000;
          sub_1ABAB57D4();
          break;
        default:
          break;
      }

      v10 = v7 == v9 && v6 == v8;
      if (v10)
      {
      }

      else
      {
        v11 = sub_1ABF25054();

        if ((v11 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v0;
    }

    while (v0);
  }

  sub_1ABA7BC1C();
}

uint64_t sub_1ABB4904C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1ABA814E4();
  }

  if (!v2 || result == a2)
  {
    return sub_1ABA7E270();
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

uint64_t sub_1ABB490A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        if (v5 != v8 || v6 != v7)
        {
          sub_1ABA7D000();
          if ((sub_1ABF25054() & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1ABB49178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 5)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1ABB49204(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  sub_1ABAA2FC8();
  if (v4)
  {
    if (!v1 || v2 == v3)
    {
      return 1;
    }

    v5 = (v2 + 32);
    for (i = (v3 + 32); ; i += 1160)
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(v11, v5, sizeof(v11));
      memcpy(v13, i, sizeof(v13));
      memcpy(__src, i, sizeof(__src));
      sub_1ABB4F254(__dst, v9);
      sub_1ABB4F254(v13, v9);
      v7 = static RerankedEntity.== infix(_:_:)(v11);
      memcpy(v14, __src, sizeof(v14));
      sub_1ABB4F2B0(v14);
      memcpy(v15, v11, sizeof(v15));
      sub_1ABB4F2B0(v15);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v5 += 1160;
      if (!--v1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1ABB49340(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = a2 + 56;
  v4 = result + 56;
  while (v2)
  {
    v16 = v2;
    if (*(v4 - 24) != *(v3 - 24) || *(v4 - 16) != *(v3 - 16))
    {
      sub_1ABA7ECFC();
      if ((sub_1ABF25054() & 1) == 0)
      {
        return 0;
      }
    }

    v6 = sub_1ABF23EC4();
    v7 = MEMORY[0x1AC5A9330](v6);
    v9 = v8;

    sub_1ABA826A8();
    v10 = sub_1ABF23EC4();
    v11 = MEMORY[0x1AC5A9330](v10);
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
    }

    else
    {
      v15 = sub_1ABF25054();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    v3 += 32;
    v4 += 32;
    v2 = v16 - 1;
    if (v16 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

void sub_1ABB494DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7E2A8();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CodableLocation(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&a9 - v31);
  v33 = *(v25 + 16);
  if (v33 == *(v23 + 16) && v33 && v25 != v23)
  {
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = v25 + v34;
    v36 = v23 + v34;
    v37 = *(v30 + 72);
    while (1)
    {
      sub_1ABB4EFA0(v35, v32, type metadata accessor for CodableLocation);
      sub_1ABB4EFA0(v36, v28, type metadata accessor for CodableLocation);
      if (*v32 != *v28 || v32[1] != v28[1] || v32[2] != v28[2] || v32[3] != v28[3] || v32[4] != v28[4] || v32[5] != v28[5] || v32[6] != v28[6])
      {
        break;
      }

      v38 = sub_1ABF21E54();
      sub_1ABB4EFFC(v28, type metadata accessor for CodableLocation);
      sub_1ABB4EFFC(v32, type metadata accessor for CodableLocation);
      if (v38)
      {
        v36 += v37;
        v35 += v37;
        if (--v33)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1ABB4EFFC(v28, type metadata accessor for CodableLocation);
    sub_1ABB4EFFC(v32, type metadata accessor for CodableLocation);
  }

LABEL_17:
  sub_1ABA7BC1C();
}

void sub_1ABB49734()
{
  sub_1ABA7E2A8();
  sub_1ABAA2FC8();
  if (v9 && v0 && v1 != v2)
  {
    v3 = (v1 + 32);
    v4 = (v2 + 32);
    do
    {
      v5 = 0xEE007372657A696CLL;
      v6 = 0x616D726F4E6C6C61;
      switch(*v3)
      {
        case 1:
          v6 = 0x7361637265776F6CLL;
          v5 = 0xE900000000000065;
          break;
        case 2:
          v6 = 0x6F72706572506F6ELL;
          v5 = 0xEF676E6973736563;
          break;
        case 3:
          v6 = 0xD000000000000016;
          v5 = 0x80000001ABF81BE0;
          break;
        case 4:
          v6 = 0x696C617469706163;
          v5 = 0xEA0000000000657ALL;
          break;
        case 5:
          v5 = 0xE700000000000000;
          v6 = 0x74786554646170;
          break;
        case 6:
          v6 = 0xD000000000000012;
          v5 = 0x80000001ABF81C10;
          break;
        case 7:
          v5 = 0xE700000000000000;
          v6 = 0x6E756870726F6DLL;
          break;
        default:
          break;
      }

      v7 = 0x616D726F4E6C6C61;
      v8 = 0xEE007372657A696CLL;
      switch(*v4)
      {
        case 1:
          v7 = 0x7361637265776F6CLL;
          v8 = 0xE900000000000065;
          break;
        case 2:
          v7 = 0x6F72706572506F6ELL;
          v8 = 0xEF676E6973736563;
          break;
        case 3:
          v7 = 0xD000000000000016;
          v8 = 0x80000001ABF81BE0;
          break;
        case 4:
          v7 = 0x696C617469706163;
          v8 = 0xEA0000000000657ALL;
          break;
        case 5:
          v8 = 0xE700000000000000;
          v7 = 0x74786554646170;
          break;
        case 6:
          v7 = 0xD000000000000012;
          v8 = 0x80000001ABF81C10;
          break;
        case 7:
          v8 = 0xE700000000000000;
          v7 = 0x6E756870726F6DLL;
          break;
        default:
          break;
      }

      v9 = v6 == v7 && v5 == v8;
      if (v9)
      {
      }

      else
      {
        v10 = sub_1ABF25054();

        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v0;
    }

    while (v0);
  }

  sub_1ABA7BC1C();
}

uint64_t sub_1ABB499DC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1ABA814E4();
  }

  if (!v2 || result == a2)
  {
    return sub_1ABA7E270();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB49A30(uint64_t result, uint64_t a2)
{
  v23 = result;
  v35 = *(result + 16);
  if (v35 != *(a2 + 16))
  {
    return 0;
  }

  if (!v35 || result == a2)
  {
    return 1;
  }

  v34 = 0;
  while (v35)
  {
    v3 = *(v23 + v34 + 48);
    v2 = *(v23 + v34 + 56);
    v29 = *(v23 + v34 + 64);
    v28 = *(v23 + v34 + 72);
    v33 = *(v23 + v34 + 80);
    v27 = *(v23 + v34 + 88);
    v26 = *(v23 + v34 + 96);
    v5 = *(a2 + v34 + 48);
    v4 = *(a2 + v34 + 56);
    v7 = *(a2 + v34 + 64);
    v6 = *(a2 + v34 + 72);
    v32 = *(a2 + v34 + 80);
    v30 = *(a2 + v34 + 88);
    v8 = *(v23 + v34 + 32) == *(a2 + v34 + 32) && *(v23 + v34 + 40) == *(a2 + v34 + 40);
    v31 = *(a2 + v34 + 96);
    if (!v8)
    {
      v9 = *(v23 + v34 + 56);
      v10 = *(a2 + v34 + 56);
      v11 = sub_1ABF25054();
      v4 = v10;
      v2 = v9;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = v3 == v5 && v2 == v4;
    if (!v12 && (sub_1ABF25054() & 1) == 0)
    {
      return 0;
    }

    v41 = v29;
    v42 = v28;
    v43 = v33;
    v44 = v27;
    v45 = v26;
    v36 = v7;
    v37 = v6;
    v38 = v32;
    v39 = v30;
    v40 = v31;

    sub_1ABAFF488(v29, v28, v33, v27, v26);

    sub_1ABAFF488(v7, v6, v32, v30, v31);
    sub_1ABAFF488(v29, v28, v33, v27, v26);
    v13 = sub_1ABA9694C();
    sub_1ABAFF488(v13, v14, v15, v16, v17);
    v25 = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(&v41, &v36);
    sub_1ABAFF544(v36, v37, v38, v39, v40);
    sub_1ABAFF544(v41, v42, v43, v44, v45);

    v18 = sub_1ABA9694C();
    sub_1ABAFF544(v18, v19, v20, v21, v22);

    result = sub_1ABAFF544(v29, v28, v33, v27, v26);
    if ((v25 & 1) == 0)
    {
      return 0;
    }

    v8 = v35 == 1;
    v34 += 72;
    --v35;
    if (v8)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB49D08(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1ABA814E4();
  }

  if (!v2 || result == a2)
  {
    return sub_1ABA7E270();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void ContactFinderResult.hash(into:)()
{
  sub_1ABA7E2A8();
  v1 = *(v0 + 24);
  if (*(v0 + 8))
  {
    sub_1ABF25254();
    sub_1ABF23D34();
    if (v1)
    {
LABEL_3:
      sub_1ABF25254();
      sub_1ABAA48C8();
      sub_1ABF23D34();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1ABF25254();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_1ABF25254();
LABEL_6:
  sub_1ABF25254();
  sub_1ABB4ED98();
  sub_1ABA7BC1C();

  sub_1ABB4ED98();
}

uint64_t ContactFinderResult.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1ABF25234();
  sub_1ABF25254();
  if (v1)
  {
    sub_1ABF23D34();
  }

  sub_1ABF25254();
  if (v2)
  {
    sub_1ABAA48C8();
    sub_1ABF23D34();
  }

  sub_1ABF25254();
  sub_1ABB4ED98();
  sub_1ABB4ED98();
  return sub_1ABF25294();
}

uint64_t sub_1ABB49F0C(uint64_t a1)
{
  sub_1ABF25234();
  ContactFinderResult.hash(into:)();
  return sub_1ABF25294();
}

void *sub_1ABB49F68()
{
  sub_1ABAD219C(&qword_1EB4D33C8, &unk_1ABF3C170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF3BFA0;
  *(v0 + 32) = sub_1ABF23C04();
  *(v0 + 40) = v1;
  *(v0 + 48) = &unk_1F208F390;
  *(v0 + 56) = sub_1ABF23C04();
  *(v0 + 64) = v2;
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1ABF34060;
  *(v3 + 32) = sub_1ABF23C04();
  *(v3 + 40) = v4;
  strcpy((v3 + 48), "_$!<Family>!$_");
  *(v3 + 63) = -18;
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1ABF23C04();
  *(v0 + 88) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1ABF34060;
  *(v6 + 32) = sub_1ABF23C04();
  *(v6 + 40) = v7;
  strcpy((v6 + 48), "_$!<Family>!$_");
  *(v6 + 63) = -18;
  *(v0 + 96) = v6;
  *(v0 + 104) = sub_1ABF23C04();
  *(v0 + 112) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABF34060;
  *(v9 + 32) = sub_1ABF23C04();
  *(v9 + 40) = v10;
  strcpy((v9 + 48), "_$!<Family>!$_");
  *(v9 + 63) = -18;
  *(v0 + 120) = v9;
  *(v0 + 128) = sub_1ABF23C04();
  *(v0 + 136) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1ABF34060;
  *(v12 + 32) = sub_1ABF23C04();
  *(v12 + 40) = v13;
  strcpy((v12 + 48), "_$!<Family>!$_");
  *(v12 + 63) = -18;
  *(v0 + 144) = v12;
  *(v0 + 152) = sub_1ABF23C04();
  *(v0 + 160) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1ABF34060;
  *(v15 + 32) = sub_1ABF23C04();
  *(v15 + 40) = v16;
  strcpy((v15 + 48), "_$!<Family>!$_");
  *(v15 + 63) = -18;
  *(v0 + 168) = v15;
  *(v0 + 176) = sub_1ABF23C04();
  *(v0 + 184) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1ABF34060;
  *(v18 + 32) = sub_1ABF23C04();
  *(v18 + 40) = v19;
  strcpy((v18 + 48), "_$!<Family>!$_");
  *(v18 + 63) = -18;
  *(v0 + 192) = v18;
  *(v0 + 200) = sub_1ABF23C04();
  *(v0 + 208) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1ABF34060;
  *(v21 + 32) = sub_1ABF23C04();
  *(v21 + 40) = v22;
  strcpy((v21 + 48), "_$!<Family>!$_");
  *(v21 + 63) = -18;
  *(v0 + 216) = v21;
  *(v0 + 224) = sub_1ABF23C04();
  *(v0 + 232) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1ABF34060;
  *(v24 + 32) = sub_1ABF23C04();
  *(v24 + 40) = v25;
  strcpy((v24 + 48), "_$!<Family>!$_");
  *(v24 + 63) = -18;
  *(v0 + 240) = v24;
  *(v0 + 248) = sub_1ABF23C04();
  *(v0 + 256) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1ABF34060;
  *(v27 + 32) = sub_1ABF23C04();
  *(v27 + 40) = v28;
  strcpy((v27 + 48), "_$!<Family>!$_");
  *(v27 + 63) = -18;
  *(v0 + 264) = v27;
  *(v0 + 272) = sub_1ABF23C04();
  *(v0 + 280) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1ABF34060;
  *(v30 + 32) = sub_1ABF23C04();
  *(v30 + 40) = v31;
  strcpy((v30 + 48), "_$!<Family>!$_");
  *(v30 + 63) = -18;
  *(v0 + 288) = v30;
  *(v0 + 296) = sub_1ABF23C04();
  *(v0 + 304) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1ABF34060;
  *(v33 + 32) = sub_1ABF23C04();
  *(v33 + 40) = v34;
  strcpy((v33 + 48), "_$!<Family>!$_");
  *(v33 + 63) = -18;
  *(v0 + 312) = v33;
  *(v0 + 320) = sub_1ABF23C04();
  *(v0 + 328) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1ABF34060;
  *(v36 + 32) = sub_1ABF23C04();
  *(v36 + 40) = v37;
  strcpy((v36 + 48), "_$!<Family>!$_");
  *(v36 + 63) = -18;
  *(v0 + 336) = v36;
  *(v0 + 344) = sub_1ABF23C04();
  *(v0 + 352) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1ABF34740;
  *(v39 + 32) = sub_1ABF23C04();
  *(v39 + 40) = v40;
  *(v0 + 360) = v39;
  *(v0 + 368) = sub_1ABF23C04();
  *(v0 + 376) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1ABF34740;
  *(v42 + 32) = sub_1ABF23C04();
  *(v42 + 40) = v43;
  *(v0 + 384) = v42;
  *(v0 + 392) = sub_1ABF23C04();
  *(v0 + 400) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1ABF3BFB0;
  strcpy((v45 + 32), "_$!<Family>!$_");
  *(v45 + 47) = -18;
  *(v45 + 48) = sub_1ABF23C04();
  *(v45 + 56) = v46;
  *(v45 + 64) = sub_1ABF23C04();
  *(v45 + 72) = v47;
  *(v45 + 80) = sub_1ABF23C04();
  *(v45 + 88) = v48;
  *(v0 + 408) = v45;
  *(v0 + 416) = sub_1ABF23C04();
  *(v0 + 424) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1ABF3BFC0;
  *(v50 + 32) = sub_1ABF23C04();
  *(v50 + 40) = v51;
  *(v50 + 48) = sub_1ABF23C04();
  *(v50 + 56) = v52;
  strcpy((v50 + 64), "_$!<Family>!$_");
  *(v50 + 79) = -18;
  *(v0 + 432) = v50;
  *(v0 + 440) = sub_1ABF23C04();
  *(v0 + 448) = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1ABF3BFC0;
  *(v54 + 32) = sub_1ABF23C04();
  *(v54 + 40) = v55;
  *(v54 + 48) = sub_1ABF23C04();
  *(v54 + 56) = v56;
  strcpy((v54 + 64), "_$!<Family>!$_");
  *(v54 + 79) = -18;
  *(v0 + 456) = v54;
  *(v0 + 464) = sub_1ABF23C04();
  *(v0 + 472) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1ABF34740;
  *(v58 + 32) = sub_1ABF23C04();
  *(v58 + 40) = v59;
  *(v0 + 480) = v58;
  *(v0 + 488) = sub_1ABF23C04();
  *(v0 + 496) = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1ABF34740;
  *(v61 + 32) = sub_1ABF23C04();
  *(v61 + 40) = v62;
  *(v0 + 504) = v61;
  *(v0 + 512) = sub_1ABF23C04();
  *(v0 + 520) = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1ABF34740;
  *(v64 + 32) = sub_1ABF23C04();
  *(v64 + 40) = v65;
  *(v0 + 528) = v64;
  *(v0 + 536) = sub_1ABF23C04();
  *(v0 + 544) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1ABF34740;
  *(v67 + 32) = sub_1ABF23C04();
  *(v67 + 40) = v68;
  *(v0 + 552) = v67;
  *(v0 + 560) = sub_1ABF23C04();
  *(v0 + 568) = v69;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1ABF34740;
  *(v70 + 32) = sub_1ABF23C04();
  *(v70 + 40) = v71;
  *(v0 + 576) = v70;
  *(v0 + 584) = sub_1ABF23C04();
  *(v0 + 592) = v72;
  *(v0 + 600) = &unk_1F208F3C0;
  *(v0 + 608) = sub_1ABF23C04();
  *(v0 + 616) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1ABF34060;
  *(v74 + 32) = sub_1ABF23C04();
  *(v74 + 40) = v75;
  strcpy((v74 + 48), "_$!<Family>!$_");
  *(v74 + 63) = -18;
  *(v0 + 624) = v74;
  *(v0 + 632) = sub_1ABF23C04();
  *(v0 + 640) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1ABF34060;
  *(v77 + 32) = sub_1ABF23C04();
  *(v77 + 40) = v78;
  strcpy((v77 + 48), "_$!<Family>!$_");
  *(v77 + 63) = -18;
  *(v0 + 648) = v77;
  *(v0 + 656) = sub_1ABF23C04();
  *(v0 + 664) = v79;
  *(v0 + 672) = &unk_1F208F3F0;
  *(v0 + 680) = sub_1ABF23C04();
  *(v0 + 688) = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1ABF34060;
  *(v81 + 32) = sub_1ABF23C04();
  *(v81 + 40) = v82;
  strcpy((v81 + 48), "_$!<Family>!$_");
  *(v81 + 63) = -18;
  *(v0 + 696) = v81;
  *(v0 + 704) = sub_1ABF23C04();
  *(v0 + 712) = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1ABF34060;
  *(v84 + 32) = sub_1ABF23C04();
  *(v84 + 40) = v85;
  strcpy((v84 + 48), "_$!<Family>!$_");
  *(v84 + 63) = -18;
  *(v0 + 720) = v84;
  *(v0 + 728) = sub_1ABF23C04();
  *(v0 + 736) = v86;
  *(v0 + 744) = &unk_1F208F420;
  *(v0 + 752) = sub_1ABF23C04();
  *(v0 + 760) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1ABF34060;
  *(v88 + 32) = sub_1ABF23C04();
  *(v88 + 40) = v89;
  strcpy((v88 + 48), "_$!<Family>!$_");
  *(v88 + 63) = -18;
  *(v0 + 768) = v88;
  *(v0 + 776) = sub_1ABF23C04();
  *(v0 + 784) = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1ABF34060;
  *(v91 + 32) = sub_1ABF23C04();
  *(v91 + 40) = v92;
  strcpy((v91 + 48), "_$!<Family>!$_");
  *(v91 + 63) = -18;
  *(v0 + 792) = v91;
  *(v0 + 800) = sub_1ABF23C04();
  *(v0 + 808) = v93;
  *(v0 + 816) = &unk_1F208F450;
  *(v0 + 824) = sub_1ABF23C04();
  *(v0 + 832) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1ABF34060;
  *(v95 + 32) = sub_1ABF23C04();
  *(v95 + 40) = v96;
  strcpy((v95 + 48), "_$!<Family>!$_");
  *(v95 + 63) = -18;
  *(v0 + 840) = v95;
  *(v0 + 848) = sub_1ABF23C04();
  *(v0 + 856) = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1ABF34060;
  *(v98 + 32) = sub_1ABF23C04();
  *(v98 + 40) = v99;
  strcpy((v98 + 48), "_$!<Family>!$_");
  *(v98 + 63) = -18;
  *(v0 + 864) = v98;
  *(v0 + 872) = sub_1ABF23C04();
  *(v0 + 880) = v100;
  *(v0 + 888) = &unk_1F208F480;
  *(v0 + 896) = sub_1ABF23C04();
  *(v0 + 904) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1ABF34060;
  *(v102 + 32) = sub_1ABF23C04();
  *(v102 + 40) = v103;
  strcpy((v102 + 48), "_$!<Family>!$_");
  *(v102 + 63) = -18;
  *(v0 + 912) = v102;
  *(v0 + 920) = sub_1ABF23C04();
  *(v0 + 928) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1ABF34060;
  *(v105 + 32) = sub_1ABF23C04();
  *(v105 + 40) = v106;
  strcpy((v105 + 48), "_$!<Family>!$_");
  *(v105 + 63) = -18;
  *(v0 + 936) = v105;
  *(v0 + 944) = sub_1ABF23C04();
  *(v0 + 952) = v107;
  *(v0 + 960) = &unk_1F208F4B0;
  *(v0 + 968) = sub_1ABF23C04();
  *(v0 + 976) = v108;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1ABF34060;
  *(v109 + 32) = sub_1ABF23C04();
  *(v109 + 40) = v110;
  strcpy((v109 + 48), "_$!<Family>!$_");
  *(v109 + 63) = -18;
  *(v0 + 984) = v109;
  *(v0 + 992) = sub_1ABF23C04();
  *(v0 + 1000) = v111;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1ABF34060;
  *(v112 + 32) = sub_1ABF23C04();
  *(v112 + 40) = v113;
  strcpy((v112 + 48), "_$!<Family>!$_");
  *(v112 + 63) = -18;
  *(v0 + 1008) = v112;
  *(v0 + 1016) = sub_1ABF23C04();
  *(v0 + 1024) = v114;
  *(v0 + 1032) = &unk_1F208F4E0;
  *(v0 + 1040) = sub_1ABF23C04();
  *(v0 + 1048) = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1ABF34060;
  *(v116 + 32) = sub_1ABF23C04();
  *(v116 + 40) = v117;
  strcpy((v116 + 48), "_$!<Family>!$_");
  *(v116 + 63) = -18;
  *(v0 + 1056) = v116;
  *(v0 + 1064) = sub_1ABF23C04();
  *(v0 + 1072) = v118;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1ABF34060;
  *(v119 + 32) = sub_1ABF23C04();
  *(v119 + 40) = v120;
  strcpy((v119 + 48), "_$!<Family>!$_");
  *(v119 + 63) = -18;
  *(v0 + 1080) = v119;
  *(v0 + 1088) = sub_1ABF23C04();
  *(v0 + 1096) = v121;
  *(v0 + 1104) = &unk_1F208F510;
  *(v0 + 1112) = sub_1ABF23C04();
  *(v0 + 1120) = v122;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_1ABF34060;
  *(v123 + 32) = sub_1ABF23C04();
  *(v123 + 40) = v124;
  strcpy((v123 + 48), "_$!<Family>!$_");
  *(v123 + 63) = -18;
  *(v0 + 1128) = v123;
  *(v0 + 1136) = sub_1ABF23C04();
  *(v0 + 1144) = v125;
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1ABF34060;
  *(v126 + 32) = sub_1ABF23C04();
  *(v126 + 40) = v127;
  strcpy((v126 + 48), "_$!<Family>!$_");
  *(v126 + 63) = -18;
  *(v0 + 1152) = v126;
  *(v0 + 1160) = sub_1ABF23C04();
  *(v0 + 1168) = v128;
  *(v0 + 1176) = &unk_1F208F540;
  *(v0 + 1184) = sub_1ABF23C04();
  *(v0 + 1192) = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1ABF34060;
  *(v130 + 32) = sub_1ABF23C04();
  *(v130 + 40) = v131;
  strcpy((v130 + 48), "_$!<Family>!$_");
  *(v130 + 63) = -18;
  *(v0 + 1200) = v130;
  *(v0 + 1208) = sub_1ABF23C04();
  *(v0 + 1216) = v132;
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_1ABF34060;
  *(v133 + 32) = sub_1ABF23C04();
  *(v133 + 40) = v134;
  strcpy((v133 + 48), "_$!<Family>!$_");
  *(v133 + 63) = -18;
  *(v0 + 1224) = v133;
  *(v0 + 1232) = sub_1ABF23C04();
  *(v0 + 1240) = v135;
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1ABF34060;
  *(v136 + 32) = sub_1ABF23C04();
  *(v136 + 40) = v137;
  strcpy((v136 + 48), "_$!<Family>!$_");
  *(v136 + 63) = -18;
  *(v0 + 1248) = v136;
  *(v0 + 1256) = sub_1ABF23C04();
  *(v0 + 1264) = v138;
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_1ABF34060;
  *(v139 + 32) = sub_1ABF23C04();
  *(v139 + 40) = v140;
  strcpy((v139 + 48), "_$!<Family>!$_");
  *(v139 + 63) = -18;
  *(v0 + 1272) = v139;
  *(v0 + 1280) = sub_1ABF23C04();
  *(v0 + 1288) = v141;
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1ABF34060;
  *(v142 + 32) = sub_1ABF23C04();
  *(v142 + 40) = v143;
  strcpy((v142 + 48), "_$!<Family>!$_");
  *(v142 + 63) = -18;
  *(v0 + 1296) = v142;
  *(v0 + 1304) = sub_1ABF23C04();
  *(v0 + 1312) = v144;
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_1ABF34060;
  *(v145 + 32) = sub_1ABF23C04();
  *(v145 + 40) = v146;
  strcpy((v145 + 48), "_$!<Family>!$_");
  *(v145 + 63) = -18;
  *(v0 + 1320) = v145;
  *(v0 + 1328) = sub_1ABF23C04();
  *(v0 + 1336) = v147;
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_1ABF34060;
  *(v148 + 32) = sub_1ABF23C04();
  *(v148 + 40) = v149;
  strcpy((v148 + 48), "_$!<Family>!$_");
  *(v148 + 63) = -18;
  *(v0 + 1344) = v148;
  *(v0 + 1352) = sub_1ABF23C04();
  *(v0 + 1360) = v150;
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_1ABF34060;
  *(v151 + 32) = sub_1ABF23C04();
  *(v151 + 40) = v152;
  strcpy((v151 + 48), "_$!<Family>!$_");
  *(v151 + 63) = -18;
  *(v0 + 1368) = v151;
  *(v0 + 1376) = sub_1ABF23C04();
  *(v0 + 1384) = v153;
  *(v0 + 1392) = &unk_1F208F570;
  *(v0 + 1400) = sub_1ABF23C04();
  *(v0 + 1408) = v154;
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_1ABF34060;
  *(v155 + 32) = sub_1ABF23C04();
  *(v155 + 40) = v156;
  strcpy((v155 + 48), "_$!<Family>!$_");
  *(v155 + 63) = -18;
  *(v0 + 1416) = v155;
  *(v0 + 1424) = sub_1ABF23C04();
  *(v0 + 1432) = v157;
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1ABF34060;
  *(v158 + 32) = sub_1ABF23C04();
  *(v158 + 40) = v159;
  strcpy((v158 + 48), "_$!<Family>!$_");
  *(v158 + 63) = -18;
  *(v0 + 1440) = v158;
  *(v0 + 1448) = sub_1ABF23C04();
  *(v0 + 1456) = v160;
  *(v0 + 1464) = &unk_1F208F5A0;
  *(v0 + 1472) = sub_1ABF23C04();
  *(v0 + 1480) = v161;
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_1ABF34060;
  *(v162 + 32) = sub_1ABF23C04();
  *(v162 + 40) = v163;
  strcpy((v162 + 48), "_$!<Family>!$_");
  *(v162 + 63) = -18;
  *(v0 + 1488) = v162;
  *(v0 + 1496) = sub_1ABF23C04();
  *(v0 + 1504) = v164;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_1ABF34060;
  *(v165 + 32) = sub_1ABF23C04();
  *(v165 + 40) = v166;
  strcpy((v165 + 48), "_$!<Family>!$_");
  *(v165 + 63) = -18;
  *(v0 + 1512) = v165;
  *(v0 + 1520) = sub_1ABF23C04();
  *(v0 + 1528) = v167;
  *(v0 + 1536) = &unk_1F208F5D0;
  *(v0 + 1544) = sub_1ABF23C04();
  *(v0 + 1552) = v168;
  v169 = swift_allocObject();
  *(v169 + 16) = xmmword_1ABF34060;
  *(v169 + 32) = sub_1ABF23C04();
  *(v169 + 40) = v170;
  strcpy((v169 + 48), "_$!<Family>!$_");
  *(v169 + 63) = -18;
  *(v0 + 1560) = v169;
  *(v0 + 1568) = sub_1ABF23C04();
  *(v0 + 1576) = v171;
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1ABF34060;
  *(v172 + 32) = sub_1ABF23C04();
  *(v172 + 40) = v173;
  strcpy((v172 + 48), "_$!<Family>!$_");
  *(v172 + 63) = -18;
  *(v0 + 1584) = v172;
  *(v0 + 1592) = sub_1ABF23C04();
  *(v0 + 1600) = v174;
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_1ABF34060;
  *(v175 + 32) = sub_1ABF23C04();
  *(v175 + 40) = v176;
  strcpy((v175 + 48), "_$!<Family>!$_");
  *(v175 + 63) = -18;
  *(v0 + 1608) = v175;
  *(v0 + 1616) = sub_1ABF23C04();
  *(v0 + 1624) = v177;
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_1ABF34060;
  *(v178 + 32) = sub_1ABF23C04();
  *(v178 + 40) = v179;
  strcpy((v178 + 48), "_$!<Family>!$_");
  *(v178 + 63) = -18;
  *(v0 + 1632) = v178;
  *(v0 + 1640) = sub_1ABF23C04();
  *(v0 + 1648) = v180;
  *(v0 + 1656) = &unk_1F208F600;
  *(v0 + 1664) = sub_1ABF23C04();
  *(v0 + 1672) = v181;
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_1ABF34060;
  *(v182 + 32) = sub_1ABF23C04();
  *(v182 + 40) = v183;
  strcpy((v182 + 48), "_$!<Family>!$_");
  *(v182 + 63) = -18;
  *(v0 + 1680) = v182;
  *(v0 + 1688) = sub_1ABF23C04();
  *(v0 + 1696) = v184;
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_1ABF34060;
  *(v185 + 32) = sub_1ABF23C04();
  *(v185 + 40) = v186;
  strcpy((v185 + 48), "_$!<Family>!$_");
  *(v185 + 63) = -18;
  *(v0 + 1704) = v185;
  *(v0 + 1712) = sub_1ABF23C04();
  *(v0 + 1720) = v187;
  *(v0 + 1728) = &unk_1F208F630;
  *(v0 + 1736) = sub_1ABF23C04();
  *(v0 + 1744) = v188;
  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_1ABF34060;
  *(v189 + 32) = sub_1ABF23C04();
  *(v189 + 40) = v190;
  strcpy((v189 + 48), "_$!<Family>!$_");
  *(v189 + 63) = -18;
  *(v0 + 1752) = v189;
  *(v0 + 1760) = sub_1ABF23C04();
  *(v0 + 1768) = v191;
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_1ABF34060;
  *(v192 + 32) = sub_1ABF23C04();
  *(v192 + 40) = v193;
  strcpy((v192 + 48), "_$!<Family>!$_");
  *(v192 + 63) = -18;
  *(v0 + 1776) = v192;
  *(v0 + 1784) = sub_1ABF23C04();
  *(v0 + 1792) = v194;
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_1ABF34740;
  *(v195 + 32) = sub_1ABF23C04();
  *(v195 + 40) = v196;
  *(v0 + 1800) = v195;
  *(v0 + 1808) = sub_1ABF23C04();
  *(v0 + 1816) = v197;
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_1ABF34740;
  *(v198 + 32) = sub_1ABF23C04();
  *(v198 + 40) = v199;
  *(v0 + 1824) = v198;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  result = sub_1ABF239C4();
  off_1EB4D32A0 = result;
  return result;
}

uint64_t static ContactFinder.relationExpansionMap.getter()
{
  if (qword_1EB4D0260 != -1)
  {
    sub_1ABA9A2E4();
    swift_once();
  }
}

unint64_t static ContactFinder.expand(relationships:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v60 = v1;
    v54 = v1 + 32;
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = 0x1E695C000uLL;
    v53 = v1 & 0xC000000000000001;
    v51 = v2;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x1AC5AA170](v4, v60);
      }

      else
      {
        if (v4 >= *(v55 + 16))
        {
          goto LABEL_56;
        }

        v7 = *(v54 + 8 * v4);
      }

      v8 = v7;
      v9 = __OFADD__(v4++, 1);
      if (v9)
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
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v2 = sub_1ABF24CA4();
        goto LABEL_3;
      }

      if (qword_1EB4D0260 != -1)
      {
        sub_1ABA9A2E4();
        swift_once();
      }

      v10 = off_1EB4D32A0;
      v11 = [v8 label];
      if (v11)
      {
        v18 = v11;
        v19 = sub_1ABF23C04();
        v1 = v20;
      }

      else
      {
        v19 = 0;
        v1 = 0xE000000000000000;
      }

      if (!v10[2])
      {

        goto LABEL_50;
      }

      v21 = sub_1ABA94FC8(v19, v1, v12, v13, v14, v15, v16, v17, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_50;
      }

      v61 = v4;
      v24 = *(v10[7] + 8 * v21);
      v25 = *(v24 + 16);
      v59 = v8;
      if (v25)
      {
        v57 = v3;
        v62[0] = MEMORY[0x1E69E7CC0];

        sub_1ABF24BC4();
        v26 = (v24 + 40);
        do
        {
          v27 = *(v26 - 1);
          v28 = *v26;
          swift_bridgeObjectRetain_n();
          v29 = [v8 value];
          v30 = objc_allocWithZone(*(v6 + 3808));
          sub_1ABB4DA60(v27, v28, v29);

          sub_1ABF24B94();
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v26 += 2;
          --v25;
        }

        while (v25);

        v31 = v62[0];
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v1 = v31 >> 62;
      v4 = v61;
      if (v31 >> 62)
      {
        v32 = sub_1ABF24CA4();
      }

      else
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v33 = v3 >> 62;
      if (v3 >> 62)
      {
        v34 = sub_1ABF24CA4();
      }

      else
      {
        v34 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 = v34 + v32;
      if (__OFADD__(v34, v32))
      {
        goto LABEL_57;
      }

      v58 = v32;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v33)
      {
        goto LABEL_33;
      }

      v36 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v35 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_34;
      }

LABEL_35:
      v37 = *(v36 + 16);
      v38 = (*(v36 + 24) >> 1) - v37;
      v39 = v36 + 8 * v37;
      v56 = v36;
      if (v1)
      {
        v41 = sub_1ABF24CA4();
        if (v41)
        {
          v1 = v41;
          v42 = sub_1ABF24CA4();
          if (v38 < v42)
          {
            goto LABEL_60;
          }

          if (v1 < 1)
          {
            goto LABEL_62;
          }

          v52 = v42;
          v57 = v3;
          v43 = v39 + 32;
          sub_1ABA8F090();
          sub_1ABB4F3B4(&qword_1EB4D3358, &qword_1EB4D3350, &qword_1ABF3C018);
          for (i = 0; i != v1; ++i)
          {
            sub_1ABAD219C(&qword_1EB4D3350, &qword_1ABF3C018);
            v45 = sub_1ABB4E8DC(v62, i, v31);
            v47 = sub_1ABA885B0(v45, v46);
            (v3)(v62, 0);
            *(v43 + 8 * i) = v47;
          }

          v2 = v51;
          v40 = v52;
          v4 = v61;
          v6 = 0x1E695C000;
          goto LABEL_45;
        }
      }

      else
      {
        v1 = v31 & 0xFFFFFFFFFFFFFF8;
        v40 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v40)
        {
          if (v38 < v40)
          {
            goto LABEL_61;
          }

          sub_1ABAD219C(&qword_1EB4D3328, &unk_1ABF3BFF8);
          swift_arrayInitWithCopy();
LABEL_45:

          v8 = v59;
          v5 = v53;
          if (v40 < v58)
          {
            goto LABEL_58;
          }

          if (v40 > 0)
          {
            v48 = *(v56 + 16);
            v9 = __OFADD__(v48, v40);
            v49 = v48 + v40;
            if (v9)
            {
              goto LABEL_59;
            }

            *(v56 + 16) = v49;
          }

          goto LABEL_50;
        }
      }

      v8 = v59;
      v5 = v53;
      if (v58 > 0)
      {
        goto LABEL_58;
      }

LABEL_50:

      if (v4 == v2)
      {
        return v3;
      }
    }

    if (v33)
    {
LABEL_33:
      sub_1ABF24CA4();
    }

LABEL_34:
    v3 = sub_1ABF24B24();
    v36 = v3 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_35;
  }

  return v3;
}

uint64_t sub_1ABB4B8C8(uint64_t a1, uint64_t a2)
{
  v158 = a2;
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v2 + 16);
  v170 = v2;
  if (v3)
  {
    v156 = *(a1 + 24);

    v4 = 0;
    v5 = v3 - 1;
    v160 = MEMORY[0x1E69E7CC8];
    v6 = 32;
    v168 = v3 - 1;
    while (1)
    {
      if (v4 >= v3)
      {
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      memcpy(__dst, (v2 + v6), 0x58uLL);
      v7 = __dst[8];
      if (__dst[8])
      {
        v8 = __dst[6];
        if (__dst[6])
        {
          break;
        }
      }

      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v17 = sub_1ABF237F4();
      sub_1ABA7AA24(v17, qword_1ED871B20);
      v18 = sub_1ABF237D4();
      v19 = sub_1ABF24654();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1ABA78000, v18, v19, "No relationship predicate for this triple. Skipping", v20, 2u);
        MEMORY[0x1AC5AB8B0](v20, -1, -1);
      }

LABEL_46:
      if (v5 == v4)
      {

        v59 = v160;
        goto LABEL_50;
      }

      v3 = *(v2 + 16);
      v6 += 88;
      ++v4;
    }

    v9 = __dst[7];
    v10 = __dst[5];
    sub_1ABA9A118(__dst, &v174);

    v11 = objc_autoreleasePoolPush();
    v174 = v10;
    v175 = v8;
    sub_1ABAE28EC();
    v12 = sub_1ABF24884();

    v13 = v12[2];
    if (v13 > 1)
    {
      v179 = v12[4];
      v165 = v4;
      v21 = v11;
      v22 = v9;
      v23 = v6;
      v24 = v12[5];
      v174 = v12;
      v175 = v12 + 4;
      v176 = 1;
      v177 = (2 * v13) | 1;

      sub_1ABAD219C(&qword_1EB4D33E0, &unk_1ABF3C180);
      v14 = v24;
      v6 = v23;
      v9 = v22;
      v11 = v21;
      v4 = v165;
      sub_1ABB4F3B4(&qword_1EB4D33E8, &qword_1EB4D33E0, &unk_1ABF3C180);
      v15 = sub_1ABF23B54();
      v16 = v25;
    }

    else
    {

      v179 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    objc_autoreleasePoolPop(v11);
    if (!v14)
    {
      sub_1ABA9A174(__dst);

      if (qword_1ED871B18 == -1)
      {
LABEL_114:
        v142 = sub_1ABF237F4();
        sub_1ABA7AA24(v142, qword_1ED871B20);
        v143 = sub_1ABF237D4();
        v144 = sub_1ABF24664();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&dword_1ABA78000, v143, v144, "Relationship ID on asset does not conform to ID_LOCALE expectation.", v145, 2u);
          MEMORY[0x1AC5AB8B0](v145, -1, -1);
        }

        sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
        v138 = sub_1ABF239C4();

        return v138;
      }

LABEL_128:
      swift_once();
      goto LABEL_114;
    }

    v26 = v15 == 0x6361746E6F434E43 && v16 == 0xE900000000000074;
    v2 = v170;
    if (!v26 && (sub_1ABF25054() & 1) == 0)
    {
      goto LABEL_33;
    }

    if (v9 != 859001680 || v7 != 0xE400000000000000)
    {
      if ((sub_1ABF25054() & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v9 == 959992656 && v7 == 0xE400000000000000)
      {
        goto LABEL_33;
      }
    }

    if (sub_1ABF25054())
    {
LABEL_33:

      goto LABEL_39;
    }

LABEL_34:
    v30 = __dst[1];
    v29 = __dst[2];

    sub_1ABB130E0();
    v32 = v31;

    if (v32)
    {

      v33 = v160;
      swift_isUniquelyReferenced_nonNull_native();
      v174 = v160;
      v40 = sub_1ABA94FC8(v179, v14, v34, v35, v36, v37, v38, v39, v150, v151, v154, v156, v158, v160, v30, v168, v170, 95);
      if (__OFADD__(*(v33 + 16), (v41 & 1) == 0))
      {
        goto LABEL_124;
      }

      v42 = v40;
      v43 = v41;
      sub_1ABAD219C(&unk_1EB4D33F0, &qword_1ABF35190);
      if (sub_1ABF24C64())
      {
        v50 = sub_1ABA94FC8(v179, v14, v44, v45, v46, v47, v48, v49, v150, v151, v154, v156, v158, v161, v166, v168, v170, v171);
        if ((v43 & 1) != (v51 & 1))
        {
LABEL_129:
          result = sub_1ABF25104();
          __break(1u);
          return result;
        }

        v42 = v50;
      }

      v52 = v174;
      v160 = v174;
      if (v43)
      {
        v53 = (v174[7] + 16 * v42);
        *v53 = v166;
        v53[1] = v29;
      }

      else
      {
        v174[(v42 >> 6) + 8] |= 1 << v42;
        v54 = (v52[6] + 16 * v42);
        *v54 = v179;
        v54[1] = v14;
        v55 = (v52[7] + 16 * v42);
        *v55 = v166;
        v55[1] = v29;
        v56 = v52[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_125;
        }

        v52[2] = v58;
      }

      sub_1ABA9A174(__dst);
      v2 = v170;
      goto LABEL_45;
    }

LABEL_39:

    sub_1ABA9A174(__dst);
LABEL_45:
    v5 = v168;
    goto LABEL_46;
  }

  v59 = MEMORY[0x1E69E7CC8];
LABEL_50:
  v60 = v59;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  __dst[0] = v60;
  sub_1ABAFB0A4(25965, 0xE200000000000000, 0x3039393633323351, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v157 = __dst[0];
  v62 = sub_1ABB4D584();
  v63 = v62;
  v64 = *(v2 + 16);
  if (!v64)
  {

    v139 = 0;
    v138 = MEMORY[0x1E69E7CC8];
    goto LABEL_110;
  }

  v169 = v2 + 32;
  v179 = v62 + 56;

  v152 = 0;
  v65 = 0;
  v155 = MEMORY[0x1E69E7CC8];
  v66 = v64;
  v167 = v63;
  v159 = v64;
  while (1)
  {
    if (v65 >= v66)
    {
      goto LABEL_123;
    }

    memcpy(__dst, (v169 + 88 * v65), 0x58uLL);
    v67 = __dst[8];
    if (!__dst[8] || (v68 = __dst[6]) == 0)
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v77 = sub_1ABF237F4();
      sub_1ABA7AA24(v77, qword_1ED871B20);
      v78 = sub_1ABF237D4();
      v79 = sub_1ABF24654();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1ABA78000, v78, v79, "No relationship predicate for this triple. Skipping", v80, 2u);
        MEMORY[0x1AC5AB8B0](v80, -1, -1);
      }

      goto LABEL_88;
    }

    v69 = __dst[7];
    v70 = __dst[5];
    sub_1ABA9A118(__dst, &v174);

    v71 = objc_autoreleasePoolPush();
    v174 = v70;
    v175 = v68;
    sub_1ABAE28EC();
    v72 = sub_1ABF24884();

    v73 = v72[2];
    if (v73 > 1)
    {
      v162 = v72[4];
      v74 = v72[5];
      v174 = v72;
      v175 = v72 + 4;
      v176 = 1;
      v177 = (2 * v73) | 1;

      sub_1ABAD219C(&qword_1EB4D33E0, &unk_1ABF3C180);
      sub_1ABB4F3B4(&qword_1EB4D33E8, &qword_1EB4D33E0, &unk_1ABF3C180);
      v75 = sub_1ABF23B54();
      v76 = v81;
    }

    else
    {

      v162 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
    }

    objc_autoreleasePoolPop(v71);
    if (!v74)
    {
      break;
    }

    if (*(v167 + 16))
    {
      sub_1ABF25234();
      sub_1ABF23D34();
      v82 = sub_1ABF25294();
      v83 = ~(-1 << *(v167 + 32));
      do
      {
        v84 = v82 & v83;
        if (((*(v179 + (((v82 & v83) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v82 & v83)) & 1) == 0)
        {
          goto LABEL_86;
        }

        v85 = (*(v167 + 48) + 16 * v84);
        if (*v85 == v75 && v76 == v85[1])
        {
          break;
        }

        v87 = sub_1ABF25054();
        v82 = v84 + 1;
      }

      while ((v87 & 1) == 0);
      v88 = v69 == 859001680 && v67 == 0xE400000000000000;
      if (v88 || ((v89 = sub_1ABF25054(), v69 == 959992656) ? (v90 = v67 == 0xE400000000000000) : (v90 = 0), !v90 ? (v91 = 0) : (v91 = 1), (v89 & 1) != 0 || (v91 & 1) != 0))
      {

        v2 = v170;
      }

      else
      {
        v92 = sub_1ABF25054();

        v2 = v170;
        if ((v92 & 1) == 0)
        {

          sub_1ABA9A174(__dst);
          goto LABEL_87;
        }
      }

      v64 = v159;
      if (!*(v157 + 16))
      {
        sub_1ABA9A174(__dst);

        goto LABEL_88;
      }

      v99 = v157;
      v100 = sub_1ABA94FC8(v162, v74, v93, v94, v95, v96, v97, v98, v150, v152, v155, v157, v159, v162, v167, v169, v170, 95);
      v102 = v101;

      if ((v102 & 1) == 0)
      {
        sub_1ABA9A174(__dst);
        goto LABEL_88;
      }

      v103 = __dst[2];
      v163 = __dst[1];
      v104 = (*(v99 + 56) + 16 * v100);
      v106 = *v104;
      v105 = v104[1];

      sub_1ABAC9398(v152, 0);
      v107 = v155;
      swift_isUniquelyReferenced_nonNull_native();
      v174 = v155;
      v114 = sub_1ABA94FC8(v106, v105, v108, v109, v110, v111, v112, v113, v150, v152, v155, v157, v159, v163, v167, v169, v170, v172);
      if (__OFADD__(v107[2], (v115 & 1) == 0))
      {
        goto LABEL_126;
      }

      v116 = v114;
      v117 = v115;
      sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
      v118 = sub_1ABF24C64();
      v155 = v174;
      if (v118)
      {
        v125 = sub_1ABA94FC8(v106, v105, v119, v120, v121, v122, v123, v124, v150, v153, v174, v157, v159, v164, v167, v169, v170, v173);
        v64 = v159;
        if ((v117 & 1) != (v126 & 1))
        {
          goto LABEL_129;
        }

        v116 = v125;
        if ((v117 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v64 = v159;
        if ((v117 & 1) == 0)
        {
LABEL_97:
          v155[(v116 >> 6) + 8] |= 1 << v116;
          v127 = (v155[6] + 16 * v116);
          *v127 = v106;
          v127[1] = v105;
          *(v155[7] + 8 * v116) = MEMORY[0x1E69E7CC0];
          v128 = v155[2];
          v57 = __OFADD__(v128, 1);
          v129 = v128 + 1;
          if (v57)
          {
            goto LABEL_127;
          }

          v130 = v155;
          v155[2] = v129;
          goto LABEL_103;
        }
      }

      v130 = v155;
LABEL_103:
      v131 = v130[7];
      v132 = *(v131 + 8 * v116);
      v133 = swift_isUniquelyReferenced_nonNull_native();
      *(v131 + 8 * v116) = v132;
      if ((v133 & 1) == 0)
      {
        sub_1ABAAA4F4();
        v132 = v136;
        *(v131 + 8 * v116) = v136;
      }

      v134 = *(v132 + 16);
      if (v134 >= *(v132 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v132 = v137;
        *(v131 + 8 * v116) = v137;
      }

      *(v132 + 16) = v134 + 1;
      v135 = v132 + 16 * v134;
      *(v135 + 32) = v164;
      *(v135 + 40) = v103;
      sub_1ABA9A174(__dst);
      v152 = sub_1ABB4F3FC;
      v2 = v170;
      goto LABEL_88;
    }

LABEL_86:

    sub_1ABA9A174(__dst);
    v2 = v170;
LABEL_87:
    v64 = v159;
LABEL_88:
    if (++v65 == v64)
    {

      v139 = v152;
      v138 = v155;
LABEL_110:

      v140 = v139;
      goto LABEL_111;
    }

    v66 = *(v2 + 16);
  }

  sub_1ABA9A174(__dst);

  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v146 = sub_1ABF237F4();
  sub_1ABA7AA24(v146, qword_1ED871B20);
  v147 = sub_1ABF237D4();
  v148 = sub_1ABF24664();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    *v149 = 0;
    _os_log_impl(&dword_1ABA78000, v147, v148, "Relationship ID on asset does not conform to ID_LOCALE expectation.", v149, 2u);
    MEMORY[0x1AC5AB8B0](v149, -1, -1);
  }

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  v138 = sub_1ABF239C4();

  v140 = v152;
LABEL_111:
  sub_1ABAC9398(v140, 0);
  return v138;
}

void *sub_1ABB4C700(uint64_t a1, uint64_t a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1ABF3BF70;
  v4 = *MEMORY[0x1E695C258];
  v5 = *MEMORY[0x1E695C240];
  *(v3 + 32) = *MEMORY[0x1E695C258];
  *(v3 + 40) = v5;
  v6 = *MEMORY[0x1E695C2F0];
  v7 = *MEMORY[0x1E695C230];
  *(v3 + 48) = *MEMORY[0x1E695C2F0];
  *(v3 + 56) = v7;
  v8 = *MEMORY[0x1E695C390];
  v9 = *MEMORY[0x1E695C310];
  *(v3 + 64) = *MEMORY[0x1E695C390];
  *(v3 + 72) = v9;
  v10 = *MEMORY[0x1E695C208];
  *(v3 + 80) = *MEMORY[0x1E695C208];
  v11 = objc_opt_self();
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = sub_1ABF23BD4();
  v20 = [v11 predicateForContactsMatchingName_];

  sub_1ABAD219C(&qword_1EB4D3320, &qword_1ABF3BFF0);
  v21 = sub_1ABF240C4();

  v28[0] = 0;
  v22 = [a3 unifiedContactsMatchingPredicate:v20 keysToFetch:v21 error:v28];

  v23 = v28[0];
  if (v22)
  {
    sub_1ABAFF390(0, &unk_1EB4D3340, 0x1E695CD58);
    sub_1ABA89740();
    v21 = sub_1ABF240D4();
    v24 = v23;
  }

  else
  {
    v25 = v28[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v21;
}

id sub_1ABB4C92C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1ABF21C54();
  v4 = [v2 initWithPhotoLibraryURL_];

  v5 = sub_1ABF21CF4();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1ABB4C9C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 localIdentifier];
  v9 = sub_1ABF23C04();
  v11 = v10;

  v12 = sub_1ABB22FFC(a1, &selRef_personUri);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(a4 + 16);
    sub_1ABAFB0A4(v9, v11, v14, v15, isUniquelyReferenced_nonNull_native);
    *(a4 + 16) = v82;

    swift_endAccess();
  }

  v17 = sub_1ABB22FFC(a1, &selRef_displayName);
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

LABEL_15:
    v46 = 0;
    goto LABEL_16;
  }

  v20 = sub_1ABF23C84();
  v22 = v21;

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a5 + 16);
  *(a5 + 16) = 0x8000000000000000;
  v30 = sub_1ABA94FC8(v20, v22, v24, v25, v26, v27, v28, v29, v78, v9, v23, v85, v87, v89, v91, v93, v95, v97);
  if (__OFADD__(*(v23 + 16), (v31 & 1) == 0))
  {
    __break(1u);
    goto LABEL_30;
  }

  v32 = v30;
  v33 = v31;
  sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
  if (sub_1ABF24C64())
  {
    v40 = sub_1ABA94FC8(v20, v22, v34, v35, v36, v37, v38, v39, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97);
    if ((v33 & 1) != (v41 & 1))
    {
      goto LABEL_31;
    }

    v32 = v40;
  }

  *(a5 + 16) = v83;
  if ((v33 & 1) == 0)
  {
    sub_1ABAB7E74();
  }

  v42 = *(v83 + 56) + 8 * v32;
  sub_1ABB4DFB0(sub_1ABAAA4F4);
  v43 = *(*v42 + 16);
  sub_1ABB4E3B4(v43, sub_1ABAAA4F4);
  v44 = *v42;
  *(v44 + 16) = v43 + 1;
  v45 = v44 + 16 * v43;
  v9 = v80;
  *(v45 + 32) = v80;
  *(v45 + 40) = v11;
  swift_endAccess();

  v46 = sub_1ABB4F3FC;
LABEL_16:
  v47 = sub_1ABB22FFC(a1, &selRef_name);
  v49 = v48;
  if (!v48)
  {
LABEL_28:

    sub_1ABAC9398(v46, 0);
    return sub_1ABAC9398(v49, 0);
  }

  v50 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v50 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

    v49 = 0;
    goto LABEL_28;
  }

  v51 = sub_1ABF23C84();
  v53 = v52;

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v54 = *(a5 + 16);
  *(a5 + 16) = 0x8000000000000000;
  v61 = sub_1ABA94FC8(v51, v53, v55, v56, v57, v58, v59, v60, v78, v9, v54, v85, v87, v89, v91, v93, v95, v97);
  if (__OFADD__(*(v54 + 16), (v62 & 1) == 0))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v63 = v61;
  v64 = v62;
  sub_1ABAD219C(&qword_1EB4D3338, &unk_1ABF3C008);
  if ((sub_1ABF24C64() & 1) == 0)
  {
LABEL_24:
    *(a5 + 16) = v84;
    if ((v64 & 1) == 0)
    {
      sub_1ABAB7E74();
    }

    v73 = *(v84 + 56) + 8 * v63;
    sub_1ABB4DFB0(sub_1ABAAA4F4);
    v74 = *(*v73 + 16);
    sub_1ABB4E3B4(v74, sub_1ABAAA4F4);
    v75 = *v73;
    *(v75 + 16) = v74 + 1;
    v76 = v75 + 16 * v74;
    *(v76 + 32) = v81;
    *(v76 + 40) = v11;
    swift_endAccess();
    v49 = sub_1ABB4F3FC;
    goto LABEL_28;
  }

  v71 = sub_1ABA94FC8(v51, v53, v65, v66, v67, v68, v69, v70, v79, v81, v84, v86, v88, v90, v92, v94, v96, v98);
  if ((v64 & 1) == (v72 & 1))
  {
    v63 = v71;
    goto LABEL_24;
  }

LABEL_31:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

void sub_1ABB4CE58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1ABB4CEDC(uint64_t a1, uint64_t a2, void *a3)
{
  v79 = *MEMORY[0x1E69E9840];
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABF3BFD0;
  v5 = *MEMORY[0x1E695C240];
  v6 = *MEMORY[0x1E695C2F0];
  *(v4 + 32) = *MEMORY[0x1E695C240];
  *(v4 + 40) = v6;
  v7 = *MEMORY[0x1E695C230];
  v8 = *MEMORY[0x1E695C390];
  *(v4 + 48) = *MEMORY[0x1E695C230];
  *(v4 + 56) = v8;
  v9 = *MEMORY[0x1E695C310];
  v10 = *MEMORY[0x1E695C208];
  *(v4 + 64) = *MEMORY[0x1E695C310];
  *(v4 + 72) = v10;
  v72 = objc_opt_self();
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1ABF34740;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;

  v18 = sub_1ABF240C4();

  v19 = [v72 predicateForContactsWithIdentifiers_];

  sub_1ABAD219C(&qword_1EB4D3320, &qword_1ABF3BFF0);
  v20 = sub_1ABF240C4();

  v77 = 0;
  v21 = [a3 unifiedContactsMatchingPredicate:v19 keysToFetch:v20 error:&v77];

  v22 = v77;
  if (v21)
  {
    sub_1ABAFF390(0, &unk_1EB4D3340, 0x1E695CD58);
    inited = sub_1ABF240D4();
    v24 = v22;

    if (sub_1ABAAB7F4(inited))
    {
      sub_1ABAAB7C0(0, (inited & 0xC000000000000001) == 0, inited);
      if ((inited & 0xC000000000000001) != 0)
      {
LABEL_32:
        v25 = MEMORY[0x1AC5AA170](0, inited);
      }

      else
      {
        v25 = *(inited + 32);
      }

      v26 = v25;

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF3BF90;
      v27 = [v26 givenName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      *(inited + 32) = v6;
      *(inited + 40) = v22;
      v28 = [v26 middleName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      *(inited + 48) = v6;
      *(inited + 56) = v22;
      v29 = [v26 familyName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      *(inited + 64) = v6;
      *(inited + 72) = v22;
      v30 = [v26 givenName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      v77 = v6;
      v78 = v22;

      MEMORY[0x1AC5A9410](32, 0xE100000000000000);

      v32 = v77;
      v31 = v78;
      v33 = [v26 familyName];
      v34 = sub_1ABF23C04();
      v36 = v35;

      v77 = v32;
      v78 = v31;

      v6 = &v77;
      MEMORY[0x1AC5A9410](v34, v36);

      v37 = v78;
      *(inited + 80) = v77;
      *(inited + 88) = v37;
      v38 = [v26 previousFamilyName];
      sub_1ABF23C04();
      sub_1ABA96C10();
      *(inited + 96) = &v77;
      *(inited + 104) = v34;
      v76 = v26;
      v39 = [v26 nickname];
      sub_1ABF23C04();
      sub_1ABA96C10();
      v40 = 0;
      *(inited + 112) = &v77;
      *(inited + 120) = v34;
      v22 = MEMORY[0x1E69E7CC0];
LABEL_6:
      v41 = (inited + 40 + 16 * v40);
      while (v40 != 6)
      {
        if (v40 > 5)
        {
          __break(1u);
          goto LABEL_32;
        }

        ++v40;
        v42 = *(v41 - 1);
        v43 = *v41;
        v41 += 2;
        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (v44)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v6 = &v77;
            v46 = sub_1ABA83F84();
            sub_1ABADDBD4(v46, v47, v48);
            v22 = v77;
          }

          v50 = v22[2];
          v49 = v22[3];
          if (v50 >= v49 >> 1)
          {
            v52 = sub_1ABA7BBEC(v49);
            v6 = &v77;
            sub_1ABADDBD4(v52, v50 + 1, 1);
            v22 = v77;
          }

          v22[2] = (v50 + 1);
          v51 = &v22[2 * v50];
          v51[4] = v42;
          v51[5] = v43;
          goto LABEL_6;
        }
      }

      swift_setDeallocating();
      sub_1ABB4DB5C();
      sub_1ABE8AE5C(v22);
      sub_1ABA90630();
      v4 = sub_1ABB45668(v53);
      v54 = [v76 emailAddresses];
      sub_1ABAD219C(&qword_1EB4D3328, &unk_1ABF3BFF8);
      v55 = sub_1ABF240D4();

      v56 = sub_1ABAAB7F4(v55);
      if (v56)
      {
        v57 = v56;
        v74 = v4;
        v77 = MEMORY[0x1E69E7CC0];
        sub_1ABADDBD4(0, v56 & ~(v56 >> 63), 0);
        if (v57 < 0)
        {
          __break(1u);
        }

        v58 = 0;
        v59 = v77;
        do
        {
          if ((v55 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x1AC5AA170](v58, v55);
          }

          else
          {
            v60 = *(v55 + 8 * v58 + 32);
          }

          v61 = v60;
          v62 = [v60 value];
          v63 = sub_1ABF23C64();
          v65 = v64;

          v77 = v59;
          v67 = v59[2];
          v66 = v59[3];
          if (v67 >= v66 >> 1)
          {
            v69 = sub_1ABA7BBEC(v66);
            sub_1ABADDBD4(v69, v67 + 1, 1);
            v59 = v77;
          }

          ++v58;
          v59[2] = (v67 + 1);
          v68 = &v59[2 * v67];
          v68[4] = v63;
          v68[5] = v65;
        }

        while (v57 != v58);

        return v74;
      }

      else
      {
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v70 = v77;
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1ABB4D584()
{
  v0 = sub_1ABF21F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1ABF21F44();
  v15 = MEMORY[0x1E69E7CD0];
  v4 = sub_1ABF21F24();
  v6 = v5;

  sub_1ABB1840C(v14, v4, v6);

  v7 = objc_autoreleasePoolPush();
  sub_1ABB4D700(v4, v6);

  objc_autoreleasePoolPop(v7);
  v8 = sub_1ABE8AE5C(&unk_1F208F660);

  sub_1ABD91F24(v9, v8);
  v11 = v10;
  (*(v1 + 8))(v3, v0);

  return v11;
}

uint64_t sub_1ABB4D700(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  sub_1ABAE28EC();
  v2 = sub_1ABF24884();
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];

    sub_1ABB1840C(v6, v3, v4);
  }
}

void sub_1ABB4D7BC()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v32 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D33C0, &qword_1ABF3C168);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v30 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = sub_1ABF21814();
  sub_1ABA7BB64();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  v22 = *(v13 + 16);
  v29 = v0;
  v22(v17, v0, v11, v19);
  v27 = sub_1ABB4F304(&qword_1ED8705B8);
  sub_1ABF24934();
  sub_1ABB4F304(&qword_1ED8705C0);
  v28 = v2;
  v23 = sub_1ABF23BB4();
  v31 = v4;
  v24 = *(v4 + 48);
  *v10 = (v23 & 1) == 0;
  if (v23)
  {
    (*(v13 + 32))(&v10[v24], v21, v11);
  }

  else
  {
    (*(v13 + 8))(v21, v11);
    v25 = v28;
    (v22)(&v10[v24], v28, v11);
    (v22)(v17, v25, v11);
    sub_1ABF24944();
  }

  v26 = v30;
  sub_1ABB4F344(v10, v30);
  (*(v13 + 32))(v32, v26 + *(v31 + 48), v11);
  sub_1ABA7BC1C();
}