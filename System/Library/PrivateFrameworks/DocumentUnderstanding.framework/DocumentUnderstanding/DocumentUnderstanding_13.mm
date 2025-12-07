uint64_t sub_232C229EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232C22A64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  sub_232C23018();
  if (v4)
  {
    if (v2 != 2)
    {
      return 0;
    }
  }

  else if (v2 == 2 || ((v3 ^ v2) & 1) != 0)
  {
    return 0;
  }

  sub_232C23018();
  if (v4)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else if (v5 == 2 || ((v6 ^ v5) & 1) != 0)
  {
    return 0;
  }

  sub_232C23018();
  if (v4)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v8 ^ v7) & 1) != 0)
  {
    return 0;
  }

  sub_232C23018();
  if (v4)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else if (v9 == 2 || ((v10 ^ v9) & 1) != 0)
  {
    return 0;
  }

  sub_232C23018();
  if (v4)
  {
    if (v11 == 2)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (v11 == 2 || ((v12 ^ v11) & 1) != 0)
  {
    return 0;
  }

LABEL_32:
  sub_232CE9340();
  sub_232C22FD0(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232C22BC4()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  sub_232C22FD0(&qword_27DDC7E70, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult, &unk_232CFCF50);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C22C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C22FD0(&qword_27DDC7E80, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult, &unk_232CFCFE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C22D18@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC63D0 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5060);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C22DC0(uint64_t a1)
{
  v2 = sub_232C22FD0(&qword_27DDC75A0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult, &unk_232CFD018);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C22E30(uint64_t a1, uint64_t a2)
{
  sub_232C22FD0(&qword_27DDC75A0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult, &unk_232CFD018);

  return sub_232CE9500();
}

uint64_t sub_232C22FD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_232C23028(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

unint64_t sub_232C23064@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_232C23028(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C23090@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232C23038(*v1);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for FoundInEventDataDetectorsOutput(uint64_t a1)
{
  result = qword_2814E0968;
  if (!qword_2814E0968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232C23130(uint64_t a1)
{
  sub_232C232E0(319, &unk_2814E25F0, MEMORY[0x277CC8990]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_232C232E0(319, &qword_2814E25C0, MEMORY[0x277CC9A70]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_232B21E3C(319, &qword_2814DFA10, MEMORY[0x277D837D0]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_232C232E0(319, &qword_2814E25E8, MEMORY[0x277CC9260]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_232C0DFCC(319);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_232B21E3C(319, &qword_27DDC7E88, MEMORY[0x277D83B88]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_232C232E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DUFoundInEventDDType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DUFoundInEventDDType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_232C2349C()
{
  result = qword_27DDC7E90;
  if (!qword_27DDC7E90)
  {
    sub_232B27EEC(&qword_27DDC7E98, qword_232CFD0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7E90);
  }

  return result;
}

unint64_t sub_232C23514()
{
  result = qword_2814E1018[0];
  if (!qword_2814E1018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E1018);
  }

  return result;
}

void sub_232C23568(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  v4 = sub_232CE96D0();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v18 = a2;
    v7 = 0;
    v22 = v4 + 32;
    v8 = 0xE400000000000000;
    v9 = -1;
    v10 = 1162760014;
    v11 = 40;
    v20 = v4;
    v21 = v3;
    v19 = *(v4 + 16);
    while (v7 < *(v5 + 16))
    {
      if (v7)
      {
        v12 = *(v22 + 8 * v7);
        if (v12 == -1)
        {
          goto LABEL_18;
        }

        if (v12 == v9)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_232C237E0();
            v3 = v16;
          }

          if (v7 >= *(v3 + 16))
          {
            goto LABEL_22;
          }

          v13 = (v3 + v11);
          *(v13 - 1) = v10;
          *v13 = v8;
        }

        else
        {

          if (v7 >= *(v21 + 16))
          {
            goto LABEL_23;
          }

          sub_232B48080();
          sub_232C23A48();
          sub_232CEA3B0();
          sub_232C23A48();
          v10 = sub_232CEA3B0();
          v8 = v14;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_232C237E0();
            v3 = v17;
          }

          v6 = v19;
          v5 = v20;
          if (v7 >= *(v3 + 16))
          {
            goto LABEL_24;
          }

          v15 = (v3 + v11);
          *(v15 - 1) = v10;
          *v15 = v8;

          v9 = v12;
        }
      }

      ++v7;
      v11 += 16;
      if (v6 == v7)
      {
LABEL_18:

        a2 = v18;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {

LABEL_20:
    *a2 = v3;
  }
}

uint64_t sub_232C237F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_232CEA610();
  }

  return sub_232CEA540();
}

uint64_t type metadata accessor for FoundInEventModelOutput(uint64_t a1)
{
  result = qword_27DDC7EA0;
  if (!qword_27DDC7EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C238CC(uint64_t a1)
{
  sub_232C23978(319);
  if (v1 <= 0x3F)
  {
    sub_232C239D0(319);
    if (v2 <= 0x3F)
    {
      sub_232CE9700();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C23978(uint64_t a1)
{
  if (!qword_27DDC7EB0)
  {
    type metadata accessor for FoundInEventDataDetectorsOutput(255);
    v1 = sub_232CEA030();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDC7EB0);
    }
  }
}

void sub_232C239D0(uint64_t a1)
{
  if (!qword_27DDC7EB8)
  {
    sub_232B27EEC(&qword_27DDC6908, &unk_232CF64D0);
    v1 = sub_232CE9C70();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDC7EB8);
    }
  }
}

uint64_t sub_232C23B0C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_232C2A520(a1);
  a2(v5, a1);
  return sub_232CEA850();
}

uint64_t sub_232C23B6C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_232C2A520(a1);
  v4 = a2(a1);
  sub_232C2A550(v4, v5, v6);

  return sub_232CEA850();
}

uint64_t sub_232C23BBC(uint64_t a1)
{
  sub_232C2A520(a1);
  MEMORY[0x2383925C0](a1);
  return sub_232CEA850();
}

uint64_t sub_232C23BFC(uint64_t a1)
{
  sub_232C2A520(a1);
  MEMORY[0x2383925C0](0);
  return sub_232CEA850();
}

uint64_t sub_232C23C38(uint64_t a1)
{
  v1 = a1;
  sub_232C2A520(a1);
  MEMORY[0x2383925C0](v1);
  return sub_232CEA850();
}

uint64_t sub_232C23C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_232C2A520(a1);
  v5 = a3(v4);
  sub_232C2A5D4(v5, v6);
  return sub_232CEA850();
}

uint64_t sub_232C23D28(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_232C2A5A0();
  }

  sub_232CE9E40();
}

uint64_t sub_232C23DC0(uint64_t a1, char a2)
{
  sub_232CE9E40();
}

uint64_t sub_232C23E78(uint64_t a1, char a2)
{
  sub_232CE9E40();
}

uint64_t sub_232C23F1C(uint64_t a1, char a2)
{
  sub_232CE9E40();
}

uint64_t sub_232C24038(uint64_t a1, char a2)
{
  sub_232CE9E40();
}

uint64_t sub_232C240B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_232CE9E40();
}

uint64_t sub_232C2410C(uint64_t a1, char a2)
{
  sub_232CE9E40();
}

uint64_t sub_232C241FC(uint64_t a1, char a2)
{
  sub_232CE9E40();
}

uint64_t sub_232C24310(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5 = sub_232CEA820();
  v6 = a4(v5);
  sub_232C2A5D4(v6, v7);
  return sub_232CEA850();
}

uint64_t sub_232C243AC(uint64_t a1, char a2)
{
  sub_232CEA820();
  sub_232CE9E40();

  return sub_232CEA850();
}

uint64_t sub_232C2446C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_232CEA820();
  a3(v6, a2);
  return sub_232CEA850();
}

uint64_t sub_232C244B8(uint64_t a1, uint64_t a2)
{
  sub_232CEA820();
  MEMORY[0x2383925C0](a2);
  return sub_232CEA850();
}

uint64_t sub_232C244FC(uint64_t a1, unsigned __int8 a2)
{
  sub_232CEA820();
  MEMORY[0x2383925C0](a2);
  return sub_232CEA850();
}

uint64_t sub_232C24540(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_232CEA820();
  if (!v2)
  {
    sub_232C2A5A0();
  }

  sub_232CE9E40();

  return sub_232CEA850();
}

uint64_t sub_232C245DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_232CEA820();
  v5 = a3(a2);
  sub_232C2A550(v5, v6, v7);

  return sub_232CEA850();
}

uint64_t sub_232C24630@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v3 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0) + 20);
  if (qword_27DDC63F0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27DDC7ED0;
}

uint64_t sub_232C246B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
  return sub_232CE9330();
}

uint64_t sub_232C24784(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C2A400();

  return MEMORY[0x28217E238](a1, a2, v4);
}

double sub_232C24828@<D0>(void *a1@<X8>)
{
  *a1 = qword_27DDC7EC0;

  return result;
}

uint64_t sub_232C24900(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C2A3AC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

double sub_232C24988@<D0>(void *a1@<X8>)
{
  *a1 = qword_27DDC7EC8;

  return result;
}

uint64_t sub_232C24998()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5078);
  sub_232B135C4(v0, qword_27DDD5078);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "annotationType";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tags";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "range";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C24BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232C2A594();
        sub_232C24C98(v6, v7, v8, v9);
        break;
      case 2:
        sub_232B2F148();
        sub_232CE9460();
        break;
      case 3:
        sub_232B2F148();
        sub_232CE9400();
        break;
      case 4:
        sub_232B2F148();
        sub_232CE94A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C24D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*v4 || (sub_232C2A400(), sub_232C2A588(), result = sub_232CE9570(), !v5))
  {
    if (!*(v4[2] + 16) || (sub_232C2A588(), sub_232C2A594(), result = sub_232CE95A0(), !v5))
    {
      if (!*(v4[3] + 16) || (sub_232C2A588(), sub_232C2A594(), result = sub_232CE9540(), !v5))
      {
        v7 = v4[5];
        v8 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v8 = v4[4] & 0xFFFFFFFFFFFFLL;
        }

        if (!v8 || (sub_232C2A588(), result = sub_232CE95C0(), !v5))
        {
          type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
          sub_232B2F148();
          return sub_232CE9320();
        }
      }
    }
  }

  return result;
}

uint64_t sub_232C24E30(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v4 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v4 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v4 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v4 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v4 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v4 == v5)
  {
LABEL_6:
    if (sub_232B32DC4(a1[2], a2[2]) & 1) != 0 && (sub_232B34EB4())
    {
      v6 = a1[4] == a2[4] && a1[5] == a2[5];
      if (v6 || (sub_232CEA750() & 1) != 0)
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
        sub_232CE9340();
        sub_232C2A508();
        sub_232C2A100(v7, v8, MEMORY[0x277D216D0]);
        return sub_232CE9CF0() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_232C24FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232C25030(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_232C250F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C2A100(&qword_27DDC7F98, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange, &unk_232CFD764);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C25198(uint64_t a1)
{
  v2 = sub_232C2A100(&qword_27DDC7F48, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange, &unk_232CFD79C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C25260(uint64_t a1, uint64_t a2)
{
  sub_232C2A100(&qword_27DDC7F48, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange, &unk_232CFD79C);

  return sub_232CE9500();
}

uint64_t sub_232C252E0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5090);
  sub_232B135C4(v0, qword_27DDD5090);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_232CF8A40;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "css";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "cross";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dataDetectors";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "html";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "human";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "misc";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "modelOutput";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "wordToken";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v7();
  return sub_232CE9600();
}

uint64_t sub_232C25668()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD50A8);
  sub_232B135C4(v0, qword_27DDD50A8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_232CFD1D0;
  v4 = v60 + v3 + v1[14];
  *(v60 + v3) = 1;
  *v4 = "detectedEventPolarity";
  *(v4 + 8) = 21;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v60 + v3 + v2 + v1[14];
  *(v60 + v3 + v2) = 2;
  *v8 = "reservationIdError";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v60 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "reservationId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v60 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "reservationNameError";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v60 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "reservationName";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v60 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "startAddressError";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v60 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "startAddress";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v60 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "startAddressComponents";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v60 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "endAddressError";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v60 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "endAddress";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v60 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "endAddressComponents";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v60 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "startPlaceError";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v60 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "startPlace";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v60 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "endPlaceError";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v7();
  v33 = (v60 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "endPlace";
  *(v34 + 1) = 8;
  v34[16] = 2;
  v7();
  v35 = (v60 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "startDateError";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v7();
  v37 = (v60 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "startDate";
  *(v38 + 1) = 9;
  v38[16] = 2;
  v7();
  v39 = (v60 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "endDateError";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v60 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "endDate";
  *(v42 + 1) = 7;
  v42[16] = 2;
  v7();
  v43 = (v60 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "hotelNameError";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v60 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "hotelName";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v7();
  v47 = (v60 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "guestNameError";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v60 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "guestName";
  *(v50 + 1) = 9;
  v50[16] = 2;
  v7();
  v51 = (v60 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "movieNameError";
  *(v52 + 1) = 14;
  v52[16] = 2;
  v7();
  v53 = (v60 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "movieName";
  *(v54 + 1) = 9;
  v54[16] = 2;
  v7();
  v55 = (v60 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "text";
  *(v56 + 1) = 4;
  v56[16] = 2;
  v7();
  v57 = (v60 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "tags";
  *(v58 + 1) = 4;
  v58[16] = 2;
  v7();
  return sub_232CE9600();
}

uint64_t sub_232C25E10()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
  swift_allocObject();
  result = sub_232C25E50();
  qword_27DDC7ED0 = result;
  return result;
}

uint64_t sub_232C25E50()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 256;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  *(v0 + 64) = 256;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = 256;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 120) = sub_232CE9C60();
  *(v0 + 128) = 0;
  *(v0 + 136) = 256;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = sub_232CE9C60();
  *(v0 + 168) = 0;
  *(v0 + 176) = 256;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 184) = 0;
  *(v0 + 208) = 256;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 216) = 0;
  *(v0 + 240) = 256;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 248) = 0;
  *(v0 + 272) = 256;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = 0;
  *(v0 + 304) = 256;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 256;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 368) = 256;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = v1;
  return v0;
}

uint64_t sub_232C25F58(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 256;
  *(v1 + 48) = 0;
  *(v1 + 64) = 256;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0;
  *(v1 + 80) = 0;
  *(v1 + 96) = 256;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 112) = 0;
  *(v1 + 104) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 120) = sub_232C2A5B4();
  *(v1 + 128) = 0;
  *(v1 + 136) = 256;
  *(v1 + 152) = 0;
  *(v1 + 144) = 0;
  *(v1 + 160) = sub_232C2A5B4();
  *(v1 + 168) = 0;
  *(v1 + 176) = 256;
  *(v1 + 192) = 0;
  *(v1 + 208) = 256;
  *(v1 + 200) = 0;
  *(v1 + 184) = 0;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 216) = 0;
  *(v1 + 240) = 256;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 248) = 0;
  *(v1 + 272) = 256;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  *(v1 + 304) = 256;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 328) = 0;
  *(v1 + 336) = 256;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 368) = 256;
  *(v1 + 376) = 0u;
  *(v1 + 392) = 0u;
  *(v1 + 408) = v3;
  sub_232B13F74(a1 + 16, v110);
  v4 = *(a1 + 16);
  sub_232B13F5C(v1 + 16, v109);
  *(v1 + 16) = v4;
  sub_232B13F74(a1 + 24, v108);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  sub_232B13F5C(v1 + 24, v107);
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 33) = v7;
  sub_232B13F74(a1 + 40, v106);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  sub_232B13F5C(v1 + 40, v105);
  *(v1 + 40) = v9;
  *(v1 + 48) = v8;

  sub_232B13F74(a1 + 56, v104);
  v10 = *(a1 + 56);
  LOBYTE(v8) = *(a1 + 64);
  LOBYTE(v5) = *(a1 + 65);
  sub_232B13F5C(v1 + 56, v103);
  *(v1 + 56) = v10;
  *(v1 + 64) = v8;
  *(v1 + 65) = v5;
  v11 = sub_232B13F74(a1 + 72, v102);
  v13 = *(a1 + 72);
  v12 = *(a1 + 80);
  sub_232BC1C58(v11, v101);
  *(v1 + 72) = v13;
  *(v1 + 80) = v12;

  v14 = sub_232B13F74(a1 + 88, v100);
  v15 = *(a1 + 88);
  LOBYTE(v8) = *(a1 + 96);
  LOBYTE(v13) = *(a1 + 97);
  sub_232BC1C58(v14, v99);
  *(v1 + 88) = v15;
  *(v1 + 96) = v8;
  *(v1 + 97) = v13;
  v16 = sub_232B13F74(a1 + 104, v98);
  v18 = *(a1 + 104);
  v17 = *(a1 + 112);
  sub_232BC1C58(v16, v97);
  *(v1 + 104) = v18;
  *(v1 + 112) = v17;

  sub_232B13F74(a1 + 120, v96);
  v19 = *(a1 + 120);
  sub_232B13F5C(v1 + 120, v95);
  *(v1 + 120) = v19;

  v20 = sub_232B13F74(a1 + 128, v94);
  v21 = *(a1 + 128);
  LOBYTE(v8) = *(a1 + 136);
  LOBYTE(v18) = *(a1 + 137);
  sub_232BC1C58(v20, v93);
  *(v1 + 128) = v21;
  *(v1 + 136) = v8;
  *(v1 + 137) = v18;
  v22 = sub_232B13F74(a1 + 144, v92);
  v24 = *(a1 + 144);
  v23 = *(a1 + 152);
  sub_232BC1C58(v22, v91);
  *(v1 + 144) = v24;
  *(v1 + 152) = v23;

  sub_232B13F74(a1 + 160, v90);
  v25 = *(a1 + 160);
  sub_232B13F5C(v1 + 160, v89);
  *(v1 + 160) = v25;

  v26 = sub_232B13F74(a1 + 168, v88);
  v27 = *(a1 + 168);
  LOBYTE(v8) = *(a1 + 176);
  LOBYTE(v24) = *(a1 + 177);
  sub_232BC1C58(v26, v87);
  *(v1 + 168) = v27;
  *(v1 + 176) = v8;
  *(v1 + 177) = v24;
  v28 = sub_232B13F74(a1 + 184, v86);
  v30 = *(a1 + 184);
  v29 = *(a1 + 192);
  sub_232BC1C58(v28, v85);
  *(v1 + 184) = v30;
  *(v1 + 192) = v29;

  v31 = sub_232B13F74(a1 + 200, v84);
  v32 = *(a1 + 200);
  LOBYTE(v8) = *(a1 + 208);
  LOBYTE(v30) = *(a1 + 209);
  sub_232BC1C58(v31, v83);
  *(v1 + 200) = v32;
  *(v1 + 208) = v8;
  *(v1 + 209) = v30;
  v33 = sub_232B13F74(a1 + 216, v82);
  v35 = *(a1 + 216);
  v34 = *(a1 + 224);
  sub_232BC1C58(v33, v81);
  *(v1 + 216) = v35;
  *(v1 + 224) = v34;

  v36 = sub_232B13F74(a1 + 232, v80);
  v37 = *(a1 + 232);
  LOBYTE(v8) = *(a1 + 240);
  LOBYTE(v35) = *(a1 + 241);
  sub_232BC1C58(v36, v79);
  *(v1 + 232) = v37;
  *(v1 + 240) = v8;
  *(v1 + 241) = v35;
  v38 = sub_232B13F74(a1 + 248, v78);
  v40 = *(a1 + 248);
  v39 = *(a1 + 256);
  sub_232BC1C58(v38, v77);
  *(v1 + 248) = v40;
  *(v1 + 256) = v39;

  sub_232B13F74(a1 + 264, v76);
  v41 = *(a1 + 264);
  LOBYTE(v8) = *(a1 + 272);
  LOBYTE(v40) = *(a1 + 273);
  sub_232B13F5C(v1 + 264, v75);
  *(v1 + 264) = v41;
  *(v1 + 272) = v8;
  *(v1 + 273) = v40;
  sub_232B13F74(a1 + 280, v74);
  v43 = *(a1 + 280);
  v42 = *(a1 + 288);
  sub_232B13F5C(v1 + 280, v73);
  *(v1 + 280) = v43;
  *(v1 + 288) = v42;

  sub_232B13F74(a1 + 296, v72);
  v44 = *(a1 + 296);
  LOBYTE(v8) = *(a1 + 304);
  LOBYTE(v43) = *(a1 + 305);
  sub_232B13F5C(v1 + 296, v71);
  *(v1 + 296) = v44;
  *(v1 + 304) = v8;
  *(v1 + 305) = v43;
  sub_232B13F74(a1 + 312, v70);
  v46 = *(a1 + 312);
  v45 = *(a1 + 320);
  sub_232B13F5C(v1 + 312, v69);
  *(v1 + 312) = v46;
  *(v1 + 320) = v45;

  sub_232B13F74(a1 + 328, v68);
  v47 = *(a1 + 328);
  LOBYTE(v8) = *(a1 + 336);
  LOBYTE(v46) = *(a1 + 337);
  sub_232B13F5C(v1 + 328, v67);
  *(v1 + 328) = v47;
  *(v1 + 336) = v8;
  *(v1 + 337) = v46;
  sub_232B13F74(a1 + 344, v66);
  v49 = *(a1 + 344);
  v48 = *(a1 + 352);
  sub_232B13F5C(v1 + 344, v65);
  *(v1 + 344) = v49;
  *(v1 + 352) = v48;

  sub_232B13F74(a1 + 360, v64);
  v50 = *(a1 + 360);
  LOBYTE(v8) = *(a1 + 368);
  LOBYTE(v49) = *(a1 + 369);
  sub_232B13F5C(v1 + 360, v63);
  *(v1 + 360) = v50;
  *(v1 + 368) = v8;
  *(v1 + 369) = v49;
  sub_232B13F74(a1 + 376, v62);
  v52 = *(a1 + 376);
  v51 = *(a1 + 384);
  sub_232B13F5C(v1 + 376, v61);
  *(v1 + 376) = v52;
  *(v1 + 384) = v51;

  sub_232B13F74(a1 + 392, v60);
  v54 = *(a1 + 392);
  v53 = *(a1 + 400);
  sub_232B13F5C(v1 + 392, v59);
  *(v1 + 392) = v54;
  *(v1 + 400) = v53;

  sub_232B13F74(a1 + 408, v58);
  v55 = *(a1 + 408);

  sub_232B13F5C(v1 + 408, v57);
  *(v1 + 408) = v55;

  return v1;
}

