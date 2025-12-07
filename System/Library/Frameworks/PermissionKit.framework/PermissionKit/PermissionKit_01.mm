uint64_t sub_23A631C98(uint64_t result, int a2, int a3)
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

uint64_t sub_23A631CF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23A631DC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23A631E78(uint64_t a1)
{
  sub_23A631F5C();
  if (v1 <= 0x3F)
  {
    sub_23A631FAC(319, &qword_27DF98610, MEMORY[0x277CC8E50]);
    if (v2 <= 0x3F)
    {
      sub_23A631FAC(319, &qword_27DF98618, type metadata accessor for CGImage);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23A631F5C()
{
  if (!qword_27DF98608)
  {
    v0 = sub_23A636910();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF98608);
    }
  }
}

void sub_23A631FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23A636910();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CommunicationTopic.PersonInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CommunicationTopic.PersonInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23A632164(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23A6321F8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23A63235C()
{
  result = qword_27DF98620;
  if (!qword_27DF98620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98620);
  }

  return result;
}

unint64_t sub_23A6323B4()
{
  result = qword_27DF98628;
  if (!qword_27DF98628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98628);
  }

  return result;
}

unint64_t sub_23A63240C()
{
  result = qword_27DF98630;
  if (!qword_27DF98630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98630);
  }

  return result;
}

unint64_t sub_23A632464()
{
  result = qword_27DF98638;
  if (!qword_27DF98638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98638);
  }

  return result;
}

unint64_t sub_23A6324BC()
{
  result = qword_27DF98640;
  if (!qword_27DF98640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98640);
  }

  return result;
}

unint64_t sub_23A632514()
{
  result = qword_27DF98648;
  if (!qword_27DF98648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98648);
  }

  return result;
}

unint64_t sub_23A63256C()
{
  result = qword_27DF98650;
  if (!qword_27DF98650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98650);
  }

  return result;
}

unint64_t sub_23A6325C4()
{
  result = qword_27DF98658;
  if (!qword_27DF98658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98658);
  }

  return result;
}

unint64_t sub_23A63261C()
{
  result = qword_27DF98660;
  if (!qword_27DF98660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98660);
  }

  return result;
}

unint64_t sub_23A632674()
{
  result = qword_27DF98668;
  if (!qword_27DF98668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98668);
  }

  return result;
}

unint64_t sub_23A6326CC()
{
  result = qword_27DF98670;
  if (!qword_27DF98670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98670);
  }

  return result;
}

unint64_t sub_23A632724()
{
  result = qword_27DF98678;
  if (!qword_27DF98678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98678);
  }

  return result;
}

unint64_t sub_23A63277C()
{
  result = qword_27DF98680;
  if (!qword_27DF98680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98680);
  }

  return result;
}

unint64_t sub_23A6327D4()
{
  result = qword_27DF98688;
  if (!qword_27DF98688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98688);
  }

  return result;
}

unint64_t sub_23A63282C()
{
  result = qword_27DF98690;
  if (!qword_27DF98690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98690);
  }

  return result;
}

unint64_t sub_23A632884()
{
  result = qword_27DF98698;
  if (!qword_27DF98698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98698);
  }

  return result;
}

unint64_t sub_23A6328DC()
{
  result = qword_27DF986A0;
  if (!qword_27DF986A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986A0);
  }

  return result;
}

unint64_t sub_23A632934()
{
  result = qword_27DF986A8;
  if (!qword_27DF986A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986A8);
  }

  return result;
}

unint64_t sub_23A63298C()
{
  result = qword_27DF986B0;
  if (!qword_27DF986B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986B0);
  }

  return result;
}

unint64_t sub_23A6329E4()
{
  result = qword_27DF986B8;
  if (!qword_27DF986B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986B8);
  }

  return result;
}

unint64_t sub_23A632A3C()
{
  result = qword_27DF986C0;
  if (!qword_27DF986C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986C0);
  }

  return result;
}