uint64_t sub_232C2665C()
{

  return v0;
}

uint64_t sub_232C266EC()
{
  v0 = sub_232C2665C();

  return MEMORY[0x2821FE8D8](v0, 416, 7);
}

uint64_t initializeBufferWithCopyOfBuffer for DocumentUnderstanding_ClientInterface_FoundInEventResult.FoundInEventResultError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_232C267AC(uint64_t a1)
{
  sub_232C2687C(319, &qword_2814DF980, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_232C2687C(319, &qword_27DDC7EE8, MEMORY[0x277D84A28]);
    if (v2 <= 0x3F)
    {
      sub_232CE9340();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C2687C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_232CEA030();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232C26920(uint64_t a1)
{
  result = sub_232CE9340();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_232C269A8()
{
  result = qword_27DDC7F00;
  if (!qword_27DDC7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F00);
  }

  return result;
}

unint64_t sub_232C26A00()
{
  result = qword_27DDC7F08;
  if (!qword_27DDC7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F08);
  }

  return result;
}

unint64_t sub_232C26A58()
{
  result = qword_27DDC7F10;
  if (!qword_27DDC7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F10);
  }

  return result;
}

unint64_t sub_232C26AB0()
{
  result = qword_27DDC7F18;
  if (!qword_27DDC7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F18);
  }

  return result;
}

unint64_t sub_232C26B08()
{
  result = qword_27DDC7F20;
  if (!qword_27DDC7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F20);
  }

  return result;
}

unint64_t sub_232C26B60()
{
  result = qword_27DDC7F28;
  if (!qword_27DDC7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F28);
  }

  return result;
}

uint64_t sub_232C26BB4(uint64_t a1)
{
  v2 = v1;
  v3 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult._StorageClass();
    swift_allocObject();
    *(v2 + v3) = sub_232C25F58(v5);
  }

  sub_232C2A594();
  return sub_232C26C58(v6, v7, v8, v9);
}

uint64_t sub_232C26C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232C26FBC(a2, a1, a3, a4);
        break;
      case 2:
        sub_232C27040(a2, a1, a3, a4);
        break;
      case 3:
        sub_232C270D4(a2, a1, a3, a4);
        break;
      case 4:
        sub_232C27158(a2, a1, a3, a4);
        break;
      case 5:
        sub_232C271EC(a2, a1, a3, a4);
        break;
      case 6:
        sub_232C27270(a2, a1, a3, a4);
        break;
      case 7:
        sub_232C27304(a2, a1, a3, a4);
        break;
      case 8:
        sub_232C27388(a2, a1, a3, a4);
        break;
      case 9:
        sub_232C2742C(a2, a1, a3, a4);
        break;
      case 10:
        sub_232C274C0(a2, a1, a3, a4);
        break;
      case 11:
        sub_232C27544(a2, a1, a3, a4);
        break;
      case 12:
        sub_232C275E8(a2, a1, a3, a4);
        break;
      case 13:
        sub_232C2767C(a2, a1, a3, a4);
        break;
      case 14:
        sub_232C27700(a2, a1, a3, a4);
        break;
      case 15:
        sub_232C27794(a2, a1, a3, a4);
        break;
      case 16:
        sub_232C27818(a2, a1, a3, a4);
        break;
      case 17:
        sub_232C278AC(a2, a1, a3, a4);
        break;
      case 18:
        sub_232C27930(a2, a1, a3, a4);
        break;
      case 19:
        sub_232C279C4(a2, a1, a3, a4);
        break;
      case 20:
        sub_232C27A48(a2, a1, a3, a4);
        break;
      case 21:
        sub_232C27ADC(a2, a1, a3, a4);
        break;
      case 22:
        sub_232C27B60(a2, a1, a3, a4);
        break;
      case 23:
        sub_232C27BF4(a2, a1, a3, a4);
        break;
      case 24:
        sub_232C27C78(a2, a1, a3, a4);
        break;
      case 25:
        sub_232C27D0C(a2, a1, a3, a4);
        break;
      case 26:
        sub_232C27D90(a2, a1, a3, a4);
        break;
      case 27:
        sub_232C27E14(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C26FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE93C0();
  return swift_endAccess();
}

uint64_t sub_232C27040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C270D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C271EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9310();
  sub_232CE9390();
  return swift_endAccess();
}

uint64_t sub_232C2742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C274C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9310();
  sub_232CE9390();
  return swift_endAccess();
}

uint64_t sub_232C275E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C2767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C278AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C279C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232C2A3AC();
  sub_232CE93D0();
  return swift_endAccess();
}

uint64_t sub_232C27D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C27E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
  sub_232C2A100(&qword_27DDC7F48, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange, &unk_232CFD79C);
  sub_232CE94B0();
  return swift_endAccess();
}

uint64_t sub_232C27EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  sub_232B2F148();
  result = sub_232C27F48(v5, v6, v7, a3);
  if (!v3)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C27F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (result = sub_232CE9560(), !v4))
  {
    result = sub_232C28434(a1);
    if (!v4)
    {
      sub_232C284DC(a1, a2, a3, a4);
      sub_232C28578(a1);
      sub_232C28620(a1, a2, a3, a4);
      sub_232C286BC(a1);
      sub_232C28764(a1, a2, a3, a4);
      swift_beginAccess();
      if (*(*(a1 + 120) + 16))
      {
        sub_232CE9310();

        sub_232CE9520();
      }

      sub_232C28800(a1);
      sub_232C288A8(a1, a2, a3, a4);
      swift_beginAccess();
      if (*(*(a1 + 160) + 16))
      {
        sub_232CE9310();

        sub_232CE9520();
      }

      sub_232C28944(a1);
      sub_232C289EC(a1, a2, a3, a4);
      sub_232C28A88(a1);
      sub_232C28B30(a1, a2, a3, a4);
      sub_232C28BCC(a1);
      sub_232C28C74(a1, a2, a3, a4);
      sub_232C28D10(a1);
      sub_232C28DB8(a1, a2, a3, a4);
      sub_232C28E54(a1);
      sub_232C28EFC(a1, a2, a3, a4);
      sub_232C28F98(a1);
      sub_232C29040(a1, a2, a3, a4);
      sub_232C290DC(a1);
      sub_232C29184(a1, a2, a3, a4);
      sub_232C29220(a1, a2, a3, a4);
      result = swift_beginAccess();
      if (*(*(a1 + 408) + 16))
      {
        type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange(0);
        sub_232C2A100(&qword_27DDC7F48, type metadata accessor for DocumentUnderstanding_ClientInterface_TaggedCharacterRange, &unk_232CFD79C);

        sub_232CE95D0();
      }
    }
  }

  return result;
}

uint64_t sub_232C28434(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 33) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C284DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28578(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 65) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 80))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C286BC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 97) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28800(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 137) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C288A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 152))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28944(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 177) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C289EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 192))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28A88(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 209) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 224))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28BCC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 241) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 256))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28D10(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 273) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 288))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28E54(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 305) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C28EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 320))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C28F98(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 337) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C29040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 352))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C290DC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 369) & 1) == 0)
  {
    sub_232C2A3AC();
    return sub_232CE9570();
  }

  return result;
}