unint64_t sub_23A632A94()
{
  result = qword_27DF986C8;
  if (!qword_27DF986C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986C8);
  }

  return result;
}

unint64_t sub_23A632AEC()
{
  result = qword_27DF986D0;
  if (!qword_27DF986D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986D0);
  }

  return result;
}

unint64_t sub_23A632B44()
{
  result = qword_27DF986D8;
  if (!qword_27DF986D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986D8);
  }

  return result;
}

unint64_t sub_23A632B9C()
{
  result = qword_27DF986E0;
  if (!qword_27DF986E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986E0);
  }

  return result;
}

unint64_t sub_23A632BF4()
{
  result = qword_27DF986E8;
  if (!qword_27DF986E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986E8);
  }

  return result;
}

unint64_t sub_23A632C4C()
{
  result = qword_27DF986F0;
  if (!qword_27DF986F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986F0);
  }

  return result;
}

unint64_t sub_23A632CA4()
{
  result = qword_27DF986F8;
  if (!qword_27DF986F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF986F8);
  }

  return result;
}

unint64_t sub_23A632CFC()
{
  result = qword_27DF98700;
  if (!qword_27DF98700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98700);
  }

  return result;
}

unint64_t sub_23A632D50(uint64_t a1, uint64_t a2)
{
  sub_23A636C80();
  sub_23A6367D0();
  v4 = sub_23A636CA0();

  return sub_23A632E7C(a1, a2, v4);
}

unint64_t sub_23A632DC8(uint64_t a1)
{
  sub_23A636C80();
  type metadata accessor for CFString(0);
  sub_23A633630(&qword_27DF98730, type metadata accessor for CFString, &unk_23A6374BC);
  sub_23A6362B0();
  v2 = sub_23A636CA0();

  return sub_23A632F34(a1, v2);
}