uint64_t sub_232C29184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 384))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C29220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 400))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C292BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {

    v5 = sub_232B41C8C();
    v7 = sub_232C29390(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C2A508();
  sub_232C2A100(v8, v9, MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232C29390(uint64_t a1, uint64_t a2)
{
  sub_232B13F74(a1 + 16, v188);
  v4 = *(a1 + 16);
  sub_232B13F74(a2 + 16, v187);
  if (v4 != *(a2 + 16))
  {
    goto LABEL_2;
  }

  sub_232B13F74(a1 + 24, v186);
  v7 = *(a1 + 33);
  v8 = sub_232B13F74(a2 + 24, v185);
  if (v7)
  {
    if ((*(a2 + 33) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if ((*(a2 + 33) & 1) != 0 || !sub_232C2A4EC(v8, v9, *(a2 + 24)))
  {
    goto LABEL_2;
  }

  sub_232B13F74(a1 + 40, v184);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = sub_232B13F74(a2 + 40, v183);
  v14 = *(a2 + 48);
  if (v11)
  {
    if (!v14)
    {
      goto LABEL_2;
    }

    v15 = *(a2 + 40);
    v16 = v10 == v15 && v11 == v14;
    if (!v16 && (sub_232C2A4D0(v12, v13, v15, v14) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (v14)
  {
    goto LABEL_2;
  }

  sub_232B13F74(a1 + 56, v182);
  v17 = *(a1 + 65);
  v18 = sub_232B13F74(a2 + 56, v181);
  if (v17)
  {
    if ((*(a2 + 65) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if ((*(a2 + 65) & 1) != 0 || !sub_232C2A4EC(v18, v19, *(a2 + 56)))
  {
    goto LABEL_2;
  }

  sub_232B13F74(a1 + 72, v180);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = sub_232B13F74(a2 + 72, v179);
  v24 = *(a2 + 80);
  if (v21)
  {
    if (!v24)
    {
      goto LABEL_2;
    }

    v25 = *(a2 + 72);
    v26 = v20 == v25 && v21 == v24;
    if (!v26 && (sub_232C2A4D0(v22, v23, v25, v24) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (v24)
  {
    goto LABEL_2;
  }

  sub_232B13F74(a1 + 88, v178);
  v27 = *(a1 + 97);
  v28 = sub_232B13F74(a2 + 88, v177);
  if (v27)
  {
    if ((*(a2 + 97) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if ((*(a2 + 97) & 1) != 0 || !sub_232C2A4EC(v28, v29, *(a2 + 88)))
  {
    goto LABEL_2;
  }

  sub_232B13F74(a1 + 104, v176);
  v30 = *(a1 + 104);
  v31 = *(a1 + 112);
  v32 = sub_232B13F74(a2 + 104, v175);
  v34 = *(a2 + 112);
  if (v31)
  {
    if (!v34)
    {
      goto LABEL_2;
    }

    v35 = *(a2 + 104);
    v36 = v30 == v35 && v31 == v34;
    if (!v36 && (sub_232C2A4D0(v32, v33, v35, v34) & 1) == 0)
    {
      goto LABEL_2;
    }

LABEL_46:
    sub_232B13F74(a1 + 120, v174);
    sub_232B13F74(a2 + 120, v173);

    v37 = sub_232B41C8C();
    sub_232B3223C(v37, v38);
    v40 = v39;

    if (v40)
    {
      sub_232B13F74(a1 + 128, v172);
      v41 = *(a1 + 137);
      v42 = sub_232B13F74(a2 + 128, v171);
      if (v41)
      {
        if ((*(a2 + 137) & 1) == 0)
        {
          goto LABEL_169;
        }
      }

      else if ((*(a2 + 137) & 1) != 0 || !sub_232C2A4EC(v42, v43, *(a2 + 128)))
      {
        goto LABEL_169;
      }

      sub_232B13F74(a1 + 144, v170);
      v44 = *(a1 + 144);
      v45 = *(a1 + 152);
      v46 = sub_232B13F74(a2 + 144, v169);
      v48 = *(a2 + 152);
      if (v45)
      {
        if (!v48)
        {
          goto LABEL_169;
        }

        v49 = *(a2 + 144);
        v50 = v44 == v49 && v45 == v48;
        if (!v50 && (sub_232C2A4D0(v46, v47, v49, v48) & 1) == 0)
        {
          goto LABEL_169;
        }
      }

      else if (v48)
      {
        goto LABEL_169;
      }

      sub_232B13F74(a1 + 160, v168);
      sub_232B13F74(a2 + 160, v167);

      v51 = sub_232B41C8C();
      sub_232B3223C(v51, v52);
      v54 = v53;

      if (v54)
      {
        sub_232B13F74(a1 + 168, v166);
        v55 = *(a1 + 177);
        v56 = sub_232B13F74(a2 + 168, v165);
        if (v55)
        {
          if ((*(a2 + 177) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if ((*(a2 + 177) & 1) != 0 || !sub_232C2A4EC(v56, v57, *(a2 + 168)))
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 184, v164);
        v58 = *(a1 + 184);
        v59 = *(a1 + 192);
        v60 = sub_232B13F74(a2 + 184, v163);
        v62 = *(a2 + 192);
        if (v59)
        {
          if (!v62)
          {
            goto LABEL_169;
          }

          v63 = *(a2 + 184);
          v64 = v58 == v63 && v59 == v62;
          if (!v64 && (sub_232C2A4D0(v60, v61, v63, v62) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v62)
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 200, v162);
        v65 = *(a1 + 209);
        v66 = sub_232B13F74(a2 + 200, v161);
        if (v65)
        {
          if ((*(a2 + 209) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if ((*(a2 + 209) & 1) != 0 || !sub_232C2A4EC(v66, v67, *(a2 + 200)))
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 216, v160);
        v68 = *(a1 + 216);
        v69 = *(a1 + 224);
        v70 = sub_232B13F74(a2 + 216, v159);
        v72 = *(a2 + 224);
        if (v69)
        {
          if (!v72)
          {
            goto LABEL_169;
          }

          v73 = *(a2 + 216);
          v74 = v68 == v73 && v69 == v72;
          if (!v74 && (sub_232C2A4D0(v70, v71, v73, v72) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v72)
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 232, v158);
        v75 = *(a1 + 241);
        v76 = sub_232B13F74(a2 + 232, v157);
        if (v75)
        {
          if ((*(a2 + 241) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if ((*(a2 + 241) & 1) != 0 || !sub_232C2A4EC(v76, v77, *(a2 + 232)))
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 248, v156);
        v78 = *(a1 + 248);
        v79 = *(a1 + 256);
        v80 = sub_232B13F74(a2 + 248, v155);
        v82 = *(a2 + 256);
        if (v79)
        {
          if (!v82)
          {
            goto LABEL_169;
          }

          v83 = *(a2 + 248);
          v84 = v78 == v83 && v79 == v82;
          if (!v84 && (sub_232C2A4D0(v80, v81, v83, v82) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v82)
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 264, v154);
        v85 = *(a1 + 273);
        v86 = sub_232B13F74(a2 + 264, v153);
        if (v85)
        {
          if ((*(a2 + 273) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if ((*(a2 + 273) & 1) != 0 || !sub_232C2A4EC(v86, v87, *(a2 + 264)))
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 280, v152);
        v88 = *(a1 + 280);
        v89 = *(a1 + 288);
        v90 = sub_232B13F74(a2 + 280, v151);
        v92 = *(a2 + 288);
        if (v89)
        {
          if (!v92)
          {
            goto LABEL_169;
          }

          v93 = *(a2 + 280);
          v94 = v88 == v93 && v89 == v92;
          if (!v94 && (sub_232C2A4D0(v90, v91, v93, v92) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v92)
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 296, v150);
        v95 = *(a1 + 305);
        v96 = sub_232B13F74(a2 + 296, v149);
        if (v95)
        {
          if ((*(a2 + 305) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if ((*(a2 + 305) & 1) != 0 || !sub_232C2A4EC(v96, v97, *(a2 + 296)))
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 312, v148);
        v98 = *(a1 + 312);
        v99 = *(a1 + 320);
        v100 = sub_232B13F74(a2 + 312, v147);
        v102 = *(a2 + 320);
        if (v99)
        {
          if (!v102)
          {
            goto LABEL_169;
          }

          v103 = *(a2 + 312);
          v104 = v98 == v103 && v99 == v102;
          if (!v104 && (sub_232C2A4D0(v100, v101, v103, v102) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v102)
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 328, v146);
        v105 = *(a1 + 337);
        v106 = sub_232B13F74(a2 + 328, v145);
        if (v105)
        {
          if ((*(a2 + 337) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if ((*(a2 + 337) & 1) != 0 || !sub_232C2A4EC(v106, v107, *(a2 + 328)))
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 344, v144);
        v108 = *(a1 + 344);
        v109 = *(a1 + 352);
        v110 = sub_232B13F74(a2 + 344, v143);
        v112 = *(a2 + 352);
        if (v109)
        {
          if (!v112)
          {
            goto LABEL_169;
          }

          v113 = *(a2 + 344);
          v114 = v108 == v113 && v109 == v112;
          if (!v114 && (sub_232C2A4D0(v110, v111, v113, v112) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v112)
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 360, v142);
        v115 = *(a1 + 369);
        v116 = sub_232B13F74(a2 + 360, v141);
        if (v115)
        {
          if ((*(a2 + 369) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if ((*(a2 + 369) & 1) != 0 || !sub_232C2A4EC(v116, v117, *(a2 + 360)))
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 376, v140);
        v118 = *(a1 + 376);
        v119 = *(a1 + 384);
        v120 = sub_232B13F74(a2 + 376, v139);
        v122 = *(a2 + 384);
        if (v119)
        {
          if (!v122)
          {
            goto LABEL_169;
          }

          v123 = *(a2 + 376);
          v124 = v118 == v123 && v119 == v122;
          if (!v124 && (sub_232C2A4D0(v120, v121, v123, v122) & 1) == 0)
          {
            goto LABEL_169;
          }
        }

        else if (v122)
        {
          goto LABEL_169;
        }

        sub_232B13F74(a1 + 392, v138);
        v125 = *(a1 + 392);
        v126 = *(a1 + 400);
        v127 = sub_232B13F74(a2 + 392, v137);
        v129 = *(a2 + 400);
        if (v126)
        {
          if (!v129)
          {
            goto LABEL_169;
          }

          v130 = *(a2 + 392);
          v131 = v125 == v130 && v126 == v129;
          if (!v131 && (sub_232C2A4D0(v127, v128, v130, v129) & 1) == 0)
          {
            goto LABEL_169;
          }

LABEL_167:
          sub_232B13F74(a1 + 408, v136);
          sub_232B13F74(a2 + 408, &v135);

          v132 = sub_232B41C8C();
          sub_232B347F4(v132, v133);
          v5 = v134;

          return v5 & 1;
        }

        if (!v129)
        {
          goto LABEL_167;
        }
      }
    }

LABEL_169:

    goto LABEL_2;
  }

  if (!v34)
  {
    goto LABEL_46;
  }

LABEL_2:
  v5 = 0;
  return v5 & 1;
}

uint64_t sub_232C29B94(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_232C2A520(a1);
  a1(0);
  sub_232C2A100(a2, a3, a4);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C29C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C2A100(&qword_27DDC7F88, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult, &unk_232CFD64C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C29D04(uint64_t a1)
{
  v2 = sub_232C2A100(&qword_27DDC77A8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult, &unk_232CFD898);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C29DCC(uint64_t a1, uint64_t a2)
{
  sub_232C2A100(&qword_27DDC77A8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult, &unk_232CFD898);

  return sub_232CE9500();
}

uint64_t sub_232C29E4C()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD50C0);
  sub_232B135C4(v0, qword_27DDD50C0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF8180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ErrorUnknown";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ErrorUnableToResolveCandidates";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ErrorUnableToPredictCandidates";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C2A100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232C2A310(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_232C2A3AC()
{
  result = qword_27DDC7F90;
  if (!qword_27DDC7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7F90);
  }

  return result;
}

unint64_t sub_232C2A400()
{
  result = qword_27DDC7FA0;
  if (!qword_27DDC7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7FA0);
  }

  return result;
}

unint64_t sub_232C2A454()
{
  result = qword_27DDC7FA8;
  if (!qword_27DDC7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7FA8);
  }

  return result;
}

uint64_t sub_232C2A4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232CEA750();
}

BOOL sub_232C2A4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_232BAE054(v3, v4 & 1, a3);
}

void *sub_232C2A520(uint64_t a1, ...)
{

  return sub_232CEA820();
}

uint64_t sub_232C2A550(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_232CE9E40();
}

uint64_t sub_232C2A574(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t sub_232C2A5B4()
{

  return sub_232CE9C60();
}

uint64_t sub_232C2A5D4(uint64_t a1, uint64_t a2, ...)
{

  return sub_232CE9C90();
}

void FrozenNLEmbeddingVectorRetrieval.init(embeddingAssetURL:embeddingMetadataURL:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v202 = a3;
  v203 = a2;
  v210[4] = *MEMORY[0x277D85DE8];
  v205 = sub_232CE9A30();
  sub_232B48F0C();
  v200 = v4;
  MEMORY[0x28223BE20](v5);
  sub_232B20714();
  v194 = v6;
  sub_232B20600();
  MEMORY[0x28223BE20](v7);
  sub_232B20628();
  v201 = v8;
  sub_232B20600();
  MEMORY[0x28223BE20](v9);
  sub_232B20628();
  v192 = v10;
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  sub_232B20628();
  v190 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B20628();
  v195 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B20628();
  v196 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  v193 = v181 - v18;
  v188 = sub_232CE9DA0();
  sub_232B48F0C();
  v189 = v19;
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v187 = v22 - v21;
  v23 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v23 - 8);
  v197 = v181 - v24;
  v25 = sub_232CE8C00();
  sub_232B48F0C();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_232B20714();
  v206 = v29;
  sub_232B20600();
  MEMORY[0x28223BE20](v30);
  sub_232B20628();
  *&v191 = v31;
  sub_232B20600();
  MEMORY[0x28223BE20](v32);
  sub_232B20628();
  v198 = v33;
  sub_232B20600();
  MEMORY[0x28223BE20](v34);
  v36 = v181 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v181 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v181 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = v181 - v44;
  sub_232C2B8F0();
  v204 = v27;
  v47 = *(v27 + 16);
  v46 = v27 + 16;
  v48 = a1;
  v49 = a1;
  v50 = v25;
  (v47)(v45, v49, v25);
  v51 = sub_232C2B934(v45);
  v183 = v39;
  v185 = v47;
  v186 = v36;
  v184 = v42;
  v201 = v51;
  v199 = v48;
  v52 = v203;
  v53 = v197;
  sub_232B35974(v203, v197);
  v54 = v25;
  if (sub_232B12480(v53, 1, v25) == 1)
  {
    sub_232B267AC(v53, &qword_27DDC6AD8, &unk_232CF82F0);
    sub_232B124A8(&qword_27DDC7FB8, &unk_232CFD918);
    v55 = sub_232CE9C60();
    sub_232B267AC(v52, &qword_27DDC6AD8, &unk_232CF82F0);
    (*(v204 + 8))(v199, v25);
LABEL_3:
    v56 = v202;
    *v202 = v201;
    v56[1] = v55;
    return;
  }

  v57 = v184;
  (*(v204 + 32))(v184, v53, v50);
  sub_232B124A8(&qword_27DDC7FB8, &unk_232CFD918);
  v58 = sub_232CE9C60();
  v59 = sub_232CE8C20();
  v182 = v58;
  v209 = 100;
  v76 = v59;
  v78 = v77;
  v79 = objc_opt_self();
  v80 = sub_232CE8C50();
  v210[0] = 0;
  v81 = [v79 propertyListWithData:v80 options:0 format:&v209 error:v210];

  if (v81)
  {
    v181[5] = v76;
    v181[6] = v78;
    v82 = v210[0];
    sub_232CEA420();
    swift_unknownObjectRelease();
    sub_232B124A8(&qword_27DDC75A8, &qword_232CFA518);
    if (swift_dynamicCast())
    {
      v84 = *(v207 + 16);
      v197 = v46;
      if (!v84)
      {

        v86 = v199;
LABEL_54:
        v170 = v190;
        sub_232CE9A20();
        v171 = v182;

        v172 = sub_232CE9A00();
        v173 = sub_232CEA1A0();
        v174 = sub_232C22080(v173);
        v175 = v184;
        if (v174)
        {
          v176 = sub_232BC1F80();
          *v176 = 134217984;
          *(v176 + 4) = v171[2];

          sub_232C2C6E0(&dword_232B02000, v177, v178, "Done constructing embedding metadata dictionary from plist.  Found %ld items");
          sub_232BA6A84();
          sub_232C2C5E0();
        }

        else
        {
          sub_232C2C5E0();
        }

        sub_232B267AC(v203, &qword_27DDC6AD8, &unk_232CF82F0);
        v179 = *(v204 + 8);
        v179(v86, v54);
        sub_232C2C6B8();
        v180(v170, v205);
        v179(v175, v54);
        v55 = v182;
        goto LABEL_3;
      }

      v181[4] = v207;
      v85 = v207 + 32;
      v194 = v204 + 8;
      v192 = v200 + 8;
      v181[3] = (v189 + 8);
      *&v83 = 136315138;
      v191 = v83;
      v87 = v198;
      v86 = v199;
      v89 = v195;
      v88 = v196;
      v90 = v186;
      v91 = v185;
      while (1)
      {
        v206 = v84;
        sub_232B204B4(v85, v210);
        sub_232B124A8(&qword_27DDC7668, &unk_232CFA950);
        sub_232C2C684();
        if (swift_dynamicCast())
        {
          v92 = v207;
          if (!*(v207 + 16) || (v93 = sub_232B1F160(0x695F64726F636572, 0xE900000000000064), (v94 & 1) == 0) || (sub_232B204B4(*(v92 + 56) + 32 * v93, v210), sub_232C2C684(), (swift_dynamicCast() & 1) == 0))
          {

            sub_232CE9A20();
            sub_232C2C674();
            v91();
            v117 = v90;
            v118 = sub_232CE9A00();
            v119 = v54;
            v120 = sub_232CEA1C0();
            if (sub_232C22080(v120))
            {
              v121 = sub_232BC1F80();
              v122 = swift_slowAlloc();
              *v121 = sub_232C2C600(v122).n128_u32[0];
              v123 = sub_232CE8B60();
              v86 = v124;
              sub_232C2C598();
              v125(v117, v119);
              v126 = sub_232C2C6AC();
              sub_232BAD2D4(v126, v86, v127);
              sub_232C2C6C4();
              *(v121 + 4) = v123;
              _os_log_impl(&dword_232B02000, v118, v120, "Encountered a malformed metadata record while parsing %s.  Skipping", v121, 0xCu);
              sub_232C2C614();
              v88 = v196;
              sub_232BA6A84();
            }

            else
            {

              sub_232C2C598();
              v130(v117, v119);
            }

            sub_232C2C5A8();
            v131(v88, v205);
            v54 = v119;
            v87 = v198;
            v90 = v117;
            v91 = v185;
            goto LABEL_34;
          }

          v95 = v208;
          if (!*(v92 + 16))
          {

            v97 = v193;
            goto LABEL_39;
          }

          v189 = v207;
          v96 = sub_232B1F160(0x645F64726F636572, 0xEB00000000617461);
          v97 = v193;
          if ((v98 & 1) == 0)
          {

LABEL_38:

LABEL_39:
            sub_232CE9A20();
            v132 = v183;
            sub_232C2C674();
            v91();
            v133 = v97;
            v134 = sub_232CE9A00();
            v135 = sub_232CEA1C0();
            if (os_log_type_enabled(v134, v135))
            {
              sub_232BC1F80();
              v136 = sub_232C2C658();
              *v54 = sub_232C2C600(v136).n128_u32[0];
              v137 = sub_232CE8B60();
              v86 = v138;
              sub_232C2C598();
              v139(v132, v54);
              v140 = sub_232C2C6AC();
              sub_232BAD2D4(v140, v86, v141);
              sub_232C2C6C4();
              *(v54 + 4) = v137;
              sub_232C2C700(&dword_232B02000, v134, v135, "Encountered a malformed metadata record while parsing %s.  Skipping", v181[0]);
              sub_232C2C614();
              v87 = v198;
              sub_232BA6A84();

              sub_232C2C5A8();
              v143 = v193;
            }

            else
            {

              sub_232C2C598();
              v144 = sub_232C2C64C();
              v145(v144);
              sub_232C2C5A8();
              v143 = v133;
            }

            v142(v143, v205);
            v88 = v196;
            v90 = v186;
            goto LABEL_34;
          }

          sub_232B204B4(*(v92 + 56) + 32 * v96, v210);

          sub_232C2C684();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_38;
          }

          v99 = v187;
          sub_232CE9D90();
          v181[1] = sub_232CE9D60();
          v181[2] = v100;

          sub_232C2C5A8();
          v101(v99, v188);
          v102 = v182;
          swift_isUniquelyReferenced_nonNull_native();
          v210[0] = v102;
          v103 = sub_232B1F160(v189, v95);
          if (__OFADD__(v102[2], (v104 & 1) == 0))
          {
            __break(1u);
LABEL_59:
            __break(1u);
          }

          v105 = v103;
          v106 = v104;
          sub_232B124A8(&qword_27DDC7FC0, &qword_232CFD928);
          if (sub_232CEA5C0())
          {
            v107 = sub_232B1F160(v189, v95);
            v88 = v196;
            if ((v106 & 1) != (v108 & 1))
            {
              sub_232CEA7A0();
              __break(1u);
              return;
            }

            v105 = v107;
          }

          else
          {
            v88 = v196;
          }

          v87 = v198;
          v146 = v210[0];
          v182 = v210[0];
          if (v106)
          {
            sub_232C2C694((*(v210[0] + 7) + 16 * v105));
            sub_232BB6018(v147, v148);
          }

          else
          {
            *(v210[0] + (v105 >> 6) + 8) |= 1 << v105;
            v149 = (v146[6] + 16 * v105);
            *v149 = v189;
            v149[1] = v95;
            sub_232C2C694((v146[7] + 16 * v105));
            v151 = *(v150 + 16);
            v152 = __OFADD__(v151, 1);
            v153 = v151 + 1;
            if (v152)
            {
              goto LABEL_59;
            }

            *(v150 + 16) = v153;
          }

          v86 = v199;
          v89 = v195;
        }

        else
        {
          sub_232CE9A20();
          sub_232C2C674();
          v91();
          v109 = sub_232CE9A00();
          v110 = sub_232CEA1C0();
          if (sub_232C22080(v110))
          {
            sub_232BC1F80();
            v111 = sub_232C2C658();
            *v54 = sub_232C2C600(v111).n128_u32[0];
            v112 = sub_232CE8B60();
            v86 = v113;
            sub_232C2C598();
            v114(v198, v54);
            v115 = sub_232C2C6AC();
            sub_232BAD2D4(v115, v86, v116);
            sub_232C2C6C4();
            *(v54 + 4) = v112;
            sub_232C2C700(&dword_232B02000, v109, v110, "Encountered a malformed metadata record while parsing %s.  Skipping", v181[0]);
            sub_232C2C614();
            v87 = v198;
            sub_232BA6A84();
          }

          else
          {

            sub_232C2C598();
            v128(v87, v54);
          }

          sub_232C2C5A8();
          v129(v89, v205);
          v88 = v196;
        }

        v90 = v186;
LABEL_34:
        v85 += 32;
        v84 = v206 - 1;
        if (v206 == 1)
        {

          goto LABEL_54;
        }
      }
    }

    sub_232CE9A20();
    v156 = v191;
    v157 = v199;
    (v185)(v191, v199, v50);
    v158 = sub_232CE9A00();
    v159 = sub_232CEA1C0();
    if (os_log_type_enabled(v158, v159))
    {
      sub_232BC1F80();
      v160 = sub_232C2C658();
      v210[0] = v160;
      *v54 = 136315138;
      sub_232CE8B60();
      v162 = v161;
      v163 = *(v204 + 8);
      v163(v156, v54);
      v164 = sub_232C2C6AC();
      v166 = sub_232BAD2D4(v164, v162, v165);

      *(v54 + 4) = v166;
      sub_232C2C700(&dword_232B02000, v158, v159, "Could not read metadata array while parsing %s", v181[0]);
      sub_232B2040C(v160);
      sub_232BA6A84();
      sub_232BA6A84();
      sub_232C2C5E0();

      sub_232B267AC(v203, &qword_27DDC6AD8, &unk_232CF82F0);
      v163(v199, v54);
      sub_232C2C6B8();
      v167(v192, v205);
      v163(v184, v54);
    }

    else
    {
      sub_232C2C5E0();

      sub_232B267AC(v52, &qword_27DDC6AD8, &unk_232CF82F0);
      v168 = *(v204 + 8);
      v168(v157, v54);
      v168(v156, v54);
      sub_232C2C6B8();
      v169(v192, v205);
      v168(v57, v54);
    }
  }

  else
  {
    v154 = v210[0];

    v155 = sub_232CE8B30();

    swift_willThrow();
    sub_232B41BEC(v76, v78);
    v60 = v194;
    sub_232CE9A20();
    v61 = v155;
    v62 = sub_232CE9A00();
    v63 = sub_232CEA1C0();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v199;
    if (v64)
    {
      v66 = sub_232BC1F80();
      v67 = v54;
      v68 = swift_slowAlloc();
      *v66 = 138412290;
      v69 = v155;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v70;
      *v68 = v70;
      sub_232C2C6E0(&dword_232B02000, v71, v72, "Encountered an error reading embedding metadata plist: %@");
      sub_232B267AC(v68, &qword_27DDC6FD0, &unk_232CFA240);
      v54 = v67;
      sub_232BA6A84();
      sub_232BA6A84();
    }

    sub_232B267AC(v52, &qword_27DDC6AD8, &unk_232CF82F0);
    v73 = *(v204 + 8);
    v73(v65, v54);
    sub_232C2C6B8();
    v74(v60, v205);
    v73(v57, v54);
  }

  v75 = v202;
  *v202 = 0;
  v75[1] = 0;
}

unint64_t sub_232C2B8F0()
{
  result = qword_27DDC7FB0;
  if (!qword_27DDC7FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC7FB0);
  }

  return result;
}

id sub_232C2B934(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_232CE8B90();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() embeddingWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_232CE8C00();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_232CE8B30();

    swift_willThrow();
    v9 = sub_232CE8C00();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t FrozenNLEmbeddingVectorRetrieval.fetchNeighborsForVector(vector:distanceLimit:countLimit:)(uint64_t a1, uint64_t a2)
{
  v11 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_232B64A58(0, v2, 0);
    v4 = (a1 + 32);
    v5 = *(v10 + 16);
    do
    {
      v6 = *v4;
      v7 = *(v10 + 24);
      if (v5 >= v7 >> 1)
      {
        v8 = sub_232BC1BBC(v7);
        sub_232B64A58(v8, v5 + 1, 1);
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 8 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  MEMORY[0x28223BE20](a1);
  sub_232CEA120();

  return v11;
}

BOOL sub_232C2BBE4(uint64_t a1, uint64_t a2, double a3, float a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = a3;
  if (v8 <= a4)
  {
    v13 = *(a6 + 16);

    if (v13)
    {
      v14 = sub_232B1F160(a1, a2);
      if (v15)
      {
        v16 = (*(a6 + 56) + 16 * v14);
        v13 = *v16;
        v17 = v16[1];
        sub_232C05E58(*v16, v17);
LABEL_7:
        sub_232BAD0CC();
        v18 = *(*a7 + 16);
        sub_232BAD218(v18);
        v19 = *a7;
        *(v19 + 16) = v18 + 1;
        v20 = v19 + 40 * v18;
        *(v20 + 32) = a1;
        *(v20 + 40) = a2;
        *(v20 + 48) = v13;
        *(v20 + 56) = v17;
        *(v20 + 64) = v8;
        return v8 <= a4;
      }

      v13 = 0;
    }

    v17 = 0xF000000000000000;
    goto LABEL_7;
  }

  return v8 <= a4;
}

uint64_t static FrozenNLEmbeddingVectorRetrieval.writeMetadataPlistForRecords(records:destinationURL:)(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = sub_232CE9DA0();
  MEMORY[0x28223BE20](v3 - 8);
  sub_232B20704();
  v4 = *(a1 + 16);
  if (v4)
  {
    v40 = MEMORY[0x277D84F90];
    sub_232B64C28(0, v4, 0);
    v5 = v40;
    v6 = (a1 + 64);
    do
    {
      v7 = *(v6 - 3);
      v8 = *v6;
      sub_232B124A8(&qword_27DDC77D8, &unk_232CFD930);
      if (v8 >> 60 == 15)
      {
        inited = swift_initStackObject();
        sub_232C2C5B4(inited, &v43);
        *(v10 + 56) = v7;
        swift_bridgeObjectRetain_n();

        v11 = sub_232C2C64C();
        sub_232C05E58(v11, v12);
        v13 = sub_232CE9C60();
      }

      else
      {
        v14 = swift_initStackObject();
        sub_232C2C5B4(v14, &v42);
        v15[7] = v7;
        v15[8] = 0x645F64726F636572;
        v15[9] = 0xEB00000000617461;
        swift_bridgeObjectRetain_n();

        v16 = sub_232C2C64C();
        sub_232C05E58(v16, v17);
        v18 = sub_232C2C64C();
        sub_232C05E58(v18, v19);
        sub_232CE9D90();
        sub_232C2C64C();
        v20 = sub_232CE9D70();
        if (v21)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        v23 = 0xE000000000000000;
        if (v21)
        {
          v23 = v21;
        }

        v14[5].n128_u64[0] = v22;
        v14[5].n128_u64[1] = v23;
        v13 = sub_232CE9C60();
        v24 = sub_232C2C64C();
        sub_232BB6018(v24, v25);
      }

      v26 = sub_232C2C64C();
      sub_232BB6018(v26, v27);
      v40 = v5;
      v29 = v5[2];
      v28 = v5[3];
      if (v29 >= v28 >> 1)
      {
        v30 = sub_232BC1BBC(v28);
        sub_232B64C28(v30, v29 + 1, 1);
        v5 = v40;
      }

      v6 += 5;
      v5[2] = v29 + 1;
      v5[v29 + 4] = v13;
      --v4;
    }

    while (v4);
  }

  v31 = objc_opt_self();
  sub_232B124A8(&qword_27DDC6B40, &qword_232CF6EC8);
  v32 = sub_232CE9FD0();

  v40 = 0;
  v33 = [v31 dataWithPropertyList:v32 format:100 options:0 error:&v40];

  v34 = v40;
  if (v33)
  {
    v35 = sub_232CE8C80();
    v37 = v36;

    sub_232CE8C90();
    return sub_232B41BEC(v35, v37);
  }

  else
  {
    v39 = v34;
    sub_232CE8B30();

    return swift_willThrow();
  }
}

uint64_t static FrozenNLEmbeddingVectorRetrieval.writeEmbeddingtoolFileForRecords(records:destinationURL:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_232CE9DA0();
  sub_232B48F0C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = *(a1 + 16);
  if (v10)
  {
    v44 = v8 - v7;
    v45 = v5;
    v46 = v3;
    v53 = MEMORY[0x277D84F90];
    sub_232B649F4(0, v10, 0);
    v11 = 0;
    v12 = v53;
    v47 = a1 + 32;
    v48 = v10;
    do
    {
      v52 = v11;
      v13 = (v47 + 40 * v11);
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = *(v15 + 16);
      v50 = *v13;
      v51 = v17;
      if (v18)
      {
        v49 = v12;

        sub_232C05E58(v16, v17);
        v54 = MEMORY[0x277D84F90];

        sub_232B649F4(0, v18, 0);
        v19 = 32;
        do
        {
          v20 = *(v15 + v19);
          sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_232CF6460;
          *(v21 + 56) = MEMORY[0x277D83A90];
          *(v21 + 64) = MEMORY[0x277D83B08];
          *(v21 + 32) = v20;
          v22 = sub_232CE9D80();
          v24 = v23;
          v26 = *(v54 + 16);
          v25 = *(v54 + 24);
          if (v26 >= v25 >> 1)
          {
            v28 = sub_232BC1BBC(v25);
            sub_232B649F4(v28, v26 + 1, 1);
          }

          *(v54 + 16) = v26 + 1;
          v27 = v54 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
          v19 += 4;
          --v18;
        }

        while (v18);

        v12 = v49;
        v29 = v14;
      }

      else
      {

        sub_232C05E58(v16, v17);

        v29 = v14;
      }

      sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
      sub_232B27E88();
      v30 = sub_232CE9CD0();
      v32 = v31;

      sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_232CF5E60;
      v34 = MEMORY[0x277D837D0];
      *(v33 + 56) = MEMORY[0x277D837D0];
      v35 = sub_232B27F34();
      *(v33 + 32) = v50;
      *(v33 + 40) = v29;
      *(v33 + 96) = v34;
      *(v33 + 104) = v35;
      *(v33 + 64) = v35;
      *(v33 + 72) = v30;
      *(v33 + 80) = v32;
      v36 = sub_232CE9D80();
      v38 = v37;

      sub_232BB6018(v16, v51);
      v40 = *(v12 + 16);
      v39 = *(v12 + 24);
      if (v40 >= v39 >> 1)
      {
        v42 = sub_232BC1BBC(v39);
        sub_232B649F4(v42, v40 + 1, 1);
      }

      v11 = v52 + 1;
      *(v12 + 16) = v40 + 1;
      v41 = v12 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
    }

    while (v52 + 1 != v48);
    v5 = v45;
    v3 = v46;
    v9 = v44;
  }

  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232B27E88();
  sub_232CE9CD0();

  sub_232CE9D90();
  sub_232B48080();
  sub_232CEA3E0();
  (*(v5 + 8))(v9, v3);
}

uint64_t sub_232C2C50C(uint64_t *a1, int a2)
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

uint64_t sub_232C2C54C(uint64_t result, int a2, int a3)
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

__n128 sub_232C2C5B4@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  a1[2].n128_u64[0] = 0x695F64726F636572;
  a1[2].n128_u64[1] = 0xE900000000000064;
  a1[3].n128_u64[0] = v2;
  return result;
}

uint64_t sub_232C2C5E0()
{
  v2 = *(v0 - 392);
  v3 = *(v0 - 384);

  return sub_232B41BEC(v2, v3);
}

void sub_232C2C614()
{
  sub_232B2040C(v0);

  JUMPOUT(0x238393870);
}

uint64_t sub_232C2C658()
{

  return swift_slowAlloc();
}

void sub_232C2C694(void *a1@<X8>)
{
  v2 = *(v1 - 416);
  *a1 = *(v1 - 424);
  a1[1] = v2;
}

uint64_t sub_232C2C6C4()
{
}

void sub_232C2C6E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_232C2C700(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_232C2C758()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_context);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_232C2C7B0()
{
  sub_232C2E03C();
  v3 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_context);
  swift_beginAccess();
  *v3 = v2;
  v3[1] = v0;
}

id GenerationTask.__allocating_init(context:)()
{
  sub_232C2E03C();
  v3 = objc_allocWithZone(v1);
  return GenerationTask.init(context:)(v2, v0);
}

id GenerationTask.init(context:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_tgSession] = 0;
  v3 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_context];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for GenerationTask();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_232C2C920()
{
  sub_232B26C44();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232C2C9AC;

  return sub_232C2CA98(v1, 48);
}

uint64_t sub_232C2C9AC()
{
  sub_232B26C44();
  v2 = v1;
  sub_232B26C70();
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_232C2CA98(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  return sub_232B512BC();
}

uint64_t sub_232C2CAAC()
{
  v1 = v0[6] + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_context;
  swift_beginAccess();
  v0[7] = *(v1 + 8);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  sub_232C2E048(v2);

  return sub_232C2D560();
}

uint64_t sub_232C2CB78()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;
  *(v5 + 72) = v3;
  *(v5 + 80) = v4;

  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232C2CC80()
{
  sub_232B26C44();
  v1 = v0[9];
  v2 = v0[10];
  sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_232CF6460;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_232C2CD08(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return sub_232B512BC();
}

uint64_t sub_232C2CD1C()
{
  sub_232B26C44();
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_232C2CE0C;
  v3 = MEMORY[0x277D837D0];

  return MEMORY[0x2822007B8](&v0[1], 0, 0, 0xD000000000000015, 0x8000000232D09B80, sub_232C2DF90, v1, v3);
}

uint64_t sub_232C2CE0C()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  v3 = sub_232B5138C();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_232C2CF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232B124A8(&qword_27DDC7FD8, &unk_232CFDA10);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_tgSession);
  if (v11)
  {
    (*(v7 + 16))(v10, a1, v6, v8);
    v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v13 = swift_allocObject();
    (*(v7 + 32))(v13 + v12, v10, v6);
    aBlock[4] = sub_232C2DF98;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232C2D4BC;
    aBlock[3] = &unk_284813248;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    [v15 executeOperation:a3 callback:v14];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_232C2D100(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_232CE9A30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - v11;
  if (a2)
  {
    sub_232CE9A20();
    v13 = a2;
    v14 = sub_232CE9A00();
    v15 = sub_232CEA1C0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_232B02000, v14, v15, "Error while calling execute in TextGenerationInference: %@", v16, 0xCu);
      sub_232BDB890(v17);
      MEMORY[0x238393870](v17, -1, -1);
      MEMORY[0x238393870](v16, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
LABEL_5:
    v40 = 0;
    v41 = 0xE000000000000000;
LABEL_17:
    sub_232B124A8(&qword_27DDC7FD8, &unk_232CFDA10);
    sub_232CEA060();
    return;
  }

  if (!a1)
  {
    sub_232CE9A20();
    v36 = sub_232CE9A00();
    v37 = sub_232CEA1C0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_232B02000, v36, v37, "Empty response object returned from TextGenerationInference", v38, 2u);
      MEMORY[0x238393870](v38, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    goto LABEL_5;
  }

  v20 = sub_232B26B10();
  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
LABEL_16:
    v40 = v21;
    sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232B27E88();
    v33 = sub_232CE9CD0();
    v35 = v34;

    v40 = v33;
    v41 = v35;
    goto LABEL_17;
  }

  v22 = v20;
  v39[1] = a3;
  v40 = MEMORY[0x277D84F90];
  sub_232B649F4(0, v20 & ~(v20 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v21 = v40;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x2383922C0](v23, a1);
      }

      else
      {
        v24 = *(a1 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v24 text];
      v27 = sub_232CE9D50();
      v29 = v28;

      v40 = v21;
      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_232B649F4(v30 > 1, v31 + 1, 1);
        v21 = v40;
      }

      ++v23;
      *(v21 + 16) = v31 + 1;
      v32 = v21 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
    }

    while (v22 != v23);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_232C2D4BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_232BA4DEC(0, &qword_27DDC7FE0, 0x277D6F2E0);
    v4 = sub_232CE9FE0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_232C2D560()
{
  sub_232B26C44();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_232CE89D0();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();
  v5 = sub_232CE9A30();
  v1[10] = v5;
  v1[11] = *(v5 - 8);
  v1[12] = swift_task_alloc();
  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232C2D674()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_232BA4DEC(0, &qword_27DDC7FE8, 0x277D6F2E8);

  v4 = sub_232C2DAF8(v3, v1);
  v0[13] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277D6F2C8]) initWithPrompt_];
  v0[14] = v5;
  [v5 setProduceOutputStream_];
  v6 = [objc_allocWithZone(MEMORY[0x277D6F2F0]) init];
  v7 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_tgSession);
  *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding14GenerationTask_tgSession) = v6;

  v8 = [objc_allocWithZone(MEMORY[0x277D6F2D0]) init];
  v0[15] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v8 setMaxWordCount_];

  [v5 setOutputConstraint_];
  sub_232CE9A20();
  v10 = sub_232CE9A00();
  v11 = sub_232CEA1B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_232B02000, v10, v11, "TextGeneration operation created", v12, 2u);
    MEMORY[0x238393870](v12, -1, -1);
  }

  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];

  (*(v14 + 8))(v13, v15);
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v17 = sub_232C2E048(v16);

  return sub_232C2CD08(v17);
}

uint64_t sub_232C2D8B4()
{
  sub_232B26C44();
  sub_232B26C70();
  *(v2 + 136) = v0;
  *(v2 + 144) = v1;

  v3 = sub_232B5138C();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232C2D9A4(__n128 a1)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v1[2] = v2;
    v6 = v1[14];
    v5 = v1[15];
    v7 = v1[13];
    v9 = v1[8];
    v8 = v1[9];
    v10 = v1[7];
    v1[3] = v3;
    sub_232CE89B0();
    sub_232B48080();
    v11 = sub_232CEA3A0();
    v13 = v12;

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v15 = v1[14];
    v14 = v1[15];
    v16 = v1[13];

    v13 = 0x8000000232D09BC0;
    v11 = 0xD00000000000001ALL;
  }

  v17 = v1[1];

  return v17(v11, v13);
}

id sub_232C2DAF8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232CE9D20();

  v4 = [v2 initWithInstructionText_];

  return v4;
}

id GenerationTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerationTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerationTask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of GenerationTask.perform(model:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x98);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232C2E038;

  return v7(a1);
}

uint64_t dispatch thunk of GenerationTask.perform(model:numTokens:)()
{
  sub_232C2E03C();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_232C2C9AC;

  return v7(v2, v0);
}

void sub_232C2DF98()
{
  sub_232C2E03C();
  v3 = *(sub_232B124A8(&qword_27DDC7FD8, &unk_232CFDA10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_232C2D100(v2, v0, v4);
}

uint64_t sub_232C2E020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DUDocumentGlobals.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_232C2EA20(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_232C2EAB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_232C2EB20(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_232CE8C50();
  v6 = [v4 initWithData_];

  sub_232B41BEC(a1, a2);
  return v6;
}

unint64_t sub_232C2ED90()
{
  result = qword_27DDC7FF0;
  if (!qword_27DDC7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7FF0);
  }

  return result;
}

void sub_232C2EDE4()
{
  sub_232BA66A0();
  v156 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v6);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  sub_232B2D108();
  v155 = v8;
  sub_232B554F0();
  v9 = sub_232CE9DA0();
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  v154 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v12);
  sub_232B2D114();
  MEMORY[0x28223BE20](v13);
  sub_232B2D108();
  v160 = v14;
  sub_232B554F0();
  v15 = sub_232CE9A30();
  sub_232B48F0C();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_232B3516C();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  sub_232C31C18(v23);
  v24 = sub_232CE9A00();
  v25 = sub_232CEA1A0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = sub_232BA73DC();
    sub_232C31D84(v26);
    _os_log_impl(&dword_232B02000, v24, v25, "(HarvestingDocumentNormalization) Normalizing mail content", v3, 2u);
    sub_232BA6A84();
  }

  v27 = *(v17 + 8);
  v27(v0, v15);
  v28 = objc_allocWithZone(MEMORY[0x277CF19B8]);
  sub_232B41B94(v5, v3);
  v29 = sub_232C31950(v5, v3);
  if (!v29)
  {
    sub_232CE9A20();
    v140 = sub_232CE9A00();
    v141 = sub_232CEA1C0();
    if (sub_232BC1E54(v141))
    {
      v142 = sub_232BA73DC();
      sub_232C31D84(v142);
      sub_232C31DC4(&dword_232B02000, v143, v144, "HarvestingDocumentNormalization: Failed to initialize mail content from serialized protobuf");
      sub_232BA6A84();
    }

    v27(v21, v15);
    sub_232C2ED90();
    sub_232B4EC24(&type metadata for HarvestingDocumentNormalizationError);
    *v145 = 0xD00000000000005BLL;
    v145[1] = 0x8000000232D09E10;
    swift_willThrow();
LABEL_25:
    sub_232C31D50();
    sub_232BA6688();
    return;
  }

  v30 = v29;
  v31 = sub_232C31B34(v29, &selRef_domainId);
  v159 = v31;
  v33 = v32;
  v34 = [v30 uniqueId];
  v35 = sub_232CE9D50();
  v158 = v35;
  v37 = v36;

  sub_232C31CB0();
  sub_232CEA4F0();
  MEMORY[0x238391C30](0x3A6C69616D65, 0xE600000000000000);
  MEMORY[0x238391C30](0xD000000000000014, 0x8000000232D09E70);
  sub_232C31CC0();
  v173[0] = v31;
  v173[1] = v33;
  v38 = sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
  sub_232C31E1C(v38, v39, v38, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
  sub_232C31CC0();
  MEMORY[0x238391C30](v35, v37);
  v40 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
  v41 = sub_232C31C48(0xD000000000000028);
  v42 = &v41[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
  sub_232C31BEC(v41, &v174);
  *v42 = 0xD000000000000014;
  *(v42 + 1) = 0x8000000232D09E70;
  v153 = 0x8000000232D09E70;

  v44 = &v41[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
  sub_232C31BEC(v43, v173);
  *v44 = v159;
  *(v44 + 1) = v33;
  v152 = v33;

  v150 = v41;
  sub_232C31BEC(v45, &v172);
  sub_232C31CE4();

  v46 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
  v47 = [v30 messageIdentifier];
  sub_232CE9D50();
  sub_232C31D78();

  v48 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
  sub_232C31BEC(v49, &v171);
  *v48 = "com.apple.mobilemail";
  *(v48 + 1) = 0x8000000232D09E70;

  v50 = [v30 subject];
  sub_232CE9D50();
  sub_232C31D78();

  v51 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
  sub_232C31BEC(v52, &v170);
  *v51 = "com.apple.mobilemail";
  *(v51 + 1) = 0x8000000232D09E70;

  sub_232C31B34(v30, &selRef_textContent);
  sub_232C31CD8();
  v53 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C(&v46[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text], &v169);
  *v53 = v51;
  *(v53 + 1) = "com.apple.mobilemail";

  sub_232BC8B00([v30 fromHandle], &selRef_name);
  sub_232C31CD8();
  v54 = &v46[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  sub_232B13F5C(&v46[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator], &v168);
  *v54 = v51;
  *(v54 + 1) = "com.apple.mobilemail";

  [v30 absoluteTimestamp];
  v55 = v160;
  sub_232CE8CA0();
  v56 = sub_232CE8D10();
  sub_232B351FC();
  sub_232B12504(v57, v58, v59, v56);
  v60 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
  swift_beginAccess();
  v149 = v46;
  sub_232C31A5C(v55, &v46[v60], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v61 = [objc_allocWithZone(type metadata accessor for DUDocumentEmailData(0)) init];
  v62 = [v30 subject];
  v63 = sub_232CE9D50();
  v65 = v64;

  v66 = &v61[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
  sub_232B13F5C(&v61[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject], &v167);
  *v66 = v63;
  v66[1] = v65;

  v67 = [v30 fromHandle];
  v68 = [v67 handle];

  v69 = sub_232CE9D50();
  v71 = v70;

  v72 = &v61[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
  sub_232B13F5C(&v61[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail], &v166);
  *v72 = v69;
  v72[1] = v71;

  [v30 absoluteTimestamp];
  sub_232CE8CA0();
  sub_232B351FC();
  v148 = v56;
  sub_232B12504(v73, v74, v75, v56);
  v76 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  v147 = v61;
  sub_232C31A5C(v55, &v61[v76], &qword_27DDC6A80, &qword_232CF6D30);
  swift_endAccess();
  v157 = v30;
  v77 = [v30 headers];
  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  v78 = sub_232CE9C40();

  sub_232B124A8(&qword_27DDC77D0, &unk_232CFAA50);
  v79 = sub_232CEA630();
  v80 = v79;
  v81 = 0;
  v83 = v78 + 64;
  v82 = *(v78 + 64);
  v175 = v78;
  v84 = 1 << *(v78 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & v82;
  v87 = (v84 + 63) >> 6;
  v161 = v79 + 64;
  if ((v85 & v82) == 0)
  {
LABEL_8:
    v89 = v81;
    while (1)
    {
      v81 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v81 >= v87)
      {
        break;
      }

      v90 = *(v83 + 8 * v81);
      ++v89;
      if (v90)
      {
        v88 = __clz(__rbit64(v90));
        v86 = (v90 - 1) & v90;
        goto LABEL_13;
      }
    }

    v103 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
    v104 = v147;
    sub_232B13F5C(&v147[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers], &v165);
    *&v104[v103] = v80;

    v105 = [objc_allocWithZone(type metadata accessor for DUDocumentHTMLData()) init];
    v106 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
    sub_232B13F5C(&v105[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData], &v164);
    v107 = *&v105[v106];
    *&v105[v106] = v104;
    v176 = v104;

    v108 = sub_232C319F8(v157);
    if (v109 >> 60 != 15)
    {
      v110 = v108;
      v111 = v109;
      sub_232CE9D90();
      sub_232CE9D70();
      sub_232C31D78();
      sub_232BB6018(v110, v111);
      v112 = &v105[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString];
      sub_232B13F5C(&v105[OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_htmlString], &v162);
      *v112 = v107;
      *(v112 + 1) = v104;
    }

    v113 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
    v114 = v149;
    sub_232B13F5C(&v149[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData], &v163);
    v115 = *&v114[v113];
    *&v114[v113] = v105;
    v116 = v105;

    v117 = objc_allocWithZone(type metadata accessor for DUDocument());
    v118 = v114;
    v119 = DUDocument.init(rawDocument:maxLength:)(v118, 5120);
    sub_232CE8C00();
    v120 = v155;
    sub_232B55484();
    sub_232B12504(v121, v122, v123, v124);
    v125 = v160;
    sub_232B55484();
    sub_232B12504(v126, v127, v128, v148);
    v129 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate(0));
    v130 = v150;
    v131 = v119;
    sub_232C31C38();
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v132, v133, v134, v135, v120, 1818845549, 0xE400000000000000, v125, 0);
    v136 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v137 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v138 = sub_232C318A4(v158, v151, v159, v152, v136);
    v139 = sub_232CE9D20();
    [v138 setBundleID_];

    goto LABEL_25;
  }

  while (1)
  {
    v88 = __clz(__rbit64(v86));
    v86 &= v86 - 1;
LABEL_13:
    v91 = v88 | (v81 << 6);
    v92 = (*(v175 + 48) + 16 * v91);
    v94 = *v92;
    v93 = v92[1];
    v95 = *(*(v175 + 56) + 8 * v91);
    if (*(v95 + 16))
    {
      v96 = *(v95 + 32);
    }

    else
    {
      v96 = 0;
      v97 = 0xE000000000000000;
    }

    *(v161 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v91;
    v98 = (v80[6] + 16 * v91);
    *v98 = v94;
    v98[1] = v93;
    v99 = (v80[7] + 16 * v91);
    *v99 = v96;
    v99[1] = v97;
    v100 = v80[2];
    v101 = __OFADD__(v100, 1);
    v102 = v100 + 1;
    if (v101)
    {
      break;
    }

    v80[2] = v102;

    if (!v86)
    {
      goto LABEL_8;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_232C2F964()
{
  sub_232BA66A0();
  v157 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v6);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  sub_232B2D108();
  v162 = v8;
  v9 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  sub_232B3516C();
  v156 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v177 = &v148 - v14;
  sub_232B554F0();
  v15 = sub_232CE9A30();
  sub_232B48F0C();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_232B3516C();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  sub_232C31C18(v23);
  v24 = sub_232CE9A00();
  v25 = sub_232CEA1A0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = sub_232BA73DC();
    v163 = v17;
    sub_232C31D84(v26);
    _os_log_impl(&dword_232B02000, v24, v25, "(HarvestingDocumentNormalization) Normalizing message content", v3, 2u);
    v17 = v163;
    sub_232BA6A84();
  }

  v27 = *(v17 + 8);
  v27(v0, v15);
  v28 = objc_allocWithZone(MEMORY[0x277CF19C8]);
  sub_232B41B94(v5, v3);
  v29 = sub_232C31950(v5, v3);
  if (v29)
  {
    v30 = v29;
    v31 = sub_232C31B34(v29, &selRef_domainId);
    v160 = v31;
    v33 = v32;
    v34 = [v30 uniqueId];
    v35 = sub_232CE9D50();
    v159 = v35;
    v37 = v36;

    sub_232C31CB0();
    sub_232CEA4F0();
    MEMORY[0x238391C30](0x3A6567617373656DLL, 0xE800000000000000);
    MEMORY[0x238391C30](0xD000000000000013, 0x8000000232D09F20);
    sub_232C31CC0();
    v175[0] = v31;
    v175[1] = v33;
    v38 = sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
    sub_232C31E1C(v38, v39, v38, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
    sub_232C31CC0();
    MEMORY[0x238391C30](v35, v37);
    v40 = v176[0];
    v41 = v176[1];
    v42 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
    v43 = DUDocumentIdentifier.init(documentNamespace:documentID:)(0xD000000000000028, 0x8000000232D09E90, v40, v41);
    v44 = &v43[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
    v45 = 1;
    sub_232C31BEC(v43, v176);
    *v44 = 0xD000000000000013;
    *(v44 + 1) = 0x8000000232D09F20;
    v154 = 0x8000000232D09F20;

    sub_232C31BEC(v46, v175);
    sub_232C31CE4();

    v151 = v43;
    v48 = &v43[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
    sub_232C31BEC(v47, &v174);
    v49 = v159;
    *v48 = v159;
    *(v48 + 1) = v37;
    swift_bridgeObjectRetain_n();

    v50 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
    v51 = &v50[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
    sub_232C31BEC(v50, &v173);
    *v51 = v49;
    v51[1] = v37;
    v152 = v37;
    v52 = v50;

    v53 = [v30 content];
    sub_232CE9D50();
    sub_232C31D78();

    v54 = &v50[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
    sub_232C31BEC(v55, &v172);
    *v54 = v50;
    *(v54 + 1) = v49;

    sub_232BC8B00([v30 fromHandle], &selRef_name);
    sub_232C31CD8();
    v56 = &v50[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
    sub_232B13F5C(&v50[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator], &v171);
    *v56 = v54;
    *(v56 + 1) = v50;

    v57 = [v30 URL];
    if (v57)
    {
      v58 = v57;
      v59 = v177;
      sub_232CE8BB0();

      v45 = 0;
    }

    else
    {
      v59 = v177;
    }

    v150 = sub_232CE8C00();
    sub_232B12504(v59, v45, 1, v150);
    v66 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url;
    sub_232C31C94(&v52[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_url]);
    sub_232C31A5C(v59, &v52[v66], &qword_27DDC6AD8, &unk_232CF82F0);
    swift_endAccess();
    [v30 absoluteTimestamp];
    v67 = v162;
    sub_232CE8CA0();
    sub_232CE8D10();
    sub_232B351FC();
    v149 = v68;
    sub_232B12504(v69, v70, v71, v68);
    v72 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232C31C94(&v52[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated]);
    sub_232C31A5C(v67, &v52[v72], &qword_27DDC6A80, &qword_232CF6D30);
    swift_endAccess();
    v73 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];
    v74 = [v30 fromHandle];
    v75 = [v74 handle];

    sub_232CE9D50();
    sub_232C31CD8();

    v76 = &v73[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
    sub_232B13F5C(&v73[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle], &v170);
    *v76 = v74;
    *(v76 + 1) = v59;

    v77 = [v30 conversationId];
    v78 = sub_232CE9D50();
    v80 = v79;

    v158 = v73;
    v81 = &v73[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
    sub_232C31BEC(v82, &v169);
    *v81 = v78;
    v81[1] = v80;

    v83 = sub_232C31AC4(v30);
    v155 = v30;
    if (v83)
    {
      v84 = v83;
      v148 = v52;
      v85 = sub_232B26B10();
      v86 = 0;
      v178 = v84 & 0xC000000000000001;
      v163 = v84 & 0xFFFFFFFFFFFFFF8;
      v161 = MEMORY[0x277D84F90];
      while (v85 != v86)
      {
        if (v178)
        {
          v87 = MEMORY[0x2383922C0](v86, v84);
        }

        else
        {
          if (v86 >= *(v163 + 16))
          {
            goto LABEL_47;
          }

          v87 = *(v84 + 8 * v86 + 32);
        }

        v88 = v87;
        v89 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          return;
        }

        v90 = sub_232C31B34(v87, &selRef_name);
        v92 = v91;

        ++v86;
        if (v92)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_232B35ECC();
            v161 = v96;
          }

          v93 = *(v161 + 16);
          if (v93 >= *(v161 + 24) >> 1)
          {
            sub_232B35ECC();
            v161 = v97;
          }

          v94 = v161;
          *(v161 + 16) = v93 + 1;
          v95 = v94 + 16 * v93;
          *(v95 + 32) = v90;
          *(v95 + 40) = v92;
          v86 = v89;
        }
      }

      v98 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
      v99 = v158;
      sub_232B13F5C(&v158[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames], &v165);
      *&v99[v98] = v161;

      v100 = 0;
      v101 = MEMORY[0x277D84F90];
      while (v85 != v100)
      {
        if (v178)
        {
          v102 = MEMORY[0x2383922C0](v100, v84);
        }

        else
        {
          if (v100 >= *(v163 + 16))
          {
            goto LABEL_49;
          }

          v102 = *(v84 + 8 * v100 + 32);
        }

        v103 = v102;
        if (__OFADD__(v100, 1))
        {
          goto LABEL_48;
        }

        v104 = [v102 handle];
        sub_232CE9D50();
        sub_232C31CD8();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232B35ECC();
          v101 = v107;
        }

        v105 = *(v101 + 16);
        if (v105 >= *(v101 + 24) >> 1)
        {
          sub_232B35ECC();
          v101 = v108;
        }

        *(v101 + 16) = v105 + 1;
        v106 = v101 + 16 * v105;
        *(v106 + 32) = v98;
        *(v106 + 40) = v99;
        ++v100;
      }

      v109 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
      v110 = v158;
      sub_232B13F5C(&v158[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles], &v164);
      *&v110[v109] = v101;

      v30 = v155;
      v52 = v148;
    }

    else
    {
      v110 = v158;
    }

    v111 = [v30 attachment];
    v112 = v111;
    if (v111)
    {
      v113 = [v111 filename];

      v112 = sub_232CE9D50();
      v115 = v114;
    }

    else
    {
      v115 = 0;
    }

    v116 = &v110[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName];
    sub_232B13F5C(&v110[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName], &v168);
    *v116 = v112;
    *(v116 + 1) = v115;

    v117 = [v30 attachment];
    if (v117)
    {
      v118 = sub_232BC8B00(v117, &selRef_path);
      v120 = v119;
    }

    else
    {
      v118 = 0;
      v120 = 0;
    }

    v121 = &v110[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath];
    sub_232B13F5C(&v110[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFilePath], &v167);
    *v121 = v118;
    v121[1] = v120;

    v122 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
    sub_232B13F5C(&v52[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData], &v166);
    v123 = *&v52[v122];
    *&v52[v122] = v110;
    v124 = v110;

    v125 = objc_allocWithZone(type metadata accessor for DUDocument());
    v126 = v52;
    v127 = DUDocument.init(rawDocument:maxLength:)(v126, 5120);
    v128 = v156;
    sub_232B55484();
    sub_232B12504(v129, v130, v131, v150);
    v132 = v162;
    sub_232B55484();
    sub_232B12504(v133, v134, v135, v149);
    v136 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate(0));
    v137 = v151;
    v138 = v127;
    sub_232C31C38();
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v139, v140, v141, v142, v128, v143, 0xE700000000000000, v132, 0);
    v144 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v145 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v146 = sub_232C318A4(v159, v152, v160, v153, v144);
    v147 = sub_232CE9D20();
    [v146 setBundleID_];
  }

  else
  {
    sub_232CE9A20();
    v60 = sub_232CE9A00();
    v61 = sub_232CEA1C0();
    if (sub_232BC1E54(v61))
    {
      v62 = sub_232BA73DC();
      sub_232C31D84(v62);
      sub_232C31DC4(&dword_232B02000, v63, v64, "HarvestingDocumentNormalization: Failed to initialize message content from serialized protobuf");
      sub_232BA6A84();
    }

    v27(v21, v15);
    sub_232C2ED90();
    sub_232B4EC24(&type metadata for HarvestingDocumentNormalizationError);
    *v65 = 0xD00000000000005ELL;
    v65[1] = 0x8000000232D09EC0;
    swift_willThrow();
  }

  sub_232C31D50();
  sub_232BA6688();
}

void sub_232C3057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232BA66A0();
  a19 = v21;
  a20 = v22;
  sub_232C31D90();
  v23 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v23);
  sub_232B2D114();
  MEMORY[0x28223BE20](v24);
  sub_232B2D108();
  v110 = v25;
  v26 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v26);
  sub_232B2D114();
  MEMORY[0x28223BE20](v27);
  sub_232B2D108();
  v109 = v28;
  sub_232B554F0();
  v29 = sub_232CE9A30();
  sub_232B48F0C();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_232B3516C();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  sub_232C31C18(v37);
  v38 = sub_232CE9A00();
  v39 = sub_232CEA1A0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_232BA73DC();
    *v40 = 0;
    _os_log_impl(&dword_232B02000, v38, v39, "(HarvestingDocumentNormalization) Normalizing note content", v40, 2u);
    sub_232BA6A84();
  }

  v41 = *(v31 + 8);
  v41(v20, v29);
  v42 = objc_allocWithZone(MEMORY[0x277CF1A00]);
  v43 = sub_232BA5ED4();
  sub_232B41B94(v43, v44);
  v45 = sub_232BA5ED4();
  v47 = sub_232C31950(v45, v46);
  if (v47)
  {
    v48 = v47;
    v49 = sub_232C31B34(v47, &selRef_domainId);
    v51 = v50;
    v117 = v50;
    v52 = [v48 uniqueId];
    v53 = sub_232CE9D50();
    v55 = v54;

    v116[0] = 0;
    v116[1] = 0xE000000000000000;
    MEMORY[0x238391C30](0x3A65746F6ELL, 0xE500000000000000);
    sub_232C31D08();
    sub_232C31CC0();
    v115[0] = v49;
    v115[1] = v51;
    v56 = sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
    sub_232C31E1C(v56, v57, v56, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
    sub_232C31CC0();
    MEMORY[0x238391C30](v53, v55);
    v58 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
    v59 = sub_232C31C48(0xD000000000000028);
    v60 = &v59[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
    v61 = v59;
    sub_232C31BEC(v59, v116);
    *v60 = 0xD000000000000015;
    *(v60 + 1) = v41;

    v63 = &v61[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
    v108 = v61;
    sub_232C31BEC(v62, v115);
    *v63 = v49;
    v63[1] = v117;

    v65 = &v61[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
    sub_232C31BEC(v64, &v114);
    *v65 = v53;
    v65[1] = v55;
    swift_bridgeObjectRetain_n();

    v66 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
    v67 = &v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
    sub_232B13F5C(&v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier], &v113);
    *v67 = v53;
    v67[1] = v55;

    v68 = sub_232C31B34(v48, &selRef_title);
    v70 = v69;
    v71 = &v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
    sub_232B13F5C(&v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline], &v112);
    *v71 = v68;
    v71[1] = v70;

    v72 = [v48 content];
    v73 = sub_232CE9D50();
    v75 = v74;

    v76 = &v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
    sub_232B13F5C(&v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text], v111);
    *v76 = v73;
    v76[1] = v75;

    [v48 absoluteTimestamp];
    sub_232CE8CA0();
    v77 = sub_232CE8D10();
    sub_232B351FC();
    sub_232B12504(v78, v79, v80, v77);
    v81 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232C31C94(&v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated]);
    sub_232C31A5C(v109, &v66[v81], &qword_27DDC6A80, &qword_232CF6D30);
    swift_endAccess();
    v82 = objc_allocWithZone(type metadata accessor for DUDocument());
    v83 = v66;
    v84 = DUDocument.init(rawDocument:maxLength:)(v83, 5120);
    sub_232CE8C00();
    sub_232B55484();
    sub_232B12504(v85, v86, v87, v88);
    sub_232B55484();
    sub_232B12504(v89, v90, v91, v77);
    v92 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate(0));
    v93 = v108;
    v94 = v84;
    sub_232C31C38();
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v95, v96, v97, v98, v110, v99, 0xE500000000000000, v109, 0);
    [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v100 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v101 = sub_232C31C68(&a12);
    v102 = sub_232CE9D20();
    [v101 setBundleID_];
  }

  else
  {
    sub_232CE9A20();
    v103 = sub_232CE9A00();
    v104 = sub_232CEA1C0();
    if (sub_232BC1E54(v104))
    {
      *sub_232BA73DC() = 0;
      sub_232C31DA4(&dword_232B02000, v105, v106, "HarvestingDocumentNormalization: Failed to initialize note content from serialized protobuf");
      sub_232BA6A84();
    }

    v41(v35, v29);
    sub_232C31E04();
    sub_232B4EC24(&type metadata for HarvestingDocumentNormalizationError);
    *v107 = 0xD00000000000005BLL;
    v107[1] = v29;
    swift_willThrow();
  }

  sub_232C31D64();
  sub_232BA6688();
}

void sub_232C30C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232BA66A0();
  a19 = v21;
  a20 = v22;
  sub_232C31D90();
  v23 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v23);
  sub_232B2D114();
  MEMORY[0x28223BE20](v24);
  sub_232B2D108();
  v109 = v25;
  v26 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v26);
  sub_232B2D114();
  MEMORY[0x28223BE20](v27);
  sub_232B2D108();
  v108 = v28;
  sub_232B554F0();
  v29 = sub_232CE9A30();
  sub_232B48F0C();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_232B3516C();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  sub_232C31C18(v37);
  v38 = sub_232CE9A00();
  v39 = sub_232CEA1A0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_232BA73DC();
    *v40 = 0;
    _os_log_impl(&dword_232B02000, v38, v39, "(HarvestingDocumentNormalization) Normalizing reminder content", v40, 2u);
    sub_232BA6A84();
  }

  v41 = *(v31 + 8);
  v41(v20, v29);
  v42 = objc_allocWithZone(MEMORY[0x277CF1A70]);
  v43 = sub_232BA5ED4();
  sub_232B41B94(v43, v44);
  v45 = sub_232BA5ED4();
  v47 = sub_232C31950(v45, v46);
  if (v47)
  {
    v48 = v47;
    v49 = sub_232C31B34(v47, &selRef_domainId);
    v51 = v50;
    v116 = v50;
    v52 = [v48 uniqueId];
    v53 = sub_232CE9D50();
    v55 = v54;

    sub_232C31CB0();
    sub_232CEA4F0();
    MEMORY[0x238391C30](0x7265646E696D6572, 0xE90000000000003ALL);
    sub_232C31D08();
    sub_232C31CC0();
    v114[0] = v49;
    v114[1] = v51;
    v56 = sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
    sub_232C31E1C(v56, v57, v56, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
    sub_232C31CC0();
    MEMORY[0x238391C30](v53, v55);
    v58 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
    v59 = sub_232C31C48(0xD000000000000028);
    v60 = &v59[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
    v61 = v59;
    sub_232C31BEC(v59, &v115);
    *v60 = 0xD000000000000013;
    *(v60 + 1) = v41;

    v63 = &v61[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
    v107 = v61;
    sub_232C31BEC(v62, v114);
    *v63 = v49;
    v63[1] = v116;

    v65 = &v61[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
    sub_232C31BEC(v64, &v113);
    *v65 = v53;
    v65[1] = v55;
    swift_bridgeObjectRetain_n();

    v66 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
    v67 = &v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier];
    sub_232B13F5C(&v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_identifier], &v112);
    *v67 = v53;
    v67[1] = v55;

    v68 = sub_232C31B34(v48, &selRef_title);
    v70 = v69;
    v71 = &v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
    sub_232B13F5C(&v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline], &v111);
    *v71 = v68;
    v71[1] = v70;

    v72 = sub_232C31B34(v48, &selRef_notes);
    v74 = v73;
    v75 = &v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
    sub_232B13F5C(&v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text], v110);
    *v75 = v72;
    v75[1] = v74;

    [v48 absoluteTimestamp];
    sub_232CE8CA0();
    v76 = sub_232CE8D10();
    sub_232B351FC();
    sub_232B12504(v77, v78, v79, v76);
    v80 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
    sub_232C31C94(&v66[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated]);
    sub_232C31A5C(v108, &v66[v80], &qword_27DDC6A80, &qword_232CF6D30);
    swift_endAccess();
    v81 = objc_allocWithZone(type metadata accessor for DUDocument());
    v82 = v66;
    v83 = DUDocument.init(rawDocument:maxLength:)(v82, 5120);
    sub_232CE8C00();
    sub_232B55484();
    sub_232B12504(v84, v85, v86, v87);
    sub_232B55484();
    sub_232B12504(v88, v89, v90, v76);
    v91 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate(0));
    v92 = v107;
    v93 = v83;
    sub_232C31C38();
    DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v94, v95, v96, v97, v109, 0x7265646E696D6572, v98, v108, 0);
    [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
    v99 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v100 = sub_232C31C68(&a13);
    v101 = sub_232CE9D20();
    [v100 setBundleID_];
  }

  else
  {
    sub_232CE9A20();
    v102 = sub_232CE9A00();
    v103 = sub_232CEA1C0();
    if (sub_232BC1E54(v103))
    {
      *sub_232BA73DC() = 0;
      sub_232C31DA4(&dword_232B02000, v104, v105, "HarvestingDocumentNormalization: Failed to initialize reminder content from serialized protobuf");
      sub_232BA6A84();
    }

    v41(v35, v29);
    sub_232C31E04();
    sub_232B4EC24(&type metadata for HarvestingDocumentNormalizationError);
    *v106 = 0xD00000000000005FLL;
    v106[1] = v29;
    swift_willThrow();
  }

  sub_232C31D64();
  sub_232BA6688();
}

void sub_232C312B0()
{
  sub_232BA66A0();
  v68 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v6);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  sub_232B2D108();
  v67 = v8;
  v9 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v9);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232B2D108();
  v66 = v11;
  sub_232B554F0();
  v73 = sub_232CE9A30();
  sub_232B48F0C();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_232B3516C();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  MEMORY[0x28223BE20](v21);
  sub_232C31C18(v22);
  v23 = sub_232CE9A00();
  v24 = sub_232CEA1A0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = sub_232BA73DC();
    *v25 = 0;
    _os_log_impl(&dword_232B02000, v23, v24, "(HarvestingDocumentNormalization) Normalizing file content", v25, 2u);
    sub_232BA6A84();
  }

  v26 = *(v13 + 8);
  v26(v0, v73);
  type metadata accessor for DUDocument();
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  sub_232B41B94(v5, v3);
  sub_232C2EB20(v5, v3);
  sub_232C31B94();
  sub_232CE98B0();
  v27 = v71;
  if (v71)
  {
    v28 = sub_232B5821C();
    if (!v29)
    {
      goto LABEL_9;
    }

    v30 = v28;
    v31 = v29;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      MEMORY[0x238391C30](0x3A656C6966, 0xE500000000000000);
      v69 = sub_232B582D0();
      v70 = v33;
      sub_232B124A8(&qword_27DDC77E8, &qword_232CFAA68);
      sub_232CEA5B0();

      v34 = v71;
      v35 = v72;
      v36 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());
      v37 = DUDocumentIdentifier.init(documentNamespace:documentID:)(0xD000000000000028, 0x8000000232D09E90, v34, v35);
      sub_232CE8C00();
      v38 = v66;
      sub_232B55484();
      sub_232B12504(v39, v40, v41, v42);
      sub_232CE8D10();
      v43 = v67;
      sub_232B55484();
      sub_232B12504(v44, v45, v46, v47);
      v48 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate(0));
      v49 = v37;
      v50 = v27;
      DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v49, 0, 0, v27, v38, 0x73656C6966, 0xE500000000000000, v43, 0);
      v51 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
      v52 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      sub_232C318A4(0, 0, 0, 0, v51);
    }

    else
    {
LABEL_9:
      sub_232CE9A20();
      v53 = sub_232CE9A00();
      v54 = sub_232CEA1C0();
      if (os_log_type_enabled(v53, v54))
      {
        *sub_232BA73DC() = 0;
        sub_232C31DE4(&dword_232B02000, v55, v56, "HarvestingDocumentNormalization: nil or empty text when initializing document from serialized Data");
        sub_232BA6A84();
      }

      v26(v20, v73);
      sub_232C31E04();
      v57 = sub_232B4EC24(&type metadata for HarvestingDocumentNormalizationError);
      sub_232C31D2C(v57, v58);
    }
  }

  else
  {
    sub_232CE9A20();
    v59 = sub_232CE9A00();
    v60 = sub_232CEA1C0();
    if (os_log_type_enabled(v59, v60))
    {
      *sub_232BA73DC() = 0;
      sub_232C31DE4(&dword_232B02000, v61, v62, "HarvestingDocumentNormalization: Failed to initialize document from serialized Data");
      sub_232BA6A84();
    }

    v26(v17, v73);
    sub_232C31E04();
    v63 = sub_232B4EC24(&type metadata for HarvestingDocumentNormalizationError);
    sub_232C31D2C(v63, v64);
  }

  sub_232BA6688();
}

id HarvestingDocumentNormalization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HarvestingDocumentNormalization.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HarvestingDocumentNormalization();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HarvestingDocumentNormalization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HarvestingDocumentNormalization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232C318A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_232CE9D20();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_232CE9D20();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

id sub_232C31950(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_232CE8C50();
    sub_232BB6018(a1, a2);
  }

  v6 = [v2 initWithProtoData_];

  return v6;
}

uint64_t sub_232C319F8(void *a1)
{
  v1 = [a1 htmlContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232CE8C80();

  return v3;
}

uint64_t sub_232C31A5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_232B124A8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_232C31AC4(void *a1)
{
  v1 = [a1 toHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_232BA4DEC(0, &qword_2814DF928, 0x277CF19E8);
  v3 = sub_232CE9FE0();

  return v3;
}

uint64_t sub_232C31B34(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_232CE9D50();

  return v4;
}

unint64_t sub_232C31B94()
{
  result = qword_27DDC7FF8;
  if (!qword_27DDC7FF8)
  {
    type metadata accessor for DUDocument();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7FF8);
  }

  return result;
}

uint64_t sub_232C31BEC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232C31C18(uint64_t a1)
{

  return sub_232CE9A20();
}

id sub_232C31C48(uint64_t a1)
{

  return DUDocumentIdentifier.init(documentNamespace:documentID:)(a1, v3 | 0x8000000000000000, v1, v2);
}

id sub_232C31C68@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 - 256);
  v6 = *(v3 - 296);
  v7 = *(v3 - 72);

  return sub_232C318A4(v5, v1, v6, v7, v2);
}

uint64_t sub_232C31C94(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_232C31CC0()
{

  JUMPOUT(0x238391C30);
}

double sub_232C31CE4()
{
  *v1 = *(v0 + 96);
  v1[1] = v2;
  *(v0 + 40) = v2;

  return result;
}

void sub_232C31D08()
{
  *(v1 - 288) = v0;

  JUMPOUT(0x238391C30);
}

uint64_t sub_232C31D2C(uint64_t a1, void *a2)
{
  *a2 = 0xD000000000000043;
  a2[1] = v2;

  return swift_willThrow();
}

void sub_232C31DA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_232C31DC4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_232C31DE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t sub_232C31E04()
{

  return sub_232C2ED90();
}

uint64_t sub_232C31E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_232CEA5B0();
}

_BYTE *storeEnumTagSinglePayload for IntelligencePlatform(_BYTE *result, int a2, int a3)
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

unint64_t sub_232C31EE4()
{
  result = qword_27DDC8000;
  if (!qword_27DDC8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8000);
  }

  return result;
}

uint64_t sub_232C31F38()
{
  sub_232CEA820();
  MEMORY[0x2383925C0](0);
  return sub_232CEA850();
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(uint64_t a1)
{
  result = qword_27DDC8008;
  if (!qword_27DDC8008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C32020(uint64_t a1)
{
  sub_232B2E0AC();
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      sub_232C320BC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C320BC(uint64_t a1)
{
  if (!qword_27DDC67E8)
  {
    type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(255);
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDC67E8);
    }
  }
}

uint64_t sub_232C32114@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  sub_232CE9330();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);

  return sub_232B12504(a1 + v3, 1, 1, v4);
}

uint64_t sub_232C32184()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD50D8);
  sub_232B135C4(v0, qword_27DDD50D8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "languageTags";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseDebugInfo";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C3234C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232C323D4(a1, v5, a2, a3);
    }

    else if (result == 1)
    {
      sub_232CE9460();
    }
  }

  return result;
}

uint64_t sub_232C323D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232C32DF0(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  return sub_232CE94C0();
}

uint64_t sub_232C32488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_232CE95A0(), !v4))
  {
    result = sub_232C32540(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C32540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  sub_232B21B7C(a1 + *(v11 + 24), v7);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v7, v10);
  sub_232C32DF0(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  sub_232CE95E0();
  return sub_232B21C50(v10);
}

uint64_t sub_232C326E0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  sub_232B13F24();
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  if ((sub_232B32DC4(*a1, *a2) & 1) == 0)
  {
    goto LABEL_24;
  }

  v15 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0) + 24);
  v16 = *(v11 + 48);
  sub_232B21B7C(a1 + v15, v14);
  sub_232B21B7C(a2 + v15, &v14[v16]);
  sub_232B13FF0(v14);
  if (v20)
  {
    sub_232B13FF0(&v14[v16]);
    if (v20)
    {
      sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_232B21B7C(v14, v10);
  sub_232B13FF0(&v14[v16]);
  if (v20)
  {
    sub_232B21C50(v10);
LABEL_11:
    v21 = &qword_27DDC6828;
    v22 = &unk_232CF6030;
LABEL_23:
    sub_232B13790(v14, v21, v22);
LABEL_24:
    v19 = 0;
    return v19 & 1;
  }

  sub_232B21BEC(&v14[v16], v7);
  v23 = *(v4 + 20);
  v24 = &v10[v23];
  v25 = *&v10[v23 + 8];
  v26 = &v7[v23];
  v27 = *(v26 + 1);
  if (!v25)
  {
    if (!v27)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (!v27 || (*v24 == *v26 ? (v28 = v25 == v27) : (v28 = 0), !v28 && (sub_232CEA750() & 1) == 0))
  {
LABEL_22:
    sub_232B21C50(v7);
    sub_232B21C50(v10);
    v21 = &qword_27DDC67C8;
    v22 = &unk_232CF5E70;
    goto LABEL_23;
  }

LABEL_19:
  sub_232CE9340();
  sub_232C32E38();
  sub_232C32DF0(v29, v30, MEMORY[0x277D216D0]);
  v31 = sub_232CE9CF0();
  sub_232B21C50(v7);
  sub_232B21C50(v10);
  sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v31 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  sub_232CE9340();
  sub_232C32E38();
  sub_232C32DF0(v17, v18, MEMORY[0x277D216D0]);
  v19 = sub_232CE9CF0();
  return v19 & 1;
}

uint64_t sub_232C329E4()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  sub_232C32DF0(&qword_27DDC8020, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse, &unk_232CFDC98);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C32ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C32DF0(&qword_27DDC8030, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse, &unk_232CFDD28);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C32B38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6400 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD50D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C32BE0(uint64_t a1)
{
  v2 = sub_232C32DF0(&qword_27DDC7840, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse, &unk_232CFDD60);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C32C50(uint64_t a1, uint64_t a2)
{
  sub_232C32DF0(&qword_27DDC7840, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse, &unk_232CFDD60);

  return sub_232CE9500();
}

uint64_t sub_232C32DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_232C32EA0()
{
  result = qword_27DDC8038;
  if (!qword_27DDC8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8038);
  }

  return result;
}

unint64_t sub_232C32F08()
{
  result = qword_27DDC8040;
  if (!qword_27DDC8040)
  {
    sub_232B27EEC(&qword_27DDC8048, &qword_232CFDE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8040);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvailableModelsForTextGenerationFramework(_BYTE *result, int a2, int a3)
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

uint64_t sub_232C33068(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232CE9A30();
  sub_232B135FC(v5, a2);
  sub_232B135C4(v5, a2);
  return sub_232CE9A10();
}

uint64_t sub_232C330E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_232CE8B90();
  v4 = CGPDFDocumentCreateWithURL(v3);

  if (v4)
  {
    v5 = sub_232C331CC(v4, a2);

    return v5;
  }

  else
  {
    sub_232C33178();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_232C33178()
{
  result = qword_27DDC8050;
  if (!qword_27DDC8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8050);
  }

  return result;
}

uint64_t sub_232C331CC(CGPDFDocument *a1, uint64_t a2)
{
  v4 = sub_232CE9A30();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  NumberOfPages = CGPDFDocumentGetNumberOfPages(a1);
  v7 = [objc_allocWithZone(MEMORY[0x277CCAB68]) init];
  for (i = 1; ; ++i)
  {
    if (NumberOfPages < i || [v7 length] >= a2)
    {
      return sub_232CE9DB0();
    }

    v9 = CGPDFDocumentGetPage(a1, i);
    if (!v9)
    {
      v18 = v23;
      sub_232CE9A20();
      v19 = sub_232CE9A00();
      v20 = sub_232CEA1C0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = i;
        _os_log_impl(&dword_232B02000, v19, v20, "Error while reading page %ld in PDF", v21, 0xCu);
        MEMORY[0x238393870](v21, -1, -1);
      }

      (*(v24 + 8))(v18, v25);
      return sub_232CE9DB0();
    }

    v10 = v9;
    v11 = CGPDFPageCopyString();
    result = sub_232CE9D50();
    if (__OFADD__(i, 1))
    {
      break;
    }

    v14 = result;
    v15 = v13;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      [v7 appendString_];
      v17 = v11;
    }

    else
    {
      v17 = v10;
      v10 = v11;
    }
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for PDFNormalizationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_232C334BC()
{
  result = qword_27DDC8058;
  if (!qword_27DDC8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8058);
  }

  return result;
}

uint64_t sub_232C33510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t))
{
  while (1)
  {
    v13 = a1;
    a5(&v13, a3, a4);
    if (v5 || a2 == a1)
    {
      break;
    }

    if (__OFADD__(a1++, 1))
    {
      __break(1u);
    }
  }
}

uint64_t sub_232C335A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  v24 = v6;
  while (1)
  {
    v7 = sub_232CEA720();
    MEMORY[0x238391C30](v7);

    v8 = 0.0;
    if (*(v6 + 16))
    {
      v9 = sub_232B20520(a1);
      if (v10)
      {
        v8 = *(*(v6 + 56) + 8 * v9);
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v11 = *a3;
    v26 = *a3;
    v12 = sub_232B1F160(0xD000000000000017, 0x8000000232D02A20);
    if (__OFADD__(v11[2], (v13 & 1) == 0))
    {
      break;
    }

    v14 = v12;
    v15 = v13;
    sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
    if (sub_232CEA5C0())
    {
      v16 = sub_232B1F160(0xD000000000000017, 0x8000000232D02A20);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_20;
      }

      v14 = v16;
    }

    if (v15)
    {
      *(v26[7] + 8 * v14) = v8;
    }

    else
    {
      v26[(v14 >> 6) + 8] |= 1 << v14;
      v18 = (v26[6] + 16 * v14);
      *v18 = 0xD000000000000017;
      v18[1] = 0x8000000232D02A20;
      *(v26[7] + 8 * v14) = v8;
      v19 = v26[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_19;
      }

      v26[2] = v21;
    }

    *a3 = v26;

    v6 = v24;
    if (a2 == a1)
    {
      return sub_232C3B64C(a4);
    }

    v20 = __OFADD__(a1++, 1);
    if (v20)
    {
      __break(1u);
      return sub_232C3B64C(a4);
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232C337C8(uint64_t a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = 0;
  v35 = a1 + 56;

  v33 = a2;
  v34 = v9;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(v4 + 48) + ((v10 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    v16 = sub_232CE9D20();
    v17 = [a2 featureValueForName_];

    if (v17)
    {
      [v17 doubleValue];
      v19 = v18;

      swift_isUniquelyReferenced_nonNull_native();
      v38 = *a3;
      v20 = v14;
      v21 = sub_232B1F160(v14, v15);
      if (__OFADD__(v38[2], (v22 & 1) == 0))
      {
        goto LABEL_23;
      }

      v23 = v21;
      v24 = v22;
      sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
      if (sub_232CEA5C0())
      {
        v25 = v20;
        v26 = sub_232B1F160(v20, v15);
        v5 = v35;
        if ((v24 & 1) != (v27 & 1))
        {
          goto LABEL_25;
        }

        v23 = v26;
      }

      else
      {
        v5 = v35;
        v25 = v20;
      }

      v9 = v34;
      if (v24)
      {
        *(v38[7] + 8 * v23) = v19;
      }

      else
      {
        v38[(v23 >> 6) + 8] |= 1 << v23;
        v28 = (v38[6] + 16 * v23);
        *v28 = v25;
        v28[1] = v15;
        *(v38[7] + 8 * v23) = v19;
        v29 = v38[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_24;
        }

        v38[2] = v31;
      }

      *a3 = v38;

      v4 = v36;
      a2 = v33;
    }

    else
    {

      v4 = v36;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      swift_unknownObjectRelease();
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

void sub_232C33A68(uint64_t a1, unint64_t a2)
{
  v4 = sub_232B26B10();
  if (!a1)
  {
    goto LABEL_124;
  }

  v5 = v4;
  v6 = sub_232C3B6A0(0, v4, a1);
  v54 = MEMORY[0x277D84F90];
  sub_232B64C48(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = a2 >> 62;
    v50 = a1;
    v52 = v5;
    if (v6)
    {
      v49 = sub_232B26B10();
      v48 = sub_232B26B10();
      v46 = v6;
      v47 = sub_232B26B10();
      v8 = 0;
      v9 = 0;
      v53 = a2 & 0xC000000000000001;
      while (1)
      {
        v10 = v5 >= v9;
        if (a1 > 0)
        {
          v10 = v9 >= v5;
        }

        if (v10)
        {
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
          goto LABEL_125;
        }

        if (__OFADD__(v9, a1))
        {
          v11 = ((v9 + a1) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v11 = v9 + a1;
        }

        if (__OFADD__(v9, a1))
        {
          goto LABEL_113;
        }

        if (v49 >= v9 + a1)
        {
          v12 = v9 + a1;
        }

        else
        {
          v12 = v49;
        }

        if (v12 < v9)
        {
          goto LABEL_114;
        }

        if (v48 < v9)
        {
          goto LABEL_115;
        }

        if (v9 < 0)
        {
          goto LABEL_116;
        }

        if (v47 < v12)
        {
          goto LABEL_117;
        }

        if (!v53 || v9 == v12)
        {

          if (!v7)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v9 >= v12)
          {
            goto LABEL_122;
          }

          sub_232BA4DEC(0, &qword_27DDC7068, 0x277CBFED0);

          v13 = v9;
          do
          {
            v14 = v13 + 1;
            sub_232CEA520();
            v13 = v14;
          }

          while (v12 != v14);
          if (!v7)
          {
LABEL_25:
            v15 = (2 * v12) | 1;
            goto LABEL_28;
          }
        }

        sub_232CEA620();
        v9 = v16;
LABEL_28:
        v17 = v15 >> 1;
        if ((v15 & 1) == 0)
        {
          v18 = v17 - v9;
          if (__OFSUB__(v17, v9))
          {
            goto LABEL_121;
          }

          if (v18)
          {
            goto LABEL_31;
          }

LABEL_38:
          v19 = MEMORY[0x277D84F90];
          goto LABEL_42;
        }

        sub_232CEA770();
        swift_unknownObjectRetain_n();
        v21 = swift_dynamicCastClass();
        if (!v21)
        {
          swift_unknownObjectRelease();
          v21 = MEMORY[0x277D84F90];
        }

        v22 = *(v21 + 16);

        v18 = v17 - v9;
        if (__OFSUB__(v17, v9))
        {
          goto LABEL_123;
        }

        if (v22 != v18)
        {
          swift_unknownObjectRelease();
          a1 = v50;
          if (!v18)
          {
            goto LABEL_38;
          }

LABEL_31:
          if (v18 < 1)
          {
            v19 = MEMORY[0x277D84F90];
          }

          else
          {
            sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
            v19 = swift_allocObject();
            v20 = j__malloc_size(v19);
            v19[2] = v18;
            v19[3] = (2 * ((v20 - 32) / 8)) | 1;
          }

          if (v9 == v17)
          {
            goto LABEL_127;
          }

          sub_232BA4DEC(0, &qword_27DDC7068, 0x277CBFED0);
          swift_arrayInitWithCopy();
LABEL_42:
          swift_unknownObjectRelease();
          goto LABEL_43;
        }

        v19 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        a1 = v50;
        if (!v19)
        {
          goto LABEL_38;
        }

LABEL_43:
        v24 = *(v54 + 16);
        v23 = *(v54 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_232B64C48((v23 > 1), v24 + 1, 1);
        }

        ++v8;
        *(v54 + 16) = v24 + 1;
        *(v54 + 8 * v24 + 32) = v19;
        v9 = v11;
        v7 = a2 >> 62;
        v5 = v52;
        if (v8 == v46)
        {
          v25 = a2 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_50;
        }
      }
    }

    v11 = 0;
    v25 = a2 & 0xFFFFFFFFFFFFFF8;
    v53 = a2 & 0xC000000000000001;
LABEL_50:
    v51 = v25;
    while (1)
    {
      v26 = v5 >= v11;
      if (a1 > 0)
      {
        v26 = v11 >= v5;
      }

      if (v26)
      {
        return;
      }

      v27 = v11 + a1;
      if (__OFADD__(v11, a1))
      {
        v28 = ((v11 + a1) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v28 = v11 + a1;
      }

      if (__OFADD__(v11, a1))
      {
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
        goto LABEL_112;
      }

      if (v7)
      {
        v43 = sub_232CEA610();
        if (v43 >= v27)
        {
          v31 = v11 + a1;
        }

        else
        {
          v31 = v43;
        }

        v29 = v51;
        if (v31 < v11)
        {
          goto LABEL_107;
        }

        v30 = sub_232CEA610();
      }

      else
      {
        v29 = v51;
        v30 = *(v51 + 16);
        if (v30 >= v27)
        {
          v31 = v11 + a1;
        }

        else
        {
          v31 = *(v51 + 16);
        }

        if (v31 < v11)
        {
          goto LABEL_107;
        }
      }

      if (v30 < v11)
      {
        goto LABEL_108;
      }

      if (v11 < 0)
      {
        goto LABEL_109;
      }

      if (v7)
      {
        v32 = sub_232CEA610();
      }

      else
      {
        v32 = *(v29 + 16);
      }

      if (v32 < v31)
      {
        goto LABEL_110;
      }

      if (v31 < 0)
      {
        goto LABEL_111;
      }

      if (!v53 || v11 == v31)
      {

        if (!v7)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v11 >= v31)
        {
          goto LABEL_119;
        }

        sub_232BA4DEC(0, &qword_27DDC7068, 0x277CBFED0);

        v33 = v11;
        do
        {
          v34 = v33 + 1;
          sub_232CEA520();
          v33 = v34;
        }

        while (v31 != v34);
        if (!v7)
        {
LABEL_76:
          v35 = (2 * v31) | 1;
          goto LABEL_79;
        }
      }

      sub_232CEA620();
      v11 = v36;
LABEL_79:
      v37 = v35 >> 1;
      if ((v35 & 1) == 0)
      {
        v38 = v37 - v11;
        if (__OFSUB__(v37, v11))
        {
          goto LABEL_118;
        }

        if (v38)
        {
          goto LABEL_82;
        }

LABEL_99:
        v39 = MEMORY[0x277D84F90];
        goto LABEL_100;
      }

      sub_232CEA770();
      swift_unknownObjectRetain_n();
      v41 = swift_dynamicCastClass();
      if (!v41)
      {
        swift_unknownObjectRelease();
        v41 = MEMORY[0x277D84F90];
      }

      v42 = *(v41 + 16);

      v38 = v37 - v11;
      if (__OFSUB__(v37, v11))
      {
        goto LABEL_120;
      }

      if (v42 != v38)
      {
        swift_unknownObjectRelease();
        if (!v38)
        {
          goto LABEL_99;
        }

LABEL_82:
        if (v38 < 1)
        {
          v39 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
          v39 = swift_allocObject();
          v40 = j__malloc_size(v39);
          v39[2] = v38;
          v39[3] = (2 * ((v40 - 32) / 8)) | 1;
        }

        if (v11 == v37)
        {
          goto LABEL_126;
        }

        sub_232BA4DEC(0, &qword_27DDC7068, 0x277CBFED0);
        swift_arrayInitWithCopy();
LABEL_100:
        v7 = a2 >> 62;
        v5 = v52;
        goto LABEL_101;
      }

      v39 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v7 = a2 >> 62;
      v5 = v52;
      if (v39)
      {
        goto LABEL_102;
      }

      v39 = MEMORY[0x277D84F90];
LABEL_101:
      swift_unknownObjectRelease();
LABEL_102:
      v45 = *(v54 + 16);
      v44 = *(v54 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_232B64C48((v44 > 1), v45 + 1, 1);
      }

      *(v54 + 16) = v45 + 1;
      *(v54 + 8 * v45 + 32) = v39;
      v11 = v28;
      a1 = v50;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_232C3414C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x8000000232D0A250 == a2;
  if (v3 || (sub_232CEA750() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000232D0A270 == a2;
    if (v6 || (sub_232CEA750() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736563614678616DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_232CEA750() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
        if (v8 || (sub_232CEA750() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x8000000232D0A290 == a2;
          if (v9 || (sub_232CEA750() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6B6361426B6F6F6CLL && a2 == 0xEF73726165596E49)
          {

            return 5;
          }

          else
          {
            v11 = sub_232CEA750();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_232C34354(char a1)
{
  result = 0x736563614678616DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7A69536863746162;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6B6361426B6F6F6CLL;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_232C34430(void *a1)
{
  v3 = sub_232B124A8(&qword_27DDC8070, &unk_232CFE0A0);
  sub_232B48F0C();
  v5 = v4;
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  sub_232B203C8(a1, a1[3]);
  sub_232C3B2D4();
  sub_232CEA880();
  v10[15] = 0;
  sub_232C3BBCC();
  sub_232CEA6E0();
  if (!v1)
  {
    v10[14] = 1;
    sub_232C3BBCC();
    sub_232CEA6F0();
    v10[13] = 2;
    sub_232C3BBCC();
    sub_232CEA6F0();
    v10[12] = 3;
    sub_232C3BBCC();
    sub_232CEA6F0();
    v10[11] = 4;
    sub_232C3BBCC();
    sub_232CEA6E0();
    v10[10] = 5;
    sub_232C3BBCC();
    sub_232CEA6E0();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_232C3460C@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_232B124A8(&qword_27DDC8060, &qword_232CFE098);
  sub_232B48F0C();
  v7 = v6;
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_232B203C8(a1, a1[3]);
  sub_232C3B2D4();
  sub_232CEA870();
  if (v2)
  {
    return sub_232B2040C(a1);
  }

  v26 = 0;
  sub_232C3BA00();
  sub_232CEA6B0();
  v12 = v11;
  v25 = 1;
  sub_232C3BA00();
  v13 = sub_232CEA6C0();
  v24 = 2;
  sub_232C3BA00();
  v14 = sub_232CEA6C0();
  v23 = 3;
  sub_232C3BA00();
  v20 = sub_232CEA6C0();
  v22 = 4;
  sub_232C3BA00();
  sub_232CEA6B0();
  v16 = v15;
  v21 = 5;
  sub_232C3BA00();
  sub_232CEA6B0();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  result = sub_232B2040C(a1);
  *a2 = v12;
  *(a2 + 1) = v13;
  *(a2 + 2) = v14;
  *(a2 + 3) = v20;
  *(a2 + 4) = v16;
  *(a2 + 5) = v18;
  return result;
}

uint64_t sub_232C34840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232C3414C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232C34868(uint64_t a1)
{
  v2 = sub_232C3B2D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232C348A4(uint64_t a1)
{
  v2 = sub_232C3B2D4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_232C348E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_232C3460C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_232C3493C()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = v0;
    sub_232CE8B10();
    swift_allocObject();
    v1 = sub_232CE8B00();
    *(v2 + 160) = v1;
  }

  return v1;
}

uint64_t sub_232C349B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  type metadata accessor for DUTrialAssetLoader();
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  swift_allocObject();
  *(v0 + 96) = sub_232C14534();
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  sub_232C34AAC();
  sub_232C351E4();
  sub_232C356F8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 152);
  v3 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v3;
  v7[0] = *(v0 + 64);
  *(v7 + 9) = *(v0 + 73);
  *(v0 + 32) = v1;
  *(v0 + 40) = *(v0 + 104);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = *(v0 + 136);
  *(v0 + 88) = v2;
  v4 = v1;
  sub_232B267AC(v6, &qword_27DDC80A0, &unk_232CFE0E8);
  return v0;
}

void sub_232C34AAC()
{
  sub_232B35110();
  v88[1] = *MEMORY[0x277D85DE8];
  sub_232CE9A30();
  sub_232B48F0C();
  v86 = v3;
  v87 = v2;
  MEMORY[0x28223BE20](v2);
  sub_232B3516C();
  v84 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  sub_232C3BA64();
  MEMORY[0x28223BE20](v7);
  v16 = sub_232C3BCAC(v8, v9, v10, v11, v12, v13, v14, v15, v82[0]);
  sub_232B48F0C();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_232B20704();
  v22 = v21 - v20;
  sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D114();
  MEMORY[0x28223BE20](v23);
  v25 = v82 - v24;
  v26 = sub_232CE8C00();
  sub_232B48F0C();
  v85 = v27;
  MEMORY[0x28223BE20](v28);
  sub_232B3516C();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v82 - v33;
  MEMORY[0x28223BE20](v35);
  v82[0] = v0;
  LOBYTE(v88[0]) = 0;
  v36 = sub_232C14684();
  if (!v36)
  {
    sub_232CE9A20();
    v44 = sub_232CE9A00();
    v45 = sub_232CEA1C0();
    if (sub_232BA6EB8(v45))
    {
      v46 = sub_232BA73DC();
      sub_232C3BCD0(v46);
      sub_232C3BA74();
      sub_232C3BD78(v47, v48, v49, v50);
      sub_232C3BAA0();
    }

    sub_232C3BC20();
    v51(v1);
    goto LABEL_14;
  }

  v83 = v36;
  sub_232C3B410(v36);
  if (v37)
  {
    sub_232B12504(v25, 1, 1, v26);
    (*(v18 + 104))(v22, *MEMORY[0x277CC91D8], v16);
    sub_232CE8BE0();
    v38 = objc_opt_self();
    v39 = sub_232CE8B90();
    v88[0] = 0;
    v40 = [v38 compileModelAtURL:v39 error:v88];

    v41 = v88[0];
    if (v40)
    {
      sub_232CE8BB0();
      v42 = v41;

      sub_232BA4DEC(0, &qword_2814DF8D0, 0x277CBFF20);
      v43 = v85;
      (*(v85 + 16))(v31, v34, v26);
      v70 = sub_232C3508C(v31);
      v71 = *(v43 + 8);
      v71(v34, v26);
      v72 = *(v82[0] + 16);
      *(v82[0] + 16) = v70;

      v73 = v82[1];
      sub_232CE9A20();
      v74 = sub_232CE9A00();
      v75 = sub_232CEA1A0();
      if (sub_232BA6EB8(v75))
      {
        v77 = sub_232BA73DC();
        sub_232BD4280(v77);
        sub_232C3BA24(&dword_232B02000, v78, v79, "Loaded autonaming model from trial successfully");
        sub_232BA66EC();
      }

      sub_232C3BC20();
      v80(v73);
      v81 = sub_232B35090();
      (v71)(v81);
    }

    else
    {
      v52 = v88[0];
      v53 = sub_232CE8B30();

      swift_willThrow();
      v54 = v84;
      sub_232CE9A20();
      v55 = v53;
      v56 = sub_232CE9A00();
      v57 = sub_232CEA1C0();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = sub_232BC1F80();
        v59 = sub_232C3BD90();
        *v58 = 138412290;
        v60 = v53;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v61;
        *v59 = v61;
        sub_232C3BD58();
        _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
        sub_232B267AC(v59, &qword_27DDC6FD0, &unk_232CFA240);
        sub_232BA6A84();
        sub_232B26D28();
      }

      sub_232C3BC20();
      v67(v54);
      v68 = sub_232B35090();
      v69(v68);
    }

LABEL_14:
    sub_232B20A00();
    return;
  }

  __break(1u);
}

id sub_232C3508C(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_232CE8B90();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_232CE8C00();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_232CE8B30();

    swift_willThrow();
    v9 = sub_232CE8C00();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

void sub_232C351E4()
{
  sub_232B35110();
  sub_232CE9A30();
  sub_232B48F0C();
  v51 = v3;
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  sub_232B3516C();
  v50 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  sub_232C3BCAC(v7, v8, v9, v10, v11, v12, v13, v14, v0);
  sub_232B48F0C();
  v48 = v16;
  v49 = v15;
  MEMORY[0x28223BE20](v15);
  sub_232B20704();
  v19 = v18 - v17;
  sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D114();
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  v23 = sub_232CE8C00();
  sub_232B48F0C();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_232B3516C();
  sub_232C3BA64();
  MEMORY[0x28223BE20](v27);
  v29 = v47 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v47 - v31;
  v33 = [objc_opt_self() topDirectory];
  v34 = sub_232CE9D50();

  v35 = v23;
  sub_232CE8BD0();

  if (sub_232B12480(v22, 1, v23) == 1)
  {
    sub_232B267AC(v22, &qword_27DDC6AD8, &unk_232CF82F0);
    v36 = v50;
    sub_232CE9A20();
    v37 = sub_232CE9A00();
    sub_232CEA1C0();
    sub_232C3BC08();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = sub_232BA73DC();
      *v39 = 0;
      _os_log_impl(&dword_232B02000, v37, v34, "Couldn't initialize stats db URL in PoemAggregationHandler", v39, 2u);
      sub_232BA6A84();
    }

    sub_232C3BC20();
    v40(v36);
  }

  else
  {
    v53 = 0xD000000000000014;
    v54 = 0x8000000232D0A230;
    v42 = v48;
    v41 = v49;
    (*(v48 + 104))(v19, *MEMORY[0x277CC91D8], v49);
    sub_232B48080();
    sub_232CE8BF0();
    (*(v42 + 8))(v19, v41);
    v43 = *(v25 + 8);
    v43(v22, v23);
    (*(v25 + 32))(v32, v29, v23);
    (*(v25 + 16))(v1, v32, v23);
    v44 = objc_allocWithZone(type metadata accessor for PoemStatsDatabase());
    v45 = PoemStatsDatabase.init(dbURL:isFrozen:)(v1, 0);
    v43(v32, v35);
    v46 = *(v47[0] + 24);
    *(v47[0] + 24) = v45;
  }

  sub_232B20A00();
}

void sub_232C356F8()
{
  sub_232B35110();
  sub_232CE9A30();
  sub_232B48F0C();
  v48 = v3;
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  sub_232B3516C();
  v46[1] = v4 - v5;
  MEMORY[0x28223BE20](v6);
  sub_232C3BA64();
  MEMORY[0x28223BE20](v7);
  sub_232C3BD10();
  MEMORY[0x28223BE20](v8);
  v46[0] = v46 - v9;
  v10 = sub_232CE8B40();
  sub_232B48F0C();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v16 = v15 - v14;
  sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D114();
  MEMORY[0x28223BE20](v17);
  v19 = v46 - v18;
  v50 = sub_232CE8C00();
  sub_232B48F0C();
  v47 = v20;
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v24 = v23 - v22;
  LOBYTE(v51) = 0;
  v25 = sub_232C14684();
  if (!v25)
  {
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1C0();
    if (sub_232BA6EB8(v29))
    {
      v30 = sub_232BA73DC();
      sub_232C3BCD0(v30);
      sub_232C3BA74();
      sub_232C3BD78(v31, v32, v33, v34);
      sub_232C3BAA0();
    }

    (*(v48 + 8))(v1, v49);
    goto LABEL_10;
  }

  v26 = v25;
  sub_232C3B410(v25);
  if (v27)
  {
    sub_232B12504(v19, 1, 1, v50);
    (*(v12 + 104))(v16, *MEMORY[0x277CC91D8], v10);
    sub_232C3BD44();
    sub_232CE8BE0();
    v35 = sub_232CE8C20();
    v37 = v36;
    sub_232C3493C();
    sub_232C3B740();
    sub_232CE8AF0();

    v38 = v52;
    *(v0 + 104) = v51;
    *(v0 + 120) = v38;
    *(v0 + 136) = v53;
    *(v0 + 152) = 0;
    v39 = v46[0];
    sub_232CE9A20();
    v40 = sub_232CE9A00();
    v41 = sub_232CEA1A0();
    if (sub_232BA6EB8(v41))
    {
      v43 = sub_232BA73DC();
      sub_232BD4280(v43);
      sub_232C3BA24(&dword_232B02000, v44, v45, "Loaded autonaming config file from trial successfully");
      sub_232BA66EC();
    }

    sub_232B41BEC(v35, v37);

    (*(v48 + 8))(v39, v49);
    (*(v47 + 8))(v24, v50);
LABEL_10:
    sub_232B20A00();
    return;
  }

  __break(1u);
}

uint64_t sub_232C35C4C(uint64_t a1, char a2)
{
  v5 = sub_232CE9A30();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_232B3516C();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13 + 112;
  if (!*(v2 + 16))
  {
    sub_232CE9A20();
    v19 = sub_232CE9A00();
    sub_232CEA1C0();
    sub_232C3BC08();
    if (os_log_type_enabled(v19, v20))
    {
      *sub_232BA73DC() = 0;
      sub_232C3BD58();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      sub_232B26D28();
    }

    (*(v7 + 8))(v11, v5);
    return MEMORY[0x277D84F90];
  }

  sub_232C36768();
  sub_232C35F4C(v15);
  sub_232C3A1F8();
  if (*(v2 + 152))
  {

    sub_232CE9A20();
    v16 = sub_232CE9A00();
    sub_232CEA1C0();
    sub_232C3BC08();
    if (os_log_type_enabled(v16, v17))
    {
      *sub_232BA73DC() = 0;
      sub_232C3BC90(&dword_232B02000, v18, a1, "Unable to aggregate on conversations because the configuration wasn't loaded");
      sub_232BA6A84();
    }

    (*(v7 + 8))(v14, v5);
    return MEMORY[0x277D84F90];
  }

  v27 = *(v2 + 48);
  v35[0] = *(v2 + 32);
  v35[1] = v27;
  v36[0] = *(v2 + 64);
  *(v36 + 9) = *(v2 + 73);
  if (*&v35[0] == 1)
  {
    sub_232BA5C94();
    sub_232C4BB54();
    v26 = v28;
  }

  else
  {
    v37 = *&v35[0];
    v38 = *(v2 + 40);
    v39 = *(v2 + 56);
    v40 = *(v2 + 72);
    v41 = *(v2 + 88);
    sub_232C3BB9C();
    if ((a2 & 1) == 0)
    {
      v29 = sub_232BA5C94();
      v31 = sub_232C3BEEC(v29, v30, a1);
      sub_232C3CB94(v31);
    }

    sub_232BA5C94();
    sub_232C4BB54();
    v26 = v32;
    sub_232B267AC(v35, &qword_27DDC80A0, &unk_232CFE0E8);
  }

  return v26;
}

void sub_232C35F4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v63[0] = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v5 = sub_232B26B10();
    v60 = v2;
    for (i = 0; v5 != i; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383922C0](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
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
        return;
      }

      v65 = v7;
      sub_232C364E8(&v65, v60, &v64);

      if (v64)
      {
        MEMORY[0x238391D50]();
        v9 = *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
        {
          sub_232BC1BBC(v9);
          sub_232CEA000();
        }

        sub_232CEA020();
        v4 = v63[0];
      }
    }

    v10 = sub_232B26B10();
    if (v10)
    {
      v11 = v10;
      v63[0] = MEMORY[0x277D84F90];
      sub_232B64C68(0, v10 & ~(v10 >> 63), 0);
      if (v11 < 0)
      {
        goto LABEL_80;
      }

      v12 = 0;
      v61 = v4 & 0xC000000000000001;
      v13 = v63[0];
      v55 = v4 + 32;
      v57 = v4 & 0xFFFFFFFFFFFFFF8;
      do
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_73;
        }

        if (v61)
        {
          v15 = MEMORY[0x2383922C0]();
        }

        else
        {
          if (v12 >= *(v57 + 16))
          {
            goto LABEL_79;
          }

          v15 = *(v55 + 8 * v12);
          swift_unknownObjectRetain();
        }

        v16 = [v15 count];
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_74;
        }

        v17 = v16;
        if (v16)
        {
          v18 = v11;
          v19 = v13;
          v65 = MEMORY[0x277D84F90];
          sub_232CEA580();
          v20 = 0;
          do
          {
            v21 = v20 + 1;
            v22 = [v15 featuresAtIndex_];
            sub_232CEA560();
            sub_232CEA590();
            sub_232B35090();
            sub_232CEA5A0();
            sub_232CEA570();
            v20 = v21;
          }

          while (v17 != v21);
          swift_unknownObjectRelease();
          v23 = v65;
          v13 = v19;
          v11 = v18;
        }

        else
        {
          swift_unknownObjectRelease();
          v23 = MEMORY[0x277D84F90];
        }

        v63[0] = v13;
        v25 = *(v13 + 16);
        v24 = *(v13 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_232BC1BBC(v24);
          sub_232BC1E24();
          sub_232B64C68(v26, v27, v28);
          v13 = v63[0];
        }

        *(v13 + 16) = v25 + 1;
        *(v13 + 8 * v25 + 32) = v23;
        v12 = v14;
      }

      while (v14 != v11);
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    v29 = 0;
    v30 = MEMORY[0x277D84F90];
    v58 = v13 + 32;
    v59 = *(v13 + 16);
    v56 = v13;
    while (1)
    {
      if (v29 == v59)
      {

        return;
      }

      if (v29 >= *(v13 + 16))
      {
        goto LABEL_70;
      }

      v31 = *(v58 + 8 * v29);
      if (v31 >> 62)
      {
        v32 = sub_232CEA610();
      }

      else
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v33 = v30 >> 62;
      if (v30 >> 62)
      {
        v34 = sub_232CEA610();
      }

      else
      {
        v34 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v35 = v34 + v32;
      if (__OFADD__(v34, v32))
      {
        goto LABEL_71;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v33)
      {
        goto LABEL_46;
      }

      v36 = v30 & 0xFFFFFFFFFFFFFF8;
      if (v35 > *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_47;
      }

LABEL_48:
      ++v29;
      v37 = *(v36 + 16);
      v38 = (*(v36 + 24) >> 1) - v37;
      v39 = v36 + 8 * v37;
      v62 = v36;
      if (v31 >> 62)
      {
        v41 = sub_232CEA610();
        if (!v41)
        {
          goto LABEL_62;
        }

        v42 = v41;
        v43 = sub_232CEA610();
        if (v38 < v43)
        {
          goto LABEL_77;
        }

        if (v42 < 1)
        {
          goto LABEL_78;
        }

        v52 = v43;
        v53 = v29;
        v54 = v30;
        v44 = v39 + 32;
        sub_232C3B474();
        for (j = 0; j != v42; ++j)
        {
          sub_232B124A8(&qword_27DDC6B10, &unk_232CF8910);
          v46 = sub_232B4D400(v63, j, v31);
          v48 = *v47;
          swift_unknownObjectRetain();
          v46(v63, 0);
          *(v44 + 8 * j) = v48;
        }

        v29 = v53;
        v30 = v54;
        v40 = v52;
LABEL_58:

        v13 = v56;
        if (v40 < v32)
        {
          goto LABEL_72;
        }

        if (v40 > 0)
        {
          v49 = *(v62 + 16);
          v50 = __OFADD__(v49, v40);
          v51 = v49 + v40;
          if (v50)
          {
            goto LABEL_75;
          }

          *(v62 + 16) = v51;
        }
      }

      else
      {
        v40 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v40)
        {
          if (v38 < v40)
          {
            goto LABEL_76;
          }

          sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
          swift_arrayInitWithCopy();
          goto LABEL_58;
        }

LABEL_62:

        v13 = v56;
        if (v32 > 0)
        {
          goto LABEL_72;
        }
      }
    }

    if (v33)
    {
LABEL_46:
      sub_232CEA610();
    }

LABEL_47:
    v30 = sub_232CEA540();
    v36 = v30 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_48;
  }
}

id sub_232C364E8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = sub_232CE9A30();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v24[0] = 0;
  v12 = [a2 predictionsFromBatch:v11 error:{v24, v8}];
  v13 = v24[0];
  if (v12)
  {
    *a3 = v12;
    return v13;
  }

  else
  {
    v15 = v24[0];
    v16 = sub_232CE8B30();

    swift_willThrow();
    sub_232CE9A20();
    v17 = v16;
    v18 = sub_232CE9A00();
    v19 = sub_232CEA1C0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v16;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_232B02000, v18, v19, "Error while inference in PoemAggregationModel: %@", v20, 0xCu);
      sub_232B267AC(v21, &qword_27DDC6FD0, &unk_232CFA240);
      MEMORY[0x238393870](v21, -1, -1);
      MEMORY[0x238393870](v20, -1, -1);
    }

    else
    {
    }

    result = (*(v7 + 8))(v10, v6);
    *a3 = 0;
  }

  return result;
}

void sub_232C36768()
{
  sub_232B35110();
  *&v62 = v0;
  DWORD1(v61) = v1;
  v3 = v2;
  v59 = sub_232CE9A30();
  sub_232B48F0C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  *(&v62 + 1) = v8 - v7;
  sub_232B13F74(v3 + 56, &v78);
  v60 = v3;
  v9 = *(v3 + 56);
  v10 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
  v11 = v9 + 64;
  sub_232B34F88();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  *(&v58 + 1) = v5 + 8;
  *(&v61 + 1) = v17;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19.n128_u64[0] = 138412290;
  v57 = v19;
  v54 = v10;
  v56 = v10;
  while (v14)
  {
LABEL_7:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(*(&v61 + 1) + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = (*(*(&v61 + 1) + 56) + 88 * v22);
    memcpy(v79, v26, 0x58uLL);
    memcpy(v74, v26, sizeof(v74));
    v75[0] = v24;
    v75[1] = v25;
    memcpy(v76, v74, sizeof(v76));

    sub_232C3B5F0(v79, &v64);
    sub_232C36CD8(v24, v25, v79, v60, BYTE4(v61) & 1);
    sub_232BC243C(v27, v28, v29, v30, v31, v32, v33, v34, v54, v56, v57.n128_i64[0], v57.n128_i64[1], v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5]);
    v36 = v35;

    v37 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    sub_232C3B328(v36);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232C3BD64();
      sub_232B35ECC();
      v56 = v44;
    }

    v39 = *(v56 + 16);
    v38 = *(v56 + 24);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      sub_232BC1BBC(v38);
      v55 = v45;
      sub_232B35ECC();
      v40 = v55;
      v56 = v46;
    }

    *(v56 + 16) = v40;
    v41 = v56 + 16 * v39;
    *(v41 + 32) = v24;
    *(v41 + 40) = v25;
    v42 = sub_232B267AC(v75, &qword_27DDC8098, &qword_232CFE0E0);
    MEMORY[0x238391D50](v42);
    v43 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v43 >> 1)
    {
      sub_232BC1BBC(v43);
      sub_232CEA000();
    }

    sub_232CEA020();
    v54 = v77;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return;
    }

    if (v20 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_7;
    }
  }

  if (*(v62 + 152))
  {
    v47 = 32;
  }

  else
  {
    v47 = *(v62 + 128);
  }

  sub_232C33A68(v47, v54);
  v49 = v48;

  v50 = *(v49 + 16);
  if (v50)
  {
    v75[0] = MEMORY[0x277D84F90];
    sub_232CEA580();
    v51 = 32;
    do
    {
      if (*(v49 + v51) >> 62)
      {

        sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
        sub_232CEA600();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_232CEA760();
      }

      v52 = objc_allocWithZone(MEMORY[0x277CBFEB0]);
      sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
      v53 = sub_232CE9FD0();

      [v52 initWithFeatureProviderArray_];

      sub_232CEA560();
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
      v51 += 8;
      --v50;
    }

    while (v50);
  }

  sub_232B20A00();
}

void sub_232C36CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_232C3BDC0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_232CE9A30();
  sub_232B48F0C();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_232B20704();
  v22 = v21 - v20;
  v82[0] = sub_232CE9C60();
  if (*(v5 + 152))
  {
    sub_232CE9A20();
    v23 = sub_232CE9A00();
    sub_232CEA1A0();
    sub_232C3BC08();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_232BA73DC();
      *v25 = 0;
      _os_log_impl(&dword_232B02000, v23, v9, "Unable to create a feature map because the configuration wasn't loaded", v25, 2u);
      sub_232B26D28();
    }

    (*(v18 + 8))(v22, v16);
LABEL_43:
    sub_232C3BDE4();
    return;
  }

  v78 = v7;
  v75 = v5;
  v26 = *(v5 + 120);
  v27 = sub_232C459C0(v15, v13);
  if (v26 >= 1)
  {
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v30;

    sub_232C3B5F0(v11, v81);
    v35 = 1;
    while (1)
    {
      v81[0] = v35;
      sub_232C373B0(v81, v9, v33, v34, v82, v11);
      if (v26 == v35)
      {
        break;
      }

      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        break;
      }
    }

    sub_232C3B64C(v11);
    sub_232B13F74(v9 + 48, &v80);
    v37 = *(v9 + 48);

    v76 = v31;
    v38 = sub_232B1DFEC(v31, v32, v37);
    v40 = v39;

    if (v40)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = v38;
    }

    sub_232BA5C94();
    v42 = v32;
    v43 = sub_232C45ADC();
    v77 = *(*(v9 + 48) + 16);
    v44 = v77;
    v45 = sub_232B13F74(v9 + 64, &v79);
    v46 = *(*(v9 + 64) + 16);
    sub_232C45BFC(v45, v47);
    v49 = v48;
    v51 = v50;
    sub_232C431B4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232C3BDA8(0x61727563636F6F63, 0xEF746E632065636ELL);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v52 = sub_232B209B4();
    sub_232B1F66C(v52, 0xEA0000000000746ELL, v41);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v53 = sub_232B20980();
    sub_232B1F66C(v53, 0xE900000000000074, v43);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232C3BDA8(0xD000000000000012, 0x8000000232D027C0);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232C3BDA8(0xD000000000000013, 0x8000000232D027E0);
    v82[0] = v81[0];
    if (v51)
    {
      if (v49 == v76 && v51 == v42)
      {
      }

      else
      {
        sub_232CEA750();
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232C3BDA8(0x6F20656369766564, 0xEC00000072656E77);
    sub_232C3BB1C();
    if (v46)
    {
      v55 = v43 / v46;
    }

    else
    {
      v55 = 0.0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v56 = sub_232B207EC();
    sub_232B1F66C(v56, v57, v55);
    sub_232C3BB1C();
    if (v77)
    {
      v58 = v41 / v44;
    }

    else
    {
      v58 = 0.0;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    sub_232B1F66C(0xD000000000000011, 0x8000000232D02800, v58);
    sub_232C3BB1C();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v59 = sub_232B20728();
    sub_232B1F66C(v59 & 0xFFFFFFFFFFFFLL | 0x6E20000000000000, 0xEC00000073656D61, v44);
    sub_232C3BB1C();
    v82[0] = v81;
    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3B9A4();
    v60 = sub_232B20728();
    sub_232B1F66C(v60 & 0xFFFFFFFFFFFFLL | 0x6620000000000000, 0xEC00000073656361, v46);
    v61 = v81[0];
    if ((v78 & 1) != 0 && (v62 = *(v75 + 24)) != 0)
    {
      v63 = v62;
      v64 = sub_232C45710();
      v66 = v65;

      if (v66)
      {
        sub_232C419E8(v64, v66, v33, v34, v81);
        sub_232C41624(v64, v66);

        v67 = sub_232BA5C94();
        sub_232C4181C(v67, v68, v69);

        if (v82[2])
        {
          v72 = v82[7];
        }

        else
        {
          v72 = 0;
        }

        if (v82[9])
        {
          v73 = v82[12];
        }

        else
        {
          v73 = 0;
        }

        if (v81[1])
        {
          v74 = v81[6];
        }

        else
        {
          v74 = 0;
        }

        sub_232C377E8(v72, v73, v74, v61, v70, v71);
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_43;
  }

  __break(1u);
}

uint64_t sub_232C373B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v11 = *a1;
  result = swift_beginAccess();
  v13 = *(a2 + 64);
  if (*(v13 + 16))
  {

    v14 = sub_232B1F160(a3, a4);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      v17 = sub_232CEA720();
      MEMORY[0x238391C30](v17);

      if (*(v16 + 16) && (v18 = sub_232B20520(v11), (v19 & 1) != 0))
      {
        v20 = *(*(v16 + 56) + 8 * v18);

        v21 = v20;
      }

      else
      {

        v21 = 0.0;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v42 = *a5;
      sub_232B1F66C(0x746E635F65636166, 0xE90000000000005FLL, v21);
      *a5 = v42;

      v22 = sub_232CEA720();
      MEMORY[0x238391C30](v22);

      v23 = a6[3];
      v24 = 0.0;
      v25 = 0.0;
      if (*(v23 + 16))
      {
        v26 = sub_232B20520(v11);
        if (v27)
        {
          v25 = *(*(v23 + 56) + 8 * v26);
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v43 = *a5;
      sub_232B1F66C(0xD00000000000001ALL, 0x8000000232D029C0, v25);
      *a5 = v43;

      v28 = sub_232CEA720();
      MEMORY[0x238391C30](v28);

      v29 = a6[4];
      if (*(v29 + 16))
      {
        v30 = sub_232B20520(v11);
        if (v31)
        {
          v24 = *(*(v29 + 56) + 8 * v30);
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v44 = *a5;
      sub_232B1F66C(0xD00000000000001CLL, 0x8000000232D029E0, v24);
      *a5 = v44;

      v32 = sub_232CEA720();
      MEMORY[0x238391C30](v32);

      v33 = *a6;
      v34 = 0.0;
      v35 = 0.0;
      if (*(*a6 + 16))
      {
        v36 = sub_232B20520(v11);
        if (v37)
        {
          v35 = *(*(v33 + 56) + 8 * v36);
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v45 = *a5;
      sub_232B1F66C(0xD00000000000001ALL, 0x8000000232D02A00, v35);
      *a5 = v45;

      v38 = sub_232CEA720();
      MEMORY[0x238391C30](v38);

      v39 = a6[2];
      if (*(v39 + 16))
      {
        v40 = sub_232B20520(v11);
        if (v41)
        {
          v34 = *(*(v39 + 56) + 8 * v40);
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v46 = *a5;
      sub_232B1F66C(0xD00000000000001BLL, 0x8000000232D02A40, v34);
      *a5 = v46;
    }
  }

  return result;
}

void sub_232C377E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_232C3BDC0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v15);
  sub_232B20704();
  v116 = v8;
  if (*(v6 + 152))
  {

    sub_232CE9A20();
    v16 = sub_232CE9A00();
    v17 = sub_232CEA1A0();
    if (sub_232BA6EB8(v17))
    {
      v18 = sub_232BA73DC();
      sub_232BD4280(v18);
      sub_232C3BA24(&dword_232B02000, v19, v20, "Unable to update feature map because the configuration wasn't loaded");
      sub_232BA66EC();
    }

    v21 = sub_232B35090();
    v22(v21);
    goto LABEL_58;
  }

  v23 = *(v6 + 120);
  if (v14)
  {
    v24 = *(v14 + 16);

    v25 = 0.0;
    if (v24)
    {
      v26 = sub_232C3BBD8();
      v28 = sub_232B1F160(v26, v27);
      if (v29)
      {
        v25 = *(*(v14 + 56) + 8 * v28);
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v30 = sub_232C3BBD8();
    sub_232B1F160(v30, v31);
    sub_232C3BD38();
    if (__OFADD__(v34, v35))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v36 = v32;
    v37 = v33;
    sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
    if (sub_232CEA5C0())
    {
      v38 = sub_232C3BBD8();
      v40 = sub_232B1F160(v38, v39);
      if ((v37 & 1) != (v41 & 1))
      {
        goto LABEL_66;
      }

      v36 = v40;
    }

    if ((v37 & 1) == 0)
    {
      sub_232B6479C(v36, 0x6320797469746E65, 0xEA0000000000746ELL, v8);
    }

    *(*(v8 + 56) + 8 * v36) = v25 + *(*(v8 + 56) + 8 * v36);
    if (*(v14 + 16))
    {
      sub_232C3BADC();
      sub_232B1F160(0x6E20657571696E75, v42);
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_232C3BADC();
    v43 = sub_232C3BC14();
    sub_232B1F66C(0x6E20657571696E75, v44, v43);
    v116 = v8;
  }

  else
  {
  }

  sub_232C3BCFC();
  if (!v12)
  {
    goto LABEL_40;
  }

  if (v23 < 1)
  {
    goto LABEL_61;
  }

  sub_232C33510(1, v23, &v116, v12, sub_232C38008);
  v45 = 0.0;
  if (*(v12 + 16))
  {
    v46 = sub_232C3BBF8();
    v48 = sub_232B1F160(v46, v47);
    if (v49)
    {
      v45 = *(*(v12 + 56) + 8 * v48);
    }
  }

  v50 = v116;
  swift_isUniquelyReferenced_nonNull_native();
  v51 = sub_232C3BBF8();
  sub_232B1F160(v51, v52);
  sub_232C3BD38();
  if (__OFADD__(v55, v56))
  {
    goto LABEL_62;
  }

  v57 = v53;
  v58 = v54;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  if (sub_232CEA5C0())
  {
    v59 = sub_232B20980();
    v60 = sub_232B1F160(v59, 0xE900000000000074);
    if ((v58 & 1) != (v61 & 1))
    {
      goto LABEL_66;
    }

    v57 = v60;
  }

  v116 = v50;
  if ((v58 & 1) == 0)
  {
    sub_232B6479C(v57, 0x6E63206567616D69, 0xE900000000000074, v50);
  }

  *(*(v50 + 56) + 8 * v57) = v45 + *(*(v50 + 56) + 8 * v57);
  v62 = 0;
  if (*(v12 + 16))
  {
    sub_232C3BA90();
    v65 = sub_232B1F160(v63, v64);
    if (v66)
    {
      v62 = *(*(v12 + 56) + 8 * v65);
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_232C3BA90();
  sub_232B1F160(v67, v68);
  v70 = v69;
  sub_232C3BD38();
  if (__OFADD__(v72, v73))
  {
    goto LABEL_64;
  }

  v74 = v71;
  v8 = v50;
  if (sub_232CEA5C0())
  {
    sub_232C3BA90();
    v77 = sub_232B1F160(v75, v76);
    if ((v70 & 1) != (v78 & 1))
    {
      goto LABEL_66;
    }

    v74 = v77;
  }

  v116 = v50;
  if ((v70 & 1) == 0)
  {
    sub_232B6479C(v74, 0x6620657571696E75, 0xEC00000073656361, v50);
  }

  *(*(v50 + 56) + 8 * v74) = v62;
  sub_232C3BCFC();
LABEL_40:
  if (*(v8 + 16))
  {
    v79 = sub_232B209B4();
    sub_232B1F160(v79, 0xEA0000000000746ELL);
    if (*(v8 + 16))
    {
      v80 = sub_232C3BBF8();
      sub_232B1F160(v80, v81);
      if (*(v8 + 16))
      {
        sub_232B20728();
        sub_232C3BA90();
        sub_232B1F160(v82, v83);
        if (*(v8 + 16))
        {
          sub_232B20728();
          sub_232C3BADC();
          sub_232B1F160(v84, v85);
        }
      }
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  v86 = sub_232C3BC14();
  sub_232B1F66C(v87, v88, v86);
  swift_isUniquelyReferenced_nonNull_native();
  v89 = sub_232C3BC14();
  sub_232B1F66C(v90, v91, v89);
  swift_isUniquelyReferenced_nonNull_native();
  sub_232B207EC();
  v92 = sub_232C3BC14();
  sub_232B1F66C(v93, v94, v92);
  swift_isUniquelyReferenced_nonNull_native();
  v95 = sub_232C3BC14();
  sub_232B1F66C(0xD000000000000011, v96, v95);
  v116 = v8;
  if (!v10)
  {
    sub_232C3BC50();
LABEL_58:
    v115 = 0;
LABEL_59:
    sub_232B0D210(v115, 0);
    sub_232C3BDE4();
    return;
  }

  if (v23 < 1)
  {
    goto LABEL_63;
  }

  sub_232C33510(1, v23, &v116, v10, sub_232C3822C);
  v97 = 0.0;
  if (*(v10 + 16))
  {
    v98 = sub_232BA5C94();
    v100 = sub_232B1F160(v98, v99);
    if (v101)
    {
      v97 = *(*(v10 + 56) + 8 * v100);
    }
  }

  v102 = v116;
  swift_isUniquelyReferenced_nonNull_native();
  v103 = sub_232BA5C94();
  sub_232B1F160(v103, v104);
  sub_232C3BD38();
  if (__OFADD__(v107, v108))
  {
    goto LABEL_65;
  }

  v109 = v105;
  v110 = v106;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  if ((sub_232CEA5C0() & 1) == 0)
  {
LABEL_54:
    if ((v110 & 1) == 0)
    {
      sub_232B6479C(v109, 0x61727563636F6F63, 0xEF746E632065636ELL, v102);
    }

    *(*(v102 + 56) + 8 * v109) = v97 + *(*(v102 + 56) + 8 * v109);
    sub_232C3BC50();
    v115 = sub_232C3B988;
    goto LABEL_59;
  }

  v111 = sub_232BA5C94();
  v113 = sub_232B1F160(v111, v112);
  if ((v110 & 1) == (v114 & 1))
  {
    v109 = v113;
    goto LABEL_54;
  }

LABEL_66:
  sub_232CEA7A0();
  __break(1u);
}

void sub_232C38008(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_232CEA720();
  MEMORY[0x238391C30](v5);

  strcpy(v20, "face_cntface_cnt_");
  v6 = sub_232CEA720();
  WORD1(v20[2]) = 0;
  HIDWORD(v20[2]) = -385875968;
  MEMORY[0x238391C30](v6);

  if (*(a3 + 16))
  {
    v7 = sub_232B1F160(v20[1], v20[2]);
    v9 = v8;

    v10 = 0.0;
    if (v9)
    {
      v10 = *(*(a3 + 56) + 8 * v7);
    }
  }

  else
  {

    v10 = 0.0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v20[1] = *a2;
  v11 = v20[1];
  *a2 = 0x8000000000000000;
  v12 = v20[0];
  v13 = sub_232B1F160(v20[0], 0xE90000000000005FLL);
  if (__OFADD__(*(v11 + 16), (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v13;
  v16 = v14;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  if (sub_232CEA5C0())
  {
    v17 = sub_232B1F160(v20[0], 0xE90000000000005FLL);
    if ((v16 & 1) == (v18 & 1))
    {
      v15 = v17;
      goto LABEL_9;
    }

LABEL_14:
    sub_232CEA7A0();
    __break(1u);
    return;
  }

LABEL_9:
  *a2 = v20[1];

  v19 = *a2;
  if (v16)
  {
  }

  else
  {
    sub_232B6479C(v15, v12, 0xE90000000000005FLL, *a2);
  }

  *(*(v19 + 56) + 8 * v15) = v10 + *(*(v19 + 56) + 8 * v15);
}

void sub_232C3822C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_232CEA720();
  MEMORY[0x238391C30](v5);

  v6 = sub_232CEA720();
  MEMORY[0x238391C30](v6);

  if (*(a3 + 16))
  {
    v7 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D029C0);
    v9 = v8;

    v10 = 0.0;
    if (v9)
    {
      v10 = *(*(a3 + 56) + 8 * v7);
    }
  }

  else
  {

    v10 = 0.0;
  }

  v61 = a3;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *a2;
  v62 = *a2;
  *a2 = 0x8000000000000000;
  v12 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D029C0);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v14 = v12;
  v15 = v13;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  if (sub_232CEA5C0())
  {
    v16 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D029C0);
    if ((v15 & 1) != (v17 & 1))
    {
      goto LABEL_50;
    }

    v14 = v16;
  }

  *a2 = v62;

  v18 = *a2;
  if (v15)
  {
  }

  else
  {
    sub_232B6479C(v14, 0xD00000000000001ALL, 0x8000000232D029C0, *a2);
  }

  *(*(v18 + 56) + 8 * v14) = v10 + *(*(v18 + 56) + 8 * v14);
  v19 = sub_232CEA720();
  MEMORY[0x238391C30](v19);

  v20 = sub_232CEA720();
  MEMORY[0x238391C30](v20);

  if (*(v61 + 16))
  {
    v21 = sub_232B1F160(0xD00000000000001CLL, 0x8000000232D029E0);
    v23 = v22;

    v24 = 0.0;
    if (v23)
    {
      v24 = *(*(v61 + 56) + 8 * v21);
    }
  }

  else
  {

    v24 = 0.0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v25 = *a2;
  v63 = *a2;
  *a2 = 0x8000000000000000;
  v26 = sub_232B1F160(0xD00000000000001CLL, 0x8000000232D029E0);
  v28 = v27;
  if (__OFADD__(*(v25 + 16), (v27 & 1) == 0))
  {
    goto LABEL_47;
  }

  v29 = v26;
  if (sub_232CEA5C0())
  {
    v30 = sub_232B1F160(0xD00000000000001CLL, 0x8000000232D029E0);
    if ((v28 & 1) != (v31 & 1))
    {
      goto LABEL_50;
    }

    v29 = v30;
  }

  *a2 = v63;

  v32 = *a2;
  if (v28)
  {
  }

  else
  {
    sub_232B6479C(v29, 0xD00000000000001CLL, 0x8000000232D029E0, *a2);
  }

  *(*(v32 + 56) + 8 * v29) = v24 + *(*(v32 + 56) + 8 * v29);
  v33 = sub_232CEA720();
  MEMORY[0x238391C30](v33);

  v34 = sub_232CEA720();
  MEMORY[0x238391C30](v34);

  if (*(v61 + 16))
  {
    v35 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D02A00);
    v37 = v36;

    v38 = 0.0;
    if (v37)
    {
      v38 = *(*(v61 + 56) + 8 * v35);
    }
  }

  else
  {

    v38 = 0.0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v39 = *a2;
  v64 = *a2;
  *a2 = 0x8000000000000000;
  v40 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D02A00);
  v42 = v41;
  if (__OFADD__(*(v39 + 16), (v41 & 1) == 0))
  {
    goto LABEL_48;
  }

  v43 = v40;
  if (sub_232CEA5C0())
  {
    v44 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D02A00);
    if ((v42 & 1) != (v45 & 1))
    {
      goto LABEL_50;
    }

    v43 = v44;
  }

  *a2 = v64;

  v46 = *a2;
  if (v42)
  {
  }

  else
  {
    sub_232B6479C(v43, 0xD00000000000001ALL, 0x8000000232D02A00, *a2);
  }

  *(*(v46 + 56) + 8 * v43) = v38 + *(*(v46 + 56) + 8 * v43);
  v47 = sub_232CEA720();
  MEMORY[0x238391C30](v47);

  v48 = sub_232CEA720();
  MEMORY[0x238391C30](v48);

  if (*(v61 + 16))
  {
    v49 = sub_232B1F160(0xD00000000000001BLL, 0x8000000232D02A40);
    v51 = v50;

    v52 = 0.0;
    if (v51)
    {
      v52 = *(*(v61 + 56) + 8 * v49);
    }
  }

  else
  {

    v52 = 0.0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v53 = *a2;
  v65 = *a2;
  *a2 = 0x8000000000000000;
  v54 = sub_232B1F160(0xD00000000000001BLL, 0x8000000232D02A40);
  v56 = v55;
  if (__OFADD__(*(v53 + 16), (v55 & 1) == 0))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v57 = v54;
  if (sub_232CEA5C0())
  {
    v58 = sub_232B1F160(0xD00000000000001BLL, 0x8000000232D02A40);
    if ((v56 & 1) == (v59 & 1))
    {
      v57 = v58;
      goto LABEL_42;
    }

LABEL_50:
    sub_232CEA7A0();
    __break(1u);
    return;
  }

LABEL_42:
  *a2 = v65;

  v60 = *a2;
  if (v56)
  {
  }

  else
  {
    sub_232B6479C(v57, 0xD00000000000001BLL, 0x8000000232D02A40, *a2);
  }

  *(*(v60 + 56) + 8 * v57) = v52 + *(*(v60 + 56) + 8 * v57);
}