unint64_t sub_23A632E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23A636C10())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23A632F34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23A633630(&qword_27DF98730, type metadata accessor for CFString, &unk_23A6374BC);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23A6362A0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23A633040(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65697266 && a2 == 0xE600000000000000;
  if (v4 || (sub_23A636C10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C6F66 && a2 == 0xE600000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C6C6F466562 && a2 == 0xEA00000000006465 || (sub_23A636C10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819042147 && a2 == 0xE400000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61436F65646976 && a2 == 0xE90000000000006CLL || (sub_23A636C10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C61436F69647561 && a2 == 0xE90000000000006CLL || (sub_23A636C10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x63696E756D6D6F63 && a2 == 0xEB00000000657461 || (sub_23A636C10() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1952540771 && a2 == 0xE400000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_23A636C10();

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

uint64_t sub_23A633380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_23A636C10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023A63B800 == a2 || (sub_23A636C10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F43656D616ELL && a2 == 0xEE0073746E656E6FLL || (sub_23A636C10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D49726174617661 && a2 == 0xEF61746144656761)
  {

    return 3;
  }

  else
  {
    v6 = sub_23A636C10();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_23A6334F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98728, &qword_23A6392F0);
    v3 = sub_23A636B10();
    v4 = a1 + 32;

    while (1)
    {
      sub_23A628F84(v4, &v11, &qword_27DF98718, &qword_23A6392E0);
      v5 = v11;
      result = sub_23A632DC8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23A633620(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_23A633620(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23A633630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PermissionQuestion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27DF9C738;
  v4 = sub_23A636290();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23A633790(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_23A6337F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id PermissionQuestion.defaultChoice.getter@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

uint64_t PermissionQuestion.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  return sub_23A633A30(v1 + v3, a1);
}

uint64_t sub_23A633A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PermissionQuestion.expirationDate.setter(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_23A6292F0(a1, v1 + v3, &qword_27DF98168, &qword_23A639340);
  return swift_endAccess();
}

uint64_t PermissionQuestion.__allocating_init(id:title:subtitle:topic:choices:defaultChoice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = swift_allocObject();
  PermissionQuestion.init(id:title:subtitle:topic:choices:defaultChoice:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *PermissionQuestion.init(id:title:subtitle:topic:choices:defaultChoice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v15 = *v8;
  v16 = *a8;
  v17 = *(*v8 + 144);
  v18 = sub_23A636260();
  (*(*(v18 - 8) + 56))(v8 + v17, 1, 1, v18);
  v19 = qword_27DF9C738;
  v20 = sub_23A636290();
  (*(*(v20 - 8) + 32))(v8 + v19, a1, v20);
  v21 = (v8 + qword_27DF9C740);
  *v21 = a2;
  v21[1] = a3;
  v22 = (v8 + qword_27DF9C748);
  *v22 = a4;
  v22[1] = a5;
  (*(*(*(v15 + 80) - 8) + 32))(v8 + *(*v8 + 120), a6);
  *(v8 + *(*v8 + 128)) = a7;
  *(v8 + *(*v8 + 136)) = v16;
  return v8;
}

uint64_t sub_23A633DD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23A636C10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736563696F6863 && a2 == 0xE700000000000000 || (sub_23A636C10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x43746C7561666564 && a2 == 0xED00006563696F68 || (sub_23A636C10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_23A636C10();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_23A634054(unsigned __int8 a1)
{
  sub_23A636C80();
  MEMORY[0x23EE87E60](a1);
  return sub_23A636CA0();
}

uint64_t sub_23A63409C(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x43746C7561666564;
  if (a1 != 5)
  {
    v2 = 0x6974617269707865;
  }

  v3 = 0x6369706F74;
  if (a1 != 3)
  {
    v3 = 0x736563696F6863;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x656C746974;
  if (a1 != 1)
  {
    v4 = 0x656C746974627573;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A6341A8(uint64_t a1)
{
  sub_23A636C80();
  sub_23A63402C(v3, *v1);
  return sub_23A636CA0();
}

uint64_t sub_23A6341FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A633DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A63422C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23A6357B8();
  *a2 = result;
  return result;
}

uint64_t sub_23A634258(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23A6342AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t *PermissionQuestion.deinit()
{
  v1 = *v0;
  v2 = qword_27DF9C738;
  v3 = sub_23A636290();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));

  sub_23A63443C(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_23A63443C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PermissionQuestion.__deallocating_deinit()
{
  PermissionQuestion.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t PermissionQuestion.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v23 - v6;
  v7 = *(v4 + 88);
  v25 = *(v4 + 80);
  v26 = v7;
  type metadata accessor for PermissionQuestion.CodingKeys(255, v25, v7, v8);
  swift_getWitnessTable();
  v9 = sub_23A636C00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A636CC0();
  v32[0] = 0;
  sub_23A636290();
  sub_23A635D34(&qword_27DF98758, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  v13 = v27;
  sub_23A636BF0();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  swift_beginAccess();
  v31 = 1;

  sub_23A636BE0();

  swift_beginAccess();
  v30 = 2;

  sub_23A636BE0();
  v15 = v10;

  v30 = 3;
  sub_23A636BF0();
  v16 = *(*v2 + 128);
  swift_beginAccess();
  v29 = *(v2 + v16);
  LOBYTE(v28) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98760, &qword_23A639348);
  sub_23A635394(&qword_27DF98768, sub_23A634A88, MEMORY[0x277D83948]);
  sub_23A636BF0();
  v17 = *(*v2 + 136);
  swift_beginAccess();
  v18 = *(v2 + v17);
  v28 = v18;
  v33 = 5;
  sub_23A634A88();
  v19 = v18;
  sub_23A636BF0();

  v20 = *(*v2 + 144);
  swift_beginAccess();
  v21 = v2 + v20;
  v22 = v24;
  sub_23A633A30(v21, v24);
  v33 = 6;
  sub_23A636260();
  sub_23A635D34(&qword_27DF98778, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_23A636BD0();
  sub_23A63443C(v22);
  return (*(v15 + 8))(v12, 0);
}

unint64_t sub_23A634A88()
{
  result = qword_27DF98770;
  if (!qword_27DF98770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98770);
  }

  return result;
}

uint64_t PermissionQuestion.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PermissionQuestion.init(from:)(a1);
  return v2;
}

char *PermissionQuestion.init(from:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v54 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v41 = v38 - v7;
  v8 = v4[10];
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = v38 - v9;
  v49 = sub_23A636290();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[11];
  v43 = v8;
  v45 = v11;
  type metadata accessor for PermissionQuestion.CodingKeys(255, v8, v11, v12);
  swift_getWitnessTable();
  v51 = sub_23A636B90();
  v44 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v14 = v38 - v13;
  v15 = v4[18];
  v16 = sub_23A636260();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v17 = a1;
  v18 = a1[3];
  v53 = v17;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v50 = v14;
  v19 = v52;
  sub_23A636CB0();
  if (v19)
  {
    sub_23A63443C(&v2[*(*v2 + 144)]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v44;
    v39 = v15;
    v40 = v16;
    v52 = v2;
    v21 = v46;
    v22 = v47;
    LOBYTE(v55) = 0;
    sub_23A635D34(&qword_27DF98780, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v23 = v48;
    v24 = v49;
    sub_23A636B70();
    v25 = *(v21 + 32);
    v26 = v52;
    v38[1] = qword_27DF9C738;
    v25(&v52[qword_27DF9C738], v23, v24);
    LOBYTE(v55) = 1;
    v27 = sub_23A636B60();
    v28 = (v26 + qword_27DF9C740);
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v55) = 2;
    v48 = 0;
    v30 = sub_23A636B60();
    v31 = (v26 + qword_27DF9C748);
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v55) = 3;
    v33 = v43;
    sub_23A636B70();
    (*(v42 + 32))(v26 + *(*v26 + 120), v22, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98760, &qword_23A639348);
    v56 = 4;
    sub_23A635394(&qword_27DF98788, sub_23A63540C, MEMORY[0x277D83978]);
    sub_23A636B70();
    *(v26 + *(*v26 + 128)) = v55;
    v56 = 5;
    sub_23A63540C();
    sub_23A636B70();
    *(v26 + *(*v26 + 136)) = v55;
    LOBYTE(v55) = 6;
    sub_23A635D34(&qword_27DF98798, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v35 = v41;
    sub_23A636B50();
    (*(v20 + 8))(v50, v51);
    v36 = v39;
    swift_beginAccess();
    v37 = &v52[v36];
    v2 = v52;
    sub_23A6292F0(v35, v37, &qword_27DF98168, &qword_23A639340);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  return v2;
}

uint64_t sub_23A635394(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF98760, &qword_23A639348);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A63540C()
{
  result = qword_27DF98790;
  if (!qword_27DF98790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98790);
  }

  return result;
}

uint64_t sub_23A635484@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PermissionQuestion.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t PermissionQuestion<>.init(communicationTopic:)(__int128 *a1)
{
  v2 = sub_23A636290();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  sub_23A636280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98750, &qword_23A639310);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23A639330;
  if (qword_27DF97FF0 != -1)
  {
    swift_once();
  }

  v7 = qword_27DF98340;
  *(v6 + 32) = qword_27DF98340;
  v8 = qword_27DF97FF8;
  v9 = v7;
  if (v8 == -1)
  {
    v10 = v9;
  }

  else
  {
    swift_once();
    v10 = qword_27DF98340;
  }

  v11 = qword_27DF98348;
  *(v6 + 40) = qword_27DF98348;
  v12 = swift_allocObject();
  v13 = *(*v12 + 144);
  v14 = sub_23A636260();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  (*(v3 + 32))(v12 + qword_27DF9C738, v5, v2);
  v15 = (v12 + qword_27DF9C740);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v12 + qword_27DF9C748);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v12 + *(*v12 + 120)) = v20;
  *(v12 + *(*v12 + 128)) = v6;
  *(v12 + *(*v12 + 136)) = v10;
  v17 = v11;
  v18 = v10;
  return v12;
}

uint64_t PermissionQuestion<>.init(handle:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98140, &qword_23A637BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A637BC0;
  *(inited + 32) = v1;
  return _s13PermissionKit0A8QuestionCA2A18CommunicationTopicVRszrlE7handlesACyAEGSayAA0D6HandleVG_tcfC_0(inited);
}

uint64_t _s13PermissionKit0A8QuestionCA2A18CommunicationTopicVRszrlE7handlesACyAEGSayAA0D6HandleVG_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v48 - v3;
  v4 = type metadata accessor for CommunicationTopic.PersonInformation(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = sub_23A636290();
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v48 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = v10;
    v54 = sub_23A636200();
    v14 = *(v54 - 8);
    v15 = *(v14 + 56);
    v52 = v14 + 56;
    v53 = v15;
    v16 = MEMORY[0x277D84F90];
    v17 = 32;
    v55 = a1;
    v51 = v7;
    v18 = v54;
    do
    {
      v59 = v13;
      v19 = *(a1 + v17);
      v20 = v58;
      v21 = v16;
      v22 = v53;
      v53(v58, 1, 1, v18);
      v23 = v57;
      v24 = *(v57 + 24);
      v22(&v9[v24], 1, 1, v18);
      v16 = v21;
      v25 = *(v23 + 28);
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = v19;
      v26 = v19;
      v27 = v20;
      v28 = v51;
      sub_23A6292F0(v27, &v9[v24], &qword_27DF98160, &unk_23A637C50);
      *&v9[v25] = 0;
      sub_23A628E60(v9, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_23A631640(0, v21[2] + 1, 1, v21);
      }

      v30 = v16[2];
      v29 = v16[3];
      v31 = v59;
      if (v30 >= v29 >> 1)
      {
        v16 = sub_23A631640((v29 > 1), v30 + 1, 1, v16);
      }

      v16[2] = v30 + 1;
      sub_23A629358(v28, v16 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v30);
      sub_23A628EC4(v9);
      v17 += 8;
      v13 = v31 - 1;
      a1 = v55;
    }

    while (v13);

    v12 = v48;
    v10 = v49;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  sub_23A636280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98750, &qword_23A639310);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_23A639330;
  if (qword_27DF97FF0 != -1)
  {
    swift_once();
  }

  v33 = qword_27DF98340;
  *(v32 + 32) = qword_27DF98340;
  v34 = qword_27DF97FF8;
  v35 = v33;
  if (v34 == -1)
  {
    v36 = v35;
  }

  else
  {
    swift_once();
    v36 = qword_27DF98340;
  }

  v37 = qword_27DF98348;
  *(v32 + 40) = qword_27DF98348;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98210, &qword_23A637CC0);
  v38 = swift_allocObject();
  v39 = *(*v38 + 144);
  v40 = sub_23A636260();
  (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
  (*(v50 + 32))(v38 + qword_27DF9C738, v12, v10);
  v41 = (v38 + qword_27DF9C740);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = (v38 + qword_27DF9C748);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  v43 = (v38 + *(*v38 + 120));
  v44 = MEMORY[0x277D84FA0];
  *v43 = v16;
  v43[1] = v44;
  *(v38 + *(*v38 + 128)) = v32;
  *(v38 + *(*v38 + 136)) = v36;
  v45 = v37;
  v46 = v36;
  return v38;
}

uint64_t sub_23A635D34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23A635D7C(uint64_t a1)
{
  sub_23A636290();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23A635F18(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_23A635F18(uint64_t a1)
{
  if (!qword_27DF98828[0])
  {
    sub_23A636260();
    v1 = sub_23A636910();
    if (!v2)
    {
      atomic_store(v1, qword_27DF98828);
    }
  }
}

uint64_t sub_23A635F78(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
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

  return (v8 + 1);
}

uint64_t sub_23A636008(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PermissionResponse.init(question:choice:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

id PermissionResponse.choice.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t sub_23A636130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}